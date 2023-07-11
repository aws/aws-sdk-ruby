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

Aws::Plugins::GlobalConfiguration.add_identifier(:lookoutforvision)

module Aws::LookoutforVision
  # An API client for LookoutforVision.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::LookoutforVision::Client.new(
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

    @identifier = :lookoutforvision

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
    add_plugin(Aws::LookoutforVision::Plugins::Endpoints)

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
    #   @option options [Aws::LookoutforVision::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::LookoutforVision::EndpointParameters`
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

    # Creates a new dataset in an Amazon Lookout for Vision project.
    # `CreateDataset` can create a training or a test dataset from a valid
    # dataset source (`DatasetSource`).
    #
    # If you want a single dataset project, specify `train` for the value of
    # `DatasetType`.
    #
    # To have a project with separate training and test datasets, call
    # `CreateDataset` twice. On the first call, specify `train` for the
    # value of `DatasetType`. On the second call, specify `test` for the
    # value of `DatasetType`.
    #
    # This operation requires permissions to perform the
    # `lookoutvision:CreateDataset` operation.
    #
    # @option params [required, String] :project_name
    #   The name of the project in which you want to create a dataset.
    #
    # @option params [required, String] :dataset_type
    #   The type of the dataset. Specify `train` for a training dataset.
    #   Specify `test` for a test dataset.
    #
    # @option params [Types::DatasetSource] :dataset_source
    #   The location of the manifest file that Amazon Lookout for Vision uses
    #   to create the dataset.
    #
    #   If you don't specify `DatasetSource`, an empty dataset is created and
    #   the operation synchronously returns. Later, you can add JSON Lines by
    #   calling UpdateDatasetEntries.
    #
    #   If you specify a value for `DataSource`, the manifest at the S3
    #   location is validated and used to create the dataset. The call to
    #   `CreateDataset` is asynchronous and might take a while to complete. To
    #   find out the current status, Check the value of `Status` returned in a
    #   call to DescribeDataset.
    #
    # @option params [String] :client_token
    #   ClientToken is an idempotency token that ensures a call to
    #   `CreateDataset` completes only once. You choose the value to pass. For
    #   example, An issue might prevent you from getting a response from
    #   `CreateDataset`. In this case, safely retry your call to
    #   `CreateDataset` by using the same `ClientToken` parameter value.
    #
    #   If you don't supply a value for `ClientToken`, the AWS SDK you are
    #   using inserts a value for you. This prevents retries after a network
    #   error from making multiple dataset creation requests. You'll need to
    #   provide your own value for other use cases.
    #
    #   An error occurs if the other input parameters are not the same as in
    #   the first request. Using a different value for `ClientToken` is
    #   considered a new call to `CreateDataset`. An idempotency token is
    #   active for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDatasetResponse#dataset_metadata #dataset_metadata} => Types::DatasetMetadata
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset({
    #     project_name: "ProjectName", # required
    #     dataset_type: "DatasetType", # required
    #     dataset_source: {
    #       ground_truth_manifest: {
    #         s3_object: {
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #           version_id: "S3ObjectVersion",
    #         },
    #       },
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_metadata.dataset_type #=> String
    #   resp.dataset_metadata.creation_timestamp #=> Time
    #   resp.dataset_metadata.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED_ROLLBACK_IN_PROGRESS", "UPDATE_FAILED_ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED"
    #   resp.dataset_metadata.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/CreateDataset AWS API Documentation
    #
    # @overload create_dataset(params = {})
    # @param [Hash] params ({})
    def create_dataset(params = {}, options = {})
      req = build_request(:create_dataset, params)
      req.send_request(options)
    end

    # Creates a new version of a model within an an Amazon Lookout for
    # Vision project. `CreateModel` is an asynchronous operation in which
    # Amazon Lookout for Vision trains, tests, and evaluates a new version
    # of a model.
    #
    # To get the current status, check the `Status` field returned in the
    # response from DescribeModel.
    #
    # If the project has a single dataset, Amazon Lookout for Vision
    # internally splits the dataset to create a training and a test dataset.
    # If the project has a training and a test dataset, Lookout for Vision
    # uses the respective datasets to train and test the model.
    #
    # After training completes, the evaluation metrics are stored at the
    # location specified in `OutputConfig`.
    #
    # This operation requires permissions to perform the
    # `lookoutvision:CreateModel` operation. If you want to tag your model,
    # you also require permission to the `lookoutvision:TagResource`
    # operation.
    #
    # @option params [required, String] :project_name
    #   The name of the project in which you want to create a model version.
    #
    # @option params [String] :description
    #   A description for the version of the model.
    #
    # @option params [String] :client_token
    #   ClientToken is an idempotency token that ensures a call to
    #   `CreateModel` completes only once. You choose the value to pass. For
    #   example, An issue might prevent you from getting a response from
    #   `CreateModel`. In this case, safely retry your call to `CreateModel`
    #   by using the same `ClientToken` parameter value.
    #
    #   If you don't supply a value for `ClientToken`, the AWS SDK you are
    #   using inserts a value for you. This prevents retries after a network
    #   error from starting multiple training jobs. You'll need to provide
    #   your own value for other use cases.
    #
    #   An error occurs if the other input parameters are not the same as in
    #   the first request. Using a different value for `ClientToken` is
    #   considered a new call to `CreateModel`. An idempotency token is active
    #   for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::OutputConfig] :output_config
    #   The location where Amazon Lookout for Vision saves the training
    #   results.
    #
    # @option params [String] :kms_key_id
    #   The identifier for your AWS KMS key. The key is used to encrypt
    #   training and test images copied into the service for model training.
    #   Your source images are unaffected. If this parameter is not specified,
    #   the copied images are encrypted by a key that AWS owns and manages.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A set of tags (key-value pairs) that you want to attach to the model.
    #
    # @return [Types::CreateModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateModelResponse#model_metadata #model_metadata} => Types::ModelMetadata
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_model({
    #     project_name: "ProjectName", # required
    #     description: "ModelDescriptionMessage",
    #     client_token: "ClientToken",
    #     output_config: { # required
    #       s3_location: { # required
    #         bucket: "S3BucketName", # required
    #         prefix: "S3KeyPrefix",
    #       },
    #     },
    #     kms_key_id: "KmsKeyId",
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
    #   resp.model_metadata.creation_timestamp #=> Time
    #   resp.model_metadata.model_version #=> String
    #   resp.model_metadata.model_arn #=> String
    #   resp.model_metadata.description #=> String
    #   resp.model_metadata.status #=> String, one of "TRAINING", "TRAINED", "TRAINING_FAILED", "STARTING_HOSTING", "HOSTED", "HOSTING_FAILED", "STOPPING_HOSTING", "SYSTEM_UPDATING", "DELETING"
    #   resp.model_metadata.status_message #=> String
    #   resp.model_metadata.performance.f1_score #=> Float
    #   resp.model_metadata.performance.recall #=> Float
    #   resp.model_metadata.performance.precision #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/CreateModel AWS API Documentation
    #
    # @overload create_model(params = {})
    # @param [Hash] params ({})
    def create_model(params = {}, options = {})
      req = build_request(:create_model, params)
      req.send_request(options)
    end

    # Creates an empty Amazon Lookout for Vision project. After you create
    # the project, add a dataset by calling CreateDataset.
    #
    # This operation requires permissions to perform the
    # `lookoutvision:CreateProject` operation.
    #
    # @option params [required, String] :project_name
    #   The name for the project.
    #
    # @option params [String] :client_token
    #   ClientToken is an idempotency token that ensures a call to
    #   `CreateProject` completes only once. You choose the value to pass. For
    #   example, An issue might prevent you from getting a response from
    #   `CreateProject`. In this case, safely retry your call to
    #   `CreateProject` by using the same `ClientToken` parameter value.
    #
    #   If you don't supply a value for `ClientToken`, the AWS SDK you are
    #   using inserts a value for you. This prevents retries after a network
    #   error from making multiple project creation requests. You'll need to
    #   provide your own value for other use cases.
    #
    #   An error occurs if the other input parameters are not the same as in
    #   the first request. Using a different value for `ClientToken` is
    #   considered a new call to `CreateProject`. An idempotency token is
    #   active for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateProjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProjectResponse#project_metadata #project_metadata} => Types::ProjectMetadata
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project({
    #     project_name: "ProjectName", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.project_metadata.project_arn #=> String
    #   resp.project_metadata.project_name #=> String
    #   resp.project_metadata.creation_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/CreateProject AWS API Documentation
    #
    # @overload create_project(params = {})
    # @param [Hash] params ({})
    def create_project(params = {}, options = {})
      req = build_request(:create_project, params)
      req.send_request(options)
    end

    # Deletes an existing Amazon Lookout for Vision `dataset`.
    #
    # If your the project has a single dataset, you must create a new
    # dataset before you can create a model.
    #
    # If you project has a training dataset and a test dataset consider the
    # following.
    #
    # * If you delete the test dataset, your project reverts to a single
    #   dataset project. If you then train the model, Amazon Lookout for
    #   Vision internally splits the remaining dataset into a training and
    #   test dataset.
    #
    # * If you delete the training dataset, you must create a training
    #   dataset before you can create a model.
    #
    # This operation requires permissions to perform the
    # `lookoutvision:DeleteDataset` operation.
    #
    # @option params [required, String] :project_name
    #   The name of the project that contains the dataset that you want to
    #   delete.
    #
    # @option params [required, String] :dataset_type
    #   The type of the dataset to delete. Specify `train` to delete the
    #   training dataset. Specify `test` to delete the test dataset. To delete
    #   the dataset in a single dataset project, specify `train`.
    #
    # @option params [String] :client_token
    #   ClientToken is an idempotency token that ensures a call to
    #   `DeleteDataset` completes only once. You choose the value to pass. For
    #   example, An issue might prevent you from getting a response from
    #   `DeleteDataset`. In this case, safely retry your call to
    #   `DeleteDataset` by using the same `ClientToken` parameter value.
    #
    #   If you don't supply a value for `ClientToken`, the AWS SDK you are
    #   using inserts a value for you. This prevents retries after a network
    #   error from making multiple deletetion requests. You'll need to
    #   provide your own value for other use cases.
    #
    #   An error occurs if the other input parameters are not the same as in
    #   the first request. Using a different value for `ClientToken` is
    #   considered a new call to `DeleteDataset`. An idempotency token is
    #   active for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataset({
    #     project_name: "ProjectName", # required
    #     dataset_type: "DatasetType", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DeleteDataset AWS API Documentation
    #
    # @overload delete_dataset(params = {})
    # @param [Hash] params ({})
    def delete_dataset(params = {}, options = {})
      req = build_request(:delete_dataset, params)
      req.send_request(options)
    end

    # Deletes an Amazon Lookout for Vision model. You can't delete a
    # running model. To stop a running model, use the StopModel operation.
    #
    # It might take a few seconds to delete a model. To determine if a model
    # has been deleted, call ListModels and check if the version of the
    # model (`ModelVersion`) is in the `Models` array.
    #
    #
    #
    # This operation requires permissions to perform the
    # `lookoutvision:DeleteModel` operation.
    #
    # @option params [required, String] :project_name
    #   The name of the project that contains the model that you want to
    #   delete.
    #
    # @option params [required, String] :model_version
    #   The version of the model that you want to delete.
    #
    # @option params [String] :client_token
    #   ClientToken is an idempotency token that ensures a call to
    #   `DeleteModel` completes only once. You choose the value to pass. For
    #   example, an issue might prevent you from getting a response from
    #   `DeleteModel`. In this case, safely retry your call to `DeleteModel`
    #   by using the same `ClientToken` parameter value.
    #
    #   If you don't supply a value for ClientToken, the AWS SDK you are
    #   using inserts a value for you. This prevents retries after a network
    #   error from making multiple model deletion requests. You'll need to
    #   provide your own value for other use cases.
    #
    #   An error occurs if the other input parameters are not the same as in
    #   the first request. Using a different value for `ClientToken` is
    #   considered a new call to `DeleteModel`. An idempotency token is active
    #   for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeleteModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteModelResponse#model_arn #model_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_model({
    #     project_name: "ProjectName", # required
    #     model_version: "ModelVersionNoLatest", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.model_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DeleteModel AWS API Documentation
    #
    # @overload delete_model(params = {})
    # @param [Hash] params ({})
    def delete_model(params = {}, options = {})
      req = build_request(:delete_model, params)
      req.send_request(options)
    end

    # Deletes an Amazon Lookout for Vision project.
    #
    # To delete a project, you must first delete each version of the model
    # associated with the project. To delete a model use the DeleteModel
    # operation.
    #
    # You also have to delete the dataset(s) associated with the model. For
    # more information, see DeleteDataset. The images referenced by the
    # training and test datasets aren't deleted.
    #
    # This operation requires permissions to perform the
    # `lookoutvision:DeleteProject` operation.
    #
    # @option params [required, String] :project_name
    #   The name of the project to delete.
    #
    # @option params [String] :client_token
    #   ClientToken is an idempotency token that ensures a call to
    #   `DeleteProject` completes only once. You choose the value to pass. For
    #   example, An issue might prevent you from getting a response from
    #   `DeleteProject`. In this case, safely retry your call to
    #   `DeleteProject` by using the same `ClientToken` parameter value.
    #
    #   If you don't supply a value for `ClientToken`, the AWS SDK you are
    #   using inserts a value for you. This prevents retries after a network
    #   error from making multiple project deletion requests. You'll need to
    #   provide your own value for other use cases.
    #
    #   An error occurs if the other input parameters are not the same as in
    #   the first request. Using a different value for `ClientToken` is
    #   considered a new call to `DeleteProject`. An idempotency token is
    #   active for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeleteProjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteProjectResponse#project_arn #project_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project({
    #     project_name: "ProjectName", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.project_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DeleteProject AWS API Documentation
    #
    # @overload delete_project(params = {})
    # @param [Hash] params ({})
    def delete_project(params = {}, options = {})
      req = build_request(:delete_project, params)
      req.send_request(options)
    end

    # Describe an Amazon Lookout for Vision dataset.
    #
    # This operation requires permissions to perform the
    # `lookoutvision:DescribeDataset` operation.
    #
    # @option params [required, String] :project_name
    #   The name of the project that contains the dataset that you want to
    #   describe.
    #
    # @option params [required, String] :dataset_type
    #   The type of the dataset to describe. Specify `train` to describe the
    #   training dataset. Specify `test` to describe the test dataset. If you
    #   have a single dataset project, specify `train`
    #
    # @return [Types::DescribeDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDatasetResponse#dataset_description #dataset_description} => Types::DatasetDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset({
    #     project_name: "ProjectName", # required
    #     dataset_type: "DatasetType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_description.project_name #=> String
    #   resp.dataset_description.dataset_type #=> String
    #   resp.dataset_description.creation_timestamp #=> Time
    #   resp.dataset_description.last_updated_timestamp #=> Time
    #   resp.dataset_description.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED_ROLLBACK_IN_PROGRESS", "UPDATE_FAILED_ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED"
    #   resp.dataset_description.status_message #=> String
    #   resp.dataset_description.image_stats.total #=> Integer
    #   resp.dataset_description.image_stats.labeled #=> Integer
    #   resp.dataset_description.image_stats.normal #=> Integer
    #   resp.dataset_description.image_stats.anomaly #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DescribeDataset AWS API Documentation
    #
    # @overload describe_dataset(params = {})
    # @param [Hash] params ({})
    def describe_dataset(params = {}, options = {})
      req = build_request(:describe_dataset, params)
      req.send_request(options)
    end

    # Describes a version of an Amazon Lookout for Vision model.
    #
    # This operation requires permissions to perform the
    # `lookoutvision:DescribeModel` operation.
    #
    # @option params [required, String] :project_name
    #   The project that contains the version of a model that you want to
    #   describe.
    #
    # @option params [required, String] :model_version
    #   The version of the model that you want to describe.
    #
    # @return [Types::DescribeModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeModelResponse#model_description #model_description} => Types::ModelDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_model({
    #     project_name: "ProjectName", # required
    #     model_version: "ModelVersion", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.model_description.model_version #=> String
    #   resp.model_description.model_arn #=> String
    #   resp.model_description.creation_timestamp #=> Time
    #   resp.model_description.description #=> String
    #   resp.model_description.status #=> String, one of "TRAINING", "TRAINED", "TRAINING_FAILED", "STARTING_HOSTING", "HOSTED", "HOSTING_FAILED", "STOPPING_HOSTING", "SYSTEM_UPDATING", "DELETING"
    #   resp.model_description.status_message #=> String
    #   resp.model_description.performance.f1_score #=> Float
    #   resp.model_description.performance.recall #=> Float
    #   resp.model_description.performance.precision #=> Float
    #   resp.model_description.output_config.s3_location.bucket #=> String
    #   resp.model_description.output_config.s3_location.prefix #=> String
    #   resp.model_description.evaluation_manifest.bucket #=> String
    #   resp.model_description.evaluation_manifest.key #=> String
    #   resp.model_description.evaluation_result.bucket #=> String
    #   resp.model_description.evaluation_result.key #=> String
    #   resp.model_description.evaluation_end_timestamp #=> Time
    #   resp.model_description.kms_key_id #=> String
    #   resp.model_description.min_inference_units #=> Integer
    #   resp.model_description.max_inference_units #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DescribeModel AWS API Documentation
    #
    # @overload describe_model(params = {})
    # @param [Hash] params ({})
    def describe_model(params = {}, options = {})
      req = build_request(:describe_model, params)
      req.send_request(options)
    end

    # Describes an Amazon Lookout for Vision model packaging job.
    #
    # This operation requires permissions to perform the
    # `lookoutvision:DescribeModelPackagingJob` operation.
    #
    # For more information, see *Using your Amazon Lookout for Vision model
    # on an edge device* in the Amazon Lookout for Vision Developer Guide.
    #
    # @option params [required, String] :project_name
    #   The name of the project that contains the model packaging job that you
    #   want to describe.
    #
    # @option params [required, String] :job_name
    #   The job name for the model packaging job.
    #
    # @return [Types::DescribeModelPackagingJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeModelPackagingJobResponse#model_packaging_description #model_packaging_description} => Types::ModelPackagingDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_model_packaging_job({
    #     project_name: "ProjectName", # required
    #     job_name: "ModelPackagingJobName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.model_packaging_description.job_name #=> String
    #   resp.model_packaging_description.project_name #=> String
    #   resp.model_packaging_description.model_version #=> String
    #   resp.model_packaging_description.model_packaging_configuration.greengrass.compiler_options #=> String
    #   resp.model_packaging_description.model_packaging_configuration.greengrass.target_device #=> String, one of "jetson_xavier"
    #   resp.model_packaging_description.model_packaging_configuration.greengrass.target_platform.os #=> String, one of "LINUX"
    #   resp.model_packaging_description.model_packaging_configuration.greengrass.target_platform.arch #=> String, one of "ARM64", "X86_64"
    #   resp.model_packaging_description.model_packaging_configuration.greengrass.target_platform.accelerator #=> String, one of "NVIDIA"
    #   resp.model_packaging_description.model_packaging_configuration.greengrass.s3_output_location.bucket #=> String
    #   resp.model_packaging_description.model_packaging_configuration.greengrass.s3_output_location.prefix #=> String
    #   resp.model_packaging_description.model_packaging_configuration.greengrass.component_name #=> String
    #   resp.model_packaging_description.model_packaging_configuration.greengrass.component_version #=> String
    #   resp.model_packaging_description.model_packaging_configuration.greengrass.component_description #=> String
    #   resp.model_packaging_description.model_packaging_configuration.greengrass.tags #=> Array
    #   resp.model_packaging_description.model_packaging_configuration.greengrass.tags[0].key #=> String
    #   resp.model_packaging_description.model_packaging_configuration.greengrass.tags[0].value #=> String
    #   resp.model_packaging_description.model_packaging_job_description #=> String
    #   resp.model_packaging_description.model_packaging_method #=> String
    #   resp.model_packaging_description.model_packaging_output_details.greengrass.component_version_arn #=> String
    #   resp.model_packaging_description.model_packaging_output_details.greengrass.component_name #=> String
    #   resp.model_packaging_description.model_packaging_output_details.greengrass.component_version #=> String
    #   resp.model_packaging_description.status #=> String, one of "CREATED", "RUNNING", "SUCCEEDED", "FAILED"
    #   resp.model_packaging_description.status_message #=> String
    #   resp.model_packaging_description.creation_timestamp #=> Time
    #   resp.model_packaging_description.last_updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DescribeModelPackagingJob AWS API Documentation
    #
    # @overload describe_model_packaging_job(params = {})
    # @param [Hash] params ({})
    def describe_model_packaging_job(params = {}, options = {})
      req = build_request(:describe_model_packaging_job, params)
      req.send_request(options)
    end

    # Describes an Amazon Lookout for Vision project.
    #
    # This operation requires permissions to perform the
    # `lookoutvision:DescribeProject` operation.
    #
    # @option params [required, String] :project_name
    #   The name of the project that you want to describe.
    #
    # @return [Types::DescribeProjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProjectResponse#project_description #project_description} => Types::ProjectDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_project({
    #     project_name: "ProjectName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.project_description.project_arn #=> String
    #   resp.project_description.project_name #=> String
    #   resp.project_description.creation_timestamp #=> Time
    #   resp.project_description.datasets #=> Array
    #   resp.project_description.datasets[0].dataset_type #=> String
    #   resp.project_description.datasets[0].creation_timestamp #=> Time
    #   resp.project_description.datasets[0].status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED_ROLLBACK_IN_PROGRESS", "UPDATE_FAILED_ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED"
    #   resp.project_description.datasets[0].status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DescribeProject AWS API Documentation
    #
    # @overload describe_project(params = {})
    # @param [Hash] params ({})
    def describe_project(params = {}, options = {})
      req = build_request(:describe_project, params)
      req.send_request(options)
    end

    # Detects anomalies in an image that you supply.
    #
    # The response from `DetectAnomalies` includes a boolean prediction that
    # the image contains one or more anomalies and a confidence value for
    # the prediction. If the model is an image segmentation model, the
    # response also includes segmentation information for each type of
    # anomaly found in the image.
    #
    # <note markdown="1"> Before calling `DetectAnomalies`, you must first start your model with
    # the StartModel operation. You are charged for the amount of time, in
    # minutes, that a model runs and for the number of anomaly detection
    # units that your model uses. If you are not using a model, use the
    # StopModel operation to stop your model.
    #
    #  </note>
    #
    # For more information, see *Detecting anomalies in an image* in the
    # Amazon Lookout for Vision developer guide.
    #
    # This operation requires permissions to perform the
    # `lookoutvision:DetectAnomalies` operation.
    #
    # @option params [required, String] :project_name
    #   The name of the project that contains the model version that you want
    #   to use.
    #
    # @option params [required, String] :model_version
    #   The version of the model that you want to use.
    #
    # @option params [required, String, StringIO, File] :body
    #   The unencrypted image bytes that you want to analyze.
    #
    # @option params [required, String] :content_type
    #   The type of the image passed in `Body`. Valid values are `image/png`
    #   (PNG format images) and `image/jpeg` (JPG format images).
    #
    # @return [Types::DetectAnomaliesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectAnomaliesResponse#detect_anomaly_result #detect_anomaly_result} => Types::DetectAnomalyResult
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_anomalies({
    #     project_name: "ProjectName", # required
    #     model_version: "ModelVersion", # required
    #     body: "data", # required
    #     content_type: "ContentType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.detect_anomaly_result.source.type #=> String
    #   resp.detect_anomaly_result.is_anomalous #=> Boolean
    #   resp.detect_anomaly_result.confidence #=> Float
    #   resp.detect_anomaly_result.anomalies #=> Array
    #   resp.detect_anomaly_result.anomalies[0].name #=> String
    #   resp.detect_anomaly_result.anomalies[0].pixel_anomaly.total_percentage_area #=> Float
    #   resp.detect_anomaly_result.anomalies[0].pixel_anomaly.color #=> String
    #   resp.detect_anomaly_result.anomaly_mask #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/DetectAnomalies AWS API Documentation
    #
    # @overload detect_anomalies(params = {})
    # @param [Hash] params ({})
    def detect_anomalies(params = {}, options = {})
      req = build_request(:detect_anomalies, params)
      req.send_request(options)
    end

    # Lists the JSON Lines within a dataset. An Amazon Lookout for Vision
    # JSON Line contains the anomaly information for a single image,
    # including the image location and the assigned label.
    #
    # This operation requires permissions to perform the
    # `lookoutvision:ListDatasetEntries` operation.
    #
    # @option params [required, String] :project_name
    #   The name of the project that contains the dataset that you want to
    #   list.
    #
    # @option params [required, String] :dataset_type
    #   The type of the dataset that you want to list. Specify `train` to list
    #   the training dataset. Specify `test` to list the test dataset. If you
    #   have a single dataset project, specify `train`.
    #
    # @option params [Boolean] :labeled
    #   Specify `true` to include labeled entries, otherwise specify `false`.
    #   If you don't specify a value, Lookout for Vision returns all entries.
    #
    # @option params [String] :anomaly_class
    #   Specify `normal` to include only normal images. Specify `anomaly` to
    #   only include anomalous entries. If you don't specify a value, Amazon
    #   Lookout for Vision returns normal and anomalous images.
    #
    # @option params [Time,DateTime,Date,Integer,String] :before_creation_date
    #   Only includes entries before the specified date in the response. For
    #   example, `2020-06-23T00:00:00`.
    #
    # @option params [Time,DateTime,Date,Integer,String] :after_creation_date
    #   Only includes entries after the specified date in the response. For
    #   example, `2020-06-23T00:00:00`.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there is more data to
    #   retrieve), Amazon Lookout for Vision returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of dataset entries.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per paginated call. The
    #   largest value you can specify is 100. If you specify a value greater
    #   than 100, a ValidationException error occurs. The default value is
    #   100.
    #
    # @option params [String] :source_ref_contains
    #   Perform a "contains" search on the values of the `source-ref` key
    #   within the dataset. For example a value of "IMG\_17" returns all
    #   JSON Lines where the `source-ref` key value matches **IMG\_17**.
    #
    # @return [Types::ListDatasetEntriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDatasetEntriesResponse#dataset_entries #dataset_entries} => Array&lt;String&gt;
    #   * {Types::ListDatasetEntriesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dataset_entries({
    #     project_name: "ProjectName", # required
    #     dataset_type: "DatasetType", # required
    #     labeled: false,
    #     anomaly_class: "AnomalyClassFilter",
    #     before_creation_date: Time.now,
    #     after_creation_date: Time.now,
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     source_ref_contains: "QueryString",
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_entries #=> Array
    #   resp.dataset_entries[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ListDatasetEntries AWS API Documentation
    #
    # @overload list_dataset_entries(params = {})
    # @param [Hash] params ({})
    def list_dataset_entries(params = {}, options = {})
      req = build_request(:list_dataset_entries, params)
      req.send_request(options)
    end

    # Lists the model packaging jobs created for an Amazon Lookout for
    # Vision project.
    #
    # This operation requires permissions to perform the
    # `lookoutvision:ListModelPackagingJobs` operation.
    #
    # For more information, see *Using your Amazon Lookout for Vision model
    # on an edge device* in the Amazon Lookout for Vision Developer Guide.
    #
    # @option params [required, String] :project_name
    #   The name of the project for which you want to list the model packaging
    #   jobs.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there is more results
    #   to retrieve), Amazon Lookout for Vision returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per paginated call. The
    #   largest value you can specify is 100. If you specify a value greater
    #   than 100, a ValidationException error occurs. The default value is
    #   100.
    #
    # @return [Types::ListModelPackagingJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListModelPackagingJobsResponse#model_packaging_jobs #model_packaging_jobs} => Array&lt;Types::ModelPackagingJobMetadata&gt;
    #   * {Types::ListModelPackagingJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_model_packaging_jobs({
    #     project_name: "ProjectName", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.model_packaging_jobs #=> Array
    #   resp.model_packaging_jobs[0].job_name #=> String
    #   resp.model_packaging_jobs[0].project_name #=> String
    #   resp.model_packaging_jobs[0].model_version #=> String
    #   resp.model_packaging_jobs[0].model_packaging_job_description #=> String
    #   resp.model_packaging_jobs[0].model_packaging_method #=> String
    #   resp.model_packaging_jobs[0].status #=> String, one of "CREATED", "RUNNING", "SUCCEEDED", "FAILED"
    #   resp.model_packaging_jobs[0].status_message #=> String
    #   resp.model_packaging_jobs[0].creation_timestamp #=> Time
    #   resp.model_packaging_jobs[0].last_updated_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ListModelPackagingJobs AWS API Documentation
    #
    # @overload list_model_packaging_jobs(params = {})
    # @param [Hash] params ({})
    def list_model_packaging_jobs(params = {}, options = {})
      req = build_request(:list_model_packaging_jobs, params)
      req.send_request(options)
    end

    # Lists the versions of a model in an Amazon Lookout for Vision project.
    #
    # The `ListModels` operation is eventually consistent. Recent calls to
    # `CreateModel` might take a while to appear in the response from
    # `ListProjects`.
    #
    # This operation requires permissions to perform the
    # `lookoutvision:ListModels` operation.
    #
    # @option params [required, String] :project_name
    #   The name of the project that contains the model versions that you want
    #   to list.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there is more data to
    #   retrieve), Amazon Lookout for Vision returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of models.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per paginated call. The
    #   largest value you can specify is 100. If you specify a value greater
    #   than 100, a ValidationException error occurs. The default value is
    #   100.
    #
    # @return [Types::ListModelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListModelsResponse#models #models} => Array&lt;Types::ModelMetadata&gt;
    #   * {Types::ListModelsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_models({
    #     project_name: "ProjectName", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.models #=> Array
    #   resp.models[0].creation_timestamp #=> Time
    #   resp.models[0].model_version #=> String
    #   resp.models[0].model_arn #=> String
    #   resp.models[0].description #=> String
    #   resp.models[0].status #=> String, one of "TRAINING", "TRAINED", "TRAINING_FAILED", "STARTING_HOSTING", "HOSTED", "HOSTING_FAILED", "STOPPING_HOSTING", "SYSTEM_UPDATING", "DELETING"
    #   resp.models[0].status_message #=> String
    #   resp.models[0].performance.f1_score #=> Float
    #   resp.models[0].performance.recall #=> Float
    #   resp.models[0].performance.precision #=> Float
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ListModels AWS API Documentation
    #
    # @overload list_models(params = {})
    # @param [Hash] params ({})
    def list_models(params = {}, options = {})
      req = build_request(:list_models, params)
      req.send_request(options)
    end

    # Lists the Amazon Lookout for Vision projects in your AWS account that
    # are in the AWS Region in which you call `ListProjects`.
    #
    # The `ListProjects` operation is eventually consistent. Recent calls to
    # `CreateProject` and `DeleteProject` might take a while to appear in
    # the response from `ListProjects`.
    #
    # This operation requires permissions to perform the
    # `lookoutvision:ListProjects` operation.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there is more data to
    #   retrieve), Amazon Lookout for Vision returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of projects.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per paginated call. The
    #   largest value you can specify is 100. If you specify a value greater
    #   than 100, a ValidationException error occurs. The default value is
    #   100.
    #
    # @return [Types::ListProjectsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProjectsResponse#projects #projects} => Array&lt;Types::ProjectMetadata&gt;
    #   * {Types::ListProjectsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_projects({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.projects #=> Array
    #   resp.projects[0].project_arn #=> String
    #   resp.projects[0].project_name #=> String
    #   resp.projects[0].creation_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ListProjects AWS API Documentation
    #
    # @overload list_projects(params = {})
    # @param [Hash] params ({})
    def list_projects(params = {}, options = {})
      req = build_request(:list_projects, params)
      req.send_request(options)
    end

    # Returns a list of tags attached to the specified Amazon Lookout for
    # Vision model.
    #
    # This operation requires permissions to perform the
    # `lookoutvision:ListTagsForResource` operation.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the model for which you want to list
    #   tags.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "TagArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Starts the running of the version of an Amazon Lookout for Vision
    # model. Starting a model takes a while to complete. To check the
    # current state of the model, use DescribeModel.
    #
    # A model is ready to use when its status is `HOSTED`.
    #
    # Once the model is running, you can detect custom labels in new images
    # by calling DetectAnomalies.
    #
    # <note markdown="1"> You are charged for the amount of time that the model is running. To
    # stop a running model, call StopModel.
    #
    #  </note>
    #
    # This operation requires permissions to perform the
    # `lookoutvision:StartModel` operation.
    #
    # @option params [required, String] :project_name
    #   The name of the project that contains the model that you want to
    #   start.
    #
    # @option params [required, String] :model_version
    #   The version of the model that you want to start.
    #
    # @option params [required, Integer] :min_inference_units
    #   The minimum number of inference units to use. A single inference unit
    #   represents 1 hour of processing. Use a higher number to increase the
    #   TPS throughput of your model. You are charged for the number of
    #   inference units that you use.
    #
    # @option params [String] :client_token
    #   ClientToken is an idempotency token that ensures a call to
    #   `StartModel` completes only once. You choose the value to pass. For
    #   example, An issue might prevent you from getting a response from
    #   `StartModel`. In this case, safely retry your call to `StartModel` by
    #   using the same `ClientToken` parameter value.
    #
    #   If you don't supply a value for `ClientToken`, the AWS SDK you are
    #   using inserts a value for you. This prevents retries after a network
    #   error from making multiple start requests. You'll need to provide
    #   your own value for other use cases.
    #
    #   An error occurs if the other input parameters are not the same as in
    #   the first request. Using a different value for `ClientToken` is
    #   considered a new call to `StartModel`. An idempotency token is active
    #   for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Integer] :max_inference_units
    #   The maximum number of inference units to use for auto-scaling the
    #   model. If you don't specify a value, Amazon Lookout for Vision
    #   doesn't auto-scale the model.
    #
    # @return [Types::StartModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartModelResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_model({
    #     project_name: "ProjectName", # required
    #     model_version: "ModelVersion", # required
    #     min_inference_units: 1, # required
    #     client_token: "ClientToken",
    #     max_inference_units: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "STARTING_HOSTING", "HOSTED", "HOSTING_FAILED", "STOPPING_HOSTING", "SYSTEM_UPDATING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/StartModel AWS API Documentation
    #
    # @overload start_model(params = {})
    # @param [Hash] params ({})
    def start_model(params = {}, options = {})
      req = build_request(:start_model, params)
      req.send_request(options)
    end

    # Starts an Amazon Lookout for Vision model packaging job. A model
    # packaging job creates an AWS IoT Greengrass component for a Lookout
    # for Vision model. You can use the component to deploy your model to an
    # edge device managed by Greengrass.
    #
    # Use the DescribeModelPackagingJob API to determine the current status
    # of the job. The model packaging job is complete if the value of
    # `Status` is `SUCCEEDED`.
    #
    # To deploy the component to the target device, use the component name
    # and component version with the AWS IoT Greengrass
    # [CreateDeployment][1] API.
    #
    # This operation requires the following permissions:
    #
    # * `lookoutvision:StartModelPackagingJob`
    #
    # * `s3:PutObject`
    #
    # * `s3:GetBucketLocation`
    #
    # * `kms:GenerateDataKey`
    #
    # * `greengrass:CreateComponentVersion`
    #
    # * `greengrass:DescribeComponent`
    #
    # * (Optional) `greengrass:TagResource`. Only required if you want to
    #   tag the component.
    #
    # For more information, see *Using your Amazon Lookout for Vision model
    # on an edge device* in the Amazon Lookout for Vision Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/greengrass/v2/APIReference/API_CreateDeployment.html
    #
    # @option params [required, String] :project_name
    #   The name of the project which contains the version of the model that
    #   you want to package.
    #
    # @option params [required, String] :model_version
    #   The version of the model within the project that you want to package.
    #
    # @option params [String] :job_name
    #   A name for the model packaging job. If you don't supply a value, the
    #   service creates a job name for you.
    #
    # @option params [required, Types::ModelPackagingConfiguration] :configuration
    #   The configuration for the model packaging job.
    #
    # @option params [String] :description
    #   A description for the model packaging job.
    #
    # @option params [String] :client_token
    #   ClientToken is an idempotency token that ensures a call to
    #   `StartModelPackagingJob` completes only once. You choose the value to
    #   pass. For example, An issue might prevent you from getting a response
    #   from `StartModelPackagingJob`. In this case, safely retry your call to
    #   `StartModelPackagingJob` by using the same `ClientToken` parameter
    #   value.
    #
    #   If you don't supply a value for `ClientToken`, the AWS SDK you are
    #   using inserts a value for you. This prevents retries after a network
    #   error from making multiple dataset creation requests. You'll need to
    #   provide your own value for other use cases.
    #
    #   An error occurs if the other input parameters are not the same as in
    #   the first request. Using a different value for `ClientToken` is
    #   considered a new call to `StartModelPackagingJob`. An idempotency
    #   token is active for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartModelPackagingJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartModelPackagingJobResponse#job_name #job_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_model_packaging_job({
    #     project_name: "ProjectName", # required
    #     model_version: "ModelVersion", # required
    #     job_name: "ModelPackagingJobName",
    #     configuration: { # required
    #       greengrass: { # required
    #         compiler_options: "CompilerOptions",
    #         target_device: "jetson_xavier", # accepts jetson_xavier
    #         target_platform: {
    #           os: "LINUX", # required, accepts LINUX
    #           arch: "ARM64", # required, accepts ARM64, X86_64
    #           accelerator: "NVIDIA", # accepts NVIDIA
    #         },
    #         s3_output_location: { # required
    #           bucket: "S3BucketName", # required
    #           prefix: "S3KeyPrefix",
    #         },
    #         component_name: "ComponentName", # required
    #         component_version: "ComponentVersion",
    #         component_description: "ComponentDescription",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       },
    #     },
    #     description: "ModelPackagingJobDescription",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/StartModelPackagingJob AWS API Documentation
    #
    # @overload start_model_packaging_job(params = {})
    # @param [Hash] params ({})
    def start_model_packaging_job(params = {}, options = {})
      req = build_request(:start_model_packaging_job, params)
      req.send_request(options)
    end

    # Stops the hosting of a running model. The operation might take a while
    # to complete. To check the current status, call DescribeModel.
    #
    # After the model hosting stops, the `Status` of the model is `TRAINED`.
    #
    # This operation requires permissions to perform the
    # `lookoutvision:StopModel` operation.
    #
    # @option params [required, String] :project_name
    #   The name of the project that contains the model that you want to stop.
    #
    # @option params [required, String] :model_version
    #   The version of the model that you want to stop.
    #
    # @option params [String] :client_token
    #   ClientToken is an idempotency token that ensures a call to `StopModel`
    #   completes only once. You choose the value to pass. For example, An
    #   issue might prevent you from getting a response from `StopModel`. In
    #   this case, safely retry your call to `StopModel` by using the same
    #   `ClientToken` parameter value.
    #
    #   If you don't supply a value for `ClientToken`, the AWS SDK you are
    #   using inserts a value for you. This prevents retries after a network
    #   error from making multiple stop requests. You'll need to provide your
    #   own value for other use cases.
    #
    #   An error occurs if the other input parameters are not the same as in
    #   the first request. Using a different value for `ClientToken` is
    #   considered a new call to `StopModel`. An idempotency token is active
    #   for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StopModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopModelResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_model({
    #     project_name: "ProjectName", # required
    #     model_version: "ModelVersion", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "STARTING_HOSTING", "HOSTED", "HOSTING_FAILED", "STOPPING_HOSTING", "SYSTEM_UPDATING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/StopModel AWS API Documentation
    #
    # @overload stop_model(params = {})
    # @param [Hash] params ({})
    def stop_model(params = {}, options = {})
      req = build_request(:stop_model, params)
      req.send_request(options)
    end

    # Adds one or more key-value tags to an Amazon Lookout for Vision model.
    # For more information, see *Tagging a model* in the *Amazon Lookout for
    # Vision Developer Guide*.
    #
    # This operation requires permissions to perform the
    # `lookoutvision:TagResource` operation.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the model to assign the tags.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The key-value tags to assign to the model.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "TagArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from an Amazon Lookout for Vision model. For
    # more information, see *Tagging a model* in the *Amazon Lookout for
    # Vision Developer Guide*.
    #
    # This operation requires permissions to perform the
    # `lookoutvision:UntagResource` operation.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the model from which you want to
    #   remove tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of the keys of the tags that you want to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "TagArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Adds or updates one or more JSON Line entries in a dataset. A JSON
    # Line includes information about an image used for training or testing
    # an Amazon Lookout for Vision model.
    #
    # To update an existing JSON Line, use the `source-ref` field to
    # identify the JSON Line. The JSON line that you supply replaces the
    # existing JSON line. Any existing annotations that are not in the new
    # JSON line are removed from the dataset.
    #
    # For more information, see *Defining JSON lines for anomaly
    # classification* in the Amazon Lookout for Vision Developer Guide.
    #
    # <note markdown="1"> The images you reference in the `source-ref` field of a JSON line,
    # must be in the same S3 bucket as the existing images in the dataset.
    #
    #  </note>
    #
    # Updating a dataset might take a while to complete. To check the
    # current status, call DescribeDataset and check the `Status` field in
    # the response.
    #
    # This operation requires permissions to perform the
    # `lookoutvision:UpdateDatasetEntries` operation.
    #
    # @option params [required, String] :project_name
    #   The name of the project that contains the dataset that you want to
    #   update.
    #
    # @option params [required, String] :dataset_type
    #   The type of the dataset that you want to update. Specify `train` to
    #   update the training dataset. Specify `test` to update the test
    #   dataset. If you have a single dataset project, specify `train`.
    #
    # @option params [required, String, StringIO, File] :changes
    #   The entries to add to the dataset.
    #
    # @option params [String] :client_token
    #   ClientToken is an idempotency token that ensures a call to
    #   `UpdateDatasetEntries` completes only once. You choose the value to
    #   pass. For example, An issue might prevent you from getting a response
    #   from `UpdateDatasetEntries`. In this case, safely retry your call to
    #   `UpdateDatasetEntries` by using the same `ClientToken` parameter
    #   value.
    #
    #   If you don't supply a value for `ClientToken`, the AWS SDK you are
    #   using inserts a value for you. This prevents retries after a network
    #   error from making multiple updates with the same dataset entries.
    #   You'll need to provide your own value for other use cases.
    #
    #   An error occurs if the other input parameters are not the same as in
    #   the first request. Using a different value for `ClientToken` is
    #   considered a new call to `UpdateDatasetEntries`. An idempotency token
    #   is active for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateDatasetEntriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDatasetEntriesResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dataset_entries({
    #     project_name: "ProjectName", # required
    #     dataset_type: "DatasetType", # required
    #     changes: "data", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED_ROLLBACK_IN_PROGRESS", "UPDATE_FAILED_ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20/UpdateDatasetEntries AWS API Documentation
    #
    # @overload update_dataset_entries(params = {})
    # @param [Hash] params ({})
    def update_dataset_entries(params = {}, options = {})
      req = build_request(:update_dataset_entries, params)
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
      context[:gem_name] = 'aws-sdk-lookoutforvision'
      context[:gem_version] = '1.24.0'
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
