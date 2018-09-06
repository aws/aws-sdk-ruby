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
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:glue)

module Aws::Glue
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
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Creates one or more partitions in a batch operation.
    #
    # @option params [String] :catalog_id
    #   The ID of the catalog in which the partion is to be created.
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
    #   supplied, the AWS account ID is used by default.
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
    #   If none is supplied, the AWS account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database in which the table in question
    #   resides.
    #
    # @option params [required, String] :table_name
    #   The name of the table where the partitions to be deleted is located.
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
    # <note markdown="1"> After completing this operation, you will no longer have access to the
    # table versions and partitions that belong to the deleted table. AWS
    # Glue deletes these "orphaned" resources asynchronously in a timely
    # manner, at the discretion of the service.
    #
    #  To ensure immediate deletion of all related resources, before calling
    # `BatchDeleteTable`, use `DeleteTableVersion` or
    # `BatchDeleteTableVersion`, and `DeletePartition` or
    # `BatchDeletePartition`, to delete any resources that belong to the
    # table.
    #
    #  </note>
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the table resides. If none is
    #   supplied, the AWS account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database where the tables to delete reside.
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
    #   supplied, the AWS account ID is used by default.
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
    #   A list of the IDs of versions to be deleted.
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

    # Stops one or more job runs for a specified job definition.
    #
    # @option params [required, String] :job_name
    #   The name of the job definition for which to stop job runs.
    #
    # @option params [required, Array<String>] :job_run_ids
    #   A list of the JobRunIds that should be stopped for that job
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

    # Creates a classifier in the user's account. This may be a
    # `GrokClassifier`, an `XMLClassifier`, or abbrev `JsonClassifier`,
    # depending on which field of the request is present.
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
    #   is supplied, the AWS account ID is used by default.
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
    #       connection_type: "JDBC", # required, accepts JDBC, SFTP
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
    # *s3Targets* field, the *jdbcTargets* field, or the *DynamoDBTargets*
    # field.
    #
    # @option params [required, String] :name
    #   Name of the new crawler.
    #
    # @option params [required, String] :role
    #   The IAM role (or ARN of an IAM role) used by the new crawler to access
    #   customer resources.
    #
    # @option params [required, String] :database_name
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
    #   A `cron` expression used to specify the schedule (see [Time-Based
    #   Schedules for Jobs and Crawlers][1]. For example, to run something
    #   every day at 12:15 UTC, you would specify: `cron(15 12 * * ? *)`.
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
    #   Policy for the crawler's update and deletion behavior.
    #
    # @option params [String] :configuration
    #   Crawler configuration information. This versioned JSON string allows
    #   users to specify aspects of a Crawler's behavior.
    #
    #   You can use this field to force partitions to inherit metadata such as
    #   classification, input format, output format, serde information, and
    #   schema from their parent table, rather than detect this information
    #   separately for each partition. Use the following JSON string to
    #   specify that behavior:
    #
    #   Example: `'\{ "Version": 1.0, "CrawlerOutput": \{ "Partitions": \{
    #   "AddOrUpdateBehavior": "InheritFromTable" \} \} \}'`
    #
    # @option params [String] :crawler_security_configuration
    #   The name of the SecurityConfiguration structure to be used by this
    #   Crawler.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_crawler({
    #     name: "NameString", # required
    #     role: "Role", # required
    #     database_name: "DatabaseName", # required
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
    #   supplied, the AWS account ID is used by default.
    #
    # @option params [required, Types::DatabaseInput] :database_input
    #   A `DatabaseInput` object defining the metadata database to create in
    #   the catalog.
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

    # Creates a new DevEndpoint.
    #
    # @option params [required, String] :endpoint_name
    #   The name to be assigned to the new DevEndpoint.
    #
    # @option params [required, String] :role_arn
    #   The IAM role for the DevEndpoint.
    #
    # @option params [Array<String>] :security_group_ids
    #   Security group IDs for the security groups to be used by the new
    #   DevEndpoint.
    #
    # @option params [String] :subnet_id
    #   The subnet ID for the new DevEndpoint to use.
    #
    # @option params [String] :public_key
    #   The public key to be used by this DevEndpoint for authentication. This
    #   attribute is provided for backward compatibility, as the recommended
    #   attribute to use is public keys.
    #
    # @option params [Array<String>] :public_keys
    #   A list of public keys to be used by the DevEndpoints for
    #   authentication. The use of this attribute is preferred over a single
    #   public key because the public keys allow you to have a different
    #   private key per client.
    #
    #   <note markdown="1"> If you previously created an endpoint with a public key, you must
    #   remove that key to be able to set a list of public keys: call the
    #   `UpdateDevEndpoint` API with the public key content in the
    #   `deletePublicKeys` attribute, and the list of new keys in the
    #   `addPublicKeys` attribute.
    #
    #    </note>
    #
    # @option params [Integer] :number_of_nodes
    #   The number of AWS Glue Data Processing Units (DPUs) to allocate to
    #   this DevEndpoint.
    #
    # @option params [String] :extra_python_libs_s3_path
    #   Path(s) to one or more Python libraries in an S3 bucket that should be
    #   loaded in your DevEndpoint. Multiple values must be complete paths
    #   separated by a comma.
    #
    #   Please note that only pure Python libraries can currently be used on a
    #   DevEndpoint. Libraries that rely on C extensions, such as the
    #   [pandas][1] Python data analysis library, are not yet supported.
    #
    #
    #
    #   [1]: http://pandas.pydata.org/
    #
    # @option params [String] :extra_jars_s3_path
    #   Path to one or more Java Jars in an S3 bucket that should be loaded in
    #   your DevEndpoint.
    #
    # @option params [String] :security_configuration
    #   The name of the SecurityConfiguration structure to be used with this
    #   DevEndpoint.
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
    #   * {Types::CreateDevEndpointResponse#availability_zone #availability_zone} => String
    #   * {Types::CreateDevEndpointResponse#vpc_id #vpc_id} => String
    #   * {Types::CreateDevEndpointResponse#extra_python_libs_s3_path #extra_python_libs_s3_path} => String
    #   * {Types::CreateDevEndpointResponse#extra_jars_s3_path #extra_jars_s3_path} => String
    #   * {Types::CreateDevEndpointResponse#failure_reason #failure_reason} => String
    #   * {Types::CreateDevEndpointResponse#security_configuration #security_configuration} => String
    #   * {Types::CreateDevEndpointResponse#created_timestamp #created_timestamp} => Time
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
    #     extra_python_libs_s3_path: "GenericString",
    #     extra_jars_s3_path: "GenericString",
    #     security_configuration: "NameString",
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
    #   resp.availability_zone #=> String
    #   resp.vpc_id #=> String
    #   resp.extra_python_libs_s3_path #=> String
    #   resp.extra_jars_s3_path #=> String
    #   resp.failure_reason #=> String
    #   resp.security_configuration #=> String
    #   resp.created_timestamp #=> Time
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
    #   The name or ARN of the IAM role associated with this job.
    #
    # @option params [Types::ExecutionProperty] :execution_property
    #   An ExecutionProperty specifying the maximum number of concurrent runs
    #   allowed for this job.
    #
    # @option params [required, Types::JobCommand] :command
    #   The JobCommand that executes this job.
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
    #   [1]: http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html
    #   [2]: http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html
    #
    # @option params [Types::ConnectionsList] :connections
    #   The connections used for this job.
    #
    # @option params [Integer] :max_retries
    #   The maximum number of times to retry this job if it fails.
    #
    # @option params [Integer] :allocated_capacity
    #   The number of AWS Glue data processing units (DPUs) to allocate to
    #   this Job. From 2 to 100 DPUs can be allocated; the default is 10. A
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
    # @option params [Types::NotificationProperty] :notification_property
    #   Specifies configuration properties of a job notification.
    #
    # @option params [String] :security_configuration
    #   The name of the SecurityConfiguration structure to be used with this
    #   job.
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
    #     },
    #     default_arguments: {
    #       "GenericString" => "GenericString",
    #     },
    #     connections: {
    #       connections: ["GenericString"],
    #     },
    #     max_retries: 1,
    #     allocated_capacity: 1,
    #     timeout: 1,
    #     notification_property: {
    #       notify_delay_after: 1,
    #     },
    #     security_configuration: "NameString",
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

    # Creates a new partition.
    #
    # @option params [String] :catalog_id
    #   The ID of the catalog in which the partion is to be created.
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

    # Creates a new security configuration.
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
    #   [1]: http://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html
    #
    # @option params [Types::Predicate] :predicate
    #   A predicate to specify when the new trigger should fire.
    #
    #   This field is required when the trigger type is CONDITIONAL.
    #
    # @option params [required, Array<Types::Action>] :actions
    #   The actions initiated by this trigger when it fires.
    #
    # @option params [String] :description
    #   A description of the new trigger.
    #
    # @option params [Boolean] :start_on_creation
    #   Set to true to start SCHEDULED and CONDITIONAL triggers when created.
    #   True not supported for ON\_DEMAND triggers.
    #
    # @return [Types::CreateTriggerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTriggerResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_trigger({
    #     name: "NameString", # required
    #     type: "SCHEDULED", # required, accepts SCHEDULED, CONDITIONAL, ON_DEMAND
    #     schedule: "GenericString",
    #     predicate: {
    #       logical: "AND", # accepts AND, ANY
    #       conditions: [
    #         {
    #           logical_operator: "EQUALS", # accepts EQUALS
    #           job_name: "NameString",
    #           state: "STARTING", # accepts STARTING, RUNNING, STOPPING, STOPPED, SUCCEEDED, FAILED, TIMEOUT
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
    #         notification_property: {
    #           notify_delay_after: 1,
    #         },
    #         security_configuration: "NameString",
    #       },
    #     ],
    #     description: "DescriptionString",
    #     start_on_creation: false,
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
    #   supplied, the AWS account ID is used by default.
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
    #   supplied, the AWS account ID is used by default.
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

    # Removes a specified crawler from the Data Catalog, unless the crawler
    # state is `RUNNING`.
    #
    # @option params [required, String] :name
    #   Name of the crawler to remove.
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

    # Removes a specified Database from a Data Catalog.
    #
    # <note markdown="1"> After completing this operation, you will no longer have access to the
    # tables (and all table versions and partitions that might belong to the
    # tables) and the user-defined functions in the deleted database. AWS
    # Glue deletes these "orphaned" resources asynchronously in a timely
    # manner, at the discretion of the service.
    #
    #  To ensure immediate deletion of all related resources, before calling
    # `DeleteDatabase`, use `DeleteTableVersion` or
    # `BatchDeleteTableVersion`, `DeletePartition` or
    # `BatchDeletePartition`, `DeleteUserDefinedFunction`, and `DeleteTable`
    # or `BatchDeleteTable`, to delete any resources that belong to the
    # database.
    #
    #  </note>
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog in which the database resides. If none is
    #   supplied, the AWS account ID is used by default.
    #
    # @option params [required, String] :name
    #   The name of the Database to delete. For Hive compatibility, this must
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

    # Deletes a specified DevEndpoint.
    #
    # @option params [required, String] :endpoint_name
    #   The name of the DevEndpoint.
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

    # Deletes a specified partition.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the partition to be deleted resides.
    #   If none is supplied, the AWS account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database in which the table in question
    #   resides.
    #
    # @option params [required, String] :table_name
    #   The name of the table where the partition to be deleted is located.
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
    # <note markdown="1"> After completing this operation, you will no longer have access to the
    # table versions and partitions that belong to the deleted table. AWS
    # Glue deletes these "orphaned" resources asynchronously in a timely
    # manner, at the discretion of the service.
    #
    #  To ensure immediate deletion of all related resources, before calling
    # `DeleteTable`, use `DeleteTableVersion` or `BatchDeleteTableVersion`,
    # and `DeletePartition` or `BatchDeletePartition`, to delete any
    # resources that belong to the table.
    #
    #  </note>
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the table resides. If none is
    #   supplied, the AWS account ID is used by default.
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
    #   supplied, the AWS account ID is used by default.
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
    #   The ID of the table version to be deleted.
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
    #   Size of the list to return (optional).
    #
    # @option params [String] :next_token
    #   An optional continuation token.
    #
    # @return [Types::GetClassifiersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetClassifiersResponse#classifiers #classifiers} => Array&lt;Types::Classifier&gt;
    #   * {Types::GetClassifiersResponse#next_token #next_token} => String
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
    #   supplied, the AWS account ID is used by default.
    #
    # @option params [required, String] :name
    #   The name of the connection definition to retrieve.
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
    #   })
    #
    # @example Response structure
    #
    #   resp.connection.name #=> String
    #   resp.connection.description #=> String
    #   resp.connection.connection_type #=> String, one of "JDBC", "SFTP"
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
    #   supplied, the AWS account ID is used by default.
    #
    # @option params [Types::GetConnectionsFilter] :filter
    #   A filter that controls which connections will be returned.
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
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connections({
    #     catalog_id: "CatalogIdString",
    #     filter: {
    #       match_criteria: ["NameString"],
    #       connection_type: "JDBC", # accepts JDBC, SFTP
    #     },
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.connection_list #=> Array
    #   resp.connection_list[0].name #=> String
    #   resp.connection_list[0].description #=> String
    #   resp.connection_list[0].connection_type #=> String, one of "JDBC", "SFTP"
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
    #   Name of the crawler to retrieve metadata for.
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

    # Retrieves the definition of a specified database.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog in which the database resides. If none is
    #   supplied, the AWS account ID is used by default.
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDatabase AWS API Documentation
    #
    # @overload get_database(params = {})
    # @param [Hash] params ({})
    def get_database(params = {}, options = {})
      req = build_request(:get_database, params)
      req.send_request(options)
    end

    # Retrieves all Databases defined in a given Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog from which to retrieve `Databases`. If none
    #   is supplied, the AWS account ID is used by default.
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

    # Retrieves information about a specified DevEndpoint.
    #
    # @option params [required, String] :endpoint_name
    #   Name of the DevEndpoint for which to retrieve information.
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDevEndpoint AWS API Documentation
    #
    # @overload get_dev_endpoint(params = {})
    # @param [Hash] params ({})
    def get_dev_endpoint(params = {}, options = {})
      req = build_request(:get_dev_endpoint, params)
      req.send_request(options)
    end

    # Retrieves all the DevEndpoints in this AWS account.
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
    #   resp.job.default_arguments #=> Hash
    #   resp.job.default_arguments["GenericString"] #=> String
    #   resp.job.connections.connections #=> Array
    #   resp.job.connections.connections[0] #=> String
    #   resp.job.max_retries #=> Integer
    #   resp.job.allocated_capacity #=> Integer
    #   resp.job.timeout #=> Integer
    #   resp.job.notification_property.notify_delay_after #=> Integer
    #   resp.job.security_configuration #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJob AWS API Documentation
    #
    # @overload get_job(params = {})
    # @param [Hash] params ({})
    def get_job(params = {}, options = {})
      req = build_request(:get_job, params)
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
    #   resp.job_run.notification_property.notify_delay_after #=> Integer
    #   resp.job_run.security_configuration #=> String
    #   resp.job_run.log_group_name #=> String
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
    #   resp.job_runs[0].notification_property.notify_delay_after #=> Integer
    #   resp.job_runs[0].security_configuration #=> String
    #   resp.job_runs[0].log_group_name #=> String
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
    #   resp.jobs[0].default_arguments #=> Hash
    #   resp.jobs[0].default_arguments["GenericString"] #=> String
    #   resp.jobs[0].connections.connections #=> Array
    #   resp.jobs[0].connections.connections[0] #=> String
    #   resp.jobs[0].max_retries #=> Integer
    #   resp.jobs[0].allocated_capacity #=> Integer
    #   resp.jobs[0].timeout #=> Integer
    #   resp.jobs[0].notification_property.notify_delay_after #=> Integer
    #   resp.jobs[0].security_configuration #=> String
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
    #   none is supplied, the AWS account ID is used by default.
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
    #   none is supplied, the AWS account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database where the partitions reside.
    #
    # @option params [required, String] :table_name
    #   The name of the partitions' table.
    #
    # @option params [String] :expression
    #   An expression filtering the partitions to be returned.
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
    #   Parameters for the mapping.
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
    #   supplied, the AWS account ID is used by default.
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
    #   resp.table.view_original_text #=> String
    #   resp.table.view_expanded_text #=> String
    #   resp.table.table_type #=> String
    #   resp.table.parameters #=> Hash
    #   resp.table.parameters["KeyString"] #=> String
    #   resp.table.created_by #=> String
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
    #   supplied, the AWS account ID is used by default.
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
    #   The ID value of the table version to be retrieved.
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
    #   resp.table_version.table.view_original_text #=> String
    #   resp.table_version.table.view_expanded_text #=> String
    #   resp.table_version.table.table_type #=> String
    #   resp.table_version.table.parameters #=> Hash
    #   resp.table_version.table.parameters["KeyString"] #=> String
    #   resp.table_version.table.created_by #=> String
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
    #   supplied, the AWS account ID is used by default.
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
    #   resp.table_versions[0].table.view_original_text #=> String
    #   resp.table_versions[0].table.view_expanded_text #=> String
    #   resp.table_versions[0].table.table_type #=> String
    #   resp.table_versions[0].table.parameters #=> Hash
    #   resp.table_versions[0].table.parameters["KeyString"] #=> String
    #   resp.table_versions[0].table.created_by #=> String
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
    #   supplied, the AWS account ID is used by default.
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
    #   resp.table_list[0].view_original_text #=> String
    #   resp.table_list[0].view_expanded_text #=> String
    #   resp.table_list[0].table_type #=> String
    #   resp.table_list[0].parameters #=> Hash
    #   resp.table_list[0].parameters["KeyString"] #=> String
    #   resp.table_list[0].created_by #=> String
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
    #   resp.trigger.actions[0].notification_property.notify_delay_after #=> Integer
    #   resp.trigger.actions[0].security_configuration #=> String
    #   resp.trigger.predicate.logical #=> String, one of "AND", "ANY"
    #   resp.trigger.predicate.conditions #=> Array
    #   resp.trigger.predicate.conditions[0].logical_operator #=> String, one of "EQUALS"
    #   resp.trigger.predicate.conditions[0].job_name #=> String
    #   resp.trigger.predicate.conditions[0].state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
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
    #   The name of the job for which to retrieve triggers. The trigger that
    #   can start this job will be returned, and if there is no such trigger,
    #   all triggers will be returned.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the response.
    #
    # @return [Types::GetTriggersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTriggersResponse#triggers #triggers} => Array&lt;Types::Trigger&gt;
    #   * {Types::GetTriggersResponse#next_token #next_token} => String
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
    #   resp.triggers[0].actions[0].notification_property.notify_delay_after #=> Integer
    #   resp.triggers[0].actions[0].security_configuration #=> String
    #   resp.triggers[0].predicate.logical #=> String, one of "AND", "ANY"
    #   resp.triggers[0].predicate.conditions #=> Array
    #   resp.triggers[0].predicate.conditions[0].logical_operator #=> String, one of "EQUALS"
    #   resp.triggers[0].predicate.conditions[0].job_name #=> String
    #   resp.triggers[0].predicate.conditions[0].state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
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
    #   located. If none is supplied, the AWS account ID is used by default.
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

    # Retrieves a multiple function definitions from the Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the functions to be retrieved are
    #   located. If none is supplied, the AWS account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database where the functions are located.
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
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_defined_functions({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     pattern: "NameString", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.user_defined_functions #=> Array
    #   resp.user_defined_functions[0].function_name #=> String
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

    # Imports an existing Athena Data Catalog to AWS Glue
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

    # Sets the security configuration for a specified catalog. Once the
    # configuration has been set, the specified encryption is applied to
    # every catalog write thereafter.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog for which to set the security
    #   configuration. If none is supplied, the AWS account ID is used by
    #   default.
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

    # Resets a bookmark entry.
    #
    # @option params [required, String] :job_name
    #   The name of the job in question.
    #
    # @return [Types::ResetJobBookmarkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResetJobBookmarkResponse#job_bookmark_entry #job_bookmark_entry} => Types::JobBookmarkEntry
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_job_bookmark({
    #     job_name: "JobName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_bookmark_entry.job_name #=> String
    #   resp.job_bookmark_entry.version #=> Integer
    #   resp.job_bookmark_entry.run #=> Integer
    #   resp.job_bookmark_entry.attempt #=> Integer
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

    # Starts a job run using a job definition.
    #
    # @option params [required, String] :job_name
    #   The name of the job definition to use.
    #
    # @option params [String] :job_run_id
    #   The ID of a previous JobRun to retry.
    #
    # @option params [Hash<String,String>] :arguments
    #   The job arguments specifically for this run. They override the
    #   equivalent default arguments set for in the job definition itself.
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
    #   [1]: http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html
    #   [2]: http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html
    #
    # @option params [Integer] :allocated_capacity
    #   The number of AWS Glue data processing units (DPUs) to allocate to
    #   this JobRun. From 2 to 100 DPUs can be allocated; the default is 10. A
    #   DPU is a relative measure of processing power that consists of 4 vCPUs
    #   of compute capacity and 16 GB of memory. For more information, see the
    #   [AWS Glue pricing page][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #
    # @option params [Integer] :timeout
    #   The JobRun timeout in minutes. This is the maximum time that a job run
    #   can consume resources before it is terminated and enters `TIMEOUT`
    #   status. The default is 2,880 minutes (48 hours). This overrides the
    #   timeout value set in the parent job.
    #
    # @option params [Types::NotificationProperty] :notification_property
    #   Specifies configuration properties of a job run notification.
    #
    # @option params [String] :security_configuration
    #   The name of the SecurityConfiguration structure to be used with this
    #   job run.
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
    #     notification_property: {
    #       notify_delay_after: 1,
    #     },
    #     security_configuration: "NameString",
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

    # Starts an existing trigger. See [Triggering Jobs][1] for information
    # about how different types of trigger are started.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/glue/latest/dg/trigger-job.html
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

    # Modifies an existing classifier (a `GrokClassifier`, `XMLClassifier`,
    # or `JsonClassifier`, depending on which field is present).
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
    #   supplied, the AWS account ID is used by default.
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
    #       connection_type: "JDBC", # required, accepts JDBC, SFTP
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
    #   The IAM role (or ARN of an IAM role) used by the new crawler to access
    #   customer resources.
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
    #   A `cron` expression used to specify the schedule (see [Time-Based
    #   Schedules for Jobs and Crawlers][1]. For example, to run something
    #   every day at 12:15 UTC, you would specify: `cron(15 12 * * ? *)`.
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
    #   Policy for the crawler's update and deletion behavior.
    #
    # @option params [String] :configuration
    #   Crawler configuration information. This versioned JSON string allows
    #   users to specify aspects of a Crawler's behavior.
    #
    #   You can use this field to force partitions to inherit metadata such as
    #   classification, input format, output format, serde information, and
    #   schema from their parent table, rather than detect this information
    #   separately for each partition. Use the following JSON string to
    #   specify that behavior:
    #
    #   Example: `'\{ "Version": 1.0, "CrawlerOutput": \{ "Partitions": \{
    #   "AddOrUpdateBehavior": "InheritFromTable" \} \} \}'`
    #
    # @option params [String] :crawler_security_configuration
    #   The name of the SecurityConfiguration structure to be used by this
    #   Crawler.
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
    #   Name of the crawler whose schedule to update.
    #
    # @option params [String] :schedule
    #   The updated `cron` expression used to specify the schedule (see
    #   [Time-Based Schedules for Jobs and Crawlers][1]. For example, to run
    #   something every day at 12:15 UTC, you would specify: `cron(15 12 * * ?
    #   *)`.
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
    #   none is supplied, the AWS account ID is used by default.
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

    # Updates a specified DevEndpoint.
    #
    # @option params [required, String] :endpoint_name
    #   The name of the DevEndpoint to be updated.
    #
    # @option params [String] :public_key
    #   The public key for the DevEndpoint to use.
    #
    # @option params [Array<String>] :add_public_keys
    #   The list of public keys for the DevEndpoint to use.
    #
    # @option params [Array<String>] :delete_public_keys
    #   The list of public keys to be deleted from the DevEndpoint.
    #
    # @option params [Types::DevEndpointCustomLibraries] :custom_libraries
    #   Custom Python or Java libraries to be loaded in the DevEndpoint.
    #
    # @option params [Boolean] :update_etl_libraries
    #   True if the list of custom libraries to be loaded in the development
    #   endpoint needs to be updated, or False otherwise.
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
    #   Name of the job definition to update.
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
    #       },
    #       default_arguments: {
    #         "GenericString" => "GenericString",
    #       },
    #       connections: {
    #         connections: ["GenericString"],
    #       },
    #       max_retries: 1,
    #       allocated_capacity: 1,
    #       timeout: 1,
    #       notification_property: {
    #         notify_delay_after: 1,
    #       },
    #       security_configuration: "NameString",
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

    # Updates a partition.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the partition to be updated resides.
    #   If none is supplied, the AWS account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database in which the table in question
    #   resides.
    #
    # @option params [required, String] :table_name
    #   The name of the table where the partition to be updated is located.
    #
    # @option params [required, Array<String>] :partition_value_list
    #   A list of the values defining the partition.
    #
    # @option params [required, Types::PartitionInput] :partition_input
    #   The new partition object to which to update the partition.
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
    #   supplied, the AWS account ID is used by default.
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
    #   table before updating it. If `skipArchive` is set to true, however,
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
    #           notification_property: {
    #             notify_delay_after: 1,
    #           },
    #           security_configuration: "NameString",
    #         },
    #       ],
    #       predicate: {
    #         logical: "AND", # accepts AND, ANY
    #         conditions: [
    #           {
    #             logical_operator: "EQUALS", # accepts EQUALS
    #             job_name: "NameString",
    #             state: "STARTING", # accepts STARTING, RUNNING, STOPPING, STOPPED, SUCCEEDED, FAILED, TIMEOUT
    #           },
    #         ],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.trigger.name #=> String
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
    #   resp.trigger.actions[0].notification_property.notify_delay_after #=> Integer
    #   resp.trigger.actions[0].security_configuration #=> String
    #   resp.trigger.predicate.logical #=> String, one of "AND", "ANY"
    #   resp.trigger.predicate.conditions #=> Array
    #   resp.trigger.predicate.conditions[0].logical_operator #=> String, one of "EQUALS"
    #   resp.trigger.predicate.conditions[0].job_name #=> String
    #   resp.trigger.predicate.conditions[0].state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
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
    #   located. If none is supplied, the AWS account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database where the function to be updated is
    #   located.
    #
    # @option params [required, String] :function_name
    #   The name of the function.
    #
    # @option params [required, Types::UserDefinedFunctionInput] :function_input
    #   A `FunctionInput` object that re-defines the function in the Data
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
      context[:gem_version] = '1.16.0'
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
