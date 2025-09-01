# frozen_string_literal: true

# This is generated code!

module Aws::MachineLearning
  # This module contains the types returned by client operations.
  module Types

    # @!attribute tags
    #   <p>The key-value pairs to use to create tags. If you specify a key without specifying a value, Amazon ML creates a tag with the specified key and a value of null.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute resource_id
    #   <p>The ID of the ML object to tag. For example, <code>exampleModelId</code>.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the ML object to tag.</p>
    #   @return [String]
    class AddTagsInput < Struct.new(
      :tags,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Amazon ML returns the following elements.</p>
    # @!attribute resource_id
    #   <p>The ID of the ML object that was tagged.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the ML object that was tagged.</p>
    #   @return [String]
    class AddTagsOutput < Struct.new(
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The function used to train an <code>MLModel</code>. Training choices supported by Amazon ML include the following:</p>
    #         <ul>
    #             <li>
    #                <p>
    #                   <code>SGD</code> - Stochastic Gradient Descent.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RandomForest</code> - Random forest of decision trees.</p>
    #             </li>
    #          </ul>
    module Algorithm
      SGD = 'sgd'
    end

    # <p> Represents the output of a <code>GetBatchPrediction</code> operation.</p>
    #         <p> The content consists of the detailed metadata, the status, and the data file information of a
    #             <code>Batch Prediction</code>.</p>
    # @!attribute batch_prediction_id
    #   <p>The ID assigned to the <code>BatchPrediction</code> at creation. This value should be identical to the value of the <code>BatchPredictionID</code> 
    #               in the request.
    #           </p>
    #   @return [String]
    # @!attribute ml_model_id
    #   <p>The ID of the <code>MLModel</code> that generated predictions for the <code>BatchPrediction</code> request.</p>
    #   @return [String]
    # @!attribute batch_prediction_data_source_id
    #   <p>The ID of the <code>DataSource</code> that points to the group of observations to predict.</p>
    #   @return [String]
    # @!attribute input_data_location_s3
    #   <p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>
    #   @return [String]
    # @!attribute created_by_iam_user
    #   <p>The AWS user account that invoked the <code>BatchPrediction</code>. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time that the <code>BatchPrediction</code> was created. The time is expressed in epoch time.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The time of the most recent edit to the <code>BatchPrediction</code>. The time is expressed in epoch time.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>A user-supplied name or description of the <code>BatchPrediction</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the <code>BatchPrediction</code>. This element can have one of the following values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> - Amazon Machine Learning (Amazon ML) submitted a request to generate predictions for a batch of observations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INPROGRESS</code> - The process is underway.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - The request to perform a batch prediction did not run to completion. It is not usable.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code> - The batch prediction process completed successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code> - The <code>BatchPrediction</code> is marked as deleted. It is not usable.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute output_uri
    #   <p>The location of an Amazon S3 bucket or directory to receive the operation results. The following substrings are not allowed in the <code>s3 key</code> portion of the <code>outputURI</code> field: ':', '//', '/./', '/../'.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A description of the most recent details about processing the batch prediction request.</p>
    #   @return [String]
    # @!attribute compute_time
    #   <p>Long integer type that is a 64-bit signed number.</p>
    #   @return [Integer]
    # @!attribute finished_at
    #   <p>A timestamp represented in epoch time.</p>
    #   @return [Time]
    # @!attribute started_at
    #   <p>A timestamp represented in epoch time.</p>
    #   @return [Time]
    # @!attribute total_record_count
    #   <p>Long integer type that is a 64-bit signed number.</p>
    #   @return [Integer]
    # @!attribute invalid_record_count
    #   <p>Long integer type that is a 64-bit signed number.</p>
    #   @return [Integer]
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
      :invalid_record_count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A list of the variables to use in searching or filtering <code>BatchPrediction</code>.</p>
    #         <ul>
    #             <li>
    #                <p>
    #                   <code>CreatedAt</code> - Sets the search criteria to <code>BatchPrediction</code> creation date.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Status</code> - Sets the search criteria to <code>BatchPrediction</code> status.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Name</code> - Sets the search criteria to the contents of <code>BatchPrediction</code> 
    #                   <code>Name</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>BatchPrediction</code> creation.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>MLModelId</code> - Sets the search criteria to the <code>MLModel</code> used in the <code>BatchPrediction</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used in the <code>BatchPrediction</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DataURI</code> - Sets the search criteria to the data file(s) used in the <code>BatchPrediction</code>. The URL can 
    #                 identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</p>
    #             </li>
    #          </ul>
    module BatchPredictionFilterVariable
      CREATED_AT = 'CreatedAt'
      LAST_UPDATED_AT = 'LastUpdatedAt'
      STATUS = 'Status'
      NAME = 'Name'
      IAM_USER = 'IAMUser'
      ML_MODEL_ID = 'MLModelId'
      DATASOURCE_ID = 'DataSourceId'
      DATA_URI = 'DataURI'
    end

    # @!attribute batch_prediction_id
    #   <p>A user-supplied ID that uniquely identifies the
    #                   <code>BatchPrediction</code>.</p>
    #   @return [String]
    # @!attribute batch_prediction_name
    #   <p>A user-supplied name or description of the <code>BatchPrediction</code>. <code>BatchPredictionName</code> can only use the UTF-8 character set.</p>
    #   @return [String]
    # @!attribute ml_model_id
    #   <p>The ID of the <code>MLModel</code> that will generate predictions for the group of observations. </p>
    #   @return [String]
    # @!attribute batch_prediction_data_source_id
    #   <p>The ID of the <code>DataSource</code> that points to the group of observations to predict.</p>
    #   @return [String]
    # @!attribute output_uri
    #   <p>The location of an Amazon Simple Storage Service (Amazon S3) bucket or directory to store the batch prediction results. The following substrings are not allowed in the <code>s3 key</code> portion of the <code>outputURI</code> field: ':', '//', '/./', '/../'.</p> 
    #           <p>Amazon ML needs permissions to store and retrieve the logs on your behalf. For information about how to set permissions, see the <a href="https://docs.aws.amazon.com/machine-learning/latest/dg">Amazon Machine Learning Developer Guide</a>.</p>
    #   @return [String]
    class CreateBatchPredictionInput < Struct.new(
      :batch_prediction_id,
      :batch_prediction_name,
      :ml_model_id,
      :batch_prediction_data_source_id,
      :output_uri,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Represents the output of a <code>CreateBatchPrediction</code> operation, and is an acknowledgement that Amazon ML received the request.</p>
    #          <p>The <code>CreateBatchPrediction</code> operation is asynchronous. You can poll for status updates by using the <code>>GetBatchPrediction</code> 
    #             operation and checking the <code>Status</code> parameter of the result.
    #         </p>
    # @!attribute batch_prediction_id
    #   <p>A user-supplied ID that uniquely identifies the <code>BatchPrediction</code>. This value is identical to the value of the 
    #               <code>BatchPredictionId</code> in the request.</p>
    #   @return [String]
    class CreateBatchPredictionOutput < Struct.new(
      :batch_prediction_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_source_id
    #   <p>A user-supplied ID that uniquely identifies the <code>DataSource</code>. Typically, an Amazon Resource Number (ARN) 
    #               becomes the ID for a <code>DataSource</code>.</p>
    #   @return [String]
    # @!attribute data_source_name
    #   <p>A user-supplied name or description of the <code>DataSource</code>.</p>
    #   @return [String]
    # @!attribute rds_data
    #   <p>The data specification of an Amazon RDS <code>DataSource</code>:</p>
    #           <ul>
    #               <li>
    #                  <p>DatabaseInformation -</p>
    #                   <ul>
    #                     <li>
    #                        <p>
    #                           <code>DatabaseName</code> - The name of the Amazon RDS database.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>InstanceIdentifier </code> - A unique identifier for the Amazon RDS database instance.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>DatabaseCredentials - AWS Identity and Access Management (IAM) credentials that are used to connect to the Amazon RDS database.</p>
    #               </li>
    #               <li>
    #                  <p>ResourceRole - A role (DataPipelineDefaultResourceRole) assumed by an EC2 instance to carry out the copy task from Amazon RDS to Amazon 
    #   			Simple Storage Service (Amazon S3). For more information, see <a href="https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role templates</a> for data pipelines.</p>
    #               </li>
    #               <li>
    #                  <p>ServiceRole - A role (DataPipelineDefaultRole) assumed by the AWS Data Pipeline service to monitor the progress of the copy task from Amazon RDS
    #   			to Amazon S3. For more information, see <a href="https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role templates</a> for data pipelines.</p>
    #               </li>
    #               <li>
    #                  <p>SecurityInfo - The security information to use to access an RDS DB instance. You need to set up appropriate ingress rules for the security entity IDs provided to allow access to the Amazon RDS instance. Specify a [<code>SubnetId</code>, <code>SecurityGroupIds</code>] pair for a VPC-based RDS DB instance.</p>
    #               </li>
    #               <li>
    #                  <p>SelectSqlQuery - A query that is used to retrieve the observation data for the <code>Datasource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>S3StagingLocation - The Amazon S3 location for staging Amazon RDS data. The data retrieved from Amazon RDS using <code>SelectSqlQuery</code> is stored in this location.</p>
    #               </li>
    #               <li>
    #                  <p>DataSchemaUri - The Amazon S3 location of the <code>DataSchema</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DataSchema - A JSON string representing the schema. This is not required if <code>DataSchemaUri</code> is specified. </p>
    #               </li>
    #               <li>
    #                  <p>DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the <code>Datasource</code>. </p>
    #                  <p> Sample - 
    #               <code> "{\"splitting\":{\"percentBegin\":10,\"percentEnd\":60}}"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Types::RDSDataSpec]
    # @!attribute role_arn
    #   <p>The role that Amazon ML assumes on behalf of the user to create and activate a data
    #             pipeline in the user's account and copy data using the <code>SelectSqlQuery</code> query from Amazon RDS to Amazon S3.</p>
    #           <p></p>
    #   @return [String]
    # @!attribute compute_statistics
    #   <p>The compute statistics for a <code>DataSource</code>. The statistics are generated from the observation data referenced by 
    #               a <code>DataSource</code>. Amazon ML uses the statistics internally during <code>MLModel</code> training.
    #               This parameter must be set to <code>true</code> if the <code></code>DataSource<code></code> needs to be used for <code>MLModel</code> training.
    #               </p>
    #   @return [Boolean]
    class CreateDataSourceFromRDSInput < Struct.new(
      :data_source_id,
      :data_source_name,
      :rds_data,
      :role_arn,
      :compute_statistics,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Represents the output of a <code>CreateDataSourceFromRDS</code> operation, and is an acknowledgement that Amazon ML received the request.</p>
    #          <p>The <code>CreateDataSourceFromRDS</code>> operation is asynchronous. You can poll for updates by using
    #         the <code>GetBatchPrediction</code> operation and checking the <code>Status</code> parameter. You can 
    #             inspect the <code>Message</code> when <code>Status</code> shows up as <code>FAILED</code>. You can
    #             also check the progress of the copy operation by going to the <code>DataPipeline</code> console and looking up
    #             the pipeline using the <code>pipelineId </code> from the describe call.</p>
    # @!attribute data_source_id
    #   <p>A user-supplied ID that uniquely identifies the datasource. This value should be identical to the value of the 
    #               <code>DataSourceID</code> in the request.
    #           </p>
    #   @return [String]
    class CreateDataSourceFromRDSOutput < Struct.new(
      :data_source_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_source_id
    #   <p>A user-supplied ID that uniquely identifies the <code>DataSource</code>.</p>
    #   @return [String]
    # @!attribute data_source_name
    #   <p>A user-supplied name or description of the <code>DataSource</code>. </p>
    #   @return [String]
    # @!attribute data_spec
    #   <p>The data specification of an Amazon Redshift <code>DataSource</code>:</p>
    #           <ul>
    #               <li>
    #                  <p>DatabaseInformation -</p> 
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>DatabaseName</code> - The name of the Amazon Redshift database.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code> ClusterIdentifier</code> - The unique ID for the Amazon Redshift cluster.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>DatabaseCredentials - The AWS Identity and Access Management (IAM) credentials that are used to connect to the Amazon Redshift database.</p>
    #               </li>
    #               <li>
    #                  <p>SelectSqlQuery - The query that is used to retrieve the observation data for the 
    #   			<code>Datasource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>S3StagingLocation - The Amazon Simple Storage Service (Amazon S3) location for staging Amazon
    #                       Redshift data. The data retrieved from Amazon Redshift using
    #                           the <code>SelectSqlQuery</code> query is stored in this location.</p>
    #               </li>
    #               <li>
    #                  <p>DataSchemaUri - The Amazon S3 location of the <code>DataSchema</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DataSchema - A JSON string representing the schema. This is not required if <code>DataSchemaUri</code> is specified. </p>
    #               </li>
    #               <li>
    #                  <p>DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the <code>DataSource</code>.</p>
    #                  <p> Sample - 
    #               <code> "{\"splitting\":{\"percentBegin\":10,\"percentEnd\":60}}"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Types::RedshiftDataSpec]
    # @!attribute role_arn
    #   <p>A fully specified role Amazon Resource Name (ARN). Amazon ML assumes the role on behalf of the user to create the following:</p>
    #           
    #              <ul>
    #               <li>
    #                  <p>A security group to allow Amazon ML to execute the <code>SelectSqlQuery</code> query on an Amazon Redshift cluster</p>
    #               </li>
    #               <li>
    #                  <p>An Amazon S3 bucket policy to grant Amazon ML read/write permissions on the <code>S3StagingLocation</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute compute_statistics
    #   <p>The compute statistics for a <code>DataSource</code>. The statistics are generated from the observation data referenced by 
    #               a <code>DataSource</code>. Amazon ML uses the statistics internally during <code>MLModel</code> training.
    #              This parameter must be set to <code>true</code> if the <code>DataSource</code> needs to
    #             be used for <code>MLModel</code> training.</p>
    #   @return [Boolean]
    class CreateDataSourceFromRedshiftInput < Struct.new(
      :data_source_id,
      :data_source_name,
      :data_spec,
      :role_arn,
      :compute_statistics,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Represents the output of a <code>CreateDataSourceFromRedshift</code> operation, and is an acknowledgement that Amazon ML received the request.</p>
    #          <p>The <code>CreateDataSourceFromRedshift</code> operation is asynchronous. You can poll for updates by using
    #         the <code>GetBatchPrediction</code> operation and checking the <code>Status</code> parameter. </p>
    # @!attribute data_source_id
    #   <p>A user-supplied ID that uniquely identifies the datasource. This value should be identical to the value of the 
    #               <code>DataSourceID</code> in the request.
    #           </p>
    #   @return [String]
    class CreateDataSourceFromRedshiftOutput < Struct.new(
      :data_source_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_source_id
    #   <p>A user-supplied identifier that uniquely identifies the <code>DataSource</code>. </p>
    #   @return [String]
    # @!attribute data_source_name
    #   <p>A user-supplied name or description of the <code>DataSource</code>. </p>
    #   @return [String]
    # @!attribute data_spec
    #   <p>The data specification of a <code>DataSource</code>:</p>
    #           <ul>
    #               <li>
    #                  <p>DataLocationS3 - The Amazon S3 location of the observation data.</p>
    #               </li>
    #               <li>
    #                  <p>DataSchemaLocationS3 - The Amazon S3 location of the <code>DataSchema</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DataSchema - A JSON string representing the schema. This is not required if <code>DataSchemaUri</code> is specified. </p>
    #               </li>
    #               <li>
    #                  <p>DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the <code>Datasource</code>. </p>
    #                  <p> Sample - 
    #               <code> "{\"splitting\":{\"percentBegin\":10,\"percentEnd\":60}}"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Types::S3DataSpec]
    # @!attribute compute_statistics
    #   <p>The compute statistics for a <code>DataSource</code>. The statistics are generated from the observation data referenced by 
    #               a <code>DataSource</code>. Amazon ML uses the statistics internally during <code>MLModel</code> training.
    #               This parameter must be set to <code>true</code> if the <code></code>DataSource<code></code> needs to be used for <code>MLModel</code> training.</p>
    #   @return [Boolean]
    class CreateDataSourceFromS3Input < Struct.new(
      :data_source_id,
      :data_source_name,
      :data_spec,
      :compute_statistics,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Represents the output of a <code>CreateDataSourceFromS3</code> operation, and is an acknowledgement that Amazon ML received the request.</p>
    #         <p>The <code>CreateDataSourceFromS3</code> operation is asynchronous. You can poll for updates by using
    #             the <code>GetBatchPrediction</code> operation and checking the <code>Status</code> parameter. </p>
    # @!attribute data_source_id
    #   <p>A user-supplied ID that uniquely identifies the <code>DataSource</code>. This value should be identical to the value of the 
    #               <code>DataSourceID</code> in the request.
    #           </p>
    #   @return [String]
    class CreateDataSourceFromS3Output < Struct.new(
      :data_source_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute evaluation_id
    #   <p>A user-supplied ID that uniquely identifies the <code>Evaluation</code>.</p>
    #   @return [String]
    # @!attribute evaluation_name
    #   <p>A user-supplied name or description of the <code>Evaluation</code>.</p>
    #   @return [String]
    # @!attribute ml_model_id
    #   <p>The ID of the <code>MLModel</code> to evaluate.</p> 
    #           <p>The schema used in creating the <code>MLModel</code> must match the schema of the <code>DataSource</code> used in the <code>Evaluation</code>.</p>
    #   @return [String]
    # @!attribute evaluation_data_source_id
    #   <p>The ID of the <code>DataSource</code> for the evaluation. The schema of the <code>DataSource</code> 
    #               must match the schema used to create the <code>MLModel</code>.</p>
    #   @return [String]
    class CreateEvaluationInput < Struct.new(
      :evaluation_id,
      :evaluation_name,
      :ml_model_id,
      :evaluation_data_source_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Represents the output of a <code>CreateEvaluation</code> operation, and is an acknowledgement that Amazon ML received the request.</p>
    #         <p>
    #             <code>CreateEvaluation</code> operation is asynchronous. You can poll for status updates
    #           by using the <code>GetEvcaluation</code> operation 
    #             and checking the <code>Status</code> parameter.
    #         </p>
    # @!attribute evaluation_id
    #   <p>The user-supplied ID that uniquely identifies the <code>Evaluation</code>. This value should be identical to the value of the 
    #               <code>EvaluationId</code> in the request.</p>
    #   @return [String]
    class CreateEvaluationOutput < Struct.new(
      :evaluation_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ml_model_id
    #   <p>A user-supplied ID that uniquely identifies the <code>MLModel</code>.</p>
    #   @return [String]
    # @!attribute ml_model_name
    #   <p>A user-supplied name or description of the <code>MLModel</code>.</p>
    #   @return [String]
    # @!attribute ml_model_type
    #   <p>The category of supervised learning that this <code>MLModel</code> will address. Choose from the following types:</p>
    #            <ul>
    #               <li>
    #                  <p>Choose <code>REGRESSION</code> if the <code>MLModel</code> will be used to predict a numeric value.</p>
    #               </li>
    #               <li>
    #                  <p>Choose <code>BINARY</code> if the <code>MLModel</code> result has two possible values.</p>
    #               </li>
    #               <li>
    #                  <p>Choose <code>MULTICLASS</code> if the <code>MLModel</code> result has a limited number of values.</p> 
    #               </li>
    #            </ul>
    #           <p> For more information, see the <a href="https://docs.aws.amazon.com/machine-learning/latest/dg">Amazon Machine Learning Developer Guide</a>.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>A list of the training parameters in the <code>MLModel</code>. The list is implemented as
    #               a map of key-value pairs.</p>
    #           <p>The following is the current set of training parameters:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>sgd.maxMLModelSizeInBytes</code> - The maximum allowed size of the model. Depending on the
    #                       input data, the size of the model might affect its performance.</p> 
    #                   <p> The value is an integer that ranges from <code>100000</code> to <code>2147483648</code>. The default value is <code>33554432</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sgd.maxPasses</code> - The number of times that the training process traverses the
    #                       observations to build the <code>MLModel</code>. The value is an integer that
    #                       ranges from <code>1</code> to <code>10000</code>. The default value is
    #                           <code>10</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sgd.shuffleType</code> - Whether Amazon ML shuffles the training data. Shuffling
    #                       the data improves a model's ability to find the optimal solution for a variety
    #                       of data types. The valid values are <code>auto</code> and <code>none</code>. The
    #                       default value is <code>none</code>. We strongly recommend that you shuffle your data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sgd.l1RegularizationAmount</code> - The coefficient regularization L1 norm. It controls
    #                       overfitting the data by penalizing large coefficients. This tends to drive
    #                       coefficients to zero, resulting in a sparse feature set. If you use this
    #                       parameter, start by specifying a small value, such as <code>1.0E-08</code>.</p>
    #                   <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>.
    #                       The default is to not use L1 normalization. This parameter can't be used when
    #                           <code>L2</code> is specified. Use this parameter sparingly.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sgd.l2RegularizationAmount</code> - The coefficient regularization L2 norm. It controls
    #                       overfitting the data by penalizing large coefficients. This tends to drive
    #                       coefficients to small, nonzero values. If you use this parameter, start by
    #                       specifying a small value, such as <code>1.0E-08</code>.</p>
    #                   <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>.
    #                       The default is to not use L2 normalization. This parameter can't be used when
    #                           <code>L1</code> is specified. Use this parameter sparingly.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute training_data_source_id
    #   <p>The <code>DataSource</code> that points to the training data.</p>
    #   @return [String]
    # @!attribute recipe
    #   <p>The data recipe for creating the <code>MLModel</code>. You must specify either the recipe
    #               or its URI. If you don't specify a recipe or its URI, Amazon ML creates a default.</p>
    #   @return [String]
    # @!attribute recipe_uri
    #   <p>The Amazon Simple Storage Service (Amazon S3) location and file name that contains the <code>MLModel</code> recipe. You must specify either the recipe or its URI. If you don't specify a recipe or its URI, Amazon ML creates a default.</p>
    #   @return [String]
    class CreateMLModelInput < Struct.new(
      :ml_model_id,
      :ml_model_name,
      :ml_model_type,
      :parameters,
      :training_data_source_id,
      :recipe,
      :recipe_uri,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Represents the output of a <code>CreateMLModel</code> operation, and is an acknowledgement that Amazon ML received the request.</p>
    #         <p>The <code>CreateMLModel</code> operation is asynchronous. You can poll for status updates by using the 
    #             <code>GetMLModel</code> operation and checking the <code>Status</code> parameter.
    #         </p>
    # @!attribute ml_model_id
    #   <p>A user-supplied ID that uniquely identifies the <code>MLModel</code>. This value should be identical to the value of the 
    #               <code>MLModelId</code> in the request.
    #           </p>
    #   @return [String]
    class CreateMLModelOutput < Struct.new(
      :ml_model_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ml_model_id
    #   <p>The ID assigned to the <code>MLModel</code> during creation.</p>
    #   @return [String]
    class CreateRealtimeEndpointInput < Struct.new(
      :ml_model_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the output of an <code>CreateRealtimeEndpoint</code> operation.</p>
    #         <p>The result contains the <code>MLModelId</code> and the endpoint information for the <code>MLModel</code>.</p>
    #         <p>
    #             <b>Note:</b> The endpoint information includes the URI of the <code>MLModel</code>; that is, the location to send online prediction requests for the specified <code>MLModel</code>.</p>
    # @!attribute ml_model_id
    #   <p>A user-supplied ID that uniquely identifies the <code>MLModel</code>. This value should be identical to the value of the 
    #               <code>MLModelId</code> in the request.</p>
    #   @return [String]
    # @!attribute realtime_endpoint_info
    #   <p>The endpoint information of the <code>MLModel</code> 
    #            </p>
    #   @return [Types::RealtimeEndpointInfo]
    class CreateRealtimeEndpointOutput < Struct.new(
      :ml_model_id,
      :realtime_endpoint_info,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Represents the output of the <code>GetDataSource</code> operation. </p>
    #          <p>  The content consists of the detailed metadata and data file information and the current status of the <code>DataSource</code>. </p>
    # @!attribute data_source_id
    #   <p>The ID that is assigned to the <code>DataSource</code> during creation.</p>
    #   @return [String]
    # @!attribute data_location_s3
    #   <p>The location and name of the data in Amazon Simple Storage Service (Amazon S3) that is used by a <code>DataSource</code>.</p>
    #   @return [String]
    # @!attribute data_rearrangement
    #   <p>A JSON string that represents the splitting and rearrangement requirement used when this <code>DataSource</code>
    #           was created.</p>
    #   @return [String]
    # @!attribute created_by_iam_user
    #   <p>The AWS user account from which the <code>DataSource</code> was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time that the <code>DataSource</code> was created. The time is expressed in epoch time.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The time of the most recent edit to the 
    #         <code>BatchPrediction</code>. The time is expressed in epoch time.</p>
    #   @return [Time]
    # @!attribute data_size_in_bytes
    #   <p>The total number of observations contained in the data files that the <code>DataSource</code> references.</p>
    #   @return [Integer]
    # @!attribute number_of_files
    #   <p>The number of data files referenced by the <code>DataSource</code>.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>A user-supplied name or description of the <code>DataSource</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the <code>DataSource</code>. This element can have one of the following values: </p>
    #            <ul>
    #               <li>
    #                  <p>PENDING	- Amazon Machine Learning (Amazon ML) submitted a request to create a <code>DataSource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>INPROGRESS - The creation process is underway.</p>
    #               </li>
    #               <li>
    #                  <p>FAILED - The request to create a <code>DataSource</code> did not run to completion. It is not usable.</p>
    #               </li>
    #               <li>
    #                  <p>COMPLETED - The creation process completed successfully.</p>
    #               </li>
    #               <li>
    #                  <p>DELETED	- The <code>DataSource</code> is marked as deleted. It is not usable.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute message
    #   <p>A description of the most recent details about creating the <code>DataSource</code>.</p>
    #   @return [String]
    # @!attribute redshift_metadata
    #   <p>Describes the <code>DataSource</code> details specific to Amazon Redshift.</p>
    #   @return [Types::RedshiftMetadata]
    # @!attribute rds_metadata
    #   <p>The datasource details that are specific to Amazon RDS.</p>
    #   @return [Types::RDSMetadata]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html#roles-about-termsandconcepts">AWS IAM Role</a>, such as the following: arn:aws:iam::account:role/rolename. </p>
    #   @return [String]
    # @!attribute compute_statistics
    #   <p>
    #             The parameter is <code>true</code> if statistics need to be generated from the observation data.
    #         </p>
    #   @return [Boolean]
    # @!attribute compute_time
    #   <p>Long integer type that is a 64-bit signed number.</p>
    #   @return [Integer]
    # @!attribute finished_at
    #   <p>A timestamp represented in epoch time.</p>
    #   @return [Time]
    # @!attribute started_at
    #   <p>A timestamp represented in epoch time.</p>
    #   @return [Time]
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
      :started_at,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:compute_statistics] = false unless options.key?(:compute_statistics)
        super
      end
    end

    # <p>A list of the variables to use in searching or filtering <code>DataSource</code>.</p>    
    #         <ul>
    #             <li>
    #                <p>
    #                   <code>CreatedAt</code> - Sets the search criteria to <code>DataSource</code> creation date.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Status</code> - Sets the search criteria to <code>DataSource</code> status.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Name</code> - Sets the search criteria to the contents of <code>DataSource</code> 
    #                   <code>Name</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DataUri</code> - Sets the search criteria to the URI of data files used to create the <code>DataSource</code>. The URI can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>DataSource</code> creation.</p>
    #             </li>
    #          </ul>
    #         
    #         <p>
    #             <b>Note:</b> 
    #             The variable names should match the variable names in the <code>DataSource</code>.</p>
    module DataSourceFilterVariable
      CREATED_AT = 'CreatedAt'
      LAST_UPDATED_AT = 'LastUpdatedAt'
      STATUS = 'Status'
      NAME = 'Name'
      DATA_URI = 'DataLocationS3'
      IAM_USER = 'IAMUser'
    end

    # @!attribute batch_prediction_id
    #   <p>A user-supplied ID that uniquely identifies the <code>BatchPrediction</code>.</p>
    #   @return [String]
    class DeleteBatchPredictionInput < Struct.new(
      :batch_prediction_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Represents the output of a <code>DeleteBatchPrediction</code> operation.</p>        
    #         <p>You can use the <code>GetBatchPrediction</code> operation and check the value of the <code>Status</code> parameter to see whether a 
    #             <code>BatchPrediction</code> is marked as <code>DELETED</code>.</p>
    # @!attribute batch_prediction_id
    #   <p>A user-supplied ID that uniquely identifies the <code>BatchPrediction</code>. This value should be identical to the value of the <code>BatchPredictionID</code> in the request.</p>
    #   @return [String]
    class DeleteBatchPredictionOutput < Struct.new(
      :batch_prediction_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_source_id
    #   <p>A user-supplied ID that uniquely identifies the <code>DataSource</code>.</p>
    #   @return [String]
    class DeleteDataSourceInput < Struct.new(
      :data_source_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Represents the output of a <code>DeleteDataSource</code> operation.</p>
    # @!attribute data_source_id
    #   <p>A user-supplied ID that uniquely identifies the <code>DataSource</code>. This value should be identical to the value of the <code>DataSourceID</code> in the request.</p>
    #   @return [String]
    class DeleteDataSourceOutput < Struct.new(
      :data_source_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute evaluation_id
    #   <p>A user-supplied ID that uniquely identifies the <code>Evaluation</code> to delete.</p>
    #   @return [String]
    class DeleteEvaluationInput < Struct.new(
      :evaluation_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Represents the output of a <code>DeleteEvaluation</code> operation. The output indicates that Amazon Machine Learning (Amazon ML) received the request.</p>
    #         <p>You can use the <code>GetEvaluation</code> operation and check the value of the <code>Status</code> parameter to see whether an 
    #             <code>Evaluation</code> is marked as <code>DELETED</code>.</p>
    # @!attribute evaluation_id
    #   <p>A user-supplied ID that uniquely identifies the <code>Evaluation</code>. This value should be identical to the value of the <code>EvaluationId</code> in the request.</p>
    #   @return [String]
    class DeleteEvaluationOutput < Struct.new(
      :evaluation_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ml_model_id
    #   <p>A user-supplied ID that uniquely identifies the <code>MLModel</code>.</p>
    #   @return [String]
    class DeleteMLModelInput < Struct.new(
      :ml_model_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DeleteMLModel</code> operation.</p>
    #         <p>You can use the <code>GetMLModel</code> operation and check the value of the <code>Status</code> parameter to see whether an 
    #             <code>MLModel</code> is marked as <code>DELETED</code>.</p>
    # @!attribute ml_model_id
    #   <p>A user-supplied ID that uniquely identifies the <code>MLModel</code>. This value should be identical to the value of the <code>MLModelID</code> in the request.</p>
    #   @return [String]
    class DeleteMLModelOutput < Struct.new(
      :ml_model_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ml_model_id
    #   <p>The ID assigned to the <code>MLModel</code> during creation.</p>
    #   @return [String]
    class DeleteRealtimeEndpointInput < Struct.new(
      :ml_model_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the output of an <code>DeleteRealtimeEndpoint</code> operation.</p>
    #         <p>The result contains the <code>MLModelId</code> and the endpoint information for the <code>MLModel</code>. </p>
    # @!attribute ml_model_id
    #   <p>A user-supplied ID that uniquely identifies the <code>MLModel</code>. This value should be identical to the value of the 
    #               <code>MLModelId</code> in the request.</p>
    #   @return [String]
    # @!attribute realtime_endpoint_info
    #   <p>The endpoint information of the <code>MLModel</code> 
    #            </p>
    #   @return [Types::RealtimeEndpointInfo]
    class DeleteRealtimeEndpointOutput < Struct.new(
      :ml_model_id,
      :realtime_endpoint_info,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tag_keys
    #   <p>One or more tags to delete.</p>
    #   @return [Array<String>]
    # @!attribute resource_id
    #   <p>The ID of the tagged ML object. For example, <code>exampleModelId</code>.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the tagged ML object.</p>
    #   @return [String]
    class DeleteTagsInput < Struct.new(
      :tag_keys,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Amazon ML returns the following elements.</p>
    # @!attribute resource_id
    #   <p>The ID of the ML object from which tags were deleted.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the ML object from which tags were deleted.</p>
    #   @return [String]
    class DeleteTagsOutput < Struct.new(
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filter_variable
    #   <p>Use one of the following variables to filter a list of <code>BatchPrediction</code>:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>CreatedAt</code> - Sets the search criteria to the <code>BatchPrediction</code> creation date.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code> - Sets the search criteria to the <code>BatchPrediction</code> status.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code> - Sets the search criteria to the contents of the <code>BatchPrediction</code>
    #                     <b> </b> 
    #                     <code>Name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>BatchPrediction</code> creation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MLModelId</code> - Sets the search criteria to the <code>MLModel</code> used in the <code>BatchPrediction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used in the <code>BatchPrediction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DataURI</code> - Sets the search criteria to the data file(s) used in the <code>BatchPrediction</code>. The URL can identify either a file or an Amazon Simple Storage Solution (Amazon S3) bucket or directory.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute eq
    #   <p>The equal to operator. The <code>BatchPrediction</code> results will have 
    #               <code>FilterVariable</code> values that exactly match the value specified with <code>EQ</code>.</p>
    #   @return [String]
    # @!attribute gt
    #   <p>The greater than operator. The <code>BatchPrediction</code> results will 
    #               have <code>FilterVariable</code> values that are greater than the value specified with <code>GT</code>.</p>
    #   @return [String]
    # @!attribute lt
    #   <p>The less than operator. The <code>BatchPrediction</code> results will 
    #               have <code>FilterVariable</code> values that are less than the value specified with <code>LT</code>.</p>
    #   @return [String]
    # @!attribute ge
    #   <p>The greater than or equal to operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values that are greater than or equal to the value specified with <code>GE</code>.
    #           </p>
    #   @return [String]
    # @!attribute le
    #   <p>The less than or equal to operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values that are less than or equal to the value specified with <code>LE</code>.</p>
    #   @return [String]
    # @!attribute ne
    #   <p>The not equal to operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values not equal to the value specified with <code>NE</code>.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>A string that is found at the beginning of a variable, such as <code>Name</code> or <code>Id</code>.</p> 
    #           <p>For example, a <code>Batch Prediction</code> operation could have the <code>Name</code> 
    #               <code>2014-09-09-HolidayGiftMailer</code>. To search for 
    #               this <code>BatchPrediction</code>, select <code>Name</code> for the <code>FilterVariable</code> and any of the following strings for the 
    #               <code>Prefix</code>:
    #           </p>
    #           
    #           <ul>
    #               <li>
    #                  <p>2014-09</p>
    #               </li>
    #               <li>
    #                  <p>2014-09-09</p>
    #               </li>
    #               <li>
    #                  <p>2014-09-09-Holiday</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute sort_order
    #   <p>A two-value parameter that determines the sequence of the resulting list of <code>MLModel</code>s.</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>asc</code> - Arranges the list in ascending order (A-Z, 0-9).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dsc</code> - Arranges the list in descending order (Z-A, 9-0).</p>
    #               </li>
    #            </ul>
    #           <p>Results are sorted by <code>FilterVariable</code>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An ID of the page in the paginated results.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The number of pages of information to include in the result. The range of acceptable values is <code>1</code> through <code>100</code>. The default value is <code>100</code>.</p>
    #   @return [Integer]
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
      :limit,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DescribeBatchPredictions</code> operation. The content is essentially a list of <code>BatchPrediction</code>s.</p>
    # @!attribute results
    #   <p>A list of <code>BatchPrediction</code> objects that meet the search criteria.
    #           </p>
    #   @return [Array<Types::BatchPrediction>]
    # @!attribute next_token
    #   <p>The ID of the next page in the paginated results that indicates at least one more page follows.</p>
    #   @return [String]
    class DescribeBatchPredictionsOutput < Struct.new(
      :results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filter_variable
    #   <p>Use one of the following variables to filter a list of <code>DataSource</code>:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>CreatedAt</code> - Sets the search criteria to <code>DataSource</code> creation dates.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code> - Sets the search criteria to <code>DataSource</code> statuses.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code> - Sets the search criteria to the contents of <code>DataSource</code> 
    #                     <code>Name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DataUri</code> - Sets the search criteria to the URI of data files used to create the <code>DataSource</code>. The URI can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>DataSource</code> creation.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute eq
    #   <p>The equal to operator. The <code>DataSource</code> results will have 
    #               <code>FilterVariable</code> values that exactly match the value specified with <code>EQ</code>.</p>
    #   @return [String]
    # @!attribute gt
    #   <p>The greater than operator. The <code>DataSource</code> results will 
    #               have <code>FilterVariable</code> values that are greater than the value specified with <code>GT</code>.</p>
    #   @return [String]
    # @!attribute lt
    #   <p>The less than operator. The <code>DataSource</code> results will 
    #               have <code>FilterVariable</code> values that are less than the value specified with <code>LT</code>.</p>
    #   @return [String]
    # @!attribute ge
    #   <p>The greater than or equal to operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values that are greater than or equal to the value specified with <code>GE</code>.
    #           </p>
    #   @return [String]
    # @!attribute le
    #   <p>The less than or equal to operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values that are less than or equal to the value specified with <code>LE</code>.</p>
    #   @return [String]
    # @!attribute ne
    #   <p>The not equal to operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values not equal to the value specified with <code>NE</code>.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>A string that is found at the beginning of a variable, such as <code>Name</code> or <code>Id</code>.</p> 
    #           <p>For example, a <code>DataSource</code> could have the <code>Name</code> 
    #               <code>2014-09-09-HolidayGiftMailer</code>. To search for 
    #               this <code>DataSource</code>, select <code>Name</code> for the <code>FilterVariable</code> and any of the following strings for the 
    #               <code>Prefix</code>: 
    #           </p>
    #           
    #           <ul>
    #               <li>
    #                  <p>2014-09</p>
    #               </li>
    #               <li>
    #                  <p>2014-09-09</p>
    #               </li>
    #               <li>
    #                  <p>2014-09-09-Holiday</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute sort_order
    #   <p>A two-value parameter that determines the sequence of the resulting list of <code>DataSource</code>.</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>asc</code> - Arranges the list in ascending order (A-Z, 0-9).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dsc</code> - Arranges the list in descending order (Z-A, 9-0).</p>
    #               </li>
    #            </ul>
    #           <p>Results are sorted by <code>FilterVariable</code>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The ID of the page in the paginated results.</p>
    #   @return [String]
    # @!attribute limit
    #   <p> The maximum number of <code>DataSource</code> to include in the result.</p>
    #   @return [Integer]
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
      :limit,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the query results from a <a>DescribeDataSources</a> operation. The content is essentially a list of <code>DataSource</code>.</p>
    # @!attribute results
    #   <p>A list of <code>DataSource</code> that meet the search criteria.
    #            </p>
    #   @return [Array<Types::DataSource>]
    # @!attribute next_token
    #   <p>An ID of the next page in the paginated results that indicates at least one more page follows.</p>
    #   @return [String]
    class DescribeDataSourcesOutput < Struct.new(
      :results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filter_variable
    #   <p>Use one of the following variable to filter a list of <code>Evaluation</code> objects:</p>   
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>CreatedAt</code> - Sets the search criteria to the <code>Evaluation</code> creation date.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code> - Sets the search criteria to the <code>Evaluation</code> status.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code> - Sets the search criteria to the contents of <code>Evaluation</code> 
    #                     <b> </b> 
    #                     <code>Name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IAMUser</code> - Sets the search criteria to the user account that invoked an <code>Evaluation</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MLModelId</code> - Sets the search criteria to the <code>MLModel</code> that was evaluated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used in <code>Evaluation</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DataUri</code> - Sets the search criteria to the data file(s) used in <code>Evaluation</code>. The URL can identify either a file or an Amazon Simple Storage Solution (Amazon S3) bucket or directory.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute eq
    #   <p>The equal to operator. The <code>Evaluation</code> results will have 
    #               <code>FilterVariable</code> values that exactly match the value specified with <code>EQ</code>.</p>
    #   @return [String]
    # @!attribute gt
    #   <p>The greater than operator. The <code>Evaluation</code> results will 
    #               have <code>FilterVariable</code> values that are greater than the value specified with <code>GT</code>.</p>
    #   @return [String]
    # @!attribute lt
    #   <p>The less than operator. The <code>Evaluation</code> results will 
    #               have <code>FilterVariable</code> values that are less than the value specified with <code>LT</code>.</p>
    #   @return [String]
    # @!attribute ge
    #   <p>The greater than or equal to operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values that are greater than or equal to the value specified with <code>GE</code>.
    #           </p>
    #   @return [String]
    # @!attribute le
    #   <p>The less than or equal to operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values that are less than or equal to the value specified with <code>LE</code>.</p>
    #   @return [String]
    # @!attribute ne
    #   <p>The not equal to operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values not equal to the value specified with <code>NE</code>.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>A string that is found at the beginning of a variable, such as <code>Name</code> or <code>Id</code>.</p> 
    #           <p>For example, an <code>Evaluation</code> could have the <code>Name</code> 
    #               <code>2014-09-09-HolidayGiftMailer</code>. To search for 
    #               this <code>Evaluation</code>, select <code>Name</code> for the <code>FilterVariable</code> and any of the following strings for the 
    #               <code>Prefix</code>: 
    #           </p>
    #           
    #           <ul>
    #               <li>
    #                  <p>2014-09</p>
    #               </li>
    #               <li>
    #                  <p>2014-09-09</p>
    #               </li>
    #               <li>
    #                  <p>2014-09-09-Holiday</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute sort_order
    #   <p>A two-value parameter that determines the sequence of the resulting list of <code>Evaluation</code>.</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>asc</code> - Arranges the list in ascending order (A-Z, 0-9).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dsc</code> - Arranges the list in descending order (Z-A, 9-0).</p>
    #               </li>
    #            </ul>
    #           <p>Results are sorted by <code>FilterVariable</code>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The ID of the page in the paginated results.</p>
    #   @return [String]
    # @!attribute limit
    #   <p> The maximum number of <code>Evaluation</code> to include in the result.</p>
    #   @return [Integer]
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
      :limit,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the query results from a <code>DescribeEvaluations</code> operation. The content is essentially a list of <code>Evaluation</code>.</p>
    # @!attribute results
    #   <p>A list of <code>Evaluation</code> that meet the search criteria.
    #           </p>
    #   @return [Array<Types::Evaluation>]
    # @!attribute next_token
    #   <p>The ID of the next page in the paginated results that indicates at least one more page follows.</p>
    #   @return [String]
    class DescribeEvaluationsOutput < Struct.new(
      :results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filter_variable
    #   <p>Use one of the following variables to filter a list of <code>MLModel</code>:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>CreatedAt</code> - Sets the search criteria to <code>MLModel</code> creation date.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code> - Sets the search criteria to <code>MLModel</code> status.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code> - Sets the search criteria to the contents of <code>MLModel</code>
    #                     <b> </b> 
    #                     <code>Name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>MLModel</code> creation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TrainingDataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used to train one or more <code>MLModel</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RealtimeEndpointStatus</code> - Sets the search criteria to the <code>MLModel</code> real-time endpoint status.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MLModelType</code> - Sets the search criteria to <code>MLModel</code> type: binary, regression, or multi-class.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Algorithm</code> - Sets the search criteria to the algorithm that the <code>MLModel</code> uses.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TrainingDataURI</code> - Sets the search criteria to the data file(s) used in training a <code>MLModel</code>. The URL can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute eq
    #   <p>The equal to operator. The <code>MLModel</code> results will have 
    #               <code>FilterVariable</code> values that exactly match the value specified with <code>EQ</code>.</p>
    #   @return [String]
    # @!attribute gt
    #   <p>The greater than operator. The <code>MLModel</code> results will 
    #               have <code>FilterVariable</code> values that are greater than the value specified with <code>GT</code>.</p>
    #   @return [String]
    # @!attribute lt
    #   <p>The less than operator. The <code>MLModel</code> results will 
    #               have <code>FilterVariable</code> values that are less than the value specified with <code>LT</code>.</p>
    #   @return [String]
    # @!attribute ge
    #   <p>The greater than or equal to operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values that are greater than or equal to the value specified with <code>GE</code>.
    #           </p>
    #   @return [String]
    # @!attribute le
    #   <p>The less than or equal to operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values that are less than or equal to the value specified with <code>LE</code>.</p>
    #   @return [String]
    # @!attribute ne
    #   <p>The not equal to operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values not equal to the value specified with <code>NE</code>.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>A string that is found at the beginning of a variable, such as <code>Name</code> or <code>Id</code>.</p> 
    #           <p>For example, an <code>MLModel</code> could have the <code>Name</code> 
    #               <code>2014-09-09-HolidayGiftMailer</code>. To search for 
    #               this <code>MLModel</code>, select <code>Name</code> for the <code>FilterVariable</code> and any of the following strings for the 
    #               <code>Prefix</code>: 
    #           </p>
    #           
    #           <ul>
    #               <li>
    #                  <p>2014-09</p>
    #               </li>
    #               <li>
    #                  <p>2014-09-09</p>
    #               </li>
    #               <li>
    #                  <p>2014-09-09-Holiday</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute sort_order
    #   <p>A two-value parameter that determines the sequence of the resulting list of <code>MLModel</code>.</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>asc</code> - Arranges the list in ascending order (A-Z, 0-9).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dsc</code> - Arranges the list in descending order (Z-A, 9-0).</p>
    #               </li>
    #            </ul>
    #           <p>Results are sorted by <code>FilterVariable</code>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The ID of the page in the paginated results.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The number of pages of information to include in the result. The range of acceptable values is <code>1</code> through <code>100</code>. The default value is <code>100</code>.</p>
    #   @return [Integer]
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
      :limit,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DescribeMLModels</code> operation. The content is essentially a list of <code>MLModel</code>.</p>
    # @!attribute results
    #   <p>A list of <code>MLModel</code> that meet the search criteria.</p>
    #   @return [Array<Types::MLModel>]
    # @!attribute next_token
    #   <p>The ID of the next page in the paginated results that indicates at least one more page follows.</p>
    #   @return [String]
    class DescribeMLModelsOutput < Struct.new(
      :results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The ID of the ML object. For example, <code>exampleModelId</code>. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the ML object.</p>
    #   @return [String]
    class DescribeTagsInput < Struct.new(
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Amazon ML returns the following elements.</p>
    # @!attribute resource_id
    #   <p>The ID of the tagged ML object.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the tagged ML object.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags associated with the ML object.</p>
    #   @return [Array<Types::Tag>]
    class DescribeTagsOutput < Struct.new(
      :resource_id,
      :resource_type,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the key values of <code>DetailsMap</code>:</p>
    #         <ul>
    #             <li>
    #                <p>
    #                   <code>PredictiveModelType</code> - Indicates the type of the <code>MLModel</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Algorithm</code> - Indicates the algorithm that was used for the <code>MLModel</code>.</p>
    #             </li>
    #          </ul>
    module DetailsAttributes
      PREDICTIVE_MODEL_TYPE = 'PredictiveModelType'
      ALGORITHM = 'Algorithm'
    end

    # <p>Object status with the following possible values:</p>
    #         <ul>
    #             <li>
    #                <p>
    #                   <code>PENDING</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>INPROGRESS</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>FAILED</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>COMPLETED</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DELETED</code>
    #                </p>
    #             </li>
    #          </ul>
    module EntityStatus
      PENDING = 'PENDING'
      INPROGRESS = 'INPROGRESS'
      FAILED = 'FAILED'
      COMPLETED = 'COMPLETED'
      DELETED = 'DELETED'
    end

    # <p> Represents the output of <code>GetEvaluation</code> operation. </p>
    #          <p>The content consists of the detailed metadata and data file information and the current status of the 
    #             <code>Evaluation</code>.</p>
    # @!attribute evaluation_id
    #   <p>The ID that is assigned to the <code>Evaluation</code> at creation.</p>
    #   @return [String]
    # @!attribute ml_model_id
    #   <p>The ID of the <code>MLModel</code> that is the focus of the evaluation.</p>
    #   @return [String]
    # @!attribute evaluation_data_source_id
    #   <p>The ID of the <code>DataSource</code> that is used to evaluate the <code>MLModel</code>.</p>
    #   @return [String]
    # @!attribute input_data_location_s3
    #   <p>The location and name of the data in Amazon Simple Storage Server (Amazon S3) that is used in the evaluation.</p>
    #   @return [String]
    # @!attribute created_by_iam_user
    #   <p>The AWS user account that invoked the evaluation. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time that the <code>Evaluation</code> was created. The time is expressed in epoch time.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The time of the most recent edit to the <code>Evaluation</code>. The time is expressed in epoch time.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>A user-supplied name or description of the <code>Evaluation</code>. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the evaluation. This element can have one of the following values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> - Amazon Machine Learning (Amazon ML) submitted a request to evaluate an <code>MLModel</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INPROGRESS</code> - The evaluation is underway.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - The request to evaluate an <code>MLModel</code> did not run to completion. It is not usable.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code> - The evaluation process completed successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code> - The <code>Evaluation</code> is marked as deleted. It is not usable.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute performance_metrics
    #   <p>Measurements of how well the <code>MLModel</code> performed, using observations referenced
    #           by the <code>DataSource</code>. One of the following metrics is returned, based on the type of the <code>MLModel</code>: 
    #           </p>
    #           <ul>
    #               <li>
    #                  <p>BinaryAUC: A binary <code>MLModel</code> uses the Area Under the Curve (AUC) technique to measure performance. </p>
    #               </li>
    #               <li>
    #                  <p>RegressionRMSE: A regression <code>MLModel</code> uses the Root Mean Square Error (RMSE) technique to measure performance. RMSE measures the difference between predicted and actual values for a single variable.</p> 
    #               </li>
    #               <li>
    #                  <p>MulticlassAvgFScore: A multiclass <code>MLModel</code> uses the F1 score technique to measure performance. </p>
    #               </li>
    #            </ul>
    #           <p>
    #               For more information about performance metrics, please see the <a href="https://docs.aws.amazon.com/machine-learning/latest/dg">Amazon Machine Learning Developer Guide</a>.
    #           </p>
    #   @return [Types::PerformanceMetrics]
    # @!attribute message
    #   <p>A description of the most recent details about evaluating the <code>MLModel</code>.</p>
    #   @return [String]
    # @!attribute compute_time
    #   <p>Long integer type that is a 64-bit signed number.</p>
    #   @return [Integer]
    # @!attribute finished_at
    #   <p>A timestamp represented in epoch time.</p>
    #   @return [Time]
    # @!attribute started_at
    #   <p>A timestamp represented in epoch time.</p>
    #   @return [Time]
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
      :started_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A list of the variables to use in searching or filtering <code>Evaluation</code>.</p>
    #         <ul>
    #             <li>
    #                <p>
    #                   <code>CreatedAt</code> - Sets the search criteria to <code>Evaluation</code> creation date.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Status</code> - Sets the search criteria to <code>Evaluation</code> status.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Name</code> - Sets the search criteria to the contents of <code>Evaluation</code> 
    #                   <b> </b> 
    #                   <code>Name</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>IAMUser</code> - Sets the search criteria to the user account that invoked an evaluation.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>MLModelId</code> - Sets the search criteria to the <code>Predictor</code> that was evaluated.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used in evaluation.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DataUri</code> - Sets the search criteria to the data file(s) used in evaluation. The URL can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</p>
    #             </li>
    #          </ul>
    module EvaluationFilterVariable
      CREATED_AT = 'CreatedAt'
      LAST_UPDATED_AT = 'LastUpdatedAt'
      STATUS = 'Status'
      NAME = 'Name'
      IAM_USER = 'IAMUser'
      ML_MODEL_ID = 'MLModelId'
      DATASOURCE_ID = 'DataSourceId'
      DATA_URI = 'DataURI'
    end

    # @!attribute batch_prediction_id
    #   <p>An ID assigned to the <code>BatchPrediction</code> at creation.</p>
    #   @return [String]
    class GetBatchPredictionInput < Struct.new(
      :batch_prediction_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>GetBatchPrediction</code> operation and describes a <code>BatchPrediction</code>.</p>
    # @!attribute batch_prediction_id
    #   <p>An ID assigned to the <code>BatchPrediction</code> at creation. This value should be identical to the value of the <code>BatchPredictionID</code> 
    #               in the request.</p>
    #   @return [String]
    # @!attribute ml_model_id
    #   <p>The ID of the <code>MLModel</code> that generated predictions for the <code>BatchPrediction</code> request.</p>
    #   @return [String]
    # @!attribute batch_prediction_data_source_id
    #   <p>The ID of the <code>DataSource</code> that was used to create the <code>BatchPrediction</code>.
    #           </p>
    #   @return [String]
    # @!attribute input_data_location_s3
    #   <p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>
    #   @return [String]
    # @!attribute created_by_iam_user
    #   <p>The AWS user account that invoked the <code>BatchPrediction</code>. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the <code>BatchPrediction</code> was created. The time is expressed in epoch time.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The time of the most recent edit to <code>BatchPrediction</code>. The time is expressed in epoch time.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>A user-supplied name or description of the <code>BatchPrediction</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the <code>BatchPrediction</code>, which can be one of the following values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> - Amazon Machine Learning (Amazon ML) submitted a request to generate batch predictions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INPROGRESS</code> - The batch predictions are in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - The request to perform a batch prediction did not run to completion. It is not usable.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code> - The batch prediction process completed successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code> - The <code>BatchPrediction</code> is marked as deleted. It is not usable.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute output_uri
    #   <p>The location of an Amazon S3 bucket or directory to receive the operation results.</p>
    #   @return [String]
    # @!attribute log_uri
    #   <p>A link to the file that contains logs of the <code>CreateBatchPrediction</code> operation.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A description of the most recent details about processing the batch prediction request.</p>
    #   @return [String]
    # @!attribute compute_time
    #   <p>The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the <code>BatchPrediction</code>, normalized and scaled on computation resources. <code>ComputeTime</code> is only available if the <code>BatchPrediction</code> is in the <code>COMPLETED</code> state.</p>
    #   @return [Integer]
    # @!attribute finished_at
    #   <p>The epoch time when Amazon Machine Learning marked the <code>BatchPrediction</code> as <code>COMPLETED</code> or <code>FAILED</code>. <code>FinishedAt</code> is only available when the <code>BatchPrediction</code> is in the <code>COMPLETED</code> or <code>FAILED</code> state.</p>
    #   @return [Time]
    # @!attribute started_at
    #   <p>The epoch time when Amazon Machine Learning marked the <code>BatchPrediction</code> as <code>INPROGRESS</code>. <code>StartedAt</code> isn't available if the <code>BatchPrediction</code> is in the <code>PENDING</code> state.</p>
    #   @return [Time]
    # @!attribute total_record_count
    #   <p>The number of total records that Amazon Machine Learning saw while processing the <code>BatchPrediction</code>.</p>
    #   @return [Integer]
    # @!attribute invalid_record_count
    #   <p>The number of invalid records that Amazon Machine Learning saw while processing the <code>BatchPrediction</code>.</p>
    #   @return [Integer]
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
      :invalid_record_count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_source_id
    #   <p>The ID assigned to the <code>DataSource</code> at creation.</p>
    #   @return [String]
    # @!attribute verbose
    #   <p>Specifies whether the <code>GetDataSource</code> operation should return <code>DataSourceSchema</code>.</p>
    #           <p>If true, <code>DataSourceSchema</code> is returned.</p>
    #           <p>If false, <code>DataSourceSchema</code> is not returned.</p>
    #   @return [Boolean]
    class GetDataSourceInput < Struct.new(
      :data_source_id,
      :verbose,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>GetDataSource</code> operation and describes a <code>DataSource</code>.</p>
    # @!attribute data_source_id
    #   <p>The ID assigned to the <code>DataSource</code> at creation.  This value should be identical to the value of the <code>DataSourceId</code> in the request.</p>
    #   @return [String]
    # @!attribute data_location_s3
    #   <p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>
    #   @return [String]
    # @!attribute data_rearrangement
    #   <p>A JSON string that represents the splitting and rearrangement requirement used when this <code>DataSource</code>
    #               was created.</p>
    #   @return [String]
    # @!attribute created_by_iam_user
    #   <p>The AWS user account from which the <code>DataSource</code> was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time that the <code>DataSource</code> was created. The time is expressed in epoch time.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The time of the most recent edit to the <code>DataSource</code>. The time is expressed in epoch time.</p>
    #   @return [Time]
    # @!attribute data_size_in_bytes
    #   <p>The total size of observations in the data files.</p>
    #   @return [Integer]
    # @!attribute number_of_files
    #   <p>The number of data files referenced by the <code>DataSource</code>.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>A user-supplied name or description of the <code>DataSource</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the <code>DataSource</code>. This element can have one of the following values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> - Amazon ML submitted a request to create a <code>DataSource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INPROGRESS</code> - The creation process is underway.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - The request to create a <code>DataSource</code> did not run to completion. It is not usable.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code> - The creation process completed successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code> - The <code>DataSource</code> is marked as deleted. It is not usable.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute log_uri
    #   <p>A link to the file containing logs of <code>CreateDataSourceFrom*</code> operations.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The user-supplied description of the most recent details about creating the <code>DataSource</code>.</p>
    #   @return [String]
    # @!attribute redshift_metadata
    #   <p>Describes the <code>DataSource</code> details specific to Amazon Redshift.</p>
    #   @return [Types::RedshiftMetadata]
    # @!attribute rds_metadata
    #   <p>The datasource details that are specific to Amazon RDS.</p>
    #   @return [Types::RDSMetadata]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html#roles-about-termsandconcepts">AWS IAM Role</a>, such as the following: arn:aws:iam::account:role/rolename. </p>
    #   @return [String]
    # @!attribute compute_statistics
    #   <p>
    #               The parameter is <code>true</code> if statistics need to be generated from the observation data.
    #           </p>
    #   @return [Boolean]
    # @!attribute compute_time
    #   <p>The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the <code>DataSource</code>, normalized and scaled on computation resources. <code>ComputeTime</code> is only available if the <code>DataSource</code> is in the <code>COMPLETED</code> state and the <code>ComputeStatistics</code> is set to true.</p>
    #   @return [Integer]
    # @!attribute finished_at
    #   <p>The epoch time when Amazon Machine Learning marked the <code>DataSource</code> as <code>COMPLETED</code> or <code>FAILED</code>. <code>FinishedAt</code> is only available when the <code>DataSource</code> is in the <code>COMPLETED</code> or <code>FAILED</code> state.</p>
    #   @return [Time]
    # @!attribute started_at
    #   <p>The epoch time when Amazon Machine Learning marked the <code>DataSource</code> as <code>INPROGRESS</code>. <code>StartedAt</code> isn't available if the <code>DataSource</code> is in the <code>PENDING</code> state.</p>
    #   @return [Time]
    # @!attribute data_source_schema
    #   <p>The schema used by all of the data files of this <code>DataSource</code>.</p>
    #           <p>
    #               <b>Note:</b> This parameter is provided as part of the verbose format.</p>
    #   @return [String]
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
      :data_source_schema,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:compute_statistics] = false unless options.key?(:compute_statistics)
        super
      end
    end

    # @!attribute evaluation_id
    #   <p>The ID of the <code>Evaluation</code> to retrieve. The evaluation of each <code>MLModel</code> is recorded and cataloged. The ID provides the means to access the information. </p>
    #   @return [String]
    class GetEvaluationInput < Struct.new(
      :evaluation_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>GetEvaluation</code> operation and describes an <code>Evaluation</code>.</p>
    # @!attribute evaluation_id
    #   <p>The evaluation ID which is same as the <code>EvaluationId</code> in the request.</p>
    #   @return [String]
    # @!attribute ml_model_id
    #   <p>The ID of the <code>MLModel</code> that was the focus of the evaluation.</p>
    #   @return [String]
    # @!attribute evaluation_data_source_id
    #   <p>The <code>DataSource</code> used for this evaluation.</p>
    #   @return [String]
    # @!attribute input_data_location_s3
    #   <p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>
    #   @return [String]
    # @!attribute created_by_iam_user
    #   <p>The AWS user account that invoked the evaluation. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time that the <code>Evaluation</code> was created. The time is expressed in epoch time.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The time of the most recent edit to the <code>Evaluation</code>. The time is expressed in epoch time.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>A user-supplied name or description of the <code>Evaluation</code>. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the evaluation. This element can have one of the following values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> - Amazon Machine Language (Amazon ML) submitted a request to evaluate an <code>MLModel</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INPROGRESS</code> - The evaluation is underway.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - The request to evaluate an <code>MLModel</code> did not run to completion. It is not usable.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code> - The evaluation process completed successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code> - The <code>Evaluation</code> is marked as deleted. It is not usable.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute performance_metrics
    #   <p>Measurements of how well the <code>MLModel</code> performed using observations referenced by the <code>DataSource</code>. One of the following metric is returned based on the type of the <code>MLModel</code>: 
    #           </p>
    #           <ul>
    #               <li>
    #                  <p>BinaryAUC: A binary <code>MLModel</code> uses the Area Under the Curve (AUC) technique to measure performance. </p>
    #               </li>
    #               <li>
    #                  <p>RegressionRMSE: A regression <code>MLModel</code> uses the Root Mean Square Error (RMSE) technique to measure performance. RMSE measures the difference between predicted and actual values for a single variable.</p> 
    #               </li>
    #               <li>
    #                  <p>MulticlassAvgFScore: A multiclass <code>MLModel</code> uses the F1 score technique to measure performance. </p>
    #               </li>
    #            </ul>
    #           <p>
    #                           For more information about performance metrics, please see the <a href="https://docs.aws.amazon.com/machine-learning/latest/dg">Amazon Machine Learning Developer Guide</a>.
    #           </p>
    #   @return [Types::PerformanceMetrics]
    # @!attribute log_uri
    #   <p>A link to the file that contains logs of the <code>CreateEvaluation</code> operation.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A description of the most recent details about evaluating the <code>MLModel</code>.</p>
    #   @return [String]
    # @!attribute compute_time
    #   <p>The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the <code>Evaluation</code>, normalized and scaled on computation resources. <code>ComputeTime</code> is only available if the <code>Evaluation</code> is in the <code>COMPLETED</code> state.</p>
    #   @return [Integer]
    # @!attribute finished_at
    #   <p>The epoch time when Amazon Machine Learning marked the <code>Evaluation</code> as <code>COMPLETED</code> or <code>FAILED</code>. <code>FinishedAt</code> is only available when the <code>Evaluation</code> is in the <code>COMPLETED</code> or <code>FAILED</code> state.</p>
    #   @return [Time]
    # @!attribute started_at
    #   <p>The epoch time when Amazon Machine Learning marked the <code>Evaluation</code> as <code>INPROGRESS</code>. <code>StartedAt</code> isn't available if the <code>Evaluation</code> is in the <code>PENDING</code> state.</p>
    #   @return [Time]
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
      :started_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ml_model_id
    #   <p>The ID assigned to the <code>MLModel</code> at creation.</p>
    #   @return [String]
    # @!attribute verbose
    #   <p>Specifies whether the <code>GetMLModel</code> operation should return <code>Recipe</code>.</p>
    #           <p>If true, <code>Recipe</code> is returned.</p>
    #           <p>If false, <code>Recipe</code> is not returned.</p>
    #   @return [Boolean]
    class GetMLModelInput < Struct.new(
      :ml_model_id,
      :verbose,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>GetMLModel</code> operation, and provides detailed information about a <code>MLModel</code>.</p>
    # @!attribute ml_model_id
    #   <p>The MLModel ID, 
    #               which is same as the <code>MLModelId</code> in the request.</p>
    #   @return [String]
    # @!attribute training_data_source_id
    #   <p>The ID of the training <code>DataSource</code>.</p>
    #   @return [String]
    # @!attribute created_by_iam_user
    #   <p>The AWS user account from which the <code>MLModel</code> was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time that the <code>MLModel</code> was created. The time is expressed in epoch time.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The time of the most recent edit to the <code>MLModel</code>. The time is expressed in epoch time.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>A user-supplied name or description of the <code>MLModel</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the <code>MLModel</code>. This element can have one of the following values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> - Amazon Machine Learning (Amazon ML) submitted a request to describe a <code>MLModel</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INPROGRESS</code> - The request is processing.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - The request did not run to completion. The ML model isn't
    #                   usable.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code> - The request completed successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code> - The <code>MLModel</code> is marked as deleted. It isn't
    #                   usable.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute size_in_bytes
    #   <p>Long integer type that is a 64-bit signed number.</p>
    #   @return [Integer]
    # @!attribute endpoint_info
    #   <p>The current endpoint of the <code>MLModel</code>
    #            </p>
    #   @return [Types::RealtimeEndpointInfo]
    # @!attribute training_parameters
    #   <p>A list of the training parameters in the <code>MLModel</code>. The list is implemented as
    #               a map of key-value pairs.</p>
    #           <p>The following is the current set of training parameters:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>sgd.maxMLModelSizeInBytes</code> - The maximum allowed size of the model. Depending on the
    #                       input data, the size of the model might affect its performance.</p> 
    #                   <p> The value is an integer that ranges from <code>100000</code> to <code>2147483648</code>. The default value is <code>33554432</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sgd.maxPasses</code> - The number of times that the training process traverses the
    #                       observations to build the <code>MLModel</code>. The value is an integer that
    #                       ranges from <code>1</code> to <code>10000</code>. The default value is
    #                           <code>10</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sgd.shuffleType</code> - Whether Amazon ML shuffles the training data. Shuffling data improves a
    #                       model's ability to find the optimal solution for a variety of data types. The
    #                       valid values are <code>auto</code> and <code>none</code>. The default value is
    #                           <code>none</code>. We strongly recommend that you shuffle your data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sgd.l1RegularizationAmount</code> - The coefficient regularization L1 norm. It controls
    #                       overfitting the data by penalizing large coefficients. This tends to drive
    #                       coefficients to zero, resulting in a sparse feature set. If you use this
    #                       parameter, start by specifying a small value, such as <code>1.0E-08</code>.</p>
    #                   <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>.
    #                       The default is to not use L1 normalization. This parameter can't be used when
    #                           <code>L2</code> is specified. Use this parameter sparingly.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sgd.l2RegularizationAmount</code> - The coefficient regularization L2 norm. It controls
    #                       overfitting the data by penalizing large coefficients. This tends to drive
    #                       coefficients to small, nonzero values. If you use this parameter, start by
    #                       specifying a small value, such as <code>1.0E-08</code>.</p>
    #                   <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>.
    #                       The default is to not use L2 normalization. This parameter can't be used when
    #                           <code>L1</code> is specified. Use this parameter sparingly.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute input_data_location_s3
    #   <p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>
    #   @return [String]
    # @!attribute ml_model_type
    #   <p>Identifies the <code>MLModel</code> category. The following are the available types: </p>
    #           <ul>
    #               <li>
    #                  <p>REGRESSION -- Produces a numeric result. For example, "What price should a house be listed at?"</p>
    #               </li>
    #               <li>
    #                  <p>BINARY -- Produces one of two possible results. For example, "Is this an e-commerce website?"</p>
    #               </li>
    #               <li>
    #                  <p>MULTICLASS -- Produces one of several possible results. For example, "Is this a HIGH, LOW or MEDIUM risk trade?"</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute score_threshold
    #   <p>The scoring threshold is used in binary classification <code>MLModel</code>
    #               models. It marks the boundary between a positive prediction and a
    #               negative prediction.</p>
    #           <p>Output values greater than or equal to the threshold receive a positive result from the MLModel, such as 
    #               <code>true</code>. Output values less than the threshold receive a negative response from the MLModel, 
    #               such as <code>false</code>.</p>
    #   @return [Float]
    # @!attribute score_threshold_last_updated_at
    #   <p>The time of the most recent edit to the <code>ScoreThreshold</code>. The time is expressed in epoch time.</p>
    #   @return [Time]
    # @!attribute log_uri
    #   <p>A link to the file that contains logs of the <code>CreateMLModel</code> operation.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A description of the most recent details about accessing the <code>MLModel</code>.</p>
    #   @return [String]
    # @!attribute compute_time
    #   <p>The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the <code>MLModel</code>, normalized and scaled on computation resources. <code>ComputeTime</code> is only available if the <code>MLModel</code> is in the <code>COMPLETED</code> state.</p>
    #   @return [Integer]
    # @!attribute finished_at
    #   <p>The epoch time when Amazon Machine Learning marked the <code>MLModel</code> as <code>COMPLETED</code> or <code>FAILED</code>. <code>FinishedAt</code> is only available when the <code>MLModel</code> is in the <code>COMPLETED</code> or <code>FAILED</code> state.</p>
    #   @return [Time]
    # @!attribute started_at
    #   <p>The epoch time when Amazon Machine Learning marked the <code>MLModel</code> as <code>INPROGRESS</code>. <code>StartedAt</code> isn't available if the <code>MLModel</code> is in the <code>PENDING</code> state.</p>
    #   @return [Time]
    # @!attribute recipe
    #   <p>The recipe to use when training the <code>MLModel</code>. The <code>Recipe</code>
    #               provides detailed information about the observation data to use during training, and
    #               manipulations to perform on the observation data during training.</p>
    #           <p>
    #               <b>Note:</b> This parameter is provided as part of the verbose format.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>The schema used by all of the data files referenced by the <code>DataSource</code>.</p>
    #           <p>
    #               <b>Note:</b> This parameter is provided as part of the verbose format.</p>
    #   @return [String]
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
      :schema,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A second request to use or change an object was not allowed. This can result from retrying a request using a parameter that was not present in the original request.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [Integer]
    class IdempotentParameterMismatchException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:code] = 0 unless options.key?(:code)
        super
      end
    end

    # <p>An error on the server occurred when trying to process a request.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [Integer]
    class InternalServerException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:code] = 0 unless options.key?(:code)
        super
      end
    end

    # <p>An error on the client occurred. Typically, the cause is an invalid input value.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [Integer]
    class InvalidInputException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:code] = 0 unless options.key?(:code)
        super
      end
    end

    # @!attribute message
    #   @return [String]
    class InvalidTagException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The subscriber exceeded the maximum number of operations. This exception can occur when listing objects such as <code>DataSource</code>.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [Integer]
    class LimitExceededException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:code] = 0 unless options.key?(:code)
        super
      end
    end

    # <p> Represents the output of a <code>GetMLModel</code> operation. </p>
    #          <p>The content consists of the detailed metadata and the current status of the <code>MLModel</code>.</p>
    # @!attribute ml_model_id
    #   <p>The ID assigned to the <code>MLModel</code> at creation.</p>
    #   @return [String]
    # @!attribute training_data_source_id
    #   <p>The ID of the training <code>DataSource</code>. The <code>CreateMLModel</code> operation uses the <code>TrainingDataSourceId</code>.</p>
    #   @return [String]
    # @!attribute created_by_iam_user
    #   <p>The AWS user account from which the <code>MLModel</code> was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time that the <code>MLModel</code> was created. The time is expressed in epoch time.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The time of the most recent edit to the <code>MLModel</code>. The time is expressed in epoch time.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>A user-supplied name or description of the <code>MLModel</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of an <code>MLModel</code>. This element can have one of the following values: </p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code>	- Amazon Machine Learning (Amazon ML) submitted a request to create an <code>MLModel</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INPROGRESS</code>	- The creation process is underway.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - The request to create an <code>MLModel</code> didn't run to
    #                   completion. The model isn't usable.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code>	- The creation process completed successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code> - The <code>MLModel</code> is marked as deleted. It isn't
    #                   usable.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute size_in_bytes
    #   <p>Long integer type that is a 64-bit signed number.</p>
    #   @return [Integer]
    # @!attribute endpoint_info
    #   <p>The current endpoint of the <code>MLModel</code>.</p>
    #   @return [Types::RealtimeEndpointInfo]
    # @!attribute training_parameters
    #   <p>A list of the training parameters in the <code>MLModel</code>. The list is implemented as
    #               a map of key-value pairs.</p>
    #           <p>The following is the current set of training parameters:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>sgd.maxMLModelSizeInBytes</code> - The maximum allowed size of the model. Depending on the
    #                       input data, the size of the model might affect its performance.</p> 
    #                   <p> The value is an integer that ranges from <code>100000</code> to <code>2147483648</code>. The default value is <code>33554432</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sgd.maxPasses</code> - The number of times that the training process traverses the
    #                       observations to build the <code>MLModel</code>. The value is an integer that
    #                       ranges from <code>1</code> to <code>10000</code>. The default value is
    #                           <code>10</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sgd.shuffleType</code> - Whether Amazon ML shuffles the training data. Shuffling the data
    #                       improves a model's ability to find the optimal solution for a variety of data
    #                       types. The valid values are <code>auto</code> and <code>none</code>. The default
    #                       value is <code>none</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sgd.l1RegularizationAmount</code> - The coefficient regularization L1 norm, which controls
    #                       overfitting the data by penalizing large coefficients. This parameter tends to
    #                       drive coefficients to zero, resulting in sparse feature set. If you use this
    #                       parameter, start by specifying a small value, such as <code>1.0E-08</code>.</p>
    #                   <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>.
    #                       The default is to not use L1 normalization. This parameter can't be used when
    #                           <code>L2</code> is specified. Use this parameter sparingly.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sgd.l2RegularizationAmount</code> - The coefficient regularization L2 norm, which controls
    #                       overfitting the data by penalizing large coefficients. This tends to drive
    #                       coefficients to small, nonzero values. If you use this parameter, start by
    #                       specifying a small value, such as <code>1.0E-08</code>.</p>
    #                   <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>.
    #                       The default is to not use L2 normalization. This parameter can't be used when
    #                           <code>L1</code> is specified. Use this parameter sparingly.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute input_data_location_s3
    #   <p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>
    #   @return [String]
    # @!attribute algorithm
    #   <p>The algorithm used to train the <code>MLModel</code>. The following algorithm is supported:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>SGD</code> -- Stochastic gradient descent. The goal of <code>SGD</code> is to minimize the gradient of the loss function. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute ml_model_type
    #   <p>Identifies the <code>MLModel</code> category. The following are the available types:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>REGRESSION</code> - Produces a numeric result. For example, "What price should a
    #                   house be listed at?"</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BINARY</code> - Produces one of two possible results. For example, "Is this a
    #                   child-friendly web site?".</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MULTICLASS</code> - Produces one of several possible results. For example, "Is
    #                   this a HIGH-, LOW-, or MEDIUM-risk trade?".</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute score_threshold
    #   @return [Float]
    # @!attribute score_threshold_last_updated_at
    #   <p>The time of the most recent edit to the <code>ScoreThreshold</code>. The time is expressed in epoch time.</p>
    #   @return [Time]
    # @!attribute message
    #   <p>A description of the most recent details about accessing the <code>MLModel</code>.</p>
    #   @return [String]
    # @!attribute compute_time
    #   <p>Long integer type that is a 64-bit signed number.</p>
    #   @return [Integer]
    # @!attribute finished_at
    #   <p>A timestamp represented in epoch time.</p>
    #   @return [Time]
    # @!attribute started_at
    #   <p>A timestamp represented in epoch time.</p>
    #   @return [Time]
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
      :started_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MLModelFilterVariable
      CREATED_AT = 'CreatedAt'
      LAST_UPDATED_AT = 'LastUpdatedAt'
      STATUS = 'Status'
      NAME = 'Name'
      IAM_USER = 'IAMUser'
      TRAINING_DATASOURCE_ID = 'TrainingDataSourceId'
      REAL_TIME_ENDPOINT_STATUS = 'RealtimeEndpointStatus'
      ML_MODEL_TYPE = 'MLModelType'
      ALGORITHM = 'Algorithm'
      TRAINING_DATA_URI = 'TrainingDataURI'
    end

    module MLModelType
      REGRESSION = 'REGRESSION'
      BINARY = 'BINARY'
      MULTICLASS = 'MULTICLASS'
    end

    # <p>Measurements of how well the <code>MLModel</code> performed on known observations. One of the following metrics is returned, based on the type of the <code>MLModel</code>: 
    #         </p>
    #         <ul>
    #             <li>
    #                <p>BinaryAUC: The binary <code>MLModel</code> uses the Area Under the Curve (AUC) technique to measure performance. </p>
    #             </li>
    #             <li>
    #                <p>RegressionRMSE: The regression <code>MLModel</code> uses the Root Mean Square Error (RMSE) technique to measure performance. RMSE measures the difference between predicted and actual values for a single variable.</p> 
    #             </li>
    #             <li>
    #                <p>MulticlassAvgFScore: The multiclass <code>MLModel</code> uses the F1 score technique to measure performance. </p>
    #             </li>
    #          </ul>
    #         <p>
    #             For more information about performance metrics, please see the <a href="https://docs.aws.amazon.com/machine-learning/latest/dg">Amazon Machine Learning Developer Guide</a>.
    #         </p>
    # @!attribute properties
    #   @return [Hash<String, String>]
    class PerformanceMetrics < Struct.new(
      :properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ml_model_id
    #   <p>A unique identifier of the <code>MLModel</code>.</p>
    #   @return [String]
    # @!attribute record
    #   <p>A map of variable name-value pairs that represent an observation.</p>
    #   @return [Hash<String, String>]
    # @!attribute predict_endpoint
    #   @return [String]
    class PredictInput < Struct.new(
      :ml_model_id,
      :record,
      :predict_endpoint,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute prediction
    #   <p>The output from a <code>Predict</code> operation: </p>
    #   		
    #   		       <ul>
    #               <li> 
    #   				           <p>
    #   				              <code>Details</code> - Contains the following attributes:
    #   				  <code>DetailsAttributes.PREDICTIVE_MODEL_TYPE - REGRESSION | BINARY | MULTICLASS</code>
    #   				              <code>DetailsAttributes.ALGORITHM - SGD</code>
    #   				           </p>
    #   			         </li>
    #               <li> 
    #   				           <p>
    #   				              <code>PredictedLabel</code> - Present for either a <code>BINARY</code> or <code>MULTICLASS</code> 
    #                     <code>MLModel</code> request.
    #   				</p>
    #   			         </li>
    #               <li> 
    #   				           <p>
    #   				              <code>PredictedScores</code> - Contains the raw classification score corresponding to each label.
    #   				</p>				
    #   			         </li>
    #               <li> 
    #   				           <p>
    #   				              <code>PredictedValue</code> - Present for a <code>REGRESSION</code> 
    #                     <code>MLModel</code> request.
    #   				</p>				
    #   			         </li>
    #            </ul>
    #   @return [Types::Prediction]
    class PredictOutput < Struct.new(
      :prediction,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The output from a <code>Predict</code> operation: </p>
    # 		
    # 		       <ul>
    #             <li> 
    # 				           <p>
    # 				              <code>Details</code> - Contains the following attributes:
    # 				  <code>DetailsAttributes.PREDICTIVE_MODEL_TYPE - REGRESSION | BINARY | MULTICLASS</code>
    # 				              <code>DetailsAttributes.ALGORITHM - SGD</code>
    # 				           </p>
    # 			         </li>
    #             <li> 
    # 				           <p>
    # 				              <code>PredictedLabel</code> - Present for either a <code>BINARY</code> or <code>MULTICLASS</code> 
    #                   <code>MLModel</code> request.
    # 				</p>
    # 			         </li>
    #             <li> 
    # 				           <p>
    # 				              <code>PredictedScores</code> - Contains the raw classification score corresponding to each label.
    # 				</p>				
    # 			         </li>
    #             <li> 
    # 				           <p>
    # 				              <code>PredictedValue</code> - Present for a <code>REGRESSION</code> 
    #                   <code>MLModel</code> request.
    # 				</p>				
    # 			         </li>
    #          </ul>
    # @!attribute predicted_label
    #   <p>The prediction label for either a <code>BINARY</code> or <code>MULTICLASS</code> 
    #               <code>MLModel</code>.</p>
    #   @return [String]
    # @!attribute predicted_value
    #   <p>The prediction value for <code>REGRESSION</code> 
    #               <code>MLModel</code>.</p>
    #   @return [Float]
    # @!attribute predicted_scores
    #   <p>Provides the raw classification score corresponding to each label.</p>
    #   @return [Hash<String, Float>]
    # @!attribute details
    #   <p>Provides any additional details regarding the prediction.</p>
    #   @return [Hash<String, String>]
    class Prediction < Struct.new(
      :predicted_label,
      :predicted_value,
      :predicted_scores,
      :details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The exception is thrown when a predict request is made to an unmounted <code>MLModel</code>.</p>
    # @!attribute message
    #   @return [String]
    class PredictorNotMountedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The data specification of an Amazon Relational Database Service (Amazon RDS) <code>DataSource</code>.</p>
    # @!attribute database_information
    #   <p>Describes the <code>DatabaseName</code> and <code>InstanceIdentifier</code> of an Amazon RDS database.</p>
    #   @return [Types::RDSDatabase]
    # @!attribute select_sql_query
    #   <p>The query that is used to retrieve the observation data for the <code>DataSource</code>.</p>
    #   @return [String]
    # @!attribute database_credentials
    #   <p>The AWS Identity and Access Management (IAM) credentials that are used connect to the Amazon RDS database.</p>
    #   @return [Types::RDSDatabaseCredentials]
    # @!attribute s3_staging_location
    #   <p>The Amazon S3 location for staging Amazon RDS data. The data retrieved from Amazon RDS using <code>SelectSqlQuery</code> is stored in this location.</p>
    #   @return [String]
    # @!attribute data_rearrangement
    #   <p>A JSON string that represents the splitting and rearrangement 
    #       processing to be applied to a <code>DataSource</code>. If the <code>DataRearrangement</code> 
    #       parameter is not provided, all of the input data is used to create the <code>Datasource</code>.</p>
    #   
    #            <p>There are multiple parameters that control what data is used to create a datasource:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>percentBegin</code>
    #                     </b>
    #                  </p>
    #                  <p>Use <code>percentBegin</code> to indicate the beginning of the range of the data used to 
    #           create the Datasource.
    #           If you do not include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML includes 
    #           all of the data when creating the datasource.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>percentEnd</code>
    #                     </b>
    #                  </p>
    #                  <p>Use <code>percentEnd</code> to indicate the end of the range of the data used to create the 
    #           Datasource. If you do not
    #           include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML 
    #           includes all of the data when creating the datasource.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>complement</code>
    #                     </b>
    #                  </p>
    #                  <p>The <code>complement</code> parameter instructs Amazon ML to use the data that is
    #       not included in the range of <code>percentBegin</code> to <code>percentEnd</code> to create a
    #       datasource. The <code>complement</code> parameter is useful if you need to create 
    #       complementary datasources for training and evaluation.
    #       To create a complementary datasource, use the same
    #       values for <code>percentBegin</code> and <code>percentEnd</code>, along with the
    #       <code>complement</code> parameter.</p>
    #   
    #                  <p>For example, the following two datasources do not share any data, and can be used to train and evaluate a model. The first datasource has 25 percent of the data, and the second one has 75 percent of the data.</p>
    #                  <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":0, "percentEnd":25}}</code>
    #                  </p>
    #                  <p>Datasource for training: <code>{"splitting":{"percentBegin":0, "percentEnd":25, "complement":"true"}}</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>strategy</code>
    #                     </b>
    #                  </p>
    #                  <p>To change how Amazon ML splits the data for a datasource, use the <code>strategy</code> parameter.</p>
    #                  <p>The default value for the <code>strategy</code> parameter
    #       is <code>sequential</code>, meaning that Amazon ML takes all of the data records between the <code>percentBegin</code>
    #       and <code>percentEnd</code> parameters for the datasource, in the order that the records appear in the input data.</p>
    #   
    #                  <p>The following two <code>DataRearrangement</code> lines are examples of sequentially ordered
    #       training and evaluation datasources:</p>
    #                  <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"sequential"}}</code>
    #                  </p>
    #                  <p>Datasource for training: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"sequential", "complement":"true"}}</code>
    #                  </p>
    #   
    #                  <p>To randomly split the input data into the proportions indicated by the percentBegin and percentEnd 
    #           parameters, set the <code>strategy</code> parameter to
    #       <code>random</code> and provide a string that is used as the seed value for the random data splitting (for 
    #       example, you can use the S3 path to your data as the random seed string). 
    #       If you choose the random split strategy,
    #       Amazon ML assigns each row of data a pseudo-random number between 0 and 100, and then selects the rows that have an assigned
    #       number between <code>percentBegin</code> and <code>percentEnd</code>. Pseudo-random numbers are assigned 
    #       using both the input seed string value and the byte offset as a seed, so changing the data results in a 
    #       different split. Any existing ordering is preserved.
    #       The random splitting strategy ensures that variables in the training and evaluation data are distributed similarly. 
    #       It is useful in the cases where the input data may have an implicit sort order, which would otherwise result in 
    #       training and evaluation datasources containing non-similar data records.</p>
    #                  <p>The following two <code>DataRearrangement</code> lines are examples of non-sequentially ordered
    #       training and evaluation datasources:</p>
    #                  <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"random", "randomSeed"="s3://my_s3_path/bucket/file.csv"}}</code>
    #                  </p>
    #                  <p>Datasource for training: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"random", "randomSeed"="s3://my_s3_path/bucket/file.csv", "complement":"true"}}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute data_schema
    #   <p>A JSON string that represents the schema for an Amazon RDS
    #               <code>DataSource</code>. The <code>DataSchema</code>
    #               defines the structure of the observation data in the data file(s)
    #               referenced in the <code>DataSource</code>.</p>
    #           <p>A <code>DataSchema</code> is not required if you specify a 
    #               <code>DataSchemaUri</code>
    #            </p>
    #           <p>Define your <code>DataSchema</code> as a series of key-value pairs. <code>attributes</code>
    #               and <code>excludedVariableNames</code> have an array of key-value pairs
    #               for their value. Use the following format to define your <code>DataSchema</code>.</p>
    #           <p>{ "version": "1.0",</p>
    #            <p>"recordAnnotationFieldName": "F1",</p>
    #            <p>"recordWeightFieldName": "F2",</p>
    #            <p>"targetFieldName": "F3",</p>
    #            <p>"dataFormat": "CSV",</p>
    #            <p>"dataFileContainsHeader": true,</p>
    #            <p>"attributes": [</p>
    #            <p>{ "fieldName": "F1", "fieldType": "TEXT" }, { "fieldName": "F2", "fieldType": "NUMERIC" }, { "fieldName": "F3", "fieldType": "CATEGORICAL" }, { "fieldName": "F4", "fieldType": "NUMERIC" }, { "fieldName": "F5", "fieldType": "CATEGORICAL" }, { "fieldName": "F6", "fieldType": "TEXT" }, { "fieldName": "F7", "fieldType": "WEIGHTED_INT_SEQUENCE" }, { "fieldName": "F8", "fieldType": "WEIGHTED_STRING_SEQUENCE" } ],</p>
    #            <p>"excludedVariableNames": [ "F6" ] }</p>
    #   @return [String]
    # @!attribute data_schema_uri
    #   <p>The Amazon S3 location of the <code>DataSchema</code>. </p>
    #   @return [String]
    # @!attribute resource_role
    #   <p>The role (DataPipelineDefaultResourceRole) assumed by an Amazon Elastic Compute Cloud (Amazon EC2) instance to carry out the copy operation from Amazon RDS to an Amazon S3 task. For more information, see <a href="https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role templates</a> for data pipelines.</p>
    #   @return [String]
    # @!attribute service_role
    #   <p>The role (DataPipelineDefaultRole) assumed by AWS Data Pipeline service to monitor the progress of the copy task from Amazon RDS to Amazon S3. For more information, see <a href="https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role templates</a> for data pipelines.</p>
    #   @return [String]
    # @!attribute subnet_id
    #   <p>The subnet ID to be used to access a VPC-based RDS DB instance. This attribute is used by Data Pipeline to carry out the copy task from Amazon RDS to Amazon S3.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>The security group IDs to be used to access a VPC-based RDS DB instance. Ensure that there are appropriate ingress rules set up to allow access to the RDS DB instance. This attribute is used by Data Pipeline to carry out the copy operation from Amazon RDS to an Amazon S3 task.</p>
    #   @return [Array<String>]
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
      :security_group_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The database details of an Amazon RDS database.</p>
    # @!attribute instance_identifier
    #   <p>The ID of an RDS DB instance.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of a database hosted on an RDS DB instance.</p>
    #   @return [String]
    class RDSDatabase < Struct.new(
      :instance_identifier,
      :database_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The database credentials to connect to a database on an RDS DB instance.</p>
    # @!attribute username
    #   <p>The username to be used by Amazon ML to connect to database on an Amazon RDS instance.
    #               The username should have sufficient permissions to execute an <code>RDSSelectSqlQuery</code> query.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The password to be used by Amazon ML to connect to a database on an RDS DB instance.
    #               The password should have sufficient permissions to execute the <code>RDSSelectQuery</code> query.</p>
    #   @return [String]
    class RDSDatabaseCredentials < Struct.new(
      :username,
      :password,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The datasource details that are specific to Amazon RDS.</p>
    # @!attribute database
    #   <p>The database details required to connect to an Amazon RDS.</p>
    #   @return [Types::RDSDatabase]
    # @!attribute database_user_name
    #   <p>The username to be used by Amazon ML to connect to database on an Amazon RDS instance.
    #               The username should have sufficient permissions to execute an <code>RDSSelectSqlQuery</code> query.</p>
    #   @return [String]
    # @!attribute select_sql_query
    #   <p>The SQL query that is supplied during <a>CreateDataSourceFromRDS</a>. Returns only if <code>Verbose</code> is true in <code>GetDataSourceInput</code>. </p>
    #   @return [String]
    # @!attribute resource_role
    #   <p>The role (DataPipelineDefaultResourceRole) assumed by an Amazon EC2 instance to carry out the copy task from Amazon RDS to Amazon S3. For more information, see <a href="https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role templates</a> for data pipelines.</p>
    #   @return [String]
    # @!attribute service_role
    #   <p>The role (DataPipelineDefaultRole) assumed by the Data Pipeline service to monitor the progress of the copy task from Amazon RDS to Amazon S3. For more information, see <a href="https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role templates</a> for data pipelines.</p>
    #   @return [String]
    # @!attribute data_pipeline_id
    #   <p>The ID of the Data Pipeline instance that is used to carry to copy data from Amazon RDS to Amazon S3. You can use the ID to find details about the instance in the Data Pipeline console.</p>
    #   @return [String]
    class RDSMetadata < Struct.new(
      :database,
      :database_user_name,
      :select_sql_query,
      :resource_role,
      :service_role,
      :data_pipeline_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Describes the real-time endpoint information for an <code>MLModel</code>.</p>
    # @!attribute peak_requests_per_second
    #   <p> The maximum processing rate for the real-time endpoint for <code>MLModel</code>, measured in incoming requests per second.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The time that the request to create the real-time endpoint for the <code>MLModel</code> was received. The time is expressed in epoch time.</p>
    #   @return [Time]
    # @!attribute endpoint_url
    #   <p>The URI that specifies where to send real-time prediction requests for the <code>MLModel</code>.</p>
    #           <p>
    #               <b>Note:</b> The application must wait until the real-time endpoint is ready before using this URI.</p>
    #   @return [String]
    # @!attribute endpoint_status
    #   <p> The current status of the real-time endpoint for the <code>MLModel</code>. This element can have one of the following values: </p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code>  - Endpoint does not exist or was previously deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>READY</code> - Endpoint is ready to be used for real-time predictions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - Updating/creating the endpoint. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class RealtimeEndpointInfo < Struct.new(
      :peak_requests_per_second,
      :created_at,
      :endpoint_url,
      :endpoint_status,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:peak_requests_per_second] = 0 unless options.key?(:peak_requests_per_second)
        super
      end
    end

    module RealtimeEndpointStatus
      NONE = 'NONE'
      READY = 'READY'
      UPDATING = 'UPDATING'
      FAILED = 'FAILED'
    end

    # <p>Describes the data specification of an Amazon Redshift <code>DataSource</code>.</p>
    # @!attribute database_information
    #   <p>Describes the <code>DatabaseName</code> and <code>ClusterIdentifier</code> for an Amazon Redshift <code>DataSource</code>.</p>
    #   @return [Types::RedshiftDatabase]
    # @!attribute select_sql_query
    #   <p>Describes the SQL Query to execute on an Amazon Redshift database for an Amazon Redshift <code>DataSource</code>.</p>
    #   @return [String]
    # @!attribute database_credentials
    #   <p>Describes AWS Identity and Access Management (IAM) credentials that are used connect to the Amazon Redshift database.</p>
    #   @return [Types::RedshiftDatabaseCredentials]
    # @!attribute s3_staging_location
    #   <p>Describes an Amazon S3 location to store the result set of the <code>SelectSqlQuery</code> query.</p>
    #   @return [String]
    # @!attribute data_rearrangement
    #   <p>A JSON string that represents the splitting and rearrangement 
    #       processing to be applied to a <code>DataSource</code>. If the <code>DataRearrangement</code> 
    #       parameter is not provided, all of the input data is used to create the <code>Datasource</code>.</p>
    #   
    #            <p>There are multiple parameters that control what data is used to create a datasource:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>percentBegin</code>
    #                     </b>
    #                  </p>
    #                  <p>Use <code>percentBegin</code> to indicate the beginning of the range of the data used to 
    #           create the Datasource.
    #           If you do not include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML includes 
    #           all of the data when creating the datasource.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>percentEnd</code>
    #                     </b>
    #                  </p>
    #                  <p>Use <code>percentEnd</code> to indicate the end of the range of the data used to create the 
    #           Datasource. If you do not
    #           include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML 
    #           includes all of the data when creating the datasource.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>complement</code>
    #                     </b>
    #                  </p>
    #                  <p>The <code>complement</code> parameter instructs Amazon ML to use the data that is
    #       not included in the range of <code>percentBegin</code> to <code>percentEnd</code> to create a
    #       datasource. The <code>complement</code> parameter is useful if you need to create 
    #       complementary datasources for training and evaluation.
    #       To create a complementary datasource, use the same
    #       values for <code>percentBegin</code> and <code>percentEnd</code>, along with the
    #       <code>complement</code> parameter.</p>
    #   
    #                  <p>For example, the following two datasources do not share any data, and can be used to train and evaluate a model. The first datasource has 25 percent of the data, and the second one has 75 percent of the data.</p>
    #                  <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":0, "percentEnd":25}}</code>
    #                  </p>
    #                  <p>Datasource for training: <code>{"splitting":{"percentBegin":0, "percentEnd":25, "complement":"true"}}</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>strategy</code>
    #                     </b>
    #                  </p>
    #                  <p>To change how Amazon ML splits the data for a datasource, use the <code>strategy</code> parameter.</p>
    #                  <p>The default value for the <code>strategy</code> parameter
    #       is <code>sequential</code>, meaning that Amazon ML takes all of the data records between the <code>percentBegin</code>
    #       and <code>percentEnd</code> parameters for the datasource, in the order that the records appear in the input data.</p>
    #   
    #                  <p>The following two <code>DataRearrangement</code> lines are examples of sequentially ordered
    #       training and evaluation datasources:</p>
    #                  <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"sequential"}}</code>
    #                  </p>
    #                  <p>Datasource for training: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"sequential", "complement":"true"}}</code>
    #                  </p>
    #   
    #                  <p>To randomly split the input data into the proportions indicated by the percentBegin and percentEnd 
    #           parameters, set the <code>strategy</code> parameter to
    #       <code>random</code> and provide a string that is used as the seed value for the random data splitting (for 
    #       example, you can use the S3 path to your data as the random seed string). 
    #       If you choose the random split strategy,
    #       Amazon ML assigns each row of data a pseudo-random number between 0 and 100, and then selects the rows that have an assigned
    #       number between <code>percentBegin</code> and <code>percentEnd</code>. Pseudo-random numbers are assigned 
    #       using both the input seed string value and the byte offset as a seed, so changing the data results in a 
    #       different split. Any existing ordering is preserved.
    #       The random splitting strategy ensures that variables in the training and evaluation data are distributed similarly. 
    #       It is useful in the cases where the input data may have an implicit sort order, which would otherwise result in 
    #       training and evaluation datasources containing non-similar data records.</p>
    #                  <p>The following two <code>DataRearrangement</code> lines are examples of non-sequentially ordered
    #       training and evaluation datasources:</p>
    #                  <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"random", "randomSeed"="s3://my_s3_path/bucket/file.csv"}}</code>
    #                  </p>
    #                  <p>Datasource for training: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"random", "randomSeed"="s3://my_s3_path/bucket/file.csv", "complement":"true"}}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute data_schema
    #   <p>A JSON string that represents the schema for an Amazon Redshift 
    #               <code>DataSource</code>. The <code>DataSchema</code>
    #               defines the structure of the observation data in the data file(s)
    #               referenced in the <code>DataSource</code>.</p>
    #           <p>A <code>DataSchema</code> is not required if you specify a 
    #               <code>DataSchemaUri</code>.</p>
    #           <p>Define your <code>DataSchema</code> as a series of key-value pairs. <code>attributes</code>
    #               and <code>excludedVariableNames</code> have an array of key-value pairs
    #               for their value. Use the following format to define your <code>DataSchema</code>.</p>
    #           <p>{ "version": "1.0",</p>
    #            <p>"recordAnnotationFieldName": "F1",</p>
    #            <p>"recordWeightFieldName": "F2",</p>
    #            <p>"targetFieldName": "F3",</p>
    #            <p>"dataFormat": "CSV",</p>
    #            <p>"dataFileContainsHeader": true,</p>
    #            <p>"attributes": [</p>
    #            <p>{ "fieldName": "F1", "fieldType": "TEXT" }, { "fieldName": "F2", "fieldType": "NUMERIC" }, { "fieldName": "F3", "fieldType": "CATEGORICAL" }, { "fieldName": "F4", "fieldType": "NUMERIC" }, { "fieldName": "F5", "fieldType": "CATEGORICAL" }, { "fieldName": "F6", "fieldType": "TEXT" }, { "fieldName": "F7", "fieldType": "WEIGHTED_INT_SEQUENCE" }, { "fieldName": "F8", "fieldType": "WEIGHTED_STRING_SEQUENCE" } ],</p>
    #            <p>"excludedVariableNames": [ "F6" ] }</p>
    #   @return [String]
    # @!attribute data_schema_uri
    #   <p>Describes the schema location for an Amazon Redshift <code>DataSource</code>.</p>
    #   @return [String]
    class RedshiftDataSpec < Struct.new(
      :database_information,
      :select_sql_query,
      :database_credentials,
      :s3_staging_location,
      :data_rearrangement,
      :data_schema,
      :data_schema_uri,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the database details required to connect to an Amazon Redshift database.</p>
    # @!attribute database_name
    #   <p>The name of a database hosted on an Amazon Redshift cluster.</p>
    #   @return [String]
    # @!attribute cluster_identifier
    #   <p>The ID of an Amazon Redshift cluster.</p>
    #   @return [String]
    class RedshiftDatabase < Struct.new(
      :database_name,
      :cluster_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the database credentials for connecting to a database on an Amazon Redshift cluster.</p>
    # @!attribute username
    #   <p>A username to be used by Amazon Machine Learning (Amazon ML)to connect to a database on an Amazon Redshift cluster.
    #             The username should have sufficient permissions to execute the <code>RedshiftSelectSqlQuery</code> query. The username should be valid for an Amazon Redshift <a href="https://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html">USER</a>.</p>
    #   @return [String]
    # @!attribute password
    #   <p>A password to be used by Amazon ML to connect to a database on an Amazon Redshift cluster.
    #             The password should have sufficient permissions to execute a <code>RedshiftSelectSqlQuery</code> query. The password should be valid for an Amazon Redshift <a href="https://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html">USER</a>.</p>
    #   @return [String]
    class RedshiftDatabaseCredentials < Struct.new(
      :username,
      :password,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the <code>DataSource</code> details specific to Amazon Redshift.</p>
    # @!attribute redshift_database
    #   <p>Describes the database details required to connect to an Amazon Redshift database.</p>
    #   @return [Types::RedshiftDatabase]
    # @!attribute database_user_name
    #   <p>A username to be used by Amazon Machine Learning (Amazon ML)to connect to a database on an Amazon Redshift cluster.
    #             The username should have sufficient permissions to execute the <code>RedshiftSelectSqlQuery</code> query. The username should be valid for an Amazon Redshift <a href="https://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html">USER</a>.</p>
    #   @return [String]
    # @!attribute select_sql_query
    #   <p> The SQL query that is specified during <a>CreateDataSourceFromRedshift</a>. Returns only if <code>Verbose</code> is true in GetDataSourceInput. </p>
    #   @return [String]
    class RedshiftMetadata < Struct.new(
      :redshift_database,
      :database_user_name,
      :select_sql_query,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A specified resource cannot be located.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [Integer]
    class ResourceNotFoundException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:code] = 0 unless options.key?(:code)
        super
      end
    end

    # <p> Describes the data specification of a <code>DataSource</code>.</p>
    # @!attribute data_location_s3
    #   <p>The location of the data file(s) used by a <code>DataSource</code>. The URI specifies a data file or 
    #               an Amazon Simple Storage Service (Amazon S3) directory or bucket containing data files.</p>
    #   @return [String]
    # @!attribute data_rearrangement
    #   <p>A JSON string that represents the splitting and rearrangement 
    #       processing to be applied to a <code>DataSource</code>. If the <code>DataRearrangement</code> 
    #       parameter is not provided, all of the input data is used to create the <code>Datasource</code>.</p>
    #   
    #            <p>There are multiple parameters that control what data is used to create a datasource:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>percentBegin</code>
    #                     </b>
    #                  </p>
    #                  <p>Use <code>percentBegin</code> to indicate the beginning of the range of the data used to 
    #           create the Datasource.
    #           If you do not include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML includes 
    #           all of the data when creating the datasource.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>percentEnd</code>
    #                     </b>
    #                  </p>
    #                  <p>Use <code>percentEnd</code> to indicate the end of the range of the data used to create the 
    #           Datasource. If you do not
    #           include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML 
    #           includes all of the data when creating the datasource.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>complement</code>
    #                     </b>
    #                  </p>
    #                  <p>The <code>complement</code> parameter instructs Amazon ML to use the data that is
    #       not included in the range of <code>percentBegin</code> to <code>percentEnd</code> to create a
    #       datasource. The <code>complement</code> parameter is useful if you need to create 
    #       complementary datasources for training and evaluation.
    #       To create a complementary datasource, use the same
    #       values for <code>percentBegin</code> and <code>percentEnd</code>, along with the
    #       <code>complement</code> parameter.</p>
    #   
    #                  <p>For example, the following two datasources do not share any data, and can be used to train and evaluate a model. The first datasource has 25 percent of the data, and the second one has 75 percent of the data.</p>
    #                  <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":0, "percentEnd":25}}</code>
    #                  </p>
    #                  <p>Datasource for training: <code>{"splitting":{"percentBegin":0, "percentEnd":25, "complement":"true"}}</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>strategy</code>
    #                     </b>
    #                  </p>
    #                  <p>To change how Amazon ML splits the data for a datasource, use the <code>strategy</code> parameter.</p>
    #                  <p>The default value for the <code>strategy</code> parameter
    #       is <code>sequential</code>, meaning that Amazon ML takes all of the data records between the <code>percentBegin</code>
    #       and <code>percentEnd</code> parameters for the datasource, in the order that the records appear in the input data.</p>
    #   
    #                  <p>The following two <code>DataRearrangement</code> lines are examples of sequentially ordered
    #       training and evaluation datasources:</p>
    #                  <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"sequential"}}</code>
    #                  </p>
    #                  <p>Datasource for training: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"sequential", "complement":"true"}}</code>
    #                  </p>
    #   
    #                  <p>To randomly split the input data into the proportions indicated by the percentBegin and percentEnd 
    #           parameters, set the <code>strategy</code> parameter to
    #       <code>random</code> and provide a string that is used as the seed value for the random data splitting (for 
    #       example, you can use the S3 path to your data as the random seed string). 
    #       If you choose the random split strategy,
    #       Amazon ML assigns each row of data a pseudo-random number between 0 and 100, and then selects the rows that have an assigned
    #       number between <code>percentBegin</code> and <code>percentEnd</code>. Pseudo-random numbers are assigned 
    #       using both the input seed string value and the byte offset as a seed, so changing the data results in a 
    #       different split. Any existing ordering is preserved.
    #       The random splitting strategy ensures that variables in the training and evaluation data are distributed similarly. 
    #       It is useful in the cases where the input data may have an implicit sort order, which would otherwise result in 
    #       training and evaluation datasources containing non-similar data records.</p>
    #                  <p>The following two <code>DataRearrangement</code> lines are examples of non-sequentially ordered
    #       training and evaluation datasources:</p>
    #                  <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"random", "randomSeed"="s3://my_s3_path/bucket/file.csv"}}</code>
    #                  </p>
    #                  <p>Datasource for training: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"random", "randomSeed"="s3://my_s3_path/bucket/file.csv", "complement":"true"}}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute data_schema
    #   <p> A JSON string that represents the schema for an Amazon S3 
    #               <code>DataSource</code>. The <code>DataSchema</code>
    #               defines the structure of the observation data in the data file(s) 
    #               referenced in the <code>DataSource</code>.</p>
    #           <p>You must provide either the <code>DataSchema</code> or the <code>DataSchemaLocationS3</code>.</p>
    #           <p>Define your <code>DataSchema</code> as a series of key-value pairs. <code>attributes</code> 
    #               and <code>excludedVariableNames</code> have an array of key-value pairs
    #               for their value. Use the following format to define your <code>DataSchema</code>.</p>
    #           <p>{ "version": "1.0",</p>
    #            <p>"recordAnnotationFieldName": "F1",</p>
    #            <p>"recordWeightFieldName": "F2",</p>
    #            <p>"targetFieldName": "F3",</p>
    #            <p>"dataFormat": "CSV",</p>
    #            <p>"dataFileContainsHeader": true,</p>
    #            <p>"attributes": [</p>
    #            <p>{ "fieldName": "F1", "fieldType": "TEXT" }, { "fieldName": "F2", "fieldType": "NUMERIC" }, { "fieldName": "F3", "fieldType": "CATEGORICAL" }, { "fieldName": "F4", "fieldType": "NUMERIC" }, { "fieldName": "F5", "fieldType": "CATEGORICAL" }, { "fieldName": "F6", "fieldType": "TEXT" }, { "fieldName": "F7", "fieldType": "WEIGHTED_INT_SEQUENCE" }, { "fieldName": "F8", "fieldType": "WEIGHTED_STRING_SEQUENCE" } ],</p>
    #            <p>"excludedVariableNames": [ "F6" ] }</p>
    #   @return [String]
    # @!attribute data_schema_location_s3
    #   <p>Describes the schema location in Amazon S3. You must provide either the 
    #              <code>DataSchema</code> or the <code>DataSchemaLocationS3</code>.</p>
    #   @return [String]
    class S3DataSpec < Struct.new(
      :data_location_s3,
      :data_rearrangement,
      :data_schema,
      :data_schema_location_s3,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The sort order specified in a listing condition. Possible values include the following:</p>
    #         <ul>
    #             <li>
    #                <p>
    #                   <code>asc</code> - Present the information in ascending order (from A-Z).</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>dsc</code> - Present the information in descending order (from Z-A).</p>
    #             </li>
    #          </ul>
    module SortOrder
      ASC = 'asc'
      DSC = 'dsc'
    end

    # <p>A custom key-value pair associated with an ML object, such as an ML model.</p>
    # @!attribute key
    #   <p>A unique identifier for the tag. Valid characters include Unicode letters, digits, white space, _, ., /, =, +, -, %, and @.</p>
    #   @return [String]
    # @!attribute value
    #   <p>An optional string, typically used to describe or define the tag. Valid characters include Unicode letters, digits, white space, _, ., /, =, +, -, %, and @.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute message
    #   @return [String]
    class TagLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TaggableResourceType
      BATCH_PREDICTION = 'BatchPrediction'
      DATASOURCE = 'DataSource'
      EVALUATION = 'Evaluation'
      ML_MODEL = 'MLModel'
    end

    # @!attribute batch_prediction_id
    #   <p>The ID assigned to the <code>BatchPrediction</code> during creation.</p>
    #   @return [String]
    # @!attribute batch_prediction_name
    #   <p>A new user-supplied name or description of the <code>BatchPrediction</code>.</p>
    #   @return [String]
    class UpdateBatchPredictionInput < Struct.new(
      :batch_prediction_id,
      :batch_prediction_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the output of an <code>UpdateBatchPrediction</code> operation.</p>
    #         <p>You can see the updated content by using the <code>GetBatchPrediction</code> operation.</p>
    # @!attribute batch_prediction_id
    #   <p>The ID assigned to the <code>BatchPrediction</code> during creation.  This value should be identical to the value 
    #               of the <code>BatchPredictionId</code> in the request.</p>
    #   @return [String]
    class UpdateBatchPredictionOutput < Struct.new(
      :batch_prediction_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_source_id
    #   <p>The ID assigned to the <code>DataSource</code> during creation.</p>
    #   @return [String]
    # @!attribute data_source_name
    #   <p>A new user-supplied name or description of the <code>DataSource</code> that will replace the current description. </p>
    #   @return [String]
    class UpdateDataSourceInput < Struct.new(
      :data_source_id,
      :data_source_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the output of an <code>UpdateDataSource</code> operation.</p>
    #         <p>You can see the updated content by using the <code>GetBatchPrediction</code> operation.</p>
    # @!attribute data_source_id
    #   <p>The ID assigned to the <code>DataSource</code> during creation.  This value should be identical to the value 
    #               of the <code>DataSourceID</code> in the request.</p>
    #   @return [String]
    class UpdateDataSourceOutput < Struct.new(
      :data_source_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute evaluation_id
    #   <p>The ID assigned to the <code>Evaluation</code> during creation.</p>
    #   @return [String]
    # @!attribute evaluation_name
    #   <p>A new user-supplied name or description of the <code>Evaluation</code> that will replace the current content. </p>
    #   @return [String]
    class UpdateEvaluationInput < Struct.new(
      :evaluation_id,
      :evaluation_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the output of an <code>UpdateEvaluation</code> operation.</p>
    #         <p>You can see the updated content by using the <code>GetEvaluation</code> operation.</p>
    # @!attribute evaluation_id
    #   <p>The ID assigned to the <code>Evaluation</code> during creation.  This value should be identical to the value 
    #               of the <code>Evaluation</code> in the request.</p>
    #   @return [String]
    class UpdateEvaluationOutput < Struct.new(
      :evaluation_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ml_model_id
    #   <p>The ID assigned to the <code>MLModel</code> during creation.</p>
    #   @return [String]
    # @!attribute ml_model_name
    #   <p>A user-supplied name or description of the <code>MLModel</code>.</p>
    #   @return [String]
    # @!attribute score_threshold
    #   <p>The <code>ScoreThreshold</code> used in binary classification <code>MLModel</code> that marks the boundary between a positive prediction and a negative prediction.</p>
    #           <p>Output values greater than or equal to the <code>ScoreThreshold</code> receive a positive result from the <code>MLModel</code>, such as <code>true</code>. Output values less than the <code>ScoreThreshold</code> receive a negative response from the <code>MLModel</code>, such as <code>false</code>.</p>
    #   @return [Float]
    class UpdateMLModelInput < Struct.new(
      :ml_model_id,
      :ml_model_name,
      :score_threshold,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the output of an <code>UpdateMLModel</code> operation.</p>
    #         <p>You can see the updated content by using the <code>GetMLModel</code> operation.</p>
    # @!attribute ml_model_id
    #   <p>The ID assigned to the <code>MLModel</code> during creation.  This value should be identical to the value 
    #               of the <code>MLModelID</code> in the request.</p>
    #   @return [String]
    class UpdateMLModelOutput < Struct.new(
      :ml_model_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
