# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ForecastService
  # @api private
  module ClientApi

    include Seahorse::Model

    Arn = Shapes::StringShape.new(name: 'Arn')
    ArnList = Shapes::ListShape.new(name: 'ArnList')
    AttributeType = Shapes::StringShape.new(name: 'AttributeType')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CategoricalParameterRange = Shapes::StructureShape.new(name: 'CategoricalParameterRange')
    CategoricalParameterRanges = Shapes::ListShape.new(name: 'CategoricalParameterRanges')
    ContinuousParameterRange = Shapes::StructureShape.new(name: 'ContinuousParameterRange')
    ContinuousParameterRanges = Shapes::ListShape.new(name: 'ContinuousParameterRanges')
    CreateDatasetGroupRequest = Shapes::StructureShape.new(name: 'CreateDatasetGroupRequest')
    CreateDatasetGroupResponse = Shapes::StructureShape.new(name: 'CreateDatasetGroupResponse')
    CreateDatasetImportJobRequest = Shapes::StructureShape.new(name: 'CreateDatasetImportJobRequest')
    CreateDatasetImportJobResponse = Shapes::StructureShape.new(name: 'CreateDatasetImportJobResponse')
    CreateDatasetRequest = Shapes::StructureShape.new(name: 'CreateDatasetRequest')
    CreateDatasetResponse = Shapes::StructureShape.new(name: 'CreateDatasetResponse')
    CreateForecastExportJobRequest = Shapes::StructureShape.new(name: 'CreateForecastExportJobRequest')
    CreateForecastExportJobResponse = Shapes::StructureShape.new(name: 'CreateForecastExportJobResponse')
    CreateForecastRequest = Shapes::StructureShape.new(name: 'CreateForecastRequest')
    CreateForecastResponse = Shapes::StructureShape.new(name: 'CreateForecastResponse')
    CreatePredictorRequest = Shapes::StructureShape.new(name: 'CreatePredictorRequest')
    CreatePredictorResponse = Shapes::StructureShape.new(name: 'CreatePredictorResponse')
    DataDestination = Shapes::StructureShape.new(name: 'DataDestination')
    DataSource = Shapes::StructureShape.new(name: 'DataSource')
    DatasetGroupSummary = Shapes::StructureShape.new(name: 'DatasetGroupSummary')
    DatasetGroups = Shapes::ListShape.new(name: 'DatasetGroups')
    DatasetImportJobSummary = Shapes::StructureShape.new(name: 'DatasetImportJobSummary')
    DatasetImportJobs = Shapes::ListShape.new(name: 'DatasetImportJobs')
    DatasetSummary = Shapes::StructureShape.new(name: 'DatasetSummary')
    DatasetType = Shapes::StringShape.new(name: 'DatasetType')
    Datasets = Shapes::ListShape.new(name: 'Datasets')
    DeleteDatasetGroupRequest = Shapes::StructureShape.new(name: 'DeleteDatasetGroupRequest')
    DeleteDatasetImportJobRequest = Shapes::StructureShape.new(name: 'DeleteDatasetImportJobRequest')
    DeleteDatasetRequest = Shapes::StructureShape.new(name: 'DeleteDatasetRequest')
    DeleteForecastExportJobRequest = Shapes::StructureShape.new(name: 'DeleteForecastExportJobRequest')
    DeleteForecastRequest = Shapes::StructureShape.new(name: 'DeleteForecastRequest')
    DeletePredictorRequest = Shapes::StructureShape.new(name: 'DeletePredictorRequest')
    DescribeDatasetGroupRequest = Shapes::StructureShape.new(name: 'DescribeDatasetGroupRequest')
    DescribeDatasetGroupResponse = Shapes::StructureShape.new(name: 'DescribeDatasetGroupResponse')
    DescribeDatasetImportJobRequest = Shapes::StructureShape.new(name: 'DescribeDatasetImportJobRequest')
    DescribeDatasetImportJobResponse = Shapes::StructureShape.new(name: 'DescribeDatasetImportJobResponse')
    DescribeDatasetRequest = Shapes::StructureShape.new(name: 'DescribeDatasetRequest')
    DescribeDatasetResponse = Shapes::StructureShape.new(name: 'DescribeDatasetResponse')
    DescribeForecastExportJobRequest = Shapes::StructureShape.new(name: 'DescribeForecastExportJobRequest')
    DescribeForecastExportJobResponse = Shapes::StructureShape.new(name: 'DescribeForecastExportJobResponse')
    DescribeForecastRequest = Shapes::StructureShape.new(name: 'DescribeForecastRequest')
    DescribeForecastResponse = Shapes::StructureShape.new(name: 'DescribeForecastResponse')
    DescribePredictorRequest = Shapes::StructureShape.new(name: 'DescribePredictorRequest')
    DescribePredictorResponse = Shapes::StructureShape.new(name: 'DescribePredictorResponse')
    Domain = Shapes::StringShape.new(name: 'Domain')
    Double = Shapes::FloatShape.new(name: 'Double')
    EncryptionConfig = Shapes::StructureShape.new(name: 'EncryptionConfig')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EvaluationParameters = Shapes::StructureShape.new(name: 'EvaluationParameters')
    EvaluationResult = Shapes::StructureShape.new(name: 'EvaluationResult')
    EvaluationType = Shapes::StringShape.new(name: 'EvaluationType')
    Featurization = Shapes::StructureShape.new(name: 'Featurization')
    FeaturizationConfig = Shapes::StructureShape.new(name: 'FeaturizationConfig')
    FeaturizationMethod = Shapes::StructureShape.new(name: 'FeaturizationMethod')
    FeaturizationMethodName = Shapes::StringShape.new(name: 'FeaturizationMethodName')
    FeaturizationMethodParameters = Shapes::MapShape.new(name: 'FeaturizationMethodParameters')
    FeaturizationPipeline = Shapes::ListShape.new(name: 'FeaturizationPipeline')
    Featurizations = Shapes::ListShape.new(name: 'Featurizations')
    FieldStatistics = Shapes::MapShape.new(name: 'FieldStatistics')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterConditionString = Shapes::StringShape.new(name: 'FilterConditionString')
    Filters = Shapes::ListShape.new(name: 'Filters')
    ForecastDimensions = Shapes::ListShape.new(name: 'ForecastDimensions')
    ForecastExportJobSummary = Shapes::StructureShape.new(name: 'ForecastExportJobSummary')
    ForecastExportJobs = Shapes::ListShape.new(name: 'ForecastExportJobs')
    ForecastSummary = Shapes::StructureShape.new(name: 'ForecastSummary')
    ForecastType = Shapes::StringShape.new(name: 'ForecastType')
    ForecastTypes = Shapes::ListShape.new(name: 'ForecastTypes')
    Forecasts = Shapes::ListShape.new(name: 'Forecasts')
    Frequency = Shapes::StringShape.new(name: 'Frequency')
    GetAccuracyMetricsRequest = Shapes::StructureShape.new(name: 'GetAccuracyMetricsRequest')
    GetAccuracyMetricsResponse = Shapes::StructureShape.new(name: 'GetAccuracyMetricsResponse')
    HyperParameterTuningJobConfig = Shapes::StructureShape.new(name: 'HyperParameterTuningJobConfig')
    InputDataConfig = Shapes::StructureShape.new(name: 'InputDataConfig')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerParameterRange = Shapes::StructureShape.new(name: 'IntegerParameterRange')
    IntegerParameterRanges = Shapes::ListShape.new(name: 'IntegerParameterRanges')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    KMSKeyArn = Shapes::StringShape.new(name: 'KMSKeyArn')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListDatasetGroupsRequest = Shapes::StructureShape.new(name: 'ListDatasetGroupsRequest')
    ListDatasetGroupsResponse = Shapes::StructureShape.new(name: 'ListDatasetGroupsResponse')
    ListDatasetImportJobsRequest = Shapes::StructureShape.new(name: 'ListDatasetImportJobsRequest')
    ListDatasetImportJobsResponse = Shapes::StructureShape.new(name: 'ListDatasetImportJobsResponse')
    ListDatasetsRequest = Shapes::StructureShape.new(name: 'ListDatasetsRequest')
    ListDatasetsResponse = Shapes::StructureShape.new(name: 'ListDatasetsResponse')
    ListForecastExportJobsRequest = Shapes::StructureShape.new(name: 'ListForecastExportJobsRequest')
    ListForecastExportJobsResponse = Shapes::StructureShape.new(name: 'ListForecastExportJobsResponse')
    ListForecastsRequest = Shapes::StructureShape.new(name: 'ListForecastsRequest')
    ListForecastsResponse = Shapes::StructureShape.new(name: 'ListForecastsResponse')
    ListPredictorsRequest = Shapes::StructureShape.new(name: 'ListPredictorsRequest')
    ListPredictorsResponse = Shapes::StructureShape.new(name: 'ListPredictorsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Message = Shapes::StringShape.new(name: 'Message')
    Metrics = Shapes::StructureShape.new(name: 'Metrics')
    Name = Shapes::StringShape.new(name: 'Name')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    ParameterKey = Shapes::StringShape.new(name: 'ParameterKey')
    ParameterRanges = Shapes::StructureShape.new(name: 'ParameterRanges')
    ParameterValue = Shapes::StringShape.new(name: 'ParameterValue')
    PredictorEvaluationResults = Shapes::ListShape.new(name: 'PredictorEvaluationResults')
    PredictorExecution = Shapes::StructureShape.new(name: 'PredictorExecution')
    PredictorExecutionDetails = Shapes::StructureShape.new(name: 'PredictorExecutionDetails')
    PredictorExecutions = Shapes::ListShape.new(name: 'PredictorExecutions')
    PredictorSummary = Shapes::StructureShape.new(name: 'PredictorSummary')
    Predictors = Shapes::ListShape.new(name: 'Predictors')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    S3Config = Shapes::StructureShape.new(name: 'S3Config')
    S3Path = Shapes::StringShape.new(name: 'S3Path')
    ScalingType = Shapes::StringShape.new(name: 'ScalingType')
    Schema = Shapes::StructureShape.new(name: 'Schema')
    SchemaAttribute = Shapes::StructureShape.new(name: 'SchemaAttribute')
    SchemaAttributes = Shapes::ListShape.new(name: 'SchemaAttributes')
    Statistics = Shapes::StructureShape.new(name: 'Statistics')
    Status = Shapes::StringShape.new(name: 'Status')
    String = Shapes::StringShape.new(name: 'String')
    SupplementaryFeature = Shapes::StructureShape.new(name: 'SupplementaryFeature')
    SupplementaryFeatures = Shapes::ListShape.new(name: 'SupplementaryFeatures')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    TestWindowDetails = Shapes::ListShape.new(name: 'TestWindowDetails')
    TestWindowSummary = Shapes::StructureShape.new(name: 'TestWindowSummary')
    TestWindows = Shapes::ListShape.new(name: 'TestWindows')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TimestampFormat = Shapes::StringShape.new(name: 'TimestampFormat')
    TrainingParameters = Shapes::MapShape.new(name: 'TrainingParameters')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateDatasetGroupRequest = Shapes::StructureShape.new(name: 'UpdateDatasetGroupRequest')
    UpdateDatasetGroupResponse = Shapes::StructureShape.new(name: 'UpdateDatasetGroupResponse')
    Value = Shapes::StringShape.new(name: 'Value')
    Values = Shapes::ListShape.new(name: 'Values')
    WeightedQuantileLoss = Shapes::StructureShape.new(name: 'WeightedQuantileLoss')
    WeightedQuantileLosses = Shapes::ListShape.new(name: 'WeightedQuantileLosses')
    WindowSummary = Shapes::StructureShape.new(name: 'WindowSummary')

    ArnList.member = Shapes::ShapeRef.new(shape: Arn)

    CategoricalParameterRange.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CategoricalParameterRange.add_member(:values, Shapes::ShapeRef.new(shape: Values, required: true, location_name: "Values"))
    CategoricalParameterRange.struct_class = Types::CategoricalParameterRange

    CategoricalParameterRanges.member = Shapes::ShapeRef.new(shape: CategoricalParameterRange)

    ContinuousParameterRange.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    ContinuousParameterRange.add_member(:max_value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "MaxValue"))
    ContinuousParameterRange.add_member(:min_value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "MinValue"))
    ContinuousParameterRange.add_member(:scaling_type, Shapes::ShapeRef.new(shape: ScalingType, location_name: "ScalingType"))
    ContinuousParameterRange.struct_class = Types::ContinuousParameterRange

    ContinuousParameterRanges.member = Shapes::ShapeRef.new(shape: ContinuousParameterRange)

    CreateDatasetGroupRequest.add_member(:dataset_group_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "DatasetGroupName"))
    CreateDatasetGroupRequest.add_member(:domain, Shapes::ShapeRef.new(shape: Domain, required: true, location_name: "Domain"))
    CreateDatasetGroupRequest.add_member(:dataset_arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "DatasetArns"))
    CreateDatasetGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateDatasetGroupRequest.struct_class = Types::CreateDatasetGroupRequest

    CreateDatasetGroupResponse.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DatasetGroupArn"))
    CreateDatasetGroupResponse.struct_class = Types::CreateDatasetGroupResponse

    CreateDatasetImportJobRequest.add_member(:dataset_import_job_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "DatasetImportJobName"))
    CreateDatasetImportJobRequest.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DatasetArn"))
    CreateDatasetImportJobRequest.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, required: true, location_name: "DataSource"))
    CreateDatasetImportJobRequest.add_member(:timestamp_format, Shapes::ShapeRef.new(shape: TimestampFormat, location_name: "TimestampFormat"))
    CreateDatasetImportJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateDatasetImportJobRequest.struct_class = Types::CreateDatasetImportJobRequest

    CreateDatasetImportJobResponse.add_member(:dataset_import_job_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DatasetImportJobArn"))
    CreateDatasetImportJobResponse.struct_class = Types::CreateDatasetImportJobResponse

    CreateDatasetRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "DatasetName"))
    CreateDatasetRequest.add_member(:domain, Shapes::ShapeRef.new(shape: Domain, required: true, location_name: "Domain"))
    CreateDatasetRequest.add_member(:dataset_type, Shapes::ShapeRef.new(shape: DatasetType, required: true, location_name: "DatasetType"))
    CreateDatasetRequest.add_member(:data_frequency, Shapes::ShapeRef.new(shape: Frequency, location_name: "DataFrequency"))
    CreateDatasetRequest.add_member(:schema, Shapes::ShapeRef.new(shape: Schema, required: true, location_name: "Schema"))
    CreateDatasetRequest.add_member(:encryption_config, Shapes::ShapeRef.new(shape: EncryptionConfig, location_name: "EncryptionConfig"))
    CreateDatasetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateDatasetRequest.struct_class = Types::CreateDatasetRequest

    CreateDatasetResponse.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DatasetArn"))
    CreateDatasetResponse.struct_class = Types::CreateDatasetResponse

    CreateForecastExportJobRequest.add_member(:forecast_export_job_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "ForecastExportJobName"))
    CreateForecastExportJobRequest.add_member(:forecast_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ForecastArn"))
    CreateForecastExportJobRequest.add_member(:destination, Shapes::ShapeRef.new(shape: DataDestination, required: true, location_name: "Destination"))
    CreateForecastExportJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateForecastExportJobRequest.struct_class = Types::CreateForecastExportJobRequest

    CreateForecastExportJobResponse.add_member(:forecast_export_job_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ForecastExportJobArn"))
    CreateForecastExportJobResponse.struct_class = Types::CreateForecastExportJobResponse

    CreateForecastRequest.add_member(:forecast_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "ForecastName"))
    CreateForecastRequest.add_member(:predictor_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "PredictorArn"))
    CreateForecastRequest.add_member(:forecast_types, Shapes::ShapeRef.new(shape: ForecastTypes, location_name: "ForecastTypes"))
    CreateForecastRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateForecastRequest.struct_class = Types::CreateForecastRequest

    CreateForecastResponse.add_member(:forecast_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ForecastArn"))
    CreateForecastResponse.struct_class = Types::CreateForecastResponse

    CreatePredictorRequest.add_member(:predictor_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "PredictorName"))
    CreatePredictorRequest.add_member(:algorithm_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AlgorithmArn"))
    CreatePredictorRequest.add_member(:forecast_horizon, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "ForecastHorizon"))
    CreatePredictorRequest.add_member(:perform_auto_ml, Shapes::ShapeRef.new(shape: Boolean, location_name: "PerformAutoML"))
    CreatePredictorRequest.add_member(:perform_hpo, Shapes::ShapeRef.new(shape: Boolean, location_name: "PerformHPO"))
    CreatePredictorRequest.add_member(:training_parameters, Shapes::ShapeRef.new(shape: TrainingParameters, location_name: "TrainingParameters"))
    CreatePredictorRequest.add_member(:evaluation_parameters, Shapes::ShapeRef.new(shape: EvaluationParameters, location_name: "EvaluationParameters"))
    CreatePredictorRequest.add_member(:hpo_config, Shapes::ShapeRef.new(shape: HyperParameterTuningJobConfig, location_name: "HPOConfig"))
    CreatePredictorRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    CreatePredictorRequest.add_member(:featurization_config, Shapes::ShapeRef.new(shape: FeaturizationConfig, required: true, location_name: "FeaturizationConfig"))
    CreatePredictorRequest.add_member(:encryption_config, Shapes::ShapeRef.new(shape: EncryptionConfig, location_name: "EncryptionConfig"))
    CreatePredictorRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreatePredictorRequest.struct_class = Types::CreatePredictorRequest

    CreatePredictorResponse.add_member(:predictor_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "PredictorArn"))
    CreatePredictorResponse.struct_class = Types::CreatePredictorResponse

    DataDestination.add_member(:s3_config, Shapes::ShapeRef.new(shape: S3Config, required: true, location_name: "S3Config"))
    DataDestination.struct_class = Types::DataDestination

    DataSource.add_member(:s3_config, Shapes::ShapeRef.new(shape: S3Config, required: true, location_name: "S3Config"))
    DataSource.struct_class = Types::DataSource

    DatasetGroupSummary.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DatasetGroupArn"))
    DatasetGroupSummary.add_member(:dataset_group_name, Shapes::ShapeRef.new(shape: Name, location_name: "DatasetGroupName"))
    DatasetGroupSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DatasetGroupSummary.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModificationTime"))
    DatasetGroupSummary.struct_class = Types::DatasetGroupSummary

    DatasetGroups.member = Shapes::ShapeRef.new(shape: DatasetGroupSummary)

    DatasetImportJobSummary.add_member(:dataset_import_job_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DatasetImportJobArn"))
    DatasetImportJobSummary.add_member(:dataset_import_job_name, Shapes::ShapeRef.new(shape: Name, location_name: "DatasetImportJobName"))
    DatasetImportJobSummary.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, location_name: "DataSource"))
    DatasetImportJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    DatasetImportJobSummary.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    DatasetImportJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DatasetImportJobSummary.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModificationTime"))
    DatasetImportJobSummary.struct_class = Types::DatasetImportJobSummary

    DatasetImportJobs.member = Shapes::ShapeRef.new(shape: DatasetImportJobSummary)

    DatasetSummary.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DatasetArn"))
    DatasetSummary.add_member(:dataset_name, Shapes::ShapeRef.new(shape: Name, location_name: "DatasetName"))
    DatasetSummary.add_member(:dataset_type, Shapes::ShapeRef.new(shape: DatasetType, location_name: "DatasetType"))
    DatasetSummary.add_member(:domain, Shapes::ShapeRef.new(shape: Domain, location_name: "Domain"))
    DatasetSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DatasetSummary.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModificationTime"))
    DatasetSummary.struct_class = Types::DatasetSummary

    Datasets.member = Shapes::ShapeRef.new(shape: DatasetSummary)

    DeleteDatasetGroupRequest.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DatasetGroupArn"))
    DeleteDatasetGroupRequest.struct_class = Types::DeleteDatasetGroupRequest

    DeleteDatasetImportJobRequest.add_member(:dataset_import_job_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DatasetImportJobArn"))
    DeleteDatasetImportJobRequest.struct_class = Types::DeleteDatasetImportJobRequest

    DeleteDatasetRequest.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DatasetArn"))
    DeleteDatasetRequest.struct_class = Types::DeleteDatasetRequest

    DeleteForecastExportJobRequest.add_member(:forecast_export_job_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ForecastExportJobArn"))
    DeleteForecastExportJobRequest.struct_class = Types::DeleteForecastExportJobRequest

    DeleteForecastRequest.add_member(:forecast_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ForecastArn"))
    DeleteForecastRequest.struct_class = Types::DeleteForecastRequest

    DeletePredictorRequest.add_member(:predictor_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "PredictorArn"))
    DeletePredictorRequest.struct_class = Types::DeletePredictorRequest

    DescribeDatasetGroupRequest.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DatasetGroupArn"))
    DescribeDatasetGroupRequest.struct_class = Types::DescribeDatasetGroupRequest

    DescribeDatasetGroupResponse.add_member(:dataset_group_name, Shapes::ShapeRef.new(shape: Name, location_name: "DatasetGroupName"))
    DescribeDatasetGroupResponse.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DatasetGroupArn"))
    DescribeDatasetGroupResponse.add_member(:dataset_arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "DatasetArns"))
    DescribeDatasetGroupResponse.add_member(:domain, Shapes::ShapeRef.new(shape: Domain, location_name: "Domain"))
    DescribeDatasetGroupResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    DescribeDatasetGroupResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeDatasetGroupResponse.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModificationTime"))
    DescribeDatasetGroupResponse.struct_class = Types::DescribeDatasetGroupResponse

    DescribeDatasetImportJobRequest.add_member(:dataset_import_job_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DatasetImportJobArn"))
    DescribeDatasetImportJobRequest.struct_class = Types::DescribeDatasetImportJobRequest

    DescribeDatasetImportJobResponse.add_member(:dataset_import_job_name, Shapes::ShapeRef.new(shape: Name, location_name: "DatasetImportJobName"))
    DescribeDatasetImportJobResponse.add_member(:dataset_import_job_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DatasetImportJobArn"))
    DescribeDatasetImportJobResponse.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DatasetArn"))
    DescribeDatasetImportJobResponse.add_member(:timestamp_format, Shapes::ShapeRef.new(shape: TimestampFormat, location_name: "TimestampFormat"))
    DescribeDatasetImportJobResponse.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, location_name: "DataSource"))
    DescribeDatasetImportJobResponse.add_member(:field_statistics, Shapes::ShapeRef.new(shape: FieldStatistics, location_name: "FieldStatistics"))
    DescribeDatasetImportJobResponse.add_member(:data_size, Shapes::ShapeRef.new(shape: Double, location_name: "DataSize"))
    DescribeDatasetImportJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    DescribeDatasetImportJobResponse.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    DescribeDatasetImportJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeDatasetImportJobResponse.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModificationTime"))
    DescribeDatasetImportJobResponse.struct_class = Types::DescribeDatasetImportJobResponse

    DescribeDatasetRequest.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DatasetArn"))
    DescribeDatasetRequest.struct_class = Types::DescribeDatasetRequest

    DescribeDatasetResponse.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DatasetArn"))
    DescribeDatasetResponse.add_member(:dataset_name, Shapes::ShapeRef.new(shape: Name, location_name: "DatasetName"))
    DescribeDatasetResponse.add_member(:domain, Shapes::ShapeRef.new(shape: Domain, location_name: "Domain"))
    DescribeDatasetResponse.add_member(:dataset_type, Shapes::ShapeRef.new(shape: DatasetType, location_name: "DatasetType"))
    DescribeDatasetResponse.add_member(:data_frequency, Shapes::ShapeRef.new(shape: Frequency, location_name: "DataFrequency"))
    DescribeDatasetResponse.add_member(:schema, Shapes::ShapeRef.new(shape: Schema, location_name: "Schema"))
    DescribeDatasetResponse.add_member(:encryption_config, Shapes::ShapeRef.new(shape: EncryptionConfig, location_name: "EncryptionConfig"))
    DescribeDatasetResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    DescribeDatasetResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeDatasetResponse.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModificationTime"))
    DescribeDatasetResponse.struct_class = Types::DescribeDatasetResponse

    DescribeForecastExportJobRequest.add_member(:forecast_export_job_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ForecastExportJobArn"))
    DescribeForecastExportJobRequest.struct_class = Types::DescribeForecastExportJobRequest

    DescribeForecastExportJobResponse.add_member(:forecast_export_job_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ForecastExportJobArn"))
    DescribeForecastExportJobResponse.add_member(:forecast_export_job_name, Shapes::ShapeRef.new(shape: Name, location_name: "ForecastExportJobName"))
    DescribeForecastExportJobResponse.add_member(:forecast_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ForecastArn"))
    DescribeForecastExportJobResponse.add_member(:destination, Shapes::ShapeRef.new(shape: DataDestination, location_name: "Destination"))
    DescribeForecastExportJobResponse.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    DescribeForecastExportJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    DescribeForecastExportJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeForecastExportJobResponse.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModificationTime"))
    DescribeForecastExportJobResponse.struct_class = Types::DescribeForecastExportJobResponse

    DescribeForecastRequest.add_member(:forecast_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ForecastArn"))
    DescribeForecastRequest.struct_class = Types::DescribeForecastRequest

    DescribeForecastResponse.add_member(:forecast_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ForecastArn"))
    DescribeForecastResponse.add_member(:forecast_name, Shapes::ShapeRef.new(shape: Name, location_name: "ForecastName"))
    DescribeForecastResponse.add_member(:forecast_types, Shapes::ShapeRef.new(shape: ForecastTypes, location_name: "ForecastTypes"))
    DescribeForecastResponse.add_member(:predictor_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "PredictorArn"))
    DescribeForecastResponse.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DatasetGroupArn"))
    DescribeForecastResponse.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DescribeForecastResponse.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    DescribeForecastResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeForecastResponse.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModificationTime"))
    DescribeForecastResponse.struct_class = Types::DescribeForecastResponse

    DescribePredictorRequest.add_member(:predictor_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "PredictorArn"))
    DescribePredictorRequest.struct_class = Types::DescribePredictorRequest

    DescribePredictorResponse.add_member(:predictor_arn, Shapes::ShapeRef.new(shape: Name, location_name: "PredictorArn"))
    DescribePredictorResponse.add_member(:predictor_name, Shapes::ShapeRef.new(shape: Name, location_name: "PredictorName"))
    DescribePredictorResponse.add_member(:algorithm_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AlgorithmArn"))
    DescribePredictorResponse.add_member(:forecast_horizon, Shapes::ShapeRef.new(shape: Integer, location_name: "ForecastHorizon"))
    DescribePredictorResponse.add_member(:perform_auto_ml, Shapes::ShapeRef.new(shape: Boolean, location_name: "PerformAutoML"))
    DescribePredictorResponse.add_member(:perform_hpo, Shapes::ShapeRef.new(shape: Boolean, location_name: "PerformHPO"))
    DescribePredictorResponse.add_member(:training_parameters, Shapes::ShapeRef.new(shape: TrainingParameters, location_name: "TrainingParameters"))
    DescribePredictorResponse.add_member(:evaluation_parameters, Shapes::ShapeRef.new(shape: EvaluationParameters, location_name: "EvaluationParameters"))
    DescribePredictorResponse.add_member(:hpo_config, Shapes::ShapeRef.new(shape: HyperParameterTuningJobConfig, location_name: "HPOConfig"))
    DescribePredictorResponse.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, location_name: "InputDataConfig"))
    DescribePredictorResponse.add_member(:featurization_config, Shapes::ShapeRef.new(shape: FeaturizationConfig, location_name: "FeaturizationConfig"))
    DescribePredictorResponse.add_member(:encryption_config, Shapes::ShapeRef.new(shape: EncryptionConfig, location_name: "EncryptionConfig"))
    DescribePredictorResponse.add_member(:predictor_execution_details, Shapes::ShapeRef.new(shape: PredictorExecutionDetails, location_name: "PredictorExecutionDetails"))
    DescribePredictorResponse.add_member(:dataset_import_job_arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "DatasetImportJobArns"))
    DescribePredictorResponse.add_member(:auto_ml_algorithm_arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "AutoMLAlgorithmArns"))
    DescribePredictorResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    DescribePredictorResponse.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    DescribePredictorResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribePredictorResponse.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModificationTime"))
    DescribePredictorResponse.struct_class = Types::DescribePredictorResponse

    EncryptionConfig.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoleArn"))
    EncryptionConfig.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KMSKeyArn, required: true, location_name: "KMSKeyArn"))
    EncryptionConfig.struct_class = Types::EncryptionConfig

    EvaluationParameters.add_member(:number_of_backtest_windows, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfBacktestWindows"))
    EvaluationParameters.add_member(:back_test_window_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "BackTestWindowOffset"))
    EvaluationParameters.struct_class = Types::EvaluationParameters

    EvaluationResult.add_member(:algorithm_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AlgorithmArn"))
    EvaluationResult.add_member(:test_windows, Shapes::ShapeRef.new(shape: TestWindows, location_name: "TestWindows"))
    EvaluationResult.struct_class = Types::EvaluationResult

    Featurization.add_member(:attribute_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "AttributeName"))
    Featurization.add_member(:featurization_pipeline, Shapes::ShapeRef.new(shape: FeaturizationPipeline, location_name: "FeaturizationPipeline"))
    Featurization.struct_class = Types::Featurization

    FeaturizationConfig.add_member(:forecast_frequency, Shapes::ShapeRef.new(shape: Frequency, required: true, location_name: "ForecastFrequency"))
    FeaturizationConfig.add_member(:forecast_dimensions, Shapes::ShapeRef.new(shape: ForecastDimensions, location_name: "ForecastDimensions"))
    FeaturizationConfig.add_member(:featurizations, Shapes::ShapeRef.new(shape: Featurizations, location_name: "Featurizations"))
    FeaturizationConfig.struct_class = Types::FeaturizationConfig

    FeaturizationMethod.add_member(:featurization_method_name, Shapes::ShapeRef.new(shape: FeaturizationMethodName, required: true, location_name: "FeaturizationMethodName"))
    FeaturizationMethod.add_member(:featurization_method_parameters, Shapes::ShapeRef.new(shape: FeaturizationMethodParameters, location_name: "FeaturizationMethodParameters"))
    FeaturizationMethod.struct_class = Types::FeaturizationMethod

    FeaturizationMethodParameters.key = Shapes::ShapeRef.new(shape: ParameterKey)
    FeaturizationMethodParameters.value = Shapes::ShapeRef.new(shape: ParameterValue)

    FeaturizationPipeline.member = Shapes::ShapeRef.new(shape: FeaturizationMethod)

    Featurizations.member = Shapes::ShapeRef.new(shape: Featurization)

    FieldStatistics.key = Shapes::ShapeRef.new(shape: String)
    FieldStatistics.value = Shapes::ShapeRef.new(shape: Statistics)

    Filter.add_member(:key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Key"))
    Filter.add_member(:value, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Value"))
    Filter.add_member(:condition, Shapes::ShapeRef.new(shape: FilterConditionString, required: true, location_name: "Condition"))
    Filter.struct_class = Types::Filter

    Filters.member = Shapes::ShapeRef.new(shape: Filter)

    ForecastDimensions.member = Shapes::ShapeRef.new(shape: Name)

    ForecastExportJobSummary.add_member(:forecast_export_job_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ForecastExportJobArn"))
    ForecastExportJobSummary.add_member(:forecast_export_job_name, Shapes::ShapeRef.new(shape: Name, location_name: "ForecastExportJobName"))
    ForecastExportJobSummary.add_member(:destination, Shapes::ShapeRef.new(shape: DataDestination, location_name: "Destination"))
    ForecastExportJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    ForecastExportJobSummary.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ForecastExportJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    ForecastExportJobSummary.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModificationTime"))
    ForecastExportJobSummary.struct_class = Types::ForecastExportJobSummary

    ForecastExportJobs.member = Shapes::ShapeRef.new(shape: ForecastExportJobSummary)

    ForecastSummary.add_member(:forecast_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ForecastArn"))
    ForecastSummary.add_member(:forecast_name, Shapes::ShapeRef.new(shape: Name, location_name: "ForecastName"))
    ForecastSummary.add_member(:predictor_arn, Shapes::ShapeRef.new(shape: String, location_name: "PredictorArn"))
    ForecastSummary.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: String, location_name: "DatasetGroupArn"))
    ForecastSummary.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    ForecastSummary.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ForecastSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    ForecastSummary.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModificationTime"))
    ForecastSummary.struct_class = Types::ForecastSummary

    ForecastTypes.member = Shapes::ShapeRef.new(shape: ForecastType)

    Forecasts.member = Shapes::ShapeRef.new(shape: ForecastSummary)

    GetAccuracyMetricsRequest.add_member(:predictor_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "PredictorArn"))
    GetAccuracyMetricsRequest.struct_class = Types::GetAccuracyMetricsRequest

    GetAccuracyMetricsResponse.add_member(:predictor_evaluation_results, Shapes::ShapeRef.new(shape: PredictorEvaluationResults, location_name: "PredictorEvaluationResults"))
    GetAccuracyMetricsResponse.struct_class = Types::GetAccuracyMetricsResponse

    HyperParameterTuningJobConfig.add_member(:parameter_ranges, Shapes::ShapeRef.new(shape: ParameterRanges, location_name: "ParameterRanges"))
    HyperParameterTuningJobConfig.struct_class = Types::HyperParameterTuningJobConfig

    InputDataConfig.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DatasetGroupArn"))
    InputDataConfig.add_member(:supplementary_features, Shapes::ShapeRef.new(shape: SupplementaryFeatures, location_name: "SupplementaryFeatures"))
    InputDataConfig.struct_class = Types::InputDataConfig

    IntegerParameterRange.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    IntegerParameterRange.add_member(:max_value, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "MaxValue"))
    IntegerParameterRange.add_member(:min_value, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "MinValue"))
    IntegerParameterRange.add_member(:scaling_type, Shapes::ShapeRef.new(shape: ScalingType, location_name: "ScalingType"))
    IntegerParameterRange.struct_class = Types::IntegerParameterRange

    IntegerParameterRanges.member = Shapes::ShapeRef.new(shape: IntegerParameterRange)

    InvalidInputException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidInputException.struct_class = Types::InvalidInputException

    InvalidNextTokenException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidNextTokenException.struct_class = Types::InvalidNextTokenException

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListDatasetGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDatasetGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListDatasetGroupsRequest.struct_class = Types::ListDatasetGroupsRequest

    ListDatasetGroupsResponse.add_member(:dataset_groups, Shapes::ShapeRef.new(shape: DatasetGroups, location_name: "DatasetGroups"))
    ListDatasetGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDatasetGroupsResponse.struct_class = Types::ListDatasetGroupsResponse

    ListDatasetImportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDatasetImportJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListDatasetImportJobsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    ListDatasetImportJobsRequest.struct_class = Types::ListDatasetImportJobsRequest

    ListDatasetImportJobsResponse.add_member(:dataset_import_jobs, Shapes::ShapeRef.new(shape: DatasetImportJobs, location_name: "DatasetImportJobs"))
    ListDatasetImportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDatasetImportJobsResponse.struct_class = Types::ListDatasetImportJobsResponse

    ListDatasetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDatasetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListDatasetsRequest.struct_class = Types::ListDatasetsRequest

    ListDatasetsResponse.add_member(:datasets, Shapes::ShapeRef.new(shape: Datasets, location_name: "Datasets"))
    ListDatasetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDatasetsResponse.struct_class = Types::ListDatasetsResponse

    ListForecastExportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListForecastExportJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListForecastExportJobsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    ListForecastExportJobsRequest.struct_class = Types::ListForecastExportJobsRequest

    ListForecastExportJobsResponse.add_member(:forecast_export_jobs, Shapes::ShapeRef.new(shape: ForecastExportJobs, location_name: "ForecastExportJobs"))
    ListForecastExportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListForecastExportJobsResponse.struct_class = Types::ListForecastExportJobsResponse

    ListForecastsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListForecastsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListForecastsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    ListForecastsRequest.struct_class = Types::ListForecastsRequest

    ListForecastsResponse.add_member(:forecasts, Shapes::ShapeRef.new(shape: Forecasts, location_name: "Forecasts"))
    ListForecastsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListForecastsResponse.struct_class = Types::ListForecastsResponse

    ListPredictorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPredictorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListPredictorsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    ListPredictorsRequest.struct_class = Types::ListPredictorsRequest

    ListPredictorsResponse.add_member(:predictors, Shapes::ShapeRef.new(shape: Predictors, location_name: "Predictors"))
    ListPredictorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPredictorsResponse.struct_class = Types::ListPredictorsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    Metrics.add_member(:rmse, Shapes::ShapeRef.new(shape: Double, location_name: "RMSE"))
    Metrics.add_member(:weighted_quantile_losses, Shapes::ShapeRef.new(shape: WeightedQuantileLosses, location_name: "WeightedQuantileLosses"))
    Metrics.struct_class = Types::Metrics

    ParameterRanges.add_member(:categorical_parameter_ranges, Shapes::ShapeRef.new(shape: CategoricalParameterRanges, location_name: "CategoricalParameterRanges"))
    ParameterRanges.add_member(:continuous_parameter_ranges, Shapes::ShapeRef.new(shape: ContinuousParameterRanges, location_name: "ContinuousParameterRanges"))
    ParameterRanges.add_member(:integer_parameter_ranges, Shapes::ShapeRef.new(shape: IntegerParameterRanges, location_name: "IntegerParameterRanges"))
    ParameterRanges.struct_class = Types::ParameterRanges

    PredictorEvaluationResults.member = Shapes::ShapeRef.new(shape: EvaluationResult)

    PredictorExecution.add_member(:algorithm_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AlgorithmArn"))
    PredictorExecution.add_member(:test_windows, Shapes::ShapeRef.new(shape: TestWindowDetails, location_name: "TestWindows"))
    PredictorExecution.struct_class = Types::PredictorExecution

    PredictorExecutionDetails.add_member(:predictor_executions, Shapes::ShapeRef.new(shape: PredictorExecutions, location_name: "PredictorExecutions"))
    PredictorExecutionDetails.struct_class = Types::PredictorExecutionDetails

    PredictorExecutions.member = Shapes::ShapeRef.new(shape: PredictorExecution)

    PredictorSummary.add_member(:predictor_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "PredictorArn"))
    PredictorSummary.add_member(:predictor_name, Shapes::ShapeRef.new(shape: Name, location_name: "PredictorName"))
    PredictorSummary.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DatasetGroupArn"))
    PredictorSummary.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    PredictorSummary.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    PredictorSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    PredictorSummary.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModificationTime"))
    PredictorSummary.struct_class = Types::PredictorSummary

    Predictors.member = Shapes::ShapeRef.new(shape: PredictorSummary)

    ResourceAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3Config.add_member(:path, Shapes::ShapeRef.new(shape: S3Path, required: true, location_name: "Path"))
    S3Config.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoleArn"))
    S3Config.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KMSKeyArn, location_name: "KMSKeyArn"))
    S3Config.struct_class = Types::S3Config

    Schema.add_member(:attributes, Shapes::ShapeRef.new(shape: SchemaAttributes, location_name: "Attributes"))
    Schema.struct_class = Types::Schema

    SchemaAttribute.add_member(:attribute_name, Shapes::ShapeRef.new(shape: Name, location_name: "AttributeName"))
    SchemaAttribute.add_member(:attribute_type, Shapes::ShapeRef.new(shape: AttributeType, location_name: "AttributeType"))
    SchemaAttribute.struct_class = Types::SchemaAttribute

    SchemaAttributes.member = Shapes::ShapeRef.new(shape: SchemaAttribute)

    Statistics.add_member(:count, Shapes::ShapeRef.new(shape: Integer, location_name: "Count"))
    Statistics.add_member(:count_distinct, Shapes::ShapeRef.new(shape: Integer, location_name: "CountDistinct"))
    Statistics.add_member(:count_null, Shapes::ShapeRef.new(shape: Integer, location_name: "CountNull"))
    Statistics.add_member(:count_nan, Shapes::ShapeRef.new(shape: Integer, location_name: "CountNan"))
    Statistics.add_member(:min, Shapes::ShapeRef.new(shape: String, location_name: "Min"))
    Statistics.add_member(:max, Shapes::ShapeRef.new(shape: String, location_name: "Max"))
    Statistics.add_member(:avg, Shapes::ShapeRef.new(shape: Double, location_name: "Avg"))
    Statistics.add_member(:stddev, Shapes::ShapeRef.new(shape: Double, location_name: "Stddev"))
    Statistics.struct_class = Types::Statistics

    SupplementaryFeature.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    SupplementaryFeature.add_member(:value, Shapes::ShapeRef.new(shape: Value, required: true, location_name: "Value"))
    SupplementaryFeature.struct_class = Types::SupplementaryFeature

    SupplementaryFeatures.member = Shapes::ShapeRef.new(shape: SupplementaryFeature)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    TestWindowDetails.member = Shapes::ShapeRef.new(shape: TestWindowSummary)

    TestWindowSummary.add_member(:test_window_start, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TestWindowStart"))
    TestWindowSummary.add_member(:test_window_end, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TestWindowEnd"))
    TestWindowSummary.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    TestWindowSummary.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    TestWindowSummary.struct_class = Types::TestWindowSummary

    TestWindows.member = Shapes::ShapeRef.new(shape: WindowSummary)

    TrainingParameters.key = Shapes::ShapeRef.new(shape: ParameterKey)
    TrainingParameters.value = Shapes::ShapeRef.new(shape: ParameterValue)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateDatasetGroupRequest.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DatasetGroupArn"))
    UpdateDatasetGroupRequest.add_member(:dataset_arns, Shapes::ShapeRef.new(shape: ArnList, required: true, location_name: "DatasetArns"))
    UpdateDatasetGroupRequest.struct_class = Types::UpdateDatasetGroupRequest

    UpdateDatasetGroupResponse.struct_class = Types::UpdateDatasetGroupResponse

    Values.member = Shapes::ShapeRef.new(shape: Value)

    WeightedQuantileLoss.add_member(:quantile, Shapes::ShapeRef.new(shape: Double, location_name: "Quantile"))
    WeightedQuantileLoss.add_member(:loss_value, Shapes::ShapeRef.new(shape: Double, location_name: "LossValue"))
    WeightedQuantileLoss.struct_class = Types::WeightedQuantileLoss

    WeightedQuantileLosses.member = Shapes::ShapeRef.new(shape: WeightedQuantileLoss)

    WindowSummary.add_member(:test_window_start, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TestWindowStart"))
    WindowSummary.add_member(:test_window_end, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TestWindowEnd"))
    WindowSummary.add_member(:item_count, Shapes::ShapeRef.new(shape: Integer, location_name: "ItemCount"))
    WindowSummary.add_member(:evaluation_type, Shapes::ShapeRef.new(shape: EvaluationType, location_name: "EvaluationType"))
    WindowSummary.add_member(:metrics, Shapes::ShapeRef.new(shape: Metrics, location_name: "Metrics"))
    WindowSummary.struct_class = Types::WindowSummary


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-06-26"

      api.metadata = {
        "apiVersion" => "2018-06-26",
        "endpointPrefix" => "forecast",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon Forecast Service",
        "serviceId" => "forecast",
        "signatureVersion" => "v4",
        "signingName" => "forecast",
        "targetPrefix" => "AmazonForecast",
        "uid" => "forecast-2018-06-26",
      }

      api.add_operation(:create_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataset"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_dataset_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDatasetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDatasetGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDatasetGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_dataset_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDatasetImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDatasetImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDatasetImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_forecast, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateForecast"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateForecastRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateForecastResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_forecast_export_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateForecastExportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateForecastExportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateForecastExportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_predictor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePredictor"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePredictorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePredictorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:delete_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataset"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:delete_dataset_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDatasetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDatasetGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:delete_dataset_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDatasetImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDatasetImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:delete_forecast, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteForecast"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteForecastRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:delete_forecast_export_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteForecastExportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteForecastExportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:delete_predictor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePredictor"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePredictorRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:describe_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDataset"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_dataset_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDatasetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDatasetGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDatasetGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_dataset_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDatasetImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDatasetImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDatasetImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_forecast, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeForecast"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeForecastRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeForecastResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_forecast_export_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeForecastExportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeForecastExportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeForecastExportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_predictor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePredictor"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePredictorRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePredictorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_accuracy_metrics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccuracyMetrics"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAccuracyMetricsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccuracyMetricsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:list_dataset_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatasetGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDatasetGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatasetGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_dataset_import_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatasetImportJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDatasetImportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatasetImportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_datasets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatasets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDatasetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatasetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_forecast_export_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListForecastExportJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListForecastExportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListForecastExportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_forecasts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListForecasts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListForecastsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListForecastsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_predictors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPredictors"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPredictorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPredictorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:update_dataset_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDatasetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDatasetGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDatasetGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)
    end

  end
end
