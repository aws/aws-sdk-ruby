# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Bedrock
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AutomatedEvaluationConfig = Shapes::StructureShape.new(name: 'AutomatedEvaluationConfig')
    BaseModelIdentifier = Shapes::StringShape.new(name: 'BaseModelIdentifier')
    BedrockModelId = Shapes::StringShape.new(name: 'BedrockModelId')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BrandedName = Shapes::StringShape.new(name: 'BrandedName')
    BucketName = Shapes::StringShape.new(name: 'BucketName')
    CloudWatchConfig = Shapes::StructureShape.new(name: 'CloudWatchConfig')
    CommitmentDuration = Shapes::StringShape.new(name: 'CommitmentDuration')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateEvaluationJobRequest = Shapes::StructureShape.new(name: 'CreateEvaluationJobRequest')
    CreateEvaluationJobResponse = Shapes::StructureShape.new(name: 'CreateEvaluationJobResponse')
    CreateGuardrailRequest = Shapes::StructureShape.new(name: 'CreateGuardrailRequest')
    CreateGuardrailResponse = Shapes::StructureShape.new(name: 'CreateGuardrailResponse')
    CreateGuardrailVersionRequest = Shapes::StructureShape.new(name: 'CreateGuardrailVersionRequest')
    CreateGuardrailVersionResponse = Shapes::StructureShape.new(name: 'CreateGuardrailVersionResponse')
    CreateModelCopyJobRequest = Shapes::StructureShape.new(name: 'CreateModelCopyJobRequest')
    CreateModelCopyJobResponse = Shapes::StructureShape.new(name: 'CreateModelCopyJobResponse')
    CreateModelCustomizationJobRequest = Shapes::StructureShape.new(name: 'CreateModelCustomizationJobRequest')
    CreateModelCustomizationJobResponse = Shapes::StructureShape.new(name: 'CreateModelCustomizationJobResponse')
    CreateProvisionedModelThroughputRequest = Shapes::StructureShape.new(name: 'CreateProvisionedModelThroughputRequest')
    CreateProvisionedModelThroughputResponse = Shapes::StructureShape.new(name: 'CreateProvisionedModelThroughputResponse')
    CustomModelArn = Shapes::StringShape.new(name: 'CustomModelArn')
    CustomModelName = Shapes::StringShape.new(name: 'CustomModelName')
    CustomModelSummary = Shapes::StructureShape.new(name: 'CustomModelSummary')
    CustomModelSummaryList = Shapes::ListShape.new(name: 'CustomModelSummaryList')
    CustomizationType = Shapes::StringShape.new(name: 'CustomizationType')
    DeleteCustomModelRequest = Shapes::StructureShape.new(name: 'DeleteCustomModelRequest')
    DeleteCustomModelResponse = Shapes::StructureShape.new(name: 'DeleteCustomModelResponse')
    DeleteGuardrailRequest = Shapes::StructureShape.new(name: 'DeleteGuardrailRequest')
    DeleteGuardrailResponse = Shapes::StructureShape.new(name: 'DeleteGuardrailResponse')
    DeleteModelInvocationLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteModelInvocationLoggingConfigurationRequest')
    DeleteModelInvocationLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteModelInvocationLoggingConfigurationResponse')
    DeleteProvisionedModelThroughputRequest = Shapes::StructureShape.new(name: 'DeleteProvisionedModelThroughputRequest')
    DeleteProvisionedModelThroughputResponse = Shapes::StructureShape.new(name: 'DeleteProvisionedModelThroughputResponse')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ErrorMessages = Shapes::ListShape.new(name: 'ErrorMessages')
    EvaluationBedrockModel = Shapes::StructureShape.new(name: 'EvaluationBedrockModel')
    EvaluationConfig = Shapes::UnionShape.new(name: 'EvaluationConfig')
    EvaluationDataset = Shapes::StructureShape.new(name: 'EvaluationDataset')
    EvaluationDatasetLocation = Shapes::UnionShape.new(name: 'EvaluationDatasetLocation')
    EvaluationDatasetMetricConfig = Shapes::StructureShape.new(name: 'EvaluationDatasetMetricConfig')
    EvaluationDatasetMetricConfigs = Shapes::ListShape.new(name: 'EvaluationDatasetMetricConfigs')
    EvaluationDatasetName = Shapes::StringShape.new(name: 'EvaluationDatasetName')
    EvaluationInferenceConfig = Shapes::UnionShape.new(name: 'EvaluationInferenceConfig')
    EvaluationJobArn = Shapes::StringShape.new(name: 'EvaluationJobArn')
    EvaluationJobDescription = Shapes::StringShape.new(name: 'EvaluationJobDescription')
    EvaluationJobIdentifier = Shapes::StringShape.new(name: 'EvaluationJobIdentifier')
    EvaluationJobName = Shapes::StringShape.new(name: 'EvaluationJobName')
    EvaluationJobStatus = Shapes::StringShape.new(name: 'EvaluationJobStatus')
    EvaluationJobType = Shapes::StringShape.new(name: 'EvaluationJobType')
    EvaluationMetricDescription = Shapes::StringShape.new(name: 'EvaluationMetricDescription')
    EvaluationMetricName = Shapes::StringShape.new(name: 'EvaluationMetricName')
    EvaluationMetricNames = Shapes::ListShape.new(name: 'EvaluationMetricNames')
    EvaluationModelConfig = Shapes::UnionShape.new(name: 'EvaluationModelConfig')
    EvaluationModelConfigs = Shapes::ListShape.new(name: 'EvaluationModelConfigs')
    EvaluationModelIdentifier = Shapes::StringShape.new(name: 'EvaluationModelIdentifier')
    EvaluationModelIdentifiers = Shapes::ListShape.new(name: 'EvaluationModelIdentifiers')
    EvaluationModelInferenceParams = Shapes::StringShape.new(name: 'EvaluationModelInferenceParams')
    EvaluationOutputDataConfig = Shapes::StructureShape.new(name: 'EvaluationOutputDataConfig')
    EvaluationRatingMethod = Shapes::StringShape.new(name: 'EvaluationRatingMethod')
    EvaluationSummaries = Shapes::ListShape.new(name: 'EvaluationSummaries')
    EvaluationSummary = Shapes::StructureShape.new(name: 'EvaluationSummary')
    EvaluationTaskType = Shapes::StringShape.new(name: 'EvaluationTaskType')
    EvaluationTaskTypes = Shapes::ListShape.new(name: 'EvaluationTaskTypes')
    FineTuningJobStatus = Shapes::StringShape.new(name: 'FineTuningJobStatus')
    FoundationModelArn = Shapes::StringShape.new(name: 'FoundationModelArn')
    FoundationModelDetails = Shapes::StructureShape.new(name: 'FoundationModelDetails')
    FoundationModelLifecycle = Shapes::StructureShape.new(name: 'FoundationModelLifecycle')
    FoundationModelLifecycleStatus = Shapes::StringShape.new(name: 'FoundationModelLifecycleStatus')
    FoundationModelSummary = Shapes::StructureShape.new(name: 'FoundationModelSummary')
    FoundationModelSummaryList = Shapes::ListShape.new(name: 'FoundationModelSummaryList')
    GetCustomModelRequest = Shapes::StructureShape.new(name: 'GetCustomModelRequest')
    GetCustomModelResponse = Shapes::StructureShape.new(name: 'GetCustomModelResponse')
    GetEvaluationJobRequest = Shapes::StructureShape.new(name: 'GetEvaluationJobRequest')
    GetEvaluationJobResponse = Shapes::StructureShape.new(name: 'GetEvaluationJobResponse')
    GetFoundationModelRequest = Shapes::StructureShape.new(name: 'GetFoundationModelRequest')
    GetFoundationModelResponse = Shapes::StructureShape.new(name: 'GetFoundationModelResponse')
    GetGuardrailRequest = Shapes::StructureShape.new(name: 'GetGuardrailRequest')
    GetGuardrailResponse = Shapes::StructureShape.new(name: 'GetGuardrailResponse')
    GetModelCopyJobRequest = Shapes::StructureShape.new(name: 'GetModelCopyJobRequest')
    GetModelCopyJobResponse = Shapes::StructureShape.new(name: 'GetModelCopyJobResponse')
    GetModelCustomizationJobRequest = Shapes::StructureShape.new(name: 'GetModelCustomizationJobRequest')
    GetModelCustomizationJobResponse = Shapes::StructureShape.new(name: 'GetModelCustomizationJobResponse')
    GetModelInvocationLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'GetModelInvocationLoggingConfigurationRequest')
    GetModelInvocationLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'GetModelInvocationLoggingConfigurationResponse')
    GetProvisionedModelThroughputRequest = Shapes::StructureShape.new(name: 'GetProvisionedModelThroughputRequest')
    GetProvisionedModelThroughputResponse = Shapes::StructureShape.new(name: 'GetProvisionedModelThroughputResponse')
    GuardrailArn = Shapes::StringShape.new(name: 'GuardrailArn')
    GuardrailBlockedMessaging = Shapes::StringShape.new(name: 'GuardrailBlockedMessaging')
    GuardrailContentFilter = Shapes::StructureShape.new(name: 'GuardrailContentFilter')
    GuardrailContentFilterConfig = Shapes::StructureShape.new(name: 'GuardrailContentFilterConfig')
    GuardrailContentFilterType = Shapes::StringShape.new(name: 'GuardrailContentFilterType')
    GuardrailContentFilters = Shapes::ListShape.new(name: 'GuardrailContentFilters')
    GuardrailContentFiltersConfig = Shapes::ListShape.new(name: 'GuardrailContentFiltersConfig')
    GuardrailContentPolicy = Shapes::StructureShape.new(name: 'GuardrailContentPolicy')
    GuardrailContentPolicyConfig = Shapes::StructureShape.new(name: 'GuardrailContentPolicyConfig')
    GuardrailContextualGroundingFilter = Shapes::StructureShape.new(name: 'GuardrailContextualGroundingFilter')
    GuardrailContextualGroundingFilterConfig = Shapes::StructureShape.new(name: 'GuardrailContextualGroundingFilterConfig')
    GuardrailContextualGroundingFilterConfigThresholdDouble = Shapes::FloatShape.new(name: 'GuardrailContextualGroundingFilterConfigThresholdDouble')
    GuardrailContextualGroundingFilterThresholdDouble = Shapes::FloatShape.new(name: 'GuardrailContextualGroundingFilterThresholdDouble')
    GuardrailContextualGroundingFilterType = Shapes::StringShape.new(name: 'GuardrailContextualGroundingFilterType')
    GuardrailContextualGroundingFilters = Shapes::ListShape.new(name: 'GuardrailContextualGroundingFilters')
    GuardrailContextualGroundingFiltersConfig = Shapes::ListShape.new(name: 'GuardrailContextualGroundingFiltersConfig')
    GuardrailContextualGroundingPolicy = Shapes::StructureShape.new(name: 'GuardrailContextualGroundingPolicy')
    GuardrailContextualGroundingPolicyConfig = Shapes::StructureShape.new(name: 'GuardrailContextualGroundingPolicyConfig')
    GuardrailDescription = Shapes::StringShape.new(name: 'GuardrailDescription')
    GuardrailDraftVersion = Shapes::StringShape.new(name: 'GuardrailDraftVersion')
    GuardrailFailureRecommendation = Shapes::StringShape.new(name: 'GuardrailFailureRecommendation')
    GuardrailFailureRecommendations = Shapes::ListShape.new(name: 'GuardrailFailureRecommendations')
    GuardrailFilterStrength = Shapes::StringShape.new(name: 'GuardrailFilterStrength')
    GuardrailId = Shapes::StringShape.new(name: 'GuardrailId')
    GuardrailIdentifier = Shapes::StringShape.new(name: 'GuardrailIdentifier')
    GuardrailManagedWordLists = Shapes::ListShape.new(name: 'GuardrailManagedWordLists')
    GuardrailManagedWordListsConfig = Shapes::ListShape.new(name: 'GuardrailManagedWordListsConfig')
    GuardrailManagedWords = Shapes::StructureShape.new(name: 'GuardrailManagedWords')
    GuardrailManagedWordsConfig = Shapes::StructureShape.new(name: 'GuardrailManagedWordsConfig')
    GuardrailManagedWordsType = Shapes::StringShape.new(name: 'GuardrailManagedWordsType')
    GuardrailName = Shapes::StringShape.new(name: 'GuardrailName')
    GuardrailNumericalVersion = Shapes::StringShape.new(name: 'GuardrailNumericalVersion')
    GuardrailPiiEntities = Shapes::ListShape.new(name: 'GuardrailPiiEntities')
    GuardrailPiiEntitiesConfig = Shapes::ListShape.new(name: 'GuardrailPiiEntitiesConfig')
    GuardrailPiiEntity = Shapes::StructureShape.new(name: 'GuardrailPiiEntity')
    GuardrailPiiEntityConfig = Shapes::StructureShape.new(name: 'GuardrailPiiEntityConfig')
    GuardrailPiiEntityType = Shapes::StringShape.new(name: 'GuardrailPiiEntityType')
    GuardrailRegex = Shapes::StructureShape.new(name: 'GuardrailRegex')
    GuardrailRegexConfig = Shapes::StructureShape.new(name: 'GuardrailRegexConfig')
    GuardrailRegexConfigDescriptionString = Shapes::StringShape.new(name: 'GuardrailRegexConfigDescriptionString')
    GuardrailRegexConfigNameString = Shapes::StringShape.new(name: 'GuardrailRegexConfigNameString')
    GuardrailRegexConfigPatternString = Shapes::StringShape.new(name: 'GuardrailRegexConfigPatternString')
    GuardrailRegexDescriptionString = Shapes::StringShape.new(name: 'GuardrailRegexDescriptionString')
    GuardrailRegexNameString = Shapes::StringShape.new(name: 'GuardrailRegexNameString')
    GuardrailRegexPatternString = Shapes::StringShape.new(name: 'GuardrailRegexPatternString')
    GuardrailRegexes = Shapes::ListShape.new(name: 'GuardrailRegexes')
    GuardrailRegexesConfig = Shapes::ListShape.new(name: 'GuardrailRegexesConfig')
    GuardrailSensitiveInformationAction = Shapes::StringShape.new(name: 'GuardrailSensitiveInformationAction')
    GuardrailSensitiveInformationPolicy = Shapes::StructureShape.new(name: 'GuardrailSensitiveInformationPolicy')
    GuardrailSensitiveInformationPolicyConfig = Shapes::StructureShape.new(name: 'GuardrailSensitiveInformationPolicyConfig')
    GuardrailStatus = Shapes::StringShape.new(name: 'GuardrailStatus')
    GuardrailStatusReason = Shapes::StringShape.new(name: 'GuardrailStatusReason')
    GuardrailStatusReasons = Shapes::ListShape.new(name: 'GuardrailStatusReasons')
    GuardrailSummaries = Shapes::ListShape.new(name: 'GuardrailSummaries')
    GuardrailSummary = Shapes::StructureShape.new(name: 'GuardrailSummary')
    GuardrailTopic = Shapes::StructureShape.new(name: 'GuardrailTopic')
    GuardrailTopicConfig = Shapes::StructureShape.new(name: 'GuardrailTopicConfig')
    GuardrailTopicDefinition = Shapes::StringShape.new(name: 'GuardrailTopicDefinition')
    GuardrailTopicExample = Shapes::StringShape.new(name: 'GuardrailTopicExample')
    GuardrailTopicExamples = Shapes::ListShape.new(name: 'GuardrailTopicExamples')
    GuardrailTopicName = Shapes::StringShape.new(name: 'GuardrailTopicName')
    GuardrailTopicPolicy = Shapes::StructureShape.new(name: 'GuardrailTopicPolicy')
    GuardrailTopicPolicyConfig = Shapes::StructureShape.new(name: 'GuardrailTopicPolicyConfig')
    GuardrailTopicType = Shapes::StringShape.new(name: 'GuardrailTopicType')
    GuardrailTopics = Shapes::ListShape.new(name: 'GuardrailTopics')
    GuardrailTopicsConfig = Shapes::ListShape.new(name: 'GuardrailTopicsConfig')
    GuardrailVersion = Shapes::StringShape.new(name: 'GuardrailVersion')
    GuardrailWord = Shapes::StructureShape.new(name: 'GuardrailWord')
    GuardrailWordConfig = Shapes::StructureShape.new(name: 'GuardrailWordConfig')
    GuardrailWordConfigTextString = Shapes::StringShape.new(name: 'GuardrailWordConfigTextString')
    GuardrailWordPolicy = Shapes::StructureShape.new(name: 'GuardrailWordPolicy')
    GuardrailWordPolicyConfig = Shapes::StructureShape.new(name: 'GuardrailWordPolicyConfig')
    GuardrailWordTextString = Shapes::StringShape.new(name: 'GuardrailWordTextString')
    GuardrailWords = Shapes::ListShape.new(name: 'GuardrailWords')
    GuardrailWordsConfig = Shapes::ListShape.new(name: 'GuardrailWordsConfig')
    HumanEvaluationConfig = Shapes::StructureShape.new(name: 'HumanEvaluationConfig')
    HumanEvaluationCustomMetric = Shapes::StructureShape.new(name: 'HumanEvaluationCustomMetric')
    HumanEvaluationCustomMetrics = Shapes::ListShape.new(name: 'HumanEvaluationCustomMetrics')
    HumanTaskInstructions = Shapes::StringShape.new(name: 'HumanTaskInstructions')
    HumanWorkflowConfig = Shapes::StructureShape.new(name: 'HumanWorkflowConfig')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    InferenceType = Shapes::StringShape.new(name: 'InferenceType')
    InferenceTypeList = Shapes::ListShape.new(name: 'InferenceTypeList')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    JobName = Shapes::StringShape.new(name: 'JobName')
    KeyPrefix = Shapes::StringShape.new(name: 'KeyPrefix')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    ListCustomModelsRequest = Shapes::StructureShape.new(name: 'ListCustomModelsRequest')
    ListCustomModelsResponse = Shapes::StructureShape.new(name: 'ListCustomModelsResponse')
    ListEvaluationJobsRequest = Shapes::StructureShape.new(name: 'ListEvaluationJobsRequest')
    ListEvaluationJobsResponse = Shapes::StructureShape.new(name: 'ListEvaluationJobsResponse')
    ListFoundationModelsRequest = Shapes::StructureShape.new(name: 'ListFoundationModelsRequest')
    ListFoundationModelsResponse = Shapes::StructureShape.new(name: 'ListFoundationModelsResponse')
    ListGuardrailsRequest = Shapes::StructureShape.new(name: 'ListGuardrailsRequest')
    ListGuardrailsResponse = Shapes::StructureShape.new(name: 'ListGuardrailsResponse')
    ListModelCopyJobsRequest = Shapes::StructureShape.new(name: 'ListModelCopyJobsRequest')
    ListModelCopyJobsResponse = Shapes::StructureShape.new(name: 'ListModelCopyJobsResponse')
    ListModelCustomizationJobsRequest = Shapes::StructureShape.new(name: 'ListModelCustomizationJobsRequest')
    ListModelCustomizationJobsResponse = Shapes::StructureShape.new(name: 'ListModelCustomizationJobsResponse')
    ListProvisionedModelThroughputsRequest = Shapes::StructureShape.new(name: 'ListProvisionedModelThroughputsRequest')
    ListProvisionedModelThroughputsResponse = Shapes::StructureShape.new(name: 'ListProvisionedModelThroughputsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LogGroupName = Shapes::StringShape.new(name: 'LogGroupName')
    LoggingConfig = Shapes::StructureShape.new(name: 'LoggingConfig')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MetricFloat = Shapes::FloatShape.new(name: 'MetricFloat')
    ModelArn = Shapes::StringShape.new(name: 'ModelArn')
    ModelCopyJobArn = Shapes::StringShape.new(name: 'ModelCopyJobArn')
    ModelCopyJobStatus = Shapes::StringShape.new(name: 'ModelCopyJobStatus')
    ModelCopyJobSummaries = Shapes::ListShape.new(name: 'ModelCopyJobSummaries')
    ModelCopyJobSummary = Shapes::StructureShape.new(name: 'ModelCopyJobSummary')
    ModelCustomization = Shapes::StringShape.new(name: 'ModelCustomization')
    ModelCustomizationHyperParameters = Shapes::MapShape.new(name: 'ModelCustomizationHyperParameters')
    ModelCustomizationJobArn = Shapes::StringShape.new(name: 'ModelCustomizationJobArn')
    ModelCustomizationJobIdentifier = Shapes::StringShape.new(name: 'ModelCustomizationJobIdentifier')
    ModelCustomizationJobStatus = Shapes::StringShape.new(name: 'ModelCustomizationJobStatus')
    ModelCustomizationJobSummaries = Shapes::ListShape.new(name: 'ModelCustomizationJobSummaries')
    ModelCustomizationJobSummary = Shapes::StructureShape.new(name: 'ModelCustomizationJobSummary')
    ModelCustomizationList = Shapes::ListShape.new(name: 'ModelCustomizationList')
    ModelIdentifier = Shapes::StringShape.new(name: 'ModelIdentifier')
    ModelModality = Shapes::StringShape.new(name: 'ModelModality')
    ModelModalityList = Shapes::ListShape.new(name: 'ModelModalityList')
    ModelName = Shapes::StringShape.new(name: 'ModelName')
    NonBlankString = Shapes::StringShape.new(name: 'NonBlankString')
    OutputDataConfig = Shapes::StructureShape.new(name: 'OutputDataConfig')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PositiveInteger = Shapes::IntegerShape.new(name: 'PositiveInteger')
    Provider = Shapes::StringShape.new(name: 'Provider')
    ProvisionedModelArn = Shapes::StringShape.new(name: 'ProvisionedModelArn')
    ProvisionedModelId = Shapes::StringShape.new(name: 'ProvisionedModelId')
    ProvisionedModelName = Shapes::StringShape.new(name: 'ProvisionedModelName')
    ProvisionedModelStatus = Shapes::StringShape.new(name: 'ProvisionedModelStatus')
    ProvisionedModelSummaries = Shapes::ListShape.new(name: 'ProvisionedModelSummaries')
    ProvisionedModelSummary = Shapes::StructureShape.new(name: 'ProvisionedModelSummary')
    PutModelInvocationLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'PutModelInvocationLoggingConfigurationRequest')
    PutModelInvocationLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'PutModelInvocationLoggingConfigurationResponse')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3Config = Shapes::StructureShape.new(name: 'S3Config')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    SageMakerFlowDefinitionArn = Shapes::StringShape.new(name: 'SageMakerFlowDefinitionArn')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SortByProvisionedModels = Shapes::StringShape.new(name: 'SortByProvisionedModels')
    SortJobsBy = Shapes::StringShape.new(name: 'SortJobsBy')
    SortModelsBy = Shapes::StringShape.new(name: 'SortModelsBy')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    StopEvaluationJobRequest = Shapes::StructureShape.new(name: 'StopEvaluationJobRequest')
    StopEvaluationJobResponse = Shapes::StructureShape.new(name: 'StopEvaluationJobResponse')
    StopModelCustomizationJobRequest = Shapes::StructureShape.new(name: 'StopModelCustomizationJobRequest')
    StopModelCustomizationJobResponse = Shapes::StructureShape.new(name: 'StopModelCustomizationJobResponse')
    String = Shapes::StringShape.new(name: 'String')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaggableResourcesArn = Shapes::StringShape.new(name: 'TaggableResourcesArn')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    TrainingDataConfig = Shapes::StructureShape.new(name: 'TrainingDataConfig')
    TrainingMetrics = Shapes::StructureShape.new(name: 'TrainingMetrics')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateGuardrailRequest = Shapes::StructureShape.new(name: 'UpdateGuardrailRequest')
    UpdateGuardrailResponse = Shapes::StructureShape.new(name: 'UpdateGuardrailResponse')
    UpdateProvisionedModelThroughputRequest = Shapes::StructureShape.new(name: 'UpdateProvisionedModelThroughputRequest')
    UpdateProvisionedModelThroughputResponse = Shapes::StructureShape.new(name: 'UpdateProvisionedModelThroughputResponse')
    ValidationDataConfig = Shapes::StructureShape.new(name: 'ValidationDataConfig')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationMetrics = Shapes::ListShape.new(name: 'ValidationMetrics')
    Validator = Shapes::StructureShape.new(name: 'Validator')
    ValidatorMetric = Shapes::StructureShape.new(name: 'ValidatorMetric')
    Validators = Shapes::ListShape.new(name: 'Validators')
    VpcConfig = Shapes::StructureShape.new(name: 'VpcConfig')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AutomatedEvaluationConfig.add_member(:dataset_metric_configs, Shapes::ShapeRef.new(shape: EvaluationDatasetMetricConfigs, required: true, location_name: "datasetMetricConfigs"))
    AutomatedEvaluationConfig.struct_class = Types::AutomatedEvaluationConfig

    CloudWatchConfig.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    CloudWatchConfig.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CloudWatchConfig.add_member(:large_data_delivery_s3_config, Shapes::ShapeRef.new(shape: S3Config, location_name: "largeDataDeliveryS3Config"))
    CloudWatchConfig.struct_class = Types::CloudWatchConfig

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateEvaluationJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: EvaluationJobName, required: true, location_name: "jobName"))
    CreateEvaluationJobRequest.add_member(:job_description, Shapes::ShapeRef.new(shape: EvaluationJobDescription, location_name: "jobDescription"))
    CreateEvaluationJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateEvaluationJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateEvaluationJobRequest.add_member(:customer_encryption_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "customerEncryptionKeyId"))
    CreateEvaluationJobRequest.add_member(:job_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "jobTags"))
    CreateEvaluationJobRequest.add_member(:evaluation_config, Shapes::ShapeRef.new(shape: EvaluationConfig, required: true, location_name: "evaluationConfig"))
    CreateEvaluationJobRequest.add_member(:inference_config, Shapes::ShapeRef.new(shape: EvaluationInferenceConfig, required: true, location_name: "inferenceConfig"))
    CreateEvaluationJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: EvaluationOutputDataConfig, required: true, location_name: "outputDataConfig"))
    CreateEvaluationJobRequest.struct_class = Types::CreateEvaluationJobRequest

    CreateEvaluationJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: EvaluationJobArn, required: true, location_name: "jobArn"))
    CreateEvaluationJobResponse.struct_class = Types::CreateEvaluationJobResponse

    CreateGuardrailRequest.add_member(:name, Shapes::ShapeRef.new(shape: GuardrailName, required: true, location_name: "name"))
    CreateGuardrailRequest.add_member(:description, Shapes::ShapeRef.new(shape: GuardrailDescription, location_name: "description"))
    CreateGuardrailRequest.add_member(:topic_policy_config, Shapes::ShapeRef.new(shape: GuardrailTopicPolicyConfig, location_name: "topicPolicyConfig"))
    CreateGuardrailRequest.add_member(:content_policy_config, Shapes::ShapeRef.new(shape: GuardrailContentPolicyConfig, location_name: "contentPolicyConfig"))
    CreateGuardrailRequest.add_member(:word_policy_config, Shapes::ShapeRef.new(shape: GuardrailWordPolicyConfig, location_name: "wordPolicyConfig"))
    CreateGuardrailRequest.add_member(:sensitive_information_policy_config, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationPolicyConfig, location_name: "sensitiveInformationPolicyConfig"))
    CreateGuardrailRequest.add_member(:contextual_grounding_policy_config, Shapes::ShapeRef.new(shape: GuardrailContextualGroundingPolicyConfig, location_name: "contextualGroundingPolicyConfig"))
    CreateGuardrailRequest.add_member(:blocked_input_messaging, Shapes::ShapeRef.new(shape: GuardrailBlockedMessaging, required: true, location_name: "blockedInputMessaging"))
    CreateGuardrailRequest.add_member(:blocked_outputs_messaging, Shapes::ShapeRef.new(shape: GuardrailBlockedMessaging, required: true, location_name: "blockedOutputsMessaging"))
    CreateGuardrailRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    CreateGuardrailRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateGuardrailRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateGuardrailRequest.struct_class = Types::CreateGuardrailRequest

    CreateGuardrailResponse.add_member(:guardrail_id, Shapes::ShapeRef.new(shape: GuardrailId, required: true, location_name: "guardrailId"))
    CreateGuardrailResponse.add_member(:guardrail_arn, Shapes::ShapeRef.new(shape: GuardrailArn, required: true, location_name: "guardrailArn"))
    CreateGuardrailResponse.add_member(:version, Shapes::ShapeRef.new(shape: GuardrailDraftVersion, required: true, location_name: "version"))
    CreateGuardrailResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    CreateGuardrailResponse.struct_class = Types::CreateGuardrailResponse

    CreateGuardrailVersionRequest.add_member(:guardrail_identifier, Shapes::ShapeRef.new(shape: GuardrailIdentifier, required: true, location: "uri", location_name: "guardrailIdentifier"))
    CreateGuardrailVersionRequest.add_member(:description, Shapes::ShapeRef.new(shape: GuardrailDescription, location_name: "description"))
    CreateGuardrailVersionRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateGuardrailVersionRequest.struct_class = Types::CreateGuardrailVersionRequest

    CreateGuardrailVersionResponse.add_member(:guardrail_id, Shapes::ShapeRef.new(shape: GuardrailId, required: true, location_name: "guardrailId"))
    CreateGuardrailVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: GuardrailNumericalVersion, required: true, location_name: "version"))
    CreateGuardrailVersionResponse.struct_class = Types::CreateGuardrailVersionResponse

    CreateModelCopyJobRequest.add_member(:source_model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "sourceModelArn"))
    CreateModelCopyJobRequest.add_member(:target_model_name, Shapes::ShapeRef.new(shape: CustomModelName, required: true, location_name: "targetModelName"))
    CreateModelCopyJobRequest.add_member(:model_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "modelKmsKeyId"))
    CreateModelCopyJobRequest.add_member(:target_model_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "targetModelTags"))
    CreateModelCopyJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateModelCopyJobRequest.struct_class = Types::CreateModelCopyJobRequest

    CreateModelCopyJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: ModelCopyJobArn, required: true, location_name: "jobArn"))
    CreateModelCopyJobResponse.struct_class = Types::CreateModelCopyJobResponse

    CreateModelCustomizationJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "jobName"))
    CreateModelCustomizationJobRequest.add_member(:custom_model_name, Shapes::ShapeRef.new(shape: CustomModelName, required: true, location_name: "customModelName"))
    CreateModelCustomizationJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateModelCustomizationJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateModelCustomizationJobRequest.add_member(:base_model_identifier, Shapes::ShapeRef.new(shape: BaseModelIdentifier, required: true, location_name: "baseModelIdentifier"))
    CreateModelCustomizationJobRequest.add_member(:customization_type, Shapes::ShapeRef.new(shape: CustomizationType, location_name: "customizationType"))
    CreateModelCustomizationJobRequest.add_member(:custom_model_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "customModelKmsKeyId"))
    CreateModelCustomizationJobRequest.add_member(:job_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "jobTags"))
    CreateModelCustomizationJobRequest.add_member(:custom_model_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "customModelTags"))
    CreateModelCustomizationJobRequest.add_member(:training_data_config, Shapes::ShapeRef.new(shape: TrainingDataConfig, required: true, location_name: "trainingDataConfig"))
    CreateModelCustomizationJobRequest.add_member(:validation_data_config, Shapes::ShapeRef.new(shape: ValidationDataConfig, location_name: "validationDataConfig"))
    CreateModelCustomizationJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "outputDataConfig"))
    CreateModelCustomizationJobRequest.add_member(:hyper_parameters, Shapes::ShapeRef.new(shape: ModelCustomizationHyperParameters, required: true, location_name: "hyperParameters"))
    CreateModelCustomizationJobRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    CreateModelCustomizationJobRequest.struct_class = Types::CreateModelCustomizationJobRequest

    CreateModelCustomizationJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: ModelCustomizationJobArn, required: true, location_name: "jobArn"))
    CreateModelCustomizationJobResponse.struct_class = Types::CreateModelCustomizationJobResponse

    CreateProvisionedModelThroughputRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateProvisionedModelThroughputRequest.add_member(:model_units, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location_name: "modelUnits"))
    CreateProvisionedModelThroughputRequest.add_member(:provisioned_model_name, Shapes::ShapeRef.new(shape: ProvisionedModelName, required: true, location_name: "provisionedModelName"))
    CreateProvisionedModelThroughputRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: ModelIdentifier, required: true, location_name: "modelId"))
    CreateProvisionedModelThroughputRequest.add_member(:commitment_duration, Shapes::ShapeRef.new(shape: CommitmentDuration, location_name: "commitmentDuration"))
    CreateProvisionedModelThroughputRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateProvisionedModelThroughputRequest.struct_class = Types::CreateProvisionedModelThroughputRequest

    CreateProvisionedModelThroughputResponse.add_member(:provisioned_model_arn, Shapes::ShapeRef.new(shape: ProvisionedModelArn, required: true, location_name: "provisionedModelArn"))
    CreateProvisionedModelThroughputResponse.struct_class = Types::CreateProvisionedModelThroughputResponse

    CustomModelSummary.add_member(:model_arn, Shapes::ShapeRef.new(shape: CustomModelArn, required: true, location_name: "modelArn"))
    CustomModelSummary.add_member(:model_name, Shapes::ShapeRef.new(shape: CustomModelName, required: true, location_name: "modelName"))
    CustomModelSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    CustomModelSummary.add_member(:base_model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "baseModelArn"))
    CustomModelSummary.add_member(:base_model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "baseModelName"))
    CustomModelSummary.add_member(:customization_type, Shapes::ShapeRef.new(shape: CustomizationType, location_name: "customizationType"))
    CustomModelSummary.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "ownerAccountId"))
    CustomModelSummary.struct_class = Types::CustomModelSummary

    CustomModelSummaryList.member = Shapes::ShapeRef.new(shape: CustomModelSummary)

    DeleteCustomModelRequest.add_member(:model_identifier, Shapes::ShapeRef.new(shape: ModelIdentifier, required: true, location: "uri", location_name: "modelIdentifier"))
    DeleteCustomModelRequest.struct_class = Types::DeleteCustomModelRequest

    DeleteCustomModelResponse.struct_class = Types::DeleteCustomModelResponse

    DeleteGuardrailRequest.add_member(:guardrail_identifier, Shapes::ShapeRef.new(shape: GuardrailIdentifier, required: true, location: "uri", location_name: "guardrailIdentifier"))
    DeleteGuardrailRequest.add_member(:guardrail_version, Shapes::ShapeRef.new(shape: GuardrailNumericalVersion, location: "querystring", location_name: "guardrailVersion"))
    DeleteGuardrailRequest.struct_class = Types::DeleteGuardrailRequest

    DeleteGuardrailResponse.struct_class = Types::DeleteGuardrailResponse

    DeleteModelInvocationLoggingConfigurationRequest.struct_class = Types::DeleteModelInvocationLoggingConfigurationRequest

    DeleteModelInvocationLoggingConfigurationResponse.struct_class = Types::DeleteModelInvocationLoggingConfigurationResponse

    DeleteProvisionedModelThroughputRequest.add_member(:provisioned_model_id, Shapes::ShapeRef.new(shape: ProvisionedModelId, required: true, location: "uri", location_name: "provisionedModelId"))
    DeleteProvisionedModelThroughputRequest.struct_class = Types::DeleteProvisionedModelThroughputRequest

    DeleteProvisionedModelThroughputResponse.struct_class = Types::DeleteProvisionedModelThroughputResponse

    ErrorMessages.member = Shapes::ShapeRef.new(shape: ErrorMessage)

    EvaluationBedrockModel.add_member(:model_identifier, Shapes::ShapeRef.new(shape: EvaluationModelIdentifier, required: true, location_name: "modelIdentifier"))
    EvaluationBedrockModel.add_member(:inference_params, Shapes::ShapeRef.new(shape: EvaluationModelInferenceParams, required: true, location_name: "inferenceParams"))
    EvaluationBedrockModel.struct_class = Types::EvaluationBedrockModel

    EvaluationConfig.add_member(:automated, Shapes::ShapeRef.new(shape: AutomatedEvaluationConfig, location_name: "automated"))
    EvaluationConfig.add_member(:human, Shapes::ShapeRef.new(shape: HumanEvaluationConfig, location_name: "human"))
    EvaluationConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluationConfig.add_member_subclass(:automated, Types::EvaluationConfig::Automated)
    EvaluationConfig.add_member_subclass(:human, Types::EvaluationConfig::Human)
    EvaluationConfig.add_member_subclass(:unknown, Types::EvaluationConfig::Unknown)
    EvaluationConfig.struct_class = Types::EvaluationConfig

    EvaluationDataset.add_member(:name, Shapes::ShapeRef.new(shape: EvaluationDatasetName, required: true, location_name: "name"))
    EvaluationDataset.add_member(:dataset_location, Shapes::ShapeRef.new(shape: EvaluationDatasetLocation, location_name: "datasetLocation"))
    EvaluationDataset.struct_class = Types::EvaluationDataset

    EvaluationDatasetLocation.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "s3Uri"))
    EvaluationDatasetLocation.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluationDatasetLocation.add_member_subclass(:s3_uri, Types::EvaluationDatasetLocation::S3Uri)
    EvaluationDatasetLocation.add_member_subclass(:unknown, Types::EvaluationDatasetLocation::Unknown)
    EvaluationDatasetLocation.struct_class = Types::EvaluationDatasetLocation

    EvaluationDatasetMetricConfig.add_member(:task_type, Shapes::ShapeRef.new(shape: EvaluationTaskType, required: true, location_name: "taskType"))
    EvaluationDatasetMetricConfig.add_member(:dataset, Shapes::ShapeRef.new(shape: EvaluationDataset, required: true, location_name: "dataset"))
    EvaluationDatasetMetricConfig.add_member(:metric_names, Shapes::ShapeRef.new(shape: EvaluationMetricNames, required: true, location_name: "metricNames"))
    EvaluationDatasetMetricConfig.struct_class = Types::EvaluationDatasetMetricConfig

    EvaluationDatasetMetricConfigs.member = Shapes::ShapeRef.new(shape: EvaluationDatasetMetricConfig)

    EvaluationInferenceConfig.add_member(:models, Shapes::ShapeRef.new(shape: EvaluationModelConfigs, location_name: "models"))
    EvaluationInferenceConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluationInferenceConfig.add_member_subclass(:models, Types::EvaluationInferenceConfig::Models)
    EvaluationInferenceConfig.add_member_subclass(:unknown, Types::EvaluationInferenceConfig::Unknown)
    EvaluationInferenceConfig.struct_class = Types::EvaluationInferenceConfig

    EvaluationMetricNames.member = Shapes::ShapeRef.new(shape: EvaluationMetricName)

    EvaluationModelConfig.add_member(:bedrock_model, Shapes::ShapeRef.new(shape: EvaluationBedrockModel, location_name: "bedrockModel"))
    EvaluationModelConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluationModelConfig.add_member_subclass(:bedrock_model, Types::EvaluationModelConfig::BedrockModel)
    EvaluationModelConfig.add_member_subclass(:unknown, Types::EvaluationModelConfig::Unknown)
    EvaluationModelConfig.struct_class = Types::EvaluationModelConfig

    EvaluationModelConfigs.member = Shapes::ShapeRef.new(shape: EvaluationModelConfig)

    EvaluationModelIdentifiers.member = Shapes::ShapeRef.new(shape: EvaluationModelIdentifier)

    EvaluationOutputDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "s3Uri"))
    EvaluationOutputDataConfig.struct_class = Types::EvaluationOutputDataConfig

    EvaluationSummaries.member = Shapes::ShapeRef.new(shape: EvaluationSummary)

    EvaluationSummary.add_member(:job_arn, Shapes::ShapeRef.new(shape: EvaluationJobArn, required: true, location_name: "jobArn"))
    EvaluationSummary.add_member(:job_name, Shapes::ShapeRef.new(shape: EvaluationJobName, required: true, location_name: "jobName"))
    EvaluationSummary.add_member(:status, Shapes::ShapeRef.new(shape: EvaluationJobStatus, required: true, location_name: "status"))
    EvaluationSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    EvaluationSummary.add_member(:job_type, Shapes::ShapeRef.new(shape: EvaluationJobType, required: true, location_name: "jobType"))
    EvaluationSummary.add_member(:evaluation_task_types, Shapes::ShapeRef.new(shape: EvaluationTaskTypes, required: true, location_name: "evaluationTaskTypes"))
    EvaluationSummary.add_member(:model_identifiers, Shapes::ShapeRef.new(shape: EvaluationModelIdentifiers, required: true, location_name: "modelIdentifiers"))
    EvaluationSummary.struct_class = Types::EvaluationSummary

    EvaluationTaskTypes.member = Shapes::ShapeRef.new(shape: EvaluationTaskType)

    FoundationModelDetails.add_member(:model_arn, Shapes::ShapeRef.new(shape: FoundationModelArn, required: true, location_name: "modelArn"))
    FoundationModelDetails.add_member(:model_id, Shapes::ShapeRef.new(shape: BedrockModelId, required: true, location_name: "modelId"))
    FoundationModelDetails.add_member(:model_name, Shapes::ShapeRef.new(shape: BrandedName, location_name: "modelName"))
    FoundationModelDetails.add_member(:provider_name, Shapes::ShapeRef.new(shape: BrandedName, location_name: "providerName"))
    FoundationModelDetails.add_member(:input_modalities, Shapes::ShapeRef.new(shape: ModelModalityList, location_name: "inputModalities"))
    FoundationModelDetails.add_member(:output_modalities, Shapes::ShapeRef.new(shape: ModelModalityList, location_name: "outputModalities"))
    FoundationModelDetails.add_member(:response_streaming_supported, Shapes::ShapeRef.new(shape: Boolean, location_name: "responseStreamingSupported"))
    FoundationModelDetails.add_member(:customizations_supported, Shapes::ShapeRef.new(shape: ModelCustomizationList, location_name: "customizationsSupported"))
    FoundationModelDetails.add_member(:inference_types_supported, Shapes::ShapeRef.new(shape: InferenceTypeList, location_name: "inferenceTypesSupported"))
    FoundationModelDetails.add_member(:model_lifecycle, Shapes::ShapeRef.new(shape: FoundationModelLifecycle, location_name: "modelLifecycle"))
    FoundationModelDetails.struct_class = Types::FoundationModelDetails

    FoundationModelLifecycle.add_member(:status, Shapes::ShapeRef.new(shape: FoundationModelLifecycleStatus, required: true, location_name: "status"))
    FoundationModelLifecycle.struct_class = Types::FoundationModelLifecycle

    FoundationModelSummary.add_member(:model_arn, Shapes::ShapeRef.new(shape: FoundationModelArn, required: true, location_name: "modelArn"))
    FoundationModelSummary.add_member(:model_id, Shapes::ShapeRef.new(shape: BedrockModelId, required: true, location_name: "modelId"))
    FoundationModelSummary.add_member(:model_name, Shapes::ShapeRef.new(shape: BrandedName, location_name: "modelName"))
    FoundationModelSummary.add_member(:provider_name, Shapes::ShapeRef.new(shape: BrandedName, location_name: "providerName"))
    FoundationModelSummary.add_member(:input_modalities, Shapes::ShapeRef.new(shape: ModelModalityList, location_name: "inputModalities"))
    FoundationModelSummary.add_member(:output_modalities, Shapes::ShapeRef.new(shape: ModelModalityList, location_name: "outputModalities"))
    FoundationModelSummary.add_member(:response_streaming_supported, Shapes::ShapeRef.new(shape: Boolean, location_name: "responseStreamingSupported"))
    FoundationModelSummary.add_member(:customizations_supported, Shapes::ShapeRef.new(shape: ModelCustomizationList, location_name: "customizationsSupported"))
    FoundationModelSummary.add_member(:inference_types_supported, Shapes::ShapeRef.new(shape: InferenceTypeList, location_name: "inferenceTypesSupported"))
    FoundationModelSummary.add_member(:model_lifecycle, Shapes::ShapeRef.new(shape: FoundationModelLifecycle, location_name: "modelLifecycle"))
    FoundationModelSummary.struct_class = Types::FoundationModelSummary

    FoundationModelSummaryList.member = Shapes::ShapeRef.new(shape: FoundationModelSummary)

    GetCustomModelRequest.add_member(:model_identifier, Shapes::ShapeRef.new(shape: ModelIdentifier, required: true, location: "uri", location_name: "modelIdentifier"))
    GetCustomModelRequest.struct_class = Types::GetCustomModelRequest

    GetCustomModelResponse.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "modelArn"))
    GetCustomModelResponse.add_member(:model_name, Shapes::ShapeRef.new(shape: CustomModelName, required: true, location_name: "modelName"))
    GetCustomModelResponse.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "jobName"))
    GetCustomModelResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: ModelCustomizationJobArn, required: true, location_name: "jobArn"))
    GetCustomModelResponse.add_member(:base_model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "baseModelArn"))
    GetCustomModelResponse.add_member(:customization_type, Shapes::ShapeRef.new(shape: CustomizationType, location_name: "customizationType"))
    GetCustomModelResponse.add_member(:model_kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "modelKmsKeyArn"))
    GetCustomModelResponse.add_member(:hyper_parameters, Shapes::ShapeRef.new(shape: ModelCustomizationHyperParameters, location_name: "hyperParameters"))
    GetCustomModelResponse.add_member(:training_data_config, Shapes::ShapeRef.new(shape: TrainingDataConfig, required: true, location_name: "trainingDataConfig"))
    GetCustomModelResponse.add_member(:validation_data_config, Shapes::ShapeRef.new(shape: ValidationDataConfig, location_name: "validationDataConfig"))
    GetCustomModelResponse.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "outputDataConfig"))
    GetCustomModelResponse.add_member(:training_metrics, Shapes::ShapeRef.new(shape: TrainingMetrics, location_name: "trainingMetrics"))
    GetCustomModelResponse.add_member(:validation_metrics, Shapes::ShapeRef.new(shape: ValidationMetrics, location_name: "validationMetrics"))
    GetCustomModelResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    GetCustomModelResponse.struct_class = Types::GetCustomModelResponse

    GetEvaluationJobRequest.add_member(:job_identifier, Shapes::ShapeRef.new(shape: EvaluationJobIdentifier, required: true, location: "uri", location_name: "jobIdentifier"))
    GetEvaluationJobRequest.struct_class = Types::GetEvaluationJobRequest

    GetEvaluationJobResponse.add_member(:job_name, Shapes::ShapeRef.new(shape: EvaluationJobName, required: true, location_name: "jobName"))
    GetEvaluationJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: EvaluationJobStatus, required: true, location_name: "status"))
    GetEvaluationJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: EvaluationJobArn, required: true, location_name: "jobArn"))
    GetEvaluationJobResponse.add_member(:job_description, Shapes::ShapeRef.new(shape: EvaluationJobDescription, location_name: "jobDescription"))
    GetEvaluationJobResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    GetEvaluationJobResponse.add_member(:customer_encryption_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "customerEncryptionKeyId"))
    GetEvaluationJobResponse.add_member(:job_type, Shapes::ShapeRef.new(shape: EvaluationJobType, required: true, location_name: "jobType"))
    GetEvaluationJobResponse.add_member(:evaluation_config, Shapes::ShapeRef.new(shape: EvaluationConfig, required: true, location_name: "evaluationConfig"))
    GetEvaluationJobResponse.add_member(:inference_config, Shapes::ShapeRef.new(shape: EvaluationInferenceConfig, required: true, location_name: "inferenceConfig"))
    GetEvaluationJobResponse.add_member(:output_data_config, Shapes::ShapeRef.new(shape: EvaluationOutputDataConfig, required: true, location_name: "outputDataConfig"))
    GetEvaluationJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    GetEvaluationJobResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    GetEvaluationJobResponse.add_member(:failure_messages, Shapes::ShapeRef.new(shape: ErrorMessages, location_name: "failureMessages"))
    GetEvaluationJobResponse.struct_class = Types::GetEvaluationJobResponse

    GetFoundationModelRequest.add_member(:model_identifier, Shapes::ShapeRef.new(shape: ModelIdentifier, required: true, location: "uri", location_name: "modelIdentifier"))
    GetFoundationModelRequest.struct_class = Types::GetFoundationModelRequest

    GetFoundationModelResponse.add_member(:model_details, Shapes::ShapeRef.new(shape: FoundationModelDetails, location_name: "modelDetails"))
    GetFoundationModelResponse.struct_class = Types::GetFoundationModelResponse

    GetGuardrailRequest.add_member(:guardrail_identifier, Shapes::ShapeRef.new(shape: GuardrailIdentifier, required: true, location: "uri", location_name: "guardrailIdentifier"))
    GetGuardrailRequest.add_member(:guardrail_version, Shapes::ShapeRef.new(shape: GuardrailVersion, location: "querystring", location_name: "guardrailVersion"))
    GetGuardrailRequest.struct_class = Types::GetGuardrailRequest

    GetGuardrailResponse.add_member(:name, Shapes::ShapeRef.new(shape: GuardrailName, required: true, location_name: "name"))
    GetGuardrailResponse.add_member(:description, Shapes::ShapeRef.new(shape: GuardrailDescription, location_name: "description"))
    GetGuardrailResponse.add_member(:guardrail_id, Shapes::ShapeRef.new(shape: GuardrailId, required: true, location_name: "guardrailId"))
    GetGuardrailResponse.add_member(:guardrail_arn, Shapes::ShapeRef.new(shape: GuardrailArn, required: true, location_name: "guardrailArn"))
    GetGuardrailResponse.add_member(:version, Shapes::ShapeRef.new(shape: GuardrailVersion, required: true, location_name: "version"))
    GetGuardrailResponse.add_member(:status, Shapes::ShapeRef.new(shape: GuardrailStatus, required: true, location_name: "status"))
    GetGuardrailResponse.add_member(:topic_policy, Shapes::ShapeRef.new(shape: GuardrailTopicPolicy, location_name: "topicPolicy"))
    GetGuardrailResponse.add_member(:content_policy, Shapes::ShapeRef.new(shape: GuardrailContentPolicy, location_name: "contentPolicy"))
    GetGuardrailResponse.add_member(:word_policy, Shapes::ShapeRef.new(shape: GuardrailWordPolicy, location_name: "wordPolicy"))
    GetGuardrailResponse.add_member(:sensitive_information_policy, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationPolicy, location_name: "sensitiveInformationPolicy"))
    GetGuardrailResponse.add_member(:contextual_grounding_policy, Shapes::ShapeRef.new(shape: GuardrailContextualGroundingPolicy, location_name: "contextualGroundingPolicy"))
    GetGuardrailResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetGuardrailResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetGuardrailResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: GuardrailStatusReasons, location_name: "statusReasons"))
    GetGuardrailResponse.add_member(:failure_recommendations, Shapes::ShapeRef.new(shape: GuardrailFailureRecommendations, location_name: "failureRecommendations"))
    GetGuardrailResponse.add_member(:blocked_input_messaging, Shapes::ShapeRef.new(shape: GuardrailBlockedMessaging, required: true, location_name: "blockedInputMessaging"))
    GetGuardrailResponse.add_member(:blocked_outputs_messaging, Shapes::ShapeRef.new(shape: GuardrailBlockedMessaging, required: true, location_name: "blockedOutputsMessaging"))
    GetGuardrailResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    GetGuardrailResponse.struct_class = Types::GetGuardrailResponse

    GetModelCopyJobRequest.add_member(:job_arn, Shapes::ShapeRef.new(shape: ModelCopyJobArn, required: true, location: "uri", location_name: "jobArn"))
    GetModelCopyJobRequest.struct_class = Types::GetModelCopyJobRequest

    GetModelCopyJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: ModelCopyJobArn, required: true, location_name: "jobArn"))
    GetModelCopyJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: ModelCopyJobStatus, required: true, location_name: "status"))
    GetModelCopyJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    GetModelCopyJobResponse.add_member(:target_model_arn, Shapes::ShapeRef.new(shape: CustomModelArn, required: true, location_name: "targetModelArn"))
    GetModelCopyJobResponse.add_member(:target_model_name, Shapes::ShapeRef.new(shape: CustomModelName, location_name: "targetModelName"))
    GetModelCopyJobResponse.add_member(:source_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "sourceAccountId"))
    GetModelCopyJobResponse.add_member(:source_model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "sourceModelArn"))
    GetModelCopyJobResponse.add_member(:target_model_kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "targetModelKmsKeyArn"))
    GetModelCopyJobResponse.add_member(:target_model_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "targetModelTags"))
    GetModelCopyJobResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "failureMessage"))
    GetModelCopyJobResponse.add_member(:source_model_name, Shapes::ShapeRef.new(shape: CustomModelName, location_name: "sourceModelName"))
    GetModelCopyJobResponse.struct_class = Types::GetModelCopyJobResponse

    GetModelCustomizationJobRequest.add_member(:job_identifier, Shapes::ShapeRef.new(shape: ModelCustomizationJobIdentifier, required: true, location: "uri", location_name: "jobIdentifier"))
    GetModelCustomizationJobRequest.struct_class = Types::GetModelCustomizationJobRequest

    GetModelCustomizationJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: ModelCustomizationJobArn, required: true, location_name: "jobArn"))
    GetModelCustomizationJobResponse.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "jobName"))
    GetModelCustomizationJobResponse.add_member(:output_model_name, Shapes::ShapeRef.new(shape: CustomModelName, required: true, location_name: "outputModelName"))
    GetModelCustomizationJobResponse.add_member(:output_model_arn, Shapes::ShapeRef.new(shape: CustomModelArn, location_name: "outputModelArn"))
    GetModelCustomizationJobResponse.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken"))
    GetModelCustomizationJobResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    GetModelCustomizationJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: ModelCustomizationJobStatus, location_name: "status"))
    GetModelCustomizationJobResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "failureMessage"))
    GetModelCustomizationJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    GetModelCustomizationJobResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    GetModelCustomizationJobResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    GetModelCustomizationJobResponse.add_member(:base_model_arn, Shapes::ShapeRef.new(shape: FoundationModelArn, required: true, location_name: "baseModelArn"))
    GetModelCustomizationJobResponse.add_member(:hyper_parameters, Shapes::ShapeRef.new(shape: ModelCustomizationHyperParameters, required: true, location_name: "hyperParameters"))
    GetModelCustomizationJobResponse.add_member(:training_data_config, Shapes::ShapeRef.new(shape: TrainingDataConfig, required: true, location_name: "trainingDataConfig"))
    GetModelCustomizationJobResponse.add_member(:validation_data_config, Shapes::ShapeRef.new(shape: ValidationDataConfig, required: true, location_name: "validationDataConfig"))
    GetModelCustomizationJobResponse.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "outputDataConfig"))
    GetModelCustomizationJobResponse.add_member(:customization_type, Shapes::ShapeRef.new(shape: CustomizationType, location_name: "customizationType"))
    GetModelCustomizationJobResponse.add_member(:output_model_kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "outputModelKmsKeyArn"))
    GetModelCustomizationJobResponse.add_member(:training_metrics, Shapes::ShapeRef.new(shape: TrainingMetrics, location_name: "trainingMetrics"))
    GetModelCustomizationJobResponse.add_member(:validation_metrics, Shapes::ShapeRef.new(shape: ValidationMetrics, location_name: "validationMetrics"))
    GetModelCustomizationJobResponse.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    GetModelCustomizationJobResponse.struct_class = Types::GetModelCustomizationJobResponse

    GetModelInvocationLoggingConfigurationRequest.struct_class = Types::GetModelInvocationLoggingConfigurationRequest

    GetModelInvocationLoggingConfigurationResponse.add_member(:logging_config, Shapes::ShapeRef.new(shape: LoggingConfig, location_name: "loggingConfig"))
    GetModelInvocationLoggingConfigurationResponse.struct_class = Types::GetModelInvocationLoggingConfigurationResponse

    GetProvisionedModelThroughputRequest.add_member(:provisioned_model_id, Shapes::ShapeRef.new(shape: ProvisionedModelId, required: true, location: "uri", location_name: "provisionedModelId"))
    GetProvisionedModelThroughputRequest.struct_class = Types::GetProvisionedModelThroughputRequest

    GetProvisionedModelThroughputResponse.add_member(:model_units, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location_name: "modelUnits"))
    GetProvisionedModelThroughputResponse.add_member(:desired_model_units, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location_name: "desiredModelUnits"))
    GetProvisionedModelThroughputResponse.add_member(:provisioned_model_name, Shapes::ShapeRef.new(shape: ProvisionedModelName, required: true, location_name: "provisionedModelName"))
    GetProvisionedModelThroughputResponse.add_member(:provisioned_model_arn, Shapes::ShapeRef.new(shape: ProvisionedModelArn, required: true, location_name: "provisionedModelArn"))
    GetProvisionedModelThroughputResponse.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "modelArn"))
    GetProvisionedModelThroughputResponse.add_member(:desired_model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "desiredModelArn"))
    GetProvisionedModelThroughputResponse.add_member(:foundation_model_arn, Shapes::ShapeRef.new(shape: FoundationModelArn, required: true, location_name: "foundationModelArn"))
    GetProvisionedModelThroughputResponse.add_member(:status, Shapes::ShapeRef.new(shape: ProvisionedModelStatus, required: true, location_name: "status"))
    GetProvisionedModelThroughputResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    GetProvisionedModelThroughputResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedTime"))
    GetProvisionedModelThroughputResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "failureMessage"))
    GetProvisionedModelThroughputResponse.add_member(:commitment_duration, Shapes::ShapeRef.new(shape: CommitmentDuration, location_name: "commitmentDuration"))
    GetProvisionedModelThroughputResponse.add_member(:commitment_expiration_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "commitmentExpirationTime"))
    GetProvisionedModelThroughputResponse.struct_class = Types::GetProvisionedModelThroughputResponse

    GuardrailContentFilter.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailContentFilterType, required: true, location_name: "type"))
    GuardrailContentFilter.add_member(:input_strength, Shapes::ShapeRef.new(shape: GuardrailFilterStrength, required: true, location_name: "inputStrength"))
    GuardrailContentFilter.add_member(:output_strength, Shapes::ShapeRef.new(shape: GuardrailFilterStrength, required: true, location_name: "outputStrength"))
    GuardrailContentFilter.struct_class = Types::GuardrailContentFilter

    GuardrailContentFilterConfig.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailContentFilterType, required: true, location_name: "type"))
    GuardrailContentFilterConfig.add_member(:input_strength, Shapes::ShapeRef.new(shape: GuardrailFilterStrength, required: true, location_name: "inputStrength"))
    GuardrailContentFilterConfig.add_member(:output_strength, Shapes::ShapeRef.new(shape: GuardrailFilterStrength, required: true, location_name: "outputStrength"))
    GuardrailContentFilterConfig.struct_class = Types::GuardrailContentFilterConfig

    GuardrailContentFilters.member = Shapes::ShapeRef.new(shape: GuardrailContentFilter)

    GuardrailContentFiltersConfig.member = Shapes::ShapeRef.new(shape: GuardrailContentFilterConfig)

    GuardrailContentPolicy.add_member(:filters, Shapes::ShapeRef.new(shape: GuardrailContentFilters, location_name: "filters"))
    GuardrailContentPolicy.struct_class = Types::GuardrailContentPolicy

    GuardrailContentPolicyConfig.add_member(:filters_config, Shapes::ShapeRef.new(shape: GuardrailContentFiltersConfig, required: true, location_name: "filtersConfig"))
    GuardrailContentPolicyConfig.struct_class = Types::GuardrailContentPolicyConfig

    GuardrailContextualGroundingFilter.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilterType, required: true, location_name: "type"))
    GuardrailContextualGroundingFilter.add_member(:threshold, Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilterThresholdDouble, required: true, location_name: "threshold"))
    GuardrailContextualGroundingFilter.struct_class = Types::GuardrailContextualGroundingFilter

    GuardrailContextualGroundingFilterConfig.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilterType, required: true, location_name: "type"))
    GuardrailContextualGroundingFilterConfig.add_member(:threshold, Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilterConfigThresholdDouble, required: true, location_name: "threshold"))
    GuardrailContextualGroundingFilterConfig.struct_class = Types::GuardrailContextualGroundingFilterConfig

    GuardrailContextualGroundingFilters.member = Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilter)

    GuardrailContextualGroundingFiltersConfig.member = Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilterConfig)

    GuardrailContextualGroundingPolicy.add_member(:filters, Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilters, required: true, location_name: "filters"))
    GuardrailContextualGroundingPolicy.struct_class = Types::GuardrailContextualGroundingPolicy

    GuardrailContextualGroundingPolicyConfig.add_member(:filters_config, Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFiltersConfig, required: true, location_name: "filtersConfig"))
    GuardrailContextualGroundingPolicyConfig.struct_class = Types::GuardrailContextualGroundingPolicyConfig

    GuardrailFailureRecommendations.member = Shapes::ShapeRef.new(shape: GuardrailFailureRecommendation)

    GuardrailManagedWordLists.member = Shapes::ShapeRef.new(shape: GuardrailManagedWords)

    GuardrailManagedWordListsConfig.member = Shapes::ShapeRef.new(shape: GuardrailManagedWordsConfig)

    GuardrailManagedWords.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailManagedWordsType, required: true, location_name: "type"))
    GuardrailManagedWords.struct_class = Types::GuardrailManagedWords

    GuardrailManagedWordsConfig.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailManagedWordsType, required: true, location_name: "type"))
    GuardrailManagedWordsConfig.struct_class = Types::GuardrailManagedWordsConfig

    GuardrailPiiEntities.member = Shapes::ShapeRef.new(shape: GuardrailPiiEntity)

    GuardrailPiiEntitiesConfig.member = Shapes::ShapeRef.new(shape: GuardrailPiiEntityConfig)

    GuardrailPiiEntity.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailPiiEntityType, required: true, location_name: "type"))
    GuardrailPiiEntity.add_member(:action, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, required: true, location_name: "action"))
    GuardrailPiiEntity.struct_class = Types::GuardrailPiiEntity

    GuardrailPiiEntityConfig.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailPiiEntityType, required: true, location_name: "type"))
    GuardrailPiiEntityConfig.add_member(:action, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, required: true, location_name: "action"))
    GuardrailPiiEntityConfig.struct_class = Types::GuardrailPiiEntityConfig

    GuardrailRegex.add_member(:name, Shapes::ShapeRef.new(shape: GuardrailRegexNameString, required: true, location_name: "name"))
    GuardrailRegex.add_member(:description, Shapes::ShapeRef.new(shape: GuardrailRegexDescriptionString, location_name: "description"))
    GuardrailRegex.add_member(:pattern, Shapes::ShapeRef.new(shape: GuardrailRegexPatternString, required: true, location_name: "pattern"))
    GuardrailRegex.add_member(:action, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, required: true, location_name: "action"))
    GuardrailRegex.struct_class = Types::GuardrailRegex

    GuardrailRegexConfig.add_member(:name, Shapes::ShapeRef.new(shape: GuardrailRegexConfigNameString, required: true, location_name: "name"))
    GuardrailRegexConfig.add_member(:description, Shapes::ShapeRef.new(shape: GuardrailRegexConfigDescriptionString, location_name: "description"))
    GuardrailRegexConfig.add_member(:pattern, Shapes::ShapeRef.new(shape: GuardrailRegexConfigPatternString, required: true, location_name: "pattern"))
    GuardrailRegexConfig.add_member(:action, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, required: true, location_name: "action"))
    GuardrailRegexConfig.struct_class = Types::GuardrailRegexConfig

    GuardrailRegexes.member = Shapes::ShapeRef.new(shape: GuardrailRegex)

    GuardrailRegexesConfig.member = Shapes::ShapeRef.new(shape: GuardrailRegexConfig)

    GuardrailSensitiveInformationPolicy.add_member(:pii_entities, Shapes::ShapeRef.new(shape: GuardrailPiiEntities, location_name: "piiEntities"))
    GuardrailSensitiveInformationPolicy.add_member(:regexes, Shapes::ShapeRef.new(shape: GuardrailRegexes, location_name: "regexes"))
    GuardrailSensitiveInformationPolicy.struct_class = Types::GuardrailSensitiveInformationPolicy

    GuardrailSensitiveInformationPolicyConfig.add_member(:pii_entities_config, Shapes::ShapeRef.new(shape: GuardrailPiiEntitiesConfig, location_name: "piiEntitiesConfig"))
    GuardrailSensitiveInformationPolicyConfig.add_member(:regexes_config, Shapes::ShapeRef.new(shape: GuardrailRegexesConfig, location_name: "regexesConfig"))
    GuardrailSensitiveInformationPolicyConfig.struct_class = Types::GuardrailSensitiveInformationPolicyConfig

    GuardrailStatusReasons.member = Shapes::ShapeRef.new(shape: GuardrailStatusReason)

    GuardrailSummaries.member = Shapes::ShapeRef.new(shape: GuardrailSummary)

    GuardrailSummary.add_member(:id, Shapes::ShapeRef.new(shape: GuardrailId, required: true, location_name: "id"))
    GuardrailSummary.add_member(:arn, Shapes::ShapeRef.new(shape: GuardrailArn, required: true, location_name: "arn"))
    GuardrailSummary.add_member(:status, Shapes::ShapeRef.new(shape: GuardrailStatus, required: true, location_name: "status"))
    GuardrailSummary.add_member(:name, Shapes::ShapeRef.new(shape: GuardrailName, required: true, location_name: "name"))
    GuardrailSummary.add_member(:description, Shapes::ShapeRef.new(shape: GuardrailDescription, location_name: "description"))
    GuardrailSummary.add_member(:version, Shapes::ShapeRef.new(shape: GuardrailVersion, required: true, location_name: "version"))
    GuardrailSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GuardrailSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GuardrailSummary.struct_class = Types::GuardrailSummary

    GuardrailTopic.add_member(:name, Shapes::ShapeRef.new(shape: GuardrailTopicName, required: true, location_name: "name"))
    GuardrailTopic.add_member(:definition, Shapes::ShapeRef.new(shape: GuardrailTopicDefinition, required: true, location_name: "definition"))
    GuardrailTopic.add_member(:examples, Shapes::ShapeRef.new(shape: GuardrailTopicExamples, location_name: "examples"))
    GuardrailTopic.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailTopicType, location_name: "type"))
    GuardrailTopic.struct_class = Types::GuardrailTopic

    GuardrailTopicConfig.add_member(:name, Shapes::ShapeRef.new(shape: GuardrailTopicName, required: true, location_name: "name"))
    GuardrailTopicConfig.add_member(:definition, Shapes::ShapeRef.new(shape: GuardrailTopicDefinition, required: true, location_name: "definition"))
    GuardrailTopicConfig.add_member(:examples, Shapes::ShapeRef.new(shape: GuardrailTopicExamples, location_name: "examples"))
    GuardrailTopicConfig.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailTopicType, required: true, location_name: "type"))
    GuardrailTopicConfig.struct_class = Types::GuardrailTopicConfig

    GuardrailTopicExamples.member = Shapes::ShapeRef.new(shape: GuardrailTopicExample)

    GuardrailTopicPolicy.add_member(:topics, Shapes::ShapeRef.new(shape: GuardrailTopics, required: true, location_name: "topics"))
    GuardrailTopicPolicy.struct_class = Types::GuardrailTopicPolicy

    GuardrailTopicPolicyConfig.add_member(:topics_config, Shapes::ShapeRef.new(shape: GuardrailTopicsConfig, required: true, location_name: "topicsConfig"))
    GuardrailTopicPolicyConfig.struct_class = Types::GuardrailTopicPolicyConfig

    GuardrailTopics.member = Shapes::ShapeRef.new(shape: GuardrailTopic)

    GuardrailTopicsConfig.member = Shapes::ShapeRef.new(shape: GuardrailTopicConfig)

    GuardrailWord.add_member(:text, Shapes::ShapeRef.new(shape: GuardrailWordTextString, required: true, location_name: "text"))
    GuardrailWord.struct_class = Types::GuardrailWord

    GuardrailWordConfig.add_member(:text, Shapes::ShapeRef.new(shape: GuardrailWordConfigTextString, required: true, location_name: "text"))
    GuardrailWordConfig.struct_class = Types::GuardrailWordConfig

    GuardrailWordPolicy.add_member(:words, Shapes::ShapeRef.new(shape: GuardrailWords, location_name: "words"))
    GuardrailWordPolicy.add_member(:managed_word_lists, Shapes::ShapeRef.new(shape: GuardrailManagedWordLists, location_name: "managedWordLists"))
    GuardrailWordPolicy.struct_class = Types::GuardrailWordPolicy

    GuardrailWordPolicyConfig.add_member(:words_config, Shapes::ShapeRef.new(shape: GuardrailWordsConfig, location_name: "wordsConfig"))
    GuardrailWordPolicyConfig.add_member(:managed_word_lists_config, Shapes::ShapeRef.new(shape: GuardrailManagedWordListsConfig, location_name: "managedWordListsConfig"))
    GuardrailWordPolicyConfig.struct_class = Types::GuardrailWordPolicyConfig

    GuardrailWords.member = Shapes::ShapeRef.new(shape: GuardrailWord)

    GuardrailWordsConfig.member = Shapes::ShapeRef.new(shape: GuardrailWordConfig)

    HumanEvaluationConfig.add_member(:human_workflow_config, Shapes::ShapeRef.new(shape: HumanWorkflowConfig, location_name: "humanWorkflowConfig"))
    HumanEvaluationConfig.add_member(:custom_metrics, Shapes::ShapeRef.new(shape: HumanEvaluationCustomMetrics, location_name: "customMetrics"))
    HumanEvaluationConfig.add_member(:dataset_metric_configs, Shapes::ShapeRef.new(shape: EvaluationDatasetMetricConfigs, required: true, location_name: "datasetMetricConfigs"))
    HumanEvaluationConfig.struct_class = Types::HumanEvaluationConfig

    HumanEvaluationCustomMetric.add_member(:name, Shapes::ShapeRef.new(shape: EvaluationMetricName, required: true, location_name: "name"))
    HumanEvaluationCustomMetric.add_member(:description, Shapes::ShapeRef.new(shape: EvaluationMetricDescription, location_name: "description"))
    HumanEvaluationCustomMetric.add_member(:rating_method, Shapes::ShapeRef.new(shape: EvaluationRatingMethod, required: true, location_name: "ratingMethod"))
    HumanEvaluationCustomMetric.struct_class = Types::HumanEvaluationCustomMetric

    HumanEvaluationCustomMetrics.member = Shapes::ShapeRef.new(shape: HumanEvaluationCustomMetric)

    HumanWorkflowConfig.add_member(:flow_definition_arn, Shapes::ShapeRef.new(shape: SageMakerFlowDefinitionArn, required: true, location_name: "flowDefinitionArn"))
    HumanWorkflowConfig.add_member(:instructions, Shapes::ShapeRef.new(shape: HumanTaskInstructions, location_name: "instructions"))
    HumanWorkflowConfig.struct_class = Types::HumanWorkflowConfig

    InferenceTypeList.member = Shapes::ShapeRef.new(shape: InferenceType)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListCustomModelsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeBefore"))
    ListCustomModelsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeAfter"))
    ListCustomModelsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: CustomModelName, location: "querystring", location_name: "nameContains"))
    ListCustomModelsRequest.add_member(:base_model_arn_equals, Shapes::ShapeRef.new(shape: ModelArn, location: "querystring", location_name: "baseModelArnEquals"))
    ListCustomModelsRequest.add_member(:foundation_model_arn_equals, Shapes::ShapeRef.new(shape: FoundationModelArn, location: "querystring", location_name: "foundationModelArnEquals"))
    ListCustomModelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCustomModelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListCustomModelsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortModelsBy, location: "querystring", location_name: "sortBy"))
    ListCustomModelsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location: "querystring", location_name: "sortOrder"))
    ListCustomModelsRequest.add_member(:is_owned, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "isOwned"))
    ListCustomModelsRequest.struct_class = Types::ListCustomModelsRequest

    ListCustomModelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListCustomModelsResponse.add_member(:model_summaries, Shapes::ShapeRef.new(shape: CustomModelSummaryList, location_name: "modelSummaries"))
    ListCustomModelsResponse.struct_class = Types::ListCustomModelsResponse

    ListEvaluationJobsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeAfter"))
    ListEvaluationJobsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeBefore"))
    ListEvaluationJobsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: EvaluationJobStatus, location: "querystring", location_name: "statusEquals"))
    ListEvaluationJobsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: EvaluationJobName, location: "querystring", location_name: "nameContains"))
    ListEvaluationJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListEvaluationJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListEvaluationJobsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortJobsBy, location: "querystring", location_name: "sortBy"))
    ListEvaluationJobsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location: "querystring", location_name: "sortOrder"))
    ListEvaluationJobsRequest.struct_class = Types::ListEvaluationJobsRequest

    ListEvaluationJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEvaluationJobsResponse.add_member(:job_summaries, Shapes::ShapeRef.new(shape: EvaluationSummaries, location_name: "jobSummaries"))
    ListEvaluationJobsResponse.struct_class = Types::ListEvaluationJobsResponse

    ListFoundationModelsRequest.add_member(:by_provider, Shapes::ShapeRef.new(shape: Provider, location: "querystring", location_name: "byProvider"))
    ListFoundationModelsRequest.add_member(:by_customization_type, Shapes::ShapeRef.new(shape: ModelCustomization, location: "querystring", location_name: "byCustomizationType"))
    ListFoundationModelsRequest.add_member(:by_output_modality, Shapes::ShapeRef.new(shape: ModelModality, location: "querystring", location_name: "byOutputModality"))
    ListFoundationModelsRequest.add_member(:by_inference_type, Shapes::ShapeRef.new(shape: InferenceType, location: "querystring", location_name: "byInferenceType"))
    ListFoundationModelsRequest.struct_class = Types::ListFoundationModelsRequest

    ListFoundationModelsResponse.add_member(:model_summaries, Shapes::ShapeRef.new(shape: FoundationModelSummaryList, location_name: "modelSummaries"))
    ListFoundationModelsResponse.struct_class = Types::ListFoundationModelsResponse

    ListGuardrailsRequest.add_member(:guardrail_identifier, Shapes::ShapeRef.new(shape: GuardrailIdentifier, location: "querystring", location_name: "guardrailIdentifier"))
    ListGuardrailsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListGuardrailsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListGuardrailsRequest.struct_class = Types::ListGuardrailsRequest

    ListGuardrailsResponse.add_member(:guardrails, Shapes::ShapeRef.new(shape: GuardrailSummaries, required: true, location_name: "guardrails"))
    ListGuardrailsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListGuardrailsResponse.struct_class = Types::ListGuardrailsResponse

    ListModelCopyJobsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeAfter"))
    ListModelCopyJobsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeBefore"))
    ListModelCopyJobsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: ModelCopyJobStatus, location: "querystring", location_name: "statusEquals"))
    ListModelCopyJobsRequest.add_member(:source_account_equals, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "sourceAccountEquals"))
    ListModelCopyJobsRequest.add_member(:source_model_arn_equals, Shapes::ShapeRef.new(shape: ModelArn, location: "querystring", location_name: "sourceModelArnEquals"))
    ListModelCopyJobsRequest.add_member(:target_model_name_contains, Shapes::ShapeRef.new(shape: CustomModelName, location: "querystring", location_name: "outputModelNameContains"))
    ListModelCopyJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListModelCopyJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListModelCopyJobsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortJobsBy, location: "querystring", location_name: "sortBy"))
    ListModelCopyJobsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location: "querystring", location_name: "sortOrder"))
    ListModelCopyJobsRequest.struct_class = Types::ListModelCopyJobsRequest

    ListModelCopyJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListModelCopyJobsResponse.add_member(:model_copy_job_summaries, Shapes::ShapeRef.new(shape: ModelCopyJobSummaries, location_name: "modelCopyJobSummaries"))
    ListModelCopyJobsResponse.struct_class = Types::ListModelCopyJobsResponse

    ListModelCustomizationJobsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeAfter"))
    ListModelCustomizationJobsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeBefore"))
    ListModelCustomizationJobsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: FineTuningJobStatus, location: "querystring", location_name: "statusEquals"))
    ListModelCustomizationJobsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: JobName, location: "querystring", location_name: "nameContains"))
    ListModelCustomizationJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListModelCustomizationJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListModelCustomizationJobsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortJobsBy, location: "querystring", location_name: "sortBy"))
    ListModelCustomizationJobsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location: "querystring", location_name: "sortOrder"))
    ListModelCustomizationJobsRequest.struct_class = Types::ListModelCustomizationJobsRequest

    ListModelCustomizationJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListModelCustomizationJobsResponse.add_member(:model_customization_job_summaries, Shapes::ShapeRef.new(shape: ModelCustomizationJobSummaries, location_name: "modelCustomizationJobSummaries"))
    ListModelCustomizationJobsResponse.struct_class = Types::ListModelCustomizationJobsResponse

    ListProvisionedModelThroughputsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeAfter"))
    ListProvisionedModelThroughputsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeBefore"))
    ListProvisionedModelThroughputsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: ProvisionedModelStatus, location: "querystring", location_name: "statusEquals"))
    ListProvisionedModelThroughputsRequest.add_member(:model_arn_equals, Shapes::ShapeRef.new(shape: ModelArn, location: "querystring", location_name: "modelArnEquals"))
    ListProvisionedModelThroughputsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: ProvisionedModelName, location: "querystring", location_name: "nameContains"))
    ListProvisionedModelThroughputsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListProvisionedModelThroughputsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListProvisionedModelThroughputsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortByProvisionedModels, location: "querystring", location_name: "sortBy"))
    ListProvisionedModelThroughputsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location: "querystring", location_name: "sortOrder"))
    ListProvisionedModelThroughputsRequest.struct_class = Types::ListProvisionedModelThroughputsRequest

    ListProvisionedModelThroughputsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListProvisionedModelThroughputsResponse.add_member(:provisioned_model_summaries, Shapes::ShapeRef.new(shape: ProvisionedModelSummaries, location_name: "provisionedModelSummaries"))
    ListProvisionedModelThroughputsResponse.struct_class = Types::ListProvisionedModelThroughputsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourcesArn, required: true, location_name: "resourceARN"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    LoggingConfig.add_member(:cloud_watch_config, Shapes::ShapeRef.new(shape: CloudWatchConfig, location_name: "cloudWatchConfig"))
    LoggingConfig.add_member(:s3_config, Shapes::ShapeRef.new(shape: S3Config, location_name: "s3Config"))
    LoggingConfig.add_member(:text_data_delivery_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "textDataDeliveryEnabled"))
    LoggingConfig.add_member(:image_data_delivery_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "imageDataDeliveryEnabled"))
    LoggingConfig.add_member(:embedding_data_delivery_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "embeddingDataDeliveryEnabled"))
    LoggingConfig.struct_class = Types::LoggingConfig

    ModelCopyJobSummaries.member = Shapes::ShapeRef.new(shape: ModelCopyJobSummary)

    ModelCopyJobSummary.add_member(:job_arn, Shapes::ShapeRef.new(shape: ModelCopyJobArn, required: true, location_name: "jobArn"))
    ModelCopyJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: ModelCopyJobStatus, required: true, location_name: "status"))
    ModelCopyJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    ModelCopyJobSummary.add_member(:target_model_arn, Shapes::ShapeRef.new(shape: CustomModelArn, required: true, location_name: "targetModelArn"))
    ModelCopyJobSummary.add_member(:target_model_name, Shapes::ShapeRef.new(shape: CustomModelName, location_name: "targetModelName"))
    ModelCopyJobSummary.add_member(:source_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "sourceAccountId"))
    ModelCopyJobSummary.add_member(:source_model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "sourceModelArn"))
    ModelCopyJobSummary.add_member(:target_model_kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "targetModelKmsKeyArn"))
    ModelCopyJobSummary.add_member(:target_model_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "targetModelTags"))
    ModelCopyJobSummary.add_member(:failure_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "failureMessage"))
    ModelCopyJobSummary.add_member(:source_model_name, Shapes::ShapeRef.new(shape: CustomModelName, location_name: "sourceModelName"))
    ModelCopyJobSummary.struct_class = Types::ModelCopyJobSummary

    ModelCustomizationHyperParameters.key = Shapes::ShapeRef.new(shape: String)
    ModelCustomizationHyperParameters.value = Shapes::ShapeRef.new(shape: String)

    ModelCustomizationJobSummaries.member = Shapes::ShapeRef.new(shape: ModelCustomizationJobSummary)

    ModelCustomizationJobSummary.add_member(:job_arn, Shapes::ShapeRef.new(shape: ModelCustomizationJobArn, required: true, location_name: "jobArn"))
    ModelCustomizationJobSummary.add_member(:base_model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "baseModelArn"))
    ModelCustomizationJobSummary.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "jobName"))
    ModelCustomizationJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: ModelCustomizationJobStatus, required: true, location_name: "status"))
    ModelCustomizationJobSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    ModelCustomizationJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    ModelCustomizationJobSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    ModelCustomizationJobSummary.add_member(:custom_model_arn, Shapes::ShapeRef.new(shape: CustomModelArn, location_name: "customModelArn"))
    ModelCustomizationJobSummary.add_member(:custom_model_name, Shapes::ShapeRef.new(shape: CustomModelName, location_name: "customModelName"))
    ModelCustomizationJobSummary.add_member(:customization_type, Shapes::ShapeRef.new(shape: CustomizationType, location_name: "customizationType"))
    ModelCustomizationJobSummary.struct_class = Types::ModelCustomizationJobSummary

    ModelCustomizationList.member = Shapes::ShapeRef.new(shape: ModelCustomization)

    ModelModalityList.member = Shapes::ShapeRef.new(shape: ModelModality)

    OutputDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "s3Uri"))
    OutputDataConfig.struct_class = Types::OutputDataConfig

    ProvisionedModelSummaries.member = Shapes::ShapeRef.new(shape: ProvisionedModelSummary)

    ProvisionedModelSummary.add_member(:provisioned_model_name, Shapes::ShapeRef.new(shape: ProvisionedModelName, required: true, location_name: "provisionedModelName"))
    ProvisionedModelSummary.add_member(:provisioned_model_arn, Shapes::ShapeRef.new(shape: ProvisionedModelArn, required: true, location_name: "provisionedModelArn"))
    ProvisionedModelSummary.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "modelArn"))
    ProvisionedModelSummary.add_member(:desired_model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "desiredModelArn"))
    ProvisionedModelSummary.add_member(:foundation_model_arn, Shapes::ShapeRef.new(shape: FoundationModelArn, required: true, location_name: "foundationModelArn"))
    ProvisionedModelSummary.add_member(:model_units, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location_name: "modelUnits"))
    ProvisionedModelSummary.add_member(:desired_model_units, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location_name: "desiredModelUnits"))
    ProvisionedModelSummary.add_member(:status, Shapes::ShapeRef.new(shape: ProvisionedModelStatus, required: true, location_name: "status"))
    ProvisionedModelSummary.add_member(:commitment_duration, Shapes::ShapeRef.new(shape: CommitmentDuration, location_name: "commitmentDuration"))
    ProvisionedModelSummary.add_member(:commitment_expiration_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "commitmentExpirationTime"))
    ProvisionedModelSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    ProvisionedModelSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedTime"))
    ProvisionedModelSummary.struct_class = Types::ProvisionedModelSummary

    PutModelInvocationLoggingConfigurationRequest.add_member(:logging_config, Shapes::ShapeRef.new(shape: LoggingConfig, required: true, location_name: "loggingConfig"))
    PutModelInvocationLoggingConfigurationRequest.struct_class = Types::PutModelInvocationLoggingConfigurationRequest

    PutModelInvocationLoggingConfigurationResponse.struct_class = Types::PutModelInvocationLoggingConfigurationResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3Config.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "bucketName"))
    S3Config.add_member(:key_prefix, Shapes::ShapeRef.new(shape: KeyPrefix, location_name: "keyPrefix"))
    S3Config.struct_class = Types::S3Config

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StopEvaluationJobRequest.add_member(:job_identifier, Shapes::ShapeRef.new(shape: EvaluationJobIdentifier, required: true, location: "uri", location_name: "jobIdentifier"))
    StopEvaluationJobRequest.struct_class = Types::StopEvaluationJobRequest

    StopEvaluationJobResponse.struct_class = Types::StopEvaluationJobResponse

    StopModelCustomizationJobRequest.add_member(:job_identifier, Shapes::ShapeRef.new(shape: ModelCustomizationJobIdentifier, required: true, location: "uri", location_name: "jobIdentifier"))
    StopModelCustomizationJobRequest.struct_class = Types::StopModelCustomizationJobRequest

    StopModelCustomizationJobResponse.struct_class = Types::StopModelCustomizationJobResponse

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourcesArn, required: true, location_name: "resourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    TooManyTagsException.add_member(:resource_name, Shapes::ShapeRef.new(shape: TaggableResourcesArn, location_name: "resourceName"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    TrainingDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "s3Uri"))
    TrainingDataConfig.struct_class = Types::TrainingDataConfig

    TrainingMetrics.add_member(:training_loss, Shapes::ShapeRef.new(shape: MetricFloat, location_name: "trainingLoss"))
    TrainingMetrics.struct_class = Types::TrainingMetrics

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourcesArn, required: true, location_name: "resourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateGuardrailRequest.add_member(:guardrail_identifier, Shapes::ShapeRef.new(shape: GuardrailIdentifier, required: true, location: "uri", location_name: "guardrailIdentifier"))
    UpdateGuardrailRequest.add_member(:name, Shapes::ShapeRef.new(shape: GuardrailName, required: true, location_name: "name"))
    UpdateGuardrailRequest.add_member(:description, Shapes::ShapeRef.new(shape: GuardrailDescription, location_name: "description"))
    UpdateGuardrailRequest.add_member(:topic_policy_config, Shapes::ShapeRef.new(shape: GuardrailTopicPolicyConfig, location_name: "topicPolicyConfig"))
    UpdateGuardrailRequest.add_member(:content_policy_config, Shapes::ShapeRef.new(shape: GuardrailContentPolicyConfig, location_name: "contentPolicyConfig"))
    UpdateGuardrailRequest.add_member(:word_policy_config, Shapes::ShapeRef.new(shape: GuardrailWordPolicyConfig, location_name: "wordPolicyConfig"))
    UpdateGuardrailRequest.add_member(:sensitive_information_policy_config, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationPolicyConfig, location_name: "sensitiveInformationPolicyConfig"))
    UpdateGuardrailRequest.add_member(:contextual_grounding_policy_config, Shapes::ShapeRef.new(shape: GuardrailContextualGroundingPolicyConfig, location_name: "contextualGroundingPolicyConfig"))
    UpdateGuardrailRequest.add_member(:blocked_input_messaging, Shapes::ShapeRef.new(shape: GuardrailBlockedMessaging, required: true, location_name: "blockedInputMessaging"))
    UpdateGuardrailRequest.add_member(:blocked_outputs_messaging, Shapes::ShapeRef.new(shape: GuardrailBlockedMessaging, required: true, location_name: "blockedOutputsMessaging"))
    UpdateGuardrailRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    UpdateGuardrailRequest.struct_class = Types::UpdateGuardrailRequest

    UpdateGuardrailResponse.add_member(:guardrail_id, Shapes::ShapeRef.new(shape: GuardrailId, required: true, location_name: "guardrailId"))
    UpdateGuardrailResponse.add_member(:guardrail_arn, Shapes::ShapeRef.new(shape: GuardrailArn, required: true, location_name: "guardrailArn"))
    UpdateGuardrailResponse.add_member(:version, Shapes::ShapeRef.new(shape: GuardrailDraftVersion, required: true, location_name: "version"))
    UpdateGuardrailResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    UpdateGuardrailResponse.struct_class = Types::UpdateGuardrailResponse

    UpdateProvisionedModelThroughputRequest.add_member(:provisioned_model_id, Shapes::ShapeRef.new(shape: ProvisionedModelId, required: true, location: "uri", location_name: "provisionedModelId"))
    UpdateProvisionedModelThroughputRequest.add_member(:desired_provisioned_model_name, Shapes::ShapeRef.new(shape: ProvisionedModelName, location_name: "desiredProvisionedModelName"))
    UpdateProvisionedModelThroughputRequest.add_member(:desired_model_id, Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: "desiredModelId"))
    UpdateProvisionedModelThroughputRequest.struct_class = Types::UpdateProvisionedModelThroughputRequest

    UpdateProvisionedModelThroughputResponse.struct_class = Types::UpdateProvisionedModelThroughputResponse

    ValidationDataConfig.add_member(:validators, Shapes::ShapeRef.new(shape: Validators, required: true, location_name: "validators"))
    ValidationDataConfig.struct_class = Types::ValidationDataConfig

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    ValidationMetrics.member = Shapes::ShapeRef.new(shape: ValidatorMetric)

    Validator.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "s3Uri"))
    Validator.struct_class = Types::Validator

    ValidatorMetric.add_member(:validation_loss, Shapes::ShapeRef.new(shape: MetricFloat, location_name: "validationLoss"))
    ValidatorMetric.struct_class = Types::ValidatorMetric

    Validators.member = Shapes::ShapeRef.new(shape: Validator)

    VpcConfig.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "subnetIds"))
    VpcConfig.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, required: true, location_name: "securityGroupIds"))
    VpcConfig.struct_class = Types::VpcConfig


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-04-20"

      api.metadata = {
        "apiVersion" => "2023-04-20",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "bedrock",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon Bedrock",
        "serviceId" => "Bedrock",
        "signatureVersion" => "v4",
        "signingName" => "bedrock",
        "uid" => "bedrock-2023-04-20",
      }

      api.add_operation(:create_evaluation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEvaluationJob"
        o.http_method = "POST"
        o.http_request_uri = "/evaluation-jobs"
        o.input = Shapes::ShapeRef.new(shape: CreateEvaluationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEvaluationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_guardrail, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGuardrail"
        o.http_method = "POST"
        o.http_request_uri = "/guardrails"
        o.input = Shapes::ShapeRef.new(shape: CreateGuardrailRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGuardrailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_guardrail_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGuardrailVersion"
        o.http_method = "POST"
        o.http_request_uri = "/guardrails/{guardrailIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: CreateGuardrailVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGuardrailVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_model_copy_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateModelCopyJob"
        o.http_method = "POST"
        o.http_request_uri = "/model-copy-jobs"
        o.input = Shapes::ShapeRef.new(shape: CreateModelCopyJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateModelCopyJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
      end)

      api.add_operation(:create_model_customization_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateModelCustomizationJob"
        o.http_method = "POST"
        o.http_request_uri = "/model-customization-jobs"
        o.input = Shapes::ShapeRef.new(shape: CreateModelCustomizationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateModelCustomizationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_provisioned_model_throughput, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProvisionedModelThroughput"
        o.http_method = "POST"
        o.http_request_uri = "/provisioned-model-throughput"
        o.input = Shapes::ShapeRef.new(shape: CreateProvisionedModelThroughputRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProvisionedModelThroughputResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_custom_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCustomModel"
        o.http_method = "DELETE"
        o.http_request_uri = "/custom-models/{modelIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCustomModelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCustomModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_guardrail, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGuardrail"
        o.http_method = "DELETE"
        o.http_request_uri = "/guardrails/{guardrailIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteGuardrailRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteGuardrailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_model_invocation_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteModelInvocationLoggingConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/logging/modelinvocations"
        o.input = Shapes::ShapeRef.new(shape: DeleteModelInvocationLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteModelInvocationLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_provisioned_model_throughput, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProvisionedModelThroughput"
        o.http_method = "DELETE"
        o.http_request_uri = "/provisioned-model-throughput/{provisionedModelId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteProvisionedModelThroughputRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProvisionedModelThroughputResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_custom_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCustomModel"
        o.http_method = "GET"
        o.http_request_uri = "/custom-models/{modelIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetCustomModelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCustomModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_evaluation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEvaluationJob"
        o.http_method = "GET"
        o.http_request_uri = "/evaluation-jobs/{jobIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetEvaluationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEvaluationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_foundation_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFoundationModel"
        o.http_method = "GET"
        o.http_request_uri = "/foundation-models/{modelIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetFoundationModelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFoundationModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_guardrail, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGuardrail"
        o.http_method = "GET"
        o.http_request_uri = "/guardrails/{guardrailIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetGuardrailRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGuardrailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_model_copy_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetModelCopyJob"
        o.http_method = "GET"
        o.http_request_uri = "/model-copy-jobs/{jobArn}"
        o.input = Shapes::ShapeRef.new(shape: GetModelCopyJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetModelCopyJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_model_customization_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetModelCustomizationJob"
        o.http_method = "GET"
        o.http_request_uri = "/model-customization-jobs/{jobIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetModelCustomizationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetModelCustomizationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_model_invocation_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetModelInvocationLoggingConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/logging/modelinvocations"
        o.input = Shapes::ShapeRef.new(shape: GetModelInvocationLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetModelInvocationLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_provisioned_model_throughput, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProvisionedModelThroughput"
        o.http_method = "GET"
        o.http_request_uri = "/provisioned-model-throughput/{provisionedModelId}"
        o.input = Shapes::ShapeRef.new(shape: GetProvisionedModelThroughputRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProvisionedModelThroughputResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_custom_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCustomModels"
        o.http_method = "GET"
        o.http_request_uri = "/custom-models"
        o.input = Shapes::ShapeRef.new(shape: ListCustomModelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCustomModelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_evaluation_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEvaluationJobs"
        o.http_method = "GET"
        o.http_request_uri = "/evaluation-jobs"
        o.input = Shapes::ShapeRef.new(shape: ListEvaluationJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEvaluationJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_foundation_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFoundationModels"
        o.http_method = "GET"
        o.http_request_uri = "/foundation-models"
        o.input = Shapes::ShapeRef.new(shape: ListFoundationModelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFoundationModelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_guardrails, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGuardrails"
        o.http_method = "GET"
        o.http_request_uri = "/guardrails"
        o.input = Shapes::ShapeRef.new(shape: ListGuardrailsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGuardrailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_model_copy_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListModelCopyJobs"
        o.http_method = "GET"
        o.http_request_uri = "/model-copy-jobs"
        o.input = Shapes::ShapeRef.new(shape: ListModelCopyJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListModelCopyJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_model_customization_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListModelCustomizationJobs"
        o.http_method = "GET"
        o.http_request_uri = "/model-customization-jobs"
        o.input = Shapes::ShapeRef.new(shape: ListModelCustomizationJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListModelCustomizationJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_provisioned_model_throughputs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProvisionedModelThroughputs"
        o.http_method = "GET"
        o.http_request_uri = "/provisioned-model-throughputs"
        o.input = Shapes::ShapeRef.new(shape: ListProvisionedModelThroughputsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProvisionedModelThroughputsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.http_method = "POST"
        o.http_request_uri = "/listTagsForResource"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:put_model_invocation_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutModelInvocationLoggingConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/logging/modelinvocations"
        o.input = Shapes::ShapeRef.new(shape: PutModelInvocationLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutModelInvocationLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:stop_evaluation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopEvaluationJob"
        o.http_method = "POST"
        o.http_request_uri = "/evaluation-job/{jobIdentifier}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopEvaluationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StopEvaluationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:stop_model_customization_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopModelCustomizationJob"
        o.http_method = "POST"
        o.http_request_uri = "/model-customization-jobs/{jobIdentifier}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopModelCustomizationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StopModelCustomizationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tagResource"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/untagResource"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_guardrail, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGuardrail"
        o.http_method = "PUT"
        o.http_request_uri = "/guardrails/{guardrailIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateGuardrailRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateGuardrailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_provisioned_model_throughput, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProvisionedModelThroughput"
        o.http_method = "PATCH"
        o.http_request_uri = "/provisioned-model-throughput/{provisionedModelId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateProvisionedModelThroughputRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProvisionedModelThroughputResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
