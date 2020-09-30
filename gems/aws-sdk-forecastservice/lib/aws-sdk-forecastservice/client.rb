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
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:forecastservice)

module Aws::ForecastService
  # An API client for ForecastService.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ForecastService::Client.new(
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

    @identifier = :forecastservice

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

    # Creates an Amazon Forecast dataset. The information about the dataset
    # that you provide helps Forecast understand how to consume the data for
    # model training. This includes the following:
    #
    # * <i> <code>DataFrequency</code> </i> - How frequently your historical
    #   time-series data is collected.
    #
    # * <i> <code>Domain</code> </i> and <i> <code>DatasetType</code> </i> -
    #   Each dataset has an associated dataset domain and a type within the
    #   domain. Amazon Forecast provides a list of predefined domains and
    #   types within each domain. For each unique dataset domain and type
    #   within the domain, Amazon Forecast requires your data to include a
    #   minimum set of predefined fields.
    #
    # * <i> <code>Schema</code> </i> - A schema specifies the fields in the
    #   dataset, including the field name and data type.
    #
    # After creating a dataset, you import your training data into it and
    # add the dataset to a dataset group. You use the dataset group to
    # create a predictor. For more information, see
    # howitworks-datasets-groups.
    #
    # To get a list of all your datasets, use the ListDatasets operation.
    #
    # For example Forecast datasets, see the [Amazon Forecast Sample GitHub
    # repository][1].
    #
    # <note markdown="1"> The `Status` of a dataset must be `ACTIVE` before you can import
    # training data. Use the DescribeDataset operation to get the status.
    #
    #  </note>
    #
    #
    #
    # [1]: https://github.com/aws-samples/amazon-forecast-samples
    #
    # @option params [required, String] :dataset_name
    #   A name for the dataset.
    #
    # @option params [required, String] :domain
    #   The domain associated with the dataset. When you add a dataset to a
    #   dataset group, this value and the value specified for the `Domain`
    #   parameter of the CreateDatasetGroup operation must match.
    #
    #   The `Domain` and `DatasetType` that you choose determine the fields
    #   that must be present in the training data that you import to the
    #   dataset. For example, if you choose the `RETAIL` domain and
    #   `TARGET_TIME_SERIES` as the `DatasetType`, Amazon Forecast requires
    #   `item_id`, `timestamp`, and `demand` fields to be present in your
    #   data. For more information, see howitworks-datasets-groups.
    #
    # @option params [required, String] :dataset_type
    #   The dataset type. Valid values depend on the chosen `Domain`.
    #
    # @option params [String] :data_frequency
    #   The frequency of data collection. This parameter is required for
    #   RELATED\_TIME\_SERIES datasets.
    #
    #   Valid intervals are Y (Year), M (Month), W (Week), D (Day), H (Hour),
    #   30min (30 minutes), 15min (15 minutes), 10min (10 minutes), 5min (5
    #   minutes), and 1min (1 minute). For example, "D" indicates every day
    #   and "15min" indicates every 15 minutes.
    #
    # @option params [required, Types::Schema] :schema
    #   The schema for the dataset. The schema attributes and their order must
    #   match the fields in your data. The dataset `Domain` and `DatasetType`
    #   that you choose determine the minimum required fields in your training
    #   data. For information about the required fields for a specific dataset
    #   domain and type, see howitworks-domains-ds-types.
    #
    # @option params [Types::EncryptionConfig] :encryption_config
    #   An AWS Key Management Service (KMS) key and the AWS Identity and
    #   Access Management (IAM) role that Amazon Forecast can assume to access
    #   the key.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The optional metadata that you apply to the dataset to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination of
    #     such as a prefix for keys as it is reserved for AWS use. You cannot
    #     edit or delete tag keys with this prefix. Values can have this
    #     prefix. If a tag value has `aws` as its prefix but the key does not,
    #     then Forecast considers it to be a user tag and will count against
    #     the limit of 50 tags. Tags with only the key prefix of `aws` do not
    #     count against your tags per resource limit.
    #
    # @return [Types::CreateDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDatasetResponse#dataset_arn #dataset_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset({
    #     dataset_name: "Name", # required
    #     domain: "RETAIL", # required, accepts RETAIL, CUSTOM, INVENTORY_PLANNING, EC2_CAPACITY, WORK_FORCE, WEB_TRAFFIC, METRICS
    #     dataset_type: "TARGET_TIME_SERIES", # required, accepts TARGET_TIME_SERIES, RELATED_TIME_SERIES, ITEM_METADATA
    #     data_frequency: "Frequency",
    #     schema: { # required
    #       attributes: [
    #         {
    #           attribute_name: "Name",
    #           attribute_type: "string", # accepts string, integer, float, timestamp
    #         },
    #       ],
    #     },
    #     encryption_config: {
    #       role_arn: "Arn", # required
    #       kms_key_arn: "KMSKeyArn", # required
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
    #   resp.dataset_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/CreateDataset AWS API Documentation
    #
    # @overload create_dataset(params = {})
    # @param [Hash] params ({})
    def create_dataset(params = {}, options = {})
      req = build_request(:create_dataset, params)
      req.send_request(options)
    end

    # Creates a dataset group, which holds a collection of related datasets.
    # You can add datasets to the dataset group when you create the dataset
    # group, or later by using the UpdateDatasetGroup operation.
    #
    # After creating a dataset group and adding datasets, you use the
    # dataset group when you create a predictor. For more information, see
    # howitworks-datasets-groups.
    #
    # To get a list of all your datasets groups, use the ListDatasetGroups
    # operation.
    #
    # <note markdown="1"> The `Status` of a dataset group must be `ACTIVE` before you can create
    # use the dataset group to create a predictor. To get the status, use
    # the DescribeDatasetGroup operation.
    #
    #  </note>
    #
    # @option params [required, String] :dataset_group_name
    #   A name for the dataset group.
    #
    # @option params [required, String] :domain
    #   The domain associated with the dataset group. When you add a dataset
    #   to a dataset group, this value and the value specified for the
    #   `Domain` parameter of the CreateDataset operation must match.
    #
    #   The `Domain` and `DatasetType` that you choose determine the fields
    #   that must be present in training data that you import to a dataset.
    #   For example, if you choose the `RETAIL` domain and
    #   `TARGET_TIME_SERIES` as the `DatasetType`, Amazon Forecast requires
    #   that `item_id`, `timestamp`, and `demand` fields are present in your
    #   data. For more information, see howitworks-datasets-groups.
    #
    # @option params [Array<String>] :dataset_arns
    #   An array of Amazon Resource Names (ARNs) of the datasets that you want
    #   to include in the dataset group.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The optional metadata that you apply to the dataset group to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination of
    #     such as a prefix for keys as it is reserved for AWS use. You cannot
    #     edit or delete tag keys with this prefix. Values can have this
    #     prefix. If a tag value has `aws` as its prefix but the key does not,
    #     then Forecast considers it to be a user tag and will count against
    #     the limit of 50 tags. Tags with only the key prefix of `aws` do not
    #     count against your tags per resource limit.
    #
    # @return [Types::CreateDatasetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDatasetGroupResponse#dataset_group_arn #dataset_group_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset_group({
    #     dataset_group_name: "Name", # required
    #     domain: "RETAIL", # required, accepts RETAIL, CUSTOM, INVENTORY_PLANNING, EC2_CAPACITY, WORK_FORCE, WEB_TRAFFIC, METRICS
    #     dataset_arns: ["Arn"],
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
    #   resp.dataset_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/CreateDatasetGroup AWS API Documentation
    #
    # @overload create_dataset_group(params = {})
    # @param [Hash] params ({})
    def create_dataset_group(params = {}, options = {})
      req = build_request(:create_dataset_group, params)
      req.send_request(options)
    end

    # Imports your training data to an Amazon Forecast dataset. You provide
    # the location of your training data in an Amazon Simple Storage Service
    # (Amazon S3) bucket and the Amazon Resource Name (ARN) of the dataset
    # that you want to import the data to.
    #
    # You must specify a DataSource object that includes an AWS Identity and
    # Access Management (IAM) role that Amazon Forecast can assume to access
    # the data, as Amazon Forecast makes a copy of your data and processes
    # it in an internal AWS system. For more information, see
    # aws-forecast-iam-roles.
    #
    # The training data must be in CSV format. The delimiter must be a comma
    # (,).
    #
    # You can specify the path to a specific CSV file, the S3 bucket, or to
    # a folder in the S3 bucket. For the latter two cases, Amazon Forecast
    # imports all files up to the limit of 10,000 files.
    #
    # Because dataset imports are not aggregated, your most recent dataset
    # import is the one that is used when training a predictor or generating
    # a forecast. Make sure that your most recent dataset import contains
    # all of the data you want to model off of, and not just the new data
    # collected since the previous import.
    #
    # To get a list of all your dataset import jobs, filtered by specified
    # criteria, use the ListDatasetImportJobs operation.
    #
    # @option params [required, String] :dataset_import_job_name
    #   The name for the dataset import job. We recommend including the
    #   current timestamp in the name, for example, `20190721DatasetImport`.
    #   This can help you avoid getting a `ResourceAlreadyExistsException`
    #   exception.
    #
    # @option params [required, String] :dataset_arn
    #   The Amazon Resource Name (ARN) of the Amazon Forecast dataset that you
    #   want to import data to.
    #
    # @option params [required, Types::DataSource] :data_source
    #   The location of the training data to import and an AWS Identity and
    #   Access Management (IAM) role that Amazon Forecast can assume to access
    #   the data. The training data must be stored in an Amazon S3 bucket.
    #
    #   If encryption is used, `DataSource` must include an AWS Key Management
    #   Service (KMS) key and the IAM role must allow Amazon Forecast
    #   permission to access the key. The KMS key and IAM role must match
    #   those specified in the `EncryptionConfig` parameter of the
    #   CreateDataset operation.
    #
    # @option params [String] :timestamp_format
    #   The format of timestamps in the dataset. The format that you specify
    #   depends on the `DataFrequency` specified when the dataset was created.
    #   The following formats are supported
    #
    #   * "yyyy-MM-dd"
    #
    #     For the following data frequencies: Y, M, W, and D
    #
    #   * "yyyy-MM-dd HH:mm:ss"
    #
    #     For the following data frequencies: H, 30min, 15min, and 1min; and
    #     optionally, for: Y, M, W, and D
    #
    #   If the format isn't specified, Amazon Forecast expects the format to
    #   be "yyyy-MM-dd HH:mm:ss".
    #
    # @option params [Array<Types::Tag>] :tags
    #   The optional metadata that you apply to the dataset import job to help
    #   you categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination of
    #     such as a prefix for keys as it is reserved for AWS use. You cannot
    #     edit or delete tag keys with this prefix. Values can have this
    #     prefix. If a tag value has `aws` as its prefix but the key does not,
    #     then Forecast considers it to be a user tag and will count against
    #     the limit of 50 tags. Tags with only the key prefix of `aws` do not
    #     count against your tags per resource limit.
    #
    # @return [Types::CreateDatasetImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDatasetImportJobResponse#dataset_import_job_arn #dataset_import_job_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset_import_job({
    #     dataset_import_job_name: "Name", # required
    #     dataset_arn: "Arn", # required
    #     data_source: { # required
    #       s3_config: { # required
    #         path: "S3Path", # required
    #         role_arn: "Arn", # required
    #         kms_key_arn: "KMSKeyArn",
    #       },
    #     },
    #     timestamp_format: "TimestampFormat",
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
    #   resp.dataset_import_job_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/CreateDatasetImportJob AWS API Documentation
    #
    # @overload create_dataset_import_job(params = {})
    # @param [Hash] params ({})
    def create_dataset_import_job(params = {}, options = {})
      req = build_request(:create_dataset_import_job, params)
      req.send_request(options)
    end

    # Creates a forecast for each item in the `TARGET_TIME_SERIES` dataset
    # that was used to train the predictor. This is known as inference. To
    # retrieve the forecast for a single item at low latency, use the
    # operation. To export the complete forecast into your Amazon Simple
    # Storage Service (Amazon S3) bucket, use the CreateForecastExportJob
    # operation.
    #
    # The range of the forecast is determined by the `ForecastHorizon`
    # value, which you specify in the CreatePredictor request. When you
    # query a forecast, you can request a specific date range within the
    # forecast.
    #
    # To get a list of all your forecasts, use the ListForecasts operation.
    #
    # <note markdown="1"> The forecasts generated by Amazon Forecast are in the same time zone
    # as the dataset that was used to create the predictor.
    #
    #  </note>
    #
    # For more information, see howitworks-forecast.
    #
    # <note markdown="1"> The `Status` of the forecast must be `ACTIVE` before you can query or
    # export the forecast. Use the DescribeForecast operation to get the
    # status.
    #
    #  </note>
    #
    # @option params [required, String] :forecast_name
    #   A name for the forecast.
    #
    # @option params [required, String] :predictor_arn
    #   The Amazon Resource Name (ARN) of the predictor to use to generate the
    #   forecast.
    #
    # @option params [Array<String>] :forecast_types
    #   The quantiles at which probabilistic forecasts are generated. **You
    #   can currently specify up to 5 quantiles per forecast**. Accepted
    #   values include `0.01 to 0.99` (increments of .01 only) and `mean`. The
    #   mean forecast is different from the median (0.50) when the
    #   distribution is not symmetric (for example, Beta and Negative
    #   Binomial). The default value is `["0.1", "0.5", "0.9"]`.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The optional metadata that you apply to the forecast to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination of
    #     such as a prefix for keys as it is reserved for AWS use. You cannot
    #     edit or delete tag keys with this prefix. Values can have this
    #     prefix. If a tag value has `aws` as its prefix but the key does not,
    #     then Forecast considers it to be a user tag and will count against
    #     the limit of 50 tags. Tags with only the key prefix of `aws` do not
    #     count against your tags per resource limit.
    #
    # @return [Types::CreateForecastResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateForecastResponse#forecast_arn #forecast_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_forecast({
    #     forecast_name: "Name", # required
    #     predictor_arn: "Arn", # required
    #     forecast_types: ["ForecastType"],
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
    #   resp.forecast_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/CreateForecast AWS API Documentation
    #
    # @overload create_forecast(params = {})
    # @param [Hash] params ({})
    def create_forecast(params = {}, options = {})
      req = build_request(:create_forecast, params)
      req.send_request(options)
    end

    # Exports a forecast created by the CreateForecast operation to your
    # Amazon Simple Storage Service (Amazon S3) bucket. The forecast file
    # name will match the following conventions:
    #
    # &lt;ForecastExportJobName&gt;\_&lt;ExportTimestamp&gt;\_&lt;PartNumber&gt;
    #
    # where the &lt;ExportTimestamp&gt; component is in Java
    # SimpleDateFormat (yyyy-MM-ddTHH-mm-ssZ).
    #
    # You must specify a DataDestination object that includes an AWS
    # Identity and Access Management (IAM) role that Amazon Forecast can
    # assume to access the Amazon S3 bucket. For more information, see
    # aws-forecast-iam-roles.
    #
    # For more information, see howitworks-forecast.
    #
    # To get a list of all your forecast export jobs, use the
    # ListForecastExportJobs operation.
    #
    # <note markdown="1"> The `Status` of the forecast export job must be `ACTIVE` before you
    # can access the forecast in your Amazon S3 bucket. To get the status,
    # use the DescribeForecastExportJob operation.
    #
    #  </note>
    #
    # @option params [required, String] :forecast_export_job_name
    #   The name for the forecast export job.
    #
    # @option params [required, String] :forecast_arn
    #   The Amazon Resource Name (ARN) of the forecast that you want to
    #   export.
    #
    # @option params [required, Types::DataDestination] :destination
    #   The location where you want to save the forecast and an AWS Identity
    #   and Access Management (IAM) role that Amazon Forecast can assume to
    #   access the location. The forecast must be exported to an Amazon S3
    #   bucket.
    #
    #   If encryption is used, `Destination` must include an AWS Key
    #   Management Service (KMS) key. The IAM role must allow Amazon Forecast
    #   permission to access the key.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The optional metadata that you apply to the forecast export job to
    #   help you categorize and organize them. Each tag consists of a key and
    #   an optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination of
    #     such as a prefix for keys as it is reserved for AWS use. You cannot
    #     edit or delete tag keys with this prefix. Values can have this
    #     prefix. If a tag value has `aws` as its prefix but the key does not,
    #     then Forecast considers it to be a user tag and will count against
    #     the limit of 50 tags. Tags with only the key prefix of `aws` do not
    #     count against your tags per resource limit.
    #
    # @return [Types::CreateForecastExportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateForecastExportJobResponse#forecast_export_job_arn #forecast_export_job_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_forecast_export_job({
    #     forecast_export_job_name: "Name", # required
    #     forecast_arn: "Arn", # required
    #     destination: { # required
    #       s3_config: { # required
    #         path: "S3Path", # required
    #         role_arn: "Arn", # required
    #         kms_key_arn: "KMSKeyArn",
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
    #   resp.forecast_export_job_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/CreateForecastExportJob AWS API Documentation
    #
    # @overload create_forecast_export_job(params = {})
    # @param [Hash] params ({})
    def create_forecast_export_job(params = {}, options = {})
      req = build_request(:create_forecast_export_job, params)
      req.send_request(options)
    end

    # Creates an Amazon Forecast predictor.
    #
    # In the request, you provide a dataset group and either specify an
    # algorithm or let Amazon Forecast choose the algorithm for you using
    # AutoML. If you specify an algorithm, you also can override
    # algorithm-specific hyperparameters.
    #
    # Amazon Forecast uses the chosen algorithm to train a model using the
    # latest version of the datasets in the specified dataset group. The
    # result is called a predictor. You then generate a forecast using the
    # CreateForecast operation.
    #
    # After training a model, the `CreatePredictor` operation also evaluates
    # it. To see the evaluation metrics, use the GetAccuracyMetrics
    # operation. Always review the evaluation metrics before deciding to use
    # the predictor to generate a forecast.
    #
    # Optionally, you can specify a featurization configuration to fill and
    # aggregate the data fields in the `TARGET_TIME_SERIES` dataset to
    # improve model training. For more information, see FeaturizationConfig.
    #
    # For RELATED\_TIME\_SERIES datasets, `CreatePredictor` verifies that
    # the `DataFrequency` specified when the dataset was created matches the
    # `ForecastFrequency`. TARGET\_TIME\_SERIES datasets don't have this
    # restriction. Amazon Forecast also verifies the delimiter and timestamp
    # format. For more information, see howitworks-datasets-groups.
    #
    # **AutoML**
    #
    # If you want Amazon Forecast to evaluate each algorithm and choose the
    # one that minimizes the `objective function`, set `PerformAutoML` to
    # `true`. The `objective function` is defined as the mean of the
    # weighted p10, p50, and p90 quantile losses. For more information, see
    # EvaluationResult.
    #
    # When AutoML is enabled, the following properties are disallowed:
    #
    # * `AlgorithmArn`
    #
    # * `HPOConfig`
    #
    # * `PerformHPO`
    #
    # * `TrainingParameters`
    #
    # To get a list of all of your predictors, use the ListPredictors
    # operation.
    #
    # <note markdown="1"> Before you can use the predictor to create a forecast, the `Status` of
    # the predictor must be `ACTIVE`, signifying that training has
    # completed. To get the status, use the DescribePredictor operation.
    #
    #  </note>
    #
    # @option params [required, String] :predictor_name
    #   A name for the predictor.
    #
    # @option params [String] :algorithm_arn
    #   The Amazon Resource Name (ARN) of the algorithm to use for model
    #   training. Required if `PerformAutoML` is not set to `true`.
    #
    #   **Supported algorithms:**
    #
    #   * `arn:aws:forecast:::algorithm/ARIMA`
    #
    #   * `arn:aws:forecast:::algorithm/Deep_AR_Plus`
    #
    #     Supports hyperparameter optimization (HPO)
    #
    #   * `arn:aws:forecast:::algorithm/ETS`
    #
    #   * `arn:aws:forecast:::algorithm/NPTS`
    #
    #   * `arn:aws:forecast:::algorithm/Prophet`
    #
    # @option params [required, Integer] :forecast_horizon
    #   Specifies the number of time-steps that the model is trained to
    #   predict. The forecast horizon is also called the prediction length.
    #
    #   For example, if you configure a dataset for daily data collection
    #   (using the `DataFrequency` parameter of the CreateDataset operation)
    #   and set the forecast horizon to 10, the model returns predictions for
    #   10 days.
    #
    #   The maximum forecast horizon is the lesser of 500 time-steps or 1/3 of
    #   the TARGET\_TIME\_SERIES dataset length.
    #
    # @option params [Boolean] :perform_auto_ml
    #   Whether to perform AutoML. When Amazon Forecast performs AutoML, it
    #   evaluates the algorithms it provides and chooses the best algorithm
    #   and configuration for your training dataset.
    #
    #   The default value is `false`. In this case, you are required to
    #   specify an algorithm.
    #
    #   Set `PerformAutoML` to `true` to have Amazon Forecast perform AutoML.
    #   This is a good option if you aren't sure which algorithm is suitable
    #   for your training data. In this case, `PerformHPO` must be false.
    #
    # @option params [Boolean] :perform_hpo
    #   Whether to perform hyperparameter optimization (HPO). HPO finds
    #   optimal hyperparameter values for your training data. The process of
    #   performing HPO is known as running a hyperparameter tuning job.
    #
    #   The default value is `false`. In this case, Amazon Forecast uses
    #   default hyperparameter values from the chosen algorithm.
    #
    #   To override the default values, set `PerformHPO` to `true` and,
    #   optionally, supply the HyperParameterTuningJobConfig object. The
    #   tuning job specifies a metric to optimize, which hyperparameters
    #   participate in tuning, and the valid range for each tunable
    #   hyperparameter. In this case, you are required to specify an algorithm
    #   and `PerformAutoML` must be false.
    #
    #   The following algorithm supports HPO:
    #
    #   * DeepAR+
    #
    #   ^
    #
    # @option params [Hash<String,String>] :training_parameters
    #   The hyperparameters to override for model training. The
    #   hyperparameters that you can override are listed in the individual
    #   algorithms. For the list of supported algorithms, see
    #   aws-forecast-choosing-recipes.
    #
    # @option params [Types::EvaluationParameters] :evaluation_parameters
    #   Used to override the default evaluation parameters of the specified
    #   algorithm. Amazon Forecast evaluates a predictor by splitting a
    #   dataset into training data and testing data. The evaluation parameters
    #   define how to perform the split and the number of iterations.
    #
    # @option params [Types::HyperParameterTuningJobConfig] :hpo_config
    #   Provides hyperparameter override values for the algorithm. If you
    #   don't provide this parameter, Amazon Forecast uses default values.
    #   The individual algorithms specify which hyperparameters support
    #   hyperparameter optimization (HPO). For more information, see
    #   aws-forecast-choosing-recipes.
    #
    #   If you included the `HPOConfig` object, you must set `PerformHPO` to
    #   true.
    #
    # @option params [required, Types::InputDataConfig] :input_data_config
    #   Describes the dataset group that contains the data to use to train the
    #   predictor.
    #
    # @option params [required, Types::FeaturizationConfig] :featurization_config
    #   The featurization configuration.
    #
    # @option params [Types::EncryptionConfig] :encryption_config
    #   An AWS Key Management Service (KMS) key and the AWS Identity and
    #   Access Management (IAM) role that Amazon Forecast can assume to access
    #   the key.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The optional metadata that you apply to the predictor to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination of
    #     such as a prefix for keys as it is reserved for AWS use. You cannot
    #     edit or delete tag keys with this prefix. Values can have this
    #     prefix. If a tag value has `aws` as its prefix but the key does not,
    #     then Forecast considers it to be a user tag and will count against
    #     the limit of 50 tags. Tags with only the key prefix of `aws` do not
    #     count against your tags per resource limit.
    #
    # @return [Types::CreatePredictorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePredictorResponse#predictor_arn #predictor_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_predictor({
    #     predictor_name: "Name", # required
    #     algorithm_arn: "Arn",
    #     forecast_horizon: 1, # required
    #     perform_auto_ml: false,
    #     perform_hpo: false,
    #     training_parameters: {
    #       "ParameterKey" => "ParameterValue",
    #     },
    #     evaluation_parameters: {
    #       number_of_backtest_windows: 1,
    #       back_test_window_offset: 1,
    #     },
    #     hpo_config: {
    #       parameter_ranges: {
    #         categorical_parameter_ranges: [
    #           {
    #             name: "Name", # required
    #             values: ["Value"], # required
    #           },
    #         ],
    #         continuous_parameter_ranges: [
    #           {
    #             name: "Name", # required
    #             max_value: 1.0, # required
    #             min_value: 1.0, # required
    #             scaling_type: "Auto", # accepts Auto, Linear, Logarithmic, ReverseLogarithmic
    #           },
    #         ],
    #         integer_parameter_ranges: [
    #           {
    #             name: "Name", # required
    #             max_value: 1, # required
    #             min_value: 1, # required
    #             scaling_type: "Auto", # accepts Auto, Linear, Logarithmic, ReverseLogarithmic
    #           },
    #         ],
    #       },
    #     },
    #     input_data_config: { # required
    #       dataset_group_arn: "Arn", # required
    #       supplementary_features: [
    #         {
    #           name: "Name", # required
    #           value: "Value", # required
    #         },
    #       ],
    #     },
    #     featurization_config: { # required
    #       forecast_frequency: "Frequency", # required
    #       forecast_dimensions: ["Name"],
    #       featurizations: [
    #         {
    #           attribute_name: "Name", # required
    #           featurization_pipeline: [
    #             {
    #               featurization_method_name: "filling", # required, accepts filling
    #               featurization_method_parameters: {
    #                 "ParameterKey" => "ParameterValue",
    #               },
    #             },
    #           ],
    #         },
    #       ],
    #     },
    #     encryption_config: {
    #       role_arn: "Arn", # required
    #       kms_key_arn: "KMSKeyArn", # required
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
    #   resp.predictor_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/CreatePredictor AWS API Documentation
    #
    # @overload create_predictor(params = {})
    # @param [Hash] params ({})
    def create_predictor(params = {}, options = {})
      req = build_request(:create_predictor, params)
      req.send_request(options)
    end

    # Deletes an Amazon Forecast dataset that was created using the
    # CreateDataset operation. You can only delete datasets that have a
    # status of `ACTIVE` or `CREATE_FAILED`. To get the status use the
    # DescribeDataset operation.
    #
    # <note markdown="1"> Forecast does not automatically update any dataset groups that contain
    # the deleted dataset. In order to update the dataset group, use the
    # operation, omitting the deleted dataset's ARN.
    #
    #  </note>
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DeleteDataset AWS API Documentation
    #
    # @overload delete_dataset(params = {})
    # @param [Hash] params ({})
    def delete_dataset(params = {}, options = {})
      req = build_request(:delete_dataset, params)
      req.send_request(options)
    end

    # Deletes a dataset group created using the CreateDatasetGroup
    # operation. You can only delete dataset groups that have a status of
    # `ACTIVE`, `CREATE_FAILED`, or `UPDATE_FAILED`. To get the status, use
    # the DescribeDatasetGroup operation.
    #
    # This operation deletes only the dataset group, not the datasets in the
    # group.
    #
    # @option params [required, String] :dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataset_group({
    #     dataset_group_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DeleteDatasetGroup AWS API Documentation
    #
    # @overload delete_dataset_group(params = {})
    # @param [Hash] params ({})
    def delete_dataset_group(params = {}, options = {})
      req = build_request(:delete_dataset_group, params)
      req.send_request(options)
    end

    # Deletes a dataset import job created using the CreateDatasetImportJob
    # operation. You can delete only dataset import jobs that have a status
    # of `ACTIVE` or `CREATE_FAILED`. To get the status, use the
    # DescribeDatasetImportJob operation.
    #
    # @option params [required, String] :dataset_import_job_arn
    #   The Amazon Resource Name (ARN) of the dataset import job to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataset_import_job({
    #     dataset_import_job_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DeleteDatasetImportJob AWS API Documentation
    #
    # @overload delete_dataset_import_job(params = {})
    # @param [Hash] params ({})
    def delete_dataset_import_job(params = {}, options = {})
      req = build_request(:delete_dataset_import_job, params)
      req.send_request(options)
    end

    # Deletes a forecast created using the CreateForecast operation. You can
    # delete only forecasts that have a status of `ACTIVE` or
    # `CREATE_FAILED`. To get the status, use the DescribeForecast
    # operation.
    #
    # You can't delete a forecast while it is being exported. After a
    # forecast is deleted, you can no longer query the forecast.
    #
    # @option params [required, String] :forecast_arn
    #   The Amazon Resource Name (ARN) of the forecast to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_forecast({
    #     forecast_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DeleteForecast AWS API Documentation
    #
    # @overload delete_forecast(params = {})
    # @param [Hash] params ({})
    def delete_forecast(params = {}, options = {})
      req = build_request(:delete_forecast, params)
      req.send_request(options)
    end

    # Deletes a forecast export job created using the
    # CreateForecastExportJob operation. You can delete only export jobs
    # that have a status of `ACTIVE` or `CREATE_FAILED`. To get the status,
    # use the DescribeForecastExportJob operation.
    #
    # @option params [required, String] :forecast_export_job_arn
    #   The Amazon Resource Name (ARN) of the forecast export job to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_forecast_export_job({
    #     forecast_export_job_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DeleteForecastExportJob AWS API Documentation
    #
    # @overload delete_forecast_export_job(params = {})
    # @param [Hash] params ({})
    def delete_forecast_export_job(params = {}, options = {})
      req = build_request(:delete_forecast_export_job, params)
      req.send_request(options)
    end

    # Deletes a predictor created using the CreatePredictor operation. You
    # can delete only predictor that have a status of `ACTIVE` or
    # `CREATE_FAILED`. To get the status, use the DescribePredictor
    # operation.
    #
    # @option params [required, String] :predictor_arn
    #   The Amazon Resource Name (ARN) of the predictor to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_predictor({
    #     predictor_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DeletePredictor AWS API Documentation
    #
    # @overload delete_predictor(params = {})
    # @param [Hash] params ({})
    def delete_predictor(params = {}, options = {})
      req = build_request(:delete_predictor, params)
      req.send_request(options)
    end

    # Describes an Amazon Forecast dataset created using the CreateDataset
    # operation.
    #
    # In addition to listing the parameters specified in the `CreateDataset`
    # request, this operation includes the following dataset properties:
    #
    # * `CreationTime`
    #
    # * `LastModificationTime`
    #
    # * `Status`
    #
    # @option params [required, String] :dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #
    # @return [Types::DescribeDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDatasetResponse#dataset_arn #dataset_arn} => String
    #   * {Types::DescribeDatasetResponse#dataset_name #dataset_name} => String
    #   * {Types::DescribeDatasetResponse#domain #domain} => String
    #   * {Types::DescribeDatasetResponse#dataset_type #dataset_type} => String
    #   * {Types::DescribeDatasetResponse#data_frequency #data_frequency} => String
    #   * {Types::DescribeDatasetResponse#schema #schema} => Types::Schema
    #   * {Types::DescribeDatasetResponse#encryption_config #encryption_config} => Types::EncryptionConfig
    #   * {Types::DescribeDatasetResponse#status #status} => String
    #   * {Types::DescribeDatasetResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeDatasetResponse#last_modification_time #last_modification_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset({
    #     dataset_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_arn #=> String
    #   resp.dataset_name #=> String
    #   resp.domain #=> String, one of "RETAIL", "CUSTOM", "INVENTORY_PLANNING", "EC2_CAPACITY", "WORK_FORCE", "WEB_TRAFFIC", "METRICS"
    #   resp.dataset_type #=> String, one of "TARGET_TIME_SERIES", "RELATED_TIME_SERIES", "ITEM_METADATA"
    #   resp.data_frequency #=> String
    #   resp.schema.attributes #=> Array
    #   resp.schema.attributes[0].attribute_name #=> String
    #   resp.schema.attributes[0].attribute_type #=> String, one of "string", "integer", "float", "timestamp"
    #   resp.encryption_config.role_arn #=> String
    #   resp.encryption_config.kms_key_arn #=> String
    #   resp.status #=> String
    #   resp.creation_time #=> Time
    #   resp.last_modification_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DescribeDataset AWS API Documentation
    #
    # @overload describe_dataset(params = {})
    # @param [Hash] params ({})
    def describe_dataset(params = {}, options = {})
      req = build_request(:describe_dataset, params)
      req.send_request(options)
    end

    # Describes a dataset group created using the CreateDatasetGroup
    # operation.
    #
    # In addition to listing the parameters provided in the
    # `CreateDatasetGroup` request, this operation includes the following
    # properties:
    #
    # * `DatasetArns` - The datasets belonging to the group.
    #
    # * `CreationTime`
    #
    # * `LastModificationTime`
    #
    # * `Status`
    #
    # @option params [required, String] :dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group.
    #
    # @return [Types::DescribeDatasetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDatasetGroupResponse#dataset_group_name #dataset_group_name} => String
    #   * {Types::DescribeDatasetGroupResponse#dataset_group_arn #dataset_group_arn} => String
    #   * {Types::DescribeDatasetGroupResponse#dataset_arns #dataset_arns} => Array&lt;String&gt;
    #   * {Types::DescribeDatasetGroupResponse#domain #domain} => String
    #   * {Types::DescribeDatasetGroupResponse#status #status} => String
    #   * {Types::DescribeDatasetGroupResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeDatasetGroupResponse#last_modification_time #last_modification_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset_group({
    #     dataset_group_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_group_name #=> String
    #   resp.dataset_group_arn #=> String
    #   resp.dataset_arns #=> Array
    #   resp.dataset_arns[0] #=> String
    #   resp.domain #=> String, one of "RETAIL", "CUSTOM", "INVENTORY_PLANNING", "EC2_CAPACITY", "WORK_FORCE", "WEB_TRAFFIC", "METRICS"
    #   resp.status #=> String
    #   resp.creation_time #=> Time
    #   resp.last_modification_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DescribeDatasetGroup AWS API Documentation
    #
    # @overload describe_dataset_group(params = {})
    # @param [Hash] params ({})
    def describe_dataset_group(params = {}, options = {})
      req = build_request(:describe_dataset_group, params)
      req.send_request(options)
    end

    # Describes a dataset import job created using the
    # CreateDatasetImportJob operation.
    #
    # In addition to listing the parameters provided in the
    # `CreateDatasetImportJob` request, this operation includes the
    # following properties:
    #
    # * `CreationTime`
    #
    # * `LastModificationTime`
    #
    # * `DataSize`
    #
    # * `FieldStatistics`
    #
    # * `Status`
    #
    # * `Message` - If an error occurred, information about the error.
    #
    # @option params [required, String] :dataset_import_job_arn
    #   The Amazon Resource Name (ARN) of the dataset import job.
    #
    # @return [Types::DescribeDatasetImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDatasetImportJobResponse#dataset_import_job_name #dataset_import_job_name} => String
    #   * {Types::DescribeDatasetImportJobResponse#dataset_import_job_arn #dataset_import_job_arn} => String
    #   * {Types::DescribeDatasetImportJobResponse#dataset_arn #dataset_arn} => String
    #   * {Types::DescribeDatasetImportJobResponse#timestamp_format #timestamp_format} => String
    #   * {Types::DescribeDatasetImportJobResponse#data_source #data_source} => Types::DataSource
    #   * {Types::DescribeDatasetImportJobResponse#field_statistics #field_statistics} => Hash&lt;String,Types::Statistics&gt;
    #   * {Types::DescribeDatasetImportJobResponse#data_size #data_size} => Float
    #   * {Types::DescribeDatasetImportJobResponse#status #status} => String
    #   * {Types::DescribeDatasetImportJobResponse#message #message} => String
    #   * {Types::DescribeDatasetImportJobResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeDatasetImportJobResponse#last_modification_time #last_modification_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset_import_job({
    #     dataset_import_job_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_import_job_name #=> String
    #   resp.dataset_import_job_arn #=> String
    #   resp.dataset_arn #=> String
    #   resp.timestamp_format #=> String
    #   resp.data_source.s3_config.path #=> String
    #   resp.data_source.s3_config.role_arn #=> String
    #   resp.data_source.s3_config.kms_key_arn #=> String
    #   resp.field_statistics #=> Hash
    #   resp.field_statistics["String"].count #=> Integer
    #   resp.field_statistics["String"].count_distinct #=> Integer
    #   resp.field_statistics["String"].count_null #=> Integer
    #   resp.field_statistics["String"].count_nan #=> Integer
    #   resp.field_statistics["String"].min #=> String
    #   resp.field_statistics["String"].max #=> String
    #   resp.field_statistics["String"].avg #=> Float
    #   resp.field_statistics["String"].stddev #=> Float
    #   resp.data_size #=> Float
    #   resp.status #=> String
    #   resp.message #=> String
    #   resp.creation_time #=> Time
    #   resp.last_modification_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DescribeDatasetImportJob AWS API Documentation
    #
    # @overload describe_dataset_import_job(params = {})
    # @param [Hash] params ({})
    def describe_dataset_import_job(params = {}, options = {})
      req = build_request(:describe_dataset_import_job, params)
      req.send_request(options)
    end

    # Describes a forecast created using the CreateForecast operation.
    #
    # In addition to listing the properties provided in the `CreateForecast`
    # request, this operation lists the following properties:
    #
    # * `DatasetGroupArn` - The dataset group that provided the training
    #   data.
    #
    # * `CreationTime`
    #
    # * `LastModificationTime`
    #
    # * `Status`
    #
    # * `Message` - If an error occurred, information about the error.
    #
    # @option params [required, String] :forecast_arn
    #   The Amazon Resource Name (ARN) of the forecast.
    #
    # @return [Types::DescribeForecastResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeForecastResponse#forecast_arn #forecast_arn} => String
    #   * {Types::DescribeForecastResponse#forecast_name #forecast_name} => String
    #   * {Types::DescribeForecastResponse#forecast_types #forecast_types} => Array&lt;String&gt;
    #   * {Types::DescribeForecastResponse#predictor_arn #predictor_arn} => String
    #   * {Types::DescribeForecastResponse#dataset_group_arn #dataset_group_arn} => String
    #   * {Types::DescribeForecastResponse#status #status} => String
    #   * {Types::DescribeForecastResponse#message #message} => String
    #   * {Types::DescribeForecastResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeForecastResponse#last_modification_time #last_modification_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_forecast({
    #     forecast_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.forecast_arn #=> String
    #   resp.forecast_name #=> String
    #   resp.forecast_types #=> Array
    #   resp.forecast_types[0] #=> String
    #   resp.predictor_arn #=> String
    #   resp.dataset_group_arn #=> String
    #   resp.status #=> String
    #   resp.message #=> String
    #   resp.creation_time #=> Time
    #   resp.last_modification_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DescribeForecast AWS API Documentation
    #
    # @overload describe_forecast(params = {})
    # @param [Hash] params ({})
    def describe_forecast(params = {}, options = {})
      req = build_request(:describe_forecast, params)
      req.send_request(options)
    end

    # Describes a forecast export job created using the
    # CreateForecastExportJob operation.
    #
    # In addition to listing the properties provided by the user in the
    # `CreateForecastExportJob` request, this operation lists the following
    # properties:
    #
    # * `CreationTime`
    #
    # * `LastModificationTime`
    #
    # * `Status`
    #
    # * `Message` - If an error occurred, information about the error.
    #
    # @option params [required, String] :forecast_export_job_arn
    #   The Amazon Resource Name (ARN) of the forecast export job.
    #
    # @return [Types::DescribeForecastExportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeForecastExportJobResponse#forecast_export_job_arn #forecast_export_job_arn} => String
    #   * {Types::DescribeForecastExportJobResponse#forecast_export_job_name #forecast_export_job_name} => String
    #   * {Types::DescribeForecastExportJobResponse#forecast_arn #forecast_arn} => String
    #   * {Types::DescribeForecastExportJobResponse#destination #destination} => Types::DataDestination
    #   * {Types::DescribeForecastExportJobResponse#message #message} => String
    #   * {Types::DescribeForecastExportJobResponse#status #status} => String
    #   * {Types::DescribeForecastExportJobResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeForecastExportJobResponse#last_modification_time #last_modification_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_forecast_export_job({
    #     forecast_export_job_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.forecast_export_job_arn #=> String
    #   resp.forecast_export_job_name #=> String
    #   resp.forecast_arn #=> String
    #   resp.destination.s3_config.path #=> String
    #   resp.destination.s3_config.role_arn #=> String
    #   resp.destination.s3_config.kms_key_arn #=> String
    #   resp.message #=> String
    #   resp.status #=> String
    #   resp.creation_time #=> Time
    #   resp.last_modification_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DescribeForecastExportJob AWS API Documentation
    #
    # @overload describe_forecast_export_job(params = {})
    # @param [Hash] params ({})
    def describe_forecast_export_job(params = {}, options = {})
      req = build_request(:describe_forecast_export_job, params)
      req.send_request(options)
    end

    # Describes a predictor created using the CreatePredictor operation.
    #
    # In addition to listing the properties provided in the
    # `CreatePredictor` request, this operation lists the following
    # properties:
    #
    # * `DatasetImportJobArns` - The dataset import jobs used to import
    #   training data.
    #
    # * `AutoMLAlgorithmArns` - If AutoML is performed, the algorithms that
    #   were evaluated.
    #
    # * `CreationTime`
    #
    # * `LastModificationTime`
    #
    # * `Status`
    #
    # * `Message` - If an error occurred, information about the error.
    #
    # @option params [required, String] :predictor_arn
    #   The Amazon Resource Name (ARN) of the predictor that you want
    #   information about.
    #
    # @return [Types::DescribePredictorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePredictorResponse#predictor_arn #predictor_arn} => String
    #   * {Types::DescribePredictorResponse#predictor_name #predictor_name} => String
    #   * {Types::DescribePredictorResponse#algorithm_arn #algorithm_arn} => String
    #   * {Types::DescribePredictorResponse#forecast_horizon #forecast_horizon} => Integer
    #   * {Types::DescribePredictorResponse#perform_auto_ml #perform_auto_ml} => Boolean
    #   * {Types::DescribePredictorResponse#perform_hpo #perform_hpo} => Boolean
    #   * {Types::DescribePredictorResponse#training_parameters #training_parameters} => Hash&lt;String,String&gt;
    #   * {Types::DescribePredictorResponse#evaluation_parameters #evaluation_parameters} => Types::EvaluationParameters
    #   * {Types::DescribePredictorResponse#hpo_config #hpo_config} => Types::HyperParameterTuningJobConfig
    #   * {Types::DescribePredictorResponse#input_data_config #input_data_config} => Types::InputDataConfig
    #   * {Types::DescribePredictorResponse#featurization_config #featurization_config} => Types::FeaturizationConfig
    #   * {Types::DescribePredictorResponse#encryption_config #encryption_config} => Types::EncryptionConfig
    #   * {Types::DescribePredictorResponse#predictor_execution_details #predictor_execution_details} => Types::PredictorExecutionDetails
    #   * {Types::DescribePredictorResponse#dataset_import_job_arns #dataset_import_job_arns} => Array&lt;String&gt;
    #   * {Types::DescribePredictorResponse#auto_ml_algorithm_arns #auto_ml_algorithm_arns} => Array&lt;String&gt;
    #   * {Types::DescribePredictorResponse#status #status} => String
    #   * {Types::DescribePredictorResponse#message #message} => String
    #   * {Types::DescribePredictorResponse#creation_time #creation_time} => Time
    #   * {Types::DescribePredictorResponse#last_modification_time #last_modification_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_predictor({
    #     predictor_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.predictor_arn #=> String
    #   resp.predictor_name #=> String
    #   resp.algorithm_arn #=> String
    #   resp.forecast_horizon #=> Integer
    #   resp.perform_auto_ml #=> Boolean
    #   resp.perform_hpo #=> Boolean
    #   resp.training_parameters #=> Hash
    #   resp.training_parameters["ParameterKey"] #=> String
    #   resp.evaluation_parameters.number_of_backtest_windows #=> Integer
    #   resp.evaluation_parameters.back_test_window_offset #=> Integer
    #   resp.hpo_config.parameter_ranges.categorical_parameter_ranges #=> Array
    #   resp.hpo_config.parameter_ranges.categorical_parameter_ranges[0].name #=> String
    #   resp.hpo_config.parameter_ranges.categorical_parameter_ranges[0].values #=> Array
    #   resp.hpo_config.parameter_ranges.categorical_parameter_ranges[0].values[0] #=> String
    #   resp.hpo_config.parameter_ranges.continuous_parameter_ranges #=> Array
    #   resp.hpo_config.parameter_ranges.continuous_parameter_ranges[0].name #=> String
    #   resp.hpo_config.parameter_ranges.continuous_parameter_ranges[0].max_value #=> Float
    #   resp.hpo_config.parameter_ranges.continuous_parameter_ranges[0].min_value #=> Float
    #   resp.hpo_config.parameter_ranges.continuous_parameter_ranges[0].scaling_type #=> String, one of "Auto", "Linear", "Logarithmic", "ReverseLogarithmic"
    #   resp.hpo_config.parameter_ranges.integer_parameter_ranges #=> Array
    #   resp.hpo_config.parameter_ranges.integer_parameter_ranges[0].name #=> String
    #   resp.hpo_config.parameter_ranges.integer_parameter_ranges[0].max_value #=> Integer
    #   resp.hpo_config.parameter_ranges.integer_parameter_ranges[0].min_value #=> Integer
    #   resp.hpo_config.parameter_ranges.integer_parameter_ranges[0].scaling_type #=> String, one of "Auto", "Linear", "Logarithmic", "ReverseLogarithmic"
    #   resp.input_data_config.dataset_group_arn #=> String
    #   resp.input_data_config.supplementary_features #=> Array
    #   resp.input_data_config.supplementary_features[0].name #=> String
    #   resp.input_data_config.supplementary_features[0].value #=> String
    #   resp.featurization_config.forecast_frequency #=> String
    #   resp.featurization_config.forecast_dimensions #=> Array
    #   resp.featurization_config.forecast_dimensions[0] #=> String
    #   resp.featurization_config.featurizations #=> Array
    #   resp.featurization_config.featurizations[0].attribute_name #=> String
    #   resp.featurization_config.featurizations[0].featurization_pipeline #=> Array
    #   resp.featurization_config.featurizations[0].featurization_pipeline[0].featurization_method_name #=> String, one of "filling"
    #   resp.featurization_config.featurizations[0].featurization_pipeline[0].featurization_method_parameters #=> Hash
    #   resp.featurization_config.featurizations[0].featurization_pipeline[0].featurization_method_parameters["ParameterKey"] #=> String
    #   resp.encryption_config.role_arn #=> String
    #   resp.encryption_config.kms_key_arn #=> String
    #   resp.predictor_execution_details.predictor_executions #=> Array
    #   resp.predictor_execution_details.predictor_executions[0].algorithm_arn #=> String
    #   resp.predictor_execution_details.predictor_executions[0].test_windows #=> Array
    #   resp.predictor_execution_details.predictor_executions[0].test_windows[0].test_window_start #=> Time
    #   resp.predictor_execution_details.predictor_executions[0].test_windows[0].test_window_end #=> Time
    #   resp.predictor_execution_details.predictor_executions[0].test_windows[0].status #=> String
    #   resp.predictor_execution_details.predictor_executions[0].test_windows[0].message #=> String
    #   resp.dataset_import_job_arns #=> Array
    #   resp.dataset_import_job_arns[0] #=> String
    #   resp.auto_ml_algorithm_arns #=> Array
    #   resp.auto_ml_algorithm_arns[0] #=> String
    #   resp.status #=> String
    #   resp.message #=> String
    #   resp.creation_time #=> Time
    #   resp.last_modification_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DescribePredictor AWS API Documentation
    #
    # @overload describe_predictor(params = {})
    # @param [Hash] params ({})
    def describe_predictor(params = {}, options = {})
      req = build_request(:describe_predictor, params)
      req.send_request(options)
    end

    # Provides metrics on the accuracy of the models that were trained by
    # the CreatePredictor operation. Use metrics to see how well the model
    # performed and to decide whether to use the predictor to generate a
    # forecast. For more information, see metrics.
    #
    # This operation generates metrics for each backtest window that was
    # evaluated. The number of backtest windows (`NumberOfBacktestWindows`)
    # is specified using the EvaluationParameters object, which is
    # optionally included in the `CreatePredictor` request. If
    # `NumberOfBacktestWindows` isn't specified, the number defaults to
    # one.
    #
    # The parameters of the `filling` method determine which items
    # contribute to the metrics. If you want all items to contribute,
    # specify `zero`. If you want only those items that have complete data
    # in the range being evaluated to contribute, specify `nan`. For more
    # information, see FeaturizationMethod.
    #
    # <note markdown="1"> Before you can get accuracy metrics, the `Status` of the predictor
    # must be `ACTIVE`, signifying that training has completed. To get the
    # status, use the DescribePredictor operation.
    #
    #  </note>
    #
    # @option params [required, String] :predictor_arn
    #   The Amazon Resource Name (ARN) of the predictor to get metrics for.
    #
    # @return [Types::GetAccuracyMetricsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccuracyMetricsResponse#predictor_evaluation_results #predictor_evaluation_results} => Array&lt;Types::EvaluationResult&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_accuracy_metrics({
    #     predictor_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.predictor_evaluation_results #=> Array
    #   resp.predictor_evaluation_results[0].algorithm_arn #=> String
    #   resp.predictor_evaluation_results[0].test_windows #=> Array
    #   resp.predictor_evaluation_results[0].test_windows[0].test_window_start #=> Time
    #   resp.predictor_evaluation_results[0].test_windows[0].test_window_end #=> Time
    #   resp.predictor_evaluation_results[0].test_windows[0].item_count #=> Integer
    #   resp.predictor_evaluation_results[0].test_windows[0].evaluation_type #=> String, one of "SUMMARY", "COMPUTED"
    #   resp.predictor_evaluation_results[0].test_windows[0].metrics.rmse #=> Float
    #   resp.predictor_evaluation_results[0].test_windows[0].metrics.weighted_quantile_losses #=> Array
    #   resp.predictor_evaluation_results[0].test_windows[0].metrics.weighted_quantile_losses[0].quantile #=> Float
    #   resp.predictor_evaluation_results[0].test_windows[0].metrics.weighted_quantile_losses[0].loss_value #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/GetAccuracyMetrics AWS API Documentation
    #
    # @overload get_accuracy_metrics(params = {})
    # @param [Hash] params ({})
    def get_accuracy_metrics(params = {}, options = {})
      req = build_request(:get_accuracy_metrics, params)
      req.send_request(options)
    end

    # Returns a list of dataset groups created using the CreateDatasetGroup
    # operation. For each dataset group, this operation returns a summary of
    # its properties, including its Amazon Resource Name (ARN). You can
    # retrieve the complete set of properties by using the dataset group ARN
    # with the DescribeDatasetGroup operation.
    #
    # @option params [String] :next_token
    #   If the result of the previous request was truncated, the response
    #   includes a `NextToken`. To retrieve the next set of results, use the
    #   token in the next request. Tokens expire after 24 hours.
    #
    # @option params [Integer] :max_results
    #   The number of items to return in the response.
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
    #   resp.dataset_groups[0].dataset_group_arn #=> String
    #   resp.dataset_groups[0].dataset_group_name #=> String
    #   resp.dataset_groups[0].creation_time #=> Time
    #   resp.dataset_groups[0].last_modification_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ListDatasetGroups AWS API Documentation
    #
    # @overload list_dataset_groups(params = {})
    # @param [Hash] params ({})
    def list_dataset_groups(params = {}, options = {})
      req = build_request(:list_dataset_groups, params)
      req.send_request(options)
    end

    # Returns a list of dataset import jobs created using the
    # CreateDatasetImportJob operation. For each import job, this operation
    # returns a summary of its properties, including its Amazon Resource
    # Name (ARN). You can retrieve the complete set of properties by using
    # the ARN with the DescribeDatasetImportJob operation. You can filter
    # the list by providing an array of Filter objects.
    #
    # @option params [String] :next_token
    #   If the result of the previous request was truncated, the response
    #   includes a `NextToken`. To retrieve the next set of results, use the
    #   token in the next request. Tokens expire after 24 hours.
    #
    # @option params [Integer] :max_results
    #   The number of items to return in the response.
    #
    # @option params [Array<Types::Filter>] :filters
    #   An array of filters. For each filter, you provide a condition and a
    #   match statement. The condition is either `IS` or `IS_NOT`, which
    #   specifies whether to include or exclude the datasets that match the
    #   statement from the list, respectively. The match statement consists of
    #   a key and a value.
    #
    #   **Filter properties**
    #
    #   * `Condition` - The condition to apply. Valid values are `IS` and
    #     `IS_NOT`. To include the datasets that match the statement, specify
    #     `IS`. To exclude matching datasets, specify `IS_NOT`.
    #
    #   * `Key` - The name of the parameter to filter on. Valid values are
    #     `DatasetArn` and `Status`.
    #
    #   * `Value` - The value to match.
    #
    #   For example, to list all dataset import jobs whose status is ACTIVE,
    #   you specify the following filter:
    #
    #   `"Filters": [ \{ "Condition": "IS", "Key": "Status", "Value": "ACTIVE"
    #   \} ]`
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
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "String", # required
    #         value: "Arn", # required
    #         condition: "IS", # required, accepts IS, IS_NOT
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_import_jobs #=> Array
    #   resp.dataset_import_jobs[0].dataset_import_job_arn #=> String
    #   resp.dataset_import_jobs[0].dataset_import_job_name #=> String
    #   resp.dataset_import_jobs[0].data_source.s3_config.path #=> String
    #   resp.dataset_import_jobs[0].data_source.s3_config.role_arn #=> String
    #   resp.dataset_import_jobs[0].data_source.s3_config.kms_key_arn #=> String
    #   resp.dataset_import_jobs[0].status #=> String
    #   resp.dataset_import_jobs[0].message #=> String
    #   resp.dataset_import_jobs[0].creation_time #=> Time
    #   resp.dataset_import_jobs[0].last_modification_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ListDatasetImportJobs AWS API Documentation
    #
    # @overload list_dataset_import_jobs(params = {})
    # @param [Hash] params ({})
    def list_dataset_import_jobs(params = {}, options = {})
      req = build_request(:list_dataset_import_jobs, params)
      req.send_request(options)
    end

    # Returns a list of datasets created using the CreateDataset operation.
    # For each dataset, a summary of its properties, including its Amazon
    # Resource Name (ARN), is returned. To retrieve the complete set of
    # properties, use the ARN with the DescribeDataset operation.
    #
    # @option params [String] :next_token
    #   If the result of the previous request was truncated, the response
    #   includes a `NextToken`. To retrieve the next set of results, use the
    #   token in the next request. Tokens expire after 24 hours.
    #
    # @option params [Integer] :max_results
    #   The number of items to return in the response.
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
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.datasets #=> Array
    #   resp.datasets[0].dataset_arn #=> String
    #   resp.datasets[0].dataset_name #=> String
    #   resp.datasets[0].dataset_type #=> String, one of "TARGET_TIME_SERIES", "RELATED_TIME_SERIES", "ITEM_METADATA"
    #   resp.datasets[0].domain #=> String, one of "RETAIL", "CUSTOM", "INVENTORY_PLANNING", "EC2_CAPACITY", "WORK_FORCE", "WEB_TRAFFIC", "METRICS"
    #   resp.datasets[0].creation_time #=> Time
    #   resp.datasets[0].last_modification_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ListDatasets AWS API Documentation
    #
    # @overload list_datasets(params = {})
    # @param [Hash] params ({})
    def list_datasets(params = {}, options = {})
      req = build_request(:list_datasets, params)
      req.send_request(options)
    end

    # Returns a list of forecast export jobs created using the
    # CreateForecastExportJob operation. For each forecast export job, this
    # operation returns a summary of its properties, including its Amazon
    # Resource Name (ARN). To retrieve the complete set of properties, use
    # the ARN with the DescribeForecastExportJob operation. You can filter
    # the list using an array of Filter objects.
    #
    # @option params [String] :next_token
    #   If the result of the previous request was truncated, the response
    #   includes a `NextToken`. To retrieve the next set of results, use the
    #   token in the next request. Tokens expire after 24 hours.
    #
    # @option params [Integer] :max_results
    #   The number of items to return in the response.
    #
    # @option params [Array<Types::Filter>] :filters
    #   An array of filters. For each filter, you provide a condition and a
    #   match statement. The condition is either `IS` or `IS_NOT`, which
    #   specifies whether to include or exclude the forecast export jobs that
    #   match the statement from the list, respectively. The match statement
    #   consists of a key and a value.
    #
    #   **Filter properties**
    #
    #   * `Condition` - The condition to apply. Valid values are `IS` and
    #     `IS_NOT`. To include the forecast export jobs that match the
    #     statement, specify `IS`. To exclude matching forecast export jobs,
    #     specify `IS_NOT`.
    #
    #   * `Key` - The name of the parameter to filter on. Valid values are
    #     `ForecastArn` and `Status`.
    #
    #   * `Value` - The value to match.
    #
    #   For example, to list all jobs that export a forecast named
    #   *electricityforecast*, specify the following filter:
    #
    #   `"Filters": [ \{ "Condition": "IS", "Key": "ForecastArn", "Value":
    #   "arn:aws:forecast:us-west-2:<acct-id>:forecast/electricityforecast" \}
    #   ]`
    #
    # @return [Types::ListForecastExportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListForecastExportJobsResponse#forecast_export_jobs #forecast_export_jobs} => Array&lt;Types::ForecastExportJobSummary&gt;
    #   * {Types::ListForecastExportJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_forecast_export_jobs({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "String", # required
    #         value: "Arn", # required
    #         condition: "IS", # required, accepts IS, IS_NOT
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.forecast_export_jobs #=> Array
    #   resp.forecast_export_jobs[0].forecast_export_job_arn #=> String
    #   resp.forecast_export_jobs[0].forecast_export_job_name #=> String
    #   resp.forecast_export_jobs[0].destination.s3_config.path #=> String
    #   resp.forecast_export_jobs[0].destination.s3_config.role_arn #=> String
    #   resp.forecast_export_jobs[0].destination.s3_config.kms_key_arn #=> String
    #   resp.forecast_export_jobs[0].status #=> String
    #   resp.forecast_export_jobs[0].message #=> String
    #   resp.forecast_export_jobs[0].creation_time #=> Time
    #   resp.forecast_export_jobs[0].last_modification_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ListForecastExportJobs AWS API Documentation
    #
    # @overload list_forecast_export_jobs(params = {})
    # @param [Hash] params ({})
    def list_forecast_export_jobs(params = {}, options = {})
      req = build_request(:list_forecast_export_jobs, params)
      req.send_request(options)
    end

    # Returns a list of forecasts created using the CreateForecast
    # operation. For each forecast, this operation returns a summary of its
    # properties, including its Amazon Resource Name (ARN). To retrieve the
    # complete set of properties, specify the ARN with the DescribeForecast
    # operation. You can filter the list using an array of Filter objects.
    #
    # @option params [String] :next_token
    #   If the result of the previous request was truncated, the response
    #   includes a `NextToken`. To retrieve the next set of results, use the
    #   token in the next request. Tokens expire after 24 hours.
    #
    # @option params [Integer] :max_results
    #   The number of items to return in the response.
    #
    # @option params [Array<Types::Filter>] :filters
    #   An array of filters. For each filter, you provide a condition and a
    #   match statement. The condition is either `IS` or `IS_NOT`, which
    #   specifies whether to include or exclude the forecasts that match the
    #   statement from the list, respectively. The match statement consists of
    #   a key and a value.
    #
    #   **Filter properties**
    #
    #   * `Condition` - The condition to apply. Valid values are `IS` and
    #     `IS_NOT`. To include the forecasts that match the statement, specify
    #     `IS`. To exclude matching forecasts, specify `IS_NOT`.
    #
    #   * `Key` - The name of the parameter to filter on. Valid values are
    #     `DatasetGroupArn`, `PredictorArn`, and `Status`.
    #
    #   * `Value` - The value to match.
    #
    #   For example, to list all forecasts whose status is not ACTIVE, you
    #   would specify:
    #
    #   `"Filters": [ \{ "Condition": "IS_NOT", "Key": "Status", "Value":
    #   "ACTIVE" \} ]`
    #
    # @return [Types::ListForecastsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListForecastsResponse#forecasts #forecasts} => Array&lt;Types::ForecastSummary&gt;
    #   * {Types::ListForecastsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_forecasts({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "String", # required
    #         value: "Arn", # required
    #         condition: "IS", # required, accepts IS, IS_NOT
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.forecasts #=> Array
    #   resp.forecasts[0].forecast_arn #=> String
    #   resp.forecasts[0].forecast_name #=> String
    #   resp.forecasts[0].predictor_arn #=> String
    #   resp.forecasts[0].dataset_group_arn #=> String
    #   resp.forecasts[0].status #=> String
    #   resp.forecasts[0].message #=> String
    #   resp.forecasts[0].creation_time #=> Time
    #   resp.forecasts[0].last_modification_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ListForecasts AWS API Documentation
    #
    # @overload list_forecasts(params = {})
    # @param [Hash] params ({})
    def list_forecasts(params = {}, options = {})
      req = build_request(:list_forecasts, params)
      req.send_request(options)
    end

    # Returns a list of predictors created using the CreatePredictor
    # operation. For each predictor, this operation returns a summary of its
    # properties, including its Amazon Resource Name (ARN). You can retrieve
    # the complete set of properties by using the ARN with the
    # DescribePredictor operation. You can filter the list using an array of
    # Filter objects.
    #
    # @option params [String] :next_token
    #   If the result of the previous request was truncated, the response
    #   includes a `NextToken`. To retrieve the next set of results, use the
    #   token in the next request. Tokens expire after 24 hours.
    #
    # @option params [Integer] :max_results
    #   The number of items to return in the response.
    #
    # @option params [Array<Types::Filter>] :filters
    #   An array of filters. For each filter, you provide a condition and a
    #   match statement. The condition is either `IS` or `IS_NOT`, which
    #   specifies whether to include or exclude the predictors that match the
    #   statement from the list, respectively. The match statement consists of
    #   a key and a value.
    #
    #   **Filter properties**
    #
    #   * `Condition` - The condition to apply. Valid values are `IS` and
    #     `IS_NOT`. To include the predictors that match the statement,
    #     specify `IS`. To exclude matching predictors, specify `IS_NOT`.
    #
    #   * `Key` - The name of the parameter to filter on. Valid values are
    #     `DatasetGroupArn` and `Status`.
    #
    #   * `Value` - The value to match.
    #
    #   For example, to list all predictors whose status is ACTIVE, you would
    #   specify:
    #
    #   `"Filters": [ \{ "Condition": "IS", "Key": "Status", "Value": "ACTIVE"
    #   \} ]`
    #
    # @return [Types::ListPredictorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPredictorsResponse#predictors #predictors} => Array&lt;Types::PredictorSummary&gt;
    #   * {Types::ListPredictorsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_predictors({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "String", # required
    #         value: "Arn", # required
    #         condition: "IS", # required, accepts IS, IS_NOT
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.predictors #=> Array
    #   resp.predictors[0].predictor_arn #=> String
    #   resp.predictors[0].predictor_name #=> String
    #   resp.predictors[0].dataset_group_arn #=> String
    #   resp.predictors[0].status #=> String
    #   resp.predictors[0].message #=> String
    #   resp.predictors[0].creation_time #=> Time
    #   resp.predictors[0].last_modification_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ListPredictors AWS API Documentation
    #
    # @overload list_predictors(params = {})
    # @param [Hash] params ({})
    def list_predictors(params = {}, options = {})
      req = build_request(:list_predictors, params)
      req.send_request(options)
    end

    # Lists the tags for an Amazon Forecast resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource for which
    #   to list the tags. Currently, the supported resources are Forecast
    #   dataset groups, datasets, dataset import jobs, predictors, forecasts,
    #   and forecast export jobs.
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
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Associates the specified tags to a resource with the specified
    # `resourceArn`. If existing tags on a resource are not specified in the
    # request parameters, they are not changed. When a resource is deleted,
    # the tags associated with that resource are also deleted.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource for which
    #   to list the tags. Currently, the supported resources are Forecast
    #   dataset groups, datasets, dataset import jobs, predictors, forecasts,
    #   and forecast export jobs.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to add to the resource. A tag is an array of key-value pairs.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination of
    #     such as a prefix for keys as it is reserved for AWS use. You cannot
    #     edit or delete tag keys with this prefix. Values can have this
    #     prefix. If a tag value has `aws` as its prefix but the key does not,
    #     then Forecast considers it to be a user tag and will count against
    #     the limit of 50 tags. Tags with only the key prefix of `aws` do not
    #     count against your tags per resource limit.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Deletes the specified tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource for which
    #   to list the tags. Currently, the supported resources are Forecast
    #   dataset groups, datasets, dataset import jobs, predictors, forecasts,
    #   and forecast exports.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to be removed.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Replaces the datasets in a dataset group with the specified datasets.
    #
    # <note markdown="1"> The `Status` of the dataset group must be `ACTIVE` before you can use
    # the dataset group to create a predictor. Use the DescribeDatasetGroup
    # operation to get the status.
    #
    #  </note>
    #
    # @option params [required, String] :dataset_group_arn
    #   The ARN of the dataset group.
    #
    # @option params [required, Array<String>] :dataset_arns
    #   An array of the Amazon Resource Names (ARNs) of the datasets to add to
    #   the dataset group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dataset_group({
    #     dataset_group_arn: "Arn", # required
    #     dataset_arns: ["Arn"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/UpdateDatasetGroup AWS API Documentation
    #
    # @overload update_dataset_group(params = {})
    # @param [Hash] params ({})
    def update_dataset_group(params = {}, options = {})
      req = build_request(:update_dataset_group, params)
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
      context[:gem_name] = 'aws-sdk-forecastservice'
      context[:gem_version] = '1.11.0'
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
