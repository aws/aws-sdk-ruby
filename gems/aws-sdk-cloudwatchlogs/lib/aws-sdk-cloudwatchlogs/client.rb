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

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudwatchlogs)

module Aws::CloudWatchLogs
  # An API client for CloudWatchLogs.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CloudWatchLogs::Client.new(
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

    @identifier = :cloudwatchlogs

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
    add_plugin(Aws::CloudWatchLogs::Plugins::Endpoints)

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
    #   @option options [Aws::CloudWatchLogs::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::CloudWatchLogs::EndpointParameters`
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

    # Associates the specified KMS key with either one log group in the
    # account, or with all stored CloudWatch Logs query insights results in
    # the account.
    #
    # When you use `AssociateKmsKey`, you specify either the `logGroupName`
    # parameter or the `resourceIdentifier` parameter. You can't specify
    # both of those parameters in the same operation.
    #
    # * Specify the `logGroupName` parameter to cause all log events stored
    #   in the log group to be encrypted with that key. Only the log events
    #   ingested after the key is associated are encrypted with that key.
    #
    #   Associating a KMS key with a log group overrides any existing
    #   associations between the log group and a KMS key. After a KMS key is
    #   associated with a log group, all newly ingested data for the log
    #   group is encrypted using the KMS key. This association is stored as
    #   long as the data encrypted with the KMS key is still within
    #   CloudWatch Logs. This enables CloudWatch Logs to decrypt this data
    #   whenever it is requested.
    #
    #   Associating a key with a log group does not cause the results of
    #   queries of that log group to be encrypted with that key. To have
    #   query results encrypted with a KMS key, you must use an
    #   `AssociateKmsKey` operation with the `resourceIdentifier` parameter
    #   that specifies a `query-result` resource.
    #
    # * Specify the `resourceIdentifier` parameter with a `query-result`
    #   resource, to use that key to encrypt the stored results of all
    #   future [StartQuery][1] operations in the account. The response from
    #   a [GetQueryResults][2] operation will still return the query results
    #   in plain text.
    #
    #   Even if you have not associated a key with your query results, the
    #   query results are encrypted when stored, using the default
    #   CloudWatch Logs method.
    #
    #   If you run a query from a monitoring account that queries logs in a
    #   source account, the query results key from the monitoring account,
    #   if any, is used.
    #
    # If you delete the key that is used to encrypt log events or log group
    # query results, then all the associated stored log events or query
    # results that were encrypted with that key will be unencryptable and
    # unusable.
    #
    # <note markdown="1"> CloudWatch Logs supports only symmetric KMS keys. Do not use an
    # associate an asymmetric KMS key with your log group or query results.
    # For more information, see [Using Symmetric and Asymmetric Keys][3].
    #
    #  </note>
    #
    # It can take up to 5 minutes for this operation to take effect.
    #
    # If you attempt to associate a KMS key with a log group but the KMS key
    # does not exist or the KMS key is disabled, you receive an
    # `InvalidParameterException` error.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetQueryResults.html
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html
    #
    # @option params [String] :log_group_name
    #   The name of the log group.
    #
    #   In your `AssociateKmsKey` operation, you must specify either the
    #   `resourceIdentifier` parameter or the `logGroup` parameter, but you
    #   can't specify both.
    #
    # @option params [required, String] :kms_key_id
    #   The Amazon Resource Name (ARN) of the KMS key to use when encrypting
    #   log data. This must be a symmetric KMS key. For more information, see
    #   [Amazon Resource Names][1] and [Using Symmetric and Asymmetric
    #   Keys][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html
    #
    # @option params [String] :resource_identifier
    #   Specifies the target for this operation. You must specify one of the
    #   following:
    #
    #   * Specify the following ARN to have future [GetQueryResults][1]
    #     operations in this account encrypt the results with the specified
    #     KMS key. Replace *REGION* and *ACCOUNT\_ID* with your Region and
    #     account ID.
    #
    #     `arn:aws:logs:REGION:ACCOUNT_ID:query-result:*`
    #
    #   * Specify the ARN of a log group to have CloudWatch Logs use the KMS
    #     key to encrypt log events that are ingested and stored by that log
    #     group. The log group ARN must be in the following format. Replace
    #     *REGION* and *ACCOUNT\_ID* with your Region and account ID.
    #
    #     `arn:aws:logs:REGION:ACCOUNT_ID:log-group:LOG_GROUP_NAME `
    #
    #   In your `AssociateKmsKey` operation, you must specify either the
    #   `resourceIdentifier` parameter or the `logGroup` parameter, but you
    #   can't specify both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetQueryResults.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_kms_key({
    #     log_group_name: "LogGroupName",
    #     kms_key_id: "KmsKeyId", # required
    #     resource_identifier: "ResourceIdentifier",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/AssociateKmsKey AWS API Documentation
    #
    # @overload associate_kms_key(params = {})
    # @param [Hash] params ({})
    def associate_kms_key(params = {}, options = {})
      req = build_request(:associate_kms_key, params)
      req.send_request(options)
    end

    # Cancels the specified export task.
    #
    # The task must be in the `PENDING` or `RUNNING` state.
    #
    # @option params [required, String] :task_id
    #   The ID of the export task.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_export_task({
    #     task_id: "ExportTaskId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CancelExportTask AWS API Documentation
    #
    # @overload cancel_export_task(params = {})
    # @param [Hash] params ({})
    def cancel_export_task(params = {}, options = {})
      req = build_request(:cancel_export_task, params)
      req.send_request(options)
    end

    # Creates an export task so that you can efficiently export data from a
    # log group to an Amazon S3 bucket. When you perform a
    # `CreateExportTask` operation, you must use credentials that have
    # permission to write to the S3 bucket that you specify as the
    # destination.
    #
    # Exporting log data to S3 buckets that are encrypted by KMS is
    # supported. Exporting log data to Amazon S3 buckets that have S3 Object
    # Lock enabled with a retention period is also supported.
    #
    # Exporting to S3 buckets that are encrypted with AES-256 is supported.
    #
    # This is an asynchronous call. If all the required information is
    # provided, this operation initiates an export task and responds with
    # the ID of the task. After the task has started, you can use
    # [DescribeExportTasks][1] to get the status of the export task. Each
    # account can only have one active (`RUNNING` or `PENDING`) export task
    # at a time. To cancel an export task, use [CancelExportTask][2].
    #
    # You can export logs from multiple log groups or multiple time ranges
    # to the same S3 bucket. To separate log data for each export task,
    # specify a prefix to be used as the Amazon S3 key prefix for all
    # exported objects.
    #
    # <note markdown="1"> Time-based sorting on chunks of log data inside an exported file is
    # not guaranteed. You can sort the exported log field data by using
    # Linux utilities.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeExportTasks.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CancelExportTask.html
    #
    # @option params [String] :task_name
    #   The name of the export task.
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @option params [String] :log_stream_name_prefix
    #   Export only log streams that match the provided prefix. If you don't
    #   specify a value, no prefix filter is applied.
    #
    # @option params [required, Integer] :from
    #   The start time of the range for the request, expressed as the number
    #   of milliseconds after `Jan 1, 1970 00:00:00 UTC`. Events with a
    #   timestamp earlier than this time are not exported.
    #
    # @option params [required, Integer] :to
    #   The end time of the range for the request, expressed as the number of
    #   milliseconds after `Jan 1, 1970 00:00:00 UTC`. Events with a timestamp
    #   later than this time are not exported.
    #
    #   You must specify a time that is not earlier than when this log group
    #   was created.
    #
    # @option params [required, String] :destination
    #   The name of S3 bucket for the exported log data. The bucket must be in
    #   the same Amazon Web Services Region.
    #
    # @option params [String] :destination_prefix
    #   The prefix used as the start of the key for every object exported. If
    #   you don't specify a value, the default is `exportedlogs`.
    #
    # @return [Types::CreateExportTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateExportTaskResponse#task_id #task_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_export_task({
    #     task_name: "ExportTaskName",
    #     log_group_name: "LogGroupName", # required
    #     log_stream_name_prefix: "LogStreamName",
    #     from: 1, # required
    #     to: 1, # required
    #     destination: "ExportDestinationBucket", # required
    #     destination_prefix: "ExportDestinationPrefix",
    #   })
    #
    # @example Response structure
    #
    #   resp.task_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CreateExportTask AWS API Documentation
    #
    # @overload create_export_task(params = {})
    # @param [Hash] params ({})
    def create_export_task(params = {}, options = {})
      req = build_request(:create_export_task, params)
      req.send_request(options)
    end

    # Creates a log group with the specified name. You can create up to
    # 20,000 log groups per account.
    #
    # You must use the following guidelines when naming a log group:
    #
    # * Log group names must be unique within a Region for an Amazon Web
    #   Services account.
    #
    # * Log group names can be between 1 and 512 characters long.
    #
    # * Log group names consist of the following characters: a-z, A-Z, 0-9,
    #   '\_' (underscore), '-' (hyphen), '/' (forward slash), '.'
    #   (period), and '#' (number sign)
    #
    # When you create a log group, by default the log events in the log
    # group do not expire. To set a retention policy so that events expire
    # and are deleted after a specified time, use [PutRetentionPolicy][1].
    #
    # If you associate an KMS key with the log group, ingested data is
    # encrypted using the KMS key. This association is stored as long as the
    # data encrypted with the KMS key is still within CloudWatch Logs. This
    # enables CloudWatch Logs to decrypt this data whenever it is requested.
    #
    # If you attempt to associate a KMS key with the log group but the KMS
    # key does not exist or the KMS key is disabled, you receive an
    # `InvalidParameterException` error.
    #
    # CloudWatch Logs supports only symmetric KMS keys. Do not associate an
    # asymmetric KMS key with your log group. For more information, see
    # [Using Symmetric and Asymmetric Keys][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutRetentionPolicy.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @option params [String] :kms_key_id
    #   The Amazon Resource Name (ARN) of the KMS key to use when encrypting
    #   log data. For more information, see [Amazon Resource Names][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms
    #
    # @option params [Hash<String,String>] :tags
    #   The key-value pairs to use for the tags.
    #
    #   You can grant users access to certain log groups while preventing them
    #   from accessing other log groups. To do so, tag your groups and use IAM
    #   policies that refer to those tags. To assign tags when you create a
    #   log group, you must have either the `logs:TagResource` or
    #   `logs:TagLogGroup` permission. For more information about tagging, see
    #   [Tagging Amazon Web Services resources][1]. For more information about
    #   using tags to control access, see [Controlling access to Amazon Web
    #   Services resources using tags][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_log_group({
    #     log_group_name: "LogGroupName", # required
    #     kms_key_id: "KmsKeyId",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CreateLogGroup AWS API Documentation
    #
    # @overload create_log_group(params = {})
    # @param [Hash] params ({})
    def create_log_group(params = {}, options = {})
      req = build_request(:create_log_group, params)
      req.send_request(options)
    end

    # Creates a log stream for the specified log group. A log stream is a
    # sequence of log events that originate from a single source, such as an
    # application instance or a resource that is being monitored.
    #
    # There is no limit on the number of log streams that you can create for
    # a log group. There is a limit of 50 TPS on `CreateLogStream`
    # operations, after which transactions are throttled.
    #
    # You must use the following guidelines when naming a log stream:
    #
    # * Log stream names must be unique within the log group.
    #
    # * Log stream names can be between 1 and 512 characters long.
    #
    # * Don't use ':' (colon) or '*' (asterisk) characters.
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @option params [required, String] :log_stream_name
    #   The name of the log stream.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_log_stream({
    #     log_group_name: "LogGroupName", # required
    #     log_stream_name: "LogStreamName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CreateLogStream AWS API Documentation
    #
    # @overload create_log_stream(params = {})
    # @param [Hash] params ({})
    def create_log_stream(params = {}, options = {})
      req = build_request(:create_log_stream, params)
      req.send_request(options)
    end

    # Deletes a CloudWatch Logs account policy.
    #
    # To use this operation, you must be signed on with the
    # `logs:DeleteDataProtectionPolicy` and `logs:DeleteAccountPolicy`
    # permissions.
    #
    # @option params [required, String] :policy_name
    #   The name of the policy to delete.
    #
    # @option params [required, String] :policy_type
    #   The type of policy to delete. Currently, the only valid value is
    #   `DATA_PROTECTION_POLICY`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_account_policy({
    #     policy_name: "PolicyName", # required
    #     policy_type: "DATA_PROTECTION_POLICY", # required, accepts DATA_PROTECTION_POLICY
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteAccountPolicy AWS API Documentation
    #
    # @overload delete_account_policy(params = {})
    # @param [Hash] params ({})
    def delete_account_policy(params = {}, options = {})
      req = build_request(:delete_account_policy, params)
      req.send_request(options)
    end

    # Deletes the data protection policy from the specified log group.
    #
    # For more information about data protection policies, see
    # [PutDataProtectionPolicy][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDataProtectionPolicy.html
    #
    # @option params [required, String] :log_group_identifier
    #   The name or ARN of the log group that you want to delete the data
    #   protection policy for.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_protection_policy({
    #     log_group_identifier: "LogGroupIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteDataProtectionPolicy AWS API Documentation
    #
    # @overload delete_data_protection_policy(params = {})
    # @param [Hash] params ({})
    def delete_data_protection_policy(params = {}, options = {})
      req = build_request(:delete_data_protection_policy, params)
      req.send_request(options)
    end

    # Deletes the specified destination, and eventually disables all the
    # subscription filters that publish to it. This operation does not
    # delete the physical resource encapsulated by the destination.
    #
    # @option params [required, String] :destination_name
    #   The name of the destination.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_destination({
    #     destination_name: "DestinationName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteDestination AWS API Documentation
    #
    # @overload delete_destination(params = {})
    # @param [Hash] params ({})
    def delete_destination(params = {}, options = {})
      req = build_request(:delete_destination, params)
      req.send_request(options)
    end

    # Deletes the specified log group and permanently deletes all the
    # archived log events associated with the log group.
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_log_group({
    #     log_group_name: "LogGroupName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteLogGroup AWS API Documentation
    #
    # @overload delete_log_group(params = {})
    # @param [Hash] params ({})
    def delete_log_group(params = {}, options = {})
      req = build_request(:delete_log_group, params)
      req.send_request(options)
    end

    # Deletes the specified log stream and permanently deletes all the
    # archived log events associated with the log stream.
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @option params [required, String] :log_stream_name
    #   The name of the log stream.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_log_stream({
    #     log_group_name: "LogGroupName", # required
    #     log_stream_name: "LogStreamName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteLogStream AWS API Documentation
    #
    # @overload delete_log_stream(params = {})
    # @param [Hash] params ({})
    def delete_log_stream(params = {}, options = {})
      req = build_request(:delete_log_stream, params)
      req.send_request(options)
    end

    # Deletes the specified metric filter.
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @option params [required, String] :filter_name
    #   The name of the metric filter.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_metric_filter({
    #     log_group_name: "LogGroupName", # required
    #     filter_name: "FilterName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteMetricFilter AWS API Documentation
    #
    # @overload delete_metric_filter(params = {})
    # @param [Hash] params ({})
    def delete_metric_filter(params = {}, options = {})
      req = build_request(:delete_metric_filter, params)
      req.send_request(options)
    end

    # Deletes a saved CloudWatch Logs Insights query definition. A query
    # definition contains details about a saved CloudWatch Logs Insights
    # query.
    #
    # Each `DeleteQueryDefinition` operation can delete one query
    # definition.
    #
    # You must have the `logs:DeleteQueryDefinition` permission to be able
    # to perform this operation.
    #
    # @option params [required, String] :query_definition_id
    #   The ID of the query definition that you want to delete. You can use
    #   [DescribeQueryDefinitions][1] to retrieve the IDs of your saved query
    #   definitions.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html
    #
    # @return [Types::DeleteQueryDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteQueryDefinitionResponse#success #success} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_query_definition({
    #     query_definition_id: "QueryId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.success #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteQueryDefinition AWS API Documentation
    #
    # @overload delete_query_definition(params = {})
    # @param [Hash] params ({})
    def delete_query_definition(params = {}, options = {})
      req = build_request(:delete_query_definition, params)
      req.send_request(options)
    end

    # Deletes a resource policy from this account. This revokes the access
    # of the identities in that policy to put log events to this account.
    #
    # @option params [String] :policy_name
    #   The name of the policy to be revoked. This parameter is required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy({
    #     policy_name: "PolicyName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteResourcePolicy AWS API Documentation
    #
    # @overload delete_resource_policy(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy(params = {}, options = {})
      req = build_request(:delete_resource_policy, params)
      req.send_request(options)
    end

    # Deletes the specified retention policy.
    #
    # Log events do not expire if they belong to log groups without a
    # retention policy.
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_retention_policy({
    #     log_group_name: "LogGroupName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteRetentionPolicy AWS API Documentation
    #
    # @overload delete_retention_policy(params = {})
    # @param [Hash] params ({})
    def delete_retention_policy(params = {}, options = {})
      req = build_request(:delete_retention_policy, params)
      req.send_request(options)
    end

    # Deletes the specified subscription filter.
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @option params [required, String] :filter_name
    #   The name of the subscription filter.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_subscription_filter({
    #     log_group_name: "LogGroupName", # required
    #     filter_name: "FilterName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteSubscriptionFilter AWS API Documentation
    #
    # @overload delete_subscription_filter(params = {})
    # @param [Hash] params ({})
    def delete_subscription_filter(params = {}, options = {})
      req = build_request(:delete_subscription_filter, params)
      req.send_request(options)
    end

    # Returns a list of all CloudWatch Logs account policies in the account.
    #
    # @option params [required, String] :policy_type
    #   Use this parameter to limit the returned policies to only the policies
    #   that match the policy type that you specify. Currently, the only valid
    #   value is `DATA_PROTECTION_POLICY`.
    #
    # @option params [String] :policy_name
    #   Use this parameter to limit the returned policies to only the policy
    #   with the name that you specify.
    #
    # @option params [Array<String>] :account_identifiers
    #   If you are using an account that is set up as a monitoring account for
    #   CloudWatch unified cross-account observability, you can use this to
    #   specify the account ID of a source account. If you do, the operation
    #   returns the account policy for the specified account. Currently, you
    #   can specify only one account ID in this parameter.
    #
    #   If you omit this parameter, only the policy in the current account is
    #   returned.
    #
    # @return [Types::DescribeAccountPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountPoliciesResponse#account_policies #account_policies} => Array&lt;Types::AccountPolicy&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_policies({
    #     policy_type: "DATA_PROTECTION_POLICY", # required, accepts DATA_PROTECTION_POLICY
    #     policy_name: "PolicyName",
    #     account_identifiers: ["AccountId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.account_policies #=> Array
    #   resp.account_policies[0].policy_name #=> String
    #   resp.account_policies[0].policy_document #=> String
    #   resp.account_policies[0].last_updated_time #=> Integer
    #   resp.account_policies[0].policy_type #=> String, one of "DATA_PROTECTION_POLICY"
    #   resp.account_policies[0].scope #=> String, one of "ALL"
    #   resp.account_policies[0].account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeAccountPolicies AWS API Documentation
    #
    # @overload describe_account_policies(params = {})
    # @param [Hash] params ({})
    def describe_account_policies(params = {}, options = {})
      req = build_request(:describe_account_policies, params)
      req.send_request(options)
    end

    # Lists all your destinations. The results are ASCII-sorted by
    # destination name.
    #
    # @option params [String] :destination_name_prefix
    #   The prefix to match. If you don't specify a value, no prefix filter
    #   is applied.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :limit
    #   The maximum number of items returned. If you don't specify a value,
    #   the default maximum value of 50 items is used.
    #
    # @return [Types::DescribeDestinationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDestinationsResponse#destinations #destinations} => Array&lt;Types::Destination&gt;
    #   * {Types::DescribeDestinationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_destinations({
    #     destination_name_prefix: "DestinationName",
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.destinations #=> Array
    #   resp.destinations[0].destination_name #=> String
    #   resp.destinations[0].target_arn #=> String
    #   resp.destinations[0].role_arn #=> String
    #   resp.destinations[0].access_policy #=> String
    #   resp.destinations[0].arn #=> String
    #   resp.destinations[0].creation_time #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeDestinations AWS API Documentation
    #
    # @overload describe_destinations(params = {})
    # @param [Hash] params ({})
    def describe_destinations(params = {}, options = {})
      req = build_request(:describe_destinations, params)
      req.send_request(options)
    end

    # Lists the specified export tasks. You can list all your export tasks
    # or filter the results based on task ID or task status.
    #
    # @option params [String] :task_id
    #   The ID of the export task. Specifying a task ID filters the results to
    #   one or zero export tasks.
    #
    # @option params [String] :status_code
    #   The status code of the export task. Specifying a status code filters
    #   the results to zero or more export tasks.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :limit
    #   The maximum number of items returned. If you don't specify a value,
    #   the default is up to 50 items.
    #
    # @return [Types::DescribeExportTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeExportTasksResponse#export_tasks #export_tasks} => Array&lt;Types::ExportTask&gt;
    #   * {Types::DescribeExportTasksResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_export_tasks({
    #     task_id: "ExportTaskId",
    #     status_code: "CANCELLED", # accepts CANCELLED, COMPLETED, FAILED, PENDING, PENDING_CANCEL, RUNNING
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.export_tasks #=> Array
    #   resp.export_tasks[0].task_id #=> String
    #   resp.export_tasks[0].task_name #=> String
    #   resp.export_tasks[0].log_group_name #=> String
    #   resp.export_tasks[0].from #=> Integer
    #   resp.export_tasks[0].to #=> Integer
    #   resp.export_tasks[0].destination #=> String
    #   resp.export_tasks[0].destination_prefix #=> String
    #   resp.export_tasks[0].status.code #=> String, one of "CANCELLED", "COMPLETED", "FAILED", "PENDING", "PENDING_CANCEL", "RUNNING"
    #   resp.export_tasks[0].status.message #=> String
    #   resp.export_tasks[0].execution_info.creation_time #=> Integer
    #   resp.export_tasks[0].execution_info.completion_time #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeExportTasks AWS API Documentation
    #
    # @overload describe_export_tasks(params = {})
    # @param [Hash] params ({})
    def describe_export_tasks(params = {}, options = {})
      req = build_request(:describe_export_tasks, params)
      req.send_request(options)
    end

    # Lists the specified log groups. You can list all your log groups or
    # filter the results by prefix. The results are ASCII-sorted by log
    # group name.
    #
    # CloudWatch Logs doesn’t support IAM policies that control access to
    # the `DescribeLogGroups` action by using the `aws:ResourceTag/key-name
    # ` condition key. Other CloudWatch Logs actions do support the use of
    # the `aws:ResourceTag/key-name ` condition key to control access. For
    # more information about using tags to control access, see [Controlling
    # access to Amazon Web Services resources using tags][1].
    #
    # If you are using CloudWatch cross-account observability, you can use
    # this operation in a monitoring account and view data from the linked
    # source accounts. For more information, see [CloudWatch cross-account
    # observability][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html
    #
    # @option params [Array<String>] :account_identifiers
    #   When `includeLinkedAccounts` is set to `True`, use this parameter to
    #   specify the list of accounts to search. You can specify as many as 20
    #   account IDs in the array.
    #
    # @option params [String] :log_group_name_prefix
    #   The prefix to match.
    #
    #   <note markdown="1"> `logGroupNamePrefix` and `logGroupNamePattern` are mutually exclusive.
    #   Only one of these parameters can be passed.
    #
    #    </note>
    #
    # @option params [String] :log_group_name_pattern
    #   If you specify a string for this parameter, the operation returns only
    #   log groups that have names that match the string based on a
    #   case-sensitive substring search. For example, if you specify `Foo`,
    #   log groups named `FooBar`, `aws/Foo`, and `GroupFoo` would match, but
    #   `foo`, `F/o/o` and `Froo` would not match.
    #
    #   If you specify `logGroupNamePattern` in your request, then only `arn`,
    #   `creationTime`, and `logGroupName` are included in the response.
    #
    #   <note markdown="1"> `logGroupNamePattern` and `logGroupNamePrefix` are mutually exclusive.
    #   Only one of these parameters can be passed.
    #
    #    </note>
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :limit
    #   The maximum number of items returned. If you don't specify a value,
    #   the default is up to 50 items.
    #
    # @option params [Boolean] :include_linked_accounts
    #   If you are using a monitoring account, set this to `True` to have the
    #   operation return log groups in the accounts listed in
    #   `accountIdentifiers`.
    #
    #   If this parameter is set to `true` and `accountIdentifiers` contains a
    #   null value, the operation returns all log groups in the monitoring
    #   account and all log groups in all source accounts that are linked to
    #   the monitoring account.
    #
    # @return [Types::DescribeLogGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLogGroupsResponse#log_groups #log_groups} => Array&lt;Types::LogGroup&gt;
    #   * {Types::DescribeLogGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_log_groups({
    #     account_identifiers: ["AccountId"],
    #     log_group_name_prefix: "LogGroupName",
    #     log_group_name_pattern: "LogGroupNamePattern",
    #     next_token: "NextToken",
    #     limit: 1,
    #     include_linked_accounts: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.log_groups #=> Array
    #   resp.log_groups[0].log_group_name #=> String
    #   resp.log_groups[0].creation_time #=> Integer
    #   resp.log_groups[0].retention_in_days #=> Integer
    #   resp.log_groups[0].metric_filter_count #=> Integer
    #   resp.log_groups[0].arn #=> String
    #   resp.log_groups[0].stored_bytes #=> Integer
    #   resp.log_groups[0].kms_key_id #=> String
    #   resp.log_groups[0].data_protection_status #=> String, one of "ACTIVATED", "DELETED", "ARCHIVED", "DISABLED"
    #   resp.log_groups[0].inherited_properties #=> Array
    #   resp.log_groups[0].inherited_properties[0] #=> String, one of "ACCOUNT_DATA_PROTECTION"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeLogGroups AWS API Documentation
    #
    # @overload describe_log_groups(params = {})
    # @param [Hash] params ({})
    def describe_log_groups(params = {}, options = {})
      req = build_request(:describe_log_groups, params)
      req.send_request(options)
    end

    # Lists the log streams for the specified log group. You can list all
    # the log streams or filter the results by prefix. You can also control
    # how the results are ordered.
    #
    # You can specify the log group to search by using either
    # `logGroupIdentifier` or `logGroupName`. You must include one of these
    # two parameters, but you can't include both.
    #
    # This operation has a limit of five transactions per second, after
    # which transactions are throttled.
    #
    # If you are using CloudWatch cross-account observability, you can use
    # this operation in a monitoring account and view data from the linked
    # source accounts. For more information, see [CloudWatch cross-account
    # observability][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html
    #
    # @option params [String] :log_group_name
    #   The name of the log group.
    #
    #   <note markdown="1"> You must include either `logGroupIdentifier` or `logGroupName`, but
    #   not both.
    #
    #    </note>
    #
    # @option params [String] :log_group_identifier
    #   Specify either the name or ARN of the log group to view. If the log
    #   group is in a source account and you are using a monitoring account,
    #   you must use the log group ARN.
    #
    #   <note markdown="1"> You must include either `logGroupIdentifier` or `logGroupName`, but
    #   not both.
    #
    #    </note>
    #
    # @option params [String] :log_stream_name_prefix
    #   The prefix to match.
    #
    #   If `orderBy` is `LastEventTime`, you cannot specify this parameter.
    #
    # @option params [String] :order_by
    #   If the value is `LogStreamName`, the results are ordered by log stream
    #   name. If the value is `LastEventTime`, the results are ordered by the
    #   event time. The default value is `LogStreamName`.
    #
    #   If you order the results by event time, you cannot specify the
    #   `logStreamNamePrefix` parameter.
    #
    #   `lastEventTimestamp` represents the time of the most recent log event
    #   in the log stream in CloudWatch Logs. This number is expressed as the
    #   number of milliseconds after `Jan 1, 1970 00:00:00 UTC`.
    #   `lastEventTimestamp` updates on an eventual consistency basis. It
    #   typically updates in less than an hour from ingestion, but in rare
    #   situations might take longer.
    #
    # @option params [Boolean] :descending
    #   If the value is true, results are returned in descending order. If the
    #   value is to false, results are returned in ascending order. The
    #   default value is false.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :limit
    #   The maximum number of items returned. If you don't specify a value,
    #   the default is up to 50 items.
    #
    # @return [Types::DescribeLogStreamsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLogStreamsResponse#log_streams #log_streams} => Array&lt;Types::LogStream&gt;
    #   * {Types::DescribeLogStreamsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_log_streams({
    #     log_group_name: "LogGroupName",
    #     log_group_identifier: "LogGroupIdentifier",
    #     log_stream_name_prefix: "LogStreamName",
    #     order_by: "LogStreamName", # accepts LogStreamName, LastEventTime
    #     descending: false,
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.log_streams #=> Array
    #   resp.log_streams[0].log_stream_name #=> String
    #   resp.log_streams[0].creation_time #=> Integer
    #   resp.log_streams[0].first_event_timestamp #=> Integer
    #   resp.log_streams[0].last_event_timestamp #=> Integer
    #   resp.log_streams[0].last_ingestion_time #=> Integer
    #   resp.log_streams[0].upload_sequence_token #=> String
    #   resp.log_streams[0].arn #=> String
    #   resp.log_streams[0].stored_bytes #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeLogStreams AWS API Documentation
    #
    # @overload describe_log_streams(params = {})
    # @param [Hash] params ({})
    def describe_log_streams(params = {}, options = {})
      req = build_request(:describe_log_streams, params)
      req.send_request(options)
    end

    # Lists the specified metric filters. You can list all of the metric
    # filters or filter the results by log name, prefix, metric name, or
    # metric namespace. The results are ASCII-sorted by filter name.
    #
    # @option params [String] :log_group_name
    #   The name of the log group.
    #
    # @option params [String] :filter_name_prefix
    #   The prefix to match. CloudWatch Logs uses the value that you set here
    #   only if you also include the `logGroupName` parameter in your request.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :limit
    #   The maximum number of items returned. If you don't specify a value,
    #   the default is up to 50 items.
    #
    # @option params [String] :metric_name
    #   Filters results to include only those with the specified metric name.
    #   If you include this parameter in your request, you must also include
    #   the `metricNamespace` parameter.
    #
    # @option params [String] :metric_namespace
    #   Filters results to include only those in the specified namespace. If
    #   you include this parameter in your request, you must also include the
    #   `metricName` parameter.
    #
    # @return [Types::DescribeMetricFiltersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMetricFiltersResponse#metric_filters #metric_filters} => Array&lt;Types::MetricFilter&gt;
    #   * {Types::DescribeMetricFiltersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_metric_filters({
    #     log_group_name: "LogGroupName",
    #     filter_name_prefix: "FilterName",
    #     next_token: "NextToken",
    #     limit: 1,
    #     metric_name: "MetricName",
    #     metric_namespace: "MetricNamespace",
    #   })
    #
    # @example Response structure
    #
    #   resp.metric_filters #=> Array
    #   resp.metric_filters[0].filter_name #=> String
    #   resp.metric_filters[0].filter_pattern #=> String
    #   resp.metric_filters[0].metric_transformations #=> Array
    #   resp.metric_filters[0].metric_transformations[0].metric_name #=> String
    #   resp.metric_filters[0].metric_transformations[0].metric_namespace #=> String
    #   resp.metric_filters[0].metric_transformations[0].metric_value #=> String
    #   resp.metric_filters[0].metric_transformations[0].default_value #=> Float
    #   resp.metric_filters[0].metric_transformations[0].dimensions #=> Hash
    #   resp.metric_filters[0].metric_transformations[0].dimensions["DimensionsKey"] #=> String
    #   resp.metric_filters[0].metric_transformations[0].unit #=> String, one of "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #   resp.metric_filters[0].creation_time #=> Integer
    #   resp.metric_filters[0].log_group_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeMetricFilters AWS API Documentation
    #
    # @overload describe_metric_filters(params = {})
    # @param [Hash] params ({})
    def describe_metric_filters(params = {}, options = {})
      req = build_request(:describe_metric_filters, params)
      req.send_request(options)
    end

    # Returns a list of CloudWatch Logs Insights queries that are scheduled,
    # running, or have been run recently in this account. You can request
    # all queries or limit it to queries of a specific log group or queries
    # with a certain status.
    #
    # @option params [String] :log_group_name
    #   Limits the returned queries to only those for the specified log group.
    #
    # @option params [String] :status
    #   Limits the returned queries to only those that have the specified
    #   status. Valid values are `Cancelled`, `Complete`, `Failed`, `Running`,
    #   and `Scheduled`.
    #
    # @option params [Integer] :max_results
    #   Limits the number of returned queries to the specified number.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. The token expires after
    #   24 hours.
    #
    # @return [Types::DescribeQueriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeQueriesResponse#queries #queries} => Array&lt;Types::QueryInfo&gt;
    #   * {Types::DescribeQueriesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_queries({
    #     log_group_name: "LogGroupName",
    #     status: "Scheduled", # accepts Scheduled, Running, Complete, Failed, Cancelled, Timeout, Unknown
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.queries #=> Array
    #   resp.queries[0].query_id #=> String
    #   resp.queries[0].query_string #=> String
    #   resp.queries[0].status #=> String, one of "Scheduled", "Running", "Complete", "Failed", "Cancelled", "Timeout", "Unknown"
    #   resp.queries[0].create_time #=> Integer
    #   resp.queries[0].log_group_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeQueries AWS API Documentation
    #
    # @overload describe_queries(params = {})
    # @param [Hash] params ({})
    def describe_queries(params = {}, options = {})
      req = build_request(:describe_queries, params)
      req.send_request(options)
    end

    # This operation returns a paginated list of your saved CloudWatch Logs
    # Insights query definitions.
    #
    # You can use the `queryDefinitionNamePrefix` parameter to limit the
    # results to only the query definitions that have names that start with
    # a certain string.
    #
    # @option params [String] :query_definition_name_prefix
    #   Use this parameter to filter your results to only the query
    #   definitions that have names that start with the prefix you specify.
    #
    # @option params [Integer] :max_results
    #   Limits the number of returned query definitions to the specified
    #   number.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. The token expires after
    #   24 hours.
    #
    # @return [Types::DescribeQueryDefinitionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeQueryDefinitionsResponse#query_definitions #query_definitions} => Array&lt;Types::QueryDefinition&gt;
    #   * {Types::DescribeQueryDefinitionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_query_definitions({
    #     query_definition_name_prefix: "QueryDefinitionName",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.query_definitions #=> Array
    #   resp.query_definitions[0].query_definition_id #=> String
    #   resp.query_definitions[0].name #=> String
    #   resp.query_definitions[0].query_string #=> String
    #   resp.query_definitions[0].last_modified #=> Integer
    #   resp.query_definitions[0].log_group_names #=> Array
    #   resp.query_definitions[0].log_group_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeQueryDefinitions AWS API Documentation
    #
    # @overload describe_query_definitions(params = {})
    # @param [Hash] params ({})
    def describe_query_definitions(params = {}, options = {})
      req = build_request(:describe_query_definitions, params)
      req.send_request(options)
    end

    # Lists the resource policies in this account.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. The token expires after
    #   24 hours.
    #
    # @option params [Integer] :limit
    #   The maximum number of resource policies to be displayed with one call
    #   of this API.
    #
    # @return [Types::DescribeResourcePoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeResourcePoliciesResponse#resource_policies #resource_policies} => Array&lt;Types::ResourcePolicy&gt;
    #   * {Types::DescribeResourcePoliciesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_resource_policies({
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_policies #=> Array
    #   resp.resource_policies[0].policy_name #=> String
    #   resp.resource_policies[0].policy_document #=> String
    #   resp.resource_policies[0].last_updated_time #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeResourcePolicies AWS API Documentation
    #
    # @overload describe_resource_policies(params = {})
    # @param [Hash] params ({})
    def describe_resource_policies(params = {}, options = {})
      req = build_request(:describe_resource_policies, params)
      req.send_request(options)
    end

    # Lists the subscription filters for the specified log group. You can
    # list all the subscription filters or filter the results by prefix. The
    # results are ASCII-sorted by filter name.
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @option params [String] :filter_name_prefix
    #   The prefix to match. If you don't specify a value, no prefix filter
    #   is applied.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :limit
    #   The maximum number of items returned. If you don't specify a value,
    #   the default is up to 50 items.
    #
    # @return [Types::DescribeSubscriptionFiltersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSubscriptionFiltersResponse#subscription_filters #subscription_filters} => Array&lt;Types::SubscriptionFilter&gt;
    #   * {Types::DescribeSubscriptionFiltersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_subscription_filters({
    #     log_group_name: "LogGroupName", # required
    #     filter_name_prefix: "FilterName",
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.subscription_filters #=> Array
    #   resp.subscription_filters[0].filter_name #=> String
    #   resp.subscription_filters[0].log_group_name #=> String
    #   resp.subscription_filters[0].filter_pattern #=> String
    #   resp.subscription_filters[0].destination_arn #=> String
    #   resp.subscription_filters[0].role_arn #=> String
    #   resp.subscription_filters[0].distribution #=> String, one of "Random", "ByLogStream"
    #   resp.subscription_filters[0].creation_time #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeSubscriptionFilters AWS API Documentation
    #
    # @overload describe_subscription_filters(params = {})
    # @param [Hash] params ({})
    def describe_subscription_filters(params = {}, options = {})
      req = build_request(:describe_subscription_filters, params)
      req.send_request(options)
    end

    # Disassociates the specified KMS key from the specified log group or
    # from all CloudWatch Logs Insights query results in the account.
    #
    # When you use `DisassociateKmsKey`, you specify either the
    # `logGroupName` parameter or the `resourceIdentifier` parameter. You
    # can't specify both of those parameters in the same operation.
    #
    # * Specify the `logGroupName` parameter to stop using the KMS key to
    #   encrypt future log events ingested and stored in the log group.
    #   Instead, they will be encrypted with the default CloudWatch Logs
    #   method. The log events that were ingested while the key was
    #   associated with the log group are still encrypted with that key.
    #   Therefore, CloudWatch Logs will need permissions for the key
    #   whenever that data is accessed.
    #
    # * Specify the `resourceIdentifier` parameter with the `query-result`
    #   resource to stop using the KMS key to encrypt the results of all
    #   future [StartQuery][1] operations in the account. They will instead
    #   be encrypted with the default CloudWatch Logs method. The results
    #   from queries that ran while the key was associated with the account
    #   are still encrypted with that key. Therefore, CloudWatch Logs will
    #   need permissions for the key whenever that data is accessed.
    #
    # It can take up to 5 minutes for this operation to take effect.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html
    #
    # @option params [String] :log_group_name
    #   The name of the log group.
    #
    #   In your `DisassociateKmsKey` operation, you must specify either the
    #   `resourceIdentifier` parameter or the `logGroup` parameter, but you
    #   can't specify both.
    #
    # @option params [String] :resource_identifier
    #   Specifies the target for this operation. You must specify one of the
    #   following:
    #
    #   * Specify the ARN of a log group to stop having CloudWatch Logs use
    #     the KMS key to encrypt log events that are ingested and stored by
    #     that log group. After you run this operation, CloudWatch Logs
    #     encrypts ingested log events with the default CloudWatch Logs
    #     method. The log group ARN must be in the following format. Replace
    #     *REGION* and *ACCOUNT\_ID* with your Region and account ID.
    #
    #     `arn:aws:logs:REGION:ACCOUNT_ID:log-group:LOG_GROUP_NAME `
    #
    #   * Specify the following ARN to stop using this key to encrypt the
    #     results of future [StartQuery][1] operations in this account.
    #     Replace *REGION* and *ACCOUNT\_ID* with your Region and account ID.
    #
    #     `arn:aws:logs:REGION:ACCOUNT_ID:query-result:*`
    #
    #   In your `DisssociateKmsKey` operation, you must specify either the
    #   `resourceIdentifier` parameter or the `logGroup` parameter, but you
    #   can't specify both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_kms_key({
    #     log_group_name: "LogGroupName",
    #     resource_identifier: "ResourceIdentifier",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DisassociateKmsKey AWS API Documentation
    #
    # @overload disassociate_kms_key(params = {})
    # @param [Hash] params ({})
    def disassociate_kms_key(params = {}, options = {})
      req = build_request(:disassociate_kms_key, params)
      req.send_request(options)
    end

    # Lists log events from the specified log group. You can list all the
    # log events or filter the results using a filter pattern, a time range,
    # and the name of the log stream.
    #
    # You must have the `logs:FilterLogEvents` permission to perform this
    # operation.
    #
    # You can specify the log group to search by using either
    # `logGroupIdentifier` or `logGroupName`. You must include one of these
    # two parameters, but you can't include both.
    #
    # By default, this operation returns as many log events as can fit in 1
    # MB (up to 10,000 log events) or all the events found within the
    # specified time range. If the results include a token, that means there
    # are more log events available. You can get additional results by
    # specifying the token in a subsequent call. This operation can return
    # empty results while there are more log events available through the
    # token.
    #
    # The returned log events are sorted by event timestamp, the timestamp
    # when the event was ingested by CloudWatch Logs, and the ID of the
    # `PutLogEvents` request.
    #
    # If you are using CloudWatch cross-account observability, you can use
    # this operation in a monitoring account and view data from the linked
    # source accounts. For more information, see [CloudWatch cross-account
    # observability][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html
    #
    # @option params [String] :log_group_name
    #   The name of the log group to search.
    #
    #   <note markdown="1"> You must include either `logGroupIdentifier` or `logGroupName`, but
    #   not both.
    #
    #    </note>
    #
    # @option params [String] :log_group_identifier
    #   Specify either the name or ARN of the log group to view log events
    #   from. If the log group is in a source account and you are using a
    #   monitoring account, you must use the log group ARN.
    #
    #   <note markdown="1"> You must include either `logGroupIdentifier` or `logGroupName`, but
    #   not both.
    #
    #    </note>
    #
    # @option params [Array<String>] :log_stream_names
    #   Filters the results to only logs from the log streams in this list.
    #
    #   If you specify a value for both `logStreamNamePrefix` and
    #   `logStreamNames`, the action returns an `InvalidParameterException`
    #   error.
    #
    # @option params [String] :log_stream_name_prefix
    #   Filters the results to include only events from log streams that have
    #   names starting with this prefix.
    #
    #   If you specify a value for both `logStreamNamePrefix` and
    #   `logStreamNames`, but the value for `logStreamNamePrefix` does not
    #   match any log stream names specified in `logStreamNames`, the action
    #   returns an `InvalidParameterException` error.
    #
    # @option params [Integer] :start_time
    #   The start of the time range, expressed as the number of milliseconds
    #   after `Jan 1, 1970 00:00:00 UTC`. Events with a timestamp before this
    #   time are not returned.
    #
    # @option params [Integer] :end_time
    #   The end of the time range, expressed as the number of milliseconds
    #   after `Jan 1, 1970 00:00:00 UTC`. Events with a timestamp later than
    #   this time are not returned.
    #
    # @option params [String] :filter_pattern
    #   The filter pattern to use. For more information, see [Filter and
    #   Pattern Syntax][1].
    #
    #   If not provided, all the events are matched.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html
    #
    # @option params [String] :next_token
    #   The token for the next set of events to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :limit
    #   The maximum number of events to return. The default is 10,000 events.
    #
    # @option params [Boolean] :interleaved
    #   If the value is true, the operation attempts to provide responses that
    #   contain events from multiple log streams within the log group,
    #   interleaved in a single response. If the value is false, all the
    #   matched log events in the first log stream are searched first, then
    #   those in the next log stream, and so on.
    #
    #   **Important** As of June 17, 2019, this parameter is ignored and the
    #   value is assumed to be true. The response from this operation always
    #   interleaves events from multiple log streams within a log group.
    #
    # @option params [Boolean] :unmask
    #   Specify `true` to display the log event fields with all sensitive data
    #   unmasked and visible. The default is `false`.
    #
    #   To use this operation with this parameter, you must be signed into an
    #   account with the `logs:Unmask` permission.
    #
    # @return [Types::FilterLogEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FilterLogEventsResponse#events #events} => Array&lt;Types::FilteredLogEvent&gt;
    #   * {Types::FilterLogEventsResponse#searched_log_streams #searched_log_streams} => Array&lt;Types::SearchedLogStream&gt;
    #   * {Types::FilterLogEventsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.filter_log_events({
    #     log_group_name: "LogGroupName",
    #     log_group_identifier: "LogGroupIdentifier",
    #     log_stream_names: ["LogStreamName"],
    #     log_stream_name_prefix: "LogStreamName",
    #     start_time: 1,
    #     end_time: 1,
    #     filter_pattern: "FilterPattern",
    #     next_token: "NextToken",
    #     limit: 1,
    #     interleaved: false,
    #     unmask: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].log_stream_name #=> String
    #   resp.events[0].timestamp #=> Integer
    #   resp.events[0].message #=> String
    #   resp.events[0].ingestion_time #=> Integer
    #   resp.events[0].event_id #=> String
    #   resp.searched_log_streams #=> Array
    #   resp.searched_log_streams[0].log_stream_name #=> String
    #   resp.searched_log_streams[0].searched_completely #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/FilterLogEvents AWS API Documentation
    #
    # @overload filter_log_events(params = {})
    # @param [Hash] params ({})
    def filter_log_events(params = {}, options = {})
      req = build_request(:filter_log_events, params)
      req.send_request(options)
    end

    # Returns information about a log group data protection policy.
    #
    # @option params [required, String] :log_group_identifier
    #   The name or ARN of the log group that contains the data protection
    #   policy that you want to see.
    #
    # @return [Types::GetDataProtectionPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataProtectionPolicyResponse#log_group_identifier #log_group_identifier} => String
    #   * {Types::GetDataProtectionPolicyResponse#policy_document #policy_document} => String
    #   * {Types::GetDataProtectionPolicyResponse#last_updated_time #last_updated_time} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_protection_policy({
    #     log_group_identifier: "LogGroupIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.log_group_identifier #=> String
    #   resp.policy_document #=> String
    #   resp.last_updated_time #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetDataProtectionPolicy AWS API Documentation
    #
    # @overload get_data_protection_policy(params = {})
    # @param [Hash] params ({})
    def get_data_protection_policy(params = {}, options = {})
      req = build_request(:get_data_protection_policy, params)
      req.send_request(options)
    end

    # Lists log events from the specified log stream. You can list all of
    # the log events or filter using a time range.
    #
    # By default, this operation returns as many log events as can fit in a
    # response size of 1MB (up to 10,000 log events). You can get additional
    # log events by specifying one of the tokens in a subsequent call. This
    # operation can return empty results while there are more log events
    # available through the token.
    #
    # If you are using CloudWatch cross-account observability, you can use
    # this operation in a monitoring account and view data from the linked
    # source accounts. For more information, see [CloudWatch cross-account
    # observability][1].
    #
    # You can specify the log group to search by using either
    # `logGroupIdentifier` or `logGroupName`. You must include one of these
    # two parameters, but you can't include both.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html
    #
    # @option params [String] :log_group_name
    #   The name of the log group.
    #
    #   <note markdown="1"> You must include either `logGroupIdentifier` or `logGroupName`, but
    #   not both.
    #
    #    </note>
    #
    # @option params [String] :log_group_identifier
    #   Specify either the name or ARN of the log group to view events from.
    #   If the log group is in a source account and you are using a monitoring
    #   account, you must use the log group ARN.
    #
    #   <note markdown="1"> You must include either `logGroupIdentifier` or `logGroupName`, but
    #   not both.
    #
    #    </note>
    #
    # @option params [required, String] :log_stream_name
    #   The name of the log stream.
    #
    # @option params [Integer] :start_time
    #   The start of the time range, expressed as the number of milliseconds
    #   after `Jan 1, 1970 00:00:00 UTC`. Events with a timestamp equal to
    #   this time or later than this time are included. Events with a
    #   timestamp earlier than this time are not included.
    #
    # @option params [Integer] :end_time
    #   The end of the time range, expressed as the number of milliseconds
    #   after `Jan 1, 1970 00:00:00 UTC`. Events with a timestamp equal to or
    #   later than this time are not included.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :limit
    #   The maximum number of log events returned. If you don't specify a
    #   limit, the default is as many log events as can fit in a response size
    #   of 1 MB (up to 10,000 log events).
    #
    # @option params [Boolean] :start_from_head
    #   If the value is true, the earliest log events are returned first. If
    #   the value is false, the latest log events are returned first. The
    #   default value is false.
    #
    #   If you are using a previous `nextForwardToken` value as the
    #   `nextToken` in this operation, you must specify `true` for
    #   `startFromHead`.
    #
    # @option params [Boolean] :unmask
    #   Specify `true` to display the log event fields with all sensitive data
    #   unmasked and visible. The default is `false`.
    #
    #   To use this operation with this parameter, you must be signed into an
    #   account with the `logs:Unmask` permission.
    #
    # @return [Types::GetLogEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLogEventsResponse#events #events} => Array&lt;Types::OutputLogEvent&gt;
    #   * {Types::GetLogEventsResponse#next_forward_token #next_forward_token} => String
    #   * {Types::GetLogEventsResponse#next_backward_token #next_backward_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_log_events({
    #     log_group_name: "LogGroupName",
    #     log_group_identifier: "LogGroupIdentifier",
    #     log_stream_name: "LogStreamName", # required
    #     start_time: 1,
    #     end_time: 1,
    #     next_token: "NextToken",
    #     limit: 1,
    #     start_from_head: false,
    #     unmask: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].timestamp #=> Integer
    #   resp.events[0].message #=> String
    #   resp.events[0].ingestion_time #=> Integer
    #   resp.next_forward_token #=> String
    #   resp.next_backward_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetLogEvents AWS API Documentation
    #
    # @overload get_log_events(params = {})
    # @param [Hash] params ({})
    def get_log_events(params = {}, options = {})
      req = build_request(:get_log_events, params)
      req.send_request(options)
    end

    # Returns a list of the fields that are included in log events in the
    # specified log group. Includes the percentage of log events that
    # contain each field. The search is limited to a time period that you
    # specify.
    #
    # You can specify the log group to search by using either
    # `logGroupIdentifier` or `logGroupName`. You must specify one of these
    # parameters, but you can't specify both.
    #
    # In the results, fields that start with `@` are fields generated by
    # CloudWatch Logs. For example, `@timestamp` is the timestamp of each
    # log event. For more information about the fields that are generated by
    # CloudWatch logs, see [Supported Logs and Discovered Fields][1].
    #
    # The response results are sorted by the frequency percentage, starting
    # with the highest percentage.
    #
    # If you are using CloudWatch cross-account observability, you can use
    # this operation in a monitoring account and view data from the linked
    # source accounts. For more information, see [CloudWatch cross-account
    # observability][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData-discoverable-fields.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html
    #
    # @option params [String] :log_group_name
    #   The name of the log group to search.
    #
    #   <note markdown="1"> You must include either `logGroupIdentifier` or `logGroupName`, but
    #   not both.
    #
    #    </note>
    #
    # @option params [Integer] :time
    #   The time to set as the center of the query. If you specify `time`, the
    #   8 minutes before and 8 minutes after this time are searched. If you
    #   omit `time`, the most recent 15 minutes up to the current time are
    #   searched.
    #
    #   The `time` value is specified as epoch time, which is the number of
    #   seconds since `January 1, 1970, 00:00:00 UTC`.
    #
    # @option params [String] :log_group_identifier
    #   Specify either the name or ARN of the log group to view. If the log
    #   group is in a source account and you are using a monitoring account,
    #   you must specify the ARN.
    #
    #   <note markdown="1"> You must include either `logGroupIdentifier` or `logGroupName`, but
    #   not both.
    #
    #    </note>
    #
    # @return [Types::GetLogGroupFieldsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLogGroupFieldsResponse#log_group_fields #log_group_fields} => Array&lt;Types::LogGroupField&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_log_group_fields({
    #     log_group_name: "LogGroupName",
    #     time: 1,
    #     log_group_identifier: "LogGroupIdentifier",
    #   })
    #
    # @example Response structure
    #
    #   resp.log_group_fields #=> Array
    #   resp.log_group_fields[0].name #=> String
    #   resp.log_group_fields[0].percent #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetLogGroupFields AWS API Documentation
    #
    # @overload get_log_group_fields(params = {})
    # @param [Hash] params ({})
    def get_log_group_fields(params = {}, options = {})
      req = build_request(:get_log_group_fields, params)
      req.send_request(options)
    end

    # Retrieves all of the fields and values of a single log event. All
    # fields are retrieved, even if the original query that produced the
    # `logRecordPointer` retrieved only a subset of fields. Fields are
    # returned as field name/field value pairs.
    #
    # The full unparsed log event is returned within `@message`.
    #
    # @option params [required, String] :log_record_pointer
    #   The pointer corresponding to the log event record you want to
    #   retrieve. You get this from the response of a `GetQueryResults`
    #   operation. In that response, the value of the `@ptr` field for a log
    #   event is the value to use as `logRecordPointer` to retrieve that
    #   complete log event record.
    #
    # @option params [Boolean] :unmask
    #   Specify `true` to display the log event fields with all sensitive data
    #   unmasked and visible. The default is `false`.
    #
    #   To use this operation with this parameter, you must be signed into an
    #   account with the `logs:Unmask` permission.
    #
    # @return [Types::GetLogRecordResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLogRecordResponse#log_record #log_record} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_log_record({
    #     log_record_pointer: "LogRecordPointer", # required
    #     unmask: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.log_record #=> Hash
    #   resp.log_record["Field"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetLogRecord AWS API Documentation
    #
    # @overload get_log_record(params = {})
    # @param [Hash] params ({})
    def get_log_record(params = {}, options = {})
      req = build_request(:get_log_record, params)
      req.send_request(options)
    end

    # Returns the results from the specified query.
    #
    # Only the fields requested in the query are returned, along with a
    # `@ptr` field, which is the identifier for the log record. You can use
    # the value of `@ptr` in a [GetLogRecord][1] operation to get the full
    # log record.
    #
    # `GetQueryResults` does not start running a query. To run a query, use
    # [StartQuery][2].
    #
    # If the value of the `Status` field in the output is `Running`, this
    # operation returns only partial results. If you see a value of
    # `Scheduled` or `Running` for the status, you can retry the operation
    # later to see the final results.
    #
    # If you are using CloudWatch cross-account observability, you can use
    # this operation in a monitoring account to start queries in linked
    # source accounts. For more information, see [CloudWatch cross-account
    # observability][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogRecord.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html
    #
    # @option params [required, String] :query_id
    #   The ID number of the query.
    #
    # @return [Types::GetQueryResultsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQueryResultsResponse#results #results} => Array&lt;Array&lt;Types::ResultField&gt;&gt;
    #   * {Types::GetQueryResultsResponse#statistics #statistics} => Types::QueryStatistics
    #   * {Types::GetQueryResultsResponse#status #status} => String
    #   * {Types::GetQueryResultsResponse#encryption_key #encryption_key} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_query_results({
    #     query_id: "QueryId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0] #=> Array
    #   resp.results[0][0].field #=> String
    #   resp.results[0][0].value #=> String
    #   resp.statistics.records_matched #=> Float
    #   resp.statistics.records_scanned #=> Float
    #   resp.statistics.bytes_scanned #=> Float
    #   resp.status #=> String, one of "Scheduled", "Running", "Complete", "Failed", "Cancelled", "Timeout", "Unknown"
    #   resp.encryption_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetQueryResults AWS API Documentation
    #
    # @overload get_query_results(params = {})
    # @param [Hash] params ({})
    def get_query_results(params = {}, options = {})
      req = build_request(:get_query_results, params)
      req.send_request(options)
    end

    # Displays the tags associated with a CloudWatch Logs resource.
    # Currently, log groups and destinations support tagging.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource that you want to view tags for.
    #
    #   The ARN format of a log group is
    #   `arn:aws:logs:Region:account-id:log-group:log-group-name `
    #
    #   The ARN format of a destination is
    #   `arn:aws:logs:Region:account-id:destination:destination-name `
    #
    #   For more information about ARN format, see [CloudWatch Logs resources
    #   and operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # The ListTagsLogGroup operation is on the path to deprecation. We
    # recommend that you use [ListTagsForResource][1] instead.
    #
    # Lists the tags for the specified log group.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsForResource.html
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @return [Types::ListTagsLogGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsLogGroupResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_log_group({
    #     log_group_name: "LogGroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ListTagsLogGroup AWS API Documentation
    #
    # @overload list_tags_log_group(params = {})
    # @param [Hash] params ({})
    def list_tags_log_group(params = {}, options = {})
      req = build_request(:list_tags_log_group, params)
      req.send_request(options)
    end

    # Creates an account-level data protection policy that applies to all
    # log groups in the account. A data protection policy can help safeguard
    # sensitive data that's ingested by your log groups by auditing and
    # masking the sensitive log data. Each account can have only one
    # account-level policy.
    #
    # Sensitive data is detected and masked when it is ingested into a log
    # group. When you set a data protection policy, log events ingested into
    # the log groups before that time are not masked.
    #
    # If you use `PutAccountPolicy` to create a data protection policy for
    # your whole account, it applies to both existing log groups and all log
    # groups that are created later in this account. The account policy is
    # applied to existing log groups with eventual consistency. It might
    # take up to 5 minutes before sensitive data in existing log groups
    # begins to be masked.
    #
    # By default, when a user views a log event that includes masked data,
    # the sensitive data is replaced by asterisks. A user who has the
    # `logs:Unmask` permission can use a [GetLogEvents][1] or
    # [FilterLogEvents][2] operation with the `unmask` parameter set to
    # `true` to view the unmasked log events. Users with the `logs:Unmask`
    # can also view unmasked data in the CloudWatch Logs console by running
    # a CloudWatch Logs Insights query with the `unmask` query command.
    #
    # For more information, including a list of types of data that can be
    # audited and masked, see [Protect sensitive log data with masking][3].
    #
    # To use the `PutAccountPolicy` operation, you must be signed on with
    # the `logs:PutDataProtectionPolicy` and `logs:PutAccountPolicy`
    # permissions.
    #
    # The `PutAccountPolicy` operation applies to all log groups in the
    # account. You can also use [PutDataProtectionPolicy][4] to create a
    # data protection policy that applies to just one log group. If a log
    # group has its own data protection policy and the account also has an
    # account-level data protection policy, then the two policies are
    # cumulative. Any sensitive term specified in either policy is masked.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogEvents.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_FilterLogEvents.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data.html
    # [4]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDataProtectionPolicy.html
    #
    # @option params [required, String] :policy_name
    #   A name for the policy. This must be unique within the account.
    #
    # @option params [required, String] :policy_document
    #   Specify the data protection policy, in JSON.
    #
    #   This policy must include two JSON blocks:
    #
    #   * The first block must include both a `DataIdentifer` array and an
    #     `Operation` property with an `Audit` action. The `DataIdentifer`
    #     array lists the types of sensitive data that you want to mask. For
    #     more information about the available options, see [Types of data
    #     that you can mask][1].
    #
    #     The `Operation` property with an `Audit` action is required to find
    #     the sensitive data terms. This `Audit` action must contain a
    #     `FindingsDestination` object. You can optionally use that
    #     `FindingsDestination` object to list one or more destinations to
    #     send audit findings to. If you specify destinations such as log
    #     groups, Kinesis Data Firehose streams, and S3 buckets, they must
    #     already exist.
    #
    #   * The second block must include both a `DataIdentifer` array and an
    #     `Operation` property with an `Deidentify` action. The
    #     `DataIdentifer` array must exactly match the `DataIdentifer` array
    #     in the first block of the policy.
    #
    #     The `Operation` property with the `Deidentify` action is what
    #     actually masks the data, and it must contain the ` "MaskConfig":
    #     \{\}` object. The ` "MaskConfig": \{\}` object must be empty.
    #
    #   For an example data protection policy, see the **Examples** section on
    #   this page.
    #
    #   The contents of the two `DataIdentifer` arrays must match exactly.
    #
    #   In addition to the two JSON blocks, the `policyDocument` can also
    #   include `Name`, `Description`, and `Version` fields. The `Name` is
    #   different than the operation's `policyName` parameter, and is used as
    #   a dimension when CloudWatch Logs reports audit findings metrics to
    #   CloudWatch.
    #
    #   The JSON specified in `policyDocument` can be up to 30,720 characters.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data-types.html
    #
    # @option params [required, String] :policy_type
    #   Currently the only valid value for this parameter is
    #   `DATA_PROTECTION_POLICY`.
    #
    # @option params [String] :scope
    #   Currently the only valid value for this parameter is `ALL`, which
    #   specifies that the data protection policy applies to all log groups in
    #   the account. If you omit this parameter, the default of `ALL` is used.
    #
    # @return [Types::PutAccountPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutAccountPolicyResponse#account_policy #account_policy} => Types::AccountPolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_account_policy({
    #     policy_name: "PolicyName", # required
    #     policy_document: "AccountPolicyDocument", # required
    #     policy_type: "DATA_PROTECTION_POLICY", # required, accepts DATA_PROTECTION_POLICY
    #     scope: "ALL", # accepts ALL
    #   })
    #
    # @example Response structure
    #
    #   resp.account_policy.policy_name #=> String
    #   resp.account_policy.policy_document #=> String
    #   resp.account_policy.last_updated_time #=> Integer
    #   resp.account_policy.policy_type #=> String, one of "DATA_PROTECTION_POLICY"
    #   resp.account_policy.scope #=> String, one of "ALL"
    #   resp.account_policy.account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutAccountPolicy AWS API Documentation
    #
    # @overload put_account_policy(params = {})
    # @param [Hash] params ({})
    def put_account_policy(params = {}, options = {})
      req = build_request(:put_account_policy, params)
      req.send_request(options)
    end

    # Creates a data protection policy for the specified log group. A data
    # protection policy can help safeguard sensitive data that's ingested
    # by the log group by auditing and masking the sensitive log data.
    #
    # Sensitive data is detected and masked when it is ingested into the log
    # group. When you set a data protection policy, log events ingested into
    # the log group before that time are not masked.
    #
    # By default, when a user views a log event that includes masked data,
    # the sensitive data is replaced by asterisks. A user who has the
    # `logs:Unmask` permission can use a [GetLogEvents][1] or
    # [FilterLogEvents][2] operation with the `unmask` parameter set to
    # `true` to view the unmasked log events. Users with the `logs:Unmask`
    # can also view unmasked data in the CloudWatch Logs console by running
    # a CloudWatch Logs Insights query with the `unmask` query command.
    #
    # For more information, including a list of types of data that can be
    # audited and masked, see [Protect sensitive log data with masking][3].
    #
    # The `PutDataProtectionPolicy` operation applies to only the specified
    # log group. You can also use [PutAccountPolicy][4] to create an
    # account-level data protection policy that applies to all log groups in
    # the account, including both existing log groups and log groups that
    # are created level. If a log group has its own data protection policy
    # and the account also has an account-level data protection policy, then
    # the two policies are cumulative. Any sensitive term specified in
    # either policy is masked.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogEvents.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_FilterLogEvents.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data.html
    # [4]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutAccountPolicy.html
    #
    # @option params [required, String] :log_group_identifier
    #   Specify either the log group name or log group ARN.
    #
    # @option params [required, String] :policy_document
    #   Specify the data protection policy, in JSON.
    #
    #   This policy must include two JSON blocks:
    #
    #   * The first block must include both a `DataIdentifer` array and an
    #     `Operation` property with an `Audit` action. The `DataIdentifer`
    #     array lists the types of sensitive data that you want to mask. For
    #     more information about the available options, see [Types of data
    #     that you can mask][1].
    #
    #     The `Operation` property with an `Audit` action is required to find
    #     the sensitive data terms. This `Audit` action must contain a
    #     `FindingsDestination` object. You can optionally use that
    #     `FindingsDestination` object to list one or more destinations to
    #     send audit findings to. If you specify destinations such as log
    #     groups, Kinesis Data Firehose streams, and S3 buckets, they must
    #     already exist.
    #
    #   * The second block must include both a `DataIdentifer` array and an
    #     `Operation` property with an `Deidentify` action. The
    #     `DataIdentifer` array must exactly match the `DataIdentifer` array
    #     in the first block of the policy.
    #
    #     The `Operation` property with the `Deidentify` action is what
    #     actually masks the data, and it must contain the ` "MaskConfig":
    #     \{\}` object. The ` "MaskConfig": \{\}` object must be empty.
    #
    #   For an example data protection policy, see the **Examples** section on
    #   this page.
    #
    #   The contents of the two `DataIdentifer` arrays must match exactly.
    #
    #   In addition to the two JSON blocks, the `policyDocument` can also
    #   include `Name`, `Description`, and `Version` fields. The `Name` is
    #   used as a dimension when CloudWatch Logs reports audit findings
    #   metrics to CloudWatch.
    #
    #   The JSON specified in `policyDocument` can be up to 30,720 characters.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data-types.html
    #
    # @return [Types::PutDataProtectionPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutDataProtectionPolicyResponse#log_group_identifier #log_group_identifier} => String
    #   * {Types::PutDataProtectionPolicyResponse#policy_document #policy_document} => String
    #   * {Types::PutDataProtectionPolicyResponse#last_updated_time #last_updated_time} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_data_protection_policy({
    #     log_group_identifier: "LogGroupIdentifier", # required
    #     policy_document: "DataProtectionPolicyDocument", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.log_group_identifier #=> String
    #   resp.policy_document #=> String
    #   resp.last_updated_time #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutDataProtectionPolicy AWS API Documentation
    #
    # @overload put_data_protection_policy(params = {})
    # @param [Hash] params ({})
    def put_data_protection_policy(params = {}, options = {})
      req = build_request(:put_data_protection_policy, params)
      req.send_request(options)
    end

    # Creates or updates a destination. This operation is used only to
    # create destinations for cross-account subscriptions.
    #
    # A destination encapsulates a physical resource (such as an Amazon
    # Kinesis stream). With a destination, you can subscribe to a real-time
    # stream of log events for a different account, ingested using
    # [PutLogEvents][1].
    #
    # Through an access policy, a destination controls what is written to
    # it. By default, `PutDestination` does not set any access policy with
    # the destination, which means a cross-account user cannot call
    # [PutSubscriptionFilter][2] against this destination. To enable this,
    # the destination owner must call [PutDestinationPolicy][3] after
    # `PutDestination`.
    #
    # To perform a `PutDestination` operation, you must also have the
    # `iam:PassRole` permission.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutSubscriptionFilter.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestinationPolicy.html
    #
    # @option params [required, String] :destination_name
    #   A name for the destination.
    #
    # @option params [required, String] :target_arn
    #   The ARN of an Amazon Kinesis stream to which to deliver matching log
    #   events.
    #
    # @option params [required, String] :role_arn
    #   The ARN of an IAM role that grants CloudWatch Logs permissions to call
    #   the Amazon Kinesis `PutRecord` operation on the destination stream.
    #
    # @option params [Hash<String,String>] :tags
    #   An optional list of key-value pairs to associate with the resource.
    #
    #   For more information about tagging, see [Tagging Amazon Web Services
    #   resources][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::PutDestinationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutDestinationResponse#destination #destination} => Types::Destination
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_destination({
    #     destination_name: "DestinationName", # required
    #     target_arn: "TargetArn", # required
    #     role_arn: "RoleArn", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.destination.destination_name #=> String
    #   resp.destination.target_arn #=> String
    #   resp.destination.role_arn #=> String
    #   resp.destination.access_policy #=> String
    #   resp.destination.arn #=> String
    #   resp.destination.creation_time #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutDestination AWS API Documentation
    #
    # @overload put_destination(params = {})
    # @param [Hash] params ({})
    def put_destination(params = {}, options = {})
      req = build_request(:put_destination, params)
      req.send_request(options)
    end

    # Creates or updates an access policy associated with an existing
    # destination. An access policy is an [IAM policy document][1] that is
    # used to authorize claims to register a subscription filter against a
    # given destination.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/policies_overview.html
    #
    # @option params [required, String] :destination_name
    #   A name for an existing destination.
    #
    # @option params [required, String] :access_policy
    #   An IAM policy document that authorizes cross-account users to deliver
    #   their log events to the associated destination. This can be up to 5120
    #   bytes.
    #
    # @option params [Boolean] :force_update
    #   Specify true if you are updating an existing destination policy to
    #   grant permission to an organization ID instead of granting permission
    #   to individual Amazon Web Services accounts. Before you update a
    #   destination policy this way, you must first update the subscription
    #   filters in the accounts that send logs to this destination. If you do
    #   not, the subscription filters might stop working. By specifying `true`
    #   for `forceUpdate`, you are affirming that you have already updated the
    #   subscription filters. For more information, see [ Updating an existing
    #   cross-account subscription][1]
    #
    #   If you omit this parameter, the default of `false` is used.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Cross-Account-Log_Subscription-Update.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_destination_policy({
    #     destination_name: "DestinationName", # required
    #     access_policy: "AccessPolicy", # required
    #     force_update: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutDestinationPolicy AWS API Documentation
    #
    # @overload put_destination_policy(params = {})
    # @param [Hash] params ({})
    def put_destination_policy(params = {}, options = {})
      req = build_request(:put_destination_policy, params)
      req.send_request(options)
    end

    # Uploads a batch of log events to the specified log stream.
    #
    # The sequence token is now ignored in `PutLogEvents` actions.
    # `PutLogEvents` actions are always accepted and never return
    # `InvalidSequenceTokenException` or `DataAlreadyAcceptedException` even
    # if the sequence token is not valid. You can use parallel
    # `PutLogEvents` actions on the same log stream.
    #
    # The batch of events must satisfy the following constraints:
    #
    # * The maximum batch size is 1,048,576 bytes. This size is calculated
    #   as the sum of all event messages in UTF-8, plus 26 bytes for each
    #   log event.
    #
    # * None of the log events in the batch can be more than 2 hours in the
    #   future.
    #
    # * None of the log events in the batch can be more than 14 days in the
    #   past. Also, none of the log events can be from earlier than the
    #   retention period of the log group.
    #
    # * The log events in the batch must be in chronological order by their
    #   timestamp. The timestamp is the time that the event occurred,
    #   expressed as the number of milliseconds after `Jan 1, 1970 00:00:00
    #   UTC`. (In Amazon Web Services Tools for PowerShell and the Amazon
    #   Web Services SDK for .NET, the timestamp is specified in .NET
    #   format: `yyyy-mm-ddThh:mm:ss`. For example, `2017-09-15T13:45:30`.)
    #
    # * A batch of log events in a single request cannot span more than 24
    #   hours. Otherwise, the operation fails.
    #
    # * Each log event can be no larger than 256 KB.
    #
    # * The maximum number of log events in a batch is 10,000.
    #
    # * The quota of five requests per second per log stream has been
    #   removed. Instead, `PutLogEvents` actions are throttled based on a
    #   per-second per-account quota. You can request an increase to the
    #   per-second throttling quota by using the Service Quotas service.
    #
    # If a call to `PutLogEvents` returns "UnrecognizedClientException"
    # the most likely cause is a non-valid Amazon Web Services access key ID
    # or secret key.
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @option params [required, String] :log_stream_name
    #   The name of the log stream.
    #
    # @option params [required, Array<Types::InputLogEvent>] :log_events
    #   The log events.
    #
    # @option params [String] :sequence_token
    #   The sequence token obtained from the response of the previous
    #   `PutLogEvents` call.
    #
    #   The `sequenceToken` parameter is now ignored in `PutLogEvents`
    #   actions. `PutLogEvents` actions are now accepted and never return
    #   `InvalidSequenceTokenException` or `DataAlreadyAcceptedException` even
    #   if the sequence token is not valid.
    #
    # @return [Types::PutLogEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutLogEventsResponse#next_sequence_token #next_sequence_token} => String
    #   * {Types::PutLogEventsResponse#rejected_log_events_info #rejected_log_events_info} => Types::RejectedLogEventsInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_log_events({
    #     log_group_name: "LogGroupName", # required
    #     log_stream_name: "LogStreamName", # required
    #     log_events: [ # required
    #       {
    #         timestamp: 1, # required
    #         message: "EventMessage", # required
    #       },
    #     ],
    #     sequence_token: "SequenceToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_sequence_token #=> String
    #   resp.rejected_log_events_info.too_new_log_event_start_index #=> Integer
    #   resp.rejected_log_events_info.too_old_log_event_end_index #=> Integer
    #   resp.rejected_log_events_info.expired_log_event_end_index #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutLogEvents AWS API Documentation
    #
    # @overload put_log_events(params = {})
    # @param [Hash] params ({})
    def put_log_events(params = {}, options = {})
      req = build_request(:put_log_events, params)
      req.send_request(options)
    end

    # Creates or updates a metric filter and associates it with the
    # specified log group. With metric filters, you can configure rules to
    # extract metric data from log events ingested through
    # [PutLogEvents][1].
    #
    # The maximum number of metric filters that can be associated with a log
    # group is 100.
    #
    # When you create a metric filter, you can also optionally assign a unit
    # and dimensions to the metric that is created.
    #
    # Metrics extracted from log events are charged as custom metrics. To
    # prevent unexpected high charges, do not specify high-cardinality
    # fields such as `IPAddress` or `requestID` as dimensions. Each
    # different value found for a dimension is treated as a separate metric
    # and accrues charges as a separate custom metric.
    #
    #  CloudWatch Logs disables a metric filter if it generates 1,000
    # different name/value pairs for your specified dimensions within a
    # certain amount of time. This helps to prevent accidental high charges.
    #
    #  You can also set up a billing alarm to alert you if your charges are
    # higher than expected. For more information, see [ Creating a Billing
    # Alarm to Monitor Your Estimated Amazon Web Services Charges][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/monitor_estimated_charges_with_cloudwatch.html
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @option params [required, String] :filter_name
    #   A name for the metric filter.
    #
    # @option params [required, String] :filter_pattern
    #   A filter pattern for extracting metric data out of ingested log
    #   events.
    #
    # @option params [required, Array<Types::MetricTransformation>] :metric_transformations
    #   A collection of information that defines how metric data gets emitted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_metric_filter({
    #     log_group_name: "LogGroupName", # required
    #     filter_name: "FilterName", # required
    #     filter_pattern: "FilterPattern", # required
    #     metric_transformations: [ # required
    #       {
    #         metric_name: "MetricName", # required
    #         metric_namespace: "MetricNamespace", # required
    #         metric_value: "MetricValue", # required
    #         default_value: 1.0,
    #         dimensions: {
    #           "DimensionsKey" => "DimensionsValue",
    #         },
    #         unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutMetricFilter AWS API Documentation
    #
    # @overload put_metric_filter(params = {})
    # @param [Hash] params ({})
    def put_metric_filter(params = {}, options = {})
      req = build_request(:put_metric_filter, params)
      req.send_request(options)
    end

    # Creates or updates a query definition for CloudWatch Logs Insights.
    # For more information, see [Analyzing Log Data with CloudWatch Logs
    # Insights][1].
    #
    # To update a query definition, specify its `queryDefinitionId` in your
    # request. The values of `name`, `queryString`, and `logGroupNames` are
    # changed to the values that you specify in your update operation. No
    # current values are retained from the current query definition. For
    # example, imagine updating a current query definition that includes log
    # groups. If you don't specify the `logGroupNames` parameter in your
    # update operation, the query definition changes to contain no log
    # groups.
    #
    # You must have the `logs:PutQueryDefinition` permission to be able to
    # perform this operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AnalyzingLogData.html
    #
    # @option params [required, String] :name
    #   A name for the query definition. If you are saving numerous query
    #   definitions, we recommend that you name them. This way, you can find
    #   the ones you want by using the first part of the name as a filter in
    #   the `queryDefinitionNamePrefix` parameter of
    #   [DescribeQueryDefinitions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html
    #
    # @option params [String] :query_definition_id
    #   If you are updating a query definition, use this parameter to specify
    #   the ID of the query definition that you want to update. You can use
    #   [DescribeQueryDefinitions][1] to retrieve the IDs of your saved query
    #   definitions.
    #
    #   If you are creating a query definition, do not specify this parameter.
    #   CloudWatch generates a unique ID for the new query definition and
    #   include it in the response to this operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html
    #
    # @option params [Array<String>] :log_group_names
    #   Use this parameter to include specific log groups as part of your
    #   query definition.
    #
    #   If you are updating a query definition and you omit this parameter,
    #   then the updated definition will contain no log groups.
    #
    # @option params [required, String] :query_string
    #   The query string to use for this definition. For more information, see
    #   [CloudWatch Logs Insights Query Syntax][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html
    #
    # @return [Types::PutQueryDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutQueryDefinitionResponse#query_definition_id #query_definition_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_query_definition({
    #     name: "QueryDefinitionName", # required
    #     query_definition_id: "QueryId",
    #     log_group_names: ["LogGroupName"],
    #     query_string: "QueryDefinitionString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.query_definition_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutQueryDefinition AWS API Documentation
    #
    # @overload put_query_definition(params = {})
    # @param [Hash] params ({})
    def put_query_definition(params = {}, options = {})
      req = build_request(:put_query_definition, params)
      req.send_request(options)
    end

    # Creates or updates a resource policy allowing other Amazon Web
    # Services services to put log events to this account, such as Amazon
    # Route 53. An account can have up to 10 resource policies per Amazon
    # Web Services Region.
    #
    # @option params [String] :policy_name
    #   Name of the new policy. This parameter is required.
    #
    # @option params [String] :policy_document
    #   Details of the new policy, including the identity of the principal
    #   that is enabled to put logs to this account. This is formatted as a
    #   JSON string. This parameter is required.
    #
    #   The following example creates a resource policy enabling the Route 53
    #   service to put DNS query logs in to the specified log group. Replace
    #   `"logArn"` with the ARN of your CloudWatch Logs resource, such as a
    #   log group or log stream.
    #
    #   CloudWatch Logs also supports [aws:SourceArn][1] and
    #   [aws:SourceAccount][2] condition context keys.
    #
    #   In the example resource policy, you would replace the value of
    #   `SourceArn` with the resource making the call from Route 53 to
    #   CloudWatch Logs. You would also replace the value of `SourceAccount`
    #   with the Amazon Web Services account ID making that call.
    #
    #
    #
    #   `\{ "Version": "2012-10-17", "Statement": [ \{ "Sid":
    #   "Route53LogsToCloudWatchLogs", "Effect": "Allow", "Principal": \{
    #   "Service": [ "route53.amazonaws.com" ] \}, "Action":
    #   "logs:PutLogEvents", "Resource": "logArn", "Condition": \{ "ArnLike":
    #   \{ "aws:SourceArn": "myRoute53ResourceArn" \}, "StringEquals": \{
    #   "aws:SourceAccount": "myAwsAccountId" \} \} \} ] \}`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-sourcearn
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-sourceaccount
    #
    # @return [Types::PutResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutResourcePolicyResponse#resource_policy #resource_policy} => Types::ResourcePolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy({
    #     policy_name: "PolicyName",
    #     policy_document: "PolicyDocument",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_policy.policy_name #=> String
    #   resp.resource_policy.policy_document #=> String
    #   resp.resource_policy.last_updated_time #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutResourcePolicy AWS API Documentation
    #
    # @overload put_resource_policy(params = {})
    # @param [Hash] params ({})
    def put_resource_policy(params = {}, options = {})
      req = build_request(:put_resource_policy, params)
      req.send_request(options)
    end

    # Sets the retention of the specified log group. With a retention
    # policy, you can configure the number of days for which to retain log
    # events in the specified log group.
    #
    # <note markdown="1"> CloudWatch Logs doesn’t immediately delete log events when they reach
    # their retention setting. It typically takes up to 72 hours after that
    # before log events are deleted, but in rare situations might take
    # longer.
    #
    #  To illustrate, imagine that you change a log group to have a longer
    # retention setting when it contains log events that are past the
    # expiration date, but haven’t been deleted. Those log events will take
    # up to 72 hours to be deleted after the new retention date is reached.
    # To make sure that log data is deleted permanently, keep a log group at
    # its lower retention setting until 72 hours after the previous
    # retention period ends. Alternatively, wait to change the retention
    # setting until you confirm that the earlier log events are deleted.
    #
    #  </note>
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @option params [required, Integer] :retention_in_days
    #   The number of days to retain the log events in the specified log
    #   group. Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180,
    #   365, 400, 545, 731, 1096, 1827, 2192, 2557, 2922, 3288, and 3653.
    #
    #   To set a log group so that its log events do not expire, use
    #   [DeleteRetentionPolicy][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DeleteRetentionPolicy.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_retention_policy({
    #     log_group_name: "LogGroupName", # required
    #     retention_in_days: 1, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutRetentionPolicy AWS API Documentation
    #
    # @overload put_retention_policy(params = {})
    # @param [Hash] params ({})
    def put_retention_policy(params = {}, options = {})
      req = build_request(:put_retention_policy, params)
      req.send_request(options)
    end

    # Creates or updates a subscription filter and associates it with the
    # specified log group. With subscription filters, you can subscribe to a
    # real-time stream of log events ingested through [PutLogEvents][1] and
    # have them delivered to a specific destination. When log events are
    # sent to the receiving service, they are Base64 encoded and compressed
    # with the GZIP format.
    #
    # The following destinations are supported for subscription filters:
    #
    # * An Amazon Kinesis data stream belonging to the same account as the
    #   subscription filter, for same-account delivery.
    #
    # * A logical destination created with [PutDestination][2] that belongs
    #   to a different account, for cross-account delivery. We currently
    #   support Kinesis Data Streams and Kinesis Data Firehose as logical
    #   destinations.
    #
    # * An Amazon Kinesis Data Firehose delivery stream that belongs to the
    #   same account as the subscription filter, for same-account delivery.
    #
    # * An Lambda function that belongs to the same account as the
    #   subscription filter, for same-account delivery.
    #
    # Each log group can have up to two subscription filters associated with
    # it. If you are updating an existing filter, you must specify the
    # correct name in `filterName`.
    #
    # To perform a `PutSubscriptionFilter` operation for any destination
    # except a Lambda function, you must also have the `iam:PassRole`
    # permission.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestination.html
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @option params [required, String] :filter_name
    #   A name for the subscription filter. If you are updating an existing
    #   filter, you must specify the correct name in `filterName`. To find the
    #   name of the filter currently associated with a log group, use
    #   [DescribeSubscriptionFilters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeSubscriptionFilters.html
    #
    # @option params [required, String] :filter_pattern
    #   A filter pattern for subscribing to a filtered stream of log events.
    #
    # @option params [required, String] :destination_arn
    #   The ARN of the destination to deliver matching log events to.
    #   Currently, the supported destinations are:
    #
    #   * An Amazon Kinesis stream belonging to the same account as the
    #     subscription filter, for same-account delivery.
    #
    #   * A logical destination (specified using an ARN) belonging to a
    #     different account, for cross-account delivery.
    #
    #     If you're setting up a cross-account subscription, the destination
    #     must have an IAM policy associated with it. The IAM policy must
    #     allow the sender to send logs to the destination. For more
    #     information, see [PutDestinationPolicy][1].
    #
    #   * A Kinesis Data Firehose delivery stream belonging to the same
    #     account as the subscription filter, for same-account delivery.
    #
    #   * A Lambda function belonging to the same account as the subscription
    #     filter, for same-account delivery.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestinationPolicy.html
    #
    # @option params [String] :role_arn
    #   The ARN of an IAM role that grants CloudWatch Logs permissions to
    #   deliver ingested log events to the destination stream. You don't need
    #   to provide the ARN when you are working with a logical destination for
    #   cross-account delivery.
    #
    # @option params [String] :distribution
    #   The method used to distribute log data to the destination. By default,
    #   log data is grouped by log stream, but the grouping can be set to
    #   random for a more even distribution. This property is only applicable
    #   when the destination is an Amazon Kinesis data stream.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_subscription_filter({
    #     log_group_name: "LogGroupName", # required
    #     filter_name: "FilterName", # required
    #     filter_pattern: "FilterPattern", # required
    #     destination_arn: "DestinationArn", # required
    #     role_arn: "RoleArn",
    #     distribution: "Random", # accepts Random, ByLogStream
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutSubscriptionFilter AWS API Documentation
    #
    # @overload put_subscription_filter(params = {})
    # @param [Hash] params ({})
    def put_subscription_filter(params = {}, options = {})
      req = build_request(:put_subscription_filter, params)
      req.send_request(options)
    end

    # Schedules a query of a log group using CloudWatch Logs Insights. You
    # specify the log group and time range to query and the query string to
    # use.
    #
    # For more information, see [CloudWatch Logs Insights Query Syntax][1].
    #
    # After you run a query using `StartQuery`, the query results are stored
    # by CloudWatch Logs. You can use [GetQueryResults][2] to retrieve the
    # results of a query, using the `queryId` that `StartQuery` returns.
    #
    # If you have associated a KMS key with the query results in this
    # account, then [StartQuery][3] uses that key to encrypt the results
    # when it stores them. If no key is associated with query results, the
    # query results are encrypted with the default CloudWatch Logs
    # encryption method.
    #
    # Queries time out after 60 minutes of runtime. If your queries are
    # timing out, reduce the time range being searched or partition your
    # query into a number of queries.
    #
    # If you are using CloudWatch cross-account observability, you can use
    # this operation in a monitoring account to start a query in a linked
    # source account. For more information, see [CloudWatch cross-account
    # observability][4]. For a cross-account `StartQuery` operation, the
    # query definition must be defined in the monitoring account.
    #
    # You can have up to 30 concurrent CloudWatch Logs insights queries,
    # including queries that have been added to dashboards.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetQueryResults.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html
    # [4]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html
    #
    # @option params [String] :log_group_name
    #   The log group on which to perform the query.
    #
    #   <note markdown="1"> A `StartQuery` operation must include exactly one of the following
    #   parameters: `logGroupName`, `logGroupNames`, or `logGroupIdentifiers`.
    #
    #    </note>
    #
    # @option params [Array<String>] :log_group_names
    #   The list of log groups to be queried. You can include up to 50 log
    #   groups.
    #
    #   <note markdown="1"> A `StartQuery` operation must include exactly one of the following
    #   parameters: `logGroupName`, `logGroupNames`, or `logGroupIdentifiers`.
    #
    #    </note>
    #
    # @option params [Array<String>] :log_group_identifiers
    #   The list of log groups to query. You can include up to 50 log groups.
    #
    #   You can specify them by the log group name or ARN. If a log group that
    #   you're querying is in a source account and you're using a monitoring
    #   account, you must specify the ARN of the log group here. The query
    #   definition must also be defined in the monitoring account.
    #
    #   If you specify an ARN, the ARN can't end with an asterisk (*).
    #
    #   A `StartQuery` operation must include exactly one of the following
    #   parameters: `logGroupName`, `logGroupNames`, or `logGroupIdentifiers`.
    #
    # @option params [required, Integer] :start_time
    #   The beginning of the time range to query. The range is inclusive, so
    #   the specified start time is included in the query. Specified as epoch
    #   time, the number of seconds since `January 1, 1970, 00:00:00 UTC`.
    #
    # @option params [required, Integer] :end_time
    #   The end of the time range to query. The range is inclusive, so the
    #   specified end time is included in the query. Specified as epoch time,
    #   the number of seconds since `January 1, 1970, 00:00:00 UTC`.
    #
    # @option params [required, String] :query_string
    #   The query string to use. For more information, see [CloudWatch Logs
    #   Insights Query Syntax][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html
    #
    # @option params [Integer] :limit
    #   The maximum number of log events to return in the query. If the query
    #   string uses the `fields` command, only the specified fields and their
    #   values are returned. The default is 1000.
    #
    # @return [Types::StartQueryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartQueryResponse#query_id #query_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_query({
    #     log_group_name: "LogGroupName",
    #     log_group_names: ["LogGroupName"],
    #     log_group_identifiers: ["LogGroupIdentifier"],
    #     start_time: 1, # required
    #     end_time: 1, # required
    #     query_string: "QueryString", # required
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.query_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/StartQuery AWS API Documentation
    #
    # @overload start_query(params = {})
    # @param [Hash] params ({})
    def start_query(params = {}, options = {})
      req = build_request(:start_query, params)
      req.send_request(options)
    end

    # Stops a CloudWatch Logs Insights query that is in progress. If the
    # query has already ended, the operation returns an error indicating
    # that the specified query is not running.
    #
    # @option params [required, String] :query_id
    #   The ID number of the query to stop. To find this ID number, use
    #   `DescribeQueries`.
    #
    # @return [Types::StopQueryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopQueryResponse#success #success} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_query({
    #     query_id: "QueryId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.success #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/StopQuery AWS API Documentation
    #
    # @overload stop_query(params = {})
    # @param [Hash] params ({})
    def stop_query(params = {}, options = {})
      req = build_request(:stop_query, params)
      req.send_request(options)
    end

    # The TagLogGroup operation is on the path to deprecation. We recommend
    # that you use [TagResource][1] instead.
    #
    # Adds or updates the specified tags for the specified log group.
    #
    # To list the tags for a log group, use [ListTagsForResource][2]. To
    # remove tags, use [UntagResource][3].
    #
    # For more information about tags, see [Tag Log Groups in Amazon
    # CloudWatch Logs][4] in the *Amazon CloudWatch Logs User Guide*.
    #
    # CloudWatch Logs doesn’t support IAM policies that prevent users from
    # assigning specified tags to log groups using the
    # `aws:Resource/key-name ` or `aws:TagKeys` condition keys. For more
    # information about using tags to control access, see [Controlling
    # access to Amazon Web Services resources using tags][5].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_TagResource.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsForResource.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UntagResource.html
    # [4]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html#log-group-tagging
    # [5]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The key-value pairs to use for the tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_log_group({
    #     log_group_name: "LogGroupName", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/TagLogGroup AWS API Documentation
    #
    # @overload tag_log_group(params = {})
    # @param [Hash] params ({})
    def tag_log_group(params = {}, options = {})
      req = build_request(:tag_log_group, params)
      req.send_request(options)
    end

    # Assigns one or more tags (key-value pairs) to the specified CloudWatch
    # Logs resource. Currently, the only CloudWatch Logs resources that can
    # be tagged are log groups and destinations.
    #
    # Tags can help you organize and categorize your resources. You can also
    # use them to scope user permissions by granting a user permission to
    # access or change only resources with certain tag values.
    #
    # Tags don't have any semantic meaning to Amazon Web Services and are
    # interpreted strictly as strings of characters.
    #
    # You can use the `TagResource` action with a resource that already has
    # tags. If you specify a new tag key for the alarm, this tag is appended
    # to the list of tags associated with the alarm. If you specify a tag
    # key that is already associated with the alarm, the new tag value that
    # you specify replaces the previous value for that tag.
    #
    # You can associate as many as 50 tags with a CloudWatch Logs resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource that you're adding tags to.
    #
    #   The ARN format of a log group is
    #   `arn:aws:logs:Region:account-id:log-group:log-group-name `
    #
    #   The ARN format of a destination is
    #   `arn:aws:logs:Region:account-id:destination:destination-name `
    #
    #   For more information about ARN format, see [CloudWatch Logs resources
    #   and operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html
    #
    # @option params [required, Hash<String,String>] :tags
    #   The list of key-value pairs to associate with the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Tests the filter pattern of a metric filter against a sample of log
    # event messages. You can use this operation to validate the correctness
    # of a metric filter pattern.
    #
    # @option params [required, String] :filter_pattern
    #   A symbolic description of how CloudWatch Logs should interpret the
    #   data in each log event. For example, a log event can contain
    #   timestamps, IP addresses, strings, and so on. You use the filter
    #   pattern to specify what to look for in the log event message.
    #
    # @option params [required, Array<String>] :log_event_messages
    #   The log event messages to test.
    #
    # @return [Types::TestMetricFilterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestMetricFilterResponse#matches #matches} => Array&lt;Types::MetricFilterMatchRecord&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_metric_filter({
    #     filter_pattern: "FilterPattern", # required
    #     log_event_messages: ["EventMessage"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.matches #=> Array
    #   resp.matches[0].event_number #=> Integer
    #   resp.matches[0].event_message #=> String
    #   resp.matches[0].extracted_values #=> Hash
    #   resp.matches[0].extracted_values["Token"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/TestMetricFilter AWS API Documentation
    #
    # @overload test_metric_filter(params = {})
    # @param [Hash] params ({})
    def test_metric_filter(params = {}, options = {})
      req = build_request(:test_metric_filter, params)
      req.send_request(options)
    end

    # The UntagLogGroup operation is on the path to deprecation. We
    # recommend that you use [UntagResource][1] instead.
    #
    # Removes the specified tags from the specified log group.
    #
    # To list the tags for a log group, use [ListTagsForResource][2]. To add
    # tags, use [TagResource][3].
    #
    # CloudWatch Logs doesn’t support IAM policies that prevent users from
    # assigning specified tags to log groups using the
    # `aws:Resource/key-name ` or `aws:TagKeys` condition keys.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UntagResource.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsForResource.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_TagResource.html
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @option params [required, Array<String>] :tags
    #   The tag keys. The corresponding tags are removed from the log group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_log_group({
    #     log_group_name: "LogGroupName", # required
    #     tags: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/UntagLogGroup AWS API Documentation
    #
    # @overload untag_log_group(params = {})
    # @param [Hash] params ({})
    def untag_log_group(params = {}, options = {})
      req = build_request(:untag_log_group, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the CloudWatch Logs resource that you're removing tags
    #   from.
    #
    #   The ARN format of a log group is
    #   `arn:aws:logs:Region:account-id:log-group:log-group-name `
    #
    #   The ARN format of a destination is
    #   `arn:aws:logs:Region:account-id:destination:destination-name `
    #
    #   For more information about ARN format, see [CloudWatch Logs resources
    #   and operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/UntagResource AWS API Documentation
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
      context[:gem_name] = 'aws-sdk-cloudwatchlogs'
      context[:gem_version] = '1.69.0'
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
