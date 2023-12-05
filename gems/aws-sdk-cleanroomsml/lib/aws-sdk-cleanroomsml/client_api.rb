# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CleanRoomsML
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AudienceDestination = Shapes::StructureShape.new(name: 'AudienceDestination')
    AudienceExportJobList = Shapes::ListShape.new(name: 'AudienceExportJobList')
    AudienceExportJobStatus = Shapes::StringShape.new(name: 'AudienceExportJobStatus')
    AudienceExportJobSummary = Shapes::StructureShape.new(name: 'AudienceExportJobSummary')
    AudienceGenerationJobArn = Shapes::StringShape.new(name: 'AudienceGenerationJobArn')
    AudienceGenerationJobDataSource = Shapes::StructureShape.new(name: 'AudienceGenerationJobDataSource')
    AudienceGenerationJobList = Shapes::ListShape.new(name: 'AudienceGenerationJobList')
    AudienceGenerationJobStatus = Shapes::StringShape.new(name: 'AudienceGenerationJobStatus')
    AudienceGenerationJobSummary = Shapes::StructureShape.new(name: 'AudienceGenerationJobSummary')
    AudienceModelArn = Shapes::StringShape.new(name: 'AudienceModelArn')
    AudienceModelList = Shapes::ListShape.new(name: 'AudienceModelList')
    AudienceModelMetric = Shapes::StructureShape.new(name: 'AudienceModelMetric')
    AudienceModelMetricType = Shapes::StringShape.new(name: 'AudienceModelMetricType')
    AudienceModelMetrics = Shapes::ListShape.new(name: 'AudienceModelMetrics')
    AudienceModelStatus = Shapes::StringShape.new(name: 'AudienceModelStatus')
    AudienceModelSummary = Shapes::StructureShape.new(name: 'AudienceModelSummary')
    AudienceQualityMetrics = Shapes::StructureShape.new(name: 'AudienceQualityMetrics')
    AudienceSize = Shapes::StructureShape.new(name: 'AudienceSize')
    AudienceSizeBins = Shapes::ListShape.new(name: 'AudienceSizeBins')
    AudienceSizeConfig = Shapes::StructureShape.new(name: 'AudienceSizeConfig')
    AudienceSizeType = Shapes::StringShape.new(name: 'AudienceSizeType')
    AudienceSizeValue = Shapes::IntegerShape.new(name: 'AudienceSizeValue')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ColumnName = Shapes::StringShape.new(name: 'ColumnName')
    ColumnSchema = Shapes::StructureShape.new(name: 'ColumnSchema')
    ColumnType = Shapes::StringShape.new(name: 'ColumnType')
    ColumnTypeList = Shapes::ListShape.new(name: 'ColumnTypeList')
    ConfiguredAudienceModelArn = Shapes::StringShape.new(name: 'ConfiguredAudienceModelArn')
    ConfiguredAudienceModelList = Shapes::ListShape.new(name: 'ConfiguredAudienceModelList')
    ConfiguredAudienceModelOutputConfig = Shapes::StructureShape.new(name: 'ConfiguredAudienceModelOutputConfig')
    ConfiguredAudienceModelStatus = Shapes::StringShape.new(name: 'ConfiguredAudienceModelStatus')
    ConfiguredAudienceModelSummary = Shapes::StructureShape.new(name: 'ConfiguredAudienceModelSummary')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateAudienceModelRequest = Shapes::StructureShape.new(name: 'CreateAudienceModelRequest')
    CreateAudienceModelResponse = Shapes::StructureShape.new(name: 'CreateAudienceModelResponse')
    CreateConfiguredAudienceModelRequest = Shapes::StructureShape.new(name: 'CreateConfiguredAudienceModelRequest')
    CreateConfiguredAudienceModelResponse = Shapes::StructureShape.new(name: 'CreateConfiguredAudienceModelResponse')
    CreateTrainingDatasetRequest = Shapes::StructureShape.new(name: 'CreateTrainingDatasetRequest')
    CreateTrainingDatasetRequestTrainingDataList = Shapes::ListShape.new(name: 'CreateTrainingDatasetRequestTrainingDataList')
    CreateTrainingDatasetResponse = Shapes::StructureShape.new(name: 'CreateTrainingDatasetResponse')
    DataSource = Shapes::StructureShape.new(name: 'DataSource')
    Dataset = Shapes::StructureShape.new(name: 'Dataset')
    DatasetInputConfig = Shapes::StructureShape.new(name: 'DatasetInputConfig')
    DatasetInputConfigSchemaList = Shapes::ListShape.new(name: 'DatasetInputConfigSchemaList')
    DatasetList = Shapes::ListShape.new(name: 'DatasetList')
    DatasetType = Shapes::StringShape.new(name: 'DatasetType')
    DeleteAudienceGenerationJobRequest = Shapes::StructureShape.new(name: 'DeleteAudienceGenerationJobRequest')
    DeleteAudienceModelRequest = Shapes::StructureShape.new(name: 'DeleteAudienceModelRequest')
    DeleteConfiguredAudienceModelPolicyRequest = Shapes::StructureShape.new(name: 'DeleteConfiguredAudienceModelPolicyRequest')
    DeleteConfiguredAudienceModelRequest = Shapes::StructureShape.new(name: 'DeleteConfiguredAudienceModelRequest')
    DeleteTrainingDatasetRequest = Shapes::StructureShape.new(name: 'DeleteTrainingDatasetRequest')
    Double = Shapes::FloatShape.new(name: 'Double')
    GetAudienceGenerationJobRequest = Shapes::StructureShape.new(name: 'GetAudienceGenerationJobRequest')
    GetAudienceGenerationJobResponse = Shapes::StructureShape.new(name: 'GetAudienceGenerationJobResponse')
    GetAudienceModelRequest = Shapes::StructureShape.new(name: 'GetAudienceModelRequest')
    GetAudienceModelResponse = Shapes::StructureShape.new(name: 'GetAudienceModelResponse')
    GetConfiguredAudienceModelPolicyRequest = Shapes::StructureShape.new(name: 'GetConfiguredAudienceModelPolicyRequest')
    GetConfiguredAudienceModelPolicyResponse = Shapes::StructureShape.new(name: 'GetConfiguredAudienceModelPolicyResponse')
    GetConfiguredAudienceModelRequest = Shapes::StructureShape.new(name: 'GetConfiguredAudienceModelRequest')
    GetConfiguredAudienceModelResponse = Shapes::StructureShape.new(name: 'GetConfiguredAudienceModelResponse')
    GetTrainingDatasetRequest = Shapes::StructureShape.new(name: 'GetTrainingDatasetRequest')
    GetTrainingDatasetResponse = Shapes::StructureShape.new(name: 'GetTrainingDatasetResponse')
    GlueDataSource = Shapes::StructureShape.new(name: 'GlueDataSource')
    GlueDatabaseName = Shapes::StringShape.new(name: 'GlueDatabaseName')
    GlueTableName = Shapes::StringShape.new(name: 'GlueTableName')
    Hash = Shapes::StringShape.new(name: 'Hash')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    ListAudienceExportJobsRequest = Shapes::StructureShape.new(name: 'ListAudienceExportJobsRequest')
    ListAudienceExportJobsResponse = Shapes::StructureShape.new(name: 'ListAudienceExportJobsResponse')
    ListAudienceGenerationJobsRequest = Shapes::StructureShape.new(name: 'ListAudienceGenerationJobsRequest')
    ListAudienceGenerationJobsResponse = Shapes::StructureShape.new(name: 'ListAudienceGenerationJobsResponse')
    ListAudienceModelsRequest = Shapes::StructureShape.new(name: 'ListAudienceModelsRequest')
    ListAudienceModelsResponse = Shapes::StructureShape.new(name: 'ListAudienceModelsResponse')
    ListConfiguredAudienceModelsRequest = Shapes::StructureShape.new(name: 'ListConfiguredAudienceModelsRequest')
    ListConfiguredAudienceModelsResponse = Shapes::StructureShape.new(name: 'ListConfiguredAudienceModelsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTrainingDatasetsRequest = Shapes::StructureShape.new(name: 'ListTrainingDatasetsRequest')
    ListTrainingDatasetsResponse = Shapes::StructureShape.new(name: 'ListTrainingDatasetsResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MetricsList = Shapes::ListShape.new(name: 'MetricsList')
    MinMatchingSeedSize = Shapes::IntegerShape.new(name: 'MinMatchingSeedSize')
    NameString = Shapes::StringShape.new(name: 'NameString')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    PolicyExistenceCondition = Shapes::StringShape.new(name: 'PolicyExistenceCondition')
    PutConfiguredAudienceModelPolicyRequest = Shapes::StructureShape.new(name: 'PutConfiguredAudienceModelPolicyRequest')
    PutConfiguredAudienceModelPolicyResponse = Shapes::StructureShape.new(name: 'PutConfiguredAudienceModelPolicyResponse')
    RelevanceMetric = Shapes::StructureShape.new(name: 'RelevanceMetric')
    RelevanceMetrics = Shapes::ListShape.new(name: 'RelevanceMetrics')
    ResourceDescription = Shapes::StringShape.new(name: 'ResourceDescription')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourcePolicy = Shapes::StringShape.new(name: 'ResourcePolicy')
    S3ConfigMap = Shapes::StructureShape.new(name: 'S3ConfigMap')
    S3Path = Shapes::StringShape.new(name: 'S3Path')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SharedAudienceMetrics = Shapes::StringShape.new(name: 'SharedAudienceMetrics')
    StartAudienceExportJobRequest = Shapes::StructureShape.new(name: 'StartAudienceExportJobRequest')
    StartAudienceGenerationJobRequest = Shapes::StructureShape.new(name: 'StartAudienceGenerationJobRequest')
    StartAudienceGenerationJobResponse = Shapes::StructureShape.new(name: 'StartAudienceGenerationJobResponse')
    StatusDetails = Shapes::StructureShape.new(name: 'StatusDetails')
    String = Shapes::StringShape.new(name: 'String')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagOnCreatePolicy = Shapes::StringShape.new(name: 'TagOnCreatePolicy')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaggableArn = Shapes::StringShape.new(name: 'TaggableArn')
    TrainingDatasetArn = Shapes::StringShape.new(name: 'TrainingDatasetArn')
    TrainingDatasetList = Shapes::ListShape.new(name: 'TrainingDatasetList')
    TrainingDatasetStatus = Shapes::StringShape.new(name: 'TrainingDatasetStatus')
    TrainingDatasetSummary = Shapes::StructureShape.new(name: 'TrainingDatasetSummary')
    UUID = Shapes::StringShape.new(name: 'UUID')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateConfiguredAudienceModelRequest = Shapes::StructureShape.new(name: 'UpdateConfiguredAudienceModelRequest')
    UpdateConfiguredAudienceModelResponse = Shapes::StructureShape.new(name: 'UpdateConfiguredAudienceModelResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AudienceDestination.add_member(:s3_destination, Shapes::ShapeRef.new(shape: S3ConfigMap, required: true, location_name: "s3Destination"))
    AudienceDestination.struct_class = Types::AudienceDestination

    AudienceExportJobList.member = Shapes::ShapeRef.new(shape: AudienceExportJobSummary)

    AudienceExportJobSummary.add_member(:audience_generation_job_arn, Shapes::ShapeRef.new(shape: AudienceGenerationJobArn, required: true, location_name: "audienceGenerationJobArn"))
    AudienceExportJobSummary.add_member(:audience_size, Shapes::ShapeRef.new(shape: AudienceSize, required: true, location_name: "audienceSize"))
    AudienceExportJobSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    AudienceExportJobSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    AudienceExportJobSummary.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    AudienceExportJobSummary.add_member(:output_location, Shapes::ShapeRef.new(shape: S3Path, location_name: "outputLocation"))
    AudienceExportJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: AudienceExportJobStatus, required: true, location_name: "status"))
    AudienceExportJobSummary.add_member(:status_details, Shapes::ShapeRef.new(shape: StatusDetails, location_name: "statusDetails"))
    AudienceExportJobSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    AudienceExportJobSummary.struct_class = Types::AudienceExportJobSummary

    AudienceGenerationJobDataSource.add_member(:data_source, Shapes::ShapeRef.new(shape: S3ConfigMap, required: true, location_name: "dataSource"))
    AudienceGenerationJobDataSource.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "roleArn"))
    AudienceGenerationJobDataSource.struct_class = Types::AudienceGenerationJobDataSource

    AudienceGenerationJobList.member = Shapes::ShapeRef.new(shape: AudienceGenerationJobSummary)

    AudienceGenerationJobSummary.add_member(:audience_generation_job_arn, Shapes::ShapeRef.new(shape: AudienceGenerationJobArn, required: true, location_name: "audienceGenerationJobArn"))
    AudienceGenerationJobSummary.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, location_name: "collaborationId"))
    AudienceGenerationJobSummary.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location_name: "configuredAudienceModelArn"))
    AudienceGenerationJobSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    AudienceGenerationJobSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    AudienceGenerationJobSummary.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    AudienceGenerationJobSummary.add_member(:started_by, Shapes::ShapeRef.new(shape: AccountId, location_name: "startedBy"))
    AudienceGenerationJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: AudienceGenerationJobStatus, required: true, location_name: "status"))
    AudienceGenerationJobSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    AudienceGenerationJobSummary.struct_class = Types::AudienceGenerationJobSummary

    AudienceModelList.member = Shapes::ShapeRef.new(shape: AudienceModelSummary)

    AudienceModelMetric.add_member(:for_top_k_item_predictions, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "forTopKItemPredictions"))
    AudienceModelMetric.add_member(:type, Shapes::ShapeRef.new(shape: AudienceModelMetricType, required: true, location_name: "type"))
    AudienceModelMetric.add_member(:value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "value"))
    AudienceModelMetric.struct_class = Types::AudienceModelMetric

    AudienceModelMetrics.member = Shapes::ShapeRef.new(shape: AudienceModelMetric)

    AudienceModelSummary.add_member(:audience_model_arn, Shapes::ShapeRef.new(shape: AudienceModelArn, required: true, location_name: "audienceModelArn"))
    AudienceModelSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    AudienceModelSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    AudienceModelSummary.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    AudienceModelSummary.add_member(:status, Shapes::ShapeRef.new(shape: AudienceModelStatus, required: true, location_name: "status"))
    AudienceModelSummary.add_member(:training_dataset_arn, Shapes::ShapeRef.new(shape: TrainingDatasetArn, required: true, location_name: "trainingDatasetArn"))
    AudienceModelSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    AudienceModelSummary.struct_class = Types::AudienceModelSummary

    AudienceQualityMetrics.add_member(:relevance_metrics, Shapes::ShapeRef.new(shape: RelevanceMetrics, required: true, location_name: "relevanceMetrics"))
    AudienceQualityMetrics.struct_class = Types::AudienceQualityMetrics

    AudienceSize.add_member(:type, Shapes::ShapeRef.new(shape: AudienceSizeType, required: true, location_name: "type"))
    AudienceSize.add_member(:value, Shapes::ShapeRef.new(shape: AudienceSizeValue, required: true, location_name: "value"))
    AudienceSize.struct_class = Types::AudienceSize

    AudienceSizeBins.member = Shapes::ShapeRef.new(shape: AudienceSizeValue)

    AudienceSizeConfig.add_member(:audience_size_bins, Shapes::ShapeRef.new(shape: AudienceSizeBins, required: true, location_name: "audienceSizeBins"))
    AudienceSizeConfig.add_member(:audience_size_type, Shapes::ShapeRef.new(shape: AudienceSizeType, required: true, location_name: "audienceSizeType"))
    AudienceSizeConfig.struct_class = Types::AudienceSizeConfig

    ColumnSchema.add_member(:column_name, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "columnName"))
    ColumnSchema.add_member(:column_types, Shapes::ShapeRef.new(shape: ColumnTypeList, required: true, location_name: "columnTypes"))
    ColumnSchema.struct_class = Types::ColumnSchema

    ColumnTypeList.member = Shapes::ShapeRef.new(shape: ColumnType)

    ConfiguredAudienceModelList.member = Shapes::ShapeRef.new(shape: ConfiguredAudienceModelSummary)

    ConfiguredAudienceModelOutputConfig.add_member(:destination, Shapes::ShapeRef.new(shape: AudienceDestination, required: true, location_name: "destination"))
    ConfiguredAudienceModelOutputConfig.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "roleArn"))
    ConfiguredAudienceModelOutputConfig.struct_class = Types::ConfiguredAudienceModelOutputConfig

    ConfiguredAudienceModelSummary.add_member(:audience_model_arn, Shapes::ShapeRef.new(shape: AudienceModelArn, required: true, location_name: "audienceModelArn"))
    ConfiguredAudienceModelSummary.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location_name: "configuredAudienceModelArn"))
    ConfiguredAudienceModelSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    ConfiguredAudienceModelSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    ConfiguredAudienceModelSummary.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    ConfiguredAudienceModelSummary.add_member(:output_config, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelOutputConfig, required: true, location_name: "outputConfig"))
    ConfiguredAudienceModelSummary.add_member(:status, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelStatus, required: true, location_name: "status"))
    ConfiguredAudienceModelSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    ConfiguredAudienceModelSummary.struct_class = Types::ConfiguredAudienceModelSummary

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateAudienceModelRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateAudienceModelRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    CreateAudienceModelRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    CreateAudienceModelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateAudienceModelRequest.add_member(:training_data_end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "trainingDataEndTime"))
    CreateAudienceModelRequest.add_member(:training_data_start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "trainingDataStartTime"))
    CreateAudienceModelRequest.add_member(:training_dataset_arn, Shapes::ShapeRef.new(shape: TrainingDatasetArn, required: true, location_name: "trainingDatasetArn"))
    CreateAudienceModelRequest.struct_class = Types::CreateAudienceModelRequest

    CreateAudienceModelResponse.add_member(:audience_model_arn, Shapes::ShapeRef.new(shape: AudienceModelArn, required: true, location_name: "audienceModelArn"))
    CreateAudienceModelResponse.struct_class = Types::CreateAudienceModelResponse

    CreateConfiguredAudienceModelRequest.add_member(:audience_model_arn, Shapes::ShapeRef.new(shape: AudienceModelArn, required: true, location_name: "audienceModelArn"))
    CreateConfiguredAudienceModelRequest.add_member(:audience_size_config, Shapes::ShapeRef.new(shape: AudienceSizeConfig, location_name: "audienceSizeConfig"))
    CreateConfiguredAudienceModelRequest.add_member(:child_resource_tag_on_create_policy, Shapes::ShapeRef.new(shape: TagOnCreatePolicy, location_name: "childResourceTagOnCreatePolicy"))
    CreateConfiguredAudienceModelRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateConfiguredAudienceModelRequest.add_member(:min_matching_seed_size, Shapes::ShapeRef.new(shape: MinMatchingSeedSize, location_name: "minMatchingSeedSize"))
    CreateConfiguredAudienceModelRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    CreateConfiguredAudienceModelRequest.add_member(:output_config, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelOutputConfig, required: true, location_name: "outputConfig"))
    CreateConfiguredAudienceModelRequest.add_member(:shared_audience_metrics, Shapes::ShapeRef.new(shape: MetricsList, required: true, location_name: "sharedAudienceMetrics"))
    CreateConfiguredAudienceModelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateConfiguredAudienceModelRequest.struct_class = Types::CreateConfiguredAudienceModelRequest

    CreateConfiguredAudienceModelResponse.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location_name: "configuredAudienceModelArn"))
    CreateConfiguredAudienceModelResponse.struct_class = Types::CreateConfiguredAudienceModelResponse

    CreateTrainingDatasetRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateTrainingDatasetRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    CreateTrainingDatasetRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "roleArn"))
    CreateTrainingDatasetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateTrainingDatasetRequest.add_member(:training_data, Shapes::ShapeRef.new(shape: CreateTrainingDatasetRequestTrainingDataList, required: true, location_name: "trainingData"))
    CreateTrainingDatasetRequest.struct_class = Types::CreateTrainingDatasetRequest

    CreateTrainingDatasetRequestTrainingDataList.member = Shapes::ShapeRef.new(shape: Dataset)

    CreateTrainingDatasetResponse.add_member(:training_dataset_arn, Shapes::ShapeRef.new(shape: TrainingDatasetArn, required: true, location_name: "trainingDatasetArn"))
    CreateTrainingDatasetResponse.struct_class = Types::CreateTrainingDatasetResponse

    DataSource.add_member(:glue_data_source, Shapes::ShapeRef.new(shape: GlueDataSource, required: true, location_name: "glueDataSource"))
    DataSource.struct_class = Types::DataSource

    Dataset.add_member(:input_config, Shapes::ShapeRef.new(shape: DatasetInputConfig, required: true, location_name: "inputConfig"))
    Dataset.add_member(:type, Shapes::ShapeRef.new(shape: DatasetType, required: true, location_name: "type"))
    Dataset.struct_class = Types::Dataset

    DatasetInputConfig.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, required: true, location_name: "dataSource"))
    DatasetInputConfig.add_member(:schema, Shapes::ShapeRef.new(shape: DatasetInputConfigSchemaList, required: true, location_name: "schema"))
    DatasetInputConfig.struct_class = Types::DatasetInputConfig

    DatasetInputConfigSchemaList.member = Shapes::ShapeRef.new(shape: ColumnSchema)

    DatasetList.member = Shapes::ShapeRef.new(shape: Dataset)

    DeleteAudienceGenerationJobRequest.add_member(:audience_generation_job_arn, Shapes::ShapeRef.new(shape: AudienceGenerationJobArn, required: true, location: "uri", location_name: "audienceGenerationJobArn"))
    DeleteAudienceGenerationJobRequest.struct_class = Types::DeleteAudienceGenerationJobRequest

    DeleteAudienceModelRequest.add_member(:audience_model_arn, Shapes::ShapeRef.new(shape: AudienceModelArn, required: true, location: "uri", location_name: "audienceModelArn"))
    DeleteAudienceModelRequest.struct_class = Types::DeleteAudienceModelRequest

    DeleteConfiguredAudienceModelPolicyRequest.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location: "uri", location_name: "configuredAudienceModelArn"))
    DeleteConfiguredAudienceModelPolicyRequest.struct_class = Types::DeleteConfiguredAudienceModelPolicyRequest

    DeleteConfiguredAudienceModelRequest.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location: "uri", location_name: "configuredAudienceModelArn"))
    DeleteConfiguredAudienceModelRequest.struct_class = Types::DeleteConfiguredAudienceModelRequest

    DeleteTrainingDatasetRequest.add_member(:training_dataset_arn, Shapes::ShapeRef.new(shape: TrainingDatasetArn, required: true, location: "uri", location_name: "trainingDatasetArn"))
    DeleteTrainingDatasetRequest.struct_class = Types::DeleteTrainingDatasetRequest

    GetAudienceGenerationJobRequest.add_member(:audience_generation_job_arn, Shapes::ShapeRef.new(shape: AudienceGenerationJobArn, required: true, location: "uri", location_name: "audienceGenerationJobArn"))
    GetAudienceGenerationJobRequest.struct_class = Types::GetAudienceGenerationJobRequest

    GetAudienceGenerationJobResponse.add_member(:audience_generation_job_arn, Shapes::ShapeRef.new(shape: AudienceGenerationJobArn, required: true, location_name: "audienceGenerationJobArn"))
    GetAudienceGenerationJobResponse.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, location_name: "collaborationId"))
    GetAudienceGenerationJobResponse.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location_name: "configuredAudienceModelArn"))
    GetAudienceGenerationJobResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    GetAudienceGenerationJobResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetAudienceGenerationJobResponse.add_member(:include_seed_in_output, Shapes::ShapeRef.new(shape: Boolean, location_name: "includeSeedInOutput"))
    GetAudienceGenerationJobResponse.add_member(:metrics, Shapes::ShapeRef.new(shape: AudienceQualityMetrics, location_name: "metrics"))
    GetAudienceGenerationJobResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    GetAudienceGenerationJobResponse.add_member(:seed_audience, Shapes::ShapeRef.new(shape: AudienceGenerationJobDataSource, location_name: "seedAudience"))
    GetAudienceGenerationJobResponse.add_member(:started_by, Shapes::ShapeRef.new(shape: AccountId, location_name: "startedBy"))
    GetAudienceGenerationJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: AudienceGenerationJobStatus, required: true, location_name: "status"))
    GetAudienceGenerationJobResponse.add_member(:status_details, Shapes::ShapeRef.new(shape: StatusDetails, location_name: "statusDetails"))
    GetAudienceGenerationJobResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetAudienceGenerationJobResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    GetAudienceGenerationJobResponse.struct_class = Types::GetAudienceGenerationJobResponse

    GetAudienceModelRequest.add_member(:audience_model_arn, Shapes::ShapeRef.new(shape: AudienceModelArn, required: true, location: "uri", location_name: "audienceModelArn"))
    GetAudienceModelRequest.struct_class = Types::GetAudienceModelRequest

    GetAudienceModelResponse.add_member(:audience_model_arn, Shapes::ShapeRef.new(shape: AudienceModelArn, required: true, location_name: "audienceModelArn"))
    GetAudienceModelResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    GetAudienceModelResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetAudienceModelResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    GetAudienceModelResponse.add_member(:metrics, Shapes::ShapeRef.new(shape: AudienceModelMetrics, location_name: "metrics"))
    GetAudienceModelResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    GetAudienceModelResponse.add_member(:status, Shapes::ShapeRef.new(shape: AudienceModelStatus, required: true, location_name: "status"))
    GetAudienceModelResponse.add_member(:status_details, Shapes::ShapeRef.new(shape: StatusDetails, location_name: "statusDetails"))
    GetAudienceModelResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetAudienceModelResponse.add_member(:training_data_end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "trainingDataEndTime"))
    GetAudienceModelResponse.add_member(:training_data_start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "trainingDataStartTime"))
    GetAudienceModelResponse.add_member(:training_dataset_arn, Shapes::ShapeRef.new(shape: TrainingDatasetArn, required: true, location_name: "trainingDatasetArn"))
    GetAudienceModelResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    GetAudienceModelResponse.struct_class = Types::GetAudienceModelResponse

    GetConfiguredAudienceModelPolicyRequest.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location: "uri", location_name: "configuredAudienceModelArn"))
    GetConfiguredAudienceModelPolicyRequest.struct_class = Types::GetConfiguredAudienceModelPolicyRequest

    GetConfiguredAudienceModelPolicyResponse.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location_name: "configuredAudienceModelArn"))
    GetConfiguredAudienceModelPolicyResponse.add_member(:configured_audience_model_policy, Shapes::ShapeRef.new(shape: ResourcePolicy, required: true, location_name: "configuredAudienceModelPolicy"))
    GetConfiguredAudienceModelPolicyResponse.add_member(:policy_hash, Shapes::ShapeRef.new(shape: Hash, required: true, location_name: "policyHash"))
    GetConfiguredAudienceModelPolicyResponse.struct_class = Types::GetConfiguredAudienceModelPolicyResponse

    GetConfiguredAudienceModelRequest.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location: "uri", location_name: "configuredAudienceModelArn"))
    GetConfiguredAudienceModelRequest.struct_class = Types::GetConfiguredAudienceModelRequest

    GetConfiguredAudienceModelResponse.add_member(:audience_model_arn, Shapes::ShapeRef.new(shape: AudienceModelArn, required: true, location_name: "audienceModelArn"))
    GetConfiguredAudienceModelResponse.add_member(:audience_size_config, Shapes::ShapeRef.new(shape: AudienceSizeConfig, location_name: "audienceSizeConfig"))
    GetConfiguredAudienceModelResponse.add_member(:child_resource_tag_on_create_policy, Shapes::ShapeRef.new(shape: TagOnCreatePolicy, location_name: "childResourceTagOnCreatePolicy"))
    GetConfiguredAudienceModelResponse.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location_name: "configuredAudienceModelArn"))
    GetConfiguredAudienceModelResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    GetConfiguredAudienceModelResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetConfiguredAudienceModelResponse.add_member(:min_matching_seed_size, Shapes::ShapeRef.new(shape: MinMatchingSeedSize, location_name: "minMatchingSeedSize"))
    GetConfiguredAudienceModelResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    GetConfiguredAudienceModelResponse.add_member(:output_config, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelOutputConfig, required: true, location_name: "outputConfig"))
    GetConfiguredAudienceModelResponse.add_member(:shared_audience_metrics, Shapes::ShapeRef.new(shape: MetricsList, required: true, location_name: "sharedAudienceMetrics"))
    GetConfiguredAudienceModelResponse.add_member(:status, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelStatus, required: true, location_name: "status"))
    GetConfiguredAudienceModelResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetConfiguredAudienceModelResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    GetConfiguredAudienceModelResponse.struct_class = Types::GetConfiguredAudienceModelResponse

    GetTrainingDatasetRequest.add_member(:training_dataset_arn, Shapes::ShapeRef.new(shape: TrainingDatasetArn, required: true, location: "uri", location_name: "trainingDatasetArn"))
    GetTrainingDatasetRequest.struct_class = Types::GetTrainingDatasetRequest

    GetTrainingDatasetResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    GetTrainingDatasetResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetTrainingDatasetResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    GetTrainingDatasetResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "roleArn"))
    GetTrainingDatasetResponse.add_member(:status, Shapes::ShapeRef.new(shape: TrainingDatasetStatus, required: true, location_name: "status"))
    GetTrainingDatasetResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetTrainingDatasetResponse.add_member(:training_data, Shapes::ShapeRef.new(shape: DatasetList, required: true, location_name: "trainingData"))
    GetTrainingDatasetResponse.add_member(:training_dataset_arn, Shapes::ShapeRef.new(shape: TrainingDatasetArn, required: true, location_name: "trainingDatasetArn"))
    GetTrainingDatasetResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    GetTrainingDatasetResponse.struct_class = Types::GetTrainingDatasetResponse

    GlueDataSource.add_member(:catalog_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "catalogId"))
    GlueDataSource.add_member(:database_name, Shapes::ShapeRef.new(shape: GlueDatabaseName, required: true, location_name: "databaseName"))
    GlueDataSource.add_member(:table_name, Shapes::ShapeRef.new(shape: GlueTableName, required: true, location_name: "tableName"))
    GlueDataSource.struct_class = Types::GlueDataSource

    ListAudienceExportJobsRequest.add_member(:audience_generation_job_arn, Shapes::ShapeRef.new(shape: AudienceGenerationJobArn, location: "querystring", location_name: "audienceGenerationJobArn"))
    ListAudienceExportJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAudienceExportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAudienceExportJobsRequest.struct_class = Types::ListAudienceExportJobsRequest

    ListAudienceExportJobsResponse.add_member(:audience_export_jobs, Shapes::ShapeRef.new(shape: AudienceExportJobList, required: true, location_name: "audienceExportJobs"))
    ListAudienceExportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAudienceExportJobsResponse.struct_class = Types::ListAudienceExportJobsResponse

    ListAudienceGenerationJobsRequest.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, location: "querystring", location_name: "collaborationId"))
    ListAudienceGenerationJobsRequest.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, location: "querystring", location_name: "configuredAudienceModelArn"))
    ListAudienceGenerationJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAudienceGenerationJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAudienceGenerationJobsRequest.struct_class = Types::ListAudienceGenerationJobsRequest

    ListAudienceGenerationJobsResponse.add_member(:audience_generation_jobs, Shapes::ShapeRef.new(shape: AudienceGenerationJobList, required: true, location_name: "audienceGenerationJobs"))
    ListAudienceGenerationJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAudienceGenerationJobsResponse.struct_class = Types::ListAudienceGenerationJobsResponse

    ListAudienceModelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAudienceModelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAudienceModelsRequest.struct_class = Types::ListAudienceModelsRequest

    ListAudienceModelsResponse.add_member(:audience_models, Shapes::ShapeRef.new(shape: AudienceModelList, required: true, location_name: "audienceModels"))
    ListAudienceModelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAudienceModelsResponse.struct_class = Types::ListAudienceModelsResponse

    ListConfiguredAudienceModelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListConfiguredAudienceModelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListConfiguredAudienceModelsRequest.struct_class = Types::ListConfiguredAudienceModelsRequest

    ListConfiguredAudienceModelsResponse.add_member(:configured_audience_models, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelList, required: true, location_name: "configuredAudienceModels"))
    ListConfiguredAudienceModelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListConfiguredAudienceModelsResponse.struct_class = Types::ListConfiguredAudienceModelsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTrainingDatasetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTrainingDatasetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTrainingDatasetsRequest.struct_class = Types::ListTrainingDatasetsRequest

    ListTrainingDatasetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTrainingDatasetsResponse.add_member(:training_datasets, Shapes::ShapeRef.new(shape: TrainingDatasetList, required: true, location_name: "trainingDatasets"))
    ListTrainingDatasetsResponse.struct_class = Types::ListTrainingDatasetsResponse

    MetricsList.member = Shapes::ShapeRef.new(shape: SharedAudienceMetrics)

    PutConfiguredAudienceModelPolicyRequest.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location: "uri", location_name: "configuredAudienceModelArn"))
    PutConfiguredAudienceModelPolicyRequest.add_member(:configured_audience_model_policy, Shapes::ShapeRef.new(shape: ResourcePolicy, required: true, location_name: "configuredAudienceModelPolicy"))
    PutConfiguredAudienceModelPolicyRequest.add_member(:policy_existence_condition, Shapes::ShapeRef.new(shape: PolicyExistenceCondition, location_name: "policyExistenceCondition"))
    PutConfiguredAudienceModelPolicyRequest.add_member(:previous_policy_hash, Shapes::ShapeRef.new(shape: Hash, location_name: "previousPolicyHash"))
    PutConfiguredAudienceModelPolicyRequest.struct_class = Types::PutConfiguredAudienceModelPolicyRequest

    PutConfiguredAudienceModelPolicyResponse.add_member(:configured_audience_model_policy, Shapes::ShapeRef.new(shape: ResourcePolicy, required: true, location_name: "configuredAudienceModelPolicy"))
    PutConfiguredAudienceModelPolicyResponse.add_member(:policy_hash, Shapes::ShapeRef.new(shape: Hash, required: true, location_name: "policyHash"))
    PutConfiguredAudienceModelPolicyResponse.struct_class = Types::PutConfiguredAudienceModelPolicyResponse

    RelevanceMetric.add_member(:audience_size, Shapes::ShapeRef.new(shape: AudienceSize, required: true, location_name: "audienceSize"))
    RelevanceMetric.add_member(:score, Shapes::ShapeRef.new(shape: Double, location_name: "score"))
    RelevanceMetric.struct_class = Types::RelevanceMetric

    RelevanceMetrics.member = Shapes::ShapeRef.new(shape: RelevanceMetric)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3ConfigMap.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Path, required: true, location_name: "s3Uri"))
    S3ConfigMap.struct_class = Types::S3ConfigMap

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartAudienceExportJobRequest.add_member(:audience_generation_job_arn, Shapes::ShapeRef.new(shape: AudienceGenerationJobArn, required: true, location_name: "audienceGenerationJobArn"))
    StartAudienceExportJobRequest.add_member(:audience_size, Shapes::ShapeRef.new(shape: AudienceSize, required: true, location_name: "audienceSize"))
    StartAudienceExportJobRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    StartAudienceExportJobRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    StartAudienceExportJobRequest.struct_class = Types::StartAudienceExportJobRequest

    StartAudienceGenerationJobRequest.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, location_name: "collaborationId"))
    StartAudienceGenerationJobRequest.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location_name: "configuredAudienceModelArn"))
    StartAudienceGenerationJobRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    StartAudienceGenerationJobRequest.add_member(:include_seed_in_output, Shapes::ShapeRef.new(shape: Boolean, location_name: "includeSeedInOutput"))
    StartAudienceGenerationJobRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    StartAudienceGenerationJobRequest.add_member(:seed_audience, Shapes::ShapeRef.new(shape: AudienceGenerationJobDataSource, required: true, location_name: "seedAudience"))
    StartAudienceGenerationJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    StartAudienceGenerationJobRequest.struct_class = Types::StartAudienceGenerationJobRequest

    StartAudienceGenerationJobResponse.add_member(:audience_generation_job_arn, Shapes::ShapeRef.new(shape: AudienceGenerationJobArn, required: true, location_name: "audienceGenerationJobArn"))
    StartAudienceGenerationJobResponse.struct_class = Types::StartAudienceGenerationJobResponse

    StatusDetails.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    StatusDetails.add_member(:status_code, Shapes::ShapeRef.new(shape: String, location_name: "statusCode"))
    StatusDetails.struct_class = Types::StatusDetails

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TrainingDatasetList.member = Shapes::ShapeRef.new(shape: TrainingDatasetSummary)

    TrainingDatasetSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    TrainingDatasetSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    TrainingDatasetSummary.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    TrainingDatasetSummary.add_member(:status, Shapes::ShapeRef.new(shape: TrainingDatasetStatus, required: true, location_name: "status"))
    TrainingDatasetSummary.add_member(:training_dataset_arn, Shapes::ShapeRef.new(shape: TrainingDatasetArn, required: true, location_name: "trainingDatasetArn"))
    TrainingDatasetSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    TrainingDatasetSummary.struct_class = Types::TrainingDatasetSummary

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateConfiguredAudienceModelRequest.add_member(:audience_model_arn, Shapes::ShapeRef.new(shape: AudienceModelArn, location_name: "audienceModelArn"))
    UpdateConfiguredAudienceModelRequest.add_member(:audience_size_config, Shapes::ShapeRef.new(shape: AudienceSizeConfig, location_name: "audienceSizeConfig"))
    UpdateConfiguredAudienceModelRequest.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location: "uri", location_name: "configuredAudienceModelArn"))
    UpdateConfiguredAudienceModelRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    UpdateConfiguredAudienceModelRequest.add_member(:min_matching_seed_size, Shapes::ShapeRef.new(shape: MinMatchingSeedSize, location_name: "minMatchingSeedSize"))
    UpdateConfiguredAudienceModelRequest.add_member(:output_config, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelOutputConfig, location_name: "outputConfig"))
    UpdateConfiguredAudienceModelRequest.add_member(:shared_audience_metrics, Shapes::ShapeRef.new(shape: MetricsList, location_name: "sharedAudienceMetrics"))
    UpdateConfiguredAudienceModelRequest.struct_class = Types::UpdateConfiguredAudienceModelRequest

    UpdateConfiguredAudienceModelResponse.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location_name: "configuredAudienceModelArn"))
    UpdateConfiguredAudienceModelResponse.struct_class = Types::UpdateConfiguredAudienceModelResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-09-06"

      api.metadata = {
        "apiVersion" => "2023-09-06",
        "endpointPrefix" => "cleanrooms-ml",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Clean Rooms ML",
        "serviceId" => "CleanRoomsML",
        "signatureVersion" => "v4",
        "signingName" => "cleanrooms-ml",
        "uid" => "cleanroomsml-2023-09-06",
      }

      api.add_operation(:create_audience_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAudienceModel"
        o.http_method = "POST"
        o.http_request_uri = "/audience-model"
        o.input = Shapes::ShapeRef.new(shape: CreateAudienceModelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAudienceModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_configured_audience_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConfiguredAudienceModel"
        o.http_method = "POST"
        o.http_request_uri = "/configured-audience-model"
        o.input = Shapes::ShapeRef.new(shape: CreateConfiguredAudienceModelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConfiguredAudienceModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_training_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTrainingDataset"
        o.http_method = "POST"
        o.http_request_uri = "/training-dataset"
        o.input = Shapes::ShapeRef.new(shape: CreateTrainingDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTrainingDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_audience_generation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAudienceGenerationJob"
        o.http_method = "DELETE"
        o.http_request_uri = "/audience-generation-job/{audienceGenerationJobArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAudienceGenerationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_audience_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAudienceModel"
        o.http_method = "DELETE"
        o.http_request_uri = "/audience-model/{audienceModelArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAudienceModelRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_configured_audience_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConfiguredAudienceModel"
        o.http_method = "DELETE"
        o.http_request_uri = "/configured-audience-model/{configuredAudienceModelArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteConfiguredAudienceModelRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_configured_audience_model_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConfiguredAudienceModelPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/configured-audience-model/{configuredAudienceModelArn}/policy"
        o.input = Shapes::ShapeRef.new(shape: DeleteConfiguredAudienceModelPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_training_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTrainingDataset"
        o.http_method = "DELETE"
        o.http_request_uri = "/training-dataset/{trainingDatasetArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTrainingDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_audience_generation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAudienceGenerationJob"
        o.http_method = "GET"
        o.http_request_uri = "/audience-generation-job/{audienceGenerationJobArn}"
        o.input = Shapes::ShapeRef.new(shape: GetAudienceGenerationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAudienceGenerationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_audience_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAudienceModel"
        o.http_method = "GET"
        o.http_request_uri = "/audience-model/{audienceModelArn}"
        o.input = Shapes::ShapeRef.new(shape: GetAudienceModelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAudienceModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_configured_audience_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConfiguredAudienceModel"
        o.http_method = "GET"
        o.http_request_uri = "/configured-audience-model/{configuredAudienceModelArn}"
        o.input = Shapes::ShapeRef.new(shape: GetConfiguredAudienceModelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConfiguredAudienceModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_configured_audience_model_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConfiguredAudienceModelPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/configured-audience-model/{configuredAudienceModelArn}/policy"
        o.input = Shapes::ShapeRef.new(shape: GetConfiguredAudienceModelPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConfiguredAudienceModelPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_training_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTrainingDataset"
        o.http_method = "GET"
        o.http_request_uri = "/training-dataset/{trainingDatasetArn}"
        o.input = Shapes::ShapeRef.new(shape: GetTrainingDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTrainingDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_audience_export_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAudienceExportJobs"
        o.http_method = "GET"
        o.http_request_uri = "/audience-export-job"
        o.input = Shapes::ShapeRef.new(shape: ListAudienceExportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAudienceExportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_audience_generation_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAudienceGenerationJobs"
        o.http_method = "GET"
        o.http_request_uri = "/audience-generation-job"
        o.input = Shapes::ShapeRef.new(shape: ListAudienceGenerationJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAudienceGenerationJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_audience_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAudienceModels"
        o.http_method = "GET"
        o.http_request_uri = "/audience-model"
        o.input = Shapes::ShapeRef.new(shape: ListAudienceModelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAudienceModelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_configured_audience_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConfiguredAudienceModels"
        o.http_method = "GET"
        o.http_request_uri = "/configured-audience-model"
        o.input = Shapes::ShapeRef.new(shape: ListConfiguredAudienceModelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConfiguredAudienceModelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_training_datasets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTrainingDatasets"
        o.http_method = "GET"
        o.http_request_uri = "/training-dataset"
        o.input = Shapes::ShapeRef.new(shape: ListTrainingDatasetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTrainingDatasetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_configured_audience_model_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutConfiguredAudienceModelPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/configured-audience-model/{configuredAudienceModelArn}/policy"
        o.input = Shapes::ShapeRef.new(shape: PutConfiguredAudienceModelPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutConfiguredAudienceModelPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_audience_export_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartAudienceExportJob"
        o.http_method = "POST"
        o.http_request_uri = "/audience-export-job"
        o.input = Shapes::ShapeRef.new(shape: StartAudienceExportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:start_audience_generation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartAudienceGenerationJob"
        o.http_method = "POST"
        o.http_request_uri = "/audience-generation-job"
        o.input = Shapes::ShapeRef.new(shape: StartAudienceGenerationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartAudienceGenerationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_configured_audience_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConfiguredAudienceModel"
        o.http_method = "PATCH"
        o.http_request_uri = "/configured-audience-model/{configuredAudienceModelArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateConfiguredAudienceModelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateConfiguredAudienceModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
