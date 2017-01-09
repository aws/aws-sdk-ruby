# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MachineLearning
  module Types

    # @note When making an API call, you may pass AddTagsInput
    #   data as a hash:
    #
    #       {
    #         tags: [ # required
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #         resource_id: "EntityId", # required
    #         resource_type: "BatchPrediction", # required, accepts BatchPrediction, DataSource, Evaluation, MLModel
    #       }
    #
    # @!attribute [rw] tags
    #   The key-value pairs to use to create tags. If you specify a key
    #   without specifying a value, Amazon ML creates a tag with the
    #   specified key and a value of null.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] resource_id
    #   The ID of the ML object to tag. For example, `exampleModelId`.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the ML object to tag.
    #   @return [String]
    #
    class AddTagsInput < Struct.new(
      :tags,
      :resource_id,
      :resource_type)
      include Aws::Structure
    end

    # Amazon ML returns the following elements.
    #
    # @!attribute [rw] resource_id
    #   The ID of the ML object that was tagged.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the ML object that was tagged.
    #   @return [String]
    #
    class AddTagsOutput < Struct.new(
      :resource_id,
      :resource_type)
      include Aws::Structure
    end

    # Represents the output of a `GetBatchPrediction` operation.
    #
    # The content consists of the detailed metadata, the status, and the
    # data file information of a `Batch Prediction`.
    #
    # @!attribute [rw] batch_prediction_id
    #   The ID assigned to the `BatchPrediction` at creation. This value
    #   should be identical to the value of the `BatchPredictionID` in the
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] ml_model_id
    #   The ID of the `MLModel` that generated predictions for the
    #   `BatchPrediction` request.
    #   @return [String]
    #
    # @!attribute [rw] batch_prediction_data_source_id
    #   The ID of the `DataSource` that points to the group of observations
    #   to predict.
    #   @return [String]
    #
    # @!attribute [rw] input_data_location_s3
    #   The location of the data file or directory in Amazon Simple Storage
    #   Service (Amazon S3).
    #   @return [String]
    #
    # @!attribute [rw] created_by_iam_user
    #   The AWS user account that invoked the `BatchPrediction`. The account
    #   type can be either an AWS root account or an AWS Identity and Access
    #   Management (IAM) user account.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time that the `BatchPrediction` was created. The time is
    #   expressed in epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The time of the most recent edit to the `BatchPrediction`. The time
    #   is expressed in epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   A user-supplied name or description of the `BatchPrediction`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the `BatchPrediction`. This element can have one of
    #   the following values:
    #
    #   * `PENDING` - Amazon Machine Learning (Amazon ML) submitted a
    #     request to generate predictions for a batch of observations.
    #   * `INPROGRESS` - The process is underway.
    #   * `FAILED` - The request to perform a batch prediction did not run
    #     to completion. It is not usable.
    #   * `COMPLETED` - The batch prediction process completed successfully.
    #   * `DELETED` - The `BatchPrediction` is marked as deleted. It is not
    #     usable.
    #   @return [String]
    #
    # @!attribute [rw] output_uri
    #   The location of an Amazon S3 bucket or directory to receive the
    #   operation results. The following substrings are not allowed in the
    #   `s3 key` portion of the `outputURI` field: ':', '//', '/./',
    #   '/../'.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of the most recent details about processing the batch
    #   prediction request.
    #   @return [String]
    #
    # @!attribute [rw] compute_time
    #   Long integer type that is a 64-bit signed number.
    #   @return [Integer]
    #
    # @!attribute [rw] finished_at
    #   A timestamp represented in epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] started_at
    #   A timestamp represented in epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] total_record_count
    #   Long integer type that is a 64-bit signed number.
    #   @return [Integer]
    #
    # @!attribute [rw] invalid_record_count
    #   Long integer type that is a 64-bit signed number.
    #   @return [Integer]
    #
    class BatchPrediction < Struct.new(
      :batch_prediction_id,
      :ml_model_id,
      :batch_prediction_data_source_id,
      :input_data_location_s3,
      :created_by_iam_user,
      :created_at,
      :last_updated_at,
      :name,
      :status,
      :output_uri,
      :message,
      :compute_time,
      :finished_at,
      :started_at,
      :total_record_count,
      :invalid_record_count)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateBatchPredictionInput
    #   data as a hash:
    #
    #       {
    #         batch_prediction_id: "EntityId", # required
    #         batch_prediction_name: "EntityName",
    #         ml_model_id: "EntityId", # required
    #         batch_prediction_data_source_id: "EntityId", # required
    #         output_uri: "S3Url", # required
    #       }
    #
    # @!attribute [rw] batch_prediction_id
    #   A user-supplied ID that uniquely identifies the `BatchPrediction`.
    #   @return [String]
    #
    # @!attribute [rw] batch_prediction_name
    #   A user-supplied name or description of the `BatchPrediction`.
    #   `BatchPredictionName` can only use the UTF-8 character set.
    #   @return [String]
    #
    # @!attribute [rw] ml_model_id
    #   The ID of the `MLModel` that will generate predictions for the group
    #   of observations.
    #   @return [String]
    #
    # @!attribute [rw] batch_prediction_data_source_id
    #   The ID of the `DataSource` that points to the group of observations
    #   to predict.
    #   @return [String]
    #
    # @!attribute [rw] output_uri
    #   The location of an Amazon Simple Storage Service (Amazon S3) bucket
    #   or directory to store the batch prediction results. The following
    #   substrings are not allowed in the `s3 key` portion of the
    #   `outputURI` field: ':', '//', '/./', '/../'.
    #
    #   Amazon ML needs permissions to store and retrieve the logs on your
    #   behalf. For information about how to set permissions, see the
    #   [Amazon Machine Learning Developer Guide][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/machine-learning/latest/dg
    #   @return [String]
    #
    class CreateBatchPredictionInput < Struct.new(
      :batch_prediction_id,
      :batch_prediction_name,
      :ml_model_id,
      :batch_prediction_data_source_id,
      :output_uri)
      include Aws::Structure
    end

    # Represents the output of a `CreateBatchPrediction` operation, and is
    # an acknowledgement that Amazon ML received the request.
    #
    # The `CreateBatchPrediction` operation is asynchronous. You can poll
    # for status updates by using the `>GetBatchPrediction` operation and
    # checking the `Status` parameter of the result.
    #
    # @!attribute [rw] batch_prediction_id
    #   A user-supplied ID that uniquely identifies the `BatchPrediction`.
    #   This value is identical to the value of the `BatchPredictionId` in
    #   the request.
    #   @return [String]
    #
    class CreateBatchPredictionOutput < Struct.new(
      :batch_prediction_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDataSourceFromRDSInput
    #   data as a hash:
    #
    #       {
    #         data_source_id: "EntityId", # required
    #         data_source_name: "EntityName",
    #         rds_data: { # required
    #           database_information: { # required
    #             instance_identifier: "RDSInstanceIdentifier", # required
    #             database_name: "RDSDatabaseName", # required
    #           },
    #           select_sql_query: "RDSSelectSqlQuery", # required
    #           database_credentials: { # required
    #             username: "RDSDatabaseUsername", # required
    #             password: "RDSDatabasePassword", # required
    #           },
    #           s3_staging_location: "S3Url", # required
    #           data_rearrangement: "DataRearrangement",
    #           data_schema: "DataSchema",
    #           data_schema_uri: "S3Url",
    #           resource_role: "EDPResourceRole", # required
    #           service_role: "EDPServiceRole", # required
    #           subnet_id: "EDPSubnetId", # required
    #           security_group_ids: ["EDPSecurityGroupId"], # required
    #         },
    #         role_arn: "RoleARN", # required
    #         compute_statistics: false,
    #       }
    #
    # @!attribute [rw] data_source_id
    #   A user-supplied ID that uniquely identifies the `DataSource`.
    #   Typically, an Amazon Resource Number (ARN) becomes the ID for a
    #   `DataSource`.
    #   @return [String]
    #
    # @!attribute [rw] data_source_name
    #   A user-supplied name or description of the `DataSource`.
    #   @return [String]
    #
    # @!attribute [rw] rds_data
    #   The data specification of an Amazon RDS `DataSource`\:
    #
    #   * DatabaseInformation - * `DatabaseName` - The name of the Amazon
    #     RDS database.
    #     * `InstanceIdentifier ` - A unique identifier for the Amazon RDS
    #       database instance.
    #
    #   * DatabaseCredentials - AWS Identity and Access Management (IAM)
    #     credentials that are used to connect to the Amazon RDS database.
    #
    #   * ResourceRole - A role (DataPipelineDefaultResourceRole) assumed by
    #     an EC2 instance to carry out the copy task from Amazon RDS to
    #     Amazon Simple Storage Service (Amazon S3). For more information,
    #     see [Role templates][1] for data pipelines.
    #
    #   * ServiceRole - A role (DataPipelineDefaultRole) assumed by the AWS
    #     Data Pipeline service to monitor the progress of the copy task
    #     from Amazon RDS to Amazon S3. For more information, see [Role
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
    #   * DataRearrangement - A JSON string that represents the splitting
    #     and rearrangement requirements for the `Datasource`.
    #
    #
    #     Sample - `
    #     "\{"splitting":\{"percentBegin":10,"percentEnd":60\}\}"`
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html
    #   @return [Types::RDSDataSpec]
    #
    # @!attribute [rw] role_arn
    #   The role that Amazon ML assumes on behalf of the user to create and
    #   activate a data pipeline in the user's account and copy data using
    #   the `SelectSqlQuery` query from Amazon RDS to Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] compute_statistics
    #   The compute statistics for a `DataSource`. The statistics are
    #   generated from the observation data referenced by a `DataSource`.
    #   Amazon ML uses the statistics internally during `MLModel` training.
    #   This parameter must be set to `true` if the ``DataSource`` needs to
    #   be used for `MLModel` training.
    #   @return [Boolean]
    #
    class CreateDataSourceFromRDSInput < Struct.new(
      :data_source_id,
      :data_source_name,
      :rds_data,
      :role_arn,
      :compute_statistics)
      include Aws::Structure
    end

    # Represents the output of a `CreateDataSourceFromRDS` operation, and is
    # an acknowledgement that Amazon ML received the request.
    #
    # The `CreateDataSourceFromRDS`&gt; operation is asynchronous. You can
    # poll for updates by using the `GetBatchPrediction` operation and
    # checking the `Status` parameter. You can inspect the `Message` when
    # `Status` shows up as `FAILED`. You can also check the progress of the
    # copy operation by going to the `DataPipeline` console and looking up
    # the pipeline using the `pipelineId ` from the describe call.
    #
    # @!attribute [rw] data_source_id
    #   A user-supplied ID that uniquely identifies the datasource. This
    #   value should be identical to the value of the `DataSourceID` in the
    #   request.
    #   @return [String]
    #
    class CreateDataSourceFromRDSOutput < Struct.new(
      :data_source_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDataSourceFromRedshiftInput
    #   data as a hash:
    #
    #       {
    #         data_source_id: "EntityId", # required
    #         data_source_name: "EntityName",
    #         data_spec: { # required
    #           database_information: { # required
    #             database_name: "RedshiftDatabaseName", # required
    #             cluster_identifier: "RedshiftClusterIdentifier", # required
    #           },
    #           select_sql_query: "RedshiftSelectSqlQuery", # required
    #           database_credentials: { # required
    #             username: "RedshiftDatabaseUsername", # required
    #             password: "RedshiftDatabasePassword", # required
    #           },
    #           s3_staging_location: "S3Url", # required
    #           data_rearrangement: "DataRearrangement",
    #           data_schema: "DataSchema",
    #           data_schema_uri: "S3Url",
    #         },
    #         role_arn: "RoleARN", # required
    #         compute_statistics: false,
    #       }
    #
    # @!attribute [rw] data_source_id
    #   A user-supplied ID that uniquely identifies the `DataSource`.
    #   @return [String]
    #
    # @!attribute [rw] data_source_name
    #   A user-supplied name or description of the `DataSource`.
    #   @return [String]
    #
    # @!attribute [rw] data_spec
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
    #   * SelectSqlQuery - The query that is used to retrieve the
    #     observation data for the `Datasource`.
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
    #   * DataRearrangement - A JSON string that represents the splitting
    #     and rearrangement requirements for the `DataSource`.
    #
    #     Sample - `
    #     "\{"splitting":\{"percentBegin":10,"percentEnd":60\}\}"`
    #   @return [Types::RedshiftDataSpec]
    #
    # @!attribute [rw] role_arn
    #   A fully specified role Amazon Resource Name (ARN). Amazon ML assumes
    #   the role on behalf of the user to create the following:
    #
    #   * A security group to allow Amazon ML to execute the
    #     `SelectSqlQuery` query on an Amazon Redshift cluster
    #
    #   * An Amazon S3 bucket policy to grant Amazon ML read/write
    #     permissions on the `S3StagingLocation`
    #   @return [String]
    #
    # @!attribute [rw] compute_statistics
    #   The compute statistics for a `DataSource`. The statistics are
    #   generated from the observation data referenced by a `DataSource`.
    #   Amazon ML uses the statistics internally during `MLModel` training.
    #   This parameter must be set to `true` if the `DataSource` needs to be
    #   used for `MLModel` training.
    #   @return [Boolean]
    #
    class CreateDataSourceFromRedshiftInput < Struct.new(
      :data_source_id,
      :data_source_name,
      :data_spec,
      :role_arn,
      :compute_statistics)
      include Aws::Structure
    end

    # Represents the output of a `CreateDataSourceFromRedshift` operation,
    # and is an acknowledgement that Amazon ML received the request.
    #
    # The `CreateDataSourceFromRedshift` operation is asynchronous. You can
    # poll for updates by using the `GetBatchPrediction` operation and
    # checking the `Status` parameter.
    #
    # @!attribute [rw] data_source_id
    #   A user-supplied ID that uniquely identifies the datasource. This
    #   value should be identical to the value of the `DataSourceID` in the
    #   request.
    #   @return [String]
    #
    class CreateDataSourceFromRedshiftOutput < Struct.new(
      :data_source_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDataSourceFromS3Input
    #   data as a hash:
    #
    #       {
    #         data_source_id: "EntityId", # required
    #         data_source_name: "EntityName",
    #         data_spec: { # required
    #           data_location_s3: "S3Url", # required
    #           data_rearrangement: "DataRearrangement",
    #           data_schema: "DataSchema",
    #           data_schema_location_s3: "S3Url",
    #         },
    #         compute_statistics: false,
    #       }
    #
    # @!attribute [rw] data_source_id
    #   A user-supplied identifier that uniquely identifies the
    #   `DataSource`.
    #   @return [String]
    #
    # @!attribute [rw] data_source_name
    #   A user-supplied name or description of the `DataSource`.
    #   @return [String]
    #
    # @!attribute [rw] data_spec
    #   The data specification of a `DataSource`\:
    #
    #   * DataLocationS3 - The Amazon S3 location of the observation data.
    #
    #   * DataSchemaLocationS3 - The Amazon S3 location of the `DataSchema`.
    #
    #   * DataSchema - A JSON string representing the schema. This is not
    #     required if `DataSchemaUri` is specified.
    #
    #   * DataRearrangement - A JSON string that represents the splitting
    #     and rearrangement requirements for the `Datasource`.
    #
    #     Sample - `
    #     "\{"splitting":\{"percentBegin":10,"percentEnd":60\}\}"`
    #   @return [Types::S3DataSpec]
    #
    # @!attribute [rw] compute_statistics
    #   The compute statistics for a `DataSource`. The statistics are
    #   generated from the observation data referenced by a `DataSource`.
    #   Amazon ML uses the statistics internally during `MLModel` training.
    #   This parameter must be set to `true` if the ``DataSource`` needs to
    #   be used for `MLModel` training.
    #   @return [Boolean]
    #
    class CreateDataSourceFromS3Input < Struct.new(
      :data_source_id,
      :data_source_name,
      :data_spec,
      :compute_statistics)
      include Aws::Structure
    end

    # Represents the output of a `CreateDataSourceFromS3` operation, and is
    # an acknowledgement that Amazon ML received the request.
    #
    # The `CreateDataSourceFromS3` operation is asynchronous. You can poll
    # for updates by using the `GetBatchPrediction` operation and checking
    # the `Status` parameter.
    #
    # @!attribute [rw] data_source_id
    #   A user-supplied ID that uniquely identifies the `DataSource`. This
    #   value should be identical to the value of the `DataSourceID` in the
    #   request.
    #   @return [String]
    #
    class CreateDataSourceFromS3Output < Struct.new(
      :data_source_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateEvaluationInput
    #   data as a hash:
    #
    #       {
    #         evaluation_id: "EntityId", # required
    #         evaluation_name: "EntityName",
    #         ml_model_id: "EntityId", # required
    #         evaluation_data_source_id: "EntityId", # required
    #       }
    #
    # @!attribute [rw] evaluation_id
    #   A user-supplied ID that uniquely identifies the `Evaluation`.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_name
    #   A user-supplied name or description of the `Evaluation`.
    #   @return [String]
    #
    # @!attribute [rw] ml_model_id
    #   The ID of the `MLModel` to evaluate.
    #
    #   The schema used in creating the `MLModel` must match the schema of
    #   the `DataSource` used in the `Evaluation`.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_data_source_id
    #   The ID of the `DataSource` for the evaluation. The schema of the
    #   `DataSource` must match the schema used to create the `MLModel`.
    #   @return [String]
    #
    class CreateEvaluationInput < Struct.new(
      :evaluation_id,
      :evaluation_name,
      :ml_model_id,
      :evaluation_data_source_id)
      include Aws::Structure
    end

    # Represents the output of a `CreateEvaluation` operation, and is an
    # acknowledgement that Amazon ML received the request.
    #
    # `CreateEvaluation` operation is asynchronous. You can poll for status
    # updates by using the `GetEvcaluation` operation and checking the
    # `Status` parameter.
    #
    # @!attribute [rw] evaluation_id
    #   The user-supplied ID that uniquely identifies the `Evaluation`. This
    #   value should be identical to the value of the `EvaluationId` in the
    #   request.
    #   @return [String]
    #
    class CreateEvaluationOutput < Struct.new(
      :evaluation_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateMLModelInput
    #   data as a hash:
    #
    #       {
    #         ml_model_id: "EntityId", # required
    #         ml_model_name: "EntityName",
    #         ml_model_type: "REGRESSION", # required, accepts REGRESSION, BINARY, MULTICLASS
    #         parameters: {
    #           "StringType" => "StringType",
    #         },
    #         training_data_source_id: "EntityId", # required
    #         recipe: "Recipe",
    #         recipe_uri: "S3Url",
    #       }
    #
    # @!attribute [rw] ml_model_id
    #   A user-supplied ID that uniquely identifies the `MLModel`.
    #   @return [String]
    #
    # @!attribute [rw] ml_model_name
    #   A user-supplied name or description of the `MLModel`.
    #   @return [String]
    #
    # @!attribute [rw] ml_model_type
    #   The category of supervised learning that this `MLModel` will
    #   address. Choose from the following types:
    #
    #   * Choose `REGRESSION` if the `MLModel` will be used to predict a
    #     numeric value.
    #   * Choose `BINARY` if the `MLModel` result has two possible values.
    #   * Choose `MULTICLASS` if the `MLModel` result has a limited number
    #     of values.
    #
    #   For more information, see the [Amazon Machine Learning Developer
    #   Guide][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/machine-learning/latest/dg
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of the training parameters in the `MLModel`. The list is
    #   implemented as a map of key-value pairs.
    #
    #   The following is the current set of training parameters:
    #
    #   * `sgd.maxMLModelSizeInBytes` - The maximum allowed size of the
    #     model. Depending on the input data, the size of the model might
    #     affect its performance.
    #
    #     The value is an integer that ranges from `100000` to `2147483648`.
    #     The default value is `33554432`.
    #
    #   * `sgd.maxPasses` - The number of times that the training process
    #     traverses the observations to build the `MLModel`. The value is an
    #     integer that ranges from `1` to `10000`. The default value is
    #     `10`.
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
    #     coefficients. This tends to drive coefficients to zero, resulting
    #     in a sparse feature set. If you use this parameter, start by
    #     specifying a small value, such as `1.0E-08`.
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
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] training_data_source_id
    #   The `DataSource` that points to the training data.
    #   @return [String]
    #
    # @!attribute [rw] recipe
    #   The data recipe for creating the `MLModel`. You must specify either
    #   the recipe or its URI. If you don't specify a recipe or its URI,
    #   Amazon ML creates a default.
    #   @return [String]
    #
    # @!attribute [rw] recipe_uri
    #   The Amazon Simple Storage Service (Amazon S3) location and file name
    #   that contains the `MLModel` recipe. You must specify either the
    #   recipe or its URI. If you don't specify a recipe or its URI, Amazon
    #   ML creates a default.
    #   @return [String]
    #
    class CreateMLModelInput < Struct.new(
      :ml_model_id,
      :ml_model_name,
      :ml_model_type,
      :parameters,
      :training_data_source_id,
      :recipe,
      :recipe_uri)
      include Aws::Structure
    end

    # Represents the output of a `CreateMLModel` operation, and is an
    # acknowledgement that Amazon ML received the request.
    #
    # The `CreateMLModel` operation is asynchronous. You can poll for status
    # updates by using the `GetMLModel` operation and checking the `Status`
    # parameter.
    #
    # @!attribute [rw] ml_model_id
    #   A user-supplied ID that uniquely identifies the `MLModel`. This
    #   value should be identical to the value of the `MLModelId` in the
    #   request.
    #   @return [String]
    #
    class CreateMLModelOutput < Struct.new(
      :ml_model_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRealtimeEndpointInput
    #   data as a hash:
    #
    #       {
    #         ml_model_id: "EntityId", # required
    #       }
    #
    # @!attribute [rw] ml_model_id
    #   The ID assigned to the `MLModel` during creation.
    #   @return [String]
    #
    class CreateRealtimeEndpointInput < Struct.new(
      :ml_model_id)
      include Aws::Structure
    end

    # Represents the output of an `CreateRealtimeEndpoint` operation.
    #
    # The result contains the `MLModelId` and the endpoint information for
    # the `MLModel`.
    #
    # <note markdown="1"> The endpoint information includes the URI of the `MLModel`; that is,
    # the location to send online prediction requests for the specified
    # `MLModel`.
    #
    #  </note>
    #
    # @!attribute [rw] ml_model_id
    #   A user-supplied ID that uniquely identifies the `MLModel`. This
    #   value should be identical to the value of the `MLModelId` in the
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] realtime_endpoint_info
    #   The endpoint information of the `MLModel`
    #   @return [Types::RealtimeEndpointInfo]
    #
    class CreateRealtimeEndpointOutput < Struct.new(
      :ml_model_id,
      :realtime_endpoint_info)
      include Aws::Structure
    end

    # Represents the output of the `GetDataSource` operation.
    #
    # The content consists of the detailed metadata and data file
    # information and the current status of the `DataSource`.
    #
    # @!attribute [rw] data_source_id
    #   The ID that is assigned to the `DataSource` during creation.
    #   @return [String]
    #
    # @!attribute [rw] data_location_s3
    #   The location and name of the data in Amazon Simple Storage Service
    #   (Amazon S3) that is used by a `DataSource`.
    #   @return [String]
    #
    # @!attribute [rw] data_rearrangement
    #   A JSON string that represents the splitting and rearrangement
    #   requirement used when this `DataSource` was created.
    #   @return [String]
    #
    # @!attribute [rw] created_by_iam_user
    #   The AWS user account from which the `DataSource` was created. The
    #   account type can be either an AWS root account or an AWS Identity
    #   and Access Management (IAM) user account.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time that the `DataSource` was created. The time is expressed in
    #   epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The time of the most recent edit to the `BatchPrediction`. The time
    #   is expressed in epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] data_size_in_bytes
    #   The total number of observations contained in the data files that
    #   the `DataSource` references.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_files
    #   The number of data files referenced by the `DataSource`.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   A user-supplied name or description of the `DataSource`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the `DataSource`. This element can have one of
    #   the following values:
    #
    #   * PENDING - Amazon Machine Learning (Amazon ML) submitted a request
    #     to create a `DataSource`.
    #   * INPROGRESS - The creation process is underway.
    #   * FAILED - The request to create a `DataSource` did not run to
    #     completion. It is not usable.
    #   * COMPLETED - The creation process completed successfully.
    #   * DELETED - The `DataSource` is marked as deleted. It is not usable.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of the most recent details about creating the
    #   `DataSource`.
    #   @return [String]
    #
    # @!attribute [rw] redshift_metadata
    #   Describes the `DataSource` details specific to Amazon Redshift.
    #   @return [Types::RedshiftMetadata]
    #
    # @!attribute [rw] rds_metadata
    #   The datasource details that are specific to Amazon RDS.
    #   @return [Types::RDSMetadata]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an [AWS IAM Role][1], such as the
    #   following: arn:aws:iam::account:role/rolename.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html#roles-about-termsandconcepts
    #   @return [String]
    #
    # @!attribute [rw] compute_statistics
    #   The parameter is `true` if statistics need to be generated from the
    #   observation data.
    #   @return [Boolean]
    #
    # @!attribute [rw] compute_time
    #   Long integer type that is a 64-bit signed number.
    #   @return [Integer]
    #
    # @!attribute [rw] finished_at
    #   A timestamp represented in epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] started_at
    #   A timestamp represented in epoch time.
    #   @return [Time]
    #
    class DataSource < Struct.new(
      :data_source_id,
      :data_location_s3,
      :data_rearrangement,
      :created_by_iam_user,
      :created_at,
      :last_updated_at,
      :data_size_in_bytes,
      :number_of_files,
      :name,
      :status,
      :message,
      :redshift_metadata,
      :rds_metadata,
      :role_arn,
      :compute_statistics,
      :compute_time,
      :finished_at,
      :started_at)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteBatchPredictionInput
    #   data as a hash:
    #
    #       {
    #         batch_prediction_id: "EntityId", # required
    #       }
    #
    # @!attribute [rw] batch_prediction_id
    #   A user-supplied ID that uniquely identifies the `BatchPrediction`.
    #   @return [String]
    #
    class DeleteBatchPredictionInput < Struct.new(
      :batch_prediction_id)
      include Aws::Structure
    end

    # Represents the output of a `DeleteBatchPrediction` operation.
    #
    # You can use the `GetBatchPrediction` operation and check the value of
    # the `Status` parameter to see whether a `BatchPrediction` is marked as
    # `DELETED`.
    #
    # @!attribute [rw] batch_prediction_id
    #   A user-supplied ID that uniquely identifies the `BatchPrediction`.
    #   This value should be identical to the value of the
    #   `BatchPredictionID` in the request.
    #   @return [String]
    #
    class DeleteBatchPredictionOutput < Struct.new(
      :batch_prediction_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDataSourceInput
    #   data as a hash:
    #
    #       {
    #         data_source_id: "EntityId", # required
    #       }
    #
    # @!attribute [rw] data_source_id
    #   A user-supplied ID that uniquely identifies the `DataSource`.
    #   @return [String]
    #
    class DeleteDataSourceInput < Struct.new(
      :data_source_id)
      include Aws::Structure
    end

    # Represents the output of a `DeleteDataSource` operation.
    #
    # @!attribute [rw] data_source_id
    #   A user-supplied ID that uniquely identifies the `DataSource`. This
    #   value should be identical to the value of the `DataSourceID` in the
    #   request.
    #   @return [String]
    #
    class DeleteDataSourceOutput < Struct.new(
      :data_source_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteEvaluationInput
    #   data as a hash:
    #
    #       {
    #         evaluation_id: "EntityId", # required
    #       }
    #
    # @!attribute [rw] evaluation_id
    #   A user-supplied ID that uniquely identifies the `Evaluation` to
    #   delete.
    #   @return [String]
    #
    class DeleteEvaluationInput < Struct.new(
      :evaluation_id)
      include Aws::Structure
    end

    # Represents the output of a `DeleteEvaluation` operation. The output
    # indicates that Amazon Machine Learning (Amazon ML) received the
    # request.
    #
    # You can use the `GetEvaluation` operation and check the value of the
    # `Status` parameter to see whether an `Evaluation` is marked as
    # `DELETED`.
    #
    # @!attribute [rw] evaluation_id
    #   A user-supplied ID that uniquely identifies the `Evaluation`. This
    #   value should be identical to the value of the `EvaluationId` in the
    #   request.
    #   @return [String]
    #
    class DeleteEvaluationOutput < Struct.new(
      :evaluation_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteMLModelInput
    #   data as a hash:
    #
    #       {
    #         ml_model_id: "EntityId", # required
    #       }
    #
    # @!attribute [rw] ml_model_id
    #   A user-supplied ID that uniquely identifies the `MLModel`.
    #   @return [String]
    #
    class DeleteMLModelInput < Struct.new(
      :ml_model_id)
      include Aws::Structure
    end

    # Represents the output of a `DeleteMLModel` operation.
    #
    # You can use the `GetMLModel` operation and check the value of the
    # `Status` parameter to see whether an `MLModel` is marked as `DELETED`.
    #
    # @!attribute [rw] ml_model_id
    #   A user-supplied ID that uniquely identifies the `MLModel`. This
    #   value should be identical to the value of the `MLModelID` in the
    #   request.
    #   @return [String]
    #
    class DeleteMLModelOutput < Struct.new(
      :ml_model_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRealtimeEndpointInput
    #   data as a hash:
    #
    #       {
    #         ml_model_id: "EntityId", # required
    #       }
    #
    # @!attribute [rw] ml_model_id
    #   The ID assigned to the `MLModel` during creation.
    #   @return [String]
    #
    class DeleteRealtimeEndpointInput < Struct.new(
      :ml_model_id)
      include Aws::Structure
    end

    # Represents the output of an `DeleteRealtimeEndpoint` operation.
    #
    # The result contains the `MLModelId` and the endpoint information for
    # the `MLModel`.
    #
    # @!attribute [rw] ml_model_id
    #   A user-supplied ID that uniquely identifies the `MLModel`. This
    #   value should be identical to the value of the `MLModelId` in the
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] realtime_endpoint_info
    #   The endpoint information of the `MLModel`
    #   @return [Types::RealtimeEndpointInfo]
    #
    class DeleteRealtimeEndpointOutput < Struct.new(
      :ml_model_id,
      :realtime_endpoint_info)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteTagsInput
    #   data as a hash:
    #
    #       {
    #         tag_keys: ["TagKey"], # required
    #         resource_id: "EntityId", # required
    #         resource_type: "BatchPrediction", # required, accepts BatchPrediction, DataSource, Evaluation, MLModel
    #       }
    #
    # @!attribute [rw] tag_keys
    #   One or more tags to delete.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_id
    #   The ID of the tagged ML object. For example, `exampleModelId`.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the tagged ML object.
    #   @return [String]
    #
    class DeleteTagsInput < Struct.new(
      :tag_keys,
      :resource_id,
      :resource_type)
      include Aws::Structure
    end

    # Amazon ML returns the following elements.
    #
    # @!attribute [rw] resource_id
    #   The ID of the ML object from which tags were deleted.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the ML object from which tags were deleted.
    #   @return [String]
    #
    class DeleteTagsOutput < Struct.new(
      :resource_id,
      :resource_type)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeBatchPredictionsInput
    #   data as a hash:
    #
    #       {
    #         filter_variable: "CreatedAt", # accepts CreatedAt, LastUpdatedAt, Status, Name, IAMUser, MLModelId, DataSourceId, DataURI
    #         eq: "ComparatorValue",
    #         gt: "ComparatorValue",
    #         lt: "ComparatorValue",
    #         ge: "ComparatorValue",
    #         le: "ComparatorValue",
    #         ne: "ComparatorValue",
    #         prefix: "ComparatorValue",
    #         sort_order: "asc", # accepts asc, dsc
    #         next_token: "StringType",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] filter_variable
    #   Use one of the following variables to filter a list of
    #   `BatchPrediction`\:
    #
    #   * `CreatedAt` - Sets the search criteria to the `BatchPrediction`
    #     creation date.
    #   * `Status` - Sets the search criteria to the `BatchPrediction`
    #     status.
    #   * `Name` - Sets the search criteria to the contents of the
    #     `BatchPrediction`<b> </b> `Name`.
    #   * `IAMUser` - Sets the search criteria to the user account that
    #     invoked the `BatchPrediction` creation.
    #   * `MLModelId` - Sets the search criteria to the `MLModel` used in
    #     the `BatchPrediction`.
    #   * `DataSourceId` - Sets the search criteria to the `DataSource` used
    #     in the `BatchPrediction`.
    #   * `DataURI` - Sets the search criteria to the data file(s) used in
    #     the `BatchPrediction`. The URL can identify either a file or an
    #     Amazon Simple Storage Solution (Amazon S3) bucket or directory.
    #   @return [String]
    #
    # @!attribute [rw] eq
    #   The equal to operator. The `BatchPrediction` results will have
    #   `FilterVariable` values that exactly match the value specified with
    #   `EQ`.
    #   @return [String]
    #
    # @!attribute [rw] gt
    #   The greater than operator. The `BatchPrediction` results will have
    #   `FilterVariable` values that are greater than the value specified
    #   with `GT`.
    #   @return [String]
    #
    # @!attribute [rw] lt
    #   The less than operator. The `BatchPrediction` results will have
    #   `FilterVariable` values that are less than the value specified with
    #   `LT`.
    #   @return [String]
    #
    # @!attribute [rw] ge
    #   The greater than or equal to operator. The `BatchPrediction` results
    #   will have `FilterVariable` values that are greater than or equal to
    #   the value specified with `GE`.
    #   @return [String]
    #
    # @!attribute [rw] le
    #   The less than or equal to operator. The `BatchPrediction` results
    #   will have `FilterVariable` values that are less than or equal to the
    #   value specified with `LE`.
    #   @return [String]
    #
    # @!attribute [rw] ne
    #   The not equal to operator. The `BatchPrediction` results will have
    #   `FilterVariable` values not equal to the value specified with `NE`.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   A string that is found at the beginning of a variable, such as
    #   `Name` or `Id`.
    #
    #   For example, a `Batch Prediction` operation could have the `Name`
    #   `2014-09-09-HolidayGiftMailer`. To search for this
    #   `BatchPrediction`, select `Name` for the `FilterVariable` and any of
    #   the following strings for the `Prefix`\:
    #
    #   * 2014-09
    #
    #   * 2014-09-09
    #
    #   * 2014-09-09-Holiday
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   A two-value parameter that determines the sequence of the resulting
    #   list of `MLModel`s.
    #
    #   * `asc` - Arranges the list in ascending order (A-Z, 0-9).
    #   * `dsc` - Arranges the list in descending order (Z-A, 9-0).
    #
    #   Results are sorted by `FilterVariable`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An ID of the page in the paginated results.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The number of pages of information to include in the result. The
    #   range of acceptable values is `1` through `100`. The default value
    #   is `100`.
    #   @return [Integer]
    #
    class DescribeBatchPredictionsInput < Struct.new(
      :filter_variable,
      :eq,
      :gt,
      :lt,
      :ge,
      :le,
      :ne,
      :prefix,
      :sort_order,
      :next_token,
      :limit)
      include Aws::Structure
    end

    # Represents the output of a `DescribeBatchPredictions` operation. The
    # content is essentially a list of `BatchPrediction`s.
    #
    # @!attribute [rw] results
    #   A list of `BatchPrediction` objects that meet the search criteria.
    #   @return [Array<Types::BatchPrediction>]
    #
    # @!attribute [rw] next_token
    #   The ID of the next page in the paginated results that indicates at
    #   least one more page follows.
    #   @return [String]
    #
    class DescribeBatchPredictionsOutput < Struct.new(
      :results,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDataSourcesInput
    #   data as a hash:
    #
    #       {
    #         filter_variable: "CreatedAt", # accepts CreatedAt, LastUpdatedAt, Status, Name, DataLocationS3, IAMUser
    #         eq: "ComparatorValue",
    #         gt: "ComparatorValue",
    #         lt: "ComparatorValue",
    #         ge: "ComparatorValue",
    #         le: "ComparatorValue",
    #         ne: "ComparatorValue",
    #         prefix: "ComparatorValue",
    #         sort_order: "asc", # accepts asc, dsc
    #         next_token: "StringType",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] filter_variable
    #   Use one of the following variables to filter a list of
    #   `DataSource`\:
    #
    #   * `CreatedAt` - Sets the search criteria to `DataSource` creation
    #     dates.
    #   * `Status` - Sets the search criteria to `DataSource` statuses.
    #   * `Name` - Sets the search criteria to the contents of `DataSource`
    #     <b> </b> `Name`.
    #   * `DataUri` - Sets the search criteria to the URI of data files used
    #     to create the `DataSource`. The URI can identify either a file or
    #     an Amazon Simple Storage Service (Amazon S3) bucket or directory.
    #   * `IAMUser` - Sets the search criteria to the user account that
    #     invoked the `DataSource` creation.
    #   @return [String]
    #
    # @!attribute [rw] eq
    #   The equal to operator. The `DataSource` results will have
    #   `FilterVariable` values that exactly match the value specified with
    #   `EQ`.
    #   @return [String]
    #
    # @!attribute [rw] gt
    #   The greater than operator. The `DataSource` results will have
    #   `FilterVariable` values that are greater than the value specified
    #   with `GT`.
    #   @return [String]
    #
    # @!attribute [rw] lt
    #   The less than operator. The `DataSource` results will have
    #   `FilterVariable` values that are less than the value specified with
    #   `LT`.
    #   @return [String]
    #
    # @!attribute [rw] ge
    #   The greater than or equal to operator. The `DataSource` results will
    #   have `FilterVariable` values that are greater than or equal to the
    #   value specified with `GE`.
    #   @return [String]
    #
    # @!attribute [rw] le
    #   The less than or equal to operator. The `DataSource` results will
    #   have `FilterVariable` values that are less than or equal to the
    #   value specified with `LE`.
    #   @return [String]
    #
    # @!attribute [rw] ne
    #   The not equal to operator. The `DataSource` results will have
    #   `FilterVariable` values not equal to the value specified with `NE`.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   A string that is found at the beginning of a variable, such as
    #   `Name` or `Id`.
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
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   A two-value parameter that determines the sequence of the resulting
    #   list of `DataSource`.
    #
    #   * `asc` - Arranges the list in ascending order (A-Z, 0-9).
    #   * `dsc` - Arranges the list in descending order (Z-A, 9-0).
    #
    #   Results are sorted by `FilterVariable`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The ID of the page in the paginated results.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of `DataSource` to include in the result.
    #   @return [Integer]
    #
    class DescribeDataSourcesInput < Struct.new(
      :filter_variable,
      :eq,
      :gt,
      :lt,
      :ge,
      :le,
      :ne,
      :prefix,
      :sort_order,
      :next_token,
      :limit)
      include Aws::Structure
    end

    # Represents the query results from a DescribeDataSources operation. The
    # content is essentially a list of `DataSource`.
    #
    # @!attribute [rw] results
    #   A list of `DataSource` that meet the search criteria.
    #   @return [Array<Types::DataSource>]
    #
    # @!attribute [rw] next_token
    #   An ID of the next page in the paginated results that indicates at
    #   least one more page follows.
    #   @return [String]
    #
    class DescribeDataSourcesOutput < Struct.new(
      :results,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEvaluationsInput
    #   data as a hash:
    #
    #       {
    #         filter_variable: "CreatedAt", # accepts CreatedAt, LastUpdatedAt, Status, Name, IAMUser, MLModelId, DataSourceId, DataURI
    #         eq: "ComparatorValue",
    #         gt: "ComparatorValue",
    #         lt: "ComparatorValue",
    #         ge: "ComparatorValue",
    #         le: "ComparatorValue",
    #         ne: "ComparatorValue",
    #         prefix: "ComparatorValue",
    #         sort_order: "asc", # accepts asc, dsc
    #         next_token: "StringType",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] filter_variable
    #   Use one of the following variable to filter a list of `Evaluation`
    #   objects:
    #
    #   * `CreatedAt` - Sets the search criteria to the `Evaluation`
    #     creation date.
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
    #     `Evaluation`. The URL can identify either a file or an Amazon
    #     Simple Storage Solution (Amazon S3) bucket or directory.
    #   @return [String]
    #
    # @!attribute [rw] eq
    #   The equal to operator. The `Evaluation` results will have
    #   `FilterVariable` values that exactly match the value specified with
    #   `EQ`.
    #   @return [String]
    #
    # @!attribute [rw] gt
    #   The greater than operator. The `Evaluation` results will have
    #   `FilterVariable` values that are greater than the value specified
    #   with `GT`.
    #   @return [String]
    #
    # @!attribute [rw] lt
    #   The less than operator. The `Evaluation` results will have
    #   `FilterVariable` values that are less than the value specified with
    #   `LT`.
    #   @return [String]
    #
    # @!attribute [rw] ge
    #   The greater than or equal to operator. The `Evaluation` results will
    #   have `FilterVariable` values that are greater than or equal to the
    #   value specified with `GE`.
    #   @return [String]
    #
    # @!attribute [rw] le
    #   The less than or equal to operator. The `Evaluation` results will
    #   have `FilterVariable` values that are less than or equal to the
    #   value specified with `LE`.
    #   @return [String]
    #
    # @!attribute [rw] ne
    #   The not equal to operator. The `Evaluation` results will have
    #   `FilterVariable` values not equal to the value specified with `NE`.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   A string that is found at the beginning of a variable, such as
    #   `Name` or `Id`.
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
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   A two-value parameter that determines the sequence of the resulting
    #   list of `Evaluation`.
    #
    #   * `asc` - Arranges the list in ascending order (A-Z, 0-9).
    #   * `dsc` - Arranges the list in descending order (Z-A, 9-0).
    #
    #   Results are sorted by `FilterVariable`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The ID of the page in the paginated results.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of `Evaluation` to include in the result.
    #   @return [Integer]
    #
    class DescribeEvaluationsInput < Struct.new(
      :filter_variable,
      :eq,
      :gt,
      :lt,
      :ge,
      :le,
      :ne,
      :prefix,
      :sort_order,
      :next_token,
      :limit)
      include Aws::Structure
    end

    # Represents the query results from a `DescribeEvaluations` operation.
    # The content is essentially a list of `Evaluation`.
    #
    # @!attribute [rw] results
    #   A list of `Evaluation` that meet the search criteria.
    #   @return [Array<Types::Evaluation>]
    #
    # @!attribute [rw] next_token
    #   The ID of the next page in the paginated results that indicates at
    #   least one more page follows.
    #   @return [String]
    #
    class DescribeEvaluationsOutput < Struct.new(
      :results,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeMLModelsInput
    #   data as a hash:
    #
    #       {
    #         filter_variable: "CreatedAt", # accepts CreatedAt, LastUpdatedAt, Status, Name, IAMUser, TrainingDataSourceId, RealtimeEndpointStatus, MLModelType, Algorithm, TrainingDataURI
    #         eq: "ComparatorValue",
    #         gt: "ComparatorValue",
    #         lt: "ComparatorValue",
    #         ge: "ComparatorValue",
    #         le: "ComparatorValue",
    #         ne: "ComparatorValue",
    #         prefix: "ComparatorValue",
    #         sort_order: "asc", # accepts asc, dsc
    #         next_token: "StringType",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] filter_variable
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
    #   * `RealtimeEndpointStatus` - Sets the search criteria to the
    #     `MLModel` real-time endpoint status.
    #   * `MLModelType` - Sets the search criteria to `MLModel` type:
    #     binary, regression, or multi-class.
    #   * `Algorithm` - Sets the search criteria to the algorithm that the
    #     `MLModel` uses.
    #   * `TrainingDataURI` - Sets the search criteria to the data file(s)
    #     used in training a `MLModel`. The URL can identify either a file
    #     or an Amazon Simple Storage Service (Amazon S3) bucket or
    #     directory.
    #   @return [String]
    #
    # @!attribute [rw] eq
    #   The equal to operator. The `MLModel` results will have
    #   `FilterVariable` values that exactly match the value specified with
    #   `EQ`.
    #   @return [String]
    #
    # @!attribute [rw] gt
    #   The greater than operator. The `MLModel` results will have
    #   `FilterVariable` values that are greater than the value specified
    #   with `GT`.
    #   @return [String]
    #
    # @!attribute [rw] lt
    #   The less than operator. The `MLModel` results will have
    #   `FilterVariable` values that are less than the value specified with
    #   `LT`.
    #   @return [String]
    #
    # @!attribute [rw] ge
    #   The greater than or equal to operator. The `MLModel` results will
    #   have `FilterVariable` values that are greater than or equal to the
    #   value specified with `GE`.
    #   @return [String]
    #
    # @!attribute [rw] le
    #   The less than or equal to operator. The `MLModel` results will have
    #   `FilterVariable` values that are less than or equal to the value
    #   specified with `LE`.
    #   @return [String]
    #
    # @!attribute [rw] ne
    #   The not equal to operator. The `MLModel` results will have
    #   `FilterVariable` values not equal to the value specified with `NE`.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   A string that is found at the beginning of a variable, such as
    #   `Name` or `Id`.
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
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   A two-value parameter that determines the sequence of the resulting
    #   list of `MLModel`.
    #
    #   * `asc` - Arranges the list in ascending order (A-Z, 0-9).
    #   * `dsc` - Arranges the list in descending order (Z-A, 9-0).
    #
    #   Results are sorted by `FilterVariable`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The ID of the page in the paginated results.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The number of pages of information to include in the result. The
    #   range of acceptable values is `1` through `100`. The default value
    #   is `100`.
    #   @return [Integer]
    #
    class DescribeMLModelsInput < Struct.new(
      :filter_variable,
      :eq,
      :gt,
      :lt,
      :ge,
      :le,
      :ne,
      :prefix,
      :sort_order,
      :next_token,
      :limit)
      include Aws::Structure
    end

    # Represents the output of a `DescribeMLModels` operation. The content
    # is essentially a list of `MLModel`.
    #
    # @!attribute [rw] results
    #   A list of `MLModel` that meet the search criteria.
    #   @return [Array<Types::MLModel>]
    #
    # @!attribute [rw] next_token
    #   The ID of the next page in the paginated results that indicates at
    #   least one more page follows.
    #   @return [String]
    #
    class DescribeMLModelsOutput < Struct.new(
      :results,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTagsInput
    #   data as a hash:
    #
    #       {
    #         resource_id: "EntityId", # required
    #         resource_type: "BatchPrediction", # required, accepts BatchPrediction, DataSource, Evaluation, MLModel
    #       }
    #
    # @!attribute [rw] resource_id
    #   The ID of the ML object. For example, `exampleModelId`.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the ML object.
    #   @return [String]
    #
    class DescribeTagsInput < Struct.new(
      :resource_id,
      :resource_type)
      include Aws::Structure
    end

    # Amazon ML returns the following elements.
    #
    # @!attribute [rw] resource_id
    #   The ID of the tagged ML object.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the tagged ML object.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags associated with the ML object.
    #   @return [Array<Types::Tag>]
    #
    class DescribeTagsOutput < Struct.new(
      :resource_id,
      :resource_type,
      :tags)
      include Aws::Structure
    end

    # Represents the output of `GetEvaluation` operation.
    #
    # The content consists of the detailed metadata and data file
    # information and the current status of the `Evaluation`.
    #
    # @!attribute [rw] evaluation_id
    #   The ID that is assigned to the `Evaluation` at creation.
    #   @return [String]
    #
    # @!attribute [rw] ml_model_id
    #   The ID of the `MLModel` that is the focus of the evaluation.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_data_source_id
    #   The ID of the `DataSource` that is used to evaluate the `MLModel`.
    #   @return [String]
    #
    # @!attribute [rw] input_data_location_s3
    #   The location and name of the data in Amazon Simple Storage Server
    #   (Amazon S3) that is used in the evaluation.
    #   @return [String]
    #
    # @!attribute [rw] created_by_iam_user
    #   The AWS user account that invoked the evaluation. The account type
    #   can be either an AWS root account or an AWS Identity and Access
    #   Management (IAM) user account.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time that the `Evaluation` was created. The time is expressed in
    #   epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The time of the most recent edit to the `Evaluation`. The time is
    #   expressed in epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   A user-supplied name or description of the `Evaluation`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the evaluation. This element can have one of the
    #   following values:
    #
    #   * `PENDING` - Amazon Machine Learning (Amazon ML) submitted a
    #     request to evaluate an `MLModel`.
    #   * `INPROGRESS` - The evaluation is underway.
    #   * `FAILED` - The request to evaluate an `MLModel` did not run to
    #     completion. It is not usable.
    #   * `COMPLETED` - The evaluation process completed successfully.
    #   * `DELETED` - The `Evaluation` is marked as deleted. It is not
    #     usable.
    #   @return [String]
    #
    # @!attribute [rw] performance_metrics
    #   Measurements of how well the `MLModel` performed, using observations
    #   referenced by the `DataSource`. One of the following metrics is
    #   returned, based on the type of the `MLModel`\:
    #
    #   * BinaryAUC: A binary `MLModel` uses the Area Under the Curve (AUC)
    #     technique to measure performance.
    #
    #   * RegressionRMSE: A regression `MLModel` uses the Root Mean Square
    #     Error (RMSE) technique to measure performance. RMSE measures the
    #     difference between predicted and actual values for a single
    #     variable.
    #
    #   * MulticlassAvgFScore: A multiclass `MLModel` uses the F1 score
    #     technique to measure performance.
    #
    #   For more information about performance metrics, please see the
    #   [Amazon Machine Learning Developer Guide][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/machine-learning/latest/dg
    #   @return [Types::PerformanceMetrics]
    #
    # @!attribute [rw] message
    #   A description of the most recent details about evaluating the
    #   `MLModel`.
    #   @return [String]
    #
    # @!attribute [rw] compute_time
    #   Long integer type that is a 64-bit signed number.
    #   @return [Integer]
    #
    # @!attribute [rw] finished_at
    #   A timestamp represented in epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] started_at
    #   A timestamp represented in epoch time.
    #   @return [Time]
    #
    class Evaluation < Struct.new(
      :evaluation_id,
      :ml_model_id,
      :evaluation_data_source_id,
      :input_data_location_s3,
      :created_by_iam_user,
      :created_at,
      :last_updated_at,
      :name,
      :status,
      :performance_metrics,
      :message,
      :compute_time,
      :finished_at,
      :started_at)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBatchPredictionInput
    #   data as a hash:
    #
    #       {
    #         batch_prediction_id: "EntityId", # required
    #       }
    #
    # @!attribute [rw] batch_prediction_id
    #   An ID assigned to the `BatchPrediction` at creation.
    #   @return [String]
    #
    class GetBatchPredictionInput < Struct.new(
      :batch_prediction_id)
      include Aws::Structure
    end

    # Represents the output of a `GetBatchPrediction` operation and
    # describes a `BatchPrediction`.
    #
    # @!attribute [rw] batch_prediction_id
    #   An ID assigned to the `BatchPrediction` at creation. This value
    #   should be identical to the value of the `BatchPredictionID` in the
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] ml_model_id
    #   The ID of the `MLModel` that generated predictions for the
    #   `BatchPrediction` request.
    #   @return [String]
    #
    # @!attribute [rw] batch_prediction_data_source_id
    #   The ID of the `DataSource` that was used to create the
    #   `BatchPrediction`.
    #   @return [String]
    #
    # @!attribute [rw] input_data_location_s3
    #   The location of the data file or directory in Amazon Simple Storage
    #   Service (Amazon S3).
    #   @return [String]
    #
    # @!attribute [rw] created_by_iam_user
    #   The AWS user account that invoked the `BatchPrediction`. The account
    #   type can be either an AWS root account or an AWS Identity and Access
    #   Management (IAM) user account.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the `BatchPrediction` was created. The time is
    #   expressed in epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The time of the most recent edit to `BatchPrediction`. The time is
    #   expressed in epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   A user-supplied name or description of the `BatchPrediction`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the `BatchPrediction`, which can be one of the
    #   following values:
    #
    #   * `PENDING` - Amazon Machine Learning (Amazon ML) submitted a
    #     request to generate batch predictions.
    #   * `INPROGRESS` - The batch predictions are in progress.
    #   * `FAILED` - The request to perform a batch prediction did not run
    #     to completion. It is not usable.
    #   * `COMPLETED` - The batch prediction process completed successfully.
    #   * `DELETED` - The `BatchPrediction` is marked as deleted. It is not
    #     usable.
    #   @return [String]
    #
    # @!attribute [rw] output_uri
    #   The location of an Amazon S3 bucket or directory to receive the
    #   operation results.
    #   @return [String]
    #
    # @!attribute [rw] log_uri
    #   A link to the file that contains logs of the `CreateBatchPrediction`
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of the most recent details about processing the batch
    #   prediction request.
    #   @return [String]
    #
    # @!attribute [rw] compute_time
    #   The approximate CPU time in milliseconds that Amazon Machine
    #   Learning spent processing the `BatchPrediction`, normalized and
    #   scaled on computation resources. `ComputeTime` is only available if
    #   the `BatchPrediction` is in the `COMPLETED` state.
    #   @return [Integer]
    #
    # @!attribute [rw] finished_at
    #   The epoch time when Amazon Machine Learning marked the
    #   `BatchPrediction` as `COMPLETED` or `FAILED`. `FinishedAt` is only
    #   available when the `BatchPrediction` is in the `COMPLETED` or
    #   `FAILED` state.
    #   @return [Time]
    #
    # @!attribute [rw] started_at
    #   The epoch time when Amazon Machine Learning marked the
    #   `BatchPrediction` as `INPROGRESS`. `StartedAt` isn't available if
    #   the `BatchPrediction` is in the `PENDING` state.
    #   @return [Time]
    #
    # @!attribute [rw] total_record_count
    #   The number of total records that Amazon Machine Learning saw while
    #   processing the `BatchPrediction`.
    #   @return [Integer]
    #
    # @!attribute [rw] invalid_record_count
    #   The number of invalid records that Amazon Machine Learning saw while
    #   processing the `BatchPrediction`.
    #   @return [Integer]
    #
    class GetBatchPredictionOutput < Struct.new(
      :batch_prediction_id,
      :ml_model_id,
      :batch_prediction_data_source_id,
      :input_data_location_s3,
      :created_by_iam_user,
      :created_at,
      :last_updated_at,
      :name,
      :status,
      :output_uri,
      :log_uri,
      :message,
      :compute_time,
      :finished_at,
      :started_at,
      :total_record_count,
      :invalid_record_count)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDataSourceInput
    #   data as a hash:
    #
    #       {
    #         data_source_id: "EntityId", # required
    #         verbose: false,
    #       }
    #
    # @!attribute [rw] data_source_id
    #   The ID assigned to the `DataSource` at creation.
    #   @return [String]
    #
    # @!attribute [rw] verbose
    #   Specifies whether the `GetDataSource` operation should return
    #   `DataSourceSchema`.
    #
    #   If true, `DataSourceSchema` is returned.
    #
    #   If false, `DataSourceSchema` is not returned.
    #   @return [Boolean]
    #
    class GetDataSourceInput < Struct.new(
      :data_source_id,
      :verbose)
      include Aws::Structure
    end

    # Represents the output of a `GetDataSource` operation and describes a
    # `DataSource`.
    #
    # @!attribute [rw] data_source_id
    #   The ID assigned to the `DataSource` at creation. This value should
    #   be identical to the value of the `DataSourceId` in the request.
    #   @return [String]
    #
    # @!attribute [rw] data_location_s3
    #   The location of the data file or directory in Amazon Simple Storage
    #   Service (Amazon S3).
    #   @return [String]
    #
    # @!attribute [rw] data_rearrangement
    #   A JSON string that represents the splitting and rearrangement
    #   requirement used when this `DataSource` was created.
    #   @return [String]
    #
    # @!attribute [rw] created_by_iam_user
    #   The AWS user account from which the `DataSource` was created. The
    #   account type can be either an AWS root account or an AWS Identity
    #   and Access Management (IAM) user account.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time that the `DataSource` was created. The time is expressed in
    #   epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The time of the most recent edit to the `DataSource`. The time is
    #   expressed in epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] data_size_in_bytes
    #   The total size of observations in the data files.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_files
    #   The number of data files referenced by the `DataSource`.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   A user-supplied name or description of the `DataSource`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the `DataSource`. This element can have one of
    #   the following values:
    #
    #   * `PENDING` - Amazon ML submitted a request to create a
    #     `DataSource`.
    #   * `INPROGRESS` - The creation process is underway.
    #   * `FAILED` - The request to create a `DataSource` did not run to
    #     completion. It is not usable.
    #   * `COMPLETED` - The creation process completed successfully.
    #   * `DELETED` - The `DataSource` is marked as deleted. It is not
    #     usable.
    #   @return [String]
    #
    # @!attribute [rw] log_uri
    #   A link to the file containing logs of `CreateDataSourceFrom*`
    #   operations.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The user-supplied description of the most recent details about
    #   creating the `DataSource`.
    #   @return [String]
    #
    # @!attribute [rw] redshift_metadata
    #   Describes the `DataSource` details specific to Amazon Redshift.
    #   @return [Types::RedshiftMetadata]
    #
    # @!attribute [rw] rds_metadata
    #   The datasource details that are specific to Amazon RDS.
    #   @return [Types::RDSMetadata]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an [AWS IAM Role][1], such as the
    #   following: arn:aws:iam::account:role/rolename.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html#roles-about-termsandconcepts
    #   @return [String]
    #
    # @!attribute [rw] compute_statistics
    #   The parameter is `true` if statistics need to be generated from the
    #   observation data.
    #   @return [Boolean]
    #
    # @!attribute [rw] compute_time
    #   The approximate CPU time in milliseconds that Amazon Machine
    #   Learning spent processing the `DataSource`, normalized and scaled on
    #   computation resources. `ComputeTime` is only available if the
    #   `DataSource` is in the `COMPLETED` state and the `ComputeStatistics`
    #   is set to true.
    #   @return [Integer]
    #
    # @!attribute [rw] finished_at
    #   The epoch time when Amazon Machine Learning marked the `DataSource`
    #   as `COMPLETED` or `FAILED`. `FinishedAt` is only available when the
    #   `DataSource` is in the `COMPLETED` or `FAILED` state.
    #   @return [Time]
    #
    # @!attribute [rw] started_at
    #   The epoch time when Amazon Machine Learning marked the `DataSource`
    #   as `INPROGRESS`. `StartedAt` isn't available if the `DataSource` is
    #   in the `PENDING` state.
    #   @return [Time]
    #
    # @!attribute [rw] data_source_schema
    #   The schema used by all of the data files of this `DataSource`.
    #
    #   <note markdown="1"><title>Note</title> This parameter is provided as part of the verbose format.
    #
    #   </note>
    #   @return [String]
    #
    class GetDataSourceOutput < Struct.new(
      :data_source_id,
      :data_location_s3,
      :data_rearrangement,
      :created_by_iam_user,
      :created_at,
      :last_updated_at,
      :data_size_in_bytes,
      :number_of_files,
      :name,
      :status,
      :log_uri,
      :message,
      :redshift_metadata,
      :rds_metadata,
      :role_arn,
      :compute_statistics,
      :compute_time,
      :finished_at,
      :started_at,
      :data_source_schema)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEvaluationInput
    #   data as a hash:
    #
    #       {
    #         evaluation_id: "EntityId", # required
    #       }
    #
    # @!attribute [rw] evaluation_id
    #   The ID of the `Evaluation` to retrieve. The evaluation of each
    #   `MLModel` is recorded and cataloged. The ID provides the means to
    #   access the information.
    #   @return [String]
    #
    class GetEvaluationInput < Struct.new(
      :evaluation_id)
      include Aws::Structure
    end

    # Represents the output of a `GetEvaluation` operation and describes an
    # `Evaluation`.
    #
    # @!attribute [rw] evaluation_id
    #   The evaluation ID which is same as the `EvaluationId` in the
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] ml_model_id
    #   The ID of the `MLModel` that was the focus of the evaluation.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_data_source_id
    #   The `DataSource` used for this evaluation.
    #   @return [String]
    #
    # @!attribute [rw] input_data_location_s3
    #   The location of the data file or directory in Amazon Simple Storage
    #   Service (Amazon S3).
    #   @return [String]
    #
    # @!attribute [rw] created_by_iam_user
    #   The AWS user account that invoked the evaluation. The account type
    #   can be either an AWS root account or an AWS Identity and Access
    #   Management (IAM) user account.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time that the `Evaluation` was created. The time is expressed in
    #   epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The time of the most recent edit to the `Evaluation`. The time is
    #   expressed in epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   A user-supplied name or description of the `Evaluation`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the evaluation. This element can have one of the
    #   following values:
    #
    #   * `PENDING` - Amazon Machine Language (Amazon ML) submitted a
    #     request to evaluate an `MLModel`.
    #   * `INPROGRESS` - The evaluation is underway.
    #   * `FAILED` - The request to evaluate an `MLModel` did not run to
    #     completion. It is not usable.
    #   * `COMPLETED` - The evaluation process completed successfully.
    #   * `DELETED` - The `Evaluation` is marked as deleted. It is not
    #     usable.
    #   @return [String]
    #
    # @!attribute [rw] performance_metrics
    #   Measurements of how well the `MLModel` performed using observations
    #   referenced by the `DataSource`. One of the following metric is
    #   returned based on the type of the `MLModel`\:
    #
    #   * BinaryAUC: A binary `MLModel` uses the Area Under the Curve (AUC)
    #     technique to measure performance.
    #
    #   * RegressionRMSE: A regression `MLModel` uses the Root Mean Square
    #     Error (RMSE) technique to measure performance. RMSE measures the
    #     difference between predicted and actual values for a single
    #     variable.
    #
    #   * MulticlassAvgFScore: A multiclass `MLModel` uses the F1 score
    #     technique to measure performance.
    #
    #   For more information about performance metrics, please see the
    #   [Amazon Machine Learning Developer Guide][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/machine-learning/latest/dg
    #   @return [Types::PerformanceMetrics]
    #
    # @!attribute [rw] log_uri
    #   A link to the file that contains logs of the `CreateEvaluation`
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of the most recent details about evaluating the
    #   `MLModel`.
    #   @return [String]
    #
    # @!attribute [rw] compute_time
    #   The approximate CPU time in milliseconds that Amazon Machine
    #   Learning spent processing the `Evaluation`, normalized and scaled on
    #   computation resources. `ComputeTime` is only available if the
    #   `Evaluation` is in the `COMPLETED` state.
    #   @return [Integer]
    #
    # @!attribute [rw] finished_at
    #   The epoch time when Amazon Machine Learning marked the `Evaluation`
    #   as `COMPLETED` or `FAILED`. `FinishedAt` is only available when the
    #   `Evaluation` is in the `COMPLETED` or `FAILED` state.
    #   @return [Time]
    #
    # @!attribute [rw] started_at
    #   The epoch time when Amazon Machine Learning marked the `Evaluation`
    #   as `INPROGRESS`. `StartedAt` isn't available if the `Evaluation` is
    #   in the `PENDING` state.
    #   @return [Time]
    #
    class GetEvaluationOutput < Struct.new(
      :evaluation_id,
      :ml_model_id,
      :evaluation_data_source_id,
      :input_data_location_s3,
      :created_by_iam_user,
      :created_at,
      :last_updated_at,
      :name,
      :status,
      :performance_metrics,
      :log_uri,
      :message,
      :compute_time,
      :finished_at,
      :started_at)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMLModelInput
    #   data as a hash:
    #
    #       {
    #         ml_model_id: "EntityId", # required
    #         verbose: false,
    #       }
    #
    # @!attribute [rw] ml_model_id
    #   The ID assigned to the `MLModel` at creation.
    #   @return [String]
    #
    # @!attribute [rw] verbose
    #   Specifies whether the `GetMLModel` operation should return `Recipe`.
    #
    #   If true, `Recipe` is returned.
    #
    #   If false, `Recipe` is not returned.
    #   @return [Boolean]
    #
    class GetMLModelInput < Struct.new(
      :ml_model_id,
      :verbose)
      include Aws::Structure
    end

    # Represents the output of a `GetMLModel` operation, and provides
    # detailed information about a `MLModel`.
    #
    # @!attribute [rw] ml_model_id
    #   The MLModel ID<?oxy\_insert\_start author="annbech"
    #   timestamp="20160328T151251-0700">,<?oxy\_insert\_end> which is
    #   same as the `MLModelId` in the request.
    #   @return [String]
    #
    # @!attribute [rw] training_data_source_id
    #   The ID of the training `DataSource`.
    #   @return [String]
    #
    # @!attribute [rw] created_by_iam_user
    #   The AWS user account from which the `MLModel` was created. The
    #   account type can be either an AWS root account or an AWS Identity
    #   and Access Management (IAM) user account.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time that the `MLModel` was created. The time is expressed in
    #   epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The time of the most recent edit to the `MLModel`. The time is
    #   expressed in epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   A user-supplied name or description of the `MLModel`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the `MLModel`. This element can have one of
    #   the following values:
    #
    #   * `PENDING` - Amazon Machine Learning (Amazon ML) submitted a
    #     request to describe a `MLModel`.
    #   * `INPROGRESS` - The request is processing.
    #   * `FAILED` - The request did not run to completion. The ML model
    #     isn't usable.
    #   * `COMPLETED` - The request completed successfully.
    #   * `DELETED` - The `MLModel` is marked as deleted. It isn't usable.
    #   @return [String]
    #
    # @!attribute [rw] size_in_bytes
    #   Long integer type that is a 64-bit signed number.
    #   @return [Integer]
    #
    # @!attribute [rw] endpoint_info
    #   The current endpoint of the `MLModel`
    #   @return [Types::RealtimeEndpointInfo]
    #
    # @!attribute [rw] training_parameters
    #   A list of the training parameters in the `MLModel`. The list is
    #   implemented as a map of key-value pairs.
    #
    #   The following is the current set of training parameters:
    #
    #   * `sgd.maxMLModelSizeInBytes` - The maximum allowed size of the
    #     model. Depending on the input data, the size of the model might
    #     affect its performance.
    #
    #     The value is an integer that ranges from `100000` to `2147483648`.
    #     The default value is `33554432`.
    #
    #   * `sgd.maxPasses` - The number of times that the training process
    #     traverses the observations to build the `MLModel`. The value is an
    #     integer that ranges from `1` to `10000`. The default value is
    #     `10`.
    #
    #   * `sgd.shuffleType` - Whether Amazon ML shuffles the training data.
    #     Shuffling data improves a model's ability to find the optimal
    #     solution for a variety of data types. The valid values are `auto`
    #     and `none`. The default value is `none`. We strongly recommend
    #     that you shuffle your data.
    #
    #   * `sgd.l1RegularizationAmount` - The coefficient regularization L1
    #     norm. It controls overfitting the data by penalizing large
    #     coefficients. This tends to drive coefficients to zero, resulting
    #     in a sparse feature set. If you use this parameter, start by
    #     specifying a small value, such as `1.0E-08`.
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
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] input_data_location_s3
    #   The location of the data file or directory in Amazon Simple Storage
    #   Service (Amazon S3).
    #   @return [String]
    #
    # @!attribute [rw] ml_model_type
    #   Identifies the `MLModel` category. The following are the available
    #   types:
    #
    #   * REGRESSION -- Produces a numeric result. For example, "What price
    #     should a house be listed at?"
    #   * BINARY -- Produces one of two possible results. For example, "Is
    #     this an e-commerce website?"
    #   * MULTICLASS -- Produces one of several possible results. For
    #     example, "Is this a HIGH, LOW or MEDIUM risk trade?"
    #   @return [String]
    #
    # @!attribute [rw] score_threshold
    #   The scoring threshold is used in binary classification
    #   `MLModel`<?oxy\_insert\_start author="laurama"
    #   timestamp="20160329T114851-0700"> <?oxy\_insert\_end>models. It
    #   marks the boundary between a positive prediction and a negative
    #   prediction.
    #
    #   Output values greater than or equal to the threshold receive a
    #   positive result from the MLModel, such as `true`. Output values less
    #   than the threshold receive a negative response from the MLModel,
    #   such as `false`.
    #   @return [Float]
    #
    # @!attribute [rw] score_threshold_last_updated_at
    #   The time of the most recent edit to the `ScoreThreshold`. The time
    #   is expressed in epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] log_uri
    #   A link to the file that contains logs of the `CreateMLModel`
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of the most recent details about accessing the
    #   `MLModel`.
    #   @return [String]
    #
    # @!attribute [rw] compute_time
    #   The approximate CPU time in milliseconds that Amazon Machine
    #   Learning spent processing the `MLModel`, normalized and scaled on
    #   computation resources. `ComputeTime` is only available if the
    #   `MLModel` is in the `COMPLETED` state.
    #   @return [Integer]
    #
    # @!attribute [rw] finished_at
    #   The epoch time when Amazon Machine Learning marked the `MLModel` as
    #   `COMPLETED` or `FAILED`. `FinishedAt` is only available when the
    #   `MLModel` is in the `COMPLETED` or `FAILED` state.
    #   @return [Time]
    #
    # @!attribute [rw] started_at
    #   The epoch time when Amazon Machine Learning marked the `MLModel` as
    #   `INPROGRESS`. `StartedAt` isn't available if the `MLModel` is in
    #   the `PENDING` state.
    #   @return [Time]
    #
    # @!attribute [rw] recipe
    #   The recipe to use when training the `MLModel`. The `Recipe` provides
    #   detailed information about the observation data to use during
    #   training, and manipulations to perform on the observation data
    #   during training.
    #
    #   <note markdown="1"><title>Note</title> This parameter is provided as part of the verbose format.
    #
    #   </note>
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The schema used by all of the data files referenced by the
    #   `DataSource`.
    #
    #   <note markdown="1"><title>Note</title> This parameter is provided as part of the verbose format.
    #
    #   </note>
    #   @return [String]
    #
    class GetMLModelOutput < Struct.new(
      :ml_model_id,
      :training_data_source_id,
      :created_by_iam_user,
      :created_at,
      :last_updated_at,
      :name,
      :status,
      :size_in_bytes,
      :endpoint_info,
      :training_parameters,
      :input_data_location_s3,
      :ml_model_type,
      :score_threshold,
      :score_threshold_last_updated_at,
      :log_uri,
      :message,
      :compute_time,
      :finished_at,
      :started_at,
      :recipe,
      :schema)
      include Aws::Structure
    end

    # Represents the output of a `GetMLModel` operation.
    #
    # The content consists of the detailed metadata and the current status
    # of the `MLModel`.
    #
    # @!attribute [rw] ml_model_id
    #   The ID assigned to the `MLModel` at creation.
    #   @return [String]
    #
    # @!attribute [rw] training_data_source_id
    #   The ID of the training `DataSource`. The `CreateMLModel` operation
    #   uses the `TrainingDataSourceId`.
    #   @return [String]
    #
    # @!attribute [rw] created_by_iam_user
    #   The AWS user account from which the `MLModel` was created. The
    #   account type can be either an AWS root account or an AWS Identity
    #   and Access Management (IAM) user account.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time that the `MLModel` was created. The time is expressed in
    #   epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The time of the most recent edit to the `MLModel`. The time is
    #   expressed in epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   A user-supplied name or description of the `MLModel`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of an `MLModel`. This element can have one of the
    #   following values:
    #
    #   * `PENDING` - Amazon Machine Learning (Amazon ML) submitted a
    #     request to create an `MLModel`.
    #   * `INPROGRESS` - The creation process is underway.
    #   * `FAILED` - The request to create an `MLModel` didn't run to
    #     completion. The model isn't usable.
    #   * `COMPLETED` - The creation process completed successfully.
    #   * `DELETED` - The `MLModel` is marked as deleted. It isn't usable.
    #   @return [String]
    #
    # @!attribute [rw] size_in_bytes
    #   Long integer type that is a 64-bit signed number.
    #   @return [Integer]
    #
    # @!attribute [rw] endpoint_info
    #   The current endpoint of the `MLModel`.
    #   @return [Types::RealtimeEndpointInfo]
    #
    # @!attribute [rw] training_parameters
    #   A list of the training parameters in the `MLModel`. The list is
    #   implemented as a map of key-value pairs.
    #
    #   The following is the current set of training parameters:
    #
    #   * `sgd.maxMLModelSizeInBytes` - The maximum allowed size of the
    #     model. Depending on the input data, the size of the model might
    #     affect its performance.
    #
    #     The value is an integer that ranges from `100000` to `2147483648`.
    #     The default value is `33554432`.
    #
    #   * `sgd.maxPasses` - The number of times that the training process
    #     traverses the observations to build the `MLModel`. The value is an
    #     integer that ranges from `1` to `10000`. The default value is
    #     `10`.
    #
    #   * `sgd.shuffleType` - Whether Amazon ML shuffles the training data.
    #     Shuffling the data improves a model's ability to find the optimal
    #     solution for a variety of data types. The valid values are `auto`
    #     and `none`. The default value is `none`.
    #
    #   * `sgd.l1RegularizationAmount` - The coefficient regularization L1
    #     norm, which controls overfitting the data by penalizing large
    #     coefficients. This parameter tends to drive coefficients to zero,
    #     resulting in sparse feature set. If you use this parameter, start
    #     by specifying a small value, such as `1.0E-08`.
    #
    #     The value is a double that ranges from `0` to `MAX_DOUBLE`. The
    #     default is to not use L1 normalization. This parameter can't be
    #     used when `L2` is specified. Use this parameter sparingly.
    #
    #   * `sgd.l2RegularizationAmount` - The coefficient regularization L2
    #     norm, which controls overfitting the data by penalizing large
    #     coefficients. This tends to drive coefficients to small, nonzero
    #     values. If you use this parameter, start by specifying a small
    #     value, such as `1.0E-08`.
    #
    #     The value is a double that ranges from `0` to `MAX_DOUBLE`. The
    #     default is to not use L2 normalization. This parameter can't be
    #     used when `L1` is specified. Use this parameter sparingly.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] input_data_location_s3
    #   The location of the data file or directory in Amazon Simple Storage
    #   Service (Amazon S3).
    #   @return [String]
    #
    # @!attribute [rw] algorithm
    #   The algorithm used to train the `MLModel`. The following algorithm
    #   is supported:
    #
    #   * `SGD` -- Stochastic gradient descent. The goal of `SGD` is to
    #     minimize the gradient of the loss function.
    #   @return [String]
    #
    # @!attribute [rw] ml_model_type
    #   Identifies the `MLModel` category. The following are the available
    #   types:
    #
    #   * `REGRESSION` - Produces a numeric result. For example, "What
    #     price should a house be listed at?"
    #   * `BINARY` - Produces one of two possible results. For example, "Is
    #     this a child-friendly web site?".
    #   * `MULTICLASS` - Produces one of several possible results. For
    #     example, "Is this a HIGH-, LOW-, or MEDIUM<?oxy\_delete
    #     author="annbech" timestamp="20160328T175050-0700" content="
    #     "><?oxy\_insert\_start author="annbech"
    #     timestamp="20160328T175050-0700">-<?oxy\_insert\_end>risk
    #     trade?".
    #   @return [String]
    #
    # @!attribute [rw] score_threshold
    #   @return [Float]
    #
    # @!attribute [rw] score_threshold_last_updated_at
    #   The time of the most recent edit to the `ScoreThreshold`. The time
    #   is expressed in epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] message
    #   A description of the most recent details about accessing the
    #   `MLModel`.
    #   @return [String]
    #
    # @!attribute [rw] compute_time
    #   Long integer type that is a 64-bit signed number.
    #   @return [Integer]
    #
    # @!attribute [rw] finished_at
    #   A timestamp represented in epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] started_at
    #   A timestamp represented in epoch time.
    #   @return [Time]
    #
    class MLModel < Struct.new(
      :ml_model_id,
      :training_data_source_id,
      :created_by_iam_user,
      :created_at,
      :last_updated_at,
      :name,
      :status,
      :size_in_bytes,
      :endpoint_info,
      :training_parameters,
      :input_data_location_s3,
      :algorithm,
      :ml_model_type,
      :score_threshold,
      :score_threshold_last_updated_at,
      :message,
      :compute_time,
      :finished_at,
      :started_at)
      include Aws::Structure
    end

    # Measurements of how well the `MLModel` performed on known
    # observations. One of the following metrics is returned, based on the
    # type of the `MLModel`\:
    #
    # * BinaryAUC: The binary `MLModel` uses the Area Under the Curve (AUC)
    #   technique to measure performance.
    #
    # * RegressionRMSE: The regression `MLModel` uses the Root Mean Square
    #   Error (RMSE) technique to measure performance. RMSE measures the
    #   difference between predicted and actual values for a single
    #   variable.
    #
    # * MulticlassAvgFScore: The multiclass `MLModel` uses the F1 score
    #   technique to measure performance.
    #
    # For more information about performance metrics, please see the [Amazon
    # Machine Learning Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/machine-learning/latest/dg
    #
    # @!attribute [rw] properties
    #   @return [Hash<String,String>]
    #
    class PerformanceMetrics < Struct.new(
      :properties)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PredictInput
    #   data as a hash:
    #
    #       {
    #         ml_model_id: "EntityId", # required
    #         record: { # required
    #           "VariableName" => "VariableValue",
    #         },
    #         predict_endpoint: "VipURL", # required
    #       }
    #
    # @!attribute [rw] ml_model_id
    #   A unique identifier of the `MLModel`.
    #   @return [String]
    #
    # @!attribute [rw] record
    #   A map of variable name-value pairs that represent an observation.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] predict_endpoint
    #   @return [String]
    #
    class PredictInput < Struct.new(
      :ml_model_id,
      :record,
      :predict_endpoint)
      include Aws::Structure
    end

    # @!attribute [rw] prediction
    #   The output from a `Predict` operation:
    #
    #   * `Details` - Contains the following attributes:
    #     `DetailsAttributes.PREDICTIVE_MODEL_TYPE - REGRESSION | BINARY |
    #     MULTICLASS` `DetailsAttributes.ALGORITHM - SGD`
    #
    #   * `PredictedLabel` - Present for either a `BINARY` or `MULTICLASS`
    #     `MLModel` request.
    #
    #   * `PredictedScores` - Contains the raw classification score
    #     corresponding to each label.
    #
    #   * `PredictedValue` - Present for a `REGRESSION` `MLModel` request.
    #   @return [Types::Prediction]
    #
    class PredictOutput < Struct.new(
      :prediction)
      include Aws::Structure
    end

    # The output from a `Predict` operation:
    #
    # * `Details` - Contains the following attributes:
    #   `DetailsAttributes.PREDICTIVE_MODEL_TYPE - REGRESSION | BINARY |
    #   MULTICLASS` `DetailsAttributes.ALGORITHM - SGD`
    #
    # * `PredictedLabel` - Present for either a `BINARY` or `MULTICLASS`
    #   `MLModel` request.
    #
    # * `PredictedScores` - Contains the raw classification score
    #   corresponding to each label.
    #
    # * `PredictedValue` - Present for a `REGRESSION` `MLModel` request.
    #
    # @!attribute [rw] predicted_label
    #   The prediction label for either a `BINARY` or `MULTICLASS`
    #   `MLModel`.
    #   @return [String]
    #
    # @!attribute [rw] predicted_value
    #   The prediction value for `REGRESSION` `MLModel`.
    #   @return [Float]
    #
    # @!attribute [rw] predicted_scores
    #   Provides the raw classification score corresponding to each label.
    #   @return [Hash<String,Float>]
    #
    # @!attribute [rw] details
    #   Provides any additional details regarding the prediction.
    #   @return [Hash<String,String>]
    #
    class Prediction < Struct.new(
      :predicted_label,
      :predicted_value,
      :predicted_scores,
      :details)
      include Aws::Structure
    end

    # The data specification of an Amazon Relational Database Service
    # (Amazon RDS) `DataSource`.
    #
    # @note When making an API call, you may pass RDSDataSpec
    #   data as a hash:
    #
    #       {
    #         database_information: { # required
    #           instance_identifier: "RDSInstanceIdentifier", # required
    #           database_name: "RDSDatabaseName", # required
    #         },
    #         select_sql_query: "RDSSelectSqlQuery", # required
    #         database_credentials: { # required
    #           username: "RDSDatabaseUsername", # required
    #           password: "RDSDatabasePassword", # required
    #         },
    #         s3_staging_location: "S3Url", # required
    #         data_rearrangement: "DataRearrangement",
    #         data_schema: "DataSchema",
    #         data_schema_uri: "S3Url",
    #         resource_role: "EDPResourceRole", # required
    #         service_role: "EDPServiceRole", # required
    #         subnet_id: "EDPSubnetId", # required
    #         security_group_ids: ["EDPSecurityGroupId"], # required
    #       }
    #
    # @!attribute [rw] database_information
    #   Describes the `DatabaseName` and `InstanceIdentifier` of an Amazon
    #   RDS database.
    #   @return [Types::RDSDatabase]
    #
    # @!attribute [rw] select_sql_query
    #   The query that is used to retrieve the observation data for the
    #   `DataSource`.
    #   @return [String]
    #
    # @!attribute [rw] database_credentials
    #   The AWS Identity and Access Management (IAM) credentials that are
    #   used connect to the Amazon RDS database.
    #   @return [Types::RDSDatabaseCredentials]
    #
    # @!attribute [rw] s3_staging_location
    #   The Amazon S3 location for staging Amazon RDS data. The data
    #   retrieved from Amazon RDS using `SelectSqlQuery` is stored in this
    #   location.
    #   @return [String]
    #
    # @!attribute [rw] data_rearrangement
    #   A JSON string that represents the splitting and rearrangement
    #   processing to be applied to a `DataSource`. If the
    #   `DataRearrangement` parameter is not provided, all of the input data
    #   is used to create the `Datasource`.
    #
    #   There are multiple parameters that control what data is used to
    #   create a datasource:
    #
    #   * **`percentBegin`**
    #
    #     Use `percentBegin` to indicate the beginning of the range of the
    #     data used to create the Datasource. If you do not include
    #     `percentBegin` and `percentEnd`, Amazon ML includes all of the
    #     data when creating the datasource.
    #
    #   * **`percentEnd`**
    #
    #     Use `percentEnd` to indicate the end of the range of the data used
    #     to create the Datasource. If you do not include `percentBegin` and
    #     `percentEnd`, Amazon ML includes all of the data when creating the
    #     datasource.
    #
    #   * **`complement`**
    #
    #     The `complement` parameter instructs Amazon ML to use the data
    #     that is not included in the range of `percentBegin` to
    #     `percentEnd` to create a datasource. The `complement` parameter is
    #     useful if you need to create complementary datasources for
    #     training and evaluation. To create a complementary datasource, use
    #     the same values for `percentBegin` and `percentEnd`, along with
    #     the `complement` parameter.
    #
    #     For example, the following two datasources do not share any data,
    #     and can be used to train and evaluate a model. The first
    #     datasource has 25 percent of the data, and the second one has 75
    #     percent of the data.
    #
    #     Datasource for evaluation: `\{"splitting":\{"percentBegin":0,
    #     "percentEnd":25\}\}`
    #
    #     Datasource for training: `\{"splitting":\{"percentBegin":0,
    #     "percentEnd":25, "complement":"true"\}\}`
    #
    #   * **`strategy`**
    #
    #     To change how Amazon ML splits the data for a datasource, use the
    #     `strategy` parameter.
    #
    #     The default value for the `strategy` parameter is `sequential`,
    #     meaning that Amazon ML takes all of the data records between the
    #     `percentBegin` and `percentEnd` parameters for the datasource, in
    #     the order that the records appear in the input data.
    #
    #     The following two `DataRearrangement` lines are examples of
    #     sequentially ordered training and evaluation datasources:
    #
    #     Datasource for evaluation: `\{"splitting":\{"percentBegin":70,
    #     "percentEnd":100, "strategy":"sequential"\}\}`
    #
    #     Datasource for training: `\{"splitting":\{"percentBegin":70,
    #     "percentEnd":100, "strategy":"sequential",
    #     "complement":"true"\}\}`
    #
    #     To randomly split the input data into the proportions indicated by
    #     the percentBegin and percentEnd parameters, set the `strategy`
    #     parameter to `random` and provide a string that is used as the
    #     seed value for the random data splitting (for example, you can use
    #     the S3 path to your data as the random seed string). If you choose
    #     the random split strategy, Amazon ML assigns each row of data a
    #     pseudo-random number between 0 and 100, and then selects the rows
    #     that have an assigned number between `percentBegin` and
    #     `percentEnd`. Pseudo-random numbers are assigned using both the
    #     input seed string value and the byte offset as a seed, so changing
    #     the data results in a different split. Any existing ordering is
    #     preserved. The random splitting strategy ensures that variables in
    #     the training and evaluation data are distributed similarly. It is
    #     useful in the cases where the input data may have an implicit sort
    #     order, which would otherwise result in training and evaluation
    #     datasources containing non-similar data records.
    #
    #     The following two `DataRearrangement` lines are examples of
    #     non-sequentially ordered training and evaluation datasources:
    #
    #     Datasource for evaluation: `\{"splitting":\{"percentBegin":70,
    #     "percentEnd":100, "strategy":"random",
    #     "randomSeed"="s3://my_s3_path/bucket/file.csv"\}\}`
    #
    #     Datasource for training: `\{"splitting":\{"percentBegin":70,
    #     "percentEnd":100, "strategy":"random",
    #     "randomSeed"="s3://my_s3_path/bucket/file.csv",
    #     "complement":"true"\}\}`
    #   @return [String]
    #
    # @!attribute [rw] data_schema
    #   A JSON string that represents the schema for an Amazon RDS
    #   `DataSource`. The `DataSchema` defines the structure of the
    #   observation data in the data file(s) referenced in the `DataSource`.
    #
    #   A `DataSchema` is not required if you specify a `DataSchemaUri`
    #
    #   Define your `DataSchema` as a series of key-value pairs.
    #   `attributes` and `excludedVariableNames` have an array of key-value
    #   pairs for their value. Use the following format to define your
    #   `DataSchema`.
    #
    #   \\\{ "version": "1.0",
    #
    #   "recordAnnotationFieldName": "F1",
    #
    #   "recordWeightFieldName": "F2",
    #
    #   "targetFieldName": "F3",
    #
    #   "dataFormat": "CSV",
    #
    #   "dataFileContainsHeader": true,
    #
    #   "attributes": \[
    #
    #   \\\{ "fieldName": "F1", "fieldType": "TEXT" \\}, \\\{
    #   "fieldName": "F2", "fieldType": "NUMERIC" \\}, \\\{
    #   "fieldName": "F3", "fieldType": "CATEGORICAL" \\}, \\\{
    #   "fieldName": "F4", "fieldType": "NUMERIC" \\}, \\\{
    #   "fieldName": "F5", "fieldType": "CATEGORICAL" \\}, \\\{
    #   "fieldName": "F6", "fieldType": "TEXT" \\}, \\\{
    #   "fieldName": "F7", "fieldType": "WEIGHTED\_INT\_SEQUENCE"
    #   \\}, \\\{ "fieldName": "F8", "fieldType":
    #   "WEIGHTED\_STRING\_SEQUENCE" \\} \],
    #
    #   "excludedVariableNames": \[ "F6" \] \\}
    #
    #    <?oxy\_insert\_end>
    #   @return [String]
    #
    # @!attribute [rw] data_schema_uri
    #   The Amazon S3 location of the `DataSchema`.
    #   @return [String]
    #
    # @!attribute [rw] resource_role
    #   The role (DataPipelineDefaultResourceRole) assumed by an Amazon
    #   Elastic Compute Cloud (Amazon EC2) instance to carry out the copy
    #   operation from Amazon RDS to an Amazon S3 task. For more
    #   information, see [Role templates][1] for data pipelines.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html
    #   @return [String]
    #
    # @!attribute [rw] service_role
    #   The role (DataPipelineDefaultRole) assumed by AWS Data Pipeline
    #   service to monitor the progress of the copy task from Amazon RDS to
    #   Amazon S3. For more information, see [Role templates][1] for data
    #   pipelines.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The subnet ID to be used to access a VPC-based RDS DB instance. This
    #   attribute is used by Data Pipeline to carry out the copy task from
    #   Amazon RDS to Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The security group IDs to be used to access a VPC-based RDS DB
    #   instance. Ensure that there are appropriate ingress rules set up to
    #   allow access to the RDS DB instance. This attribute is used by Data
    #   Pipeline to carry out the copy operation from Amazon RDS to an
    #   Amazon S3 task.
    #   @return [Array<String>]
    #
    class RDSDataSpec < Struct.new(
      :database_information,
      :select_sql_query,
      :database_credentials,
      :s3_staging_location,
      :data_rearrangement,
      :data_schema,
      :data_schema_uri,
      :resource_role,
      :service_role,
      :subnet_id,
      :security_group_ids)
      include Aws::Structure
    end

    # The database details of an Amazon RDS database.
    #
    # @note When making an API call, you may pass RDSDatabase
    #   data as a hash:
    #
    #       {
    #         instance_identifier: "RDSInstanceIdentifier", # required
    #         database_name: "RDSDatabaseName", # required
    #       }
    #
    # @!attribute [rw] instance_identifier
    #   The ID of an RDS DB instance.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of a database hosted on an RDS DB instance.
    #   @return [String]
    #
    class RDSDatabase < Struct.new(
      :instance_identifier,
      :database_name)
      include Aws::Structure
    end

    # The database credentials to connect to a database on an RDS DB
    # instance.
    #
    # @note When making an API call, you may pass RDSDatabaseCredentials
    #   data as a hash:
    #
    #       {
    #         username: "RDSDatabaseUsername", # required
    #         password: "RDSDatabasePassword", # required
    #       }
    #
    # @!attribute [rw] username
    #   The username to be used by Amazon ML to connect to database on an
    #   Amazon RDS instance. The username should have sufficient permissions
    #   to execute an `RDSSelectSqlQuery` query.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password to be used by Amazon ML to connect to a database on an
    #   RDS DB instance. The password should have sufficient permissions to
    #   execute the `RDSSelectQuery` query.
    #   @return [String]
    #
    class RDSDatabaseCredentials < Struct.new(
      :username,
      :password)
      include Aws::Structure
    end

    # The datasource details that are specific to Amazon RDS.
    #
    # @!attribute [rw] database
    #   The database details required to connect to an Amazon RDS.
    #   @return [Types::RDSDatabase]
    #
    # @!attribute [rw] database_user_name
    #   The username to be used by Amazon ML to connect to database on an
    #   Amazon RDS instance. The username should have sufficient permissions
    #   to execute an `RDSSelectSqlQuery` query.
    #   @return [String]
    #
    # @!attribute [rw] select_sql_query
    #   The SQL query that is supplied during CreateDataSourceFromRDS.
    #   Returns only if `Verbose` is true in `GetDataSourceInput`.
    #   @return [String]
    #
    # @!attribute [rw] resource_role
    #   The role (DataPipelineDefaultResourceRole) assumed by an Amazon EC2
    #   instance to carry out the copy task from Amazon RDS to Amazon S3.
    #   For more information, see [Role templates][1] for data pipelines.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html
    #   @return [String]
    #
    # @!attribute [rw] service_role
    #   The role (DataPipelineDefaultRole) assumed by the Data Pipeline
    #   service to monitor the progress of the copy task from Amazon RDS to
    #   Amazon S3. For more information, see [Role templates][1] for data
    #   pipelines.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html
    #   @return [String]
    #
    # @!attribute [rw] data_pipeline_id
    #   The ID of the Data Pipeline instance that is used to carry to copy
    #   data from Amazon RDS to Amazon S3. You can use the ID to find
    #   details about the instance in the Data Pipeline console.
    #   @return [String]
    #
    class RDSMetadata < Struct.new(
      :database,
      :database_user_name,
      :select_sql_query,
      :resource_role,
      :service_role,
      :data_pipeline_id)
      include Aws::Structure
    end

    # Describes the real-time endpoint information for an `MLModel`.
    #
    # @!attribute [rw] peak_requests_per_second
    #   The maximum processing rate for the real-time endpoint for
    #   `MLModel`, measured in incoming requests per second.
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   The time that the request to create the real-time endpoint for the
    #   `MLModel` was received. The time is expressed in epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] endpoint_url
    #   The URI that specifies where to send real-time prediction requests
    #   for the `MLModel`.
    #
    #   <note markdown="1"><title>Note</title> The application must wait until the real-time endpoint is ready
    #   before using this URI.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] endpoint_status
    #   The current status of the real-time endpoint for the `MLModel`. This
    #   element can have one of the following values:
    #
    #   * `NONE` - Endpoint does not exist or was previously deleted.
    #   * `READY` - Endpoint is ready to be used for real-time predictions.
    #   * `UPDATING` - Updating/creating the endpoint.
    #   @return [String]
    #
    class RealtimeEndpointInfo < Struct.new(
      :peak_requests_per_second,
      :created_at,
      :endpoint_url,
      :endpoint_status)
      include Aws::Structure
    end

    # Describes the data specification of an Amazon Redshift `DataSource`.
    #
    # @note When making an API call, you may pass RedshiftDataSpec
    #   data as a hash:
    #
    #       {
    #         database_information: { # required
    #           database_name: "RedshiftDatabaseName", # required
    #           cluster_identifier: "RedshiftClusterIdentifier", # required
    #         },
    #         select_sql_query: "RedshiftSelectSqlQuery", # required
    #         database_credentials: { # required
    #           username: "RedshiftDatabaseUsername", # required
    #           password: "RedshiftDatabasePassword", # required
    #         },
    #         s3_staging_location: "S3Url", # required
    #         data_rearrangement: "DataRearrangement",
    #         data_schema: "DataSchema",
    #         data_schema_uri: "S3Url",
    #       }
    #
    # @!attribute [rw] database_information
    #   Describes the `DatabaseName` and `ClusterIdentifier` for an Amazon
    #   Redshift `DataSource`.
    #   @return [Types::RedshiftDatabase]
    #
    # @!attribute [rw] select_sql_query
    #   Describes the SQL Query to execute on an Amazon Redshift database
    #   for an Amazon Redshift `DataSource`.
    #   @return [String]
    #
    # @!attribute [rw] database_credentials
    #   Describes AWS Identity and Access Management (IAM) credentials that
    #   are used connect to the Amazon Redshift database.
    #   @return [Types::RedshiftDatabaseCredentials]
    #
    # @!attribute [rw] s3_staging_location
    #   Describes an Amazon S3 location to store the result set of the
    #   `SelectSqlQuery` query.
    #   @return [String]
    #
    # @!attribute [rw] data_rearrangement
    #   A JSON string that represents the splitting and rearrangement
    #   processing to be applied to a `DataSource`. If the
    #   `DataRearrangement` parameter is not provided, all of the input data
    #   is used to create the `Datasource`.
    #
    #   There are multiple parameters that control what data is used to
    #   create a datasource:
    #
    #   * **`percentBegin`**
    #
    #     Use `percentBegin` to indicate the beginning of the range of the
    #     data used to create the Datasource. If you do not include
    #     `percentBegin` and `percentEnd`, Amazon ML includes all of the
    #     data when creating the datasource.
    #
    #   * **`percentEnd`**
    #
    #     Use `percentEnd` to indicate the end of the range of the data used
    #     to create the Datasource. If you do not include `percentBegin` and
    #     `percentEnd`, Amazon ML includes all of the data when creating the
    #     datasource.
    #
    #   * **`complement`**
    #
    #     The `complement` parameter instructs Amazon ML to use the data
    #     that is not included in the range of `percentBegin` to
    #     `percentEnd` to create a datasource. The `complement` parameter is
    #     useful if you need to create complementary datasources for
    #     training and evaluation. To create a complementary datasource, use
    #     the same values for `percentBegin` and `percentEnd`, along with
    #     the `complement` parameter.
    #
    #     For example, the following two datasources do not share any data,
    #     and can be used to train and evaluate a model. The first
    #     datasource has 25 percent of the data, and the second one has 75
    #     percent of the data.
    #
    #     Datasource for evaluation: `\{"splitting":\{"percentBegin":0,
    #     "percentEnd":25\}\}`
    #
    #     Datasource for training: `\{"splitting":\{"percentBegin":0,
    #     "percentEnd":25, "complement":"true"\}\}`
    #
    #   * **`strategy`**
    #
    #     To change how Amazon ML splits the data for a datasource, use the
    #     `strategy` parameter.
    #
    #     The default value for the `strategy` parameter is `sequential`,
    #     meaning that Amazon ML takes all of the data records between the
    #     `percentBegin` and `percentEnd` parameters for the datasource, in
    #     the order that the records appear in the input data.
    #
    #     The following two `DataRearrangement` lines are examples of
    #     sequentially ordered training and evaluation datasources:
    #
    #     Datasource for evaluation: `\{"splitting":\{"percentBegin":70,
    #     "percentEnd":100, "strategy":"sequential"\}\}`
    #
    #     Datasource for training: `\{"splitting":\{"percentBegin":70,
    #     "percentEnd":100, "strategy":"sequential",
    #     "complement":"true"\}\}`
    #
    #     To randomly split the input data into the proportions indicated by
    #     the percentBegin and percentEnd parameters, set the `strategy`
    #     parameter to `random` and provide a string that is used as the
    #     seed value for the random data splitting (for example, you can use
    #     the S3 path to your data as the random seed string). If you choose
    #     the random split strategy, Amazon ML assigns each row of data a
    #     pseudo-random number between 0 and 100, and then selects the rows
    #     that have an assigned number between `percentBegin` and
    #     `percentEnd`. Pseudo-random numbers are assigned using both the
    #     input seed string value and the byte offset as a seed, so changing
    #     the data results in a different split. Any existing ordering is
    #     preserved. The random splitting strategy ensures that variables in
    #     the training and evaluation data are distributed similarly. It is
    #     useful in the cases where the input data may have an implicit sort
    #     order, which would otherwise result in training and evaluation
    #     datasources containing non-similar data records.
    #
    #     The following two `DataRearrangement` lines are examples of
    #     non-sequentially ordered training and evaluation datasources:
    #
    #     Datasource for evaluation: `\{"splitting":\{"percentBegin":70,
    #     "percentEnd":100, "strategy":"random",
    #     "randomSeed"="s3://my_s3_path/bucket/file.csv"\}\}`
    #
    #     Datasource for training: `\{"splitting":\{"percentBegin":70,
    #     "percentEnd":100, "strategy":"random",
    #     "randomSeed"="s3://my_s3_path/bucket/file.csv",
    #     "complement":"true"\}\}`
    #   @return [String]
    #
    # @!attribute [rw] data_schema
    #   A JSON string that represents the schema for an Amazon Redshift
    #   `DataSource`. The `DataSchema` defines the structure of the
    #   observation data in the data file(s) referenced in the `DataSource`.
    #
    #   A `DataSchema` is not required if you specify a `DataSchemaUri`.
    #
    #   Define your `DataSchema` as a series of key-value pairs.
    #   `attributes` and `excludedVariableNames` have an array of key-value
    #   pairs for their value. Use the following format to define your
    #   `DataSchema`.
    #
    #   \\\{ "version": "1.0",
    #
    #   "recordAnnotationFieldName": "F1",
    #
    #   "recordWeightFieldName": "F2",
    #
    #   "targetFieldName": "F3",
    #
    #   "dataFormat": "CSV",
    #
    #   "dataFileContainsHeader": true,
    #
    #   "attributes": \[
    #
    #   \\\{ "fieldName": "F1", "fieldType": "TEXT" \\}, \\\{
    #   "fieldName": "F2", "fieldType": "NUMERIC" \\}, \\\{
    #   "fieldName": "F3", "fieldType": "CATEGORICAL" \\}, \\\{
    #   "fieldName": "F4", "fieldType": "NUMERIC" \\}, \\\{
    #   "fieldName": "F5", "fieldType": "CATEGORICAL" \\}, \\\{
    #   "fieldName": "F6", "fieldType": "TEXT" \\}, \\\{
    #   "fieldName": "F7", "fieldType": "WEIGHTED\_INT\_SEQUENCE"
    #   \\}, \\\{ "fieldName": "F8", "fieldType":
    #   "WEIGHTED\_STRING\_SEQUENCE" \\} \],
    #
    #   "excludedVariableNames": \[ "F6" \] \\}
    #   @return [String]
    #
    # @!attribute [rw] data_schema_uri
    #   Describes the schema location for an Amazon Redshift `DataSource`.
    #   @return [String]
    #
    class RedshiftDataSpec < Struct.new(
      :database_information,
      :select_sql_query,
      :database_credentials,
      :s3_staging_location,
      :data_rearrangement,
      :data_schema,
      :data_schema_uri)
      include Aws::Structure
    end

    # Describes the database details required to connect to an Amazon
    # Redshift database.
    #
    # @note When making an API call, you may pass RedshiftDatabase
    #   data as a hash:
    #
    #       {
    #         database_name: "RedshiftDatabaseName", # required
    #         cluster_identifier: "RedshiftClusterIdentifier", # required
    #       }
    #
    # @!attribute [rw] database_name
    #   The name of a database hosted on an Amazon Redshift cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_identifier
    #   The ID of an Amazon Redshift cluster.
    #   @return [String]
    #
    class RedshiftDatabase < Struct.new(
      :database_name,
      :cluster_identifier)
      include Aws::Structure
    end

    # Describes the database credentials for connecting to a database on an
    # Amazon Redshift cluster.
    #
    # @note When making an API call, you may pass RedshiftDatabaseCredentials
    #   data as a hash:
    #
    #       {
    #         username: "RedshiftDatabaseUsername", # required
    #         password: "RedshiftDatabasePassword", # required
    #       }
    #
    # @!attribute [rw] username
    #   A username to be used by Amazon Machine Learning (Amazon ML)to
    #   connect to a database on an Amazon Redshift cluster. The username
    #   should have sufficient permissions to execute the
    #   `RedshiftSelectSqlQuery` query. The username should be valid for an
    #   Amazon Redshift [USER][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html
    #   @return [String]
    #
    # @!attribute [rw] password
    #   A password to be used by Amazon ML to connect to a database on an
    #   Amazon Redshift cluster. The password should have sufficient
    #   permissions to execute a `RedshiftSelectSqlQuery` query. The
    #   password should be valid for an Amazon Redshift [USER][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html
    #   @return [String]
    #
    class RedshiftDatabaseCredentials < Struct.new(
      :username,
      :password)
      include Aws::Structure
    end

    # Describes the `DataSource` details specific to Amazon Redshift.
    #
    # @!attribute [rw] redshift_database
    #   Describes the database details required to connect to an Amazon
    #   Redshift database.
    #   @return [Types::RedshiftDatabase]
    #
    # @!attribute [rw] database_user_name
    #   A username to be used by Amazon Machine Learning (Amazon ML)to
    #   connect to a database on an Amazon Redshift cluster. The username
    #   should have sufficient permissions to execute the
    #   `RedshiftSelectSqlQuery` query. The username should be valid for an
    #   Amazon Redshift [USER][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html
    #   @return [String]
    #
    # @!attribute [rw] select_sql_query
    #   The SQL query that is specified during CreateDataSourceFromRedshift.
    #   Returns only if `Verbose` is true in GetDataSourceInput.
    #   @return [String]
    #
    class RedshiftMetadata < Struct.new(
      :redshift_database,
      :database_user_name,
      :select_sql_query)
      include Aws::Structure
    end

    # Describes the data specification of a `DataSource`.
    #
    # @note When making an API call, you may pass S3DataSpec
    #   data as a hash:
    #
    #       {
    #         data_location_s3: "S3Url", # required
    #         data_rearrangement: "DataRearrangement",
    #         data_schema: "DataSchema",
    #         data_schema_location_s3: "S3Url",
    #       }
    #
    # @!attribute [rw] data_location_s3
    #   The location of the data file(s) used by a `DataSource`. The URI
    #   specifies a data file or an Amazon Simple Storage Service (Amazon
    #   S3) directory or bucket containing data files.
    #   @return [String]
    #
    # @!attribute [rw] data_rearrangement
    #   A JSON string that represents the splitting and rearrangement
    #   processing to be applied to a `DataSource`. If the
    #   `DataRearrangement` parameter is not provided, all of the input data
    #   is used to create the `Datasource`.
    #
    #   There are multiple parameters that control what data is used to
    #   create a datasource:
    #
    #   * **`percentBegin`**
    #
    #     Use `percentBegin` to indicate the beginning of the range of the
    #     data used to create the Datasource. If you do not include
    #     `percentBegin` and `percentEnd`, Amazon ML includes all of the
    #     data when creating the datasource.
    #
    #   * **`percentEnd`**
    #
    #     Use `percentEnd` to indicate the end of the range of the data used
    #     to create the Datasource. If you do not include `percentBegin` and
    #     `percentEnd`, Amazon ML includes all of the data when creating the
    #     datasource.
    #
    #   * **`complement`**
    #
    #     The `complement` parameter instructs Amazon ML to use the data
    #     that is not included in the range of `percentBegin` to
    #     `percentEnd` to create a datasource. The `complement` parameter is
    #     useful if you need to create complementary datasources for
    #     training and evaluation. To create a complementary datasource, use
    #     the same values for `percentBegin` and `percentEnd`, along with
    #     the `complement` parameter.
    #
    #     For example, the following two datasources do not share any data,
    #     and can be used to train and evaluate a model. The first
    #     datasource has 25 percent of the data, and the second one has 75
    #     percent of the data.
    #
    #     Datasource for evaluation: `\{"splitting":\{"percentBegin":0,
    #     "percentEnd":25\}\}`
    #
    #     Datasource for training: `\{"splitting":\{"percentBegin":0,
    #     "percentEnd":25, "complement":"true"\}\}`
    #
    #   * **`strategy`**
    #
    #     To change how Amazon ML splits the data for a datasource, use the
    #     `strategy` parameter.
    #
    #     The default value for the `strategy` parameter is `sequential`,
    #     meaning that Amazon ML takes all of the data records between the
    #     `percentBegin` and `percentEnd` parameters for the datasource, in
    #     the order that the records appear in the input data.
    #
    #     The following two `DataRearrangement` lines are examples of
    #     sequentially ordered training and evaluation datasources:
    #
    #     Datasource for evaluation: `\{"splitting":\{"percentBegin":70,
    #     "percentEnd":100, "strategy":"sequential"\}\}`
    #
    #     Datasource for training: `\{"splitting":\{"percentBegin":70,
    #     "percentEnd":100, "strategy":"sequential",
    #     "complement":"true"\}\}`
    #
    #     To randomly split the input data into the proportions indicated by
    #     the percentBegin and percentEnd parameters, set the `strategy`
    #     parameter to `random` and provide a string that is used as the
    #     seed value for the random data splitting (for example, you can use
    #     the S3 path to your data as the random seed string). If you choose
    #     the random split strategy, Amazon ML assigns each row of data a
    #     pseudo-random number between 0 and 100, and then selects the rows
    #     that have an assigned number between `percentBegin` and
    #     `percentEnd`. Pseudo-random numbers are assigned using both the
    #     input seed string value and the byte offset as a seed, so changing
    #     the data results in a different split. Any existing ordering is
    #     preserved. The random splitting strategy ensures that variables in
    #     the training and evaluation data are distributed similarly. It is
    #     useful in the cases where the input data may have an implicit sort
    #     order, which would otherwise result in training and evaluation
    #     datasources containing non-similar data records.
    #
    #     The following two `DataRearrangement` lines are examples of
    #     non-sequentially ordered training and evaluation datasources:
    #
    #     Datasource for evaluation: `\{"splitting":\{"percentBegin":70,
    #     "percentEnd":100, "strategy":"random",
    #     "randomSeed"="s3://my_s3_path/bucket/file.csv"\}\}`
    #
    #     Datasource for training: `\{"splitting":\{"percentBegin":70,
    #     "percentEnd":100, "strategy":"random",
    #     "randomSeed"="s3://my_s3_path/bucket/file.csv",
    #     "complement":"true"\}\}`
    #   @return [String]
    #
    # @!attribute [rw] data_schema
    #   A JSON string that represents the schema for an Amazon S3
    #   `DataSource`. The `DataSchema` defines the structure of the
    #   observation data in the data file(s) referenced in the `DataSource`.
    #
    #   You must provide either the `DataSchema` or the
    #   `DataSchemaLocationS3`.
    #
    #   Define your `DataSchema` as a series of key-value pairs.
    #   `attributes` and `excludedVariableNames` have an array of key-value
    #   pairs for their value. Use the following format to define your
    #   `DataSchema`.
    #
    #   \\\{ "version": "1.0",
    #
    #   "recordAnnotationFieldName": "F1",
    #
    #   "recordWeightFieldName": "F2",
    #
    #   "targetFieldName": "F3",
    #
    #   "dataFormat": "CSV",
    #
    #   "dataFileContainsHeader": true,
    #
    #   "attributes": \[
    #
    #   \\\{ "fieldName": "F1", "fieldType": "TEXT" \\}, \\\{
    #   "fieldName": "F2", "fieldType": "NUMERIC" \\}, \\\{
    #   "fieldName": "F3", "fieldType": "CATEGORICAL" \\}, \\\{
    #   "fieldName": "F4", "fieldType": "NUMERIC" \\}, \\\{
    #   "fieldName": "F5", "fieldType": "CATEGORICAL" \\}, \\\{
    #   "fieldName": "F6", "fieldType": "TEXT" \\}, \\\{
    #   "fieldName": "F7", "fieldType": "WEIGHTED\_INT\_SEQUENCE"
    #   \\}, \\\{ "fieldName": "F8", "fieldType":
    #   "WEIGHTED\_STRING\_SEQUENCE" \\} \],
    #
    #   "excludedVariableNames": \[ "F6" \] \\}
    #
    #    <?oxy\_insert\_end>
    #   @return [String]
    #
    # @!attribute [rw] data_schema_location_s3
    #   Describes the schema location in Amazon S3. You must provide either
    #   the `DataSchema` or the `DataSchemaLocationS3`.
    #   @return [String]
    #
    class S3DataSpec < Struct.new(
      :data_location_s3,
      :data_rearrangement,
      :data_schema,
      :data_schema_location_s3)
      include Aws::Structure
    end

    # A custom key-value pair associated with an ML object, such as an ML
    # model.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       }
    #
    # @!attribute [rw] key
    #   A unique identifier for the tag. Valid characters include Unicode
    #   letters, digits, white space, \_, ., /, =, +, -, %, and @.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   An optional string, typically used to describe or define the tag.
    #   Valid characters include Unicode letters, digits, white space, \_,
    #   ., /, =, +, -, %, and @.
    #   @return [String]
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateBatchPredictionInput
    #   data as a hash:
    #
    #       {
    #         batch_prediction_id: "EntityId", # required
    #         batch_prediction_name: "EntityName", # required
    #       }
    #
    # @!attribute [rw] batch_prediction_id
    #   The ID assigned to the `BatchPrediction` during creation.
    #   @return [String]
    #
    # @!attribute [rw] batch_prediction_name
    #   A new user-supplied name or description of the `BatchPrediction`.
    #   @return [String]
    #
    class UpdateBatchPredictionInput < Struct.new(
      :batch_prediction_id,
      :batch_prediction_name)
      include Aws::Structure
    end

    # Represents the output of an `UpdateBatchPrediction` operation.
    #
    # You can see the updated content by using the `GetBatchPrediction`
    # operation.
    #
    # @!attribute [rw] batch_prediction_id
    #   The ID assigned to the `BatchPrediction` during creation. This value
    #   should be identical to the value of the `BatchPredictionId` in the
    #   request.
    #   @return [String]
    #
    class UpdateBatchPredictionOutput < Struct.new(
      :batch_prediction_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDataSourceInput
    #   data as a hash:
    #
    #       {
    #         data_source_id: "EntityId", # required
    #         data_source_name: "EntityName", # required
    #       }
    #
    # @!attribute [rw] data_source_id
    #   The ID assigned to the `DataSource` during creation.
    #   @return [String]
    #
    # @!attribute [rw] data_source_name
    #   A new user-supplied name or description of the `DataSource` that
    #   will replace the current description.
    #   @return [String]
    #
    class UpdateDataSourceInput < Struct.new(
      :data_source_id,
      :data_source_name)
      include Aws::Structure
    end

    # Represents the output of an `UpdateDataSource` operation.
    #
    # You can see the updated content by using the `GetBatchPrediction`
    # operation.
    #
    # @!attribute [rw] data_source_id
    #   The ID assigned to the `DataSource` during creation. This value
    #   should be identical to the value of the `DataSourceID` in the
    #   request.
    #   @return [String]
    #
    class UpdateDataSourceOutput < Struct.new(
      :data_source_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateEvaluationInput
    #   data as a hash:
    #
    #       {
    #         evaluation_id: "EntityId", # required
    #         evaluation_name: "EntityName", # required
    #       }
    #
    # @!attribute [rw] evaluation_id
    #   The ID assigned to the `Evaluation` during creation.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_name
    #   A new user-supplied name or description of the `Evaluation` that
    #   will replace the current content.
    #   @return [String]
    #
    class UpdateEvaluationInput < Struct.new(
      :evaluation_id,
      :evaluation_name)
      include Aws::Structure
    end

    # Represents the output of an `UpdateEvaluation` operation.
    #
    # You can see the updated content by using the `GetEvaluation`
    # operation.
    #
    # @!attribute [rw] evaluation_id
    #   The ID assigned to the `Evaluation` during creation. This value
    #   should be identical to the value of the `Evaluation` in the request.
    #   @return [String]
    #
    class UpdateEvaluationOutput < Struct.new(
      :evaluation_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateMLModelInput
    #   data as a hash:
    #
    #       {
    #         ml_model_id: "EntityId", # required
    #         ml_model_name: "EntityName",
    #         score_threshold: 1.0,
    #       }
    #
    # @!attribute [rw] ml_model_id
    #   The ID assigned to the `MLModel` during creation.
    #   @return [String]
    #
    # @!attribute [rw] ml_model_name
    #   A user-supplied name or description of the `MLModel`.
    #   @return [String]
    #
    # @!attribute [rw] score_threshold
    #   The `ScoreThreshold` used in binary classification `MLModel` that
    #   marks the boundary between a positive prediction and a negative
    #   prediction.
    #
    #   Output values greater than or equal to the `ScoreThreshold` receive
    #   a positive result from the `MLModel`, such as `true`. Output values
    #   less than the `ScoreThreshold` receive a negative response from the
    #   `MLModel`, such as `false`.
    #   @return [Float]
    #
    class UpdateMLModelInput < Struct.new(
      :ml_model_id,
      :ml_model_name,
      :score_threshold)
      include Aws::Structure
    end

    # Represents the output of an `UpdateMLModel` operation.
    #
    # You can see the updated content by using the `GetMLModel` operation.
    #
    # @!attribute [rw] ml_model_id
    #   The ID assigned to the `MLModel` during creation. This value should
    #   be identical to the value of the `MLModelID` in the request.
    #   @return [String]
    #
    class UpdateMLModelOutput < Struct.new(
      :ml_model_id)
      include Aws::Structure
    end

  end
end
