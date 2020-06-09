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

Aws::Plugins::GlobalConfiguration.add_identifier(:glue)

module Aws::Glue
  # An API client for Glue.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Glue::Client.new(
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

    @identifier = :glue

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

    # Creates one or more partitions in a batch operation.
    #
    # @option params [String] :catalog_id
    #   The ID of the catalog in which the partition is to be created.
    #   Currently, this should be the AWS account ID.
    #
    # @option params [required, String] :database_name
    #   The name of the metadata database in which the partition is to be
    #   created.
    #
    # @option params [required, String] :table_name
    #   The name of the metadata table in which the partition is to be
    #   created.
    #
    # @option params [required, Array<Types::PartitionInput>] :partition_input_list
    #   A list of `PartitionInput` structures that define the partitions to be
    #   created.
    #
    # @return [Types::BatchCreatePartitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchCreatePartitionResponse#errors #errors} => Array&lt;Types::PartitionError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_partition({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     partition_input_list: [ # required
    #       {
    #         values: ["ValueString"],
    #         last_access_time: Time.now,
    #         storage_descriptor: {
    #           columns: [
    #             {
    #               name: "NameString", # required
    #               type: "ColumnTypeString",
    #               comment: "CommentString",
    #               parameters: {
    #                 "KeyString" => "ParametersMapValue",
    #               },
    #             },
    #           ],
    #           location: "LocationString",
    #           input_format: "FormatString",
    #           output_format: "FormatString",
    #           compressed: false,
    #           number_of_buckets: 1,
    #           serde_info: {
    #             name: "NameString",
    #             serialization_library: "NameString",
    #             parameters: {
    #               "KeyString" => "ParametersMapValue",
    #             },
    #           },
    #           bucket_columns: ["NameString"],
    #           sort_columns: [
    #             {
    #               column: "NameString", # required
    #               sort_order: 1, # required
    #             },
    #           ],
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #           skewed_info: {
    #             skewed_column_names: ["NameString"],
    #             skewed_column_values: ["ColumnValuesString"],
    #             skewed_column_value_location_maps: {
    #               "ColumnValuesString" => "ColumnValuesString",
    #             },
    #           },
    #           stored_as_sub_directories: false,
    #         },
    #         parameters: {
    #           "KeyString" => "ParametersMapValue",
    #         },
    #         last_analyzed_time: Time.now,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].partition_values #=> Array
    #   resp.errors[0].partition_values[0] #=> String
    #   resp.errors[0].error_detail.error_code #=> String
    #   resp.errors[0].error_detail.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchCreatePartition AWS API Documentation
    #
    # @overload batch_create_partition(params = {})
    # @param [Hash] params ({})
    def batch_create_partition(params = {}, options = {})
      req = build_request(:batch_create_partition, params)
      req.send_request(options)
    end

    # Deletes a list of connection definitions from the Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog in which the connections reside. If none is
    #   provided, the AWS account ID is used by default.
    #
    # @option params [required, Array<String>] :connection_name_list
    #   A list of names of the connections to delete.
    #
    # @return [Types::BatchDeleteConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteConnectionResponse#succeeded #succeeded} => Array&lt;String&gt;
    #   * {Types::BatchDeleteConnectionResponse#errors #errors} => Hash&lt;String,Types::ErrorDetail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_connection({
    #     catalog_id: "CatalogIdString",
    #     connection_name_list: ["NameString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.succeeded #=> Array
    #   resp.succeeded[0] #=> String
    #   resp.errors #=> Hash
    #   resp.errors["NameString"].error_code #=> String
    #   resp.errors["NameString"].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeleteConnection AWS API Documentation
    #
    # @overload batch_delete_connection(params = {})
    # @param [Hash] params ({})
    def batch_delete_connection(params = {}, options = {})
      req = build_request(:batch_delete_connection, params)
      req.send_request(options)
    end

    # Deletes one or more partitions in a batch operation.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the partition to be deleted resides.
    #   If none is provided, the AWS account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database in which the table in question
    #   resides.
    #
    # @option params [required, String] :table_name
    #   The name of the table that contains the partitions to be deleted.
    #
    # @option params [required, Array<Types::PartitionValueList>] :partitions_to_delete
    #   A list of `PartitionInput` structures that define the partitions to be
    #   deleted.
    #
    # @return [Types::BatchDeletePartitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeletePartitionResponse#errors #errors} => Array&lt;Types::PartitionError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_partition({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     partitions_to_delete: [ # required
    #       {
    #         values: ["ValueString"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].partition_values #=> Array
    #   resp.errors[0].partition_values[0] #=> String
    #   resp.errors[0].error_detail.error_code #=> String
    #   resp.errors[0].error_detail.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeletePartition AWS API Documentation
    #
    # @overload batch_delete_partition(params = {})
    # @param [Hash] params ({})
    def batch_delete_partition(params = {}, options = {})
      req = build_request(:batch_delete_partition, params)
      req.send_request(options)
    end

    # Deletes multiple tables at once.
    #
    # <note markdown="1"> After completing this operation, you no longer have access to the
    # table versions and partitions that belong to the deleted table. AWS
    # Glue deletes these "orphaned" resources asynchronously in a timely
    # manner, at the discretion of the service.
    #
    #  To ensure the immediate deletion of all related resources, before
    # calling `BatchDeleteTable`, use `DeleteTableVersion` or
    # `BatchDeleteTableVersion`, and `DeletePartition` or
    # `BatchDeletePartition`, to delete any resources that belong to the
    # table.
    #
    #  </note>
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the table resides. If none is
    #   provided, the AWS account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database in which the tables to delete reside.
    #   For Hive compatibility, this name is entirely lowercase.
    #
    # @option params [required, Array<String>] :tables_to_delete
    #   A list of the table to delete.
    #
    # @return [Types::BatchDeleteTableResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteTableResponse#errors #errors} => Array&lt;Types::TableError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_table({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     tables_to_delete: ["NameString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].table_name #=> String
    #   resp.errors[0].error_detail.error_code #=> String
    #   resp.errors[0].error_detail.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeleteTable AWS API Documentation
    #
    # @overload batch_delete_table(params = {})
    # @param [Hash] params ({})
    def batch_delete_table(params = {}, options = {})
      req = build_request(:batch_delete_table, params)
      req.send_request(options)
    end

    # Deletes a specified batch of versions of a table.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the tables reside. If none is
    #   provided, the AWS account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The database in the catalog in which the table resides. For Hive
    #   compatibility, this name is entirely lowercase.
    #
    # @option params [required, String] :table_name
    #   The name of the table. For Hive compatibility, this name is entirely
    #   lowercase.
    #
    # @option params [required, Array<String>] :version_ids
    #   A list of the IDs of versions to be deleted. A `VersionId` is a string
    #   representation of an integer. Each version is incremented by 1.
    #
    # @return [Types::BatchDeleteTableVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteTableVersionResponse#errors #errors} => Array&lt;Types::TableVersionError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_table_version({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     version_ids: ["VersionString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].table_name #=> String
    #   resp.errors[0].version_id #=> String
    #   resp.errors[0].error_detail.error_code #=> String
    #   resp.errors[0].error_detail.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeleteTableVersion AWS API Documentation
    #
    # @overload batch_delete_table_version(params = {})
    # @param [Hash] params ({})
    def batch_delete_table_version(params = {}, options = {})
      req = build_request(:batch_delete_table_version, params)
      req.send_request(options)
    end

    # Returns a list of resource metadata for a given list of crawler names.
    # After calling the `ListCrawlers` operation, you can call this
    # operation to access the data to which you have been granted
    # permissions. This operation supports all IAM permissions, including
    # permission conditions that uses tags.
    #
    # @option params [required, Array<String>] :crawler_names
    #   A list of crawler names, which might be the names returned from the
    #   `ListCrawlers` operation.
    #
    # @return [Types::BatchGetCrawlersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetCrawlersResponse#crawlers #crawlers} => Array&lt;Types::Crawler&gt;
    #   * {Types::BatchGetCrawlersResponse#crawlers_not_found #crawlers_not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_crawlers({
    #     crawler_names: ["NameString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.crawlers #=> Array
    #   resp.crawlers[0].name #=> String
    #   resp.crawlers[0].role #=> String
    #   resp.crawlers[0].targets.s3_targets #=> Array
    #   resp.crawlers[0].targets.s3_targets[0].path #=> String
    #   resp.crawlers[0].targets.s3_targets[0].exclusions #=> Array
    #   resp.crawlers[0].targets.s3_targets[0].exclusions[0] #=> String
    #   resp.crawlers[0].targets.jdbc_targets #=> Array
    #   resp.crawlers[0].targets.jdbc_targets[0].connection_name #=> String
    #   resp.crawlers[0].targets.jdbc_targets[0].path #=> String
    #   resp.crawlers[0].targets.jdbc_targets[0].exclusions #=> Array
    #   resp.crawlers[0].targets.jdbc_targets[0].exclusions[0] #=> String
    #   resp.crawlers[0].targets.dynamo_db_targets #=> Array
    #   resp.crawlers[0].targets.dynamo_db_targets[0].path #=> String
    #   resp.crawlers[0].targets.catalog_targets #=> Array
    #   resp.crawlers[0].targets.catalog_targets[0].database_name #=> String
    #   resp.crawlers[0].targets.catalog_targets[0].tables #=> Array
    #   resp.crawlers[0].targets.catalog_targets[0].tables[0] #=> String
    #   resp.crawlers[0].database_name #=> String
    #   resp.crawlers[0].description #=> String
    #   resp.crawlers[0].classifiers #=> Array
    #   resp.crawlers[0].classifiers[0] #=> String
    #   resp.crawlers[0].schema_change_policy.update_behavior #=> String, one of "LOG", "UPDATE_IN_DATABASE"
    #   resp.crawlers[0].schema_change_policy.delete_behavior #=> String, one of "LOG", "DELETE_FROM_DATABASE", "DEPRECATE_IN_DATABASE"
    #   resp.crawlers[0].state #=> String, one of "READY", "RUNNING", "STOPPING"
    #   resp.crawlers[0].table_prefix #=> String
    #   resp.crawlers[0].schedule.schedule_expression #=> String
    #   resp.crawlers[0].schedule.state #=> String, one of "SCHEDULED", "NOT_SCHEDULED", "TRANSITIONING"
    #   resp.crawlers[0].crawl_elapsed_time #=> Integer
    #   resp.crawlers[0].creation_time #=> Time
    #   resp.crawlers[0].last_updated #=> Time
    #   resp.crawlers[0].last_crawl.status #=> String, one of "SUCCEEDED", "CANCELLED", "FAILED"
    #   resp.crawlers[0].last_crawl.error_message #=> String
    #   resp.crawlers[0].last_crawl.log_group #=> String
    #   resp.crawlers[0].last_crawl.log_stream #=> String
    #   resp.crawlers[0].last_crawl.message_prefix #=> String
    #   resp.crawlers[0].last_crawl.start_time #=> Time
    #   resp.crawlers[0].version #=> Integer
    #   resp.crawlers[0].configuration #=> String
    #   resp.crawlers[0].crawler_security_configuration #=> String
    #   resp.crawlers_not_found #=> Array
    #   resp.crawlers_not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetCrawlers AWS API Documentation
    #
    # @overload batch_get_crawlers(params = {})
    # @param [Hash] params ({})
    def batch_get_crawlers(params = {}, options = {})
      req = build_request(:batch_get_crawlers, params)
      req.send_request(options)
    end

    # Returns a list of resource metadata for a given list of development
    # endpoint names. After calling the `ListDevEndpoints` operation, you
    # can call this operation to access the data to which you have been
    # granted permissions. This operation supports all IAM permissions,
    # including permission conditions that uses tags.
    #
    # @option params [required, Array<String>] :dev_endpoint_names
    #   The list of `DevEndpoint` names, which might be the names returned
    #   from the `ListDevEndpoint` operation.
    #
    # @return [Types::BatchGetDevEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetDevEndpointsResponse#dev_endpoints #dev_endpoints} => Array&lt;Types::DevEndpoint&gt;
    #   * {Types::BatchGetDevEndpointsResponse#dev_endpoints_not_found #dev_endpoints_not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_dev_endpoints({
    #     dev_endpoint_names: ["GenericString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dev_endpoints #=> Array
    #   resp.dev_endpoints[0].endpoint_name #=> String
    #   resp.dev_endpoints[0].role_arn #=> String
    #   resp.dev_endpoints[0].security_group_ids #=> Array
    #   resp.dev_endpoints[0].security_group_ids[0] #=> String
    #   resp.dev_endpoints[0].subnet_id #=> String
    #   resp.dev_endpoints[0].yarn_endpoint_address #=> String
    #   resp.dev_endpoints[0].private_address #=> String
    #   resp.dev_endpoints[0].zeppelin_remote_spark_interpreter_port #=> Integer
    #   resp.dev_endpoints[0].public_address #=> String
    #   resp.dev_endpoints[0].status #=> String
    #   resp.dev_endpoints[0].worker_type #=> String, one of "Standard", "G.1X", "G.2X"
    #   resp.dev_endpoints[0].glue_version #=> String
    #   resp.dev_endpoints[0].number_of_workers #=> Integer
    #   resp.dev_endpoints[0].number_of_nodes #=> Integer
    #   resp.dev_endpoints[0].availability_zone #=> String
    #   resp.dev_endpoints[0].vpc_id #=> String
    #   resp.dev_endpoints[0].extra_python_libs_s3_path #=> String
    #   resp.dev_endpoints[0].extra_jars_s3_path #=> String
    #   resp.dev_endpoints[0].failure_reason #=> String
    #   resp.dev_endpoints[0].last_update_status #=> String
    #   resp.dev_endpoints[0].created_timestamp #=> Time
    #   resp.dev_endpoints[0].last_modified_timestamp #=> Time
    #   resp.dev_endpoints[0].public_key #=> String
    #   resp.dev_endpoints[0].public_keys #=> Array
    #   resp.dev_endpoints[0].public_keys[0] #=> String
    #   resp.dev_endpoints[0].security_configuration #=> String
    #   resp.dev_endpoints[0].arguments #=> Hash
    #   resp.dev_endpoints[0].arguments["GenericString"] #=> String
    #   resp.dev_endpoints_not_found #=> Array
    #   resp.dev_endpoints_not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetDevEndpoints AWS API Documentation
    #
    # @overload batch_get_dev_endpoints(params = {})
    # @param [Hash] params ({})
    def batch_get_dev_endpoints(params = {}, options = {})
      req = build_request(:batch_get_dev_endpoints, params)
      req.send_request(options)
    end

    # Returns a list of resource metadata for a given list of job names.
    # After calling the `ListJobs` operation, you can call this operation to
    # access the data to which you have been granted permissions. This
    # operation supports all IAM permissions, including permission
    # conditions that uses tags.
    #
    # @option params [required, Array<String>] :job_names
    #   A list of job names, which might be the names returned from the
    #   `ListJobs` operation.
    #
    # @return [Types::BatchGetJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetJobsResponse#jobs #jobs} => Array&lt;Types::Job&gt;
    #   * {Types::BatchGetJobsResponse#jobs_not_found #jobs_not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_jobs({
    #     job_names: ["NameString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].name #=> String
    #   resp.jobs[0].description #=> String
    #   resp.jobs[0].log_uri #=> String
    #   resp.jobs[0].role #=> String
    #   resp.jobs[0].created_on #=> Time
    #   resp.jobs[0].last_modified_on #=> Time
    #   resp.jobs[0].execution_property.max_concurrent_runs #=> Integer
    #   resp.jobs[0].command.name #=> String
    #   resp.jobs[0].command.script_location #=> String
    #   resp.jobs[0].command.python_version #=> String
    #   resp.jobs[0].default_arguments #=> Hash
    #   resp.jobs[0].default_arguments["GenericString"] #=> String
    #   resp.jobs[0].non_overridable_arguments #=> Hash
    #   resp.jobs[0].non_overridable_arguments["GenericString"] #=> String
    #   resp.jobs[0].connections.connections #=> Array
    #   resp.jobs[0].connections.connections[0] #=> String
    #   resp.jobs[0].max_retries #=> Integer
    #   resp.jobs[0].allocated_capacity #=> Integer
    #   resp.jobs[0].timeout #=> Integer
    #   resp.jobs[0].max_capacity #=> Float
    #   resp.jobs[0].worker_type #=> String, one of "Standard", "G.1X", "G.2X"
    #   resp.jobs[0].number_of_workers #=> Integer
    #   resp.jobs[0].security_configuration #=> String
    #   resp.jobs[0].notification_property.notify_delay_after #=> Integer
    #   resp.jobs[0].glue_version #=> String
    #   resp.jobs_not_found #=> Array
    #   resp.jobs_not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetJobs AWS API Documentation
    #
    # @overload batch_get_jobs(params = {})
    # @param [Hash] params ({})
    def batch_get_jobs(params = {}, options = {})
      req = build_request(:batch_get_jobs, params)
      req.send_request(options)
    end

    # Retrieves partitions in a batch request.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the partitions in question reside. If
    #   none is supplied, the AWS account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database where the partitions reside.
    #
    # @option params [required, String] :table_name
    #   The name of the partitions' table.
    #
    # @option params [required, Array<Types::PartitionValueList>] :partitions_to_get
    #   A list of partition values identifying the partitions to retrieve.
    #
    # @return [Types::BatchGetPartitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetPartitionResponse#partitions #partitions} => Array&lt;Types::Partition&gt;
    #   * {Types::BatchGetPartitionResponse#unprocessed_keys #unprocessed_keys} => Array&lt;Types::PartitionValueList&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_partition({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     partitions_to_get: [ # required
    #       {
    #         values: ["ValueString"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.partitions #=> Array
    #   resp.partitions[0].values #=> Array
    #   resp.partitions[0].values[0] #=> String
    #   resp.partitions[0].database_name #=> String
    #   resp.partitions[0].table_name #=> String
    #   resp.partitions[0].creation_time #=> Time
    #   resp.partitions[0].last_access_time #=> Time
    #   resp.partitions[0].storage_descriptor.columns #=> Array
    #   resp.partitions[0].storage_descriptor.columns[0].name #=> String
    #   resp.partitions[0].storage_descriptor.columns[0].type #=> String
    #   resp.partitions[0].storage_descriptor.columns[0].comment #=> String
    #   resp.partitions[0].storage_descriptor.columns[0].parameters #=> Hash
    #   resp.partitions[0].storage_descriptor.columns[0].parameters["KeyString"] #=> String
    #   resp.partitions[0].storage_descriptor.location #=> String
    #   resp.partitions[0].storage_descriptor.input_format #=> String
    #   resp.partitions[0].storage_descriptor.output_format #=> String
    #   resp.partitions[0].storage_descriptor.compressed #=> Boolean
    #   resp.partitions[0].storage_descriptor.number_of_buckets #=> Integer
    #   resp.partitions[0].storage_descriptor.serde_info.name #=> String
    #   resp.partitions[0].storage_descriptor.serde_info.serialization_library #=> String
    #   resp.partitions[0].storage_descriptor.serde_info.parameters #=> Hash
    #   resp.partitions[0].storage_descriptor.serde_info.parameters["KeyString"] #=> String
    #   resp.partitions[0].storage_descriptor.bucket_columns #=> Array
    #   resp.partitions[0].storage_descriptor.bucket_columns[0] #=> String
    #   resp.partitions[0].storage_descriptor.sort_columns #=> Array
    #   resp.partitions[0].storage_descriptor.sort_columns[0].column #=> String
    #   resp.partitions[0].storage_descriptor.sort_columns[0].sort_order #=> Integer
    #   resp.partitions[0].storage_descriptor.parameters #=> Hash
    #   resp.partitions[0].storage_descriptor.parameters["KeyString"] #=> String
    #   resp.partitions[0].storage_descriptor.skewed_info.skewed_column_names #=> Array
    #   resp.partitions[0].storage_descriptor.skewed_info.skewed_column_names[0] #=> String
    #   resp.partitions[0].storage_descriptor.skewed_info.skewed_column_values #=> Array
    #   resp.partitions[0].storage_descriptor.skewed_info.skewed_column_values[0] #=> String
    #   resp.partitions[0].storage_descriptor.skewed_info.skewed_column_value_location_maps #=> Hash
    #   resp.partitions[0].storage_descriptor.skewed_info.skewed_column_value_location_maps["ColumnValuesString"] #=> String
    #   resp.partitions[0].storage_descriptor.stored_as_sub_directories #=> Boolean
    #   resp.partitions[0].parameters #=> Hash
    #   resp.partitions[0].parameters["KeyString"] #=> String
    #   resp.partitions[0].last_analyzed_time #=> Time
    #   resp.unprocessed_keys #=> Array
    #   resp.unprocessed_keys[0].values #=> Array
    #   resp.unprocessed_keys[0].values[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetPartition AWS API Documentation
    #
    # @overload batch_get_partition(params = {})
    # @param [Hash] params ({})
    def batch_get_partition(params = {}, options = {})
      req = build_request(:batch_get_partition, params)
      req.send_request(options)
    end

    # Returns a list of resource metadata for a given list of trigger names.
    # After calling the `ListTriggers` operation, you can call this
    # operation to access the data to which you have been granted
    # permissions. This operation supports all IAM permissions, including
    # permission conditions that uses tags.
    #
    # @option params [required, Array<String>] :trigger_names
    #   A list of trigger names, which may be the names returned from the
    #   `ListTriggers` operation.
    #
    # @return [Types::BatchGetTriggersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetTriggersResponse#triggers #triggers} => Array&lt;Types::Trigger&gt;
    #   * {Types::BatchGetTriggersResponse#triggers_not_found #triggers_not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_triggers({
    #     trigger_names: ["NameString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.triggers #=> Array
    #   resp.triggers[0].name #=> String
    #   resp.triggers[0].workflow_name #=> String
    #   resp.triggers[0].id #=> String
    #   resp.triggers[0].type #=> String, one of "SCHEDULED", "CONDITIONAL", "ON_DEMAND"
    #   resp.triggers[0].state #=> String, one of "CREATING", "CREATED", "ACTIVATING", "ACTIVATED", "DEACTIVATING", "DEACTIVATED", "DELETING", "UPDATING"
    #   resp.triggers[0].description #=> String
    #   resp.triggers[0].schedule #=> String
    #   resp.triggers[0].actions #=> Array
    #   resp.triggers[0].actions[0].job_name #=> String
    #   resp.triggers[0].actions[0].arguments #=> Hash
    #   resp.triggers[0].actions[0].arguments["GenericString"] #=> String
    #   resp.triggers[0].actions[0].timeout #=> Integer
    #   resp.triggers[0].actions[0].security_configuration #=> String
    #   resp.triggers[0].actions[0].notification_property.notify_delay_after #=> Integer
    #   resp.triggers[0].actions[0].crawler_name #=> String
    #   resp.triggers[0].predicate.logical #=> String, one of "AND", "ANY"
    #   resp.triggers[0].predicate.conditions #=> Array
    #   resp.triggers[0].predicate.conditions[0].logical_operator #=> String, one of "EQUALS"
    #   resp.triggers[0].predicate.conditions[0].job_name #=> String
    #   resp.triggers[0].predicate.conditions[0].state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #   resp.triggers[0].predicate.conditions[0].crawler_name #=> String
    #   resp.triggers[0].predicate.conditions[0].crawl_state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED"
    #   resp.triggers_not_found #=> Array
    #   resp.triggers_not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetTriggers AWS API Documentation
    #
    # @overload batch_get_triggers(params = {})
    # @param [Hash] params ({})
    def batch_get_triggers(params = {}, options = {})
      req = build_request(:batch_get_triggers, params)
      req.send_request(options)
    end

    # Returns a list of resource metadata for a given list of workflow
    # names. After calling the `ListWorkflows` operation, you can call this
    # operation to access the data to which you have been granted
    # permissions. This operation supports all IAM permissions, including
    # permission conditions that uses tags.
    #
    # @option params [required, Array<String>] :names
    #   A list of workflow names, which may be the names returned from the
    #   `ListWorkflows` operation.
    #
    # @option params [Boolean] :include_graph
    #   Specifies whether to include a graph when returning the workflow
    #   resource metadata.
    #
    # @return [Types::BatchGetWorkflowsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetWorkflowsResponse#workflows #workflows} => Array&lt;Types::Workflow&gt;
    #   * {Types::BatchGetWorkflowsResponse#missing_workflows #missing_workflows} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_workflows({
    #     names: ["NameString"], # required
    #     include_graph: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.workflows #=> Array
    #   resp.workflows[0].name #=> String
    #   resp.workflows[0].description #=> String
    #   resp.workflows[0].default_run_properties #=> Hash
    #   resp.workflows[0].default_run_properties["IdString"] #=> String
    #   resp.workflows[0].created_on #=> Time
    #   resp.workflows[0].last_modified_on #=> Time
    #   resp.workflows[0].last_run.name #=> String
    #   resp.workflows[0].last_run.workflow_run_id #=> String
    #   resp.workflows[0].last_run.workflow_run_properties #=> Hash
    #   resp.workflows[0].last_run.workflow_run_properties["IdString"] #=> String
    #   resp.workflows[0].last_run.started_on #=> Time
    #   resp.workflows[0].last_run.completed_on #=> Time
    #   resp.workflows[0].last_run.status #=> String, one of "RUNNING", "COMPLETED", "STOPPING", "STOPPED"
    #   resp.workflows[0].last_run.statistics.total_actions #=> Integer
    #   resp.workflows[0].last_run.statistics.timeout_actions #=> Integer
    #   resp.workflows[0].last_run.statistics.failed_actions #=> Integer
    #   resp.workflows[0].last_run.statistics.stopped_actions #=> Integer
    #   resp.workflows[0].last_run.statistics.succeeded_actions #=> Integer
    #   resp.workflows[0].last_run.statistics.running_actions #=> Integer
    #   resp.workflows[0].last_run.graph.nodes #=> Array
    #   resp.workflows[0].last_run.graph.nodes[0].type #=> String, one of "CRAWLER", "JOB", "TRIGGER"
    #   resp.workflows[0].last_run.graph.nodes[0].name #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].unique_id #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.name #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.workflow_name #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.id #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.type #=> String, one of "SCHEDULED", "CONDITIONAL", "ON_DEMAND"
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.state #=> String, one of "CREATING", "CREATED", "ACTIVATING", "ACTIVATED", "DEACTIVATING", "DEACTIVATED", "DELETING", "UPDATING"
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.description #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.schedule #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.actions #=> Array
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.actions[0].job_name #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.actions[0].arguments #=> Hash
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.actions[0].arguments["GenericString"] #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.actions[0].timeout #=> Integer
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.actions[0].security_configuration #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.actions[0].notification_property.notify_delay_after #=> Integer
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.actions[0].crawler_name #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.predicate.logical #=> String, one of "AND", "ANY"
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.predicate.conditions #=> Array
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].logical_operator #=> String, one of "EQUALS"
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].job_name #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].crawler_name #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].crawl_state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED"
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs #=> Array
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].id #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].attempt #=> Integer
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].previous_run_id #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].trigger_name #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].job_name #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].started_on #=> Time
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].last_modified_on #=> Time
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].completed_on #=> Time
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].job_run_state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].arguments #=> Hash
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].arguments["GenericString"] #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].error_message #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].predecessor_runs #=> Array
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].predecessor_runs[0].job_name #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].predecessor_runs[0].run_id #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].allocated_capacity #=> Integer
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].execution_time #=> Integer
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].timeout #=> Integer
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].max_capacity #=> Float
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].worker_type #=> String, one of "Standard", "G.1X", "G.2X"
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].number_of_workers #=> Integer
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].security_configuration #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].log_group_name #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].notification_property.notify_delay_after #=> Integer
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].glue_version #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].crawler_details.crawls #=> Array
    #   resp.workflows[0].last_run.graph.nodes[0].crawler_details.crawls[0].state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED"
    #   resp.workflows[0].last_run.graph.nodes[0].crawler_details.crawls[0].started_on #=> Time
    #   resp.workflows[0].last_run.graph.nodes[0].crawler_details.crawls[0].completed_on #=> Time
    #   resp.workflows[0].last_run.graph.nodes[0].crawler_details.crawls[0].error_message #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].crawler_details.crawls[0].log_group #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].crawler_details.crawls[0].log_stream #=> String
    #   resp.workflows[0].last_run.graph.edges #=> Array
    #   resp.workflows[0].last_run.graph.edges[0].source_id #=> String
    #   resp.workflows[0].last_run.graph.edges[0].destination_id #=> String
    #   resp.workflows[0].graph.nodes #=> Array
    #   resp.workflows[0].graph.nodes[0].type #=> String, one of "CRAWLER", "JOB", "TRIGGER"
    #   resp.workflows[0].graph.nodes[0].name #=> String
    #   resp.workflows[0].graph.nodes[0].unique_id #=> String
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.name #=> String
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.workflow_name #=> String
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.id #=> String
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.type #=> String, one of "SCHEDULED", "CONDITIONAL", "ON_DEMAND"
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.state #=> String, one of "CREATING", "CREATED", "ACTIVATING", "ACTIVATED", "DEACTIVATING", "DEACTIVATED", "DELETING", "UPDATING"
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.description #=> String
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.schedule #=> String
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.actions #=> Array
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.actions[0].job_name #=> String
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.actions[0].arguments #=> Hash
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.actions[0].arguments["GenericString"] #=> String
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.actions[0].timeout #=> Integer
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.actions[0].security_configuration #=> String
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.actions[0].notification_property.notify_delay_after #=> Integer
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.actions[0].crawler_name #=> String
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.predicate.logical #=> String, one of "AND", "ANY"
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.predicate.conditions #=> Array
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.predicate.conditions[0].logical_operator #=> String, one of "EQUALS"
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.predicate.conditions[0].job_name #=> String
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.predicate.conditions[0].state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.predicate.conditions[0].crawler_name #=> String
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.predicate.conditions[0].crawl_state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED"
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs #=> Array
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].id #=> String
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].attempt #=> Integer
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].previous_run_id #=> String
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].trigger_name #=> String
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].job_name #=> String
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].started_on #=> Time
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].last_modified_on #=> Time
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].completed_on #=> Time
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].job_run_state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].arguments #=> Hash
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].arguments["GenericString"] #=> String
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].error_message #=> String
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].predecessor_runs #=> Array
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].predecessor_runs[0].job_name #=> String
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].predecessor_runs[0].run_id #=> String
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].allocated_capacity #=> Integer
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].execution_time #=> Integer
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].timeout #=> Integer
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].max_capacity #=> Float
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].worker_type #=> String, one of "Standard", "G.1X", "G.2X"
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].number_of_workers #=> Integer
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].security_configuration #=> String
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].log_group_name #=> String
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].notification_property.notify_delay_after #=> Integer
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].glue_version #=> String
    #   resp.workflows[0].graph.nodes[0].crawler_details.crawls #=> Array
    #   resp.workflows[0].graph.nodes[0].crawler_details.crawls[0].state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED"
    #   resp.workflows[0].graph.nodes[0].crawler_details.crawls[0].started_on #=> Time
    #   resp.workflows[0].graph.nodes[0].crawler_details.crawls[0].completed_on #=> Time
    #   resp.workflows[0].graph.nodes[0].crawler_details.crawls[0].error_message #=> String
    #   resp.workflows[0].graph.nodes[0].crawler_details.crawls[0].log_group #=> String
    #   resp.workflows[0].graph.nodes[0].crawler_details.crawls[0].log_stream #=> String
    #   resp.workflows[0].graph.edges #=> Array
    #   resp.workflows[0].graph.edges[0].source_id #=> String
    #   resp.workflows[0].graph.edges[0].destination_id #=> String
    #   resp.missing_workflows #=> Array
    #   resp.missing_workflows[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetWorkflows AWS API Documentation
    #
    # @overload batch_get_workflows(params = {})
    # @param [Hash] params ({})
    def batch_get_workflows(params = {}, options = {})
      req = build_request(:batch_get_workflows, params)
      req.send_request(options)
    end

    # Stops one or more job runs for a specified job definition.
    #
    # @option params [required, String] :job_name
    #   The name of the job definition for which to stop job runs.
    #
    # @option params [required, Array<String>] :job_run_ids
    #   A list of the `JobRunIds` that should be stopped for that job
    #   definition.
    #
    # @return [Types::BatchStopJobRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchStopJobRunResponse#successful_submissions #successful_submissions} => Array&lt;Types::BatchStopJobRunSuccessfulSubmission&gt;
    #   * {Types::BatchStopJobRunResponse#errors #errors} => Array&lt;Types::BatchStopJobRunError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_stop_job_run({
    #     job_name: "NameString", # required
    #     job_run_ids: ["IdString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.successful_submissions #=> Array
    #   resp.successful_submissions[0].job_name #=> String
    #   resp.successful_submissions[0].job_run_id #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].job_name #=> String
    #   resp.errors[0].job_run_id #=> String
    #   resp.errors[0].error_detail.error_code #=> String
    #   resp.errors[0].error_detail.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchStopJobRun AWS API Documentation
    #
    # @overload batch_stop_job_run(params = {})
    # @param [Hash] params ({})
    def batch_stop_job_run(params = {}, options = {})
      req = build_request(:batch_stop_job_run, params)
      req.send_request(options)
    end

    # Cancels (stops) a task run. Machine learning task runs are
    # asynchronous tasks that AWS Glue runs on your behalf as part of
    # various machine learning workflows. You can cancel a machine learning
    # task run at any time by calling `CancelMLTaskRun` with a task run's
    # parent transform's `TransformID` and the task run's `TaskRunId`.
    #
    # @option params [required, String] :transform_id
    #   The unique identifier of the machine learning transform.
    #
    # @option params [required, String] :task_run_id
    #   A unique identifier for the task run.
    #
    # @return [Types::CancelMLTaskRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelMLTaskRunResponse#transform_id #transform_id} => String
    #   * {Types::CancelMLTaskRunResponse#task_run_id #task_run_id} => String
    #   * {Types::CancelMLTaskRunResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_ml_task_run({
    #     transform_id: "HashString", # required
    #     task_run_id: "HashString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.transform_id #=> String
    #   resp.task_run_id #=> String
    #   resp.status #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CancelMLTaskRun AWS API Documentation
    #
    # @overload cancel_ml_task_run(params = {})
    # @param [Hash] params ({})
    def cancel_ml_task_run(params = {}, options = {})
      req = build_request(:cancel_ml_task_run, params)
      req.send_request(options)
    end

    # Creates a classifier in the user's account. This can be a
    # `GrokClassifier`, an `XMLClassifier`, a `JsonClassifier`, or a
    # `CsvClassifier`, depending on which field of the request is present.
    #
    # @option params [Types::CreateGrokClassifierRequest] :grok_classifier
    #   A `GrokClassifier` object specifying the classifier to create.
    #
    # @option params [Types::CreateXMLClassifierRequest] :xml_classifier
    #   An `XMLClassifier` object specifying the classifier to create.
    #
    # @option params [Types::CreateJsonClassifierRequest] :json_classifier
    #   A `JsonClassifier` object specifying the classifier to create.
    #
    # @option params [Types::CreateCsvClassifierRequest] :csv_classifier
    #   A `CsvClassifier` object specifying the classifier to create.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_classifier({
    #     grok_classifier: {
    #       classification: "Classification", # required
    #       name: "NameString", # required
    #       grok_pattern: "GrokPattern", # required
    #       custom_patterns: "CustomPatterns",
    #     },
    #     xml_classifier: {
    #       classification: "Classification", # required
    #       name: "NameString", # required
    #       row_tag: "RowTag",
    #     },
    #     json_classifier: {
    #       name: "NameString", # required
    #       json_path: "JsonPath", # required
    #     },
    #     csv_classifier: {
    #       name: "NameString", # required
    #       delimiter: "CsvColumnDelimiter",
    #       quote_symbol: "CsvQuoteSymbol",
    #       contains_header: "UNKNOWN", # accepts UNKNOWN, PRESENT, ABSENT
    #       header: ["NameString"],
    #       disable_value_trimming: false,
    #       allow_single_column: false,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateClassifier AWS API Documentation
    #
    # @overload create_classifier(params = {})
    # @param [Hash] params ({})
    def create_classifier(params = {}, options = {})
      req = build_request(:create_classifier, params)
      req.send_request(options)
    end

    # Creates a connection definition in the Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog in which to create the connection. If none
    #   is provided, the AWS account ID is used by default.
    #
    # @option params [required, Types::ConnectionInput] :connection_input
    #   A `ConnectionInput` object defining the connection to create.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connection({
    #     catalog_id: "CatalogIdString",
    #     connection_input: { # required
    #       name: "NameString", # required
    #       description: "DescriptionString",
    #       connection_type: "JDBC", # required, accepts JDBC, SFTP, MONGODB, KAFKA
    #       match_criteria: ["NameString"],
    #       connection_properties: { # required
    #         "HOST" => "ValueString",
    #       },
    #       physical_connection_requirements: {
    #         subnet_id: "NameString",
    #         security_group_id_list: ["NameString"],
    #         availability_zone: "NameString",
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateConnection AWS API Documentation
    #
    # @overload create_connection(params = {})
    # @param [Hash] params ({})
    def create_connection(params = {}, options = {})
      req = build_request(:create_connection, params)
      req.send_request(options)
    end

    # Creates a new crawler with specified targets, role, configuration, and
    # optional schedule. At least one crawl target must be specified, in the
    # `s3Targets` field, the `jdbcTargets` field, or the `DynamoDBTargets`
    # field.
    #
    # @option params [required, String] :name
    #   Name of the new crawler.
    #
    # @option params [required, String] :role
    #   The IAM role or Amazon Resource Name (ARN) of an IAM role used by the
    #   new crawler to access customer resources.
    #
    # @option params [String] :database_name
    #   The AWS Glue database where results are written, such as:
    #   `arn:aws:daylight:us-east-1::database/sometable/*`.
    #
    # @option params [String] :description
    #   A description of the new crawler.
    #
    # @option params [required, Types::CrawlerTargets] :targets
    #   A list of collection of targets to crawl.
    #
    # @option params [String] :schedule
    #   A `cron` expression used to specify the schedule. For more
    #   information, see [Time-Based Schedules for Jobs and Crawlers][1]. For
    #   example, to run something every day at 12:15 UTC, specify `cron(15 12
    #   * * ? *)`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html
    #
    # @option params [Array<String>] :classifiers
    #   A list of custom classifiers that the user has registered. By default,
    #   all built-in classifiers are included in a crawl, but these custom
    #   classifiers always override the default classifiers for a given
    #   classification.
    #
    # @option params [String] :table_prefix
    #   The table prefix used for catalog tables that are created.
    #
    # @option params [Types::SchemaChangePolicy] :schema_change_policy
    #   The policy for the crawler's update and deletion behavior.
    #
    # @option params [String] :configuration
    #   The crawler configuration information. This versioned JSON string
    #   allows users to specify aspects of a crawler's behavior. For more
    #   information, see [Configuring a Crawler][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html
    #
    # @option params [String] :crawler_security_configuration
    #   The name of the `SecurityConfiguration` structure to be used by this
    #   crawler.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to use with this crawler request. You can use tags to limit
    #   access to the crawler. For more information, see [AWS Tags in AWS
    #   Glue][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_crawler({
    #     name: "NameString", # required
    #     role: "Role", # required
    #     database_name: "DatabaseName",
    #     description: "DescriptionString",
    #     targets: { # required
    #       s3_targets: [
    #         {
    #           path: "Path",
    #           exclusions: ["Path"],
    #         },
    #       ],
    #       jdbc_targets: [
    #         {
    #           connection_name: "ConnectionName",
    #           path: "Path",
    #           exclusions: ["Path"],
    #         },
    #       ],
    #       dynamo_db_targets: [
    #         {
    #           path: "Path",
    #         },
    #       ],
    #       catalog_targets: [
    #         {
    #           database_name: "NameString", # required
    #           tables: ["NameString"], # required
    #         },
    #       ],
    #     },
    #     schedule: "CronExpression",
    #     classifiers: ["NameString"],
    #     table_prefix: "TablePrefix",
    #     schema_change_policy: {
    #       update_behavior: "LOG", # accepts LOG, UPDATE_IN_DATABASE
    #       delete_behavior: "LOG", # accepts LOG, DELETE_FROM_DATABASE, DEPRECATE_IN_DATABASE
    #     },
    #     configuration: "CrawlerConfiguration",
    #     crawler_security_configuration: "CrawlerSecurityConfiguration",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateCrawler AWS API Documentation
    #
    # @overload create_crawler(params = {})
    # @param [Hash] params ({})
    def create_crawler(params = {}, options = {})
      req = build_request(:create_crawler, params)
      req.send_request(options)
    end

    # Creates a new database in a Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog in which to create the database. If none is
    #   provided, the AWS account ID is used by default.
    #
    # @option params [required, Types::DatabaseInput] :database_input
    #   The metadata for the database.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_database({
    #     catalog_id: "CatalogIdString",
    #     database_input: { # required
    #       name: "NameString", # required
    #       description: "DescriptionString",
    #       location_uri: "URI",
    #       parameters: {
    #         "KeyString" => "ParametersMapValue",
    #       },
    #       create_table_default_permissions: [
    #         {
    #           principal: {
    #             data_lake_principal_identifier: "DataLakePrincipalString",
    #           },
    #           permissions: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #         },
    #       ],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateDatabase AWS API Documentation
    #
    # @overload create_database(params = {})
    # @param [Hash] params ({})
    def create_database(params = {}, options = {})
      req = build_request(:create_database, params)
      req.send_request(options)
    end

    # Creates a new development endpoint.
    #
    # @option params [required, String] :endpoint_name
    #   The name to be assigned to the new `DevEndpoint`.
    #
    # @option params [required, String] :role_arn
    #   The IAM role for the `DevEndpoint`.
    #
    # @option params [Array<String>] :security_group_ids
    #   Security group IDs for the security groups to be used by the new
    #   `DevEndpoint`.
    #
    # @option params [String] :subnet_id
    #   The subnet ID for the new `DevEndpoint` to use.
    #
    # @option params [String] :public_key
    #   The public key to be used by this `DevEndpoint` for authentication.
    #   This attribute is provided for backward compatibility because the
    #   recommended attribute to use is public keys.
    #
    # @option params [Array<String>] :public_keys
    #   A list of public keys to be used by the development endpoints for
    #   authentication. The use of this attribute is preferred over a single
    #   public key because the public keys allow you to have a different
    #   private key per client.
    #
    #   <note markdown="1"> If you previously created an endpoint with a public key, you must
    #   remove that key to be able to set a list of public keys. Call the
    #   `UpdateDevEndpoint` API with the public key content in the
    #   `deletePublicKeys` attribute, and the list of new keys in the
    #   `addPublicKeys` attribute.
    #
    #    </note>
    #
    # @option params [Integer] :number_of_nodes
    #   The number of AWS Glue Data Processing Units (DPUs) to allocate to
    #   this `DevEndpoint`.
    #
    # @option params [String] :worker_type
    #   The type of predefined worker that is allocated to the development
    #   endpoint. Accepts a value of Standard, G.1X, or G.2X.
    #
    #   * For the `Standard` worker type, each worker provides 4 vCPU, 16 GB
    #     of memory and a 50GB disk, and 2 executors per worker.
    #
    #   * For the `G.1X` worker type, each worker maps to 1 DPU (4 vCPU, 16 GB
    #     of memory, 64 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for memory-intensive jobs.
    #
    #   * For the `G.2X` worker type, each worker maps to 2 DPU (8 vCPU, 32 GB
    #     of memory, 128 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for memory-intensive jobs.
    #
    #   Known issue: when a development endpoint is created with the `G.2X`
    #   `WorkerType` configuration, the Spark drivers for the development
    #   endpoint will run on 4 vCPU, 16 GB of memory, and a 64 GB disk.
    #
    # @option params [String] :glue_version
    #   Glue version determines the versions of Apache Spark and Python that
    #   AWS Glue supports. The Python version indicates the version supported
    #   for running your ETL scripts on development endpoints.
    #
    #   For more information about the available AWS Glue versions and
    #   corresponding Spark and Python versions, see [Glue version][1] in the
    #   developer guide.
    #
    #   Development endpoints that are created without specifying a Glue
    #   version default to Glue 0.9.
    #
    #   You can specify a version of Python support for development endpoints
    #   by using the `Arguments` parameter in the `CreateDevEndpoint` or
    #   `UpdateDevEndpoint` APIs. If no arguments are provided, the version
    #   defaults to Python 2.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/add-job.html
    #
    # @option params [Integer] :number_of_workers
    #   The number of workers of a defined `workerType` that are allocated to
    #   the development endpoint.
    #
    #   The maximum number of workers you can define are 299 for `G.1X`, and
    #   149 for `G.2X`.
    #
    # @option params [String] :extra_python_libs_s3_path
    #   The paths to one or more Python libraries in an Amazon S3 bucket that
    #   should be loaded in your `DevEndpoint`. Multiple values must be
    #   complete paths separated by a comma.
    #
    #   <note markdown="1"> You can only use pure Python libraries with a `DevEndpoint`. Libraries
    #   that rely on C extensions, such as the [pandas][1] Python data
    #   analysis library, are not yet supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://pandas.pydata.org/
    #
    # @option params [String] :extra_jars_s3_path
    #   The path to one or more Java `.jar` files in an S3 bucket that should
    #   be loaded in your `DevEndpoint`.
    #
    # @option params [String] :security_configuration
    #   The name of the `SecurityConfiguration` structure to be used with this
    #   `DevEndpoint`.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to use with this DevEndpoint. You may use tags to limit
    #   access to the DevEndpoint. For more information about tags in AWS
    #   Glue, see [AWS Tags in AWS Glue][1] in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html
    #
    # @option params [Hash<String,String>] :arguments
    #   A map of arguments used to configure the `DevEndpoint`.
    #
    # @return [Types::CreateDevEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDevEndpointResponse#endpoint_name #endpoint_name} => String
    #   * {Types::CreateDevEndpointResponse#status #status} => String
    #   * {Types::CreateDevEndpointResponse#security_group_ids #security_group_ids} => Array&lt;String&gt;
    #   * {Types::CreateDevEndpointResponse#subnet_id #subnet_id} => String
    #   * {Types::CreateDevEndpointResponse#role_arn #role_arn} => String
    #   * {Types::CreateDevEndpointResponse#yarn_endpoint_address #yarn_endpoint_address} => String
    #   * {Types::CreateDevEndpointResponse#zeppelin_remote_spark_interpreter_port #zeppelin_remote_spark_interpreter_port} => Integer
    #   * {Types::CreateDevEndpointResponse#number_of_nodes #number_of_nodes} => Integer
    #   * {Types::CreateDevEndpointResponse#worker_type #worker_type} => String
    #   * {Types::CreateDevEndpointResponse#glue_version #glue_version} => String
    #   * {Types::CreateDevEndpointResponse#number_of_workers #number_of_workers} => Integer
    #   * {Types::CreateDevEndpointResponse#availability_zone #availability_zone} => String
    #   * {Types::CreateDevEndpointResponse#vpc_id #vpc_id} => String
    #   * {Types::CreateDevEndpointResponse#extra_python_libs_s3_path #extra_python_libs_s3_path} => String
    #   * {Types::CreateDevEndpointResponse#extra_jars_s3_path #extra_jars_s3_path} => String
    #   * {Types::CreateDevEndpointResponse#failure_reason #failure_reason} => String
    #   * {Types::CreateDevEndpointResponse#security_configuration #security_configuration} => String
    #   * {Types::CreateDevEndpointResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::CreateDevEndpointResponse#arguments #arguments} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dev_endpoint({
    #     endpoint_name: "GenericString", # required
    #     role_arn: "RoleArn", # required
    #     security_group_ids: ["GenericString"],
    #     subnet_id: "GenericString",
    #     public_key: "GenericString",
    #     public_keys: ["GenericString"],
    #     number_of_nodes: 1,
    #     worker_type: "Standard", # accepts Standard, G.1X, G.2X
    #     glue_version: "GlueVersionString",
    #     number_of_workers: 1,
    #     extra_python_libs_s3_path: "GenericString",
    #     extra_jars_s3_path: "GenericString",
    #     security_configuration: "NameString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     arguments: {
    #       "GenericString" => "GenericString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_name #=> String
    #   resp.status #=> String
    #   resp.security_group_ids #=> Array
    #   resp.security_group_ids[0] #=> String
    #   resp.subnet_id #=> String
    #   resp.role_arn #=> String
    #   resp.yarn_endpoint_address #=> String
    #   resp.zeppelin_remote_spark_interpreter_port #=> Integer
    #   resp.number_of_nodes #=> Integer
    #   resp.worker_type #=> String, one of "Standard", "G.1X", "G.2X"
    #   resp.glue_version #=> String
    #   resp.number_of_workers #=> Integer
    #   resp.availability_zone #=> String
    #   resp.vpc_id #=> String
    #   resp.extra_python_libs_s3_path #=> String
    #   resp.extra_jars_s3_path #=> String
    #   resp.failure_reason #=> String
    #   resp.security_configuration #=> String
    #   resp.created_timestamp #=> Time
    #   resp.arguments #=> Hash
    #   resp.arguments["GenericString"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateDevEndpoint AWS API Documentation
    #
    # @overload create_dev_endpoint(params = {})
    # @param [Hash] params ({})
    def create_dev_endpoint(params = {}, options = {})
      req = build_request(:create_dev_endpoint, params)
      req.send_request(options)
    end

    # Creates a new job definition.
    #
    # @option params [required, String] :name
    #   The name you assign to this job definition. It must be unique in your
    #   account.
    #
    # @option params [String] :description
    #   Description of the job being defined.
    #
    # @option params [String] :log_uri
    #   This field is reserved for future use.
    #
    # @option params [required, String] :role
    #   The name or Amazon Resource Name (ARN) of the IAM role associated with
    #   this job.
    #
    # @option params [Types::ExecutionProperty] :execution_property
    #   An `ExecutionProperty` specifying the maximum number of concurrent
    #   runs allowed for this job.
    #
    # @option params [required, Types::JobCommand] :command
    #   The `JobCommand` that executes this job.
    #
    # @option params [Hash<String,String>] :default_arguments
    #   The default arguments for this job.
    #
    #   You can specify arguments here that your own job-execution script
    #   consumes, as well as arguments that AWS Glue itself consumes.
    #
    #   For information about how to specify and consume your own Job
    #   arguments, see the [Calling AWS Glue APIs in Python][1] topic in the
    #   developer guide.
    #
    #   For information about the key-value pairs that AWS Glue consumes to
    #   set up your job, see the [Special Parameters Used by AWS Glue][2]
    #   topic in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html
    #   [2]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html
    #
    # @option params [Hash<String,String>] :non_overridable_arguments
    #   Non-overridable arguments for this job, specified as name-value pairs.
    #
    # @option params [Types::ConnectionsList] :connections
    #   The connections used for this job.
    #
    # @option params [Integer] :max_retries
    #   The maximum number of times to retry this job if it fails.
    #
    # @option params [Integer] :allocated_capacity
    #   This parameter is deprecated. Use `MaxCapacity` instead.
    #
    #   The number of AWS Glue data processing units (DPUs) to allocate to
    #   this Job. You can allocate from 2 to 100 DPUs; the default is 10. A
    #   DPU is a relative measure of processing power that consists of 4 vCPUs
    #   of compute capacity and 16 GB of memory. For more information, see the
    #   [AWS Glue pricing page][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #
    # @option params [Integer] :timeout
    #   The job timeout in minutes. This is the maximum time that a job run
    #   can consume resources before it is terminated and enters `TIMEOUT`
    #   status. The default is 2,880 minutes (48 hours).
    #
    # @option params [Float] :max_capacity
    #   The number of AWS Glue data processing units (DPUs) that can be
    #   allocated when this job runs. A DPU is a relative measure of
    #   processing power that consists of 4 vCPUs of compute capacity and 16
    #   GB of memory. For more information, see the [AWS Glue pricing
    #   page][1].
    #
    #   Do not set `Max Capacity` if using `WorkerType` and `NumberOfWorkers`.
    #
    #   The value that can be allocated for `MaxCapacity` depends on whether
    #   you are running a Python shell job or an Apache Spark ETL job:
    #
    #   * When you specify a Python shell job
    #     (`JobCommand.Name`="pythonshell"), you can allocate either 0.0625
    #     or 1 DPU. The default is 0.0625 DPU.
    #
    #   * When you specify an Apache Spark ETL job
    #     (`JobCommand.Name`="glueetl"), you can allocate from 2 to 100
    #     DPUs. The default is 10 DPUs. This job type cannot have a fractional
    #     DPU allocation.
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #
    # @option params [String] :security_configuration
    #   The name of the `SecurityConfiguration` structure to be used with this
    #   job.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to use with this job. You may use tags to limit access to the
    #   job. For more information about tags in AWS Glue, see [AWS Tags in AWS
    #   Glue][1] in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html
    #
    # @option params [Types::NotificationProperty] :notification_property
    #   Specifies configuration properties of a job notification.
    #
    # @option params [String] :glue_version
    #   Glue version determines the versions of Apache Spark and Python that
    #   AWS Glue supports. The Python version indicates the version supported
    #   for jobs of type Spark.
    #
    #   For more information about the available AWS Glue versions and
    #   corresponding Spark and Python versions, see [Glue version][1] in the
    #   developer guide.
    #
    #   Jobs that are created without specifying a Glue version default to
    #   Glue 0.9.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/add-job.html
    #
    # @option params [Integer] :number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   when a job runs.
    #
    #   The maximum number of workers you can define are 299 for `G.1X`, and
    #   149 for `G.2X`.
    #
    # @option params [String] :worker_type
    #   The type of predefined worker that is allocated when a job runs.
    #   Accepts a value of Standard, G.1X, or G.2X.
    #
    #   * For the `Standard` worker type, each worker provides 4 vCPU, 16 GB
    #     of memory and a 50GB disk, and 2 executors per worker.
    #
    #   * For the `G.1X` worker type, each worker maps to 1 DPU (4 vCPU, 16 GB
    #     of memory, 64 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for memory-intensive jobs.
    #
    #   * For the `G.2X` worker type, each worker maps to 2 DPU (8 vCPU, 32 GB
    #     of memory, 128 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for memory-intensive jobs.
    #
    # @return [Types::CreateJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateJobResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_job({
    #     name: "NameString", # required
    #     description: "DescriptionString",
    #     log_uri: "UriString",
    #     role: "RoleString", # required
    #     execution_property: {
    #       max_concurrent_runs: 1,
    #     },
    #     command: { # required
    #       name: "GenericString",
    #       script_location: "ScriptLocationString",
    #       python_version: "PythonVersionString",
    #     },
    #     default_arguments: {
    #       "GenericString" => "GenericString",
    #     },
    #     non_overridable_arguments: {
    #       "GenericString" => "GenericString",
    #     },
    #     connections: {
    #       connections: ["GenericString"],
    #     },
    #     max_retries: 1,
    #     allocated_capacity: 1,
    #     timeout: 1,
    #     max_capacity: 1.0,
    #     security_configuration: "NameString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     notification_property: {
    #       notify_delay_after: 1,
    #     },
    #     glue_version: "GlueVersionString",
    #     number_of_workers: 1,
    #     worker_type: "Standard", # accepts Standard, G.1X, G.2X
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateJob AWS API Documentation
    #
    # @overload create_job(params = {})
    # @param [Hash] params ({})
    def create_job(params = {}, options = {})
      req = build_request(:create_job, params)
      req.send_request(options)
    end

    # Creates an AWS Glue machine learning transform. This operation creates
    # the transform and all the necessary parameters to train it.
    #
    # Call this operation as the first step in the process of using a
    # machine learning transform (such as the `FindMatches` transform) for
    # deduplicating data. You can provide an optional `Description`, in
    # addition to the parameters that you want to use for your algorithm.
    #
    # You must also specify certain parameters for the tasks that AWS Glue
    # runs on your behalf as part of learning from your data and creating a
    # high-quality machine learning transform. These parameters include
    # `Role`, and optionally, `AllocatedCapacity`, `Timeout`, and
    # `MaxRetries`. For more information, see [Jobs][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-jobs-job.html
    #
    # @option params [required, String] :name
    #   The unique name that you give the transform when you create it.
    #
    # @option params [String] :description
    #   A description of the machine learning transform that is being defined.
    #   The default is an empty string.
    #
    # @option params [required, Array<Types::GlueTable>] :input_record_tables
    #   A list of AWS Glue table definitions used by the transform.
    #
    # @option params [required, Types::TransformParameters] :parameters
    #   The algorithmic parameters that are specific to the transform type
    #   used. Conditionally dependent on the transform type.
    #
    # @option params [required, String] :role
    #   The name or Amazon Resource Name (ARN) of the IAM role with the
    #   required permissions. The required permissions include both AWS Glue
    #   service role permissions to AWS Glue resources, and Amazon S3
    #   permissions required by the transform.
    #
    #   * This role needs AWS Glue service role permissions to allow access to
    #     resources in AWS Glue. See [Attach a Policy to IAM Users That Access
    #     AWS Glue][1].
    #
    #   * This role needs permission to your Amazon Simple Storage Service
    #     (Amazon S3) sources, targets, temporary directory, scripts, and any
    #     libraries used by the task run for this transform.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/attach-policy-iam-user.html
    #
    # @option params [String] :glue_version
    #   This value determines which version of AWS Glue this machine learning
    #   transform is compatible with. Glue 1.0 is recommended for most
    #   customers. If the value is not set, the Glue compatibility defaults to
    #   Glue 0.9. For more information, see [AWS Glue Versions][1] in the
    #   developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions
    #
    # @option params [Float] :max_capacity
    #   The number of AWS Glue data processing units (DPUs) that are allocated
    #   to task runs for this transform. You can allocate from 2 to 100 DPUs;
    #   the default is 10. A DPU is a relative measure of processing power
    #   that consists of 4 vCPUs of compute capacity and 16 GB of memory. For
    #   more information, see the [AWS Glue pricing page][1].
    #
    #   `MaxCapacity` is a mutually exclusive option with `NumberOfWorkers`
    #   and `WorkerType`.
    #
    #   * If either `NumberOfWorkers` or `WorkerType` is set, then
    #     `MaxCapacity` cannot be set.
    #
    #   * If `MaxCapacity` is set then neither `NumberOfWorkers` or
    #     `WorkerType` can be set.
    #
    #   * If `WorkerType` is set, then `NumberOfWorkers` is required (and vice
    #     versa).
    #
    #   * `MaxCapacity` and `NumberOfWorkers` must both be at least 1.
    #
    #   When the `WorkerType` field is set to a value other than `Standard`,
    #   the `MaxCapacity` field is set automatically and becomes read-only.
    #
    #   When the `WorkerType` field is set to a value other than `Standard`,
    #   the `MaxCapacity` field is set automatically and becomes read-only.
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #
    # @option params [String] :worker_type
    #   The type of predefined worker that is allocated when this task runs.
    #   Accepts a value of Standard, G.1X, or G.2X.
    #
    #   * For the `Standard` worker type, each worker provides 4 vCPU, 16 GB
    #     of memory and a 50GB disk, and 2 executors per worker.
    #
    #   * For the `G.1X` worker type, each worker provides 4 vCPU, 16 GB of
    #     memory and a 64GB disk, and 1 executor per worker.
    #
    #   * For the `G.2X` worker type, each worker provides 8 vCPU, 32 GB of
    #     memory and a 128GB disk, and 1 executor per worker.
    #
    #   `MaxCapacity` is a mutually exclusive option with `NumberOfWorkers`
    #   and `WorkerType`.
    #
    #   * If either `NumberOfWorkers` or `WorkerType` is set, then
    #     `MaxCapacity` cannot be set.
    #
    #   * If `MaxCapacity` is set then neither `NumberOfWorkers` or
    #     `WorkerType` can be set.
    #
    #   * If `WorkerType` is set, then `NumberOfWorkers` is required (and vice
    #     versa).
    #
    #   * `MaxCapacity` and `NumberOfWorkers` must both be at least 1.
    #
    # @option params [Integer] :number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   when this task runs.
    #
    #   If `WorkerType` is set, then `NumberOfWorkers` is required (and vice
    #   versa).
    #
    # @option params [Integer] :timeout
    #   The timeout of the task run for this transform in minutes. This is the
    #   maximum time that a task run for this transform can consume resources
    #   before it is terminated and enters `TIMEOUT` status. The default is
    #   2,880 minutes (48 hours).
    #
    # @option params [Integer] :max_retries
    #   The maximum number of times to retry a task for this transform after a
    #   task run fails.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to use with this machine learning transform. You may use tags
    #   to limit access to the machine learning transform. For more
    #   information about tags in AWS Glue, see [AWS Tags in AWS Glue][1] in
    #   the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html
    #
    # @return [Types::CreateMLTransformResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMLTransformResponse#transform_id #transform_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ml_transform({
    #     name: "NameString", # required
    #     description: "DescriptionString",
    #     input_record_tables: [ # required
    #       {
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #         catalog_id: "NameString",
    #         connection_name: "NameString",
    #       },
    #     ],
    #     parameters: { # required
    #       transform_type: "FIND_MATCHES", # required, accepts FIND_MATCHES
    #       find_matches_parameters: {
    #         primary_key_column_name: "ColumnNameString",
    #         precision_recall_tradeoff: 1.0,
    #         accuracy_cost_tradeoff: 1.0,
    #         enforce_provided_labels: false,
    #       },
    #     },
    #     role: "RoleString", # required
    #     glue_version: "GlueVersionString",
    #     max_capacity: 1.0,
    #     worker_type: "Standard", # accepts Standard, G.1X, G.2X
    #     number_of_workers: 1,
    #     timeout: 1,
    #     max_retries: 1,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.transform_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateMLTransform AWS API Documentation
    #
    # @overload create_ml_transform(params = {})
    # @param [Hash] params ({})
    def create_ml_transform(params = {}, options = {})
      req = build_request(:create_ml_transform, params)
      req.send_request(options)
    end

    # Creates a new partition.
    #
    # @option params [String] :catalog_id
    #   The AWS account ID of the catalog in which the partition is to be
    #   created.
    #
    # @option params [required, String] :database_name
    #   The name of the metadata database in which the partition is to be
    #   created.
    #
    # @option params [required, String] :table_name
    #   The name of the metadata table in which the partition is to be
    #   created.
    #
    # @option params [required, Types::PartitionInput] :partition_input
    #   A `PartitionInput` structure defining the partition to be created.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_partition({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     partition_input: { # required
    #       values: ["ValueString"],
    #       last_access_time: Time.now,
    #       storage_descriptor: {
    #         columns: [
    #           {
    #             name: "NameString", # required
    #             type: "ColumnTypeString",
    #             comment: "CommentString",
    #             parameters: {
    #               "KeyString" => "ParametersMapValue",
    #             },
    #           },
    #         ],
    #         location: "LocationString",
    #         input_format: "FormatString",
    #         output_format: "FormatString",
    #         compressed: false,
    #         number_of_buckets: 1,
    #         serde_info: {
    #           name: "NameString",
    #           serialization_library: "NameString",
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #         },
    #         bucket_columns: ["NameString"],
    #         sort_columns: [
    #           {
    #             column: "NameString", # required
    #             sort_order: 1, # required
    #           },
    #         ],
    #         parameters: {
    #           "KeyString" => "ParametersMapValue",
    #         },
    #         skewed_info: {
    #           skewed_column_names: ["NameString"],
    #           skewed_column_values: ["ColumnValuesString"],
    #           skewed_column_value_location_maps: {
    #             "ColumnValuesString" => "ColumnValuesString",
    #           },
    #         },
    #         stored_as_sub_directories: false,
    #       },
    #       parameters: {
    #         "KeyString" => "ParametersMapValue",
    #       },
    #       last_analyzed_time: Time.now,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreatePartition AWS API Documentation
    #
    # @overload create_partition(params = {})
    # @param [Hash] params ({})
    def create_partition(params = {}, options = {})
      req = build_request(:create_partition, params)
      req.send_request(options)
    end

    # Transforms a directed acyclic graph (DAG) into code.
    #
    # @option params [Array<Types::CodeGenNode>] :dag_nodes
    #   A list of the nodes in the DAG.
    #
    # @option params [Array<Types::CodeGenEdge>] :dag_edges
    #   A list of the edges in the DAG.
    #
    # @option params [String] :language
    #   The programming language of the resulting code from the DAG.
    #
    # @return [Types::CreateScriptResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateScriptResponse#python_script #python_script} => String
    #   * {Types::CreateScriptResponse#scala_code #scala_code} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_script({
    #     dag_nodes: [
    #       {
    #         id: "CodeGenIdentifier", # required
    #         node_type: "CodeGenNodeType", # required
    #         args: [ # required
    #           {
    #             name: "CodeGenArgName", # required
    #             value: "CodeGenArgValue", # required
    #             param: false,
    #           },
    #         ],
    #         line_number: 1,
    #       },
    #     ],
    #     dag_edges: [
    #       {
    #         source: "CodeGenIdentifier", # required
    #         target: "CodeGenIdentifier", # required
    #         target_parameter: "CodeGenArgName",
    #       },
    #     ],
    #     language: "PYTHON", # accepts PYTHON, SCALA
    #   })
    #
    # @example Response structure
    #
    #   resp.python_script #=> String
    #   resp.scala_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateScript AWS API Documentation
    #
    # @overload create_script(params = {})
    # @param [Hash] params ({})
    def create_script(params = {}, options = {})
      req = build_request(:create_script, params)
      req.send_request(options)
    end

    # Creates a new security configuration. A security configuration is a
    # set of security properties that can be used by AWS Glue. You can use a
    # security configuration to encrypt data at rest. For information about
    # using security configurations in AWS Glue, see [Encrypting Data
    # Written by Crawlers, Jobs, and Development Endpoints][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/glue/latest/dg/encryption-security-configuration.html
    #
    # @option params [required, String] :name
    #   The name for the new security configuration.
    #
    # @option params [required, Types::EncryptionConfiguration] :encryption_configuration
    #   The encryption configuration for the new security configuration.
    #
    # @return [Types::CreateSecurityConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSecurityConfigurationResponse#name #name} => String
    #   * {Types::CreateSecurityConfigurationResponse#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_security_configuration({
    #     name: "NameString", # required
    #     encryption_configuration: { # required
    #       s3_encryption: [
    #         {
    #           s3_encryption_mode: "DISABLED", # accepts DISABLED, SSE-KMS, SSE-S3
    #           kms_key_arn: "KmsKeyArn",
    #         },
    #       ],
    #       cloud_watch_encryption: {
    #         cloud_watch_encryption_mode: "DISABLED", # accepts DISABLED, SSE-KMS
    #         kms_key_arn: "KmsKeyArn",
    #       },
    #       job_bookmarks_encryption: {
    #         job_bookmarks_encryption_mode: "DISABLED", # accepts DISABLED, CSE-KMS
    #         kms_key_arn: "KmsKeyArn",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateSecurityConfiguration AWS API Documentation
    #
    # @overload create_security_configuration(params = {})
    # @param [Hash] params ({})
    def create_security_configuration(params = {}, options = {})
      req = build_request(:create_security_configuration, params)
      req.send_request(options)
    end

    # Creates a new table definition in the Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog in which to create the `Table`. If none is
    #   supplied, the AWS account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The catalog database in which to create the new table. For Hive
    #   compatibility, this name is entirely lowercase.
    #
    # @option params [required, Types::TableInput] :table_input
    #   The `TableInput` object that defines the metadata table to create in
    #   the catalog.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_table({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_input: { # required
    #       name: "NameString", # required
    #       description: "DescriptionString",
    #       owner: "NameString",
    #       last_access_time: Time.now,
    #       last_analyzed_time: Time.now,
    #       retention: 1,
    #       storage_descriptor: {
    #         columns: [
    #           {
    #             name: "NameString", # required
    #             type: "ColumnTypeString",
    #             comment: "CommentString",
    #             parameters: {
    #               "KeyString" => "ParametersMapValue",
    #             },
    #           },
    #         ],
    #         location: "LocationString",
    #         input_format: "FormatString",
    #         output_format: "FormatString",
    #         compressed: false,
    #         number_of_buckets: 1,
    #         serde_info: {
    #           name: "NameString",
    #           serialization_library: "NameString",
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #         },
    #         bucket_columns: ["NameString"],
    #         sort_columns: [
    #           {
    #             column: "NameString", # required
    #             sort_order: 1, # required
    #           },
    #         ],
    #         parameters: {
    #           "KeyString" => "ParametersMapValue",
    #         },
    #         skewed_info: {
    #           skewed_column_names: ["NameString"],
    #           skewed_column_values: ["ColumnValuesString"],
    #           skewed_column_value_location_maps: {
    #             "ColumnValuesString" => "ColumnValuesString",
    #           },
    #         },
    #         stored_as_sub_directories: false,
    #       },
    #       partition_keys: [
    #         {
    #           name: "NameString", # required
    #           type: "ColumnTypeString",
    #           comment: "CommentString",
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #         },
    #       ],
    #       view_original_text: "ViewTextString",
    #       view_expanded_text: "ViewTextString",
    #       table_type: "TableTypeString",
    #       parameters: {
    #         "KeyString" => "ParametersMapValue",
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateTable AWS API Documentation
    #
    # @overload create_table(params = {})
    # @param [Hash] params ({})
    def create_table(params = {}, options = {})
      req = build_request(:create_table, params)
      req.send_request(options)
    end

    # Creates a new trigger.
    #
    # @option params [required, String] :name
    #   The name of the trigger.
    #
    # @option params [String] :workflow_name
    #   The name of the workflow associated with the trigger.
    #
    # @option params [required, String] :type
    #   The type of the new trigger.
    #
    # @option params [String] :schedule
    #   A `cron` expression used to specify the schedule (see [Time-Based
    #   Schedules for Jobs and Crawlers][1]. For example, to run something
    #   every day at 12:15 UTC, you would specify: `cron(15 12 * * ? *)`.
    #
    #   This field is required when the trigger type is SCHEDULED.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html
    #
    # @option params [Types::Predicate] :predicate
    #   A predicate to specify when the new trigger should fire.
    #
    #   This field is required when the trigger type is `CONDITIONAL`.
    #
    # @option params [required, Array<Types::Action>] :actions
    #   The actions initiated by this trigger when it fires.
    #
    # @option params [String] :description
    #   A description of the new trigger.
    #
    # @option params [Boolean] :start_on_creation
    #   Set to `true` to start `SCHEDULED` and `CONDITIONAL` triggers when
    #   created. True is not supported for `ON_DEMAND` triggers.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to use with this trigger. You may use tags to limit access to
    #   the trigger. For more information about tags in AWS Glue, see [AWS
    #   Tags in AWS Glue][1] in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html
    #
    # @return [Types::CreateTriggerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTriggerResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_trigger({
    #     name: "NameString", # required
    #     workflow_name: "NameString",
    #     type: "SCHEDULED", # required, accepts SCHEDULED, CONDITIONAL, ON_DEMAND
    #     schedule: "GenericString",
    #     predicate: {
    #       logical: "AND", # accepts AND, ANY
    #       conditions: [
    #         {
    #           logical_operator: "EQUALS", # accepts EQUALS
    #           job_name: "NameString",
    #           state: "STARTING", # accepts STARTING, RUNNING, STOPPING, STOPPED, SUCCEEDED, FAILED, TIMEOUT
    #           crawler_name: "NameString",
    #           crawl_state: "RUNNING", # accepts RUNNING, CANCELLING, CANCELLED, SUCCEEDED, FAILED
    #         },
    #       ],
    #     },
    #     actions: [ # required
    #       {
    #         job_name: "NameString",
    #         arguments: {
    #           "GenericString" => "GenericString",
    #         },
    #         timeout: 1,
    #         security_configuration: "NameString",
    #         notification_property: {
    #           notify_delay_after: 1,
    #         },
    #         crawler_name: "NameString",
    #       },
    #     ],
    #     description: "DescriptionString",
    #     start_on_creation: false,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateTrigger AWS API Documentation
    #
    # @overload create_trigger(params = {})
    # @param [Hash] params ({})
    def create_trigger(params = {}, options = {})
      req = build_request(:create_trigger, params)
      req.send_request(options)
    end

    # Creates a new function definition in the Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog in which to create the function. If none is
    #   provided, the AWS account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database in which to create the function.
    #
    # @option params [required, Types::UserDefinedFunctionInput] :function_input
    #   A `FunctionInput` object that defines the function to create in the
    #   Data Catalog.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_defined_function({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     function_input: { # required
    #       function_name: "NameString",
    #       class_name: "NameString",
    #       owner_name: "NameString",
    #       owner_type: "USER", # accepts USER, ROLE, GROUP
    #       resource_uris: [
    #         {
    #           resource_type: "JAR", # accepts JAR, FILE, ARCHIVE
    #           uri: "URI",
    #         },
    #       ],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateUserDefinedFunction AWS API Documentation
    #
    # @overload create_user_defined_function(params = {})
    # @param [Hash] params ({})
    def create_user_defined_function(params = {}, options = {})
      req = build_request(:create_user_defined_function, params)
      req.send_request(options)
    end

    # Creates a new workflow.
    #
    # @option params [required, String] :name
    #   The name to be assigned to the workflow. It should be unique within
    #   your account.
    #
    # @option params [String] :description
    #   A description of the workflow.
    #
    # @option params [Hash<String,String>] :default_run_properties
    #   A collection of properties to be used as part of each execution of the
    #   workflow.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to be used with this workflow.
    #
    # @return [Types::CreateWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkflowResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workflow({
    #     name: "NameString", # required
    #     description: "GenericString",
    #     default_run_properties: {
    #       "IdString" => "GenericString",
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateWorkflow AWS API Documentation
    #
    # @overload create_workflow(params = {})
    # @param [Hash] params ({})
    def create_workflow(params = {}, options = {})
      req = build_request(:create_workflow, params)
      req.send_request(options)
    end

    # Removes a classifier from the Data Catalog.
    #
    # @option params [required, String] :name
    #   Name of the classifier to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_classifier({
    #     name: "NameString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteClassifier AWS API Documentation
    #
    # @overload delete_classifier(params = {})
    # @param [Hash] params ({})
    def delete_classifier(params = {}, options = {})
      req = build_request(:delete_classifier, params)
      req.send_request(options)
    end

    # Deletes a connection from the Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog in which the connection resides. If none is
    #   provided, the AWS account ID is used by default.
    #
    # @option params [required, String] :connection_name
    #   The name of the connection to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connection({
    #     catalog_id: "CatalogIdString",
    #     connection_name: "NameString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteConnection AWS API Documentation
    #
    # @overload delete_connection(params = {})
    # @param [Hash] params ({})
    def delete_connection(params = {}, options = {})
      req = build_request(:delete_connection, params)
      req.send_request(options)
    end

    # Removes a specified crawler from the AWS Glue Data Catalog, unless the
    # crawler state is `RUNNING`.
    #
    # @option params [required, String] :name
    #   The name of the crawler to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_crawler({
    #     name: "NameString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteCrawler AWS API Documentation
    #
    # @overload delete_crawler(params = {})
    # @param [Hash] params ({})
    def delete_crawler(params = {}, options = {})
      req = build_request(:delete_crawler, params)
      req.send_request(options)
    end

    # Removes a specified database from a Data Catalog.
    #
    # <note markdown="1"> After completing this operation, you no longer have access to the
    # tables (and all table versions and partitions that might belong to the
    # tables) and the user-defined functions in the deleted database. AWS
    # Glue deletes these "orphaned" resources asynchronously in a timely
    # manner, at the discretion of the service.
    #
    #  To ensure the immediate deletion of all related resources, before
    # calling `DeleteDatabase`, use `DeleteTableVersion` or
    # `BatchDeleteTableVersion`, `DeletePartition` or
    # `BatchDeletePartition`, `DeleteUserDefinedFunction`, and `DeleteTable`
    # or `BatchDeleteTable`, to delete any resources that belong to the
    # database.
    #
    #  </note>
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog in which the database resides. If none is
    #   provided, the AWS account ID is used by default.
    #
    # @option params [required, String] :name
    #   The name of the database to delete. For Hive compatibility, this must
    #   be all lowercase.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_database({
    #     catalog_id: "CatalogIdString",
    #     name: "NameString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteDatabase AWS API Documentation
    #
    # @overload delete_database(params = {})
    # @param [Hash] params ({})
    def delete_database(params = {}, options = {})
      req = build_request(:delete_database, params)
      req.send_request(options)
    end

    # Deletes a specified development endpoint.
    #
    # @option params [required, String] :endpoint_name
    #   The name of the `DevEndpoint`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dev_endpoint({
    #     endpoint_name: "GenericString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteDevEndpoint AWS API Documentation
    #
    # @overload delete_dev_endpoint(params = {})
    # @param [Hash] params ({})
    def delete_dev_endpoint(params = {}, options = {})
      req = build_request(:delete_dev_endpoint, params)
      req.send_request(options)
    end

    # Deletes a specified job definition. If the job definition is not
    # found, no exception is thrown.
    #
    # @option params [required, String] :job_name
    #   The name of the job definition to delete.
    #
    # @return [Types::DeleteJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteJobResponse#job_name #job_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_job({
    #     job_name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteJob AWS API Documentation
    #
    # @overload delete_job(params = {})
    # @param [Hash] params ({})
    def delete_job(params = {}, options = {})
      req = build_request(:delete_job, params)
      req.send_request(options)
    end

    # Deletes an AWS Glue machine learning transform. Machine learning
    # transforms are a special type of transform that use machine learning
    # to learn the details of the transformation to be performed by learning
    # from examples provided by humans. These transformations are then saved
    # by AWS Glue. If you no longer need a transform, you can delete it by
    # calling `DeleteMLTransforms`. However, any AWS Glue jobs that still
    # reference the deleted transform will no longer succeed.
    #
    # @option params [required, String] :transform_id
    #   The unique identifier of the transform to delete.
    #
    # @return [Types::DeleteMLTransformResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteMLTransformResponse#transform_id #transform_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ml_transform({
    #     transform_id: "HashString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.transform_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteMLTransform AWS API Documentation
    #
    # @overload delete_ml_transform(params = {})
    # @param [Hash] params ({})
    def delete_ml_transform(params = {}, options = {})
      req = build_request(:delete_ml_transform, params)
      req.send_request(options)
    end

    # Deletes a specified partition.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the partition to be deleted resides.
    #   If none is provided, the AWS account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database in which the table in question
    #   resides.
    #
    # @option params [required, String] :table_name
    #   The name of the table that contains the partition to be deleted.
    #
    # @option params [required, Array<String>] :partition_values
    #   The values that define the partition.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_partition({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     partition_values: ["ValueString"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeletePartition AWS API Documentation
    #
    # @overload delete_partition(params = {})
    # @param [Hash] params ({})
    def delete_partition(params = {}, options = {})
      req = build_request(:delete_partition, params)
      req.send_request(options)
    end

    # Deletes a specified policy.
    #
    # @option params [String] :policy_hash_condition
    #   The hash value returned when this policy was set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy({
    #     policy_hash_condition: "HashString",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteResourcePolicy AWS API Documentation
    #
    # @overload delete_resource_policy(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy(params = {}, options = {})
      req = build_request(:delete_resource_policy, params)
      req.send_request(options)
    end

    # Deletes a specified security configuration.
    #
    # @option params [required, String] :name
    #   The name of the security configuration to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_security_configuration({
    #     name: "NameString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteSecurityConfiguration AWS API Documentation
    #
    # @overload delete_security_configuration(params = {})
    # @param [Hash] params ({})
    def delete_security_configuration(params = {}, options = {})
      req = build_request(:delete_security_configuration, params)
      req.send_request(options)
    end

    # Removes a table definition from the Data Catalog.
    #
    # <note markdown="1"> After completing this operation, you no longer have access to the
    # table versions and partitions that belong to the deleted table. AWS
    # Glue deletes these "orphaned" resources asynchronously in a timely
    # manner, at the discretion of the service.
    #
    #  To ensure the immediate deletion of all related resources, before
    # calling `DeleteTable`, use `DeleteTableVersion` or
    # `BatchDeleteTableVersion`, and `DeletePartition` or
    # `BatchDeletePartition`, to delete any resources that belong to the
    # table.
    #
    #  </note>
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the table resides. If none is
    #   provided, the AWS account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database in which the table resides. For Hive
    #   compatibility, this name is entirely lowercase.
    #
    # @option params [required, String] :name
    #   The name of the table to be deleted. For Hive compatibility, this name
    #   is entirely lowercase.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_table({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     name: "NameString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteTable AWS API Documentation
    #
    # @overload delete_table(params = {})
    # @param [Hash] params ({})
    def delete_table(params = {}, options = {})
      req = build_request(:delete_table, params)
      req.send_request(options)
    end

    # Deletes a specified version of a table.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the tables reside. If none is
    #   provided, the AWS account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The database in the catalog in which the table resides. For Hive
    #   compatibility, this name is entirely lowercase.
    #
    # @option params [required, String] :table_name
    #   The name of the table. For Hive compatibility, this name is entirely
    #   lowercase.
    #
    # @option params [required, String] :version_id
    #   The ID of the table version to be deleted. A `VersionID` is a string
    #   representation of an integer. Each version is incremented by 1.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_table_version({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     version_id: "VersionString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteTableVersion AWS API Documentation
    #
    # @overload delete_table_version(params = {})
    # @param [Hash] params ({})
    def delete_table_version(params = {}, options = {})
      req = build_request(:delete_table_version, params)
      req.send_request(options)
    end

    # Deletes a specified trigger. If the trigger is not found, no exception
    # is thrown.
    #
    # @option params [required, String] :name
    #   The name of the trigger to delete.
    #
    # @return [Types::DeleteTriggerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTriggerResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_trigger({
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteTrigger AWS API Documentation
    #
    # @overload delete_trigger(params = {})
    # @param [Hash] params ({})
    def delete_trigger(params = {}, options = {})
      req = build_request(:delete_trigger, params)
      req.send_request(options)
    end

    # Deletes an existing function definition from the Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the function to be deleted is
    #   located. If none is supplied, the AWS account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database where the function is located.
    #
    # @option params [required, String] :function_name
    #   The name of the function definition to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_defined_function({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     function_name: "NameString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteUserDefinedFunction AWS API Documentation
    #
    # @overload delete_user_defined_function(params = {})
    # @param [Hash] params ({})
    def delete_user_defined_function(params = {}, options = {})
      req = build_request(:delete_user_defined_function, params)
      req.send_request(options)
    end

    # Deletes a workflow.
    #
    # @option params [required, String] :name
    #   Name of the workflow to be deleted.
    #
    # @return [Types::DeleteWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteWorkflowResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workflow({
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteWorkflow AWS API Documentation
    #
    # @overload delete_workflow(params = {})
    # @param [Hash] params ({})
    def delete_workflow(params = {}, options = {})
      req = build_request(:delete_workflow, params)
      req.send_request(options)
    end

    # Retrieves the status of a migration operation.
    #
    # @option params [String] :catalog_id
    #   The ID of the catalog to migrate. Currently, this should be the AWS
    #   account ID.
    #
    # @return [Types::GetCatalogImportStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCatalogImportStatusResponse#import_status #import_status} => Types::CatalogImportStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_catalog_import_status({
    #     catalog_id: "CatalogIdString",
    #   })
    #
    # @example Response structure
    #
    #   resp.import_status.import_completed #=> Boolean
    #   resp.import_status.import_time #=> Time
    #   resp.import_status.imported_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCatalogImportStatus AWS API Documentation
    #
    # @overload get_catalog_import_status(params = {})
    # @param [Hash] params ({})
    def get_catalog_import_status(params = {}, options = {})
      req = build_request(:get_catalog_import_status, params)
      req.send_request(options)
    end

    # Retrieve a classifier by name.
    #
    # @option params [required, String] :name
    #   Name of the classifier to retrieve.
    #
    # @return [Types::GetClassifierResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetClassifierResponse#classifier #classifier} => Types::Classifier
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_classifier({
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.classifier.grok_classifier.name #=> String
    #   resp.classifier.grok_classifier.classification #=> String
    #   resp.classifier.grok_classifier.creation_time #=> Time
    #   resp.classifier.grok_classifier.last_updated #=> Time
    #   resp.classifier.grok_classifier.version #=> Integer
    #   resp.classifier.grok_classifier.grok_pattern #=> String
    #   resp.classifier.grok_classifier.custom_patterns #=> String
    #   resp.classifier.xml_classifier.name #=> String
    #   resp.classifier.xml_classifier.classification #=> String
    #   resp.classifier.xml_classifier.creation_time #=> Time
    #   resp.classifier.xml_classifier.last_updated #=> Time
    #   resp.classifier.xml_classifier.version #=> Integer
    #   resp.classifier.xml_classifier.row_tag #=> String
    #   resp.classifier.json_classifier.name #=> String
    #   resp.classifier.json_classifier.creation_time #=> Time
    #   resp.classifier.json_classifier.last_updated #=> Time
    #   resp.classifier.json_classifier.version #=> Integer
    #   resp.classifier.json_classifier.json_path #=> String
    #   resp.classifier.csv_classifier.name #=> String
    #   resp.classifier.csv_classifier.creation_time #=> Time
    #   resp.classifier.csv_classifier.last_updated #=> Time
    #   resp.classifier.csv_classifier.version #=> Integer
    #   resp.classifier.csv_classifier.delimiter #=> String
    #   resp.classifier.csv_classifier.quote_symbol #=> String
    #   resp.classifier.csv_classifier.contains_header #=> String, one of "UNKNOWN", "PRESENT", "ABSENT"
    #   resp.classifier.csv_classifier.header #=> Array
    #   resp.classifier.csv_classifier.header[0] #=> String
    #   resp.classifier.csv_classifier.disable_value_trimming #=> Boolean
    #   resp.classifier.csv_classifier.allow_single_column #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetClassifier AWS API Documentation
    #
    # @overload get_classifier(params = {})
    # @param [Hash] params ({})
    def get_classifier(params = {}, options = {})
      req = build_request(:get_classifier, params)
      req.send_request(options)
    end

    # Lists all classifier objects in the Data Catalog.
    #
    # @option params [Integer] :max_results
    #   The size of the list to return (optional).
    #
    # @option params [String] :next_token
    #   An optional continuation token.
    #
    # @return [Types::GetClassifiersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetClassifiersResponse#classifiers #classifiers} => Array&lt;Types::Classifier&gt;
    #   * {Types::GetClassifiersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_classifiers({
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.classifiers #=> Array
    #   resp.classifiers[0].grok_classifier.name #=> String
    #   resp.classifiers[0].grok_classifier.classification #=> String
    #   resp.classifiers[0].grok_classifier.creation_time #=> Time
    #   resp.classifiers[0].grok_classifier.last_updated #=> Time
    #   resp.classifiers[0].grok_classifier.version #=> Integer
    #   resp.classifiers[0].grok_classifier.grok_pattern #=> String
    #   resp.classifiers[0].grok_classifier.custom_patterns #=> String
    #   resp.classifiers[0].xml_classifier.name #=> String
    #   resp.classifiers[0].xml_classifier.classification #=> String
    #   resp.classifiers[0].xml_classifier.creation_time #=> Time
    #   resp.classifiers[0].xml_classifier.last_updated #=> Time
    #   resp.classifiers[0].xml_classifier.version #=> Integer
    #   resp.classifiers[0].xml_classifier.row_tag #=> String
    #   resp.classifiers[0].json_classifier.name #=> String
    #   resp.classifiers[0].json_classifier.creation_time #=> Time
    #   resp.classifiers[0].json_classifier.last_updated #=> Time
    #   resp.classifiers[0].json_classifier.version #=> Integer
    #   resp.classifiers[0].json_classifier.json_path #=> String
    #   resp.classifiers[0].csv_classifier.name #=> String
    #   resp.classifiers[0].csv_classifier.creation_time #=> Time
    #   resp.classifiers[0].csv_classifier.last_updated #=> Time
    #   resp.classifiers[0].csv_classifier.version #=> Integer
    #   resp.classifiers[0].csv_classifier.delimiter #=> String
    #   resp.classifiers[0].csv_classifier.quote_symbol #=> String
    #   resp.classifiers[0].csv_classifier.contains_header #=> String, one of "UNKNOWN", "PRESENT", "ABSENT"
    #   resp.classifiers[0].csv_classifier.header #=> Array
    #   resp.classifiers[0].csv_classifier.header[0] #=> String
    #   resp.classifiers[0].csv_classifier.disable_value_trimming #=> Boolean
    #   resp.classifiers[0].csv_classifier.allow_single_column #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetClassifiers AWS API Documentation
    #
    # @overload get_classifiers(params = {})
    # @param [Hash] params ({})
    def get_classifiers(params = {}, options = {})
      req = build_request(:get_classifiers, params)
      req.send_request(options)
    end

    # Retrieves a connection definition from the Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog in which the connection resides. If none is
    #   provided, the AWS account ID is used by default.
    #
    # @option params [required, String] :name
    #   The name of the connection definition to retrieve.
    #
    # @option params [Boolean] :hide_password
    #   Allows you to retrieve the connection metadata without returning the
    #   password. For instance, the AWS Glue console uses this flag to
    #   retrieve the connection, and does not display the password. Set this
    #   parameter when the caller might not have permission to use the AWS KMS
    #   key to decrypt the password, but it does have permission to access the
    #   rest of the connection properties.
    #
    # @return [Types::GetConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConnectionResponse#connection #connection} => Types::Connection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connection({
    #     catalog_id: "CatalogIdString",
    #     name: "NameString", # required
    #     hide_password: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.connection.name #=> String
    #   resp.connection.description #=> String
    #   resp.connection.connection_type #=> String, one of "JDBC", "SFTP", "MONGODB", "KAFKA"
    #   resp.connection.match_criteria #=> Array
    #   resp.connection.match_criteria[0] #=> String
    #   resp.connection.connection_properties #=> Hash
    #   resp.connection.connection_properties["ConnectionPropertyKey"] #=> String
    #   resp.connection.physical_connection_requirements.subnet_id #=> String
    #   resp.connection.physical_connection_requirements.security_group_id_list #=> Array
    #   resp.connection.physical_connection_requirements.security_group_id_list[0] #=> String
    #   resp.connection.physical_connection_requirements.availability_zone #=> String
    #   resp.connection.creation_time #=> Time
    #   resp.connection.last_updated_time #=> Time
    #   resp.connection.last_updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetConnection AWS API Documentation
    #
    # @overload get_connection(params = {})
    # @param [Hash] params ({})
    def get_connection(params = {}, options = {})
      req = build_request(:get_connection, params)
      req.send_request(options)
    end

    # Retrieves a list of connection definitions from the Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog in which the connections reside. If none is
    #   provided, the AWS account ID is used by default.
    #
    # @option params [Types::GetConnectionsFilter] :filter
    #   A filter that controls which connections are returned.
    #
    # @option params [Boolean] :hide_password
    #   Allows you to retrieve the connection metadata without returning the
    #   password. For instance, the AWS Glue console uses this flag to
    #   retrieve the connection, and does not display the password. Set this
    #   parameter when the caller might not have permission to use the AWS KMS
    #   key to decrypt the password, but it does have permission to access the
    #   rest of the connection properties.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of connections to return in one response.
    #
    # @return [Types::GetConnectionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConnectionsResponse#connection_list #connection_list} => Array&lt;Types::Connection&gt;
    #   * {Types::GetConnectionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connections({
    #     catalog_id: "CatalogIdString",
    #     filter: {
    #       match_criteria: ["NameString"],
    #       connection_type: "JDBC", # accepts JDBC, SFTP, MONGODB, KAFKA
    #     },
    #     hide_password: false,
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.connection_list #=> Array
    #   resp.connection_list[0].name #=> String
    #   resp.connection_list[0].description #=> String
    #   resp.connection_list[0].connection_type #=> String, one of "JDBC", "SFTP", "MONGODB", "KAFKA"
    #   resp.connection_list[0].match_criteria #=> Array
    #   resp.connection_list[0].match_criteria[0] #=> String
    #   resp.connection_list[0].connection_properties #=> Hash
    #   resp.connection_list[0].connection_properties["ConnectionPropertyKey"] #=> String
    #   resp.connection_list[0].physical_connection_requirements.subnet_id #=> String
    #   resp.connection_list[0].physical_connection_requirements.security_group_id_list #=> Array
    #   resp.connection_list[0].physical_connection_requirements.security_group_id_list[0] #=> String
    #   resp.connection_list[0].physical_connection_requirements.availability_zone #=> String
    #   resp.connection_list[0].creation_time #=> Time
    #   resp.connection_list[0].last_updated_time #=> Time
    #   resp.connection_list[0].last_updated_by #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetConnections AWS API Documentation
    #
    # @overload get_connections(params = {})
    # @param [Hash] params ({})
    def get_connections(params = {}, options = {})
      req = build_request(:get_connections, params)
      req.send_request(options)
    end

    # Retrieves metadata for a specified crawler.
    #
    # @option params [required, String] :name
    #   The name of the crawler to retrieve metadata for.
    #
    # @return [Types::GetCrawlerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCrawlerResponse#crawler #crawler} => Types::Crawler
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_crawler({
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.crawler.name #=> String
    #   resp.crawler.role #=> String
    #   resp.crawler.targets.s3_targets #=> Array
    #   resp.crawler.targets.s3_targets[0].path #=> String
    #   resp.crawler.targets.s3_targets[0].exclusions #=> Array
    #   resp.crawler.targets.s3_targets[0].exclusions[0] #=> String
    #   resp.crawler.targets.jdbc_targets #=> Array
    #   resp.crawler.targets.jdbc_targets[0].connection_name #=> String
    #   resp.crawler.targets.jdbc_targets[0].path #=> String
    #   resp.crawler.targets.jdbc_targets[0].exclusions #=> Array
    #   resp.crawler.targets.jdbc_targets[0].exclusions[0] #=> String
    #   resp.crawler.targets.dynamo_db_targets #=> Array
    #   resp.crawler.targets.dynamo_db_targets[0].path #=> String
    #   resp.crawler.targets.catalog_targets #=> Array
    #   resp.crawler.targets.catalog_targets[0].database_name #=> String
    #   resp.crawler.targets.catalog_targets[0].tables #=> Array
    #   resp.crawler.targets.catalog_targets[0].tables[0] #=> String
    #   resp.crawler.database_name #=> String
    #   resp.crawler.description #=> String
    #   resp.crawler.classifiers #=> Array
    #   resp.crawler.classifiers[0] #=> String
    #   resp.crawler.schema_change_policy.update_behavior #=> String, one of "LOG", "UPDATE_IN_DATABASE"
    #   resp.crawler.schema_change_policy.delete_behavior #=> String, one of "LOG", "DELETE_FROM_DATABASE", "DEPRECATE_IN_DATABASE"
    #   resp.crawler.state #=> String, one of "READY", "RUNNING", "STOPPING"
    #   resp.crawler.table_prefix #=> String
    #   resp.crawler.schedule.schedule_expression #=> String
    #   resp.crawler.schedule.state #=> String, one of "SCHEDULED", "NOT_SCHEDULED", "TRANSITIONING"
    #   resp.crawler.crawl_elapsed_time #=> Integer
    #   resp.crawler.creation_time #=> Time
    #   resp.crawler.last_updated #=> Time
    #   resp.crawler.last_crawl.status #=> String, one of "SUCCEEDED", "CANCELLED", "FAILED"
    #   resp.crawler.last_crawl.error_message #=> String
    #   resp.crawler.last_crawl.log_group #=> String
    #   resp.crawler.last_crawl.log_stream #=> String
    #   resp.crawler.last_crawl.message_prefix #=> String
    #   resp.crawler.last_crawl.start_time #=> Time
    #   resp.crawler.version #=> Integer
    #   resp.crawler.configuration #=> String
    #   resp.crawler.crawler_security_configuration #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCrawler AWS API Documentation
    #
    # @overload get_crawler(params = {})
    # @param [Hash] params ({})
    def get_crawler(params = {}, options = {})
      req = build_request(:get_crawler, params)
      req.send_request(options)
    end

    # Retrieves metrics about specified crawlers.
    #
    # @option params [Array<String>] :crawler_name_list
    #   A list of the names of crawlers about which to retrieve metrics.
    #
    # @option params [Integer] :max_results
    #   The maximum size of a list to return.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation call.
    #
    # @return [Types::GetCrawlerMetricsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCrawlerMetricsResponse#crawler_metrics_list #crawler_metrics_list} => Array&lt;Types::CrawlerMetrics&gt;
    #   * {Types::GetCrawlerMetricsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_crawler_metrics({
    #     crawler_name_list: ["NameString"],
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.crawler_metrics_list #=> Array
    #   resp.crawler_metrics_list[0].crawler_name #=> String
    #   resp.crawler_metrics_list[0].time_left_seconds #=> Float
    #   resp.crawler_metrics_list[0].still_estimating #=> Boolean
    #   resp.crawler_metrics_list[0].last_runtime_seconds #=> Float
    #   resp.crawler_metrics_list[0].median_runtime_seconds #=> Float
    #   resp.crawler_metrics_list[0].tables_created #=> Integer
    #   resp.crawler_metrics_list[0].tables_updated #=> Integer
    #   resp.crawler_metrics_list[0].tables_deleted #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCrawlerMetrics AWS API Documentation
    #
    # @overload get_crawler_metrics(params = {})
    # @param [Hash] params ({})
    def get_crawler_metrics(params = {}, options = {})
      req = build_request(:get_crawler_metrics, params)
      req.send_request(options)
    end

    # Retrieves metadata for all crawlers defined in the customer account.
    #
    # @option params [Integer] :max_results
    #   The number of crawlers to return on each call.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation request.
    #
    # @return [Types::GetCrawlersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCrawlersResponse#crawlers #crawlers} => Array&lt;Types::Crawler&gt;
    #   * {Types::GetCrawlersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_crawlers({
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.crawlers #=> Array
    #   resp.crawlers[0].name #=> String
    #   resp.crawlers[0].role #=> String
    #   resp.crawlers[0].targets.s3_targets #=> Array
    #   resp.crawlers[0].targets.s3_targets[0].path #=> String
    #   resp.crawlers[0].targets.s3_targets[0].exclusions #=> Array
    #   resp.crawlers[0].targets.s3_targets[0].exclusions[0] #=> String
    #   resp.crawlers[0].targets.jdbc_targets #=> Array
    #   resp.crawlers[0].targets.jdbc_targets[0].connection_name #=> String
    #   resp.crawlers[0].targets.jdbc_targets[0].path #=> String
    #   resp.crawlers[0].targets.jdbc_targets[0].exclusions #=> Array
    #   resp.crawlers[0].targets.jdbc_targets[0].exclusions[0] #=> String
    #   resp.crawlers[0].targets.dynamo_db_targets #=> Array
    #   resp.crawlers[0].targets.dynamo_db_targets[0].path #=> String
    #   resp.crawlers[0].targets.catalog_targets #=> Array
    #   resp.crawlers[0].targets.catalog_targets[0].database_name #=> String
    #   resp.crawlers[0].targets.catalog_targets[0].tables #=> Array
    #   resp.crawlers[0].targets.catalog_targets[0].tables[0] #=> String
    #   resp.crawlers[0].database_name #=> String
    #   resp.crawlers[0].description #=> String
    #   resp.crawlers[0].classifiers #=> Array
    #   resp.crawlers[0].classifiers[0] #=> String
    #   resp.crawlers[0].schema_change_policy.update_behavior #=> String, one of "LOG", "UPDATE_IN_DATABASE"
    #   resp.crawlers[0].schema_change_policy.delete_behavior #=> String, one of "LOG", "DELETE_FROM_DATABASE", "DEPRECATE_IN_DATABASE"
    #   resp.crawlers[0].state #=> String, one of "READY", "RUNNING", "STOPPING"
    #   resp.crawlers[0].table_prefix #=> String
    #   resp.crawlers[0].schedule.schedule_expression #=> String
    #   resp.crawlers[0].schedule.state #=> String, one of "SCHEDULED", "NOT_SCHEDULED", "TRANSITIONING"
    #   resp.crawlers[0].crawl_elapsed_time #=> Integer
    #   resp.crawlers[0].creation_time #=> Time
    #   resp.crawlers[0].last_updated #=> Time
    #   resp.crawlers[0].last_crawl.status #=> String, one of "SUCCEEDED", "CANCELLED", "FAILED"
    #   resp.crawlers[0].last_crawl.error_message #=> String
    #   resp.crawlers[0].last_crawl.log_group #=> String
    #   resp.crawlers[0].last_crawl.log_stream #=> String
    #   resp.crawlers[0].last_crawl.message_prefix #=> String
    #   resp.crawlers[0].last_crawl.start_time #=> Time
    #   resp.crawlers[0].version #=> Integer
    #   resp.crawlers[0].configuration #=> String
    #   resp.crawlers[0].crawler_security_configuration #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCrawlers AWS API Documentation
    #
    # @overload get_crawlers(params = {})
    # @param [Hash] params ({})
    def get_crawlers(params = {}, options = {})
      req = build_request(:get_crawlers, params)
      req.send_request(options)
    end

    # Retrieves the security configuration for a specified catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog to retrieve the security configuration for.
    #   If none is provided, the AWS account ID is used by default.
    #
    # @return [Types::GetDataCatalogEncryptionSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataCatalogEncryptionSettingsResponse#data_catalog_encryption_settings #data_catalog_encryption_settings} => Types::DataCatalogEncryptionSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_catalog_encryption_settings({
    #     catalog_id: "CatalogIdString",
    #   })
    #
    # @example Response structure
    #
    #   resp.data_catalog_encryption_settings.encryption_at_rest.catalog_encryption_mode #=> String, one of "DISABLED", "SSE-KMS"
    #   resp.data_catalog_encryption_settings.encryption_at_rest.sse_aws_kms_key_id #=> String
    #   resp.data_catalog_encryption_settings.connection_password_encryption.return_connection_password_encrypted #=> Boolean
    #   resp.data_catalog_encryption_settings.connection_password_encryption.aws_kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataCatalogEncryptionSettings AWS API Documentation
    #
    # @overload get_data_catalog_encryption_settings(params = {})
    # @param [Hash] params ({})
    def get_data_catalog_encryption_settings(params = {}, options = {})
      req = build_request(:get_data_catalog_encryption_settings, params)
      req.send_request(options)
    end

    # Retrieves the definition of a specified database.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog in which the database resides. If none is
    #   provided, the AWS account ID is used by default.
    #
    # @option params [required, String] :name
    #   The name of the database to retrieve. For Hive compatibility, this
    #   should be all lowercase.
    #
    # @return [Types::GetDatabaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDatabaseResponse#database #database} => Types::Database
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_database({
    #     catalog_id: "CatalogIdString",
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.database.name #=> String
    #   resp.database.description #=> String
    #   resp.database.location_uri #=> String
    #   resp.database.parameters #=> Hash
    #   resp.database.parameters["KeyString"] #=> String
    #   resp.database.create_time #=> Time
    #   resp.database.create_table_default_permissions #=> Array
    #   resp.database.create_table_default_permissions[0].principal.data_lake_principal_identifier #=> String
    #   resp.database.create_table_default_permissions[0].permissions #=> Array
    #   resp.database.create_table_default_permissions[0].permissions[0] #=> String, one of "ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDatabase AWS API Documentation
    #
    # @overload get_database(params = {})
    # @param [Hash] params ({})
    def get_database(params = {}, options = {})
      req = build_request(:get_database, params)
      req.send_request(options)
    end

    # Retrieves all databases defined in a given Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog from which to retrieve `Databases`. If none
    #   is provided, the AWS account ID is used by default.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of databases to return in one response.
    #
    # @return [Types::GetDatabasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDatabasesResponse#database_list #database_list} => Array&lt;Types::Database&gt;
    #   * {Types::GetDatabasesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_databases({
    #     catalog_id: "CatalogIdString",
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.database_list #=> Array
    #   resp.database_list[0].name #=> String
    #   resp.database_list[0].description #=> String
    #   resp.database_list[0].location_uri #=> String
    #   resp.database_list[0].parameters #=> Hash
    #   resp.database_list[0].parameters["KeyString"] #=> String
    #   resp.database_list[0].create_time #=> Time
    #   resp.database_list[0].create_table_default_permissions #=> Array
    #   resp.database_list[0].create_table_default_permissions[0].principal.data_lake_principal_identifier #=> String
    #   resp.database_list[0].create_table_default_permissions[0].permissions #=> Array
    #   resp.database_list[0].create_table_default_permissions[0].permissions[0] #=> String, one of "ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDatabases AWS API Documentation
    #
    # @overload get_databases(params = {})
    # @param [Hash] params ({})
    def get_databases(params = {}, options = {})
      req = build_request(:get_databases, params)
      req.send_request(options)
    end

    # Transforms a Python script into a directed acyclic graph (DAG).
    #
    # @option params [String] :python_script
    #   The Python script to transform.
    #
    # @return [Types::GetDataflowGraphResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataflowGraphResponse#dag_nodes #dag_nodes} => Array&lt;Types::CodeGenNode&gt;
    #   * {Types::GetDataflowGraphResponse#dag_edges #dag_edges} => Array&lt;Types::CodeGenEdge&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dataflow_graph({
    #     python_script: "PythonScript",
    #   })
    #
    # @example Response structure
    #
    #   resp.dag_nodes #=> Array
    #   resp.dag_nodes[0].id #=> String
    #   resp.dag_nodes[0].node_type #=> String
    #   resp.dag_nodes[0].args #=> Array
    #   resp.dag_nodes[0].args[0].name #=> String
    #   resp.dag_nodes[0].args[0].value #=> String
    #   resp.dag_nodes[0].args[0].param #=> Boolean
    #   resp.dag_nodes[0].line_number #=> Integer
    #   resp.dag_edges #=> Array
    #   resp.dag_edges[0].source #=> String
    #   resp.dag_edges[0].target #=> String
    #   resp.dag_edges[0].target_parameter #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataflowGraph AWS API Documentation
    #
    # @overload get_dataflow_graph(params = {})
    # @param [Hash] params ({})
    def get_dataflow_graph(params = {}, options = {})
      req = build_request(:get_dataflow_graph, params)
      req.send_request(options)
    end

    # Retrieves information about a specified development endpoint.
    #
    # <note markdown="1"> When you create a development endpoint in a virtual private cloud
    # (VPC), AWS Glue returns only a private IP address, and the public IP
    # address field is not populated. When you create a non-VPC development
    # endpoint, AWS Glue returns only a public IP address.
    #
    #  </note>
    #
    # @option params [required, String] :endpoint_name
    #   Name of the `DevEndpoint` to retrieve information for.
    #
    # @return [Types::GetDevEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDevEndpointResponse#dev_endpoint #dev_endpoint} => Types::DevEndpoint
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dev_endpoint({
    #     endpoint_name: "GenericString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dev_endpoint.endpoint_name #=> String
    #   resp.dev_endpoint.role_arn #=> String
    #   resp.dev_endpoint.security_group_ids #=> Array
    #   resp.dev_endpoint.security_group_ids[0] #=> String
    #   resp.dev_endpoint.subnet_id #=> String
    #   resp.dev_endpoint.yarn_endpoint_address #=> String
    #   resp.dev_endpoint.private_address #=> String
    #   resp.dev_endpoint.zeppelin_remote_spark_interpreter_port #=> Integer
    #   resp.dev_endpoint.public_address #=> String
    #   resp.dev_endpoint.status #=> String
    #   resp.dev_endpoint.worker_type #=> String, one of "Standard", "G.1X", "G.2X"
    #   resp.dev_endpoint.glue_version #=> String
    #   resp.dev_endpoint.number_of_workers #=> Integer
    #   resp.dev_endpoint.number_of_nodes #=> Integer
    #   resp.dev_endpoint.availability_zone #=> String
    #   resp.dev_endpoint.vpc_id #=> String
    #   resp.dev_endpoint.extra_python_libs_s3_path #=> String
    #   resp.dev_endpoint.extra_jars_s3_path #=> String
    #   resp.dev_endpoint.failure_reason #=> String
    #   resp.dev_endpoint.last_update_status #=> String
    #   resp.dev_endpoint.created_timestamp #=> Time
    #   resp.dev_endpoint.last_modified_timestamp #=> Time
    #   resp.dev_endpoint.public_key #=> String
    #   resp.dev_endpoint.public_keys #=> Array
    #   resp.dev_endpoint.public_keys[0] #=> String
    #   resp.dev_endpoint.security_configuration #=> String
    #   resp.dev_endpoint.arguments #=> Hash
    #   resp.dev_endpoint.arguments["GenericString"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDevEndpoint AWS API Documentation
    #
    # @overload get_dev_endpoint(params = {})
    # @param [Hash] params ({})
    def get_dev_endpoint(params = {}, options = {})
      req = build_request(:get_dev_endpoint, params)
      req.send_request(options)
    end

    # Retrieves all the development endpoints in this AWS account.
    #
    # <note markdown="1"> When you create a development endpoint in a virtual private cloud
    # (VPC), AWS Glue returns only a private IP address and the public IP
    # address field is not populated. When you create a non-VPC development
    # endpoint, AWS Glue returns only a public IP address.
    #
    #  </note>
    #
    # @option params [Integer] :max_results
    #   The maximum size of information to return.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation call.
    #
    # @return [Types::GetDevEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDevEndpointsResponse#dev_endpoints #dev_endpoints} => Array&lt;Types::DevEndpoint&gt;
    #   * {Types::GetDevEndpointsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dev_endpoints({
    #     max_results: 1,
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.dev_endpoints #=> Array
    #   resp.dev_endpoints[0].endpoint_name #=> String
    #   resp.dev_endpoints[0].role_arn #=> String
    #   resp.dev_endpoints[0].security_group_ids #=> Array
    #   resp.dev_endpoints[0].security_group_ids[0] #=> String
    #   resp.dev_endpoints[0].subnet_id #=> String
    #   resp.dev_endpoints[0].yarn_endpoint_address #=> String
    #   resp.dev_endpoints[0].private_address #=> String
    #   resp.dev_endpoints[0].zeppelin_remote_spark_interpreter_port #=> Integer
    #   resp.dev_endpoints[0].public_address #=> String
    #   resp.dev_endpoints[0].status #=> String
    #   resp.dev_endpoints[0].worker_type #=> String, one of "Standard", "G.1X", "G.2X"
    #   resp.dev_endpoints[0].glue_version #=> String
    #   resp.dev_endpoints[0].number_of_workers #=> Integer
    #   resp.dev_endpoints[0].number_of_nodes #=> Integer
    #   resp.dev_endpoints[0].availability_zone #=> String
    #   resp.dev_endpoints[0].vpc_id #=> String
    #   resp.dev_endpoints[0].extra_python_libs_s3_path #=> String
    #   resp.dev_endpoints[0].extra_jars_s3_path #=> String
    #   resp.dev_endpoints[0].failure_reason #=> String
    #   resp.dev_endpoints[0].last_update_status #=> String
    #   resp.dev_endpoints[0].created_timestamp #=> Time
    #   resp.dev_endpoints[0].last_modified_timestamp #=> Time
    #   resp.dev_endpoints[0].public_key #=> String
    #   resp.dev_endpoints[0].public_keys #=> Array
    #   resp.dev_endpoints[0].public_keys[0] #=> String
    #   resp.dev_endpoints[0].security_configuration #=> String
    #   resp.dev_endpoints[0].arguments #=> Hash
    #   resp.dev_endpoints[0].arguments["GenericString"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDevEndpoints AWS API Documentation
    #
    # @overload get_dev_endpoints(params = {})
    # @param [Hash] params ({})
    def get_dev_endpoints(params = {}, options = {})
      req = build_request(:get_dev_endpoints, params)
      req.send_request(options)
    end

    # Retrieves an existing job definition.
    #
    # @option params [required, String] :job_name
    #   The name of the job definition to retrieve.
    #
    # @return [Types::GetJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobResponse#job #job} => Types::Job
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job({
    #     job_name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job.name #=> String
    #   resp.job.description #=> String
    #   resp.job.log_uri #=> String
    #   resp.job.role #=> String
    #   resp.job.created_on #=> Time
    #   resp.job.last_modified_on #=> Time
    #   resp.job.execution_property.max_concurrent_runs #=> Integer
    #   resp.job.command.name #=> String
    #   resp.job.command.script_location #=> String
    #   resp.job.command.python_version #=> String
    #   resp.job.default_arguments #=> Hash
    #   resp.job.default_arguments["GenericString"] #=> String
    #   resp.job.non_overridable_arguments #=> Hash
    #   resp.job.non_overridable_arguments["GenericString"] #=> String
    #   resp.job.connections.connections #=> Array
    #   resp.job.connections.connections[0] #=> String
    #   resp.job.max_retries #=> Integer
    #   resp.job.allocated_capacity #=> Integer
    #   resp.job.timeout #=> Integer
    #   resp.job.max_capacity #=> Float
    #   resp.job.worker_type #=> String, one of "Standard", "G.1X", "G.2X"
    #   resp.job.number_of_workers #=> Integer
    #   resp.job.security_configuration #=> String
    #   resp.job.notification_property.notify_delay_after #=> Integer
    #   resp.job.glue_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJob AWS API Documentation
    #
    # @overload get_job(params = {})
    # @param [Hash] params ({})
    def get_job(params = {}, options = {})
      req = build_request(:get_job, params)
      req.send_request(options)
    end

    # Returns information on a job bookmark entry.
    #
    # @option params [required, String] :job_name
    #   The name of the job in question.
    #
    # @option params [String] :run_id
    #   The unique run identifier associated with this job run.
    #
    # @return [Types::GetJobBookmarkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobBookmarkResponse#job_bookmark_entry #job_bookmark_entry} => Types::JobBookmarkEntry
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job_bookmark({
    #     job_name: "JobName", # required
    #     run_id: "RunId",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_bookmark_entry.job_name #=> String
    #   resp.job_bookmark_entry.version #=> Integer
    #   resp.job_bookmark_entry.run #=> Integer
    #   resp.job_bookmark_entry.attempt #=> Integer
    #   resp.job_bookmark_entry.previous_run_id #=> String
    #   resp.job_bookmark_entry.run_id #=> String
    #   resp.job_bookmark_entry.job_bookmark #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobBookmark AWS API Documentation
    #
    # @overload get_job_bookmark(params = {})
    # @param [Hash] params ({})
    def get_job_bookmark(params = {}, options = {})
      req = build_request(:get_job_bookmark, params)
      req.send_request(options)
    end

    # Retrieves the metadata for a given job run.
    #
    # @option params [required, String] :job_name
    #   Name of the job definition being run.
    #
    # @option params [required, String] :run_id
    #   The ID of the job run.
    #
    # @option params [Boolean] :predecessors_included
    #   True if a list of predecessor runs should be returned.
    #
    # @return [Types::GetJobRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobRunResponse#job_run #job_run} => Types::JobRun
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job_run({
    #     job_name: "NameString", # required
    #     run_id: "IdString", # required
    #     predecessors_included: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.job_run.id #=> String
    #   resp.job_run.attempt #=> Integer
    #   resp.job_run.previous_run_id #=> String
    #   resp.job_run.trigger_name #=> String
    #   resp.job_run.job_name #=> String
    #   resp.job_run.started_on #=> Time
    #   resp.job_run.last_modified_on #=> Time
    #   resp.job_run.completed_on #=> Time
    #   resp.job_run.job_run_state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #   resp.job_run.arguments #=> Hash
    #   resp.job_run.arguments["GenericString"] #=> String
    #   resp.job_run.error_message #=> String
    #   resp.job_run.predecessor_runs #=> Array
    #   resp.job_run.predecessor_runs[0].job_name #=> String
    #   resp.job_run.predecessor_runs[0].run_id #=> String
    #   resp.job_run.allocated_capacity #=> Integer
    #   resp.job_run.execution_time #=> Integer
    #   resp.job_run.timeout #=> Integer
    #   resp.job_run.max_capacity #=> Float
    #   resp.job_run.worker_type #=> String, one of "Standard", "G.1X", "G.2X"
    #   resp.job_run.number_of_workers #=> Integer
    #   resp.job_run.security_configuration #=> String
    #   resp.job_run.log_group_name #=> String
    #   resp.job_run.notification_property.notify_delay_after #=> Integer
    #   resp.job_run.glue_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobRun AWS API Documentation
    #
    # @overload get_job_run(params = {})
    # @param [Hash] params ({})
    def get_job_run(params = {}, options = {})
      req = build_request(:get_job_run, params)
      req.send_request(options)
    end

    # Retrieves metadata for all runs of a given job definition.
    #
    # @option params [required, String] :job_name
    #   The name of the job definition for which to retrieve all job runs.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation call.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the response.
    #
    # @return [Types::GetJobRunsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobRunsResponse#job_runs #job_runs} => Array&lt;Types::JobRun&gt;
    #   * {Types::GetJobRunsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job_runs({
    #     job_name: "NameString", # required
    #     next_token: "GenericString",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.job_runs #=> Array
    #   resp.job_runs[0].id #=> String
    #   resp.job_runs[0].attempt #=> Integer
    #   resp.job_runs[0].previous_run_id #=> String
    #   resp.job_runs[0].trigger_name #=> String
    #   resp.job_runs[0].job_name #=> String
    #   resp.job_runs[0].started_on #=> Time
    #   resp.job_runs[0].last_modified_on #=> Time
    #   resp.job_runs[0].completed_on #=> Time
    #   resp.job_runs[0].job_run_state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #   resp.job_runs[0].arguments #=> Hash
    #   resp.job_runs[0].arguments["GenericString"] #=> String
    #   resp.job_runs[0].error_message #=> String
    #   resp.job_runs[0].predecessor_runs #=> Array
    #   resp.job_runs[0].predecessor_runs[0].job_name #=> String
    #   resp.job_runs[0].predecessor_runs[0].run_id #=> String
    #   resp.job_runs[0].allocated_capacity #=> Integer
    #   resp.job_runs[0].execution_time #=> Integer
    #   resp.job_runs[0].timeout #=> Integer
    #   resp.job_runs[0].max_capacity #=> Float
    #   resp.job_runs[0].worker_type #=> String, one of "Standard", "G.1X", "G.2X"
    #   resp.job_runs[0].number_of_workers #=> Integer
    #   resp.job_runs[0].security_configuration #=> String
    #   resp.job_runs[0].log_group_name #=> String
    #   resp.job_runs[0].notification_property.notify_delay_after #=> Integer
    #   resp.job_runs[0].glue_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobRuns AWS API Documentation
    #
    # @overload get_job_runs(params = {})
    # @param [Hash] params ({})
    def get_job_runs(params = {}, options = {})
      req = build_request(:get_job_runs, params)
      req.send_request(options)
    end

    # Retrieves all current job definitions.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation call.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the response.
    #
    # @return [Types::GetJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobsResponse#jobs #jobs} => Array&lt;Types::Job&gt;
    #   * {Types::GetJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_jobs({
    #     next_token: "GenericString",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].name #=> String
    #   resp.jobs[0].description #=> String
    #   resp.jobs[0].log_uri #=> String
    #   resp.jobs[0].role #=> String
    #   resp.jobs[0].created_on #=> Time
    #   resp.jobs[0].last_modified_on #=> Time
    #   resp.jobs[0].execution_property.max_concurrent_runs #=> Integer
    #   resp.jobs[0].command.name #=> String
    #   resp.jobs[0].command.script_location #=> String
    #   resp.jobs[0].command.python_version #=> String
    #   resp.jobs[0].default_arguments #=> Hash
    #   resp.jobs[0].default_arguments["GenericString"] #=> String
    #   resp.jobs[0].non_overridable_arguments #=> Hash
    #   resp.jobs[0].non_overridable_arguments["GenericString"] #=> String
    #   resp.jobs[0].connections.connections #=> Array
    #   resp.jobs[0].connections.connections[0] #=> String
    #   resp.jobs[0].max_retries #=> Integer
    #   resp.jobs[0].allocated_capacity #=> Integer
    #   resp.jobs[0].timeout #=> Integer
    #   resp.jobs[0].max_capacity #=> Float
    #   resp.jobs[0].worker_type #=> String, one of "Standard", "G.1X", "G.2X"
    #   resp.jobs[0].number_of_workers #=> Integer
    #   resp.jobs[0].security_configuration #=> String
    #   resp.jobs[0].notification_property.notify_delay_after #=> Integer
    #   resp.jobs[0].glue_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobs AWS API Documentation
    #
    # @overload get_jobs(params = {})
    # @param [Hash] params ({})
    def get_jobs(params = {}, options = {})
      req = build_request(:get_jobs, params)
      req.send_request(options)
    end

    # Gets details for a specific task run on a machine learning transform.
    # Machine learning task runs are asynchronous tasks that AWS Glue runs
    # on your behalf as part of various machine learning workflows. You can
    # check the stats of any task run by calling `GetMLTaskRun` with the
    # `TaskRunID` and its parent transform's `TransformID`.
    #
    # @option params [required, String] :transform_id
    #   The unique identifier of the machine learning transform.
    #
    # @option params [required, String] :task_run_id
    #   The unique identifier of the task run.
    #
    # @return [Types::GetMLTaskRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMLTaskRunResponse#transform_id #transform_id} => String
    #   * {Types::GetMLTaskRunResponse#task_run_id #task_run_id} => String
    #   * {Types::GetMLTaskRunResponse#status #status} => String
    #   * {Types::GetMLTaskRunResponse#log_group_name #log_group_name} => String
    #   * {Types::GetMLTaskRunResponse#properties #properties} => Types::TaskRunProperties
    #   * {Types::GetMLTaskRunResponse#error_string #error_string} => String
    #   * {Types::GetMLTaskRunResponse#started_on #started_on} => Time
    #   * {Types::GetMLTaskRunResponse#last_modified_on #last_modified_on} => Time
    #   * {Types::GetMLTaskRunResponse#completed_on #completed_on} => Time
    #   * {Types::GetMLTaskRunResponse#execution_time #execution_time} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ml_task_run({
    #     transform_id: "HashString", # required
    #     task_run_id: "HashString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.transform_id #=> String
    #   resp.task_run_id #=> String
    #   resp.status #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #   resp.log_group_name #=> String
    #   resp.properties.task_type #=> String, one of "EVALUATION", "LABELING_SET_GENERATION", "IMPORT_LABELS", "EXPORT_LABELS", "FIND_MATCHES"
    #   resp.properties.import_labels_task_run_properties.input_s3_path #=> String
    #   resp.properties.import_labels_task_run_properties.replace #=> Boolean
    #   resp.properties.export_labels_task_run_properties.output_s3_path #=> String
    #   resp.properties.labeling_set_generation_task_run_properties.output_s3_path #=> String
    #   resp.properties.find_matches_task_run_properties.job_id #=> String
    #   resp.properties.find_matches_task_run_properties.job_name #=> String
    #   resp.properties.find_matches_task_run_properties.job_run_id #=> String
    #   resp.error_string #=> String
    #   resp.started_on #=> Time
    #   resp.last_modified_on #=> Time
    #   resp.completed_on #=> Time
    #   resp.execution_time #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMLTaskRun AWS API Documentation
    #
    # @overload get_ml_task_run(params = {})
    # @param [Hash] params ({})
    def get_ml_task_run(params = {}, options = {})
      req = build_request(:get_ml_task_run, params)
      req.send_request(options)
    end

    # Gets a list of runs for a machine learning transform. Machine learning
    # task runs are asynchronous tasks that AWS Glue runs on your behalf as
    # part of various machine learning workflows. You can get a sortable,
    # filterable list of machine learning task runs by calling
    # `GetMLTaskRuns` with their parent transform's `TransformID` and other
    # optional parameters as documented in this section.
    #
    # This operation returns a list of historic runs and must be paginated.
    #
    # @option params [required, String] :transform_id
    #   The unique identifier of the machine learning transform.
    #
    # @option params [String] :next_token
    #   A token for pagination of the results. The default is empty.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [Types::TaskRunFilterCriteria] :filter
    #   The filter criteria, in the `TaskRunFilterCriteria` structure, for the
    #   task run.
    #
    # @option params [Types::TaskRunSortCriteria] :sort
    #   The sorting criteria, in the `TaskRunSortCriteria` structure, for the
    #   task run.
    #
    # @return [Types::GetMLTaskRunsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMLTaskRunsResponse#task_runs #task_runs} => Array&lt;Types::TaskRun&gt;
    #   * {Types::GetMLTaskRunsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ml_task_runs({
    #     transform_id: "HashString", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filter: {
    #       task_run_type: "EVALUATION", # accepts EVALUATION, LABELING_SET_GENERATION, IMPORT_LABELS, EXPORT_LABELS, FIND_MATCHES
    #       status: "STARTING", # accepts STARTING, RUNNING, STOPPING, STOPPED, SUCCEEDED, FAILED, TIMEOUT
    #       started_before: Time.now,
    #       started_after: Time.now,
    #     },
    #     sort: {
    #       column: "TASK_RUN_TYPE", # required, accepts TASK_RUN_TYPE, STATUS, STARTED
    #       sort_direction: "DESCENDING", # required, accepts DESCENDING, ASCENDING
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.task_runs #=> Array
    #   resp.task_runs[0].transform_id #=> String
    #   resp.task_runs[0].task_run_id #=> String
    #   resp.task_runs[0].status #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #   resp.task_runs[0].log_group_name #=> String
    #   resp.task_runs[0].properties.task_type #=> String, one of "EVALUATION", "LABELING_SET_GENERATION", "IMPORT_LABELS", "EXPORT_LABELS", "FIND_MATCHES"
    #   resp.task_runs[0].properties.import_labels_task_run_properties.input_s3_path #=> String
    #   resp.task_runs[0].properties.import_labels_task_run_properties.replace #=> Boolean
    #   resp.task_runs[0].properties.export_labels_task_run_properties.output_s3_path #=> String
    #   resp.task_runs[0].properties.labeling_set_generation_task_run_properties.output_s3_path #=> String
    #   resp.task_runs[0].properties.find_matches_task_run_properties.job_id #=> String
    #   resp.task_runs[0].properties.find_matches_task_run_properties.job_name #=> String
    #   resp.task_runs[0].properties.find_matches_task_run_properties.job_run_id #=> String
    #   resp.task_runs[0].error_string #=> String
    #   resp.task_runs[0].started_on #=> Time
    #   resp.task_runs[0].last_modified_on #=> Time
    #   resp.task_runs[0].completed_on #=> Time
    #   resp.task_runs[0].execution_time #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMLTaskRuns AWS API Documentation
    #
    # @overload get_ml_task_runs(params = {})
    # @param [Hash] params ({})
    def get_ml_task_runs(params = {}, options = {})
      req = build_request(:get_ml_task_runs, params)
      req.send_request(options)
    end

    # Gets an AWS Glue machine learning transform artifact and all its
    # corresponding metadata. Machine learning transforms are a special type
    # of transform that use machine learning to learn the details of the
    # transformation to be performed by learning from examples provided by
    # humans. These transformations are then saved by AWS Glue. You can
    # retrieve their metadata by calling `GetMLTransform`.
    #
    # @option params [required, String] :transform_id
    #   The unique identifier of the transform, generated at the time that the
    #   transform was created.
    #
    # @return [Types::GetMLTransformResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMLTransformResponse#transform_id #transform_id} => String
    #   * {Types::GetMLTransformResponse#name #name} => String
    #   * {Types::GetMLTransformResponse#description #description} => String
    #   * {Types::GetMLTransformResponse#status #status} => String
    #   * {Types::GetMLTransformResponse#created_on #created_on} => Time
    #   * {Types::GetMLTransformResponse#last_modified_on #last_modified_on} => Time
    #   * {Types::GetMLTransformResponse#input_record_tables #input_record_tables} => Array&lt;Types::GlueTable&gt;
    #   * {Types::GetMLTransformResponse#parameters #parameters} => Types::TransformParameters
    #   * {Types::GetMLTransformResponse#evaluation_metrics #evaluation_metrics} => Types::EvaluationMetrics
    #   * {Types::GetMLTransformResponse#label_count #label_count} => Integer
    #   * {Types::GetMLTransformResponse#schema #schema} => Array&lt;Types::SchemaColumn&gt;
    #   * {Types::GetMLTransformResponse#role #role} => String
    #   * {Types::GetMLTransformResponse#glue_version #glue_version} => String
    #   * {Types::GetMLTransformResponse#max_capacity #max_capacity} => Float
    #   * {Types::GetMLTransformResponse#worker_type #worker_type} => String
    #   * {Types::GetMLTransformResponse#number_of_workers #number_of_workers} => Integer
    #   * {Types::GetMLTransformResponse#timeout #timeout} => Integer
    #   * {Types::GetMLTransformResponse#max_retries #max_retries} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ml_transform({
    #     transform_id: "HashString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.transform_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "NOT_READY", "READY", "DELETING"
    #   resp.created_on #=> Time
    #   resp.last_modified_on #=> Time
    #   resp.input_record_tables #=> Array
    #   resp.input_record_tables[0].database_name #=> String
    #   resp.input_record_tables[0].table_name #=> String
    #   resp.input_record_tables[0].catalog_id #=> String
    #   resp.input_record_tables[0].connection_name #=> String
    #   resp.parameters.transform_type #=> String, one of "FIND_MATCHES"
    #   resp.parameters.find_matches_parameters.primary_key_column_name #=> String
    #   resp.parameters.find_matches_parameters.precision_recall_tradeoff #=> Float
    #   resp.parameters.find_matches_parameters.accuracy_cost_tradeoff #=> Float
    #   resp.parameters.find_matches_parameters.enforce_provided_labels #=> Boolean
    #   resp.evaluation_metrics.transform_type #=> String, one of "FIND_MATCHES"
    #   resp.evaluation_metrics.find_matches_metrics.area_under_pr_curve #=> Float
    #   resp.evaluation_metrics.find_matches_metrics.precision #=> Float
    #   resp.evaluation_metrics.find_matches_metrics.recall #=> Float
    #   resp.evaluation_metrics.find_matches_metrics.f1 #=> Float
    #   resp.evaluation_metrics.find_matches_metrics.confusion_matrix.num_true_positives #=> Integer
    #   resp.evaluation_metrics.find_matches_metrics.confusion_matrix.num_false_positives #=> Integer
    #   resp.evaluation_metrics.find_matches_metrics.confusion_matrix.num_true_negatives #=> Integer
    #   resp.evaluation_metrics.find_matches_metrics.confusion_matrix.num_false_negatives #=> Integer
    #   resp.label_count #=> Integer
    #   resp.schema #=> Array
    #   resp.schema[0].name #=> String
    #   resp.schema[0].data_type #=> String
    #   resp.role #=> String
    #   resp.glue_version #=> String
    #   resp.max_capacity #=> Float
    #   resp.worker_type #=> String, one of "Standard", "G.1X", "G.2X"
    #   resp.number_of_workers #=> Integer
    #   resp.timeout #=> Integer
    #   resp.max_retries #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMLTransform AWS API Documentation
    #
    # @overload get_ml_transform(params = {})
    # @param [Hash] params ({})
    def get_ml_transform(params = {}, options = {})
      req = build_request(:get_ml_transform, params)
      req.send_request(options)
    end

    # Gets a sortable, filterable list of existing AWS Glue machine learning
    # transforms. Machine learning transforms are a special type of
    # transform that use machine learning to learn the details of the
    # transformation to be performed by learning from examples provided by
    # humans. These transformations are then saved by AWS Glue, and you can
    # retrieve their metadata by calling `GetMLTransforms`.
    #
    # @option params [String] :next_token
    #   A paginated token to offset the results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [Types::TransformFilterCriteria] :filter
    #   The filter transformation criteria.
    #
    # @option params [Types::TransformSortCriteria] :sort
    #   The sorting criteria.
    #
    # @return [Types::GetMLTransformsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMLTransformsResponse#transforms #transforms} => Array&lt;Types::MLTransform&gt;
    #   * {Types::GetMLTransformsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ml_transforms({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filter: {
    #       name: "NameString",
    #       transform_type: "FIND_MATCHES", # accepts FIND_MATCHES
    #       status: "NOT_READY", # accepts NOT_READY, READY, DELETING
    #       glue_version: "GlueVersionString",
    #       created_before: Time.now,
    #       created_after: Time.now,
    #       last_modified_before: Time.now,
    #       last_modified_after: Time.now,
    #       schema: [
    #         {
    #           name: "ColumnNameString",
    #           data_type: "ColumnTypeString",
    #         },
    #       ],
    #     },
    #     sort: {
    #       column: "NAME", # required, accepts NAME, TRANSFORM_TYPE, STATUS, CREATED, LAST_MODIFIED
    #       sort_direction: "DESCENDING", # required, accepts DESCENDING, ASCENDING
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.transforms #=> Array
    #   resp.transforms[0].transform_id #=> String
    #   resp.transforms[0].name #=> String
    #   resp.transforms[0].description #=> String
    #   resp.transforms[0].status #=> String, one of "NOT_READY", "READY", "DELETING"
    #   resp.transforms[0].created_on #=> Time
    #   resp.transforms[0].last_modified_on #=> Time
    #   resp.transforms[0].input_record_tables #=> Array
    #   resp.transforms[0].input_record_tables[0].database_name #=> String
    #   resp.transforms[0].input_record_tables[0].table_name #=> String
    #   resp.transforms[0].input_record_tables[0].catalog_id #=> String
    #   resp.transforms[0].input_record_tables[0].connection_name #=> String
    #   resp.transforms[0].parameters.transform_type #=> String, one of "FIND_MATCHES"
    #   resp.transforms[0].parameters.find_matches_parameters.primary_key_column_name #=> String
    #   resp.transforms[0].parameters.find_matches_parameters.precision_recall_tradeoff #=> Float
    #   resp.transforms[0].parameters.find_matches_parameters.accuracy_cost_tradeoff #=> Float
    #   resp.transforms[0].parameters.find_matches_parameters.enforce_provided_labels #=> Boolean
    #   resp.transforms[0].evaluation_metrics.transform_type #=> String, one of "FIND_MATCHES"
    #   resp.transforms[0].evaluation_metrics.find_matches_metrics.area_under_pr_curve #=> Float
    #   resp.transforms[0].evaluation_metrics.find_matches_metrics.precision #=> Float
    #   resp.transforms[0].evaluation_metrics.find_matches_metrics.recall #=> Float
    #   resp.transforms[0].evaluation_metrics.find_matches_metrics.f1 #=> Float
    #   resp.transforms[0].evaluation_metrics.find_matches_metrics.confusion_matrix.num_true_positives #=> Integer
    #   resp.transforms[0].evaluation_metrics.find_matches_metrics.confusion_matrix.num_false_positives #=> Integer
    #   resp.transforms[0].evaluation_metrics.find_matches_metrics.confusion_matrix.num_true_negatives #=> Integer
    #   resp.transforms[0].evaluation_metrics.find_matches_metrics.confusion_matrix.num_false_negatives #=> Integer
    #   resp.transforms[0].label_count #=> Integer
    #   resp.transforms[0].schema #=> Array
    #   resp.transforms[0].schema[0].name #=> String
    #   resp.transforms[0].schema[0].data_type #=> String
    #   resp.transforms[0].role #=> String
    #   resp.transforms[0].glue_version #=> String
    #   resp.transforms[0].max_capacity #=> Float
    #   resp.transforms[0].worker_type #=> String, one of "Standard", "G.1X", "G.2X"
    #   resp.transforms[0].number_of_workers #=> Integer
    #   resp.transforms[0].timeout #=> Integer
    #   resp.transforms[0].max_retries #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMLTransforms AWS API Documentation
    #
    # @overload get_ml_transforms(params = {})
    # @param [Hash] params ({})
    def get_ml_transforms(params = {}, options = {})
      req = build_request(:get_ml_transforms, params)
      req.send_request(options)
    end

    # Creates mappings.
    #
    # @option params [required, Types::CatalogEntry] :source
    #   Specifies the source table.
    #
    # @option params [Array<Types::CatalogEntry>] :sinks
    #   A list of target tables.
    #
    # @option params [Types::Location] :location
    #   Parameters for the mapping.
    #
    # @return [Types::GetMappingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMappingResponse#mapping #mapping} => Array&lt;Types::MappingEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_mapping({
    #     source: { # required
    #       database_name: "NameString", # required
    #       table_name: "NameString", # required
    #     },
    #     sinks: [
    #       {
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #       },
    #     ],
    #     location: {
    #       jdbc: [
    #         {
    #           name: "CodeGenArgName", # required
    #           value: "CodeGenArgValue", # required
    #           param: false,
    #         },
    #       ],
    #       s3: [
    #         {
    #           name: "CodeGenArgName", # required
    #           value: "CodeGenArgValue", # required
    #           param: false,
    #         },
    #       ],
    #       dynamo_db: [
    #         {
    #           name: "CodeGenArgName", # required
    #           value: "CodeGenArgValue", # required
    #           param: false,
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.mapping #=> Array
    #   resp.mapping[0].source_table #=> String
    #   resp.mapping[0].source_path #=> String
    #   resp.mapping[0].source_type #=> String
    #   resp.mapping[0].target_table #=> String
    #   resp.mapping[0].target_path #=> String
    #   resp.mapping[0].target_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMapping AWS API Documentation
    #
    # @overload get_mapping(params = {})
    # @param [Hash] params ({})
    def get_mapping(params = {}, options = {})
      req = build_request(:get_mapping, params)
      req.send_request(options)
    end

    # Retrieves information about a specified partition.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the partition in question resides. If
    #   none is provided, the AWS account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database where the partition resides.
    #
    # @option params [required, String] :table_name
    #   The name of the partition's table.
    #
    # @option params [required, Array<String>] :partition_values
    #   The values that define the partition.
    #
    # @return [Types::GetPartitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPartitionResponse#partition #partition} => Types::Partition
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_partition({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     partition_values: ["ValueString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.partition.values #=> Array
    #   resp.partition.values[0] #=> String
    #   resp.partition.database_name #=> String
    #   resp.partition.table_name #=> String
    #   resp.partition.creation_time #=> Time
    #   resp.partition.last_access_time #=> Time
    #   resp.partition.storage_descriptor.columns #=> Array
    #   resp.partition.storage_descriptor.columns[0].name #=> String
    #   resp.partition.storage_descriptor.columns[0].type #=> String
    #   resp.partition.storage_descriptor.columns[0].comment #=> String
    #   resp.partition.storage_descriptor.columns[0].parameters #=> Hash
    #   resp.partition.storage_descriptor.columns[0].parameters["KeyString"] #=> String
    #   resp.partition.storage_descriptor.location #=> String
    #   resp.partition.storage_descriptor.input_format #=> String
    #   resp.partition.storage_descriptor.output_format #=> String
    #   resp.partition.storage_descriptor.compressed #=> Boolean
    #   resp.partition.storage_descriptor.number_of_buckets #=> Integer
    #   resp.partition.storage_descriptor.serde_info.name #=> String
    #   resp.partition.storage_descriptor.serde_info.serialization_library #=> String
    #   resp.partition.storage_descriptor.serde_info.parameters #=> Hash
    #   resp.partition.storage_descriptor.serde_info.parameters["KeyString"] #=> String
    #   resp.partition.storage_descriptor.bucket_columns #=> Array
    #   resp.partition.storage_descriptor.bucket_columns[0] #=> String
    #   resp.partition.storage_descriptor.sort_columns #=> Array
    #   resp.partition.storage_descriptor.sort_columns[0].column #=> String
    #   resp.partition.storage_descriptor.sort_columns[0].sort_order #=> Integer
    #   resp.partition.storage_descriptor.parameters #=> Hash
    #   resp.partition.storage_descriptor.parameters["KeyString"] #=> String
    #   resp.partition.storage_descriptor.skewed_info.skewed_column_names #=> Array
    #   resp.partition.storage_descriptor.skewed_info.skewed_column_names[0] #=> String
    #   resp.partition.storage_descriptor.skewed_info.skewed_column_values #=> Array
    #   resp.partition.storage_descriptor.skewed_info.skewed_column_values[0] #=> String
    #   resp.partition.storage_descriptor.skewed_info.skewed_column_value_location_maps #=> Hash
    #   resp.partition.storage_descriptor.skewed_info.skewed_column_value_location_maps["ColumnValuesString"] #=> String
    #   resp.partition.storage_descriptor.stored_as_sub_directories #=> Boolean
    #   resp.partition.parameters #=> Hash
    #   resp.partition.parameters["KeyString"] #=> String
    #   resp.partition.last_analyzed_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPartition AWS API Documentation
    #
    # @overload get_partition(params = {})
    # @param [Hash] params ({})
    def get_partition(params = {}, options = {})
      req = build_request(:get_partition, params)
      req.send_request(options)
    end

    # Retrieves information about the partitions in a table.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the partitions in question reside. If
    #   none is provided, the AWS account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database where the partitions reside.
    #
    # @option params [required, String] :table_name
    #   The name of the partitions' table.
    #
    # @option params [String] :expression
    #   An expression that filters the partitions to be returned.
    #
    #   The expression uses SQL syntax similar to the SQL `WHERE` filter
    #   clause. The SQL statement parser [JSQLParser][1] parses the
    #   expression.
    #
    #   *Operators*\: The following are the operators that you can use in the
    #   `Expression` API call:
    #
    #   =
    #
    #   : Checks whether the values of the two operands are equal; if yes,
    #     then the condition becomes true.
    #
    #     Example: Assume 'variable a' holds 10 and 'variable b' holds 20.
    #
    #     (a = b) is not true.
    #
    #   &lt; &gt;
    #
    #   : Checks whether the values of two operands are equal; if the values
    #     are not equal, then the condition becomes true.
    #
    #     Example: (a &lt; &gt; b) is true.
    #
    #   &gt;
    #
    #   : Checks whether the value of the left operand is greater than the
    #     value of the right operand; if yes, then the condition becomes true.
    #
    #     Example: (a &gt; b) is not true.
    #
    #   &lt;
    #
    #   : Checks whether the value of the left operand is less than the value
    #     of the right operand; if yes, then the condition becomes true.
    #
    #     Example: (a &lt; b) is true.
    #
    #   &gt;=
    #
    #   : Checks whether the value of the left operand is greater than or
    #     equal to the value of the right operand; if yes, then the condition
    #     becomes true.
    #
    #     Example: (a &gt;= b) is not true.
    #
    #   &lt;=
    #
    #   : Checks whether the value of the left operand is less than or equal
    #     to the value of the right operand; if yes, then the condition
    #     becomes true.
    #
    #     Example: (a &lt;= b) is true.
    #
    #   AND, OR, IN, BETWEEN, LIKE, NOT, IS NULL
    #
    #   : Logical operators.
    #
    #   *Supported Partition Key Types*\: The following are the supported
    #   partition keys.
    #
    #   * `string`
    #
    #   * `date`
    #
    #   * `timestamp`
    #
    #   * `int`
    #
    #   * `bigint`
    #
    #   * `long`
    #
    #   * `tinyint`
    #
    #   * `smallint`
    #
    #   * `decimal`
    #
    #   If an invalid type is encountered, an exception is thrown.
    #
    #   The following list shows the valid operators on each type. When you
    #   define a crawler, the `partitionKey` type is created as a `STRING`, to
    #   be compatible with the catalog partitions.
    #
    #   *Sample API Call*\:
    #
    #
    #
    #   [1]: http://jsqlparser.sourceforge.net/home.php
    #
    # @option params [String] :next_token
    #   A continuation token, if this is not the first call to retrieve these
    #   partitions.
    #
    # @option params [Types::Segment] :segment
    #   The segment of the table's partitions to scan in this request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of partitions to return in a single response.
    #
    # @return [Types::GetPartitionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPartitionsResponse#partitions #partitions} => Array&lt;Types::Partition&gt;
    #   * {Types::GetPartitionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_partitions({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     expression: "PredicateString",
    #     next_token: "Token",
    #     segment: {
    #       segment_number: 1, # required
    #       total_segments: 1, # required
    #     },
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.partitions #=> Array
    #   resp.partitions[0].values #=> Array
    #   resp.partitions[0].values[0] #=> String
    #   resp.partitions[0].database_name #=> String
    #   resp.partitions[0].table_name #=> String
    #   resp.partitions[0].creation_time #=> Time
    #   resp.partitions[0].last_access_time #=> Time
    #   resp.partitions[0].storage_descriptor.columns #=> Array
    #   resp.partitions[0].storage_descriptor.columns[0].name #=> String
    #   resp.partitions[0].storage_descriptor.columns[0].type #=> String
    #   resp.partitions[0].storage_descriptor.columns[0].comment #=> String
    #   resp.partitions[0].storage_descriptor.columns[0].parameters #=> Hash
    #   resp.partitions[0].storage_descriptor.columns[0].parameters["KeyString"] #=> String
    #   resp.partitions[0].storage_descriptor.location #=> String
    #   resp.partitions[0].storage_descriptor.input_format #=> String
    #   resp.partitions[0].storage_descriptor.output_format #=> String
    #   resp.partitions[0].storage_descriptor.compressed #=> Boolean
    #   resp.partitions[0].storage_descriptor.number_of_buckets #=> Integer
    #   resp.partitions[0].storage_descriptor.serde_info.name #=> String
    #   resp.partitions[0].storage_descriptor.serde_info.serialization_library #=> String
    #   resp.partitions[0].storage_descriptor.serde_info.parameters #=> Hash
    #   resp.partitions[0].storage_descriptor.serde_info.parameters["KeyString"] #=> String
    #   resp.partitions[0].storage_descriptor.bucket_columns #=> Array
    #   resp.partitions[0].storage_descriptor.bucket_columns[0] #=> String
    #   resp.partitions[0].storage_descriptor.sort_columns #=> Array
    #   resp.partitions[0].storage_descriptor.sort_columns[0].column #=> String
    #   resp.partitions[0].storage_descriptor.sort_columns[0].sort_order #=> Integer
    #   resp.partitions[0].storage_descriptor.parameters #=> Hash
    #   resp.partitions[0].storage_descriptor.parameters["KeyString"] #=> String
    #   resp.partitions[0].storage_descriptor.skewed_info.skewed_column_names #=> Array
    #   resp.partitions[0].storage_descriptor.skewed_info.skewed_column_names[0] #=> String
    #   resp.partitions[0].storage_descriptor.skewed_info.skewed_column_values #=> Array
    #   resp.partitions[0].storage_descriptor.skewed_info.skewed_column_values[0] #=> String
    #   resp.partitions[0].storage_descriptor.skewed_info.skewed_column_value_location_maps #=> Hash
    #   resp.partitions[0].storage_descriptor.skewed_info.skewed_column_value_location_maps["ColumnValuesString"] #=> String
    #   resp.partitions[0].storage_descriptor.stored_as_sub_directories #=> Boolean
    #   resp.partitions[0].parameters #=> Hash
    #   resp.partitions[0].parameters["KeyString"] #=> String
    #   resp.partitions[0].last_analyzed_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPartitions AWS API Documentation
    #
    # @overload get_partitions(params = {})
    # @param [Hash] params ({})
    def get_partitions(params = {}, options = {})
      req = build_request(:get_partitions, params)
      req.send_request(options)
    end

    # Gets code to perform a specified mapping.
    #
    # @option params [required, Array<Types::MappingEntry>] :mapping
    #   The list of mappings from a source table to target tables.
    #
    # @option params [required, Types::CatalogEntry] :source
    #   The source table.
    #
    # @option params [Array<Types::CatalogEntry>] :sinks
    #   The target tables.
    #
    # @option params [Types::Location] :location
    #   The parameters for the mapping.
    #
    # @option params [String] :language
    #   The programming language of the code to perform the mapping.
    #
    # @return [Types::GetPlanResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPlanResponse#python_script #python_script} => String
    #   * {Types::GetPlanResponse#scala_code #scala_code} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_plan({
    #     mapping: [ # required
    #       {
    #         source_table: "TableName",
    #         source_path: "SchemaPathString",
    #         source_type: "FieldType",
    #         target_table: "TableName",
    #         target_path: "SchemaPathString",
    #         target_type: "FieldType",
    #       },
    #     ],
    #     source: { # required
    #       database_name: "NameString", # required
    #       table_name: "NameString", # required
    #     },
    #     sinks: [
    #       {
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #       },
    #     ],
    #     location: {
    #       jdbc: [
    #         {
    #           name: "CodeGenArgName", # required
    #           value: "CodeGenArgValue", # required
    #           param: false,
    #         },
    #       ],
    #       s3: [
    #         {
    #           name: "CodeGenArgName", # required
    #           value: "CodeGenArgValue", # required
    #           param: false,
    #         },
    #       ],
    #       dynamo_db: [
    #         {
    #           name: "CodeGenArgName", # required
    #           value: "CodeGenArgValue", # required
    #           param: false,
    #         },
    #       ],
    #     },
    #     language: "PYTHON", # accepts PYTHON, SCALA
    #   })
    #
    # @example Response structure
    #
    #   resp.python_script #=> String
    #   resp.scala_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPlan AWS API Documentation
    #
    # @overload get_plan(params = {})
    # @param [Hash] params ({})
    def get_plan(params = {}, options = {})
      req = build_request(:get_plan, params)
      req.send_request(options)
    end

    # Retrieves a specified resource policy.
    #
    # @return [Types::GetResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePolicyResponse#policy_in_json #policy_in_json} => String
    #   * {Types::GetResourcePolicyResponse#policy_hash #policy_hash} => String
    #   * {Types::GetResourcePolicyResponse#create_time #create_time} => Time
    #   * {Types::GetResourcePolicyResponse#update_time #update_time} => Time
    #
    # @example Response structure
    #
    #   resp.policy_in_json #=> String
    #   resp.policy_hash #=> String
    #   resp.create_time #=> Time
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetResourcePolicy AWS API Documentation
    #
    # @overload get_resource_policy(params = {})
    # @param [Hash] params ({})
    def get_resource_policy(params = {}, options = {})
      req = build_request(:get_resource_policy, params)
      req.send_request(options)
    end

    # Retrieves a specified security configuration.
    #
    # @option params [required, String] :name
    #   The name of the security configuration to retrieve.
    #
    # @return [Types::GetSecurityConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSecurityConfigurationResponse#security_configuration #security_configuration} => Types::SecurityConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_security_configuration({
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.security_configuration.name #=> String
    #   resp.security_configuration.created_time_stamp #=> Time
    #   resp.security_configuration.encryption_configuration.s3_encryption #=> Array
    #   resp.security_configuration.encryption_configuration.s3_encryption[0].s3_encryption_mode #=> String, one of "DISABLED", "SSE-KMS", "SSE-S3"
    #   resp.security_configuration.encryption_configuration.s3_encryption[0].kms_key_arn #=> String
    #   resp.security_configuration.encryption_configuration.cloud_watch_encryption.cloud_watch_encryption_mode #=> String, one of "DISABLED", "SSE-KMS"
    #   resp.security_configuration.encryption_configuration.cloud_watch_encryption.kms_key_arn #=> String
    #   resp.security_configuration.encryption_configuration.job_bookmarks_encryption.job_bookmarks_encryption_mode #=> String, one of "DISABLED", "CSE-KMS"
    #   resp.security_configuration.encryption_configuration.job_bookmarks_encryption.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetSecurityConfiguration AWS API Documentation
    #
    # @overload get_security_configuration(params = {})
    # @param [Hash] params ({})
    def get_security_configuration(params = {}, options = {})
      req = build_request(:get_security_configuration, params)
      req.send_request(options)
    end

    # Retrieves a list of all security configurations.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation call.
    #
    # @return [Types::GetSecurityConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSecurityConfigurationsResponse#security_configurations #security_configurations} => Array&lt;Types::SecurityConfiguration&gt;
    #   * {Types::GetSecurityConfigurationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_security_configurations({
    #     max_results: 1,
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.security_configurations #=> Array
    #   resp.security_configurations[0].name #=> String
    #   resp.security_configurations[0].created_time_stamp #=> Time
    #   resp.security_configurations[0].encryption_configuration.s3_encryption #=> Array
    #   resp.security_configurations[0].encryption_configuration.s3_encryption[0].s3_encryption_mode #=> String, one of "DISABLED", "SSE-KMS", "SSE-S3"
    #   resp.security_configurations[0].encryption_configuration.s3_encryption[0].kms_key_arn #=> String
    #   resp.security_configurations[0].encryption_configuration.cloud_watch_encryption.cloud_watch_encryption_mode #=> String, one of "DISABLED", "SSE-KMS"
    #   resp.security_configurations[0].encryption_configuration.cloud_watch_encryption.kms_key_arn #=> String
    #   resp.security_configurations[0].encryption_configuration.job_bookmarks_encryption.job_bookmarks_encryption_mode #=> String, one of "DISABLED", "CSE-KMS"
    #   resp.security_configurations[0].encryption_configuration.job_bookmarks_encryption.kms_key_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetSecurityConfigurations AWS API Documentation
    #
    # @overload get_security_configurations(params = {})
    # @param [Hash] params ({})
    def get_security_configurations(params = {}, options = {})
      req = build_request(:get_security_configurations, params)
      req.send_request(options)
    end

    # Retrieves the `Table` definition in a Data Catalog for a specified
    # table.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the table resides. If none is
    #   provided, the AWS account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the database in the catalog in which the table resides.
    #   For Hive compatibility, this name is entirely lowercase.
    #
    # @option params [required, String] :name
    #   The name of the table for which to retrieve the definition. For Hive
    #   compatibility, this name is entirely lowercase.
    #
    # @return [Types::GetTableResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTableResponse#table #table} => Types::Table
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_table({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.table.name #=> String
    #   resp.table.database_name #=> String
    #   resp.table.description #=> String
    #   resp.table.owner #=> String
    #   resp.table.create_time #=> Time
    #   resp.table.update_time #=> Time
    #   resp.table.last_access_time #=> Time
    #   resp.table.last_analyzed_time #=> Time
    #   resp.table.retention #=> Integer
    #   resp.table.storage_descriptor.columns #=> Array
    #   resp.table.storage_descriptor.columns[0].name #=> String
    #   resp.table.storage_descriptor.columns[0].type #=> String
    #   resp.table.storage_descriptor.columns[0].comment #=> String
    #   resp.table.storage_descriptor.columns[0].parameters #=> Hash
    #   resp.table.storage_descriptor.columns[0].parameters["KeyString"] #=> String
    #   resp.table.storage_descriptor.location #=> String
    #   resp.table.storage_descriptor.input_format #=> String
    #   resp.table.storage_descriptor.output_format #=> String
    #   resp.table.storage_descriptor.compressed #=> Boolean
    #   resp.table.storage_descriptor.number_of_buckets #=> Integer
    #   resp.table.storage_descriptor.serde_info.name #=> String
    #   resp.table.storage_descriptor.serde_info.serialization_library #=> String
    #   resp.table.storage_descriptor.serde_info.parameters #=> Hash
    #   resp.table.storage_descriptor.serde_info.parameters["KeyString"] #=> String
    #   resp.table.storage_descriptor.bucket_columns #=> Array
    #   resp.table.storage_descriptor.bucket_columns[0] #=> String
    #   resp.table.storage_descriptor.sort_columns #=> Array
    #   resp.table.storage_descriptor.sort_columns[0].column #=> String
    #   resp.table.storage_descriptor.sort_columns[0].sort_order #=> Integer
    #   resp.table.storage_descriptor.parameters #=> Hash
    #   resp.table.storage_descriptor.parameters["KeyString"] #=> String
    #   resp.table.storage_descriptor.skewed_info.skewed_column_names #=> Array
    #   resp.table.storage_descriptor.skewed_info.skewed_column_names[0] #=> String
    #   resp.table.storage_descriptor.skewed_info.skewed_column_values #=> Array
    #   resp.table.storage_descriptor.skewed_info.skewed_column_values[0] #=> String
    #   resp.table.storage_descriptor.skewed_info.skewed_column_value_location_maps #=> Hash
    #   resp.table.storage_descriptor.skewed_info.skewed_column_value_location_maps["ColumnValuesString"] #=> String
    #   resp.table.storage_descriptor.stored_as_sub_directories #=> Boolean
    #   resp.table.partition_keys #=> Array
    #   resp.table.partition_keys[0].name #=> String
    #   resp.table.partition_keys[0].type #=> String
    #   resp.table.partition_keys[0].comment #=> String
    #   resp.table.partition_keys[0].parameters #=> Hash
    #   resp.table.partition_keys[0].parameters["KeyString"] #=> String
    #   resp.table.view_original_text #=> String
    #   resp.table.view_expanded_text #=> String
    #   resp.table.table_type #=> String
    #   resp.table.parameters #=> Hash
    #   resp.table.parameters["KeyString"] #=> String
    #   resp.table.created_by #=> String
    #   resp.table.is_registered_with_lake_formation #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTable AWS API Documentation
    #
    # @overload get_table(params = {})
    # @param [Hash] params ({})
    def get_table(params = {}, options = {})
      req = build_request(:get_table, params)
      req.send_request(options)
    end

    # Retrieves a specified version of a table.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the tables reside. If none is
    #   provided, the AWS account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The database in the catalog in which the table resides. For Hive
    #   compatibility, this name is entirely lowercase.
    #
    # @option params [required, String] :table_name
    #   The name of the table. For Hive compatibility, this name is entirely
    #   lowercase.
    #
    # @option params [String] :version_id
    #   The ID value of the table version to be retrieved. A `VersionID` is a
    #   string representation of an integer. Each version is incremented by 1.
    #
    # @return [Types::GetTableVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTableVersionResponse#table_version #table_version} => Types::TableVersion
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_table_version({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     version_id: "VersionString",
    #   })
    #
    # @example Response structure
    #
    #   resp.table_version.table.name #=> String
    #   resp.table_version.table.database_name #=> String
    #   resp.table_version.table.description #=> String
    #   resp.table_version.table.owner #=> String
    #   resp.table_version.table.create_time #=> Time
    #   resp.table_version.table.update_time #=> Time
    #   resp.table_version.table.last_access_time #=> Time
    #   resp.table_version.table.last_analyzed_time #=> Time
    #   resp.table_version.table.retention #=> Integer
    #   resp.table_version.table.storage_descriptor.columns #=> Array
    #   resp.table_version.table.storage_descriptor.columns[0].name #=> String
    #   resp.table_version.table.storage_descriptor.columns[0].type #=> String
    #   resp.table_version.table.storage_descriptor.columns[0].comment #=> String
    #   resp.table_version.table.storage_descriptor.columns[0].parameters #=> Hash
    #   resp.table_version.table.storage_descriptor.columns[0].parameters["KeyString"] #=> String
    #   resp.table_version.table.storage_descriptor.location #=> String
    #   resp.table_version.table.storage_descriptor.input_format #=> String
    #   resp.table_version.table.storage_descriptor.output_format #=> String
    #   resp.table_version.table.storage_descriptor.compressed #=> Boolean
    #   resp.table_version.table.storage_descriptor.number_of_buckets #=> Integer
    #   resp.table_version.table.storage_descriptor.serde_info.name #=> String
    #   resp.table_version.table.storage_descriptor.serde_info.serialization_library #=> String
    #   resp.table_version.table.storage_descriptor.serde_info.parameters #=> Hash
    #   resp.table_version.table.storage_descriptor.serde_info.parameters["KeyString"] #=> String
    #   resp.table_version.table.storage_descriptor.bucket_columns #=> Array
    #   resp.table_version.table.storage_descriptor.bucket_columns[0] #=> String
    #   resp.table_version.table.storage_descriptor.sort_columns #=> Array
    #   resp.table_version.table.storage_descriptor.sort_columns[0].column #=> String
    #   resp.table_version.table.storage_descriptor.sort_columns[0].sort_order #=> Integer
    #   resp.table_version.table.storage_descriptor.parameters #=> Hash
    #   resp.table_version.table.storage_descriptor.parameters["KeyString"] #=> String
    #   resp.table_version.table.storage_descriptor.skewed_info.skewed_column_names #=> Array
    #   resp.table_version.table.storage_descriptor.skewed_info.skewed_column_names[0] #=> String
    #   resp.table_version.table.storage_descriptor.skewed_info.skewed_column_values #=> Array
    #   resp.table_version.table.storage_descriptor.skewed_info.skewed_column_values[0] #=> String
    #   resp.table_version.table.storage_descriptor.skewed_info.skewed_column_value_location_maps #=> Hash
    #   resp.table_version.table.storage_descriptor.skewed_info.skewed_column_value_location_maps["ColumnValuesString"] #=> String
    #   resp.table_version.table.storage_descriptor.stored_as_sub_directories #=> Boolean
    #   resp.table_version.table.partition_keys #=> Array
    #   resp.table_version.table.partition_keys[0].name #=> String
    #   resp.table_version.table.partition_keys[0].type #=> String
    #   resp.table_version.table.partition_keys[0].comment #=> String
    #   resp.table_version.table.partition_keys[0].parameters #=> Hash
    #   resp.table_version.table.partition_keys[0].parameters["KeyString"] #=> String
    #   resp.table_version.table.view_original_text #=> String
    #   resp.table_version.table.view_expanded_text #=> String
    #   resp.table_version.table.table_type #=> String
    #   resp.table_version.table.parameters #=> Hash
    #   resp.table_version.table.parameters["KeyString"] #=> String
    #   resp.table_version.table.created_by #=> String
    #   resp.table_version.table.is_registered_with_lake_formation #=> Boolean
    #   resp.table_version.version_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTableVersion AWS API Documentation
    #
    # @overload get_table_version(params = {})
    # @param [Hash] params ({})
    def get_table_version(params = {}, options = {})
      req = build_request(:get_table_version, params)
      req.send_request(options)
    end

    # Retrieves a list of strings that identify available versions of a
    # specified table.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the tables reside. If none is
    #   provided, the AWS account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The database in the catalog in which the table resides. For Hive
    #   compatibility, this name is entirely lowercase.
    #
    # @option params [required, String] :table_name
    #   The name of the table. For Hive compatibility, this name is entirely
    #   lowercase.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is not the first call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of table versions to return in one response.
    #
    # @return [Types::GetTableVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTableVersionsResponse#table_versions #table_versions} => Array&lt;Types::TableVersion&gt;
    #   * {Types::GetTableVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_table_versions({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.table_versions #=> Array
    #   resp.table_versions[0].table.name #=> String
    #   resp.table_versions[0].table.database_name #=> String
    #   resp.table_versions[0].table.description #=> String
    #   resp.table_versions[0].table.owner #=> String
    #   resp.table_versions[0].table.create_time #=> Time
    #   resp.table_versions[0].table.update_time #=> Time
    #   resp.table_versions[0].table.last_access_time #=> Time
    #   resp.table_versions[0].table.last_analyzed_time #=> Time
    #   resp.table_versions[0].table.retention #=> Integer
    #   resp.table_versions[0].table.storage_descriptor.columns #=> Array
    #   resp.table_versions[0].table.storage_descriptor.columns[0].name #=> String
    #   resp.table_versions[0].table.storage_descriptor.columns[0].type #=> String
    #   resp.table_versions[0].table.storage_descriptor.columns[0].comment #=> String
    #   resp.table_versions[0].table.storage_descriptor.columns[0].parameters #=> Hash
    #   resp.table_versions[0].table.storage_descriptor.columns[0].parameters["KeyString"] #=> String
    #   resp.table_versions[0].table.storage_descriptor.location #=> String
    #   resp.table_versions[0].table.storage_descriptor.input_format #=> String
    #   resp.table_versions[0].table.storage_descriptor.output_format #=> String
    #   resp.table_versions[0].table.storage_descriptor.compressed #=> Boolean
    #   resp.table_versions[0].table.storage_descriptor.number_of_buckets #=> Integer
    #   resp.table_versions[0].table.storage_descriptor.serde_info.name #=> String
    #   resp.table_versions[0].table.storage_descriptor.serde_info.serialization_library #=> String
    #   resp.table_versions[0].table.storage_descriptor.serde_info.parameters #=> Hash
    #   resp.table_versions[0].table.storage_descriptor.serde_info.parameters["KeyString"] #=> String
    #   resp.table_versions[0].table.storage_descriptor.bucket_columns #=> Array
    #   resp.table_versions[0].table.storage_descriptor.bucket_columns[0] #=> String
    #   resp.table_versions[0].table.storage_descriptor.sort_columns #=> Array
    #   resp.table_versions[0].table.storage_descriptor.sort_columns[0].column #=> String
    #   resp.table_versions[0].table.storage_descriptor.sort_columns[0].sort_order #=> Integer
    #   resp.table_versions[0].table.storage_descriptor.parameters #=> Hash
    #   resp.table_versions[0].table.storage_descriptor.parameters["KeyString"] #=> String
    #   resp.table_versions[0].table.storage_descriptor.skewed_info.skewed_column_names #=> Array
    #   resp.table_versions[0].table.storage_descriptor.skewed_info.skewed_column_names[0] #=> String
    #   resp.table_versions[0].table.storage_descriptor.skewed_info.skewed_column_values #=> Array
    #   resp.table_versions[0].table.storage_descriptor.skewed_info.skewed_column_values[0] #=> String
    #   resp.table_versions[0].table.storage_descriptor.skewed_info.skewed_column_value_location_maps #=> Hash
    #   resp.table_versions[0].table.storage_descriptor.skewed_info.skewed_column_value_location_maps["ColumnValuesString"] #=> String
    #   resp.table_versions[0].table.storage_descriptor.stored_as_sub_directories #=> Boolean
    #   resp.table_versions[0].table.partition_keys #=> Array
    #   resp.table_versions[0].table.partition_keys[0].name #=> String
    #   resp.table_versions[0].table.partition_keys[0].type #=> String
    #   resp.table_versions[0].table.partition_keys[0].comment #=> String
    #   resp.table_versions[0].table.partition_keys[0].parameters #=> Hash
    #   resp.table_versions[0].table.partition_keys[0].parameters["KeyString"] #=> String
    #   resp.table_versions[0].table.view_original_text #=> String
    #   resp.table_versions[0].table.view_expanded_text #=> String
    #   resp.table_versions[0].table.table_type #=> String
    #   resp.table_versions[0].table.parameters #=> Hash
    #   resp.table_versions[0].table.parameters["KeyString"] #=> String
    #   resp.table_versions[0].table.created_by #=> String
    #   resp.table_versions[0].table.is_registered_with_lake_formation #=> Boolean
    #   resp.table_versions[0].version_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTableVersions AWS API Documentation
    #
    # @overload get_table_versions(params = {})
    # @param [Hash] params ({})
    def get_table_versions(params = {}, options = {})
      req = build_request(:get_table_versions, params)
      req.send_request(options)
    end

    # Retrieves the definitions of some or all of the tables in a given
    # `Database`.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the tables reside. If none is
    #   provided, the AWS account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The database in the catalog whose tables to list. For Hive
    #   compatibility, this name is entirely lowercase.
    #
    # @option params [String] :expression
    #   A regular expression pattern. If present, only those tables whose
    #   names match the pattern are returned.
    #
    # @option params [String] :next_token
    #   A continuation token, included if this is a continuation call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of tables to return in a single response.
    #
    # @return [Types::GetTablesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTablesResponse#table_list #table_list} => Array&lt;Types::Table&gt;
    #   * {Types::GetTablesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_tables({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     expression: "FilterString",
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.table_list #=> Array
    #   resp.table_list[0].name #=> String
    #   resp.table_list[0].database_name #=> String
    #   resp.table_list[0].description #=> String
    #   resp.table_list[0].owner #=> String
    #   resp.table_list[0].create_time #=> Time
    #   resp.table_list[0].update_time #=> Time
    #   resp.table_list[0].last_access_time #=> Time
    #   resp.table_list[0].last_analyzed_time #=> Time
    #   resp.table_list[0].retention #=> Integer
    #   resp.table_list[0].storage_descriptor.columns #=> Array
    #   resp.table_list[0].storage_descriptor.columns[0].name #=> String
    #   resp.table_list[0].storage_descriptor.columns[0].type #=> String
    #   resp.table_list[0].storage_descriptor.columns[0].comment #=> String
    #   resp.table_list[0].storage_descriptor.columns[0].parameters #=> Hash
    #   resp.table_list[0].storage_descriptor.columns[0].parameters["KeyString"] #=> String
    #   resp.table_list[0].storage_descriptor.location #=> String
    #   resp.table_list[0].storage_descriptor.input_format #=> String
    #   resp.table_list[0].storage_descriptor.output_format #=> String
    #   resp.table_list[0].storage_descriptor.compressed #=> Boolean
    #   resp.table_list[0].storage_descriptor.number_of_buckets #=> Integer
    #   resp.table_list[0].storage_descriptor.serde_info.name #=> String
    #   resp.table_list[0].storage_descriptor.serde_info.serialization_library #=> String
    #   resp.table_list[0].storage_descriptor.serde_info.parameters #=> Hash
    #   resp.table_list[0].storage_descriptor.serde_info.parameters["KeyString"] #=> String
    #   resp.table_list[0].storage_descriptor.bucket_columns #=> Array
    #   resp.table_list[0].storage_descriptor.bucket_columns[0] #=> String
    #   resp.table_list[0].storage_descriptor.sort_columns #=> Array
    #   resp.table_list[0].storage_descriptor.sort_columns[0].column #=> String
    #   resp.table_list[0].storage_descriptor.sort_columns[0].sort_order #=> Integer
    #   resp.table_list[0].storage_descriptor.parameters #=> Hash
    #   resp.table_list[0].storage_descriptor.parameters["KeyString"] #=> String
    #   resp.table_list[0].storage_descriptor.skewed_info.skewed_column_names #=> Array
    #   resp.table_list[0].storage_descriptor.skewed_info.skewed_column_names[0] #=> String
    #   resp.table_list[0].storage_descriptor.skewed_info.skewed_column_values #=> Array
    #   resp.table_list[0].storage_descriptor.skewed_info.skewed_column_values[0] #=> String
    #   resp.table_list[0].storage_descriptor.skewed_info.skewed_column_value_location_maps #=> Hash
    #   resp.table_list[0].storage_descriptor.skewed_info.skewed_column_value_location_maps["ColumnValuesString"] #=> String
    #   resp.table_list[0].storage_descriptor.stored_as_sub_directories #=> Boolean
    #   resp.table_list[0].partition_keys #=> Array
    #   resp.table_list[0].partition_keys[0].name #=> String
    #   resp.table_list[0].partition_keys[0].type #=> String
    #   resp.table_list[0].partition_keys[0].comment #=> String
    #   resp.table_list[0].partition_keys[0].parameters #=> Hash
    #   resp.table_list[0].partition_keys[0].parameters["KeyString"] #=> String
    #   resp.table_list[0].view_original_text #=> String
    #   resp.table_list[0].view_expanded_text #=> String
    #   resp.table_list[0].table_type #=> String
    #   resp.table_list[0].parameters #=> Hash
    #   resp.table_list[0].parameters["KeyString"] #=> String
    #   resp.table_list[0].created_by #=> String
    #   resp.table_list[0].is_registered_with_lake_formation #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTables AWS API Documentation
    #
    # @overload get_tables(params = {})
    # @param [Hash] params ({})
    def get_tables(params = {}, options = {})
      req = build_request(:get_tables, params)
      req.send_request(options)
    end

    # Retrieves a list of tags associated with a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which to retrieve
    #   tags.
    #
    # @return [Types::GetTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTagsResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_tags({
    #     resource_arn: "GlueResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTags AWS API Documentation
    #
    # @overload get_tags(params = {})
    # @param [Hash] params ({})
    def get_tags(params = {}, options = {})
      req = build_request(:get_tags, params)
      req.send_request(options)
    end

    # Retrieves the definition of a trigger.
    #
    # @option params [required, String] :name
    #   The name of the trigger to retrieve.
    #
    # @return [Types::GetTriggerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTriggerResponse#trigger #trigger} => Types::Trigger
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_trigger({
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.trigger.name #=> String
    #   resp.trigger.workflow_name #=> String
    #   resp.trigger.id #=> String
    #   resp.trigger.type #=> String, one of "SCHEDULED", "CONDITIONAL", "ON_DEMAND"
    #   resp.trigger.state #=> String, one of "CREATING", "CREATED", "ACTIVATING", "ACTIVATED", "DEACTIVATING", "DEACTIVATED", "DELETING", "UPDATING"
    #   resp.trigger.description #=> String
    #   resp.trigger.schedule #=> String
    #   resp.trigger.actions #=> Array
    #   resp.trigger.actions[0].job_name #=> String
    #   resp.trigger.actions[0].arguments #=> Hash
    #   resp.trigger.actions[0].arguments["GenericString"] #=> String
    #   resp.trigger.actions[0].timeout #=> Integer
    #   resp.trigger.actions[0].security_configuration #=> String
    #   resp.trigger.actions[0].notification_property.notify_delay_after #=> Integer
    #   resp.trigger.actions[0].crawler_name #=> String
    #   resp.trigger.predicate.logical #=> String, one of "AND", "ANY"
    #   resp.trigger.predicate.conditions #=> Array
    #   resp.trigger.predicate.conditions[0].logical_operator #=> String, one of "EQUALS"
    #   resp.trigger.predicate.conditions[0].job_name #=> String
    #   resp.trigger.predicate.conditions[0].state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #   resp.trigger.predicate.conditions[0].crawler_name #=> String
    #   resp.trigger.predicate.conditions[0].crawl_state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTrigger AWS API Documentation
    #
    # @overload get_trigger(params = {})
    # @param [Hash] params ({})
    def get_trigger(params = {}, options = {})
      req = build_request(:get_trigger, params)
      req.send_request(options)
    end

    # Gets all the triggers associated with a job.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation call.
    #
    # @option params [String] :dependent_job_name
    #   The name of the job to retrieve triggers for. The trigger that can
    #   start this job is returned, and if there is no such trigger, all
    #   triggers are returned.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the response.
    #
    # @return [Types::GetTriggersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTriggersResponse#triggers #triggers} => Array&lt;Types::Trigger&gt;
    #   * {Types::GetTriggersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_triggers({
    #     next_token: "GenericString",
    #     dependent_job_name: "NameString",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.triggers #=> Array
    #   resp.triggers[0].name #=> String
    #   resp.triggers[0].workflow_name #=> String
    #   resp.triggers[0].id #=> String
    #   resp.triggers[0].type #=> String, one of "SCHEDULED", "CONDITIONAL", "ON_DEMAND"
    #   resp.triggers[0].state #=> String, one of "CREATING", "CREATED", "ACTIVATING", "ACTIVATED", "DEACTIVATING", "DEACTIVATED", "DELETING", "UPDATING"
    #   resp.triggers[0].description #=> String
    #   resp.triggers[0].schedule #=> String
    #   resp.triggers[0].actions #=> Array
    #   resp.triggers[0].actions[0].job_name #=> String
    #   resp.triggers[0].actions[0].arguments #=> Hash
    #   resp.triggers[0].actions[0].arguments["GenericString"] #=> String
    #   resp.triggers[0].actions[0].timeout #=> Integer
    #   resp.triggers[0].actions[0].security_configuration #=> String
    #   resp.triggers[0].actions[0].notification_property.notify_delay_after #=> Integer
    #   resp.triggers[0].actions[0].crawler_name #=> String
    #   resp.triggers[0].predicate.logical #=> String, one of "AND", "ANY"
    #   resp.triggers[0].predicate.conditions #=> Array
    #   resp.triggers[0].predicate.conditions[0].logical_operator #=> String, one of "EQUALS"
    #   resp.triggers[0].predicate.conditions[0].job_name #=> String
    #   resp.triggers[0].predicate.conditions[0].state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #   resp.triggers[0].predicate.conditions[0].crawler_name #=> String
    #   resp.triggers[0].predicate.conditions[0].crawl_state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTriggers AWS API Documentation
    #
    # @overload get_triggers(params = {})
    # @param [Hash] params ({})
    def get_triggers(params = {}, options = {})
      req = build_request(:get_triggers, params)
      req.send_request(options)
    end

    # Retrieves a specified function definition from the Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the function to be retrieved is
    #   located. If none is provided, the AWS account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database where the function is located.
    #
    # @option params [required, String] :function_name
    #   The name of the function.
    #
    # @return [Types::GetUserDefinedFunctionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserDefinedFunctionResponse#user_defined_function #user_defined_function} => Types::UserDefinedFunction
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_defined_function({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     function_name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_defined_function.function_name #=> String
    #   resp.user_defined_function.database_name #=> String
    #   resp.user_defined_function.class_name #=> String
    #   resp.user_defined_function.owner_name #=> String
    #   resp.user_defined_function.owner_type #=> String, one of "USER", "ROLE", "GROUP"
    #   resp.user_defined_function.create_time #=> Time
    #   resp.user_defined_function.resource_uris #=> Array
    #   resp.user_defined_function.resource_uris[0].resource_type #=> String, one of "JAR", "FILE", "ARCHIVE"
    #   resp.user_defined_function.resource_uris[0].uri #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUserDefinedFunction AWS API Documentation
    #
    # @overload get_user_defined_function(params = {})
    # @param [Hash] params ({})
    def get_user_defined_function(params = {}, options = {})
      req = build_request(:get_user_defined_function, params)
      req.send_request(options)
    end

    # Retrieves multiple function definitions from the Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the functions to be retrieved are
    #   located. If none is provided, the AWS account ID is used by default.
    #
    # @option params [String] :database_name
    #   The name of the catalog database where the functions are located. If
    #   none is provided, functions from all the databases across the catalog
    #   will be returned.
    #
    # @option params [required, String] :pattern
    #   An optional function-name pattern string that filters the function
    #   definitions returned.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of functions to return in one response.
    #
    # @return [Types::GetUserDefinedFunctionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserDefinedFunctionsResponse#user_defined_functions #user_defined_functions} => Array&lt;Types::UserDefinedFunction&gt;
    #   * {Types::GetUserDefinedFunctionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_defined_functions({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString",
    #     pattern: "NameString", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.user_defined_functions #=> Array
    #   resp.user_defined_functions[0].function_name #=> String
    #   resp.user_defined_functions[0].database_name #=> String
    #   resp.user_defined_functions[0].class_name #=> String
    #   resp.user_defined_functions[0].owner_name #=> String
    #   resp.user_defined_functions[0].owner_type #=> String, one of "USER", "ROLE", "GROUP"
    #   resp.user_defined_functions[0].create_time #=> Time
    #   resp.user_defined_functions[0].resource_uris #=> Array
    #   resp.user_defined_functions[0].resource_uris[0].resource_type #=> String, one of "JAR", "FILE", "ARCHIVE"
    #   resp.user_defined_functions[0].resource_uris[0].uri #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUserDefinedFunctions AWS API Documentation
    #
    # @overload get_user_defined_functions(params = {})
    # @param [Hash] params ({})
    def get_user_defined_functions(params = {}, options = {})
      req = build_request(:get_user_defined_functions, params)
      req.send_request(options)
    end

    # Retrieves resource metadata for a workflow.
    #
    # @option params [required, String] :name
    #   The name of the workflow to retrieve.
    #
    # @option params [Boolean] :include_graph
    #   Specifies whether to include a graph when returning the workflow
    #   resource metadata.
    #
    # @return [Types::GetWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkflowResponse#workflow #workflow} => Types::Workflow
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow({
    #     name: "NameString", # required
    #     include_graph: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow.name #=> String
    #   resp.workflow.description #=> String
    #   resp.workflow.default_run_properties #=> Hash
    #   resp.workflow.default_run_properties["IdString"] #=> String
    #   resp.workflow.created_on #=> Time
    #   resp.workflow.last_modified_on #=> Time
    #   resp.workflow.last_run.name #=> String
    #   resp.workflow.last_run.workflow_run_id #=> String
    #   resp.workflow.last_run.workflow_run_properties #=> Hash
    #   resp.workflow.last_run.workflow_run_properties["IdString"] #=> String
    #   resp.workflow.last_run.started_on #=> Time
    #   resp.workflow.last_run.completed_on #=> Time
    #   resp.workflow.last_run.status #=> String, one of "RUNNING", "COMPLETED", "STOPPING", "STOPPED"
    #   resp.workflow.last_run.statistics.total_actions #=> Integer
    #   resp.workflow.last_run.statistics.timeout_actions #=> Integer
    #   resp.workflow.last_run.statistics.failed_actions #=> Integer
    #   resp.workflow.last_run.statistics.stopped_actions #=> Integer
    #   resp.workflow.last_run.statistics.succeeded_actions #=> Integer
    #   resp.workflow.last_run.statistics.running_actions #=> Integer
    #   resp.workflow.last_run.graph.nodes #=> Array
    #   resp.workflow.last_run.graph.nodes[0].type #=> String, one of "CRAWLER", "JOB", "TRIGGER"
    #   resp.workflow.last_run.graph.nodes[0].name #=> String
    #   resp.workflow.last_run.graph.nodes[0].unique_id #=> String
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.name #=> String
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.workflow_name #=> String
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.id #=> String
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.type #=> String, one of "SCHEDULED", "CONDITIONAL", "ON_DEMAND"
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.state #=> String, one of "CREATING", "CREATED", "ACTIVATING", "ACTIVATED", "DEACTIVATING", "DEACTIVATED", "DELETING", "UPDATING"
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.description #=> String
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.schedule #=> String
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.actions #=> Array
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.actions[0].job_name #=> String
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.actions[0].arguments #=> Hash
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.actions[0].arguments["GenericString"] #=> String
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.actions[0].timeout #=> Integer
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.actions[0].security_configuration #=> String
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.actions[0].notification_property.notify_delay_after #=> Integer
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.actions[0].crawler_name #=> String
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.predicate.logical #=> String, one of "AND", "ANY"
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.predicate.conditions #=> Array
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].logical_operator #=> String, one of "EQUALS"
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].job_name #=> String
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].crawler_name #=> String
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].crawl_state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED"
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs #=> Array
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].id #=> String
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].attempt #=> Integer
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].previous_run_id #=> String
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].trigger_name #=> String
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].job_name #=> String
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].started_on #=> Time
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].last_modified_on #=> Time
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].completed_on #=> Time
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].job_run_state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].arguments #=> Hash
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].arguments["GenericString"] #=> String
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].error_message #=> String
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].predecessor_runs #=> Array
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].predecessor_runs[0].job_name #=> String
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].predecessor_runs[0].run_id #=> String
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].allocated_capacity #=> Integer
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].execution_time #=> Integer
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].timeout #=> Integer
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].max_capacity #=> Float
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].worker_type #=> String, one of "Standard", "G.1X", "G.2X"
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].number_of_workers #=> Integer
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].security_configuration #=> String
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].log_group_name #=> String
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].notification_property.notify_delay_after #=> Integer
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].glue_version #=> String
    #   resp.workflow.last_run.graph.nodes[0].crawler_details.crawls #=> Array
    #   resp.workflow.last_run.graph.nodes[0].crawler_details.crawls[0].state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED"
    #   resp.workflow.last_run.graph.nodes[0].crawler_details.crawls[0].started_on #=> Time
    #   resp.workflow.last_run.graph.nodes[0].crawler_details.crawls[0].completed_on #=> Time
    #   resp.workflow.last_run.graph.nodes[0].crawler_details.crawls[0].error_message #=> String
    #   resp.workflow.last_run.graph.nodes[0].crawler_details.crawls[0].log_group #=> String
    #   resp.workflow.last_run.graph.nodes[0].crawler_details.crawls[0].log_stream #=> String
    #   resp.workflow.last_run.graph.edges #=> Array
    #   resp.workflow.last_run.graph.edges[0].source_id #=> String
    #   resp.workflow.last_run.graph.edges[0].destination_id #=> String
    #   resp.workflow.graph.nodes #=> Array
    #   resp.workflow.graph.nodes[0].type #=> String, one of "CRAWLER", "JOB", "TRIGGER"
    #   resp.workflow.graph.nodes[0].name #=> String
    #   resp.workflow.graph.nodes[0].unique_id #=> String
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.name #=> String
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.workflow_name #=> String
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.id #=> String
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.type #=> String, one of "SCHEDULED", "CONDITIONAL", "ON_DEMAND"
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.state #=> String, one of "CREATING", "CREATED", "ACTIVATING", "ACTIVATED", "DEACTIVATING", "DEACTIVATED", "DELETING", "UPDATING"
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.description #=> String
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.schedule #=> String
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.actions #=> Array
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.actions[0].job_name #=> String
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.actions[0].arguments #=> Hash
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.actions[0].arguments["GenericString"] #=> String
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.actions[0].timeout #=> Integer
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.actions[0].security_configuration #=> String
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.actions[0].notification_property.notify_delay_after #=> Integer
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.actions[0].crawler_name #=> String
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.predicate.logical #=> String, one of "AND", "ANY"
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.predicate.conditions #=> Array
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].logical_operator #=> String, one of "EQUALS"
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].job_name #=> String
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].crawler_name #=> String
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].crawl_state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED"
    #   resp.workflow.graph.nodes[0].job_details.job_runs #=> Array
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].id #=> String
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].attempt #=> Integer
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].previous_run_id #=> String
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].trigger_name #=> String
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].job_name #=> String
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].started_on #=> Time
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].last_modified_on #=> Time
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].completed_on #=> Time
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].job_run_state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].arguments #=> Hash
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].arguments["GenericString"] #=> String
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].error_message #=> String
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].predecessor_runs #=> Array
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].predecessor_runs[0].job_name #=> String
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].predecessor_runs[0].run_id #=> String
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].allocated_capacity #=> Integer
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].execution_time #=> Integer
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].timeout #=> Integer
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].max_capacity #=> Float
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].worker_type #=> String, one of "Standard", "G.1X", "G.2X"
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].number_of_workers #=> Integer
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].security_configuration #=> String
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].log_group_name #=> String
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].notification_property.notify_delay_after #=> Integer
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].glue_version #=> String
    #   resp.workflow.graph.nodes[0].crawler_details.crawls #=> Array
    #   resp.workflow.graph.nodes[0].crawler_details.crawls[0].state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED"
    #   resp.workflow.graph.nodes[0].crawler_details.crawls[0].started_on #=> Time
    #   resp.workflow.graph.nodes[0].crawler_details.crawls[0].completed_on #=> Time
    #   resp.workflow.graph.nodes[0].crawler_details.crawls[0].error_message #=> String
    #   resp.workflow.graph.nodes[0].crawler_details.crawls[0].log_group #=> String
    #   resp.workflow.graph.nodes[0].crawler_details.crawls[0].log_stream #=> String
    #   resp.workflow.graph.edges #=> Array
    #   resp.workflow.graph.edges[0].source_id #=> String
    #   resp.workflow.graph.edges[0].destination_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetWorkflow AWS API Documentation
    #
    # @overload get_workflow(params = {})
    # @param [Hash] params ({})
    def get_workflow(params = {}, options = {})
      req = build_request(:get_workflow, params)
      req.send_request(options)
    end

    # Retrieves the metadata for a given workflow run.
    #
    # @option params [required, String] :name
    #   Name of the workflow being run.
    #
    # @option params [required, String] :run_id
    #   The ID of the workflow run.
    #
    # @option params [Boolean] :include_graph
    #   Specifies whether to include the workflow graph in response or not.
    #
    # @return [Types::GetWorkflowRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkflowRunResponse#run #run} => Types::WorkflowRun
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow_run({
    #     name: "NameString", # required
    #     run_id: "IdString", # required
    #     include_graph: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.run.name #=> String
    #   resp.run.workflow_run_id #=> String
    #   resp.run.workflow_run_properties #=> Hash
    #   resp.run.workflow_run_properties["IdString"] #=> String
    #   resp.run.started_on #=> Time
    #   resp.run.completed_on #=> Time
    #   resp.run.status #=> String, one of "RUNNING", "COMPLETED", "STOPPING", "STOPPED"
    #   resp.run.statistics.total_actions #=> Integer
    #   resp.run.statistics.timeout_actions #=> Integer
    #   resp.run.statistics.failed_actions #=> Integer
    #   resp.run.statistics.stopped_actions #=> Integer
    #   resp.run.statistics.succeeded_actions #=> Integer
    #   resp.run.statistics.running_actions #=> Integer
    #   resp.run.graph.nodes #=> Array
    #   resp.run.graph.nodes[0].type #=> String, one of "CRAWLER", "JOB", "TRIGGER"
    #   resp.run.graph.nodes[0].name #=> String
    #   resp.run.graph.nodes[0].unique_id #=> String
    #   resp.run.graph.nodes[0].trigger_details.trigger.name #=> String
    #   resp.run.graph.nodes[0].trigger_details.trigger.workflow_name #=> String
    #   resp.run.graph.nodes[0].trigger_details.trigger.id #=> String
    #   resp.run.graph.nodes[0].trigger_details.trigger.type #=> String, one of "SCHEDULED", "CONDITIONAL", "ON_DEMAND"
    #   resp.run.graph.nodes[0].trigger_details.trigger.state #=> String, one of "CREATING", "CREATED", "ACTIVATING", "ACTIVATED", "DEACTIVATING", "DEACTIVATED", "DELETING", "UPDATING"
    #   resp.run.graph.nodes[0].trigger_details.trigger.description #=> String
    #   resp.run.graph.nodes[0].trigger_details.trigger.schedule #=> String
    #   resp.run.graph.nodes[0].trigger_details.trigger.actions #=> Array
    #   resp.run.graph.nodes[0].trigger_details.trigger.actions[0].job_name #=> String
    #   resp.run.graph.nodes[0].trigger_details.trigger.actions[0].arguments #=> Hash
    #   resp.run.graph.nodes[0].trigger_details.trigger.actions[0].arguments["GenericString"] #=> String
    #   resp.run.graph.nodes[0].trigger_details.trigger.actions[0].timeout #=> Integer
    #   resp.run.graph.nodes[0].trigger_details.trigger.actions[0].security_configuration #=> String
    #   resp.run.graph.nodes[0].trigger_details.trigger.actions[0].notification_property.notify_delay_after #=> Integer
    #   resp.run.graph.nodes[0].trigger_details.trigger.actions[0].crawler_name #=> String
    #   resp.run.graph.nodes[0].trigger_details.trigger.predicate.logical #=> String, one of "AND", "ANY"
    #   resp.run.graph.nodes[0].trigger_details.trigger.predicate.conditions #=> Array
    #   resp.run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].logical_operator #=> String, one of "EQUALS"
    #   resp.run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].job_name #=> String
    #   resp.run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #   resp.run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].crawler_name #=> String
    #   resp.run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].crawl_state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED"
    #   resp.run.graph.nodes[0].job_details.job_runs #=> Array
    #   resp.run.graph.nodes[0].job_details.job_runs[0].id #=> String
    #   resp.run.graph.nodes[0].job_details.job_runs[0].attempt #=> Integer
    #   resp.run.graph.nodes[0].job_details.job_runs[0].previous_run_id #=> String
    #   resp.run.graph.nodes[0].job_details.job_runs[0].trigger_name #=> String
    #   resp.run.graph.nodes[0].job_details.job_runs[0].job_name #=> String
    #   resp.run.graph.nodes[0].job_details.job_runs[0].started_on #=> Time
    #   resp.run.graph.nodes[0].job_details.job_runs[0].last_modified_on #=> Time
    #   resp.run.graph.nodes[0].job_details.job_runs[0].completed_on #=> Time
    #   resp.run.graph.nodes[0].job_details.job_runs[0].job_run_state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #   resp.run.graph.nodes[0].job_details.job_runs[0].arguments #=> Hash
    #   resp.run.graph.nodes[0].job_details.job_runs[0].arguments["GenericString"] #=> String
    #   resp.run.graph.nodes[0].job_details.job_runs[0].error_message #=> String
    #   resp.run.graph.nodes[0].job_details.job_runs[0].predecessor_runs #=> Array
    #   resp.run.graph.nodes[0].job_details.job_runs[0].predecessor_runs[0].job_name #=> String
    #   resp.run.graph.nodes[0].job_details.job_runs[0].predecessor_runs[0].run_id #=> String
    #   resp.run.graph.nodes[0].job_details.job_runs[0].allocated_capacity #=> Integer
    #   resp.run.graph.nodes[0].job_details.job_runs[0].execution_time #=> Integer
    #   resp.run.graph.nodes[0].job_details.job_runs[0].timeout #=> Integer
    #   resp.run.graph.nodes[0].job_details.job_runs[0].max_capacity #=> Float
    #   resp.run.graph.nodes[0].job_details.job_runs[0].worker_type #=> String, one of "Standard", "G.1X", "G.2X"
    #   resp.run.graph.nodes[0].job_details.job_runs[0].number_of_workers #=> Integer
    #   resp.run.graph.nodes[0].job_details.job_runs[0].security_configuration #=> String
    #   resp.run.graph.nodes[0].job_details.job_runs[0].log_group_name #=> String
    #   resp.run.graph.nodes[0].job_details.job_runs[0].notification_property.notify_delay_after #=> Integer
    #   resp.run.graph.nodes[0].job_details.job_runs[0].glue_version #=> String
    #   resp.run.graph.nodes[0].crawler_details.crawls #=> Array
    #   resp.run.graph.nodes[0].crawler_details.crawls[0].state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED"
    #   resp.run.graph.nodes[0].crawler_details.crawls[0].started_on #=> Time
    #   resp.run.graph.nodes[0].crawler_details.crawls[0].completed_on #=> Time
    #   resp.run.graph.nodes[0].crawler_details.crawls[0].error_message #=> String
    #   resp.run.graph.nodes[0].crawler_details.crawls[0].log_group #=> String
    #   resp.run.graph.nodes[0].crawler_details.crawls[0].log_stream #=> String
    #   resp.run.graph.edges #=> Array
    #   resp.run.graph.edges[0].source_id #=> String
    #   resp.run.graph.edges[0].destination_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetWorkflowRun AWS API Documentation
    #
    # @overload get_workflow_run(params = {})
    # @param [Hash] params ({})
    def get_workflow_run(params = {}, options = {})
      req = build_request(:get_workflow_run, params)
      req.send_request(options)
    end

    # Retrieves the workflow run properties which were set during the run.
    #
    # @option params [required, String] :name
    #   Name of the workflow which was run.
    #
    # @option params [required, String] :run_id
    #   The ID of the workflow run whose run properties should be returned.
    #
    # @return [Types::GetWorkflowRunPropertiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkflowRunPropertiesResponse#run_properties #run_properties} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow_run_properties({
    #     name: "NameString", # required
    #     run_id: "IdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.run_properties #=> Hash
    #   resp.run_properties["IdString"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetWorkflowRunProperties AWS API Documentation
    #
    # @overload get_workflow_run_properties(params = {})
    # @param [Hash] params ({})
    def get_workflow_run_properties(params = {}, options = {})
      req = build_request(:get_workflow_run_properties, params)
      req.send_request(options)
    end

    # Retrieves metadata for all runs of a given workflow.
    #
    # @option params [required, String] :name
    #   Name of the workflow whose metadata of runs should be returned.
    #
    # @option params [Boolean] :include_graph
    #   Specifies whether to include the workflow graph in response or not.
    #
    # @option params [String] :next_token
    #   The maximum size of the response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of workflow runs to be included in the response.
    #
    # @return [Types::GetWorkflowRunsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkflowRunsResponse#runs #runs} => Array&lt;Types::WorkflowRun&gt;
    #   * {Types::GetWorkflowRunsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow_runs({
    #     name: "NameString", # required
    #     include_graph: false,
    #     next_token: "GenericString",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.runs #=> Array
    #   resp.runs[0].name #=> String
    #   resp.runs[0].workflow_run_id #=> String
    #   resp.runs[0].workflow_run_properties #=> Hash
    #   resp.runs[0].workflow_run_properties["IdString"] #=> String
    #   resp.runs[0].started_on #=> Time
    #   resp.runs[0].completed_on #=> Time
    #   resp.runs[0].status #=> String, one of "RUNNING", "COMPLETED", "STOPPING", "STOPPED"
    #   resp.runs[0].statistics.total_actions #=> Integer
    #   resp.runs[0].statistics.timeout_actions #=> Integer
    #   resp.runs[0].statistics.failed_actions #=> Integer
    #   resp.runs[0].statistics.stopped_actions #=> Integer
    #   resp.runs[0].statistics.succeeded_actions #=> Integer
    #   resp.runs[0].statistics.running_actions #=> Integer
    #   resp.runs[0].graph.nodes #=> Array
    #   resp.runs[0].graph.nodes[0].type #=> String, one of "CRAWLER", "JOB", "TRIGGER"
    #   resp.runs[0].graph.nodes[0].name #=> String
    #   resp.runs[0].graph.nodes[0].unique_id #=> String
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.name #=> String
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.workflow_name #=> String
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.id #=> String
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.type #=> String, one of "SCHEDULED", "CONDITIONAL", "ON_DEMAND"
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.state #=> String, one of "CREATING", "CREATED", "ACTIVATING", "ACTIVATED", "DEACTIVATING", "DEACTIVATED", "DELETING", "UPDATING"
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.description #=> String
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.schedule #=> String
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.actions #=> Array
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.actions[0].job_name #=> String
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.actions[0].arguments #=> Hash
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.actions[0].arguments["GenericString"] #=> String
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.actions[0].timeout #=> Integer
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.actions[0].security_configuration #=> String
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.actions[0].notification_property.notify_delay_after #=> Integer
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.actions[0].crawler_name #=> String
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.predicate.logical #=> String, one of "AND", "ANY"
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.predicate.conditions #=> Array
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.predicate.conditions[0].logical_operator #=> String, one of "EQUALS"
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.predicate.conditions[0].job_name #=> String
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.predicate.conditions[0].state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.predicate.conditions[0].crawler_name #=> String
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.predicate.conditions[0].crawl_state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED"
    #   resp.runs[0].graph.nodes[0].job_details.job_runs #=> Array
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].id #=> String
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].attempt #=> Integer
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].previous_run_id #=> String
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].trigger_name #=> String
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].job_name #=> String
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].started_on #=> Time
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].last_modified_on #=> Time
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].completed_on #=> Time
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].job_run_state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].arguments #=> Hash
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].arguments["GenericString"] #=> String
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].error_message #=> String
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].predecessor_runs #=> Array
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].predecessor_runs[0].job_name #=> String
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].predecessor_runs[0].run_id #=> String
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].allocated_capacity #=> Integer
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].execution_time #=> Integer
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].timeout #=> Integer
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].max_capacity #=> Float
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].worker_type #=> String, one of "Standard", "G.1X", "G.2X"
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].number_of_workers #=> Integer
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].security_configuration #=> String
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].log_group_name #=> String
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].notification_property.notify_delay_after #=> Integer
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].glue_version #=> String
    #   resp.runs[0].graph.nodes[0].crawler_details.crawls #=> Array
    #   resp.runs[0].graph.nodes[0].crawler_details.crawls[0].state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED"
    #   resp.runs[0].graph.nodes[0].crawler_details.crawls[0].started_on #=> Time
    #   resp.runs[0].graph.nodes[0].crawler_details.crawls[0].completed_on #=> Time
    #   resp.runs[0].graph.nodes[0].crawler_details.crawls[0].error_message #=> String
    #   resp.runs[0].graph.nodes[0].crawler_details.crawls[0].log_group #=> String
    #   resp.runs[0].graph.nodes[0].crawler_details.crawls[0].log_stream #=> String
    #   resp.runs[0].graph.edges #=> Array
    #   resp.runs[0].graph.edges[0].source_id #=> String
    #   resp.runs[0].graph.edges[0].destination_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetWorkflowRuns AWS API Documentation
    #
    # @overload get_workflow_runs(params = {})
    # @param [Hash] params ({})
    def get_workflow_runs(params = {}, options = {})
      req = build_request(:get_workflow_runs, params)
      req.send_request(options)
    end

    # Imports an existing Amazon Athena Data Catalog to AWS Glue
    #
    # @option params [String] :catalog_id
    #   The ID of the catalog to import. Currently, this should be the AWS
    #   account ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_catalog_to_glue({
    #     catalog_id: "CatalogIdString",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ImportCatalogToGlue AWS API Documentation
    #
    # @overload import_catalog_to_glue(params = {})
    # @param [Hash] params ({})
    def import_catalog_to_glue(params = {}, options = {})
      req = build_request(:import_catalog_to_glue, params)
      req.send_request(options)
    end

    # Retrieves the names of all crawler resources in this AWS account, or
    # the resources with the specified tag. This operation allows you to see
    # which resources are available in your account, and their names.
    #
    # This operation takes the optional `Tags` field, which you can use as a
    # filter on the response so that tagged resources can be retrieved as a
    # group. If you choose to use tags filtering, only resources with the
    # tag are retrieved.
    #
    # @option params [Integer] :max_results
    #   The maximum size of a list to return.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation request.
    #
    # @option params [Hash<String,String>] :tags
    #   Specifies to return only these tagged resources.
    #
    # @return [Types::ListCrawlersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCrawlersResponse#crawler_names #crawler_names} => Array&lt;String&gt;
    #   * {Types::ListCrawlersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_crawlers({
    #     max_results: 1,
    #     next_token: "Token",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.crawler_names #=> Array
    #   resp.crawler_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListCrawlers AWS API Documentation
    #
    # @overload list_crawlers(params = {})
    # @param [Hash] params ({})
    def list_crawlers(params = {}, options = {})
      req = build_request(:list_crawlers, params)
      req.send_request(options)
    end

    # Retrieves the names of all `DevEndpoint` resources in this AWS
    # account, or the resources with the specified tag. This operation
    # allows you to see which resources are available in your account, and
    # their names.
    #
    # This operation takes the optional `Tags` field, which you can use as a
    # filter on the response so that tagged resources can be retrieved as a
    # group. If you choose to use tags filtering, only resources with the
    # tag are retrieved.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation request.
    #
    # @option params [Integer] :max_results
    #   The maximum size of a list to return.
    #
    # @option params [Hash<String,String>] :tags
    #   Specifies to return only these tagged resources.
    #
    # @return [Types::ListDevEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDevEndpointsResponse#dev_endpoint_names #dev_endpoint_names} => Array&lt;String&gt;
    #   * {Types::ListDevEndpointsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dev_endpoints({
    #     next_token: "GenericString",
    #     max_results: 1,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.dev_endpoint_names #=> Array
    #   resp.dev_endpoint_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListDevEndpoints AWS API Documentation
    #
    # @overload list_dev_endpoints(params = {})
    # @param [Hash] params ({})
    def list_dev_endpoints(params = {}, options = {})
      req = build_request(:list_dev_endpoints, params)
      req.send_request(options)
    end

    # Retrieves the names of all job resources in this AWS account, or the
    # resources with the specified tag. This operation allows you to see
    # which resources are available in your account, and their names.
    #
    # This operation takes the optional `Tags` field, which you can use as a
    # filter on the response so that tagged resources can be retrieved as a
    # group. If you choose to use tags filtering, only resources with the
    # tag are retrieved.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation request.
    #
    # @option params [Integer] :max_results
    #   The maximum size of a list to return.
    #
    # @option params [Hash<String,String>] :tags
    #   Specifies to return only these tagged resources.
    #
    # @return [Types::ListJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobsResponse#job_names #job_names} => Array&lt;String&gt;
    #   * {Types::ListJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs({
    #     next_token: "GenericString",
    #     max_results: 1,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_names #=> Array
    #   resp.job_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListJobs AWS API Documentation
    #
    # @overload list_jobs(params = {})
    # @param [Hash] params ({})
    def list_jobs(params = {}, options = {})
      req = build_request(:list_jobs, params)
      req.send_request(options)
    end

    # Retrieves a sortable, filterable list of existing AWS Glue machine
    # learning transforms in this AWS account, or the resources with the
    # specified tag. This operation takes the optional `Tags` field, which
    # you can use as a filter of the responses so that tagged resources can
    # be retrieved as a group. If you choose to use tag filtering, only
    # resources with the tags are retrieved.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation request.
    #
    # @option params [Integer] :max_results
    #   The maximum size of a list to return.
    #
    # @option params [Types::TransformFilterCriteria] :filter
    #   A `TransformFilterCriteria` used to filter the machine learning
    #   transforms.
    #
    # @option params [Types::TransformSortCriteria] :sort
    #   A `TransformSortCriteria` used to sort the machine learning
    #   transforms.
    #
    # @option params [Hash<String,String>] :tags
    #   Specifies to return only these tagged resources.
    #
    # @return [Types::ListMLTransformsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMLTransformsResponse#transform_ids #transform_ids} => Array&lt;String&gt;
    #   * {Types::ListMLTransformsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ml_transforms({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filter: {
    #       name: "NameString",
    #       transform_type: "FIND_MATCHES", # accepts FIND_MATCHES
    #       status: "NOT_READY", # accepts NOT_READY, READY, DELETING
    #       glue_version: "GlueVersionString",
    #       created_before: Time.now,
    #       created_after: Time.now,
    #       last_modified_before: Time.now,
    #       last_modified_after: Time.now,
    #       schema: [
    #         {
    #           name: "ColumnNameString",
    #           data_type: "ColumnTypeString",
    #         },
    #       ],
    #     },
    #     sort: {
    #       column: "NAME", # required, accepts NAME, TRANSFORM_TYPE, STATUS, CREATED, LAST_MODIFIED
    #       sort_direction: "DESCENDING", # required, accepts DESCENDING, ASCENDING
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.transform_ids #=> Array
    #   resp.transform_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListMLTransforms AWS API Documentation
    #
    # @overload list_ml_transforms(params = {})
    # @param [Hash] params ({})
    def list_ml_transforms(params = {}, options = {})
      req = build_request(:list_ml_transforms, params)
      req.send_request(options)
    end

    # Retrieves the names of all trigger resources in this AWS account, or
    # the resources with the specified tag. This operation allows you to see
    # which resources are available in your account, and their names.
    #
    # This operation takes the optional `Tags` field, which you can use as a
    # filter on the response so that tagged resources can be retrieved as a
    # group. If you choose to use tags filtering, only resources with the
    # tag are retrieved.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation request.
    #
    # @option params [String] :dependent_job_name
    #   The name of the job for which to retrieve triggers. The trigger that
    #   can start this job is returned. If there is no such trigger, all
    #   triggers are returned.
    #
    # @option params [Integer] :max_results
    #   The maximum size of a list to return.
    #
    # @option params [Hash<String,String>] :tags
    #   Specifies to return only these tagged resources.
    #
    # @return [Types::ListTriggersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTriggersResponse#trigger_names #trigger_names} => Array&lt;String&gt;
    #   * {Types::ListTriggersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_triggers({
    #     next_token: "GenericString",
    #     dependent_job_name: "NameString",
    #     max_results: 1,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.trigger_names #=> Array
    #   resp.trigger_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListTriggers AWS API Documentation
    #
    # @overload list_triggers(params = {})
    # @param [Hash] params ({})
    def list_triggers(params = {}, options = {})
      req = build_request(:list_triggers, params)
      req.send_request(options)
    end

    # Lists names of workflows created in the account.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation request.
    #
    # @option params [Integer] :max_results
    #   The maximum size of a list to return.
    #
    # @return [Types::ListWorkflowsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkflowsResponse#workflows #workflows} => Array&lt;String&gt;
    #   * {Types::ListWorkflowsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workflows({
    #     next_token: "GenericString",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.workflows #=> Array
    #   resp.workflows[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListWorkflows AWS API Documentation
    #
    # @overload list_workflows(params = {})
    # @param [Hash] params ({})
    def list_workflows(params = {}, options = {})
      req = build_request(:list_workflows, params)
      req.send_request(options)
    end

    # Sets the security configuration for a specified catalog. After the
    # configuration has been set, the specified encryption is applied to
    # every catalog write thereafter.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog to set the security configuration for. If
    #   none is provided, the AWS account ID is used by default.
    #
    # @option params [required, Types::DataCatalogEncryptionSettings] :data_catalog_encryption_settings
    #   The security configuration to set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_data_catalog_encryption_settings({
    #     catalog_id: "CatalogIdString",
    #     data_catalog_encryption_settings: { # required
    #       encryption_at_rest: {
    #         catalog_encryption_mode: "DISABLED", # required, accepts DISABLED, SSE-KMS
    #         sse_aws_kms_key_id: "NameString",
    #       },
    #       connection_password_encryption: {
    #         return_connection_password_encrypted: false, # required
    #         aws_kms_key_id: "NameString",
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PutDataCatalogEncryptionSettings AWS API Documentation
    #
    # @overload put_data_catalog_encryption_settings(params = {})
    # @param [Hash] params ({})
    def put_data_catalog_encryption_settings(params = {}, options = {})
      req = build_request(:put_data_catalog_encryption_settings, params)
      req.send_request(options)
    end

    # Sets the Data Catalog resource policy for access control.
    #
    # @option params [required, String] :policy_in_json
    #   Contains the policy document to set, in JSON format.
    #
    # @option params [String] :policy_hash_condition
    #   The hash value returned when the previous policy was set using
    #   `PutResourcePolicy`. Its purpose is to prevent concurrent
    #   modifications of a policy. Do not use this parameter if no previous
    #   policy has been set.
    #
    # @option params [String] :policy_exists_condition
    #   A value of `MUST_EXIST` is used to update a policy. A value of
    #   `NOT_EXIST` is used to create a new policy. If a value of `NONE` or a
    #   null value is used, the call will not depend on the existence of a
    #   policy.
    #
    # @return [Types::PutResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutResourcePolicyResponse#policy_hash #policy_hash} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy({
    #     policy_in_json: "PolicyJsonString", # required
    #     policy_hash_condition: "HashString",
    #     policy_exists_condition: "MUST_EXIST", # accepts MUST_EXIST, NOT_EXIST, NONE
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_hash #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PutResourcePolicy AWS API Documentation
    #
    # @overload put_resource_policy(params = {})
    # @param [Hash] params ({})
    def put_resource_policy(params = {}, options = {})
      req = build_request(:put_resource_policy, params)
      req.send_request(options)
    end

    # Puts the specified workflow run properties for the given workflow run.
    # If a property already exists for the specified run, then it overrides
    # the value otherwise adds the property to existing properties.
    #
    # @option params [required, String] :name
    #   Name of the workflow which was run.
    #
    # @option params [required, String] :run_id
    #   The ID of the workflow run for which the run properties should be
    #   updated.
    #
    # @option params [required, Hash<String,String>] :run_properties
    #   The properties to put for the specified run.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_workflow_run_properties({
    #     name: "NameString", # required
    #     run_id: "IdString", # required
    #     run_properties: { # required
    #       "IdString" => "GenericString",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PutWorkflowRunProperties AWS API Documentation
    #
    # @overload put_workflow_run_properties(params = {})
    # @param [Hash] params ({})
    def put_workflow_run_properties(params = {}, options = {})
      req = build_request(:put_workflow_run_properties, params)
      req.send_request(options)
    end

    # Resets a bookmark entry.
    #
    # @option params [required, String] :job_name
    #   The name of the job in question.
    #
    # @option params [String] :run_id
    #   The unique run identifier associated with this job run.
    #
    # @return [Types::ResetJobBookmarkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResetJobBookmarkResponse#job_bookmark_entry #job_bookmark_entry} => Types::JobBookmarkEntry
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_job_bookmark({
    #     job_name: "JobName", # required
    #     run_id: "RunId",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_bookmark_entry.job_name #=> String
    #   resp.job_bookmark_entry.version #=> Integer
    #   resp.job_bookmark_entry.run #=> Integer
    #   resp.job_bookmark_entry.attempt #=> Integer
    #   resp.job_bookmark_entry.previous_run_id #=> String
    #   resp.job_bookmark_entry.run_id #=> String
    #   resp.job_bookmark_entry.job_bookmark #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ResetJobBookmark AWS API Documentation
    #
    # @overload reset_job_bookmark(params = {})
    # @param [Hash] params ({})
    def reset_job_bookmark(params = {}, options = {})
      req = build_request(:reset_job_bookmark, params)
      req.send_request(options)
    end

    # Searches a set of tables based on properties in the table metadata as
    # well as on the parent database. You can search against text or filter
    # conditions.
    #
    # You can only get tables that you have access to based on the security
    # policies defined in Lake Formation. You need at least a read-only
    # access to the table for it to be returned. If you do not have access
    # to all the columns in the table, these columns will not be searched
    # against when returning the list of tables back to you. If you have
    # access to the columns but not the data in the columns, those columns
    # and the associated metadata for those columns will be included in the
    # search.
    #
    # @option params [String] :catalog_id
    #   A unique identifier, consisting of ` account_id/datalake`.
    #
    # @option params [String] :next_token
    #   A continuation token, included if this is a continuation call.
    #
    # @option params [Array<Types::PropertyPredicate>] :filters
    #   A list of key-value pairs, and a comparator used to filter the search
    #   results. Returns all entities matching the predicate.
    #
    # @option params [String] :search_text
    #   A string used for a text search.
    #
    #   Specifying a value in quotes filters based on an exact match to the
    #   value.
    #
    # @option params [Array<Types::SortCriterion>] :sort_criteria
    #   A list of criteria for sorting the results by a field name, in an
    #   ascending or descending order.
    #
    # @option params [Integer] :max_results
    #   The maximum number of tables to return in a single response.
    #
    # @return [Types::SearchTablesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchTablesResponse#next_token #next_token} => String
    #   * {Types::SearchTablesResponse#table_list #table_list} => Array&lt;Types::Table&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_tables({
    #     catalog_id: "CatalogIdString",
    #     next_token: "Token",
    #     filters: [
    #       {
    #         key: "ValueString",
    #         value: "ValueString",
    #         comparator: "EQUALS", # accepts EQUALS, GREATER_THAN, LESS_THAN, GREATER_THAN_EQUALS, LESS_THAN_EQUALS
    #       },
    #     ],
    #     search_text: "ValueString",
    #     sort_criteria: [
    #       {
    #         field_name: "ValueString",
    #         sort: "ASC", # accepts ASC, DESC
    #       },
    #     ],
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.table_list #=> Array
    #   resp.table_list[0].name #=> String
    #   resp.table_list[0].database_name #=> String
    #   resp.table_list[0].description #=> String
    #   resp.table_list[0].owner #=> String
    #   resp.table_list[0].create_time #=> Time
    #   resp.table_list[0].update_time #=> Time
    #   resp.table_list[0].last_access_time #=> Time
    #   resp.table_list[0].last_analyzed_time #=> Time
    #   resp.table_list[0].retention #=> Integer
    #   resp.table_list[0].storage_descriptor.columns #=> Array
    #   resp.table_list[0].storage_descriptor.columns[0].name #=> String
    #   resp.table_list[0].storage_descriptor.columns[0].type #=> String
    #   resp.table_list[0].storage_descriptor.columns[0].comment #=> String
    #   resp.table_list[0].storage_descriptor.columns[0].parameters #=> Hash
    #   resp.table_list[0].storage_descriptor.columns[0].parameters["KeyString"] #=> String
    #   resp.table_list[0].storage_descriptor.location #=> String
    #   resp.table_list[0].storage_descriptor.input_format #=> String
    #   resp.table_list[0].storage_descriptor.output_format #=> String
    #   resp.table_list[0].storage_descriptor.compressed #=> Boolean
    #   resp.table_list[0].storage_descriptor.number_of_buckets #=> Integer
    #   resp.table_list[0].storage_descriptor.serde_info.name #=> String
    #   resp.table_list[0].storage_descriptor.serde_info.serialization_library #=> String
    #   resp.table_list[0].storage_descriptor.serde_info.parameters #=> Hash
    #   resp.table_list[0].storage_descriptor.serde_info.parameters["KeyString"] #=> String
    #   resp.table_list[0].storage_descriptor.bucket_columns #=> Array
    #   resp.table_list[0].storage_descriptor.bucket_columns[0] #=> String
    #   resp.table_list[0].storage_descriptor.sort_columns #=> Array
    #   resp.table_list[0].storage_descriptor.sort_columns[0].column #=> String
    #   resp.table_list[0].storage_descriptor.sort_columns[0].sort_order #=> Integer
    #   resp.table_list[0].storage_descriptor.parameters #=> Hash
    #   resp.table_list[0].storage_descriptor.parameters["KeyString"] #=> String
    #   resp.table_list[0].storage_descriptor.skewed_info.skewed_column_names #=> Array
    #   resp.table_list[0].storage_descriptor.skewed_info.skewed_column_names[0] #=> String
    #   resp.table_list[0].storage_descriptor.skewed_info.skewed_column_values #=> Array
    #   resp.table_list[0].storage_descriptor.skewed_info.skewed_column_values[0] #=> String
    #   resp.table_list[0].storage_descriptor.skewed_info.skewed_column_value_location_maps #=> Hash
    #   resp.table_list[0].storage_descriptor.skewed_info.skewed_column_value_location_maps["ColumnValuesString"] #=> String
    #   resp.table_list[0].storage_descriptor.stored_as_sub_directories #=> Boolean
    #   resp.table_list[0].partition_keys #=> Array
    #   resp.table_list[0].partition_keys[0].name #=> String
    #   resp.table_list[0].partition_keys[0].type #=> String
    #   resp.table_list[0].partition_keys[0].comment #=> String
    #   resp.table_list[0].partition_keys[0].parameters #=> Hash
    #   resp.table_list[0].partition_keys[0].parameters["KeyString"] #=> String
    #   resp.table_list[0].view_original_text #=> String
    #   resp.table_list[0].view_expanded_text #=> String
    #   resp.table_list[0].table_type #=> String
    #   resp.table_list[0].parameters #=> Hash
    #   resp.table_list[0].parameters["KeyString"] #=> String
    #   resp.table_list[0].created_by #=> String
    #   resp.table_list[0].is_registered_with_lake_formation #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SearchTables AWS API Documentation
    #
    # @overload search_tables(params = {})
    # @param [Hash] params ({})
    def search_tables(params = {}, options = {})
      req = build_request(:search_tables, params)
      req.send_request(options)
    end

    # Starts a crawl using the specified crawler, regardless of what is
    # scheduled. If the crawler is already running, returns a
    # [CrawlerRunningException][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-exceptions.html#aws-glue-api-exceptions-CrawlerRunningException
    #
    # @option params [required, String] :name
    #   Name of the crawler to start.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_crawler({
    #     name: "NameString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartCrawler AWS API Documentation
    #
    # @overload start_crawler(params = {})
    # @param [Hash] params ({})
    def start_crawler(params = {}, options = {})
      req = build_request(:start_crawler, params)
      req.send_request(options)
    end

    # Changes the schedule state of the specified crawler to `SCHEDULED`,
    # unless the crawler is already running or the schedule state is already
    # `SCHEDULED`.
    #
    # @option params [required, String] :crawler_name
    #   Name of the crawler to schedule.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_crawler_schedule({
    #     crawler_name: "NameString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartCrawlerSchedule AWS API Documentation
    #
    # @overload start_crawler_schedule(params = {})
    # @param [Hash] params ({})
    def start_crawler_schedule(params = {}, options = {})
      req = build_request(:start_crawler_schedule, params)
      req.send_request(options)
    end

    # Begins an asynchronous task to export all labeled data for a
    # particular transform. This task is the only label-related API call
    # that is not part of the typical active learning workflow. You
    # typically use `StartExportLabelsTaskRun` when you want to work with
    # all of your existing labels at the same time, such as when you want to
    # remove or change labels that were previously submitted as truth. This
    # API operation accepts the `TransformId` whose labels you want to
    # export and an Amazon Simple Storage Service (Amazon S3) path to export
    # the labels to. The operation returns a `TaskRunId`. You can check on
    # the status of your task run by calling the `GetMLTaskRun` API.
    #
    # @option params [required, String] :transform_id
    #   The unique identifier of the machine learning transform.
    #
    # @option params [required, String] :output_s3_path
    #   The Amazon S3 path where you export the labels.
    #
    # @return [Types::StartExportLabelsTaskRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartExportLabelsTaskRunResponse#task_run_id #task_run_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_export_labels_task_run({
    #     transform_id: "HashString", # required
    #     output_s3_path: "UriString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_run_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartExportLabelsTaskRun AWS API Documentation
    #
    # @overload start_export_labels_task_run(params = {})
    # @param [Hash] params ({})
    def start_export_labels_task_run(params = {}, options = {})
      req = build_request(:start_export_labels_task_run, params)
      req.send_request(options)
    end

    # Enables you to provide additional labels (examples of truth) to be
    # used to teach the machine learning transform and improve its quality.
    # This API operation is generally used as part of the active learning
    # workflow that starts with the `StartMLLabelingSetGenerationTaskRun`
    # call and that ultimately results in improving the quality of your
    # machine learning transform.
    #
    # After the `StartMLLabelingSetGenerationTaskRun` finishes, AWS Glue
    # machine learning will have generated a series of questions for humans
    # to answer. (Answering these questions is often called 'labeling' in
    # the machine learning workflows). In the case of the `FindMatches`
    # transform, these questions are of the form, “What is the correct way
    # to group these rows together into groups composed entirely of matching
    # records?” After the labeling process is finished, users upload their
    # answers/labels with a call to `StartImportLabelsTaskRun`. After
    # `StartImportLabelsTaskRun` finishes, all future runs of the machine
    # learning transform use the new and improved labels and perform a
    # higher-quality transformation.
    #
    # By default, `StartMLLabelingSetGenerationTaskRun` continually learns
    # from and combines all labels that you upload unless you set `Replace`
    # to true. If you set `Replace` to true, `StartImportLabelsTaskRun`
    # deletes and forgets all previously uploaded labels and learns only
    # from the exact set that you upload. Replacing labels can be helpful if
    # you realize that you previously uploaded incorrect labels, and you
    # believe that they are having a negative effect on your transform
    # quality.
    #
    # You can check on the status of your task run by calling the
    # `GetMLTaskRun` operation.
    #
    # @option params [required, String] :transform_id
    #   The unique identifier of the machine learning transform.
    #
    # @option params [required, String] :input_s3_path
    #   The Amazon Simple Storage Service (Amazon S3) path from where you
    #   import the labels.
    #
    # @option params [Boolean] :replace_all_labels
    #   Indicates whether to overwrite your existing labels.
    #
    # @return [Types::StartImportLabelsTaskRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartImportLabelsTaskRunResponse#task_run_id #task_run_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_import_labels_task_run({
    #     transform_id: "HashString", # required
    #     input_s3_path: "UriString", # required
    #     replace_all_labels: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.task_run_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartImportLabelsTaskRun AWS API Documentation
    #
    # @overload start_import_labels_task_run(params = {})
    # @param [Hash] params ({})
    def start_import_labels_task_run(params = {}, options = {})
      req = build_request(:start_import_labels_task_run, params)
      req.send_request(options)
    end

    # Starts a job run using a job definition.
    #
    # @option params [required, String] :job_name
    #   The name of the job definition to use.
    #
    # @option params [String] :job_run_id
    #   The ID of a previous `JobRun` to retry.
    #
    # @option params [Hash<String,String>] :arguments
    #   The job arguments specifically for this run. For this job run, they
    #   replace the default arguments set in the job definition itself.
    #
    #   You can specify arguments here that your own job-execution script
    #   consumes, as well as arguments that AWS Glue itself consumes.
    #
    #   For information about how to specify and consume your own Job
    #   arguments, see the [Calling AWS Glue APIs in Python][1] topic in the
    #   developer guide.
    #
    #   For information about the key-value pairs that AWS Glue consumes to
    #   set up your job, see the [Special Parameters Used by AWS Glue][2]
    #   topic in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html
    #   [2]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html
    #
    # @option params [Integer] :allocated_capacity
    #   This field is deprecated. Use `MaxCapacity` instead.
    #
    #   The number of AWS Glue data processing units (DPUs) to allocate to
    #   this JobRun. From 2 to 100 DPUs can be allocated; the default is 10. A
    #   DPU is a relative measure of processing power that consists of 4 vCPUs
    #   of compute capacity and 16 GB of memory. For more information, see the
    #   [AWS Glue pricing page][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/https:/aws.amazon.com/glue/pricing/
    #
    # @option params [Integer] :timeout
    #   The `JobRun` timeout in minutes. This is the maximum time that a job
    #   run can consume resources before it is terminated and enters `TIMEOUT`
    #   status. The default is 2,880 minutes (48 hours). This overrides the
    #   timeout value set in the parent job.
    #
    # @option params [Float] :max_capacity
    #   The number of AWS Glue data processing units (DPUs) that can be
    #   allocated when this job runs. A DPU is a relative measure of
    #   processing power that consists of 4 vCPUs of compute capacity and 16
    #   GB of memory. For more information, see the [AWS Glue pricing
    #   page][1].
    #
    #   Do not set `Max Capacity` if using `WorkerType` and `NumberOfWorkers`.
    #
    #   The value that can be allocated for `MaxCapacity` depends on whether
    #   you are running a Python shell job, or an Apache Spark ETL job:
    #
    #   * When you specify a Python shell job
    #     (`JobCommand.Name`="pythonshell"), you can allocate either 0.0625
    #     or 1 DPU. The default is 0.0625 DPU.
    #
    #   * When you specify an Apache Spark ETL job
    #     (`JobCommand.Name`="glueetl"), you can allocate from 2 to 100
    #     DPUs. The default is 10 DPUs. This job type cannot have a fractional
    #     DPU allocation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/https:/aws.amazon.com/glue/pricing/
    #
    # @option params [String] :security_configuration
    #   The name of the `SecurityConfiguration` structure to be used with this
    #   job run.
    #
    # @option params [Types::NotificationProperty] :notification_property
    #   Specifies configuration properties of a job run notification.
    #
    # @option params [String] :worker_type
    #   The type of predefined worker that is allocated when a job runs.
    #   Accepts a value of Standard, G.1X, or G.2X.
    #
    #   * For the `Standard` worker type, each worker provides 4 vCPU, 16 GB
    #     of memory and a 50GB disk, and 2 executors per worker.
    #
    #   * For the `G.1X` worker type, each worker provides 4 vCPU, 16 GB of
    #     memory and a 64GB disk, and 1 executor per worker.
    #
    #   * For the `G.2X` worker type, each worker provides 8 vCPU, 32 GB of
    #     memory and a 128GB disk, and 1 executor per worker.
    #
    # @option params [Integer] :number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   when a job runs.
    #
    #   The maximum number of workers you can define are 299 for `G.1X`, and
    #   149 for `G.2X`.
    #
    # @return [Types::StartJobRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartJobRunResponse#job_run_id #job_run_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_job_run({
    #     job_name: "NameString", # required
    #     job_run_id: "IdString",
    #     arguments: {
    #       "GenericString" => "GenericString",
    #     },
    #     allocated_capacity: 1,
    #     timeout: 1,
    #     max_capacity: 1.0,
    #     security_configuration: "NameString",
    #     notification_property: {
    #       notify_delay_after: 1,
    #     },
    #     worker_type: "Standard", # accepts Standard, G.1X, G.2X
    #     number_of_workers: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.job_run_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartJobRun AWS API Documentation
    #
    # @overload start_job_run(params = {})
    # @param [Hash] params ({})
    def start_job_run(params = {}, options = {})
      req = build_request(:start_job_run, params)
      req.send_request(options)
    end

    # Starts a task to estimate the quality of the transform.
    #
    # When you provide label sets as examples of truth, AWS Glue machine
    # learning uses some of those examples to learn from them. The rest of
    # the labels are used as a test to estimate quality.
    #
    # Returns a unique identifier for the run. You can call `GetMLTaskRun`
    # to get more information about the stats of the `EvaluationTaskRun`.
    #
    # @option params [required, String] :transform_id
    #   The unique identifier of the machine learning transform.
    #
    # @return [Types::StartMLEvaluationTaskRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartMLEvaluationTaskRunResponse#task_run_id #task_run_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_ml_evaluation_task_run({
    #     transform_id: "HashString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_run_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartMLEvaluationTaskRun AWS API Documentation
    #
    # @overload start_ml_evaluation_task_run(params = {})
    # @param [Hash] params ({})
    def start_ml_evaluation_task_run(params = {}, options = {})
      req = build_request(:start_ml_evaluation_task_run, params)
      req.send_request(options)
    end

    # Starts the active learning workflow for your machine learning
    # transform to improve the transform's quality by generating label sets
    # and adding labels.
    #
    # When the `StartMLLabelingSetGenerationTaskRun` finishes, AWS Glue will
    # have generated a "labeling set" or a set of questions for humans to
    # answer.
    #
    # In the case of the `FindMatches` transform, these questions are of the
    # form, “What is the correct way to group these rows together into
    # groups composed entirely of matching records?”
    #
    # After the labeling process is finished, you can upload your labels
    # with a call to `StartImportLabelsTaskRun`. After
    # `StartImportLabelsTaskRun` finishes, all future runs of the machine
    # learning transform will use the new and improved labels and perform a
    # higher-quality transformation.
    #
    # @option params [required, String] :transform_id
    #   The unique identifier of the machine learning transform.
    #
    # @option params [required, String] :output_s3_path
    #   The Amazon Simple Storage Service (Amazon S3) path where you generate
    #   the labeling set.
    #
    # @return [Types::StartMLLabelingSetGenerationTaskRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartMLLabelingSetGenerationTaskRunResponse#task_run_id #task_run_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_ml_labeling_set_generation_task_run({
    #     transform_id: "HashString", # required
    #     output_s3_path: "UriString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_run_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartMLLabelingSetGenerationTaskRun AWS API Documentation
    #
    # @overload start_ml_labeling_set_generation_task_run(params = {})
    # @param [Hash] params ({})
    def start_ml_labeling_set_generation_task_run(params = {}, options = {})
      req = build_request(:start_ml_labeling_set_generation_task_run, params)
      req.send_request(options)
    end

    # Starts an existing trigger. See [Triggering Jobs][1] for information
    # about how different types of trigger are started.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/glue/latest/dg/trigger-job.html
    #
    # @option params [required, String] :name
    #   The name of the trigger to start.
    #
    # @return [Types::StartTriggerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTriggerResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_trigger({
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartTrigger AWS API Documentation
    #
    # @overload start_trigger(params = {})
    # @param [Hash] params ({})
    def start_trigger(params = {}, options = {})
      req = build_request(:start_trigger, params)
      req.send_request(options)
    end

    # Starts a new run of the specified workflow.
    #
    # @option params [required, String] :name
    #   The name of the workflow to start.
    #
    # @return [Types::StartWorkflowRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartWorkflowRunResponse#run_id #run_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_workflow_run({
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.run_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartWorkflowRun AWS API Documentation
    #
    # @overload start_workflow_run(params = {})
    # @param [Hash] params ({})
    def start_workflow_run(params = {}, options = {})
      req = build_request(:start_workflow_run, params)
      req.send_request(options)
    end

    # If the specified crawler is running, stops the crawl.
    #
    # @option params [required, String] :name
    #   Name of the crawler to stop.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_crawler({
    #     name: "NameString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopCrawler AWS API Documentation
    #
    # @overload stop_crawler(params = {})
    # @param [Hash] params ({})
    def stop_crawler(params = {}, options = {})
      req = build_request(:stop_crawler, params)
      req.send_request(options)
    end

    # Sets the schedule state of the specified crawler to `NOT_SCHEDULED`,
    # but does not stop the crawler if it is already running.
    #
    # @option params [required, String] :crawler_name
    #   Name of the crawler whose schedule state to set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_crawler_schedule({
    #     crawler_name: "NameString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopCrawlerSchedule AWS API Documentation
    #
    # @overload stop_crawler_schedule(params = {})
    # @param [Hash] params ({})
    def stop_crawler_schedule(params = {}, options = {})
      req = build_request(:stop_crawler_schedule, params)
      req.send_request(options)
    end

    # Stops a specified trigger.
    #
    # @option params [required, String] :name
    #   The name of the trigger to stop.
    #
    # @return [Types::StopTriggerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopTriggerResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_trigger({
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopTrigger AWS API Documentation
    #
    # @overload stop_trigger(params = {})
    # @param [Hash] params ({})
    def stop_trigger(params = {}, options = {})
      req = build_request(:stop_trigger, params)
      req.send_request(options)
    end

    # Stops the execution of the specified workflow run.
    #
    # @option params [required, String] :name
    #   The name of the workflow to stop.
    #
    # @option params [required, String] :run_id
    #   The ID of the workflow run to stop.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_workflow_run({
    #     name: "NameString", # required
    #     run_id: "IdString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopWorkflowRun AWS API Documentation
    #
    # @overload stop_workflow_run(params = {})
    # @param [Hash] params ({})
    def stop_workflow_run(params = {}, options = {})
      req = build_request(:stop_workflow_run, params)
      req.send_request(options)
    end

    # Adds tags to a resource. A tag is a label you can assign to an AWS
    # resource. In AWS Glue, you can tag only certain resources. For
    # information about what resources you can tag, see [AWS Tags in AWS
    # Glue][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the AWS Glue resource to which to add the tags. For more
    #   information about AWS Glue resource ARNs, see the [AWS Glue ARN string
    #   pattern][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-common.html#aws-glue-api-regex-aws-glue-arn-id
    #
    # @option params [required, Hash<String,String>] :tags_to_add
    #   Tags to add to this resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "GlueResourceArn", # required
    #     tags_to_add: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which to remove
    #   the tags.
    #
    # @option params [required, Array<String>] :tags_to_remove
    #   Tags to remove from this resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "GlueResourceArn", # required
    #     tags_to_remove: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Modifies an existing classifier (a `GrokClassifier`, an
    # `XMLClassifier`, a `JsonClassifier`, or a `CsvClassifier`, depending
    # on which field is present).
    #
    # @option params [Types::UpdateGrokClassifierRequest] :grok_classifier
    #   A `GrokClassifier` object with updated fields.
    #
    # @option params [Types::UpdateXMLClassifierRequest] :xml_classifier
    #   An `XMLClassifier` object with updated fields.
    #
    # @option params [Types::UpdateJsonClassifierRequest] :json_classifier
    #   A `JsonClassifier` object with updated fields.
    #
    # @option params [Types::UpdateCsvClassifierRequest] :csv_classifier
    #   A `CsvClassifier` object with updated fields.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_classifier({
    #     grok_classifier: {
    #       name: "NameString", # required
    #       classification: "Classification",
    #       grok_pattern: "GrokPattern",
    #       custom_patterns: "CustomPatterns",
    #     },
    #     xml_classifier: {
    #       name: "NameString", # required
    #       classification: "Classification",
    #       row_tag: "RowTag",
    #     },
    #     json_classifier: {
    #       name: "NameString", # required
    #       json_path: "JsonPath",
    #     },
    #     csv_classifier: {
    #       name: "NameString", # required
    #       delimiter: "CsvColumnDelimiter",
    #       quote_symbol: "CsvQuoteSymbol",
    #       contains_header: "UNKNOWN", # accepts UNKNOWN, PRESENT, ABSENT
    #       header: ["NameString"],
    #       disable_value_trimming: false,
    #       allow_single_column: false,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateClassifier AWS API Documentation
    #
    # @overload update_classifier(params = {})
    # @param [Hash] params ({})
    def update_classifier(params = {}, options = {})
      req = build_request(:update_classifier, params)
      req.send_request(options)
    end

    # Updates a connection definition in the Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog in which the connection resides. If none is
    #   provided, the AWS account ID is used by default.
    #
    # @option params [required, String] :name
    #   The name of the connection definition to update.
    #
    # @option params [required, Types::ConnectionInput] :connection_input
    #   A `ConnectionInput` object that redefines the connection in question.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_connection({
    #     catalog_id: "CatalogIdString",
    #     name: "NameString", # required
    #     connection_input: { # required
    #       name: "NameString", # required
    #       description: "DescriptionString",
    #       connection_type: "JDBC", # required, accepts JDBC, SFTP, MONGODB, KAFKA
    #       match_criteria: ["NameString"],
    #       connection_properties: { # required
    #         "HOST" => "ValueString",
    #       },
    #       physical_connection_requirements: {
    #         subnet_id: "NameString",
    #         security_group_id_list: ["NameString"],
    #         availability_zone: "NameString",
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateConnection AWS API Documentation
    #
    # @overload update_connection(params = {})
    # @param [Hash] params ({})
    def update_connection(params = {}, options = {})
      req = build_request(:update_connection, params)
      req.send_request(options)
    end

    # Updates a crawler. If a crawler is running, you must stop it using
    # `StopCrawler` before updating it.
    #
    # @option params [required, String] :name
    #   Name of the new crawler.
    #
    # @option params [String] :role
    #   The IAM role or Amazon Resource Name (ARN) of an IAM role that is used
    #   by the new crawler to access customer resources.
    #
    # @option params [String] :database_name
    #   The AWS Glue database where results are stored, such as:
    #   `arn:aws:daylight:us-east-1::database/sometable/*`.
    #
    # @option params [String] :description
    #   A description of the new crawler.
    #
    # @option params [Types::CrawlerTargets] :targets
    #   A list of targets to crawl.
    #
    # @option params [String] :schedule
    #   A `cron` expression used to specify the schedule. For more
    #   information, see [Time-Based Schedules for Jobs and Crawlers][1]. For
    #   example, to run something every day at 12:15 UTC, specify `cron(15 12
    #   * * ? *)`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html
    #
    # @option params [Array<String>] :classifiers
    #   A list of custom classifiers that the user has registered. By default,
    #   all built-in classifiers are included in a crawl, but these custom
    #   classifiers always override the default classifiers for a given
    #   classification.
    #
    # @option params [String] :table_prefix
    #   The table prefix used for catalog tables that are created.
    #
    # @option params [Types::SchemaChangePolicy] :schema_change_policy
    #   The policy for the crawler's update and deletion behavior.
    #
    # @option params [String] :configuration
    #   The crawler configuration information. This versioned JSON string
    #   allows users to specify aspects of a crawler's behavior. For more
    #   information, see [Configuring a Crawler][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html
    #
    # @option params [String] :crawler_security_configuration
    #   The name of the `SecurityConfiguration` structure to be used by this
    #   crawler.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_crawler({
    #     name: "NameString", # required
    #     role: "Role",
    #     database_name: "DatabaseName",
    #     description: "DescriptionStringRemovable",
    #     targets: {
    #       s3_targets: [
    #         {
    #           path: "Path",
    #           exclusions: ["Path"],
    #         },
    #       ],
    #       jdbc_targets: [
    #         {
    #           connection_name: "ConnectionName",
    #           path: "Path",
    #           exclusions: ["Path"],
    #         },
    #       ],
    #       dynamo_db_targets: [
    #         {
    #           path: "Path",
    #         },
    #       ],
    #       catalog_targets: [
    #         {
    #           database_name: "NameString", # required
    #           tables: ["NameString"], # required
    #         },
    #       ],
    #     },
    #     schedule: "CronExpression",
    #     classifiers: ["NameString"],
    #     table_prefix: "TablePrefix",
    #     schema_change_policy: {
    #       update_behavior: "LOG", # accepts LOG, UPDATE_IN_DATABASE
    #       delete_behavior: "LOG", # accepts LOG, DELETE_FROM_DATABASE, DEPRECATE_IN_DATABASE
    #     },
    #     configuration: "CrawlerConfiguration",
    #     crawler_security_configuration: "CrawlerSecurityConfiguration",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateCrawler AWS API Documentation
    #
    # @overload update_crawler(params = {})
    # @param [Hash] params ({})
    def update_crawler(params = {}, options = {})
      req = build_request(:update_crawler, params)
      req.send_request(options)
    end

    # Updates the schedule of a crawler using a `cron` expression.
    #
    # @option params [required, String] :crawler_name
    #   The name of the crawler whose schedule to update.
    #
    # @option params [String] :schedule
    #   The updated `cron` expression used to specify the schedule. For more
    #   information, see [Time-Based Schedules for Jobs and Crawlers][1]. For
    #   example, to run something every day at 12:15 UTC, specify `cron(15 12
    #   * * ? *)`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_crawler_schedule({
    #     crawler_name: "NameString", # required
    #     schedule: "CronExpression",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateCrawlerSchedule AWS API Documentation
    #
    # @overload update_crawler_schedule(params = {})
    # @param [Hash] params ({})
    def update_crawler_schedule(params = {}, options = {})
      req = build_request(:update_crawler_schedule, params)
      req.send_request(options)
    end

    # Updates an existing database definition in a Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog in which the metadata database resides. If
    #   none is provided, the AWS account ID is used by default.
    #
    # @option params [required, String] :name
    #   The name of the database to update in the catalog. For Hive
    #   compatibility, this is folded to lowercase.
    #
    # @option params [required, Types::DatabaseInput] :database_input
    #   A `DatabaseInput` object specifying the new definition of the metadata
    #   database in the catalog.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_database({
    #     catalog_id: "CatalogIdString",
    #     name: "NameString", # required
    #     database_input: { # required
    #       name: "NameString", # required
    #       description: "DescriptionString",
    #       location_uri: "URI",
    #       parameters: {
    #         "KeyString" => "ParametersMapValue",
    #       },
    #       create_table_default_permissions: [
    #         {
    #           principal: {
    #             data_lake_principal_identifier: "DataLakePrincipalString",
    #           },
    #           permissions: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #         },
    #       ],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateDatabase AWS API Documentation
    #
    # @overload update_database(params = {})
    # @param [Hash] params ({})
    def update_database(params = {}, options = {})
      req = build_request(:update_database, params)
      req.send_request(options)
    end

    # Updates a specified development endpoint.
    #
    # @option params [required, String] :endpoint_name
    #   The name of the `DevEndpoint` to be updated.
    #
    # @option params [String] :public_key
    #   The public key for the `DevEndpoint` to use.
    #
    # @option params [Array<String>] :add_public_keys
    #   The list of public keys for the `DevEndpoint` to use.
    #
    # @option params [Array<String>] :delete_public_keys
    #   The list of public keys to be deleted from the `DevEndpoint`.
    #
    # @option params [Types::DevEndpointCustomLibraries] :custom_libraries
    #   Custom Python or Java libraries to be loaded in the `DevEndpoint`.
    #
    # @option params [Boolean] :update_etl_libraries
    #   `True` if the list of custom libraries to be loaded in the development
    #   endpoint needs to be updated, or `False` if otherwise.
    #
    # @option params [Array<String>] :delete_arguments
    #   The list of argument keys to be deleted from the map of arguments used
    #   to configure the `DevEndpoint`.
    #
    # @option params [Hash<String,String>] :add_arguments
    #   The map of arguments to add the map of arguments used to configure the
    #   `DevEndpoint`.
    #
    #   Valid arguments are:
    #
    #   * `"--enable-glue-datacatalog": ""`
    #
    #   * `"GLUE_PYTHON_VERSION": "3"`
    #
    #   * `"GLUE_PYTHON_VERSION": "2"`
    #
    #   You can specify a version of Python support for development endpoints
    #   by using the `Arguments` parameter in the `CreateDevEndpoint` or
    #   `UpdateDevEndpoint` APIs. If no arguments are provided, the version
    #   defaults to Python 2.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dev_endpoint({
    #     endpoint_name: "GenericString", # required
    #     public_key: "GenericString",
    #     add_public_keys: ["GenericString"],
    #     delete_public_keys: ["GenericString"],
    #     custom_libraries: {
    #       extra_python_libs_s3_path: "GenericString",
    #       extra_jars_s3_path: "GenericString",
    #     },
    #     update_etl_libraries: false,
    #     delete_arguments: ["GenericString"],
    #     add_arguments: {
    #       "GenericString" => "GenericString",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateDevEndpoint AWS API Documentation
    #
    # @overload update_dev_endpoint(params = {})
    # @param [Hash] params ({})
    def update_dev_endpoint(params = {}, options = {})
      req = build_request(:update_dev_endpoint, params)
      req.send_request(options)
    end

    # Updates an existing job definition.
    #
    # @option params [required, String] :job_name
    #   The name of the job definition to update.
    #
    # @option params [required, Types::JobUpdate] :job_update
    #   Specifies the values with which to update the job definition.
    #
    # @return [Types::UpdateJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateJobResponse#job_name #job_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_job({
    #     job_name: "NameString", # required
    #     job_update: { # required
    #       description: "DescriptionString",
    #       log_uri: "UriString",
    #       role: "RoleString",
    #       execution_property: {
    #         max_concurrent_runs: 1,
    #       },
    #       command: {
    #         name: "GenericString",
    #         script_location: "ScriptLocationString",
    #         python_version: "PythonVersionString",
    #       },
    #       default_arguments: {
    #         "GenericString" => "GenericString",
    #       },
    #       non_overridable_arguments: {
    #         "GenericString" => "GenericString",
    #       },
    #       connections: {
    #         connections: ["GenericString"],
    #       },
    #       max_retries: 1,
    #       allocated_capacity: 1,
    #       timeout: 1,
    #       max_capacity: 1.0,
    #       worker_type: "Standard", # accepts Standard, G.1X, G.2X
    #       number_of_workers: 1,
    #       security_configuration: "NameString",
    #       notification_property: {
    #         notify_delay_after: 1,
    #       },
    #       glue_version: "GlueVersionString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateJob AWS API Documentation
    #
    # @overload update_job(params = {})
    # @param [Hash] params ({})
    def update_job(params = {}, options = {})
      req = build_request(:update_job, params)
      req.send_request(options)
    end

    # Updates an existing machine learning transform. Call this operation to
    # tune the algorithm parameters to achieve better results.
    #
    # After calling this operation, you can call the
    # `StartMLEvaluationTaskRun` operation to assess how well your new
    # parameters achieved your goals (such as improving the quality of your
    # machine learning transform, or making it more cost-effective).
    #
    # @option params [required, String] :transform_id
    #   A unique identifier that was generated when the transform was created.
    #
    # @option params [String] :name
    #   The unique name that you gave the transform when you created it.
    #
    # @option params [String] :description
    #   A description of the transform. The default is an empty string.
    #
    # @option params [Types::TransformParameters] :parameters
    #   The configuration parameters that are specific to the transform type
    #   (algorithm) used. Conditionally dependent on the transform type.
    #
    # @option params [String] :role
    #   The name or Amazon Resource Name (ARN) of the IAM role with the
    #   required permissions.
    #
    # @option params [String] :glue_version
    #   This value determines which version of AWS Glue this machine learning
    #   transform is compatible with. Glue 1.0 is recommended for most
    #   customers. If the value is not set, the Glue compatibility defaults to
    #   Glue 0.9. For more information, see [AWS Glue Versions][1] in the
    #   developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions
    #
    # @option params [Float] :max_capacity
    #   The number of AWS Glue data processing units (DPUs) that are allocated
    #   to task runs for this transform. You can allocate from 2 to 100 DPUs;
    #   the default is 10. A DPU is a relative measure of processing power
    #   that consists of 4 vCPUs of compute capacity and 16 GB of memory. For
    #   more information, see the [AWS Glue pricing page][1].
    #
    #   When the `WorkerType` field is set to a value other than `Standard`,
    #   the `MaxCapacity` field is set automatically and becomes read-only.
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #
    # @option params [String] :worker_type
    #   The type of predefined worker that is allocated when this task runs.
    #   Accepts a value of Standard, G.1X, or G.2X.
    #
    #   * For the `Standard` worker type, each worker provides 4 vCPU, 16 GB
    #     of memory and a 50GB disk, and 2 executors per worker.
    #
    #   * For the `G.1X` worker type, each worker provides 4 vCPU, 16 GB of
    #     memory and a 64GB disk, and 1 executor per worker.
    #
    #   * For the `G.2X` worker type, each worker provides 8 vCPU, 32 GB of
    #     memory and a 128GB disk, and 1 executor per worker.
    #
    # @option params [Integer] :number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   when this task runs.
    #
    # @option params [Integer] :timeout
    #   The timeout for a task run for this transform in minutes. This is the
    #   maximum time that a task run for this transform can consume resources
    #   before it is terminated and enters `TIMEOUT` status. The default is
    #   2,880 minutes (48 hours).
    #
    # @option params [Integer] :max_retries
    #   The maximum number of times to retry a task for this transform after a
    #   task run fails.
    #
    # @return [Types::UpdateMLTransformResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMLTransformResponse#transform_id #transform_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ml_transform({
    #     transform_id: "HashString", # required
    #     name: "NameString",
    #     description: "DescriptionString",
    #     parameters: {
    #       transform_type: "FIND_MATCHES", # required, accepts FIND_MATCHES
    #       find_matches_parameters: {
    #         primary_key_column_name: "ColumnNameString",
    #         precision_recall_tradeoff: 1.0,
    #         accuracy_cost_tradeoff: 1.0,
    #         enforce_provided_labels: false,
    #       },
    #     },
    #     role: "RoleString",
    #     glue_version: "GlueVersionString",
    #     max_capacity: 1.0,
    #     worker_type: "Standard", # accepts Standard, G.1X, G.2X
    #     number_of_workers: 1,
    #     timeout: 1,
    #     max_retries: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.transform_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateMLTransform AWS API Documentation
    #
    # @overload update_ml_transform(params = {})
    # @param [Hash] params ({})
    def update_ml_transform(params = {}, options = {})
      req = build_request(:update_ml_transform, params)
      req.send_request(options)
    end

    # Updates a partition.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the partition to be updated resides.
    #   If none is provided, the AWS account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database in which the table in question
    #   resides.
    #
    # @option params [required, String] :table_name
    #   The name of the table in which the partition to be updated is located.
    #
    # @option params [required, Array<String>] :partition_value_list
    #   A list of the values defining the partition.
    #
    # @option params [required, Types::PartitionInput] :partition_input
    #   The new partition object to update the partition to.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_partition({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     partition_value_list: ["ValueString"], # required
    #     partition_input: { # required
    #       values: ["ValueString"],
    #       last_access_time: Time.now,
    #       storage_descriptor: {
    #         columns: [
    #           {
    #             name: "NameString", # required
    #             type: "ColumnTypeString",
    #             comment: "CommentString",
    #             parameters: {
    #               "KeyString" => "ParametersMapValue",
    #             },
    #           },
    #         ],
    #         location: "LocationString",
    #         input_format: "FormatString",
    #         output_format: "FormatString",
    #         compressed: false,
    #         number_of_buckets: 1,
    #         serde_info: {
    #           name: "NameString",
    #           serialization_library: "NameString",
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #         },
    #         bucket_columns: ["NameString"],
    #         sort_columns: [
    #           {
    #             column: "NameString", # required
    #             sort_order: 1, # required
    #           },
    #         ],
    #         parameters: {
    #           "KeyString" => "ParametersMapValue",
    #         },
    #         skewed_info: {
    #           skewed_column_names: ["NameString"],
    #           skewed_column_values: ["ColumnValuesString"],
    #           skewed_column_value_location_maps: {
    #             "ColumnValuesString" => "ColumnValuesString",
    #           },
    #         },
    #         stored_as_sub_directories: false,
    #       },
    #       parameters: {
    #         "KeyString" => "ParametersMapValue",
    #       },
    #       last_analyzed_time: Time.now,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdatePartition AWS API Documentation
    #
    # @overload update_partition(params = {})
    # @param [Hash] params ({})
    def update_partition(params = {}, options = {})
      req = build_request(:update_partition, params)
      req.send_request(options)
    end

    # Updates a metadata table in the Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the table resides. If none is
    #   provided, the AWS account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database in which the table resides. For Hive
    #   compatibility, this name is entirely lowercase.
    #
    # @option params [required, Types::TableInput] :table_input
    #   An updated `TableInput` object to define the metadata table in the
    #   catalog.
    #
    # @option params [Boolean] :skip_archive
    #   By default, `UpdateTable` always creates an archived version of the
    #   table before updating it. However, if `skipArchive` is set to true,
    #   `UpdateTable` does not create the archived version.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_table({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_input: { # required
    #       name: "NameString", # required
    #       description: "DescriptionString",
    #       owner: "NameString",
    #       last_access_time: Time.now,
    #       last_analyzed_time: Time.now,
    #       retention: 1,
    #       storage_descriptor: {
    #         columns: [
    #           {
    #             name: "NameString", # required
    #             type: "ColumnTypeString",
    #             comment: "CommentString",
    #             parameters: {
    #               "KeyString" => "ParametersMapValue",
    #             },
    #           },
    #         ],
    #         location: "LocationString",
    #         input_format: "FormatString",
    #         output_format: "FormatString",
    #         compressed: false,
    #         number_of_buckets: 1,
    #         serde_info: {
    #           name: "NameString",
    #           serialization_library: "NameString",
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #         },
    #         bucket_columns: ["NameString"],
    #         sort_columns: [
    #           {
    #             column: "NameString", # required
    #             sort_order: 1, # required
    #           },
    #         ],
    #         parameters: {
    #           "KeyString" => "ParametersMapValue",
    #         },
    #         skewed_info: {
    #           skewed_column_names: ["NameString"],
    #           skewed_column_values: ["ColumnValuesString"],
    #           skewed_column_value_location_maps: {
    #             "ColumnValuesString" => "ColumnValuesString",
    #           },
    #         },
    #         stored_as_sub_directories: false,
    #       },
    #       partition_keys: [
    #         {
    #           name: "NameString", # required
    #           type: "ColumnTypeString",
    #           comment: "CommentString",
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #         },
    #       ],
    #       view_original_text: "ViewTextString",
    #       view_expanded_text: "ViewTextString",
    #       table_type: "TableTypeString",
    #       parameters: {
    #         "KeyString" => "ParametersMapValue",
    #       },
    #     },
    #     skip_archive: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateTable AWS API Documentation
    #
    # @overload update_table(params = {})
    # @param [Hash] params ({})
    def update_table(params = {}, options = {})
      req = build_request(:update_table, params)
      req.send_request(options)
    end

    # Updates a trigger definition.
    #
    # @option params [required, String] :name
    #   The name of the trigger to update.
    #
    # @option params [required, Types::TriggerUpdate] :trigger_update
    #   The new values with which to update the trigger.
    #
    # @return [Types::UpdateTriggerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTriggerResponse#trigger #trigger} => Types::Trigger
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_trigger({
    #     name: "NameString", # required
    #     trigger_update: { # required
    #       name: "NameString",
    #       description: "DescriptionString",
    #       schedule: "GenericString",
    #       actions: [
    #         {
    #           job_name: "NameString",
    #           arguments: {
    #             "GenericString" => "GenericString",
    #           },
    #           timeout: 1,
    #           security_configuration: "NameString",
    #           notification_property: {
    #             notify_delay_after: 1,
    #           },
    #           crawler_name: "NameString",
    #         },
    #       ],
    #       predicate: {
    #         logical: "AND", # accepts AND, ANY
    #         conditions: [
    #           {
    #             logical_operator: "EQUALS", # accepts EQUALS
    #             job_name: "NameString",
    #             state: "STARTING", # accepts STARTING, RUNNING, STOPPING, STOPPED, SUCCEEDED, FAILED, TIMEOUT
    #             crawler_name: "NameString",
    #             crawl_state: "RUNNING", # accepts RUNNING, CANCELLING, CANCELLED, SUCCEEDED, FAILED
    #           },
    #         ],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.trigger.name #=> String
    #   resp.trigger.workflow_name #=> String
    #   resp.trigger.id #=> String
    #   resp.trigger.type #=> String, one of "SCHEDULED", "CONDITIONAL", "ON_DEMAND"
    #   resp.trigger.state #=> String, one of "CREATING", "CREATED", "ACTIVATING", "ACTIVATED", "DEACTIVATING", "DEACTIVATED", "DELETING", "UPDATING"
    #   resp.trigger.description #=> String
    #   resp.trigger.schedule #=> String
    #   resp.trigger.actions #=> Array
    #   resp.trigger.actions[0].job_name #=> String
    #   resp.trigger.actions[0].arguments #=> Hash
    #   resp.trigger.actions[0].arguments["GenericString"] #=> String
    #   resp.trigger.actions[0].timeout #=> Integer
    #   resp.trigger.actions[0].security_configuration #=> String
    #   resp.trigger.actions[0].notification_property.notify_delay_after #=> Integer
    #   resp.trigger.actions[0].crawler_name #=> String
    #   resp.trigger.predicate.logical #=> String, one of "AND", "ANY"
    #   resp.trigger.predicate.conditions #=> Array
    #   resp.trigger.predicate.conditions[0].logical_operator #=> String, one of "EQUALS"
    #   resp.trigger.predicate.conditions[0].job_name #=> String
    #   resp.trigger.predicate.conditions[0].state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #   resp.trigger.predicate.conditions[0].crawler_name #=> String
    #   resp.trigger.predicate.conditions[0].crawl_state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateTrigger AWS API Documentation
    #
    # @overload update_trigger(params = {})
    # @param [Hash] params ({})
    def update_trigger(params = {}, options = {})
      req = build_request(:update_trigger, params)
      req.send_request(options)
    end

    # Updates an existing function definition in the Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the function to be updated is
    #   located. If none is provided, the AWS account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database where the function to be updated is
    #   located.
    #
    # @option params [required, String] :function_name
    #   The name of the function.
    #
    # @option params [required, Types::UserDefinedFunctionInput] :function_input
    #   A `FunctionInput` object that redefines the function in the Data
    #   Catalog.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_defined_function({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     function_name: "NameString", # required
    #     function_input: { # required
    #       function_name: "NameString",
    #       class_name: "NameString",
    #       owner_name: "NameString",
    #       owner_type: "USER", # accepts USER, ROLE, GROUP
    #       resource_uris: [
    #         {
    #           resource_type: "JAR", # accepts JAR, FILE, ARCHIVE
    #           uri: "URI",
    #         },
    #       ],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateUserDefinedFunction AWS API Documentation
    #
    # @overload update_user_defined_function(params = {})
    # @param [Hash] params ({})
    def update_user_defined_function(params = {}, options = {})
      req = build_request(:update_user_defined_function, params)
      req.send_request(options)
    end

    # Updates an existing workflow.
    #
    # @option params [required, String] :name
    #   Name of the workflow to be updated.
    #
    # @option params [String] :description
    #   The description of the workflow.
    #
    # @option params [Hash<String,String>] :default_run_properties
    #   A collection of properties to be used as part of each execution of the
    #   workflow.
    #
    # @return [Types::UpdateWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWorkflowResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workflow({
    #     name: "NameString", # required
    #     description: "GenericString",
    #     default_run_properties: {
    #       "IdString" => "GenericString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateWorkflow AWS API Documentation
    #
    # @overload update_workflow(params = {})
    # @param [Hash] params ({})
    def update_workflow(params = {}, options = {})
      req = build_request(:update_workflow, params)
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
      context[:gem_name] = 'aws-sdk-glue'
      context[:gem_version] = '1.57.0'
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
