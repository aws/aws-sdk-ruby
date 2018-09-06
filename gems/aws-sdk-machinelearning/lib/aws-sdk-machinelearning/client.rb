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
require 'aws-sdk-machinelearning/plugins/predict_endpoint.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:machinelearning)

module Aws::MachineLearning
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :machinelearning

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
    add_plugin(Aws::MachineLearning::Plugins::PredictEndpoint)

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

    # Adds one or more tags to an object, up to a limit of 10. Each tag
    # consists of a key and an optional value. If you add a tag using a key
    # that is already associated with the ML object, `AddTags` updates the
    # tag's value.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The key-value pairs to use to create tags. If you specify a key
    #   without specifying a value, Amazon ML creates a tag with the specified
    #   key and a value of null.
    #
    # @option params [required, String] :resource_id
    #   The ID of the ML object to tag. For example, `exampleModelId`.
    #
    # @option params [required, String] :resource_type
    #   The type of the ML object to tag.
    #
    # @return [Types::AddTagsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddTagsOutput#resource_id #resource_id} => String
    #   * {Types::AddTagsOutput#resource_type #resource_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags({
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     resource_id: "EntityId", # required
    #     resource_type: "BatchPrediction", # required, accepts BatchPrediction, DataSource, Evaluation, MLModel
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_id #=> String
    #   resp.resource_type #=> String, one of "BatchPrediction", "DataSource", "Evaluation", "MLModel"
    #
    # @overload add_tags(params = {})
    # @param [Hash] params ({})
    def add_tags(params = {}, options = {})
      req = build_request(:add_tags, params)
      req.send_request(options)
    end

    # Generates predictions for a group of observations. The observations to
    # process exist in one or more data files referenced by a `DataSource`.
    # This operation creates a new `BatchPrediction`, and uses an `MLModel`
    # and the data files referenced by the `DataSource` as information
    # sources.
    #
    # `CreateBatchPrediction` is an asynchronous operation. In response to
    # `CreateBatchPrediction`, Amazon Machine Learning (Amazon ML)
    # immediately returns and sets the `BatchPrediction` status to
    # `PENDING`. After the `BatchPrediction` completes, Amazon ML sets the
    # status to `COMPLETED`.
    #
    # You can poll for status updates by using the GetBatchPrediction
    # operation and checking the `Status` parameter of the result. After the
    # `COMPLETED` status appears, the results are available in the location
    # specified by the `OutputUri` parameter.
    #
    # @option params [required, String] :batch_prediction_id
    #   A user-supplied ID that uniquely identifies the `BatchPrediction`.
    #
    # @option params [String] :batch_prediction_name
    #   A user-supplied name or description of the `BatchPrediction`.
    #   `BatchPredictionName` can only use the UTF-8 character set.
    #
    # @option params [required, String] :ml_model_id
    #   The ID of the `MLModel` that will generate predictions for the group
    #   of observations.
    #
    # @option params [required, String] :batch_prediction_data_source_id
    #   The ID of the `DataSource` that points to the group of observations to
    #   predict.
    #
    # @option params [required, String] :output_uri
    #   The location of an Amazon Simple Storage Service (Amazon S3) bucket or
    #   directory to store the batch prediction results. The following
    #   substrings are not allowed in the `s3 key` portion of the `outputURI`
    #   field: ':', '//', '/./', '/../'.
    #
    #   Amazon ML needs permissions to store and retrieve the logs on your
    #   behalf. For information about how to set permissions, see the [Amazon
    #   Machine Learning Developer Guide][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/machine-learning/latest/dg
    #
    # @return [Types::CreateBatchPredictionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBatchPredictionOutput#batch_prediction_id #batch_prediction_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_batch_prediction({
    #     batch_prediction_id: "EntityId", # required
    #     batch_prediction_name: "EntityName",
    #     ml_model_id: "EntityId", # required
    #     batch_prediction_data_source_id: "EntityId", # required
    #     output_uri: "S3Url", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.batch_prediction_id #=> String
    #
    # @overload create_batch_prediction(params = {})
    # @param [Hash] params ({})
    def create_batch_prediction(params = {}, options = {})
      req = build_request(:create_batch_prediction, params)
      req.send_request(options)
    end

    # Creates a `DataSource` object from an [ Amazon Relational Database
    # Service][1] (Amazon RDS). A `DataSource` references data that can be
    # used to perform `CreateMLModel`, `CreateEvaluation`, or
    # `CreateBatchPrediction` operations.
    #
    # `CreateDataSourceFromRDS` is an asynchronous operation. In response to
    # `CreateDataSourceFromRDS`, Amazon Machine Learning (Amazon ML)
    # immediately returns and sets the `DataSource` status to `PENDING`.
    # After the `DataSource` is created and ready for use, Amazon ML sets
    # the `Status` parameter to `COMPLETED`. `DataSource` in the `COMPLETED`
    # or `PENDING` state can be used only to perform `>CreateMLModel`&gt;,
    # `CreateEvaluation`, or `CreateBatchPrediction` operations.
    #
    # If Amazon ML cannot accept the input source, it sets the `Status`
    # parameter to `FAILED` and includes an error message in the `Message`
    # attribute of the `GetDataSource` operation response.
    #
    #
    #
    # [1]: http://aws.amazon.com/rds/
    #
    # @option params [required, String] :data_source_id
    #   A user-supplied ID that uniquely identifies the `DataSource`.
    #   Typically, an Amazon Resource Number (ARN) becomes the ID for a
    #   `DataSource`.
    #
    # @option params [String] :data_source_name
    #   A user-supplied name or description of the `DataSource`.
    #
    # @option params [required, Types::RDSDataSpec] :rds_data
    #   The data specification of an Amazon RDS `DataSource`\:
    #
    #   * DatabaseInformation - * `DatabaseName` - The name of the Amazon RDS
    #     database.
    #     * `InstanceIdentifier ` - A unique identifier for the Amazon RDS
    #       database instance.
    #
    #   * DatabaseCredentials - AWS Identity and Access Management (IAM)
    #     credentials that are used to connect to the Amazon RDS database.
    #
    #   * ResourceRole - A role (DataPipelineDefaultResourceRole) assumed by
    #     an EC2 instance to carry out the copy task from Amazon RDS to Amazon
    #     Simple Storage Service (Amazon S3). For more information, see [Role
    #     templates][1] for data pipelines.
    #
    #   * ServiceRole - A role (DataPipelineDefaultRole) assumed by the AWS
    #     Data Pipeline service to monitor the progress of the copy task from
    #     Amazon RDS to Amazon S3. For more information, see [Role
    #     templates][1] for data pipelines.
    #
    #   * SecurityInfo - The security information to use to access an RDS DB
    #     instance. You need to set up appropriate ingress rules for the
    #     security entity IDs provided to allow access to the Amazon RDS
    #     instance. Specify a \[`SubnetId`, `SecurityGroupIds`\] pair for a
    #     VPC-based RDS DB instance.
    #
    #   * SelectSqlQuery - A query that is used to retrieve the observation
    #     data for the `Datasource`.
    #
    #   * S3StagingLocation - The Amazon S3 location for staging Amazon RDS
    #     data. The data retrieved from Amazon RDS using `SelectSqlQuery` is
    #     stored in this location.
    #
    #   * DataSchemaUri - The Amazon S3 location of the `DataSchema`.
    #
    #   * DataSchema - A JSON string representing the schema. This is not
    #     required if `DataSchemaUri` is specified.
    #
    #   * DataRearrangement - A JSON string that represents the splitting and
    #     rearrangement requirements for the `Datasource`.
    #
    #
    #     Sample - `
    #     "\{"splitting":\{"percentBegin":10,"percentEnd":60\}\}"`
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html
    #
    # @option params [required, String] :role_arn
    #   The role that Amazon ML assumes on behalf of the user to create and
    #   activate a data pipeline in the user's account and copy data using
    #   the `SelectSqlQuery` query from Amazon RDS to Amazon S3.
    #
    # @option params [Boolean] :compute_statistics
    #   The compute statistics for a `DataSource`. The statistics are
    #   generated from the observation data referenced by a `DataSource`.
    #   Amazon ML uses the statistics internally during `MLModel` training.
    #   This parameter must be set to `true` if the ``DataSource`` needs to be
    #   used for `MLModel` training.
    #
    # @return [Types::CreateDataSourceFromRDSOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataSourceFromRDSOutput#data_source_id #data_source_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_source_from_rds({
    #     data_source_id: "EntityId", # required
    #     data_source_name: "EntityName",
    #     rds_data: { # required
    #       database_information: { # required
    #         instance_identifier: "RDSInstanceIdentifier", # required
    #         database_name: "RDSDatabaseName", # required
    #       },
    #       select_sql_query: "RDSSelectSqlQuery", # required
    #       database_credentials: { # required
    #         username: "RDSDatabaseUsername", # required
    #         password: "RDSDatabasePassword", # required
    #       },
    #       s3_staging_location: "S3Url", # required
    #       data_rearrangement: "DataRearrangement",
    #       data_schema: "DataSchema",
    #       data_schema_uri: "S3Url",
    #       resource_role: "EDPResourceRole", # required
    #       service_role: "EDPServiceRole", # required
    #       subnet_id: "EDPSubnetId", # required
    #       security_group_ids: ["EDPSecurityGroupId"], # required
    #     },
    #     role_arn: "RoleARN", # required
    #     compute_statistics: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source_id #=> String
    #
    # @overload create_data_source_from_rds(params = {})
    # @param [Hash] params ({})
    def create_data_source_from_rds(params = {}, options = {})
      req = build_request(:create_data_source_from_rds, params)
      req.send_request(options)
    end

    # Creates a `DataSource` from a database hosted on an Amazon Redshift
    # cluster. A `DataSource` references data that can be used to perform
    # either `CreateMLModel`, `CreateEvaluation`, or `CreateBatchPrediction`
    # operations.
    #
    # `CreateDataSourceFromRedshift` is an asynchronous operation. In
    # response to `CreateDataSourceFromRedshift`, Amazon Machine Learning
    # (Amazon ML) immediately returns and sets the `DataSource` status to
    # `PENDING`. After the `DataSource` is created and ready for use, Amazon
    # ML sets the `Status` parameter to `COMPLETED`. `DataSource` in
    # `COMPLETED` or `PENDING` states can be used to perform only
    # `CreateMLModel`, `CreateEvaluation`, or `CreateBatchPrediction`
    # operations.
    #
    # If Amazon ML can't accept the input source, it sets the `Status`
    # parameter to `FAILED` and includes an error message in the `Message`
    # attribute of the `GetDataSource` operation response.
    #
    # The observations should be contained in the database hosted on an
    # Amazon Redshift cluster and should be specified by a `SelectSqlQuery`
    # query. Amazon ML executes an `Unload` command in Amazon Redshift to
    # transfer the result set of the `SelectSqlQuery` query to
    # `S3StagingLocation`.
    #
    # After the `DataSource` has been created, it's ready for use in
    # evaluations and batch predictions. If you plan to use the `DataSource`
    # to train an `MLModel`, the `DataSource` also requires a recipe. A
    # recipe describes how each input variable will be used in training an
    # `MLModel`. Will the variable be included or excluded from training?
    # Will the variable be manipulated; for example, will it be combined
    # with another variable or will it be split apart into word
    # combinations? The recipe provides answers to these questions.
    #
    #  <?oxy\_insert\_start author="laurama" timestamp="20160406T153842-0700">You can't change an existing datasource, but you can copy and modify
    # the settings from an existing Amazon Redshift datasource to create a
    # new datasource. To do so, call `GetDataSource` for an existing
    # datasource and copy the values to a `CreateDataSource` call. Change
    # the settings that you want to change and make sure that all required
    # fields have the appropriate values.
    #
    #  <?oxy\_insert\_end>
    #
    # @option params [required, String] :data_source_id
    #   A user-supplied ID that uniquely identifies the `DataSource`.
    #
    # @option params [String] :data_source_name
    #   A user-supplied name or description of the `DataSource`.
    #
    # @option params [required, Types::RedshiftDataSpec] :data_spec
    #   The data specification of an Amazon Redshift `DataSource`\:
    #
    #   * DatabaseInformation - * `DatabaseName` - The name of the Amazon
    #     Redshift database.
    #     * ` ClusterIdentifier` - The unique ID for the Amazon Redshift
    #       cluster.
    #
    #   * DatabaseCredentials - The AWS Identity and Access Management (IAM)
    #     credentials that are used to connect to the Amazon Redshift
    #     database.
    #
    #   * SelectSqlQuery - The query that is used to retrieve the observation
    #     data for the `Datasource`.
    #
    #   * S3StagingLocation - The Amazon Simple Storage Service (Amazon S3)
    #     location for staging Amazon Redshift data. The data retrieved from
    #     Amazon Redshift using the `SelectSqlQuery` query is stored in this
    #     location.
    #
    #   * DataSchemaUri - The Amazon S3 location of the `DataSchema`.
    #
    #   * DataSchema - A JSON string representing the schema. This is not
    #     required if `DataSchemaUri` is specified.
    #
    #   * DataRearrangement - A JSON string that represents the splitting and
    #     rearrangement requirements for the `DataSource`.
    #
    #     Sample - `
    #     "\{"splitting":\{"percentBegin":10,"percentEnd":60\}\}"`
    #
    # @option params [required, String] :role_arn
    #   A fully specified role Amazon Resource Name (ARN). Amazon ML assumes
    #   the role on behalf of the user to create the following:
    #
    #   * A security group to allow Amazon ML to execute the `SelectSqlQuery`
    #     query on an Amazon Redshift cluster
    #
    #   * An Amazon S3 bucket policy to grant Amazon ML read/write permissions
    #     on the `S3StagingLocation`
    #
    # @option params [Boolean] :compute_statistics
    #   The compute statistics for a `DataSource`. The statistics are
    #   generated from the observation data referenced by a `DataSource`.
    #   Amazon ML uses the statistics internally during `MLModel` training.
    #   This parameter must be set to `true` if the `DataSource` needs to be
    #   used for `MLModel` training.
    #
    # @return [Types::CreateDataSourceFromRedshiftOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataSourceFromRedshiftOutput#data_source_id #data_source_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_source_from_redshift({
    #     data_source_id: "EntityId", # required
    #     data_source_name: "EntityName",
    #     data_spec: { # required
    #       database_information: { # required
    #         database_name: "RedshiftDatabaseName", # required
    #         cluster_identifier: "RedshiftClusterIdentifier", # required
    #       },
    #       select_sql_query: "RedshiftSelectSqlQuery", # required
    #       database_credentials: { # required
    #         username: "RedshiftDatabaseUsername", # required
    #         password: "RedshiftDatabasePassword", # required
    #       },
    #       s3_staging_location: "S3Url", # required
    #       data_rearrangement: "DataRearrangement",
    #       data_schema: "DataSchema",
    #       data_schema_uri: "S3Url",
    #     },
    #     role_arn: "RoleARN", # required
    #     compute_statistics: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source_id #=> String
    #
    # @overload create_data_source_from_redshift(params = {})
    # @param [Hash] params ({})
    def create_data_source_from_redshift(params = {}, options = {})
      req = build_request(:create_data_source_from_redshift, params)
      req.send_request(options)
    end

    # Creates a `DataSource` object. A `DataSource` references data that can
    # be used to perform `CreateMLModel`, `CreateEvaluation`, or
    # `CreateBatchPrediction` operations.
    #
    # `CreateDataSourceFromS3` is an asynchronous operation. In response to
    # `CreateDataSourceFromS3`, Amazon Machine Learning (Amazon ML)
    # immediately returns and sets the `DataSource` status to `PENDING`.
    # After the `DataSource` has been created and is ready for use, Amazon
    # ML sets the `Status` parameter to `COMPLETED`. `DataSource` in the
    # `COMPLETED` or `PENDING` state can be used to perform only
    # `CreateMLModel`, `CreateEvaluation` or `CreateBatchPrediction`
    # operations.
    #
    # If Amazon ML can't accept the input source, it sets the `Status`
    # parameter to `FAILED` and includes an error message in the `Message`
    # attribute of the `GetDataSource` operation response.
    #
    # The observation data used in a `DataSource` should be ready to use;
    # that is, it should have a consistent structure, and missing data
    # values should be kept to a minimum. The observation data must reside
    # in one or more .csv files in an Amazon Simple Storage Service (Amazon
    # S3) location, along with a schema that describes the data items by
    # name and type. The same schema must be used for all of the data files
    # referenced by the `DataSource`.
    #
    # After the `DataSource` has been created, it's ready to use in
    # evaluations and batch predictions. If you plan to use the `DataSource`
    # to train an `MLModel`, the `DataSource` also needs a recipe. A recipe
    # describes how each input variable will be used in training an
    # `MLModel`. Will the variable be included or excluded from training?
    # Will the variable be manipulated; for example, will it be combined
    # with another variable or will it be split apart into word
    # combinations? The recipe provides answers to these questions.
    #
    # @option params [required, String] :data_source_id
    #   A user-supplied identifier that uniquely identifies the `DataSource`.
    #
    # @option params [String] :data_source_name
    #   A user-supplied name or description of the `DataSource`.
    #
    # @option params [required, Types::S3DataSpec] :data_spec
    #   The data specification of a `DataSource`\:
    #
    #   * DataLocationS3 - The Amazon S3 location of the observation data.
    #
    #   * DataSchemaLocationS3 - The Amazon S3 location of the `DataSchema`.
    #
    #   * DataSchema - A JSON string representing the schema. This is not
    #     required if `DataSchemaUri` is specified.
    #
    #   * DataRearrangement - A JSON string that represents the splitting and
    #     rearrangement requirements for the `Datasource`.
    #
    #     Sample - `
    #     "\{"splitting":\{"percentBegin":10,"percentEnd":60\}\}"`
    #
    # @option params [Boolean] :compute_statistics
    #   The compute statistics for a `DataSource`. The statistics are
    #   generated from the observation data referenced by a `DataSource`.
    #   Amazon ML uses the statistics internally during `MLModel` training.
    #   This parameter must be set to `true` if the ``DataSource`` needs to be
    #   used for `MLModel` training.
    #
    # @return [Types::CreateDataSourceFromS3Output] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataSourceFromS3Output#data_source_id #data_source_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_source_from_s3({
    #     data_source_id: "EntityId", # required
    #     data_source_name: "EntityName",
    #     data_spec: { # required
    #       data_location_s3: "S3Url", # required
    #       data_rearrangement: "DataRearrangement",
    #       data_schema: "DataSchema",
    #       data_schema_location_s3: "S3Url",
    #     },
    #     compute_statistics: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source_id #=> String
    #
    # @overload create_data_source_from_s3(params = {})
    # @param [Hash] params ({})
    def create_data_source_from_s3(params = {}, options = {})
      req = build_request(:create_data_source_from_s3, params)
      req.send_request(options)
    end

    # Creates a new `Evaluation` of an `MLModel`. An `MLModel` is evaluated
    # on a set of observations associated to a `DataSource`. Like a
    # `DataSource` for an `MLModel`, the `DataSource` for an `Evaluation`
    # contains values for the `Target Variable`. The `Evaluation` compares
    # the predicted result for each observation to the actual outcome and
    # provides a summary so that you know how effective the `MLModel`
    # functions on the test data. Evaluation generates a relevant
    # performance metric, such as BinaryAUC, RegressionRMSE or
    # MulticlassAvgFScore based on the corresponding `MLModelType`\:
    # `BINARY`, `REGRESSION` or `MULTICLASS`.
    #
    # `CreateEvaluation` is an asynchronous operation. In response to
    # `CreateEvaluation`, Amazon Machine Learning (Amazon ML) immediately
    # returns and sets the evaluation status to `PENDING`. After the
    # `Evaluation` is created and ready for use, Amazon ML sets the status
    # to `COMPLETED`.
    #
    # You can use the `GetEvaluation` operation to check progress of the
    # evaluation during the creation operation.
    #
    # @option params [required, String] :evaluation_id
    #   A user-supplied ID that uniquely identifies the `Evaluation`.
    #
    # @option params [String] :evaluation_name
    #   A user-supplied name or description of the `Evaluation`.
    #
    # @option params [required, String] :ml_model_id
    #   The ID of the `MLModel` to evaluate.
    #
    #   The schema used in creating the `MLModel` must match the schema of the
    #   `DataSource` used in the `Evaluation`.
    #
    # @option params [required, String] :evaluation_data_source_id
    #   The ID of the `DataSource` for the evaluation. The schema of the
    #   `DataSource` must match the schema used to create the `MLModel`.
    #
    # @return [Types::CreateEvaluationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEvaluationOutput#evaluation_id #evaluation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_evaluation({
    #     evaluation_id: "EntityId", # required
    #     evaluation_name: "EntityName",
    #     ml_model_id: "EntityId", # required
    #     evaluation_data_source_id: "EntityId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_id #=> String
    #
    # @overload create_evaluation(params = {})
    # @param [Hash] params ({})
    def create_evaluation(params = {}, options = {})
      req = build_request(:create_evaluation, params)
      req.send_request(options)
    end

    # Creates a new `MLModel` using the `DataSource` and the recipe as
    # information sources.
    #
    # An `MLModel` is nearly immutable. Users can update only the
    # `MLModelName` and the `ScoreThreshold` in an `MLModel` without
    # creating a new `MLModel`.
    #
    # `CreateMLModel` is an asynchronous operation. In response to
    # `CreateMLModel`, Amazon Machine Learning (Amazon ML) immediately
    # returns and sets the `MLModel` status to `PENDING`. After the
    # `MLModel` has been created and ready is for use, Amazon ML sets the
    # status to `COMPLETED`.
    #
    # You can use the `GetMLModel` operation to check the progress of the
    # `MLModel` during the creation operation.
    #
    # `CreateMLModel` requires a `DataSource` with computed statistics,
    # which can be created by setting `ComputeStatistics` to `true` in
    # `CreateDataSourceFromRDS`, `CreateDataSourceFromS3`, or
    # `CreateDataSourceFromRedshift` operations.
    #
    # @option params [required, String] :ml_model_id
    #   A user-supplied ID that uniquely identifies the `MLModel`.
    #
    # @option params [String] :ml_model_name
    #   A user-supplied name or description of the `MLModel`.
    #
    # @option params [required, String] :ml_model_type
    #   The category of supervised learning that this `MLModel` will address.
    #   Choose from the following types:
    #
    #   * Choose `REGRESSION` if the `MLModel` will be used to predict a
    #     numeric value.
    #   * Choose `BINARY` if the `MLModel` result has two possible values.
    #   * Choose `MULTICLASS` if the `MLModel` result has a limited number of
    #     values.
    #
    #   For more information, see the [Amazon Machine Learning Developer
    #   Guide][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/machine-learning/latest/dg
    #
    # @option params [Hash<String,String>] :parameters
    #   A list of the training parameters in the `MLModel`. The list is
    #   implemented as a map of key-value pairs.
    #
    #   The following is the current set of training parameters:
    #
    #   * `sgd.maxMLModelSizeInBytes` - The maximum allowed size of the model.
    #     Depending on the input data, the size of the model might affect its
    #     performance.
    #
    #     The value is an integer that ranges from `100000` to `2147483648`.
    #     The default value is `33554432`.
    #
    #   * `sgd.maxPasses` - The number of times that the training process
    #     traverses the observations to build the `MLModel`. The value is an
    #     integer that ranges from `1` to `10000`. The default value is `10`.
    #
    #   * `sgd.shuffleType` - Whether Amazon ML shuffles the training data.
    #     Shuffling the data improves a model's ability to find the optimal
    #     solution for a variety of data types. The valid values are `auto`
    #     and `none`. The default value is `none`. We <?oxy\_insert\_start
    #     author="laurama" timestamp="20160329T131121-0700">strongly
    #     recommend that you shuffle your data.<?oxy\_insert\_end>
    #
    #   * `sgd.l1RegularizationAmount` - The coefficient regularization L1
    #     norm. It controls overfitting the data by penalizing large
    #     coefficients. This tends to drive coefficients to zero, resulting in
    #     a sparse feature set. If you use this parameter, start by specifying
    #     a small value, such as `1.0E-08`.
    #
    #     The value is a double that ranges from `0` to `MAX_DOUBLE`. The
    #     default is to not use L1 normalization. This parameter can't be
    #     used when `L2` is specified. Use this parameter sparingly.
    #
    #   * `sgd.l2RegularizationAmount` - The coefficient regularization L2
    #     norm. It controls overfitting the data by penalizing large
    #     coefficients. This tends to drive coefficients to small, nonzero
    #     values. If you use this parameter, start by specifying a small
    #     value, such as `1.0E-08`.
    #
    #     The value is a double that ranges from `0` to `MAX_DOUBLE`. The
    #     default is to not use L2 normalization. This parameter can't be
    #     used when `L1` is specified. Use this parameter sparingly.
    #
    # @option params [required, String] :training_data_source_id
    #   The `DataSource` that points to the training data.
    #
    # @option params [String] :recipe
    #   The data recipe for creating the `MLModel`. You must specify either
    #   the recipe or its URI. If you don't specify a recipe or its URI,
    #   Amazon ML creates a default.
    #
    # @option params [String] :recipe_uri
    #   The Amazon Simple Storage Service (Amazon S3) location and file name
    #   that contains the `MLModel` recipe. You must specify either the recipe
    #   or its URI. If you don't specify a recipe or its URI, Amazon ML
    #   creates a default.
    #
    # @return [Types::CreateMLModelOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMLModelOutput#ml_model_id #ml_model_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ml_model({
    #     ml_model_id: "EntityId", # required
    #     ml_model_name: "EntityName",
    #     ml_model_type: "REGRESSION", # required, accepts REGRESSION, BINARY, MULTICLASS
    #     parameters: {
    #       "StringType" => "StringType",
    #     },
    #     training_data_source_id: "EntityId", # required
    #     recipe: "Recipe",
    #     recipe_uri: "S3Url",
    #   })
    #
    # @example Response structure
    #
    #   resp.ml_model_id #=> String
    #
    # @overload create_ml_model(params = {})
    # @param [Hash] params ({})
    def create_ml_model(params = {}, options = {})
      req = build_request(:create_ml_model, params)
      req.send_request(options)
    end

    # Creates a real-time endpoint for the `MLModel`. The endpoint contains
    # the URI of the `MLModel`; that is, the location to send real-time
    # prediction requests for the specified `MLModel`.
    #
    # @option params [required, String] :ml_model_id
    #   The ID assigned to the `MLModel` during creation.
    #
    # @return [Types::CreateRealtimeEndpointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRealtimeEndpointOutput#ml_model_id #ml_model_id} => String
    #   * {Types::CreateRealtimeEndpointOutput#realtime_endpoint_info #realtime_endpoint_info} => Types::RealtimeEndpointInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_realtime_endpoint({
    #     ml_model_id: "EntityId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ml_model_id #=> String
    #   resp.realtime_endpoint_info.peak_requests_per_second #=> Integer
    #   resp.realtime_endpoint_info.created_at #=> Time
    #   resp.realtime_endpoint_info.endpoint_url #=> String
    #   resp.realtime_endpoint_info.endpoint_status #=> String, one of "NONE", "READY", "UPDATING", "FAILED"
    #
    # @overload create_realtime_endpoint(params = {})
    # @param [Hash] params ({})
    def create_realtime_endpoint(params = {}, options = {})
      req = build_request(:create_realtime_endpoint, params)
      req.send_request(options)
    end

    # Assigns the DELETED status to a `BatchPrediction`, rendering it
    # unusable.
    #
    # After using the `DeleteBatchPrediction` operation, you can use the
    # GetBatchPrediction operation to verify that the status of the
    # `BatchPrediction` changed to DELETED.
    #
    # **Caution:** The result of the `DeleteBatchPrediction` operation is
    # irreversible.
    #
    # @option params [required, String] :batch_prediction_id
    #   A user-supplied ID that uniquely identifies the `BatchPrediction`.
    #
    # @return [Types::DeleteBatchPredictionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBatchPredictionOutput#batch_prediction_id #batch_prediction_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_batch_prediction({
    #     batch_prediction_id: "EntityId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.batch_prediction_id #=> String
    #
    # @overload delete_batch_prediction(params = {})
    # @param [Hash] params ({})
    def delete_batch_prediction(params = {}, options = {})
      req = build_request(:delete_batch_prediction, params)
      req.send_request(options)
    end

    # Assigns the DELETED status to a `DataSource`, rendering it unusable.
    #
    # After using the `DeleteDataSource` operation, you can use the
    # GetDataSource operation to verify that the status of the `DataSource`
    # changed to DELETED.
    #
    # **Caution:** The results of the `DeleteDataSource` operation are
    # irreversible.
    #
    # @option params [required, String] :data_source_id
    #   A user-supplied ID that uniquely identifies the `DataSource`.
    #
    # @return [Types::DeleteDataSourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDataSourceOutput#data_source_id #data_source_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_source({
    #     data_source_id: "EntityId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source_id #=> String
    #
    # @overload delete_data_source(params = {})
    # @param [Hash] params ({})
    def delete_data_source(params = {}, options = {})
      req = build_request(:delete_data_source, params)
      req.send_request(options)
    end

    # Assigns the `DELETED` status to an `Evaluation`, rendering it
    # unusable.
    #
    # After invoking the `DeleteEvaluation` operation, you can use the
    # `GetEvaluation` operation to verify that the status of the
    # `Evaluation` changed to `DELETED`.
    #
    # <caution markdown="1"><title>Caution</title> The results of the `DeleteEvaluation` operation are irreversible.
    #
    # </caution>
    #
    # @option params [required, String] :evaluation_id
    #   A user-supplied ID that uniquely identifies the `Evaluation` to
    #   delete.
    #
    # @return [Types::DeleteEvaluationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEvaluationOutput#evaluation_id #evaluation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_evaluation({
    #     evaluation_id: "EntityId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_id #=> String
    #
    # @overload delete_evaluation(params = {})
    # @param [Hash] params ({})
    def delete_evaluation(params = {}, options = {})
      req = build_request(:delete_evaluation, params)
      req.send_request(options)
    end

    # Assigns the `DELETED` status to an `MLModel`, rendering it unusable.
    #
    # After using the `DeleteMLModel` operation, you can use the
    # `GetMLModel` operation to verify that the status of the `MLModel`
    # changed to DELETED.
    #
    # **Caution:** The result of the `DeleteMLModel` operation is
    # irreversible.
    #
    # @option params [required, String] :ml_model_id
    #   A user-supplied ID that uniquely identifies the `MLModel`.
    #
    # @return [Types::DeleteMLModelOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteMLModelOutput#ml_model_id #ml_model_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ml_model({
    #     ml_model_id: "EntityId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ml_model_id #=> String
    #
    # @overload delete_ml_model(params = {})
    # @param [Hash] params ({})
    def delete_ml_model(params = {}, options = {})
      req = build_request(:delete_ml_model, params)
      req.send_request(options)
    end

    # Deletes a real time endpoint of an `MLModel`.
    #
    # @option params [required, String] :ml_model_id
    #   The ID assigned to the `MLModel` during creation.
    #
    # @return [Types::DeleteRealtimeEndpointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRealtimeEndpointOutput#ml_model_id #ml_model_id} => String
    #   * {Types::DeleteRealtimeEndpointOutput#realtime_endpoint_info #realtime_endpoint_info} => Types::RealtimeEndpointInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_realtime_endpoint({
    #     ml_model_id: "EntityId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ml_model_id #=> String
    #   resp.realtime_endpoint_info.peak_requests_per_second #=> Integer
    #   resp.realtime_endpoint_info.created_at #=> Time
    #   resp.realtime_endpoint_info.endpoint_url #=> String
    #   resp.realtime_endpoint_info.endpoint_status #=> String, one of "NONE", "READY", "UPDATING", "FAILED"
    #
    # @overload delete_realtime_endpoint(params = {})
    # @param [Hash] params ({})
    def delete_realtime_endpoint(params = {}, options = {})
      req = build_request(:delete_realtime_endpoint, params)
      req.send_request(options)
    end

    # Deletes the specified tags associated with an ML object. After this
    # operation is complete, you can't recover deleted tags.
    #
    # If you specify a tag that doesn't exist, Amazon ML ignores it.
    #
    # @option params [required, Array<String>] :tag_keys
    #   One or more tags to delete.
    #
    # @option params [required, String] :resource_id
    #   The ID of the tagged ML object. For example, `exampleModelId`.
    #
    # @option params [required, String] :resource_type
    #   The type of the tagged ML object.
    #
    # @return [Types::DeleteTagsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTagsOutput#resource_id #resource_id} => String
    #   * {Types::DeleteTagsOutput#resource_type #resource_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tags({
    #     tag_keys: ["TagKey"], # required
    #     resource_id: "EntityId", # required
    #     resource_type: "BatchPrediction", # required, accepts BatchPrediction, DataSource, Evaluation, MLModel
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_id #=> String
    #   resp.resource_type #=> String, one of "BatchPrediction", "DataSource", "Evaluation", "MLModel"
    #
    # @overload delete_tags(params = {})
    # @param [Hash] params ({})
    def delete_tags(params = {}, options = {})
      req = build_request(:delete_tags, params)
      req.send_request(options)
    end

    # Returns a list of `BatchPrediction` operations that match the search
    # criteria in the request.
    #
    # @option params [String] :filter_variable
    #   Use one of the following variables to filter a list of
    #   `BatchPrediction`\:
    #
    #   * `CreatedAt` - Sets the search criteria to the `BatchPrediction`
    #     creation date.
    #   * `Status` - Sets the search criteria to the `BatchPrediction` status.
    #   * `Name` - Sets the search criteria to the contents of the
    #     `BatchPrediction`<b> </b> `Name`.
    #   * `IAMUser` - Sets the search criteria to the user account that
    #     invoked the `BatchPrediction` creation.
    #   * `MLModelId` - Sets the search criteria to the `MLModel` used in the
    #     `BatchPrediction`.
    #   * `DataSourceId` - Sets the search criteria to the `DataSource` used
    #     in the `BatchPrediction`.
    #   * `DataURI` - Sets the search criteria to the data file(s) used in the
    #     `BatchPrediction`. The URL can identify either a file or an Amazon
    #     Simple Storage Solution (Amazon S3) bucket or directory.
    #
    # @option params [String] :eq
    #   The equal to operator. The `BatchPrediction` results will have
    #   `FilterVariable` values that exactly match the value specified with
    #   `EQ`.
    #
    # @option params [String] :gt
    #   The greater than operator. The `BatchPrediction` results will have
    #   `FilterVariable` values that are greater than the value specified with
    #   `GT`.
    #
    # @option params [String] :lt
    #   The less than operator. The `BatchPrediction` results will have
    #   `FilterVariable` values that are less than the value specified with
    #   `LT`.
    #
    # @option params [String] :ge
    #   The greater than or equal to operator. The `BatchPrediction` results
    #   will have `FilterVariable` values that are greater than or equal to
    #   the value specified with `GE`.
    #
    # @option params [String] :le
    #   The less than or equal to operator. The `BatchPrediction` results will
    #   have `FilterVariable` values that are less than or equal to the value
    #   specified with `LE`.
    #
    # @option params [String] :ne
    #   The not equal to operator. The `BatchPrediction` results will have
    #   `FilterVariable` values not equal to the value specified with `NE`.
    #
    # @option params [String] :prefix
    #   A string that is found at the beginning of a variable, such as `Name`
    #   or `Id`.
    #
    #   For example, a `Batch Prediction` operation could have the `Name`
    #   `2014-09-09-HolidayGiftMailer`. To search for this `BatchPrediction`,
    #   select `Name` for the `FilterVariable` and any of the following
    #   strings for the `Prefix`\:
    #
    #   * 2014-09
    #
    #   * 2014-09-09
    #
    #   * 2014-09-09-Holiday
    #
    # @option params [String] :sort_order
    #   A two-value parameter that determines the sequence of the resulting
    #   list of `MLModel`s.
    #
    #   * `asc` - Arranges the list in ascending order (A-Z, 0-9).
    #   * `dsc` - Arranges the list in descending order (Z-A, 9-0).
    #
    #   Results are sorted by `FilterVariable`.
    #
    # @option params [String] :next_token
    #   An ID of the page in the paginated results.
    #
    # @option params [Integer] :limit
    #   The number of pages of information to include in the result. The range
    #   of acceptable values is `1` through `100`. The default value is `100`.
    #
    # @return [Types::DescribeBatchPredictionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBatchPredictionsOutput#results #results} => Array&lt;Types::BatchPrediction&gt;
    #   * {Types::DescribeBatchPredictionsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_batch_predictions({
    #     filter_variable: "CreatedAt", # accepts CreatedAt, LastUpdatedAt, Status, Name, IAMUser, MLModelId, DataSourceId, DataURI
    #     eq: "ComparatorValue",
    #     gt: "ComparatorValue",
    #     lt: "ComparatorValue",
    #     ge: "ComparatorValue",
    #     le: "ComparatorValue",
    #     ne: "ComparatorValue",
    #     prefix: "ComparatorValue",
    #     sort_order: "asc", # accepts asc, dsc
    #     next_token: "StringType",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].batch_prediction_id #=> String
    #   resp.results[0].ml_model_id #=> String
    #   resp.results[0].batch_prediction_data_source_id #=> String
    #   resp.results[0].input_data_location_s3 #=> String
    #   resp.results[0].created_by_iam_user #=> String
    #   resp.results[0].created_at #=> Time
    #   resp.results[0].last_updated_at #=> Time
    #   resp.results[0].name #=> String
    #   resp.results[0].status #=> String, one of "PENDING", "INPROGRESS", "FAILED", "COMPLETED", "DELETED"
    #   resp.results[0].output_uri #=> String
    #   resp.results[0].message #=> String
    #   resp.results[0].compute_time #=> Integer
    #   resp.results[0].finished_at #=> Time
    #   resp.results[0].started_at #=> Time
    #   resp.results[0].total_record_count #=> Integer
    #   resp.results[0].invalid_record_count #=> Integer
    #   resp.next_token #=> String
    #
    # @overload describe_batch_predictions(params = {})
    # @param [Hash] params ({})
    def describe_batch_predictions(params = {}, options = {})
      req = build_request(:describe_batch_predictions, params)
      req.send_request(options)
    end

    # Returns a list of `DataSource` that match the search criteria in the
    # request.
    #
    # @option params [String] :filter_variable
    #   Use one of the following variables to filter a list of `DataSource`\:
    #
    #   * `CreatedAt` - Sets the search criteria to `DataSource` creation
    #     dates.
    #   * `Status` - Sets the search criteria to `DataSource` statuses.
    #   * `Name` - Sets the search criteria to the contents of `DataSource`
    #     <b> </b> `Name`.
    #   * `DataUri` - Sets the search criteria to the URI of data files used
    #     to create the `DataSource`. The URI can identify either a file or an
    #     Amazon Simple Storage Service (Amazon S3) bucket or directory.
    #   * `IAMUser` - Sets the search criteria to the user account that
    #     invoked the `DataSource` creation.
    #
    # @option params [String] :eq
    #   The equal to operator. The `DataSource` results will have
    #   `FilterVariable` values that exactly match the value specified with
    #   `EQ`.
    #
    # @option params [String] :gt
    #   The greater than operator. The `DataSource` results will have
    #   `FilterVariable` values that are greater than the value specified with
    #   `GT`.
    #
    # @option params [String] :lt
    #   The less than operator. The `DataSource` results will have
    #   `FilterVariable` values that are less than the value specified with
    #   `LT`.
    #
    # @option params [String] :ge
    #   The greater than or equal to operator. The `DataSource` results will
    #   have `FilterVariable` values that are greater than or equal to the
    #   value specified with `GE`.
    #
    # @option params [String] :le
    #   The less than or equal to operator. The `DataSource` results will have
    #   `FilterVariable` values that are less than or equal to the value
    #   specified with `LE`.
    #
    # @option params [String] :ne
    #   The not equal to operator. The `DataSource` results will have
    #   `FilterVariable` values not equal to the value specified with `NE`.
    #
    # @option params [String] :prefix
    #   A string that is found at the beginning of a variable, such as `Name`
    #   or `Id`.
    #
    #   For example, a `DataSource` could have the `Name`
    #   `2014-09-09-HolidayGiftMailer`. To search for this `DataSource`,
    #   select `Name` for the `FilterVariable` and any of the following
    #   strings for the `Prefix`\:
    #
    #   * 2014-09
    #
    #   * 2014-09-09
    #
    #   * 2014-09-09-Holiday
    #
    # @option params [String] :sort_order
    #   A two-value parameter that determines the sequence of the resulting
    #   list of `DataSource`.
    #
    #   * `asc` - Arranges the list in ascending order (A-Z, 0-9).
    #   * `dsc` - Arranges the list in descending order (Z-A, 9-0).
    #
    #   Results are sorted by `FilterVariable`.
    #
    # @option params [String] :next_token
    #   The ID of the page in the paginated results.
    #
    # @option params [Integer] :limit
    #   The maximum number of `DataSource` to include in the result.
    #
    # @return [Types::DescribeDataSourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDataSourcesOutput#results #results} => Array&lt;Types::DataSource&gt;
    #   * {Types::DescribeDataSourcesOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_sources({
    #     filter_variable: "CreatedAt", # accepts CreatedAt, LastUpdatedAt, Status, Name, DataLocationS3, IAMUser
    #     eq: "ComparatorValue",
    #     gt: "ComparatorValue",
    #     lt: "ComparatorValue",
    #     ge: "ComparatorValue",
    #     le: "ComparatorValue",
    #     ne: "ComparatorValue",
    #     prefix: "ComparatorValue",
    #     sort_order: "asc", # accepts asc, dsc
    #     next_token: "StringType",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].data_source_id #=> String
    #   resp.results[0].data_location_s3 #=> String
    #   resp.results[0].data_rearrangement #=> String
    #   resp.results[0].created_by_iam_user #=> String
    #   resp.results[0].created_at #=> Time
    #   resp.results[0].last_updated_at #=> Time
    #   resp.results[0].data_size_in_bytes #=> Integer
    #   resp.results[0].number_of_files #=> Integer
    #   resp.results[0].name #=> String
    #   resp.results[0].status #=> String, one of "PENDING", "INPROGRESS", "FAILED", "COMPLETED", "DELETED"
    #   resp.results[0].message #=> String
    #   resp.results[0].redshift_metadata.redshift_database.database_name #=> String
    #   resp.results[0].redshift_metadata.redshift_database.cluster_identifier #=> String
    #   resp.results[0].redshift_metadata.database_user_name #=> String
    #   resp.results[0].redshift_metadata.select_sql_query #=> String
    #   resp.results[0].rds_metadata.database.instance_identifier #=> String
    #   resp.results[0].rds_metadata.database.database_name #=> String
    #   resp.results[0].rds_metadata.database_user_name #=> String
    #   resp.results[0].rds_metadata.select_sql_query #=> String
    #   resp.results[0].rds_metadata.resource_role #=> String
    #   resp.results[0].rds_metadata.service_role #=> String
    #   resp.results[0].rds_metadata.data_pipeline_id #=> String
    #   resp.results[0].role_arn #=> String
    #   resp.results[0].compute_statistics #=> Boolean
    #   resp.results[0].compute_time #=> Integer
    #   resp.results[0].finished_at #=> Time
    #   resp.results[0].started_at #=> Time
    #   resp.next_token #=> String
    #
    # @overload describe_data_sources(params = {})
    # @param [Hash] params ({})
    def describe_data_sources(params = {}, options = {})
      req = build_request(:describe_data_sources, params)
      req.send_request(options)
    end

    # Returns a list of `DescribeEvaluations` that match the search criteria
    # in the request.
    #
    # @option params [String] :filter_variable
    #   Use one of the following variable to filter a list of `Evaluation`
    #   objects:
    #
    #   * `CreatedAt` - Sets the search criteria to the `Evaluation` creation
    #     date.
    #   * `Status` - Sets the search criteria to the `Evaluation` status.
    #   * `Name` - Sets the search criteria to the contents of `Evaluation`
    #     <b> </b> `Name`.
    #   * `IAMUser` - Sets the search criteria to the user account that
    #     invoked an `Evaluation`.
    #   * `MLModelId` - Sets the search criteria to the `MLModel` that was
    #     evaluated.
    #   * `DataSourceId` - Sets the search criteria to the `DataSource` used
    #     in `Evaluation`.
    #   * `DataUri` - Sets the search criteria to the data file(s) used in
    #     `Evaluation`. The URL can identify either a file or an Amazon Simple
    #     Storage Solution (Amazon S3) bucket or directory.
    #
    # @option params [String] :eq
    #   The equal to operator. The `Evaluation` results will have
    #   `FilterVariable` values that exactly match the value specified with
    #   `EQ`.
    #
    # @option params [String] :gt
    #   The greater than operator. The `Evaluation` results will have
    #   `FilterVariable` values that are greater than the value specified with
    #   `GT`.
    #
    # @option params [String] :lt
    #   The less than operator. The `Evaluation` results will have
    #   `FilterVariable` values that are less than the value specified with
    #   `LT`.
    #
    # @option params [String] :ge
    #   The greater than or equal to operator. The `Evaluation` results will
    #   have `FilterVariable` values that are greater than or equal to the
    #   value specified with `GE`.
    #
    # @option params [String] :le
    #   The less than or equal to operator. The `Evaluation` results will have
    #   `FilterVariable` values that are less than or equal to the value
    #   specified with `LE`.
    #
    # @option params [String] :ne
    #   The not equal to operator. The `Evaluation` results will have
    #   `FilterVariable` values not equal to the value specified with `NE`.
    #
    # @option params [String] :prefix
    #   A string that is found at the beginning of a variable, such as `Name`
    #   or `Id`.
    #
    #   For example, an `Evaluation` could have the `Name`
    #   `2014-09-09-HolidayGiftMailer`. To search for this `Evaluation`,
    #   select `Name` for the `FilterVariable` and any of the following
    #   strings for the `Prefix`\:
    #
    #   * 2014-09
    #
    #   * 2014-09-09
    #
    #   * 2014-09-09-Holiday
    #
    # @option params [String] :sort_order
    #   A two-value parameter that determines the sequence of the resulting
    #   list of `Evaluation`.
    #
    #   * `asc` - Arranges the list in ascending order (A-Z, 0-9).
    #   * `dsc` - Arranges the list in descending order (Z-A, 9-0).
    #
    #   Results are sorted by `FilterVariable`.
    #
    # @option params [String] :next_token
    #   The ID of the page in the paginated results.
    #
    # @option params [Integer] :limit
    #   The maximum number of `Evaluation` to include in the result.
    #
    # @return [Types::DescribeEvaluationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEvaluationsOutput#results #results} => Array&lt;Types::Evaluation&gt;
    #   * {Types::DescribeEvaluationsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_evaluations({
    #     filter_variable: "CreatedAt", # accepts CreatedAt, LastUpdatedAt, Status, Name, IAMUser, MLModelId, DataSourceId, DataURI
    #     eq: "ComparatorValue",
    #     gt: "ComparatorValue",
    #     lt: "ComparatorValue",
    #     ge: "ComparatorValue",
    #     le: "ComparatorValue",
    #     ne: "ComparatorValue",
    #     prefix: "ComparatorValue",
    #     sort_order: "asc", # accepts asc, dsc
    #     next_token: "StringType",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].evaluation_id #=> String
    #   resp.results[0].ml_model_id #=> String
    #   resp.results[0].evaluation_data_source_id #=> String
    #   resp.results[0].input_data_location_s3 #=> String
    #   resp.results[0].created_by_iam_user #=> String
    #   resp.results[0].created_at #=> Time
    #   resp.results[0].last_updated_at #=> Time
    #   resp.results[0].name #=> String
    #   resp.results[0].status #=> String, one of "PENDING", "INPROGRESS", "FAILED", "COMPLETED", "DELETED"
    #   resp.results[0].performance_metrics.properties #=> Hash
    #   resp.results[0].performance_metrics.properties["PerformanceMetricsPropertyKey"] #=> String
    #   resp.results[0].message #=> String
    #   resp.results[0].compute_time #=> Integer
    #   resp.results[0].finished_at #=> Time
    #   resp.results[0].started_at #=> Time
    #   resp.next_token #=> String
    #
    # @overload describe_evaluations(params = {})
    # @param [Hash] params ({})
    def describe_evaluations(params = {}, options = {})
      req = build_request(:describe_evaluations, params)
      req.send_request(options)
    end

    # Returns a list of `MLModel` that match the search criteria in the
    # request.
    #
    # @option params [String] :filter_variable
    #   Use one of the following variables to filter a list of `MLModel`\:
    #
    #   * `CreatedAt` - Sets the search criteria to `MLModel` creation date.
    #   * `Status` - Sets the search criteria to `MLModel` status.
    #   * `Name` - Sets the search criteria to the contents of `MLModel`<b>
    #     </b> `Name`.
    #   * `IAMUser` - Sets the search criteria to the user account that
    #     invoked the `MLModel` creation.
    #   * `TrainingDataSourceId` - Sets the search criteria to the
    #     `DataSource` used to train one or more `MLModel`.
    #   * `RealtimeEndpointStatus` - Sets the search criteria to the `MLModel`
    #     real-time endpoint status.
    #   * `MLModelType` - Sets the search criteria to `MLModel` type: binary,
    #     regression, or multi-class.
    #   * `Algorithm` - Sets the search criteria to the algorithm that the
    #     `MLModel` uses.
    #   * `TrainingDataURI` - Sets the search criteria to the data file(s)
    #     used in training a `MLModel`. The URL can identify either a file or
    #     an Amazon Simple Storage Service (Amazon S3) bucket or directory.
    #
    # @option params [String] :eq
    #   The equal to operator. The `MLModel` results will have
    #   `FilterVariable` values that exactly match the value specified with
    #   `EQ`.
    #
    # @option params [String] :gt
    #   The greater than operator. The `MLModel` results will have
    #   `FilterVariable` values that are greater than the value specified with
    #   `GT`.
    #
    # @option params [String] :lt
    #   The less than operator. The `MLModel` results will have
    #   `FilterVariable` values that are less than the value specified with
    #   `LT`.
    #
    # @option params [String] :ge
    #   The greater than or equal to operator. The `MLModel` results will have
    #   `FilterVariable` values that are greater than or equal to the value
    #   specified with `GE`.
    #
    # @option params [String] :le
    #   The less than or equal to operator. The `MLModel` results will have
    #   `FilterVariable` values that are less than or equal to the value
    #   specified with `LE`.
    #
    # @option params [String] :ne
    #   The not equal to operator. The `MLModel` results will have
    #   `FilterVariable` values not equal to the value specified with `NE`.
    #
    # @option params [String] :prefix
    #   A string that is found at the beginning of a variable, such as `Name`
    #   or `Id`.
    #
    #   For example, an `MLModel` could have the `Name`
    #   `2014-09-09-HolidayGiftMailer`. To search for this `MLModel`, select
    #   `Name` for the `FilterVariable` and any of the following strings for
    #   the `Prefix`\:
    #
    #   * 2014-09
    #
    #   * 2014-09-09
    #
    #   * 2014-09-09-Holiday
    #
    # @option params [String] :sort_order
    #   A two-value parameter that determines the sequence of the resulting
    #   list of `MLModel`.
    #
    #   * `asc` - Arranges the list in ascending order (A-Z, 0-9).
    #   * `dsc` - Arranges the list in descending order (Z-A, 9-0).
    #
    #   Results are sorted by `FilterVariable`.
    #
    # @option params [String] :next_token
    #   The ID of the page in the paginated results.
    #
    # @option params [Integer] :limit
    #   The number of pages of information to include in the result. The range
    #   of acceptable values is `1` through `100`. The default value is `100`.
    #
    # @return [Types::DescribeMLModelsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMLModelsOutput#results #results} => Array&lt;Types::MLModel&gt;
    #   * {Types::DescribeMLModelsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ml_models({
    #     filter_variable: "CreatedAt", # accepts CreatedAt, LastUpdatedAt, Status, Name, IAMUser, TrainingDataSourceId, RealtimeEndpointStatus, MLModelType, Algorithm, TrainingDataURI
    #     eq: "ComparatorValue",
    #     gt: "ComparatorValue",
    #     lt: "ComparatorValue",
    #     ge: "ComparatorValue",
    #     le: "ComparatorValue",
    #     ne: "ComparatorValue",
    #     prefix: "ComparatorValue",
    #     sort_order: "asc", # accepts asc, dsc
    #     next_token: "StringType",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].ml_model_id #=> String
    #   resp.results[0].training_data_source_id #=> String
    #   resp.results[0].created_by_iam_user #=> String
    #   resp.results[0].created_at #=> Time
    #   resp.results[0].last_updated_at #=> Time
    #   resp.results[0].name #=> String
    #   resp.results[0].status #=> String, one of "PENDING", "INPROGRESS", "FAILED", "COMPLETED", "DELETED"
    #   resp.results[0].size_in_bytes #=> Integer
    #   resp.results[0].endpoint_info.peak_requests_per_second #=> Integer
    #   resp.results[0].endpoint_info.created_at #=> Time
    #   resp.results[0].endpoint_info.endpoint_url #=> String
    #   resp.results[0].endpoint_info.endpoint_status #=> String, one of "NONE", "READY", "UPDATING", "FAILED"
    #   resp.results[0].training_parameters #=> Hash
    #   resp.results[0].training_parameters["StringType"] #=> String
    #   resp.results[0].input_data_location_s3 #=> String
    #   resp.results[0].algorithm #=> String, one of "sgd"
    #   resp.results[0].ml_model_type #=> String, one of "REGRESSION", "BINARY", "MULTICLASS"
    #   resp.results[0].score_threshold #=> Float
    #   resp.results[0].score_threshold_last_updated_at #=> Time
    #   resp.results[0].message #=> String
    #   resp.results[0].compute_time #=> Integer
    #   resp.results[0].finished_at #=> Time
    #   resp.results[0].started_at #=> Time
    #   resp.next_token #=> String
    #
    # @overload describe_ml_models(params = {})
    # @param [Hash] params ({})
    def describe_ml_models(params = {}, options = {})
      req = build_request(:describe_ml_models, params)
      req.send_request(options)
    end

    # Describes one or more of the tags for your Amazon ML object.
    #
    # @option params [required, String] :resource_id
    #   The ID of the ML object. For example, `exampleModelId`.
    #
    # @option params [required, String] :resource_type
    #   The type of the ML object.
    #
    # @return [Types::DescribeTagsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTagsOutput#resource_id #resource_id} => String
    #   * {Types::DescribeTagsOutput#resource_type #resource_type} => String
    #   * {Types::DescribeTagsOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tags({
    #     resource_id: "EntityId", # required
    #     resource_type: "BatchPrediction", # required, accepts BatchPrediction, DataSource, Evaluation, MLModel
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_id #=> String
    #   resp.resource_type #=> String, one of "BatchPrediction", "DataSource", "Evaluation", "MLModel"
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @overload describe_tags(params = {})
    # @param [Hash] params ({})
    def describe_tags(params = {}, options = {})
      req = build_request(:describe_tags, params)
      req.send_request(options)
    end

    # Returns a `BatchPrediction` that includes detailed metadata, status,
    # and data file information for a `Batch Prediction` request.
    #
    # @option params [required, String] :batch_prediction_id
    #   An ID assigned to the `BatchPrediction` at creation.
    #
    # @return [Types::GetBatchPredictionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBatchPredictionOutput#batch_prediction_id #batch_prediction_id} => String
    #   * {Types::GetBatchPredictionOutput#ml_model_id #ml_model_id} => String
    #   * {Types::GetBatchPredictionOutput#batch_prediction_data_source_id #batch_prediction_data_source_id} => String
    #   * {Types::GetBatchPredictionOutput#input_data_location_s3 #input_data_location_s3} => String
    #   * {Types::GetBatchPredictionOutput#created_by_iam_user #created_by_iam_user} => String
    #   * {Types::GetBatchPredictionOutput#created_at #created_at} => Time
    #   * {Types::GetBatchPredictionOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::GetBatchPredictionOutput#name #name} => String
    #   * {Types::GetBatchPredictionOutput#status #status} => String
    #   * {Types::GetBatchPredictionOutput#output_uri #output_uri} => String
    #   * {Types::GetBatchPredictionOutput#log_uri #log_uri} => String
    #   * {Types::GetBatchPredictionOutput#message #message} => String
    #   * {Types::GetBatchPredictionOutput#compute_time #compute_time} => Integer
    #   * {Types::GetBatchPredictionOutput#finished_at #finished_at} => Time
    #   * {Types::GetBatchPredictionOutput#started_at #started_at} => Time
    #   * {Types::GetBatchPredictionOutput#total_record_count #total_record_count} => Integer
    #   * {Types::GetBatchPredictionOutput#invalid_record_count #invalid_record_count} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_batch_prediction({
    #     batch_prediction_id: "EntityId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.batch_prediction_id #=> String
    #   resp.ml_model_id #=> String
    #   resp.batch_prediction_data_source_id #=> String
    #   resp.input_data_location_s3 #=> String
    #   resp.created_by_iam_user #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.name #=> String
    #   resp.status #=> String, one of "PENDING", "INPROGRESS", "FAILED", "COMPLETED", "DELETED"
    #   resp.output_uri #=> String
    #   resp.log_uri #=> String
    #   resp.message #=> String
    #   resp.compute_time #=> Integer
    #   resp.finished_at #=> Time
    #   resp.started_at #=> Time
    #   resp.total_record_count #=> Integer
    #   resp.invalid_record_count #=> Integer
    #
    # @overload get_batch_prediction(params = {})
    # @param [Hash] params ({})
    def get_batch_prediction(params = {}, options = {})
      req = build_request(:get_batch_prediction, params)
      req.send_request(options)
    end

    # Returns a `DataSource` that includes metadata and data file
    # information, as well as the current status of the `DataSource`.
    #
    # `GetDataSource` provides results in normal or verbose format. The
    # verbose format adds the schema description and the list of files
    # pointed to by the DataSource to the normal format.
    #
    # @option params [required, String] :data_source_id
    #   The ID assigned to the `DataSource` at creation.
    #
    # @option params [Boolean] :verbose
    #   Specifies whether the `GetDataSource` operation should return
    #   `DataSourceSchema`.
    #
    #   If true, `DataSourceSchema` is returned.
    #
    #   If false, `DataSourceSchema` is not returned.
    #
    # @return [Types::GetDataSourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataSourceOutput#data_source_id #data_source_id} => String
    #   * {Types::GetDataSourceOutput#data_location_s3 #data_location_s3} => String
    #   * {Types::GetDataSourceOutput#data_rearrangement #data_rearrangement} => String
    #   * {Types::GetDataSourceOutput#created_by_iam_user #created_by_iam_user} => String
    #   * {Types::GetDataSourceOutput#created_at #created_at} => Time
    #   * {Types::GetDataSourceOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::GetDataSourceOutput#data_size_in_bytes #data_size_in_bytes} => Integer
    #   * {Types::GetDataSourceOutput#number_of_files #number_of_files} => Integer
    #   * {Types::GetDataSourceOutput#name #name} => String
    #   * {Types::GetDataSourceOutput#status #status} => String
    #   * {Types::GetDataSourceOutput#log_uri #log_uri} => String
    #   * {Types::GetDataSourceOutput#message #message} => String
    #   * {Types::GetDataSourceOutput#redshift_metadata #redshift_metadata} => Types::RedshiftMetadata
    #   * {Types::GetDataSourceOutput#rds_metadata #rds_metadata} => Types::RDSMetadata
    #   * {Types::GetDataSourceOutput#role_arn #role_arn} => String
    #   * {Types::GetDataSourceOutput#compute_statistics #compute_statistics} => Boolean
    #   * {Types::GetDataSourceOutput#compute_time #compute_time} => Integer
    #   * {Types::GetDataSourceOutput#finished_at #finished_at} => Time
    #   * {Types::GetDataSourceOutput#started_at #started_at} => Time
    #   * {Types::GetDataSourceOutput#data_source_schema #data_source_schema} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_source({
    #     data_source_id: "EntityId", # required
    #     verbose: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source_id #=> String
    #   resp.data_location_s3 #=> String
    #   resp.data_rearrangement #=> String
    #   resp.created_by_iam_user #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.data_size_in_bytes #=> Integer
    #   resp.number_of_files #=> Integer
    #   resp.name #=> String
    #   resp.status #=> String, one of "PENDING", "INPROGRESS", "FAILED", "COMPLETED", "DELETED"
    #   resp.log_uri #=> String
    #   resp.message #=> String
    #   resp.redshift_metadata.redshift_database.database_name #=> String
    #   resp.redshift_metadata.redshift_database.cluster_identifier #=> String
    #   resp.redshift_metadata.database_user_name #=> String
    #   resp.redshift_metadata.select_sql_query #=> String
    #   resp.rds_metadata.database.instance_identifier #=> String
    #   resp.rds_metadata.database.database_name #=> String
    #   resp.rds_metadata.database_user_name #=> String
    #   resp.rds_metadata.select_sql_query #=> String
    #   resp.rds_metadata.resource_role #=> String
    #   resp.rds_metadata.service_role #=> String
    #   resp.rds_metadata.data_pipeline_id #=> String
    #   resp.role_arn #=> String
    #   resp.compute_statistics #=> Boolean
    #   resp.compute_time #=> Integer
    #   resp.finished_at #=> Time
    #   resp.started_at #=> Time
    #   resp.data_source_schema #=> String
    #
    # @overload get_data_source(params = {})
    # @param [Hash] params ({})
    def get_data_source(params = {}, options = {})
      req = build_request(:get_data_source, params)
      req.send_request(options)
    end

    # Returns an `Evaluation` that includes metadata as well as the current
    # status of the `Evaluation`.
    #
    # @option params [required, String] :evaluation_id
    #   The ID of the `Evaluation` to retrieve. The evaluation of each
    #   `MLModel` is recorded and cataloged. The ID provides the means to
    #   access the information.
    #
    # @return [Types::GetEvaluationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEvaluationOutput#evaluation_id #evaluation_id} => String
    #   * {Types::GetEvaluationOutput#ml_model_id #ml_model_id} => String
    #   * {Types::GetEvaluationOutput#evaluation_data_source_id #evaluation_data_source_id} => String
    #   * {Types::GetEvaluationOutput#input_data_location_s3 #input_data_location_s3} => String
    #   * {Types::GetEvaluationOutput#created_by_iam_user #created_by_iam_user} => String
    #   * {Types::GetEvaluationOutput#created_at #created_at} => Time
    #   * {Types::GetEvaluationOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::GetEvaluationOutput#name #name} => String
    #   * {Types::GetEvaluationOutput#status #status} => String
    #   * {Types::GetEvaluationOutput#performance_metrics #performance_metrics} => Types::PerformanceMetrics
    #   * {Types::GetEvaluationOutput#log_uri #log_uri} => String
    #   * {Types::GetEvaluationOutput#message #message} => String
    #   * {Types::GetEvaluationOutput#compute_time #compute_time} => Integer
    #   * {Types::GetEvaluationOutput#finished_at #finished_at} => Time
    #   * {Types::GetEvaluationOutput#started_at #started_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_evaluation({
    #     evaluation_id: "EntityId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_id #=> String
    #   resp.ml_model_id #=> String
    #   resp.evaluation_data_source_id #=> String
    #   resp.input_data_location_s3 #=> String
    #   resp.created_by_iam_user #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.name #=> String
    #   resp.status #=> String, one of "PENDING", "INPROGRESS", "FAILED", "COMPLETED", "DELETED"
    #   resp.performance_metrics.properties #=> Hash
    #   resp.performance_metrics.properties["PerformanceMetricsPropertyKey"] #=> String
    #   resp.log_uri #=> String
    #   resp.message #=> String
    #   resp.compute_time #=> Integer
    #   resp.finished_at #=> Time
    #   resp.started_at #=> Time
    #
    # @overload get_evaluation(params = {})
    # @param [Hash] params ({})
    def get_evaluation(params = {}, options = {})
      req = build_request(:get_evaluation, params)
      req.send_request(options)
    end

    # Returns an `MLModel` that includes detailed metadata, data source
    # information, and the current status of the `MLModel`.
    #
    # `GetMLModel` provides results in normal or verbose format.
    #
    # @option params [required, String] :ml_model_id
    #   The ID assigned to the `MLModel` at creation.
    #
    # @option params [Boolean] :verbose
    #   Specifies whether the `GetMLModel` operation should return `Recipe`.
    #
    #   If true, `Recipe` is returned.
    #
    #   If false, `Recipe` is not returned.
    #
    # @return [Types::GetMLModelOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMLModelOutput#ml_model_id #ml_model_id} => String
    #   * {Types::GetMLModelOutput#training_data_source_id #training_data_source_id} => String
    #   * {Types::GetMLModelOutput#created_by_iam_user #created_by_iam_user} => String
    #   * {Types::GetMLModelOutput#created_at #created_at} => Time
    #   * {Types::GetMLModelOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::GetMLModelOutput#name #name} => String
    #   * {Types::GetMLModelOutput#status #status} => String
    #   * {Types::GetMLModelOutput#size_in_bytes #size_in_bytes} => Integer
    #   * {Types::GetMLModelOutput#endpoint_info #endpoint_info} => Types::RealtimeEndpointInfo
    #   * {Types::GetMLModelOutput#training_parameters #training_parameters} => Hash&lt;String,String&gt;
    #   * {Types::GetMLModelOutput#input_data_location_s3 #input_data_location_s3} => String
    #   * {Types::GetMLModelOutput#ml_model_type #ml_model_type} => String
    #   * {Types::GetMLModelOutput#score_threshold #score_threshold} => Float
    #   * {Types::GetMLModelOutput#score_threshold_last_updated_at #score_threshold_last_updated_at} => Time
    #   * {Types::GetMLModelOutput#log_uri #log_uri} => String
    #   * {Types::GetMLModelOutput#message #message} => String
    #   * {Types::GetMLModelOutput#compute_time #compute_time} => Integer
    #   * {Types::GetMLModelOutput#finished_at #finished_at} => Time
    #   * {Types::GetMLModelOutput#started_at #started_at} => Time
    #   * {Types::GetMLModelOutput#recipe #recipe} => String
    #   * {Types::GetMLModelOutput#schema #schema} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ml_model({
    #     ml_model_id: "EntityId", # required
    #     verbose: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.ml_model_id #=> String
    #   resp.training_data_source_id #=> String
    #   resp.created_by_iam_user #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.name #=> String
    #   resp.status #=> String, one of "PENDING", "INPROGRESS", "FAILED", "COMPLETED", "DELETED"
    #   resp.size_in_bytes #=> Integer
    #   resp.endpoint_info.peak_requests_per_second #=> Integer
    #   resp.endpoint_info.created_at #=> Time
    #   resp.endpoint_info.endpoint_url #=> String
    #   resp.endpoint_info.endpoint_status #=> String, one of "NONE", "READY", "UPDATING", "FAILED"
    #   resp.training_parameters #=> Hash
    #   resp.training_parameters["StringType"] #=> String
    #   resp.input_data_location_s3 #=> String
    #   resp.ml_model_type #=> String, one of "REGRESSION", "BINARY", "MULTICLASS"
    #   resp.score_threshold #=> Float
    #   resp.score_threshold_last_updated_at #=> Time
    #   resp.log_uri #=> String
    #   resp.message #=> String
    #   resp.compute_time #=> Integer
    #   resp.finished_at #=> Time
    #   resp.started_at #=> Time
    #   resp.recipe #=> String
    #   resp.schema #=> String
    #
    # @overload get_ml_model(params = {})
    # @param [Hash] params ({})
    def get_ml_model(params = {}, options = {})
      req = build_request(:get_ml_model, params)
      req.send_request(options)
    end

    # Generates a prediction for the observation using the specified `ML
    # Model`.
    #
    # <note markdown="1"><title>Note</title> Not all response parameters will be populated. Whether a response
    # parameter is populated depends on the type of model requested.
    #
    # </note>
    #
    # @option params [required, String] :ml_model_id
    #   A unique identifier of the `MLModel`.
    #
    # @option params [required, Hash<String,String>] :record
    #   A map of variable name-value pairs that represent an observation.
    #
    # @option params [required, String] :predict_endpoint
    #
    # @return [Types::PredictOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PredictOutput#prediction #prediction} => Types::Prediction
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.predict({
    #     ml_model_id: "EntityId", # required
    #     record: { # required
    #       "VariableName" => "VariableValue",
    #     },
    #     predict_endpoint: "VipURL", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.prediction.predicted_label #=> String
    #   resp.prediction.predicted_value #=> Float
    #   resp.prediction.predicted_scores #=> Hash
    #   resp.prediction.predicted_scores["Label"] #=> Float
    #   resp.prediction.details #=> Hash
    #   resp.prediction.details["DetailsAttributes"] #=> String
    #
    # @overload predict(params = {})
    # @param [Hash] params ({})
    def predict(params = {}, options = {})
      req = build_request(:predict, params)
      req.send_request(options)
    end

    # Updates the `BatchPredictionName` of a `BatchPrediction`.
    #
    # You can use the `GetBatchPrediction` operation to view the contents of
    # the updated data element.
    #
    # @option params [required, String] :batch_prediction_id
    #   The ID assigned to the `BatchPrediction` during creation.
    #
    # @option params [required, String] :batch_prediction_name
    #   A new user-supplied name or description of the `BatchPrediction`.
    #
    # @return [Types::UpdateBatchPredictionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBatchPredictionOutput#batch_prediction_id #batch_prediction_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_batch_prediction({
    #     batch_prediction_id: "EntityId", # required
    #     batch_prediction_name: "EntityName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.batch_prediction_id #=> String
    #
    # @overload update_batch_prediction(params = {})
    # @param [Hash] params ({})
    def update_batch_prediction(params = {}, options = {})
      req = build_request(:update_batch_prediction, params)
      req.send_request(options)
    end

    # Updates the `DataSourceName` of a `DataSource`.
    #
    # You can use the `GetDataSource` operation to view the contents of the
    # updated data element.
    #
    # @option params [required, String] :data_source_id
    #   The ID assigned to the `DataSource` during creation.
    #
    # @option params [required, String] :data_source_name
    #   A new user-supplied name or description of the `DataSource` that will
    #   replace the current description.
    #
    # @return [Types::UpdateDataSourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataSourceOutput#data_source_id #data_source_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_source({
    #     data_source_id: "EntityId", # required
    #     data_source_name: "EntityName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source_id #=> String
    #
    # @overload update_data_source(params = {})
    # @param [Hash] params ({})
    def update_data_source(params = {}, options = {})
      req = build_request(:update_data_source, params)
      req.send_request(options)
    end

    # Updates the `EvaluationName` of an `Evaluation`.
    #
    # You can use the `GetEvaluation` operation to view the contents of the
    # updated data element.
    #
    # @option params [required, String] :evaluation_id
    #   The ID assigned to the `Evaluation` during creation.
    #
    # @option params [required, String] :evaluation_name
    #   A new user-supplied name or description of the `Evaluation` that will
    #   replace the current content.
    #
    # @return [Types::UpdateEvaluationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEvaluationOutput#evaluation_id #evaluation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_evaluation({
    #     evaluation_id: "EntityId", # required
    #     evaluation_name: "EntityName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_id #=> String
    #
    # @overload update_evaluation(params = {})
    # @param [Hash] params ({})
    def update_evaluation(params = {}, options = {})
      req = build_request(:update_evaluation, params)
      req.send_request(options)
    end

    # Updates the `MLModelName` and the `ScoreThreshold` of an `MLModel`.
    #
    # You can use the `GetMLModel` operation to view the contents of the
    # updated data element.
    #
    # @option params [required, String] :ml_model_id
    #   The ID assigned to the `MLModel` during creation.
    #
    # @option params [String] :ml_model_name
    #   A user-supplied name or description of the `MLModel`.
    #
    # @option params [Float] :score_threshold
    #   The `ScoreThreshold` used in binary classification `MLModel` that
    #   marks the boundary between a positive prediction and a negative
    #   prediction.
    #
    #   Output values greater than or equal to the `ScoreThreshold` receive a
    #   positive result from the `MLModel`, such as `true`. Output values less
    #   than the `ScoreThreshold` receive a negative response from the
    #   `MLModel`, such as `false`.
    #
    # @return [Types::UpdateMLModelOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMLModelOutput#ml_model_id #ml_model_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ml_model({
    #     ml_model_id: "EntityId", # required
    #     ml_model_name: "EntityName",
    #     score_threshold: 1.0,
    #   })
    #
    # @example Response structure
    #
    #   resp.ml_model_id #=> String
    #
    # @overload update_ml_model(params = {})
    # @param [Hash] params ({})
    def update_ml_model(params = {}, options = {})
      req = build_request(:update_ml_model, params)
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
      context[:gem_name] = 'aws-sdk-machinelearning'
      context[:gem_version] = '1.3.0'
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
    #     client.waiter_until(waiter_name, params)
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
    # | waiter_name                | params                        | :delay   | :max_attempts |
    # | -------------------------- | ----------------------------- | -------- | ------------- |
    # | batch_prediction_available | {#describe_batch_predictions} | 30       | 60            |
    # | data_source_available      | {#describe_data_sources}      | 30       | 60            |
    # | evaluation_available       | {#describe_evaluations}       | 30       | 60            |
    # | ml_model_available         | {#describe_ml_models}         | 30       | 60            |
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
        batch_prediction_available: Waiters::BatchPredictionAvailable,
        data_source_available: Waiters::DataSourceAvailable,
        evaluation_available: Waiters::EvaluationAvailable,
        ml_model_available: Waiters::MLModelAvailable
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
