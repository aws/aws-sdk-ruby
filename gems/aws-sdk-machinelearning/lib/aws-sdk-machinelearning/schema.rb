# frozen_string_literal: true

# This is generated code!

module Aws::MachineLearning
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AddTagsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#AddTagsInput", name: "AddTagsInput")
    AddTagsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#AddTagsOutput", name: "AddTagsOutput")
    Algorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.machinelearning#Algorithm", name: "Algorithm")
    AwsUserArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#AwsUserArn", name: "AwsUserArn", traits: {"smithy.api#pattern" => "^arn:aws:iam::[0-9]+:((user/.+)|(root))$"})
    BatchPrediction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#BatchPrediction", name: "BatchPrediction")
    BatchPredictionFilterVariable = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.machinelearning#BatchPredictionFilterVariable", name: "BatchPredictionFilterVariable")
    BatchPredictions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.machinelearning#BatchPredictions", name: "BatchPredictions")
    ComparatorValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#ComparatorValue", name: "ComparatorValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "\\S.*|^$"})
    ComputeStatistics = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.machinelearning#ComputeStatistics", name: "ComputeStatistics", traits: {"smithy.api#default" => false})
    CreateBatchPredictionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#CreateBatchPredictionInput", name: "CreateBatchPredictionInput")
    CreateBatchPredictionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#CreateBatchPredictionOutput", name: "CreateBatchPredictionOutput")
    CreateDataSourceFromRDSInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#CreateDataSourceFromRDSInput", name: "CreateDataSourceFromRDSInput")
    CreateDataSourceFromRDSOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#CreateDataSourceFromRDSOutput", name: "CreateDataSourceFromRDSOutput")
    CreateDataSourceFromRedshiftInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#CreateDataSourceFromRedshiftInput", name: "CreateDataSourceFromRedshiftInput")
    CreateDataSourceFromRedshiftOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#CreateDataSourceFromRedshiftOutput", name: "CreateDataSourceFromRedshiftOutput")
    CreateDataSourceFromS3Input = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#CreateDataSourceFromS3Input", name: "CreateDataSourceFromS3Input")
    CreateDataSourceFromS3Output = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#CreateDataSourceFromS3Output", name: "CreateDataSourceFromS3Output")
    CreateEvaluationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#CreateEvaluationInput", name: "CreateEvaluationInput")
    CreateEvaluationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#CreateEvaluationOutput", name: "CreateEvaluationOutput")
    CreateMLModelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#CreateMLModelInput", name: "CreateMLModelInput")
    CreateMLModelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#CreateMLModelOutput", name: "CreateMLModelOutput")
    CreateRealtimeEndpointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#CreateRealtimeEndpointInput", name: "CreateRealtimeEndpointInput")
    CreateRealtimeEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#CreateRealtimeEndpointOutput", name: "CreateRealtimeEndpointOutput")
    DataRearrangement = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#DataRearrangement", name: "DataRearrangement")
    DataSchema = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#DataSchema", name: "DataSchema", traits: {"smithy.api#length" => {"min" => 0, "max" => 131071}})
    DataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#DataSource", name: "DataSource")
    DataSourceFilterVariable = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.machinelearning#DataSourceFilterVariable", name: "DataSourceFilterVariable")
    DataSources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.machinelearning#DataSources", name: "DataSources")
    DeleteBatchPredictionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#DeleteBatchPredictionInput", name: "DeleteBatchPredictionInput")
    DeleteBatchPredictionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#DeleteBatchPredictionOutput", name: "DeleteBatchPredictionOutput")
    DeleteDataSourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#DeleteDataSourceInput", name: "DeleteDataSourceInput")
    DeleteDataSourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#DeleteDataSourceOutput", name: "DeleteDataSourceOutput")
    DeleteEvaluationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#DeleteEvaluationInput", name: "DeleteEvaluationInput")
    DeleteEvaluationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#DeleteEvaluationOutput", name: "DeleteEvaluationOutput")
    DeleteMLModelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#DeleteMLModelInput", name: "DeleteMLModelInput")
    DeleteMLModelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#DeleteMLModelOutput", name: "DeleteMLModelOutput")
    DeleteRealtimeEndpointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#DeleteRealtimeEndpointInput", name: "DeleteRealtimeEndpointInput")
    DeleteRealtimeEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#DeleteRealtimeEndpointOutput", name: "DeleteRealtimeEndpointOutput")
    DeleteTagsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#DeleteTagsInput", name: "DeleteTagsInput")
    DeleteTagsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#DeleteTagsOutput", name: "DeleteTagsOutput")
    DescribeBatchPredictionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#DescribeBatchPredictionsInput", name: "DescribeBatchPredictionsInput")
    DescribeBatchPredictionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#DescribeBatchPredictionsOutput", name: "DescribeBatchPredictionsOutput")
    DescribeDataSourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#DescribeDataSourcesInput", name: "DescribeDataSourcesInput")
    DescribeDataSourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#DescribeDataSourcesOutput", name: "DescribeDataSourcesOutput")
    DescribeEvaluationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#DescribeEvaluationsInput", name: "DescribeEvaluationsInput")
    DescribeEvaluationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#DescribeEvaluationsOutput", name: "DescribeEvaluationsOutput")
    DescribeMLModelsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#DescribeMLModelsInput", name: "DescribeMLModelsInput")
    DescribeMLModelsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#DescribeMLModelsOutput", name: "DescribeMLModelsOutput")
    DescribeTagsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#DescribeTagsInput", name: "DescribeTagsInput")
    DescribeTagsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#DescribeTagsOutput", name: "DescribeTagsOutput")
    DetailsAttributes = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.machinelearning#DetailsAttributes", name: "DetailsAttributes")
    DetailsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.machinelearning#DetailsMap", name: "DetailsMap")
    DetailsValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#DetailsValue", name: "DetailsValue", traits: {"smithy.api#length" => {"min" => 1}})
    EDPPipelineId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#EDPPipelineId", name: "EDPPipelineId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    EDPResourceRole = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#EDPResourceRole", name: "EDPResourceRole", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    EDPSecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#EDPSecurityGroupId", name: "EDPSecurityGroupId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    EDPSecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.machinelearning#EDPSecurityGroupIds", name: "EDPSecurityGroupIds")
    EDPServiceRole = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#EDPServiceRole", name: "EDPServiceRole", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    EDPSubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#EDPSubnetId", name: "EDPSubnetId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    EntityId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#EntityId", name: "EntityId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    EntityName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#EntityName", name: "EntityName", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "\\S.*|^$"})
    EntityStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.machinelearning#EntityStatus", name: "EntityStatus")
    EpochTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.machinelearning#EpochTime", name: "EpochTime")
    ErrorCode = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.machinelearning#ErrorCode", name: "ErrorCode", traits: {"smithy.api#default" => 0})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    Evaluation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#Evaluation", name: "Evaluation")
    EvaluationFilterVariable = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.machinelearning#EvaluationFilterVariable", name: "EvaluationFilterVariable")
    Evaluations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.machinelearning#Evaluations", name: "Evaluations")
    GetBatchPredictionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#GetBatchPredictionInput", name: "GetBatchPredictionInput")
    GetBatchPredictionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#GetBatchPredictionOutput", name: "GetBatchPredictionOutput")
    GetDataSourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#GetDataSourceInput", name: "GetDataSourceInput")
    GetDataSourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#GetDataSourceOutput", name: "GetDataSourceOutput")
    GetEvaluationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#GetEvaluationInput", name: "GetEvaluationInput")
    GetEvaluationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#GetEvaluationOutput", name: "GetEvaluationOutput")
    GetMLModelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#GetMLModelInput", name: "GetMLModelInput")
    GetMLModelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#GetMLModelOutput", name: "GetMLModelOutput")
    IdempotentParameterMismatchException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#IdempotentParameterMismatchException", name: "IdempotentParameterMismatchException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IntegerType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.machinelearning#IntegerType", name: "IntegerType", traits: {"smithy.api#default" => 0})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidInputException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#InvalidInputException", name: "InvalidInputException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTagException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#InvalidTagException", name: "InvalidTagException", traits: {"smithy.api#error" => "client"})
    Label = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#Label", name: "Label", traits: {"smithy.api#length" => {"min" => 1}})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 417})
    LongType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.machinelearning#LongType", name: "LongType")
    MLModel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#MLModel", name: "MLModel")
    MLModelFilterVariable = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.machinelearning#MLModelFilterVariable", name: "MLModelFilterVariable")
    MLModelName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#MLModelName", name: "MLModelName", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    MLModelType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.machinelearning#MLModelType", name: "MLModelType")
    MLModels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.machinelearning#MLModels", name: "MLModels")
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#Message", name: "Message", traits: {"smithy.api#length" => {"min" => 0, "max" => 10240}})
    PageLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.machinelearning#PageLimit", name: "PageLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    PerformanceMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#PerformanceMetrics", name: "PerformanceMetrics")
    PerformanceMetricsProperties = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.machinelearning#PerformanceMetricsProperties", name: "PerformanceMetricsProperties")
    PerformanceMetricsPropertyKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#PerformanceMetricsPropertyKey", name: "PerformanceMetricsPropertyKey")
    PerformanceMetricsPropertyValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#PerformanceMetricsPropertyValue", name: "PerformanceMetricsPropertyValue")
    PredictInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#PredictInput", name: "PredictInput")
    PredictOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#PredictOutput", name: "PredictOutput")
    Prediction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#Prediction", name: "Prediction")
    PredictorNotMountedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#PredictorNotMountedException", name: "PredictorNotMountedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PresignedS3Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#PresignedS3Url", name: "PresignedS3Url")
    RDSDataSpec = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#RDSDataSpec", name: "RDSDataSpec")
    RDSDatabase = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#RDSDatabase", name: "RDSDatabase")
    RDSDatabaseCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#RDSDatabaseCredentials", name: "RDSDatabaseCredentials")
    RDSDatabaseName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#RDSDatabaseName", name: "RDSDatabaseName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    RDSDatabasePassword = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#RDSDatabasePassword", name: "RDSDatabasePassword", traits: {"smithy.api#length" => {"min" => 8, "max" => 128}, "smithy.api#sensitive" => {}})
    RDSDatabaseUsername = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#RDSDatabaseUsername", name: "RDSDatabaseUsername", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    RDSInstanceIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#RDSInstanceIdentifier", name: "RDSInstanceIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9-]+$"})
    RDSMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#RDSMetadata", name: "RDSMetadata")
    RDSSelectSqlQuery = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#RDSSelectSqlQuery", name: "RDSSelectSqlQuery", traits: {"smithy.api#length" => {"min" => 1, "max" => 16777216}})
    RealtimeEndpointInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#RealtimeEndpointInfo", name: "RealtimeEndpointInfo")
    RealtimeEndpointStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.machinelearning#RealtimeEndpointStatus", name: "RealtimeEndpointStatus")
    Recipe = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#Recipe", name: "Recipe", traits: {"smithy.api#length" => {"min" => 0, "max" => 131071}})
    Record = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.machinelearning#Record", name: "Record")
    RedshiftClusterIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#RedshiftClusterIdentifier", name: "RedshiftClusterIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9-]+$"})
    RedshiftDataSpec = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#RedshiftDataSpec", name: "RedshiftDataSpec")
    RedshiftDatabase = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#RedshiftDatabase", name: "RedshiftDatabase")
    RedshiftDatabaseCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#RedshiftDatabaseCredentials", name: "RedshiftDatabaseCredentials")
    RedshiftDatabaseName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#RedshiftDatabaseName", name: "RedshiftDatabaseName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9]+$"})
    RedshiftDatabasePassword = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#RedshiftDatabasePassword", name: "RedshiftDatabasePassword", traits: {"smithy.api#length" => {"min" => 8, "max" => 64}, "smithy.api#sensitive" => {}})
    RedshiftDatabaseUsername = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#RedshiftDatabaseUsername", name: "RedshiftDatabaseUsername", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    RedshiftMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#RedshiftMetadata", name: "RedshiftMetadata")
    RedshiftSelectSqlQuery = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#RedshiftSelectSqlQuery", name: "RedshiftSelectSqlQuery", traits: {"smithy.api#length" => {"min" => 1, "max" => 16777216}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#RoleARN", name: "RoleARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 110}})
    S3DataSpec = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#S3DataSpec", name: "S3DataSpec")
    S3Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#S3Url", name: "S3Url", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^s3://([^/]+)(/.*)?$"})
    ScoreThreshold = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.machinelearning#ScoreThreshold", name: "ScoreThreshold")
    ScoreValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.machinelearning#ScoreValue", name: "ScoreValue", traits: {"smithy.api#default" => 0})
    ScoreValuePerLabelMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.machinelearning#ScoreValuePerLabelMap", name: "ScoreValuePerLabelMap")
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.machinelearning#SortOrder", name: "SortOrder")
    StringType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#StringType", name: "StringType")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.machinelearning#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    TagLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#TagLimitExceededException", name: "TagLimitExceededException", traits: {"smithy.api#error" => "client"})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.machinelearning#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TaggableResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.machinelearning#TaggableResourceType", name: "TaggableResourceType")
    TrainingParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.machinelearning#TrainingParameters", name: "TrainingParameters")
    UpdateBatchPredictionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#UpdateBatchPredictionInput", name: "UpdateBatchPredictionInput")
    UpdateBatchPredictionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#UpdateBatchPredictionOutput", name: "UpdateBatchPredictionOutput")
    UpdateDataSourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#UpdateDataSourceInput", name: "UpdateDataSourceInput")
    UpdateDataSourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#UpdateDataSourceOutput", name: "UpdateDataSourceOutput")
    UpdateEvaluationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#UpdateEvaluationInput", name: "UpdateEvaluationInput")
    UpdateEvaluationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#UpdateEvaluationOutput", name: "UpdateEvaluationOutput")
    UpdateMLModelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#UpdateMLModelInput", name: "UpdateMLModelInput")
    UpdateMLModelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.machinelearning#UpdateMLModelOutput", name: "UpdateMLModelOutput")
    VariableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#VariableName", name: "VariableName")
    VariableValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#VariableValue", name: "VariableValue")
    Verbose = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.machinelearning#Verbose", name: "Verbose", traits: {"smithy.api#default" => false})
    VipURL = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.machinelearning#VipURL", name: "VipURL", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^https://[a-zA-Z0-9-.]*\\.amazon(aws)?\\.com[/]?$"})
    FloatLabel = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.machinelearning#floatLabel", name: "FloatLabel")

    AddTagsInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    AddTagsInput.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    AddTagsInput.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    AddTagsInput.type = Types::AddTagsInput
    AddTagsOutput.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "ResourceId"))
    AddTagsOutput.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceType, name: "ResourceType"))
    AddTagsOutput.type = Types::AddTagsOutput
    Algorithm.add_member(:sgd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SGD", traits: {"smithy.api#enumValue" => "sgd"}))
    BatchPrediction.add_member(:batch_prediction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "BatchPredictionId"))
    BatchPrediction.add_member(:ml_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "MLModelId"))
    BatchPrediction.add_member(:batch_prediction_data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "BatchPredictionDataSourceId"))
    BatchPrediction.add_member(:input_data_location_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "InputDataLocationS3"))
    BatchPrediction.add_member(:created_by_iam_user, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsUserArn, name: "CreatedByIamUser"))
    BatchPrediction.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "CreatedAt"))
    BatchPrediction.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "LastUpdatedAt"))
    BatchPrediction.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name"))
    BatchPrediction.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "Status"))
    BatchPrediction.add_member(:output_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "OutputUri"))
    BatchPrediction.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    BatchPrediction.add_member(:compute_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LongType, name: "ComputeTime"))
    BatchPrediction.add_member(:finished_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "FinishedAt"))
    BatchPrediction.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "StartedAt"))
    BatchPrediction.add_member(:total_record_count, ::Smithy::Schema::Shapes::MemberShape.new(target: LongType, name: "TotalRecordCount"))
    BatchPrediction.add_member(:invalid_record_count, ::Smithy::Schema::Shapes::MemberShape.new(target: LongType, name: "InvalidRecordCount"))
    BatchPrediction.type = Types::BatchPrediction
    BatchPredictionFilterVariable.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED_AT", traits: {"smithy.api#enumValue" => "CreatedAt"}))
    BatchPredictionFilterVariable.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_UPDATED_AT", traits: {"smithy.api#enumValue" => "LastUpdatedAt"}))
    BatchPredictionFilterVariable.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATUS", traits: {"smithy.api#enumValue" => "Status"}))
    BatchPredictionFilterVariable.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAME", traits: {"smithy.api#enumValue" => "Name"}))
    BatchPredictionFilterVariable.add_member(:iam_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_USER", traits: {"smithy.api#enumValue" => "IAMUser"}))
    BatchPredictionFilterVariable.add_member(:ml_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ML_MODEL_ID", traits: {"smithy.api#enumValue" => "MLModelId"}))
    BatchPredictionFilterVariable.add_member(:datasource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATASOURCE_ID", traits: {"smithy.api#enumValue" => "DataSourceId"}))
    BatchPredictionFilterVariable.add_member(:data_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA_URI", traits: {"smithy.api#enumValue" => "DataURI"}))
    BatchPredictions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPrediction, name: "member"))
    CreateBatchPredictionInput.add_member(:batch_prediction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "BatchPredictionId", traits: {"smithy.api#required" => {}}))
    CreateBatchPredictionInput.add_member(:batch_prediction_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "BatchPredictionName"))
    CreateBatchPredictionInput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "MLModelId", traits: {"smithy.api#required" => {}}))
    CreateBatchPredictionInput.add_member(:batch_prediction_data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "BatchPredictionDataSourceId", traits: {"smithy.api#required" => {}}))
    CreateBatchPredictionInput.add_member(:output_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "OutputUri", traits: {"smithy.api#required" => {}}))
    CreateBatchPredictionInput.type = Types::CreateBatchPredictionInput
    CreateBatchPredictionOutput.add_member(:batch_prediction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "BatchPredictionId"))
    CreateBatchPredictionOutput.type = Types::CreateBatchPredictionOutput
    CreateDataSourceFromRDSInput.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "DataSourceId", traits: {"smithy.api#required" => {}}))
    CreateDataSourceFromRDSInput.add_member(:data_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "DataSourceName"))
    CreateDataSourceFromRDSInput.add_member(:rds_data, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDataSpec, name: "RDSData", traits: {"smithy.api#required" => {}}))
    CreateDataSourceFromRDSInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN", traits: {"smithy.api#required" => {}}))
    CreateDataSourceFromRDSInput.add_member(:compute_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeStatistics, name: "ComputeStatistics", traits: {"smithy.api#default" => false}))
    CreateDataSourceFromRDSInput.type = Types::CreateDataSourceFromRDSInput
    CreateDataSourceFromRDSOutput.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "DataSourceId"))
    CreateDataSourceFromRDSOutput.type = Types::CreateDataSourceFromRDSOutput
    CreateDataSourceFromRedshiftInput.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "DataSourceId", traits: {"smithy.api#required" => {}}))
    CreateDataSourceFromRedshiftInput.add_member(:data_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "DataSourceName"))
    CreateDataSourceFromRedshiftInput.add_member(:data_spec, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftDataSpec, name: "DataSpec", traits: {"smithy.api#required" => {}}))
    CreateDataSourceFromRedshiftInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN", traits: {"smithy.api#required" => {}}))
    CreateDataSourceFromRedshiftInput.add_member(:compute_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeStatistics, name: "ComputeStatistics", traits: {"smithy.api#default" => false}))
    CreateDataSourceFromRedshiftInput.type = Types::CreateDataSourceFromRedshiftInput
    CreateDataSourceFromRedshiftOutput.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "DataSourceId"))
    CreateDataSourceFromRedshiftOutput.type = Types::CreateDataSourceFromRedshiftOutput
    CreateDataSourceFromS3Input.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "DataSourceId", traits: {"smithy.api#required" => {}}))
    CreateDataSourceFromS3Input.add_member(:data_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "DataSourceName"))
    CreateDataSourceFromS3Input.add_member(:data_spec, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DataSpec, name: "DataSpec", traits: {"smithy.api#required" => {}}))
    CreateDataSourceFromS3Input.add_member(:compute_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeStatistics, name: "ComputeStatistics", traits: {"smithy.api#default" => false}))
    CreateDataSourceFromS3Input.type = Types::CreateDataSourceFromS3Input
    CreateDataSourceFromS3Output.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "DataSourceId"))
    CreateDataSourceFromS3Output.type = Types::CreateDataSourceFromS3Output
    CreateEvaluationInput.add_member(:evaluation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "EvaluationId", traits: {"smithy.api#required" => {}}))
    CreateEvaluationInput.add_member(:evaluation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "EvaluationName"))
    CreateEvaluationInput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "MLModelId", traits: {"smithy.api#required" => {}}))
    CreateEvaluationInput.add_member(:evaluation_data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "EvaluationDataSourceId", traits: {"smithy.api#required" => {}}))
    CreateEvaluationInput.type = Types::CreateEvaluationInput
    CreateEvaluationOutput.add_member(:evaluation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "EvaluationId"))
    CreateEvaluationOutput.type = Types::CreateEvaluationOutput
    CreateMLModelInput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "MLModelId", traits: {"smithy.api#required" => {}}))
    CreateMLModelInput.add_member(:ml_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "MLModelName"))
    CreateMLModelInput.add_member(:ml_model_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MLModelType, name: "MLModelType", traits: {"smithy.api#required" => {}}))
    CreateMLModelInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: TrainingParameters, name: "Parameters"))
    CreateMLModelInput.add_member(:training_data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "TrainingDataSourceId", traits: {"smithy.api#required" => {}}))
    CreateMLModelInput.add_member(:recipe, ::Smithy::Schema::Shapes::MemberShape.new(target: Recipe, name: "Recipe"))
    CreateMLModelInput.add_member(:recipe_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "RecipeUri"))
    CreateMLModelInput.type = Types::CreateMLModelInput
    CreateMLModelOutput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "MLModelId"))
    CreateMLModelOutput.type = Types::CreateMLModelOutput
    CreateRealtimeEndpointInput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "MLModelId", traits: {"smithy.api#required" => {}}))
    CreateRealtimeEndpointInput.type = Types::CreateRealtimeEndpointInput
    CreateRealtimeEndpointOutput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "MLModelId"))
    CreateRealtimeEndpointOutput.add_member(:realtime_endpoint_info, ::Smithy::Schema::Shapes::MemberShape.new(target: RealtimeEndpointInfo, name: "RealtimeEndpointInfo"))
    CreateRealtimeEndpointOutput.type = Types::CreateRealtimeEndpointOutput
    DataSource.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "DataSourceId"))
    DataSource.add_member(:data_location_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "DataLocationS3"))
    DataSource.add_member(:data_rearrangement, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRearrangement, name: "DataRearrangement"))
    DataSource.add_member(:created_by_iam_user, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsUserArn, name: "CreatedByIamUser"))
    DataSource.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "CreatedAt"))
    DataSource.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "LastUpdatedAt"))
    DataSource.add_member(:data_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: LongType, name: "DataSizeInBytes"))
    DataSource.add_member(:number_of_files, ::Smithy::Schema::Shapes::MemberShape.new(target: LongType, name: "NumberOfFiles"))
    DataSource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name"))
    DataSource.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "Status"))
    DataSource.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    DataSource.add_member(:redshift_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftMetadata, name: "RedshiftMetadata"))
    DataSource.add_member(:rds_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSMetadata, name: "RDSMetadata"))
    DataSource.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    DataSource.add_member(:compute_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeStatistics, name: "ComputeStatistics", traits: {"smithy.api#default" => false}))
    DataSource.add_member(:compute_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LongType, name: "ComputeTime"))
    DataSource.add_member(:finished_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "FinishedAt"))
    DataSource.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "StartedAt"))
    DataSource.type = Types::DataSource
    DataSourceFilterVariable.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED_AT", traits: {"smithy.api#enumValue" => "CreatedAt"}))
    DataSourceFilterVariable.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_UPDATED_AT", traits: {"smithy.api#enumValue" => "LastUpdatedAt"}))
    DataSourceFilterVariable.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATUS", traits: {"smithy.api#enumValue" => "Status"}))
    DataSourceFilterVariable.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAME", traits: {"smithy.api#enumValue" => "Name"}))
    DataSourceFilterVariable.add_member(:data_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA_URI", traits: {"smithy.api#enumValue" => "DataLocationS3"}))
    DataSourceFilterVariable.add_member(:iam_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_USER", traits: {"smithy.api#enumValue" => "IAMUser"}))
    DataSources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSource, name: "member"))
    DeleteBatchPredictionInput.add_member(:batch_prediction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "BatchPredictionId", traits: {"smithy.api#required" => {}}))
    DeleteBatchPredictionInput.type = Types::DeleteBatchPredictionInput
    DeleteBatchPredictionOutput.add_member(:batch_prediction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "BatchPredictionId"))
    DeleteBatchPredictionOutput.type = Types::DeleteBatchPredictionOutput
    DeleteDataSourceInput.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "DataSourceId", traits: {"smithy.api#required" => {}}))
    DeleteDataSourceInput.type = Types::DeleteDataSourceInput
    DeleteDataSourceOutput.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "DataSourceId"))
    DeleteDataSourceOutput.type = Types::DeleteDataSourceOutput
    DeleteEvaluationInput.add_member(:evaluation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "EvaluationId", traits: {"smithy.api#required" => {}}))
    DeleteEvaluationInput.type = Types::DeleteEvaluationInput
    DeleteEvaluationOutput.add_member(:evaluation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "EvaluationId"))
    DeleteEvaluationOutput.type = Types::DeleteEvaluationOutput
    DeleteMLModelInput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "MLModelId", traits: {"smithy.api#required" => {}}))
    DeleteMLModelInput.type = Types::DeleteMLModelInput
    DeleteMLModelOutput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "MLModelId"))
    DeleteMLModelOutput.type = Types::DeleteMLModelOutput
    DeleteRealtimeEndpointInput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "MLModelId", traits: {"smithy.api#required" => {}}))
    DeleteRealtimeEndpointInput.type = Types::DeleteRealtimeEndpointInput
    DeleteRealtimeEndpointOutput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "MLModelId"))
    DeleteRealtimeEndpointOutput.add_member(:realtime_endpoint_info, ::Smithy::Schema::Shapes::MemberShape.new(target: RealtimeEndpointInfo, name: "RealtimeEndpointInfo"))
    DeleteRealtimeEndpointOutput.type = Types::DeleteRealtimeEndpointOutput
    DeleteTagsInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    DeleteTagsInput.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    DeleteTagsInput.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    DeleteTagsInput.type = Types::DeleteTagsInput
    DeleteTagsOutput.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "ResourceId"))
    DeleteTagsOutput.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceType, name: "ResourceType"))
    DeleteTagsOutput.type = Types::DeleteTagsOutput
    DescribeBatchPredictionsInput.add_member(:filter_variable, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPredictionFilterVariable, name: "FilterVariable"))
    DescribeBatchPredictionsInput.add_member(:eq, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparatorValue, name: "EQ"))
    DescribeBatchPredictionsInput.add_member(:gt, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparatorValue, name: "GT"))
    DescribeBatchPredictionsInput.add_member(:lt, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparatorValue, name: "LT"))
    DescribeBatchPredictionsInput.add_member(:ge, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparatorValue, name: "GE"))
    DescribeBatchPredictionsInput.add_member(:le, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparatorValue, name: "LE"))
    DescribeBatchPredictionsInput.add_member(:ne, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparatorValue, name: "NE"))
    DescribeBatchPredictionsInput.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparatorValue, name: "Prefix"))
    DescribeBatchPredictionsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder"))
    DescribeBatchPredictionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "NextToken"))
    DescribeBatchPredictionsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PageLimit, name: "Limit"))
    DescribeBatchPredictionsInput.type = Types::DescribeBatchPredictionsInput
    DescribeBatchPredictionsOutput.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPredictions, name: "Results"))
    DescribeBatchPredictionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "NextToken"))
    DescribeBatchPredictionsOutput.type = Types::DescribeBatchPredictionsOutput
    DescribeDataSourcesInput.add_member(:filter_variable, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceFilterVariable, name: "FilterVariable"))
    DescribeDataSourcesInput.add_member(:eq, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparatorValue, name: "EQ"))
    DescribeDataSourcesInput.add_member(:gt, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparatorValue, name: "GT"))
    DescribeDataSourcesInput.add_member(:lt, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparatorValue, name: "LT"))
    DescribeDataSourcesInput.add_member(:ge, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparatorValue, name: "GE"))
    DescribeDataSourcesInput.add_member(:le, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparatorValue, name: "LE"))
    DescribeDataSourcesInput.add_member(:ne, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparatorValue, name: "NE"))
    DescribeDataSourcesInput.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparatorValue, name: "Prefix"))
    DescribeDataSourcesInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder"))
    DescribeDataSourcesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "NextToken"))
    DescribeDataSourcesInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PageLimit, name: "Limit"))
    DescribeDataSourcesInput.type = Types::DescribeDataSourcesInput
    DescribeDataSourcesOutput.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSources, name: "Results"))
    DescribeDataSourcesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "NextToken"))
    DescribeDataSourcesOutput.type = Types::DescribeDataSourcesOutput
    DescribeEvaluationsInput.add_member(:filter_variable, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationFilterVariable, name: "FilterVariable"))
    DescribeEvaluationsInput.add_member(:eq, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparatorValue, name: "EQ"))
    DescribeEvaluationsInput.add_member(:gt, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparatorValue, name: "GT"))
    DescribeEvaluationsInput.add_member(:lt, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparatorValue, name: "LT"))
    DescribeEvaluationsInput.add_member(:ge, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparatorValue, name: "GE"))
    DescribeEvaluationsInput.add_member(:le, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparatorValue, name: "LE"))
    DescribeEvaluationsInput.add_member(:ne, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparatorValue, name: "NE"))
    DescribeEvaluationsInput.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparatorValue, name: "Prefix"))
    DescribeEvaluationsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder"))
    DescribeEvaluationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "NextToken"))
    DescribeEvaluationsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PageLimit, name: "Limit"))
    DescribeEvaluationsInput.type = Types::DescribeEvaluationsInput
    DescribeEvaluationsOutput.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: Evaluations, name: "Results"))
    DescribeEvaluationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "NextToken"))
    DescribeEvaluationsOutput.type = Types::DescribeEvaluationsOutput
    DescribeMLModelsInput.add_member(:filter_variable, ::Smithy::Schema::Shapes::MemberShape.new(target: MLModelFilterVariable, name: "FilterVariable"))
    DescribeMLModelsInput.add_member(:eq, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparatorValue, name: "EQ"))
    DescribeMLModelsInput.add_member(:gt, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparatorValue, name: "GT"))
    DescribeMLModelsInput.add_member(:lt, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparatorValue, name: "LT"))
    DescribeMLModelsInput.add_member(:ge, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparatorValue, name: "GE"))
    DescribeMLModelsInput.add_member(:le, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparatorValue, name: "LE"))
    DescribeMLModelsInput.add_member(:ne, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparatorValue, name: "NE"))
    DescribeMLModelsInput.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparatorValue, name: "Prefix"))
    DescribeMLModelsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder"))
    DescribeMLModelsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "NextToken"))
    DescribeMLModelsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PageLimit, name: "Limit"))
    DescribeMLModelsInput.type = Types::DescribeMLModelsInput
    DescribeMLModelsOutput.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: MLModels, name: "Results"))
    DescribeMLModelsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "NextToken"))
    DescribeMLModelsOutput.type = Types::DescribeMLModelsOutput
    DescribeTagsInput.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    DescribeTagsInput.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    DescribeTagsInput.type = Types::DescribeTagsInput
    DescribeTagsOutput.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "ResourceId"))
    DescribeTagsOutput.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceType, name: "ResourceType"))
    DescribeTagsOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    DescribeTagsOutput.type = Types::DescribeTagsOutput
    DetailsAttributes.add_member(:predictive_model_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREDICTIVE_MODEL_TYPE", traits: {"smithy.api#enumValue" => "PredictiveModelType"}))
    DetailsAttributes.add_member(:algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALGORITHM", traits: {"smithy.api#enumValue" => "Algorithm"}))
    DetailsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: DetailsAttributes, name: "key"))
    DetailsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DetailsValue, name: "value"))
    EDPSecurityGroupIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EDPSecurityGroupId, name: "member"))
    EntityStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    EntityStatus.add_member(:inprogress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INPROGRESS", traits: {"smithy.api#enumValue" => "INPROGRESS"}))
    EntityStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    EntityStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    EntityStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    Evaluation.add_member(:evaluation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "EvaluationId"))
    Evaluation.add_member(:ml_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "MLModelId"))
    Evaluation.add_member(:evaluation_data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "EvaluationDataSourceId"))
    Evaluation.add_member(:input_data_location_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "InputDataLocationS3"))
    Evaluation.add_member(:created_by_iam_user, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsUserArn, name: "CreatedByIamUser"))
    Evaluation.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "CreatedAt"))
    Evaluation.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "LastUpdatedAt"))
    Evaluation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name"))
    Evaluation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "Status"))
    Evaluation.add_member(:performance_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceMetrics, name: "PerformanceMetrics"))
    Evaluation.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    Evaluation.add_member(:compute_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LongType, name: "ComputeTime"))
    Evaluation.add_member(:finished_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "FinishedAt"))
    Evaluation.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "StartedAt"))
    Evaluation.type = Types::Evaluation
    EvaluationFilterVariable.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED_AT", traits: {"smithy.api#enumValue" => "CreatedAt"}))
    EvaluationFilterVariable.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_UPDATED_AT", traits: {"smithy.api#enumValue" => "LastUpdatedAt"}))
    EvaluationFilterVariable.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATUS", traits: {"smithy.api#enumValue" => "Status"}))
    EvaluationFilterVariable.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAME", traits: {"smithy.api#enumValue" => "Name"}))
    EvaluationFilterVariable.add_member(:iam_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_USER", traits: {"smithy.api#enumValue" => "IAMUser"}))
    EvaluationFilterVariable.add_member(:ml_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ML_MODEL_ID", traits: {"smithy.api#enumValue" => "MLModelId"}))
    EvaluationFilterVariable.add_member(:datasource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATASOURCE_ID", traits: {"smithy.api#enumValue" => "DataSourceId"}))
    EvaluationFilterVariable.add_member(:data_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA_URI", traits: {"smithy.api#enumValue" => "DataURI"}))
    Evaluations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Evaluation, name: "member"))
    GetBatchPredictionInput.add_member(:batch_prediction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "BatchPredictionId", traits: {"smithy.api#required" => {}}))
    GetBatchPredictionInput.type = Types::GetBatchPredictionInput
    GetBatchPredictionOutput.add_member(:batch_prediction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "BatchPredictionId"))
    GetBatchPredictionOutput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "MLModelId"))
    GetBatchPredictionOutput.add_member(:batch_prediction_data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "BatchPredictionDataSourceId"))
    GetBatchPredictionOutput.add_member(:input_data_location_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "InputDataLocationS3"))
    GetBatchPredictionOutput.add_member(:created_by_iam_user, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsUserArn, name: "CreatedByIamUser"))
    GetBatchPredictionOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "CreatedAt"))
    GetBatchPredictionOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "LastUpdatedAt"))
    GetBatchPredictionOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name"))
    GetBatchPredictionOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "Status"))
    GetBatchPredictionOutput.add_member(:output_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "OutputUri"))
    GetBatchPredictionOutput.add_member(:log_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: PresignedS3Url, name: "LogUri"))
    GetBatchPredictionOutput.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    GetBatchPredictionOutput.add_member(:compute_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LongType, name: "ComputeTime"))
    GetBatchPredictionOutput.add_member(:finished_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "FinishedAt"))
    GetBatchPredictionOutput.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "StartedAt"))
    GetBatchPredictionOutput.add_member(:total_record_count, ::Smithy::Schema::Shapes::MemberShape.new(target: LongType, name: "TotalRecordCount"))
    GetBatchPredictionOutput.add_member(:invalid_record_count, ::Smithy::Schema::Shapes::MemberShape.new(target: LongType, name: "InvalidRecordCount"))
    GetBatchPredictionOutput.type = Types::GetBatchPredictionOutput
    GetDataSourceInput.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "DataSourceId", traits: {"smithy.api#required" => {}}))
    GetDataSourceInput.add_member(:verbose, ::Smithy::Schema::Shapes::MemberShape.new(target: Verbose, name: "Verbose", traits: {"smithy.api#default" => false}))
    GetDataSourceInput.type = Types::GetDataSourceInput
    GetDataSourceOutput.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "DataSourceId"))
    GetDataSourceOutput.add_member(:data_location_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "DataLocationS3"))
    GetDataSourceOutput.add_member(:data_rearrangement, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRearrangement, name: "DataRearrangement"))
    GetDataSourceOutput.add_member(:created_by_iam_user, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsUserArn, name: "CreatedByIamUser"))
    GetDataSourceOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "CreatedAt"))
    GetDataSourceOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "LastUpdatedAt"))
    GetDataSourceOutput.add_member(:data_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: LongType, name: "DataSizeInBytes"))
    GetDataSourceOutput.add_member(:number_of_files, ::Smithy::Schema::Shapes::MemberShape.new(target: LongType, name: "NumberOfFiles"))
    GetDataSourceOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name"))
    GetDataSourceOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "Status"))
    GetDataSourceOutput.add_member(:log_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: PresignedS3Url, name: "LogUri"))
    GetDataSourceOutput.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    GetDataSourceOutput.add_member(:redshift_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftMetadata, name: "RedshiftMetadata"))
    GetDataSourceOutput.add_member(:rds_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSMetadata, name: "RDSMetadata"))
    GetDataSourceOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    GetDataSourceOutput.add_member(:compute_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeStatistics, name: "ComputeStatistics", traits: {"smithy.api#default" => false}))
    GetDataSourceOutput.add_member(:compute_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LongType, name: "ComputeTime"))
    GetDataSourceOutput.add_member(:finished_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "FinishedAt"))
    GetDataSourceOutput.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "StartedAt"))
    GetDataSourceOutput.add_member(:data_source_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSchema, name: "DataSourceSchema"))
    GetDataSourceOutput.type = Types::GetDataSourceOutput
    GetEvaluationInput.add_member(:evaluation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "EvaluationId", traits: {"smithy.api#required" => {}}))
    GetEvaluationInput.type = Types::GetEvaluationInput
    GetEvaluationOutput.add_member(:evaluation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "EvaluationId"))
    GetEvaluationOutput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "MLModelId"))
    GetEvaluationOutput.add_member(:evaluation_data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "EvaluationDataSourceId"))
    GetEvaluationOutput.add_member(:input_data_location_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "InputDataLocationS3"))
    GetEvaluationOutput.add_member(:created_by_iam_user, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsUserArn, name: "CreatedByIamUser"))
    GetEvaluationOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "CreatedAt"))
    GetEvaluationOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "LastUpdatedAt"))
    GetEvaluationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name"))
    GetEvaluationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "Status"))
    GetEvaluationOutput.add_member(:performance_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceMetrics, name: "PerformanceMetrics"))
    GetEvaluationOutput.add_member(:log_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: PresignedS3Url, name: "LogUri"))
    GetEvaluationOutput.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    GetEvaluationOutput.add_member(:compute_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LongType, name: "ComputeTime"))
    GetEvaluationOutput.add_member(:finished_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "FinishedAt"))
    GetEvaluationOutput.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "StartedAt"))
    GetEvaluationOutput.type = Types::GetEvaluationOutput
    GetMLModelInput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "MLModelId", traits: {"smithy.api#required" => {}}))
    GetMLModelInput.add_member(:verbose, ::Smithy::Schema::Shapes::MemberShape.new(target: Verbose, name: "Verbose", traits: {"smithy.api#default" => false}))
    GetMLModelInput.type = Types::GetMLModelInput
    GetMLModelOutput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "MLModelId"))
    GetMLModelOutput.add_member(:training_data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "TrainingDataSourceId"))
    GetMLModelOutput.add_member(:created_by_iam_user, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsUserArn, name: "CreatedByIamUser"))
    GetMLModelOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "CreatedAt"))
    GetMLModelOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "LastUpdatedAt"))
    GetMLModelOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MLModelName, name: "Name"))
    GetMLModelOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "Status"))
    GetMLModelOutput.add_member(:size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: LongType, name: "SizeInBytes"))
    GetMLModelOutput.add_member(:endpoint_info, ::Smithy::Schema::Shapes::MemberShape.new(target: RealtimeEndpointInfo, name: "EndpointInfo"))
    GetMLModelOutput.add_member(:training_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: TrainingParameters, name: "TrainingParameters"))
    GetMLModelOutput.add_member(:input_data_location_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "InputDataLocationS3"))
    GetMLModelOutput.add_member(:ml_model_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MLModelType, name: "MLModelType"))
    GetMLModelOutput.add_member(:score_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ScoreThreshold, name: "ScoreThreshold"))
    GetMLModelOutput.add_member(:score_threshold_last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "ScoreThresholdLastUpdatedAt"))
    GetMLModelOutput.add_member(:log_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: PresignedS3Url, name: "LogUri"))
    GetMLModelOutput.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    GetMLModelOutput.add_member(:compute_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LongType, name: "ComputeTime"))
    GetMLModelOutput.add_member(:finished_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "FinishedAt"))
    GetMLModelOutput.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "StartedAt"))
    GetMLModelOutput.add_member(:recipe, ::Smithy::Schema::Shapes::MemberShape.new(target: Recipe, name: "Recipe"))
    GetMLModelOutput.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSchema, name: "Schema"))
    GetMLModelOutput.type = Types::GetMLModelOutput
    IdempotentParameterMismatchException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    IdempotentParameterMismatchException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "code", traits: {"smithy.api#default" => 0}))
    IdempotentParameterMismatchException.type = Types::IdempotentParameterMismatchException
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InternalServerException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "code", traits: {"smithy.api#default" => 0}))
    InternalServerException.type = Types::InternalServerException
    InvalidInputException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidInputException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "code", traits: {"smithy.api#default" => 0}))
    InvalidInputException.type = Types::InvalidInputException
    InvalidTagException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidTagException.type = Types::InvalidTagException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    LimitExceededException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "code", traits: {"smithy.api#default" => 0}))
    LimitExceededException.type = Types::LimitExceededException
    MLModel.add_member(:ml_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "MLModelId"))
    MLModel.add_member(:training_data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "TrainingDataSourceId"))
    MLModel.add_member(:created_by_iam_user, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsUserArn, name: "CreatedByIamUser"))
    MLModel.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "CreatedAt"))
    MLModel.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "LastUpdatedAt"))
    MLModel.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MLModelName, name: "Name"))
    MLModel.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "Status"))
    MLModel.add_member(:size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: LongType, name: "SizeInBytes"))
    MLModel.add_member(:endpoint_info, ::Smithy::Schema::Shapes::MemberShape.new(target: RealtimeEndpointInfo, name: "EndpointInfo"))
    MLModel.add_member(:training_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: TrainingParameters, name: "TrainingParameters"))
    MLModel.add_member(:input_data_location_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "InputDataLocationS3"))
    MLModel.add_member(:algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: Algorithm, name: "Algorithm"))
    MLModel.add_member(:ml_model_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MLModelType, name: "MLModelType"))
    MLModel.add_member(:score_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ScoreThreshold, name: "ScoreThreshold"))
    MLModel.add_member(:score_threshold_last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "ScoreThresholdLastUpdatedAt"))
    MLModel.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    MLModel.add_member(:compute_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LongType, name: "ComputeTime"))
    MLModel.add_member(:finished_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "FinishedAt"))
    MLModel.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "StartedAt"))
    MLModel.type = Types::MLModel
    MLModelFilterVariable.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED_AT", traits: {"smithy.api#enumValue" => "CreatedAt"}))
    MLModelFilterVariable.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_UPDATED_AT", traits: {"smithy.api#enumValue" => "LastUpdatedAt"}))
    MLModelFilterVariable.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATUS", traits: {"smithy.api#enumValue" => "Status"}))
    MLModelFilterVariable.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAME", traits: {"smithy.api#enumValue" => "Name"}))
    MLModelFilterVariable.add_member(:iam_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_USER", traits: {"smithy.api#enumValue" => "IAMUser"}))
    MLModelFilterVariable.add_member(:training_datasource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRAINING_DATASOURCE_ID", traits: {"smithy.api#enumValue" => "TrainingDataSourceId"}))
    MLModelFilterVariable.add_member(:real_time_endpoint_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REAL_TIME_ENDPOINT_STATUS", traits: {"smithy.api#enumValue" => "RealtimeEndpointStatus"}))
    MLModelFilterVariable.add_member(:ml_model_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ML_MODEL_TYPE", traits: {"smithy.api#enumValue" => "MLModelType"}))
    MLModelFilterVariable.add_member(:algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALGORITHM", traits: {"smithy.api#enumValue" => "Algorithm"}))
    MLModelFilterVariable.add_member(:training_data_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRAINING_DATA_URI", traits: {"smithy.api#enumValue" => "TrainingDataURI"}))
    MLModelType.add_member(:regression, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGRESSION", traits: {"smithy.api#enumValue" => "REGRESSION"}))
    MLModelType.add_member(:binary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BINARY", traits: {"smithy.api#enumValue" => "BINARY"}))
    MLModelType.add_member(:multiclass, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTICLASS", traits: {"smithy.api#enumValue" => "MULTICLASS"}))
    MLModels.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MLModel, name: "member"))
    PerformanceMetrics.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceMetricsProperties, name: "Properties"))
    PerformanceMetrics.type = Types::PerformanceMetrics
    PerformanceMetricsProperties.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceMetricsPropertyKey, name: "key"))
    PerformanceMetricsProperties.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceMetricsPropertyValue, name: "value"))
    PredictInput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "MLModelId", traits: {"smithy.api#required" => {}}))
    PredictInput.add_member(:record, ::Smithy::Schema::Shapes::MemberShape.new(target: Record, name: "Record", traits: {"smithy.api#required" => {}}))
    PredictInput.add_member(:predict_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: VipURL, name: "PredictEndpoint", traits: {"smithy.api#required" => {}}))
    PredictInput.type = Types::PredictInput
    PredictOutput.add_member(:prediction, ::Smithy::Schema::Shapes::MemberShape.new(target: Prediction, name: "Prediction"))
    PredictOutput.type = Types::PredictOutput
    Prediction.add_member(:predicted_label, ::Smithy::Schema::Shapes::MemberShape.new(target: Label, name: "predictedLabel"))
    Prediction.add_member(:predicted_value, ::Smithy::Schema::Shapes::MemberShape.new(target: FloatLabel, name: "predictedValue"))
    Prediction.add_member(:predicted_scores, ::Smithy::Schema::Shapes::MemberShape.new(target: ScoreValuePerLabelMap, name: "predictedScores"))
    Prediction.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: DetailsMap, name: "details"))
    Prediction.type = Types::Prediction
    PredictorNotMountedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    PredictorNotMountedException.type = Types::PredictorNotMountedException
    RDSDataSpec.add_member(:database_information, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDatabase, name: "DatabaseInformation", traits: {"smithy.api#required" => {}}))
    RDSDataSpec.add_member(:select_sql_query, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSSelectSqlQuery, name: "SelectSqlQuery", traits: {"smithy.api#required" => {}}))
    RDSDataSpec.add_member(:database_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDatabaseCredentials, name: "DatabaseCredentials", traits: {"smithy.api#required" => {}}))
    RDSDataSpec.add_member(:s3_staging_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "S3StagingLocation", traits: {"smithy.api#required" => {}}))
    RDSDataSpec.add_member(:data_rearrangement, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRearrangement, name: "DataRearrangement"))
    RDSDataSpec.add_member(:data_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSchema, name: "DataSchema"))
    RDSDataSpec.add_member(:data_schema_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "DataSchemaUri"))
    RDSDataSpec.add_member(:resource_role, ::Smithy::Schema::Shapes::MemberShape.new(target: EDPResourceRole, name: "ResourceRole", traits: {"smithy.api#required" => {}}))
    RDSDataSpec.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: EDPServiceRole, name: "ServiceRole", traits: {"smithy.api#required" => {}}))
    RDSDataSpec.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EDPSubnetId, name: "SubnetId", traits: {"smithy.api#required" => {}}))
    RDSDataSpec.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: EDPSecurityGroupIds, name: "SecurityGroupIds", traits: {"smithy.api#required" => {}}))
    RDSDataSpec.type = Types::RDSDataSpec
    RDSDatabase.add_member(:instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSInstanceIdentifier, name: "InstanceIdentifier", traits: {"smithy.api#required" => {}}))
    RDSDatabase.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDatabaseName, name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    RDSDatabase.type = Types::RDSDatabase
    RDSDatabaseCredentials.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDatabaseUsername, name: "Username", traits: {"smithy.api#required" => {}}))
    RDSDatabaseCredentials.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDatabasePassword, name: "Password", traits: {"smithy.api#required" => {}}))
    RDSDatabaseCredentials.type = Types::RDSDatabaseCredentials
    RDSMetadata.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDatabase, name: "Database"))
    RDSMetadata.add_member(:database_user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDatabaseUsername, name: "DatabaseUserName"))
    RDSMetadata.add_member(:select_sql_query, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSSelectSqlQuery, name: "SelectSqlQuery"))
    RDSMetadata.add_member(:resource_role, ::Smithy::Schema::Shapes::MemberShape.new(target: EDPResourceRole, name: "ResourceRole"))
    RDSMetadata.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: EDPServiceRole, name: "ServiceRole"))
    RDSMetadata.add_member(:data_pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EDPPipelineId, name: "DataPipelineId"))
    RDSMetadata.type = Types::RDSMetadata
    RealtimeEndpointInfo.add_member(:peak_requests_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerType, name: "PeakRequestsPerSecond", traits: {"smithy.api#default" => 0}))
    RealtimeEndpointInfo.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTime, name: "CreatedAt"))
    RealtimeEndpointInfo.add_member(:endpoint_url, ::Smithy::Schema::Shapes::MemberShape.new(target: VipURL, name: "EndpointUrl"))
    RealtimeEndpointInfo.add_member(:endpoint_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RealtimeEndpointStatus, name: "EndpointStatus"))
    RealtimeEndpointInfo.type = Types::RealtimeEndpointInfo
    RealtimeEndpointStatus.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    RealtimeEndpointStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    RealtimeEndpointStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    RealtimeEndpointStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    Record.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: VariableName, name: "key"))
    Record.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: VariableValue, name: "value"))
    RedshiftDataSpec.add_member(:database_information, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftDatabase, name: "DatabaseInformation", traits: {"smithy.api#required" => {}}))
    RedshiftDataSpec.add_member(:select_sql_query, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftSelectSqlQuery, name: "SelectSqlQuery", traits: {"smithy.api#required" => {}}))
    RedshiftDataSpec.add_member(:database_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftDatabaseCredentials, name: "DatabaseCredentials", traits: {"smithy.api#required" => {}}))
    RedshiftDataSpec.add_member(:s3_staging_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "S3StagingLocation", traits: {"smithy.api#required" => {}}))
    RedshiftDataSpec.add_member(:data_rearrangement, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRearrangement, name: "DataRearrangement"))
    RedshiftDataSpec.add_member(:data_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSchema, name: "DataSchema"))
    RedshiftDataSpec.add_member(:data_schema_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "DataSchemaUri"))
    RedshiftDataSpec.type = Types::RedshiftDataSpec
    RedshiftDatabase.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftDatabaseName, name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    RedshiftDatabase.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftClusterIdentifier, name: "ClusterIdentifier", traits: {"smithy.api#required" => {}}))
    RedshiftDatabase.type = Types::RedshiftDatabase
    RedshiftDatabaseCredentials.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftDatabaseUsername, name: "Username", traits: {"smithy.api#required" => {}}))
    RedshiftDatabaseCredentials.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftDatabasePassword, name: "Password", traits: {"smithy.api#required" => {}}))
    RedshiftDatabaseCredentials.type = Types::RedshiftDatabaseCredentials
    RedshiftMetadata.add_member(:redshift_database, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftDatabase, name: "RedshiftDatabase"))
    RedshiftMetadata.add_member(:database_user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftDatabaseUsername, name: "DatabaseUserName"))
    RedshiftMetadata.add_member(:select_sql_query, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftSelectSqlQuery, name: "SelectSqlQuery"))
    RedshiftMetadata.type = Types::RedshiftMetadata
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceNotFoundException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "code", traits: {"smithy.api#default" => 0}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3DataSpec.add_member(:data_location_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "DataLocationS3", traits: {"smithy.api#required" => {}}))
    S3DataSpec.add_member(:data_rearrangement, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRearrangement, name: "DataRearrangement"))
    S3DataSpec.add_member(:data_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSchema, name: "DataSchema"))
    S3DataSpec.add_member(:data_schema_location_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "DataSchemaLocationS3"))
    S3DataSpec.type = Types::S3DataSpec
    ScoreValuePerLabelMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Label, name: "key"))
    ScoreValuePerLabelMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ScoreValue, name: "value"))
    SortOrder.add_member(:asc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASC", traits: {"smithy.api#enumValue" => "asc"}))
    SortOrder.add_member(:dsc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DSC", traits: {"smithy.api#enumValue" => "dsc"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value"))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    TagLimitExceededException.type = Types::TagLimitExceededException
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TaggableResourceType.add_member(:batch_prediction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BATCH_PREDICTION", traits: {"smithy.api#enumValue" => "BatchPrediction"}))
    TaggableResourceType.add_member(:datasource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATASOURCE", traits: {"smithy.api#enumValue" => "DataSource"}))
    TaggableResourceType.add_member(:evaluation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EVALUATION", traits: {"smithy.api#enumValue" => "Evaluation"}))
    TaggableResourceType.add_member(:ml_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ML_MODEL", traits: {"smithy.api#enumValue" => "MLModel"}))
    TrainingParameters.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "key"))
    TrainingParameters.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "value"))
    UpdateBatchPredictionInput.add_member(:batch_prediction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "BatchPredictionId", traits: {"smithy.api#required" => {}}))
    UpdateBatchPredictionInput.add_member(:batch_prediction_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "BatchPredictionName", traits: {"smithy.api#required" => {}}))
    UpdateBatchPredictionInput.type = Types::UpdateBatchPredictionInput
    UpdateBatchPredictionOutput.add_member(:batch_prediction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "BatchPredictionId"))
    UpdateBatchPredictionOutput.type = Types::UpdateBatchPredictionOutput
    UpdateDataSourceInput.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "DataSourceId", traits: {"smithy.api#required" => {}}))
    UpdateDataSourceInput.add_member(:data_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "DataSourceName", traits: {"smithy.api#required" => {}}))
    UpdateDataSourceInput.type = Types::UpdateDataSourceInput
    UpdateDataSourceOutput.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "DataSourceId"))
    UpdateDataSourceOutput.type = Types::UpdateDataSourceOutput
    UpdateEvaluationInput.add_member(:evaluation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "EvaluationId", traits: {"smithy.api#required" => {}}))
    UpdateEvaluationInput.add_member(:evaluation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "EvaluationName", traits: {"smithy.api#required" => {}}))
    UpdateEvaluationInput.type = Types::UpdateEvaluationInput
    UpdateEvaluationOutput.add_member(:evaluation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "EvaluationId"))
    UpdateEvaluationOutput.type = Types::UpdateEvaluationOutput
    UpdateMLModelInput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "MLModelId", traits: {"smithy.api#required" => {}}))
    UpdateMLModelInput.add_member(:ml_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "MLModelName"))
    UpdateMLModelInput.add_member(:score_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ScoreThreshold, name: "ScoreThreshold"))
    UpdateMLModelInput.type = Types::UpdateMLModelInput
    UpdateMLModelOutput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "MLModelId"))
    UpdateMLModelOutput.type = Types::UpdateMLModelOutput

    AmazonML20141212 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.machinelearning#AmazonML_20141212"
      service.name = "AmazonML20141212"
      service.version = "2014-12-12"
      service.traits = {"aws.api#service" => {"sdkId" => "Machine Learning", "arnNamespace" => "machinelearning", "cloudFormationName" => "MachineLearning", "cloudTrailEventSource" => "machinelearning.amazonaws.com", "docId" => "machinelearning-2014-12-12", "endpointPrefix" => "machinelearning"}, "aws.auth#sigv4" => {"name" => "machinelearning"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Machine Learning", "smithy.api#xmlNamespace" => {"uri" => "http://machinelearning.amazonaws.com/doc/2014-12-12/"}}
      service.add_operation(:add_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#AddTags"
        operation.name = "AddTags"
        operation.input = AddTagsInput
        operation.output = AddTagsOutput
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << InvalidTagException
        operation.errors << ResourceNotFoundException
        operation.errors << TagLimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:create_batch_prediction, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#CreateBatchPrediction"
        operation.name = "CreateBatchPrediction"
        operation.input = CreateBatchPredictionInput
        operation.output = CreateBatchPredictionOutput
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.traits = {}
      end)
      service.add_operation(:create_data_source_from_rds, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#CreateDataSourceFromRDS"
        operation.name = "CreateDataSourceFromRDS"
        operation.input = CreateDataSourceFromRDSInput
        operation.output = CreateDataSourceFromRDSOutput
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.traits = {}
      end)
      service.add_operation(:create_data_source_from_redshift, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#CreateDataSourceFromRedshift"
        operation.name = "CreateDataSourceFromRedshift"
        operation.input = CreateDataSourceFromRedshiftInput
        operation.output = CreateDataSourceFromRedshiftOutput
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.traits = {}
      end)
      service.add_operation(:create_data_source_from_s3, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#CreateDataSourceFromS3"
        operation.name = "CreateDataSourceFromS3"
        operation.input = CreateDataSourceFromS3Input
        operation.output = CreateDataSourceFromS3Output
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.traits = {}
      end)
      service.add_operation(:create_evaluation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#CreateEvaluation"
        operation.name = "CreateEvaluation"
        operation.input = CreateEvaluationInput
        operation.output = CreateEvaluationOutput
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.traits = {}
      end)
      service.add_operation(:create_ml_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#CreateMLModel"
        operation.name = "CreateMLModel"
        operation.input = CreateMLModelInput
        operation.output = CreateMLModelOutput
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.traits = {}
      end)
      service.add_operation(:create_realtime_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#CreateRealtimeEndpoint"
        operation.name = "CreateRealtimeEndpoint"
        operation.input = CreateRealtimeEndpointInput
        operation.output = CreateRealtimeEndpointOutput
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_batch_prediction, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#DeleteBatchPrediction"
        operation.name = "DeleteBatchPrediction"
        operation.input = DeleteBatchPredictionInput
        operation.output = DeleteBatchPredictionOutput
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#DeleteDataSource"
        operation.name = "DeleteDataSource"
        operation.input = DeleteDataSourceInput
        operation.output = DeleteDataSourceOutput
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_evaluation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#DeleteEvaluation"
        operation.name = "DeleteEvaluation"
        operation.input = DeleteEvaluationInput
        operation.output = DeleteEvaluationOutput
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_ml_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#DeleteMLModel"
        operation.name = "DeleteMLModel"
        operation.input = DeleteMLModelInput
        operation.output = DeleteMLModelOutput
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_realtime_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#DeleteRealtimeEndpoint"
        operation.name = "DeleteRealtimeEndpoint"
        operation.input = DeleteRealtimeEndpointInput
        operation.output = DeleteRealtimeEndpointOutput
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#DeleteTags"
        operation.name = "DeleteTags"
        operation.input = DeleteTagsInput
        operation.output = DeleteTagsOutput
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << InvalidTagException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_batch_predictions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#DescribeBatchPredictions"
        operation.name = "DescribeBatchPredictions"
        operation.input = DescribeBatchPredictionsInput
        operation.output = DescribeBatchPredictionsOutput
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeBatchPredictions.new
      end)
      service.add_operation(:describe_data_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#DescribeDataSources"
        operation.name = "DescribeDataSources"
        operation.input = DescribeDataSourcesInput
        operation.output = DescribeDataSourcesOutput
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDataSources.new
      end)
      service.add_operation(:describe_evaluations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#DescribeEvaluations"
        operation.name = "DescribeEvaluations"
        operation.input = DescribeEvaluationsInput
        operation.output = DescribeEvaluationsOutput
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEvaluations.new
      end)
      service.add_operation(:describe_ml_models, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#DescribeMLModels"
        operation.name = "DescribeMLModels"
        operation.input = DescribeMLModelsInput
        operation.output = DescribeMLModelsOutput
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMLModels.new
      end)
      service.add_operation(:describe_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#DescribeTags"
        operation.name = "DescribeTags"
        operation.input = DescribeTagsInput
        operation.output = DescribeTagsOutput
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_batch_prediction, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#GetBatchPrediction"
        operation.name = "GetBatchPrediction"
        operation.input = GetBatchPredictionInput
        operation.output = GetBatchPredictionOutput
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#GetDataSource"
        operation.name = "GetDataSource"
        operation.input = GetDataSourceInput
        operation.output = GetDataSourceOutput
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_evaluation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#GetEvaluation"
        operation.name = "GetEvaluation"
        operation.input = GetEvaluationInput
        operation.output = GetEvaluationOutput
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_ml_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#GetMLModel"
        operation.name = "GetMLModel"
        operation.input = GetMLModelInput
        operation.output = GetMLModelOutput
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:predict, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#Predict"
        operation.name = "Predict"
        operation.input = PredictInput
        operation.output = PredictOutput
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << PredictorNotMountedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_batch_prediction, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#UpdateBatchPrediction"
        operation.name = "UpdateBatchPrediction"
        operation.input = UpdateBatchPredictionInput
        operation.output = UpdateBatchPredictionOutput
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#UpdateDataSource"
        operation.name = "UpdateDataSource"
        operation.input = UpdateDataSourceInput
        operation.output = UpdateDataSourceOutput
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_evaluation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#UpdateEvaluation"
        operation.name = "UpdateEvaluation"
        operation.input = UpdateEvaluationInput
        operation.output = UpdateEvaluationOutput
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_ml_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#UpdateMLModel"
        operation.name = "UpdateMLModel"
        operation.input = UpdateMLModelInput
        operation.output = UpdateMLModelOutput
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
