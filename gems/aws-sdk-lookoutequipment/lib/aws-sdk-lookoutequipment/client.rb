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
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:lookoutequipment)

module Aws::LookoutEquipment
  # An API client for LookoutEquipment.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::LookoutEquipment::Client.new(
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

    @identifier = :lookoutequipment

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
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
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

    # Creates a container for a collection of data being ingested for
    # analysis. The dataset contains the metadata describing where the data
    # is and what the data actually looks like. In other words, it contains
    # the location of the data source, the data schema, and other
    # information. A dataset also contains any tags associated with the
    # ingested data.
    #
    # @option params [required, String] :dataset_name
    #   The name of the dataset being created.
    #
    # @option params [required, Types::DatasetSchema] :dataset_schema
    #   A JSON description of the data that is in each time series dataset,
    #   including names, column names, and data types.
    #
    # @option params [String] :server_side_kms_key_id
    #   Provides the identifier of the KMS key used to encrypt dataset data by
    #   Amazon Lookout for Equipment.
    #
    # @option params [required, String] :client_token
    #   A unique identifier for the request. If you do not set the client
    #   request token, Amazon Lookout for Equipment generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   Any tags associated with the ingested data described in the dataset.
    #
    # @return [Types::CreateDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDatasetResponse#dataset_name #dataset_name} => String
    #   * {Types::CreateDatasetResponse#dataset_arn #dataset_arn} => String
    #   * {Types::CreateDatasetResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset({
    #     dataset_name: "DatasetName", # required
    #     dataset_schema: { # required
    #       inline_data_schema: "InlineDataSchema",
    #     },
    #     server_side_kms_key_id: "NameOrArn",
    #     client_token: "IdempotenceToken", # required
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
    #   resp.dataset_name #=> String
    #   resp.dataset_arn #=> String
    #   resp.status #=> String, one of "CREATED", "INGESTION_IN_PROGRESS", "ACTIVE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/CreateDataset AWS API Documentation
    #
    # @overload create_dataset(params = {})
    # @param [Hash] params ({})
    def create_dataset(params = {}, options = {})
      req = build_request(:create_dataset, params)
      req.send_request(options)
    end

    # Creates a scheduled inference. Scheduling an inference is setting up a
    # continuous real-time inference plan to analyze new measurement data.
    # When setting up the schedule, you provide an S3 bucket location for
    # the input data, assign it a delimiter between separate entries in the
    # data, set an offset delay if desired, and set the frequency of
    # inferencing. You must also provide an S3 bucket location for the
    # output data.
    #
    # @option params [required, String] :model_name
    #   The name of the previously trained ML model being used to create the
    #   inference scheduler.
    #
    # @option params [required, String] :inference_scheduler_name
    #   The name of the inference scheduler being created.
    #
    # @option params [Integer] :data_delay_offset_in_minutes
    #   A period of time (in minutes) by which inference on the data is
    #   delayed after the data starts. For instance, if you select an offset
    #   delay time of five minutes, inference will not begin on the data until
    #   the first data measurement after the five minute mark. For example, if
    #   five minutes is selected, the inference scheduler will wake up at the
    #   configured frequency with the additional five minute delay time to
    #   check the customer S3 bucket. The customer can upload data at the same
    #   frequency and they don't need to stop and restart the scheduler when
    #   uploading new data.
    #
    # @option params [required, String] :data_upload_frequency
    #   How often data is uploaded to the source S3 bucket for the input data.
    #   The value chosen is the length of time between data uploads. For
    #   instance, if you select 5 minutes, Amazon Lookout for Equipment will
    #   upload the real-time data to the source bucket once every 5 minutes.
    #   This frequency also determines how often Amazon Lookout for Equipment
    #   starts a scheduled inference on your data. In this example, it starts
    #   once every 5 minutes.
    #
    # @option params [required, Types::InferenceInputConfiguration] :data_input_configuration
    #   Specifies configuration information for the input data for the
    #   inference scheduler, including delimiter, format, and dataset
    #   location.
    #
    # @option params [required, Types::InferenceOutputConfiguration] :data_output_configuration
    #   Specifies configuration information for the output results for the
    #   inference scheduler, including the S3 location for the output.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of a role with permission to access the
    #   data source being used for the inference.
    #
    # @option params [String] :server_side_kms_key_id
    #   Provides the identifier of the KMS key used to encrypt inference
    #   scheduler data by Amazon Lookout for Equipment.
    #
    # @option params [required, String] :client_token
    #   A unique identifier for the request. If you do not set the client
    #   request token, Amazon Lookout for Equipment generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   Any tags associated with the inference scheduler.
    #
    # @return [Types::CreateInferenceSchedulerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInferenceSchedulerResponse#inference_scheduler_arn #inference_scheduler_arn} => String
    #   * {Types::CreateInferenceSchedulerResponse#inference_scheduler_name #inference_scheduler_name} => String
    #   * {Types::CreateInferenceSchedulerResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_inference_scheduler({
    #     model_name: "ModelName", # required
    #     inference_scheduler_name: "InferenceSchedulerName", # required
    #     data_delay_offset_in_minutes: 1,
    #     data_upload_frequency: "PT5M", # required, accepts PT5M, PT10M, PT15M, PT30M, PT1H
    #     data_input_configuration: { # required
    #       s3_input_configuration: {
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix",
    #       },
    #       input_time_zone_offset: "TimeZoneOffset",
    #       inference_input_name_configuration: {
    #         timestamp_format: "FileNameTimestampFormat",
    #         component_timestamp_delimiter: "ComponentTimestampDelimiter",
    #       },
    #     },
    #     data_output_configuration: { # required
    #       s3_output_configuration: { # required
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix",
    #       },
    #       kms_key_id: "NameOrArn",
    #     },
    #     role_arn: "IamRoleArn", # required
    #     server_side_kms_key_id: "NameOrArn",
    #     client_token: "IdempotenceToken", # required
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
    #   resp.inference_scheduler_arn #=> String
    #   resp.inference_scheduler_name #=> String
    #   resp.status #=> String, one of "PENDING", "RUNNING", "STOPPING", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/CreateInferenceScheduler AWS API Documentation
    #
    # @overload create_inference_scheduler(params = {})
    # @param [Hash] params ({})
    def create_inference_scheduler(params = {}, options = {})
      req = build_request(:create_inference_scheduler, params)
      req.send_request(options)
    end

    # Creates an ML model for data inference.
    #
    # A machine-learning (ML) model is a mathematical model that finds
    # patterns in your data. In Amazon Lookout for Equipment, the model
    # learns the patterns of normal behavior and detects abnormal behavior
    # that could be potential equipment failure (or maintenance events). The
    # models are made by analyzing normal data and abnormalities in machine
    # behavior that have already occurred.
    #
    # Your model is trained using a portion of the data from your dataset
    # and uses that data to learn patterns of normal behavior and abnormal
    # patterns that lead to equipment failure. Another portion of the data
    # is used to evaluate the model's accuracy.
    #
    # @option params [required, String] :model_name
    #   The name for the ML model to be created.
    #
    # @option params [required, String] :dataset_name
    #   The name of the dataset for the ML model being created.
    #
    # @option params [Types::DatasetSchema] :dataset_schema
    #   The data schema for the ML model being created.
    #
    # @option params [Types::LabelsInputConfiguration] :labels_input_configuration
    #   The input configuration for the labels being used for the ML model
    #   that's being created.
    #
    # @option params [required, String] :client_token
    #   A unique identifier for the request. If you do not set the client
    #   request token, Amazon Lookout for Equipment generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Time,DateTime,Date,Integer,String] :training_data_start_time
    #   Indicates the time reference in the dataset that should be used to
    #   begin the subset of training data for the ML model.
    #
    # @option params [Time,DateTime,Date,Integer,String] :training_data_end_time
    #   Indicates the time reference in the dataset that should be used to end
    #   the subset of training data for the ML model.
    #
    # @option params [Time,DateTime,Date,Integer,String] :evaluation_data_start_time
    #   Indicates the time reference in the dataset that should be used to
    #   begin the subset of evaluation data for the ML model.
    #
    # @option params [Time,DateTime,Date,Integer,String] :evaluation_data_end_time
    #   Indicates the time reference in the dataset that should be used to end
    #   the subset of evaluation data for the ML model.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of a role with permission to access the
    #   data source being used to create the ML model.
    #
    # @option params [Types::DataPreProcessingConfiguration] :data_pre_processing_configuration
    #   The configuration is the `TargetSamplingRate`, which is the sampling
    #   rate of the data after post processing by Amazon Lookout for
    #   Equipment. For example, if you provide data that has been collected at
    #   a 1 second level and you want the system to resample the data at a 1
    #   minute rate before training, the `TargetSamplingRate` is 1 minute.
    #
    #   When providing a value for the `TargetSamplingRate`, you must attach
    #   the prefix "PT" to the rate you want. The value for a 1 second rate
    #   is therefore *PT1S*, the value for a 15 minute rate is *PT15M*, and
    #   the value for a 1 hour rate is *PT1H*
    #
    # @option params [String] :server_side_kms_key_id
    #   Provides the identifier of the KMS key used to encrypt model data by
    #   Amazon Lookout for Equipment.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Any tags associated with the ML model being created.
    #
    # @option params [String] :off_condition
    #   Indicates that the asset associated with this sensor has been shut
    #   off. As long as this condition is met, Lookout for Equipment will not
    #   use data from this asset for training, evaluation, or inference.
    #
    # @return [Types::CreateModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateModelResponse#model_arn #model_arn} => String
    #   * {Types::CreateModelResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_model({
    #     model_name: "ModelName", # required
    #     dataset_name: "DatasetIdentifier", # required
    #     dataset_schema: {
    #       inline_data_schema: "InlineDataSchema",
    #     },
    #     labels_input_configuration: {
    #       s3_input_configuration: { # required
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix",
    #       },
    #     },
    #     client_token: "IdempotenceToken", # required
    #     training_data_start_time: Time.now,
    #     training_data_end_time: Time.now,
    #     evaluation_data_start_time: Time.now,
    #     evaluation_data_end_time: Time.now,
    #     role_arn: "IamRoleArn",
    #     data_pre_processing_configuration: {
    #       target_sampling_rate: "PT1S", # accepts PT1S, PT5S, PT10S, PT15S, PT30S, PT1M, PT5M, PT10M, PT15M, PT30M, PT1H
    #     },
    #     server_side_kms_key_id: "NameOrArn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     off_condition: "OffCondition",
    #   })
    #
    # @example Response structure
    #
    #   resp.model_arn #=> String
    #   resp.status #=> String, one of "IN_PROGRESS", "SUCCESS", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/CreateModel AWS API Documentation
    #
    # @overload create_model(params = {})
    # @param [Hash] params ({})
    def create_model(params = {}, options = {})
      req = build_request(:create_model, params)
      req.send_request(options)
    end

    # Deletes a dataset and associated artifacts. The operation will check
    # to see if any inference scheduler or data ingestion job is currently
    # using the dataset, and if there isn't, the dataset, its metadata, and
    # any associated data stored in S3 will be deleted. This does not affect
    # any models that used this dataset for training and evaluation, but
    # does prevent it from being used in the future.
    #
    # @option params [required, String] :dataset_name
    #   The name of the dataset to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataset({
    #     dataset_name: "DatasetIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DeleteDataset AWS API Documentation
    #
    # @overload delete_dataset(params = {})
    # @param [Hash] params ({})
    def delete_dataset(params = {}, options = {})
      req = build_request(:delete_dataset, params)
      req.send_request(options)
    end

    # Deletes an inference scheduler that has been set up. Already processed
    # output results are not affected.
    #
    # @option params [required, String] :inference_scheduler_name
    #   The name of the inference scheduler to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_inference_scheduler({
    #     inference_scheduler_name: "InferenceSchedulerIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DeleteInferenceScheduler AWS API Documentation
    #
    # @overload delete_inference_scheduler(params = {})
    # @param [Hash] params ({})
    def delete_inference_scheduler(params = {}, options = {})
      req = build_request(:delete_inference_scheduler, params)
      req.send_request(options)
    end

    # Deletes an ML model currently available for Amazon Lookout for
    # Equipment. This will prevent it from being used with an inference
    # scheduler, even one that is already set up.
    #
    # @option params [required, String] :model_name
    #   The name of the ML model to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_model({
    #     model_name: "ModelName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DeleteModel AWS API Documentation
    #
    # @overload delete_model(params = {})
    # @param [Hash] params ({})
    def delete_model(params = {}, options = {})
      req = build_request(:delete_model, params)
      req.send_request(options)
    end

    # Provides information on a specific data ingestion job such as creation
    # time, dataset ARN, status, and so on.
    #
    # @option params [required, String] :job_id
    #   The job ID of the data ingestion job.
    #
    # @return [Types::DescribeDataIngestionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDataIngestionJobResponse#job_id #job_id} => String
    #   * {Types::DescribeDataIngestionJobResponse#dataset_arn #dataset_arn} => String
    #   * {Types::DescribeDataIngestionJobResponse#ingestion_input_configuration #ingestion_input_configuration} => Types::IngestionInputConfiguration
    #   * {Types::DescribeDataIngestionJobResponse#role_arn #role_arn} => String
    #   * {Types::DescribeDataIngestionJobResponse#created_at #created_at} => Time
    #   * {Types::DescribeDataIngestionJobResponse#status #status} => String
    #   * {Types::DescribeDataIngestionJobResponse#failed_reason #failed_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_ingestion_job({
    #     job_id: "IngestionJobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.dataset_arn #=> String
    #   resp.ingestion_input_configuration.s3_input_configuration.bucket #=> String
    #   resp.ingestion_input_configuration.s3_input_configuration.prefix #=> String
    #   resp.role_arn #=> String
    #   resp.created_at #=> Time
    #   resp.status #=> String, one of "IN_PROGRESS", "SUCCESS", "FAILED"
    #   resp.failed_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DescribeDataIngestionJob AWS API Documentation
    #
    # @overload describe_data_ingestion_job(params = {})
    # @param [Hash] params ({})
    def describe_data_ingestion_job(params = {}, options = {})
      req = build_request(:describe_data_ingestion_job, params)
      req.send_request(options)
    end

    # Provides a JSON description of the data that is in each time series
    # dataset, including names, column names, and data types.
    #
    # @option params [required, String] :dataset_name
    #   The name of the dataset to be described.
    #
    # @return [Types::DescribeDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDatasetResponse#dataset_name #dataset_name} => String
    #   * {Types::DescribeDatasetResponse#dataset_arn #dataset_arn} => String
    #   * {Types::DescribeDatasetResponse#created_at #created_at} => Time
    #   * {Types::DescribeDatasetResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::DescribeDatasetResponse#status #status} => String
    #   * {Types::DescribeDatasetResponse#schema #schema} => String
    #   * {Types::DescribeDatasetResponse#server_side_kms_key_id #server_side_kms_key_id} => String
    #   * {Types::DescribeDatasetResponse#ingestion_input_configuration #ingestion_input_configuration} => Types::IngestionInputConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset({
    #     dataset_name: "DatasetIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_name #=> String
    #   resp.dataset_arn #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.status #=> String, one of "CREATED", "INGESTION_IN_PROGRESS", "ACTIVE"
    #   resp.schema #=> String
    #   resp.server_side_kms_key_id #=> String
    #   resp.ingestion_input_configuration.s3_input_configuration.bucket #=> String
    #   resp.ingestion_input_configuration.s3_input_configuration.prefix #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DescribeDataset AWS API Documentation
    #
    # @overload describe_dataset(params = {})
    # @param [Hash] params ({})
    def describe_dataset(params = {}, options = {})
      req = build_request(:describe_dataset, params)
      req.send_request(options)
    end

    # Specifies information about the inference scheduler being used,
    # including name, model, status, and associated metadata
    #
    # @option params [required, String] :inference_scheduler_name
    #   The name of the inference scheduler being described.
    #
    # @return [Types::DescribeInferenceSchedulerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInferenceSchedulerResponse#model_arn #model_arn} => String
    #   * {Types::DescribeInferenceSchedulerResponse#model_name #model_name} => String
    #   * {Types::DescribeInferenceSchedulerResponse#inference_scheduler_name #inference_scheduler_name} => String
    #   * {Types::DescribeInferenceSchedulerResponse#inference_scheduler_arn #inference_scheduler_arn} => String
    #   * {Types::DescribeInferenceSchedulerResponse#status #status} => String
    #   * {Types::DescribeInferenceSchedulerResponse#data_delay_offset_in_minutes #data_delay_offset_in_minutes} => Integer
    #   * {Types::DescribeInferenceSchedulerResponse#data_upload_frequency #data_upload_frequency} => String
    #   * {Types::DescribeInferenceSchedulerResponse#created_at #created_at} => Time
    #   * {Types::DescribeInferenceSchedulerResponse#updated_at #updated_at} => Time
    #   * {Types::DescribeInferenceSchedulerResponse#data_input_configuration #data_input_configuration} => Types::InferenceInputConfiguration
    #   * {Types::DescribeInferenceSchedulerResponse#data_output_configuration #data_output_configuration} => Types::InferenceOutputConfiguration
    #   * {Types::DescribeInferenceSchedulerResponse#role_arn #role_arn} => String
    #   * {Types::DescribeInferenceSchedulerResponse#server_side_kms_key_id #server_side_kms_key_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_inference_scheduler({
    #     inference_scheduler_name: "InferenceSchedulerIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.model_arn #=> String
    #   resp.model_name #=> String
    #   resp.inference_scheduler_name #=> String
    #   resp.inference_scheduler_arn #=> String
    #   resp.status #=> String, one of "PENDING", "RUNNING", "STOPPING", "STOPPED"
    #   resp.data_delay_offset_in_minutes #=> Integer
    #   resp.data_upload_frequency #=> String, one of "PT5M", "PT10M", "PT15M", "PT30M", "PT1H"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.data_input_configuration.s3_input_configuration.bucket #=> String
    #   resp.data_input_configuration.s3_input_configuration.prefix #=> String
    #   resp.data_input_configuration.input_time_zone_offset #=> String
    #   resp.data_input_configuration.inference_input_name_configuration.timestamp_format #=> String
    #   resp.data_input_configuration.inference_input_name_configuration.component_timestamp_delimiter #=> String
    #   resp.data_output_configuration.s3_output_configuration.bucket #=> String
    #   resp.data_output_configuration.s3_output_configuration.prefix #=> String
    #   resp.data_output_configuration.kms_key_id #=> String
    #   resp.role_arn #=> String
    #   resp.server_side_kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DescribeInferenceScheduler AWS API Documentation
    #
    # @overload describe_inference_scheduler(params = {})
    # @param [Hash] params ({})
    def describe_inference_scheduler(params = {}, options = {})
      req = build_request(:describe_inference_scheduler, params)
      req.send_request(options)
    end

    # Provides a JSON containing the overall information about a specific ML
    # model, including model name and ARN, dataset, training and evaluation
    # information, status, and so on.
    #
    # @option params [required, String] :model_name
    #   The name of the ML model to be described.
    #
    # @return [Types::DescribeModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeModelResponse#model_name #model_name} => String
    #   * {Types::DescribeModelResponse#model_arn #model_arn} => String
    #   * {Types::DescribeModelResponse#dataset_name #dataset_name} => String
    #   * {Types::DescribeModelResponse#dataset_arn #dataset_arn} => String
    #   * {Types::DescribeModelResponse#schema #schema} => String
    #   * {Types::DescribeModelResponse#labels_input_configuration #labels_input_configuration} => Types::LabelsInputConfiguration
    #   * {Types::DescribeModelResponse#training_data_start_time #training_data_start_time} => Time
    #   * {Types::DescribeModelResponse#training_data_end_time #training_data_end_time} => Time
    #   * {Types::DescribeModelResponse#evaluation_data_start_time #evaluation_data_start_time} => Time
    #   * {Types::DescribeModelResponse#evaluation_data_end_time #evaluation_data_end_time} => Time
    #   * {Types::DescribeModelResponse#role_arn #role_arn} => String
    #   * {Types::DescribeModelResponse#data_pre_processing_configuration #data_pre_processing_configuration} => Types::DataPreProcessingConfiguration
    #   * {Types::DescribeModelResponse#status #status} => String
    #   * {Types::DescribeModelResponse#training_execution_start_time #training_execution_start_time} => Time
    #   * {Types::DescribeModelResponse#training_execution_end_time #training_execution_end_time} => Time
    #   * {Types::DescribeModelResponse#failed_reason #failed_reason} => String
    #   * {Types::DescribeModelResponse#model_metrics #model_metrics} => String
    #   * {Types::DescribeModelResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::DescribeModelResponse#created_at #created_at} => Time
    #   * {Types::DescribeModelResponse#server_side_kms_key_id #server_side_kms_key_id} => String
    #   * {Types::DescribeModelResponse#off_condition #off_condition} => String
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
    #   resp.model_arn #=> String
    #   resp.dataset_name #=> String
    #   resp.dataset_arn #=> String
    #   resp.schema #=> String
    #   resp.labels_input_configuration.s3_input_configuration.bucket #=> String
    #   resp.labels_input_configuration.s3_input_configuration.prefix #=> String
    #   resp.training_data_start_time #=> Time
    #   resp.training_data_end_time #=> Time
    #   resp.evaluation_data_start_time #=> Time
    #   resp.evaluation_data_end_time #=> Time
    #   resp.role_arn #=> String
    #   resp.data_pre_processing_configuration.target_sampling_rate #=> String, one of "PT1S", "PT5S", "PT10S", "PT15S", "PT30S", "PT1M", "PT5M", "PT10M", "PT15M", "PT30M", "PT1H"
    #   resp.status #=> String, one of "IN_PROGRESS", "SUCCESS", "FAILED"
    #   resp.training_execution_start_time #=> Time
    #   resp.training_execution_end_time #=> Time
    #   resp.failed_reason #=> String
    #   resp.model_metrics #=> String
    #   resp.last_updated_time #=> Time
    #   resp.created_at #=> Time
    #   resp.server_side_kms_key_id #=> String
    #   resp.off_condition #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DescribeModel AWS API Documentation
    #
    # @overload describe_model(params = {})
    # @param [Hash] params ({})
    def describe_model(params = {}, options = {})
      req = build_request(:describe_model, params)
      req.send_request(options)
    end

    # Provides a list of all data ingestion jobs, including dataset name and
    # ARN, S3 location of the input data, status, and so on.
    #
    # @option params [String] :dataset_name
    #   The name of the dataset being used for the data ingestion job.
    #
    # @option params [String] :next_token
    #   An opaque pagination token indicating where to continue the listing of
    #   data ingestion jobs.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of data ingestion jobs to list.
    #
    # @option params [String] :status
    #   Indicates the status of the data ingestion job.
    #
    # @return [Types::ListDataIngestionJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataIngestionJobsResponse#next_token #next_token} => String
    #   * {Types::ListDataIngestionJobsResponse#data_ingestion_job_summaries #data_ingestion_job_summaries} => Array&lt;Types::DataIngestionJobSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_ingestion_jobs({
    #     dataset_name: "DatasetName",
    #     next_token: "NextToken",
    #     max_results: 1,
    #     status: "IN_PROGRESS", # accepts IN_PROGRESS, SUCCESS, FAILED
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.data_ingestion_job_summaries #=> Array
    #   resp.data_ingestion_job_summaries[0].job_id #=> String
    #   resp.data_ingestion_job_summaries[0].dataset_name #=> String
    #   resp.data_ingestion_job_summaries[0].dataset_arn #=> String
    #   resp.data_ingestion_job_summaries[0].ingestion_input_configuration.s3_input_configuration.bucket #=> String
    #   resp.data_ingestion_job_summaries[0].ingestion_input_configuration.s3_input_configuration.prefix #=> String
    #   resp.data_ingestion_job_summaries[0].status #=> String, one of "IN_PROGRESS", "SUCCESS", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListDataIngestionJobs AWS API Documentation
    #
    # @overload list_data_ingestion_jobs(params = {})
    # @param [Hash] params ({})
    def list_data_ingestion_jobs(params = {}, options = {})
      req = build_request(:list_data_ingestion_jobs, params)
      req.send_request(options)
    end

    # Lists all datasets currently available in your account, filtering on
    # the dataset name.
    #
    # @option params [String] :next_token
    #   An opaque pagination token indicating where to continue the listing of
    #   datasets.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of datasets to list.
    #
    # @option params [String] :dataset_name_begins_with
    #   The beginning of the name of the datasets to be listed.
    #
    # @return [Types::ListDatasetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDatasetsResponse#next_token #next_token} => String
    #   * {Types::ListDatasetsResponse#dataset_summaries #dataset_summaries} => Array&lt;Types::DatasetSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_datasets({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     dataset_name_begins_with: "DatasetName",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.dataset_summaries #=> Array
    #   resp.dataset_summaries[0].dataset_name #=> String
    #   resp.dataset_summaries[0].dataset_arn #=> String
    #   resp.dataset_summaries[0].status #=> String, one of "CREATED", "INGESTION_IN_PROGRESS", "ACTIVE"
    #   resp.dataset_summaries[0].created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListDatasets AWS API Documentation
    #
    # @overload list_datasets(params = {})
    # @param [Hash] params ({})
    def list_datasets(params = {}, options = {})
      req = build_request(:list_datasets, params)
      req.send_request(options)
    end

    # Lists all inference executions that have been performed by the
    # specified inference scheduler.
    #
    # @option params [String] :next_token
    #   An opaque pagination token indicating where to continue the listing of
    #   inference executions.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of inference executions to list.
    #
    # @option params [required, String] :inference_scheduler_name
    #   The name of the inference scheduler for the inference execution
    #   listed.
    #
    # @option params [Time,DateTime,Date,Integer,String] :data_start_time_after
    #   The time reference in the inferenced dataset after which Amazon
    #   Lookout for Equipment started the inference execution.
    #
    # @option params [Time,DateTime,Date,Integer,String] :data_end_time_before
    #   The time reference in the inferenced dataset before which Amazon
    #   Lookout for Equipment stopped the inference execution.
    #
    # @option params [String] :status
    #   The status of the inference execution.
    #
    # @return [Types::ListInferenceExecutionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInferenceExecutionsResponse#next_token #next_token} => String
    #   * {Types::ListInferenceExecutionsResponse#inference_execution_summaries #inference_execution_summaries} => Array&lt;Types::InferenceExecutionSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_inference_executions({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     inference_scheduler_name: "InferenceSchedulerIdentifier", # required
    #     data_start_time_after: Time.now,
    #     data_end_time_before: Time.now,
    #     status: "IN_PROGRESS", # accepts IN_PROGRESS, SUCCESS, FAILED
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.inference_execution_summaries #=> Array
    #   resp.inference_execution_summaries[0].model_name #=> String
    #   resp.inference_execution_summaries[0].model_arn #=> String
    #   resp.inference_execution_summaries[0].inference_scheduler_name #=> String
    #   resp.inference_execution_summaries[0].inference_scheduler_arn #=> String
    #   resp.inference_execution_summaries[0].scheduled_start_time #=> Time
    #   resp.inference_execution_summaries[0].data_start_time #=> Time
    #   resp.inference_execution_summaries[0].data_end_time #=> Time
    #   resp.inference_execution_summaries[0].data_input_configuration.s3_input_configuration.bucket #=> String
    #   resp.inference_execution_summaries[0].data_input_configuration.s3_input_configuration.prefix #=> String
    #   resp.inference_execution_summaries[0].data_input_configuration.input_time_zone_offset #=> String
    #   resp.inference_execution_summaries[0].data_input_configuration.inference_input_name_configuration.timestamp_format #=> String
    #   resp.inference_execution_summaries[0].data_input_configuration.inference_input_name_configuration.component_timestamp_delimiter #=> String
    #   resp.inference_execution_summaries[0].data_output_configuration.s3_output_configuration.bucket #=> String
    #   resp.inference_execution_summaries[0].data_output_configuration.s3_output_configuration.prefix #=> String
    #   resp.inference_execution_summaries[0].data_output_configuration.kms_key_id #=> String
    #   resp.inference_execution_summaries[0].customer_result_object.bucket #=> String
    #   resp.inference_execution_summaries[0].customer_result_object.key #=> String
    #   resp.inference_execution_summaries[0].status #=> String, one of "IN_PROGRESS", "SUCCESS", "FAILED"
    #   resp.inference_execution_summaries[0].failed_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListInferenceExecutions AWS API Documentation
    #
    # @overload list_inference_executions(params = {})
    # @param [Hash] params ({})
    def list_inference_executions(params = {}, options = {})
      req = build_request(:list_inference_executions, params)
      req.send_request(options)
    end

    # Retrieves a list of all inference schedulers currently available for
    # your account.
    #
    # @option params [String] :next_token
    #   An opaque pagination token indicating where to continue the listing of
    #   inference schedulers.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of inference schedulers to list.
    #
    # @option params [String] :inference_scheduler_name_begins_with
    #   The beginning of the name of the inference schedulers to be listed.
    #
    # @option params [String] :model_name
    #   The name of the ML model used by the inference scheduler to be listed.
    #
    # @return [Types::ListInferenceSchedulersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInferenceSchedulersResponse#next_token #next_token} => String
    #   * {Types::ListInferenceSchedulersResponse#inference_scheduler_summaries #inference_scheduler_summaries} => Array&lt;Types::InferenceSchedulerSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_inference_schedulers({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     inference_scheduler_name_begins_with: "InferenceSchedulerIdentifier",
    #     model_name: "ModelName",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.inference_scheduler_summaries #=> Array
    #   resp.inference_scheduler_summaries[0].model_name #=> String
    #   resp.inference_scheduler_summaries[0].model_arn #=> String
    #   resp.inference_scheduler_summaries[0].inference_scheduler_name #=> String
    #   resp.inference_scheduler_summaries[0].inference_scheduler_arn #=> String
    #   resp.inference_scheduler_summaries[0].status #=> String, one of "PENDING", "RUNNING", "STOPPING", "STOPPED"
    #   resp.inference_scheduler_summaries[0].data_delay_offset_in_minutes #=> Integer
    #   resp.inference_scheduler_summaries[0].data_upload_frequency #=> String, one of "PT5M", "PT10M", "PT15M", "PT30M", "PT1H"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListInferenceSchedulers AWS API Documentation
    #
    # @overload list_inference_schedulers(params = {})
    # @param [Hash] params ({})
    def list_inference_schedulers(params = {}, options = {})
      req = build_request(:list_inference_schedulers, params)
      req.send_request(options)
    end

    # Generates a list of all models in the account, including model name
    # and ARN, dataset, and status.
    #
    # @option params [String] :next_token
    #   An opaque pagination token indicating where to continue the listing of
    #   ML models.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of ML models to list.
    #
    # @option params [String] :status
    #   The status of the ML model.
    #
    # @option params [String] :model_name_begins_with
    #   The beginning of the name of the ML models being listed.
    #
    # @option params [String] :dataset_name_begins_with
    #   The beginning of the name of the dataset of the ML models to be
    #   listed.
    #
    # @return [Types::ListModelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListModelsResponse#next_token #next_token} => String
    #   * {Types::ListModelsResponse#model_summaries #model_summaries} => Array&lt;Types::ModelSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_models({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     status: "IN_PROGRESS", # accepts IN_PROGRESS, SUCCESS, FAILED
    #     model_name_begins_with: "ModelName",
    #     dataset_name_begins_with: "DatasetName",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.model_summaries #=> Array
    #   resp.model_summaries[0].model_name #=> String
    #   resp.model_summaries[0].model_arn #=> String
    #   resp.model_summaries[0].dataset_name #=> String
    #   resp.model_summaries[0].dataset_arn #=> String
    #   resp.model_summaries[0].status #=> String, one of "IN_PROGRESS", "SUCCESS", "FAILED"
    #   resp.model_summaries[0].created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListModels AWS API Documentation
    #
    # @overload list_models(params = {})
    # @param [Hash] params ({})
    def list_models(params = {}, options = {})
      req = build_request(:list_models, params)
      req.send_request(options)
    end

    # Lists all the tags for a specified resource, including key and value.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource (such as the dataset or
    #   model) that is the focus of the `ListTagsForResource` operation.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Starts a data ingestion job. Amazon Lookout for Equipment returns the
    # job status.
    #
    # @option params [required, String] :dataset_name
    #   The name of the dataset being used by the data ingestion job.
    #
    # @option params [required, Types::IngestionInputConfiguration] :ingestion_input_configuration
    #   Specifies information for the input data for the data ingestion job,
    #   including dataset S3 location.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of a role with permission to access the
    #   data source for the data ingestion job.
    #
    # @option params [required, String] :client_token
    #   A unique identifier for the request. If you do not set the client
    #   request token, Amazon Lookout for Equipment generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartDataIngestionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDataIngestionJobResponse#job_id #job_id} => String
    #   * {Types::StartDataIngestionJobResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_data_ingestion_job({
    #     dataset_name: "DatasetIdentifier", # required
    #     ingestion_input_configuration: { # required
    #       s3_input_configuration: { # required
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix",
    #       },
    #     },
    #     role_arn: "IamRoleArn", # required
    #     client_token: "IdempotenceToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.status #=> String, one of "IN_PROGRESS", "SUCCESS", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/StartDataIngestionJob AWS API Documentation
    #
    # @overload start_data_ingestion_job(params = {})
    # @param [Hash] params ({})
    def start_data_ingestion_job(params = {}, options = {})
      req = build_request(:start_data_ingestion_job, params)
      req.send_request(options)
    end

    # Starts an inference scheduler.
    #
    # @option params [required, String] :inference_scheduler_name
    #   The name of the inference scheduler to be started.
    #
    # @return [Types::StartInferenceSchedulerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartInferenceSchedulerResponse#model_arn #model_arn} => String
    #   * {Types::StartInferenceSchedulerResponse#model_name #model_name} => String
    #   * {Types::StartInferenceSchedulerResponse#inference_scheduler_name #inference_scheduler_name} => String
    #   * {Types::StartInferenceSchedulerResponse#inference_scheduler_arn #inference_scheduler_arn} => String
    #   * {Types::StartInferenceSchedulerResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_inference_scheduler({
    #     inference_scheduler_name: "InferenceSchedulerIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.model_arn #=> String
    #   resp.model_name #=> String
    #   resp.inference_scheduler_name #=> String
    #   resp.inference_scheduler_arn #=> String
    #   resp.status #=> String, one of "PENDING", "RUNNING", "STOPPING", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/StartInferenceScheduler AWS API Documentation
    #
    # @overload start_inference_scheduler(params = {})
    # @param [Hash] params ({})
    def start_inference_scheduler(params = {}, options = {})
      req = build_request(:start_inference_scheduler, params)
      req.send_request(options)
    end

    # Stops an inference scheduler.
    #
    # @option params [required, String] :inference_scheduler_name
    #   The name of the inference scheduler to be stopped.
    #
    # @return [Types::StopInferenceSchedulerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopInferenceSchedulerResponse#model_arn #model_arn} => String
    #   * {Types::StopInferenceSchedulerResponse#model_name #model_name} => String
    #   * {Types::StopInferenceSchedulerResponse#inference_scheduler_name #inference_scheduler_name} => String
    #   * {Types::StopInferenceSchedulerResponse#inference_scheduler_arn #inference_scheduler_arn} => String
    #   * {Types::StopInferenceSchedulerResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_inference_scheduler({
    #     inference_scheduler_name: "InferenceSchedulerIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.model_arn #=> String
    #   resp.model_name #=> String
    #   resp.inference_scheduler_name #=> String
    #   resp.inference_scheduler_arn #=> String
    #   resp.status #=> String, one of "PENDING", "RUNNING", "STOPPING", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/StopInferenceScheduler AWS API Documentation
    #
    # @overload stop_inference_scheduler(params = {})
    # @param [Hash] params ({})
    def stop_inference_scheduler(params = {}, options = {})
      req = build_request(:stop_inference_scheduler, params)
      req.send_request(options)
    end

    # Associates a given tag to a resource in your account. A tag is a
    # key-value pair which can be added to an Amazon Lookout for Equipment
    # resource as metadata. Tags can be used for organizing your resources
    # as well as helping you to search and filter by tag. Multiple tags can
    # be added to a resource, either when you create it, or later. Up to 50
    # tags can be associated with each resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the specific resource to which the
    #   tag should be associated.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tag or tags to be associated with a specific resource. Both the
    #   tag key and value are specified.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a specific tag from a given resource. The tag is specified by
    # its key.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which the tag is
    #   currently associated.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Specifies the key of the tag to be removed from a specified resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an inference scheduler.
    #
    # @option params [required, String] :inference_scheduler_name
    #   The name of the inference scheduler to be updated.
    #
    # @option params [Integer] :data_delay_offset_in_minutes
    #   A period of time (in minutes) by which inference on the data is
    #   delayed after the data starts. For instance, if you select an offset
    #   delay time of five minutes, inference will not begin on the data until
    #   the first data measurement after the five minute mark. For example, if
    #   five minutes is selected, the inference scheduler will wake up at the
    #   configured frequency with the additional five minute delay time to
    #   check the customer S3 bucket. The customer can upload data at the same
    #   frequency and they don't need to stop and restart the scheduler when
    #   uploading new data.
    #
    # @option params [String] :data_upload_frequency
    #   How often data is uploaded to the source S3 bucket for the input data.
    #   The value chosen is the length of time between data uploads. For
    #   instance, if you select 5 minutes, Amazon Lookout for Equipment will
    #   upload the real-time data to the source bucket once every 5 minutes.
    #   This frequency also determines how often Amazon Lookout for Equipment
    #   starts a scheduled inference on your data. In this example, it starts
    #   once every 5 minutes.
    #
    # @option params [Types::InferenceInputConfiguration] :data_input_configuration
    #   Specifies information for the input data for the inference scheduler,
    #   including delimiter, format, and dataset location.
    #
    # @option params [Types::InferenceOutputConfiguration] :data_output_configuration
    #   Specifies information for the output results from the inference
    #   scheduler, including the output S3 location.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of a role with permission to access the
    #   data source for the inference scheduler.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_inference_scheduler({
    #     inference_scheduler_name: "InferenceSchedulerIdentifier", # required
    #     data_delay_offset_in_minutes: 1,
    #     data_upload_frequency: "PT5M", # accepts PT5M, PT10M, PT15M, PT30M, PT1H
    #     data_input_configuration: {
    #       s3_input_configuration: {
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix",
    #       },
    #       input_time_zone_offset: "TimeZoneOffset",
    #       inference_input_name_configuration: {
    #         timestamp_format: "FileNameTimestampFormat",
    #         component_timestamp_delimiter: "ComponentTimestampDelimiter",
    #       },
    #     },
    #     data_output_configuration: {
    #       s3_output_configuration: { # required
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix",
    #       },
    #       kms_key_id: "NameOrArn",
    #     },
    #     role_arn: "IamRoleArn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/UpdateInferenceScheduler AWS API Documentation
    #
    # @overload update_inference_scheduler(params = {})
    # @param [Hash] params ({})
    def update_inference_scheduler(params = {}, options = {})
      req = build_request(:update_inference_scheduler, params)
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
      context[:gem_name] = 'aws-sdk-lookoutequipment'
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
