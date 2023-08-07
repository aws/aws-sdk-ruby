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
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:personalize)

module Aws::Personalize
  # An API client for Personalize.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Personalize::Client.new(
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

    @identifier = :personalize

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
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::Personalize::Plugins::Endpoints)

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
    #   @option options [Aws::Personalize::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Personalize::EndpointParameters`
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

    # Creates a batch inference job. The operation can handle up to 50
    # million records and the input file must be in JSON format. For more
    # information, see [Creating a batch inference job][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/creating-batch-inference-job.html
    #
    # @option params [required, String] :job_name
    #   The name of the batch inference job to create.
    #
    # @option params [required, String] :solution_version_arn
    #   The Amazon Resource Name (ARN) of the solution version that will be
    #   used to generate the batch inference recommendations.
    #
    # @option params [String] :filter_arn
    #   The ARN of the filter to apply to the batch inference job. For more
    #   information on using filters, see [Filtering batch
    #   recommendations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/filter-batch.html
    #
    # @option params [Integer] :num_results
    #   The number of recommendations to retrieve.
    #
    # @option params [required, Types::BatchInferenceJobInput] :job_input
    #   The Amazon S3 path that leads to the input file to base your
    #   recommendations on. The input material must be in JSON format.
    #
    # @option params [required, Types::BatchInferenceJobOutput] :job_output
    #   The path to the Amazon S3 bucket where the job's output will be
    #   stored.
    #
    # @option params [required, String] :role_arn
    #   The ARN of the Amazon Identity and Access Management role that has
    #   permissions to read and write to your input and output Amazon S3
    #   buckets respectively.
    #
    # @option params [Types::BatchInferenceJobConfig] :batch_inference_job_config
    #   The configuration details of a batch inference job.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of [tags][1] to apply to the batch inference job.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #
    # @return [Types::CreateBatchInferenceJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBatchInferenceJobResponse#batch_inference_job_arn #batch_inference_job_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_batch_inference_job({
    #     job_name: "Name", # required
    #     solution_version_arn: "Arn", # required
    #     filter_arn: "Arn",
    #     num_results: 1,
    #     job_input: { # required
    #       s3_data_source: { # required
    #         path: "S3Location", # required
    #         kms_key_arn: "KmsKeyArn",
    #       },
    #     },
    #     job_output: { # required
    #       s3_data_destination: { # required
    #         path: "S3Location", # required
    #         kms_key_arn: "KmsKeyArn",
    #       },
    #     },
    #     role_arn: "RoleArn", # required
    #     batch_inference_job_config: {
    #       item_exploration_config: {
    #         "ParameterName" => "ParameterValue",
    #       },
    #     },
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.batch_inference_job_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateBatchInferenceJob AWS API Documentation
    #
    # @overload create_batch_inference_job(params = {})
    # @param [Hash] params ({})
    def create_batch_inference_job(params = {}, options = {})
      req = build_request(:create_batch_inference_job, params)
      req.send_request(options)
    end

    # Creates a batch segment job. The operation can handle up to 50 million
    # records and the input file must be in JSON format. For more
    # information, see [Getting batch recommendations and user segments][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/recommendations-batch.html
    #
    # @option params [required, String] :job_name
    #   The name of the batch segment job to create.
    #
    # @option params [required, String] :solution_version_arn
    #   The Amazon Resource Name (ARN) of the solution version you want the
    #   batch segment job to use to generate batch segments.
    #
    # @option params [String] :filter_arn
    #   The ARN of the filter to apply to the batch segment job. For more
    #   information on using filters, see [Filtering batch
    #   recommendations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/filter-batch.html
    #
    # @option params [Integer] :num_results
    #   The number of predicted users generated by the batch segment job for
    #   each line of input data. The maximum number of users per segment is 5
    #   million.
    #
    # @option params [required, Types::BatchSegmentJobInput] :job_input
    #   The Amazon S3 path for the input data used to generate the batch
    #   segment job.
    #
    # @option params [required, Types::BatchSegmentJobOutput] :job_output
    #   The Amazon S3 path for the bucket where the job's output will be
    #   stored.
    #
    # @option params [required, String] :role_arn
    #   The ARN of the Amazon Identity and Access Management role that has
    #   permissions to read and write to your input and output Amazon S3
    #   buckets respectively.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of [tags][1] to apply to the batch segment job.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #
    # @return [Types::CreateBatchSegmentJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBatchSegmentJobResponse#batch_segment_job_arn #batch_segment_job_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_batch_segment_job({
    #     job_name: "Name", # required
    #     solution_version_arn: "Arn", # required
    #     filter_arn: "Arn",
    #     num_results: 1,
    #     job_input: { # required
    #       s3_data_source: { # required
    #         path: "S3Location", # required
    #         kms_key_arn: "KmsKeyArn",
    #       },
    #     },
    #     job_output: { # required
    #       s3_data_destination: { # required
    #         path: "S3Location", # required
    #         kms_key_arn: "KmsKeyArn",
    #       },
    #     },
    #     role_arn: "RoleArn", # required
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.batch_segment_job_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateBatchSegmentJob AWS API Documentation
    #
    # @overload create_batch_segment_job(params = {})
    # @param [Hash] params ({})
    def create_batch_segment_job(params = {}, options = {})
      req = build_request(:create_batch_segment_job, params)
      req.send_request(options)
    end

    # Creates a campaign that deploys a solution version. When a client
    # calls the [GetRecommendations][1] and [GetPersonalizedRanking][2]
    # APIs, a campaign is specified in the request.
    #
    # **Minimum Provisioned TPS and Auto-Scaling**
    #
    # A high `minProvisionedTPS` will increase your bill. We recommend
    # starting with 1 for `minProvisionedTPS` (the default). Track your
    # usage using Amazon CloudWatch metrics, and increase the
    # `minProvisionedTPS` as necessary.
    #
    # A transaction is a single `GetRecommendations` or
    # `GetPersonalizedRanking` call. Transactions per second (TPS) is the
    # throughput and unit of billing for Amazon Personalize. The minimum
    # provisioned TPS (`minProvisionedTPS`) specifies the baseline
    # throughput provisioned by Amazon Personalize, and thus, the minimum
    # billing charge.
    #
    # If your TPS increases beyond `minProvisionedTPS`, Amazon Personalize
    # auto-scales the provisioned capacity up and down, but never below
    # `minProvisionedTPS`. There's a short time delay while the capacity is
    # increased that might cause loss of transactions.
    #
    # The actual TPS used is calculated as the average requests/second
    # within a 5-minute window. You pay for maximum of either the minimum
    # provisioned TPS or the actual TPS. We recommend starting with a low
    # `minProvisionedTPS`, track your usage using Amazon CloudWatch metrics,
    # and then increase the `minProvisionedTPS` as necessary.
    #
    # **Status**
    #
    # A campaign can be in one of the following states:
    #
    # * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #   FAILED
    #
    # * DELETE PENDING &gt; DELETE IN\_PROGRESS
    #
    # To get the campaign status, call [DescribeCampaign][3].
    #
    # <note markdown="1"> Wait until the `status` of the campaign is `ACTIVE` before asking the
    # campaign for recommendations.
    #
    #  </note>
    #
    # **Related APIs**
    #
    # * [ListCampaigns][4]
    #
    # * [DescribeCampaign][3]
    #
    # * [UpdateCampaign][5]
    #
    # * [DeleteCampaign][6]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html
    # [2]: https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetPersonalizedRanking.html
    # [3]: https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeCampaign.html
    # [4]: https://docs.aws.amazon.com/personalize/latest/dg/API_ListCampaigns.html
    # [5]: https://docs.aws.amazon.com/personalize/latest/dg/API_UpdateCampaign.html
    # [6]: https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteCampaign.html
    #
    # @option params [required, String] :name
    #   A name for the new campaign. The campaign name must be unique within
    #   your account.
    #
    # @option params [required, String] :solution_version_arn
    #   The Amazon Resource Name (ARN) of the solution version to deploy.
    #
    # @option params [Integer] :min_provisioned_tps
    #   Specifies the requested minimum provisioned transactions
    #   (recommendations) per second that Amazon Personalize will support. A
    #   high `minProvisionedTPS` will increase your bill. We recommend
    #   starting with 1 for `minProvisionedTPS` (the default). Track your
    #   usage using Amazon CloudWatch metrics, and increase the
    #   `minProvisionedTPS` as necessary.
    #
    # @option params [Types::CampaignConfig] :campaign_config
    #   The configuration details of a campaign.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of [tags][1] to apply to the campaign.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #
    # @return [Types::CreateCampaignResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCampaignResponse#campaign_arn #campaign_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_campaign({
    #     name: "Name", # required
    #     solution_version_arn: "Arn", # required
    #     min_provisioned_tps: 1,
    #     campaign_config: {
    #       item_exploration_config: {
    #         "ParameterName" => "ParameterValue",
    #       },
    #     },
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.campaign_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateCampaign AWS API Documentation
    #
    # @overload create_campaign(params = {})
    # @param [Hash] params ({})
    def create_campaign(params = {}, options = {})
      req = build_request(:create_campaign, params)
      req.send_request(options)
    end

    # Creates an empty dataset and adds it to the specified dataset group.
    # Use [CreateDatasetImportJob][1] to import your training data to a
    # dataset.
    #
    # There are three types of datasets:
    #
    # * Interactions
    #
    # * Items
    #
    # * Users
    #
    # Each dataset type has an associated schema with required field types.
    # Only the `Interactions` dataset is required in order to train a model
    # (also referred to as creating a solution).
    #
    # A dataset can be in one of the following states:
    #
    # * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #   FAILED
    #
    # * DELETE PENDING &gt; DELETE IN\_PROGRESS
    #
    # To get the status of the dataset, call [DescribeDataset][2].
    #
    # **Related APIs**
    #
    # * [CreateDatasetGroup][3]
    #
    # * [ListDatasets][4]
    #
    # * [DescribeDataset][2]
    #
    # * [DeleteDataset][5]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetImportJob.html
    # [2]: https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDataset.html
    # [3]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetGroup.html
    # [4]: https://docs.aws.amazon.com/personalize/latest/dg/API_ListDatasets.html
    # [5]: https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteDataset.html
    #
    # @option params [required, String] :name
    #   The name for the dataset.
    #
    # @option params [required, String] :schema_arn
    #   The ARN of the schema to associate with the dataset. The schema
    #   defines the dataset fields.
    #
    # @option params [required, String] :dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group to add the dataset
    #   to.
    #
    # @option params [required, String] :dataset_type
    #   The type of dataset.
    #
    #   One of the following (case insensitive) values:
    #
    #   * Interactions
    #
    #   * Items
    #
    #   * Users
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of [tags][1] to apply to the dataset.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #
    # @return [Types::CreateDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDatasetResponse#dataset_arn #dataset_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset({
    #     name: "Name", # required
    #     schema_arn: "Arn", # required
    #     dataset_group_arn: "Arn", # required
    #     dataset_type: "DatasetType", # required
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateDataset AWS API Documentation
    #
    # @overload create_dataset(params = {})
    # @param [Hash] params ({})
    def create_dataset(params = {}, options = {})
      req = build_request(:create_dataset, params)
      req.send_request(options)
    end

    # Creates a job that exports data from your dataset to an Amazon S3
    # bucket. To allow Amazon Personalize to export the training data, you
    # must specify an service-linked IAM role that gives Amazon Personalize
    # `PutObject` permissions for your Amazon S3 bucket. For information,
    # see [Exporting a dataset][1] in the Amazon Personalize developer
    # guide.
    #
    # **Status**
    #
    # A dataset export job can be in one of the following states:
    #
    # * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #   FAILED
    #
    # ^
    #
    # To get the status of the export job, call
    # [DescribeDatasetExportJob][2], and specify the Amazon Resource Name
    # (ARN) of the dataset export job. The dataset export is complete when
    # the status shows as ACTIVE. If the status shows as CREATE FAILED, the
    # response includes a `failureReason` key, which describes why the job
    # failed.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/export-data.html
    # [2]: https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetExportJob.html
    #
    # @option params [required, String] :job_name
    #   The name for the dataset export job.
    #
    # @option params [required, String] :dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset that contains the data
    #   to export.
    #
    # @option params [String] :ingestion_mode
    #   The data to export, based on how you imported the data. You can choose
    #   to export only `BULK` data that you imported using a dataset import
    #   job, only `PUT` data that you imported incrementally (using the
    #   console, PutEvents, PutUsers and PutItems operations), or `ALL` for
    #   both types. The default value is `PUT`.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM service role that has
    #   permissions to add data to your output Amazon S3 bucket.
    #
    # @option params [required, Types::DatasetExportJobOutput] :job_output
    #   The path to the Amazon S3 bucket where the job's output is stored.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of [tags][1] to apply to the dataset export job.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #
    # @return [Types::CreateDatasetExportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDatasetExportJobResponse#dataset_export_job_arn #dataset_export_job_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset_export_job({
    #     job_name: "Name", # required
    #     dataset_arn: "Arn", # required
    #     ingestion_mode: "BULK", # accepts BULK, PUT, ALL
    #     role_arn: "RoleArn", # required
    #     job_output: { # required
    #       s3_data_destination: { # required
    #         path: "S3Location", # required
    #         kms_key_arn: "KmsKeyArn",
    #       },
    #     },
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_export_job_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateDatasetExportJob AWS API Documentation
    #
    # @overload create_dataset_export_job(params = {})
    # @param [Hash] params ({})
    def create_dataset_export_job(params = {}, options = {})
      req = build_request(:create_dataset_export_job, params)
      req.send_request(options)
    end

    # Creates an empty dataset group. A dataset group is a container for
    # Amazon Personalize resources. A dataset group can contain at most
    # three datasets, one for each type of dataset:
    #
    # * Interactions
    #
    # * Items
    #
    # * Users
    #
    # A dataset group can be a Domain dataset group, where you specify a
    # domain and use pre-configured resources like recommenders, or a Custom
    # dataset group, where you use custom resources, such as a solution with
    # a solution version, that you deploy with a campaign. If you start with
    # a Domain dataset group, you can still add custom resources such as
    # solutions and solution versions trained with recipes for custom use
    # cases and deployed with campaigns.
    #
    # A dataset group can be in one of the following states:
    #
    # * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #   FAILED
    #
    # * DELETE PENDING
    #
    # To get the status of the dataset group, call
    # [DescribeDatasetGroup][1]. If the status shows as CREATE FAILED, the
    # response includes a `failureReason` key, which describes why the
    # creation failed.
    #
    # <note markdown="1"> You must wait until the `status` of the dataset group is `ACTIVE`
    # before adding a dataset to the group.
    #
    #  </note>
    #
    # You can specify an Key Management Service (KMS) key to encrypt the
    # datasets in the group. If you specify a KMS key, you must also include
    # an Identity and Access Management (IAM) role that has permission to
    # access the key.
    #
    # **APIs that require a dataset group ARN in the request**
    #
    # * [CreateDataset][2]
    #
    # * [CreateEventTracker][3]
    #
    # * [CreateSolution][4]
    #
    # **Related APIs**
    #
    # * [ListDatasetGroups][5]
    #
    # * [DescribeDatasetGroup][1]
    #
    # * [DeleteDatasetGroup][6]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetGroup.html
    # [2]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html
    # [3]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html
    # [4]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html
    # [5]: https://docs.aws.amazon.com/personalize/latest/dg/API_ListDatasetGroups.html
    # [6]: https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteDatasetGroup.html
    #
    # @option params [required, String] :name
    #   The name for the new dataset group.
    #
    # @option params [String] :role_arn
    #   The ARN of the Identity and Access Management (IAM) role that has
    #   permissions to access the Key Management Service (KMS) key. Supplying
    #   an IAM role is only valid when also specifying a KMS key.
    #
    # @option params [String] :kms_key_arn
    #   The Amazon Resource Name (ARN) of a Key Management Service (KMS) key
    #   used to encrypt the datasets.
    #
    # @option params [String] :domain
    #   The domain of the dataset group. Specify a domain to create a Domain
    #   dataset group. The domain you specify determines the default schemas
    #   for datasets and the use cases available for recommenders. If you
    #   don't specify a domain, you create a Custom dataset group with
    #   solution versions that you deploy with a campaign.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of [tags][1] to apply to the dataset group.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #
    # @return [Types::CreateDatasetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDatasetGroupResponse#dataset_group_arn #dataset_group_arn} => String
    #   * {Types::CreateDatasetGroupResponse#domain #domain} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset_group({
    #     name: "Name", # required
    #     role_arn: "RoleArn",
    #     kms_key_arn: "KmsKeyArn",
    #     domain: "ECOMMERCE", # accepts ECOMMERCE, VIDEO_ON_DEMAND
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_group_arn #=> String
    #   resp.domain #=> String, one of "ECOMMERCE", "VIDEO_ON_DEMAND"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateDatasetGroup AWS API Documentation
    #
    # @overload create_dataset_group(params = {})
    # @param [Hash] params ({})
    def create_dataset_group(params = {}, options = {})
      req = build_request(:create_dataset_group, params)
      req.send_request(options)
    end

    # Creates a job that imports training data from your data source (an
    # Amazon S3 bucket) to an Amazon Personalize dataset. To allow Amazon
    # Personalize to import the training data, you must specify an IAM
    # service role that has permission to read from the data source, as
    # Amazon Personalize makes a copy of your data and processes it
    # internally. For information on granting access to your Amazon S3
    # bucket, see [Giving Amazon Personalize Access to Amazon S3
    # Resources][1].
    #
    # By default, a dataset import job replaces any existing data in the
    # dataset that you imported in bulk. To add new records without
    # replacing existing data, specify INCREMENTAL for the import mode in
    # the CreateDatasetImportJob operation.
    #
    # **Status**
    #
    # A dataset import job can be in one of the following states:
    #
    # * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #   FAILED
    #
    # ^
    #
    # To get the status of the import job, call
    # [DescribeDatasetImportJob][2], providing the Amazon Resource Name
    # (ARN) of the dataset import job. The dataset import is complete when
    # the status shows as ACTIVE. If the status shows as CREATE FAILED, the
    # response includes a `failureReason` key, which describes why the job
    # failed.
    #
    # <note markdown="1"> Importing takes time. You must wait until the status shows as ACTIVE
    # before training a model using the dataset.
    #
    #  </note>
    #
    # **Related APIs**
    #
    # * [ListDatasetImportJobs][3]
    #
    # * [DescribeDatasetImportJob][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/granting-personalize-s3-access.html
    # [2]: https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetImportJob.html
    # [3]: https://docs.aws.amazon.com/personalize/latest/dg/API_ListDatasetImportJobs.html
    #
    # @option params [required, String] :job_name
    #   The name for the dataset import job.
    #
    # @option params [required, String] :dataset_arn
    #   The ARN of the dataset that receives the imported data.
    #
    # @option params [required, Types::DataSource] :data_source
    #   The Amazon S3 bucket that contains the training data to import.
    #
    # @option params [required, String] :role_arn
    #   The ARN of the IAM role that has permissions to read from the Amazon
    #   S3 data source.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of [tags][1] to apply to the dataset import job.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #
    # @option params [String] :import_mode
    #   Specify how to add the new records to an existing dataset. The default
    #   import mode is `FULL`. If you haven't imported bulk records into the
    #   dataset previously, you can only specify `FULL`.
    #
    #   * Specify `FULL` to overwrite all existing bulk data in your dataset.
    #     Data you imported individually is not replaced.
    #
    #   * Specify `INCREMENTAL` to append the new records to the existing data
    #     in your dataset. Amazon Personalize replaces any record with the
    #     same ID with the new one.
    #
    # @option params [Boolean] :publish_attribution_metrics_to_s3
    #   If you created a metric attribution, specify whether to publish
    #   metrics for this import job to Amazon S3
    #
    # @return [Types::CreateDatasetImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDatasetImportJobResponse#dataset_import_job_arn #dataset_import_job_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset_import_job({
    #     job_name: "Name", # required
    #     dataset_arn: "Arn", # required
    #     data_source: { # required
    #       data_location: "S3Location",
    #     },
    #     role_arn: "RoleArn", # required
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       },
    #     ],
    #     import_mode: "FULL", # accepts FULL, INCREMENTAL
    #     publish_attribution_metrics_to_s3: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_import_job_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateDatasetImportJob AWS API Documentation
    #
    # @overload create_dataset_import_job(params = {})
    # @param [Hash] params ({})
    def create_dataset_import_job(params = {}, options = {})
      req = build_request(:create_dataset_import_job, params)
      req.send_request(options)
    end

    # Creates an event tracker that you use when adding event data to a
    # specified dataset group using the [PutEvents][1] API.
    #
    # <note markdown="1"> Only one event tracker can be associated with a dataset group. You
    # will get an error if you call `CreateEventTracker` using the same
    # dataset group as an existing event tracker.
    #
    #  </note>
    #
    # When you create an event tracker, the response includes a tracking ID,
    # which you pass as a parameter when you use the [PutEvents][1]
    # operation. Amazon Personalize then appends the event data to the
    # Interactions dataset of the dataset group you specify in your event
    # tracker.
    #
    # The event tracker can be in one of the following states:
    #
    # * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #   FAILED
    #
    # * DELETE PENDING &gt; DELETE IN\_PROGRESS
    #
    # To get the status of the event tracker, call
    # [DescribeEventTracker][2].
    #
    # <note markdown="1"> The event tracker must be in the ACTIVE state before using the
    # tracking ID.
    #
    #  </note>
    #
    # **Related APIs**
    #
    # * [ListEventTrackers][3]
    #
    # * [DescribeEventTracker][2]
    #
    # * [DeleteEventTracker][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html
    # [2]: https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeEventTracker.html
    # [3]: https://docs.aws.amazon.com/personalize/latest/dg/API_ListEventTrackers.html
    # [4]: https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteEventTracker.html
    #
    # @option params [required, String] :name
    #   The name for the event tracker.
    #
    # @option params [required, String] :dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group that receives the
    #   event data.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of [tags][1] to apply to the event tracker.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #
    # @return [Types::CreateEventTrackerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEventTrackerResponse#event_tracker_arn #event_tracker_arn} => String
    #   * {Types::CreateEventTrackerResponse#tracking_id #tracking_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_tracker({
    #     name: "Name", # required
    #     dataset_group_arn: "Arn", # required
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.event_tracker_arn #=> String
    #   resp.tracking_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateEventTracker AWS API Documentation
    #
    # @overload create_event_tracker(params = {})
    # @param [Hash] params ({})
    def create_event_tracker(params = {}, options = {})
      req = build_request(:create_event_tracker, params)
      req.send_request(options)
    end

    # Creates a recommendation filter. For more information, see [Filtering
    # recommendations and user segments][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/filter.html
    #
    # @option params [required, String] :name
    #   The name of the filter to create.
    #
    # @option params [required, String] :dataset_group_arn
    #   The ARN of the dataset group that the filter will belong to.
    #
    # @option params [required, String] :filter_expression
    #   The filter expression defines which items are included or excluded
    #   from recommendations. Filter expression must follow specific format
    #   rules. For information about filter expression structure and syntax,
    #   see [Filter expressions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/filter-expressions.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of [tags][1] to apply to the filter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #
    # @return [Types::CreateFilterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFilterResponse#filter_arn #filter_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_filter({
    #     name: "Name", # required
    #     dataset_group_arn: "Arn", # required
    #     filter_expression: "FilterExpression", # required
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.filter_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateFilter AWS API Documentation
    #
    # @overload create_filter(params = {})
    # @param [Hash] params ({})
    def create_filter(params = {}, options = {})
      req = build_request(:create_filter, params)
      req.send_request(options)
    end

    # Creates a metric attribution. A metric attribution creates reports on
    # the data that you import into Amazon Personalize. Depending on how you
    # imported the data, you can view reports in Amazon CloudWatch or Amazon
    # S3. For more information, see [Measuring impact of
    # recommendations][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html
    #
    # @option params [required, String] :name
    #   A name for the metric attribution.
    #
    # @option params [required, String] :dataset_group_arn
    #   The Amazon Resource Name (ARN) of the destination dataset group for
    #   the metric attribution.
    #
    # @option params [required, Array<Types::MetricAttribute>] :metrics
    #   A list of metric attributes for the metric attribution. Each metric
    #   attribute specifies an event type to track and a function. Available
    #   functions are `SUM()` or `SAMPLECOUNT()`. For SUM() functions, provide
    #   the dataset type (either Interactions or Items) and column to sum as a
    #   parameter. For example SUM(Items.PRICE).
    #
    # @option params [required, Types::MetricAttributionOutput] :metrics_output_config
    #   The output configuration details for the metric attribution.
    #
    # @return [Types::CreateMetricAttributionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMetricAttributionResponse#metric_attribution_arn #metric_attribution_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_metric_attribution({
    #     name: "Name", # required
    #     dataset_group_arn: "Arn", # required
    #     metrics: [ # required
    #       {
    #         event_type: "EventType", # required
    #         metric_name: "MetricName", # required
    #         expression: "MetricExpression", # required
    #       },
    #     ],
    #     metrics_output_config: { # required
    #       s3_data_destination: {
    #         path: "S3Location", # required
    #         kms_key_arn: "KmsKeyArn",
    #       },
    #       role_arn: "RoleArn", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.metric_attribution_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateMetricAttribution AWS API Documentation
    #
    # @overload create_metric_attribution(params = {})
    # @param [Hash] params ({})
    def create_metric_attribution(params = {}, options = {})
      req = build_request(:create_metric_attribution, params)
      req.send_request(options)
    end

    # Creates a recommender with the recipe (a Domain dataset group use
    # case) you specify. You create recommenders for a Domain dataset group
    # and specify the recommender's Amazon Resource Name (ARN) when you
    # make a [GetRecommendations][1] request.
    #
    # **Minimum recommendation requests per second**
    #
    # A high `minRecommendationRequestsPerSecond` will increase your bill.
    # We recommend starting with 1 for `minRecommendationRequestsPerSecond`
    # (the default). Track your usage using Amazon CloudWatch metrics, and
    # increase the `minRecommendationRequestsPerSecond` as necessary.
    #
    # When you create a recommender, you can configure the recommender's
    # minimum recommendation requests per second. The minimum recommendation
    # requests per second (`minRecommendationRequestsPerSecond`) specifies
    # the baseline recommendation request throughput provisioned by Amazon
    # Personalize. The default minRecommendationRequestsPerSecond is `1`. A
    # recommendation request is a single `GetRecommendations` operation.
    # Request throughput is measured in requests per second and Amazon
    # Personalize uses your requests per second to derive your requests per
    # hour and the price of your recommender usage.
    #
    # If your requests per second increases beyond
    # `minRecommendationRequestsPerSecond`, Amazon Personalize auto-scales
    # the provisioned capacity up and down, but never below
    # `minRecommendationRequestsPerSecond`. There's a short time delay
    # while the capacity is increased that might cause loss of requests.
    #
    # Your bill is the greater of either the minimum requests per hour
    # (based on minRecommendationRequestsPerSecond) or the actual number of
    # requests. The actual request throughput used is calculated as the
    # average requests/second within a one-hour window. We recommend
    # starting with the default `minRecommendationRequestsPerSecond`, track
    # your usage using Amazon CloudWatch metrics, and then increase the
    # `minRecommendationRequestsPerSecond` as necessary.
    #
    # **Status**
    #
    # A recommender can be in one of the following states:
    #
    # * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #   FAILED
    #
    # * STOP PENDING &gt; STOP IN\_PROGRESS &gt; INACTIVE &gt; START PENDING
    #   &gt; START IN\_PROGRESS &gt; ACTIVE
    #
    # * DELETE PENDING &gt; DELETE IN\_PROGRESS
    #
    # To get the recommender status, call [DescribeRecommender][2].
    #
    # <note markdown="1"> Wait until the `status` of the recommender is `ACTIVE` before asking
    # the recommender for recommendations.
    #
    #  </note>
    #
    # **Related APIs**
    #
    # * [ListRecommenders][3]
    #
    # * [DescribeRecommender][2]
    #
    # * [UpdateRecommender][4]
    #
    # * [DeleteRecommender][5]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html
    # [2]: https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeRecommender.html
    # [3]: https://docs.aws.amazon.com/personalize/latest/dg/API_ListRecommenders.html
    # [4]: https://docs.aws.amazon.com/personalize/latest/dg/API_UpdateRecommender.html
    # [5]: https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteRecommender.html
    #
    # @option params [required, String] :name
    #   The name of the recommender.
    #
    # @option params [required, String] :dataset_group_arn
    #   The Amazon Resource Name (ARN) of the destination domain dataset group
    #   for the recommender.
    #
    # @option params [required, String] :recipe_arn
    #   The Amazon Resource Name (ARN) of the recipe that the recommender will
    #   use. For a recommender, a recipe is a Domain dataset group use case.
    #   Only Domain dataset group use cases can be used to create a
    #   recommender. For information about use cases see [Choosing recommender
    #   use cases][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/domain-use-cases.html
    #
    # @option params [Types::RecommenderConfig] :recommender_config
    #   The configuration details of the recommender.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of [tags][1] to apply to the recommender.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #
    # @return [Types::CreateRecommenderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRecommenderResponse#recommender_arn #recommender_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_recommender({
    #     name: "Name", # required
    #     dataset_group_arn: "Arn", # required
    #     recipe_arn: "Arn", # required
    #     recommender_config: {
    #       item_exploration_config: {
    #         "ParameterName" => "ParameterValue",
    #       },
    #       min_recommendation_requests_per_second: 1,
    #       training_data_config: {
    #         excluded_dataset_columns: {
    #           "DatasetType" => ["ColumnName"],
    #         },
    #       },
    #     },
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.recommender_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateRecommender AWS API Documentation
    #
    # @overload create_recommender(params = {})
    # @param [Hash] params ({})
    def create_recommender(params = {}, options = {})
      req = build_request(:create_recommender, params)
      req.send_request(options)
    end

    # Creates an Amazon Personalize schema from the specified schema string.
    # The schema you create must be in Avro JSON format.
    #
    # Amazon Personalize recognizes three schema variants. Each schema is
    # associated with a dataset type and has a set of required field and
    # keywords. If you are creating a schema for a dataset in a Domain
    # dataset group, you provide the domain of the Domain dataset group. You
    # specify a schema when you call [CreateDataset][1].
    #
    # **Related APIs**
    #
    # * [ListSchemas][2]
    #
    # * [DescribeSchema][3]
    #
    # * [DeleteSchema][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html
    # [2]: https://docs.aws.amazon.com/personalize/latest/dg/API_ListSchemas.html
    # [3]: https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSchema.html
    # [4]: https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteSchema.html
    #
    # @option params [required, String] :name
    #   The name for the schema.
    #
    # @option params [required, String] :schema
    #   A schema in Avro JSON format.
    #
    # @option params [String] :domain
    #   The domain for the schema. If you are creating a schema for a dataset
    #   in a Domain dataset group, specify the domain you chose when you
    #   created the Domain dataset group.
    #
    # @return [Types::CreateSchemaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSchemaResponse#schema_arn #schema_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_schema({
    #     name: "Name", # required
    #     schema: "AvroSchema", # required
    #     domain: "ECOMMERCE", # accepts ECOMMERCE, VIDEO_ON_DEMAND
    #   })
    #
    # @example Response structure
    #
    #   resp.schema_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateSchema AWS API Documentation
    #
    # @overload create_schema(params = {})
    # @param [Hash] params ({})
    def create_schema(params = {}, options = {})
      req = build_request(:create_schema, params)
      req.send_request(options)
    end

    # Creates the configuration for training a model. A trained model is
    # known as a solution version. After the configuration is created, you
    # train the model (create a solution version) by calling the
    # [CreateSolutionVersion][1] operation. Every time you call
    # `CreateSolutionVersion`, a new version of the solution is created.
    #
    # After creating a solution version, you check its accuracy by calling
    # [GetSolutionMetrics][2]. When you are satisfied with the version, you
    # deploy it using [CreateCampaign][3]. The campaign provides
    # recommendations to a client through the [GetRecommendations][4] API.
    #
    # To train a model, Amazon Personalize requires training data and a
    # recipe. The training data comes from the dataset group that you
    # provide in the request. A recipe specifies the training algorithm and
    # a feature transformation. You can specify one of the predefined
    # recipes provided by Amazon Personalize.
    #
    # <note markdown="1"> Amazon Personalize doesn't support configuring the `hpoObjective` for
    # solution hyperparameter optimization at this time.
    #
    #  </note>
    #
    # **Status**
    #
    # A solution can be in one of the following states:
    #
    # * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #   FAILED
    #
    # * DELETE PENDING &gt; DELETE IN\_PROGRESS
    #
    # To get the status of the solution, call [DescribeSolution][5]. Wait
    # until the status shows as ACTIVE before calling
    # `CreateSolutionVersion`.
    #
    # **Related APIs**
    #
    # * [ListSolutions][6]
    #
    # * [CreateSolutionVersion][1]
    #
    # * [DescribeSolution][5]
    #
    # * [DeleteSolution][7]
    # ^
    #
    # * [ListSolutionVersions][8]
    #
    # * [DescribeSolutionVersion][9]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolutionVersion.html
    # [2]: https://docs.aws.amazon.com/personalize/latest/dg/API_GetSolutionMetrics.html
    # [3]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html
    # [4]: https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html
    # [5]: https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolution.html
    # [6]: https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutions.html
    # [7]: https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteSolution.html
    # [8]: https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutionVersions.html
    # [9]: https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html
    #
    # @option params [required, String] :name
    #   The name for the solution.
    #
    # @option params [Boolean] :perform_hpo
    #   Whether to perform hyperparameter optimization (HPO) on the specified
    #   or selected recipe. The default is `false`.
    #
    #   When performing AutoML, this parameter is always `true` and you should
    #   not set it to `false`.
    #
    # @option params [Boolean] :perform_auto_ml
    #   We don't recommend enabling automated machine learning. Instead,
    #   match your use case to the available Amazon Personalize recipes. For
    #   more information, see [Determining your use case.][1]
    #
    #   Whether to perform automated machine learning (AutoML). The default is
    #   `false`. For this case, you must specify `recipeArn`.
    #
    #   When set to `true`, Amazon Personalize analyzes your training data and
    #   selects the optimal USER\_PERSONALIZATION recipe and hyperparameters.
    #   In this case, you must omit `recipeArn`. Amazon Personalize determines
    #   the optimal recipe by running tests with different values for the
    #   hyperparameters. AutoML lengthens the training process as compared to
    #   selecting a specific recipe.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/determining-use-case.html
    #
    # @option params [String] :recipe_arn
    #   The ARN of the recipe to use for model training. This is required when
    #   `performAutoML` is false.
    #
    # @option params [required, String] :dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group that provides the
    #   training data.
    #
    # @option params [String] :event_type
    #   When your have multiple event types (using an `EVENT_TYPE` schema
    #   field), this parameter specifies which event type (for example,
    #   'click' or 'like') is used for training the model.
    #
    #   If you do not provide an `eventType`, Amazon Personalize will use all
    #   interactions for training with equal weight regardless of type.
    #
    # @option params [Types::SolutionConfig] :solution_config
    #   The configuration to use with the solution. When `performAutoML` is
    #   set to true, Amazon Personalize only evaluates the `autoMLConfig`
    #   section of the solution configuration.
    #
    #   <note markdown="1"> Amazon Personalize doesn't support configuring the `hpoObjective` at
    #   this time.
    #
    #    </note>
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of [tags][1] to apply to the solution.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #
    # @return [Types::CreateSolutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSolutionResponse#solution_arn #solution_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_solution({
    #     name: "Name", # required
    #     perform_hpo: false,
    #     perform_auto_ml: false,
    #     recipe_arn: "Arn",
    #     dataset_group_arn: "Arn", # required
    #     event_type: "EventType",
    #     solution_config: {
    #       event_value_threshold: "EventValueThreshold",
    #       hpo_config: {
    #         hpo_objective: {
    #           type: "HPOObjectiveType",
    #           metric_name: "MetricName",
    #           metric_regex: "MetricRegex",
    #         },
    #         hpo_resource_config: {
    #           max_number_of_training_jobs: "HPOResource",
    #           max_parallel_training_jobs: "HPOResource",
    #         },
    #         algorithm_hyper_parameter_ranges: {
    #           integer_hyper_parameter_ranges: [
    #             {
    #               name: "ParameterName",
    #               min_value: 1,
    #               max_value: 1,
    #             },
    #           ],
    #           continuous_hyper_parameter_ranges: [
    #             {
    #               name: "ParameterName",
    #               min_value: 1.0,
    #               max_value: 1.0,
    #             },
    #           ],
    #           categorical_hyper_parameter_ranges: [
    #             {
    #               name: "ParameterName",
    #               values: ["CategoricalValue"],
    #             },
    #           ],
    #         },
    #       },
    #       algorithm_hyper_parameters: {
    #         "ParameterName" => "ParameterValue",
    #       },
    #       feature_transformation_parameters: {
    #         "ParameterName" => "ParameterValue",
    #       },
    #       auto_ml_config: {
    #         metric_name: "MetricName",
    #         recipe_list: ["Arn"],
    #       },
    #       optimization_objective: {
    #         item_attribute: "ItemAttribute",
    #         objective_sensitivity: "LOW", # accepts LOW, MEDIUM, HIGH, OFF
    #       },
    #       training_data_config: {
    #         excluded_dataset_columns: {
    #           "DatasetType" => ["ColumnName"],
    #         },
    #       },
    #     },
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.solution_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateSolution AWS API Documentation
    #
    # @overload create_solution(params = {})
    # @param [Hash] params ({})
    def create_solution(params = {}, options = {})
      req = build_request(:create_solution, params)
      req.send_request(options)
    end

    # Trains or retrains an active solution in a Custom dataset group. A
    # solution is created using the [CreateSolution][1] operation and must
    # be in the ACTIVE state before calling `CreateSolutionVersion`. A new
    # version of the solution is created every time you call this operation.
    #
    # **Status**
    #
    # A solution version can be in one of the following states:
    #
    # * CREATE PENDING
    #
    # * CREATE IN\_PROGRESS
    #
    # * ACTIVE
    #
    # * CREATE FAILED
    #
    # * CREATE STOPPING
    #
    # * CREATE STOPPED
    #
    # To get the status of the version, call [DescribeSolutionVersion][2].
    # Wait until the status shows as ACTIVE before calling `CreateCampaign`.
    #
    # If the status shows as CREATE FAILED, the response includes a
    # `failureReason` key, which describes why the job failed.
    #
    # **Related APIs**
    #
    # * [ListSolutionVersions][3]
    #
    # * [DescribeSolutionVersion][2]
    #
    # * [ListSolutions][4]
    #
    # * [CreateSolution][1]
    #
    # * [DescribeSolution][5]
    #
    # * [DeleteSolution][6]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html
    # [2]: https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html
    # [3]: https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutionVersions.html
    # [4]: https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutions.html
    # [5]: https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolution.html
    # [6]: https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteSolution.html
    #
    # @option params [String] :name
    #   The name of the solution version.
    #
    # @option params [required, String] :solution_arn
    #   The Amazon Resource Name (ARN) of the solution containing the training
    #   configuration information.
    #
    # @option params [String] :training_mode
    #   The scope of training to be performed when creating the solution
    #   version. The `FULL` option trains the solution version based on the
    #   entirety of the input solution's training data, while the `UPDATE`
    #   option processes only the data that has changed in comparison to the
    #   input solution. Choose `UPDATE` when you want to incrementally update
    #   your solution version instead of creating an entirely new one.
    #
    #   The `UPDATE` option can only be used when you already have an active
    #   solution version created from the input solution using the `FULL`
    #   option and the input solution was trained with the
    #   [User-Personalization][1] recipe or the [HRNN-Coldstart][2] recipe.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html
    #   [2]: https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-hrnn-coldstart.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of [tags][1] to apply to the solution version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #
    # @return [Types::CreateSolutionVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSolutionVersionResponse#solution_version_arn #solution_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_solution_version({
    #     name: "Name",
    #     solution_arn: "Arn", # required
    #     training_mode: "FULL", # accepts FULL, UPDATE
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.solution_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateSolutionVersion AWS API Documentation
    #
    # @overload create_solution_version(params = {})
    # @param [Hash] params ({})
    def create_solution_version(params = {}, options = {})
      req = build_request(:create_solution_version, params)
      req.send_request(options)
    end

    # Removes a campaign by deleting the solution deployment. The solution
    # that the campaign is based on is not deleted and can be redeployed
    # when needed. A deleted campaign can no longer be specified in a
    # [GetRecommendations][1] request. For information on creating
    # campaigns, see [CreateCampaign][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html
    # [2]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html
    #
    # @option params [required, String] :campaign_arn
    #   The Amazon Resource Name (ARN) of the campaign to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_campaign({
    #     campaign_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteCampaign AWS API Documentation
    #
    # @overload delete_campaign(params = {})
    # @param [Hash] params ({})
    def delete_campaign(params = {}, options = {})
      req = build_request(:delete_campaign, params)
      req.send_request(options)
    end

    # Deletes a dataset. You can't delete a dataset if an associated
    # `DatasetImportJob` or `SolutionVersion` is in the CREATE PENDING or IN
    # PROGRESS state. For more information on datasets, see
    # [CreateDataset][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html
    #
    # @option params [required, String] :dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataset({
    #     dataset_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteDataset AWS API Documentation
    #
    # @overload delete_dataset(params = {})
    # @param [Hash] params ({})
    def delete_dataset(params = {}, options = {})
      req = build_request(:delete_dataset, params)
      req.send_request(options)
    end

    # Deletes a dataset group. Before you delete a dataset group, you must
    # delete the following:
    #
    # * All associated event trackers.
    #
    # * All associated solutions.
    #
    # * All datasets in the dataset group.
    #
    # @option params [required, String] :dataset_group_arn
    #   The ARN of the dataset group to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataset_group({
    #     dataset_group_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteDatasetGroup AWS API Documentation
    #
    # @overload delete_dataset_group(params = {})
    # @param [Hash] params ({})
    def delete_dataset_group(params = {}, options = {})
      req = build_request(:delete_dataset_group, params)
      req.send_request(options)
    end

    # Deletes the event tracker. Does not delete the event-interactions
    # dataset from the associated dataset group. For more information on
    # event trackers, see [CreateEventTracker][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html
    #
    # @option params [required, String] :event_tracker_arn
    #   The Amazon Resource Name (ARN) of the event tracker to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_tracker({
    #     event_tracker_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteEventTracker AWS API Documentation
    #
    # @overload delete_event_tracker(params = {})
    # @param [Hash] params ({})
    def delete_event_tracker(params = {}, options = {})
      req = build_request(:delete_event_tracker, params)
      req.send_request(options)
    end

    # Deletes a filter.
    #
    # @option params [required, String] :filter_arn
    #   The ARN of the filter to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_filter({
    #     filter_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteFilter AWS API Documentation
    #
    # @overload delete_filter(params = {})
    # @param [Hash] params ({})
    def delete_filter(params = {}, options = {})
      req = build_request(:delete_filter, params)
      req.send_request(options)
    end

    # Deletes a metric attribution.
    #
    # @option params [required, String] :metric_attribution_arn
    #   The metric attribution's Amazon Resource Name (ARN).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_metric_attribution({
    #     metric_attribution_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteMetricAttribution AWS API Documentation
    #
    # @overload delete_metric_attribution(params = {})
    # @param [Hash] params ({})
    def delete_metric_attribution(params = {}, options = {})
      req = build_request(:delete_metric_attribution, params)
      req.send_request(options)
    end

    # Deactivates and removes a recommender. A deleted recommender can no
    # longer be specified in a [GetRecommendations][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html
    #
    # @option params [required, String] :recommender_arn
    #   The Amazon Resource Name (ARN) of the recommender to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_recommender({
    #     recommender_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteRecommender AWS API Documentation
    #
    # @overload delete_recommender(params = {})
    # @param [Hash] params ({})
    def delete_recommender(params = {}, options = {})
      req = build_request(:delete_recommender, params)
      req.send_request(options)
    end

    # Deletes a schema. Before deleting a schema, you must delete all
    # datasets referencing the schema. For more information on schemas, see
    # [CreateSchema][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSchema.html
    #
    # @option params [required, String] :schema_arn
    #   The Amazon Resource Name (ARN) of the schema to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_schema({
    #     schema_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteSchema AWS API Documentation
    #
    # @overload delete_schema(params = {})
    # @param [Hash] params ({})
    def delete_schema(params = {}, options = {})
      req = build_request(:delete_schema, params)
      req.send_request(options)
    end

    # Deletes all versions of a solution and the `Solution` object itself.
    # Before deleting a solution, you must delete all campaigns based on the
    # solution. To determine what campaigns are using the solution, call
    # [ListCampaigns][1] and supply the Amazon Resource Name (ARN) of the
    # solution. You can't delete a solution if an associated
    # `SolutionVersion` is in the CREATE PENDING or IN PROGRESS state. For
    # more information on solutions, see [CreateSolution][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_ListCampaigns.html
    # [2]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html
    #
    # @option params [required, String] :solution_arn
    #   The ARN of the solution to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_solution({
    #     solution_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteSolution AWS API Documentation
    #
    # @overload delete_solution(params = {})
    # @param [Hash] params ({})
    def delete_solution(params = {}, options = {})
      req = build_request(:delete_solution, params)
      req.send_request(options)
    end

    # Describes the given algorithm.
    #
    # @option params [required, String] :algorithm_arn
    #   The Amazon Resource Name (ARN) of the algorithm to describe.
    #
    # @return [Types::DescribeAlgorithmResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAlgorithmResponse#algorithm #algorithm} => Types::Algorithm
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_algorithm({
    #     algorithm_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.algorithm.name #=> String
    #   resp.algorithm.algorithm_arn #=> String
    #   resp.algorithm.algorithm_image.name #=> String
    #   resp.algorithm.algorithm_image.docker_uri #=> String
    #   resp.algorithm.default_hyper_parameters #=> Hash
    #   resp.algorithm.default_hyper_parameters["ParameterName"] #=> String
    #   resp.algorithm.default_hyper_parameter_ranges.integer_hyper_parameter_ranges #=> Array
    #   resp.algorithm.default_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].name #=> String
    #   resp.algorithm.default_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].min_value #=> Integer
    #   resp.algorithm.default_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].max_value #=> Integer
    #   resp.algorithm.default_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].is_tunable #=> Boolean
    #   resp.algorithm.default_hyper_parameter_ranges.continuous_hyper_parameter_ranges #=> Array
    #   resp.algorithm.default_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].name #=> String
    #   resp.algorithm.default_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].min_value #=> Float
    #   resp.algorithm.default_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].max_value #=> Float
    #   resp.algorithm.default_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].is_tunable #=> Boolean
    #   resp.algorithm.default_hyper_parameter_ranges.categorical_hyper_parameter_ranges #=> Array
    #   resp.algorithm.default_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].name #=> String
    #   resp.algorithm.default_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].values #=> Array
    #   resp.algorithm.default_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].values[0] #=> String
    #   resp.algorithm.default_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].is_tunable #=> Boolean
    #   resp.algorithm.default_resource_config #=> Hash
    #   resp.algorithm.default_resource_config["ParameterName"] #=> String
    #   resp.algorithm.training_input_mode #=> String
    #   resp.algorithm.role_arn #=> String
    #   resp.algorithm.creation_date_time #=> Time
    #   resp.algorithm.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeAlgorithm AWS API Documentation
    #
    # @overload describe_algorithm(params = {})
    # @param [Hash] params ({})
    def describe_algorithm(params = {}, options = {})
      req = build_request(:describe_algorithm, params)
      req.send_request(options)
    end

    # Gets the properties of a batch inference job including name, Amazon
    # Resource Name (ARN), status, input and output configurations, and the
    # ARN of the solution version used to generate the recommendations.
    #
    # @option params [required, String] :batch_inference_job_arn
    #   The ARN of the batch inference job to describe.
    #
    # @return [Types::DescribeBatchInferenceJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBatchInferenceJobResponse#batch_inference_job #batch_inference_job} => Types::BatchInferenceJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_batch_inference_job({
    #     batch_inference_job_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.batch_inference_job.job_name #=> String
    #   resp.batch_inference_job.batch_inference_job_arn #=> String
    #   resp.batch_inference_job.filter_arn #=> String
    #   resp.batch_inference_job.failure_reason #=> String
    #   resp.batch_inference_job.solution_version_arn #=> String
    #   resp.batch_inference_job.num_results #=> Integer
    #   resp.batch_inference_job.job_input.s3_data_source.path #=> String
    #   resp.batch_inference_job.job_input.s3_data_source.kms_key_arn #=> String
    #   resp.batch_inference_job.job_output.s3_data_destination.path #=> String
    #   resp.batch_inference_job.job_output.s3_data_destination.kms_key_arn #=> String
    #   resp.batch_inference_job.batch_inference_job_config.item_exploration_config #=> Hash
    #   resp.batch_inference_job.batch_inference_job_config.item_exploration_config["ParameterName"] #=> String
    #   resp.batch_inference_job.role_arn #=> String
    #   resp.batch_inference_job.status #=> String
    #   resp.batch_inference_job.creation_date_time #=> Time
    #   resp.batch_inference_job.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeBatchInferenceJob AWS API Documentation
    #
    # @overload describe_batch_inference_job(params = {})
    # @param [Hash] params ({})
    def describe_batch_inference_job(params = {}, options = {})
      req = build_request(:describe_batch_inference_job, params)
      req.send_request(options)
    end

    # Gets the properties of a batch segment job including name, Amazon
    # Resource Name (ARN), status, input and output configurations, and the
    # ARN of the solution version used to generate segments.
    #
    # @option params [required, String] :batch_segment_job_arn
    #   The ARN of the batch segment job to describe.
    #
    # @return [Types::DescribeBatchSegmentJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBatchSegmentJobResponse#batch_segment_job #batch_segment_job} => Types::BatchSegmentJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_batch_segment_job({
    #     batch_segment_job_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.batch_segment_job.job_name #=> String
    #   resp.batch_segment_job.batch_segment_job_arn #=> String
    #   resp.batch_segment_job.filter_arn #=> String
    #   resp.batch_segment_job.failure_reason #=> String
    #   resp.batch_segment_job.solution_version_arn #=> String
    #   resp.batch_segment_job.num_results #=> Integer
    #   resp.batch_segment_job.job_input.s3_data_source.path #=> String
    #   resp.batch_segment_job.job_input.s3_data_source.kms_key_arn #=> String
    #   resp.batch_segment_job.job_output.s3_data_destination.path #=> String
    #   resp.batch_segment_job.job_output.s3_data_destination.kms_key_arn #=> String
    #   resp.batch_segment_job.role_arn #=> String
    #   resp.batch_segment_job.status #=> String
    #   resp.batch_segment_job.creation_date_time #=> Time
    #   resp.batch_segment_job.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeBatchSegmentJob AWS API Documentation
    #
    # @overload describe_batch_segment_job(params = {})
    # @param [Hash] params ({})
    def describe_batch_segment_job(params = {}, options = {})
      req = build_request(:describe_batch_segment_job, params)
      req.send_request(options)
    end

    # Describes the given campaign, including its status.
    #
    # A campaign can be in one of the following states:
    #
    # * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #   FAILED
    #
    # * DELETE PENDING &gt; DELETE IN\_PROGRESS
    #
    # When the `status` is `CREATE FAILED`, the response includes the
    # `failureReason` key, which describes why.
    #
    # For more information on campaigns, see [CreateCampaign][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html
    #
    # @option params [required, String] :campaign_arn
    #   The Amazon Resource Name (ARN) of the campaign.
    #
    # @return [Types::DescribeCampaignResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCampaignResponse#campaign #campaign} => Types::Campaign
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_campaign({
    #     campaign_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.campaign.name #=> String
    #   resp.campaign.campaign_arn #=> String
    #   resp.campaign.solution_version_arn #=> String
    #   resp.campaign.min_provisioned_tps #=> Integer
    #   resp.campaign.campaign_config.item_exploration_config #=> Hash
    #   resp.campaign.campaign_config.item_exploration_config["ParameterName"] #=> String
    #   resp.campaign.status #=> String
    #   resp.campaign.failure_reason #=> String
    #   resp.campaign.creation_date_time #=> Time
    #   resp.campaign.last_updated_date_time #=> Time
    #   resp.campaign.latest_campaign_update.solution_version_arn #=> String
    #   resp.campaign.latest_campaign_update.min_provisioned_tps #=> Integer
    #   resp.campaign.latest_campaign_update.campaign_config.item_exploration_config #=> Hash
    #   resp.campaign.latest_campaign_update.campaign_config.item_exploration_config["ParameterName"] #=> String
    #   resp.campaign.latest_campaign_update.status #=> String
    #   resp.campaign.latest_campaign_update.failure_reason #=> String
    #   resp.campaign.latest_campaign_update.creation_date_time #=> Time
    #   resp.campaign.latest_campaign_update.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeCampaign AWS API Documentation
    #
    # @overload describe_campaign(params = {})
    # @param [Hash] params ({})
    def describe_campaign(params = {}, options = {})
      req = build_request(:describe_campaign, params)
      req.send_request(options)
    end

    # Describes the given dataset. For more information on datasets, see
    # [CreateDataset][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html
    #
    # @option params [required, String] :dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset to describe.
    #
    # @return [Types::DescribeDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDatasetResponse#dataset #dataset} => Types::Dataset
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset({
    #     dataset_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset.name #=> String
    #   resp.dataset.dataset_arn #=> String
    #   resp.dataset.dataset_group_arn #=> String
    #   resp.dataset.dataset_type #=> String
    #   resp.dataset.schema_arn #=> String
    #   resp.dataset.status #=> String
    #   resp.dataset.creation_date_time #=> Time
    #   resp.dataset.last_updated_date_time #=> Time
    #   resp.dataset.latest_dataset_update.schema_arn #=> String
    #   resp.dataset.latest_dataset_update.status #=> String
    #   resp.dataset.latest_dataset_update.failure_reason #=> String
    #   resp.dataset.latest_dataset_update.creation_date_time #=> Time
    #   resp.dataset.latest_dataset_update.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeDataset AWS API Documentation
    #
    # @overload describe_dataset(params = {})
    # @param [Hash] params ({})
    def describe_dataset(params = {}, options = {})
      req = build_request(:describe_dataset, params)
      req.send_request(options)
    end

    # Describes the dataset export job created by
    # [CreateDatasetExportJob][1], including the export job status.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetExportJob.html
    #
    # @option params [required, String] :dataset_export_job_arn
    #   The Amazon Resource Name (ARN) of the dataset export job to describe.
    #
    # @return [Types::DescribeDatasetExportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDatasetExportJobResponse#dataset_export_job #dataset_export_job} => Types::DatasetExportJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset_export_job({
    #     dataset_export_job_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_export_job.job_name #=> String
    #   resp.dataset_export_job.dataset_export_job_arn #=> String
    #   resp.dataset_export_job.dataset_arn #=> String
    #   resp.dataset_export_job.ingestion_mode #=> String, one of "BULK", "PUT", "ALL"
    #   resp.dataset_export_job.role_arn #=> String
    #   resp.dataset_export_job.status #=> String
    #   resp.dataset_export_job.job_output.s3_data_destination.path #=> String
    #   resp.dataset_export_job.job_output.s3_data_destination.kms_key_arn #=> String
    #   resp.dataset_export_job.creation_date_time #=> Time
    #   resp.dataset_export_job.last_updated_date_time #=> Time
    #   resp.dataset_export_job.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeDatasetExportJob AWS API Documentation
    #
    # @overload describe_dataset_export_job(params = {})
    # @param [Hash] params ({})
    def describe_dataset_export_job(params = {}, options = {})
      req = build_request(:describe_dataset_export_job, params)
      req.send_request(options)
    end

    # Describes the given dataset group. For more information on dataset
    # groups, see [CreateDatasetGroup][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetGroup.html
    #
    # @option params [required, String] :dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group to describe.
    #
    # @return [Types::DescribeDatasetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDatasetGroupResponse#dataset_group #dataset_group} => Types::DatasetGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset_group({
    #     dataset_group_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_group.name #=> String
    #   resp.dataset_group.dataset_group_arn #=> String
    #   resp.dataset_group.status #=> String
    #   resp.dataset_group.role_arn #=> String
    #   resp.dataset_group.kms_key_arn #=> String
    #   resp.dataset_group.creation_date_time #=> Time
    #   resp.dataset_group.last_updated_date_time #=> Time
    #   resp.dataset_group.failure_reason #=> String
    #   resp.dataset_group.domain #=> String, one of "ECOMMERCE", "VIDEO_ON_DEMAND"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeDatasetGroup AWS API Documentation
    #
    # @overload describe_dataset_group(params = {})
    # @param [Hash] params ({})
    def describe_dataset_group(params = {}, options = {})
      req = build_request(:describe_dataset_group, params)
      req.send_request(options)
    end

    # Describes the dataset import job created by
    # [CreateDatasetImportJob][1], including the import job status.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetImportJob.html
    #
    # @option params [required, String] :dataset_import_job_arn
    #   The Amazon Resource Name (ARN) of the dataset import job to describe.
    #
    # @return [Types::DescribeDatasetImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDatasetImportJobResponse#dataset_import_job #dataset_import_job} => Types::DatasetImportJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset_import_job({
    #     dataset_import_job_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_import_job.job_name #=> String
    #   resp.dataset_import_job.dataset_import_job_arn #=> String
    #   resp.dataset_import_job.dataset_arn #=> String
    #   resp.dataset_import_job.data_source.data_location #=> String
    #   resp.dataset_import_job.role_arn #=> String
    #   resp.dataset_import_job.status #=> String
    #   resp.dataset_import_job.creation_date_time #=> Time
    #   resp.dataset_import_job.last_updated_date_time #=> Time
    #   resp.dataset_import_job.failure_reason #=> String
    #   resp.dataset_import_job.import_mode #=> String, one of "FULL", "INCREMENTAL"
    #   resp.dataset_import_job.publish_attribution_metrics_to_s3 #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeDatasetImportJob AWS API Documentation
    #
    # @overload describe_dataset_import_job(params = {})
    # @param [Hash] params ({})
    def describe_dataset_import_job(params = {}, options = {})
      req = build_request(:describe_dataset_import_job, params)
      req.send_request(options)
    end

    # Describes an event tracker. The response includes the `trackingId` and
    # `status` of the event tracker. For more information on event trackers,
    # see [CreateEventTracker][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html
    #
    # @option params [required, String] :event_tracker_arn
    #   The Amazon Resource Name (ARN) of the event tracker to describe.
    #
    # @return [Types::DescribeEventTrackerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventTrackerResponse#event_tracker #event_tracker} => Types::EventTracker
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_tracker({
    #     event_tracker_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_tracker.name #=> String
    #   resp.event_tracker.event_tracker_arn #=> String
    #   resp.event_tracker.account_id #=> String
    #   resp.event_tracker.tracking_id #=> String
    #   resp.event_tracker.dataset_group_arn #=> String
    #   resp.event_tracker.status #=> String
    #   resp.event_tracker.creation_date_time #=> Time
    #   resp.event_tracker.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeEventTracker AWS API Documentation
    #
    # @overload describe_event_tracker(params = {})
    # @param [Hash] params ({})
    def describe_event_tracker(params = {}, options = {})
      req = build_request(:describe_event_tracker, params)
      req.send_request(options)
    end

    # Describes the given feature transformation.
    #
    # @option params [required, String] :feature_transformation_arn
    #   The Amazon Resource Name (ARN) of the feature transformation to
    #   describe.
    #
    # @return [Types::DescribeFeatureTransformationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFeatureTransformationResponse#feature_transformation #feature_transformation} => Types::FeatureTransformation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_feature_transformation({
    #     feature_transformation_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.feature_transformation.name #=> String
    #   resp.feature_transformation.feature_transformation_arn #=> String
    #   resp.feature_transformation.default_parameters #=> Hash
    #   resp.feature_transformation.default_parameters["ParameterName"] #=> String
    #   resp.feature_transformation.creation_date_time #=> Time
    #   resp.feature_transformation.last_updated_date_time #=> Time
    #   resp.feature_transformation.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeFeatureTransformation AWS API Documentation
    #
    # @overload describe_feature_transformation(params = {})
    # @param [Hash] params ({})
    def describe_feature_transformation(params = {}, options = {})
      req = build_request(:describe_feature_transformation, params)
      req.send_request(options)
    end

    # Describes a filter's properties.
    #
    # @option params [required, String] :filter_arn
    #   The ARN of the filter to describe.
    #
    # @return [Types::DescribeFilterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFilterResponse#filter #data.filter} => Types::Filter (This method conflicts with a method on Response, call it through the data member)
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_filter({
    #     filter_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data.filter.name #=> String
    #   resp.data.filter.filter_arn #=> String
    #   resp.data.filter.creation_date_time #=> Time
    #   resp.data.filter.last_updated_date_time #=> Time
    #   resp.data.filter.dataset_group_arn #=> String
    #   resp.data.filter.failure_reason #=> String
    #   resp.data.filter.filter_expression #=> String
    #   resp.data.filter.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeFilter AWS API Documentation
    #
    # @overload describe_filter(params = {})
    # @param [Hash] params ({})
    def describe_filter(params = {}, options = {})
      req = build_request(:describe_filter, params)
      req.send_request(options)
    end

    # Describes a metric attribution.
    #
    # @option params [required, String] :metric_attribution_arn
    #   The metric attribution's Amazon Resource Name (ARN).
    #
    # @return [Types::DescribeMetricAttributionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMetricAttributionResponse#metric_attribution #metric_attribution} => Types::MetricAttribution
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_metric_attribution({
    #     metric_attribution_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.metric_attribution.name #=> String
    #   resp.metric_attribution.metric_attribution_arn #=> String
    #   resp.metric_attribution.dataset_group_arn #=> String
    #   resp.metric_attribution.metrics_output_config.s3_data_destination.path #=> String
    #   resp.metric_attribution.metrics_output_config.s3_data_destination.kms_key_arn #=> String
    #   resp.metric_attribution.metrics_output_config.role_arn #=> String
    #   resp.metric_attribution.status #=> String
    #   resp.metric_attribution.creation_date_time #=> Time
    #   resp.metric_attribution.last_updated_date_time #=> Time
    #   resp.metric_attribution.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeMetricAttribution AWS API Documentation
    #
    # @overload describe_metric_attribution(params = {})
    # @param [Hash] params ({})
    def describe_metric_attribution(params = {}, options = {})
      req = build_request(:describe_metric_attribution, params)
      req.send_request(options)
    end

    # Describes a recipe.
    #
    # A recipe contains three items:
    #
    # * An algorithm that trains a model.
    #
    # * Hyperparameters that govern the training.
    #
    # * Feature transformation information for modifying the input data
    #   before training.
    #
    # Amazon Personalize provides a set of predefined recipes. You specify a
    # recipe when you create a solution with the [CreateSolution][1] API.
    # `CreateSolution` trains a model by using the algorithm in the
    # specified recipe and a training dataset. The solution, when deployed
    # as a campaign, can provide recommendations using the
    # [GetRecommendations][2] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html
    # [2]: https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html
    #
    # @option params [required, String] :recipe_arn
    #   The Amazon Resource Name (ARN) of the recipe to describe.
    #
    # @return [Types::DescribeRecipeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRecipeResponse#recipe #recipe} => Types::Recipe
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_recipe({
    #     recipe_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.recipe.name #=> String
    #   resp.recipe.recipe_arn #=> String
    #   resp.recipe.algorithm_arn #=> String
    #   resp.recipe.feature_transformation_arn #=> String
    #   resp.recipe.status #=> String
    #   resp.recipe.description #=> String
    #   resp.recipe.creation_date_time #=> Time
    #   resp.recipe.recipe_type #=> String
    #   resp.recipe.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeRecipe AWS API Documentation
    #
    # @overload describe_recipe(params = {})
    # @param [Hash] params ({})
    def describe_recipe(params = {}, options = {})
      req = build_request(:describe_recipe, params)
      req.send_request(options)
    end

    # Describes the given recommender, including its status.
    #
    # A recommender can be in one of the following states:
    #
    # * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #   FAILED
    #
    # * STOP PENDING &gt; STOP IN\_PROGRESS &gt; INACTIVE &gt; START PENDING
    #   &gt; START IN\_PROGRESS &gt; ACTIVE
    #
    # * DELETE PENDING &gt; DELETE IN\_PROGRESS
    #
    # When the `status` is `CREATE FAILED`, the response includes the
    # `failureReason` key, which describes why.
    #
    # The `modelMetrics` key is null when the recommender is being created
    # or deleted.
    #
    # For more information on recommenders, see [CreateRecommender][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateRecommender.html
    #
    # @option params [required, String] :recommender_arn
    #   The Amazon Resource Name (ARN) of the recommender to describe.
    #
    # @return [Types::DescribeRecommenderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRecommenderResponse#recommender #recommender} => Types::Recommender
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_recommender({
    #     recommender_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.recommender.recommender_arn #=> String
    #   resp.recommender.dataset_group_arn #=> String
    #   resp.recommender.name #=> String
    #   resp.recommender.recipe_arn #=> String
    #   resp.recommender.recommender_config.item_exploration_config #=> Hash
    #   resp.recommender.recommender_config.item_exploration_config["ParameterName"] #=> String
    #   resp.recommender.recommender_config.min_recommendation_requests_per_second #=> Integer
    #   resp.recommender.recommender_config.training_data_config.excluded_dataset_columns #=> Hash
    #   resp.recommender.recommender_config.training_data_config.excluded_dataset_columns["DatasetType"] #=> Array
    #   resp.recommender.recommender_config.training_data_config.excluded_dataset_columns["DatasetType"][0] #=> String
    #   resp.recommender.creation_date_time #=> Time
    #   resp.recommender.last_updated_date_time #=> Time
    #   resp.recommender.status #=> String
    #   resp.recommender.failure_reason #=> String
    #   resp.recommender.latest_recommender_update.recommender_config.item_exploration_config #=> Hash
    #   resp.recommender.latest_recommender_update.recommender_config.item_exploration_config["ParameterName"] #=> String
    #   resp.recommender.latest_recommender_update.recommender_config.min_recommendation_requests_per_second #=> Integer
    #   resp.recommender.latest_recommender_update.recommender_config.training_data_config.excluded_dataset_columns #=> Hash
    #   resp.recommender.latest_recommender_update.recommender_config.training_data_config.excluded_dataset_columns["DatasetType"] #=> Array
    #   resp.recommender.latest_recommender_update.recommender_config.training_data_config.excluded_dataset_columns["DatasetType"][0] #=> String
    #   resp.recommender.latest_recommender_update.creation_date_time #=> Time
    #   resp.recommender.latest_recommender_update.last_updated_date_time #=> Time
    #   resp.recommender.latest_recommender_update.status #=> String
    #   resp.recommender.latest_recommender_update.failure_reason #=> String
    #   resp.recommender.model_metrics #=> Hash
    #   resp.recommender.model_metrics["MetricName"] #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeRecommender AWS API Documentation
    #
    # @overload describe_recommender(params = {})
    # @param [Hash] params ({})
    def describe_recommender(params = {}, options = {})
      req = build_request(:describe_recommender, params)
      req.send_request(options)
    end

    # Describes a schema. For more information on schemas, see
    # [CreateSchema][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSchema.html
    #
    # @option params [required, String] :schema_arn
    #   The Amazon Resource Name (ARN) of the schema to retrieve.
    #
    # @return [Types::DescribeSchemaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSchemaResponse#schema #schema} => Types::DatasetSchema
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_schema({
    #     schema_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.schema.name #=> String
    #   resp.schema.schema_arn #=> String
    #   resp.schema.schema #=> String
    #   resp.schema.creation_date_time #=> Time
    #   resp.schema.last_updated_date_time #=> Time
    #   resp.schema.domain #=> String, one of "ECOMMERCE", "VIDEO_ON_DEMAND"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeSchema AWS API Documentation
    #
    # @overload describe_schema(params = {})
    # @param [Hash] params ({})
    def describe_schema(params = {}, options = {})
      req = build_request(:describe_schema, params)
      req.send_request(options)
    end

    # Describes a solution. For more information on solutions, see
    # [CreateSolution][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html
    #
    # @option params [required, String] :solution_arn
    #   The Amazon Resource Name (ARN) of the solution to describe.
    #
    # @return [Types::DescribeSolutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSolutionResponse#solution #solution} => Types::Solution
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_solution({
    #     solution_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.solution.name #=> String
    #   resp.solution.solution_arn #=> String
    #   resp.solution.perform_hpo #=> Boolean
    #   resp.solution.perform_auto_ml #=> Boolean
    #   resp.solution.recipe_arn #=> String
    #   resp.solution.dataset_group_arn #=> String
    #   resp.solution.event_type #=> String
    #   resp.solution.solution_config.event_value_threshold #=> String
    #   resp.solution.solution_config.hpo_config.hpo_objective.type #=> String
    #   resp.solution.solution_config.hpo_config.hpo_objective.metric_name #=> String
    #   resp.solution.solution_config.hpo_config.hpo_objective.metric_regex #=> String
    #   resp.solution.solution_config.hpo_config.hpo_resource_config.max_number_of_training_jobs #=> String
    #   resp.solution.solution_config.hpo_config.hpo_resource_config.max_parallel_training_jobs #=> String
    #   resp.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.integer_hyper_parameter_ranges #=> Array
    #   resp.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].name #=> String
    #   resp.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].min_value #=> Integer
    #   resp.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].max_value #=> Integer
    #   resp.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.continuous_hyper_parameter_ranges #=> Array
    #   resp.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].name #=> String
    #   resp.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].min_value #=> Float
    #   resp.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].max_value #=> Float
    #   resp.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.categorical_hyper_parameter_ranges #=> Array
    #   resp.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].name #=> String
    #   resp.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].values #=> Array
    #   resp.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].values[0] #=> String
    #   resp.solution.solution_config.algorithm_hyper_parameters #=> Hash
    #   resp.solution.solution_config.algorithm_hyper_parameters["ParameterName"] #=> String
    #   resp.solution.solution_config.feature_transformation_parameters #=> Hash
    #   resp.solution.solution_config.feature_transformation_parameters["ParameterName"] #=> String
    #   resp.solution.solution_config.auto_ml_config.metric_name #=> String
    #   resp.solution.solution_config.auto_ml_config.recipe_list #=> Array
    #   resp.solution.solution_config.auto_ml_config.recipe_list[0] #=> String
    #   resp.solution.solution_config.optimization_objective.item_attribute #=> String
    #   resp.solution.solution_config.optimization_objective.objective_sensitivity #=> String, one of "LOW", "MEDIUM", "HIGH", "OFF"
    #   resp.solution.solution_config.training_data_config.excluded_dataset_columns #=> Hash
    #   resp.solution.solution_config.training_data_config.excluded_dataset_columns["DatasetType"] #=> Array
    #   resp.solution.solution_config.training_data_config.excluded_dataset_columns["DatasetType"][0] #=> String
    #   resp.solution.auto_ml_result.best_recipe_arn #=> String
    #   resp.solution.status #=> String
    #   resp.solution.creation_date_time #=> Time
    #   resp.solution.last_updated_date_time #=> Time
    #   resp.solution.latest_solution_version.solution_version_arn #=> String
    #   resp.solution.latest_solution_version.status #=> String
    #   resp.solution.latest_solution_version.creation_date_time #=> Time
    #   resp.solution.latest_solution_version.last_updated_date_time #=> Time
    #   resp.solution.latest_solution_version.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeSolution AWS API Documentation
    #
    # @overload describe_solution(params = {})
    # @param [Hash] params ({})
    def describe_solution(params = {}, options = {})
      req = build_request(:describe_solution, params)
      req.send_request(options)
    end

    # Describes a specific version of a solution. For more information on
    # solutions, see [CreateSolution][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html
    #
    # @option params [required, String] :solution_version_arn
    #   The Amazon Resource Name (ARN) of the solution version.
    #
    # @return [Types::DescribeSolutionVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSolutionVersionResponse#solution_version #solution_version} => Types::SolutionVersion
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_solution_version({
    #     solution_version_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.solution_version.name #=> String
    #   resp.solution_version.solution_version_arn #=> String
    #   resp.solution_version.solution_arn #=> String
    #   resp.solution_version.perform_hpo #=> Boolean
    #   resp.solution_version.perform_auto_ml #=> Boolean
    #   resp.solution_version.recipe_arn #=> String
    #   resp.solution_version.event_type #=> String
    #   resp.solution_version.dataset_group_arn #=> String
    #   resp.solution_version.solution_config.event_value_threshold #=> String
    #   resp.solution_version.solution_config.hpo_config.hpo_objective.type #=> String
    #   resp.solution_version.solution_config.hpo_config.hpo_objective.metric_name #=> String
    #   resp.solution_version.solution_config.hpo_config.hpo_objective.metric_regex #=> String
    #   resp.solution_version.solution_config.hpo_config.hpo_resource_config.max_number_of_training_jobs #=> String
    #   resp.solution_version.solution_config.hpo_config.hpo_resource_config.max_parallel_training_jobs #=> String
    #   resp.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.integer_hyper_parameter_ranges #=> Array
    #   resp.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].name #=> String
    #   resp.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].min_value #=> Integer
    #   resp.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].max_value #=> Integer
    #   resp.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.continuous_hyper_parameter_ranges #=> Array
    #   resp.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].name #=> String
    #   resp.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].min_value #=> Float
    #   resp.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].max_value #=> Float
    #   resp.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.categorical_hyper_parameter_ranges #=> Array
    #   resp.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].name #=> String
    #   resp.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].values #=> Array
    #   resp.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].values[0] #=> String
    #   resp.solution_version.solution_config.algorithm_hyper_parameters #=> Hash
    #   resp.solution_version.solution_config.algorithm_hyper_parameters["ParameterName"] #=> String
    #   resp.solution_version.solution_config.feature_transformation_parameters #=> Hash
    #   resp.solution_version.solution_config.feature_transformation_parameters["ParameterName"] #=> String
    #   resp.solution_version.solution_config.auto_ml_config.metric_name #=> String
    #   resp.solution_version.solution_config.auto_ml_config.recipe_list #=> Array
    #   resp.solution_version.solution_config.auto_ml_config.recipe_list[0] #=> String
    #   resp.solution_version.solution_config.optimization_objective.item_attribute #=> String
    #   resp.solution_version.solution_config.optimization_objective.objective_sensitivity #=> String, one of "LOW", "MEDIUM", "HIGH", "OFF"
    #   resp.solution_version.solution_config.training_data_config.excluded_dataset_columns #=> Hash
    #   resp.solution_version.solution_config.training_data_config.excluded_dataset_columns["DatasetType"] #=> Array
    #   resp.solution_version.solution_config.training_data_config.excluded_dataset_columns["DatasetType"][0] #=> String
    #   resp.solution_version.training_hours #=> Float
    #   resp.solution_version.training_mode #=> String, one of "FULL", "UPDATE"
    #   resp.solution_version.tuned_hpo_params.algorithm_hyper_parameters #=> Hash
    #   resp.solution_version.tuned_hpo_params.algorithm_hyper_parameters["ParameterName"] #=> String
    #   resp.solution_version.status #=> String
    #   resp.solution_version.failure_reason #=> String
    #   resp.solution_version.creation_date_time #=> Time
    #   resp.solution_version.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeSolutionVersion AWS API Documentation
    #
    # @overload describe_solution_version(params = {})
    # @param [Hash] params ({})
    def describe_solution_version(params = {}, options = {})
      req = build_request(:describe_solution_version, params)
      req.send_request(options)
    end

    # Gets the metrics for the specified solution version.
    #
    # @option params [required, String] :solution_version_arn
    #   The Amazon Resource Name (ARN) of the solution version for which to
    #   get metrics.
    #
    # @return [Types::GetSolutionMetricsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSolutionMetricsResponse#solution_version_arn #solution_version_arn} => String
    #   * {Types::GetSolutionMetricsResponse#metrics #metrics} => Hash&lt;String,Float&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_solution_metrics({
    #     solution_version_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.solution_version_arn #=> String
    #   resp.metrics #=> Hash
    #   resp.metrics["MetricName"] #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/GetSolutionMetrics AWS API Documentation
    #
    # @overload get_solution_metrics(params = {})
    # @param [Hash] params ({})
    def get_solution_metrics(params = {}, options = {})
      req = build_request(:get_solution_metrics, params)
      req.send_request(options)
    end

    # Gets a list of the batch inference jobs that have been performed off
    # of a solution version.
    #
    # @option params [String] :solution_version_arn
    #   The Amazon Resource Name (ARN) of the solution version from which the
    #   batch inference jobs were created.
    #
    # @option params [String] :next_token
    #   The token to request the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of batch inference job results to return in each
    #   page. The default value is 100.
    #
    # @return [Types::ListBatchInferenceJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBatchInferenceJobsResponse#batch_inference_jobs #batch_inference_jobs} => Array&lt;Types::BatchInferenceJobSummary&gt;
    #   * {Types::ListBatchInferenceJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_batch_inference_jobs({
    #     solution_version_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.batch_inference_jobs #=> Array
    #   resp.batch_inference_jobs[0].batch_inference_job_arn #=> String
    #   resp.batch_inference_jobs[0].job_name #=> String
    #   resp.batch_inference_jobs[0].status #=> String
    #   resp.batch_inference_jobs[0].creation_date_time #=> Time
    #   resp.batch_inference_jobs[0].last_updated_date_time #=> Time
    #   resp.batch_inference_jobs[0].failure_reason #=> String
    #   resp.batch_inference_jobs[0].solution_version_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListBatchInferenceJobs AWS API Documentation
    #
    # @overload list_batch_inference_jobs(params = {})
    # @param [Hash] params ({})
    def list_batch_inference_jobs(params = {}, options = {})
      req = build_request(:list_batch_inference_jobs, params)
      req.send_request(options)
    end

    # Gets a list of the batch segment jobs that have been performed off of
    # a solution version that you specify.
    #
    # @option params [String] :solution_version_arn
    #   The Amazon Resource Name (ARN) of the solution version that the batch
    #   segment jobs used to generate batch segments.
    #
    # @option params [String] :next_token
    #   The token to request the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of batch segment job results to return in each
    #   page. The default value is 100.
    #
    # @return [Types::ListBatchSegmentJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBatchSegmentJobsResponse#batch_segment_jobs #batch_segment_jobs} => Array&lt;Types::BatchSegmentJobSummary&gt;
    #   * {Types::ListBatchSegmentJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_batch_segment_jobs({
    #     solution_version_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.batch_segment_jobs #=> Array
    #   resp.batch_segment_jobs[0].batch_segment_job_arn #=> String
    #   resp.batch_segment_jobs[0].job_name #=> String
    #   resp.batch_segment_jobs[0].status #=> String
    #   resp.batch_segment_jobs[0].creation_date_time #=> Time
    #   resp.batch_segment_jobs[0].last_updated_date_time #=> Time
    #   resp.batch_segment_jobs[0].failure_reason #=> String
    #   resp.batch_segment_jobs[0].solution_version_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListBatchSegmentJobs AWS API Documentation
    #
    # @overload list_batch_segment_jobs(params = {})
    # @param [Hash] params ({})
    def list_batch_segment_jobs(params = {}, options = {})
      req = build_request(:list_batch_segment_jobs, params)
      req.send_request(options)
    end

    # Returns a list of campaigns that use the given solution. When a
    # solution is not specified, all the campaigns associated with the
    # account are listed. The response provides the properties for each
    # campaign, including the Amazon Resource Name (ARN). For more
    # information on campaigns, see [CreateCampaign][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html
    #
    # @option params [String] :solution_arn
    #   The Amazon Resource Name (ARN) of the solution to list the campaigns
    #   for. When a solution is not specified, all the campaigns associated
    #   with the account are listed.
    #
    # @option params [String] :next_token
    #   A token returned from the previous call to [ListCampaigns][1] for
    #   getting the next set of campaigns (if they exist).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_ListCampaigns.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of campaigns to return.
    #
    # @return [Types::ListCampaignsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCampaignsResponse#campaigns #campaigns} => Array&lt;Types::CampaignSummary&gt;
    #   * {Types::ListCampaignsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_campaigns({
    #     solution_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.campaigns #=> Array
    #   resp.campaigns[0].name #=> String
    #   resp.campaigns[0].campaign_arn #=> String
    #   resp.campaigns[0].status #=> String
    #   resp.campaigns[0].creation_date_time #=> Time
    #   resp.campaigns[0].last_updated_date_time #=> Time
    #   resp.campaigns[0].failure_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListCampaigns AWS API Documentation
    #
    # @overload list_campaigns(params = {})
    # @param [Hash] params ({})
    def list_campaigns(params = {}, options = {})
      req = build_request(:list_campaigns, params)
      req.send_request(options)
    end

    # Returns a list of dataset export jobs that use the given dataset. When
    # a dataset is not specified, all the dataset export jobs associated
    # with the account are listed. The response provides the properties for
    # each dataset export job, including the Amazon Resource Name (ARN). For
    # more information on dataset export jobs, see
    # [CreateDatasetExportJob][1]. For more information on datasets, see
    # [CreateDataset][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetExportJob.html
    # [2]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html
    #
    # @option params [String] :dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset to list the dataset
    #   export jobs for.
    #
    # @option params [String] :next_token
    #   A token returned from the previous call to `ListDatasetExportJobs` for
    #   getting the next set of dataset export jobs (if they exist).
    #
    # @option params [Integer] :max_results
    #   The maximum number of dataset export jobs to return.
    #
    # @return [Types::ListDatasetExportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDatasetExportJobsResponse#dataset_export_jobs #dataset_export_jobs} => Array&lt;Types::DatasetExportJobSummary&gt;
    #   * {Types::ListDatasetExportJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dataset_export_jobs({
    #     dataset_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_export_jobs #=> Array
    #   resp.dataset_export_jobs[0].dataset_export_job_arn #=> String
    #   resp.dataset_export_jobs[0].job_name #=> String
    #   resp.dataset_export_jobs[0].status #=> String
    #   resp.dataset_export_jobs[0].creation_date_time #=> Time
    #   resp.dataset_export_jobs[0].last_updated_date_time #=> Time
    #   resp.dataset_export_jobs[0].failure_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListDatasetExportJobs AWS API Documentation
    #
    # @overload list_dataset_export_jobs(params = {})
    # @param [Hash] params ({})
    def list_dataset_export_jobs(params = {}, options = {})
      req = build_request(:list_dataset_export_jobs, params)
      req.send_request(options)
    end

    # Returns a list of dataset groups. The response provides the properties
    # for each dataset group, including the Amazon Resource Name (ARN). For
    # more information on dataset groups, see [CreateDatasetGroup][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetGroup.html
    #
    # @option params [String] :next_token
    #   A token returned from the previous call to `ListDatasetGroups` for
    #   getting the next set of dataset groups (if they exist).
    #
    # @option params [Integer] :max_results
    #   The maximum number of dataset groups to return.
    #
    # @return [Types::ListDatasetGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDatasetGroupsResponse#dataset_groups #dataset_groups} => Array&lt;Types::DatasetGroupSummary&gt;
    #   * {Types::ListDatasetGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dataset_groups({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_groups #=> Array
    #   resp.dataset_groups[0].name #=> String
    #   resp.dataset_groups[0].dataset_group_arn #=> String
    #   resp.dataset_groups[0].status #=> String
    #   resp.dataset_groups[0].creation_date_time #=> Time
    #   resp.dataset_groups[0].last_updated_date_time #=> Time
    #   resp.dataset_groups[0].failure_reason #=> String
    #   resp.dataset_groups[0].domain #=> String, one of "ECOMMERCE", "VIDEO_ON_DEMAND"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListDatasetGroups AWS API Documentation
    #
    # @overload list_dataset_groups(params = {})
    # @param [Hash] params ({})
    def list_dataset_groups(params = {}, options = {})
      req = build_request(:list_dataset_groups, params)
      req.send_request(options)
    end

    # Returns a list of dataset import jobs that use the given dataset. When
    # a dataset is not specified, all the dataset import jobs associated
    # with the account are listed. The response provides the properties for
    # each dataset import job, including the Amazon Resource Name (ARN). For
    # more information on dataset import jobs, see
    # [CreateDatasetImportJob][1]. For more information on datasets, see
    # [CreateDataset][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetImportJob.html
    # [2]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html
    #
    # @option params [String] :dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset to list the dataset
    #   import jobs for.
    #
    # @option params [String] :next_token
    #   A token returned from the previous call to `ListDatasetImportJobs` for
    #   getting the next set of dataset import jobs (if they exist).
    #
    # @option params [Integer] :max_results
    #   The maximum number of dataset import jobs to return.
    #
    # @return [Types::ListDatasetImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDatasetImportJobsResponse#dataset_import_jobs #dataset_import_jobs} => Array&lt;Types::DatasetImportJobSummary&gt;
    #   * {Types::ListDatasetImportJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dataset_import_jobs({
    #     dataset_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_import_jobs #=> Array
    #   resp.dataset_import_jobs[0].dataset_import_job_arn #=> String
    #   resp.dataset_import_jobs[0].job_name #=> String
    #   resp.dataset_import_jobs[0].status #=> String
    #   resp.dataset_import_jobs[0].creation_date_time #=> Time
    #   resp.dataset_import_jobs[0].last_updated_date_time #=> Time
    #   resp.dataset_import_jobs[0].failure_reason #=> String
    #   resp.dataset_import_jobs[0].import_mode #=> String, one of "FULL", "INCREMENTAL"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListDatasetImportJobs AWS API Documentation
    #
    # @overload list_dataset_import_jobs(params = {})
    # @param [Hash] params ({})
    def list_dataset_import_jobs(params = {}, options = {})
      req = build_request(:list_dataset_import_jobs, params)
      req.send_request(options)
    end

    # Returns the list of datasets contained in the given dataset group. The
    # response provides the properties for each dataset, including the
    # Amazon Resource Name (ARN). For more information on datasets, see
    # [CreateDataset][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html
    #
    # @option params [String] :dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group that contains the
    #   datasets to list.
    #
    # @option params [String] :next_token
    #   A token returned from the previous call to `ListDatasetImportJobs` for
    #   getting the next set of dataset import jobs (if they exist).
    #
    # @option params [Integer] :max_results
    #   The maximum number of datasets to return.
    #
    # @return [Types::ListDatasetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDatasetsResponse#datasets #datasets} => Array&lt;Types::DatasetSummary&gt;
    #   * {Types::ListDatasetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_datasets({
    #     dataset_group_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.datasets #=> Array
    #   resp.datasets[0].name #=> String
    #   resp.datasets[0].dataset_arn #=> String
    #   resp.datasets[0].dataset_type #=> String
    #   resp.datasets[0].status #=> String
    #   resp.datasets[0].creation_date_time #=> Time
    #   resp.datasets[0].last_updated_date_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListDatasets AWS API Documentation
    #
    # @overload list_datasets(params = {})
    # @param [Hash] params ({})
    def list_datasets(params = {}, options = {})
      req = build_request(:list_datasets, params)
      req.send_request(options)
    end

    # Returns the list of event trackers associated with the account. The
    # response provides the properties for each event tracker, including the
    # Amazon Resource Name (ARN) and tracking ID. For more information on
    # event trackers, see [CreateEventTracker][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html
    #
    # @option params [String] :dataset_group_arn
    #   The ARN of a dataset group used to filter the response.
    #
    # @option params [String] :next_token
    #   A token returned from the previous call to `ListEventTrackers` for
    #   getting the next set of event trackers (if they exist).
    #
    # @option params [Integer] :max_results
    #   The maximum number of event trackers to return.
    #
    # @return [Types::ListEventTrackersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEventTrackersResponse#event_trackers #event_trackers} => Array&lt;Types::EventTrackerSummary&gt;
    #   * {Types::ListEventTrackersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_trackers({
    #     dataset_group_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.event_trackers #=> Array
    #   resp.event_trackers[0].name #=> String
    #   resp.event_trackers[0].event_tracker_arn #=> String
    #   resp.event_trackers[0].status #=> String
    #   resp.event_trackers[0].creation_date_time #=> Time
    #   resp.event_trackers[0].last_updated_date_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListEventTrackers AWS API Documentation
    #
    # @overload list_event_trackers(params = {})
    # @param [Hash] params ({})
    def list_event_trackers(params = {}, options = {})
      req = build_request(:list_event_trackers, params)
      req.send_request(options)
    end

    # Lists all filters that belong to a given dataset group.
    #
    # @option params [String] :dataset_group_arn
    #   The ARN of the dataset group that contains the filters.
    #
    # @option params [String] :next_token
    #   A token returned from the previous call to `ListFilters` for getting
    #   the next set of filters (if they exist).
    #
    # @option params [Integer] :max_results
    #   The maximum number of filters to return.
    #
    # @return [Types::ListFiltersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFiltersResponse#filters #filters} => Array&lt;Types::FilterSummary&gt;
    #   * {Types::ListFiltersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_filters({
    #     dataset_group_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.filters #=> Array
    #   resp.filters[0].name #=> String
    #   resp.filters[0].filter_arn #=> String
    #   resp.filters[0].creation_date_time #=> Time
    #   resp.filters[0].last_updated_date_time #=> Time
    #   resp.filters[0].dataset_group_arn #=> String
    #   resp.filters[0].failure_reason #=> String
    #   resp.filters[0].status #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListFilters AWS API Documentation
    #
    # @overload list_filters(params = {})
    # @param [Hash] params ({})
    def list_filters(params = {}, options = {})
      req = build_request(:list_filters, params)
      req.send_request(options)
    end

    # Lists the metrics for the metric attribution.
    #
    # @option params [String] :metric_attribution_arn
    #   The Amazon Resource Name (ARN) of the metric attribution to retrieve
    #   attributes for.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of metrics to return in one page of results.
    #
    # @return [Types::ListMetricAttributionMetricsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMetricAttributionMetricsResponse#metrics #metrics} => Array&lt;Types::MetricAttribute&gt;
    #   * {Types::ListMetricAttributionMetricsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_metric_attribution_metrics({
    #     metric_attribution_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.metrics #=> Array
    #   resp.metrics[0].event_type #=> String
    #   resp.metrics[0].metric_name #=> String
    #   resp.metrics[0].expression #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListMetricAttributionMetrics AWS API Documentation
    #
    # @overload list_metric_attribution_metrics(params = {})
    # @param [Hash] params ({})
    def list_metric_attribution_metrics(params = {}, options = {})
      req = build_request(:list_metric_attribution_metrics, params)
      req.send_request(options)
    end

    # Lists metric attributions.
    #
    # @option params [String] :dataset_group_arn
    #   The metric attributions' dataset group Amazon Resource Name (ARN).
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of metric attributions to return in one page of
    #   results.
    #
    # @return [Types::ListMetricAttributionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMetricAttributionsResponse#metric_attributions #metric_attributions} => Array&lt;Types::MetricAttributionSummary&gt;
    #   * {Types::ListMetricAttributionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_metric_attributions({
    #     dataset_group_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.metric_attributions #=> Array
    #   resp.metric_attributions[0].name #=> String
    #   resp.metric_attributions[0].metric_attribution_arn #=> String
    #   resp.metric_attributions[0].status #=> String
    #   resp.metric_attributions[0].creation_date_time #=> Time
    #   resp.metric_attributions[0].last_updated_date_time #=> Time
    #   resp.metric_attributions[0].failure_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListMetricAttributions AWS API Documentation
    #
    # @overload list_metric_attributions(params = {})
    # @param [Hash] params ({})
    def list_metric_attributions(params = {}, options = {})
      req = build_request(:list_metric_attributions, params)
      req.send_request(options)
    end

    # Returns a list of available recipes. The response provides the
    # properties for each recipe, including the recipe's Amazon Resource
    # Name (ARN).
    #
    # @option params [String] :recipe_provider
    #   The default is `SERVICE`.
    #
    # @option params [String] :next_token
    #   A token returned from the previous call to `ListRecipes` for getting
    #   the next set of recipes (if they exist).
    #
    # @option params [Integer] :max_results
    #   The maximum number of recipes to return.
    #
    # @option params [String] :domain
    #   Filters returned recipes by domain for a Domain dataset group. Only
    #   recipes (Domain dataset group use cases) for this domain are included
    #   in the response. If you don't specify a domain, all recipes are
    #   returned.
    #
    # @return [Types::ListRecipesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecipesResponse#recipes #recipes} => Array&lt;Types::RecipeSummary&gt;
    #   * {Types::ListRecipesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recipes({
    #     recipe_provider: "SERVICE", # accepts SERVICE
    #     next_token: "NextToken",
    #     max_results: 1,
    #     domain: "ECOMMERCE", # accepts ECOMMERCE, VIDEO_ON_DEMAND
    #   })
    #
    # @example Response structure
    #
    #   resp.recipes #=> Array
    #   resp.recipes[0].name #=> String
    #   resp.recipes[0].recipe_arn #=> String
    #   resp.recipes[0].status #=> String
    #   resp.recipes[0].creation_date_time #=> Time
    #   resp.recipes[0].last_updated_date_time #=> Time
    #   resp.recipes[0].domain #=> String, one of "ECOMMERCE", "VIDEO_ON_DEMAND"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListRecipes AWS API Documentation
    #
    # @overload list_recipes(params = {})
    # @param [Hash] params ({})
    def list_recipes(params = {}, options = {})
      req = build_request(:list_recipes, params)
      req.send_request(options)
    end

    # Returns a list of recommenders in a given Domain dataset group. When a
    # Domain dataset group is not specified, all the recommenders associated
    # with the account are listed. The response provides the properties for
    # each recommender, including the Amazon Resource Name (ARN). For more
    # information on recommenders, see [CreateRecommender][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateRecommender.html
    #
    # @option params [String] :dataset_group_arn
    #   The Amazon Resource Name (ARN) of the Domain dataset group to list the
    #   recommenders for. When a Domain dataset group is not specified, all
    #   the recommenders associated with the account are listed.
    #
    # @option params [String] :next_token
    #   A token returned from the previous call to `ListRecommenders` for
    #   getting the next set of recommenders (if they exist).
    #
    # @option params [Integer] :max_results
    #   The maximum number of recommenders to return.
    #
    # @return [Types::ListRecommendersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecommendersResponse#recommenders #recommenders} => Array&lt;Types::RecommenderSummary&gt;
    #   * {Types::ListRecommendersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recommenders({
    #     dataset_group_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.recommenders #=> Array
    #   resp.recommenders[0].name #=> String
    #   resp.recommenders[0].recommender_arn #=> String
    #   resp.recommenders[0].dataset_group_arn #=> String
    #   resp.recommenders[0].recipe_arn #=> String
    #   resp.recommenders[0].recommender_config.item_exploration_config #=> Hash
    #   resp.recommenders[0].recommender_config.item_exploration_config["ParameterName"] #=> String
    #   resp.recommenders[0].recommender_config.min_recommendation_requests_per_second #=> Integer
    #   resp.recommenders[0].recommender_config.training_data_config.excluded_dataset_columns #=> Hash
    #   resp.recommenders[0].recommender_config.training_data_config.excluded_dataset_columns["DatasetType"] #=> Array
    #   resp.recommenders[0].recommender_config.training_data_config.excluded_dataset_columns["DatasetType"][0] #=> String
    #   resp.recommenders[0].status #=> String
    #   resp.recommenders[0].creation_date_time #=> Time
    #   resp.recommenders[0].last_updated_date_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListRecommenders AWS API Documentation
    #
    # @overload list_recommenders(params = {})
    # @param [Hash] params ({})
    def list_recommenders(params = {}, options = {})
      req = build_request(:list_recommenders, params)
      req.send_request(options)
    end

    # Returns the list of schemas associated with the account. The response
    # provides the properties for each schema, including the Amazon Resource
    # Name (ARN). For more information on schemas, see [CreateSchema][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSchema.html
    #
    # @option params [String] :next_token
    #   A token returned from the previous call to `ListSchemas` for getting
    #   the next set of schemas (if they exist).
    #
    # @option params [Integer] :max_results
    #   The maximum number of schemas to return.
    #
    # @return [Types::ListSchemasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSchemasResponse#schemas #schemas} => Array&lt;Types::DatasetSchemaSummary&gt;
    #   * {Types::ListSchemasResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_schemas({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.schemas #=> Array
    #   resp.schemas[0].name #=> String
    #   resp.schemas[0].schema_arn #=> String
    #   resp.schemas[0].creation_date_time #=> Time
    #   resp.schemas[0].last_updated_date_time #=> Time
    #   resp.schemas[0].domain #=> String, one of "ECOMMERCE", "VIDEO_ON_DEMAND"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListSchemas AWS API Documentation
    #
    # @overload list_schemas(params = {})
    # @param [Hash] params ({})
    def list_schemas(params = {}, options = {})
      req = build_request(:list_schemas, params)
      req.send_request(options)
    end

    # Returns a list of solution versions for the given solution. When a
    # solution is not specified, all the solution versions associated with
    # the account are listed. The response provides the properties for each
    # solution version, including the Amazon Resource Name (ARN).
    #
    # @option params [String] :solution_arn
    #   The Amazon Resource Name (ARN) of the solution.
    #
    # @option params [String] :next_token
    #   A token returned from the previous call to `ListSolutionVersions` for
    #   getting the next set of solution versions (if they exist).
    #
    # @option params [Integer] :max_results
    #   The maximum number of solution versions to return.
    #
    # @return [Types::ListSolutionVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSolutionVersionsResponse#solution_versions #solution_versions} => Array&lt;Types::SolutionVersionSummary&gt;
    #   * {Types::ListSolutionVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_solution_versions({
    #     solution_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.solution_versions #=> Array
    #   resp.solution_versions[0].solution_version_arn #=> String
    #   resp.solution_versions[0].status #=> String
    #   resp.solution_versions[0].creation_date_time #=> Time
    #   resp.solution_versions[0].last_updated_date_time #=> Time
    #   resp.solution_versions[0].failure_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListSolutionVersions AWS API Documentation
    #
    # @overload list_solution_versions(params = {})
    # @param [Hash] params ({})
    def list_solution_versions(params = {}, options = {})
      req = build_request(:list_solution_versions, params)
      req.send_request(options)
    end

    # Returns a list of solutions that use the given dataset group. When a
    # dataset group is not specified, all the solutions associated with the
    # account are listed. The response provides the properties for each
    # solution, including the Amazon Resource Name (ARN). For more
    # information on solutions, see [CreateSolution][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html
    #
    # @option params [String] :dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group.
    #
    # @option params [String] :next_token
    #   A token returned from the previous call to `ListSolutions` for getting
    #   the next set of solutions (if they exist).
    #
    # @option params [Integer] :max_results
    #   The maximum number of solutions to return.
    #
    # @return [Types::ListSolutionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSolutionsResponse#solutions #solutions} => Array&lt;Types::SolutionSummary&gt;
    #   * {Types::ListSolutionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_solutions({
    #     dataset_group_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.solutions #=> Array
    #   resp.solutions[0].name #=> String
    #   resp.solutions[0].solution_arn #=> String
    #   resp.solutions[0].status #=> String
    #   resp.solutions[0].creation_date_time #=> Time
    #   resp.solutions[0].last_updated_date_time #=> Time
    #   resp.solutions[0].recipe_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListSolutions AWS API Documentation
    #
    # @overload list_solutions(params = {})
    # @param [Hash] params ({})
    def list_solutions(params = {}, options = {})
      req = build_request(:list_solutions, params)
      req.send_request(options)
    end

    # Get a list of [tags][1] attached to a resource.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #
    # @option params [required, String] :resource_arn
    #   The resource's Amazon Resource Name.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].tag_key #=> String
    #   resp.tags[0].tag_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Starts a recommender that is INACTIVE. Starting a recommender does not
    # create any new models, but resumes billing and automatic retraining
    # for the recommender.
    #
    # @option params [required, String] :recommender_arn
    #   The Amazon Resource Name (ARN) of the recommender to start.
    #
    # @return [Types::StartRecommenderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartRecommenderResponse#recommender_arn #recommender_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_recommender({
    #     recommender_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.recommender_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/StartRecommender AWS API Documentation
    #
    # @overload start_recommender(params = {})
    # @param [Hash] params ({})
    def start_recommender(params = {}, options = {})
      req = build_request(:start_recommender, params)
      req.send_request(options)
    end

    # Stops a recommender that is ACTIVE. Stopping a recommender halts
    # billing and automatic retraining for the recommender.
    #
    # @option params [required, String] :recommender_arn
    #   The Amazon Resource Name (ARN) of the recommender to stop.
    #
    # @return [Types::StopRecommenderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopRecommenderResponse#recommender_arn #recommender_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_recommender({
    #     recommender_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.recommender_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/StopRecommender AWS API Documentation
    #
    # @overload stop_recommender(params = {})
    # @param [Hash] params ({})
    def stop_recommender(params = {}, options = {})
      req = build_request(:stop_recommender, params)
      req.send_request(options)
    end

    # Stops creating a solution version that is in a state of
    # CREATE\_PENDING or CREATE IN\_PROGRESS.
    #
    # Depending on the current state of the solution version, the solution
    # version state changes as follows:
    #
    # * CREATE\_PENDING &gt; CREATE\_STOPPED
    #
    #   or
    #
    # * CREATE\_IN\_PROGRESS &gt; CREATE\_STOPPING &gt; CREATE\_STOPPED
    #
    # You are billed for all of the training completed up until you stop the
    # solution version creation. You cannot resume creating a solution
    # version once it has been stopped.
    #
    # @option params [required, String] :solution_version_arn
    #   The Amazon Resource Name (ARN) of the solution version you want to
    #   stop creating.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_solution_version_creation({
    #     solution_version_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/StopSolutionVersionCreation AWS API Documentation
    #
    # @overload stop_solution_version_creation(params = {})
    # @param [Hash] params ({})
    def stop_solution_version_creation(params = {}, options = {})
      req = build_request(:stop_solution_version_creation, params)
      req.send_request(options)
    end

    # Add a list of tags to a resource.
    #
    # @option params [required, String] :resource_arn
    #   The resource's Amazon Resource Name (ARN).
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   Tags to apply to the resource. For more information see [Tagging
    #   Amazon Personalize recources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Remove [tags][1] that are attached to a resource.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #
    # @option params [required, String] :resource_arn
    #   The resource's Amazon Resource Name (ARN).
    #
    # @option params [required, Array<String>] :tag_keys
    #   Keys to remove from the resource's tags.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a campaign by either deploying a new solution or changing the
    # value of the campaign's `minProvisionedTPS` parameter.
    #
    # To update a campaign, the campaign status must be ACTIVE or CREATE
    # FAILED. Check the campaign status using the [DescribeCampaign][1]
    # operation.
    #
    # <note markdown="1"> You can still get recommendations from a campaign while an update is
    # in progress. The campaign will use the previous solution version and
    # campaign configuration to generate recommendations until the latest
    # campaign update status is `Active`.
    #
    #  </note>
    #
    # For more information on campaigns, see [CreateCampaign][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeCampaign.html
    # [2]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html
    #
    # @option params [required, String] :campaign_arn
    #   The Amazon Resource Name (ARN) of the campaign.
    #
    # @option params [String] :solution_version_arn
    #   The ARN of a new solution version to deploy.
    #
    # @option params [Integer] :min_provisioned_tps
    #   Specifies the requested minimum provisioned transactions
    #   (recommendations) per second that Amazon Personalize will support. A
    #   high `minProvisionedTPS` will increase your bill. We recommend
    #   starting with 1 for `minProvisionedTPS` (the default). Track your
    #   usage using Amazon CloudWatch metrics, and increase the
    #   `minProvisionedTPS` as necessary.
    #
    # @option params [Types::CampaignConfig] :campaign_config
    #   The configuration details of a campaign.
    #
    # @return [Types::UpdateCampaignResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCampaignResponse#campaign_arn #campaign_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_campaign({
    #     campaign_arn: "Arn", # required
    #     solution_version_arn: "Arn",
    #     min_provisioned_tps: 1,
    #     campaign_config: {
    #       item_exploration_config: {
    #         "ParameterName" => "ParameterValue",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.campaign_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/UpdateCampaign AWS API Documentation
    #
    # @overload update_campaign(params = {})
    # @param [Hash] params ({})
    def update_campaign(params = {}, options = {})
      req = build_request(:update_campaign, params)
      req.send_request(options)
    end

    # Update a dataset to replace its schema with a new or existing one. For
    # more information, see [Replacing a dataset's schema][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/updating-dataset-schema.html
    #
    # @option params [required, String] :dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset that you want to update.
    #
    # @option params [required, String] :schema_arn
    #   The Amazon Resource Name (ARN) of the new schema you want use.
    #
    # @return [Types::UpdateDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDatasetResponse#dataset_arn #dataset_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dataset({
    #     dataset_arn: "Arn", # required
    #     schema_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/UpdateDataset AWS API Documentation
    #
    # @overload update_dataset(params = {})
    # @param [Hash] params ({})
    def update_dataset(params = {}, options = {})
      req = build_request(:update_dataset, params)
      req.send_request(options)
    end

    # Updates a metric attribution.
    #
    # @option params [Array<Types::MetricAttribute>] :add_metrics
    #   Add new metric attributes to the metric attribution.
    #
    # @option params [Array<String>] :remove_metrics
    #   Remove metric attributes from the metric attribution.
    #
    # @option params [Types::MetricAttributionOutput] :metrics_output_config
    #   An output config for the metric attribution.
    #
    # @option params [String] :metric_attribution_arn
    #   The Amazon Resource Name (ARN) for the metric attribution to update.
    #
    # @return [Types::UpdateMetricAttributionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMetricAttributionResponse#metric_attribution_arn #metric_attribution_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_metric_attribution({
    #     add_metrics: [
    #       {
    #         event_type: "EventType", # required
    #         metric_name: "MetricName", # required
    #         expression: "MetricExpression", # required
    #       },
    #     ],
    #     remove_metrics: ["MetricName"],
    #     metrics_output_config: {
    #       s3_data_destination: {
    #         path: "S3Location", # required
    #         kms_key_arn: "KmsKeyArn",
    #       },
    #       role_arn: "RoleArn", # required
    #     },
    #     metric_attribution_arn: "Arn",
    #   })
    #
    # @example Response structure
    #
    #   resp.metric_attribution_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/UpdateMetricAttribution AWS API Documentation
    #
    # @overload update_metric_attribution(params = {})
    # @param [Hash] params ({})
    def update_metric_attribution(params = {}, options = {})
      req = build_request(:update_metric_attribution, params)
      req.send_request(options)
    end

    # Updates the recommender to modify the recommender configuration. If
    # you update the recommender to modify the columns used in training,
    # Amazon Personalize automatically starts a full retraining of the
    # models backing your recommender. While the update completes, you can
    # still get recommendations from the recommender. The recommender uses
    # the previous configuration until the update completes. To track the
    # status of this update, use the `latestRecommenderUpdate` returned in
    # the [DescribeRecommender][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeRecommender.html
    #
    # @option params [required, String] :recommender_arn
    #   The Amazon Resource Name (ARN) of the recommender to modify.
    #
    # @option params [required, Types::RecommenderConfig] :recommender_config
    #   The configuration details of the recommender.
    #
    # @return [Types::UpdateRecommenderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRecommenderResponse#recommender_arn #recommender_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_recommender({
    #     recommender_arn: "Arn", # required
    #     recommender_config: { # required
    #       item_exploration_config: {
    #         "ParameterName" => "ParameterValue",
    #       },
    #       min_recommendation_requests_per_second: 1,
    #       training_data_config: {
    #         excluded_dataset_columns: {
    #           "DatasetType" => ["ColumnName"],
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.recommender_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/UpdateRecommender AWS API Documentation
    #
    # @overload update_recommender(params = {})
    # @param [Hash] params ({})
    def update_recommender(params = {}, options = {})
      req = build_request(:update_recommender, params)
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
      context[:gem_name] = 'aws-sdk-personalize'
      context[:gem_version] = '1.53.0'
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
