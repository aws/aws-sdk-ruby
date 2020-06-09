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
    #     to test endpoints. This should be a valid HTTP(S) URI.
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

    # Creates a batch inference job. The operation can handle up to 50
    # million records and the input file must be in JSON format. For more
    # information, see recommendations-batch.
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
    #   information on using filters, see Using Filters with Amazon
    #   Personalize.
    #
    # @option params [Integer] :num_results
    #   The number of recommendations to retreive.
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
    #   permissions to read and write to your input and out Amazon S3 buckets
    #   respectively.
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

    # Creates a campaign by deploying a solution version. When a client
    # calls the [GetRecommendations][1] and [GetPersonalizedRanking][2]
    # APIs, a campaign is specified in the request.
    #
    # **Minimum Provisioned TPS and Auto-Scaling**
    #
    # A transaction is a single `GetRecommendations` or
    # `GetPersonalizedRanking` call. Transactions per second (TPS) is the
    # throughput and unit of billing for Amazon Personalize. The minimum
    # provisioned TPS (`minProvisionedTPS`) specifies the baseline
    # throughput provisioned by Amazon Personalize, and thus, the minimum
    # billing charge. If your TPS increases beyond `minProvisionedTPS`,
    # Amazon Personalize auto-scales the provisioned capacity up and down,
    # but never below `minProvisionedTPS`, to maintain a 70% utilization.
    # There's a short time delay while the capacity is increased that might
    # cause loss of transactions. It's recommended to start with a low
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
    # To get the campaign status, call DescribeCampaign.
    #
    # <note markdown="1"> Wait until the `status` of the campaign is `ACTIVE` before asking the
    # campaign for recommendations.
    #
    #  </note>
    #
    # **Related APIs**
    #
    # * ListCampaigns
    #
    # * DescribeCampaign
    #
    # * UpdateCampaign
    #
    # * DeleteCampaign
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html
    # [2]: https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetPersonalizedRanking.html
    #
    # @option params [required, String] :name
    #   A name for the new campaign. The campaign name must be unique within
    #   your account.
    #
    # @option params [required, String] :solution_version_arn
    #   The Amazon Resource Name (ARN) of the solution version to deploy.
    #
    # @option params [required, Integer] :min_provisioned_tps
    #   Specifies the requested minimum provisioned transactions
    #   (recommendations) per second that Amazon Personalize will support.
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
    #     min_provisioned_tps: 1, # required
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
    # Use CreateDatasetImportJob to import your training data to a dataset.
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
    # To get the status of the dataset, call DescribeDataset.
    #
    # **Related APIs**
    #
    # * CreateDatasetGroup
    #
    # * ListDatasets
    #
    # * DescribeDataset
    #
    # * DeleteDataset
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

    # Creates an empty dataset group. A dataset group contains related
    # datasets that supply data for training a model. A dataset group can
    # contain at most three datasets, one for each type of dataset:
    #
    # * Interactions
    #
    # * Items
    #
    # * Users
    #
    # To train a model (create a solution), a dataset group that contains an
    # `Interactions` dataset is required. Call CreateDataset to add a
    # dataset to the group.
    #
    # A dataset group can be in one of the following states:
    #
    # * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #   FAILED
    #
    # * DELETE PENDING
    #
    # To get the status of the dataset group, call DescribeDatasetGroup. If
    # the status shows as CREATE FAILED, the response includes a
    # `failureReason` key, which describes why the creation failed.
    #
    # <note markdown="1"> You must wait until the `status` of the dataset group is `ACTIVE`
    # before adding a dataset to the group.
    #
    #  </note>
    #
    # You can specify an AWS Key Management Service (KMS) key to encrypt the
    # datasets in the group. If you specify a KMS key, you must also include
    # an AWS Identity and Access Management (IAM) role that has permission
    # to access the key.
    #
    # **APIs that require a dataset group ARN in the request**
    #
    # * CreateDataset
    #
    # * CreateEventTracker
    #
    # * CreateSolution
    #
    # **Related APIs**
    #
    # * ListDatasetGroups
    #
    # * DescribeDatasetGroup
    #
    # * DeleteDatasetGroup
    #
    # @option params [required, String] :name
    #   The name for the new dataset group.
    #
    # @option params [String] :role_arn
    #   The ARN of the IAM role that has permissions to access the KMS key.
    #   Supplying an IAM role is only valid when also specifying a KMS key.
    #
    # @option params [String] :kms_key_arn
    #   The Amazon Resource Name (ARN) of a KMS key used to encrypt the
    #   datasets.
    #
    # @return [Types::CreateDatasetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDatasetGroupResponse#dataset_group_arn #dataset_group_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset_group({
    #     name: "Name", # required
    #     role_arn: "RoleArn",
    #     kms_key_arn: "KmsKeyArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_group_arn #=> String
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
    # Personalize to import the training data, you must specify an AWS
    # Identity and Access Management (IAM) role that has permission to read
    # from the data source.
    #
    # The dataset import job replaces any previous data in the dataset.
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
    # To get the status of the import job, call DescribeDatasetImportJob,
    # providing the Amazon Resource Name (ARN) of the dataset import job.
    # The dataset import is complete when the status shows as ACTIVE. If the
    # status shows as CREATE FAILED, the response includes a `failureReason`
    # key, which describes why the job failed.
    #
    # <note markdown="1"> Importing takes time. You must wait until the status shows as ACTIVE
    # before training a model using the dataset.
    #
    #  </note>
    #
    # **Related APIs**
    #
    # * ListDatasetImportJobs
    #
    # * DescribeDatasetImportJob
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

    # Creates an event tracker that you use when sending event data to the
    # specified dataset group using the [PutEvents][1] API.
    #
    # When Amazon Personalize creates an event tracker, it also creates an
    # *event-interactions* dataset in the dataset group associated with the
    # event tracker. The event-interactions dataset stores the event data
    # from the `PutEvents` call. The contents of this dataset are not
    # available to the user.
    #
    # <note markdown="1"> Only one event tracker can be associated with a dataset group. You
    # will get an error if you call `CreateEventTracker` using the same
    # dataset group as an existing event tracker.
    #
    #  </note>
    #
    # When you send event data you include your tracking ID. The tracking ID
    # identifies the customer and authorizes the customer to send the data.
    #
    # The event tracker can be in one of the following states:
    #
    # * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #   FAILED
    #
    # * DELETE PENDING &gt; DELETE IN\_PROGRESS
    #
    # To get the status of the event tracker, call DescribeEventTracker.
    #
    # <note markdown="1"> The event tracker must be in the ACTIVE state before using the
    # tracking ID.
    #
    #  </note>
    #
    # **Related APIs**
    #
    # * ListEventTrackers
    #
    # * DescribeEventTracker
    #
    # * DeleteEventTracker
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html
    #
    # @option params [required, String] :name
    #   The name for the event tracker.
    #
    # @option params [required, String] :dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group that receives the
    #   event data.
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

    # Creates a recommendation filter. For more information, see Using
    # Filters with Amazon Personalize.
    #
    # @option params [required, String] :name
    #   The name of the filter to create.
    #
    # @option params [required, String] :dataset_group_arn
    #   The ARN of the dataset group that the filter will belong to.
    #
    # @option params [required, String] :filter_expression
    #   The filter expression that designates the interaction types that the
    #   filter will filter out. A filter expression must follow the following
    #   format:
    #
    #   `EXCLUDE itemId WHERE INTERACTIONS.event_type in ("EVENT_TYPE")`
    #
    #   Where "EVENT\_TYPE" is the type of event to filter out. To filter
    #   out all items with any interactions history, set `"*"` as the
    #   EVENT\_TYPE. For more information, see Using Filters with Amazon
    #   Personalize.
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

    # Creates an Amazon Personalize schema from the specified schema string.
    # The schema you create must be in Avro JSON format.
    #
    # Amazon Personalize recognizes three schema variants. Each schema is
    # associated with a dataset type and has a set of required field and
    # keywords. You specify a schema when you call CreateDataset.
    #
    # **Related APIs**
    #
    # * ListSchemas
    #
    # * DescribeSchema
    #
    # * DeleteSchema
    #
    # @option params [required, String] :name
    #   The name for the schema.
    #
    # @option params [required, String] :schema
    #   A schema in Avro JSON format.
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
    # known as a solution. After the configuration is created, you train the
    # model (create a solution) by calling the CreateSolutionVersion
    # operation. Every time you call `CreateSolutionVersion`, a new version
    # of the solution is created.
    #
    # After creating a solution version, you check its accuracy by calling
    # GetSolutionMetrics. When you are satisfied with the version, you
    # deploy it using CreateCampaign. The campaign provides recommendations
    # to a client through the [GetRecommendations][1] API.
    #
    # To train a model, Amazon Personalize requires training data and a
    # recipe. The training data comes from the dataset group that you
    # provide in the request. A recipe specifies the training algorithm and
    # a feature transformation. You can specify one of the predefined
    # recipes provided by Amazon Personalize. Alternatively, you can specify
    # `performAutoML` and Amazon Personalize will analyze your data and
    # select the optimum USER\_PERSONALIZATION recipe for you.
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
    # To get the status of the solution, call DescribeSolution. Wait until
    # the status shows as ACTIVE before calling `CreateSolutionVersion`.
    #
    # **Related APIs**
    #
    # * ListSolutions
    #
    # * CreateSolutionVersion
    #
    # * DescribeSolution
    #
    # * DeleteSolution
    # ^
    #
    # * ListSolutionVersions
    #
    # * DescribeSolutionVersion
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html
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
    # @option params [String] :recipe_arn
    #   The ARN of the recipe to use for model training. Only specified when
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
    # @option params [Types::SolutionConfig] :solution_config
    #   The configuration to use with the solution. When `performAutoML` is
    #   set to true, Amazon Personalize only evaluates the `autoMLConfig`
    #   section of the solution configuration.
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
    #     },
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

    # Trains or retrains an active solution. A solution is created using the
    # CreateSolution operation and must be in the ACTIVE state before
    # calling `CreateSolutionVersion`. A new version of the solution is
    # created every time you call this operation.
    #
    # **Status**
    #
    # A solution version can be in one of the following states:
    #
    # * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #   FAILED
    #
    # ^
    #
    # To get the status of the version, call DescribeSolutionVersion. Wait
    # until the status shows as ACTIVE before calling `CreateCampaign`.
    #
    # If the status shows as CREATE FAILED, the response includes a
    # `failureReason` key, which describes why the job failed.
    #
    # **Related APIs**
    #
    # * ListSolutionVersions
    #
    # * DescribeSolutionVersion
    # ^
    #
    # * ListSolutions
    #
    # * CreateSolution
    #
    # * DescribeSolution
    #
    # * DeleteSolution
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
    #   native-recipe-hrnn-coldstart recipe.
    #
    # @return [Types::CreateSolutionVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSolutionVersionResponse#solution_version_arn #solution_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_solution_version({
    #     solution_arn: "Arn", # required
    #     training_mode: "FULL", # accepts FULL, UPDATE
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
    # [GetRecommendations][1] request. For more information on campaigns,
    # see CreateCampaign.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html
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
    # PROGRESS state. For more information on datasets, see CreateDataset.
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
    # event trackers, see CreateEventTracker.
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

    # Deletes a schema. Before deleting a schema, you must delete all
    # datasets referencing the schema. For more information on schemas, see
    # CreateSchema.
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
    # ListCampaigns and supply the Amazon Resource Name (ARN) of the
    # solution. You can't delete a solution if an associated
    # `SolutionVersion` is in the CREATE PENDING or IN PROGRESS state. For
    # more information on solutions, see CreateSolution.
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
    # For more information on campaigns, see CreateCampaign.
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
    #   resp.campaign.status #=> String
    #   resp.campaign.failure_reason #=> String
    #   resp.campaign.creation_date_time #=> Time
    #   resp.campaign.last_updated_date_time #=> Time
    #   resp.campaign.latest_campaign_update.solution_version_arn #=> String
    #   resp.campaign.latest_campaign_update.min_provisioned_tps #=> Integer
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
    # CreateDataset.
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeDataset AWS API Documentation
    #
    # @overload describe_dataset(params = {})
    # @param [Hash] params ({})
    def describe_dataset(params = {}, options = {})
      req = build_request(:describe_dataset, params)
      req.send_request(options)
    end

    # Describes the given dataset group. For more information on dataset
    # groups, see CreateDatasetGroup.
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeDatasetGroup AWS API Documentation
    #
    # @overload describe_dataset_group(params = {})
    # @param [Hash] params ({})
    def describe_dataset_group(params = {}, options = {})
      req = build_request(:describe_dataset_group, params)
      req.send_request(options)
    end

    # Describes the dataset import job created by CreateDatasetImportJob,
    # including the import job status.
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
    # see CreateEventTracker.
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
    #   * {Types::DescribeFilterResponse#filter #filter} => Types::Filter
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_filter({
    #     filter_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.filter.name #=> String
    #   resp.filter.filter_arn #=> String
    #   resp.filter.creation_date_time #=> Time
    #   resp.filter.last_updated_date_time #=> Time
    #   resp.filter.dataset_group_arn #=> String
    #   resp.filter.failure_reason #=> String
    #   resp.filter.filter_expression #=> String
    #   resp.filter.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeFilter AWS API Documentation
    #
    # @overload describe_filter(params = {})
    # @param [Hash] params ({})
    def describe_filter(params = {}, options = {})
      req = build_request(:describe_filter, params)
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
    # recipe when you create a solution with the CreateSolution API.
    # `CreateSolution` trains a model by using the algorithm in the
    # specified recipe and a training dataset. The solution, when deployed
    # as a campaign, can provide recommendations using the
    # [GetRecommendations][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html
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

    # Describes a schema. For more information on schemas, see CreateSchema.
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
    # CreateSolution.
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
    # solutions, see CreateSolution.
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

    # Returns a list of campaigns that use the given solution. When a
    # solution is not specified, all the campaigns associated with the
    # account are listed. The response provides the properties for each
    # campaign, including the Amazon Resource Name (ARN). For more
    # information on campaigns, see CreateCampaign.
    #
    # @option params [String] :solution_arn
    #   The Amazon Resource Name (ARN) of the solution to list the campaigns
    #   for. When a solution is not specified, all the campaigns associated
    #   with the account are listed.
    #
    # @option params [String] :next_token
    #   A token returned from the previous call to `ListCampaigns` for getting
    #   the next set of campaigns (if they exist).
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

    # Returns a list of dataset groups. The response provides the properties
    # for each dataset group, including the Amazon Resource Name (ARN). For
    # more information on dataset groups, see CreateDatasetGroup.
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
    # more information on dataset import jobs, see CreateDatasetImportJob.
    # For more information on datasets, see CreateDataset.
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
    # CreateDataset.
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
    # event trackers, see CreateEventTracker.
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

    # Returns the list of schemas associated with the account. The response
    # provides the properties for each schema, including the Amazon Resource
    # Name (ARN). For more information on schemas, see CreateSchema.
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
    # solution version, including the Amazon Resource Name (ARN). For more
    # information on solutions, see CreateSolution.
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
    # information on solutions, see CreateSolution.
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

    # Updates a campaign by either deploying a new solution or changing the
    # value of the campaign's `minProvisionedTPS` parameter.
    #
    # To update a campaign, the campaign status must be ACTIVE or CREATE
    # FAILED. Check the campaign status using the DescribeCampaign API.
    #
    # <note markdown="1"> You must wait until the `status` of the updated campaign is `ACTIVE`
    # before asking the campaign for recommendations.
    #
    #  </note>
    #
    # For more information on campaigns, see CreateCampaign.
    #
    # @option params [required, String] :campaign_arn
    #   The Amazon Resource Name (ARN) of the campaign.
    #
    # @option params [String] :solution_version_arn
    #   The ARN of a new solution version to deploy.
    #
    # @option params [Integer] :min_provisioned_tps
    #   Specifies the requested minimum provisioned transactions
    #   (recommendations) per second that Amazon Personalize will support.
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
      context[:gem_version] = '1.13.0'
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
