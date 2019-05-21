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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:sagemaker)

module Aws::SageMaker
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :sagemaker

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
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::SharedCredentials` - Used for loading credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2 IMDS instance profile - When used by default, the timeouts are
    #       very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` to enable retries and extended
    #       timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is search for in the following locations:
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
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
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
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test endpoints. This should be avalid HTTP(S) URI.
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
    #     When set to `true`, endpoint discovery will be enabled for operations when available. Defaults to `false`.
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
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors and auth
    #     errors from expired credentials.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
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
    #     seconds to wait when opening a HTTP session before rasing a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set
    #     per-request on the session yeidled by {#session_for}.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idble before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session yeidled by {#session_for}.
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

    # Adds or overwrites one or more tags for the specified Amazon SageMaker
    # resource. You can add tags to notebook instances, training jobs,
    # hyperparameter tuning jobs, batch transform jobs, models, labeling
    # jobs, work teams, endpoint configurations, and endpoints.
    #
    # Each tag consists of a key and an optional value. Tag keys must be
    # unique per resource. For more information about tags, see For more
    # information, see [AWS Tagging Strategies][1].
    #
    # <note markdown="1"> Tags that you add to a hyperparameter tuning job by calling this API
    # are also added to any training jobs that the hyperparameter tuning job
    # launches after you call this API, but not to training jobs that the
    # hyperparameter tuning job launched before you called this API. To make
    # sure that the tags associated with a hyperparameter tuning job are
    # also added to all training jobs that the hyperparameter tuning job
    # launches, add the tags when you first create the tuning job by
    # specifying them in the `Tags` parameter of
    # CreateHyperParameterTuningJob
    #
    #  </note>
    #
    #
    #
    # [1]: https://aws.amazon.com/answers/account-management/aws-tagging-strategies/
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   An array of `Tag` objects. Each tag is a key-value pair. Only the
    #   `key` parameter is required. If you don't specify a value, Amazon
    #   SageMaker sets the value to an empty string.
    #
    # @return [Types::AddTagsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddTagsOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags({
    #     resource_arn: "ResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AddTags AWS API Documentation
    #
    # @overload add_tags(params = {})
    # @param [Hash] params ({})
    def add_tags(params = {}, options = {})
      req = build_request(:add_tags, params)
      req.send_request(options)
    end

    # Create a machine learning algorithm that you can use in Amazon
    # SageMaker and list in the AWS Marketplace.
    #
    # @option params [required, String] :algorithm_name
    #   The name of the algorithm.
    #
    # @option params [String] :algorithm_description
    #   A description of the algorithm.
    #
    # @option params [required, Types::TrainingSpecification] :training_specification
    #   Specifies details about training jobs run by this algorithm, including
    #   the following:
    #
    #   * The Amazon ECR path of the container and the version digest of the
    #     algorithm.
    #
    #   * The hyperparameters that the algorithm supports.
    #
    #   * The instance types that the algorithm supports for training.
    #
    #   * Whether the algorithm supports distributed training.
    #
    #   * The metrics that the algorithm emits to Amazon CloudWatch.
    #
    #   * Which metrics that the algorithm emits can be used as the objective
    #     metric for hyperparameter tuning jobs.
    #
    #   * The input channels that the algorithm supports for training data.
    #     For example, an algorithm might support `train`, `validation`, and
    #     `test` channels.
    #
    # @option params [Types::InferenceSpecification] :inference_specification
    #   Specifies details about inference jobs that the algorithm runs,
    #   including the following:
    #
    #   * The Amazon ECR paths of containers that contain the inference code
    #     and model artifacts.
    #
    #   * The instance types that the algorithm supports for transform jobs
    #     and real-time endpoints used for inference.
    #
    #   * The input and output content formats that the algorithm supports for
    #     inference.
    #
    # @option params [Types::AlgorithmValidationSpecification] :validation_specification
    #   Specifies configurations for one or more training jobs and that Amazon
    #   SageMaker runs to test the algorithm's training code and, optionally,
    #   one or more batch transform jobs that Amazon SageMaker runs to test
    #   the algorithm's inference code.
    #
    # @option params [Boolean] :certify_for_marketplace
    #   Whether to certify the algorithm so that it can be listed in AWS
    #   Marketplace.
    #
    # @return [Types::CreateAlgorithmOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAlgorithmOutput#algorithm_arn #algorithm_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_algorithm({
    #     algorithm_name: "EntityName", # required
    #     algorithm_description: "EntityDescription",
    #     training_specification: { # required
    #       training_image: "Image", # required
    #       training_image_digest: "ImageDigest",
    #       supported_hyper_parameters: [
    #         {
    #           name: "ParameterName", # required
    #           description: "EntityDescription",
    #           type: "Integer", # required, accepts Integer, Continuous, Categorical, FreeText
    #           range: {
    #             integer_parameter_range_specification: {
    #               min_value: "ParameterValue", # required
    #               max_value: "ParameterValue", # required
    #             },
    #             continuous_parameter_range_specification: {
    #               min_value: "ParameterValue", # required
    #               max_value: "ParameterValue", # required
    #             },
    #             categorical_parameter_range_specification: {
    #               values: ["ParameterValue"], # required
    #             },
    #           },
    #           is_tunable: false,
    #           is_required: false,
    #           default_value: "ParameterValue",
    #         },
    #       ],
    #       supported_training_instance_types: ["ml.m4.xlarge"], # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
    #       supports_distributed_training: false,
    #       metric_definitions: [
    #         {
    #           name: "MetricName", # required
    #           regex: "MetricRegex", # required
    #         },
    #       ],
    #       training_channels: [ # required
    #         {
    #           name: "ChannelName", # required
    #           description: "EntityDescription",
    #           is_required: false,
    #           supported_content_types: ["ContentType"], # required
    #           supported_compression_types: ["None"], # accepts None, Gzip
    #           supported_input_modes: ["Pipe"], # required, accepts Pipe, File
    #         },
    #       ],
    #       supported_tuning_job_objective_metrics: [
    #         {
    #           type: "Maximize", # required, accepts Maximize, Minimize
    #           metric_name: "MetricName", # required
    #         },
    #       ],
    #     },
    #     inference_specification: {
    #       containers: [ # required
    #         {
    #           container_hostname: "ContainerHostname",
    #           image: "Image", # required
    #           image_digest: "ImageDigest",
    #           model_data_url: "Url",
    #           product_id: "ProductId",
    #         },
    #       ],
    #       supported_transform_instance_types: ["ml.m4.xlarge"], # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge
    #       supported_realtime_inference_instance_types: ["ml.t2.medium"], # required, accepts ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.large, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
    #       supported_content_types: ["ContentType"], # required
    #       supported_response_mime_types: ["ResponseMIMEType"], # required
    #     },
    #     validation_specification: {
    #       validation_role: "RoleArn", # required
    #       validation_profiles: [ # required
    #         {
    #           profile_name: "EntityName", # required
    #           training_job_definition: { # required
    #             training_input_mode: "Pipe", # required, accepts Pipe, File
    #             hyper_parameters: {
    #               "ParameterKey" => "ParameterValue",
    #             },
    #             input_data_config: [ # required
    #               {
    #                 channel_name: "ChannelName", # required
    #                 data_source: { # required
    #                   s3_data_source: {
    #                     s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix, AugmentedManifestFile
    #                     s3_uri: "S3Uri", # required
    #                     s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #                     attribute_names: ["AttributeName"],
    #                   },
    #                 },
    #                 content_type: "ContentType",
    #                 compression_type: "None", # accepts None, Gzip
    #                 record_wrapper_type: "None", # accepts None, RecordIO
    #                 input_mode: "Pipe", # accepts Pipe, File
    #                 shuffle_config: {
    #                   seed: 1, # required
    #                 },
    #               },
    #             ],
    #             output_data_config: { # required
    #               kms_key_id: "KmsKeyId",
    #               s3_output_path: "S3Uri", # required
    #             },
    #             resource_config: { # required
    #               instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
    #               instance_count: 1, # required
    #               volume_size_in_gb: 1, # required
    #               volume_kms_key_id: "KmsKeyId",
    #             },
    #             stopping_condition: { # required
    #               max_runtime_in_seconds: 1,
    #             },
    #           },
    #           transform_job_definition: {
    #             max_concurrent_transforms: 1,
    #             max_payload_in_mb: 1,
    #             batch_strategy: "MultiRecord", # accepts MultiRecord, SingleRecord
    #             environment: {
    #               "TransformEnvironmentKey" => "TransformEnvironmentValue",
    #             },
    #             transform_input: { # required
    #               data_source: { # required
    #                 s3_data_source: { # required
    #                   s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix, AugmentedManifestFile
    #                   s3_uri: "S3Uri", # required
    #                 },
    #               },
    #               content_type: "ContentType",
    #               compression_type: "None", # accepts None, Gzip
    #               split_type: "None", # accepts None, Line, RecordIO, TFRecord
    #             },
    #             transform_output: { # required
    #               s3_output_path: "S3Uri", # required
    #               accept: "Accept",
    #               assemble_with: "None", # accepts None, Line
    #               kms_key_id: "KmsKeyId",
    #             },
    #             transform_resources: { # required
    #               instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge
    #               instance_count: 1, # required
    #               volume_kms_key_id: "KmsKeyId",
    #             },
    #           },
    #         },
    #       ],
    #     },
    #     certify_for_marketplace: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.algorithm_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateAlgorithm AWS API Documentation
    #
    # @overload create_algorithm(params = {})
    # @param [Hash] params ({})
    def create_algorithm(params = {}, options = {})
      req = build_request(:create_algorithm, params)
      req.send_request(options)
    end

    # Creates a Git repository as a resource in your Amazon SageMaker
    # account. You can associate the repository with notebook instances so
    # that you can use Git source control for the notebooks you create. The
    # Git repository is a resource in your Amazon SageMaker account, so it
    # can be associated with more than one notebook instance, and it
    # persists independently from the lifecycle of any notebook instances it
    # is associated with.
    #
    # The repository can be hosted either in [AWS CodeCommit][1] or in any
    # other Git repository.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html
    #
    # @option params [required, String] :code_repository_name
    #   The name of the Git repository. The name must have 1 to 63 characters.
    #   Valid characters are a-z, A-Z, 0-9, and - (hyphen).
    #
    # @option params [required, Types::GitConfig] :git_config
    #   Specifies details about the repository, including the URL where the
    #   repository is located, the default branch, and credentials to use to
    #   access the repository.
    #
    # @return [Types::CreateCodeRepositoryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCodeRepositoryOutput#code_repository_arn #code_repository_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_code_repository({
    #     code_repository_name: "EntityName", # required
    #     git_config: { # required
    #       repository_url: "GitConfigUrl", # required
    #       branch: "Branch",
    #       secret_arn: "SecretArn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.code_repository_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateCodeRepository AWS API Documentation
    #
    # @overload create_code_repository(params = {})
    # @param [Hash] params ({})
    def create_code_repository(params = {}, options = {})
      req = build_request(:create_code_repository, params)
      req.send_request(options)
    end

    # Starts a model compilation job. After the model has been compiled,
    # Amazon SageMaker saves the resulting model artifacts to an Amazon
    # Simple Storage Service (Amazon S3) bucket that you specify.
    #
    # If you choose to host your model using Amazon SageMaker hosting
    # services, you can use the resulting model artifacts as part of the
    # model. You can also use the artifacts with AWS IoT Greengrass. In that
    # case, deploy them as an ML resource.
    #
    # In the request body, you provide the following:
    #
    # * A name for the compilation job
    #
    # * Information about the input model artifacts
    #
    # * The output location for the compiled model and the device (target)
    #   that the model runs on
    #
    # * `The Amazon Resource Name (ARN) of the IAM role that Amazon
    #   SageMaker assumes to perform the model compilation job`
    #
    # You can also provide a `Tag` to track the model compilation job's
    # resource use and costs. The response body contains the
    # `CompilationJobArn` for the compiled job.
    #
    # To stop a model compilation job, use StopCompilationJob. To get
    # information about a particular model compilation job, use
    # DescribeCompilationJob. To get information about multiple model
    # compilation jobs, use ListCompilationJobs.
    #
    # @option params [required, String] :compilation_job_name
    #   A name for the model compilation job. The name must be unique within
    #   the AWS Region and within your AWS account.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that enables Amazon
    #   SageMaker to perform tasks on your behalf.
    #
    #   During model compilation, Amazon SageMaker needs your permission to:
    #
    #   * Read input data from an S3 bucket
    #
    #   * Write model artifacts to an S3 bucket
    #
    #   * Write logs to Amazon CloudWatch Logs
    #
    #   * Publish metrics to Amazon CloudWatch
    #
    #   You grant permissions for all of these tasks to an IAM role. To pass
    #   this role to Amazon SageMaker, the caller of this API must have the
    #   `iam:PassRole` permission. For more information, see [Amazon SageMaker
    #   Roles.][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html
    #
    # @option params [required, Types::InputConfig] :input_config
    #   Provides information about the location of input model artifacts, the
    #   name and shape of the expected data inputs, and the framework in which
    #   the model was trained.
    #
    # @option params [required, Types::OutputConfig] :output_config
    #   Provides information about the output location for the compiled model
    #   and the target device the model runs on.
    #
    # @option params [required, Types::StoppingCondition] :stopping_condition
    #   The duration allowed for model compilation.
    #
    # @return [Types::CreateCompilationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCompilationJobResponse#compilation_job_arn #compilation_job_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_compilation_job({
    #     compilation_job_name: "EntityName", # required
    #     role_arn: "RoleArn", # required
    #     input_config: { # required
    #       s3_uri: "S3Uri", # required
    #       data_input_config: "DataInputConfig", # required
    #       framework: "TENSORFLOW", # required, accepts TENSORFLOW, MXNET, ONNX, PYTORCH, XGBOOST
    #     },
    #     output_config: { # required
    #       s3_output_location: "S3Uri", # required
    #       target_device: "lambda", # required, accepts lambda, ml_m4, ml_m5, ml_c4, ml_c5, ml_p2, ml_p3, jetson_tx1, jetson_tx2, jetson_nano, rasp3b, deeplens, rk3399, rk3288
    #     },
    #     stopping_condition: { # required
    #       max_runtime_in_seconds: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.compilation_job_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateCompilationJob AWS API Documentation
    #
    # @overload create_compilation_job(params = {})
    # @param [Hash] params ({})
    def create_compilation_job(params = {}, options = {})
      req = build_request(:create_compilation_job, params)
      req.send_request(options)
    end

    # Creates an endpoint using the endpoint configuration specified in the
    # request. Amazon SageMaker uses the endpoint to provision resources and
    # deploy models. You create the endpoint configuration with the
    # [CreateEndpointConfig][1] API.
    #
    # <note markdown="1"> Use this API only for hosting models using Amazon SageMaker hosting
    # services.
    #
    #  You must not delete an `EndpointConfig` in use by an endpoint that is
    # live or while the `UpdateEndpoint` or `CreateEndpoint` operations are
    # being performed on the endpoint. To update an endpoint, you must
    # create a new `EndpointConfig`.
    #
    #  </note>
    #
    # The endpoint name must be unique within an AWS Region in your AWS
    # account.
    #
    # When it receives the request, Amazon SageMaker creates the endpoint,
    # launches the resources (ML compute instances), and deploys the
    # model(s) on them.
    #
    # When Amazon SageMaker receives the request, it sets the endpoint
    # status to `Creating`. After it creates the endpoint, it sets the
    # status to `InService`. Amazon SageMaker can then process incoming
    # requests for inferences. To check the status of an endpoint, use the
    # [DescribeEndpoint][2] API.
    #
    # For an example, see [Exercise 1: Using the K-Means Algorithm Provided
    # by Amazon SageMaker][3].
    #
    # If any of the models hosted at this endpoint get model data from an
    # Amazon S3 location, Amazon SageMaker uses AWS Security Token Service
    # to download model artifacts from the S3 path you provided. AWS STS is
    # activated in your IAM user account by default. If you previously
    # deactivated AWS STS for a region, you need to reactivate AWS STS for
    # that region. For more information, see [Activating and Deactivating
    # AWS STS i an AWS Region][4] in the *AWS Identity and Access Management
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpointConfig.html
    # [2]: https://docs.aws.amazon.com/sagemaker/latest/dg/API_DescribeEndpoint.html
    # [3]: https://docs.aws.amazon.com/sagemaker/latest/dg/ex1.html
    # [4]: http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html
    #
    # @option params [required, String] :endpoint_name
    #   The name of the endpoint. The name must be unique within an AWS Region
    #   in your AWS account.
    #
    # @option params [required, String] :endpoint_config_name
    #   The name of an endpoint configuration. For more information, see
    #   [CreateEndpointConfig][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpointConfig.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of key-value pairs. For more information, see [Using Cost
    #   Allocation Tags][1]in the *AWS Billing and Cost Management User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what
    #
    # @return [Types::CreateEndpointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEndpointOutput#endpoint_arn #endpoint_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_endpoint({
    #     endpoint_name: "EndpointName", # required
    #     endpoint_config_name: "EndpointConfigName", # required
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
    #   resp.endpoint_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateEndpoint AWS API Documentation
    #
    # @overload create_endpoint(params = {})
    # @param [Hash] params ({})
    def create_endpoint(params = {}, options = {})
      req = build_request(:create_endpoint, params)
      req.send_request(options)
    end

    # Creates an endpoint configuration that Amazon SageMaker hosting
    # services uses to deploy models. In the configuration, you identify one
    # or more models, created using the `CreateModel` API, to deploy and the
    # resources that you want Amazon SageMaker to provision. Then you call
    # the [CreateEndpoint][1] API.
    #
    # <note markdown="1"> Use this API only if you want to use Amazon SageMaker hosting services
    # to deploy models into production.
    #
    #  </note>
    #
    # In the request, you define one or more `ProductionVariant`s, each of
    # which identifies a model. Each `ProductionVariant` parameter also
    # describes the resources that you want Amazon SageMaker to provision.
    # This includes the number and type of ML compute instances to deploy.
    #
    # If you are hosting multiple models, you also assign a `VariantWeight`
    # to specify how much traffic you want to allocate to each model. For
    # example, suppose that you want to host two models, A and B, and you
    # assign traffic weight 2 for model A and 1 for model B. Amazon
    # SageMaker distributes two-thirds of the traffic to Model A, and
    # one-third to model B.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html
    #
    # @option params [required, String] :endpoint_config_name
    #   The name of the endpoint configuration. You specify this name in a
    #   [CreateEndpoint][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html
    #
    # @option params [required, Array<Types::ProductionVariant>] :production_variants
    #   An list of `ProductionVariant` objects, one for each model that you
    #   want to host at this endpoint.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pairs. For more information, see [Using Cost
    #   Allocation Tags][1] in the <i> AWS Billing and Cost Management User
    #   Guide</i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what
    #
    # @option params [String] :kms_key_id
    #   The Amazon Resource Name (ARN) of a AWS Key Management Service key
    #   that Amazon SageMaker uses to encrypt data on the storage volume
    #   attached to the ML compute instance that hosts the endpoint.
    #
    # @return [Types::CreateEndpointConfigOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEndpointConfigOutput#endpoint_config_arn #endpoint_config_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_endpoint_config({
    #     endpoint_config_name: "EndpointConfigName", # required
    #     production_variants: [ # required
    #       {
    #         variant_name: "VariantName", # required
    #         model_name: "ModelName", # required
    #         initial_instance_count: 1, # required
    #         instance_type: "ml.t2.medium", # required, accepts ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.large, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
    #         initial_variant_weight: 1.0,
    #         accelerator_type: "ml.eia1.medium", # accepts ml.eia1.medium, ml.eia1.large, ml.eia1.xlarge
    #       },
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     kms_key_id: "KmsKeyId",
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_config_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateEndpointConfig AWS API Documentation
    #
    # @overload create_endpoint_config(params = {})
    # @param [Hash] params ({})
    def create_endpoint_config(params = {}, options = {})
      req = build_request(:create_endpoint_config, params)
      req.send_request(options)
    end

    # Starts a hyperparameter tuning job. A hyperparameter tuning job finds
    # the best version of a model by running many training jobs on your
    # dataset using the algorithm you choose and values for hyperparameters
    # within ranges that you specify. It then chooses the hyperparameter
    # values that result in a model that performs the best, as measured by
    # an objective metric that you choose.
    #
    # @option params [required, String] :hyper_parameter_tuning_job_name
    #   The name of the tuning job. This name is the prefix for the names of
    #   all training jobs that this tuning job launches. The name must be
    #   unique within the same AWS account and AWS Region. The name must have
    #   \\\{ \\} to \\\{ \\} characters. Valid characters are a-z, A-Z, 0-9,
    #   and : + = @ \_ % - (hyphen). The name is not case sensitive.
    #
    # @option params [required, Types::HyperParameterTuningJobConfig] :hyper_parameter_tuning_job_config
    #   The HyperParameterTuningJobConfig object that describes the tuning
    #   job, including the search strategy, the objective metric used to
    #   evaluate training jobs, ranges of parameters to search, and resource
    #   limits for the tuning job. For more information, see
    #   automatic-model-tuning
    #
    # @option params [Types::HyperParameterTrainingJobDefinition] :training_job_definition
    #   The HyperParameterTrainingJobDefinition object that describes the
    #   training jobs that this tuning job launches, including static
    #   hyperparameters, input data configuration, output data configuration,
    #   resource configuration, and stopping condition.
    #
    # @option params [Types::HyperParameterTuningJobWarmStartConfig] :warm_start_config
    #   Specifies the configuration for starting the hyperparameter tuning job
    #   using one or more previous tuning jobs as a starting point. The
    #   results of previous tuning jobs are used to inform which combinations
    #   of hyperparameters to search over in the new tuning job.
    #
    #   All training jobs launched by the new hyperparameter tuning job are
    #   evaluated by using the objective metric. If you specify
    #   `IDENTICAL_DATA_AND_ALGORITHM` as the `WarmStartType` value for the
    #   warm start configuration, the training job that performs the best in
    #   the new tuning job is compared to the best training jobs from the
    #   parent tuning jobs. From these, the training job that performs the
    #   best as measured by the objective metric is returned as the overall
    #   best training job.
    #
    #   <note markdown="1"> All training jobs launched by parent hyperparameter tuning jobs and
    #   the new hyperparameter tuning jobs count against the limit of training
    #   jobs for the tuning job.
    #
    #    </note>
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of key-value pairs. You can use tags to categorize your AWS
    #   resources in different ways, for example, by purpose, owner, or
    #   environment. For more information, see [AWS Tagging Strategies][1].
    #
    #   Tags that you specify for the tuning job are also added to all
    #   training jobs that the tuning job launches.
    #
    #
    #
    #   [1]: https://aws.amazon.com/answers/account-management/aws-tagging-strategies/
    #
    # @return [Types::CreateHyperParameterTuningJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateHyperParameterTuningJobResponse#hyper_parameter_tuning_job_arn #hyper_parameter_tuning_job_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_hyper_parameter_tuning_job({
    #     hyper_parameter_tuning_job_name: "HyperParameterTuningJobName", # required
    #     hyper_parameter_tuning_job_config: { # required
    #       strategy: "Bayesian", # required, accepts Bayesian, Random
    #       hyper_parameter_tuning_job_objective: {
    #         type: "Maximize", # required, accepts Maximize, Minimize
    #         metric_name: "MetricName", # required
    #       },
    #       resource_limits: { # required
    #         max_number_of_training_jobs: 1, # required
    #         max_parallel_training_jobs: 1, # required
    #       },
    #       parameter_ranges: {
    #         integer_parameter_ranges: [
    #           {
    #             name: "ParameterKey", # required
    #             min_value: "ParameterValue", # required
    #             max_value: "ParameterValue", # required
    #             scaling_type: "Auto", # accepts Auto, Linear, Logarithmic, ReverseLogarithmic
    #           },
    #         ],
    #         continuous_parameter_ranges: [
    #           {
    #             name: "ParameterKey", # required
    #             min_value: "ParameterValue", # required
    #             max_value: "ParameterValue", # required
    #             scaling_type: "Auto", # accepts Auto, Linear, Logarithmic, ReverseLogarithmic
    #           },
    #         ],
    #         categorical_parameter_ranges: [
    #           {
    #             name: "ParameterKey", # required
    #             values: ["ParameterValue"], # required
    #           },
    #         ],
    #       },
    #       training_job_early_stopping_type: "Off", # accepts Off, Auto
    #     },
    #     training_job_definition: {
    #       static_hyper_parameters: {
    #         "ParameterKey" => "ParameterValue",
    #       },
    #       algorithm_specification: { # required
    #         training_image: "AlgorithmImage",
    #         training_input_mode: "Pipe", # required, accepts Pipe, File
    #         algorithm_name: "ArnOrName",
    #         metric_definitions: [
    #           {
    #             name: "MetricName", # required
    #             regex: "MetricRegex", # required
    #           },
    #         ],
    #       },
    #       role_arn: "RoleArn", # required
    #       input_data_config: [
    #         {
    #           channel_name: "ChannelName", # required
    #           data_source: { # required
    #             s3_data_source: {
    #               s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix, AugmentedManifestFile
    #               s3_uri: "S3Uri", # required
    #               s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #               attribute_names: ["AttributeName"],
    #             },
    #           },
    #           content_type: "ContentType",
    #           compression_type: "None", # accepts None, Gzip
    #           record_wrapper_type: "None", # accepts None, RecordIO
    #           input_mode: "Pipe", # accepts Pipe, File
    #           shuffle_config: {
    #             seed: 1, # required
    #           },
    #         },
    #       ],
    #       vpc_config: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #       },
    #       output_data_config: { # required
    #         kms_key_id: "KmsKeyId",
    #         s3_output_path: "S3Uri", # required
    #       },
    #       resource_config: { # required
    #         instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
    #         instance_count: 1, # required
    #         volume_size_in_gb: 1, # required
    #         volume_kms_key_id: "KmsKeyId",
    #       },
    #       stopping_condition: { # required
    #         max_runtime_in_seconds: 1,
    #       },
    #       enable_network_isolation: false,
    #       enable_inter_container_traffic_encryption: false,
    #     },
    #     warm_start_config: {
    #       parent_hyper_parameter_tuning_jobs: [ # required
    #         {
    #           hyper_parameter_tuning_job_name: "HyperParameterTuningJobName",
    #         },
    #       ],
    #       warm_start_type: "IdenticalDataAndAlgorithm", # required, accepts IdenticalDataAndAlgorithm, TransferLearning
    #     },
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
    #   resp.hyper_parameter_tuning_job_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateHyperParameterTuningJob AWS API Documentation
    #
    # @overload create_hyper_parameter_tuning_job(params = {})
    # @param [Hash] params ({})
    def create_hyper_parameter_tuning_job(params = {}, options = {})
      req = build_request(:create_hyper_parameter_tuning_job, params)
      req.send_request(options)
    end

    # Creates a job that uses workers to label the data objects in your
    # input dataset. You can use the labeled data to train machine learning
    # models.
    #
    # You can select your workforce from one of three providers:
    #
    # * A private workforce that you create. It can include employees,
    #   contractors, and outside experts. Use a private workforce when want
    #   the data to stay within your organization or when a specific set of
    #   skills is required.
    #
    # * One or more vendors that you select from the AWS Marketplace.
    #   Vendors provide expertise in specific areas.
    #
    # * The Amazon Mechanical Turk workforce. This is the largest workforce,
    #   but it should only be used for public data or data that has been
    #   stripped of any personally identifiable information.
    #
    # You can also use *automated data labeling* to reduce the number of
    # data objects that need to be labeled by a human. Automated data
    # labeling uses *active learning* to determine if a data object can be
    # labeled by machine or if it needs to be sent to a human worker. For
    # more information, see [Using Automated Data Labeling][1].
    #
    # The data objects to be labeled are contained in an Amazon S3 bucket.
    # You create a *manifest file* that describes the location of each
    # object. For more information, see [Using Input and Output Data][2].
    #
    # The output can be used as the manifest file for another labeling job
    # or as training data for your machine learning models.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/sms-automated-labeling.html
    # [2]: http://docs.aws.amazon.com/sagemaker/latest/dg/sms-data.html
    #
    # @option params [required, String] :labeling_job_name
    #   The name of the labeling job. This name is used to identify the job in
    #   a list of labeling jobs.
    #
    # @option params [required, String] :label_attribute_name
    #   The attribute name to use for the label in the output manifest file.
    #   This is the key for the key/value pair formed with the label that a
    #   worker assigns to the object. The name can't end with "-metadata".
    #   If you are running a semantic segmentation labeling job, the attribute
    #   name must end with "-ref". If you are running any other kind of
    #   labeling job, the attribute name must not end with "-ref".
    #
    # @option params [required, Types::LabelingJobInputConfig] :input_config
    #   Input data for the labeling job, such as the Amazon S3 location of the
    #   data objects and the location of the manifest file that describes the
    #   data objects.
    #
    # @option params [required, Types::LabelingJobOutputConfig] :output_config
    #   The location of the output data and the AWS Key Management Service key
    #   ID for the key used to encrypt the output data, if any.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Number (ARN) that Amazon SageMaker assumes to
    #   perform tasks on your behalf during data labeling. You must grant this
    #   role the necessary permissions so that Amazon SageMaker can
    #   successfully complete data labeling.
    #
    # @option params [String] :label_category_config_s3_uri
    #   The S3 URL of the file that defines the categories used to label the
    #   data objects.
    #
    #   The file is a JSON structure in the following format:
    #
    #   `\{`
    #
    #   ` "document-version": "2018-11-28"`
    #
    #   ` "labels": [`
    #
    #   ` \{`
    #
    #   ` "label": "label 1"`
    #
    #   ` \},`
    #
    #   ` \{`
    #
    #   ` "label": "label 2"`
    #
    #   ` \},`
    #
    #   ` ...`
    #
    #   ` \{`
    #
    #   ` "label": "label n"`
    #
    #   ` \}`
    #
    #   ` ]`
    #
    #   `\}`
    #
    # @option params [Types::LabelingJobStoppingConditions] :stopping_conditions
    #   A set of conditions for stopping the labeling job. If any of the
    #   conditions are met, the job is automatically stopped. You can use
    #   these conditions to control the cost of data labeling.
    #
    # @option params [Types::LabelingJobAlgorithmsConfig] :labeling_job_algorithms_config
    #   Configures the information required to perform automated data
    #   labeling.
    #
    # @option params [required, Types::HumanTaskConfig] :human_task_config
    #   Configures the information required for human workers to complete a
    #   labeling task.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of key/value pairs. For more information, see [Using Cost
    #   Allocation Tags][1] in the *AWS Billing and Cost Management User
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what
    #
    # @return [Types::CreateLabelingJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLabelingJobResponse#labeling_job_arn #labeling_job_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_labeling_job({
    #     labeling_job_name: "LabelingJobName", # required
    #     label_attribute_name: "LabelAttributeName", # required
    #     input_config: { # required
    #       data_source: { # required
    #         s3_data_source: { # required
    #           manifest_s3_uri: "S3Uri", # required
    #         },
    #       },
    #       data_attributes: {
    #         content_classifiers: ["FreeOfPersonallyIdentifiableInformation"], # accepts FreeOfPersonallyIdentifiableInformation, FreeOfAdultContent
    #       },
    #     },
    #     output_config: { # required
    #       s3_output_path: "S3Uri", # required
    #       kms_key_id: "KmsKeyId",
    #     },
    #     role_arn: "RoleArn", # required
    #     label_category_config_s3_uri: "S3Uri",
    #     stopping_conditions: {
    #       max_human_labeled_object_count: 1,
    #       max_percentage_of_input_dataset_labeled: 1,
    #     },
    #     labeling_job_algorithms_config: {
    #       labeling_job_algorithm_specification_arn: "LabelingJobAlgorithmSpecificationArn", # required
    #       initial_active_learning_model_arn: "ModelArn",
    #       labeling_job_resource_config: {
    #         volume_kms_key_id: "KmsKeyId",
    #       },
    #     },
    #     human_task_config: { # required
    #       workteam_arn: "WorkteamArn", # required
    #       ui_config: { # required
    #         ui_template_s3_uri: "S3Uri", # required
    #       },
    #       pre_human_task_lambda_arn: "LambdaFunctionArn", # required
    #       task_keywords: ["TaskKeyword"],
    #       task_title: "TaskTitle", # required
    #       task_description: "TaskDescription", # required
    #       number_of_human_workers_per_data_object: 1, # required
    #       task_time_limit_in_seconds: 1, # required
    #       task_availability_lifetime_in_seconds: 1,
    #       max_concurrent_task_count: 1,
    #       annotation_consolidation_config: { # required
    #         annotation_consolidation_lambda_arn: "LambdaFunctionArn", # required
    #       },
    #       public_workforce_task_price: {
    #         amount_in_usd: {
    #           dollars: 1,
    #           cents: 1,
    #           tenth_fractions_of_a_cent: 1,
    #         },
    #       },
    #     },
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
    #   resp.labeling_job_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateLabelingJob AWS API Documentation
    #
    # @overload create_labeling_job(params = {})
    # @param [Hash] params ({})
    def create_labeling_job(params = {}, options = {})
      req = build_request(:create_labeling_job, params)
      req.send_request(options)
    end

    # Creates a model in Amazon SageMaker. In the request, you name the
    # model and describe a primary container. For the primary container, you
    # specify the docker image containing inference code, artifacts (from
    # prior training), and custom environment map that the inference code
    # uses when you deploy the model for predictions.
    #
    # Use this API to create a model if you want to use Amazon SageMaker
    # hosting services or run a batch transform job.
    #
    # To host your model, you create an endpoint configuration with the
    # `CreateEndpointConfig` API, and then create an endpoint with the
    # `CreateEndpoint` API. Amazon SageMaker then deploys all of the
    # containers that you defined for the model in the hosting environment.
    #
    # To run a batch transform using your model, you start a job with the
    # `CreateTransformJob` API. Amazon SageMaker uses your model and your
    # dataset to get inferences which are then saved to a specified S3
    # location.
    #
    # In the `CreateModel` request, you must define a container with the
    # `PrimaryContainer` parameter.
    #
    # In the request, you also provide an IAM role that Amazon SageMaker can
    # assume to access model artifacts and docker image for deployment on ML
    # compute hosting instances or for batch transform jobs. In addition,
    # you also use the IAM role to manage permissions the inference code
    # needs. For example, if the inference code access any other AWS
    # resources, you grant necessary permissions via this role.
    #
    # @option params [required, String] :model_name
    #   The name of the new model.
    #
    # @option params [Types::ContainerDefinition] :primary_container
    #   The location of the primary docker image containing inference code,
    #   associated artifacts, and custom environment map that the inference
    #   code uses when the model is deployed for predictions.
    #
    # @option params [Array<Types::ContainerDefinition>] :containers
    #   Specifies the containers in the inference pipeline.
    #
    # @option params [required, String] :execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker
    #   can assume to access model artifacts and docker image for deployment
    #   on ML compute instances or for batch transform jobs. Deploying on ML
    #   compute instances is part of model hosting. For more information, see
    #   [Amazon SageMaker Roles][1].
    #
    #   <note markdown="1"> To be able to pass this role to Amazon SageMaker, the caller of this
    #   API must have the `iam:PassRole` permission.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of key-value pairs. For more information, see [Using Cost
    #   Allocation Tags][1] in the *AWS Billing and Cost Management User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   A [VpcConfig][1] object that specifies the VPC that you want your
    #   model to connect to. Control access to and from your model container
    #   by configuring the VPC. `VpcConfig` is used in hosting services and in
    #   batch transform. For more information, see [Protect Endpoints by Using
    #   an Amazon Virtual Private Cloud][2] and [Protect Data in Batch
    #   Transform Jobs by Using an Amazon Virtual Private Cloud][3].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/API_VpcConfig.html
    #   [2]: https://docs.aws.amazon.com/sagemaker/latest/dg/host-vpc.html
    #   [3]: https://docs.aws.amazon.com/sagemaker/latest/dg/batch-vpc.html
    #
    # @option params [Boolean] :enable_network_isolation
    #   Isolates the model container. No inbound or outbound network calls can
    #   be made to or from the model container.
    #
    #   <note markdown="1"> The Semantic Segmentation built-in algorithm does not support network
    #   isolation.
    #
    #    </note>
    #
    # @return [Types::CreateModelOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateModelOutput#model_arn #model_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_model({
    #     model_name: "ModelName", # required
    #     primary_container: {
    #       container_hostname: "ContainerHostname",
    #       image: "Image",
    #       model_data_url: "Url",
    #       environment: {
    #         "EnvironmentKey" => "EnvironmentValue",
    #       },
    #       model_package_name: "ArnOrName",
    #     },
    #     containers: [
    #       {
    #         container_hostname: "ContainerHostname",
    #         image: "Image",
    #         model_data_url: "Url",
    #         environment: {
    #           "EnvironmentKey" => "EnvironmentValue",
    #         },
    #         model_package_name: "ArnOrName",
    #       },
    #     ],
    #     execution_role_arn: "RoleArn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnets: ["SubnetId"], # required
    #     },
    #     enable_network_isolation: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.model_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateModel AWS API Documentation
    #
    # @overload create_model(params = {})
    # @param [Hash] params ({})
    def create_model(params = {}, options = {})
      req = build_request(:create_model, params)
      req.send_request(options)
    end

    # Creates a model package that you can use to create Amazon SageMaker
    # models or list on AWS Marketplace. Buyers can subscribe to model
    # packages listed on AWS Marketplace to create models in Amazon
    # SageMaker.
    #
    # To create a model package by specifying a Docker container that
    # contains your inference code and the Amazon S3 location of your model
    # artifacts, provide values for `InferenceSpecification`. To create a
    # model from an algorithm resource that you created or subscribed to in
    # AWS Marketplace, provide a value for `SourceAlgorithmSpecification`.
    #
    # @option params [required, String] :model_package_name
    #   The name of the model package. The name must have 1 to 63 characters.
    #   Valid characters are a-z, A-Z, 0-9, and - (hyphen).
    #
    # @option params [String] :model_package_description
    #   A description of the model package.
    #
    # @option params [Types::InferenceSpecification] :inference_specification
    #   Specifies details about inference jobs that can be run with models
    #   based on this model package, including the following:
    #
    #   * The Amazon ECR paths of containers that contain the inference code
    #     and model artifacts.
    #
    #   * The instance types that the model package supports for transform
    #     jobs and real-time endpoints used for inference.
    #
    #   * The input and output content formats that the model package supports
    #     for inference.
    #
    # @option params [Types::ModelPackageValidationSpecification] :validation_specification
    #   Specifies configurations for one or more transform jobs that Amazon
    #   SageMaker runs to test the model package.
    #
    # @option params [Types::SourceAlgorithmSpecification] :source_algorithm_specification
    #   Details about the algorithm that was used to create the model package.
    #
    # @option params [Boolean] :certify_for_marketplace
    #   Whether to certify the model package for listing on AWS Marketplace.
    #
    # @return [Types::CreateModelPackageOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateModelPackageOutput#model_package_arn #model_package_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_model_package({
    #     model_package_name: "EntityName", # required
    #     model_package_description: "EntityDescription",
    #     inference_specification: {
    #       containers: [ # required
    #         {
    #           container_hostname: "ContainerHostname",
    #           image: "Image", # required
    #           image_digest: "ImageDigest",
    #           model_data_url: "Url",
    #           product_id: "ProductId",
    #         },
    #       ],
    #       supported_transform_instance_types: ["ml.m4.xlarge"], # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge
    #       supported_realtime_inference_instance_types: ["ml.t2.medium"], # required, accepts ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.large, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
    #       supported_content_types: ["ContentType"], # required
    #       supported_response_mime_types: ["ResponseMIMEType"], # required
    #     },
    #     validation_specification: {
    #       validation_role: "RoleArn", # required
    #       validation_profiles: [ # required
    #         {
    #           profile_name: "EntityName", # required
    #           transform_job_definition: { # required
    #             max_concurrent_transforms: 1,
    #             max_payload_in_mb: 1,
    #             batch_strategy: "MultiRecord", # accepts MultiRecord, SingleRecord
    #             environment: {
    #               "TransformEnvironmentKey" => "TransformEnvironmentValue",
    #             },
    #             transform_input: { # required
    #               data_source: { # required
    #                 s3_data_source: { # required
    #                   s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix, AugmentedManifestFile
    #                   s3_uri: "S3Uri", # required
    #                 },
    #               },
    #               content_type: "ContentType",
    #               compression_type: "None", # accepts None, Gzip
    #               split_type: "None", # accepts None, Line, RecordIO, TFRecord
    #             },
    #             transform_output: { # required
    #               s3_output_path: "S3Uri", # required
    #               accept: "Accept",
    #               assemble_with: "None", # accepts None, Line
    #               kms_key_id: "KmsKeyId",
    #             },
    #             transform_resources: { # required
    #               instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge
    #               instance_count: 1, # required
    #               volume_kms_key_id: "KmsKeyId",
    #             },
    #           },
    #         },
    #       ],
    #     },
    #     source_algorithm_specification: {
    #       source_algorithms: [ # required
    #         {
    #           model_data_url: "Url",
    #           algorithm_name: "ArnOrName", # required
    #         },
    #       ],
    #     },
    #     certify_for_marketplace: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.model_package_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateModelPackage AWS API Documentation
    #
    # @overload create_model_package(params = {})
    # @param [Hash] params ({})
    def create_model_package(params = {}, options = {})
      req = build_request(:create_model_package, params)
      req.send_request(options)
    end

    # Creates an Amazon SageMaker notebook instance. A notebook instance is
    # a machine learning (ML) compute instance running on a Jupyter
    # notebook.
    #
    # In a `CreateNotebookInstance` request, specify the type of ML compute
    # instance that you want to run. Amazon SageMaker launches the instance,
    # installs common libraries that you can use to explore datasets for
    # model training, and attaches an ML storage volume to the notebook
    # instance.
    #
    # Amazon SageMaker also provides a set of example notebooks. Each
    # notebook demonstrates how to use Amazon SageMaker with a specific
    # algorithm or with a machine learning framework.
    #
    # After receiving the request, Amazon SageMaker does the following:
    #
    # 1.  Creates a network interface in the Amazon SageMaker VPC.
    #
    # 2.  (Option) If you specified `SubnetId`, Amazon SageMaker creates a
    #     network interface in your own VPC, which is inferred from the
    #     subnet ID that you provide in the input. When creating this
    #     network interface, Amazon SageMaker attaches the security group
    #     that you specified in the request to the network interface that it
    #     creates in your VPC.
    #
    # 3.  Launches an EC2 instance of the type specified in the request in
    #     the Amazon SageMaker VPC. If you specified `SubnetId` of your VPC,
    #     Amazon SageMaker specifies both network interfaces when launching
    #     this instance. This enables inbound traffic from your own VPC to
    #     the notebook instance, assuming that the security groups allow it.
    #
    # After creating the notebook instance, Amazon SageMaker returns its
    # Amazon Resource Name (ARN).
    #
    # After Amazon SageMaker creates the notebook instance, you can connect
    # to the Jupyter server and work in Jupyter notebooks. For example, you
    # can write code to explore a dataset that you can use for model
    # training, train a model, host models by creating Amazon SageMaker
    # endpoints, and validate hosted models.
    #
    # For more information, see [How It Works][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html
    #
    # @option params [required, String] :notebook_instance_name
    #   The name of the new notebook instance.
    #
    # @option params [required, String] :instance_type
    #   The type of ML compute instance to launch for the notebook instance.
    #
    # @option params [String] :subnet_id
    #   The ID of the subnet in a VPC to which you would like to have a
    #   connectivity from your ML compute instance.
    #
    # @option params [Array<String>] :security_group_ids
    #   The VPC security group IDs, in the form sg-xxxxxxxx. The security
    #   groups must be for the same VPC as specified in the subnet.
    #
    # @option params [required, String] :role_arn
    #   When you send any requests to AWS resources from the notebook
    #   instance, Amazon SageMaker assumes this role to perform tasks on your
    #   behalf. You must grant this role necessary permissions so Amazon
    #   SageMaker can perform these tasks. The policy must allow the Amazon
    #   SageMaker service principal (sagemaker.amazonaws.com) permissions to
    #   assume this role. For more information, see [Amazon SageMaker
    #   Roles][1].
    #
    #   <note markdown="1"> To be able to pass this role to Amazon SageMaker, the caller of this
    #   API must have the `iam:PassRole` permission.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html
    #
    # @option params [String] :kms_key_id
    #   The Amazon Resource Name (ARN) of a AWS Key Management Service key
    #   that Amazon SageMaker uses to encrypt data on the storage volume
    #   attached to your notebook instance. The KMS key you provide must be
    #   enabled. For information, see [Enabling and Disabling Keys][1] in the
    #   *AWS Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kms/latest/developerguide/enabling-keys.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags to associate with the notebook instance. You can add
    #   tags later by using the `CreateTags` API.
    #
    # @option params [String] :lifecycle_config_name
    #   The name of a lifecycle configuration to associate with the notebook
    #   instance. For information about lifestyle configurations, see [Step
    #   2.1: (Optional) Customize a Notebook Instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html
    #
    # @option params [String] :direct_internet_access
    #   Sets whether Amazon SageMaker provides internet access to the notebook
    #   instance. If you set this to `Disabled` this notebook instance will be
    #   able to access resources only in your VPC, and will not be able to
    #   connect to Amazon SageMaker training and endpoint services unless your
    #   configure a NAT Gateway in your VPC.
    #
    #   For more information, see [Notebook Instances Are Internet-Enabled by
    #   Default][1]. You can set the value of this parameter to `Disabled`
    #   only if you set a value for the `SubnetId` parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/appendix-additional-considerations.html#appendix-notebook-and-internet-access
    #
    # @option params [Integer] :volume_size_in_gb
    #   The size, in GB, of the ML storage volume to attach to the notebook
    #   instance. The default value is 5 GB.
    #
    # @option params [Array<String>] :accelerator_types
    #   A list of Elastic Inference (EI) instance types to associate with this
    #   notebook instance. Currently, only one instance type can be associated
    #   with a notebook instance. For more information, see [Using Elastic
    #   Inference in Amazon SageMaker][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/ei.html
    #
    # @option params [String] :default_code_repository
    #   A Git repository to associate with the notebook instance as its
    #   default code repository. This can be either the name of a Git
    #   repository stored as a resource in your account, or the URL of a Git
    #   repository in [AWS CodeCommit][1] or in any other Git repository. When
    #   you open a notebook instance, it opens in the directory that contains
    #   this repository. For more information, see [Associating Git
    #   Repositories with Amazon SageMaker Notebook Instances][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html
    #   [2]: http://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html
    #
    # @option params [Array<String>] :additional_code_repositories
    #   An array of up to three Git repositories to associate with the
    #   notebook instance. These can be either the names of Git repositories
    #   stored as resources in your account, or the URL of Git repositories in
    #   [AWS CodeCommit][1] or in any other Git repository. These repositories
    #   are cloned at the same level as the default repository of your
    #   notebook instance. For more information, see [Associating Git
    #   Repositories with Amazon SageMaker Notebook Instances][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html
    #   [2]: http://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html
    #
    # @option params [String] :root_access
    #   Whether root access is enabled or disabled for users of the notebook
    #   instance. The default value is `Enabled`.
    #
    #   <note markdown="1"> Lifecycle configurations need root access to be able to set up a
    #   notebook instance. Because of this, lifecycle configurations
    #   associated with a notebook instance always run with root access even
    #   if you disable root access for users.
    #
    #    </note>
    #
    # @return [Types::CreateNotebookInstanceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNotebookInstanceOutput#notebook_instance_arn #notebook_instance_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_notebook_instance({
    #     notebook_instance_name: "NotebookInstanceName", # required
    #     instance_type: "ml.t2.medium", # required, accepts ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5d.xlarge, ml.c5d.2xlarge, ml.c5d.4xlarge, ml.c5d.9xlarge, ml.c5d.18xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge
    #     subnet_id: "SubnetId",
    #     security_group_ids: ["SecurityGroupId"],
    #     role_arn: "RoleArn", # required
    #     kms_key_id: "KmsKeyId",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     lifecycle_config_name: "NotebookInstanceLifecycleConfigName",
    #     direct_internet_access: "Enabled", # accepts Enabled, Disabled
    #     volume_size_in_gb: 1,
    #     accelerator_types: ["ml.eia1.medium"], # accepts ml.eia1.medium, ml.eia1.large, ml.eia1.xlarge
    #     default_code_repository: "CodeRepositoryNameOrUrl",
    #     additional_code_repositories: ["CodeRepositoryNameOrUrl"],
    #     root_access: "Enabled", # accepts Enabled, Disabled
    #   })
    #
    # @example Response structure
    #
    #   resp.notebook_instance_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateNotebookInstance AWS API Documentation
    #
    # @overload create_notebook_instance(params = {})
    # @param [Hash] params ({})
    def create_notebook_instance(params = {}, options = {})
      req = build_request(:create_notebook_instance, params)
      req.send_request(options)
    end

    # Creates a lifecycle configuration that you can associate with a
    # notebook instance. A *lifecycle configuration* is a collection of
    # shell scripts that run when you create or start a notebook instance.
    #
    # Each lifecycle configuration script has a limit of 16384 characters.
    #
    # The value of the `$PATH` environment variable that is available to
    # both scripts is `/sbin:bin:/usr/sbin:/usr/bin`.
    #
    # View CloudWatch Logs for notebook instance lifecycle configurations in
    # log group `/aws/sagemaker/NotebookInstances` in log stream
    # `[notebook-instance-name]/[LifecycleConfigHook]`.
    #
    # Lifecycle configuration scripts cannot run for longer than 5 minutes.
    # If a script runs for longer than 5 minutes, it fails and the notebook
    # instance is not created or started.
    #
    # For information about notebook instance lifestyle configurations, see
    # [Step 2.1: (Optional) Customize a Notebook Instance][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html
    #
    # @option params [required, String] :notebook_instance_lifecycle_config_name
    #   The name of the lifecycle configuration.
    #
    # @option params [Array<Types::NotebookInstanceLifecycleHook>] :on_create
    #   A shell script that runs only once, when you create a notebook
    #   instance. The shell script must be a base64-encoded string.
    #
    # @option params [Array<Types::NotebookInstanceLifecycleHook>] :on_start
    #   A shell script that runs every time you start a notebook instance,
    #   including when you create the notebook instance. The shell script must
    #   be a base64-encoded string.
    #
    # @return [Types::CreateNotebookInstanceLifecycleConfigOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNotebookInstanceLifecycleConfigOutput#notebook_instance_lifecycle_config_arn #notebook_instance_lifecycle_config_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_notebook_instance_lifecycle_config({
    #     notebook_instance_lifecycle_config_name: "NotebookInstanceLifecycleConfigName", # required
    #     on_create: [
    #       {
    #         content: "NotebookInstanceLifecycleConfigContent",
    #       },
    #     ],
    #     on_start: [
    #       {
    #         content: "NotebookInstanceLifecycleConfigContent",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.notebook_instance_lifecycle_config_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateNotebookInstanceLifecycleConfig AWS API Documentation
    #
    # @overload create_notebook_instance_lifecycle_config(params = {})
    # @param [Hash] params ({})
    def create_notebook_instance_lifecycle_config(params = {}, options = {})
      req = build_request(:create_notebook_instance_lifecycle_config, params)
      req.send_request(options)
    end

    # Returns a URL that you can use to connect to the Jupyter server from a
    # notebook instance. In the Amazon SageMaker console, when you choose
    # `Open` next to a notebook instance, Amazon SageMaker opens a new tab
    # showing the Jupyter server home page from the notebook instance. The
    # console uses this API to get the URL and show the page.
    #
    # You can restrict access to this API and to the URL that it returns to
    # a list of IP addresses that you specify. To restrict access, attach an
    # IAM policy that denies access to this API unless the call comes from
    # an IP address in the specified list to every AWS Identity and Access
    # Management user, group, or role used to access the notebook instance.
    # Use the `NotIpAddress` condition operator and the `aws:SourceIP`
    # condition context key to specify the list of IP addresses that you
    # want to have access to the notebook instance. For more information,
    # see [Limit Access to a Notebook Instance by IP Address][1].
    #
    # <note markdown="1"> The URL that you get from a call to is valid only for 5 minutes. If
    # you try to use the URL after the 5-minute limit expires, you are
    # directed to the AWS console sign-in page.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-ip-filter.html
    #
    # @option params [required, String] :notebook_instance_name
    #   The name of the notebook instance.
    #
    # @option params [Integer] :session_expiration_duration_in_seconds
    #   The duration of the session, in seconds. The default is 12 hours.
    #
    # @return [Types::CreatePresignedNotebookInstanceUrlOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePresignedNotebookInstanceUrlOutput#authorized_url #authorized_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_presigned_notebook_instance_url({
    #     notebook_instance_name: "NotebookInstanceName", # required
    #     session_expiration_duration_in_seconds: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.authorized_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreatePresignedNotebookInstanceUrl AWS API Documentation
    #
    # @overload create_presigned_notebook_instance_url(params = {})
    # @param [Hash] params ({})
    def create_presigned_notebook_instance_url(params = {}, options = {})
      req = build_request(:create_presigned_notebook_instance_url, params)
      req.send_request(options)
    end

    # Starts a model training job. After training completes, Amazon
    # SageMaker saves the resulting model artifacts to an Amazon S3 location
    # that you specify.
    #
    # If you choose to host your model using Amazon SageMaker hosting
    # services, you can use the resulting model artifacts as part of the
    # model. You can also use the artifacts in a machine learning service
    # other than Amazon SageMaker, provided that you know how to use them
    # for inferences.
    #
    # In the request body, you provide the following:
    #
    # * `AlgorithmSpecification` - Identifies the training algorithm to use.
    #
    # * `HyperParameters` - Specify these algorithm-specific parameters to
    #   influence the quality of the final model. For a list of
    #   hyperparameters for each training algorithm provided by Amazon
    #   SageMaker, see [Algorithms][1].
    #
    # * `InputDataConfig` - Describes the training dataset and the Amazon S3
    #   location where it is stored.
    #
    # * `OutputDataConfig` - Identifies the Amazon S3 location where you
    #   want Amazon SageMaker to save the results of model training.
    #
    #
    #
    # * `ResourceConfig` - Identifies the resources, ML compute instances,
    #   and ML storage volumes to deploy for model training. In distributed
    #   training, you specify more than one instance.
    #
    # * `RoleARN` - The Amazon Resource Number (ARN) that Amazon SageMaker
    #   assumes to perform tasks on your behalf during model training. You
    #   must grant this role the necessary permissions so that Amazon
    #   SageMaker can successfully complete model training.
    #
    # * `StoppingCondition` - Sets a duration for training. Use this
    #   parameter to cap model training costs.
    #
    # For more information about Amazon SageMaker, see [How It Works][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html
    # [2]: https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html
    #
    # @option params [required, String] :training_job_name
    #   The name of the training job. The name must be unique within an AWS
    #   Region in an AWS account.
    #
    # @option params [Hash<String,String>] :hyper_parameters
    #   Algorithm-specific parameters that influence the quality of the model.
    #   You set hyperparameters before you start the learning process. For a
    #   list of hyperparameters for each training algorithm provided by Amazon
    #   SageMaker, see [Algorithms][1].
    #
    #   You can specify a maximum of 100 hyperparameters. Each hyperparameter
    #   is a key-value pair. Each key and value is limited to 256 characters,
    #   as specified by the `Length Constraint`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html
    #
    # @option params [required, Types::AlgorithmSpecification] :algorithm_specification
    #   The registry path of the Docker image that contains the training
    #   algorithm and algorithm-specific metadata, including the input mode.
    #   For more information about algorithms provided by Amazon SageMaker,
    #   see [Algorithms][1]. For information about providing your own
    #   algorithms, see [Using Your Own Algorithms with Amazon SageMaker][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html
    #   [2]: https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker
    #   can assume to perform tasks on your behalf.
    #
    #   During model training, Amazon SageMaker needs your permission to read
    #   input data from an S3 bucket, download a Docker image that contains
    #   training code, write model artifacts to an S3 bucket, write logs to
    #   Amazon CloudWatch Logs, and publish metrics to Amazon CloudWatch. You
    #   grant permissions for all of these tasks to an IAM role. For more
    #   information, see [Amazon SageMaker Roles][1].
    #
    #   <note markdown="1"> To be able to pass this role to Amazon SageMaker, the caller of this
    #   API must have the `iam:PassRole` permission.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html
    #
    # @option params [Array<Types::Channel>] :input_data_config
    #   An array of `Channel` objects. Each channel is a named input source.
    #   `InputDataConfig` describes the input data and its location.
    #
    #   Algorithms can accept input data from one or more channels. For
    #   example, an algorithm might have two channels of input data,
    #   `training_data` and `validation_data`. The configuration for each
    #   channel provides the S3 location where the input data is stored. It
    #   also provides information about the stored data: the MIME type,
    #   compression method, and whether the data is wrapped in RecordIO
    #   format.
    #
    #   Depending on the input mode that the algorithm supports, Amazon
    #   SageMaker either copies input data files from an S3 bucket to a local
    #   directory in the Docker container, or makes it available as input
    #   streams.
    #
    # @option params [required, Types::OutputDataConfig] :output_data_config
    #   Specifies the path to the S3 bucket where you want to store model
    #   artifacts. Amazon SageMaker creates subfolders for the artifacts.
    #
    # @option params [required, Types::ResourceConfig] :resource_config
    #   The resources, including the ML compute instances and ML storage
    #   volumes, to use for model training.
    #
    #   ML storage volumes store model artifacts and incremental states.
    #   Training algorithms might also use ML storage volumes for scratch
    #   space. If you want Amazon SageMaker to use the ML storage volume to
    #   store the training data, choose `File` as the `TrainingInputMode` in
    #   the algorithm specification. For distributed training algorithms,
    #   specify an instance count greater than 1.
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   A VpcConfig object that specifies the VPC that you want your training
    #   job to connect to. Control access to and from your training container
    #   by configuring the VPC. For more information, see [Protect Training
    #   Jobs by Using an Amazon Virtual Private Cloud][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html
    #
    # @option params [required, Types::StoppingCondition] :stopping_condition
    #   Sets a duration for training. Use this parameter to cap model training
    #   costs. To stop a job, Amazon SageMaker sends the algorithm the
    #   `SIGTERM` signal, which delays job termination for 120 seconds.
    #   Algorithms might use this 120-second window to save the model
    #   artifacts.
    #
    #   When Amazon SageMaker terminates a job because the stopping condition
    #   has been met, training algorithms provided by Amazon SageMaker save
    #   the intermediate results of the job. This intermediate data is a valid
    #   model artifact. You can use it to create a model using the
    #   `CreateModel` API.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of key-value pairs. For more information, see [Using Cost
    #   Allocation Tags][1] in the *AWS Billing and Cost Management User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what
    #
    # @option params [Boolean] :enable_network_isolation
    #   Isolates the training container. No inbound or outbound network calls
    #   can be made, except for calls between peers within a training cluster
    #   for distributed training. If you enable network isolation for training
    #   jobs that are configured to use a VPC, Amazon SageMaker downloads and
    #   uploads customer data and model artifacts through the specified VPC,
    #   but the training container does not have network access.
    #
    #   <note markdown="1"> The Semantic Segmentation built-in algorithm does not support network
    #   isolation.
    #
    #    </note>
    #
    # @option params [Boolean] :enable_inter_container_traffic_encryption
    #   To encrypt all communications between ML compute instances in
    #   distributed training, choose `True`. Encryption provides greater
    #   security for distributed training, but training might take longer. How
    #   long it takes depends on the amount of communication between compute
    #   instances, especially if you use a deep learning algorithm in
    #   distributed training. For more information, see [Protect
    #   Communications Between ML Compute Instances in a Distributed Training
    #   Job][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/train-encrypt.html
    #
    # @return [Types::CreateTrainingJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTrainingJobResponse#training_job_arn #training_job_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_training_job({
    #     training_job_name: "TrainingJobName", # required
    #     hyper_parameters: {
    #       "ParameterKey" => "ParameterValue",
    #     },
    #     algorithm_specification: { # required
    #       training_image: "AlgorithmImage",
    #       algorithm_name: "ArnOrName",
    #       training_input_mode: "Pipe", # required, accepts Pipe, File
    #       metric_definitions: [
    #         {
    #           name: "MetricName", # required
    #           regex: "MetricRegex", # required
    #         },
    #       ],
    #     },
    #     role_arn: "RoleArn", # required
    #     input_data_config: [
    #       {
    #         channel_name: "ChannelName", # required
    #         data_source: { # required
    #           s3_data_source: {
    #             s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix, AugmentedManifestFile
    #             s3_uri: "S3Uri", # required
    #             s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #             attribute_names: ["AttributeName"],
    #           },
    #         },
    #         content_type: "ContentType",
    #         compression_type: "None", # accepts None, Gzip
    #         record_wrapper_type: "None", # accepts None, RecordIO
    #         input_mode: "Pipe", # accepts Pipe, File
    #         shuffle_config: {
    #           seed: 1, # required
    #         },
    #       },
    #     ],
    #     output_data_config: { # required
    #       kms_key_id: "KmsKeyId",
    #       s3_output_path: "S3Uri", # required
    #     },
    #     resource_config: { # required
    #       instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
    #       instance_count: 1, # required
    #       volume_size_in_gb: 1, # required
    #       volume_kms_key_id: "KmsKeyId",
    #     },
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnets: ["SubnetId"], # required
    #     },
    #     stopping_condition: { # required
    #       max_runtime_in_seconds: 1,
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     enable_network_isolation: false,
    #     enable_inter_container_traffic_encryption: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.training_job_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateTrainingJob AWS API Documentation
    #
    # @overload create_training_job(params = {})
    # @param [Hash] params ({})
    def create_training_job(params = {}, options = {})
      req = build_request(:create_training_job, params)
      req.send_request(options)
    end

    # Starts a transform job. A transform job uses a trained model to get
    # inferences on a dataset and saves these results to an Amazon S3
    # location that you specify.
    #
    # To perform batch transformations, you create a transform job and use
    # the data that you have readily available.
    #
    # In the request body, you provide the following:
    #
    # * `TransformJobName` - Identifies the transform job. The name must be
    #   unique within an AWS Region in an AWS account.
    #
    # * `ModelName` - Identifies the model to use. `ModelName` must be the
    #   name of an existing Amazon SageMaker model in the same AWS Region
    #   and AWS account. For information on creating a model, see
    #   CreateModel.
    #
    # * `TransformInput` - Describes the dataset to be transformed and the
    #   Amazon S3 location where it is stored.
    #
    # * `TransformOutput` - Identifies the Amazon S3 location where you want
    #   Amazon SageMaker to save the results from the transform job.
    #
    # * `TransformResources` - Identifies the ML compute instances for the
    #   transform job.
    #
    # For more information about how batch transformation works Amazon
    # SageMaker, see [How It Works][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform.html
    #
    # @option params [required, String] :transform_job_name
    #   The name of the transform job. The name must be unique within an AWS
    #   Region in an AWS account.
    #
    # @option params [required, String] :model_name
    #   The name of the model that you want to use for the transform job.
    #   `ModelName` must be the name of an existing Amazon SageMaker model
    #   within an AWS Region in an AWS account.
    #
    # @option params [Integer] :max_concurrent_transforms
    #   The maximum number of parallel requests that can be sent to each
    #   instance in a transform job. If `MaxConcurrentTransforms` is set to
    #   `0` or left unset, Amazon SageMaker checks the optional
    #   execution-parameters to determine the optimal settings for your chosen
    #   algorithm. If the execution-parameters endpoint is not enabled, the
    #   default value is `1`. For more information on execution-parameters,
    #   see [How Containers Serve Requests][1]. For built-in algorithms, you
    #   don't need to set a value for `MaxConcurrentTransforms`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-batch-code.html#your-algorithms-batch-code-how-containe-serves-requests
    #
    # @option params [Integer] :max_payload_in_mb
    #   The maximum allowed size of the payload, in MB. A *payload* is the
    #   data portion of a record (without metadata). The value in
    #   `MaxPayloadInMB` must be greater than, or equal to, the size of a
    #   single record. To estimate the size of a record in MB, divide the size
    #   of your dataset by the number of records. To ensure that the records
    #   fit within the maximum payload size, we recommend using a slightly
    #   larger value. The default value is `6` MB.
    #
    #   For cases where the payload might be arbitrarily large and is
    #   transmitted using HTTP chunked encoding, set the value to `0`. This
    #   feature works only in supported algorithms. Currently, Amazon
    #   SageMaker built-in algorithms do not support HTTP chunked encoding.
    #
    # @option params [String] :batch_strategy
    #   Specifies the number of records to include in a mini-batch for an HTTP
    #   inference request. A *record* ** is a single unit of input data that
    #   inference can be made on. For example, a single line in a CSV file is
    #   a record.
    #
    #   To enable the batch strategy, you must set `SplitType` to `Line`,
    #   `RecordIO`, or `TFRecord`.
    #
    #   To use only one record when making an HTTP invocation request to a
    #   container, set `BatchStrategy` to `SingleRecord` and `SplitType` to
    #   `Line`.
    #
    #   To fit as many records in a mini-batch as can fit within the
    #   `MaxPayloadInMB` limit, set `BatchStrategy` to `MultiRecord` and
    #   `SplitType` to `Line`.
    #
    # @option params [Hash<String,String>] :environment
    #   The environment variables to set in the Docker container. We support
    #   up to 16 key and values entries in the map.
    #
    # @option params [required, Types::TransformInput] :transform_input
    #   Describes the input source and the way the transform job consumes it.
    #
    # @option params [required, Types::TransformOutput] :transform_output
    #   Describes the results of the transform job.
    #
    # @option params [required, Types::TransformResources] :transform_resources
    #   Describes the resources, including ML instance types and ML instance
    #   count, to use for the transform job.
    #
    # @option params [Array<Types::Tag>] :tags
    #   (Optional) An array of key-value pairs. For more information, see
    #   [Using Cost Allocation Tags][1] in the *AWS Billing and Cost
    #   Management User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what
    #
    # @return [Types::CreateTransformJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTransformJobResponse#transform_job_arn #transform_job_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_transform_job({
    #     transform_job_name: "TransformJobName", # required
    #     model_name: "ModelName", # required
    #     max_concurrent_transforms: 1,
    #     max_payload_in_mb: 1,
    #     batch_strategy: "MultiRecord", # accepts MultiRecord, SingleRecord
    #     environment: {
    #       "TransformEnvironmentKey" => "TransformEnvironmentValue",
    #     },
    #     transform_input: { # required
    #       data_source: { # required
    #         s3_data_source: { # required
    #           s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix, AugmentedManifestFile
    #           s3_uri: "S3Uri", # required
    #         },
    #       },
    #       content_type: "ContentType",
    #       compression_type: "None", # accepts None, Gzip
    #       split_type: "None", # accepts None, Line, RecordIO, TFRecord
    #     },
    #     transform_output: { # required
    #       s3_output_path: "S3Uri", # required
    #       accept: "Accept",
    #       assemble_with: "None", # accepts None, Line
    #       kms_key_id: "KmsKeyId",
    #     },
    #     transform_resources: { # required
    #       instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge
    #       instance_count: 1, # required
    #       volume_kms_key_id: "KmsKeyId",
    #     },
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
    #   resp.transform_job_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateTransformJob AWS API Documentation
    #
    # @overload create_transform_job(params = {})
    # @param [Hash] params ({})
    def create_transform_job(params = {}, options = {})
      req = build_request(:create_transform_job, params)
      req.send_request(options)
    end

    # Creates a new work team for labeling your data. A work team is defined
    # by one or more Amazon Cognito user pools. You must first create the
    # user pools before you can create a work team.
    #
    # You cannot create more than 25 work teams in an account and region.
    #
    # @option params [required, String] :workteam_name
    #   The name of the work team. Use this name to identify the work team.
    #
    # @option params [required, Array<Types::MemberDefinition>] :member_definitions
    #   A list of `MemberDefinition` objects that contains objects that
    #   identify the Amazon Cognito user pool that makes up the work team. For
    #   more information, see [Amazon Cognito User Pools][1].
    #
    #   All of the `CognitoMemberDefinition` objects that make up the member
    #   definition must have the same `ClientId` and `UserPool` values.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html
    #
    # @option params [required, String] :description
    #   A description of the work team.
    #
    # @option params [Types::NotificationConfiguration] :notification_configuration
    #   Configures notification of workers regarding available or expiring
    #   work items.
    #
    # @option params [Array<Types::Tag>] :tags
    #
    # @return [Types::CreateWorkteamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkteamResponse#workteam_arn #workteam_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workteam({
    #     workteam_name: "WorkteamName", # required
    #     member_definitions: [ # required
    #       {
    #         cognito_member_definition: {
    #           user_pool: "CognitoUserPool", # required
    #           user_group: "CognitoUserGroup", # required
    #           client_id: "CognitoClientId", # required
    #         },
    #       },
    #     ],
    #     description: "String200", # required
    #     notification_configuration: {
    #       notification_topic_arn: "NotificationTopicArn",
    #     },
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
    #   resp.workteam_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateWorkteam AWS API Documentation
    #
    # @overload create_workteam(params = {})
    # @param [Hash] params ({})
    def create_workteam(params = {}, options = {})
      req = build_request(:create_workteam, params)
      req.send_request(options)
    end

    # Removes the specified algorithm from your account.
    #
    # @option params [required, String] :algorithm_name
    #   The name of the algorithm to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_algorithm({
    #     algorithm_name: "EntityName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteAlgorithm AWS API Documentation
    #
    # @overload delete_algorithm(params = {})
    # @param [Hash] params ({})
    def delete_algorithm(params = {}, options = {})
      req = build_request(:delete_algorithm, params)
      req.send_request(options)
    end

    # Deletes the specified Git repository from your account.
    #
    # @option params [required, String] :code_repository_name
    #   The name of the Git repository to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_code_repository({
    #     code_repository_name: "EntityName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteCodeRepository AWS API Documentation
    #
    # @overload delete_code_repository(params = {})
    # @param [Hash] params ({})
    def delete_code_repository(params = {}, options = {})
      req = build_request(:delete_code_repository, params)
      req.send_request(options)
    end

    # Deletes an endpoint. Amazon SageMaker frees up all of the resources
    # that were deployed when the endpoint was created.
    #
    # Amazon SageMaker retires any custom KMS key grants associated with the
    # endpoint, meaning you don't need to use the [RevokeGrant][1] API
    # call.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/kms/latest/APIReference/API_RevokeGrant.html
    #
    # @option params [required, String] :endpoint_name
    #   The name of the endpoint that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_endpoint({
    #     endpoint_name: "EndpointName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteEndpoint AWS API Documentation
    #
    # @overload delete_endpoint(params = {})
    # @param [Hash] params ({})
    def delete_endpoint(params = {}, options = {})
      req = build_request(:delete_endpoint, params)
      req.send_request(options)
    end

    # Deletes an endpoint configuration. The `DeleteEndpointConfig` API
    # deletes only the specified configuration. It does not delete endpoints
    # created using the configuration.
    #
    # @option params [required, String] :endpoint_config_name
    #   The name of the endpoint configuration that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_endpoint_config({
    #     endpoint_config_name: "EndpointConfigName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteEndpointConfig AWS API Documentation
    #
    # @overload delete_endpoint_config(params = {})
    # @param [Hash] params ({})
    def delete_endpoint_config(params = {}, options = {})
      req = build_request(:delete_endpoint_config, params)
      req.send_request(options)
    end

    # Deletes a model. The `DeleteModel` API deletes only the model entry
    # that was created in Amazon SageMaker when you called the
    # [CreateModel][1] API. It does not delete model artifacts, inference
    # code, or the IAM role that you specified when creating the model.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateModel.html
    #
    # @option params [required, String] :model_name
    #   The name of the model to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_model({
    #     model_name: "ModelName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteModel AWS API Documentation
    #
    # @overload delete_model(params = {})
    # @param [Hash] params ({})
    def delete_model(params = {}, options = {})
      req = build_request(:delete_model, params)
      req.send_request(options)
    end

    # Deletes a model package.
    #
    # A model package is used to create Amazon SageMaker models or list on
    # AWS Marketplace. Buyers can subscribe to model packages listed on AWS
    # Marketplace to create models in Amazon SageMaker.
    #
    # @option params [required, String] :model_package_name
    #   The name of the model package. The name must have 1 to 63 characters.
    #   Valid characters are a-z, A-Z, 0-9, and - (hyphen).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_model_package({
    #     model_package_name: "EntityName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteModelPackage AWS API Documentation
    #
    # @overload delete_model_package(params = {})
    # @param [Hash] params ({})
    def delete_model_package(params = {}, options = {})
      req = build_request(:delete_model_package, params)
      req.send_request(options)
    end

    # Deletes an Amazon SageMaker notebook instance. Before you can delete a
    # notebook instance, you must call the `StopNotebookInstance` API.
    #
    # When you delete a notebook instance, you lose all of your data. Amazon
    # SageMaker removes the ML compute instance, and deletes the ML storage
    # volume and the network interface associated with the notebook
    # instance.
    #
    # @option params [required, String] :notebook_instance_name
    #   The name of the Amazon SageMaker notebook instance to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_notebook_instance({
    #     notebook_instance_name: "NotebookInstanceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteNotebookInstance AWS API Documentation
    #
    # @overload delete_notebook_instance(params = {})
    # @param [Hash] params ({})
    def delete_notebook_instance(params = {}, options = {})
      req = build_request(:delete_notebook_instance, params)
      req.send_request(options)
    end

    # Deletes a notebook instance lifecycle configuration.
    #
    # @option params [required, String] :notebook_instance_lifecycle_config_name
    #   The name of the lifecycle configuration to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_notebook_instance_lifecycle_config({
    #     notebook_instance_lifecycle_config_name: "NotebookInstanceLifecycleConfigName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteNotebookInstanceLifecycleConfig AWS API Documentation
    #
    # @overload delete_notebook_instance_lifecycle_config(params = {})
    # @param [Hash] params ({})
    def delete_notebook_instance_lifecycle_config(params = {}, options = {})
      req = build_request(:delete_notebook_instance_lifecycle_config, params)
      req.send_request(options)
    end

    # Deletes the specified tags from an Amazon SageMaker resource.
    #
    # To list a resource's tags, use the `ListTags` API.
    #
    # <note markdown="1"> When you call this API to delete tags from a hyperparameter tuning
    # job, the deleted tags are not removed from training jobs that the
    # hyperparameter tuning job launched before you called this API.
    #
    #  </note>
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource whose tags you want to
    #   delete.
    #
    # @option params [required, Array<String>] :tag_keys
    #   An array or one or more tag keys to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tags({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteTags AWS API Documentation
    #
    # @overload delete_tags(params = {})
    # @param [Hash] params ({})
    def delete_tags(params = {}, options = {})
      req = build_request(:delete_tags, params)
      req.send_request(options)
    end

    # Deletes an existing work team. This operation can't be undone.
    #
    # @option params [required, String] :workteam_name
    #   The name of the work team to delete.
    #
    # @return [Types::DeleteWorkteamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteWorkteamResponse#success #success} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workteam({
    #     workteam_name: "WorkteamName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.success #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteWorkteam AWS API Documentation
    #
    # @overload delete_workteam(params = {})
    # @param [Hash] params ({})
    def delete_workteam(params = {}, options = {})
      req = build_request(:delete_workteam, params)
      req.send_request(options)
    end

    # Returns a description of the specified algorithm that is in your
    # account.
    #
    # @option params [required, String] :algorithm_name
    #   The name of the algorithm to describe.
    #
    # @return [Types::DescribeAlgorithmOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAlgorithmOutput#algorithm_name #algorithm_name} => String
    #   * {Types::DescribeAlgorithmOutput#algorithm_arn #algorithm_arn} => String
    #   * {Types::DescribeAlgorithmOutput#algorithm_description #algorithm_description} => String
    #   * {Types::DescribeAlgorithmOutput#creation_time #creation_time} => Time
    #   * {Types::DescribeAlgorithmOutput#training_specification #training_specification} => Types::TrainingSpecification
    #   * {Types::DescribeAlgorithmOutput#inference_specification #inference_specification} => Types::InferenceSpecification
    #   * {Types::DescribeAlgorithmOutput#validation_specification #validation_specification} => Types::AlgorithmValidationSpecification
    #   * {Types::DescribeAlgorithmOutput#algorithm_status #algorithm_status} => String
    #   * {Types::DescribeAlgorithmOutput#algorithm_status_details #algorithm_status_details} => Types::AlgorithmStatusDetails
    #   * {Types::DescribeAlgorithmOutput#product_id #product_id} => String
    #   * {Types::DescribeAlgorithmOutput#certify_for_marketplace #certify_for_marketplace} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_algorithm({
    #     algorithm_name: "ArnOrName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.algorithm_name #=> String
    #   resp.algorithm_arn #=> String
    #   resp.algorithm_description #=> String
    #   resp.creation_time #=> Time
    #   resp.training_specification.training_image #=> String
    #   resp.training_specification.training_image_digest #=> String
    #   resp.training_specification.supported_hyper_parameters #=> Array
    #   resp.training_specification.supported_hyper_parameters[0].name #=> String
    #   resp.training_specification.supported_hyper_parameters[0].description #=> String
    #   resp.training_specification.supported_hyper_parameters[0].type #=> String, one of "Integer", "Continuous", "Categorical", "FreeText"
    #   resp.training_specification.supported_hyper_parameters[0].range.integer_parameter_range_specification.min_value #=> String
    #   resp.training_specification.supported_hyper_parameters[0].range.integer_parameter_range_specification.max_value #=> String
    #   resp.training_specification.supported_hyper_parameters[0].range.continuous_parameter_range_specification.min_value #=> String
    #   resp.training_specification.supported_hyper_parameters[0].range.continuous_parameter_range_specification.max_value #=> String
    #   resp.training_specification.supported_hyper_parameters[0].range.categorical_parameter_range_specification.values #=> Array
    #   resp.training_specification.supported_hyper_parameters[0].range.categorical_parameter_range_specification.values[0] #=> String
    #   resp.training_specification.supported_hyper_parameters[0].is_tunable #=> Boolean
    #   resp.training_specification.supported_hyper_parameters[0].is_required #=> Boolean
    #   resp.training_specification.supported_hyper_parameters[0].default_value #=> String
    #   resp.training_specification.supported_training_instance_types #=> Array
    #   resp.training_specification.supported_training_instance_types[0] #=> String, one of "ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.m5.large", "ml.m5.xlarge", "ml.m5.2xlarge", "ml.m5.4xlarge", "ml.m5.12xlarge", "ml.m5.24xlarge", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.4xlarge", "ml.c4.8xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge", "ml.c5.18xlarge"
    #   resp.training_specification.supports_distributed_training #=> Boolean
    #   resp.training_specification.metric_definitions #=> Array
    #   resp.training_specification.metric_definitions[0].name #=> String
    #   resp.training_specification.metric_definitions[0].regex #=> String
    #   resp.training_specification.training_channels #=> Array
    #   resp.training_specification.training_channels[0].name #=> String
    #   resp.training_specification.training_channels[0].description #=> String
    #   resp.training_specification.training_channels[0].is_required #=> Boolean
    #   resp.training_specification.training_channels[0].supported_content_types #=> Array
    #   resp.training_specification.training_channels[0].supported_content_types[0] #=> String
    #   resp.training_specification.training_channels[0].supported_compression_types #=> Array
    #   resp.training_specification.training_channels[0].supported_compression_types[0] #=> String, one of "None", "Gzip"
    #   resp.training_specification.training_channels[0].supported_input_modes #=> Array
    #   resp.training_specification.training_channels[0].supported_input_modes[0] #=> String, one of "Pipe", "File"
    #   resp.training_specification.supported_tuning_job_objective_metrics #=> Array
    #   resp.training_specification.supported_tuning_job_objective_metrics[0].type #=> String, one of "Maximize", "Minimize"
    #   resp.training_specification.supported_tuning_job_objective_metrics[0].metric_name #=> String
    #   resp.inference_specification.containers #=> Array
    #   resp.inference_specification.containers[0].container_hostname #=> String
    #   resp.inference_specification.containers[0].image #=> String
    #   resp.inference_specification.containers[0].image_digest #=> String
    #   resp.inference_specification.containers[0].model_data_url #=> String
    #   resp.inference_specification.containers[0].product_id #=> String
    #   resp.inference_specification.supported_transform_instance_types #=> Array
    #   resp.inference_specification.supported_transform_instance_types[0] #=> String, one of "ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.4xlarge", "ml.c4.8xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge", "ml.c5.18xlarge", "ml.m5.large", "ml.m5.xlarge", "ml.m5.2xlarge", "ml.m5.4xlarge", "ml.m5.12xlarge", "ml.m5.24xlarge"
    #   resp.inference_specification.supported_realtime_inference_instance_types #=> Array
    #   resp.inference_specification.supported_realtime_inference_instance_types[0] #=> String, one of "ml.t2.medium", "ml.t2.large", "ml.t2.xlarge", "ml.t2.2xlarge", "ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.m5.large", "ml.m5.xlarge", "ml.m5.2xlarge", "ml.m5.4xlarge", "ml.m5.12xlarge", "ml.m5.24xlarge", "ml.c4.large", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.4xlarge", "ml.c4.8xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge", "ml.c5.large", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge", "ml.c5.18xlarge"
    #   resp.inference_specification.supported_content_types #=> Array
    #   resp.inference_specification.supported_content_types[0] #=> String
    #   resp.inference_specification.supported_response_mime_types #=> Array
    #   resp.inference_specification.supported_response_mime_types[0] #=> String
    #   resp.validation_specification.validation_role #=> String
    #   resp.validation_specification.validation_profiles #=> Array
    #   resp.validation_specification.validation_profiles[0].profile_name #=> String
    #   resp.validation_specification.validation_profiles[0].training_job_definition.training_input_mode #=> String, one of "Pipe", "File"
    #   resp.validation_specification.validation_profiles[0].training_job_definition.hyper_parameters #=> Hash
    #   resp.validation_specification.validation_profiles[0].training_job_definition.hyper_parameters["ParameterKey"] #=> String
    #   resp.validation_specification.validation_profiles[0].training_job_definition.input_data_config #=> Array
    #   resp.validation_specification.validation_profiles[0].training_job_definition.input_data_config[0].channel_name #=> String
    #   resp.validation_specification.validation_profiles[0].training_job_definition.input_data_config[0].data_source.s3_data_source.s3_data_type #=> String, one of "ManifestFile", "S3Prefix", "AugmentedManifestFile"
    #   resp.validation_specification.validation_profiles[0].training_job_definition.input_data_config[0].data_source.s3_data_source.s3_uri #=> String
    #   resp.validation_specification.validation_profiles[0].training_job_definition.input_data_config[0].data_source.s3_data_source.s3_data_distribution_type #=> String, one of "FullyReplicated", "ShardedByS3Key"
    #   resp.validation_specification.validation_profiles[0].training_job_definition.input_data_config[0].data_source.s3_data_source.attribute_names #=> Array
    #   resp.validation_specification.validation_profiles[0].training_job_definition.input_data_config[0].data_source.s3_data_source.attribute_names[0] #=> String
    #   resp.validation_specification.validation_profiles[0].training_job_definition.input_data_config[0].content_type #=> String
    #   resp.validation_specification.validation_profiles[0].training_job_definition.input_data_config[0].compression_type #=> String, one of "None", "Gzip"
    #   resp.validation_specification.validation_profiles[0].training_job_definition.input_data_config[0].record_wrapper_type #=> String, one of "None", "RecordIO"
    #   resp.validation_specification.validation_profiles[0].training_job_definition.input_data_config[0].input_mode #=> String, one of "Pipe", "File"
    #   resp.validation_specification.validation_profiles[0].training_job_definition.input_data_config[0].shuffle_config.seed #=> Integer
    #   resp.validation_specification.validation_profiles[0].training_job_definition.output_data_config.kms_key_id #=> String
    #   resp.validation_specification.validation_profiles[0].training_job_definition.output_data_config.s3_output_path #=> String
    #   resp.validation_specification.validation_profiles[0].training_job_definition.resource_config.instance_type #=> String, one of "ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.m5.large", "ml.m5.xlarge", "ml.m5.2xlarge", "ml.m5.4xlarge", "ml.m5.12xlarge", "ml.m5.24xlarge", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.4xlarge", "ml.c4.8xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge", "ml.c5.18xlarge"
    #   resp.validation_specification.validation_profiles[0].training_job_definition.resource_config.instance_count #=> Integer
    #   resp.validation_specification.validation_profiles[0].training_job_definition.resource_config.volume_size_in_gb #=> Integer
    #   resp.validation_specification.validation_profiles[0].training_job_definition.resource_config.volume_kms_key_id #=> String
    #   resp.validation_specification.validation_profiles[0].training_job_definition.stopping_condition.max_runtime_in_seconds #=> Integer
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.max_concurrent_transforms #=> Integer
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.max_payload_in_mb #=> Integer
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.batch_strategy #=> String, one of "MultiRecord", "SingleRecord"
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.environment #=> Hash
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.environment["TransformEnvironmentKey"] #=> String
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.transform_input.data_source.s3_data_source.s3_data_type #=> String, one of "ManifestFile", "S3Prefix", "AugmentedManifestFile"
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.transform_input.data_source.s3_data_source.s3_uri #=> String
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.transform_input.content_type #=> String
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.transform_input.compression_type #=> String, one of "None", "Gzip"
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.transform_input.split_type #=> String, one of "None", "Line", "RecordIO", "TFRecord"
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.transform_output.s3_output_path #=> String
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.transform_output.accept #=> String
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.transform_output.assemble_with #=> String, one of "None", "Line"
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.transform_output.kms_key_id #=> String
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.transform_resources.instance_type #=> String, one of "ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.4xlarge", "ml.c4.8xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge", "ml.c5.18xlarge", "ml.m5.large", "ml.m5.xlarge", "ml.m5.2xlarge", "ml.m5.4xlarge", "ml.m5.12xlarge", "ml.m5.24xlarge"
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.transform_resources.instance_count #=> Integer
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.transform_resources.volume_kms_key_id #=> String
    #   resp.algorithm_status #=> String, one of "Pending", "InProgress", "Completed", "Failed", "Deleting"
    #   resp.algorithm_status_details.validation_statuses #=> Array
    #   resp.algorithm_status_details.validation_statuses[0].name #=> String
    #   resp.algorithm_status_details.validation_statuses[0].status #=> String, one of "NotStarted", "InProgress", "Completed", "Failed"
    #   resp.algorithm_status_details.validation_statuses[0].failure_reason #=> String
    #   resp.algorithm_status_details.image_scan_statuses #=> Array
    #   resp.algorithm_status_details.image_scan_statuses[0].name #=> String
    #   resp.algorithm_status_details.image_scan_statuses[0].status #=> String, one of "NotStarted", "InProgress", "Completed", "Failed"
    #   resp.algorithm_status_details.image_scan_statuses[0].failure_reason #=> String
    #   resp.product_id #=> String
    #   resp.certify_for_marketplace #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeAlgorithm AWS API Documentation
    #
    # @overload describe_algorithm(params = {})
    # @param [Hash] params ({})
    def describe_algorithm(params = {}, options = {})
      req = build_request(:describe_algorithm, params)
      req.send_request(options)
    end

    # Gets details about the specified Git repository.
    #
    # @option params [required, String] :code_repository_name
    #   The name of the Git repository to describe.
    #
    # @return [Types::DescribeCodeRepositoryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCodeRepositoryOutput#code_repository_name #code_repository_name} => String
    #   * {Types::DescribeCodeRepositoryOutput#code_repository_arn #code_repository_arn} => String
    #   * {Types::DescribeCodeRepositoryOutput#creation_time #creation_time} => Time
    #   * {Types::DescribeCodeRepositoryOutput#last_modified_time #last_modified_time} => Time
    #   * {Types::DescribeCodeRepositoryOutput#git_config #git_config} => Types::GitConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_code_repository({
    #     code_repository_name: "EntityName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.code_repository_name #=> String
    #   resp.code_repository_arn #=> String
    #   resp.creation_time #=> Time
    #   resp.last_modified_time #=> Time
    #   resp.git_config.repository_url #=> String
    #   resp.git_config.branch #=> String
    #   resp.git_config.secret_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeCodeRepository AWS API Documentation
    #
    # @overload describe_code_repository(params = {})
    # @param [Hash] params ({})
    def describe_code_repository(params = {}, options = {})
      req = build_request(:describe_code_repository, params)
      req.send_request(options)
    end

    # Returns information about a model compilation job.
    #
    # To create a model compilation job, use CreateCompilationJob. To get
    # information about multiple model compilation jobs, use
    # ListCompilationJobs.
    #
    # @option params [required, String] :compilation_job_name
    #   The name of the model compilation job that you want information about.
    #
    # @return [Types::DescribeCompilationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCompilationJobResponse#compilation_job_name #compilation_job_name} => String
    #   * {Types::DescribeCompilationJobResponse#compilation_job_arn #compilation_job_arn} => String
    #   * {Types::DescribeCompilationJobResponse#compilation_job_status #compilation_job_status} => String
    #   * {Types::DescribeCompilationJobResponse#compilation_start_time #compilation_start_time} => Time
    #   * {Types::DescribeCompilationJobResponse#compilation_end_time #compilation_end_time} => Time
    #   * {Types::DescribeCompilationJobResponse#stopping_condition #stopping_condition} => Types::StoppingCondition
    #   * {Types::DescribeCompilationJobResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeCompilationJobResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::DescribeCompilationJobResponse#failure_reason #failure_reason} => String
    #   * {Types::DescribeCompilationJobResponse#model_artifacts #model_artifacts} => Types::ModelArtifacts
    #   * {Types::DescribeCompilationJobResponse#role_arn #role_arn} => String
    #   * {Types::DescribeCompilationJobResponse#input_config #input_config} => Types::InputConfig
    #   * {Types::DescribeCompilationJobResponse#output_config #output_config} => Types::OutputConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_compilation_job({
    #     compilation_job_name: "EntityName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.compilation_job_name #=> String
    #   resp.compilation_job_arn #=> String
    #   resp.compilation_job_status #=> String, one of "INPROGRESS", "COMPLETED", "FAILED", "STARTING", "STOPPING", "STOPPED"
    #   resp.compilation_start_time #=> Time
    #   resp.compilation_end_time #=> Time
    #   resp.stopping_condition.max_runtime_in_seconds #=> Integer
    #   resp.creation_time #=> Time
    #   resp.last_modified_time #=> Time
    #   resp.failure_reason #=> String
    #   resp.model_artifacts.s3_model_artifacts #=> String
    #   resp.role_arn #=> String
    #   resp.input_config.s3_uri #=> String
    #   resp.input_config.data_input_config #=> String
    #   resp.input_config.framework #=> String, one of "TENSORFLOW", "MXNET", "ONNX", "PYTORCH", "XGBOOST"
    #   resp.output_config.s3_output_location #=> String
    #   resp.output_config.target_device #=> String, one of "lambda", "ml_m4", "ml_m5", "ml_c4", "ml_c5", "ml_p2", "ml_p3", "jetson_tx1", "jetson_tx2", "jetson_nano", "rasp3b", "deeplens", "rk3399", "rk3288"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeCompilationJob AWS API Documentation
    #
    # @overload describe_compilation_job(params = {})
    # @param [Hash] params ({})
    def describe_compilation_job(params = {}, options = {})
      req = build_request(:describe_compilation_job, params)
      req.send_request(options)
    end

    # Returns the description of an endpoint.
    #
    # @option params [required, String] :endpoint_name
    #   The name of the endpoint.
    #
    # @return [Types::DescribeEndpointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEndpointOutput#endpoint_name #endpoint_name} => String
    #   * {Types::DescribeEndpointOutput#endpoint_arn #endpoint_arn} => String
    #   * {Types::DescribeEndpointOutput#endpoint_config_name #endpoint_config_name} => String
    #   * {Types::DescribeEndpointOutput#production_variants #production_variants} => Array&lt;Types::ProductionVariantSummary&gt;
    #   * {Types::DescribeEndpointOutput#endpoint_status #endpoint_status} => String
    #   * {Types::DescribeEndpointOutput#failure_reason #failure_reason} => String
    #   * {Types::DescribeEndpointOutput#creation_time #creation_time} => Time
    #   * {Types::DescribeEndpointOutput#last_modified_time #last_modified_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_endpoint({
    #     endpoint_name: "EndpointName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_name #=> String
    #   resp.endpoint_arn #=> String
    #   resp.endpoint_config_name #=> String
    #   resp.production_variants #=> Array
    #   resp.production_variants[0].variant_name #=> String
    #   resp.production_variants[0].deployed_images #=> Array
    #   resp.production_variants[0].deployed_images[0].specified_image #=> String
    #   resp.production_variants[0].deployed_images[0].resolved_image #=> String
    #   resp.production_variants[0].deployed_images[0].resolution_time #=> Time
    #   resp.production_variants[0].current_weight #=> Float
    #   resp.production_variants[0].desired_weight #=> Float
    #   resp.production_variants[0].current_instance_count #=> Integer
    #   resp.production_variants[0].desired_instance_count #=> Integer
    #   resp.endpoint_status #=> String, one of "OutOfService", "Creating", "Updating", "SystemUpdating", "RollingBack", "InService", "Deleting", "Failed"
    #   resp.failure_reason #=> String
    #   resp.creation_time #=> Time
    #   resp.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeEndpoint AWS API Documentation
    #
    # @overload describe_endpoint(params = {})
    # @param [Hash] params ({})
    def describe_endpoint(params = {}, options = {})
      req = build_request(:describe_endpoint, params)
      req.send_request(options)
    end

    # Returns the description of an endpoint configuration created using the
    # `CreateEndpointConfig` API.
    #
    # @option params [required, String] :endpoint_config_name
    #   The name of the endpoint configuration.
    #
    # @return [Types::DescribeEndpointConfigOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEndpointConfigOutput#endpoint_config_name #endpoint_config_name} => String
    #   * {Types::DescribeEndpointConfigOutput#endpoint_config_arn #endpoint_config_arn} => String
    #   * {Types::DescribeEndpointConfigOutput#production_variants #production_variants} => Array&lt;Types::ProductionVariant&gt;
    #   * {Types::DescribeEndpointConfigOutput#kms_key_id #kms_key_id} => String
    #   * {Types::DescribeEndpointConfigOutput#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_endpoint_config({
    #     endpoint_config_name: "EndpointConfigName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_config_name #=> String
    #   resp.endpoint_config_arn #=> String
    #   resp.production_variants #=> Array
    #   resp.production_variants[0].variant_name #=> String
    #   resp.production_variants[0].model_name #=> String
    #   resp.production_variants[0].initial_instance_count #=> Integer
    #   resp.production_variants[0].instance_type #=> String, one of "ml.t2.medium", "ml.t2.large", "ml.t2.xlarge", "ml.t2.2xlarge", "ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.m5.large", "ml.m5.xlarge", "ml.m5.2xlarge", "ml.m5.4xlarge", "ml.m5.12xlarge", "ml.m5.24xlarge", "ml.c4.large", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.4xlarge", "ml.c4.8xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge", "ml.c5.large", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge", "ml.c5.18xlarge"
    #   resp.production_variants[0].initial_variant_weight #=> Float
    #   resp.production_variants[0].accelerator_type #=> String, one of "ml.eia1.medium", "ml.eia1.large", "ml.eia1.xlarge"
    #   resp.kms_key_id #=> String
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeEndpointConfig AWS API Documentation
    #
    # @overload describe_endpoint_config(params = {})
    # @param [Hash] params ({})
    def describe_endpoint_config(params = {}, options = {})
      req = build_request(:describe_endpoint_config, params)
      req.send_request(options)
    end

    # Gets a description of a hyperparameter tuning job.
    #
    # @option params [required, String] :hyper_parameter_tuning_job_name
    #   The name of the tuning job to describe.
    #
    # @return [Types::DescribeHyperParameterTuningJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeHyperParameterTuningJobResponse#hyper_parameter_tuning_job_name #hyper_parameter_tuning_job_name} => String
    #   * {Types::DescribeHyperParameterTuningJobResponse#hyper_parameter_tuning_job_arn #hyper_parameter_tuning_job_arn} => String
    #   * {Types::DescribeHyperParameterTuningJobResponse#hyper_parameter_tuning_job_config #hyper_parameter_tuning_job_config} => Types::HyperParameterTuningJobConfig
    #   * {Types::DescribeHyperParameterTuningJobResponse#training_job_definition #training_job_definition} => Types::HyperParameterTrainingJobDefinition
    #   * {Types::DescribeHyperParameterTuningJobResponse#hyper_parameter_tuning_job_status #hyper_parameter_tuning_job_status} => String
    #   * {Types::DescribeHyperParameterTuningJobResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeHyperParameterTuningJobResponse#hyper_parameter_tuning_end_time #hyper_parameter_tuning_end_time} => Time
    #   * {Types::DescribeHyperParameterTuningJobResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::DescribeHyperParameterTuningJobResponse#training_job_status_counters #training_job_status_counters} => Types::TrainingJobStatusCounters
    #   * {Types::DescribeHyperParameterTuningJobResponse#objective_status_counters #objective_status_counters} => Types::ObjectiveStatusCounters
    #   * {Types::DescribeHyperParameterTuningJobResponse#best_training_job #best_training_job} => Types::HyperParameterTrainingJobSummary
    #   * {Types::DescribeHyperParameterTuningJobResponse#overall_best_training_job #overall_best_training_job} => Types::HyperParameterTrainingJobSummary
    #   * {Types::DescribeHyperParameterTuningJobResponse#warm_start_config #warm_start_config} => Types::HyperParameterTuningJobWarmStartConfig
    #   * {Types::DescribeHyperParameterTuningJobResponse#failure_reason #failure_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_hyper_parameter_tuning_job({
    #     hyper_parameter_tuning_job_name: "HyperParameterTuningJobName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.hyper_parameter_tuning_job_name #=> String
    #   resp.hyper_parameter_tuning_job_arn #=> String
    #   resp.hyper_parameter_tuning_job_config.strategy #=> String, one of "Bayesian", "Random"
    #   resp.hyper_parameter_tuning_job_config.hyper_parameter_tuning_job_objective.type #=> String, one of "Maximize", "Minimize"
    #   resp.hyper_parameter_tuning_job_config.hyper_parameter_tuning_job_objective.metric_name #=> String
    #   resp.hyper_parameter_tuning_job_config.resource_limits.max_number_of_training_jobs #=> Integer
    #   resp.hyper_parameter_tuning_job_config.resource_limits.max_parallel_training_jobs #=> Integer
    #   resp.hyper_parameter_tuning_job_config.parameter_ranges.integer_parameter_ranges #=> Array
    #   resp.hyper_parameter_tuning_job_config.parameter_ranges.integer_parameter_ranges[0].name #=> String
    #   resp.hyper_parameter_tuning_job_config.parameter_ranges.integer_parameter_ranges[0].min_value #=> String
    #   resp.hyper_parameter_tuning_job_config.parameter_ranges.integer_parameter_ranges[0].max_value #=> String
    #   resp.hyper_parameter_tuning_job_config.parameter_ranges.integer_parameter_ranges[0].scaling_type #=> String, one of "Auto", "Linear", "Logarithmic", "ReverseLogarithmic"
    #   resp.hyper_parameter_tuning_job_config.parameter_ranges.continuous_parameter_ranges #=> Array
    #   resp.hyper_parameter_tuning_job_config.parameter_ranges.continuous_parameter_ranges[0].name #=> String
    #   resp.hyper_parameter_tuning_job_config.parameter_ranges.continuous_parameter_ranges[0].min_value #=> String
    #   resp.hyper_parameter_tuning_job_config.parameter_ranges.continuous_parameter_ranges[0].max_value #=> String
    #   resp.hyper_parameter_tuning_job_config.parameter_ranges.continuous_parameter_ranges[0].scaling_type #=> String, one of "Auto", "Linear", "Logarithmic", "ReverseLogarithmic"
    #   resp.hyper_parameter_tuning_job_config.parameter_ranges.categorical_parameter_ranges #=> Array
    #   resp.hyper_parameter_tuning_job_config.parameter_ranges.categorical_parameter_ranges[0].name #=> String
    #   resp.hyper_parameter_tuning_job_config.parameter_ranges.categorical_parameter_ranges[0].values #=> Array
    #   resp.hyper_parameter_tuning_job_config.parameter_ranges.categorical_parameter_ranges[0].values[0] #=> String
    #   resp.hyper_parameter_tuning_job_config.training_job_early_stopping_type #=> String, one of "Off", "Auto"
    #   resp.training_job_definition.static_hyper_parameters #=> Hash
    #   resp.training_job_definition.static_hyper_parameters["ParameterKey"] #=> String
    #   resp.training_job_definition.algorithm_specification.training_image #=> String
    #   resp.training_job_definition.algorithm_specification.training_input_mode #=> String, one of "Pipe", "File"
    #   resp.training_job_definition.algorithm_specification.algorithm_name #=> String
    #   resp.training_job_definition.algorithm_specification.metric_definitions #=> Array
    #   resp.training_job_definition.algorithm_specification.metric_definitions[0].name #=> String
    #   resp.training_job_definition.algorithm_specification.metric_definitions[0].regex #=> String
    #   resp.training_job_definition.role_arn #=> String
    #   resp.training_job_definition.input_data_config #=> Array
    #   resp.training_job_definition.input_data_config[0].channel_name #=> String
    #   resp.training_job_definition.input_data_config[0].data_source.s3_data_source.s3_data_type #=> String, one of "ManifestFile", "S3Prefix", "AugmentedManifestFile"
    #   resp.training_job_definition.input_data_config[0].data_source.s3_data_source.s3_uri #=> String
    #   resp.training_job_definition.input_data_config[0].data_source.s3_data_source.s3_data_distribution_type #=> String, one of "FullyReplicated", "ShardedByS3Key"
    #   resp.training_job_definition.input_data_config[0].data_source.s3_data_source.attribute_names #=> Array
    #   resp.training_job_definition.input_data_config[0].data_source.s3_data_source.attribute_names[0] #=> String
    #   resp.training_job_definition.input_data_config[0].content_type #=> String
    #   resp.training_job_definition.input_data_config[0].compression_type #=> String, one of "None", "Gzip"
    #   resp.training_job_definition.input_data_config[0].record_wrapper_type #=> String, one of "None", "RecordIO"
    #   resp.training_job_definition.input_data_config[0].input_mode #=> String, one of "Pipe", "File"
    #   resp.training_job_definition.input_data_config[0].shuffle_config.seed #=> Integer
    #   resp.training_job_definition.vpc_config.security_group_ids #=> Array
    #   resp.training_job_definition.vpc_config.security_group_ids[0] #=> String
    #   resp.training_job_definition.vpc_config.subnets #=> Array
    #   resp.training_job_definition.vpc_config.subnets[0] #=> String
    #   resp.training_job_definition.output_data_config.kms_key_id #=> String
    #   resp.training_job_definition.output_data_config.s3_output_path #=> String
    #   resp.training_job_definition.resource_config.instance_type #=> String, one of "ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.m5.large", "ml.m5.xlarge", "ml.m5.2xlarge", "ml.m5.4xlarge", "ml.m5.12xlarge", "ml.m5.24xlarge", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.4xlarge", "ml.c4.8xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge", "ml.c5.18xlarge"
    #   resp.training_job_definition.resource_config.instance_count #=> Integer
    #   resp.training_job_definition.resource_config.volume_size_in_gb #=> Integer
    #   resp.training_job_definition.resource_config.volume_kms_key_id #=> String
    #   resp.training_job_definition.stopping_condition.max_runtime_in_seconds #=> Integer
    #   resp.training_job_definition.enable_network_isolation #=> Boolean
    #   resp.training_job_definition.enable_inter_container_traffic_encryption #=> Boolean
    #   resp.hyper_parameter_tuning_job_status #=> String, one of "Completed", "InProgress", "Failed", "Stopped", "Stopping"
    #   resp.creation_time #=> Time
    #   resp.hyper_parameter_tuning_end_time #=> Time
    #   resp.last_modified_time #=> Time
    #   resp.training_job_status_counters.completed #=> Integer
    #   resp.training_job_status_counters.in_progress #=> Integer
    #   resp.training_job_status_counters.retryable_error #=> Integer
    #   resp.training_job_status_counters.non_retryable_error #=> Integer
    #   resp.training_job_status_counters.stopped #=> Integer
    #   resp.objective_status_counters.succeeded #=> Integer
    #   resp.objective_status_counters.pending #=> Integer
    #   resp.objective_status_counters.failed #=> Integer
    #   resp.best_training_job.training_job_name #=> String
    #   resp.best_training_job.training_job_arn #=> String
    #   resp.best_training_job.tuning_job_name #=> String
    #   resp.best_training_job.creation_time #=> Time
    #   resp.best_training_job.training_start_time #=> Time
    #   resp.best_training_job.training_end_time #=> Time
    #   resp.best_training_job.training_job_status #=> String, one of "InProgress", "Completed", "Failed", "Stopping", "Stopped"
    #   resp.best_training_job.tuned_hyper_parameters #=> Hash
    #   resp.best_training_job.tuned_hyper_parameters["ParameterKey"] #=> String
    #   resp.best_training_job.failure_reason #=> String
    #   resp.best_training_job.final_hyper_parameter_tuning_job_objective_metric.type #=> String, one of "Maximize", "Minimize"
    #   resp.best_training_job.final_hyper_parameter_tuning_job_objective_metric.metric_name #=> String
    #   resp.best_training_job.final_hyper_parameter_tuning_job_objective_metric.value #=> Float
    #   resp.best_training_job.objective_status #=> String, one of "Succeeded", "Pending", "Failed"
    #   resp.overall_best_training_job.training_job_name #=> String
    #   resp.overall_best_training_job.training_job_arn #=> String
    #   resp.overall_best_training_job.tuning_job_name #=> String
    #   resp.overall_best_training_job.creation_time #=> Time
    #   resp.overall_best_training_job.training_start_time #=> Time
    #   resp.overall_best_training_job.training_end_time #=> Time
    #   resp.overall_best_training_job.training_job_status #=> String, one of "InProgress", "Completed", "Failed", "Stopping", "Stopped"
    #   resp.overall_best_training_job.tuned_hyper_parameters #=> Hash
    #   resp.overall_best_training_job.tuned_hyper_parameters["ParameterKey"] #=> String
    #   resp.overall_best_training_job.failure_reason #=> String
    #   resp.overall_best_training_job.final_hyper_parameter_tuning_job_objective_metric.type #=> String, one of "Maximize", "Minimize"
    #   resp.overall_best_training_job.final_hyper_parameter_tuning_job_objective_metric.metric_name #=> String
    #   resp.overall_best_training_job.final_hyper_parameter_tuning_job_objective_metric.value #=> Float
    #   resp.overall_best_training_job.objective_status #=> String, one of "Succeeded", "Pending", "Failed"
    #   resp.warm_start_config.parent_hyper_parameter_tuning_jobs #=> Array
    #   resp.warm_start_config.parent_hyper_parameter_tuning_jobs[0].hyper_parameter_tuning_job_name #=> String
    #   resp.warm_start_config.warm_start_type #=> String, one of "IdenticalDataAndAlgorithm", "TransferLearning"
    #   resp.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeHyperParameterTuningJob AWS API Documentation
    #
    # @overload describe_hyper_parameter_tuning_job(params = {})
    # @param [Hash] params ({})
    def describe_hyper_parameter_tuning_job(params = {}, options = {})
      req = build_request(:describe_hyper_parameter_tuning_job, params)
      req.send_request(options)
    end

    # Gets information about a labeling job.
    #
    # @option params [required, String] :labeling_job_name
    #   The name of the labeling job to return information for.
    #
    # @return [Types::DescribeLabelingJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLabelingJobResponse#labeling_job_status #labeling_job_status} => String
    #   * {Types::DescribeLabelingJobResponse#label_counters #label_counters} => Types::LabelCounters
    #   * {Types::DescribeLabelingJobResponse#failure_reason #failure_reason} => String
    #   * {Types::DescribeLabelingJobResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeLabelingJobResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::DescribeLabelingJobResponse#job_reference_code #job_reference_code} => String
    #   * {Types::DescribeLabelingJobResponse#labeling_job_name #labeling_job_name} => String
    #   * {Types::DescribeLabelingJobResponse#labeling_job_arn #labeling_job_arn} => String
    #   * {Types::DescribeLabelingJobResponse#label_attribute_name #label_attribute_name} => String
    #   * {Types::DescribeLabelingJobResponse#input_config #input_config} => Types::LabelingJobInputConfig
    #   * {Types::DescribeLabelingJobResponse#output_config #output_config} => Types::LabelingJobOutputConfig
    #   * {Types::DescribeLabelingJobResponse#role_arn #role_arn} => String
    #   * {Types::DescribeLabelingJobResponse#label_category_config_s3_uri #label_category_config_s3_uri} => String
    #   * {Types::DescribeLabelingJobResponse#stopping_conditions #stopping_conditions} => Types::LabelingJobStoppingConditions
    #   * {Types::DescribeLabelingJobResponse#labeling_job_algorithms_config #labeling_job_algorithms_config} => Types::LabelingJobAlgorithmsConfig
    #   * {Types::DescribeLabelingJobResponse#human_task_config #human_task_config} => Types::HumanTaskConfig
    #   * {Types::DescribeLabelingJobResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::DescribeLabelingJobResponse#labeling_job_output #labeling_job_output} => Types::LabelingJobOutput
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_labeling_job({
    #     labeling_job_name: "LabelingJobName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.labeling_job_status #=> String, one of "InProgress", "Completed", "Failed", "Stopping", "Stopped"
    #   resp.label_counters.total_labeled #=> Integer
    #   resp.label_counters.human_labeled #=> Integer
    #   resp.label_counters.machine_labeled #=> Integer
    #   resp.label_counters.failed_non_retryable_error #=> Integer
    #   resp.label_counters.unlabeled #=> Integer
    #   resp.failure_reason #=> String
    #   resp.creation_time #=> Time
    #   resp.last_modified_time #=> Time
    #   resp.job_reference_code #=> String
    #   resp.labeling_job_name #=> String
    #   resp.labeling_job_arn #=> String
    #   resp.label_attribute_name #=> String
    #   resp.input_config.data_source.s3_data_source.manifest_s3_uri #=> String
    #   resp.input_config.data_attributes.content_classifiers #=> Array
    #   resp.input_config.data_attributes.content_classifiers[0] #=> String, one of "FreeOfPersonallyIdentifiableInformation", "FreeOfAdultContent"
    #   resp.output_config.s3_output_path #=> String
    #   resp.output_config.kms_key_id #=> String
    #   resp.role_arn #=> String
    #   resp.label_category_config_s3_uri #=> String
    #   resp.stopping_conditions.max_human_labeled_object_count #=> Integer
    #   resp.stopping_conditions.max_percentage_of_input_dataset_labeled #=> Integer
    #   resp.labeling_job_algorithms_config.labeling_job_algorithm_specification_arn #=> String
    #   resp.labeling_job_algorithms_config.initial_active_learning_model_arn #=> String
    #   resp.labeling_job_algorithms_config.labeling_job_resource_config.volume_kms_key_id #=> String
    #   resp.human_task_config.workteam_arn #=> String
    #   resp.human_task_config.ui_config.ui_template_s3_uri #=> String
    #   resp.human_task_config.pre_human_task_lambda_arn #=> String
    #   resp.human_task_config.task_keywords #=> Array
    #   resp.human_task_config.task_keywords[0] #=> String
    #   resp.human_task_config.task_title #=> String
    #   resp.human_task_config.task_description #=> String
    #   resp.human_task_config.number_of_human_workers_per_data_object #=> Integer
    #   resp.human_task_config.task_time_limit_in_seconds #=> Integer
    #   resp.human_task_config.task_availability_lifetime_in_seconds #=> Integer
    #   resp.human_task_config.max_concurrent_task_count #=> Integer
    #   resp.human_task_config.annotation_consolidation_config.annotation_consolidation_lambda_arn #=> String
    #   resp.human_task_config.public_workforce_task_price.amount_in_usd.dollars #=> Integer
    #   resp.human_task_config.public_workforce_task_price.amount_in_usd.cents #=> Integer
    #   resp.human_task_config.public_workforce_task_price.amount_in_usd.tenth_fractions_of_a_cent #=> Integer
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.labeling_job_output.output_dataset_s3_uri #=> String
    #   resp.labeling_job_output.final_active_learning_model_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeLabelingJob AWS API Documentation
    #
    # @overload describe_labeling_job(params = {})
    # @param [Hash] params ({})
    def describe_labeling_job(params = {}, options = {})
      req = build_request(:describe_labeling_job, params)
      req.send_request(options)
    end

    # Describes a model that you created using the `CreateModel` API.
    #
    # @option params [required, String] :model_name
    #   The name of the model.
    #
    # @return [Types::DescribeModelOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeModelOutput#model_name #model_name} => String
    #   * {Types::DescribeModelOutput#primary_container #primary_container} => Types::ContainerDefinition
    #   * {Types::DescribeModelOutput#containers #containers} => Array&lt;Types::ContainerDefinition&gt;
    #   * {Types::DescribeModelOutput#execution_role_arn #execution_role_arn} => String
    #   * {Types::DescribeModelOutput#vpc_config #vpc_config} => Types::VpcConfig
    #   * {Types::DescribeModelOutput#creation_time #creation_time} => Time
    #   * {Types::DescribeModelOutput#model_arn #model_arn} => String
    #   * {Types::DescribeModelOutput#enable_network_isolation #enable_network_isolation} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_model({
    #     model_name: "ModelName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.model_name #=> String
    #   resp.primary_container.container_hostname #=> String
    #   resp.primary_container.image #=> String
    #   resp.primary_container.model_data_url #=> String
    #   resp.primary_container.environment #=> Hash
    #   resp.primary_container.environment["EnvironmentKey"] #=> String
    #   resp.primary_container.model_package_name #=> String
    #   resp.containers #=> Array
    #   resp.containers[0].container_hostname #=> String
    #   resp.containers[0].image #=> String
    #   resp.containers[0].model_data_url #=> String
    #   resp.containers[0].environment #=> Hash
    #   resp.containers[0].environment["EnvironmentKey"] #=> String
    #   resp.containers[0].model_package_name #=> String
    #   resp.execution_role_arn #=> String
    #   resp.vpc_config.security_group_ids #=> Array
    #   resp.vpc_config.security_group_ids[0] #=> String
    #   resp.vpc_config.subnets #=> Array
    #   resp.vpc_config.subnets[0] #=> String
    #   resp.creation_time #=> Time
    #   resp.model_arn #=> String
    #   resp.enable_network_isolation #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeModel AWS API Documentation
    #
    # @overload describe_model(params = {})
    # @param [Hash] params ({})
    def describe_model(params = {}, options = {})
      req = build_request(:describe_model, params)
      req.send_request(options)
    end

    # Returns a description of the specified model package, which is used to
    # create Amazon SageMaker models or list them on AWS Marketplace.
    #
    # To create models in Amazon SageMaker, buyers can subscribe to model
    # packages listed on AWS Marketplace.
    #
    # @option params [required, String] :model_package_name
    #   The name of the model package to describe.
    #
    # @return [Types::DescribeModelPackageOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeModelPackageOutput#model_package_name #model_package_name} => String
    #   * {Types::DescribeModelPackageOutput#model_package_arn #model_package_arn} => String
    #   * {Types::DescribeModelPackageOutput#model_package_description #model_package_description} => String
    #   * {Types::DescribeModelPackageOutput#creation_time #creation_time} => Time
    #   * {Types::DescribeModelPackageOutput#inference_specification #inference_specification} => Types::InferenceSpecification
    #   * {Types::DescribeModelPackageOutput#source_algorithm_specification #source_algorithm_specification} => Types::SourceAlgorithmSpecification
    #   * {Types::DescribeModelPackageOutput#validation_specification #validation_specification} => Types::ModelPackageValidationSpecification
    #   * {Types::DescribeModelPackageOutput#model_package_status #model_package_status} => String
    #   * {Types::DescribeModelPackageOutput#model_package_status_details #model_package_status_details} => Types::ModelPackageStatusDetails
    #   * {Types::DescribeModelPackageOutput#certify_for_marketplace #certify_for_marketplace} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_model_package({
    #     model_package_name: "ArnOrName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.model_package_name #=> String
    #   resp.model_package_arn #=> String
    #   resp.model_package_description #=> String
    #   resp.creation_time #=> Time
    #   resp.inference_specification.containers #=> Array
    #   resp.inference_specification.containers[0].container_hostname #=> String
    #   resp.inference_specification.containers[0].image #=> String
    #   resp.inference_specification.containers[0].image_digest #=> String
    #   resp.inference_specification.containers[0].model_data_url #=> String
    #   resp.inference_specification.containers[0].product_id #=> String
    #   resp.inference_specification.supported_transform_instance_types #=> Array
    #   resp.inference_specification.supported_transform_instance_types[0] #=> String, one of "ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.4xlarge", "ml.c4.8xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge", "ml.c5.18xlarge", "ml.m5.large", "ml.m5.xlarge", "ml.m5.2xlarge", "ml.m5.4xlarge", "ml.m5.12xlarge", "ml.m5.24xlarge"
    #   resp.inference_specification.supported_realtime_inference_instance_types #=> Array
    #   resp.inference_specification.supported_realtime_inference_instance_types[0] #=> String, one of "ml.t2.medium", "ml.t2.large", "ml.t2.xlarge", "ml.t2.2xlarge", "ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.m5.large", "ml.m5.xlarge", "ml.m5.2xlarge", "ml.m5.4xlarge", "ml.m5.12xlarge", "ml.m5.24xlarge", "ml.c4.large", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.4xlarge", "ml.c4.8xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge", "ml.c5.large", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge", "ml.c5.18xlarge"
    #   resp.inference_specification.supported_content_types #=> Array
    #   resp.inference_specification.supported_content_types[0] #=> String
    #   resp.inference_specification.supported_response_mime_types #=> Array
    #   resp.inference_specification.supported_response_mime_types[0] #=> String
    #   resp.source_algorithm_specification.source_algorithms #=> Array
    #   resp.source_algorithm_specification.source_algorithms[0].model_data_url #=> String
    #   resp.source_algorithm_specification.source_algorithms[0].algorithm_name #=> String
    #   resp.validation_specification.validation_role #=> String
    #   resp.validation_specification.validation_profiles #=> Array
    #   resp.validation_specification.validation_profiles[0].profile_name #=> String
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.max_concurrent_transforms #=> Integer
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.max_payload_in_mb #=> Integer
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.batch_strategy #=> String, one of "MultiRecord", "SingleRecord"
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.environment #=> Hash
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.environment["TransformEnvironmentKey"] #=> String
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.transform_input.data_source.s3_data_source.s3_data_type #=> String, one of "ManifestFile", "S3Prefix", "AugmentedManifestFile"
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.transform_input.data_source.s3_data_source.s3_uri #=> String
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.transform_input.content_type #=> String
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.transform_input.compression_type #=> String, one of "None", "Gzip"
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.transform_input.split_type #=> String, one of "None", "Line", "RecordIO", "TFRecord"
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.transform_output.s3_output_path #=> String
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.transform_output.accept #=> String
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.transform_output.assemble_with #=> String, one of "None", "Line"
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.transform_output.kms_key_id #=> String
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.transform_resources.instance_type #=> String, one of "ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.4xlarge", "ml.c4.8xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge", "ml.c5.18xlarge", "ml.m5.large", "ml.m5.xlarge", "ml.m5.2xlarge", "ml.m5.4xlarge", "ml.m5.12xlarge", "ml.m5.24xlarge"
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.transform_resources.instance_count #=> Integer
    #   resp.validation_specification.validation_profiles[0].transform_job_definition.transform_resources.volume_kms_key_id #=> String
    #   resp.model_package_status #=> String, one of "Pending", "InProgress", "Completed", "Failed", "Deleting"
    #   resp.model_package_status_details.validation_statuses #=> Array
    #   resp.model_package_status_details.validation_statuses[0].name #=> String
    #   resp.model_package_status_details.validation_statuses[0].status #=> String, one of "NotStarted", "InProgress", "Completed", "Failed"
    #   resp.model_package_status_details.validation_statuses[0].failure_reason #=> String
    #   resp.model_package_status_details.image_scan_statuses #=> Array
    #   resp.model_package_status_details.image_scan_statuses[0].name #=> String
    #   resp.model_package_status_details.image_scan_statuses[0].status #=> String, one of "NotStarted", "InProgress", "Completed", "Failed"
    #   resp.model_package_status_details.image_scan_statuses[0].failure_reason #=> String
    #   resp.certify_for_marketplace #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeModelPackage AWS API Documentation
    #
    # @overload describe_model_package(params = {})
    # @param [Hash] params ({})
    def describe_model_package(params = {}, options = {})
      req = build_request(:describe_model_package, params)
      req.send_request(options)
    end

    # Returns information about a notebook instance.
    #
    # @option params [required, String] :notebook_instance_name
    #   The name of the notebook instance that you want information about.
    #
    # @return [Types::DescribeNotebookInstanceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeNotebookInstanceOutput#notebook_instance_arn #notebook_instance_arn} => String
    #   * {Types::DescribeNotebookInstanceOutput#notebook_instance_name #notebook_instance_name} => String
    #   * {Types::DescribeNotebookInstanceOutput#notebook_instance_status #notebook_instance_status} => String
    #   * {Types::DescribeNotebookInstanceOutput#failure_reason #failure_reason} => String
    #   * {Types::DescribeNotebookInstanceOutput#url #url} => String
    #   * {Types::DescribeNotebookInstanceOutput#instance_type #instance_type} => String
    #   * {Types::DescribeNotebookInstanceOutput#subnet_id #subnet_id} => String
    #   * {Types::DescribeNotebookInstanceOutput#security_groups #security_groups} => Array&lt;String&gt;
    #   * {Types::DescribeNotebookInstanceOutput#role_arn #role_arn} => String
    #   * {Types::DescribeNotebookInstanceOutput#kms_key_id #kms_key_id} => String
    #   * {Types::DescribeNotebookInstanceOutput#network_interface_id #network_interface_id} => String
    #   * {Types::DescribeNotebookInstanceOutput#last_modified_time #last_modified_time} => Time
    #   * {Types::DescribeNotebookInstanceOutput#creation_time #creation_time} => Time
    #   * {Types::DescribeNotebookInstanceOutput#notebook_instance_lifecycle_config_name #notebook_instance_lifecycle_config_name} => String
    #   * {Types::DescribeNotebookInstanceOutput#direct_internet_access #direct_internet_access} => String
    #   * {Types::DescribeNotebookInstanceOutput#volume_size_in_gb #volume_size_in_gb} => Integer
    #   * {Types::DescribeNotebookInstanceOutput#accelerator_types #accelerator_types} => Array&lt;String&gt;
    #   * {Types::DescribeNotebookInstanceOutput#default_code_repository #default_code_repository} => String
    #   * {Types::DescribeNotebookInstanceOutput#additional_code_repositories #additional_code_repositories} => Array&lt;String&gt;
    #   * {Types::DescribeNotebookInstanceOutput#root_access #root_access} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_notebook_instance({
    #     notebook_instance_name: "NotebookInstanceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.notebook_instance_arn #=> String
    #   resp.notebook_instance_name #=> String
    #   resp.notebook_instance_status #=> String, one of "Pending", "InService", "Stopping", "Stopped", "Failed", "Deleting", "Updating"
    #   resp.failure_reason #=> String
    #   resp.url #=> String
    #   resp.instance_type #=> String, one of "ml.t2.medium", "ml.t2.large", "ml.t2.xlarge", "ml.t2.2xlarge", "ml.t3.medium", "ml.t3.large", "ml.t3.xlarge", "ml.t3.2xlarge", "ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.m5.xlarge", "ml.m5.2xlarge", "ml.m5.4xlarge", "ml.m5.12xlarge", "ml.m5.24xlarge", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.4xlarge", "ml.c4.8xlarge", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge", "ml.c5.18xlarge", "ml.c5d.xlarge", "ml.c5d.2xlarge", "ml.c5d.4xlarge", "ml.c5d.9xlarge", "ml.c5d.18xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge"
    #   resp.subnet_id #=> String
    #   resp.security_groups #=> Array
    #   resp.security_groups[0] #=> String
    #   resp.role_arn #=> String
    #   resp.kms_key_id #=> String
    #   resp.network_interface_id #=> String
    #   resp.last_modified_time #=> Time
    #   resp.creation_time #=> Time
    #   resp.notebook_instance_lifecycle_config_name #=> String
    #   resp.direct_internet_access #=> String, one of "Enabled", "Disabled"
    #   resp.volume_size_in_gb #=> Integer
    #   resp.accelerator_types #=> Array
    #   resp.accelerator_types[0] #=> String, one of "ml.eia1.medium", "ml.eia1.large", "ml.eia1.xlarge"
    #   resp.default_code_repository #=> String
    #   resp.additional_code_repositories #=> Array
    #   resp.additional_code_repositories[0] #=> String
    #   resp.root_access #=> String, one of "Enabled", "Disabled"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeNotebookInstance AWS API Documentation
    #
    # @overload describe_notebook_instance(params = {})
    # @param [Hash] params ({})
    def describe_notebook_instance(params = {}, options = {})
      req = build_request(:describe_notebook_instance, params)
      req.send_request(options)
    end

    # Returns a description of a notebook instance lifecycle configuration.
    #
    # For information about notebook instance lifestyle configurations, see
    # [Step 2.1: (Optional) Customize a Notebook Instance][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html
    #
    # @option params [required, String] :notebook_instance_lifecycle_config_name
    #   The name of the lifecycle configuration to describe.
    #
    # @return [Types::DescribeNotebookInstanceLifecycleConfigOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeNotebookInstanceLifecycleConfigOutput#notebook_instance_lifecycle_config_arn #notebook_instance_lifecycle_config_arn} => String
    #   * {Types::DescribeNotebookInstanceLifecycleConfigOutput#notebook_instance_lifecycle_config_name #notebook_instance_lifecycle_config_name} => String
    #   * {Types::DescribeNotebookInstanceLifecycleConfigOutput#on_create #on_create} => Array&lt;Types::NotebookInstanceLifecycleHook&gt;
    #   * {Types::DescribeNotebookInstanceLifecycleConfigOutput#on_start #on_start} => Array&lt;Types::NotebookInstanceLifecycleHook&gt;
    #   * {Types::DescribeNotebookInstanceLifecycleConfigOutput#last_modified_time #last_modified_time} => Time
    #   * {Types::DescribeNotebookInstanceLifecycleConfigOutput#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_notebook_instance_lifecycle_config({
    #     notebook_instance_lifecycle_config_name: "NotebookInstanceLifecycleConfigName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.notebook_instance_lifecycle_config_arn #=> String
    #   resp.notebook_instance_lifecycle_config_name #=> String
    #   resp.on_create #=> Array
    #   resp.on_create[0].content #=> String
    #   resp.on_start #=> Array
    #   resp.on_start[0].content #=> String
    #   resp.last_modified_time #=> Time
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeNotebookInstanceLifecycleConfig AWS API Documentation
    #
    # @overload describe_notebook_instance_lifecycle_config(params = {})
    # @param [Hash] params ({})
    def describe_notebook_instance_lifecycle_config(params = {}, options = {})
      req = build_request(:describe_notebook_instance_lifecycle_config, params)
      req.send_request(options)
    end

    # Gets information about a work team provided by a vendor. It returns
    # details about the subscription with a vendor in the AWS Marketplace.
    #
    # @option params [required, String] :workteam_arn
    #   The Amazon Resource Name (ARN) of the subscribed work team to
    #   describe.
    #
    # @return [Types::DescribeSubscribedWorkteamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSubscribedWorkteamResponse#subscribed_workteam #subscribed_workteam} => Types::SubscribedWorkteam
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_subscribed_workteam({
    #     workteam_arn: "WorkteamArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.subscribed_workteam.workteam_arn #=> String
    #   resp.subscribed_workteam.marketplace_title #=> String
    #   resp.subscribed_workteam.seller_name #=> String
    #   resp.subscribed_workteam.marketplace_description #=> String
    #   resp.subscribed_workteam.listing_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeSubscribedWorkteam AWS API Documentation
    #
    # @overload describe_subscribed_workteam(params = {})
    # @param [Hash] params ({})
    def describe_subscribed_workteam(params = {}, options = {})
      req = build_request(:describe_subscribed_workteam, params)
      req.send_request(options)
    end

    # Returns information about a training job.
    #
    # @option params [required, String] :training_job_name
    #   The name of the training job.
    #
    # @return [Types::DescribeTrainingJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTrainingJobResponse#training_job_name #training_job_name} => String
    #   * {Types::DescribeTrainingJobResponse#training_job_arn #training_job_arn} => String
    #   * {Types::DescribeTrainingJobResponse#tuning_job_arn #tuning_job_arn} => String
    #   * {Types::DescribeTrainingJobResponse#labeling_job_arn #labeling_job_arn} => String
    #   * {Types::DescribeTrainingJobResponse#model_artifacts #model_artifacts} => Types::ModelArtifacts
    #   * {Types::DescribeTrainingJobResponse#training_job_status #training_job_status} => String
    #   * {Types::DescribeTrainingJobResponse#secondary_status #secondary_status} => String
    #   * {Types::DescribeTrainingJobResponse#failure_reason #failure_reason} => String
    #   * {Types::DescribeTrainingJobResponse#hyper_parameters #hyper_parameters} => Hash&lt;String,String&gt;
    #   * {Types::DescribeTrainingJobResponse#algorithm_specification #algorithm_specification} => Types::AlgorithmSpecification
    #   * {Types::DescribeTrainingJobResponse#role_arn #role_arn} => String
    #   * {Types::DescribeTrainingJobResponse#input_data_config #input_data_config} => Array&lt;Types::Channel&gt;
    #   * {Types::DescribeTrainingJobResponse#output_data_config #output_data_config} => Types::OutputDataConfig
    #   * {Types::DescribeTrainingJobResponse#resource_config #resource_config} => Types::ResourceConfig
    #   * {Types::DescribeTrainingJobResponse#vpc_config #vpc_config} => Types::VpcConfig
    #   * {Types::DescribeTrainingJobResponse#stopping_condition #stopping_condition} => Types::StoppingCondition
    #   * {Types::DescribeTrainingJobResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeTrainingJobResponse#training_start_time #training_start_time} => Time
    #   * {Types::DescribeTrainingJobResponse#training_end_time #training_end_time} => Time
    #   * {Types::DescribeTrainingJobResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::DescribeTrainingJobResponse#secondary_status_transitions #secondary_status_transitions} => Array&lt;Types::SecondaryStatusTransition&gt;
    #   * {Types::DescribeTrainingJobResponse#final_metric_data_list #final_metric_data_list} => Array&lt;Types::MetricData&gt;
    #   * {Types::DescribeTrainingJobResponse#enable_network_isolation #enable_network_isolation} => Boolean
    #   * {Types::DescribeTrainingJobResponse#enable_inter_container_traffic_encryption #enable_inter_container_traffic_encryption} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_training_job({
    #     training_job_name: "TrainingJobName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.training_job_name #=> String
    #   resp.training_job_arn #=> String
    #   resp.tuning_job_arn #=> String
    #   resp.labeling_job_arn #=> String
    #   resp.model_artifacts.s3_model_artifacts #=> String
    #   resp.training_job_status #=> String, one of "InProgress", "Completed", "Failed", "Stopping", "Stopped"
    #   resp.secondary_status #=> String, one of "Starting", "LaunchingMLInstances", "PreparingTrainingStack", "Downloading", "DownloadingTrainingImage", "Training", "Uploading", "Stopping", "Stopped", "MaxRuntimeExceeded", "Completed", "Failed"
    #   resp.failure_reason #=> String
    #   resp.hyper_parameters #=> Hash
    #   resp.hyper_parameters["ParameterKey"] #=> String
    #   resp.algorithm_specification.training_image #=> String
    #   resp.algorithm_specification.algorithm_name #=> String
    #   resp.algorithm_specification.training_input_mode #=> String, one of "Pipe", "File"
    #   resp.algorithm_specification.metric_definitions #=> Array
    #   resp.algorithm_specification.metric_definitions[0].name #=> String
    #   resp.algorithm_specification.metric_definitions[0].regex #=> String
    #   resp.role_arn #=> String
    #   resp.input_data_config #=> Array
    #   resp.input_data_config[0].channel_name #=> String
    #   resp.input_data_config[0].data_source.s3_data_source.s3_data_type #=> String, one of "ManifestFile", "S3Prefix", "AugmentedManifestFile"
    #   resp.input_data_config[0].data_source.s3_data_source.s3_uri #=> String
    #   resp.input_data_config[0].data_source.s3_data_source.s3_data_distribution_type #=> String, one of "FullyReplicated", "ShardedByS3Key"
    #   resp.input_data_config[0].data_source.s3_data_source.attribute_names #=> Array
    #   resp.input_data_config[0].data_source.s3_data_source.attribute_names[0] #=> String
    #   resp.input_data_config[0].content_type #=> String
    #   resp.input_data_config[0].compression_type #=> String, one of "None", "Gzip"
    #   resp.input_data_config[0].record_wrapper_type #=> String, one of "None", "RecordIO"
    #   resp.input_data_config[0].input_mode #=> String, one of "Pipe", "File"
    #   resp.input_data_config[0].shuffle_config.seed #=> Integer
    #   resp.output_data_config.kms_key_id #=> String
    #   resp.output_data_config.s3_output_path #=> String
    #   resp.resource_config.instance_type #=> String, one of "ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.m5.large", "ml.m5.xlarge", "ml.m5.2xlarge", "ml.m5.4xlarge", "ml.m5.12xlarge", "ml.m5.24xlarge", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.4xlarge", "ml.c4.8xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge", "ml.c5.18xlarge"
    #   resp.resource_config.instance_count #=> Integer
    #   resp.resource_config.volume_size_in_gb #=> Integer
    #   resp.resource_config.volume_kms_key_id #=> String
    #   resp.vpc_config.security_group_ids #=> Array
    #   resp.vpc_config.security_group_ids[0] #=> String
    #   resp.vpc_config.subnets #=> Array
    #   resp.vpc_config.subnets[0] #=> String
    #   resp.stopping_condition.max_runtime_in_seconds #=> Integer
    #   resp.creation_time #=> Time
    #   resp.training_start_time #=> Time
    #   resp.training_end_time #=> Time
    #   resp.last_modified_time #=> Time
    #   resp.secondary_status_transitions #=> Array
    #   resp.secondary_status_transitions[0].status #=> String, one of "Starting", "LaunchingMLInstances", "PreparingTrainingStack", "Downloading", "DownloadingTrainingImage", "Training", "Uploading", "Stopping", "Stopped", "MaxRuntimeExceeded", "Completed", "Failed"
    #   resp.secondary_status_transitions[0].start_time #=> Time
    #   resp.secondary_status_transitions[0].end_time #=> Time
    #   resp.secondary_status_transitions[0].status_message #=> String
    #   resp.final_metric_data_list #=> Array
    #   resp.final_metric_data_list[0].metric_name #=> String
    #   resp.final_metric_data_list[0].value #=> Float
    #   resp.final_metric_data_list[0].timestamp #=> Time
    #   resp.enable_network_isolation #=> Boolean
    #   resp.enable_inter_container_traffic_encryption #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeTrainingJob AWS API Documentation
    #
    # @overload describe_training_job(params = {})
    # @param [Hash] params ({})
    def describe_training_job(params = {}, options = {})
      req = build_request(:describe_training_job, params)
      req.send_request(options)
    end

    # Returns information about a transform job.
    #
    # @option params [required, String] :transform_job_name
    #   The name of the transform job that you want to view details of.
    #
    # @return [Types::DescribeTransformJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTransformJobResponse#transform_job_name #transform_job_name} => String
    #   * {Types::DescribeTransformJobResponse#transform_job_arn #transform_job_arn} => String
    #   * {Types::DescribeTransformJobResponse#transform_job_status #transform_job_status} => String
    #   * {Types::DescribeTransformJobResponse#failure_reason #failure_reason} => String
    #   * {Types::DescribeTransformJobResponse#model_name #model_name} => String
    #   * {Types::DescribeTransformJobResponse#max_concurrent_transforms #max_concurrent_transforms} => Integer
    #   * {Types::DescribeTransformJobResponse#max_payload_in_mb #max_payload_in_mb} => Integer
    #   * {Types::DescribeTransformJobResponse#batch_strategy #batch_strategy} => String
    #   * {Types::DescribeTransformJobResponse#environment #environment} => Hash&lt;String,String&gt;
    #   * {Types::DescribeTransformJobResponse#transform_input #transform_input} => Types::TransformInput
    #   * {Types::DescribeTransformJobResponse#transform_output #transform_output} => Types::TransformOutput
    #   * {Types::DescribeTransformJobResponse#transform_resources #transform_resources} => Types::TransformResources
    #   * {Types::DescribeTransformJobResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeTransformJobResponse#transform_start_time #transform_start_time} => Time
    #   * {Types::DescribeTransformJobResponse#transform_end_time #transform_end_time} => Time
    #   * {Types::DescribeTransformJobResponse#labeling_job_arn #labeling_job_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_transform_job({
    #     transform_job_name: "TransformJobName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.transform_job_name #=> String
    #   resp.transform_job_arn #=> String
    #   resp.transform_job_status #=> String, one of "InProgress", "Completed", "Failed", "Stopping", "Stopped"
    #   resp.failure_reason #=> String
    #   resp.model_name #=> String
    #   resp.max_concurrent_transforms #=> Integer
    #   resp.max_payload_in_mb #=> Integer
    #   resp.batch_strategy #=> String, one of "MultiRecord", "SingleRecord"
    #   resp.environment #=> Hash
    #   resp.environment["TransformEnvironmentKey"] #=> String
    #   resp.transform_input.data_source.s3_data_source.s3_data_type #=> String, one of "ManifestFile", "S3Prefix", "AugmentedManifestFile"
    #   resp.transform_input.data_source.s3_data_source.s3_uri #=> String
    #   resp.transform_input.content_type #=> String
    #   resp.transform_input.compression_type #=> String, one of "None", "Gzip"
    #   resp.transform_input.split_type #=> String, one of "None", "Line", "RecordIO", "TFRecord"
    #   resp.transform_output.s3_output_path #=> String
    #   resp.transform_output.accept #=> String
    #   resp.transform_output.assemble_with #=> String, one of "None", "Line"
    #   resp.transform_output.kms_key_id #=> String
    #   resp.transform_resources.instance_type #=> String, one of "ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.4xlarge", "ml.c4.8xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge", "ml.c5.18xlarge", "ml.m5.large", "ml.m5.xlarge", "ml.m5.2xlarge", "ml.m5.4xlarge", "ml.m5.12xlarge", "ml.m5.24xlarge"
    #   resp.transform_resources.instance_count #=> Integer
    #   resp.transform_resources.volume_kms_key_id #=> String
    #   resp.creation_time #=> Time
    #   resp.transform_start_time #=> Time
    #   resp.transform_end_time #=> Time
    #   resp.labeling_job_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeTransformJob AWS API Documentation
    #
    # @overload describe_transform_job(params = {})
    # @param [Hash] params ({})
    def describe_transform_job(params = {}, options = {})
      req = build_request(:describe_transform_job, params)
      req.send_request(options)
    end

    # Gets information about a specific work team. You can see information
    # such as the create date, the last updated date, membership
    # information, and the work team's Amazon Resource Name (ARN).
    #
    # @option params [required, String] :workteam_name
    #   The name of the work team to return a description of.
    #
    # @return [Types::DescribeWorkteamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkteamResponse#workteam #workteam} => Types::Workteam
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workteam({
    #     workteam_name: "WorkteamName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workteam.workteam_name #=> String
    #   resp.workteam.member_definitions #=> Array
    #   resp.workteam.member_definitions[0].cognito_member_definition.user_pool #=> String
    #   resp.workteam.member_definitions[0].cognito_member_definition.user_group #=> String
    #   resp.workteam.member_definitions[0].cognito_member_definition.client_id #=> String
    #   resp.workteam.workteam_arn #=> String
    #   resp.workteam.product_listing_ids #=> Array
    #   resp.workteam.product_listing_ids[0] #=> String
    #   resp.workteam.description #=> String
    #   resp.workteam.sub_domain #=> String
    #   resp.workteam.create_date #=> Time
    #   resp.workteam.last_updated_date #=> Time
    #   resp.workteam.notification_configuration.notification_topic_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeWorkteam AWS API Documentation
    #
    # @overload describe_workteam(params = {})
    # @param [Hash] params ({})
    def describe_workteam(params = {}, options = {})
      req = build_request(:describe_workteam, params)
      req.send_request(options)
    end

    # An auto-complete API for the search functionality in the Amazon
    # SageMaker console. It returns suggestions of possible matches for the
    # property name to use in `Search` queries. Provides suggestions for
    # `HyperParameters`, `Tags`, and `Metrics`.
    #
    # @option params [required, String] :resource
    #   The name of the Amazon SageMaker resource to Search for. The only
    #   valid `Resource` value is `TrainingJob`.
    #
    # @option params [Types::SuggestionQuery] :suggestion_query
    #   Limits the property names that are included in the response.
    #
    # @return [Types::GetSearchSuggestionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSearchSuggestionsResponse#property_name_suggestions #property_name_suggestions} => Array&lt;Types::PropertyNameSuggestion&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_search_suggestions({
    #     resource: "TrainingJob", # required, accepts TrainingJob
    #     suggestion_query: {
    #       property_name_query: {
    #         property_name_hint: "PropertyNameHint", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.property_name_suggestions #=> Array
    #   resp.property_name_suggestions[0].property_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/GetSearchSuggestions AWS API Documentation
    #
    # @overload get_search_suggestions(params = {})
    # @param [Hash] params ({})
    def get_search_suggestions(params = {}, options = {})
      req = build_request(:get_search_suggestions, params)
      req.send_request(options)
    end

    # Lists the machine learning algorithms that have been created.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   A filter that returns only algorithms created after the specified time
    #   (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   A filter that returns only algorithms created before the specified
    #   time (timestamp).
    #
    # @option params [Integer] :max_results
    #   The maximum number of algorithms to return in the response.
    #
    # @option params [String] :name_contains
    #   A string in the algorithm name. This filter returns only algorithms
    #   whose name contains the specified string.
    #
    # @option params [String] :next_token
    #   If the response to a previous `ListAlgorithms` request was truncated,
    #   the response includes a `NextToken`. To retrieve the next set of
    #   algorithms, use the token in the next request.
    #
    # @option params [String] :sort_by
    #   The parameter by which to sort the results. The default is
    #   `CreationTime`.
    #
    # @option params [String] :sort_order
    #   The sort order for the results. The default is `Ascending`.
    #
    # @return [Types::ListAlgorithmsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAlgorithmsOutput#algorithm_summary_list #algorithm_summary_list} => Array&lt;Types::AlgorithmSummary&gt;
    #   * {Types::ListAlgorithmsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_algorithms({
    #     creation_time_after: Time.now,
    #     creation_time_before: Time.now,
    #     max_results: 1,
    #     name_contains: "NameContains",
    #     next_token: "NextToken",
    #     sort_by: "Name", # accepts Name, CreationTime
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #   })
    #
    # @example Response structure
    #
    #   resp.algorithm_summary_list #=> Array
    #   resp.algorithm_summary_list[0].algorithm_name #=> String
    #   resp.algorithm_summary_list[0].algorithm_arn #=> String
    #   resp.algorithm_summary_list[0].algorithm_description #=> String
    #   resp.algorithm_summary_list[0].creation_time #=> Time
    #   resp.algorithm_summary_list[0].algorithm_status #=> String, one of "Pending", "InProgress", "Completed", "Failed", "Deleting"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListAlgorithms AWS API Documentation
    #
    # @overload list_algorithms(params = {})
    # @param [Hash] params ({})
    def list_algorithms(params = {}, options = {})
      req = build_request(:list_algorithms, params)
      req.send_request(options)
    end

    # Gets a list of the Git repositories in your account.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   A filter that returns only Git repositories that were created after
    #   the specified time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   A filter that returns only Git repositories that were created before
    #   the specified time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :last_modified_time_after
    #   A filter that returns only Git repositories that were last modified
    #   after the specified time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :last_modified_time_before
    #   A filter that returns only Git repositories that were last modified
    #   before the specified time.
    #
    # @option params [Integer] :max_results
    #   The maximum number of Git repositories to return in the response.
    #
    # @option params [String] :name_contains
    #   A string in the Git repositories name. This filter returns only
    #   repositories whose name contains the specified string.
    #
    # @option params [String] :next_token
    #   If the result of a `ListCodeRepositoriesOutput` request was truncated,
    #   the response includes a `NextToken`. To get the next set of Git
    #   repositories, use the token in the next request.
    #
    # @option params [String] :sort_by
    #   The field to sort results by. The default is `Name`.
    #
    # @option params [String] :sort_order
    #   The sort order for results. The default is `Ascending`.
    #
    # @return [Types::ListCodeRepositoriesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCodeRepositoriesOutput#code_repository_summary_list #code_repository_summary_list} => Array&lt;Types::CodeRepositorySummary&gt;
    #   * {Types::ListCodeRepositoriesOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_code_repositories({
    #     creation_time_after: Time.now,
    #     creation_time_before: Time.now,
    #     last_modified_time_after: Time.now,
    #     last_modified_time_before: Time.now,
    #     max_results: 1,
    #     name_contains: "CodeRepositoryNameContains",
    #     next_token: "NextToken",
    #     sort_by: "Name", # accepts Name, CreationTime, LastModifiedTime
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #   })
    #
    # @example Response structure
    #
    #   resp.code_repository_summary_list #=> Array
    #   resp.code_repository_summary_list[0].code_repository_name #=> String
    #   resp.code_repository_summary_list[0].code_repository_arn #=> String
    #   resp.code_repository_summary_list[0].creation_time #=> Time
    #   resp.code_repository_summary_list[0].last_modified_time #=> Time
    #   resp.code_repository_summary_list[0].git_config.repository_url #=> String
    #   resp.code_repository_summary_list[0].git_config.branch #=> String
    #   resp.code_repository_summary_list[0].git_config.secret_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListCodeRepositories AWS API Documentation
    #
    # @overload list_code_repositories(params = {})
    # @param [Hash] params ({})
    def list_code_repositories(params = {}, options = {})
      req = build_request(:list_code_repositories, params)
      req.send_request(options)
    end

    # Lists model compilation jobs that satisfy various filters.
    #
    # To create a model compilation job, use CreateCompilationJob. To get
    # information about a particular model compilation job you have created,
    # use DescribeCompilationJob.
    #
    # @option params [String] :next_token
    #   If the result of the previous `ListCompilationJobs` request was
    #   truncated, the response includes a `NextToken`. To retrieve the next
    #   set of model compilation jobs, use the token in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of model compilation jobs to return in the
    #   response.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   A filter that returns the model compilation jobs that were created
    #   after a specified time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   A filter that returns the model compilation jobs that were created
    #   before a specified time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :last_modified_time_after
    #   A filter that returns the model compilation jobs that were modified
    #   after a specified time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :last_modified_time_before
    #   A filter that returns the model compilation jobs that were modified
    #   before a specified time.
    #
    # @option params [String] :name_contains
    #   A filter that returns the model compilation jobs whose name contains a
    #   specified string.
    #
    # @option params [String] :status_equals
    #   A filter that retrieves model compilation jobs with a specific
    #   DescribeCompilationJobResponse$CompilationJobStatus status.
    #
    # @option params [String] :sort_by
    #   The field by which to sort results. The default is `CreationTime`.
    #
    # @option params [String] :sort_order
    #   The sort order for results. The default is `Ascending`.
    #
    # @return [Types::ListCompilationJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCompilationJobsResponse#compilation_job_summaries #compilation_job_summaries} => Array&lt;Types::CompilationJobSummary&gt;
    #   * {Types::ListCompilationJobsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_compilation_jobs({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     creation_time_after: Time.now,
    #     creation_time_before: Time.now,
    #     last_modified_time_after: Time.now,
    #     last_modified_time_before: Time.now,
    #     name_contains: "NameContains",
    #     status_equals: "INPROGRESS", # accepts INPROGRESS, COMPLETED, FAILED, STARTING, STOPPING, STOPPED
    #     sort_by: "Name", # accepts Name, CreationTime, Status
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #   })
    #
    # @example Response structure
    #
    #   resp.compilation_job_summaries #=> Array
    #   resp.compilation_job_summaries[0].compilation_job_name #=> String
    #   resp.compilation_job_summaries[0].compilation_job_arn #=> String
    #   resp.compilation_job_summaries[0].creation_time #=> Time
    #   resp.compilation_job_summaries[0].compilation_start_time #=> Time
    #   resp.compilation_job_summaries[0].compilation_end_time #=> Time
    #   resp.compilation_job_summaries[0].compilation_target_device #=> String, one of "lambda", "ml_m4", "ml_m5", "ml_c4", "ml_c5", "ml_p2", "ml_p3", "jetson_tx1", "jetson_tx2", "jetson_nano", "rasp3b", "deeplens", "rk3399", "rk3288"
    #   resp.compilation_job_summaries[0].last_modified_time #=> Time
    #   resp.compilation_job_summaries[0].compilation_job_status #=> String, one of "INPROGRESS", "COMPLETED", "FAILED", "STARTING", "STOPPING", "STOPPED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListCompilationJobs AWS API Documentation
    #
    # @overload list_compilation_jobs(params = {})
    # @param [Hash] params ({})
    def list_compilation_jobs(params = {}, options = {})
      req = build_request(:list_compilation_jobs, params)
      req.send_request(options)
    end

    # Lists endpoint configurations.
    #
    # @option params [String] :sort_by
    #   The field to sort results by. The default is `CreationTime`.
    #
    # @option params [String] :sort_order
    #   The sort order for results. The default is `Descending`.
    #
    # @option params [String] :next_token
    #   If the result of the previous `ListEndpointConfig` request was
    #   truncated, the response includes a `NextToken`. To retrieve the next
    #   set of endpoint configurations, use the token in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of training jobs to return in the response.
    #
    # @option params [String] :name_contains
    #   A string in the endpoint configuration name. This filter returns only
    #   endpoint configurations whose name contains the specified string.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   A filter that returns only endpoint configurations created before the
    #   specified time (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   A filter that returns only endpoint configurations with a creation
    #   time greater than or equal to the specified time (timestamp).
    #
    # @return [Types::ListEndpointConfigsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEndpointConfigsOutput#endpoint_configs #endpoint_configs} => Array&lt;Types::EndpointConfigSummary&gt;
    #   * {Types::ListEndpointConfigsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_endpoint_configs({
    #     sort_by: "Name", # accepts Name, CreationTime
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     name_contains: "EndpointConfigNameContains",
    #     creation_time_before: Time.now,
    #     creation_time_after: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_configs #=> Array
    #   resp.endpoint_configs[0].endpoint_config_name #=> String
    #   resp.endpoint_configs[0].endpoint_config_arn #=> String
    #   resp.endpoint_configs[0].creation_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListEndpointConfigs AWS API Documentation
    #
    # @overload list_endpoint_configs(params = {})
    # @param [Hash] params ({})
    def list_endpoint_configs(params = {}, options = {})
      req = build_request(:list_endpoint_configs, params)
      req.send_request(options)
    end

    # Lists endpoints.
    #
    # @option params [String] :sort_by
    #   Sorts the list of results. The default is `CreationTime`.
    #
    # @option params [String] :sort_order
    #   The sort order for results. The default is `Descending`.
    #
    # @option params [String] :next_token
    #   If the result of a `ListEndpoints` request was truncated, the response
    #   includes a `NextToken`. To retrieve the next set of endpoints, use the
    #   token in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of endpoints to return in the response.
    #
    # @option params [String] :name_contains
    #   A string in endpoint names. This filter returns only endpoints whose
    #   name contains the specified string.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   A filter that returns only endpoints that were created before the
    #   specified time (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   A filter that returns only endpoints with a creation time greater than
    #   or equal to the specified time (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :last_modified_time_before
    #   A filter that returns only endpoints that were modified before the
    #   specified timestamp.
    #
    # @option params [Time,DateTime,Date,Integer,String] :last_modified_time_after
    #   A filter that returns only endpoints that were modified after the
    #   specified timestamp.
    #
    # @option params [String] :status_equals
    #   A filter that returns only endpoints with the specified status.
    #
    # @return [Types::ListEndpointsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEndpointsOutput#endpoints #endpoints} => Array&lt;Types::EndpointSummary&gt;
    #   * {Types::ListEndpointsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_endpoints({
    #     sort_by: "Name", # accepts Name, CreationTime, Status
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     name_contains: "EndpointNameContains",
    #     creation_time_before: Time.now,
    #     creation_time_after: Time.now,
    #     last_modified_time_before: Time.now,
    #     last_modified_time_after: Time.now,
    #     status_equals: "OutOfService", # accepts OutOfService, Creating, Updating, SystemUpdating, RollingBack, InService, Deleting, Failed
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoints #=> Array
    #   resp.endpoints[0].endpoint_name #=> String
    #   resp.endpoints[0].endpoint_arn #=> String
    #   resp.endpoints[0].creation_time #=> Time
    #   resp.endpoints[0].last_modified_time #=> Time
    #   resp.endpoints[0].endpoint_status #=> String, one of "OutOfService", "Creating", "Updating", "SystemUpdating", "RollingBack", "InService", "Deleting", "Failed"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListEndpoints AWS API Documentation
    #
    # @overload list_endpoints(params = {})
    # @param [Hash] params ({})
    def list_endpoints(params = {}, options = {})
      req = build_request(:list_endpoints, params)
      req.send_request(options)
    end

    # Gets a list of HyperParameterTuningJobSummary objects that describe
    # the hyperparameter tuning jobs launched in your account.
    #
    # @option params [String] :next_token
    #   If the result of the previous `ListHyperParameterTuningJobs` request
    #   was truncated, the response includes a `NextToken`. To retrieve the
    #   next set of tuning jobs, use the token in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of tuning jobs to return. The default value is 10.
    #
    # @option params [String] :sort_by
    #   The field to sort results by. The default is `Name`.
    #
    # @option params [String] :sort_order
    #   The sort order for results. The default is `Ascending`.
    #
    # @option params [String] :name_contains
    #   A string in the tuning job name. This filter returns only tuning jobs
    #   whose name contains the specified string.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   A filter that returns only tuning jobs that were created after the
    #   specified time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   A filter that returns only tuning jobs that were created before the
    #   specified time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :last_modified_time_after
    #   A filter that returns only tuning jobs that were modified after the
    #   specified time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :last_modified_time_before
    #   A filter that returns only tuning jobs that were modified before the
    #   specified time.
    #
    # @option params [String] :status_equals
    #   A filter that returns only tuning jobs with the specified status.
    #
    # @return [Types::ListHyperParameterTuningJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListHyperParameterTuningJobsResponse#hyper_parameter_tuning_job_summaries #hyper_parameter_tuning_job_summaries} => Array&lt;Types::HyperParameterTuningJobSummary&gt;
    #   * {Types::ListHyperParameterTuningJobsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_hyper_parameter_tuning_jobs({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     sort_by: "Name", # accepts Name, Status, CreationTime
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #     name_contains: "NameContains",
    #     creation_time_after: Time.now,
    #     creation_time_before: Time.now,
    #     last_modified_time_after: Time.now,
    #     last_modified_time_before: Time.now,
    #     status_equals: "Completed", # accepts Completed, InProgress, Failed, Stopped, Stopping
    #   })
    #
    # @example Response structure
    #
    #   resp.hyper_parameter_tuning_job_summaries #=> Array
    #   resp.hyper_parameter_tuning_job_summaries[0].hyper_parameter_tuning_job_name #=> String
    #   resp.hyper_parameter_tuning_job_summaries[0].hyper_parameter_tuning_job_arn #=> String
    #   resp.hyper_parameter_tuning_job_summaries[0].hyper_parameter_tuning_job_status #=> String, one of "Completed", "InProgress", "Failed", "Stopped", "Stopping"
    #   resp.hyper_parameter_tuning_job_summaries[0].strategy #=> String, one of "Bayesian", "Random"
    #   resp.hyper_parameter_tuning_job_summaries[0].creation_time #=> Time
    #   resp.hyper_parameter_tuning_job_summaries[0].hyper_parameter_tuning_end_time #=> Time
    #   resp.hyper_parameter_tuning_job_summaries[0].last_modified_time #=> Time
    #   resp.hyper_parameter_tuning_job_summaries[0].training_job_status_counters.completed #=> Integer
    #   resp.hyper_parameter_tuning_job_summaries[0].training_job_status_counters.in_progress #=> Integer
    #   resp.hyper_parameter_tuning_job_summaries[0].training_job_status_counters.retryable_error #=> Integer
    #   resp.hyper_parameter_tuning_job_summaries[0].training_job_status_counters.non_retryable_error #=> Integer
    #   resp.hyper_parameter_tuning_job_summaries[0].training_job_status_counters.stopped #=> Integer
    #   resp.hyper_parameter_tuning_job_summaries[0].objective_status_counters.succeeded #=> Integer
    #   resp.hyper_parameter_tuning_job_summaries[0].objective_status_counters.pending #=> Integer
    #   resp.hyper_parameter_tuning_job_summaries[0].objective_status_counters.failed #=> Integer
    #   resp.hyper_parameter_tuning_job_summaries[0].resource_limits.max_number_of_training_jobs #=> Integer
    #   resp.hyper_parameter_tuning_job_summaries[0].resource_limits.max_parallel_training_jobs #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListHyperParameterTuningJobs AWS API Documentation
    #
    # @overload list_hyper_parameter_tuning_jobs(params = {})
    # @param [Hash] params ({})
    def list_hyper_parameter_tuning_jobs(params = {}, options = {})
      req = build_request(:list_hyper_parameter_tuning_jobs, params)
      req.send_request(options)
    end

    # Gets a list of labeling jobs.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   A filter that returns only labeling jobs created after the specified
    #   time (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   A filter that returns only labeling jobs created before the specified
    #   time (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :last_modified_time_after
    #   A filter that returns only labeling jobs modified after the specified
    #   time (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :last_modified_time_before
    #   A filter that returns only labeling jobs modified before the specified
    #   time (timestamp).
    #
    # @option params [Integer] :max_results
    #   The maximum number of labeling jobs to return in each page of the
    #   response.
    #
    # @option params [String] :next_token
    #   If the result of the previous `ListLabelingJobs` request was
    #   truncated, the response includes a `NextToken`. To retrieve the next
    #   set of labeling jobs, use the token in the next request.
    #
    # @option params [String] :name_contains
    #   A string in the labeling job name. This filter returns only labeling
    #   jobs whose name contains the specified string.
    #
    # @option params [String] :sort_by
    #   The field to sort results by. The default is `CreationTime`.
    #
    # @option params [String] :sort_order
    #   The sort order for results. The default is `Ascending`.
    #
    # @option params [String] :status_equals
    #   A filter that retrieves only labeling jobs with a specific status.
    #
    # @return [Types::ListLabelingJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLabelingJobsResponse#labeling_job_summary_list #labeling_job_summary_list} => Array&lt;Types::LabelingJobSummary&gt;
    #   * {Types::ListLabelingJobsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_labeling_jobs({
    #     creation_time_after: Time.now,
    #     creation_time_before: Time.now,
    #     last_modified_time_after: Time.now,
    #     last_modified_time_before: Time.now,
    #     max_results: 1,
    #     next_token: "NextToken",
    #     name_contains: "NameContains",
    #     sort_by: "Name", # accepts Name, CreationTime, Status
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #     status_equals: "InProgress", # accepts InProgress, Completed, Failed, Stopping, Stopped
    #   })
    #
    # @example Response structure
    #
    #   resp.labeling_job_summary_list #=> Array
    #   resp.labeling_job_summary_list[0].labeling_job_name #=> String
    #   resp.labeling_job_summary_list[0].labeling_job_arn #=> String
    #   resp.labeling_job_summary_list[0].creation_time #=> Time
    #   resp.labeling_job_summary_list[0].last_modified_time #=> Time
    #   resp.labeling_job_summary_list[0].labeling_job_status #=> String, one of "InProgress", "Completed", "Failed", "Stopping", "Stopped"
    #   resp.labeling_job_summary_list[0].label_counters.total_labeled #=> Integer
    #   resp.labeling_job_summary_list[0].label_counters.human_labeled #=> Integer
    #   resp.labeling_job_summary_list[0].label_counters.machine_labeled #=> Integer
    #   resp.labeling_job_summary_list[0].label_counters.failed_non_retryable_error #=> Integer
    #   resp.labeling_job_summary_list[0].label_counters.unlabeled #=> Integer
    #   resp.labeling_job_summary_list[0].workteam_arn #=> String
    #   resp.labeling_job_summary_list[0].pre_human_task_lambda_arn #=> String
    #   resp.labeling_job_summary_list[0].annotation_consolidation_lambda_arn #=> String
    #   resp.labeling_job_summary_list[0].failure_reason #=> String
    #   resp.labeling_job_summary_list[0].labeling_job_output.output_dataset_s3_uri #=> String
    #   resp.labeling_job_summary_list[0].labeling_job_output.final_active_learning_model_arn #=> String
    #   resp.labeling_job_summary_list[0].input_config.data_source.s3_data_source.manifest_s3_uri #=> String
    #   resp.labeling_job_summary_list[0].input_config.data_attributes.content_classifiers #=> Array
    #   resp.labeling_job_summary_list[0].input_config.data_attributes.content_classifiers[0] #=> String, one of "FreeOfPersonallyIdentifiableInformation", "FreeOfAdultContent"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListLabelingJobs AWS API Documentation
    #
    # @overload list_labeling_jobs(params = {})
    # @param [Hash] params ({})
    def list_labeling_jobs(params = {}, options = {})
      req = build_request(:list_labeling_jobs, params)
      req.send_request(options)
    end

    # Gets a list of labeling jobs assigned to a specified work team.
    #
    # @option params [required, String] :workteam_arn
    #   The Amazon Resource Name (ARN) of the work team for which you want to
    #   see labeling jobs for.
    #
    # @option params [Integer] :max_results
    #   The maximum number of labeling jobs to return in each page of the
    #   response.
    #
    # @option params [String] :next_token
    #   If the result of the previous `ListLabelingJobsForWorkteam` request
    #   was truncated, the response includes a `NextToken`. To retrieve the
    #   next set of labeling jobs, use the token in the next request.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   A filter that returns only labeling jobs created after the specified
    #   time (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   A filter that returns only labeling jobs created before the specified
    #   time (timestamp).
    #
    # @option params [String] :job_reference_code_contains
    #   A filter the limits jobs to only the ones whose job reference code
    #   contains the specified string.
    #
    # @option params [String] :sort_by
    #   The field to sort results by. The default is `CreationTime`.
    #
    # @option params [String] :sort_order
    #   The sort order for results. The default is `Ascending`.
    #
    # @return [Types::ListLabelingJobsForWorkteamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLabelingJobsForWorkteamResponse#labeling_job_summary_list #labeling_job_summary_list} => Array&lt;Types::LabelingJobForWorkteamSummary&gt;
    #   * {Types::ListLabelingJobsForWorkteamResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_labeling_jobs_for_workteam({
    #     workteam_arn: "WorkteamArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     creation_time_after: Time.now,
    #     creation_time_before: Time.now,
    #     job_reference_code_contains: "JobReferenceCodeContains",
    #     sort_by: "CreationTime", # accepts CreationTime
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #   })
    #
    # @example Response structure
    #
    #   resp.labeling_job_summary_list #=> Array
    #   resp.labeling_job_summary_list[0].labeling_job_name #=> String
    #   resp.labeling_job_summary_list[0].job_reference_code #=> String
    #   resp.labeling_job_summary_list[0].work_requester_account_id #=> String
    #   resp.labeling_job_summary_list[0].creation_time #=> Time
    #   resp.labeling_job_summary_list[0].label_counters.human_labeled #=> Integer
    #   resp.labeling_job_summary_list[0].label_counters.pending_human #=> Integer
    #   resp.labeling_job_summary_list[0].label_counters.total #=> Integer
    #   resp.labeling_job_summary_list[0].number_of_human_workers_per_data_object #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListLabelingJobsForWorkteam AWS API Documentation
    #
    # @overload list_labeling_jobs_for_workteam(params = {})
    # @param [Hash] params ({})
    def list_labeling_jobs_for_workteam(params = {}, options = {})
      req = build_request(:list_labeling_jobs_for_workteam, params)
      req.send_request(options)
    end

    # Lists the model packages that have been created.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   A filter that returns only model packages created after the specified
    #   time (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   A filter that returns only model packages created before the specified
    #   time (timestamp).
    #
    # @option params [Integer] :max_results
    #   The maximum number of model packages to return in the response.
    #
    # @option params [String] :name_contains
    #   A string in the model package name. This filter returns only model
    #   packages whose name contains the specified string.
    #
    # @option params [String] :next_token
    #   If the response to a previous `ListModelPackages` request was
    #   truncated, the response includes a `NextToken`. To retrieve the next
    #   set of model packages, use the token in the next request.
    #
    # @option params [String] :sort_by
    #   The parameter by which to sort the results. The default is
    #   `CreationTime`.
    #
    # @option params [String] :sort_order
    #   The sort order for the results. The default is `Ascending`.
    #
    # @return [Types::ListModelPackagesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListModelPackagesOutput#model_package_summary_list #model_package_summary_list} => Array&lt;Types::ModelPackageSummary&gt;
    #   * {Types::ListModelPackagesOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_model_packages({
    #     creation_time_after: Time.now,
    #     creation_time_before: Time.now,
    #     max_results: 1,
    #     name_contains: "NameContains",
    #     next_token: "NextToken",
    #     sort_by: "Name", # accepts Name, CreationTime
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #   })
    #
    # @example Response structure
    #
    #   resp.model_package_summary_list #=> Array
    #   resp.model_package_summary_list[0].model_package_name #=> String
    #   resp.model_package_summary_list[0].model_package_arn #=> String
    #   resp.model_package_summary_list[0].model_package_description #=> String
    #   resp.model_package_summary_list[0].creation_time #=> Time
    #   resp.model_package_summary_list[0].model_package_status #=> String, one of "Pending", "InProgress", "Completed", "Failed", "Deleting"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListModelPackages AWS API Documentation
    #
    # @overload list_model_packages(params = {})
    # @param [Hash] params ({})
    def list_model_packages(params = {}, options = {})
      req = build_request(:list_model_packages, params)
      req.send_request(options)
    end

    # Lists models created with the [CreateModel][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateModel.html
    #
    # @option params [String] :sort_by
    #   Sorts the list of results. The default is `CreationTime`.
    #
    # @option params [String] :sort_order
    #   The sort order for results. The default is `Descending`.
    #
    # @option params [String] :next_token
    #   If the response to a previous `ListModels` request was truncated, the
    #   response includes a `NextToken`. To retrieve the next set of models,
    #   use the token in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of models to return in the response.
    #
    # @option params [String] :name_contains
    #   A string in the training job name. This filter returns only models in
    #   the training job whose name contains the specified string.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   A filter that returns only models created before the specified time
    #   (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   A filter that returns only models with a creation time greater than or
    #   equal to the specified time (timestamp).
    #
    # @return [Types::ListModelsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListModelsOutput#models #models} => Array&lt;Types::ModelSummary&gt;
    #   * {Types::ListModelsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_models({
    #     sort_by: "Name", # accepts Name, CreationTime
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     name_contains: "ModelNameContains",
    #     creation_time_before: Time.now,
    #     creation_time_after: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.models #=> Array
    #   resp.models[0].model_name #=> String
    #   resp.models[0].model_arn #=> String
    #   resp.models[0].creation_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListModels AWS API Documentation
    #
    # @overload list_models(params = {})
    # @param [Hash] params ({})
    def list_models(params = {}, options = {})
      req = build_request(:list_models, params)
      req.send_request(options)
    end

    # Lists notebook instance lifestyle configurations created with the
    # CreateNotebookInstanceLifecycleConfig API.
    #
    # @option params [String] :next_token
    #   If the result of a `ListNotebookInstanceLifecycleConfigs` request was
    #   truncated, the response includes a `NextToken`. To get the next set of
    #   lifecycle configurations, use the token in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of lifecycle configurations to return in the
    #   response.
    #
    # @option params [String] :sort_by
    #   Sorts the list of results. The default is `CreationTime`.
    #
    # @option params [String] :sort_order
    #   The sort order for results.
    #
    # @option params [String] :name_contains
    #   A string in the lifecycle configuration name. This filter returns only
    #   lifecycle configurations whose name contains the specified string.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   A filter that returns only lifecycle configurations that were created
    #   before the specified time (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   A filter that returns only lifecycle configurations that were created
    #   after the specified time (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :last_modified_time_before
    #   A filter that returns only lifecycle configurations that were modified
    #   before the specified time (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :last_modified_time_after
    #   A filter that returns only lifecycle configurations that were modified
    #   after the specified time (timestamp).
    #
    # @return [Types::ListNotebookInstanceLifecycleConfigsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNotebookInstanceLifecycleConfigsOutput#next_token #next_token} => String
    #   * {Types::ListNotebookInstanceLifecycleConfigsOutput#notebook_instance_lifecycle_configs #notebook_instance_lifecycle_configs} => Array&lt;Types::NotebookInstanceLifecycleConfigSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_notebook_instance_lifecycle_configs({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     sort_by: "Name", # accepts Name, CreationTime, LastModifiedTime
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #     name_contains: "NotebookInstanceLifecycleConfigNameContains",
    #     creation_time_before: Time.now,
    #     creation_time_after: Time.now,
    #     last_modified_time_before: Time.now,
    #     last_modified_time_after: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.notebook_instance_lifecycle_configs #=> Array
    #   resp.notebook_instance_lifecycle_configs[0].notebook_instance_lifecycle_config_name #=> String
    #   resp.notebook_instance_lifecycle_configs[0].notebook_instance_lifecycle_config_arn #=> String
    #   resp.notebook_instance_lifecycle_configs[0].creation_time #=> Time
    #   resp.notebook_instance_lifecycle_configs[0].last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListNotebookInstanceLifecycleConfigs AWS API Documentation
    #
    # @overload list_notebook_instance_lifecycle_configs(params = {})
    # @param [Hash] params ({})
    def list_notebook_instance_lifecycle_configs(params = {}, options = {})
      req = build_request(:list_notebook_instance_lifecycle_configs, params)
      req.send_request(options)
    end

    # Returns a list of the Amazon SageMaker notebook instances in the
    # requester's account in an AWS Region.
    #
    # @option params [String] :next_token
    #   If the previous call to the `ListNotebookInstances` is truncated, the
    #   response includes a `NextToken`. You can use this token in your
    #   subsequent `ListNotebookInstances` request to fetch the next set of
    #   notebook instances.
    #
    #   <note markdown="1"> You might specify a filter or a sort order in your request. When
    #   response is truncated, you must use the same values for the filer and
    #   sort order in the next request.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of notebook instances to return.
    #
    # @option params [String] :sort_by
    #   The field to sort results by. The default is `Name`.
    #
    # @option params [String] :sort_order
    #   The sort order for results.
    #
    # @option params [String] :name_contains
    #   A string in the notebook instances' name. This filter returns only
    #   notebook instances whose name contains the specified string.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   A filter that returns only notebook instances that were created before
    #   the specified time (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   A filter that returns only notebook instances that were created after
    #   the specified time (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :last_modified_time_before
    #   A filter that returns only notebook instances that were modified
    #   before the specified time (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :last_modified_time_after
    #   A filter that returns only notebook instances that were modified after
    #   the specified time (timestamp).
    #
    # @option params [String] :status_equals
    #   A filter that returns only notebook instances with the specified
    #   status.
    #
    # @option params [String] :notebook_instance_lifecycle_config_name_contains
    #   A string in the name of a notebook instances lifecycle configuration
    #   associated with this notebook instance. This filter returns only
    #   notebook instances associated with a lifecycle configuration with a
    #   name that contains the specified string.
    #
    # @option params [String] :default_code_repository_contains
    #   A string in the name or URL of a Git repository associated with this
    #   notebook instance. This filter returns only notebook instances
    #   associated with a git repository with a name that contains the
    #   specified string.
    #
    # @option params [String] :additional_code_repository_equals
    #   A filter that returns only notebook instances with associated with the
    #   specified git repository.
    #
    # @return [Types::ListNotebookInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNotebookInstancesOutput#next_token #next_token} => String
    #   * {Types::ListNotebookInstancesOutput#notebook_instances #notebook_instances} => Array&lt;Types::NotebookInstanceSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_notebook_instances({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     sort_by: "Name", # accepts Name, CreationTime, Status
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #     name_contains: "NotebookInstanceNameContains",
    #     creation_time_before: Time.now,
    #     creation_time_after: Time.now,
    #     last_modified_time_before: Time.now,
    #     last_modified_time_after: Time.now,
    #     status_equals: "Pending", # accepts Pending, InService, Stopping, Stopped, Failed, Deleting, Updating
    #     notebook_instance_lifecycle_config_name_contains: "NotebookInstanceLifecycleConfigName",
    #     default_code_repository_contains: "CodeRepositoryContains",
    #     additional_code_repository_equals: "CodeRepositoryNameOrUrl",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.notebook_instances #=> Array
    #   resp.notebook_instances[0].notebook_instance_name #=> String
    #   resp.notebook_instances[0].notebook_instance_arn #=> String
    #   resp.notebook_instances[0].notebook_instance_status #=> String, one of "Pending", "InService", "Stopping", "Stopped", "Failed", "Deleting", "Updating"
    #   resp.notebook_instances[0].url #=> String
    #   resp.notebook_instances[0].instance_type #=> String, one of "ml.t2.medium", "ml.t2.large", "ml.t2.xlarge", "ml.t2.2xlarge", "ml.t3.medium", "ml.t3.large", "ml.t3.xlarge", "ml.t3.2xlarge", "ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.m5.xlarge", "ml.m5.2xlarge", "ml.m5.4xlarge", "ml.m5.12xlarge", "ml.m5.24xlarge", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.4xlarge", "ml.c4.8xlarge", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge", "ml.c5.18xlarge", "ml.c5d.xlarge", "ml.c5d.2xlarge", "ml.c5d.4xlarge", "ml.c5d.9xlarge", "ml.c5d.18xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge"
    #   resp.notebook_instances[0].creation_time #=> Time
    #   resp.notebook_instances[0].last_modified_time #=> Time
    #   resp.notebook_instances[0].notebook_instance_lifecycle_config_name #=> String
    #   resp.notebook_instances[0].default_code_repository #=> String
    #   resp.notebook_instances[0].additional_code_repositories #=> Array
    #   resp.notebook_instances[0].additional_code_repositories[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListNotebookInstances AWS API Documentation
    #
    # @overload list_notebook_instances(params = {})
    # @param [Hash] params ({})
    def list_notebook_instances(params = {}, options = {})
      req = build_request(:list_notebook_instances, params)
      req.send_request(options)
    end

    # Gets a list of the work teams that you are subscribed to in the AWS
    # Marketplace. The list may be empty if no work team satisfies the
    # filter specified in the `NameContains` parameter.
    #
    # @option params [String] :name_contains
    #   A string in the work team name. This filter returns only work teams
    #   whose name contains the specified string.
    #
    # @option params [String] :next_token
    #   If the result of the previous `ListSubscribedWorkteams` request was
    #   truncated, the response includes a `NextToken`. To retrieve the next
    #   set of labeling jobs, use the token in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of work teams to return in each page of the
    #   response.
    #
    # @return [Types::ListSubscribedWorkteamsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSubscribedWorkteamsResponse#subscribed_workteams #subscribed_workteams} => Array&lt;Types::SubscribedWorkteam&gt;
    #   * {Types::ListSubscribedWorkteamsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_subscribed_workteams({
    #     name_contains: "WorkteamName",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.subscribed_workteams #=> Array
    #   resp.subscribed_workteams[0].workteam_arn #=> String
    #   resp.subscribed_workteams[0].marketplace_title #=> String
    #   resp.subscribed_workteams[0].seller_name #=> String
    #   resp.subscribed_workteams[0].marketplace_description #=> String
    #   resp.subscribed_workteams[0].listing_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListSubscribedWorkteams AWS API Documentation
    #
    # @overload list_subscribed_workteams(params = {})
    # @param [Hash] params ({})
    def list_subscribed_workteams(params = {}, options = {})
      req = build_request(:list_subscribed_workteams, params)
      req.send_request(options)
    end

    # Returns the tags for the specified Amazon SageMaker resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource whose tags you want to
    #   retrieve.
    #
    # @option params [String] :next_token
    #   If the response to the previous `ListTags` request is truncated,
    #   Amazon SageMaker returns this token. To retrieve the next set of tags,
    #   use it in the subsequent request.
    #
    # @option params [Integer] :max_results
    #   Maximum number of tags to return.
    #
    # @return [Types::ListTagsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags({
    #     resource_arn: "ResourceArn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListTags AWS API Documentation
    #
    # @overload list_tags(params = {})
    # @param [Hash] params ({})
    def list_tags(params = {}, options = {})
      req = build_request(:list_tags, params)
      req.send_request(options)
    end

    # Lists training jobs.
    #
    # @option params [String] :next_token
    #   If the result of the previous `ListTrainingJobs` request was
    #   truncated, the response includes a `NextToken`. To retrieve the next
    #   set of training jobs, use the token in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of training jobs to return in the response.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   A filter that returns only training jobs created after the specified
    #   time (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   A filter that returns only training jobs created before the specified
    #   time (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :last_modified_time_after
    #   A filter that returns only training jobs modified after the specified
    #   time (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :last_modified_time_before
    #   A filter that returns only training jobs modified before the specified
    #   time (timestamp).
    #
    # @option params [String] :name_contains
    #   A string in the training job name. This filter returns only training
    #   jobs whose name contains the specified string.
    #
    # @option params [String] :status_equals
    #   A filter that retrieves only training jobs with a specific status.
    #
    # @option params [String] :sort_by
    #   The field to sort results by. The default is `CreationTime`.
    #
    # @option params [String] :sort_order
    #   The sort order for results. The default is `Ascending`.
    #
    # @return [Types::ListTrainingJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrainingJobsResponse#training_job_summaries #training_job_summaries} => Array&lt;Types::TrainingJobSummary&gt;
    #   * {Types::ListTrainingJobsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_training_jobs({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     creation_time_after: Time.now,
    #     creation_time_before: Time.now,
    #     last_modified_time_after: Time.now,
    #     last_modified_time_before: Time.now,
    #     name_contains: "NameContains",
    #     status_equals: "InProgress", # accepts InProgress, Completed, Failed, Stopping, Stopped
    #     sort_by: "Name", # accepts Name, CreationTime, Status
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #   })
    #
    # @example Response structure
    #
    #   resp.training_job_summaries #=> Array
    #   resp.training_job_summaries[0].training_job_name #=> String
    #   resp.training_job_summaries[0].training_job_arn #=> String
    #   resp.training_job_summaries[0].creation_time #=> Time
    #   resp.training_job_summaries[0].training_end_time #=> Time
    #   resp.training_job_summaries[0].last_modified_time #=> Time
    #   resp.training_job_summaries[0].training_job_status #=> String, one of "InProgress", "Completed", "Failed", "Stopping", "Stopped"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListTrainingJobs AWS API Documentation
    #
    # @overload list_training_jobs(params = {})
    # @param [Hash] params ({})
    def list_training_jobs(params = {}, options = {})
      req = build_request(:list_training_jobs, params)
      req.send_request(options)
    end

    # Gets a list of TrainingJobSummary objects that describe the training
    # jobs that a hyperparameter tuning job launched.
    #
    # @option params [required, String] :hyper_parameter_tuning_job_name
    #   The name of the tuning job whose training jobs you want to list.
    #
    # @option params [String] :next_token
    #   If the result of the previous
    #   `ListTrainingJobsForHyperParameterTuningJob` request was truncated,
    #   the response includes a `NextToken`. To retrieve the next set of
    #   training jobs, use the token in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of training jobs to return. The default value is
    #   10.
    #
    # @option params [String] :status_equals
    #   A filter that returns only training jobs with the specified status.
    #
    # @option params [String] :sort_by
    #   The field to sort results by. The default is `Name`.
    #
    #   If the value of this field is `FinalObjectiveMetricValue`, any
    #   training jobs that did not return an objective metric are not listed.
    #
    # @option params [String] :sort_order
    #   The sort order for results. The default is `Ascending`.
    #
    # @return [Types::ListTrainingJobsForHyperParameterTuningJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrainingJobsForHyperParameterTuningJobResponse#training_job_summaries #training_job_summaries} => Array&lt;Types::HyperParameterTrainingJobSummary&gt;
    #   * {Types::ListTrainingJobsForHyperParameterTuningJobResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_training_jobs_for_hyper_parameter_tuning_job({
    #     hyper_parameter_tuning_job_name: "HyperParameterTuningJobName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     status_equals: "InProgress", # accepts InProgress, Completed, Failed, Stopping, Stopped
    #     sort_by: "Name", # accepts Name, CreationTime, Status, FinalObjectiveMetricValue
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #   })
    #
    # @example Response structure
    #
    #   resp.training_job_summaries #=> Array
    #   resp.training_job_summaries[0].training_job_name #=> String
    #   resp.training_job_summaries[0].training_job_arn #=> String
    #   resp.training_job_summaries[0].tuning_job_name #=> String
    #   resp.training_job_summaries[0].creation_time #=> Time
    #   resp.training_job_summaries[0].training_start_time #=> Time
    #   resp.training_job_summaries[0].training_end_time #=> Time
    #   resp.training_job_summaries[0].training_job_status #=> String, one of "InProgress", "Completed", "Failed", "Stopping", "Stopped"
    #   resp.training_job_summaries[0].tuned_hyper_parameters #=> Hash
    #   resp.training_job_summaries[0].tuned_hyper_parameters["ParameterKey"] #=> String
    #   resp.training_job_summaries[0].failure_reason #=> String
    #   resp.training_job_summaries[0].final_hyper_parameter_tuning_job_objective_metric.type #=> String, one of "Maximize", "Minimize"
    #   resp.training_job_summaries[0].final_hyper_parameter_tuning_job_objective_metric.metric_name #=> String
    #   resp.training_job_summaries[0].final_hyper_parameter_tuning_job_objective_metric.value #=> Float
    #   resp.training_job_summaries[0].objective_status #=> String, one of "Succeeded", "Pending", "Failed"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListTrainingJobsForHyperParameterTuningJob AWS API Documentation
    #
    # @overload list_training_jobs_for_hyper_parameter_tuning_job(params = {})
    # @param [Hash] params ({})
    def list_training_jobs_for_hyper_parameter_tuning_job(params = {}, options = {})
      req = build_request(:list_training_jobs_for_hyper_parameter_tuning_job, params)
      req.send_request(options)
    end

    # Lists transform jobs.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   A filter that returns only transform jobs created after the specified
    #   time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   A filter that returns only transform jobs created before the specified
    #   time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :last_modified_time_after
    #   A filter that returns only transform jobs modified after the specified
    #   time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :last_modified_time_before
    #   A filter that returns only transform jobs modified before the
    #   specified time.
    #
    # @option params [String] :name_contains
    #   A string in the transform job name. This filter returns only transform
    #   jobs whose name contains the specified string.
    #
    # @option params [String] :status_equals
    #   A filter that retrieves only transform jobs with a specific status.
    #
    # @option params [String] :sort_by
    #   The field to sort results by. The default is `CreationTime`.
    #
    # @option params [String] :sort_order
    #   The sort order for results. The default is `Descending`.
    #
    # @option params [String] :next_token
    #   If the result of the previous `ListTransformJobs` request was
    #   truncated, the response includes a `NextToken`. To retrieve the next
    #   set of transform jobs, use the token in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of transform jobs to return in the response. The
    #   default value is `10`.
    #
    # @return [Types::ListTransformJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTransformJobsResponse#transform_job_summaries #transform_job_summaries} => Array&lt;Types::TransformJobSummary&gt;
    #   * {Types::ListTransformJobsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_transform_jobs({
    #     creation_time_after: Time.now,
    #     creation_time_before: Time.now,
    #     last_modified_time_after: Time.now,
    #     last_modified_time_before: Time.now,
    #     name_contains: "NameContains",
    #     status_equals: "InProgress", # accepts InProgress, Completed, Failed, Stopping, Stopped
    #     sort_by: "Name", # accepts Name, CreationTime, Status
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.transform_job_summaries #=> Array
    #   resp.transform_job_summaries[0].transform_job_name #=> String
    #   resp.transform_job_summaries[0].transform_job_arn #=> String
    #   resp.transform_job_summaries[0].creation_time #=> Time
    #   resp.transform_job_summaries[0].transform_end_time #=> Time
    #   resp.transform_job_summaries[0].last_modified_time #=> Time
    #   resp.transform_job_summaries[0].transform_job_status #=> String, one of "InProgress", "Completed", "Failed", "Stopping", "Stopped"
    #   resp.transform_job_summaries[0].failure_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListTransformJobs AWS API Documentation
    #
    # @overload list_transform_jobs(params = {})
    # @param [Hash] params ({})
    def list_transform_jobs(params = {}, options = {})
      req = build_request(:list_transform_jobs, params)
      req.send_request(options)
    end

    # Gets a list of work teams that you have defined in a region. The list
    # may be empty if no work team satisfies the filter specified in the
    # `NameContains` parameter.
    #
    # @option params [String] :sort_by
    #   The field to sort results by. The default is `CreationTime`.
    #
    # @option params [String] :sort_order
    #   The sort order for results. The default is `Ascending`.
    #
    # @option params [String] :name_contains
    #   A string in the work team's name. This filter returns only work teams
    #   whose name contains the specified string.
    #
    # @option params [String] :next_token
    #   If the result of the previous `ListWorkteams` request was truncated,
    #   the response includes a `NextToken`. To retrieve the next set of
    #   labeling jobs, use the token in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of work teams to return in each page of the
    #   response.
    #
    # @return [Types::ListWorkteamsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkteamsResponse#workteams #workteams} => Array&lt;Types::Workteam&gt;
    #   * {Types::ListWorkteamsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workteams({
    #     sort_by: "Name", # accepts Name, CreateDate
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #     name_contains: "WorkteamName",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.workteams #=> Array
    #   resp.workteams[0].workteam_name #=> String
    #   resp.workteams[0].member_definitions #=> Array
    #   resp.workteams[0].member_definitions[0].cognito_member_definition.user_pool #=> String
    #   resp.workteams[0].member_definitions[0].cognito_member_definition.user_group #=> String
    #   resp.workteams[0].member_definitions[0].cognito_member_definition.client_id #=> String
    #   resp.workteams[0].workteam_arn #=> String
    #   resp.workteams[0].product_listing_ids #=> Array
    #   resp.workteams[0].product_listing_ids[0] #=> String
    #   resp.workteams[0].description #=> String
    #   resp.workteams[0].sub_domain #=> String
    #   resp.workteams[0].create_date #=> Time
    #   resp.workteams[0].last_updated_date #=> Time
    #   resp.workteams[0].notification_configuration.notification_topic_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListWorkteams AWS API Documentation
    #
    # @overload list_workteams(params = {})
    # @param [Hash] params ({})
    def list_workteams(params = {}, options = {})
      req = build_request(:list_workteams, params)
      req.send_request(options)
    end

    # Renders the UI template so that you can preview the worker's
    # experience.
    #
    # @option params [required, Types::UiTemplate] :ui_template
    #   A `Template` object containing the worker UI template to render.
    #
    # @option params [required, Types::RenderableTask] :task
    #   A `RenderableTask` object containing a representative task to render.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) that has access to the S3 objects that
    #   are used by the template.
    #
    # @return [Types::RenderUiTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RenderUiTemplateResponse#rendered_content #rendered_content} => String
    #   * {Types::RenderUiTemplateResponse#errors #errors} => Array&lt;Types::RenderingError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.render_ui_template({
    #     ui_template: { # required
    #       content: "TemplateContent", # required
    #     },
    #     task: { # required
    #       input: "TaskInput", # required
    #     },
    #     role_arn: "RoleArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rendered_content #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].code #=> String
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/RenderUiTemplate AWS API Documentation
    #
    # @overload render_ui_template(params = {})
    # @param [Hash] params ({})
    def render_ui_template(params = {}, options = {})
      req = build_request(:render_ui_template, params)
      req.send_request(options)
    end

    # Finds Amazon SageMaker resources that match a search query. Matching
    # resource objects are returned as a list of `SearchResult` objects in
    # the response. You can sort the search results by any resource property
    # in a ascending or descending order.
    #
    # You can query against the following value types: numerical, text,
    # Booleans, and timestamps.
    #
    # @option params [required, String] :resource
    #   The name of the Amazon SageMaker resource to search for. Currently,
    #   the only valid `Resource` value is `TrainingJob`.
    #
    # @option params [Types::SearchExpression] :search_expression
    #   A Boolean conditional statement. Resource objects must satisfy this
    #   condition to be included in search results. You must provide at least
    #   one subexpression, filter, or nested filter. The maximum number of
    #   recursive `SubExpressions`, `NestedFilters`, and `Filters` that can be
    #   included in a `SearchExpression` object is 50.
    #
    # @option params [String] :sort_by
    #   The name of the resource property used to sort the `SearchResults`.
    #   The default is `LastModifiedTime`.
    #
    # @option params [String] :sort_order
    #   How `SearchResults` are ordered. Valid values are `Ascending` or
    #   `Descending`. The default is `Descending`.
    #
    # @option params [String] :next_token
    #   If more than `MaxResults` resource objects match the specified
    #   `SearchExpression`, the `SearchResponse` includes a `NextToken`. The
    #   `NextToken` can be passed to the next `SearchRequest` to continue
    #   retrieving results for the specified `SearchExpression` and `Sort`
    #   parameters.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a `SearchResponse`.
    #
    # @return [Types::SearchResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchResponse#results #results} => Array&lt;Types::SearchRecord&gt;
    #   * {Types::SearchResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search({
    #     resource: "TrainingJob", # required, accepts TrainingJob
    #     search_expression: {
    #       filters: [
    #         {
    #           name: "ResourcePropertyName", # required
    #           operator: "Equals", # accepts Equals, NotEquals, GreaterThan, GreaterThanOrEqualTo, LessThan, LessThanOrEqualTo, Contains
    #           value: "FilterValue",
    #         },
    #       ],
    #       nested_filters: [
    #         {
    #           nested_property_name: "ResourcePropertyName", # required
    #           filters: [ # required
    #             {
    #               name: "ResourcePropertyName", # required
    #               operator: "Equals", # accepts Equals, NotEquals, GreaterThan, GreaterThanOrEqualTo, LessThan, LessThanOrEqualTo, Contains
    #               value: "FilterValue",
    #             },
    #           ],
    #         },
    #       ],
    #       sub_expressions: [
    #         {
    #           # recursive SearchExpression
    #         },
    #       ],
    #       operator: "And", # accepts And, Or
    #     },
    #     sort_by: "ResourcePropertyName",
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].training_job.training_job_name #=> String
    #   resp.results[0].training_job.training_job_arn #=> String
    #   resp.results[0].training_job.tuning_job_arn #=> String
    #   resp.results[0].training_job.labeling_job_arn #=> String
    #   resp.results[0].training_job.model_artifacts.s3_model_artifacts #=> String
    #   resp.results[0].training_job.training_job_status #=> String, one of "InProgress", "Completed", "Failed", "Stopping", "Stopped"
    #   resp.results[0].training_job.secondary_status #=> String, one of "Starting", "LaunchingMLInstances", "PreparingTrainingStack", "Downloading", "DownloadingTrainingImage", "Training", "Uploading", "Stopping", "Stopped", "MaxRuntimeExceeded", "Completed", "Failed"
    #   resp.results[0].training_job.failure_reason #=> String
    #   resp.results[0].training_job.hyper_parameters #=> Hash
    #   resp.results[0].training_job.hyper_parameters["ParameterKey"] #=> String
    #   resp.results[0].training_job.algorithm_specification.training_image #=> String
    #   resp.results[0].training_job.algorithm_specification.algorithm_name #=> String
    #   resp.results[0].training_job.algorithm_specification.training_input_mode #=> String, one of "Pipe", "File"
    #   resp.results[0].training_job.algorithm_specification.metric_definitions #=> Array
    #   resp.results[0].training_job.algorithm_specification.metric_definitions[0].name #=> String
    #   resp.results[0].training_job.algorithm_specification.metric_definitions[0].regex #=> String
    #   resp.results[0].training_job.role_arn #=> String
    #   resp.results[0].training_job.input_data_config #=> Array
    #   resp.results[0].training_job.input_data_config[0].channel_name #=> String
    #   resp.results[0].training_job.input_data_config[0].data_source.s3_data_source.s3_data_type #=> String, one of "ManifestFile", "S3Prefix", "AugmentedManifestFile"
    #   resp.results[0].training_job.input_data_config[0].data_source.s3_data_source.s3_uri #=> String
    #   resp.results[0].training_job.input_data_config[0].data_source.s3_data_source.s3_data_distribution_type #=> String, one of "FullyReplicated", "ShardedByS3Key"
    #   resp.results[0].training_job.input_data_config[0].data_source.s3_data_source.attribute_names #=> Array
    #   resp.results[0].training_job.input_data_config[0].data_source.s3_data_source.attribute_names[0] #=> String
    #   resp.results[0].training_job.input_data_config[0].content_type #=> String
    #   resp.results[0].training_job.input_data_config[0].compression_type #=> String, one of "None", "Gzip"
    #   resp.results[0].training_job.input_data_config[0].record_wrapper_type #=> String, one of "None", "RecordIO"
    #   resp.results[0].training_job.input_data_config[0].input_mode #=> String, one of "Pipe", "File"
    #   resp.results[0].training_job.input_data_config[0].shuffle_config.seed #=> Integer
    #   resp.results[0].training_job.output_data_config.kms_key_id #=> String
    #   resp.results[0].training_job.output_data_config.s3_output_path #=> String
    #   resp.results[0].training_job.resource_config.instance_type #=> String, one of "ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.m5.large", "ml.m5.xlarge", "ml.m5.2xlarge", "ml.m5.4xlarge", "ml.m5.12xlarge", "ml.m5.24xlarge", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.4xlarge", "ml.c4.8xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge", "ml.c5.18xlarge"
    #   resp.results[0].training_job.resource_config.instance_count #=> Integer
    #   resp.results[0].training_job.resource_config.volume_size_in_gb #=> Integer
    #   resp.results[0].training_job.resource_config.volume_kms_key_id #=> String
    #   resp.results[0].training_job.vpc_config.security_group_ids #=> Array
    #   resp.results[0].training_job.vpc_config.security_group_ids[0] #=> String
    #   resp.results[0].training_job.vpc_config.subnets #=> Array
    #   resp.results[0].training_job.vpc_config.subnets[0] #=> String
    #   resp.results[0].training_job.stopping_condition.max_runtime_in_seconds #=> Integer
    #   resp.results[0].training_job.creation_time #=> Time
    #   resp.results[0].training_job.training_start_time #=> Time
    #   resp.results[0].training_job.training_end_time #=> Time
    #   resp.results[0].training_job.last_modified_time #=> Time
    #   resp.results[0].training_job.secondary_status_transitions #=> Array
    #   resp.results[0].training_job.secondary_status_transitions[0].status #=> String, one of "Starting", "LaunchingMLInstances", "PreparingTrainingStack", "Downloading", "DownloadingTrainingImage", "Training", "Uploading", "Stopping", "Stopped", "MaxRuntimeExceeded", "Completed", "Failed"
    #   resp.results[0].training_job.secondary_status_transitions[0].start_time #=> Time
    #   resp.results[0].training_job.secondary_status_transitions[0].end_time #=> Time
    #   resp.results[0].training_job.secondary_status_transitions[0].status_message #=> String
    #   resp.results[0].training_job.final_metric_data_list #=> Array
    #   resp.results[0].training_job.final_metric_data_list[0].metric_name #=> String
    #   resp.results[0].training_job.final_metric_data_list[0].value #=> Float
    #   resp.results[0].training_job.final_metric_data_list[0].timestamp #=> Time
    #   resp.results[0].training_job.enable_network_isolation #=> Boolean
    #   resp.results[0].training_job.enable_inter_container_traffic_encryption #=> Boolean
    #   resp.results[0].training_job.tags #=> Array
    #   resp.results[0].training_job.tags[0].key #=> String
    #   resp.results[0].training_job.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/Search AWS API Documentation
    #
    # @overload search(params = {})
    # @param [Hash] params ({})
    def search(params = {}, options = {})
      req = build_request(:search, params)
      req.send_request(options)
    end

    # Launches an ML compute instance with the latest version of the
    # libraries and attaches your ML storage volume. After configuring the
    # notebook instance, Amazon SageMaker sets the notebook instance status
    # to `InService`. A notebook instance's status must be `InService`
    # before you can connect to your Jupyter notebook.
    #
    # @option params [required, String] :notebook_instance_name
    #   The name of the notebook instance to start.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_notebook_instance({
    #     notebook_instance_name: "NotebookInstanceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StartNotebookInstance AWS API Documentation
    #
    # @overload start_notebook_instance(params = {})
    # @param [Hash] params ({})
    def start_notebook_instance(params = {}, options = {})
      req = build_request(:start_notebook_instance, params)
      req.send_request(options)
    end

    # Stops a model compilation job.
    #
    # To stop a job, Amazon SageMaker sends the algorithm the SIGTERM
    # signal. This gracefully shuts the job down. If the job hasn't
    # stopped, it sends the SIGKILL signal.
    #
    # When it receives a `StopCompilationJob` request, Amazon SageMaker
    # changes the CompilationJobSummary$CompilationJobStatus of the job to
    # `Stopping`. After Amazon SageMaker stops the job, it sets the
    # CompilationJobSummary$CompilationJobStatus to `Stopped`.
    #
    # @option params [required, String] :compilation_job_name
    #   The name of the model compilation job to stop.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_compilation_job({
    #     compilation_job_name: "EntityName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StopCompilationJob AWS API Documentation
    #
    # @overload stop_compilation_job(params = {})
    # @param [Hash] params ({})
    def stop_compilation_job(params = {}, options = {})
      req = build_request(:stop_compilation_job, params)
      req.send_request(options)
    end

    # Stops a running hyperparameter tuning job and all running training
    # jobs that the tuning job launched.
    #
    # All model artifacts output from the training jobs are stored in Amazon
    # Simple Storage Service (Amazon S3). All data that the training jobs
    # write to Amazon CloudWatch Logs are still available in CloudWatch.
    # After the tuning job moves to the `Stopped` state, it releases all
    # reserved resources for the tuning job.
    #
    # @option params [required, String] :hyper_parameter_tuning_job_name
    #   The name of the tuning job to stop.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_hyper_parameter_tuning_job({
    #     hyper_parameter_tuning_job_name: "HyperParameterTuningJobName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StopHyperParameterTuningJob AWS API Documentation
    #
    # @overload stop_hyper_parameter_tuning_job(params = {})
    # @param [Hash] params ({})
    def stop_hyper_parameter_tuning_job(params = {}, options = {})
      req = build_request(:stop_hyper_parameter_tuning_job, params)
      req.send_request(options)
    end

    # Stops a running labeling job. A job that is stopped cannot be
    # restarted. Any results obtained before the job is stopped are placed
    # in the Amazon S3 output bucket.
    #
    # @option params [required, String] :labeling_job_name
    #   The name of the labeling job to stop.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_labeling_job({
    #     labeling_job_name: "LabelingJobName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StopLabelingJob AWS API Documentation
    #
    # @overload stop_labeling_job(params = {})
    # @param [Hash] params ({})
    def stop_labeling_job(params = {}, options = {})
      req = build_request(:stop_labeling_job, params)
      req.send_request(options)
    end

    # Terminates the ML compute instance. Before terminating the instance,
    # Amazon SageMaker disconnects the ML storage volume from it. Amazon
    # SageMaker preserves the ML storage volume. Amazon SageMaker stops
    # charging you for the ML compute instance when you call
    # `StopNotebookInstance`.
    #
    # To access data on the ML storage volume for a notebook instance that
    # has been terminated, call the `StartNotebookInstance` API.
    # `StartNotebookInstance` launches another ML compute instance,
    # configures it, and attaches the preserved ML storage volume so you can
    # continue your work.
    #
    # @option params [required, String] :notebook_instance_name
    #   The name of the notebook instance to terminate.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_notebook_instance({
    #     notebook_instance_name: "NotebookInstanceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StopNotebookInstance AWS API Documentation
    #
    # @overload stop_notebook_instance(params = {})
    # @param [Hash] params ({})
    def stop_notebook_instance(params = {}, options = {})
      req = build_request(:stop_notebook_instance, params)
      req.send_request(options)
    end

    # Stops a training job. To stop a job, Amazon SageMaker sends the
    # algorithm the `SIGTERM` signal, which delays job termination for 120
    # seconds. Algorithms might use this 120-second window to save the model
    # artifacts, so the results of the training is not lost.
    #
    # When it receives a `StopTrainingJob` request, Amazon SageMaker changes
    # the status of the job to `Stopping`. After Amazon SageMaker stops the
    # job, it sets the status to `Stopped`.
    #
    # @option params [required, String] :training_job_name
    #   The name of the training job to stop.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_training_job({
    #     training_job_name: "TrainingJobName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StopTrainingJob AWS API Documentation
    #
    # @overload stop_training_job(params = {})
    # @param [Hash] params ({})
    def stop_training_job(params = {}, options = {})
      req = build_request(:stop_training_job, params)
      req.send_request(options)
    end

    # Stops a transform job.
    #
    # When Amazon SageMaker receives a `StopTransformJob` request, the
    # status of the job changes to `Stopping`. After Amazon SageMaker stops
    # the job, the status is set to `Stopped`. When you stop a transform job
    # before it is completed, Amazon SageMaker doesn't store the job's
    # output in Amazon S3.
    #
    # @option params [required, String] :transform_job_name
    #   The name of the transform job to stop.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_transform_job({
    #     transform_job_name: "TransformJobName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StopTransformJob AWS API Documentation
    #
    # @overload stop_transform_job(params = {})
    # @param [Hash] params ({})
    def stop_transform_job(params = {}, options = {})
      req = build_request(:stop_transform_job, params)
      req.send_request(options)
    end

    # Updates the specified Git repository with the specified values.
    #
    # @option params [required, String] :code_repository_name
    #   The name of the Git repository to update.
    #
    # @option params [Types::GitConfigForUpdate] :git_config
    #   The configuration of the git repository, including the URL and the
    #   Amazon Resource Name (ARN) of the AWS Secrets Manager secret that
    #   contains the credentials used to access the repository. The secret
    #   must have a staging label of `AWSCURRENT` and must be in the following
    #   format:
    #
    #   `\{"username": UserName, "password": Password\}`
    #
    # @return [Types::UpdateCodeRepositoryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCodeRepositoryOutput#code_repository_arn #code_repository_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_code_repository({
    #     code_repository_name: "EntityName", # required
    #     git_config: {
    #       secret_arn: "SecretArn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.code_repository_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateCodeRepository AWS API Documentation
    #
    # @overload update_code_repository(params = {})
    # @param [Hash] params ({})
    def update_code_repository(params = {}, options = {})
      req = build_request(:update_code_repository, params)
      req.send_request(options)
    end

    # Deploys the new `EndpointConfig` specified in the request, switches to
    # using newly created endpoint, and then deletes resources provisioned
    # for the endpoint using the previous `EndpointConfig` (there is no
    # availability loss).
    #
    # When Amazon SageMaker receives the request, it sets the endpoint
    # status to `Updating`. After updating the endpoint, it sets the status
    # to `InService`. To check the status of an endpoint, use the
    # [DescribeEndpoint][1] API.
    #
    # <note markdown="1"> You must not delete an `EndpointConfig` in use by an endpoint that is
    # live or while the `UpdateEndpoint` or `CreateEndpoint` operations are
    # being performed on the endpoint. To update an endpoint, you must
    # create a new `EndpointConfig`.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/API_DescribeEndpoint.html
    #
    # @option params [required, String] :endpoint_name
    #   The name of the endpoint whose configuration you want to update.
    #
    # @option params [required, String] :endpoint_config_name
    #   The name of the new endpoint configuration.
    #
    # @return [Types::UpdateEndpointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEndpointOutput#endpoint_arn #endpoint_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_endpoint({
    #     endpoint_name: "EndpointName", # required
    #     endpoint_config_name: "EndpointConfigName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateEndpoint AWS API Documentation
    #
    # @overload update_endpoint(params = {})
    # @param [Hash] params ({})
    def update_endpoint(params = {}, options = {})
      req = build_request(:update_endpoint, params)
      req.send_request(options)
    end

    # Updates variant weight of one or more variants associated with an
    # existing endpoint, or capacity of one variant associated with an
    # existing endpoint. When it receives the request, Amazon SageMaker sets
    # the endpoint status to `Updating`. After updating the endpoint, it
    # sets the status to `InService`. To check the status of an endpoint,
    # use the [DescribeEndpoint][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/API_DescribeEndpoint.html
    #
    # @option params [required, String] :endpoint_name
    #   The name of an existing Amazon SageMaker endpoint.
    #
    # @option params [required, Array<Types::DesiredWeightAndCapacity>] :desired_weights_and_capacities
    #   An object that provides new capacity and weight values for a variant.
    #
    # @return [Types::UpdateEndpointWeightsAndCapacitiesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEndpointWeightsAndCapacitiesOutput#endpoint_arn #endpoint_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_endpoint_weights_and_capacities({
    #     endpoint_name: "EndpointName", # required
    #     desired_weights_and_capacities: [ # required
    #       {
    #         variant_name: "VariantName", # required
    #         desired_weight: 1.0,
    #         desired_instance_count: 1,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateEndpointWeightsAndCapacities AWS API Documentation
    #
    # @overload update_endpoint_weights_and_capacities(params = {})
    # @param [Hash] params ({})
    def update_endpoint_weights_and_capacities(params = {}, options = {})
      req = build_request(:update_endpoint_weights_and_capacities, params)
      req.send_request(options)
    end

    # Updates a notebook instance. NotebookInstance updates include
    # upgrading or downgrading the ML compute instance used for your
    # notebook instance to accommodate changes in your workload
    # requirements.
    #
    # @option params [required, String] :notebook_instance_name
    #   The name of the notebook instance to update.
    #
    # @option params [String] :instance_type
    #   The Amazon ML compute instance type.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker
    #   can assume to access the notebook instance. For more information, see
    #   [Amazon SageMaker Roles][1].
    #
    #   <note markdown="1"> To be able to pass this role to Amazon SageMaker, the caller of this
    #   API must have the `iam:PassRole` permission.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html
    #
    # @option params [String] :lifecycle_config_name
    #   The name of a lifecycle configuration to associate with the notebook
    #   instance. For information about lifestyle configurations, see [Step
    #   2.1: (Optional) Customize a Notebook Instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html
    #
    # @option params [Boolean] :disassociate_lifecycle_config
    #   Set to `true` to remove the notebook instance lifecycle configuration
    #   currently associated with the notebook instance. This operation is
    #   idempotent. If you specify a lifecycle configuration that is not
    #   associated with the notebook instance when you call this method, it
    #   does not throw an error.
    #
    # @option params [Integer] :volume_size_in_gb
    #   The size, in GB, of the ML storage volume to attach to the notebook
    #   instance. The default value is 5 GB.
    #
    # @option params [String] :default_code_repository
    #   The Git repository to associate with the notebook instance as its
    #   default code repository. This can be either the name of a Git
    #   repository stored as a resource in your account, or the URL of a Git
    #   repository in [AWS CodeCommit][1] or in any other Git repository. When
    #   you open a notebook instance, it opens in the directory that contains
    #   this repository. For more information, see [Associating Git
    #   Repositories with Amazon SageMaker Notebook Instances][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html
    #   [2]: http://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html
    #
    # @option params [Array<String>] :additional_code_repositories
    #   An array of up to three Git repositories to associate with the
    #   notebook instance. These can be either the names of Git repositories
    #   stored as resources in your account, or the URL of Git repositories in
    #   [AWS CodeCommit][1] or in any other Git repository. These repositories
    #   are cloned at the same level as the default repository of your
    #   notebook instance. For more information, see [Associating Git
    #   Repositories with Amazon SageMaker Notebook Instances][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html
    #   [2]: http://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html
    #
    # @option params [Array<String>] :accelerator_types
    #   A list of the Elastic Inference (EI) instance types to associate with
    #   this notebook instance. Currently only one EI instance type can be
    #   associated with a notebook instance. For more information, see [Using
    #   Elastic Inference in Amazon SageMaker][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/ei.html
    #
    # @option params [Boolean] :disassociate_accelerator_types
    #   A list of the Elastic Inference (EI) instance types to remove from
    #   this notebook instance. This operation is idempotent. If you specify
    #   an accelerator type that is not associated with the notebook instance
    #   when you call this method, it does not throw an error.
    #
    # @option params [Boolean] :disassociate_default_code_repository
    #   The name or URL of the default Git repository to remove from this
    #   notebook instance. This operation is idempotent. If you specify a Git
    #   repository that is not associated with the notebook instance when you
    #   call this method, it does not throw an error.
    #
    # @option params [Boolean] :disassociate_additional_code_repositories
    #   A list of names or URLs of the default Git repositories to remove from
    #   this notebook instance. This operation is idempotent. If you specify a
    #   Git repository that is not associated with the notebook instance when
    #   you call this method, it does not throw an error.
    #
    # @option params [String] :root_access
    #   Whether root access is enabled or disabled for users of the notebook
    #   instance. The default value is `Enabled`.
    #
    #   <note markdown="1"> If you set this to `Disabled`, users don't have root access on the
    #   notebook instance, but lifecycle configuration scripts still run with
    #   root permissions.
    #
    #    </note>
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_notebook_instance({
    #     notebook_instance_name: "NotebookInstanceName", # required
    #     instance_type: "ml.t2.medium", # accepts ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5d.xlarge, ml.c5d.2xlarge, ml.c5d.4xlarge, ml.c5d.9xlarge, ml.c5d.18xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge
    #     role_arn: "RoleArn",
    #     lifecycle_config_name: "NotebookInstanceLifecycleConfigName",
    #     disassociate_lifecycle_config: false,
    #     volume_size_in_gb: 1,
    #     default_code_repository: "CodeRepositoryNameOrUrl",
    #     additional_code_repositories: ["CodeRepositoryNameOrUrl"],
    #     accelerator_types: ["ml.eia1.medium"], # accepts ml.eia1.medium, ml.eia1.large, ml.eia1.xlarge
    #     disassociate_accelerator_types: false,
    #     disassociate_default_code_repository: false,
    #     disassociate_additional_code_repositories: false,
    #     root_access: "Enabled", # accepts Enabled, Disabled
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateNotebookInstance AWS API Documentation
    #
    # @overload update_notebook_instance(params = {})
    # @param [Hash] params ({})
    def update_notebook_instance(params = {}, options = {})
      req = build_request(:update_notebook_instance, params)
      req.send_request(options)
    end

    # Updates a notebook instance lifecycle configuration created with the
    # CreateNotebookInstanceLifecycleConfig API.
    #
    # @option params [required, String] :notebook_instance_lifecycle_config_name
    #   The name of the lifecycle configuration.
    #
    # @option params [Array<Types::NotebookInstanceLifecycleHook>] :on_create
    #   The shell script that runs only once, when you create a notebook
    #   instance
    #
    # @option params [Array<Types::NotebookInstanceLifecycleHook>] :on_start
    #   The shell script that runs every time you start a notebook instance,
    #   including when you create the notebook instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_notebook_instance_lifecycle_config({
    #     notebook_instance_lifecycle_config_name: "NotebookInstanceLifecycleConfigName", # required
    #     on_create: [
    #       {
    #         content: "NotebookInstanceLifecycleConfigContent",
    #       },
    #     ],
    #     on_start: [
    #       {
    #         content: "NotebookInstanceLifecycleConfigContent",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateNotebookInstanceLifecycleConfig AWS API Documentation
    #
    # @overload update_notebook_instance_lifecycle_config(params = {})
    # @param [Hash] params ({})
    def update_notebook_instance_lifecycle_config(params = {}, options = {})
      req = build_request(:update_notebook_instance_lifecycle_config, params)
      req.send_request(options)
    end

    # Updates an existing work team with new member definitions or
    # description.
    #
    # @option params [required, String] :workteam_name
    #   The name of the work team to update.
    #
    # @option params [Array<Types::MemberDefinition>] :member_definitions
    #   A list of `MemberDefinition` objects that contain the updated work
    #   team members.
    #
    # @option params [String] :description
    #   An updated description for the work team.
    #
    # @option params [Types::NotificationConfiguration] :notification_configuration
    #   Configures SNS topic notifications for available or expiring work
    #   items
    #
    # @return [Types::UpdateWorkteamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWorkteamResponse#workteam #workteam} => Types::Workteam
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workteam({
    #     workteam_name: "WorkteamName", # required
    #     member_definitions: [
    #       {
    #         cognito_member_definition: {
    #           user_pool: "CognitoUserPool", # required
    #           user_group: "CognitoUserGroup", # required
    #           client_id: "CognitoClientId", # required
    #         },
    #       },
    #     ],
    #     description: "String200",
    #     notification_configuration: {
    #       notification_topic_arn: "NotificationTopicArn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.workteam.workteam_name #=> String
    #   resp.workteam.member_definitions #=> Array
    #   resp.workteam.member_definitions[0].cognito_member_definition.user_pool #=> String
    #   resp.workteam.member_definitions[0].cognito_member_definition.user_group #=> String
    #   resp.workteam.member_definitions[0].cognito_member_definition.client_id #=> String
    #   resp.workteam.workteam_arn #=> String
    #   resp.workteam.product_listing_ids #=> Array
    #   resp.workteam.product_listing_ids[0] #=> String
    #   resp.workteam.description #=> String
    #   resp.workteam.sub_domain #=> String
    #   resp.workteam.create_date #=> Time
    #   resp.workteam.last_updated_date #=> Time
    #   resp.workteam.notification_configuration.notification_topic_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateWorkteam AWS API Documentation
    #
    # @overload update_workteam(params = {})
    # @param [Hash] params ({})
    def update_workteam(params = {}, options = {})
      req = build_request(:update_workteam, params)
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
      context[:gem_name] = 'aws-sdk-sagemaker'
      context[:gem_version] = '1.37.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name                        | params                        | :delay   | :max_attempts |
    # | ---------------------------------- | ----------------------------- | -------- | ------------- |
    # | endpoint_deleted                   | {#describe_endpoint}          | 30       | 60            |
    # | endpoint_in_service                | {#describe_endpoint}          | 30       | 120           |
    # | notebook_instance_deleted          | {#describe_notebook_instance} | 30       | 60            |
    # | notebook_instance_in_service       | {#describe_notebook_instance} | 30       | 60            |
    # | notebook_instance_stopped          | {#describe_notebook_instance} | 30       | 60            |
    # | training_job_completed_or_stopped  | {#describe_training_job}      | 120      | 180           |
    # | transform_job_completed_or_stopped | {#describe_transform_job}     | 60       | 60            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

    def waiters
      {
        endpoint_deleted: Waiters::EndpointDeleted,
        endpoint_in_service: Waiters::EndpointInService,
        notebook_instance_deleted: Waiters::NotebookInstanceDeleted,
        notebook_instance_in_service: Waiters::NotebookInstanceInService,
        notebook_instance_stopped: Waiters::NotebookInstanceStopped,
        training_job_completed_or_stopped: Waiters::TrainingJobCompletedOrStopped,
        transform_job_completed_or_stopped: Waiters::TransformJobCompletedOrStopped
      }
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
