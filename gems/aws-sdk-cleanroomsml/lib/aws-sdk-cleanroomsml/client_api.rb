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
    AccountIdList = Shapes::ListShape.new(name: 'AccountIdList')
    AlgorithmImage = Shapes::StringShape.new(name: 'AlgorithmImage')
    AnalysisTemplateArn = Shapes::StringShape.new(name: 'AnalysisTemplateArn')
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
    AudienceModelStatus = Shapes::StringShape.new(name: 'AudienceModelStatus')
    AudienceModelSummary = Shapes::StructureShape.new(name: 'AudienceModelSummary')
    AudienceQualityMetrics = Shapes::StructureShape.new(name: 'AudienceQualityMetrics')
    AudienceQualityMetricsRecallMetricDouble = Shapes::FloatShape.new(name: 'AudienceQualityMetricsRecallMetricDouble')
    AudienceSize = Shapes::StructureShape.new(name: 'AudienceSize')
    AudienceSizeBins = Shapes::ListShape.new(name: 'AudienceSizeBins')
    AudienceSizeConfig = Shapes::StructureShape.new(name: 'AudienceSizeConfig')
    AudienceSizeType = Shapes::StringShape.new(name: 'AudienceSizeType')
    AudienceSizeValue = Shapes::IntegerShape.new(name: 'AudienceSizeValue')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CancelTrainedModelInferenceJobRequest = Shapes::StructureShape.new(name: 'CancelTrainedModelInferenceJobRequest')
    CancelTrainedModelRequest = Shapes::StructureShape.new(name: 'CancelTrainedModelRequest')
    CollaborationConfiguredModelAlgorithmAssociationList = Shapes::ListShape.new(name: 'CollaborationConfiguredModelAlgorithmAssociationList')
    CollaborationConfiguredModelAlgorithmAssociationSummary = Shapes::StructureShape.new(name: 'CollaborationConfiguredModelAlgorithmAssociationSummary')
    CollaborationMLInputChannelSummary = Shapes::StructureShape.new(name: 'CollaborationMLInputChannelSummary')
    CollaborationMLInputChannelSummaryConfiguredModelAlgorithmAssociationsList = Shapes::ListShape.new(name: 'CollaborationMLInputChannelSummaryConfiguredModelAlgorithmAssociationsList')
    CollaborationMLInputChannelsList = Shapes::ListShape.new(name: 'CollaborationMLInputChannelsList')
    CollaborationTrainedModelExportJobList = Shapes::ListShape.new(name: 'CollaborationTrainedModelExportJobList')
    CollaborationTrainedModelExportJobSummary = Shapes::StructureShape.new(name: 'CollaborationTrainedModelExportJobSummary')
    CollaborationTrainedModelInferenceJobList = Shapes::ListShape.new(name: 'CollaborationTrainedModelInferenceJobList')
    CollaborationTrainedModelInferenceJobSummary = Shapes::StructureShape.new(name: 'CollaborationTrainedModelInferenceJobSummary')
    CollaborationTrainedModelList = Shapes::ListShape.new(name: 'CollaborationTrainedModelList')
    CollaborationTrainedModelSummary = Shapes::StructureShape.new(name: 'CollaborationTrainedModelSummary')
    ColumnName = Shapes::StringShape.new(name: 'ColumnName')
    ColumnSchema = Shapes::StructureShape.new(name: 'ColumnSchema')
    ColumnType = Shapes::StringShape.new(name: 'ColumnType')
    ColumnTypeList = Shapes::ListShape.new(name: 'ColumnTypeList')
    ComputeConfiguration = Shapes::UnionShape.new(name: 'ComputeConfiguration')
    ConfiguredAudienceModelArn = Shapes::StringShape.new(name: 'ConfiguredAudienceModelArn')
    ConfiguredAudienceModelList = Shapes::ListShape.new(name: 'ConfiguredAudienceModelList')
    ConfiguredAudienceModelOutputConfig = Shapes::StructureShape.new(name: 'ConfiguredAudienceModelOutputConfig')
    ConfiguredAudienceModelStatus = Shapes::StringShape.new(name: 'ConfiguredAudienceModelStatus')
    ConfiguredAudienceModelSummary = Shapes::StructureShape.new(name: 'ConfiguredAudienceModelSummary')
    ConfiguredModelAlgorithmArn = Shapes::StringShape.new(name: 'ConfiguredModelAlgorithmArn')
    ConfiguredModelAlgorithmAssociationArn = Shapes::StringShape.new(name: 'ConfiguredModelAlgorithmAssociationArn')
    ConfiguredModelAlgorithmAssociationList = Shapes::ListShape.new(name: 'ConfiguredModelAlgorithmAssociationList')
    ConfiguredModelAlgorithmAssociationSummary = Shapes::StructureShape.new(name: 'ConfiguredModelAlgorithmAssociationSummary')
    ConfiguredModelAlgorithmList = Shapes::ListShape.new(name: 'ConfiguredModelAlgorithmList')
    ConfiguredModelAlgorithmSummary = Shapes::StructureShape.new(name: 'ConfiguredModelAlgorithmSummary')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContainerArgument = Shapes::StringShape.new(name: 'ContainerArgument')
    ContainerArguments = Shapes::ListShape.new(name: 'ContainerArguments')
    ContainerConfig = Shapes::StructureShape.new(name: 'ContainerConfig')
    ContainerEntrypoint = Shapes::ListShape.new(name: 'ContainerEntrypoint')
    ContainerEntrypointString = Shapes::StringShape.new(name: 'ContainerEntrypointString')
    CreateAudienceModelRequest = Shapes::StructureShape.new(name: 'CreateAudienceModelRequest')
    CreateAudienceModelResponse = Shapes::StructureShape.new(name: 'CreateAudienceModelResponse')
    CreateConfiguredAudienceModelRequest = Shapes::StructureShape.new(name: 'CreateConfiguredAudienceModelRequest')
    CreateConfiguredAudienceModelResponse = Shapes::StructureShape.new(name: 'CreateConfiguredAudienceModelResponse')
    CreateConfiguredModelAlgorithmAssociationRequest = Shapes::StructureShape.new(name: 'CreateConfiguredModelAlgorithmAssociationRequest')
    CreateConfiguredModelAlgorithmAssociationResponse = Shapes::StructureShape.new(name: 'CreateConfiguredModelAlgorithmAssociationResponse')
    CreateConfiguredModelAlgorithmRequest = Shapes::StructureShape.new(name: 'CreateConfiguredModelAlgorithmRequest')
    CreateConfiguredModelAlgorithmResponse = Shapes::StructureShape.new(name: 'CreateConfiguredModelAlgorithmResponse')
    CreateMLInputChannelRequest = Shapes::StructureShape.new(name: 'CreateMLInputChannelRequest')
    CreateMLInputChannelRequestConfiguredModelAlgorithmAssociationsList = Shapes::ListShape.new(name: 'CreateMLInputChannelRequestConfiguredModelAlgorithmAssociationsList')
    CreateMLInputChannelRequestRetentionInDaysInteger = Shapes::IntegerShape.new(name: 'CreateMLInputChannelRequestRetentionInDaysInteger')
    CreateMLInputChannelResponse = Shapes::StructureShape.new(name: 'CreateMLInputChannelResponse')
    CreateTrainedModelRequest = Shapes::StructureShape.new(name: 'CreateTrainedModelRequest')
    CreateTrainedModelResponse = Shapes::StructureShape.new(name: 'CreateTrainedModelResponse')
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
    DeleteConfiguredModelAlgorithmAssociationRequest = Shapes::StructureShape.new(name: 'DeleteConfiguredModelAlgorithmAssociationRequest')
    DeleteConfiguredModelAlgorithmRequest = Shapes::StructureShape.new(name: 'DeleteConfiguredModelAlgorithmRequest')
    DeleteMLConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteMLConfigurationRequest')
    DeleteMLInputChannelDataRequest = Shapes::StructureShape.new(name: 'DeleteMLInputChannelDataRequest')
    DeleteTrainedModelOutputRequest = Shapes::StructureShape.new(name: 'DeleteTrainedModelOutputRequest')
    DeleteTrainingDatasetRequest = Shapes::StructureShape.new(name: 'DeleteTrainingDatasetRequest')
    Destination = Shapes::StructureShape.new(name: 'Destination')
    Environment = Shapes::MapShape.new(name: 'Environment')
    EnvironmentKeyString = Shapes::StringShape.new(name: 'EnvironmentKeyString')
    EnvironmentValueString = Shapes::StringShape.new(name: 'EnvironmentValueString')
    GetAudienceGenerationJobRequest = Shapes::StructureShape.new(name: 'GetAudienceGenerationJobRequest')
    GetAudienceGenerationJobResponse = Shapes::StructureShape.new(name: 'GetAudienceGenerationJobResponse')
    GetAudienceModelRequest = Shapes::StructureShape.new(name: 'GetAudienceModelRequest')
    GetAudienceModelResponse = Shapes::StructureShape.new(name: 'GetAudienceModelResponse')
    GetCollaborationConfiguredModelAlgorithmAssociationRequest = Shapes::StructureShape.new(name: 'GetCollaborationConfiguredModelAlgorithmAssociationRequest')
    GetCollaborationConfiguredModelAlgorithmAssociationResponse = Shapes::StructureShape.new(name: 'GetCollaborationConfiguredModelAlgorithmAssociationResponse')
    GetCollaborationMLInputChannelRequest = Shapes::StructureShape.new(name: 'GetCollaborationMLInputChannelRequest')
    GetCollaborationMLInputChannelResponse = Shapes::StructureShape.new(name: 'GetCollaborationMLInputChannelResponse')
    GetCollaborationMLInputChannelResponseConfiguredModelAlgorithmAssociationsList = Shapes::ListShape.new(name: 'GetCollaborationMLInputChannelResponseConfiguredModelAlgorithmAssociationsList')
    GetCollaborationMLInputChannelResponseNumberOfRecordsLong = Shapes::IntegerShape.new(name: 'GetCollaborationMLInputChannelResponseNumberOfRecordsLong')
    GetCollaborationMLInputChannelResponseRetentionInDaysInteger = Shapes::IntegerShape.new(name: 'GetCollaborationMLInputChannelResponseRetentionInDaysInteger')
    GetCollaborationTrainedModelRequest = Shapes::StructureShape.new(name: 'GetCollaborationTrainedModelRequest')
    GetCollaborationTrainedModelResponse = Shapes::StructureShape.new(name: 'GetCollaborationTrainedModelResponse')
    GetConfiguredAudienceModelPolicyRequest = Shapes::StructureShape.new(name: 'GetConfiguredAudienceModelPolicyRequest')
    GetConfiguredAudienceModelPolicyResponse = Shapes::StructureShape.new(name: 'GetConfiguredAudienceModelPolicyResponse')
    GetConfiguredAudienceModelRequest = Shapes::StructureShape.new(name: 'GetConfiguredAudienceModelRequest')
    GetConfiguredAudienceModelResponse = Shapes::StructureShape.new(name: 'GetConfiguredAudienceModelResponse')
    GetConfiguredModelAlgorithmAssociationRequest = Shapes::StructureShape.new(name: 'GetConfiguredModelAlgorithmAssociationRequest')
    GetConfiguredModelAlgorithmAssociationResponse = Shapes::StructureShape.new(name: 'GetConfiguredModelAlgorithmAssociationResponse')
    GetConfiguredModelAlgorithmRequest = Shapes::StructureShape.new(name: 'GetConfiguredModelAlgorithmRequest')
    GetConfiguredModelAlgorithmResponse = Shapes::StructureShape.new(name: 'GetConfiguredModelAlgorithmResponse')
    GetMLConfigurationRequest = Shapes::StructureShape.new(name: 'GetMLConfigurationRequest')
    GetMLConfigurationResponse = Shapes::StructureShape.new(name: 'GetMLConfigurationResponse')
    GetMLInputChannelRequest = Shapes::StructureShape.new(name: 'GetMLInputChannelRequest')
    GetMLInputChannelResponse = Shapes::StructureShape.new(name: 'GetMLInputChannelResponse')
    GetMLInputChannelResponseConfiguredModelAlgorithmAssociationsList = Shapes::ListShape.new(name: 'GetMLInputChannelResponseConfiguredModelAlgorithmAssociationsList')
    GetMLInputChannelResponseNumberOfFilesDouble = Shapes::FloatShape.new(name: 'GetMLInputChannelResponseNumberOfFilesDouble')
    GetMLInputChannelResponseNumberOfRecordsLong = Shapes::IntegerShape.new(name: 'GetMLInputChannelResponseNumberOfRecordsLong')
    GetMLInputChannelResponseRetentionInDaysInteger = Shapes::IntegerShape.new(name: 'GetMLInputChannelResponseRetentionInDaysInteger')
    GetMLInputChannelResponseSizeInGbDouble = Shapes::FloatShape.new(name: 'GetMLInputChannelResponseSizeInGbDouble')
    GetTrainedModelInferenceJobRequest = Shapes::StructureShape.new(name: 'GetTrainedModelInferenceJobRequest')
    GetTrainedModelInferenceJobResponse = Shapes::StructureShape.new(name: 'GetTrainedModelInferenceJobResponse')
    GetTrainedModelRequest = Shapes::StructureShape.new(name: 'GetTrainedModelRequest')
    GetTrainedModelResponse = Shapes::StructureShape.new(name: 'GetTrainedModelResponse')
    GetTrainingDatasetRequest = Shapes::StructureShape.new(name: 'GetTrainingDatasetRequest')
    GetTrainingDatasetResponse = Shapes::StructureShape.new(name: 'GetTrainingDatasetResponse')
    GlueDataSource = Shapes::StructureShape.new(name: 'GlueDataSource')
    GlueDatabaseName = Shapes::StringShape.new(name: 'GlueDatabaseName')
    GlueTableName = Shapes::StringShape.new(name: 'GlueTableName')
    Hash = Shapes::StringShape.new(name: 'Hash')
    HyperParameters = Shapes::MapShape.new(name: 'HyperParameters')
    HyperParametersKeyString = Shapes::StringShape.new(name: 'HyperParametersKeyString')
    HyperParametersValueString = Shapes::StringShape.new(name: 'HyperParametersValueString')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    IncrementalTrainingDataChannel = Shapes::StructureShape.new(name: 'IncrementalTrainingDataChannel')
    IncrementalTrainingDataChannelOutput = Shapes::StructureShape.new(name: 'IncrementalTrainingDataChannelOutput')
    IncrementalTrainingDataChannels = Shapes::ListShape.new(name: 'IncrementalTrainingDataChannels')
    IncrementalTrainingDataChannelsOutput = Shapes::ListShape.new(name: 'IncrementalTrainingDataChannelsOutput')
    InferenceContainerConfig = Shapes::StructureShape.new(name: 'InferenceContainerConfig')
    InferenceContainerExecutionParameters = Shapes::StructureShape.new(name: 'InferenceContainerExecutionParameters')
    InferenceContainerExecutionParametersMaxPayloadInMBInteger = Shapes::IntegerShape.new(name: 'InferenceContainerExecutionParametersMaxPayloadInMBInteger')
    InferenceEnvironmentMap = Shapes::MapShape.new(name: 'InferenceEnvironmentMap')
    InferenceEnvironmentMapKeyString = Shapes::StringShape.new(name: 'InferenceEnvironmentMapKeyString')
    InferenceEnvironmentMapValueString = Shapes::StringShape.new(name: 'InferenceEnvironmentMapValueString')
    InferenceInstanceType = Shapes::StringShape.new(name: 'InferenceInstanceType')
    InferenceOutputConfiguration = Shapes::StructureShape.new(name: 'InferenceOutputConfiguration')
    InferenceOutputConfigurationAcceptString = Shapes::StringShape.new(name: 'InferenceOutputConfigurationAcceptString')
    InferenceReceiverMember = Shapes::StructureShape.new(name: 'InferenceReceiverMember')
    InferenceReceiverMembers = Shapes::ListShape.new(name: 'InferenceReceiverMembers')
    InferenceResourceConfig = Shapes::StructureShape.new(name: 'InferenceResourceConfig')
    InferenceResourceConfigInstanceCountInteger = Shapes::IntegerShape.new(name: 'InferenceResourceConfigInstanceCountInteger')
    InputChannel = Shapes::StructureShape.new(name: 'InputChannel')
    InputChannelDataSource = Shapes::UnionShape.new(name: 'InputChannelDataSource')
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    InternalServiceException = Shapes::StructureShape.new(name: 'InternalServiceException')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    ListAudienceExportJobsRequest = Shapes::StructureShape.new(name: 'ListAudienceExportJobsRequest')
    ListAudienceExportJobsResponse = Shapes::StructureShape.new(name: 'ListAudienceExportJobsResponse')
    ListAudienceGenerationJobsRequest = Shapes::StructureShape.new(name: 'ListAudienceGenerationJobsRequest')
    ListAudienceGenerationJobsResponse = Shapes::StructureShape.new(name: 'ListAudienceGenerationJobsResponse')
    ListAudienceModelsRequest = Shapes::StructureShape.new(name: 'ListAudienceModelsRequest')
    ListAudienceModelsResponse = Shapes::StructureShape.new(name: 'ListAudienceModelsResponse')
    ListCollaborationConfiguredModelAlgorithmAssociationsRequest = Shapes::StructureShape.new(name: 'ListCollaborationConfiguredModelAlgorithmAssociationsRequest')
    ListCollaborationConfiguredModelAlgorithmAssociationsResponse = Shapes::StructureShape.new(name: 'ListCollaborationConfiguredModelAlgorithmAssociationsResponse')
    ListCollaborationMLInputChannelsRequest = Shapes::StructureShape.new(name: 'ListCollaborationMLInputChannelsRequest')
    ListCollaborationMLInputChannelsResponse = Shapes::StructureShape.new(name: 'ListCollaborationMLInputChannelsResponse')
    ListCollaborationTrainedModelExportJobsRequest = Shapes::StructureShape.new(name: 'ListCollaborationTrainedModelExportJobsRequest')
    ListCollaborationTrainedModelExportJobsResponse = Shapes::StructureShape.new(name: 'ListCollaborationTrainedModelExportJobsResponse')
    ListCollaborationTrainedModelInferenceJobsRequest = Shapes::StructureShape.new(name: 'ListCollaborationTrainedModelInferenceJobsRequest')
    ListCollaborationTrainedModelInferenceJobsResponse = Shapes::StructureShape.new(name: 'ListCollaborationTrainedModelInferenceJobsResponse')
    ListCollaborationTrainedModelsRequest = Shapes::StructureShape.new(name: 'ListCollaborationTrainedModelsRequest')
    ListCollaborationTrainedModelsResponse = Shapes::StructureShape.new(name: 'ListCollaborationTrainedModelsResponse')
    ListConfiguredAudienceModelsRequest = Shapes::StructureShape.new(name: 'ListConfiguredAudienceModelsRequest')
    ListConfiguredAudienceModelsResponse = Shapes::StructureShape.new(name: 'ListConfiguredAudienceModelsResponse')
    ListConfiguredModelAlgorithmAssociationsRequest = Shapes::StructureShape.new(name: 'ListConfiguredModelAlgorithmAssociationsRequest')
    ListConfiguredModelAlgorithmAssociationsResponse = Shapes::StructureShape.new(name: 'ListConfiguredModelAlgorithmAssociationsResponse')
    ListConfiguredModelAlgorithmsRequest = Shapes::StructureShape.new(name: 'ListConfiguredModelAlgorithmsRequest')
    ListConfiguredModelAlgorithmsResponse = Shapes::StructureShape.new(name: 'ListConfiguredModelAlgorithmsResponse')
    ListMLInputChannelsRequest = Shapes::StructureShape.new(name: 'ListMLInputChannelsRequest')
    ListMLInputChannelsResponse = Shapes::StructureShape.new(name: 'ListMLInputChannelsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTrainedModelInferenceJobsRequest = Shapes::StructureShape.new(name: 'ListTrainedModelInferenceJobsRequest')
    ListTrainedModelInferenceJobsResponse = Shapes::StructureShape.new(name: 'ListTrainedModelInferenceJobsResponse')
    ListTrainedModelVersionsRequest = Shapes::StructureShape.new(name: 'ListTrainedModelVersionsRequest')
    ListTrainedModelVersionsResponse = Shapes::StructureShape.new(name: 'ListTrainedModelVersionsResponse')
    ListTrainedModelsRequest = Shapes::StructureShape.new(name: 'ListTrainedModelsRequest')
    ListTrainedModelsResponse = Shapes::StructureShape.new(name: 'ListTrainedModelsResponse')
    ListTrainingDatasetsRequest = Shapes::StructureShape.new(name: 'ListTrainingDatasetsRequest')
    ListTrainingDatasetsResponse = Shapes::StructureShape.new(name: 'ListTrainingDatasetsResponse')
    LogsConfigurationPolicy = Shapes::StructureShape.new(name: 'LogsConfigurationPolicy')
    LogsConfigurationPolicyFilterPatternString = Shapes::StringShape.new(name: 'LogsConfigurationPolicyFilterPatternString')
    LogsConfigurationPolicyList = Shapes::ListShape.new(name: 'LogsConfigurationPolicyList')
    LogsStatus = Shapes::StringShape.new(name: 'LogsStatus')
    MLInputChannelArn = Shapes::StringShape.new(name: 'MLInputChannelArn')
    MLInputChannelStatus = Shapes::StringShape.new(name: 'MLInputChannelStatus')
    MLInputChannelSummary = Shapes::StructureShape.new(name: 'MLInputChannelSummary')
    MLInputChannelSummaryConfiguredModelAlgorithmAssociationsList = Shapes::ListShape.new(name: 'MLInputChannelSummaryConfiguredModelAlgorithmAssociationsList')
    MLInputChannelsList = Shapes::ListShape.new(name: 'MLInputChannelsList')
    MLOutputConfiguration = Shapes::StructureShape.new(name: 'MLOutputConfiguration')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MetricDefinition = Shapes::StructureShape.new(name: 'MetricDefinition')
    MetricDefinitionList = Shapes::ListShape.new(name: 'MetricDefinitionList')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    MetricRegex = Shapes::StringShape.new(name: 'MetricRegex')
    MetricsConfigurationPolicy = Shapes::StructureShape.new(name: 'MetricsConfigurationPolicy')
    MetricsList = Shapes::ListShape.new(name: 'MetricsList')
    MetricsStatus = Shapes::StringShape.new(name: 'MetricsStatus')
    MinMatchingSeedSize = Shapes::IntegerShape.new(name: 'MinMatchingSeedSize')
    ModelInferenceDataSource = Shapes::StructureShape.new(name: 'ModelInferenceDataSource')
    ModelTrainingDataChannel = Shapes::StructureShape.new(name: 'ModelTrainingDataChannel')
    ModelTrainingDataChannelName = Shapes::StringShape.new(name: 'ModelTrainingDataChannelName')
    ModelTrainingDataChannels = Shapes::ListShape.new(name: 'ModelTrainingDataChannels')
    NameString = Shapes::StringShape.new(name: 'NameString')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NoiseLevelType = Shapes::StringShape.new(name: 'NoiseLevelType')
    ParameterKey = Shapes::StringShape.new(name: 'ParameterKey')
    ParameterMap = Shapes::MapShape.new(name: 'ParameterMap')
    ParameterValue = Shapes::StringShape.new(name: 'ParameterValue')
    PolicyExistenceCondition = Shapes::StringShape.new(name: 'PolicyExistenceCondition')
    PrivacyConfiguration = Shapes::StructureShape.new(name: 'PrivacyConfiguration')
    PrivacyConfigurationPolicies = Shapes::StructureShape.new(name: 'PrivacyConfigurationPolicies')
    ProtectedQueryInputParameters = Shapes::StructureShape.new(name: 'ProtectedQueryInputParameters')
    ProtectedQuerySQLParameters = Shapes::StructureShape.new(name: 'ProtectedQuerySQLParameters')
    ProtectedQuerySQLParametersQueryStringString = Shapes::StringShape.new(name: 'ProtectedQuerySQLParametersQueryStringString')
    PutConfiguredAudienceModelPolicyRequest = Shapes::StructureShape.new(name: 'PutConfiguredAudienceModelPolicyRequest')
    PutConfiguredAudienceModelPolicyResponse = Shapes::StructureShape.new(name: 'PutConfiguredAudienceModelPolicyResponse')
    PutMLConfigurationRequest = Shapes::StructureShape.new(name: 'PutMLConfigurationRequest')
    RelevanceMetric = Shapes::StructureShape.new(name: 'RelevanceMetric')
    RelevanceMetricScoreDouble = Shapes::FloatShape.new(name: 'RelevanceMetricScoreDouble')
    RelevanceMetrics = Shapes::ListShape.new(name: 'RelevanceMetrics')
    ResourceConfig = Shapes::StructureShape.new(name: 'ResourceConfig')
    ResourceConfigInstanceCountInteger = Shapes::IntegerShape.new(name: 'ResourceConfigInstanceCountInteger')
    ResourceConfigVolumeSizeInGBInteger = Shapes::IntegerShape.new(name: 'ResourceConfigVolumeSizeInGBInteger')
    ResourceDescription = Shapes::StringShape.new(name: 'ResourceDescription')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourcePolicy = Shapes::StringShape.new(name: 'ResourcePolicy')
    ResultFormat = Shapes::StringShape.new(name: 'ResultFormat')
    S3ConfigMap = Shapes::StructureShape.new(name: 'S3ConfigMap')
    S3DataDistributionType = Shapes::StringShape.new(name: 'S3DataDistributionType')
    S3Path = Shapes::StringShape.new(name: 'S3Path')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceQuotaExceededExceptionQuotaValueDouble = Shapes::FloatShape.new(name: 'ServiceQuotaExceededExceptionQuotaValueDouble')
    SharedAudienceMetrics = Shapes::StringShape.new(name: 'SharedAudienceMetrics')
    StartAudienceExportJobRequest = Shapes::StructureShape.new(name: 'StartAudienceExportJobRequest')
    StartAudienceGenerationJobRequest = Shapes::StructureShape.new(name: 'StartAudienceGenerationJobRequest')
    StartAudienceGenerationJobResponse = Shapes::StructureShape.new(name: 'StartAudienceGenerationJobResponse')
    StartTrainedModelExportJobRequest = Shapes::StructureShape.new(name: 'StartTrainedModelExportJobRequest')
    StartTrainedModelInferenceJobRequest = Shapes::StructureShape.new(name: 'StartTrainedModelInferenceJobRequest')
    StartTrainedModelInferenceJobResponse = Shapes::StructureShape.new(name: 'StartTrainedModelInferenceJobResponse')
    StatusDetails = Shapes::StructureShape.new(name: 'StatusDetails')
    StoppingCondition = Shapes::StructureShape.new(name: 'StoppingCondition')
    StoppingConditionMaxRuntimeInSecondsInteger = Shapes::IntegerShape.new(name: 'StoppingConditionMaxRuntimeInSecondsInteger')
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
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TrainedModelArn = Shapes::StringShape.new(name: 'TrainedModelArn')
    TrainedModelArtifactMaxSize = Shapes::StructureShape.new(name: 'TrainedModelArtifactMaxSize')
    TrainedModelArtifactMaxSizeUnitType = Shapes::StringShape.new(name: 'TrainedModelArtifactMaxSizeUnitType')
    TrainedModelArtifactMaxSizeValue = Shapes::FloatShape.new(name: 'TrainedModelArtifactMaxSizeValue')
    TrainedModelExportFileType = Shapes::StringShape.new(name: 'TrainedModelExportFileType')
    TrainedModelExportFileTypeList = Shapes::ListShape.new(name: 'TrainedModelExportFileTypeList')
    TrainedModelExportJobStatus = Shapes::StringShape.new(name: 'TrainedModelExportJobStatus')
    TrainedModelExportOutputConfiguration = Shapes::StructureShape.new(name: 'TrainedModelExportOutputConfiguration')
    TrainedModelExportReceiverMember = Shapes::StructureShape.new(name: 'TrainedModelExportReceiverMember')
    TrainedModelExportReceiverMembers = Shapes::ListShape.new(name: 'TrainedModelExportReceiverMembers')
    TrainedModelExportsConfigurationPolicy = Shapes::StructureShape.new(name: 'TrainedModelExportsConfigurationPolicy')
    TrainedModelExportsMaxSize = Shapes::StructureShape.new(name: 'TrainedModelExportsMaxSize')
    TrainedModelExportsMaxSizeUnitType = Shapes::StringShape.new(name: 'TrainedModelExportsMaxSizeUnitType')
    TrainedModelExportsMaxSizeValue = Shapes::FloatShape.new(name: 'TrainedModelExportsMaxSizeValue')
    TrainedModelInferenceJobArn = Shapes::StringShape.new(name: 'TrainedModelInferenceJobArn')
    TrainedModelInferenceJobList = Shapes::ListShape.new(name: 'TrainedModelInferenceJobList')
    TrainedModelInferenceJobStatus = Shapes::StringShape.new(name: 'TrainedModelInferenceJobStatus')
    TrainedModelInferenceJobSummary = Shapes::StructureShape.new(name: 'TrainedModelInferenceJobSummary')
    TrainedModelInferenceJobsConfigurationPolicy = Shapes::StructureShape.new(name: 'TrainedModelInferenceJobsConfigurationPolicy')
    TrainedModelInferenceMaxOutputSize = Shapes::StructureShape.new(name: 'TrainedModelInferenceMaxOutputSize')
    TrainedModelInferenceMaxOutputSizeUnitType = Shapes::StringShape.new(name: 'TrainedModelInferenceMaxOutputSizeUnitType')
    TrainedModelInferenceMaxOutputSizeValue = Shapes::FloatShape.new(name: 'TrainedModelInferenceMaxOutputSizeValue')
    TrainedModelList = Shapes::ListShape.new(name: 'TrainedModelList')
    TrainedModelStatus = Shapes::StringShape.new(name: 'TrainedModelStatus')
    TrainedModelSummary = Shapes::StructureShape.new(name: 'TrainedModelSummary')
    TrainedModelsConfigurationPolicy = Shapes::StructureShape.new(name: 'TrainedModelsConfigurationPolicy')
    TrainingDatasetArn = Shapes::StringShape.new(name: 'TrainingDatasetArn')
    TrainingDatasetList = Shapes::ListShape.new(name: 'TrainingDatasetList')
    TrainingDatasetStatus = Shapes::StringShape.new(name: 'TrainingDatasetStatus')
    TrainingDatasetSummary = Shapes::StructureShape.new(name: 'TrainingDatasetSummary')
    TrainingInputMode = Shapes::StringShape.new(name: 'TrainingInputMode')
    UUID = Shapes::StringShape.new(name: 'UUID')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateConfiguredAudienceModelRequest = Shapes::StructureShape.new(name: 'UpdateConfiguredAudienceModelRequest')
    UpdateConfiguredAudienceModelResponse = Shapes::StructureShape.new(name: 'UpdateConfiguredAudienceModelResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    WorkerComputeConfiguration = Shapes::StructureShape.new(name: 'WorkerComputeConfiguration')
    WorkerComputeConfigurationNumberInteger = Shapes::IntegerShape.new(name: 'WorkerComputeConfigurationNumberInteger')
    WorkerComputeType = Shapes::StringShape.new(name: 'WorkerComputeType')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountIdList.member = Shapes::ShapeRef.new(shape: String)

    AudienceDestination.add_member(:s3_destination, Shapes::ShapeRef.new(shape: S3ConfigMap, required: true, location_name: "s3Destination"))
    AudienceDestination.struct_class = Types::AudienceDestination

    AudienceExportJobList.member = Shapes::ShapeRef.new(shape: AudienceExportJobSummary)

    AudienceExportJobSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    AudienceExportJobSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    AudienceExportJobSummary.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    AudienceExportJobSummary.add_member(:audience_generation_job_arn, Shapes::ShapeRef.new(shape: AudienceGenerationJobArn, required: true, location_name: "audienceGenerationJobArn"))
    AudienceExportJobSummary.add_member(:audience_size, Shapes::ShapeRef.new(shape: AudienceSize, required: true, location_name: "audienceSize"))
    AudienceExportJobSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    AudienceExportJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: AudienceExportJobStatus, required: true, location_name: "status"))
    AudienceExportJobSummary.add_member(:status_details, Shapes::ShapeRef.new(shape: StatusDetails, location_name: "statusDetails"))
    AudienceExportJobSummary.add_member(:output_location, Shapes::ShapeRef.new(shape: S3Path, location_name: "outputLocation"))
    AudienceExportJobSummary.struct_class = Types::AudienceExportJobSummary

    AudienceGenerationJobDataSource.add_member(:data_source, Shapes::ShapeRef.new(shape: S3ConfigMap, location_name: "dataSource"))
    AudienceGenerationJobDataSource.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "roleArn"))
    AudienceGenerationJobDataSource.add_member(:sql_parameters, Shapes::ShapeRef.new(shape: ProtectedQuerySQLParameters, location_name: "sqlParameters"))
    AudienceGenerationJobDataSource.add_member(:sql_compute_configuration, Shapes::ShapeRef.new(shape: ComputeConfiguration, location_name: "sqlComputeConfiguration"))
    AudienceGenerationJobDataSource.struct_class = Types::AudienceGenerationJobDataSource

    AudienceGenerationJobList.member = Shapes::ShapeRef.new(shape: AudienceGenerationJobSummary)

    AudienceGenerationJobSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    AudienceGenerationJobSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    AudienceGenerationJobSummary.add_member(:audience_generation_job_arn, Shapes::ShapeRef.new(shape: AudienceGenerationJobArn, required: true, location_name: "audienceGenerationJobArn"))
    AudienceGenerationJobSummary.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    AudienceGenerationJobSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    AudienceGenerationJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: AudienceGenerationJobStatus, required: true, location_name: "status"))
    AudienceGenerationJobSummary.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location_name: "configuredAudienceModelArn"))
    AudienceGenerationJobSummary.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, location_name: "collaborationId"))
    AudienceGenerationJobSummary.add_member(:started_by, Shapes::ShapeRef.new(shape: AccountId, location_name: "startedBy"))
    AudienceGenerationJobSummary.struct_class = Types::AudienceGenerationJobSummary

    AudienceModelList.member = Shapes::ShapeRef.new(shape: AudienceModelSummary)

    AudienceModelSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    AudienceModelSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    AudienceModelSummary.add_member(:audience_model_arn, Shapes::ShapeRef.new(shape: AudienceModelArn, required: true, location_name: "audienceModelArn"))
    AudienceModelSummary.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    AudienceModelSummary.add_member(:training_dataset_arn, Shapes::ShapeRef.new(shape: TrainingDatasetArn, required: true, location_name: "trainingDatasetArn"))
    AudienceModelSummary.add_member(:status, Shapes::ShapeRef.new(shape: AudienceModelStatus, required: true, location_name: "status"))
    AudienceModelSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    AudienceModelSummary.struct_class = Types::AudienceModelSummary

    AudienceQualityMetrics.add_member(:relevance_metrics, Shapes::ShapeRef.new(shape: RelevanceMetrics, required: true, location_name: "relevanceMetrics"))
    AudienceQualityMetrics.add_member(:recall_metric, Shapes::ShapeRef.new(shape: AudienceQualityMetricsRecallMetricDouble, location_name: "recallMetric"))
    AudienceQualityMetrics.struct_class = Types::AudienceQualityMetrics

    AudienceSize.add_member(:type, Shapes::ShapeRef.new(shape: AudienceSizeType, required: true, location_name: "type"))
    AudienceSize.add_member(:value, Shapes::ShapeRef.new(shape: AudienceSizeValue, required: true, location_name: "value"))
    AudienceSize.struct_class = Types::AudienceSize

    AudienceSizeBins.member = Shapes::ShapeRef.new(shape: AudienceSizeValue)

    AudienceSizeConfig.add_member(:audience_size_type, Shapes::ShapeRef.new(shape: AudienceSizeType, required: true, location_name: "audienceSizeType"))
    AudienceSizeConfig.add_member(:audience_size_bins, Shapes::ShapeRef.new(shape: AudienceSizeBins, required: true, location_name: "audienceSizeBins"))
    AudienceSizeConfig.struct_class = Types::AudienceSizeConfig

    CancelTrainedModelInferenceJobRequest.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "membershipIdentifier"))
    CancelTrainedModelInferenceJobRequest.add_member(:trained_model_inference_job_arn, Shapes::ShapeRef.new(shape: TrainedModelInferenceJobArn, required: true, location: "uri", location_name: "trainedModelInferenceJobArn"))
    CancelTrainedModelInferenceJobRequest.struct_class = Types::CancelTrainedModelInferenceJobRequest

    CancelTrainedModelRequest.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "membershipIdentifier"))
    CancelTrainedModelRequest.add_member(:trained_model_arn, Shapes::ShapeRef.new(shape: TrainedModelArn, required: true, location: "uri", location_name: "trainedModelArn"))
    CancelTrainedModelRequest.add_member(:version_identifier, Shapes::ShapeRef.new(shape: UUID, location: "querystring", location_name: "versionIdentifier"))
    CancelTrainedModelRequest.struct_class = Types::CancelTrainedModelRequest

    CollaborationConfiguredModelAlgorithmAssociationList.member = Shapes::ShapeRef.new(shape: CollaborationConfiguredModelAlgorithmAssociationSummary)

    CollaborationConfiguredModelAlgorithmAssociationSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    CollaborationConfiguredModelAlgorithmAssociationSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    CollaborationConfiguredModelAlgorithmAssociationSummary.add_member(:configured_model_algorithm_association_arn, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, required: true, location_name: "configuredModelAlgorithmAssociationArn"))
    CollaborationConfiguredModelAlgorithmAssociationSummary.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    CollaborationConfiguredModelAlgorithmAssociationSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CollaborationConfiguredModelAlgorithmAssociationSummary.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipIdentifier"))
    CollaborationConfiguredModelAlgorithmAssociationSummary.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationIdentifier"))
    CollaborationConfiguredModelAlgorithmAssociationSummary.add_member(:configured_model_algorithm_arn, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmArn, required: true, location_name: "configuredModelAlgorithmArn"))
    CollaborationConfiguredModelAlgorithmAssociationSummary.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "creatorAccountId"))
    CollaborationConfiguredModelAlgorithmAssociationSummary.struct_class = Types::CollaborationConfiguredModelAlgorithmAssociationSummary

    CollaborationMLInputChannelSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    CollaborationMLInputChannelSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    CollaborationMLInputChannelSummary.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipIdentifier"))
    CollaborationMLInputChannelSummary.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationIdentifier"))
    CollaborationMLInputChannelSummary.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    CollaborationMLInputChannelSummary.add_member(:configured_model_algorithm_associations, Shapes::ShapeRef.new(shape: CollaborationMLInputChannelSummaryConfiguredModelAlgorithmAssociationsList, required: true, location_name: "configuredModelAlgorithmAssociations"))
    CollaborationMLInputChannelSummary.add_member(:ml_input_channel_arn, Shapes::ShapeRef.new(shape: MLInputChannelArn, required: true, location_name: "mlInputChannelArn"))
    CollaborationMLInputChannelSummary.add_member(:status, Shapes::ShapeRef.new(shape: MLInputChannelStatus, required: true, location_name: "status"))
    CollaborationMLInputChannelSummary.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "creatorAccountId"))
    CollaborationMLInputChannelSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CollaborationMLInputChannelSummary.struct_class = Types::CollaborationMLInputChannelSummary

    CollaborationMLInputChannelSummaryConfiguredModelAlgorithmAssociationsList.member = Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn)

    CollaborationMLInputChannelsList.member = Shapes::ShapeRef.new(shape: CollaborationMLInputChannelSummary)

    CollaborationTrainedModelExportJobList.member = Shapes::ShapeRef.new(shape: CollaborationTrainedModelExportJobSummary)

    CollaborationTrainedModelExportJobSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    CollaborationTrainedModelExportJobSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    CollaborationTrainedModelExportJobSummary.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    CollaborationTrainedModelExportJobSummary.add_member(:output_configuration, Shapes::ShapeRef.new(shape: TrainedModelExportOutputConfiguration, required: true, location_name: "outputConfiguration"))
    CollaborationTrainedModelExportJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: TrainedModelExportJobStatus, required: true, location_name: "status"))
    CollaborationTrainedModelExportJobSummary.add_member(:status_details, Shapes::ShapeRef.new(shape: StatusDetails, location_name: "statusDetails"))
    CollaborationTrainedModelExportJobSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CollaborationTrainedModelExportJobSummary.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "creatorAccountId"))
    CollaborationTrainedModelExportJobSummary.add_member(:trained_model_arn, Shapes::ShapeRef.new(shape: TrainedModelArn, required: true, location_name: "trainedModelArn"))
    CollaborationTrainedModelExportJobSummary.add_member(:trained_model_version_identifier, Shapes::ShapeRef.new(shape: UUID, location_name: "trainedModelVersionIdentifier"))
    CollaborationTrainedModelExportJobSummary.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipIdentifier"))
    CollaborationTrainedModelExportJobSummary.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationIdentifier"))
    CollaborationTrainedModelExportJobSummary.struct_class = Types::CollaborationTrainedModelExportJobSummary

    CollaborationTrainedModelInferenceJobList.member = Shapes::ShapeRef.new(shape: CollaborationTrainedModelInferenceJobSummary)

    CollaborationTrainedModelInferenceJobSummary.add_member(:trained_model_inference_job_arn, Shapes::ShapeRef.new(shape: TrainedModelInferenceJobArn, required: true, location_name: "trainedModelInferenceJobArn"))
    CollaborationTrainedModelInferenceJobSummary.add_member(:configured_model_algorithm_association_arn, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, location_name: "configuredModelAlgorithmAssociationArn"))
    CollaborationTrainedModelInferenceJobSummary.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipIdentifier"))
    CollaborationTrainedModelInferenceJobSummary.add_member(:trained_model_arn, Shapes::ShapeRef.new(shape: TrainedModelArn, required: true, location_name: "trainedModelArn"))
    CollaborationTrainedModelInferenceJobSummary.add_member(:trained_model_version_identifier, Shapes::ShapeRef.new(shape: UUID, location_name: "trainedModelVersionIdentifier"))
    CollaborationTrainedModelInferenceJobSummary.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationIdentifier"))
    CollaborationTrainedModelInferenceJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: TrainedModelInferenceJobStatus, required: true, location_name: "status"))
    CollaborationTrainedModelInferenceJobSummary.add_member(:output_configuration, Shapes::ShapeRef.new(shape: InferenceOutputConfiguration, required: true, location_name: "outputConfiguration"))
    CollaborationTrainedModelInferenceJobSummary.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    CollaborationTrainedModelInferenceJobSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CollaborationTrainedModelInferenceJobSummary.add_member(:metrics_status, Shapes::ShapeRef.new(shape: MetricsStatus, location_name: "metricsStatus"))
    CollaborationTrainedModelInferenceJobSummary.add_member(:metrics_status_details, Shapes::ShapeRef.new(shape: String, location_name: "metricsStatusDetails"))
    CollaborationTrainedModelInferenceJobSummary.add_member(:logs_status, Shapes::ShapeRef.new(shape: LogsStatus, location_name: "logsStatus"))
    CollaborationTrainedModelInferenceJobSummary.add_member(:logs_status_details, Shapes::ShapeRef.new(shape: String, location_name: "logsStatusDetails"))
    CollaborationTrainedModelInferenceJobSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    CollaborationTrainedModelInferenceJobSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    CollaborationTrainedModelInferenceJobSummary.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "creatorAccountId"))
    CollaborationTrainedModelInferenceJobSummary.struct_class = Types::CollaborationTrainedModelInferenceJobSummary

    CollaborationTrainedModelList.member = Shapes::ShapeRef.new(shape: CollaborationTrainedModelSummary)

    CollaborationTrainedModelSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    CollaborationTrainedModelSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    CollaborationTrainedModelSummary.add_member(:trained_model_arn, Shapes::ShapeRef.new(shape: TrainedModelArn, required: true, location_name: "trainedModelArn"))
    CollaborationTrainedModelSummary.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    CollaborationTrainedModelSummary.add_member(:version_identifier, Shapes::ShapeRef.new(shape: UUID, location_name: "versionIdentifier"))
    CollaborationTrainedModelSummary.add_member(:incremental_training_data_channels, Shapes::ShapeRef.new(shape: IncrementalTrainingDataChannelsOutput, location_name: "incrementalTrainingDataChannels"))
    CollaborationTrainedModelSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CollaborationTrainedModelSummary.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipIdentifier"))
    CollaborationTrainedModelSummary.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationIdentifier"))
    CollaborationTrainedModelSummary.add_member(:status, Shapes::ShapeRef.new(shape: TrainedModelStatus, required: true, location_name: "status"))
    CollaborationTrainedModelSummary.add_member(:configured_model_algorithm_association_arn, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, required: true, location_name: "configuredModelAlgorithmAssociationArn"))
    CollaborationTrainedModelSummary.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "creatorAccountId"))
    CollaborationTrainedModelSummary.struct_class = Types::CollaborationTrainedModelSummary

    ColumnSchema.add_member(:column_name, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "columnName"))
    ColumnSchema.add_member(:column_types, Shapes::ShapeRef.new(shape: ColumnTypeList, required: true, location_name: "columnTypes"))
    ColumnSchema.struct_class = Types::ColumnSchema

    ColumnTypeList.member = Shapes::ShapeRef.new(shape: ColumnType)

    ComputeConfiguration.add_member(:worker, Shapes::ShapeRef.new(shape: WorkerComputeConfiguration, location_name: "worker"))
    ComputeConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ComputeConfiguration.add_member_subclass(:worker, Types::ComputeConfiguration::Worker)
    ComputeConfiguration.add_member_subclass(:unknown, Types::ComputeConfiguration::Unknown)
    ComputeConfiguration.struct_class = Types::ComputeConfiguration

    ConfiguredAudienceModelList.member = Shapes::ShapeRef.new(shape: ConfiguredAudienceModelSummary)

    ConfiguredAudienceModelOutputConfig.add_member(:destination, Shapes::ShapeRef.new(shape: AudienceDestination, required: true, location_name: "destination"))
    ConfiguredAudienceModelOutputConfig.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "roleArn"))
    ConfiguredAudienceModelOutputConfig.struct_class = Types::ConfiguredAudienceModelOutputConfig

    ConfiguredAudienceModelSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    ConfiguredAudienceModelSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    ConfiguredAudienceModelSummary.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    ConfiguredAudienceModelSummary.add_member(:audience_model_arn, Shapes::ShapeRef.new(shape: AudienceModelArn, required: true, location_name: "audienceModelArn"))
    ConfiguredAudienceModelSummary.add_member(:output_config, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelOutputConfig, required: true, location_name: "outputConfig"))
    ConfiguredAudienceModelSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    ConfiguredAudienceModelSummary.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location_name: "configuredAudienceModelArn"))
    ConfiguredAudienceModelSummary.add_member(:status, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelStatus, required: true, location_name: "status"))
    ConfiguredAudienceModelSummary.struct_class = Types::ConfiguredAudienceModelSummary

    ConfiguredModelAlgorithmAssociationList.member = Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationSummary)

    ConfiguredModelAlgorithmAssociationSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    ConfiguredModelAlgorithmAssociationSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    ConfiguredModelAlgorithmAssociationSummary.add_member(:configured_model_algorithm_association_arn, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, required: true, location_name: "configuredModelAlgorithmAssociationArn"))
    ConfiguredModelAlgorithmAssociationSummary.add_member(:configured_model_algorithm_arn, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmArn, required: true, location_name: "configuredModelAlgorithmArn"))
    ConfiguredModelAlgorithmAssociationSummary.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    ConfiguredModelAlgorithmAssociationSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    ConfiguredModelAlgorithmAssociationSummary.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipIdentifier"))
    ConfiguredModelAlgorithmAssociationSummary.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationIdentifier"))
    ConfiguredModelAlgorithmAssociationSummary.struct_class = Types::ConfiguredModelAlgorithmAssociationSummary

    ConfiguredModelAlgorithmList.member = Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmSummary)

    ConfiguredModelAlgorithmSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    ConfiguredModelAlgorithmSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    ConfiguredModelAlgorithmSummary.add_member(:configured_model_algorithm_arn, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmArn, required: true, location_name: "configuredModelAlgorithmArn"))
    ConfiguredModelAlgorithmSummary.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    ConfiguredModelAlgorithmSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    ConfiguredModelAlgorithmSummary.struct_class = Types::ConfiguredModelAlgorithmSummary

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ContainerArguments.member = Shapes::ShapeRef.new(shape: ContainerArgument)

    ContainerConfig.add_member(:image_uri, Shapes::ShapeRef.new(shape: AlgorithmImage, required: true, location_name: "imageUri"))
    ContainerConfig.add_member(:entrypoint, Shapes::ShapeRef.new(shape: ContainerEntrypoint, location_name: "entrypoint"))
    ContainerConfig.add_member(:arguments, Shapes::ShapeRef.new(shape: ContainerArguments, location_name: "arguments"))
    ContainerConfig.add_member(:metric_definitions, Shapes::ShapeRef.new(shape: MetricDefinitionList, location_name: "metricDefinitions"))
    ContainerConfig.struct_class = Types::ContainerConfig

    ContainerEntrypoint.member = Shapes::ShapeRef.new(shape: ContainerEntrypointString)

    CreateAudienceModelRequest.add_member(:training_data_start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "trainingDataStartTime"))
    CreateAudienceModelRequest.add_member(:training_data_end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "trainingDataEndTime"))
    CreateAudienceModelRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    CreateAudienceModelRequest.add_member(:training_dataset_arn, Shapes::ShapeRef.new(shape: TrainingDatasetArn, required: true, location_name: "trainingDatasetArn"))
    CreateAudienceModelRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    CreateAudienceModelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateAudienceModelRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateAudienceModelRequest.struct_class = Types::CreateAudienceModelRequest

    CreateAudienceModelResponse.add_member(:audience_model_arn, Shapes::ShapeRef.new(shape: AudienceModelArn, required: true, location_name: "audienceModelArn"))
    CreateAudienceModelResponse.struct_class = Types::CreateAudienceModelResponse

    CreateConfiguredAudienceModelRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    CreateConfiguredAudienceModelRequest.add_member(:audience_model_arn, Shapes::ShapeRef.new(shape: AudienceModelArn, required: true, location_name: "audienceModelArn"))
    CreateConfiguredAudienceModelRequest.add_member(:output_config, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelOutputConfig, required: true, location_name: "outputConfig"))
    CreateConfiguredAudienceModelRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateConfiguredAudienceModelRequest.add_member(:shared_audience_metrics, Shapes::ShapeRef.new(shape: MetricsList, required: true, location_name: "sharedAudienceMetrics"))
    CreateConfiguredAudienceModelRequest.add_member(:min_matching_seed_size, Shapes::ShapeRef.new(shape: MinMatchingSeedSize, location_name: "minMatchingSeedSize"))
    CreateConfiguredAudienceModelRequest.add_member(:audience_size_config, Shapes::ShapeRef.new(shape: AudienceSizeConfig, location_name: "audienceSizeConfig"))
    CreateConfiguredAudienceModelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateConfiguredAudienceModelRequest.add_member(:child_resource_tag_on_create_policy, Shapes::ShapeRef.new(shape: TagOnCreatePolicy, location_name: "childResourceTagOnCreatePolicy"))
    CreateConfiguredAudienceModelRequest.struct_class = Types::CreateConfiguredAudienceModelRequest

    CreateConfiguredAudienceModelResponse.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location_name: "configuredAudienceModelArn"))
    CreateConfiguredAudienceModelResponse.struct_class = Types::CreateConfiguredAudienceModelResponse

    CreateConfiguredModelAlgorithmAssociationRequest.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "membershipIdentifier"))
    CreateConfiguredModelAlgorithmAssociationRequest.add_member(:configured_model_algorithm_arn, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmArn, required: true, location_name: "configuredModelAlgorithmArn"))
    CreateConfiguredModelAlgorithmAssociationRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    CreateConfiguredModelAlgorithmAssociationRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateConfiguredModelAlgorithmAssociationRequest.add_member(:privacy_configuration, Shapes::ShapeRef.new(shape: PrivacyConfiguration, location_name: "privacyConfiguration"))
    CreateConfiguredModelAlgorithmAssociationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateConfiguredModelAlgorithmAssociationRequest.struct_class = Types::CreateConfiguredModelAlgorithmAssociationRequest

    CreateConfiguredModelAlgorithmAssociationResponse.add_member(:configured_model_algorithm_association_arn, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, required: true, location_name: "configuredModelAlgorithmAssociationArn"))
    CreateConfiguredModelAlgorithmAssociationResponse.struct_class = Types::CreateConfiguredModelAlgorithmAssociationResponse

    CreateConfiguredModelAlgorithmRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    CreateConfiguredModelAlgorithmRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateConfiguredModelAlgorithmRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "roleArn"))
    CreateConfiguredModelAlgorithmRequest.add_member(:training_container_config, Shapes::ShapeRef.new(shape: ContainerConfig, location_name: "trainingContainerConfig"))
    CreateConfiguredModelAlgorithmRequest.add_member(:inference_container_config, Shapes::ShapeRef.new(shape: InferenceContainerConfig, location_name: "inferenceContainerConfig"))
    CreateConfiguredModelAlgorithmRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateConfiguredModelAlgorithmRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    CreateConfiguredModelAlgorithmRequest.struct_class = Types::CreateConfiguredModelAlgorithmRequest

    CreateConfiguredModelAlgorithmResponse.add_member(:configured_model_algorithm_arn, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmArn, required: true, location_name: "configuredModelAlgorithmArn"))
    CreateConfiguredModelAlgorithmResponse.struct_class = Types::CreateConfiguredModelAlgorithmResponse

    CreateMLInputChannelRequest.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "membershipIdentifier"))
    CreateMLInputChannelRequest.add_member(:configured_model_algorithm_associations, Shapes::ShapeRef.new(shape: CreateMLInputChannelRequestConfiguredModelAlgorithmAssociationsList, required: true, location_name: "configuredModelAlgorithmAssociations"))
    CreateMLInputChannelRequest.add_member(:input_channel, Shapes::ShapeRef.new(shape: InputChannel, required: true, location_name: "inputChannel"))
    CreateMLInputChannelRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    CreateMLInputChannelRequest.add_member(:retention_in_days, Shapes::ShapeRef.new(shape: CreateMLInputChannelRequestRetentionInDaysInteger, required: true, location_name: "retentionInDays"))
    CreateMLInputChannelRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateMLInputChannelRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    CreateMLInputChannelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateMLInputChannelRequest.struct_class = Types::CreateMLInputChannelRequest

    CreateMLInputChannelRequestConfiguredModelAlgorithmAssociationsList.member = Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn)

    CreateMLInputChannelResponse.add_member(:ml_input_channel_arn, Shapes::ShapeRef.new(shape: MLInputChannelArn, required: true, location_name: "mlInputChannelArn"))
    CreateMLInputChannelResponse.struct_class = Types::CreateMLInputChannelResponse

    CreateTrainedModelRequest.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "membershipIdentifier"))
    CreateTrainedModelRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    CreateTrainedModelRequest.add_member(:configured_model_algorithm_association_arn, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, required: true, location_name: "configuredModelAlgorithmAssociationArn"))
    CreateTrainedModelRequest.add_member(:hyperparameters, Shapes::ShapeRef.new(shape: HyperParameters, location_name: "hyperparameters"))
    CreateTrainedModelRequest.add_member(:environment, Shapes::ShapeRef.new(shape: Environment, location_name: "environment"))
    CreateTrainedModelRequest.add_member(:resource_config, Shapes::ShapeRef.new(shape: ResourceConfig, required: true, location_name: "resourceConfig"))
    CreateTrainedModelRequest.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: StoppingCondition, location_name: "stoppingCondition"))
    CreateTrainedModelRequest.add_member(:incremental_training_data_channels, Shapes::ShapeRef.new(shape: IncrementalTrainingDataChannels, location_name: "incrementalTrainingDataChannels"))
    CreateTrainedModelRequest.add_member(:data_channels, Shapes::ShapeRef.new(shape: ModelTrainingDataChannels, required: true, location_name: "dataChannels"))
    CreateTrainedModelRequest.add_member(:training_input_mode, Shapes::ShapeRef.new(shape: TrainingInputMode, location_name: "trainingInputMode"))
    CreateTrainedModelRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateTrainedModelRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    CreateTrainedModelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateTrainedModelRequest.struct_class = Types::CreateTrainedModelRequest

    CreateTrainedModelResponse.add_member(:trained_model_arn, Shapes::ShapeRef.new(shape: TrainedModelArn, required: true, location_name: "trainedModelArn"))
    CreateTrainedModelResponse.add_member(:version_identifier, Shapes::ShapeRef.new(shape: UUID, location_name: "versionIdentifier"))
    CreateTrainedModelResponse.struct_class = Types::CreateTrainedModelResponse

    CreateTrainingDatasetRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    CreateTrainingDatasetRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "roleArn"))
    CreateTrainingDatasetRequest.add_member(:training_data, Shapes::ShapeRef.new(shape: CreateTrainingDatasetRequestTrainingDataList, required: true, location_name: "trainingData"))
    CreateTrainingDatasetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateTrainingDatasetRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateTrainingDatasetRequest.struct_class = Types::CreateTrainingDatasetRequest

    CreateTrainingDatasetRequestTrainingDataList.member = Shapes::ShapeRef.new(shape: Dataset)

    CreateTrainingDatasetResponse.add_member(:training_dataset_arn, Shapes::ShapeRef.new(shape: TrainingDatasetArn, required: true, location_name: "trainingDatasetArn"))
    CreateTrainingDatasetResponse.struct_class = Types::CreateTrainingDatasetResponse

    DataSource.add_member(:glue_data_source, Shapes::ShapeRef.new(shape: GlueDataSource, required: true, location_name: "glueDataSource"))
    DataSource.struct_class = Types::DataSource

    Dataset.add_member(:type, Shapes::ShapeRef.new(shape: DatasetType, required: true, location_name: "type"))
    Dataset.add_member(:input_config, Shapes::ShapeRef.new(shape: DatasetInputConfig, required: true, location_name: "inputConfig"))
    Dataset.struct_class = Types::Dataset

    DatasetInputConfig.add_member(:schema, Shapes::ShapeRef.new(shape: DatasetInputConfigSchemaList, required: true, location_name: "schema"))
    DatasetInputConfig.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, required: true, location_name: "dataSource"))
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

    DeleteConfiguredModelAlgorithmAssociationRequest.add_member(:configured_model_algorithm_association_arn, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, required: true, location: "uri", location_name: "configuredModelAlgorithmAssociationArn"))
    DeleteConfiguredModelAlgorithmAssociationRequest.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "membershipIdentifier"))
    DeleteConfiguredModelAlgorithmAssociationRequest.struct_class = Types::DeleteConfiguredModelAlgorithmAssociationRequest

    DeleteConfiguredModelAlgorithmRequest.add_member(:configured_model_algorithm_arn, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmArn, required: true, location: "uri", location_name: "configuredModelAlgorithmArn"))
    DeleteConfiguredModelAlgorithmRequest.struct_class = Types::DeleteConfiguredModelAlgorithmRequest

    DeleteMLConfigurationRequest.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "membershipIdentifier"))
    DeleteMLConfigurationRequest.struct_class = Types::DeleteMLConfigurationRequest

    DeleteMLInputChannelDataRequest.add_member(:ml_input_channel_arn, Shapes::ShapeRef.new(shape: MLInputChannelArn, required: true, location: "uri", location_name: "mlInputChannelArn"))
    DeleteMLInputChannelDataRequest.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "membershipIdentifier"))
    DeleteMLInputChannelDataRequest.struct_class = Types::DeleteMLInputChannelDataRequest

    DeleteTrainedModelOutputRequest.add_member(:trained_model_arn, Shapes::ShapeRef.new(shape: TrainedModelArn, required: true, location: "uri", location_name: "trainedModelArn"))
    DeleteTrainedModelOutputRequest.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "membershipIdentifier"))
    DeleteTrainedModelOutputRequest.add_member(:version_identifier, Shapes::ShapeRef.new(shape: UUID, location: "querystring", location_name: "versionIdentifier"))
    DeleteTrainedModelOutputRequest.struct_class = Types::DeleteTrainedModelOutputRequest

    DeleteTrainingDatasetRequest.add_member(:training_dataset_arn, Shapes::ShapeRef.new(shape: TrainingDatasetArn, required: true, location: "uri", location_name: "trainingDatasetArn"))
    DeleteTrainingDatasetRequest.struct_class = Types::DeleteTrainingDatasetRequest

    Destination.add_member(:s3_destination, Shapes::ShapeRef.new(shape: S3ConfigMap, required: true, location_name: "s3Destination"))
    Destination.struct_class = Types::Destination

    Environment.key = Shapes::ShapeRef.new(shape: EnvironmentKeyString)
    Environment.value = Shapes::ShapeRef.new(shape: EnvironmentValueString)

    GetAudienceGenerationJobRequest.add_member(:audience_generation_job_arn, Shapes::ShapeRef.new(shape: AudienceGenerationJobArn, required: true, location: "uri", location_name: "audienceGenerationJobArn"))
    GetAudienceGenerationJobRequest.struct_class = Types::GetAudienceGenerationJobRequest

    GetAudienceGenerationJobResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    GetAudienceGenerationJobResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    GetAudienceGenerationJobResponse.add_member(:audience_generation_job_arn, Shapes::ShapeRef.new(shape: AudienceGenerationJobArn, required: true, location_name: "audienceGenerationJobArn"))
    GetAudienceGenerationJobResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    GetAudienceGenerationJobResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetAudienceGenerationJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: AudienceGenerationJobStatus, required: true, location_name: "status"))
    GetAudienceGenerationJobResponse.add_member(:status_details, Shapes::ShapeRef.new(shape: StatusDetails, location_name: "statusDetails"))
    GetAudienceGenerationJobResponse.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location_name: "configuredAudienceModelArn"))
    GetAudienceGenerationJobResponse.add_member(:seed_audience, Shapes::ShapeRef.new(shape: AudienceGenerationJobDataSource, location_name: "seedAudience"))
    GetAudienceGenerationJobResponse.add_member(:include_seed_in_output, Shapes::ShapeRef.new(shape: Boolean, location_name: "includeSeedInOutput"))
    GetAudienceGenerationJobResponse.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, location_name: "collaborationId"))
    GetAudienceGenerationJobResponse.add_member(:metrics, Shapes::ShapeRef.new(shape: AudienceQualityMetrics, location_name: "metrics"))
    GetAudienceGenerationJobResponse.add_member(:started_by, Shapes::ShapeRef.new(shape: AccountId, location_name: "startedBy"))
    GetAudienceGenerationJobResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetAudienceGenerationJobResponse.add_member(:protected_query_identifier, Shapes::ShapeRef.new(shape: String, location_name: "protectedQueryIdentifier"))
    GetAudienceGenerationJobResponse.struct_class = Types::GetAudienceGenerationJobResponse

    GetAudienceModelRequest.add_member(:audience_model_arn, Shapes::ShapeRef.new(shape: AudienceModelArn, required: true, location: "uri", location_name: "audienceModelArn"))
    GetAudienceModelRequest.struct_class = Types::GetAudienceModelRequest

    GetAudienceModelResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    GetAudienceModelResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    GetAudienceModelResponse.add_member(:training_data_start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "trainingDataStartTime"))
    GetAudienceModelResponse.add_member(:training_data_end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "trainingDataEndTime"))
    GetAudienceModelResponse.add_member(:audience_model_arn, Shapes::ShapeRef.new(shape: AudienceModelArn, required: true, location_name: "audienceModelArn"))
    GetAudienceModelResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    GetAudienceModelResponse.add_member(:training_dataset_arn, Shapes::ShapeRef.new(shape: TrainingDatasetArn, required: true, location_name: "trainingDatasetArn"))
    GetAudienceModelResponse.add_member(:status, Shapes::ShapeRef.new(shape: AudienceModelStatus, required: true, location_name: "status"))
    GetAudienceModelResponse.add_member(:status_details, Shapes::ShapeRef.new(shape: StatusDetails, location_name: "statusDetails"))
    GetAudienceModelResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    GetAudienceModelResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetAudienceModelResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetAudienceModelResponse.struct_class = Types::GetAudienceModelResponse

    GetCollaborationConfiguredModelAlgorithmAssociationRequest.add_member(:configured_model_algorithm_association_arn, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, required: true, location: "uri", location_name: "configuredModelAlgorithmAssociationArn"))
    GetCollaborationConfiguredModelAlgorithmAssociationRequest.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "collaborationIdentifier"))
    GetCollaborationConfiguredModelAlgorithmAssociationRequest.struct_class = Types::GetCollaborationConfiguredModelAlgorithmAssociationRequest

    GetCollaborationConfiguredModelAlgorithmAssociationResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    GetCollaborationConfiguredModelAlgorithmAssociationResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    GetCollaborationConfiguredModelAlgorithmAssociationResponse.add_member(:configured_model_algorithm_association_arn, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, required: true, location_name: "configuredModelAlgorithmAssociationArn"))
    GetCollaborationConfiguredModelAlgorithmAssociationResponse.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipIdentifier"))
    GetCollaborationConfiguredModelAlgorithmAssociationResponse.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationIdentifier"))
    GetCollaborationConfiguredModelAlgorithmAssociationResponse.add_member(:configured_model_algorithm_arn, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmArn, required: true, location_name: "configuredModelAlgorithmArn"))
    GetCollaborationConfiguredModelAlgorithmAssociationResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    GetCollaborationConfiguredModelAlgorithmAssociationResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetCollaborationConfiguredModelAlgorithmAssociationResponse.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "creatorAccountId"))
    GetCollaborationConfiguredModelAlgorithmAssociationResponse.add_member(:privacy_configuration, Shapes::ShapeRef.new(shape: PrivacyConfiguration, location_name: "privacyConfiguration"))
    GetCollaborationConfiguredModelAlgorithmAssociationResponse.struct_class = Types::GetCollaborationConfiguredModelAlgorithmAssociationResponse

    GetCollaborationMLInputChannelRequest.add_member(:ml_input_channel_arn, Shapes::ShapeRef.new(shape: MLInputChannelArn, required: true, location: "uri", location_name: "mlInputChannelArn"))
    GetCollaborationMLInputChannelRequest.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "collaborationIdentifier"))
    GetCollaborationMLInputChannelRequest.struct_class = Types::GetCollaborationMLInputChannelRequest

    GetCollaborationMLInputChannelResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    GetCollaborationMLInputChannelResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    GetCollaborationMLInputChannelResponse.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "creatorAccountId"))
    GetCollaborationMLInputChannelResponse.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipIdentifier"))
    GetCollaborationMLInputChannelResponse.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationIdentifier"))
    GetCollaborationMLInputChannelResponse.add_member(:ml_input_channel_arn, Shapes::ShapeRef.new(shape: MLInputChannelArn, required: true, location_name: "mlInputChannelArn"))
    GetCollaborationMLInputChannelResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    GetCollaborationMLInputChannelResponse.add_member(:configured_model_algorithm_associations, Shapes::ShapeRef.new(shape: GetCollaborationMLInputChannelResponseConfiguredModelAlgorithmAssociationsList, required: true, location_name: "configuredModelAlgorithmAssociations"))
    GetCollaborationMLInputChannelResponse.add_member(:status, Shapes::ShapeRef.new(shape: MLInputChannelStatus, required: true, location_name: "status"))
    GetCollaborationMLInputChannelResponse.add_member(:status_details, Shapes::ShapeRef.new(shape: StatusDetails, location_name: "statusDetails"))
    GetCollaborationMLInputChannelResponse.add_member(:retention_in_days, Shapes::ShapeRef.new(shape: GetCollaborationMLInputChannelResponseRetentionInDaysInteger, required: true, location_name: "retentionInDays"))
    GetCollaborationMLInputChannelResponse.add_member(:number_of_records, Shapes::ShapeRef.new(shape: GetCollaborationMLInputChannelResponseNumberOfRecordsLong, location_name: "numberOfRecords"))
    GetCollaborationMLInputChannelResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetCollaborationMLInputChannelResponse.struct_class = Types::GetCollaborationMLInputChannelResponse

    GetCollaborationMLInputChannelResponseConfiguredModelAlgorithmAssociationsList.member = Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn)

    GetCollaborationTrainedModelRequest.add_member(:trained_model_arn, Shapes::ShapeRef.new(shape: TrainedModelArn, required: true, location: "uri", location_name: "trainedModelArn"))
    GetCollaborationTrainedModelRequest.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "collaborationIdentifier"))
    GetCollaborationTrainedModelRequest.add_member(:version_identifier, Shapes::ShapeRef.new(shape: UUID, location: "querystring", location_name: "versionIdentifier"))
    GetCollaborationTrainedModelRequest.struct_class = Types::GetCollaborationTrainedModelRequest

    GetCollaborationTrainedModelResponse.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipIdentifier"))
    GetCollaborationTrainedModelResponse.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationIdentifier"))
    GetCollaborationTrainedModelResponse.add_member(:trained_model_arn, Shapes::ShapeRef.new(shape: TrainedModelArn, required: true, location_name: "trainedModelArn"))
    GetCollaborationTrainedModelResponse.add_member(:version_identifier, Shapes::ShapeRef.new(shape: UUID, location_name: "versionIdentifier"))
    GetCollaborationTrainedModelResponse.add_member(:incremental_training_data_channels, Shapes::ShapeRef.new(shape: IncrementalTrainingDataChannelsOutput, location_name: "incrementalTrainingDataChannels"))
    GetCollaborationTrainedModelResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    GetCollaborationTrainedModelResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetCollaborationTrainedModelResponse.add_member(:status, Shapes::ShapeRef.new(shape: TrainedModelStatus, required: true, location_name: "status"))
    GetCollaborationTrainedModelResponse.add_member(:status_details, Shapes::ShapeRef.new(shape: StatusDetails, location_name: "statusDetails"))
    GetCollaborationTrainedModelResponse.add_member(:configured_model_algorithm_association_arn, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, required: true, location_name: "configuredModelAlgorithmAssociationArn"))
    GetCollaborationTrainedModelResponse.add_member(:resource_config, Shapes::ShapeRef.new(shape: ResourceConfig, location_name: "resourceConfig"))
    GetCollaborationTrainedModelResponse.add_member(:training_input_mode, Shapes::ShapeRef.new(shape: TrainingInputMode, location_name: "trainingInputMode"))
    GetCollaborationTrainedModelResponse.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: StoppingCondition, location_name: "stoppingCondition"))
    GetCollaborationTrainedModelResponse.add_member(:metrics_status, Shapes::ShapeRef.new(shape: MetricsStatus, location_name: "metricsStatus"))
    GetCollaborationTrainedModelResponse.add_member(:metrics_status_details, Shapes::ShapeRef.new(shape: String, location_name: "metricsStatusDetails"))
    GetCollaborationTrainedModelResponse.add_member(:logs_status, Shapes::ShapeRef.new(shape: LogsStatus, location_name: "logsStatus"))
    GetCollaborationTrainedModelResponse.add_member(:logs_status_details, Shapes::ShapeRef.new(shape: String, location_name: "logsStatusDetails"))
    GetCollaborationTrainedModelResponse.add_member(:training_container_image_digest, Shapes::ShapeRef.new(shape: String, location_name: "trainingContainerImageDigest"))
    GetCollaborationTrainedModelResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    GetCollaborationTrainedModelResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    GetCollaborationTrainedModelResponse.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "creatorAccountId"))
    GetCollaborationTrainedModelResponse.struct_class = Types::GetCollaborationTrainedModelResponse

    GetConfiguredAudienceModelPolicyRequest.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location: "uri", location_name: "configuredAudienceModelArn"))
    GetConfiguredAudienceModelPolicyRequest.struct_class = Types::GetConfiguredAudienceModelPolicyRequest

    GetConfiguredAudienceModelPolicyResponse.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location_name: "configuredAudienceModelArn"))
    GetConfiguredAudienceModelPolicyResponse.add_member(:configured_audience_model_policy, Shapes::ShapeRef.new(shape: ResourcePolicy, required: true, location_name: "configuredAudienceModelPolicy"))
    GetConfiguredAudienceModelPolicyResponse.add_member(:policy_hash, Shapes::ShapeRef.new(shape: Hash, required: true, location_name: "policyHash"))
    GetConfiguredAudienceModelPolicyResponse.struct_class = Types::GetConfiguredAudienceModelPolicyResponse

    GetConfiguredAudienceModelRequest.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location: "uri", location_name: "configuredAudienceModelArn"))
    GetConfiguredAudienceModelRequest.struct_class = Types::GetConfiguredAudienceModelRequest

    GetConfiguredAudienceModelResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    GetConfiguredAudienceModelResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    GetConfiguredAudienceModelResponse.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location_name: "configuredAudienceModelArn"))
    GetConfiguredAudienceModelResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    GetConfiguredAudienceModelResponse.add_member(:audience_model_arn, Shapes::ShapeRef.new(shape: AudienceModelArn, required: true, location_name: "audienceModelArn"))
    GetConfiguredAudienceModelResponse.add_member(:output_config, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelOutputConfig, required: true, location_name: "outputConfig"))
    GetConfiguredAudienceModelResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetConfiguredAudienceModelResponse.add_member(:status, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelStatus, required: true, location_name: "status"))
    GetConfiguredAudienceModelResponse.add_member(:shared_audience_metrics, Shapes::ShapeRef.new(shape: MetricsList, required: true, location_name: "sharedAudienceMetrics"))
    GetConfiguredAudienceModelResponse.add_member(:min_matching_seed_size, Shapes::ShapeRef.new(shape: MinMatchingSeedSize, location_name: "minMatchingSeedSize"))
    GetConfiguredAudienceModelResponse.add_member(:audience_size_config, Shapes::ShapeRef.new(shape: AudienceSizeConfig, location_name: "audienceSizeConfig"))
    GetConfiguredAudienceModelResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetConfiguredAudienceModelResponse.add_member(:child_resource_tag_on_create_policy, Shapes::ShapeRef.new(shape: TagOnCreatePolicy, location_name: "childResourceTagOnCreatePolicy"))
    GetConfiguredAudienceModelResponse.struct_class = Types::GetConfiguredAudienceModelResponse

    GetConfiguredModelAlgorithmAssociationRequest.add_member(:configured_model_algorithm_association_arn, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, required: true, location: "uri", location_name: "configuredModelAlgorithmAssociationArn"))
    GetConfiguredModelAlgorithmAssociationRequest.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "membershipIdentifier"))
    GetConfiguredModelAlgorithmAssociationRequest.struct_class = Types::GetConfiguredModelAlgorithmAssociationRequest

    GetConfiguredModelAlgorithmAssociationResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    GetConfiguredModelAlgorithmAssociationResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    GetConfiguredModelAlgorithmAssociationResponse.add_member(:configured_model_algorithm_association_arn, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, required: true, location_name: "configuredModelAlgorithmAssociationArn"))
    GetConfiguredModelAlgorithmAssociationResponse.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipIdentifier"))
    GetConfiguredModelAlgorithmAssociationResponse.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationIdentifier"))
    GetConfiguredModelAlgorithmAssociationResponse.add_member(:configured_model_algorithm_arn, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmArn, required: true, location_name: "configuredModelAlgorithmArn"))
    GetConfiguredModelAlgorithmAssociationResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    GetConfiguredModelAlgorithmAssociationResponse.add_member(:privacy_configuration, Shapes::ShapeRef.new(shape: PrivacyConfiguration, location_name: "privacyConfiguration"))
    GetConfiguredModelAlgorithmAssociationResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetConfiguredModelAlgorithmAssociationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetConfiguredModelAlgorithmAssociationResponse.struct_class = Types::GetConfiguredModelAlgorithmAssociationResponse

    GetConfiguredModelAlgorithmRequest.add_member(:configured_model_algorithm_arn, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmArn, required: true, location: "uri", location_name: "configuredModelAlgorithmArn"))
    GetConfiguredModelAlgorithmRequest.struct_class = Types::GetConfiguredModelAlgorithmRequest

    GetConfiguredModelAlgorithmResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    GetConfiguredModelAlgorithmResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    GetConfiguredModelAlgorithmResponse.add_member(:configured_model_algorithm_arn, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmArn, required: true, location_name: "configuredModelAlgorithmArn"))
    GetConfiguredModelAlgorithmResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    GetConfiguredModelAlgorithmResponse.add_member(:training_container_config, Shapes::ShapeRef.new(shape: ContainerConfig, location_name: "trainingContainerConfig"))
    GetConfiguredModelAlgorithmResponse.add_member(:inference_container_config, Shapes::ShapeRef.new(shape: InferenceContainerConfig, location_name: "inferenceContainerConfig"))
    GetConfiguredModelAlgorithmResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "roleArn"))
    GetConfiguredModelAlgorithmResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetConfiguredModelAlgorithmResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetConfiguredModelAlgorithmResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    GetConfiguredModelAlgorithmResponse.struct_class = Types::GetConfiguredModelAlgorithmResponse

    GetMLConfigurationRequest.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "membershipIdentifier"))
    GetMLConfigurationRequest.struct_class = Types::GetMLConfigurationRequest

    GetMLConfigurationResponse.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipIdentifier"))
    GetMLConfigurationResponse.add_member(:default_output_location, Shapes::ShapeRef.new(shape: MLOutputConfiguration, required: true, location_name: "defaultOutputLocation"))
    GetMLConfigurationResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    GetMLConfigurationResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    GetMLConfigurationResponse.struct_class = Types::GetMLConfigurationResponse

    GetMLInputChannelRequest.add_member(:ml_input_channel_arn, Shapes::ShapeRef.new(shape: MLInputChannelArn, required: true, location: "uri", location_name: "mlInputChannelArn"))
    GetMLInputChannelRequest.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "membershipIdentifier"))
    GetMLInputChannelRequest.struct_class = Types::GetMLInputChannelRequest

    GetMLInputChannelResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    GetMLInputChannelResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    GetMLInputChannelResponse.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipIdentifier"))
    GetMLInputChannelResponse.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationIdentifier"))
    GetMLInputChannelResponse.add_member(:input_channel, Shapes::ShapeRef.new(shape: InputChannel, required: true, location_name: "inputChannel"))
    GetMLInputChannelResponse.add_member(:protected_query_identifier, Shapes::ShapeRef.new(shape: UUID, location_name: "protectedQueryIdentifier"))
    GetMLInputChannelResponse.add_member(:ml_input_channel_arn, Shapes::ShapeRef.new(shape: MLInputChannelArn, required: true, location_name: "mlInputChannelArn"))
    GetMLInputChannelResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    GetMLInputChannelResponse.add_member(:configured_model_algorithm_associations, Shapes::ShapeRef.new(shape: GetMLInputChannelResponseConfiguredModelAlgorithmAssociationsList, required: true, location_name: "configuredModelAlgorithmAssociations"))
    GetMLInputChannelResponse.add_member(:status, Shapes::ShapeRef.new(shape: MLInputChannelStatus, required: true, location_name: "status"))
    GetMLInputChannelResponse.add_member(:status_details, Shapes::ShapeRef.new(shape: StatusDetails, location_name: "statusDetails"))
    GetMLInputChannelResponse.add_member(:retention_in_days, Shapes::ShapeRef.new(shape: GetMLInputChannelResponseRetentionInDaysInteger, required: true, location_name: "retentionInDays"))
    GetMLInputChannelResponse.add_member(:number_of_records, Shapes::ShapeRef.new(shape: GetMLInputChannelResponseNumberOfRecordsLong, location_name: "numberOfRecords"))
    GetMLInputChannelResponse.add_member(:number_of_files, Shapes::ShapeRef.new(shape: GetMLInputChannelResponseNumberOfFilesDouble, location_name: "numberOfFiles"))
    GetMLInputChannelResponse.add_member(:size_in_gb, Shapes::ShapeRef.new(shape: GetMLInputChannelResponseSizeInGbDouble, location_name: "sizeInGb"))
    GetMLInputChannelResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetMLInputChannelResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    GetMLInputChannelResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetMLInputChannelResponse.struct_class = Types::GetMLInputChannelResponse

    GetMLInputChannelResponseConfiguredModelAlgorithmAssociationsList.member = Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn)

    GetTrainedModelInferenceJobRequest.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "membershipIdentifier"))
    GetTrainedModelInferenceJobRequest.add_member(:trained_model_inference_job_arn, Shapes::ShapeRef.new(shape: TrainedModelInferenceJobArn, required: true, location: "uri", location_name: "trainedModelInferenceJobArn"))
    GetTrainedModelInferenceJobRequest.struct_class = Types::GetTrainedModelInferenceJobRequest

    GetTrainedModelInferenceJobResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    GetTrainedModelInferenceJobResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    GetTrainedModelInferenceJobResponse.add_member(:trained_model_inference_job_arn, Shapes::ShapeRef.new(shape: TrainedModelInferenceJobArn, required: true, location_name: "trainedModelInferenceJobArn"))
    GetTrainedModelInferenceJobResponse.add_member(:configured_model_algorithm_association_arn, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, location_name: "configuredModelAlgorithmAssociationArn"))
    GetTrainedModelInferenceJobResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    GetTrainedModelInferenceJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: TrainedModelInferenceJobStatus, required: true, location_name: "status"))
    GetTrainedModelInferenceJobResponse.add_member(:trained_model_arn, Shapes::ShapeRef.new(shape: TrainedModelArn, required: true, location_name: "trainedModelArn"))
    GetTrainedModelInferenceJobResponse.add_member(:trained_model_version_identifier, Shapes::ShapeRef.new(shape: UUID, location_name: "trainedModelVersionIdentifier"))
    GetTrainedModelInferenceJobResponse.add_member(:resource_config, Shapes::ShapeRef.new(shape: InferenceResourceConfig, required: true, location_name: "resourceConfig"))
    GetTrainedModelInferenceJobResponse.add_member(:output_configuration, Shapes::ShapeRef.new(shape: InferenceOutputConfiguration, required: true, location_name: "outputConfiguration"))
    GetTrainedModelInferenceJobResponse.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipIdentifier"))
    GetTrainedModelInferenceJobResponse.add_member(:data_source, Shapes::ShapeRef.new(shape: ModelInferenceDataSource, required: true, location_name: "dataSource"))
    GetTrainedModelInferenceJobResponse.add_member(:container_execution_parameters, Shapes::ShapeRef.new(shape: InferenceContainerExecutionParameters, location_name: "containerExecutionParameters"))
    GetTrainedModelInferenceJobResponse.add_member(:status_details, Shapes::ShapeRef.new(shape: StatusDetails, location_name: "statusDetails"))
    GetTrainedModelInferenceJobResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetTrainedModelInferenceJobResponse.add_member(:inference_container_image_digest, Shapes::ShapeRef.new(shape: String, location_name: "inferenceContainerImageDigest"))
    GetTrainedModelInferenceJobResponse.add_member(:environment, Shapes::ShapeRef.new(shape: InferenceEnvironmentMap, location_name: "environment"))
    GetTrainedModelInferenceJobResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    GetTrainedModelInferenceJobResponse.add_member(:metrics_status, Shapes::ShapeRef.new(shape: MetricsStatus, location_name: "metricsStatus"))
    GetTrainedModelInferenceJobResponse.add_member(:metrics_status_details, Shapes::ShapeRef.new(shape: String, location_name: "metricsStatusDetails"))
    GetTrainedModelInferenceJobResponse.add_member(:logs_status, Shapes::ShapeRef.new(shape: LogsStatus, location_name: "logsStatus"))
    GetTrainedModelInferenceJobResponse.add_member(:logs_status_details, Shapes::ShapeRef.new(shape: String, location_name: "logsStatusDetails"))
    GetTrainedModelInferenceJobResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetTrainedModelInferenceJobResponse.struct_class = Types::GetTrainedModelInferenceJobResponse

    GetTrainedModelRequest.add_member(:trained_model_arn, Shapes::ShapeRef.new(shape: TrainedModelArn, required: true, location: "uri", location_name: "trainedModelArn"))
    GetTrainedModelRequest.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "membershipIdentifier"))
    GetTrainedModelRequest.add_member(:version_identifier, Shapes::ShapeRef.new(shape: UUID, location: "querystring", location_name: "versionIdentifier"))
    GetTrainedModelRequest.struct_class = Types::GetTrainedModelRequest

    GetTrainedModelResponse.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipIdentifier"))
    GetTrainedModelResponse.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationIdentifier"))
    GetTrainedModelResponse.add_member(:trained_model_arn, Shapes::ShapeRef.new(shape: TrainedModelArn, required: true, location_name: "trainedModelArn"))
    GetTrainedModelResponse.add_member(:version_identifier, Shapes::ShapeRef.new(shape: UUID, location_name: "versionIdentifier"))
    GetTrainedModelResponse.add_member(:incremental_training_data_channels, Shapes::ShapeRef.new(shape: IncrementalTrainingDataChannelsOutput, location_name: "incrementalTrainingDataChannels"))
    GetTrainedModelResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    GetTrainedModelResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetTrainedModelResponse.add_member(:status, Shapes::ShapeRef.new(shape: TrainedModelStatus, required: true, location_name: "status"))
    GetTrainedModelResponse.add_member(:status_details, Shapes::ShapeRef.new(shape: StatusDetails, location_name: "statusDetails"))
    GetTrainedModelResponse.add_member(:configured_model_algorithm_association_arn, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, required: true, location_name: "configuredModelAlgorithmAssociationArn"))
    GetTrainedModelResponse.add_member(:resource_config, Shapes::ShapeRef.new(shape: ResourceConfig, location_name: "resourceConfig"))
    GetTrainedModelResponse.add_member(:training_input_mode, Shapes::ShapeRef.new(shape: TrainingInputMode, location_name: "trainingInputMode"))
    GetTrainedModelResponse.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: StoppingCondition, location_name: "stoppingCondition"))
    GetTrainedModelResponse.add_member(:metrics_status, Shapes::ShapeRef.new(shape: MetricsStatus, location_name: "metricsStatus"))
    GetTrainedModelResponse.add_member(:metrics_status_details, Shapes::ShapeRef.new(shape: String, location_name: "metricsStatusDetails"))
    GetTrainedModelResponse.add_member(:logs_status, Shapes::ShapeRef.new(shape: LogsStatus, location_name: "logsStatus"))
    GetTrainedModelResponse.add_member(:logs_status_details, Shapes::ShapeRef.new(shape: String, location_name: "logsStatusDetails"))
    GetTrainedModelResponse.add_member(:training_container_image_digest, Shapes::ShapeRef.new(shape: String, location_name: "trainingContainerImageDigest"))
    GetTrainedModelResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    GetTrainedModelResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    GetTrainedModelResponse.add_member(:hyperparameters, Shapes::ShapeRef.new(shape: HyperParameters, location_name: "hyperparameters"))
    GetTrainedModelResponse.add_member(:environment, Shapes::ShapeRef.new(shape: Environment, location_name: "environment"))
    GetTrainedModelResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    GetTrainedModelResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetTrainedModelResponse.add_member(:data_channels, Shapes::ShapeRef.new(shape: ModelTrainingDataChannels, required: true, location_name: "dataChannels"))
    GetTrainedModelResponse.struct_class = Types::GetTrainedModelResponse

    GetTrainingDatasetRequest.add_member(:training_dataset_arn, Shapes::ShapeRef.new(shape: TrainingDatasetArn, required: true, location: "uri", location_name: "trainingDatasetArn"))
    GetTrainingDatasetRequest.struct_class = Types::GetTrainingDatasetRequest

    GetTrainingDatasetResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    GetTrainingDatasetResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    GetTrainingDatasetResponse.add_member(:training_dataset_arn, Shapes::ShapeRef.new(shape: TrainingDatasetArn, required: true, location_name: "trainingDatasetArn"))
    GetTrainingDatasetResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    GetTrainingDatasetResponse.add_member(:training_data, Shapes::ShapeRef.new(shape: DatasetList, required: true, location_name: "trainingData"))
    GetTrainingDatasetResponse.add_member(:status, Shapes::ShapeRef.new(shape: TrainingDatasetStatus, required: true, location_name: "status"))
    GetTrainingDatasetResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "roleArn"))
    GetTrainingDatasetResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetTrainingDatasetResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetTrainingDatasetResponse.struct_class = Types::GetTrainingDatasetResponse

    GlueDataSource.add_member(:table_name, Shapes::ShapeRef.new(shape: GlueTableName, required: true, location_name: "tableName"))
    GlueDataSource.add_member(:database_name, Shapes::ShapeRef.new(shape: GlueDatabaseName, required: true, location_name: "databaseName"))
    GlueDataSource.add_member(:catalog_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "catalogId"))
    GlueDataSource.struct_class = Types::GlueDataSource

    HyperParameters.key = Shapes::ShapeRef.new(shape: HyperParametersKeyString)
    HyperParameters.value = Shapes::ShapeRef.new(shape: HyperParametersValueString)

    IncrementalTrainingDataChannel.add_member(:trained_model_arn, Shapes::ShapeRef.new(shape: TrainedModelArn, required: true, location_name: "trainedModelArn"))
    IncrementalTrainingDataChannel.add_member(:version_identifier, Shapes::ShapeRef.new(shape: UUID, location_name: "versionIdentifier"))
    IncrementalTrainingDataChannel.add_member(:channel_name, Shapes::ShapeRef.new(shape: ModelTrainingDataChannelName, required: true, location_name: "channelName"))
    IncrementalTrainingDataChannel.struct_class = Types::IncrementalTrainingDataChannel

    IncrementalTrainingDataChannelOutput.add_member(:channel_name, Shapes::ShapeRef.new(shape: ModelTrainingDataChannelName, required: true, location_name: "channelName"))
    IncrementalTrainingDataChannelOutput.add_member(:version_identifier, Shapes::ShapeRef.new(shape: UUID, location_name: "versionIdentifier"))
    IncrementalTrainingDataChannelOutput.add_member(:model_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "modelName"))
    IncrementalTrainingDataChannelOutput.struct_class = Types::IncrementalTrainingDataChannelOutput

    IncrementalTrainingDataChannels.member = Shapes::ShapeRef.new(shape: IncrementalTrainingDataChannel)

    IncrementalTrainingDataChannelsOutput.member = Shapes::ShapeRef.new(shape: IncrementalTrainingDataChannelOutput)

    InferenceContainerConfig.add_member(:image_uri, Shapes::ShapeRef.new(shape: AlgorithmImage, required: true, location_name: "imageUri"))
    InferenceContainerConfig.struct_class = Types::InferenceContainerConfig

    InferenceContainerExecutionParameters.add_member(:max_payload_in_mb, Shapes::ShapeRef.new(shape: InferenceContainerExecutionParametersMaxPayloadInMBInteger, location_name: "maxPayloadInMB"))
    InferenceContainerExecutionParameters.struct_class = Types::InferenceContainerExecutionParameters

    InferenceEnvironmentMap.key = Shapes::ShapeRef.new(shape: InferenceEnvironmentMapKeyString)
    InferenceEnvironmentMap.value = Shapes::ShapeRef.new(shape: InferenceEnvironmentMapValueString)

    InferenceOutputConfiguration.add_member(:accept, Shapes::ShapeRef.new(shape: InferenceOutputConfigurationAcceptString, location_name: "accept"))
    InferenceOutputConfiguration.add_member(:members, Shapes::ShapeRef.new(shape: InferenceReceiverMembers, required: true, location_name: "members"))
    InferenceOutputConfiguration.struct_class = Types::InferenceOutputConfiguration

    InferenceReceiverMember.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    InferenceReceiverMember.struct_class = Types::InferenceReceiverMember

    InferenceReceiverMembers.member = Shapes::ShapeRef.new(shape: InferenceReceiverMember)

    InferenceResourceConfig.add_member(:instance_type, Shapes::ShapeRef.new(shape: InferenceInstanceType, required: true, location_name: "instanceType"))
    InferenceResourceConfig.add_member(:instance_count, Shapes::ShapeRef.new(shape: InferenceResourceConfigInstanceCountInteger, location_name: "instanceCount"))
    InferenceResourceConfig.struct_class = Types::InferenceResourceConfig

    InputChannel.add_member(:data_source, Shapes::ShapeRef.new(shape: InputChannelDataSource, required: true, location_name: "dataSource"))
    InputChannel.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "roleArn"))
    InputChannel.struct_class = Types::InputChannel

    InputChannelDataSource.add_member(:protected_query_input_parameters, Shapes::ShapeRef.new(shape: ProtectedQueryInputParameters, location_name: "protectedQueryInputParameters"))
    InputChannelDataSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    InputChannelDataSource.add_member_subclass(:protected_query_input_parameters, Types::InputChannelDataSource::ProtectedQueryInputParameters)
    InputChannelDataSource.add_member_subclass(:unknown, Types::InputChannelDataSource::Unknown)
    InputChannelDataSource.struct_class = Types::InputChannelDataSource

    InternalServiceException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServiceException.struct_class = Types::InternalServiceException

    ListAudienceExportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAudienceExportJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAudienceExportJobsRequest.add_member(:audience_generation_job_arn, Shapes::ShapeRef.new(shape: AudienceGenerationJobArn, location: "querystring", location_name: "audienceGenerationJobArn"))
    ListAudienceExportJobsRequest.struct_class = Types::ListAudienceExportJobsRequest

    ListAudienceExportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAudienceExportJobsResponse.add_member(:audience_export_jobs, Shapes::ShapeRef.new(shape: AudienceExportJobList, required: true, location_name: "audienceExportJobs"))
    ListAudienceExportJobsResponse.struct_class = Types::ListAudienceExportJobsResponse

    ListAudienceGenerationJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAudienceGenerationJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAudienceGenerationJobsRequest.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, location: "querystring", location_name: "configuredAudienceModelArn"))
    ListAudienceGenerationJobsRequest.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, location: "querystring", location_name: "collaborationId"))
    ListAudienceGenerationJobsRequest.struct_class = Types::ListAudienceGenerationJobsRequest

    ListAudienceGenerationJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAudienceGenerationJobsResponse.add_member(:audience_generation_jobs, Shapes::ShapeRef.new(shape: AudienceGenerationJobList, required: true, location_name: "audienceGenerationJobs"))
    ListAudienceGenerationJobsResponse.struct_class = Types::ListAudienceGenerationJobsResponse

    ListAudienceModelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAudienceModelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAudienceModelsRequest.struct_class = Types::ListAudienceModelsRequest

    ListAudienceModelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAudienceModelsResponse.add_member(:audience_models, Shapes::ShapeRef.new(shape: AudienceModelList, required: true, location_name: "audienceModels"))
    ListAudienceModelsResponse.struct_class = Types::ListAudienceModelsResponse

    ListCollaborationConfiguredModelAlgorithmAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListCollaborationConfiguredModelAlgorithmAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCollaborationConfiguredModelAlgorithmAssociationsRequest.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "collaborationIdentifier"))
    ListCollaborationConfiguredModelAlgorithmAssociationsRequest.struct_class = Types::ListCollaborationConfiguredModelAlgorithmAssociationsRequest

    ListCollaborationConfiguredModelAlgorithmAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCollaborationConfiguredModelAlgorithmAssociationsResponse.add_member(:collaboration_configured_model_algorithm_associations, Shapes::ShapeRef.new(shape: CollaborationConfiguredModelAlgorithmAssociationList, required: true, location_name: "collaborationConfiguredModelAlgorithmAssociations"))
    ListCollaborationConfiguredModelAlgorithmAssociationsResponse.struct_class = Types::ListCollaborationConfiguredModelAlgorithmAssociationsResponse

    ListCollaborationMLInputChannelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListCollaborationMLInputChannelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCollaborationMLInputChannelsRequest.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "collaborationIdentifier"))
    ListCollaborationMLInputChannelsRequest.struct_class = Types::ListCollaborationMLInputChannelsRequest

    ListCollaborationMLInputChannelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCollaborationMLInputChannelsResponse.add_member(:collaboration_ml_input_channels_list, Shapes::ShapeRef.new(shape: CollaborationMLInputChannelsList, required: true, location_name: "collaborationMLInputChannelsList"))
    ListCollaborationMLInputChannelsResponse.struct_class = Types::ListCollaborationMLInputChannelsResponse

    ListCollaborationTrainedModelExportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListCollaborationTrainedModelExportJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCollaborationTrainedModelExportJobsRequest.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "collaborationIdentifier"))
    ListCollaborationTrainedModelExportJobsRequest.add_member(:trained_model_arn, Shapes::ShapeRef.new(shape: TrainedModelArn, required: true, location: "uri", location_name: "trainedModelArn"))
    ListCollaborationTrainedModelExportJobsRequest.add_member(:trained_model_version_identifier, Shapes::ShapeRef.new(shape: UUID, location: "querystring", location_name: "trainedModelVersionIdentifier"))
    ListCollaborationTrainedModelExportJobsRequest.struct_class = Types::ListCollaborationTrainedModelExportJobsRequest

    ListCollaborationTrainedModelExportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCollaborationTrainedModelExportJobsResponse.add_member(:collaboration_trained_model_export_jobs, Shapes::ShapeRef.new(shape: CollaborationTrainedModelExportJobList, required: true, location_name: "collaborationTrainedModelExportJobs"))
    ListCollaborationTrainedModelExportJobsResponse.struct_class = Types::ListCollaborationTrainedModelExportJobsResponse

    ListCollaborationTrainedModelInferenceJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListCollaborationTrainedModelInferenceJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCollaborationTrainedModelInferenceJobsRequest.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "collaborationIdentifier"))
    ListCollaborationTrainedModelInferenceJobsRequest.add_member(:trained_model_arn, Shapes::ShapeRef.new(shape: TrainedModelArn, location: "querystring", location_name: "trainedModelArn"))
    ListCollaborationTrainedModelInferenceJobsRequest.add_member(:trained_model_version_identifier, Shapes::ShapeRef.new(shape: UUID, location: "querystring", location_name: "trainedModelVersionIdentifier"))
    ListCollaborationTrainedModelInferenceJobsRequest.struct_class = Types::ListCollaborationTrainedModelInferenceJobsRequest

    ListCollaborationTrainedModelInferenceJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCollaborationTrainedModelInferenceJobsResponse.add_member(:collaboration_trained_model_inference_jobs, Shapes::ShapeRef.new(shape: CollaborationTrainedModelInferenceJobList, required: true, location_name: "collaborationTrainedModelInferenceJobs"))
    ListCollaborationTrainedModelInferenceJobsResponse.struct_class = Types::ListCollaborationTrainedModelInferenceJobsResponse

    ListCollaborationTrainedModelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListCollaborationTrainedModelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCollaborationTrainedModelsRequest.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "collaborationIdentifier"))
    ListCollaborationTrainedModelsRequest.struct_class = Types::ListCollaborationTrainedModelsRequest

    ListCollaborationTrainedModelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCollaborationTrainedModelsResponse.add_member(:collaboration_trained_models, Shapes::ShapeRef.new(shape: CollaborationTrainedModelList, required: true, location_name: "collaborationTrainedModels"))
    ListCollaborationTrainedModelsResponse.struct_class = Types::ListCollaborationTrainedModelsResponse

    ListConfiguredAudienceModelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListConfiguredAudienceModelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListConfiguredAudienceModelsRequest.struct_class = Types::ListConfiguredAudienceModelsRequest

    ListConfiguredAudienceModelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListConfiguredAudienceModelsResponse.add_member(:configured_audience_models, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelList, required: true, location_name: "configuredAudienceModels"))
    ListConfiguredAudienceModelsResponse.struct_class = Types::ListConfiguredAudienceModelsResponse

    ListConfiguredModelAlgorithmAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListConfiguredModelAlgorithmAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListConfiguredModelAlgorithmAssociationsRequest.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "membershipIdentifier"))
    ListConfiguredModelAlgorithmAssociationsRequest.struct_class = Types::ListConfiguredModelAlgorithmAssociationsRequest

    ListConfiguredModelAlgorithmAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListConfiguredModelAlgorithmAssociationsResponse.add_member(:configured_model_algorithm_associations, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationList, required: true, location_name: "configuredModelAlgorithmAssociations"))
    ListConfiguredModelAlgorithmAssociationsResponse.struct_class = Types::ListConfiguredModelAlgorithmAssociationsResponse

    ListConfiguredModelAlgorithmsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListConfiguredModelAlgorithmsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListConfiguredModelAlgorithmsRequest.struct_class = Types::ListConfiguredModelAlgorithmsRequest

    ListConfiguredModelAlgorithmsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListConfiguredModelAlgorithmsResponse.add_member(:configured_model_algorithms, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmList, required: true, location_name: "configuredModelAlgorithms"))
    ListConfiguredModelAlgorithmsResponse.struct_class = Types::ListConfiguredModelAlgorithmsResponse

    ListMLInputChannelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListMLInputChannelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListMLInputChannelsRequest.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "membershipIdentifier"))
    ListMLInputChannelsRequest.struct_class = Types::ListMLInputChannelsRequest

    ListMLInputChannelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListMLInputChannelsResponse.add_member(:ml_input_channels_list, Shapes::ShapeRef.new(shape: MLInputChannelsList, required: true, location_name: "mlInputChannelsList"))
    ListMLInputChannelsResponse.struct_class = Types::ListMLInputChannelsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTrainedModelInferenceJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTrainedModelInferenceJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTrainedModelInferenceJobsRequest.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "membershipIdentifier"))
    ListTrainedModelInferenceJobsRequest.add_member(:trained_model_arn, Shapes::ShapeRef.new(shape: TrainedModelArn, location: "querystring", location_name: "trainedModelArn"))
    ListTrainedModelInferenceJobsRequest.add_member(:trained_model_version_identifier, Shapes::ShapeRef.new(shape: UUID, location: "querystring", location_name: "trainedModelVersionIdentifier"))
    ListTrainedModelInferenceJobsRequest.struct_class = Types::ListTrainedModelInferenceJobsRequest

    ListTrainedModelInferenceJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTrainedModelInferenceJobsResponse.add_member(:trained_model_inference_jobs, Shapes::ShapeRef.new(shape: TrainedModelInferenceJobList, required: true, location_name: "trainedModelInferenceJobs"))
    ListTrainedModelInferenceJobsResponse.struct_class = Types::ListTrainedModelInferenceJobsResponse

    ListTrainedModelVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTrainedModelVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTrainedModelVersionsRequest.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "membershipIdentifier"))
    ListTrainedModelVersionsRequest.add_member(:trained_model_arn, Shapes::ShapeRef.new(shape: TrainedModelArn, required: true, location: "uri", location_name: "trainedModelArn"))
    ListTrainedModelVersionsRequest.add_member(:status, Shapes::ShapeRef.new(shape: TrainedModelStatus, location: "querystring", location_name: "status"))
    ListTrainedModelVersionsRequest.struct_class = Types::ListTrainedModelVersionsRequest

    ListTrainedModelVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTrainedModelVersionsResponse.add_member(:trained_models, Shapes::ShapeRef.new(shape: TrainedModelList, required: true, location_name: "trainedModels"))
    ListTrainedModelVersionsResponse.struct_class = Types::ListTrainedModelVersionsResponse

    ListTrainedModelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTrainedModelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTrainedModelsRequest.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "membershipIdentifier"))
    ListTrainedModelsRequest.struct_class = Types::ListTrainedModelsRequest

    ListTrainedModelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTrainedModelsResponse.add_member(:trained_models, Shapes::ShapeRef.new(shape: TrainedModelList, required: true, location_name: "trainedModels"))
    ListTrainedModelsResponse.struct_class = Types::ListTrainedModelsResponse

    ListTrainingDatasetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTrainingDatasetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTrainingDatasetsRequest.struct_class = Types::ListTrainingDatasetsRequest

    ListTrainingDatasetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTrainingDatasetsResponse.add_member(:training_datasets, Shapes::ShapeRef.new(shape: TrainingDatasetList, required: true, location_name: "trainingDatasets"))
    ListTrainingDatasetsResponse.struct_class = Types::ListTrainingDatasetsResponse

    LogsConfigurationPolicy.add_member(:allowed_account_ids, Shapes::ShapeRef.new(shape: AccountIdList, required: true, location_name: "allowedAccountIds"))
    LogsConfigurationPolicy.add_member(:filter_pattern, Shapes::ShapeRef.new(shape: LogsConfigurationPolicyFilterPatternString, location_name: "filterPattern"))
    LogsConfigurationPolicy.struct_class = Types::LogsConfigurationPolicy

    LogsConfigurationPolicyList.member = Shapes::ShapeRef.new(shape: LogsConfigurationPolicy)

    MLInputChannelSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    MLInputChannelSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    MLInputChannelSummary.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipIdentifier"))
    MLInputChannelSummary.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationIdentifier"))
    MLInputChannelSummary.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    MLInputChannelSummary.add_member(:configured_model_algorithm_associations, Shapes::ShapeRef.new(shape: MLInputChannelSummaryConfiguredModelAlgorithmAssociationsList, required: true, location_name: "configuredModelAlgorithmAssociations"))
    MLInputChannelSummary.add_member(:protected_query_identifier, Shapes::ShapeRef.new(shape: UUID, location_name: "protectedQueryIdentifier"))
    MLInputChannelSummary.add_member(:ml_input_channel_arn, Shapes::ShapeRef.new(shape: MLInputChannelArn, required: true, location_name: "mlInputChannelArn"))
    MLInputChannelSummary.add_member(:status, Shapes::ShapeRef.new(shape: MLInputChannelStatus, required: true, location_name: "status"))
    MLInputChannelSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    MLInputChannelSummary.struct_class = Types::MLInputChannelSummary

    MLInputChannelSummaryConfiguredModelAlgorithmAssociationsList.member = Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn)

    MLInputChannelsList.member = Shapes::ShapeRef.new(shape: MLInputChannelSummary)

    MLOutputConfiguration.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, location_name: "destination"))
    MLOutputConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "roleArn"))
    MLOutputConfiguration.struct_class = Types::MLOutputConfiguration

    MetricDefinition.add_member(:name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "name"))
    MetricDefinition.add_member(:regex, Shapes::ShapeRef.new(shape: MetricRegex, required: true, location_name: "regex"))
    MetricDefinition.struct_class = Types::MetricDefinition

    MetricDefinitionList.member = Shapes::ShapeRef.new(shape: MetricDefinition)

    MetricsConfigurationPolicy.add_member(:noise_level, Shapes::ShapeRef.new(shape: NoiseLevelType, required: true, location_name: "noiseLevel"))
    MetricsConfigurationPolicy.struct_class = Types::MetricsConfigurationPolicy

    MetricsList.member = Shapes::ShapeRef.new(shape: SharedAudienceMetrics)

    ModelInferenceDataSource.add_member(:ml_input_channel_arn, Shapes::ShapeRef.new(shape: MLInputChannelArn, required: true, location_name: "mlInputChannelArn"))
    ModelInferenceDataSource.struct_class = Types::ModelInferenceDataSource

    ModelTrainingDataChannel.add_member(:ml_input_channel_arn, Shapes::ShapeRef.new(shape: MLInputChannelArn, required: true, location_name: "mlInputChannelArn"))
    ModelTrainingDataChannel.add_member(:channel_name, Shapes::ShapeRef.new(shape: ModelTrainingDataChannelName, required: true, location_name: "channelName"))
    ModelTrainingDataChannel.add_member(:s3_data_distribution_type, Shapes::ShapeRef.new(shape: S3DataDistributionType, location_name: "s3DataDistributionType"))
    ModelTrainingDataChannel.struct_class = Types::ModelTrainingDataChannel

    ModelTrainingDataChannels.member = Shapes::ShapeRef.new(shape: ModelTrainingDataChannel)

    ParameterMap.key = Shapes::ShapeRef.new(shape: ParameterKey)
    ParameterMap.value = Shapes::ShapeRef.new(shape: ParameterValue)

    PrivacyConfiguration.add_member(:policies, Shapes::ShapeRef.new(shape: PrivacyConfigurationPolicies, required: true, location_name: "policies"))
    PrivacyConfiguration.struct_class = Types::PrivacyConfiguration

    PrivacyConfigurationPolicies.add_member(:trained_models, Shapes::ShapeRef.new(shape: TrainedModelsConfigurationPolicy, location_name: "trainedModels"))
    PrivacyConfigurationPolicies.add_member(:trained_model_exports, Shapes::ShapeRef.new(shape: TrainedModelExportsConfigurationPolicy, location_name: "trainedModelExports"))
    PrivacyConfigurationPolicies.add_member(:trained_model_inference_jobs, Shapes::ShapeRef.new(shape: TrainedModelInferenceJobsConfigurationPolicy, location_name: "trainedModelInferenceJobs"))
    PrivacyConfigurationPolicies.struct_class = Types::PrivacyConfigurationPolicies

    ProtectedQueryInputParameters.add_member(:sql_parameters, Shapes::ShapeRef.new(shape: ProtectedQuerySQLParameters, required: true, location_name: "sqlParameters"))
    ProtectedQueryInputParameters.add_member(:compute_configuration, Shapes::ShapeRef.new(shape: ComputeConfiguration, location_name: "computeConfiguration"))
    ProtectedQueryInputParameters.add_member(:result_format, Shapes::ShapeRef.new(shape: ResultFormat, location_name: "resultFormat"))
    ProtectedQueryInputParameters.struct_class = Types::ProtectedQueryInputParameters

    ProtectedQuerySQLParameters.add_member(:query_string, Shapes::ShapeRef.new(shape: ProtectedQuerySQLParametersQueryStringString, location_name: "queryString"))
    ProtectedQuerySQLParameters.add_member(:analysis_template_arn, Shapes::ShapeRef.new(shape: AnalysisTemplateArn, location_name: "analysisTemplateArn"))
    ProtectedQuerySQLParameters.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterMap, location_name: "parameters"))
    ProtectedQuerySQLParameters.struct_class = Types::ProtectedQuerySQLParameters

    PutConfiguredAudienceModelPolicyRequest.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location: "uri", location_name: "configuredAudienceModelArn"))
    PutConfiguredAudienceModelPolicyRequest.add_member(:configured_audience_model_policy, Shapes::ShapeRef.new(shape: ResourcePolicy, required: true, location_name: "configuredAudienceModelPolicy"))
    PutConfiguredAudienceModelPolicyRequest.add_member(:previous_policy_hash, Shapes::ShapeRef.new(shape: Hash, location_name: "previousPolicyHash"))
    PutConfiguredAudienceModelPolicyRequest.add_member(:policy_existence_condition, Shapes::ShapeRef.new(shape: PolicyExistenceCondition, location_name: "policyExistenceCondition"))
    PutConfiguredAudienceModelPolicyRequest.struct_class = Types::PutConfiguredAudienceModelPolicyRequest

    PutConfiguredAudienceModelPolicyResponse.add_member(:configured_audience_model_policy, Shapes::ShapeRef.new(shape: ResourcePolicy, required: true, location_name: "configuredAudienceModelPolicy"))
    PutConfiguredAudienceModelPolicyResponse.add_member(:policy_hash, Shapes::ShapeRef.new(shape: Hash, required: true, location_name: "policyHash"))
    PutConfiguredAudienceModelPolicyResponse.struct_class = Types::PutConfiguredAudienceModelPolicyResponse

    PutMLConfigurationRequest.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "membershipIdentifier"))
    PutMLConfigurationRequest.add_member(:default_output_location, Shapes::ShapeRef.new(shape: MLOutputConfiguration, required: true, location_name: "defaultOutputLocation"))
    PutMLConfigurationRequest.struct_class = Types::PutMLConfigurationRequest

    RelevanceMetric.add_member(:audience_size, Shapes::ShapeRef.new(shape: AudienceSize, required: true, location_name: "audienceSize"))
    RelevanceMetric.add_member(:score, Shapes::ShapeRef.new(shape: RelevanceMetricScoreDouble, location_name: "score"))
    RelevanceMetric.struct_class = Types::RelevanceMetric

    RelevanceMetrics.member = Shapes::ShapeRef.new(shape: RelevanceMetric)

    ResourceConfig.add_member(:instance_count, Shapes::ShapeRef.new(shape: ResourceConfigInstanceCountInteger, location_name: "instanceCount"))
    ResourceConfig.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, required: true, location_name: "instanceType"))
    ResourceConfig.add_member(:volume_size_in_gb, Shapes::ShapeRef.new(shape: ResourceConfigVolumeSizeInGBInteger, required: true, location_name: "volumeSizeInGB"))
    ResourceConfig.struct_class = Types::ResourceConfig

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3ConfigMap.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Path, required: true, location_name: "s3Uri"))
    S3ConfigMap.struct_class = Types::S3ConfigMap

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:quota_name, Shapes::ShapeRef.new(shape: String, location_name: "quotaName"))
    ServiceQuotaExceededException.add_member(:quota_value, Shapes::ShapeRef.new(shape: ServiceQuotaExceededExceptionQuotaValueDouble, location_name: "quotaValue"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartAudienceExportJobRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    StartAudienceExportJobRequest.add_member(:audience_generation_job_arn, Shapes::ShapeRef.new(shape: AudienceGenerationJobArn, required: true, location_name: "audienceGenerationJobArn"))
    StartAudienceExportJobRequest.add_member(:audience_size, Shapes::ShapeRef.new(shape: AudienceSize, required: true, location_name: "audienceSize"))
    StartAudienceExportJobRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    StartAudienceExportJobRequest.struct_class = Types::StartAudienceExportJobRequest

    StartAudienceGenerationJobRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    StartAudienceGenerationJobRequest.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location_name: "configuredAudienceModelArn"))
    StartAudienceGenerationJobRequest.add_member(:seed_audience, Shapes::ShapeRef.new(shape: AudienceGenerationJobDataSource, required: true, location_name: "seedAudience"))
    StartAudienceGenerationJobRequest.add_member(:include_seed_in_output, Shapes::ShapeRef.new(shape: Boolean, location_name: "includeSeedInOutput"))
    StartAudienceGenerationJobRequest.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, location_name: "collaborationId"))
    StartAudienceGenerationJobRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    StartAudienceGenerationJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    StartAudienceGenerationJobRequest.struct_class = Types::StartAudienceGenerationJobRequest

    StartAudienceGenerationJobResponse.add_member(:audience_generation_job_arn, Shapes::ShapeRef.new(shape: AudienceGenerationJobArn, required: true, location_name: "audienceGenerationJobArn"))
    StartAudienceGenerationJobResponse.struct_class = Types::StartAudienceGenerationJobResponse

    StartTrainedModelExportJobRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    StartTrainedModelExportJobRequest.add_member(:trained_model_arn, Shapes::ShapeRef.new(shape: TrainedModelArn, required: true, location: "uri", location_name: "trainedModelArn"))
    StartTrainedModelExportJobRequest.add_member(:trained_model_version_identifier, Shapes::ShapeRef.new(shape: UUID, location_name: "trainedModelVersionIdentifier"))
    StartTrainedModelExportJobRequest.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "membershipIdentifier"))
    StartTrainedModelExportJobRequest.add_member(:output_configuration, Shapes::ShapeRef.new(shape: TrainedModelExportOutputConfiguration, required: true, location_name: "outputConfiguration"))
    StartTrainedModelExportJobRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    StartTrainedModelExportJobRequest.struct_class = Types::StartTrainedModelExportJobRequest

    StartTrainedModelInferenceJobRequest.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "membershipIdentifier"))
    StartTrainedModelInferenceJobRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    StartTrainedModelInferenceJobRequest.add_member(:trained_model_arn, Shapes::ShapeRef.new(shape: TrainedModelArn, required: true, location_name: "trainedModelArn"))
    StartTrainedModelInferenceJobRequest.add_member(:trained_model_version_identifier, Shapes::ShapeRef.new(shape: UUID, location_name: "trainedModelVersionIdentifier"))
    StartTrainedModelInferenceJobRequest.add_member(:configured_model_algorithm_association_arn, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, location_name: "configuredModelAlgorithmAssociationArn"))
    StartTrainedModelInferenceJobRequest.add_member(:resource_config, Shapes::ShapeRef.new(shape: InferenceResourceConfig, required: true, location_name: "resourceConfig"))
    StartTrainedModelInferenceJobRequest.add_member(:output_configuration, Shapes::ShapeRef.new(shape: InferenceOutputConfiguration, required: true, location_name: "outputConfiguration"))
    StartTrainedModelInferenceJobRequest.add_member(:data_source, Shapes::ShapeRef.new(shape: ModelInferenceDataSource, required: true, location_name: "dataSource"))
    StartTrainedModelInferenceJobRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    StartTrainedModelInferenceJobRequest.add_member(:container_execution_parameters, Shapes::ShapeRef.new(shape: InferenceContainerExecutionParameters, location_name: "containerExecutionParameters"))
    StartTrainedModelInferenceJobRequest.add_member(:environment, Shapes::ShapeRef.new(shape: InferenceEnvironmentMap, location_name: "environment"))
    StartTrainedModelInferenceJobRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    StartTrainedModelInferenceJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    StartTrainedModelInferenceJobRequest.struct_class = Types::StartTrainedModelInferenceJobRequest

    StartTrainedModelInferenceJobResponse.add_member(:trained_model_inference_job_arn, Shapes::ShapeRef.new(shape: TrainedModelInferenceJobArn, required: true, location_name: "trainedModelInferenceJobArn"))
    StartTrainedModelInferenceJobResponse.struct_class = Types::StartTrainedModelInferenceJobResponse

    StatusDetails.add_member(:status_code, Shapes::ShapeRef.new(shape: String, location_name: "statusCode"))
    StatusDetails.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    StatusDetails.struct_class = Types::StatusDetails

    StoppingCondition.add_member(:max_runtime_in_seconds, Shapes::ShapeRef.new(shape: StoppingConditionMaxRuntimeInSecondsInteger, location_name: "maxRuntimeInSeconds"))
    StoppingCondition.struct_class = Types::StoppingCondition

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TrainedModelArtifactMaxSize.add_member(:unit, Shapes::ShapeRef.new(shape: TrainedModelArtifactMaxSizeUnitType, required: true, location_name: "unit"))
    TrainedModelArtifactMaxSize.add_member(:value, Shapes::ShapeRef.new(shape: TrainedModelArtifactMaxSizeValue, required: true, location_name: "value"))
    TrainedModelArtifactMaxSize.struct_class = Types::TrainedModelArtifactMaxSize

    TrainedModelExportFileTypeList.member = Shapes::ShapeRef.new(shape: TrainedModelExportFileType)

    TrainedModelExportOutputConfiguration.add_member(:members, Shapes::ShapeRef.new(shape: TrainedModelExportReceiverMembers, required: true, location_name: "members"))
    TrainedModelExportOutputConfiguration.struct_class = Types::TrainedModelExportOutputConfiguration

    TrainedModelExportReceiverMember.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    TrainedModelExportReceiverMember.struct_class = Types::TrainedModelExportReceiverMember

    TrainedModelExportReceiverMembers.member = Shapes::ShapeRef.new(shape: TrainedModelExportReceiverMember)

    TrainedModelExportsConfigurationPolicy.add_member(:max_size, Shapes::ShapeRef.new(shape: TrainedModelExportsMaxSize, required: true, location_name: "maxSize"))
    TrainedModelExportsConfigurationPolicy.add_member(:files_to_export, Shapes::ShapeRef.new(shape: TrainedModelExportFileTypeList, required: true, location_name: "filesToExport"))
    TrainedModelExportsConfigurationPolicy.struct_class = Types::TrainedModelExportsConfigurationPolicy

    TrainedModelExportsMaxSize.add_member(:unit, Shapes::ShapeRef.new(shape: TrainedModelExportsMaxSizeUnitType, required: true, location_name: "unit"))
    TrainedModelExportsMaxSize.add_member(:value, Shapes::ShapeRef.new(shape: TrainedModelExportsMaxSizeValue, required: true, location_name: "value"))
    TrainedModelExportsMaxSize.struct_class = Types::TrainedModelExportsMaxSize

    TrainedModelInferenceJobList.member = Shapes::ShapeRef.new(shape: TrainedModelInferenceJobSummary)

    TrainedModelInferenceJobSummary.add_member(:trained_model_inference_job_arn, Shapes::ShapeRef.new(shape: TrainedModelInferenceJobArn, required: true, location_name: "trainedModelInferenceJobArn"))
    TrainedModelInferenceJobSummary.add_member(:configured_model_algorithm_association_arn, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, location_name: "configuredModelAlgorithmAssociationArn"))
    TrainedModelInferenceJobSummary.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipIdentifier"))
    TrainedModelInferenceJobSummary.add_member(:trained_model_arn, Shapes::ShapeRef.new(shape: TrainedModelArn, required: true, location_name: "trainedModelArn"))
    TrainedModelInferenceJobSummary.add_member(:trained_model_version_identifier, Shapes::ShapeRef.new(shape: UUID, location_name: "trainedModelVersionIdentifier"))
    TrainedModelInferenceJobSummary.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationIdentifier"))
    TrainedModelInferenceJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: TrainedModelInferenceJobStatus, required: true, location_name: "status"))
    TrainedModelInferenceJobSummary.add_member(:output_configuration, Shapes::ShapeRef.new(shape: InferenceOutputConfiguration, required: true, location_name: "outputConfiguration"))
    TrainedModelInferenceJobSummary.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    TrainedModelInferenceJobSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    TrainedModelInferenceJobSummary.add_member(:metrics_status, Shapes::ShapeRef.new(shape: MetricsStatus, location_name: "metricsStatus"))
    TrainedModelInferenceJobSummary.add_member(:metrics_status_details, Shapes::ShapeRef.new(shape: String, location_name: "metricsStatusDetails"))
    TrainedModelInferenceJobSummary.add_member(:logs_status, Shapes::ShapeRef.new(shape: LogsStatus, location_name: "logsStatus"))
    TrainedModelInferenceJobSummary.add_member(:logs_status_details, Shapes::ShapeRef.new(shape: String, location_name: "logsStatusDetails"))
    TrainedModelInferenceJobSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    TrainedModelInferenceJobSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    TrainedModelInferenceJobSummary.struct_class = Types::TrainedModelInferenceJobSummary

    TrainedModelInferenceJobsConfigurationPolicy.add_member(:container_logs, Shapes::ShapeRef.new(shape: LogsConfigurationPolicyList, location_name: "containerLogs"))
    TrainedModelInferenceJobsConfigurationPolicy.add_member(:max_output_size, Shapes::ShapeRef.new(shape: TrainedModelInferenceMaxOutputSize, location_name: "maxOutputSize"))
    TrainedModelInferenceJobsConfigurationPolicy.struct_class = Types::TrainedModelInferenceJobsConfigurationPolicy

    TrainedModelInferenceMaxOutputSize.add_member(:unit, Shapes::ShapeRef.new(shape: TrainedModelInferenceMaxOutputSizeUnitType, required: true, location_name: "unit"))
    TrainedModelInferenceMaxOutputSize.add_member(:value, Shapes::ShapeRef.new(shape: TrainedModelInferenceMaxOutputSizeValue, required: true, location_name: "value"))
    TrainedModelInferenceMaxOutputSize.struct_class = Types::TrainedModelInferenceMaxOutputSize

    TrainedModelList.member = Shapes::ShapeRef.new(shape: TrainedModelSummary)

    TrainedModelSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    TrainedModelSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    TrainedModelSummary.add_member(:trained_model_arn, Shapes::ShapeRef.new(shape: TrainedModelArn, required: true, location_name: "trainedModelArn"))
    TrainedModelSummary.add_member(:version_identifier, Shapes::ShapeRef.new(shape: UUID, location_name: "versionIdentifier"))
    TrainedModelSummary.add_member(:incremental_training_data_channels, Shapes::ShapeRef.new(shape: IncrementalTrainingDataChannelsOutput, location_name: "incrementalTrainingDataChannels"))
    TrainedModelSummary.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    TrainedModelSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    TrainedModelSummary.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipIdentifier"))
    TrainedModelSummary.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationIdentifier"))
    TrainedModelSummary.add_member(:status, Shapes::ShapeRef.new(shape: TrainedModelStatus, required: true, location_name: "status"))
    TrainedModelSummary.add_member(:configured_model_algorithm_association_arn, Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, required: true, location_name: "configuredModelAlgorithmAssociationArn"))
    TrainedModelSummary.struct_class = Types::TrainedModelSummary

    TrainedModelsConfigurationPolicy.add_member(:container_logs, Shapes::ShapeRef.new(shape: LogsConfigurationPolicyList, location_name: "containerLogs"))
    TrainedModelsConfigurationPolicy.add_member(:container_metrics, Shapes::ShapeRef.new(shape: MetricsConfigurationPolicy, location_name: "containerMetrics"))
    TrainedModelsConfigurationPolicy.add_member(:max_artifact_size, Shapes::ShapeRef.new(shape: TrainedModelArtifactMaxSize, location_name: "maxArtifactSize"))
    TrainedModelsConfigurationPolicy.struct_class = Types::TrainedModelsConfigurationPolicy

    TrainingDatasetList.member = Shapes::ShapeRef.new(shape: TrainingDatasetSummary)

    TrainingDatasetSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createTime"))
    TrainingDatasetSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    TrainingDatasetSummary.add_member(:training_dataset_arn, Shapes::ShapeRef.new(shape: TrainingDatasetArn, required: true, location_name: "trainingDatasetArn"))
    TrainingDatasetSummary.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    TrainingDatasetSummary.add_member(:status, Shapes::ShapeRef.new(shape: TrainingDatasetStatus, required: true, location_name: "status"))
    TrainingDatasetSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    TrainingDatasetSummary.struct_class = Types::TrainingDatasetSummary

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateConfiguredAudienceModelRequest.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location: "uri", location_name: "configuredAudienceModelArn"))
    UpdateConfiguredAudienceModelRequest.add_member(:output_config, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelOutputConfig, location_name: "outputConfig"))
    UpdateConfiguredAudienceModelRequest.add_member(:audience_model_arn, Shapes::ShapeRef.new(shape: AudienceModelArn, location_name: "audienceModelArn"))
    UpdateConfiguredAudienceModelRequest.add_member(:shared_audience_metrics, Shapes::ShapeRef.new(shape: MetricsList, location_name: "sharedAudienceMetrics"))
    UpdateConfiguredAudienceModelRequest.add_member(:min_matching_seed_size, Shapes::ShapeRef.new(shape: MinMatchingSeedSize, location_name: "minMatchingSeedSize"))
    UpdateConfiguredAudienceModelRequest.add_member(:audience_size_config, Shapes::ShapeRef.new(shape: AudienceSizeConfig, location_name: "audienceSizeConfig"))
    UpdateConfiguredAudienceModelRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    UpdateConfiguredAudienceModelRequest.struct_class = Types::UpdateConfiguredAudienceModelRequest

    UpdateConfiguredAudienceModelResponse.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location_name: "configuredAudienceModelArn"))
    UpdateConfiguredAudienceModelResponse.struct_class = Types::UpdateConfiguredAudienceModelResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    WorkerComputeConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: WorkerComputeType, location_name: "type"))
    WorkerComputeConfiguration.add_member(:number, Shapes::ShapeRef.new(shape: WorkerComputeConfigurationNumberInteger, location_name: "number"))
    WorkerComputeConfiguration.struct_class = Types::WorkerComputeConfiguration


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-09-06"

      api.metadata = {
        "apiVersion" => "2023-09-06",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "cleanrooms-ml",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Clean Rooms ML",
        "serviceId" => "CleanRoomsML",
        "signatureVersion" => "v4",
        "signingName" => "cleanrooms-ml",
        "uid" => "cleanroomsml-2023-09-06",
      }

      api.add_operation(:cancel_trained_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelTrainedModel"
        o.http_method = "PATCH"
        o.http_request_uri = "/memberships/{membershipIdentifier}/trained-models/{trainedModelArn}"
        o.input = Shapes::ShapeRef.new(shape: CancelTrainedModelRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:cancel_trained_model_inference_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelTrainedModelInferenceJob"
        o.http_method = "PATCH"
        o.http_request_uri = "/memberships/{membershipIdentifier}/trained-model-inference-jobs/{trainedModelInferenceJobArn}"
        o.input = Shapes::ShapeRef.new(shape: CancelTrainedModelInferenceJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

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

      api.add_operation(:create_configured_model_algorithm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConfiguredModelAlgorithm"
        o.http_method = "POST"
        o.http_request_uri = "/configured-model-algorithms"
        o.input = Shapes::ShapeRef.new(shape: CreateConfiguredModelAlgorithmRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConfiguredModelAlgorithmResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_configured_model_algorithm_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConfiguredModelAlgorithmAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/memberships/{membershipIdentifier}/configured-model-algorithm-associations"
        o.input = Shapes::ShapeRef.new(shape: CreateConfiguredModelAlgorithmAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConfiguredModelAlgorithmAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_ml_input_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMLInputChannel"
        o.http_method = "POST"
        o.http_request_uri = "/memberships/{membershipIdentifier}/ml-input-channels"
        o.input = Shapes::ShapeRef.new(shape: CreateMLInputChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMLInputChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_trained_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTrainedModel"
        o.http_method = "POST"
        o.http_request_uri = "/memberships/{membershipIdentifier}/trained-models"
        o.input = Shapes::ShapeRef.new(shape: CreateTrainedModelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTrainedModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:delete_configured_model_algorithm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConfiguredModelAlgorithm"
        o.http_method = "DELETE"
        o.http_request_uri = "/configured-model-algorithms/{configuredModelAlgorithmArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteConfiguredModelAlgorithmRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_configured_model_algorithm_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConfiguredModelAlgorithmAssociation"
        o.http_method = "DELETE"
        o.http_request_uri = "/memberships/{membershipIdentifier}/configured-model-algorithm-associations/{configuredModelAlgorithmAssociationArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteConfiguredModelAlgorithmAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_ml_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMLConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/memberships/{membershipIdentifier}/ml-configurations"
        o.input = Shapes::ShapeRef.new(shape: DeleteMLConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_ml_input_channel_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMLInputChannelData"
        o.http_method = "DELETE"
        o.http_request_uri = "/memberships/{membershipIdentifier}/ml-input-channels/{mlInputChannelArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMLInputChannelDataRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_trained_model_output, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTrainedModelOutput"
        o.http_method = "DELETE"
        o.http_request_uri = "/memberships/{membershipIdentifier}/trained-models/{trainedModelArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTrainedModelOutputRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:get_collaboration_configured_model_algorithm_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCollaborationConfiguredModelAlgorithmAssociation"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/configured-model-algorithm-associations/{configuredModelAlgorithmAssociationArn}"
        o.input = Shapes::ShapeRef.new(shape: GetCollaborationConfiguredModelAlgorithmAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCollaborationConfiguredModelAlgorithmAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_collaboration_ml_input_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCollaborationMLInputChannel"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/ml-input-channels/{mlInputChannelArn}"
        o.input = Shapes::ShapeRef.new(shape: GetCollaborationMLInputChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCollaborationMLInputChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_collaboration_trained_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCollaborationTrainedModel"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/trained-models/{trainedModelArn}"
        o.input = Shapes::ShapeRef.new(shape: GetCollaborationTrainedModelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCollaborationTrainedModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:get_configured_model_algorithm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConfiguredModelAlgorithm"
        o.http_method = "GET"
        o.http_request_uri = "/configured-model-algorithms/{configuredModelAlgorithmArn}"
        o.input = Shapes::ShapeRef.new(shape: GetConfiguredModelAlgorithmRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConfiguredModelAlgorithmResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_configured_model_algorithm_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConfiguredModelAlgorithmAssociation"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/configured-model-algorithm-associations/{configuredModelAlgorithmAssociationArn}"
        o.input = Shapes::ShapeRef.new(shape: GetConfiguredModelAlgorithmAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConfiguredModelAlgorithmAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_ml_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMLConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/ml-configurations"
        o.input = Shapes::ShapeRef.new(shape: GetMLConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMLConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_ml_input_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMLInputChannel"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/ml-input-channels/{mlInputChannelArn}"
        o.input = Shapes::ShapeRef.new(shape: GetMLInputChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMLInputChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_trained_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTrainedModel"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/trained-models/{trainedModelArn}"
        o.input = Shapes::ShapeRef.new(shape: GetTrainedModelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTrainedModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_trained_model_inference_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTrainedModelInferenceJob"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/trained-model-inference-jobs/{trainedModelInferenceJobArn}"
        o.input = Shapes::ShapeRef.new(shape: GetTrainedModelInferenceJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTrainedModelInferenceJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:list_collaboration_configured_model_algorithm_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCollaborationConfiguredModelAlgorithmAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/configured-model-algorithm-associations"
        o.input = Shapes::ShapeRef.new(shape: ListCollaborationConfiguredModelAlgorithmAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCollaborationConfiguredModelAlgorithmAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_collaboration_ml_input_channels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCollaborationMLInputChannels"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/ml-input-channels"
        o.input = Shapes::ShapeRef.new(shape: ListCollaborationMLInputChannelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCollaborationMLInputChannelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_collaboration_trained_model_export_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCollaborationTrainedModelExportJobs"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/trained-models/{trainedModelArn}/export-jobs"
        o.input = Shapes::ShapeRef.new(shape: ListCollaborationTrainedModelExportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCollaborationTrainedModelExportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_collaboration_trained_model_inference_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCollaborationTrainedModelInferenceJobs"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/trained-model-inference-jobs"
        o.input = Shapes::ShapeRef.new(shape: ListCollaborationTrainedModelInferenceJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCollaborationTrainedModelInferenceJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_collaboration_trained_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCollaborationTrainedModels"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/trained-models"
        o.input = Shapes::ShapeRef.new(shape: ListCollaborationTrainedModelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCollaborationTrainedModelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:list_configured_model_algorithm_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConfiguredModelAlgorithmAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/configured-model-algorithm-associations"
        o.input = Shapes::ShapeRef.new(shape: ListConfiguredModelAlgorithmAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConfiguredModelAlgorithmAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_configured_model_algorithms, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConfiguredModelAlgorithms"
        o.http_method = "GET"
        o.http_request_uri = "/configured-model-algorithms"
        o.input = Shapes::ShapeRef.new(shape: ListConfiguredModelAlgorithmsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConfiguredModelAlgorithmsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_ml_input_channels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMLInputChannels"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/ml-input-channels"
        o.input = Shapes::ShapeRef.new(shape: ListMLInputChannelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMLInputChannelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:list_trained_model_inference_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTrainedModelInferenceJobs"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/trained-model-inference-jobs"
        o.input = Shapes::ShapeRef.new(shape: ListTrainedModelInferenceJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTrainedModelInferenceJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_trained_model_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTrainedModelVersions"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/trained-models/{trainedModelArn}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListTrainedModelVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTrainedModelVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_trained_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTrainedModels"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/trained-models"
        o.input = Shapes::ShapeRef.new(shape: ListTrainedModelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTrainedModelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
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

      api.add_operation(:put_ml_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutMLConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/memberships/{membershipIdentifier}/ml-configurations"
        o.input = Shapes::ShapeRef.new(shape: PutMLConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:start_trained_model_export_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTrainedModelExportJob"
        o.http_method = "POST"
        o.http_request_uri = "/memberships/{membershipIdentifier}/trained-models/{trainedModelArn}/export-jobs"
        o.input = Shapes::ShapeRef.new(shape: StartTrainedModelExportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_trained_model_inference_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTrainedModelInferenceJob"
        o.http_method = "POST"
        o.http_request_uri = "/memberships/{membershipIdentifier}/trained-model-inference-jobs"
        o.input = Shapes::ShapeRef.new(shape: StartTrainedModelInferenceJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartTrainedModelInferenceJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
