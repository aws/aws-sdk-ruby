# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MachineLearning
  # @api private
  module ClientApi

    include Seahorse::Model

    AddTagsInput = Shapes::StructureShape.new(name: 'AddTagsInput')
    AddTagsOutput = Shapes::StructureShape.new(name: 'AddTagsOutput')
    Algorithm = Shapes::StringShape.new(name: 'Algorithm')
    AwsUserArn = Shapes::StringShape.new(name: 'AwsUserArn')
    BatchPrediction = Shapes::StructureShape.new(name: 'BatchPrediction')
    BatchPredictionFilterVariable = Shapes::StringShape.new(name: 'BatchPredictionFilterVariable')
    BatchPredictions = Shapes::ListShape.new(name: 'BatchPredictions')
    ComparatorValue = Shapes::StringShape.new(name: 'ComparatorValue')
    ComputeStatistics = Shapes::BooleanShape.new(name: 'ComputeStatistics')
    CreateBatchPredictionInput = Shapes::StructureShape.new(name: 'CreateBatchPredictionInput')
    CreateBatchPredictionOutput = Shapes::StructureShape.new(name: 'CreateBatchPredictionOutput')
    CreateDataSourceFromRDSInput = Shapes::StructureShape.new(name: 'CreateDataSourceFromRDSInput')
    CreateDataSourceFromRDSOutput = Shapes::StructureShape.new(name: 'CreateDataSourceFromRDSOutput')
    CreateDataSourceFromRedshiftInput = Shapes::StructureShape.new(name: 'CreateDataSourceFromRedshiftInput')
    CreateDataSourceFromRedshiftOutput = Shapes::StructureShape.new(name: 'CreateDataSourceFromRedshiftOutput')
    CreateDataSourceFromS3Input = Shapes::StructureShape.new(name: 'CreateDataSourceFromS3Input')
    CreateDataSourceFromS3Output = Shapes::StructureShape.new(name: 'CreateDataSourceFromS3Output')
    CreateEvaluationInput = Shapes::StructureShape.new(name: 'CreateEvaluationInput')
    CreateEvaluationOutput = Shapes::StructureShape.new(name: 'CreateEvaluationOutput')
    CreateMLModelInput = Shapes::StructureShape.new(name: 'CreateMLModelInput')
    CreateMLModelOutput = Shapes::StructureShape.new(name: 'CreateMLModelOutput')
    CreateRealtimeEndpointInput = Shapes::StructureShape.new(name: 'CreateRealtimeEndpointInput')
    CreateRealtimeEndpointOutput = Shapes::StructureShape.new(name: 'CreateRealtimeEndpointOutput')
    DataRearrangement = Shapes::StringShape.new(name: 'DataRearrangement')
    DataSchema = Shapes::StringShape.new(name: 'DataSchema')
    DataSource = Shapes::StructureShape.new(name: 'DataSource')
    DataSourceFilterVariable = Shapes::StringShape.new(name: 'DataSourceFilterVariable')
    DataSources = Shapes::ListShape.new(name: 'DataSources')
    DeleteBatchPredictionInput = Shapes::StructureShape.new(name: 'DeleteBatchPredictionInput')
    DeleteBatchPredictionOutput = Shapes::StructureShape.new(name: 'DeleteBatchPredictionOutput')
    DeleteDataSourceInput = Shapes::StructureShape.new(name: 'DeleteDataSourceInput')
    DeleteDataSourceOutput = Shapes::StructureShape.new(name: 'DeleteDataSourceOutput')
    DeleteEvaluationInput = Shapes::StructureShape.new(name: 'DeleteEvaluationInput')
    DeleteEvaluationOutput = Shapes::StructureShape.new(name: 'DeleteEvaluationOutput')
    DeleteMLModelInput = Shapes::StructureShape.new(name: 'DeleteMLModelInput')
    DeleteMLModelOutput = Shapes::StructureShape.new(name: 'DeleteMLModelOutput')
    DeleteRealtimeEndpointInput = Shapes::StructureShape.new(name: 'DeleteRealtimeEndpointInput')
    DeleteRealtimeEndpointOutput = Shapes::StructureShape.new(name: 'DeleteRealtimeEndpointOutput')
    DeleteTagsInput = Shapes::StructureShape.new(name: 'DeleteTagsInput')
    DeleteTagsOutput = Shapes::StructureShape.new(name: 'DeleteTagsOutput')
    DescribeBatchPredictionsInput = Shapes::StructureShape.new(name: 'DescribeBatchPredictionsInput')
    DescribeBatchPredictionsOutput = Shapes::StructureShape.new(name: 'DescribeBatchPredictionsOutput')
    DescribeDataSourcesInput = Shapes::StructureShape.new(name: 'DescribeDataSourcesInput')
    DescribeDataSourcesOutput = Shapes::StructureShape.new(name: 'DescribeDataSourcesOutput')
    DescribeEvaluationsInput = Shapes::StructureShape.new(name: 'DescribeEvaluationsInput')
    DescribeEvaluationsOutput = Shapes::StructureShape.new(name: 'DescribeEvaluationsOutput')
    DescribeMLModelsInput = Shapes::StructureShape.new(name: 'DescribeMLModelsInput')
    DescribeMLModelsOutput = Shapes::StructureShape.new(name: 'DescribeMLModelsOutput')
    DescribeTagsInput = Shapes::StructureShape.new(name: 'DescribeTagsInput')
    DescribeTagsOutput = Shapes::StructureShape.new(name: 'DescribeTagsOutput')
    DetailsAttributes = Shapes::StringShape.new(name: 'DetailsAttributes')
    DetailsMap = Shapes::MapShape.new(name: 'DetailsMap')
    DetailsValue = Shapes::StringShape.new(name: 'DetailsValue')
    EDPPipelineId = Shapes::StringShape.new(name: 'EDPPipelineId')
    EDPResourceRole = Shapes::StringShape.new(name: 'EDPResourceRole')
    EDPSecurityGroupId = Shapes::StringShape.new(name: 'EDPSecurityGroupId')
    EDPSecurityGroupIds = Shapes::ListShape.new(name: 'EDPSecurityGroupIds')
    EDPServiceRole = Shapes::StringShape.new(name: 'EDPServiceRole')
    EDPSubnetId = Shapes::StringShape.new(name: 'EDPSubnetId')
    EntityId = Shapes::StringShape.new(name: 'EntityId')
    EntityName = Shapes::StringShape.new(name: 'EntityName')
    EntityStatus = Shapes::StringShape.new(name: 'EntityStatus')
    EpochTime = Shapes::TimestampShape.new(name: 'EpochTime')
    ErrorCode = Shapes::IntegerShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Evaluation = Shapes::StructureShape.new(name: 'Evaluation')
    EvaluationFilterVariable = Shapes::StringShape.new(name: 'EvaluationFilterVariable')
    Evaluations = Shapes::ListShape.new(name: 'Evaluations')
    GetBatchPredictionInput = Shapes::StructureShape.new(name: 'GetBatchPredictionInput')
    GetBatchPredictionOutput = Shapes::StructureShape.new(name: 'GetBatchPredictionOutput')
    GetDataSourceInput = Shapes::StructureShape.new(name: 'GetDataSourceInput')
    GetDataSourceOutput = Shapes::StructureShape.new(name: 'GetDataSourceOutput')
    GetEvaluationInput = Shapes::StructureShape.new(name: 'GetEvaluationInput')
    GetEvaluationOutput = Shapes::StructureShape.new(name: 'GetEvaluationOutput')
    GetMLModelInput = Shapes::StructureShape.new(name: 'GetMLModelInput')
    GetMLModelOutput = Shapes::StructureShape.new(name: 'GetMLModelOutput')
    IdempotentParameterMismatchException = Shapes::StructureShape.new(name: 'IdempotentParameterMismatchException')
    IntegerType = Shapes::IntegerShape.new(name: 'IntegerType')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    InvalidTagException = Shapes::StructureShape.new(name: 'InvalidTagException')
    Label = Shapes::StringShape.new(name: 'Label')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    LongType = Shapes::IntegerShape.new(name: 'LongType')
    MLModel = Shapes::StructureShape.new(name: 'MLModel')
    MLModelFilterVariable = Shapes::StringShape.new(name: 'MLModelFilterVariable')
    MLModelName = Shapes::StringShape.new(name: 'MLModelName')
    MLModelType = Shapes::StringShape.new(name: 'MLModelType')
    MLModels = Shapes::ListShape.new(name: 'MLModels')
    Message = Shapes::StringShape.new(name: 'Message')
    PageLimit = Shapes::IntegerShape.new(name: 'PageLimit')
    PerformanceMetrics = Shapes::StructureShape.new(name: 'PerformanceMetrics')
    PerformanceMetricsProperties = Shapes::MapShape.new(name: 'PerformanceMetricsProperties')
    PerformanceMetricsPropertyKey = Shapes::StringShape.new(name: 'PerformanceMetricsPropertyKey')
    PerformanceMetricsPropertyValue = Shapes::StringShape.new(name: 'PerformanceMetricsPropertyValue')
    PredictInput = Shapes::StructureShape.new(name: 'PredictInput')
    PredictOutput = Shapes::StructureShape.new(name: 'PredictOutput')
    Prediction = Shapes::StructureShape.new(name: 'Prediction')
    PredictorNotMountedException = Shapes::StructureShape.new(name: 'PredictorNotMountedException')
    PresignedS3Url = Shapes::StringShape.new(name: 'PresignedS3Url')
    RDSDataSpec = Shapes::StructureShape.new(name: 'RDSDataSpec')
    RDSDatabase = Shapes::StructureShape.new(name: 'RDSDatabase')
    RDSDatabaseCredentials = Shapes::StructureShape.new(name: 'RDSDatabaseCredentials')
    RDSDatabaseName = Shapes::StringShape.new(name: 'RDSDatabaseName')
    RDSDatabasePassword = Shapes::StringShape.new(name: 'RDSDatabasePassword')
    RDSDatabaseUsername = Shapes::StringShape.new(name: 'RDSDatabaseUsername')
    RDSInstanceIdentifier = Shapes::StringShape.new(name: 'RDSInstanceIdentifier')
    RDSMetadata = Shapes::StructureShape.new(name: 'RDSMetadata')
    RDSSelectSqlQuery = Shapes::StringShape.new(name: 'RDSSelectSqlQuery')
    RealtimeEndpointInfo = Shapes::StructureShape.new(name: 'RealtimeEndpointInfo')
    RealtimeEndpointStatus = Shapes::StringShape.new(name: 'RealtimeEndpointStatus')
    Recipe = Shapes::StringShape.new(name: 'Recipe')
    Record = Shapes::MapShape.new(name: 'Record')
    RedshiftClusterIdentifier = Shapes::StringShape.new(name: 'RedshiftClusterIdentifier')
    RedshiftDataSpec = Shapes::StructureShape.new(name: 'RedshiftDataSpec')
    RedshiftDatabase = Shapes::StructureShape.new(name: 'RedshiftDatabase')
    RedshiftDatabaseCredentials = Shapes::StructureShape.new(name: 'RedshiftDatabaseCredentials')
    RedshiftDatabaseName = Shapes::StringShape.new(name: 'RedshiftDatabaseName')
    RedshiftDatabasePassword = Shapes::StringShape.new(name: 'RedshiftDatabasePassword')
    RedshiftDatabaseUsername = Shapes::StringShape.new(name: 'RedshiftDatabaseUsername')
    RedshiftMetadata = Shapes::StructureShape.new(name: 'RedshiftMetadata')
    RedshiftSelectSqlQuery = Shapes::StringShape.new(name: 'RedshiftSelectSqlQuery')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleARN = Shapes::StringShape.new(name: 'RoleARN')
    S3DataSpec = Shapes::StructureShape.new(name: 'S3DataSpec')
    S3Url = Shapes::StringShape.new(name: 'S3Url')
    ScoreThreshold = Shapes::FloatShape.new(name: 'ScoreThreshold')
    ScoreValue = Shapes::FloatShape.new(name: 'ScoreValue')
    ScoreValuePerLabelMap = Shapes::MapShape.new(name: 'ScoreValuePerLabelMap')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    StringType = Shapes::StringShape.new(name: 'StringType')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagLimitExceededException = Shapes::StructureShape.new(name: 'TagLimitExceededException')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaggableResourceType = Shapes::StringShape.new(name: 'TaggableResourceType')
    TrainingParameters = Shapes::MapShape.new(name: 'TrainingParameters')
    UpdateBatchPredictionInput = Shapes::StructureShape.new(name: 'UpdateBatchPredictionInput')
    UpdateBatchPredictionOutput = Shapes::StructureShape.new(name: 'UpdateBatchPredictionOutput')
    UpdateDataSourceInput = Shapes::StructureShape.new(name: 'UpdateDataSourceInput')
    UpdateDataSourceOutput = Shapes::StructureShape.new(name: 'UpdateDataSourceOutput')
    UpdateEvaluationInput = Shapes::StructureShape.new(name: 'UpdateEvaluationInput')
    UpdateEvaluationOutput = Shapes::StructureShape.new(name: 'UpdateEvaluationOutput')
    UpdateMLModelInput = Shapes::StructureShape.new(name: 'UpdateMLModelInput')
    UpdateMLModelOutput = Shapes::StructureShape.new(name: 'UpdateMLModelOutput')
    VariableName = Shapes::StringShape.new(name: 'VariableName')
    VariableValue = Shapes::StringShape.new(name: 'VariableValue')
    Verbose = Shapes::BooleanShape.new(name: 'Verbose')
    VipURL = Shapes::StringShape.new(name: 'VipURL')
    floatLabel = Shapes::FloatShape.new(name: 'floatLabel')

    AddTagsInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    AddTagsInput.add_member(:resource_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "ResourceId"))
    AddTagsInput.add_member(:resource_type, Shapes::ShapeRef.new(shape: TaggableResourceType, required: true, location_name: "ResourceType"))
    AddTagsInput.struct_class = Types::AddTagsInput

    AddTagsOutput.add_member(:resource_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "ResourceId"))
    AddTagsOutput.add_member(:resource_type, Shapes::ShapeRef.new(shape: TaggableResourceType, location_name: "ResourceType"))
    AddTagsOutput.struct_class = Types::AddTagsOutput

    BatchPrediction.add_member(:batch_prediction_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "BatchPredictionId"))
    BatchPrediction.add_member(:ml_model_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId"))
    BatchPrediction.add_member(:batch_prediction_data_source_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "BatchPredictionDataSourceId"))
    BatchPrediction.add_member(:input_data_location_s3, Shapes::ShapeRef.new(shape: S3Url, location_name: "InputDataLocationS3"))
    BatchPrediction.add_member(:created_by_iam_user, Shapes::ShapeRef.new(shape: AwsUserArn, location_name: "CreatedByIamUser"))
    BatchPrediction.add_member(:created_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "CreatedAt"))
    BatchPrediction.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "LastUpdatedAt"))
    BatchPrediction.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, location_name: "Name"))
    BatchPrediction.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, location_name: "Status"))
    BatchPrediction.add_member(:output_uri, Shapes::ShapeRef.new(shape: S3Url, location_name: "OutputUri"))
    BatchPrediction.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    BatchPrediction.add_member(:compute_time, Shapes::ShapeRef.new(shape: LongType, location_name: "ComputeTime"))
    BatchPrediction.add_member(:finished_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "FinishedAt"))
    BatchPrediction.add_member(:started_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "StartedAt"))
    BatchPrediction.add_member(:total_record_count, Shapes::ShapeRef.new(shape: LongType, location_name: "TotalRecordCount"))
    BatchPrediction.add_member(:invalid_record_count, Shapes::ShapeRef.new(shape: LongType, location_name: "InvalidRecordCount"))
    BatchPrediction.struct_class = Types::BatchPrediction

    BatchPredictions.member = Shapes::ShapeRef.new(shape: BatchPrediction)

    CreateBatchPredictionInput.add_member(:batch_prediction_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "BatchPredictionId"))
    CreateBatchPredictionInput.add_member(:batch_prediction_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "BatchPredictionName"))
    CreateBatchPredictionInput.add_member(:ml_model_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "MLModelId"))
    CreateBatchPredictionInput.add_member(:batch_prediction_data_source_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "BatchPredictionDataSourceId"))
    CreateBatchPredictionInput.add_member(:output_uri, Shapes::ShapeRef.new(shape: S3Url, required: true, location_name: "OutputUri"))
    CreateBatchPredictionInput.struct_class = Types::CreateBatchPredictionInput

    CreateBatchPredictionOutput.add_member(:batch_prediction_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "BatchPredictionId"))
    CreateBatchPredictionOutput.struct_class = Types::CreateBatchPredictionOutput

    CreateDataSourceFromRDSInput.add_member(:data_source_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "DataSourceId"))
    CreateDataSourceFromRDSInput.add_member(:data_source_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "DataSourceName"))
    CreateDataSourceFromRDSInput.add_member(:rds_data, Shapes::ShapeRef.new(shape: RDSDataSpec, required: true, location_name: "RDSData"))
    CreateDataSourceFromRDSInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    CreateDataSourceFromRDSInput.add_member(:compute_statistics, Shapes::ShapeRef.new(shape: ComputeStatistics, location_name: "ComputeStatistics"))
    CreateDataSourceFromRDSInput.struct_class = Types::CreateDataSourceFromRDSInput

    CreateDataSourceFromRDSOutput.add_member(:data_source_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "DataSourceId"))
    CreateDataSourceFromRDSOutput.struct_class = Types::CreateDataSourceFromRDSOutput

    CreateDataSourceFromRedshiftInput.add_member(:data_source_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "DataSourceId"))
    CreateDataSourceFromRedshiftInput.add_member(:data_source_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "DataSourceName"))
    CreateDataSourceFromRedshiftInput.add_member(:data_spec, Shapes::ShapeRef.new(shape: RedshiftDataSpec, required: true, location_name: "DataSpec"))
    CreateDataSourceFromRedshiftInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    CreateDataSourceFromRedshiftInput.add_member(:compute_statistics, Shapes::ShapeRef.new(shape: ComputeStatistics, location_name: "ComputeStatistics"))
    CreateDataSourceFromRedshiftInput.struct_class = Types::CreateDataSourceFromRedshiftInput

    CreateDataSourceFromRedshiftOutput.add_member(:data_source_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "DataSourceId"))
    CreateDataSourceFromRedshiftOutput.struct_class = Types::CreateDataSourceFromRedshiftOutput

    CreateDataSourceFromS3Input.add_member(:data_source_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "DataSourceId"))
    CreateDataSourceFromS3Input.add_member(:data_source_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "DataSourceName"))
    CreateDataSourceFromS3Input.add_member(:data_spec, Shapes::ShapeRef.new(shape: S3DataSpec, required: true, location_name: "DataSpec"))
    CreateDataSourceFromS3Input.add_member(:compute_statistics, Shapes::ShapeRef.new(shape: ComputeStatistics, location_name: "ComputeStatistics"))
    CreateDataSourceFromS3Input.struct_class = Types::CreateDataSourceFromS3Input

    CreateDataSourceFromS3Output.add_member(:data_source_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "DataSourceId"))
    CreateDataSourceFromS3Output.struct_class = Types::CreateDataSourceFromS3Output

    CreateEvaluationInput.add_member(:evaluation_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "EvaluationId"))
    CreateEvaluationInput.add_member(:evaluation_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "EvaluationName"))
    CreateEvaluationInput.add_member(:ml_model_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "MLModelId"))
    CreateEvaluationInput.add_member(:evaluation_data_source_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "EvaluationDataSourceId"))
    CreateEvaluationInput.struct_class = Types::CreateEvaluationInput

    CreateEvaluationOutput.add_member(:evaluation_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "EvaluationId"))
    CreateEvaluationOutput.struct_class = Types::CreateEvaluationOutput

    CreateMLModelInput.add_member(:ml_model_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "MLModelId"))
    CreateMLModelInput.add_member(:ml_model_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "MLModelName"))
    CreateMLModelInput.add_member(:ml_model_type, Shapes::ShapeRef.new(shape: MLModelType, required: true, location_name: "MLModelType"))
    CreateMLModelInput.add_member(:parameters, Shapes::ShapeRef.new(shape: TrainingParameters, location_name: "Parameters"))
    CreateMLModelInput.add_member(:training_data_source_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "TrainingDataSourceId"))
    CreateMLModelInput.add_member(:recipe, Shapes::ShapeRef.new(shape: Recipe, location_name: "Recipe"))
    CreateMLModelInput.add_member(:recipe_uri, Shapes::ShapeRef.new(shape: S3Url, location_name: "RecipeUri"))
    CreateMLModelInput.struct_class = Types::CreateMLModelInput

    CreateMLModelOutput.add_member(:ml_model_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId"))
    CreateMLModelOutput.struct_class = Types::CreateMLModelOutput

    CreateRealtimeEndpointInput.add_member(:ml_model_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "MLModelId"))
    CreateRealtimeEndpointInput.struct_class = Types::CreateRealtimeEndpointInput

    CreateRealtimeEndpointOutput.add_member(:ml_model_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId"))
    CreateRealtimeEndpointOutput.add_member(:realtime_endpoint_info, Shapes::ShapeRef.new(shape: RealtimeEndpointInfo, location_name: "RealtimeEndpointInfo"))
    CreateRealtimeEndpointOutput.struct_class = Types::CreateRealtimeEndpointOutput

    DataSource.add_member(:data_source_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "DataSourceId"))
    DataSource.add_member(:data_location_s3, Shapes::ShapeRef.new(shape: S3Url, location_name: "DataLocationS3"))
    DataSource.add_member(:data_rearrangement, Shapes::ShapeRef.new(shape: DataRearrangement, location_name: "DataRearrangement"))
    DataSource.add_member(:created_by_iam_user, Shapes::ShapeRef.new(shape: AwsUserArn, location_name: "CreatedByIamUser"))
    DataSource.add_member(:created_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "CreatedAt"))
    DataSource.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "LastUpdatedAt"))
    DataSource.add_member(:data_size_in_bytes, Shapes::ShapeRef.new(shape: LongType, location_name: "DataSizeInBytes"))
    DataSource.add_member(:number_of_files, Shapes::ShapeRef.new(shape: LongType, location_name: "NumberOfFiles"))
    DataSource.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, location_name: "Name"))
    DataSource.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, location_name: "Status"))
    DataSource.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    DataSource.add_member(:redshift_metadata, Shapes::ShapeRef.new(shape: RedshiftMetadata, location_name: "RedshiftMetadata"))
    DataSource.add_member(:rds_metadata, Shapes::ShapeRef.new(shape: RDSMetadata, location_name: "RDSMetadata"))
    DataSource.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    DataSource.add_member(:compute_statistics, Shapes::ShapeRef.new(shape: ComputeStatistics, location_name: "ComputeStatistics"))
    DataSource.add_member(:compute_time, Shapes::ShapeRef.new(shape: LongType, location_name: "ComputeTime"))
    DataSource.add_member(:finished_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "FinishedAt"))
    DataSource.add_member(:started_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "StartedAt"))
    DataSource.struct_class = Types::DataSource

    DataSources.member = Shapes::ShapeRef.new(shape: DataSource)

    DeleteBatchPredictionInput.add_member(:batch_prediction_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "BatchPredictionId"))
    DeleteBatchPredictionInput.struct_class = Types::DeleteBatchPredictionInput

    DeleteBatchPredictionOutput.add_member(:batch_prediction_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "BatchPredictionId"))
    DeleteBatchPredictionOutput.struct_class = Types::DeleteBatchPredictionOutput

    DeleteDataSourceInput.add_member(:data_source_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "DataSourceId"))
    DeleteDataSourceInput.struct_class = Types::DeleteDataSourceInput

    DeleteDataSourceOutput.add_member(:data_source_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "DataSourceId"))
    DeleteDataSourceOutput.struct_class = Types::DeleteDataSourceOutput

    DeleteEvaluationInput.add_member(:evaluation_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "EvaluationId"))
    DeleteEvaluationInput.struct_class = Types::DeleteEvaluationInput

    DeleteEvaluationOutput.add_member(:evaluation_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "EvaluationId"))
    DeleteEvaluationOutput.struct_class = Types::DeleteEvaluationOutput

    DeleteMLModelInput.add_member(:ml_model_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "MLModelId"))
    DeleteMLModelInput.struct_class = Types::DeleteMLModelInput

    DeleteMLModelOutput.add_member(:ml_model_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId"))
    DeleteMLModelOutput.struct_class = Types::DeleteMLModelOutput

    DeleteRealtimeEndpointInput.add_member(:ml_model_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "MLModelId"))
    DeleteRealtimeEndpointInput.struct_class = Types::DeleteRealtimeEndpointInput

    DeleteRealtimeEndpointOutput.add_member(:ml_model_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId"))
    DeleteRealtimeEndpointOutput.add_member(:realtime_endpoint_info, Shapes::ShapeRef.new(shape: RealtimeEndpointInfo, location_name: "RealtimeEndpointInfo"))
    DeleteRealtimeEndpointOutput.struct_class = Types::DeleteRealtimeEndpointOutput

    DeleteTagsInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    DeleteTagsInput.add_member(:resource_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "ResourceId"))
    DeleteTagsInput.add_member(:resource_type, Shapes::ShapeRef.new(shape: TaggableResourceType, required: true, location_name: "ResourceType"))
    DeleteTagsInput.struct_class = Types::DeleteTagsInput

    DeleteTagsOutput.add_member(:resource_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "ResourceId"))
    DeleteTagsOutput.add_member(:resource_type, Shapes::ShapeRef.new(shape: TaggableResourceType, location_name: "ResourceType"))
    DeleteTagsOutput.struct_class = Types::DeleteTagsOutput

    DescribeBatchPredictionsInput.add_member(:filter_variable, Shapes::ShapeRef.new(shape: BatchPredictionFilterVariable, location_name: "FilterVariable"))
    DescribeBatchPredictionsInput.add_member(:eq, Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "EQ"))
    DescribeBatchPredictionsInput.add_member(:gt, Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "GT"))
    DescribeBatchPredictionsInput.add_member(:lt, Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "LT"))
    DescribeBatchPredictionsInput.add_member(:ge, Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "GE"))
    DescribeBatchPredictionsInput.add_member(:le, Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "LE"))
    DescribeBatchPredictionsInput.add_member(:ne, Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "NE"))
    DescribeBatchPredictionsInput.add_member(:prefix, Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "Prefix"))
    DescribeBatchPredictionsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    DescribeBatchPredictionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: StringType, location_name: "NextToken"))
    DescribeBatchPredictionsInput.add_member(:limit, Shapes::ShapeRef.new(shape: PageLimit, location_name: "Limit"))
    DescribeBatchPredictionsInput.struct_class = Types::DescribeBatchPredictionsInput

    DescribeBatchPredictionsOutput.add_member(:results, Shapes::ShapeRef.new(shape: BatchPredictions, location_name: "Results"))
    DescribeBatchPredictionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: StringType, location_name: "NextToken"))
    DescribeBatchPredictionsOutput.struct_class = Types::DescribeBatchPredictionsOutput

    DescribeDataSourcesInput.add_member(:filter_variable, Shapes::ShapeRef.new(shape: DataSourceFilterVariable, location_name: "FilterVariable"))
    DescribeDataSourcesInput.add_member(:eq, Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "EQ"))
    DescribeDataSourcesInput.add_member(:gt, Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "GT"))
    DescribeDataSourcesInput.add_member(:lt, Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "LT"))
    DescribeDataSourcesInput.add_member(:ge, Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "GE"))
    DescribeDataSourcesInput.add_member(:le, Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "LE"))
    DescribeDataSourcesInput.add_member(:ne, Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "NE"))
    DescribeDataSourcesInput.add_member(:prefix, Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "Prefix"))
    DescribeDataSourcesInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    DescribeDataSourcesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: StringType, location_name: "NextToken"))
    DescribeDataSourcesInput.add_member(:limit, Shapes::ShapeRef.new(shape: PageLimit, location_name: "Limit"))
    DescribeDataSourcesInput.struct_class = Types::DescribeDataSourcesInput

    DescribeDataSourcesOutput.add_member(:results, Shapes::ShapeRef.new(shape: DataSources, location_name: "Results"))
    DescribeDataSourcesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: StringType, location_name: "NextToken"))
    DescribeDataSourcesOutput.struct_class = Types::DescribeDataSourcesOutput

    DescribeEvaluationsInput.add_member(:filter_variable, Shapes::ShapeRef.new(shape: EvaluationFilterVariable, location_name: "FilterVariable"))
    DescribeEvaluationsInput.add_member(:eq, Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "EQ"))
    DescribeEvaluationsInput.add_member(:gt, Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "GT"))
    DescribeEvaluationsInput.add_member(:lt, Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "LT"))
    DescribeEvaluationsInput.add_member(:ge, Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "GE"))
    DescribeEvaluationsInput.add_member(:le, Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "LE"))
    DescribeEvaluationsInput.add_member(:ne, Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "NE"))
    DescribeEvaluationsInput.add_member(:prefix, Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "Prefix"))
    DescribeEvaluationsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    DescribeEvaluationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: StringType, location_name: "NextToken"))
    DescribeEvaluationsInput.add_member(:limit, Shapes::ShapeRef.new(shape: PageLimit, location_name: "Limit"))
    DescribeEvaluationsInput.struct_class = Types::DescribeEvaluationsInput

    DescribeEvaluationsOutput.add_member(:results, Shapes::ShapeRef.new(shape: Evaluations, location_name: "Results"))
    DescribeEvaluationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: StringType, location_name: "NextToken"))
    DescribeEvaluationsOutput.struct_class = Types::DescribeEvaluationsOutput

    DescribeMLModelsInput.add_member(:filter_variable, Shapes::ShapeRef.new(shape: MLModelFilterVariable, location_name: "FilterVariable"))
    DescribeMLModelsInput.add_member(:eq, Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "EQ"))
    DescribeMLModelsInput.add_member(:gt, Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "GT"))
    DescribeMLModelsInput.add_member(:lt, Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "LT"))
    DescribeMLModelsInput.add_member(:ge, Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "GE"))
    DescribeMLModelsInput.add_member(:le, Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "LE"))
    DescribeMLModelsInput.add_member(:ne, Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "NE"))
    DescribeMLModelsInput.add_member(:prefix, Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "Prefix"))
    DescribeMLModelsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    DescribeMLModelsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: StringType, location_name: "NextToken"))
    DescribeMLModelsInput.add_member(:limit, Shapes::ShapeRef.new(shape: PageLimit, location_name: "Limit"))
    DescribeMLModelsInput.struct_class = Types::DescribeMLModelsInput

    DescribeMLModelsOutput.add_member(:results, Shapes::ShapeRef.new(shape: MLModels, location_name: "Results"))
    DescribeMLModelsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: StringType, location_name: "NextToken"))
    DescribeMLModelsOutput.struct_class = Types::DescribeMLModelsOutput

    DescribeTagsInput.add_member(:resource_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "ResourceId"))
    DescribeTagsInput.add_member(:resource_type, Shapes::ShapeRef.new(shape: TaggableResourceType, required: true, location_name: "ResourceType"))
    DescribeTagsInput.struct_class = Types::DescribeTagsInput

    DescribeTagsOutput.add_member(:resource_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "ResourceId"))
    DescribeTagsOutput.add_member(:resource_type, Shapes::ShapeRef.new(shape: TaggableResourceType, location_name: "ResourceType"))
    DescribeTagsOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    DescribeTagsOutput.struct_class = Types::DescribeTagsOutput

    DetailsMap.key = Shapes::ShapeRef.new(shape: DetailsAttributes)
    DetailsMap.value = Shapes::ShapeRef.new(shape: DetailsValue)

    EDPSecurityGroupIds.member = Shapes::ShapeRef.new(shape: EDPSecurityGroupId)

    Evaluation.add_member(:evaluation_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "EvaluationId"))
    Evaluation.add_member(:ml_model_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId"))
    Evaluation.add_member(:evaluation_data_source_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "EvaluationDataSourceId"))
    Evaluation.add_member(:input_data_location_s3, Shapes::ShapeRef.new(shape: S3Url, location_name: "InputDataLocationS3"))
    Evaluation.add_member(:created_by_iam_user, Shapes::ShapeRef.new(shape: AwsUserArn, location_name: "CreatedByIamUser"))
    Evaluation.add_member(:created_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "CreatedAt"))
    Evaluation.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "LastUpdatedAt"))
    Evaluation.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, location_name: "Name"))
    Evaluation.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, location_name: "Status"))
    Evaluation.add_member(:performance_metrics, Shapes::ShapeRef.new(shape: PerformanceMetrics, location_name: "PerformanceMetrics"))
    Evaluation.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    Evaluation.add_member(:compute_time, Shapes::ShapeRef.new(shape: LongType, location_name: "ComputeTime"))
    Evaluation.add_member(:finished_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "FinishedAt"))
    Evaluation.add_member(:started_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "StartedAt"))
    Evaluation.struct_class = Types::Evaluation

    Evaluations.member = Shapes::ShapeRef.new(shape: Evaluation)

    GetBatchPredictionInput.add_member(:batch_prediction_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "BatchPredictionId"))
    GetBatchPredictionInput.struct_class = Types::GetBatchPredictionInput

    GetBatchPredictionOutput.add_member(:batch_prediction_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "BatchPredictionId"))
    GetBatchPredictionOutput.add_member(:ml_model_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId"))
    GetBatchPredictionOutput.add_member(:batch_prediction_data_source_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "BatchPredictionDataSourceId"))
    GetBatchPredictionOutput.add_member(:input_data_location_s3, Shapes::ShapeRef.new(shape: S3Url, location_name: "InputDataLocationS3"))
    GetBatchPredictionOutput.add_member(:created_by_iam_user, Shapes::ShapeRef.new(shape: AwsUserArn, location_name: "CreatedByIamUser"))
    GetBatchPredictionOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "CreatedAt"))
    GetBatchPredictionOutput.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "LastUpdatedAt"))
    GetBatchPredictionOutput.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, location_name: "Name"))
    GetBatchPredictionOutput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, location_name: "Status"))
    GetBatchPredictionOutput.add_member(:output_uri, Shapes::ShapeRef.new(shape: S3Url, location_name: "OutputUri"))
    GetBatchPredictionOutput.add_member(:log_uri, Shapes::ShapeRef.new(shape: PresignedS3Url, location_name: "LogUri"))
    GetBatchPredictionOutput.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    GetBatchPredictionOutput.add_member(:compute_time, Shapes::ShapeRef.new(shape: LongType, location_name: "ComputeTime"))
    GetBatchPredictionOutput.add_member(:finished_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "FinishedAt"))
    GetBatchPredictionOutput.add_member(:started_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "StartedAt"))
    GetBatchPredictionOutput.add_member(:total_record_count, Shapes::ShapeRef.new(shape: LongType, location_name: "TotalRecordCount"))
    GetBatchPredictionOutput.add_member(:invalid_record_count, Shapes::ShapeRef.new(shape: LongType, location_name: "InvalidRecordCount"))
    GetBatchPredictionOutput.struct_class = Types::GetBatchPredictionOutput

    GetDataSourceInput.add_member(:data_source_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "DataSourceId"))
    GetDataSourceInput.add_member(:verbose, Shapes::ShapeRef.new(shape: Verbose, location_name: "Verbose"))
    GetDataSourceInput.struct_class = Types::GetDataSourceInput

    GetDataSourceOutput.add_member(:data_source_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "DataSourceId"))
    GetDataSourceOutput.add_member(:data_location_s3, Shapes::ShapeRef.new(shape: S3Url, location_name: "DataLocationS3"))
    GetDataSourceOutput.add_member(:data_rearrangement, Shapes::ShapeRef.new(shape: DataRearrangement, location_name: "DataRearrangement"))
    GetDataSourceOutput.add_member(:created_by_iam_user, Shapes::ShapeRef.new(shape: AwsUserArn, location_name: "CreatedByIamUser"))
    GetDataSourceOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "CreatedAt"))
    GetDataSourceOutput.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "LastUpdatedAt"))
    GetDataSourceOutput.add_member(:data_size_in_bytes, Shapes::ShapeRef.new(shape: LongType, location_name: "DataSizeInBytes"))
    GetDataSourceOutput.add_member(:number_of_files, Shapes::ShapeRef.new(shape: LongType, location_name: "NumberOfFiles"))
    GetDataSourceOutput.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, location_name: "Name"))
    GetDataSourceOutput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, location_name: "Status"))
    GetDataSourceOutput.add_member(:log_uri, Shapes::ShapeRef.new(shape: PresignedS3Url, location_name: "LogUri"))
    GetDataSourceOutput.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    GetDataSourceOutput.add_member(:redshift_metadata, Shapes::ShapeRef.new(shape: RedshiftMetadata, location_name: "RedshiftMetadata"))
    GetDataSourceOutput.add_member(:rds_metadata, Shapes::ShapeRef.new(shape: RDSMetadata, location_name: "RDSMetadata"))
    GetDataSourceOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    GetDataSourceOutput.add_member(:compute_statistics, Shapes::ShapeRef.new(shape: ComputeStatistics, location_name: "ComputeStatistics"))
    GetDataSourceOutput.add_member(:compute_time, Shapes::ShapeRef.new(shape: LongType, location_name: "ComputeTime"))
    GetDataSourceOutput.add_member(:finished_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "FinishedAt"))
    GetDataSourceOutput.add_member(:started_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "StartedAt"))
    GetDataSourceOutput.add_member(:data_source_schema, Shapes::ShapeRef.new(shape: DataSchema, location_name: "DataSourceSchema"))
    GetDataSourceOutput.struct_class = Types::GetDataSourceOutput

    GetEvaluationInput.add_member(:evaluation_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "EvaluationId"))
    GetEvaluationInput.struct_class = Types::GetEvaluationInput

    GetEvaluationOutput.add_member(:evaluation_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "EvaluationId"))
    GetEvaluationOutput.add_member(:ml_model_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId"))
    GetEvaluationOutput.add_member(:evaluation_data_source_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "EvaluationDataSourceId"))
    GetEvaluationOutput.add_member(:input_data_location_s3, Shapes::ShapeRef.new(shape: S3Url, location_name: "InputDataLocationS3"))
    GetEvaluationOutput.add_member(:created_by_iam_user, Shapes::ShapeRef.new(shape: AwsUserArn, location_name: "CreatedByIamUser"))
    GetEvaluationOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "CreatedAt"))
    GetEvaluationOutput.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "LastUpdatedAt"))
    GetEvaluationOutput.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, location_name: "Name"))
    GetEvaluationOutput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, location_name: "Status"))
    GetEvaluationOutput.add_member(:performance_metrics, Shapes::ShapeRef.new(shape: PerformanceMetrics, location_name: "PerformanceMetrics"))
    GetEvaluationOutput.add_member(:log_uri, Shapes::ShapeRef.new(shape: PresignedS3Url, location_name: "LogUri"))
    GetEvaluationOutput.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    GetEvaluationOutput.add_member(:compute_time, Shapes::ShapeRef.new(shape: LongType, location_name: "ComputeTime"))
    GetEvaluationOutput.add_member(:finished_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "FinishedAt"))
    GetEvaluationOutput.add_member(:started_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "StartedAt"))
    GetEvaluationOutput.struct_class = Types::GetEvaluationOutput

    GetMLModelInput.add_member(:ml_model_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "MLModelId"))
    GetMLModelInput.add_member(:verbose, Shapes::ShapeRef.new(shape: Verbose, location_name: "Verbose"))
    GetMLModelInput.struct_class = Types::GetMLModelInput

    GetMLModelOutput.add_member(:ml_model_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId"))
    GetMLModelOutput.add_member(:training_data_source_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "TrainingDataSourceId"))
    GetMLModelOutput.add_member(:created_by_iam_user, Shapes::ShapeRef.new(shape: AwsUserArn, location_name: "CreatedByIamUser"))
    GetMLModelOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "CreatedAt"))
    GetMLModelOutput.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "LastUpdatedAt"))
    GetMLModelOutput.add_member(:name, Shapes::ShapeRef.new(shape: MLModelName, location_name: "Name"))
    GetMLModelOutput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, location_name: "Status"))
    GetMLModelOutput.add_member(:size_in_bytes, Shapes::ShapeRef.new(shape: LongType, location_name: "SizeInBytes"))
    GetMLModelOutput.add_member(:endpoint_info, Shapes::ShapeRef.new(shape: RealtimeEndpointInfo, location_name: "EndpointInfo"))
    GetMLModelOutput.add_member(:training_parameters, Shapes::ShapeRef.new(shape: TrainingParameters, location_name: "TrainingParameters"))
    GetMLModelOutput.add_member(:input_data_location_s3, Shapes::ShapeRef.new(shape: S3Url, location_name: "InputDataLocationS3"))
    GetMLModelOutput.add_member(:ml_model_type, Shapes::ShapeRef.new(shape: MLModelType, location_name: "MLModelType"))
    GetMLModelOutput.add_member(:score_threshold, Shapes::ShapeRef.new(shape: ScoreThreshold, location_name: "ScoreThreshold"))
    GetMLModelOutput.add_member(:score_threshold_last_updated_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "ScoreThresholdLastUpdatedAt"))
    GetMLModelOutput.add_member(:log_uri, Shapes::ShapeRef.new(shape: PresignedS3Url, location_name: "LogUri"))
    GetMLModelOutput.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    GetMLModelOutput.add_member(:compute_time, Shapes::ShapeRef.new(shape: LongType, location_name: "ComputeTime"))
    GetMLModelOutput.add_member(:finished_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "FinishedAt"))
    GetMLModelOutput.add_member(:started_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "StartedAt"))
    GetMLModelOutput.add_member(:recipe, Shapes::ShapeRef.new(shape: Recipe, location_name: "Recipe"))
    GetMLModelOutput.add_member(:schema, Shapes::ShapeRef.new(shape: DataSchema, location_name: "Schema"))
    GetMLModelOutput.struct_class = Types::GetMLModelOutput

    MLModel.add_member(:ml_model_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId"))
    MLModel.add_member(:training_data_source_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "TrainingDataSourceId"))
    MLModel.add_member(:created_by_iam_user, Shapes::ShapeRef.new(shape: AwsUserArn, location_name: "CreatedByIamUser"))
    MLModel.add_member(:created_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "CreatedAt"))
    MLModel.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "LastUpdatedAt"))
    MLModel.add_member(:name, Shapes::ShapeRef.new(shape: MLModelName, location_name: "Name"))
    MLModel.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, location_name: "Status"))
    MLModel.add_member(:size_in_bytes, Shapes::ShapeRef.new(shape: LongType, location_name: "SizeInBytes"))
    MLModel.add_member(:endpoint_info, Shapes::ShapeRef.new(shape: RealtimeEndpointInfo, location_name: "EndpointInfo"))
    MLModel.add_member(:training_parameters, Shapes::ShapeRef.new(shape: TrainingParameters, location_name: "TrainingParameters"))
    MLModel.add_member(:input_data_location_s3, Shapes::ShapeRef.new(shape: S3Url, location_name: "InputDataLocationS3"))
    MLModel.add_member(:algorithm, Shapes::ShapeRef.new(shape: Algorithm, location_name: "Algorithm"))
    MLModel.add_member(:ml_model_type, Shapes::ShapeRef.new(shape: MLModelType, location_name: "MLModelType"))
    MLModel.add_member(:score_threshold, Shapes::ShapeRef.new(shape: ScoreThreshold, location_name: "ScoreThreshold"))
    MLModel.add_member(:score_threshold_last_updated_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "ScoreThresholdLastUpdatedAt"))
    MLModel.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    MLModel.add_member(:compute_time, Shapes::ShapeRef.new(shape: LongType, location_name: "ComputeTime"))
    MLModel.add_member(:finished_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "FinishedAt"))
    MLModel.add_member(:started_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "StartedAt"))
    MLModel.struct_class = Types::MLModel

    MLModels.member = Shapes::ShapeRef.new(shape: MLModel)

    PerformanceMetrics.add_member(:properties, Shapes::ShapeRef.new(shape: PerformanceMetricsProperties, location_name: "Properties"))
    PerformanceMetrics.struct_class = Types::PerformanceMetrics

    PerformanceMetricsProperties.key = Shapes::ShapeRef.new(shape: PerformanceMetricsPropertyKey)
    PerformanceMetricsProperties.value = Shapes::ShapeRef.new(shape: PerformanceMetricsPropertyValue)

    PredictInput.add_member(:ml_model_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "MLModelId"))
    PredictInput.add_member(:record, Shapes::ShapeRef.new(shape: Record, required: true, location_name: "Record"))
    PredictInput.add_member(:predict_endpoint, Shapes::ShapeRef.new(shape: VipURL, required: true, location_name: "PredictEndpoint"))
    PredictInput.struct_class = Types::PredictInput

    PredictOutput.add_member(:prediction, Shapes::ShapeRef.new(shape: Prediction, location_name: "Prediction"))
    PredictOutput.struct_class = Types::PredictOutput

    Prediction.add_member(:predicted_label, Shapes::ShapeRef.new(shape: Label, location_name: "predictedLabel"))
    Prediction.add_member(:predicted_value, Shapes::ShapeRef.new(shape: floatLabel, location_name: "predictedValue"))
    Prediction.add_member(:predicted_scores, Shapes::ShapeRef.new(shape: ScoreValuePerLabelMap, location_name: "predictedScores"))
    Prediction.add_member(:details, Shapes::ShapeRef.new(shape: DetailsMap, location_name: "details"))
    Prediction.struct_class = Types::Prediction

    RDSDataSpec.add_member(:database_information, Shapes::ShapeRef.new(shape: RDSDatabase, required: true, location_name: "DatabaseInformation"))
    RDSDataSpec.add_member(:select_sql_query, Shapes::ShapeRef.new(shape: RDSSelectSqlQuery, required: true, location_name: "SelectSqlQuery"))
    RDSDataSpec.add_member(:database_credentials, Shapes::ShapeRef.new(shape: RDSDatabaseCredentials, required: true, location_name: "DatabaseCredentials"))
    RDSDataSpec.add_member(:s3_staging_location, Shapes::ShapeRef.new(shape: S3Url, required: true, location_name: "S3StagingLocation"))
    RDSDataSpec.add_member(:data_rearrangement, Shapes::ShapeRef.new(shape: DataRearrangement, location_name: "DataRearrangement"))
    RDSDataSpec.add_member(:data_schema, Shapes::ShapeRef.new(shape: DataSchema, location_name: "DataSchema"))
    RDSDataSpec.add_member(:data_schema_uri, Shapes::ShapeRef.new(shape: S3Url, location_name: "DataSchemaUri"))
    RDSDataSpec.add_member(:resource_role, Shapes::ShapeRef.new(shape: EDPResourceRole, required: true, location_name: "ResourceRole"))
    RDSDataSpec.add_member(:service_role, Shapes::ShapeRef.new(shape: EDPServiceRole, required: true, location_name: "ServiceRole"))
    RDSDataSpec.add_member(:subnet_id, Shapes::ShapeRef.new(shape: EDPSubnetId, required: true, location_name: "SubnetId"))
    RDSDataSpec.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: EDPSecurityGroupIds, required: true, location_name: "SecurityGroupIds"))
    RDSDataSpec.struct_class = Types::RDSDataSpec

    RDSDatabase.add_member(:instance_identifier, Shapes::ShapeRef.new(shape: RDSInstanceIdentifier, required: true, location_name: "InstanceIdentifier"))
    RDSDatabase.add_member(:database_name, Shapes::ShapeRef.new(shape: RDSDatabaseName, required: true, location_name: "DatabaseName"))
    RDSDatabase.struct_class = Types::RDSDatabase

    RDSDatabaseCredentials.add_member(:username, Shapes::ShapeRef.new(shape: RDSDatabaseUsername, required: true, location_name: "Username"))
    RDSDatabaseCredentials.add_member(:password, Shapes::ShapeRef.new(shape: RDSDatabasePassword, required: true, location_name: "Password"))
    RDSDatabaseCredentials.struct_class = Types::RDSDatabaseCredentials

    RDSMetadata.add_member(:database, Shapes::ShapeRef.new(shape: RDSDatabase, location_name: "Database"))
    RDSMetadata.add_member(:database_user_name, Shapes::ShapeRef.new(shape: RDSDatabaseUsername, location_name: "DatabaseUserName"))
    RDSMetadata.add_member(:select_sql_query, Shapes::ShapeRef.new(shape: RDSSelectSqlQuery, location_name: "SelectSqlQuery"))
    RDSMetadata.add_member(:resource_role, Shapes::ShapeRef.new(shape: EDPResourceRole, location_name: "ResourceRole"))
    RDSMetadata.add_member(:service_role, Shapes::ShapeRef.new(shape: EDPServiceRole, location_name: "ServiceRole"))
    RDSMetadata.add_member(:data_pipeline_id, Shapes::ShapeRef.new(shape: EDPPipelineId, location_name: "DataPipelineId"))
    RDSMetadata.struct_class = Types::RDSMetadata

    RealtimeEndpointInfo.add_member(:peak_requests_per_second, Shapes::ShapeRef.new(shape: IntegerType, location_name: "PeakRequestsPerSecond"))
    RealtimeEndpointInfo.add_member(:created_at, Shapes::ShapeRef.new(shape: EpochTime, location_name: "CreatedAt"))
    RealtimeEndpointInfo.add_member(:endpoint_url, Shapes::ShapeRef.new(shape: VipURL, location_name: "EndpointUrl"))
    RealtimeEndpointInfo.add_member(:endpoint_status, Shapes::ShapeRef.new(shape: RealtimeEndpointStatus, location_name: "EndpointStatus"))
    RealtimeEndpointInfo.struct_class = Types::RealtimeEndpointInfo

    Record.key = Shapes::ShapeRef.new(shape: VariableName)
    Record.value = Shapes::ShapeRef.new(shape: VariableValue)

    RedshiftDataSpec.add_member(:database_information, Shapes::ShapeRef.new(shape: RedshiftDatabase, required: true, location_name: "DatabaseInformation"))
    RedshiftDataSpec.add_member(:select_sql_query, Shapes::ShapeRef.new(shape: RedshiftSelectSqlQuery, required: true, location_name: "SelectSqlQuery"))
    RedshiftDataSpec.add_member(:database_credentials, Shapes::ShapeRef.new(shape: RedshiftDatabaseCredentials, required: true, location_name: "DatabaseCredentials"))
    RedshiftDataSpec.add_member(:s3_staging_location, Shapes::ShapeRef.new(shape: S3Url, required: true, location_name: "S3StagingLocation"))
    RedshiftDataSpec.add_member(:data_rearrangement, Shapes::ShapeRef.new(shape: DataRearrangement, location_name: "DataRearrangement"))
    RedshiftDataSpec.add_member(:data_schema, Shapes::ShapeRef.new(shape: DataSchema, location_name: "DataSchema"))
    RedshiftDataSpec.add_member(:data_schema_uri, Shapes::ShapeRef.new(shape: S3Url, location_name: "DataSchemaUri"))
    RedshiftDataSpec.struct_class = Types::RedshiftDataSpec

    RedshiftDatabase.add_member(:database_name, Shapes::ShapeRef.new(shape: RedshiftDatabaseName, required: true, location_name: "DatabaseName"))
    RedshiftDatabase.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: RedshiftClusterIdentifier, required: true, location_name: "ClusterIdentifier"))
    RedshiftDatabase.struct_class = Types::RedshiftDatabase

    RedshiftDatabaseCredentials.add_member(:username, Shapes::ShapeRef.new(shape: RedshiftDatabaseUsername, required: true, location_name: "Username"))
    RedshiftDatabaseCredentials.add_member(:password, Shapes::ShapeRef.new(shape: RedshiftDatabasePassword, required: true, location_name: "Password"))
    RedshiftDatabaseCredentials.struct_class = Types::RedshiftDatabaseCredentials

    RedshiftMetadata.add_member(:redshift_database, Shapes::ShapeRef.new(shape: RedshiftDatabase, location_name: "RedshiftDatabase"))
    RedshiftMetadata.add_member(:database_user_name, Shapes::ShapeRef.new(shape: RedshiftDatabaseUsername, location_name: "DatabaseUserName"))
    RedshiftMetadata.add_member(:select_sql_query, Shapes::ShapeRef.new(shape: RedshiftSelectSqlQuery, location_name: "SelectSqlQuery"))
    RedshiftMetadata.struct_class = Types::RedshiftMetadata

    S3DataSpec.add_member(:data_location_s3, Shapes::ShapeRef.new(shape: S3Url, required: true, location_name: "DataLocationS3"))
    S3DataSpec.add_member(:data_rearrangement, Shapes::ShapeRef.new(shape: DataRearrangement, location_name: "DataRearrangement"))
    S3DataSpec.add_member(:data_schema, Shapes::ShapeRef.new(shape: DataSchema, location_name: "DataSchema"))
    S3DataSpec.add_member(:data_schema_location_s3, Shapes::ShapeRef.new(shape: S3Url, location_name: "DataSchemaLocationS3"))
    S3DataSpec.struct_class = Types::S3DataSpec

    ScoreValuePerLabelMap.key = Shapes::ShapeRef.new(shape: Label)
    ScoreValuePerLabelMap.value = Shapes::ShapeRef.new(shape: ScoreValue)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TrainingParameters.key = Shapes::ShapeRef.new(shape: StringType)
    TrainingParameters.value = Shapes::ShapeRef.new(shape: StringType)

    UpdateBatchPredictionInput.add_member(:batch_prediction_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "BatchPredictionId"))
    UpdateBatchPredictionInput.add_member(:batch_prediction_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "BatchPredictionName"))
    UpdateBatchPredictionInput.struct_class = Types::UpdateBatchPredictionInput

    UpdateBatchPredictionOutput.add_member(:batch_prediction_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "BatchPredictionId"))
    UpdateBatchPredictionOutput.struct_class = Types::UpdateBatchPredictionOutput

    UpdateDataSourceInput.add_member(:data_source_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "DataSourceId"))
    UpdateDataSourceInput.add_member(:data_source_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "DataSourceName"))
    UpdateDataSourceInput.struct_class = Types::UpdateDataSourceInput

    UpdateDataSourceOutput.add_member(:data_source_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "DataSourceId"))
    UpdateDataSourceOutput.struct_class = Types::UpdateDataSourceOutput

    UpdateEvaluationInput.add_member(:evaluation_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "EvaluationId"))
    UpdateEvaluationInput.add_member(:evaluation_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "EvaluationName"))
    UpdateEvaluationInput.struct_class = Types::UpdateEvaluationInput

    UpdateEvaluationOutput.add_member(:evaluation_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "EvaluationId"))
    UpdateEvaluationOutput.struct_class = Types::UpdateEvaluationOutput

    UpdateMLModelInput.add_member(:ml_model_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "MLModelId"))
    UpdateMLModelInput.add_member(:ml_model_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "MLModelName"))
    UpdateMLModelInput.add_member(:score_threshold, Shapes::ShapeRef.new(shape: ScoreThreshold, location_name: "ScoreThreshold"))
    UpdateMLModelInput.struct_class = Types::UpdateMLModelInput

    UpdateMLModelOutput.add_member(:ml_model_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId"))
    UpdateMLModelOutput.struct_class = Types::UpdateMLModelOutput


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2014-12-12"

      api.metadata = {
        "apiVersion" => "2014-12-12",
        "endpointPrefix" => "machinelearning",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon Machine Learning",
        "signatureVersion" => "v4",
        "targetPrefix" => "AmazonML_20141212",
        "uid" => "machinelearning-2014-12-12",
      }

      api.add_operation(:add_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddTagsInput)
        o.output = Shapes::ShapeRef.new(shape: AddTagsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagException)
        o.errors << Shapes::ShapeRef.new(shape: TagLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_batch_prediction, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBatchPrediction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateBatchPredictionInput)
        o.output = Shapes::ShapeRef.new(shape: CreateBatchPredictionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
      end)

      api.add_operation(:create_data_source_from_rds, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataSourceFromRDS"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDataSourceFromRDSInput)
        o.output = Shapes::ShapeRef.new(shape: CreateDataSourceFromRDSOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
      end)

      api.add_operation(:create_data_source_from_redshift, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataSourceFromRedshift"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDataSourceFromRedshiftInput)
        o.output = Shapes::ShapeRef.new(shape: CreateDataSourceFromRedshiftOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
      end)

      api.add_operation(:create_data_source_from_s3, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataSourceFromS3"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDataSourceFromS3Input)
        o.output = Shapes::ShapeRef.new(shape: CreateDataSourceFromS3Output)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
      end)

      api.add_operation(:create_evaluation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEvaluation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEvaluationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateEvaluationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
      end)

      api.add_operation(:create_ml_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMLModel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateMLModelInput)
        o.output = Shapes::ShapeRef.new(shape: CreateMLModelOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
      end)

      api.add_operation(:create_realtime_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRealtimeEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRealtimeEndpointInput)
        o.output = Shapes::ShapeRef.new(shape: CreateRealtimeEndpointOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_batch_prediction, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBatchPrediction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteBatchPredictionInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteBatchPredictionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataSource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataSourceInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteDataSourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_evaluation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEvaluation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEvaluationInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteEvaluationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_ml_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMLModel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteMLModelInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteMLModelOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_realtime_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRealtimeEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRealtimeEndpointInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteRealtimeEndpointOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTagsInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteTagsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_batch_predictions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBatchPredictions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeBatchPredictionsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeBatchPredictionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_data_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDataSources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDataSourcesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeDataSourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_evaluations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEvaluations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEvaluationsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeEvaluationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_ml_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMLModels"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMLModelsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeMLModelsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTagsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeTagsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_batch_prediction, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBatchPrediction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetBatchPredictionInput)
        o.output = Shapes::ShapeRef.new(shape: GetBatchPredictionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataSource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDataSourceInput)
        o.output = Shapes::ShapeRef.new(shape: GetDataSourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_evaluation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEvaluation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEvaluationInput)
        o.output = Shapes::ShapeRef.new(shape: GetEvaluationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_ml_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMLModel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMLModelInput)
        o.output = Shapes::ShapeRef.new(shape: GetMLModelOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:predict, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Predict"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PredictInput)
        o.output = Shapes::ShapeRef.new(shape: PredictOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: PredictorNotMountedException)
      end)

      api.add_operation(:update_batch_prediction, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBatchPrediction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateBatchPredictionInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateBatchPredictionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataSource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataSourceInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataSourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_evaluation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEvaluation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEvaluationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateEvaluationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_ml_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMLModel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateMLModelInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateMLModelOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
