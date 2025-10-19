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

    AddTagsInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    AddTagsInput.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    AddTagsInput.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableResourceType, location_name: "ResourceType", traits: {"smithy.api#required" => {}}))
    AddTagsInput.type = Types::AddTagsInput
    AddTagsOutput.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "ResourceId"))
    AddTagsOutput.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableResourceType, location_name: "ResourceType"))
    AddTagsOutput.type = Types::AddTagsOutput
    Algorithm.add_member(:sgd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SGD", traits: {"smithy.api#enumValue" => "sgd"}))
    BatchPrediction.add_member(:batch_prediction_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "BatchPredictionId"))
    BatchPrediction.add_member(:ml_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId"))
    BatchPrediction.add_member(:batch_prediction_data_source_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "BatchPredictionDataSourceId"))
    BatchPrediction.add_member(:input_data_location_s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: "InputDataLocationS3"))
    BatchPrediction.add_member(:created_by_iam_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsUserArn, location_name: "CreatedByIamUser"))
    BatchPrediction.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "CreatedAt"))
    BatchPrediction.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "LastUpdatedAt"))
    BatchPrediction.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: "Name"))
    BatchPrediction.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStatus, location_name: "Status"))
    BatchPrediction.add_member(:output_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: "OutputUri"))
    BatchPrediction.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    BatchPrediction.add_member(:compute_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongType, location_name: "ComputeTime"))
    BatchPrediction.add_member(:finished_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "FinishedAt"))
    BatchPrediction.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "StartedAt"))
    BatchPrediction.add_member(:total_record_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongType, location_name: "TotalRecordCount"))
    BatchPrediction.add_member(:invalid_record_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongType, location_name: "InvalidRecordCount"))
    BatchPrediction.type = Types::BatchPrediction
    BatchPredictionFilterVariable.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATED_AT", traits: {"smithy.api#enumValue" => "CreatedAt"}))
    BatchPredictionFilterVariable.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LAST_UPDATED_AT", traits: {"smithy.api#enumValue" => "LastUpdatedAt"}))
    BatchPredictionFilterVariable.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STATUS", traits: {"smithy.api#enumValue" => "Status"}))
    BatchPredictionFilterVariable.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NAME", traits: {"smithy.api#enumValue" => "Name"}))
    BatchPredictionFilterVariable.add_member(:iam_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IAM_USER", traits: {"smithy.api#enumValue" => "IAMUser"}))
    BatchPredictionFilterVariable.add_member(:ml_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ML_MODEL_ID", traits: {"smithy.api#enumValue" => "MLModelId"}))
    BatchPredictionFilterVariable.add_member(:datasource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DATASOURCE_ID", traits: {"smithy.api#enumValue" => "DataSourceId"}))
    BatchPredictionFilterVariable.add_member(:data_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DATA_URI", traits: {"smithy.api#enumValue" => "DataURI"}))
    BatchPredictions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPrediction)
    CreateBatchPredictionInput.add_member(:batch_prediction_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "BatchPredictionId", traits: {"smithy.api#required" => {}}))
    CreateBatchPredictionInput.add_member(:batch_prediction_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: "BatchPredictionName"))
    CreateBatchPredictionInput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId", traits: {"smithy.api#required" => {}}))
    CreateBatchPredictionInput.add_member(:batch_prediction_data_source_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "BatchPredictionDataSourceId", traits: {"smithy.api#required" => {}}))
    CreateBatchPredictionInput.add_member(:output_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: "OutputUri", traits: {"smithy.api#required" => {}}))
    CreateBatchPredictionInput.type = Types::CreateBatchPredictionInput
    CreateBatchPredictionOutput.add_member(:batch_prediction_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "BatchPredictionId"))
    CreateBatchPredictionOutput.type = Types::CreateBatchPredictionOutput
    CreateDataSourceFromRDSInput.add_member(:data_source_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "DataSourceId", traits: {"smithy.api#required" => {}}))
    CreateDataSourceFromRDSInput.add_member(:data_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: "DataSourceName"))
    CreateDataSourceFromRDSInput.add_member(:rds_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RDSDataSpec, location_name: "RDSData", traits: {"smithy.api#required" => {}}))
    CreateDataSourceFromRDSInput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN", traits: {"smithy.api#required" => {}}))
    CreateDataSourceFromRDSInput.add_member(:compute_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeStatistics, location_name: "ComputeStatistics", traits: {"smithy.api#default" => false}))
    CreateDataSourceFromRDSInput.type = Types::CreateDataSourceFromRDSInput
    CreateDataSourceFromRDSOutput.add_member(:data_source_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "DataSourceId"))
    CreateDataSourceFromRDSOutput.type = Types::CreateDataSourceFromRDSOutput
    CreateDataSourceFromRedshiftInput.add_member(:data_source_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "DataSourceId", traits: {"smithy.api#required" => {}}))
    CreateDataSourceFromRedshiftInput.add_member(:data_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: "DataSourceName"))
    CreateDataSourceFromRedshiftInput.add_member(:data_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftDataSpec, location_name: "DataSpec", traits: {"smithy.api#required" => {}}))
    CreateDataSourceFromRedshiftInput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN", traits: {"smithy.api#required" => {}}))
    CreateDataSourceFromRedshiftInput.add_member(:compute_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeStatistics, location_name: "ComputeStatistics", traits: {"smithy.api#default" => false}))
    CreateDataSourceFromRedshiftInput.type = Types::CreateDataSourceFromRedshiftInput
    CreateDataSourceFromRedshiftOutput.add_member(:data_source_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "DataSourceId"))
    CreateDataSourceFromRedshiftOutput.type = Types::CreateDataSourceFromRedshiftOutput
    CreateDataSourceFromS3Input.add_member(:data_source_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "DataSourceId", traits: {"smithy.api#required" => {}}))
    CreateDataSourceFromS3Input.add_member(:data_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: "DataSourceName"))
    CreateDataSourceFromS3Input.add_member(:data_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3DataSpec, location_name: "DataSpec", traits: {"smithy.api#required" => {}}))
    CreateDataSourceFromS3Input.add_member(:compute_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeStatistics, location_name: "ComputeStatistics", traits: {"smithy.api#default" => false}))
    CreateDataSourceFromS3Input.type = Types::CreateDataSourceFromS3Input
    CreateDataSourceFromS3Output.add_member(:data_source_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "DataSourceId"))
    CreateDataSourceFromS3Output.type = Types::CreateDataSourceFromS3Output
    CreateEvaluationInput.add_member(:evaluation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "EvaluationId", traits: {"smithy.api#required" => {}}))
    CreateEvaluationInput.add_member(:evaluation_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: "EvaluationName"))
    CreateEvaluationInput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId", traits: {"smithy.api#required" => {}}))
    CreateEvaluationInput.add_member(:evaluation_data_source_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "EvaluationDataSourceId", traits: {"smithy.api#required" => {}}))
    CreateEvaluationInput.type = Types::CreateEvaluationInput
    CreateEvaluationOutput.add_member(:evaluation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "EvaluationId"))
    CreateEvaluationOutput.type = Types::CreateEvaluationOutput
    CreateMLModelInput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId", traits: {"smithy.api#required" => {}}))
    CreateMLModelInput.add_member(:ml_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: "MLModelName"))
    CreateMLModelInput.add_member(:ml_model_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MLModelType, location_name: "MLModelType", traits: {"smithy.api#required" => {}}))
    CreateMLModelInput.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingParameters, location_name: "Parameters"))
    CreateMLModelInput.add_member(:training_data_source_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "TrainingDataSourceId", traits: {"smithy.api#required" => {}}))
    CreateMLModelInput.add_member(:recipe, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Recipe, location_name: "Recipe"))
    CreateMLModelInput.add_member(:recipe_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: "RecipeUri"))
    CreateMLModelInput.type = Types::CreateMLModelInput
    CreateMLModelOutput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId"))
    CreateMLModelOutput.type = Types::CreateMLModelOutput
    CreateRealtimeEndpointInput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId", traits: {"smithy.api#required" => {}}))
    CreateRealtimeEndpointInput.type = Types::CreateRealtimeEndpointInput
    CreateRealtimeEndpointOutput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId"))
    CreateRealtimeEndpointOutput.add_member(:realtime_endpoint_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RealtimeEndpointInfo, location_name: "RealtimeEndpointInfo"))
    CreateRealtimeEndpointOutput.type = Types::CreateRealtimeEndpointOutput
    DataSource.add_member(:data_source_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "DataSourceId"))
    DataSource.add_member(:data_location_s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: "DataLocationS3"))
    DataSource.add_member(:data_rearrangement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataRearrangement, location_name: "DataRearrangement"))
    DataSource.add_member(:created_by_iam_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsUserArn, location_name: "CreatedByIamUser"))
    DataSource.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "CreatedAt"))
    DataSource.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "LastUpdatedAt"))
    DataSource.add_member(:data_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongType, location_name: "DataSizeInBytes"))
    DataSource.add_member(:number_of_files, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongType, location_name: "NumberOfFiles"))
    DataSource.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: "Name"))
    DataSource.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStatus, location_name: "Status"))
    DataSource.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    DataSource.add_member(:redshift_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftMetadata, location_name: "RedshiftMetadata"))
    DataSource.add_member(:rds_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RDSMetadata, location_name: "RDSMetadata"))
    DataSource.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    DataSource.add_member(:compute_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeStatistics, location_name: "ComputeStatistics", traits: {"smithy.api#default" => false}))
    DataSource.add_member(:compute_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongType, location_name: "ComputeTime"))
    DataSource.add_member(:finished_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "FinishedAt"))
    DataSource.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "StartedAt"))
    DataSource.type = Types::DataSource
    DataSourceFilterVariable.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATED_AT", traits: {"smithy.api#enumValue" => "CreatedAt"}))
    DataSourceFilterVariable.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LAST_UPDATED_AT", traits: {"smithy.api#enumValue" => "LastUpdatedAt"}))
    DataSourceFilterVariable.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STATUS", traits: {"smithy.api#enumValue" => "Status"}))
    DataSourceFilterVariable.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NAME", traits: {"smithy.api#enumValue" => "Name"}))
    DataSourceFilterVariable.add_member(:data_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DATA_URI", traits: {"smithy.api#enumValue" => "DataLocationS3"}))
    DataSourceFilterVariable.add_member(:iam_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IAM_USER", traits: {"smithy.api#enumValue" => "IAMUser"}))
    DataSources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSource)
    DeleteBatchPredictionInput.add_member(:batch_prediction_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "BatchPredictionId", traits: {"smithy.api#required" => {}}))
    DeleteBatchPredictionInput.type = Types::DeleteBatchPredictionInput
    DeleteBatchPredictionOutput.add_member(:batch_prediction_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "BatchPredictionId"))
    DeleteBatchPredictionOutput.type = Types::DeleteBatchPredictionOutput
    DeleteDataSourceInput.add_member(:data_source_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "DataSourceId", traits: {"smithy.api#required" => {}}))
    DeleteDataSourceInput.type = Types::DeleteDataSourceInput
    DeleteDataSourceOutput.add_member(:data_source_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "DataSourceId"))
    DeleteDataSourceOutput.type = Types::DeleteDataSourceOutput
    DeleteEvaluationInput.add_member(:evaluation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "EvaluationId", traits: {"smithy.api#required" => {}}))
    DeleteEvaluationInput.type = Types::DeleteEvaluationInput
    DeleteEvaluationOutput.add_member(:evaluation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "EvaluationId"))
    DeleteEvaluationOutput.type = Types::DeleteEvaluationOutput
    DeleteMLModelInput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId", traits: {"smithy.api#required" => {}}))
    DeleteMLModelInput.type = Types::DeleteMLModelInput
    DeleteMLModelOutput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId"))
    DeleteMLModelOutput.type = Types::DeleteMLModelOutput
    DeleteRealtimeEndpointInput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId", traits: {"smithy.api#required" => {}}))
    DeleteRealtimeEndpointInput.type = Types::DeleteRealtimeEndpointInput
    DeleteRealtimeEndpointOutput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId"))
    DeleteRealtimeEndpointOutput.add_member(:realtime_endpoint_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RealtimeEndpointInfo, location_name: "RealtimeEndpointInfo"))
    DeleteRealtimeEndpointOutput.type = Types::DeleteRealtimeEndpointOutput
    DeleteTagsInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys", traits: {"smithy.api#required" => {}}))
    DeleteTagsInput.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    DeleteTagsInput.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableResourceType, location_name: "ResourceType", traits: {"smithy.api#required" => {}}))
    DeleteTagsInput.type = Types::DeleteTagsInput
    DeleteTagsOutput.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "ResourceId"))
    DeleteTagsOutput.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableResourceType, location_name: "ResourceType"))
    DeleteTagsOutput.type = Types::DeleteTagsOutput
    DescribeBatchPredictionsInput.add_member(:filter_variable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPredictionFilterVariable, location_name: "FilterVariable"))
    DescribeBatchPredictionsInput.add_member(:eq, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "EQ"))
    DescribeBatchPredictionsInput.add_member(:gt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "GT"))
    DescribeBatchPredictionsInput.add_member(:lt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "LT"))
    DescribeBatchPredictionsInput.add_member(:ge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "GE"))
    DescribeBatchPredictionsInput.add_member(:le, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "LE"))
    DescribeBatchPredictionsInput.add_member(:ne, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "NE"))
    DescribeBatchPredictionsInput.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "Prefix"))
    DescribeBatchPredictionsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    DescribeBatchPredictionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: "NextToken"))
    DescribeBatchPredictionsInput.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageLimit, location_name: "Limit"))
    DescribeBatchPredictionsInput.type = Types::DescribeBatchPredictionsInput
    DescribeBatchPredictionsOutput.add_member(:results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPredictions, location_name: "Results"))
    DescribeBatchPredictionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: "NextToken"))
    DescribeBatchPredictionsOutput.type = Types::DescribeBatchPredictionsOutput
    DescribeDataSourcesInput.add_member(:filter_variable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceFilterVariable, location_name: "FilterVariable"))
    DescribeDataSourcesInput.add_member(:eq, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "EQ"))
    DescribeDataSourcesInput.add_member(:gt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "GT"))
    DescribeDataSourcesInput.add_member(:lt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "LT"))
    DescribeDataSourcesInput.add_member(:ge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "GE"))
    DescribeDataSourcesInput.add_member(:le, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "LE"))
    DescribeDataSourcesInput.add_member(:ne, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "NE"))
    DescribeDataSourcesInput.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "Prefix"))
    DescribeDataSourcesInput.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    DescribeDataSourcesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: "NextToken"))
    DescribeDataSourcesInput.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageLimit, location_name: "Limit"))
    DescribeDataSourcesInput.type = Types::DescribeDataSourcesInput
    DescribeDataSourcesOutput.add_member(:results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSources, location_name: "Results"))
    DescribeDataSourcesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: "NextToken"))
    DescribeDataSourcesOutput.type = Types::DescribeDataSourcesOutput
    DescribeEvaluationsInput.add_member(:filter_variable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationFilterVariable, location_name: "FilterVariable"))
    DescribeEvaluationsInput.add_member(:eq, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "EQ"))
    DescribeEvaluationsInput.add_member(:gt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "GT"))
    DescribeEvaluationsInput.add_member(:lt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "LT"))
    DescribeEvaluationsInput.add_member(:ge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "GE"))
    DescribeEvaluationsInput.add_member(:le, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "LE"))
    DescribeEvaluationsInput.add_member(:ne, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "NE"))
    DescribeEvaluationsInput.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "Prefix"))
    DescribeEvaluationsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    DescribeEvaluationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: "NextToken"))
    DescribeEvaluationsInput.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageLimit, location_name: "Limit"))
    DescribeEvaluationsInput.type = Types::DescribeEvaluationsInput
    DescribeEvaluationsOutput.add_member(:results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Evaluations, location_name: "Results"))
    DescribeEvaluationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: "NextToken"))
    DescribeEvaluationsOutput.type = Types::DescribeEvaluationsOutput
    DescribeMLModelsInput.add_member(:filter_variable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MLModelFilterVariable, location_name: "FilterVariable"))
    DescribeMLModelsInput.add_member(:eq, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "EQ"))
    DescribeMLModelsInput.add_member(:gt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "GT"))
    DescribeMLModelsInput.add_member(:lt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "LT"))
    DescribeMLModelsInput.add_member(:ge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "GE"))
    DescribeMLModelsInput.add_member(:le, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "LE"))
    DescribeMLModelsInput.add_member(:ne, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "NE"))
    DescribeMLModelsInput.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparatorValue, location_name: "Prefix"))
    DescribeMLModelsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    DescribeMLModelsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: "NextToken"))
    DescribeMLModelsInput.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageLimit, location_name: "Limit"))
    DescribeMLModelsInput.type = Types::DescribeMLModelsInput
    DescribeMLModelsOutput.add_member(:results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MLModels, location_name: "Results"))
    DescribeMLModelsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: "NextToken"))
    DescribeMLModelsOutput.type = Types::DescribeMLModelsOutput
    DescribeTagsInput.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    DescribeTagsInput.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableResourceType, location_name: "ResourceType", traits: {"smithy.api#required" => {}}))
    DescribeTagsInput.type = Types::DescribeTagsInput
    DescribeTagsOutput.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "ResourceId"))
    DescribeTagsOutput.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableResourceType, location_name: "ResourceType"))
    DescribeTagsOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    DescribeTagsOutput.type = Types::DescribeTagsOutput
    DetailsAttributes.add_member(:predictive_model_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PREDICTIVE_MODEL_TYPE", traits: {"smithy.api#enumValue" => "PredictiveModelType"}))
    DetailsAttributes.add_member(:algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALGORITHM", traits: {"smithy.api#enumValue" => "Algorithm"}))
    DetailsMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetailsAttributes)
    DetailsMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetailsValue)
    EDPSecurityGroupIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EDPSecurityGroupId)
    EntityStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    EntityStatus.add_member(:inprogress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INPROGRESS", traits: {"smithy.api#enumValue" => "INPROGRESS"}))
    EntityStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    EntityStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    EntityStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    Evaluation.add_member(:evaluation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "EvaluationId"))
    Evaluation.add_member(:ml_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId"))
    Evaluation.add_member(:evaluation_data_source_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "EvaluationDataSourceId"))
    Evaluation.add_member(:input_data_location_s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: "InputDataLocationS3"))
    Evaluation.add_member(:created_by_iam_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsUserArn, location_name: "CreatedByIamUser"))
    Evaluation.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "CreatedAt"))
    Evaluation.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "LastUpdatedAt"))
    Evaluation.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: "Name"))
    Evaluation.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStatus, location_name: "Status"))
    Evaluation.add_member(:performance_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceMetrics, location_name: "PerformanceMetrics"))
    Evaluation.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    Evaluation.add_member(:compute_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongType, location_name: "ComputeTime"))
    Evaluation.add_member(:finished_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "FinishedAt"))
    Evaluation.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "StartedAt"))
    Evaluation.type = Types::Evaluation
    EvaluationFilterVariable.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATED_AT", traits: {"smithy.api#enumValue" => "CreatedAt"}))
    EvaluationFilterVariable.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LAST_UPDATED_AT", traits: {"smithy.api#enumValue" => "LastUpdatedAt"}))
    EvaluationFilterVariable.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STATUS", traits: {"smithy.api#enumValue" => "Status"}))
    EvaluationFilterVariable.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NAME", traits: {"smithy.api#enumValue" => "Name"}))
    EvaluationFilterVariable.add_member(:iam_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IAM_USER", traits: {"smithy.api#enumValue" => "IAMUser"}))
    EvaluationFilterVariable.add_member(:ml_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ML_MODEL_ID", traits: {"smithy.api#enumValue" => "MLModelId"}))
    EvaluationFilterVariable.add_member(:datasource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DATASOURCE_ID", traits: {"smithy.api#enumValue" => "DataSourceId"}))
    EvaluationFilterVariable.add_member(:data_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DATA_URI", traits: {"smithy.api#enumValue" => "DataURI"}))
    Evaluations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Evaluation)
    GetBatchPredictionInput.add_member(:batch_prediction_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "BatchPredictionId", traits: {"smithy.api#required" => {}}))
    GetBatchPredictionInput.type = Types::GetBatchPredictionInput
    GetBatchPredictionOutput.add_member(:batch_prediction_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "BatchPredictionId"))
    GetBatchPredictionOutput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId"))
    GetBatchPredictionOutput.add_member(:batch_prediction_data_source_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "BatchPredictionDataSourceId"))
    GetBatchPredictionOutput.add_member(:input_data_location_s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: "InputDataLocationS3"))
    GetBatchPredictionOutput.add_member(:created_by_iam_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsUserArn, location_name: "CreatedByIamUser"))
    GetBatchPredictionOutput.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "CreatedAt"))
    GetBatchPredictionOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "LastUpdatedAt"))
    GetBatchPredictionOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: "Name"))
    GetBatchPredictionOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStatus, location_name: "Status"))
    GetBatchPredictionOutput.add_member(:output_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: "OutputUri"))
    GetBatchPredictionOutput.add_member(:log_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PresignedS3Url, location_name: "LogUri"))
    GetBatchPredictionOutput.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    GetBatchPredictionOutput.add_member(:compute_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongType, location_name: "ComputeTime"))
    GetBatchPredictionOutput.add_member(:finished_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "FinishedAt"))
    GetBatchPredictionOutput.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "StartedAt"))
    GetBatchPredictionOutput.add_member(:total_record_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongType, location_name: "TotalRecordCount"))
    GetBatchPredictionOutput.add_member(:invalid_record_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongType, location_name: "InvalidRecordCount"))
    GetBatchPredictionOutput.type = Types::GetBatchPredictionOutput
    GetDataSourceInput.add_member(:data_source_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "DataSourceId", traits: {"smithy.api#required" => {}}))
    GetDataSourceInput.add_member(:verbose, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Verbose, location_name: "Verbose", traits: {"smithy.api#default" => false}))
    GetDataSourceInput.type = Types::GetDataSourceInput
    GetDataSourceOutput.add_member(:data_source_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "DataSourceId"))
    GetDataSourceOutput.add_member(:data_location_s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: "DataLocationS3"))
    GetDataSourceOutput.add_member(:data_rearrangement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataRearrangement, location_name: "DataRearrangement"))
    GetDataSourceOutput.add_member(:created_by_iam_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsUserArn, location_name: "CreatedByIamUser"))
    GetDataSourceOutput.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "CreatedAt"))
    GetDataSourceOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "LastUpdatedAt"))
    GetDataSourceOutput.add_member(:data_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongType, location_name: "DataSizeInBytes"))
    GetDataSourceOutput.add_member(:number_of_files, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongType, location_name: "NumberOfFiles"))
    GetDataSourceOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: "Name"))
    GetDataSourceOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStatus, location_name: "Status"))
    GetDataSourceOutput.add_member(:log_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PresignedS3Url, location_name: "LogUri"))
    GetDataSourceOutput.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    GetDataSourceOutput.add_member(:redshift_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftMetadata, location_name: "RedshiftMetadata"))
    GetDataSourceOutput.add_member(:rds_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RDSMetadata, location_name: "RDSMetadata"))
    GetDataSourceOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    GetDataSourceOutput.add_member(:compute_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeStatistics, location_name: "ComputeStatistics", traits: {"smithy.api#default" => false}))
    GetDataSourceOutput.add_member(:compute_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongType, location_name: "ComputeTime"))
    GetDataSourceOutput.add_member(:finished_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "FinishedAt"))
    GetDataSourceOutput.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "StartedAt"))
    GetDataSourceOutput.add_member(:data_source_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSchema, location_name: "DataSourceSchema"))
    GetDataSourceOutput.type = Types::GetDataSourceOutput
    GetEvaluationInput.add_member(:evaluation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "EvaluationId", traits: {"smithy.api#required" => {}}))
    GetEvaluationInput.type = Types::GetEvaluationInput
    GetEvaluationOutput.add_member(:evaluation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "EvaluationId"))
    GetEvaluationOutput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId"))
    GetEvaluationOutput.add_member(:evaluation_data_source_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "EvaluationDataSourceId"))
    GetEvaluationOutput.add_member(:input_data_location_s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: "InputDataLocationS3"))
    GetEvaluationOutput.add_member(:created_by_iam_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsUserArn, location_name: "CreatedByIamUser"))
    GetEvaluationOutput.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "CreatedAt"))
    GetEvaluationOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "LastUpdatedAt"))
    GetEvaluationOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: "Name"))
    GetEvaluationOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStatus, location_name: "Status"))
    GetEvaluationOutput.add_member(:performance_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceMetrics, location_name: "PerformanceMetrics"))
    GetEvaluationOutput.add_member(:log_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PresignedS3Url, location_name: "LogUri"))
    GetEvaluationOutput.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    GetEvaluationOutput.add_member(:compute_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongType, location_name: "ComputeTime"))
    GetEvaluationOutput.add_member(:finished_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "FinishedAt"))
    GetEvaluationOutput.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "StartedAt"))
    GetEvaluationOutput.type = Types::GetEvaluationOutput
    GetMLModelInput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId", traits: {"smithy.api#required" => {}}))
    GetMLModelInput.add_member(:verbose, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Verbose, location_name: "Verbose", traits: {"smithy.api#default" => false}))
    GetMLModelInput.type = Types::GetMLModelInput
    GetMLModelOutput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId"))
    GetMLModelOutput.add_member(:training_data_source_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "TrainingDataSourceId"))
    GetMLModelOutput.add_member(:created_by_iam_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsUserArn, location_name: "CreatedByIamUser"))
    GetMLModelOutput.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "CreatedAt"))
    GetMLModelOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "LastUpdatedAt"))
    GetMLModelOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MLModelName, location_name: "Name"))
    GetMLModelOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStatus, location_name: "Status"))
    GetMLModelOutput.add_member(:size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongType, location_name: "SizeInBytes"))
    GetMLModelOutput.add_member(:endpoint_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RealtimeEndpointInfo, location_name: "EndpointInfo"))
    GetMLModelOutput.add_member(:training_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingParameters, location_name: "TrainingParameters"))
    GetMLModelOutput.add_member(:input_data_location_s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: "InputDataLocationS3"))
    GetMLModelOutput.add_member(:ml_model_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MLModelType, location_name: "MLModelType"))
    GetMLModelOutput.add_member(:score_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScoreThreshold, location_name: "ScoreThreshold"))
    GetMLModelOutput.add_member(:score_threshold_last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "ScoreThresholdLastUpdatedAt"))
    GetMLModelOutput.add_member(:log_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PresignedS3Url, location_name: "LogUri"))
    GetMLModelOutput.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    GetMLModelOutput.add_member(:compute_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongType, location_name: "ComputeTime"))
    GetMLModelOutput.add_member(:finished_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "FinishedAt"))
    GetMLModelOutput.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "StartedAt"))
    GetMLModelOutput.add_member(:recipe, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Recipe, location_name: "Recipe"))
    GetMLModelOutput.add_member(:schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSchema, location_name: "Schema"))
    GetMLModelOutput.type = Types::GetMLModelOutput
    IdempotentParameterMismatchException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    IdempotentParameterMismatchException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: "code", traits: {"smithy.api#default" => 0}))
    IdempotentParameterMismatchException.type = Types::IdempotentParameterMismatchException
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InternalServerException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: "code", traits: {"smithy.api#default" => 0}))
    InternalServerException.type = Types::InternalServerException
    InvalidInputException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidInputException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: "code", traits: {"smithy.api#default" => 0}))
    InvalidInputException.type = Types::InvalidInputException
    InvalidTagException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidTagException.type = Types::InvalidTagException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    LimitExceededException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: "code", traits: {"smithy.api#default" => 0}))
    LimitExceededException.type = Types::LimitExceededException
    MLModel.add_member(:ml_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId"))
    MLModel.add_member(:training_data_source_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "TrainingDataSourceId"))
    MLModel.add_member(:created_by_iam_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsUserArn, location_name: "CreatedByIamUser"))
    MLModel.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "CreatedAt"))
    MLModel.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "LastUpdatedAt"))
    MLModel.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MLModelName, location_name: "Name"))
    MLModel.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStatus, location_name: "Status"))
    MLModel.add_member(:size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongType, location_name: "SizeInBytes"))
    MLModel.add_member(:endpoint_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RealtimeEndpointInfo, location_name: "EndpointInfo"))
    MLModel.add_member(:training_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingParameters, location_name: "TrainingParameters"))
    MLModel.add_member(:input_data_location_s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: "InputDataLocationS3"))
    MLModel.add_member(:algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Algorithm, location_name: "Algorithm"))
    MLModel.add_member(:ml_model_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MLModelType, location_name: "MLModelType"))
    MLModel.add_member(:score_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScoreThreshold, location_name: "ScoreThreshold"))
    MLModel.add_member(:score_threshold_last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "ScoreThresholdLastUpdatedAt"))
    MLModel.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    MLModel.add_member(:compute_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongType, location_name: "ComputeTime"))
    MLModel.add_member(:finished_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "FinishedAt"))
    MLModel.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "StartedAt"))
    MLModel.type = Types::MLModel
    MLModelFilterVariable.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATED_AT", traits: {"smithy.api#enumValue" => "CreatedAt"}))
    MLModelFilterVariable.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LAST_UPDATED_AT", traits: {"smithy.api#enumValue" => "LastUpdatedAt"}))
    MLModelFilterVariable.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STATUS", traits: {"smithy.api#enumValue" => "Status"}))
    MLModelFilterVariable.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NAME", traits: {"smithy.api#enumValue" => "Name"}))
    MLModelFilterVariable.add_member(:iam_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IAM_USER", traits: {"smithy.api#enumValue" => "IAMUser"}))
    MLModelFilterVariable.add_member(:training_datasource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRAINING_DATASOURCE_ID", traits: {"smithy.api#enumValue" => "TrainingDataSourceId"}))
    MLModelFilterVariable.add_member(:real_time_endpoint_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REAL_TIME_ENDPOINT_STATUS", traits: {"smithy.api#enumValue" => "RealtimeEndpointStatus"}))
    MLModelFilterVariable.add_member(:ml_model_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ML_MODEL_TYPE", traits: {"smithy.api#enumValue" => "MLModelType"}))
    MLModelFilterVariable.add_member(:algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALGORITHM", traits: {"smithy.api#enumValue" => "Algorithm"}))
    MLModelFilterVariable.add_member(:training_data_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRAINING_DATA_URI", traits: {"smithy.api#enumValue" => "TrainingDataURI"}))
    MLModelType.add_member(:regression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REGRESSION", traits: {"smithy.api#enumValue" => "REGRESSION"}))
    MLModelType.add_member(:binary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BINARY", traits: {"smithy.api#enumValue" => "BINARY"}))
    MLModelType.add_member(:multiclass, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MULTICLASS", traits: {"smithy.api#enumValue" => "MULTICLASS"}))
    MLModels.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MLModel)
    PerformanceMetrics.add_member(:properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceMetricsProperties, location_name: "Properties"))
    PerformanceMetrics.type = Types::PerformanceMetrics
    PerformanceMetricsProperties.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceMetricsPropertyKey)
    PerformanceMetricsProperties.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceMetricsPropertyValue)
    PredictInput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId", traits: {"smithy.api#required" => {}}))
    PredictInput.add_member(:record, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Record, location_name: "Record", traits: {"smithy.api#required" => {}}))
    PredictInput.add_member(:predict_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VipURL, location_name: "PredictEndpoint", traits: {"smithy.api#required" => {}}))
    PredictInput.type = Types::PredictInput
    PredictOutput.add_member(:prediction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prediction, location_name: "Prediction"))
    PredictOutput.type = Types::PredictOutput
    Prediction.add_member(:predicted_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Label, location_name: "predictedLabel"))
    Prediction.add_member(:predicted_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FloatLabel, location_name: "predictedValue"))
    Prediction.add_member(:predicted_scores, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScoreValuePerLabelMap, location_name: "predictedScores"))
    Prediction.add_member(:details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetailsMap, location_name: "details"))
    Prediction.type = Types::Prediction
    PredictorNotMountedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    PredictorNotMountedException.type = Types::PredictorNotMountedException
    RDSDataSpec.add_member(:database_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RDSDatabase, location_name: "DatabaseInformation", traits: {"smithy.api#required" => {}}))
    RDSDataSpec.add_member(:select_sql_query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RDSSelectSqlQuery, location_name: "SelectSqlQuery", traits: {"smithy.api#required" => {}}))
    RDSDataSpec.add_member(:database_credentials, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RDSDatabaseCredentials, location_name: "DatabaseCredentials", traits: {"smithy.api#required" => {}}))
    RDSDataSpec.add_member(:s3_staging_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: "S3StagingLocation", traits: {"smithy.api#required" => {}}))
    RDSDataSpec.add_member(:data_rearrangement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataRearrangement, location_name: "DataRearrangement"))
    RDSDataSpec.add_member(:data_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSchema, location_name: "DataSchema"))
    RDSDataSpec.add_member(:data_schema_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: "DataSchemaUri"))
    RDSDataSpec.add_member(:resource_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EDPResourceRole, location_name: "ResourceRole", traits: {"smithy.api#required" => {}}))
    RDSDataSpec.add_member(:service_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EDPServiceRole, location_name: "ServiceRole", traits: {"smithy.api#required" => {}}))
    RDSDataSpec.add_member(:subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EDPSubnetId, location_name: "SubnetId", traits: {"smithy.api#required" => {}}))
    RDSDataSpec.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EDPSecurityGroupIds, location_name: "SecurityGroupIds", traits: {"smithy.api#required" => {}}))
    RDSDataSpec.type = Types::RDSDataSpec
    RDSDatabase.add_member(:instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RDSInstanceIdentifier, location_name: "InstanceIdentifier", traits: {"smithy.api#required" => {}}))
    RDSDatabase.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RDSDatabaseName, location_name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    RDSDatabase.type = Types::RDSDatabase
    RDSDatabaseCredentials.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RDSDatabaseUsername, location_name: "Username", traits: {"smithy.api#required" => {}}))
    RDSDatabaseCredentials.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RDSDatabasePassword, location_name: "Password", traits: {"smithy.api#required" => {}}))
    RDSDatabaseCredentials.type = Types::RDSDatabaseCredentials
    RDSMetadata.add_member(:database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RDSDatabase, location_name: "Database"))
    RDSMetadata.add_member(:database_user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RDSDatabaseUsername, location_name: "DatabaseUserName"))
    RDSMetadata.add_member(:select_sql_query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RDSSelectSqlQuery, location_name: "SelectSqlQuery"))
    RDSMetadata.add_member(:resource_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EDPResourceRole, location_name: "ResourceRole"))
    RDSMetadata.add_member(:service_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EDPServiceRole, location_name: "ServiceRole"))
    RDSMetadata.add_member(:data_pipeline_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EDPPipelineId, location_name: "DataPipelineId"))
    RDSMetadata.type = Types::RDSMetadata
    RealtimeEndpointInfo.add_member(:peak_requests_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerType, location_name: "PeakRequestsPerSecond", traits: {"smithy.api#default" => 0}))
    RealtimeEndpointInfo.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EpochTime, location_name: "CreatedAt"))
    RealtimeEndpointInfo.add_member(:endpoint_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VipURL, location_name: "EndpointUrl"))
    RealtimeEndpointInfo.add_member(:endpoint_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RealtimeEndpointStatus, location_name: "EndpointStatus"))
    RealtimeEndpointInfo.type = Types::RealtimeEndpointInfo
    RealtimeEndpointStatus.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    RealtimeEndpointStatus.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    RealtimeEndpointStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    RealtimeEndpointStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    Record.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariableName)
    Record.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariableValue)
    RedshiftDataSpec.add_member(:database_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftDatabase, location_name: "DatabaseInformation", traits: {"smithy.api#required" => {}}))
    RedshiftDataSpec.add_member(:select_sql_query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftSelectSqlQuery, location_name: "SelectSqlQuery", traits: {"smithy.api#required" => {}}))
    RedshiftDataSpec.add_member(:database_credentials, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftDatabaseCredentials, location_name: "DatabaseCredentials", traits: {"smithy.api#required" => {}}))
    RedshiftDataSpec.add_member(:s3_staging_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: "S3StagingLocation", traits: {"smithy.api#required" => {}}))
    RedshiftDataSpec.add_member(:data_rearrangement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataRearrangement, location_name: "DataRearrangement"))
    RedshiftDataSpec.add_member(:data_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSchema, location_name: "DataSchema"))
    RedshiftDataSpec.add_member(:data_schema_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: "DataSchemaUri"))
    RedshiftDataSpec.type = Types::RedshiftDataSpec
    RedshiftDatabase.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftDatabaseName, location_name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    RedshiftDatabase.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftClusterIdentifier, location_name: "ClusterIdentifier", traits: {"smithy.api#required" => {}}))
    RedshiftDatabase.type = Types::RedshiftDatabase
    RedshiftDatabaseCredentials.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftDatabaseUsername, location_name: "Username", traits: {"smithy.api#required" => {}}))
    RedshiftDatabaseCredentials.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftDatabasePassword, location_name: "Password", traits: {"smithy.api#required" => {}}))
    RedshiftDatabaseCredentials.type = Types::RedshiftDatabaseCredentials
    RedshiftMetadata.add_member(:redshift_database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftDatabase, location_name: "RedshiftDatabase"))
    RedshiftMetadata.add_member(:database_user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftDatabaseUsername, location_name: "DatabaseUserName"))
    RedshiftMetadata.add_member(:select_sql_query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftSelectSqlQuery, location_name: "SelectSqlQuery"))
    RedshiftMetadata.type = Types::RedshiftMetadata
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: "code", traits: {"smithy.api#default" => 0}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3DataSpec.add_member(:data_location_s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: "DataLocationS3", traits: {"smithy.api#required" => {}}))
    S3DataSpec.add_member(:data_rearrangement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataRearrangement, location_name: "DataRearrangement"))
    S3DataSpec.add_member(:data_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSchema, location_name: "DataSchema"))
    S3DataSpec.add_member(:data_schema_location_s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: "DataSchemaLocationS3"))
    S3DataSpec.type = Types::S3DataSpec
    ScoreValuePerLabelMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Label)
    ScoreValuePerLabelMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScoreValue)
    SortOrder.add_member(:asc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASC", traits: {"smithy.api#enumValue" => "asc"}))
    SortOrder.add_member(:dsc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DSC", traits: {"smithy.api#enumValue" => "dsc"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    TagLimitExceededException.type = Types::TagLimitExceededException
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TaggableResourceType.add_member(:batch_prediction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BATCH_PREDICTION", traits: {"smithy.api#enumValue" => "BatchPrediction"}))
    TaggableResourceType.add_member(:datasource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DATASOURCE", traits: {"smithy.api#enumValue" => "DataSource"}))
    TaggableResourceType.add_member(:evaluation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EVALUATION", traits: {"smithy.api#enumValue" => "Evaluation"}))
    TaggableResourceType.add_member(:ml_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ML_MODEL", traits: {"smithy.api#enumValue" => "MLModel"}))
    TrainingParameters.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType)
    TrainingParameters.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType)
    UpdateBatchPredictionInput.add_member(:batch_prediction_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "BatchPredictionId", traits: {"smithy.api#required" => {}}))
    UpdateBatchPredictionInput.add_member(:batch_prediction_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: "BatchPredictionName", traits: {"smithy.api#required" => {}}))
    UpdateBatchPredictionInput.type = Types::UpdateBatchPredictionInput
    UpdateBatchPredictionOutput.add_member(:batch_prediction_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "BatchPredictionId"))
    UpdateBatchPredictionOutput.type = Types::UpdateBatchPredictionOutput
    UpdateDataSourceInput.add_member(:data_source_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "DataSourceId", traits: {"smithy.api#required" => {}}))
    UpdateDataSourceInput.add_member(:data_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: "DataSourceName", traits: {"smithy.api#required" => {}}))
    UpdateDataSourceInput.type = Types::UpdateDataSourceInput
    UpdateDataSourceOutput.add_member(:data_source_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "DataSourceId"))
    UpdateDataSourceOutput.type = Types::UpdateDataSourceOutput
    UpdateEvaluationInput.add_member(:evaluation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "EvaluationId", traits: {"smithy.api#required" => {}}))
    UpdateEvaluationInput.add_member(:evaluation_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: "EvaluationName", traits: {"smithy.api#required" => {}}))
    UpdateEvaluationInput.type = Types::UpdateEvaluationInput
    UpdateEvaluationOutput.add_member(:evaluation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "EvaluationId"))
    UpdateEvaluationOutput.type = Types::UpdateEvaluationOutput
    UpdateMLModelInput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId", traits: {"smithy.api#required" => {}}))
    UpdateMLModelInput.add_member(:ml_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: "MLModelName"))
    UpdateMLModelInput.add_member(:score_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScoreThreshold, location_name: "ScoreThreshold"))
    UpdateMLModelInput.type = Types::UpdateMLModelInput
    UpdateMLModelOutput.add_member(:ml_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "MLModelId"))
    UpdateMLModelOutput.type = Types::UpdateMLModelOutput

    AmazonML20141212 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.machinelearning#AmazonML_20141212"
      service.name = "AmazonML20141212"
      service.version = "2014-12-12"
      service.traits = {"aws.api#service" => {"sdkId" => "Machine Learning", "arnNamespace" => "machinelearning", "cloudFormationName" => "MachineLearning", "cloudTrailEventSource" => "machinelearning.amazonaws.com", "docId" => "machinelearning-2014-12-12", "endpointPrefix" => "machinelearning"}, "aws.auth#sigv4" => {"name" => "machinelearning"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Machine Learning", "smithy.api#xmlNamespace" => {"uri" => "http://machinelearning.amazonaws.com/doc/2014-12-12/"}}
      service.add_operation(:add_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#AddTags"
        operation.name = "AddTags"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:create_batch_prediction, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#CreateBatchPrediction"
        operation.name = "CreateBatchPrediction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBatchPredictionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBatchPredictionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:create_data_source_from_rds, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#CreateDataSourceFromRDS"
        operation.name = "CreateDataSourceFromRDS"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataSourceFromRDSInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataSourceFromRDSOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:create_data_source_from_redshift, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#CreateDataSourceFromRedshift"
        operation.name = "CreateDataSourceFromRedshift"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataSourceFromRedshiftInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataSourceFromRedshiftOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:create_data_source_from_s3, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#CreateDataSourceFromS3"
        operation.name = "CreateDataSourceFromS3"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataSourceFromS3Input)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataSourceFromS3Output)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:create_evaluation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#CreateEvaluation"
        operation.name = "CreateEvaluation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEvaluationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEvaluationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:create_ml_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#CreateMLModel"
        operation.name = "CreateMLModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMLModelInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMLModelOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:create_realtime_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#CreateRealtimeEndpoint"
        operation.name = "CreateRealtimeEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRealtimeEndpointInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRealtimeEndpointOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_batch_prediction, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#DeleteBatchPrediction"
        operation.name = "DeleteBatchPrediction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBatchPredictionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBatchPredictionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#DeleteDataSource"
        operation.name = "DeleteDataSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataSourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataSourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_evaluation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#DeleteEvaluation"
        operation.name = "DeleteEvaluation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEvaluationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEvaluationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_ml_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#DeleteMLModel"
        operation.name = "DeleteMLModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMLModelInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMLModelOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_realtime_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#DeleteRealtimeEndpoint"
        operation.name = "DeleteRealtimeEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRealtimeEndpointInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRealtimeEndpointOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#DeleteTags"
        operation.name = "DeleteTags"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTagsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTagsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_batch_predictions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#DescribeBatchPredictions"
        operation.name = "DescribeBatchPredictions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBatchPredictionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBatchPredictionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeBatchPredictions.new
      end)
      service.add_operation(:describe_data_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#DescribeDataSources"
        operation.name = "DescribeDataSources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDataSourcesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDataSourcesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDataSources.new
      end)
      service.add_operation(:describe_evaluations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#DescribeEvaluations"
        operation.name = "DescribeEvaluations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEvaluationsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEvaluationsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEvaluations.new
      end)
      service.add_operation(:describe_ml_models, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#DescribeMLModels"
        operation.name = "DescribeMLModels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMLModelsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMLModelsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMLModels.new
      end)
      service.add_operation(:describe_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#DescribeTags"
        operation.name = "DescribeTags"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTagsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTagsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_batch_prediction, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#GetBatchPrediction"
        operation.name = "GetBatchPrediction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBatchPredictionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBatchPredictionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#GetDataSource"
        operation.name = "GetDataSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataSourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataSourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_evaluation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#GetEvaluation"
        operation.name = "GetEvaluation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEvaluationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEvaluationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_ml_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#GetMLModel"
        operation.name = "GetMLModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMLModelInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMLModelOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:predict, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#Predict"
        operation.name = "Predict"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PredictInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PredictOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PredictorNotMountedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_batch_prediction, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#UpdateBatchPrediction"
        operation.name = "UpdateBatchPrediction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBatchPredictionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBatchPredictionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#UpdateDataSource"
        operation.name = "UpdateDataSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataSourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataSourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_evaluation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#UpdateEvaluation"
        operation.name = "UpdateEvaluation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEvaluationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEvaluationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_ml_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.machinelearning#UpdateMLModel"
        operation.name = "UpdateMLModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMLModelInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMLModelOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
