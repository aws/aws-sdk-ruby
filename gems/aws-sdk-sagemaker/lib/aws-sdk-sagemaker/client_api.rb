# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SageMaker
  # @api private
  module ClientApi

    include Seahorse::Model

    Accept = Shapes::StringShape.new(name: 'Accept')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    ActionArn = Shapes::StringShape.new(name: 'ActionArn')
    ActionSource = Shapes::StructureShape.new(name: 'ActionSource')
    ActionStatus = Shapes::StringShape.new(name: 'ActionStatus')
    ActionSummaries = Shapes::ListShape.new(name: 'ActionSummaries')
    ActionSummary = Shapes::StructureShape.new(name: 'ActionSummary')
    AddAssociationRequest = Shapes::StructureShape.new(name: 'AddAssociationRequest')
    AddAssociationResponse = Shapes::StructureShape.new(name: 'AddAssociationResponse')
    AddTagsInput = Shapes::StructureShape.new(name: 'AddTagsInput')
    AddTagsOutput = Shapes::StructureShape.new(name: 'AddTagsOutput')
    AdditionalCodeRepositoryNamesOrUrls = Shapes::ListShape.new(name: 'AdditionalCodeRepositoryNamesOrUrls')
    AdditionalInferenceSpecificationDefinition = Shapes::StructureShape.new(name: 'AdditionalInferenceSpecificationDefinition')
    AdditionalInferenceSpecifications = Shapes::ListShape.new(name: 'AdditionalInferenceSpecifications')
    AgentVersion = Shapes::StructureShape.new(name: 'AgentVersion')
    AgentVersions = Shapes::ListShape.new(name: 'AgentVersions')
    Alarm = Shapes::StructureShape.new(name: 'Alarm')
    AlarmList = Shapes::ListShape.new(name: 'AlarmList')
    AlarmName = Shapes::StringShape.new(name: 'AlarmName')
    AlgorithmArn = Shapes::StringShape.new(name: 'AlgorithmArn')
    AlgorithmImage = Shapes::StringShape.new(name: 'AlgorithmImage')
    AlgorithmSortBy = Shapes::StringShape.new(name: 'AlgorithmSortBy')
    AlgorithmSpecification = Shapes::StructureShape.new(name: 'AlgorithmSpecification')
    AlgorithmStatus = Shapes::StringShape.new(name: 'AlgorithmStatus')
    AlgorithmStatusDetails = Shapes::StructureShape.new(name: 'AlgorithmStatusDetails')
    AlgorithmStatusItem = Shapes::StructureShape.new(name: 'AlgorithmStatusItem')
    AlgorithmStatusItemList = Shapes::ListShape.new(name: 'AlgorithmStatusItemList')
    AlgorithmSummary = Shapes::StructureShape.new(name: 'AlgorithmSummary')
    AlgorithmSummaryList = Shapes::ListShape.new(name: 'AlgorithmSummaryList')
    AlgorithmValidationProfile = Shapes::StructureShape.new(name: 'AlgorithmValidationProfile')
    AlgorithmValidationProfiles = Shapes::ListShape.new(name: 'AlgorithmValidationProfiles')
    AlgorithmValidationSpecification = Shapes::StructureShape.new(name: 'AlgorithmValidationSpecification')
    AnnotationConsolidationConfig = Shapes::StructureShape.new(name: 'AnnotationConsolidationConfig')
    AppArn = Shapes::StringShape.new(name: 'AppArn')
    AppDetails = Shapes::StructureShape.new(name: 'AppDetails')
    AppImageConfigArn = Shapes::StringShape.new(name: 'AppImageConfigArn')
    AppImageConfigDetails = Shapes::StructureShape.new(name: 'AppImageConfigDetails')
    AppImageConfigList = Shapes::ListShape.new(name: 'AppImageConfigList')
    AppImageConfigName = Shapes::StringShape.new(name: 'AppImageConfigName')
    AppImageConfigSortKey = Shapes::StringShape.new(name: 'AppImageConfigSortKey')
    AppInstanceType = Shapes::StringShape.new(name: 'AppInstanceType')
    AppList = Shapes::ListShape.new(name: 'AppList')
    AppManaged = Shapes::BooleanShape.new(name: 'AppManaged')
    AppName = Shapes::StringShape.new(name: 'AppName')
    AppNetworkAccessType = Shapes::StringShape.new(name: 'AppNetworkAccessType')
    AppSecurityGroupManagement = Shapes::StringShape.new(name: 'AppSecurityGroupManagement')
    AppSortKey = Shapes::StringShape.new(name: 'AppSortKey')
    AppSpecification = Shapes::StructureShape.new(name: 'AppSpecification')
    AppStatus = Shapes::StringShape.new(name: 'AppStatus')
    AppType = Shapes::StringShape.new(name: 'AppType')
    ApprovalDescription = Shapes::StringShape.new(name: 'ApprovalDescription')
    ArnOrName = Shapes::StringShape.new(name: 'ArnOrName')
    ArtifactArn = Shapes::StringShape.new(name: 'ArtifactArn')
    ArtifactDigest = Shapes::StringShape.new(name: 'ArtifactDigest')
    ArtifactSource = Shapes::StructureShape.new(name: 'ArtifactSource')
    ArtifactSourceIdType = Shapes::StringShape.new(name: 'ArtifactSourceIdType')
    ArtifactSourceType = Shapes::StructureShape.new(name: 'ArtifactSourceType')
    ArtifactSourceTypes = Shapes::ListShape.new(name: 'ArtifactSourceTypes')
    ArtifactSummaries = Shapes::ListShape.new(name: 'ArtifactSummaries')
    ArtifactSummary = Shapes::StructureShape.new(name: 'ArtifactSummary')
    AssemblyType = Shapes::StringShape.new(name: 'AssemblyType')
    AssociateTrialComponentRequest = Shapes::StructureShape.new(name: 'AssociateTrialComponentRequest')
    AssociateTrialComponentResponse = Shapes::StructureShape.new(name: 'AssociateTrialComponentResponse')
    AssociationEdgeType = Shapes::StringShape.new(name: 'AssociationEdgeType')
    AssociationEntityArn = Shapes::StringShape.new(name: 'AssociationEntityArn')
    AssociationSummaries = Shapes::ListShape.new(name: 'AssociationSummaries')
    AssociationSummary = Shapes::StructureShape.new(name: 'AssociationSummary')
    AsyncInferenceClientConfig = Shapes::StructureShape.new(name: 'AsyncInferenceClientConfig')
    AsyncInferenceConfig = Shapes::StructureShape.new(name: 'AsyncInferenceConfig')
    AsyncInferenceNotificationConfig = Shapes::StructureShape.new(name: 'AsyncInferenceNotificationConfig')
    AsyncInferenceOutputConfig = Shapes::StructureShape.new(name: 'AsyncInferenceOutputConfig')
    AthenaCatalog = Shapes::StringShape.new(name: 'AthenaCatalog')
    AthenaDatabase = Shapes::StringShape.new(name: 'AthenaDatabase')
    AthenaDatasetDefinition = Shapes::StructureShape.new(name: 'AthenaDatasetDefinition')
    AthenaQueryString = Shapes::StringShape.new(name: 'AthenaQueryString')
    AthenaResultCompressionType = Shapes::StringShape.new(name: 'AthenaResultCompressionType')
    AthenaResultFormat = Shapes::StringShape.new(name: 'AthenaResultFormat')
    AthenaWorkGroup = Shapes::StringShape.new(name: 'AthenaWorkGroup')
    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    AttributeNames = Shapes::ListShape.new(name: 'AttributeNames')
    AuthMode = Shapes::StringShape.new(name: 'AuthMode')
    AutoGenerateEndpointName = Shapes::BooleanShape.new(name: 'AutoGenerateEndpointName')
    AutoMLCandidate = Shapes::StructureShape.new(name: 'AutoMLCandidate')
    AutoMLCandidateStep = Shapes::StructureShape.new(name: 'AutoMLCandidateStep')
    AutoMLCandidates = Shapes::ListShape.new(name: 'AutoMLCandidates')
    AutoMLChannel = Shapes::StructureShape.new(name: 'AutoMLChannel')
    AutoMLContainerDefinition = Shapes::StructureShape.new(name: 'AutoMLContainerDefinition')
    AutoMLContainerDefinitions = Shapes::ListShape.new(name: 'AutoMLContainerDefinitions')
    AutoMLDataSource = Shapes::StructureShape.new(name: 'AutoMLDataSource')
    AutoMLFailureReason = Shapes::StringShape.new(name: 'AutoMLFailureReason')
    AutoMLInputDataConfig = Shapes::ListShape.new(name: 'AutoMLInputDataConfig')
    AutoMLJobArn = Shapes::StringShape.new(name: 'AutoMLJobArn')
    AutoMLJobArtifacts = Shapes::StructureShape.new(name: 'AutoMLJobArtifacts')
    AutoMLJobCompletionCriteria = Shapes::StructureShape.new(name: 'AutoMLJobCompletionCriteria')
    AutoMLJobConfig = Shapes::StructureShape.new(name: 'AutoMLJobConfig')
    AutoMLJobName = Shapes::StringShape.new(name: 'AutoMLJobName')
    AutoMLJobObjective = Shapes::StructureShape.new(name: 'AutoMLJobObjective')
    AutoMLJobObjectiveType = Shapes::StringShape.new(name: 'AutoMLJobObjectiveType')
    AutoMLJobSecondaryStatus = Shapes::StringShape.new(name: 'AutoMLJobSecondaryStatus')
    AutoMLJobStatus = Shapes::StringShape.new(name: 'AutoMLJobStatus')
    AutoMLJobSummaries = Shapes::ListShape.new(name: 'AutoMLJobSummaries')
    AutoMLJobSummary = Shapes::StructureShape.new(name: 'AutoMLJobSummary')
    AutoMLMaxResults = Shapes::IntegerShape.new(name: 'AutoMLMaxResults')
    AutoMLMetricEnum = Shapes::StringShape.new(name: 'AutoMLMetricEnum')
    AutoMLNameContains = Shapes::StringShape.new(name: 'AutoMLNameContains')
    AutoMLOutputDataConfig = Shapes::StructureShape.new(name: 'AutoMLOutputDataConfig')
    AutoMLPartialFailureReason = Shapes::StructureShape.new(name: 'AutoMLPartialFailureReason')
    AutoMLPartialFailureReasons = Shapes::ListShape.new(name: 'AutoMLPartialFailureReasons')
    AutoMLS3DataSource = Shapes::StructureShape.new(name: 'AutoMLS3DataSource')
    AutoMLS3DataType = Shapes::StringShape.new(name: 'AutoMLS3DataType')
    AutoMLSecurityConfig = Shapes::StructureShape.new(name: 'AutoMLSecurityConfig')
    AutoMLSortBy = Shapes::StringShape.new(name: 'AutoMLSortBy')
    AutoMLSortOrder = Shapes::StringShape.new(name: 'AutoMLSortOrder')
    AutoRollbackConfig = Shapes::StructureShape.new(name: 'AutoRollbackConfig')
    AwsManagedHumanLoopRequestSource = Shapes::StringShape.new(name: 'AwsManagedHumanLoopRequestSource')
    BatchDescribeModelPackageError = Shapes::StructureShape.new(name: 'BatchDescribeModelPackageError')
    BatchDescribeModelPackageErrorMap = Shapes::MapShape.new(name: 'BatchDescribeModelPackageErrorMap')
    BatchDescribeModelPackageInput = Shapes::StructureShape.new(name: 'BatchDescribeModelPackageInput')
    BatchDescribeModelPackageOutput = Shapes::StructureShape.new(name: 'BatchDescribeModelPackageOutput')
    BatchDescribeModelPackageSummary = Shapes::StructureShape.new(name: 'BatchDescribeModelPackageSummary')
    BatchStrategy = Shapes::StringShape.new(name: 'BatchStrategy')
    Bias = Shapes::StructureShape.new(name: 'Bias')
    BillableTimeInSeconds = Shapes::IntegerShape.new(name: 'BillableTimeInSeconds')
    BlockedReason = Shapes::StringShape.new(name: 'BlockedReason')
    BlueGreenUpdatePolicy = Shapes::StructureShape.new(name: 'BlueGreenUpdatePolicy')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BooleanOperator = Shapes::StringShape.new(name: 'BooleanOperator')
    Branch = Shapes::StringShape.new(name: 'Branch')
    BucketName = Shapes::StringShape.new(name: 'BucketName')
    CacheHitResult = Shapes::StructureShape.new(name: 'CacheHitResult')
    CallbackStepMetadata = Shapes::StructureShape.new(name: 'CallbackStepMetadata')
    CallbackToken = Shapes::StringShape.new(name: 'CallbackToken')
    CandidateArtifactLocations = Shapes::StructureShape.new(name: 'CandidateArtifactLocations')
    CandidateDefinitionNotebookLocation = Shapes::StringShape.new(name: 'CandidateDefinitionNotebookLocation')
    CandidateName = Shapes::StringShape.new(name: 'CandidateName')
    CandidateProperties = Shapes::StructureShape.new(name: 'CandidateProperties')
    CandidateSortBy = Shapes::StringShape.new(name: 'CandidateSortBy')
    CandidateStatus = Shapes::StringShape.new(name: 'CandidateStatus')
    CandidateStepArn = Shapes::StringShape.new(name: 'CandidateStepArn')
    CandidateStepName = Shapes::StringShape.new(name: 'CandidateStepName')
    CandidateStepType = Shapes::StringShape.new(name: 'CandidateStepType')
    CandidateSteps = Shapes::ListShape.new(name: 'CandidateSteps')
    CapacitySize = Shapes::StructureShape.new(name: 'CapacitySize')
    CapacitySizeType = Shapes::StringShape.new(name: 'CapacitySizeType')
    CapacitySizeValue = Shapes::IntegerShape.new(name: 'CapacitySizeValue')
    CaptureContentTypeHeader = Shapes::StructureShape.new(name: 'CaptureContentTypeHeader')
    CaptureMode = Shapes::StringShape.new(name: 'CaptureMode')
    CaptureOption = Shapes::StructureShape.new(name: 'CaptureOption')
    CaptureOptionList = Shapes::ListShape.new(name: 'CaptureOptionList')
    CaptureStatus = Shapes::StringShape.new(name: 'CaptureStatus')
    Catalog = Shapes::StringShape.new(name: 'Catalog')
    CategoricalParameter = Shapes::StructureShape.new(name: 'CategoricalParameter')
    CategoricalParameterRange = Shapes::StructureShape.new(name: 'CategoricalParameterRange')
    CategoricalParameterRangeSpecification = Shapes::StructureShape.new(name: 'CategoricalParameterRangeSpecification')
    CategoricalParameterRangeValues = Shapes::ListShape.new(name: 'CategoricalParameterRangeValues')
    CategoricalParameterRanges = Shapes::ListShape.new(name: 'CategoricalParameterRanges')
    CategoricalParameters = Shapes::ListShape.new(name: 'CategoricalParameters')
    Cents = Shapes::IntegerShape.new(name: 'Cents')
    CertifyForMarketplace = Shapes::BooleanShape.new(name: 'CertifyForMarketplace')
    Channel = Shapes::StructureShape.new(name: 'Channel')
    ChannelName = Shapes::StringShape.new(name: 'ChannelName')
    ChannelSpecification = Shapes::StructureShape.new(name: 'ChannelSpecification')
    ChannelSpecifications = Shapes::ListShape.new(name: 'ChannelSpecifications')
    CheckpointConfig = Shapes::StructureShape.new(name: 'CheckpointConfig')
    Cidr = Shapes::StringShape.new(name: 'Cidr')
    Cidrs = Shapes::ListShape.new(name: 'Cidrs')
    ClarifyCheckStepMetadata = Shapes::StructureShape.new(name: 'ClarifyCheckStepMetadata')
    ClientId = Shapes::StringShape.new(name: 'ClientId')
    ClientSecret = Shapes::StringShape.new(name: 'ClientSecret')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CodeRepositoryArn = Shapes::StringShape.new(name: 'CodeRepositoryArn')
    CodeRepositoryContains = Shapes::StringShape.new(name: 'CodeRepositoryContains')
    CodeRepositoryNameContains = Shapes::StringShape.new(name: 'CodeRepositoryNameContains')
    CodeRepositoryNameOrUrl = Shapes::StringShape.new(name: 'CodeRepositoryNameOrUrl')
    CodeRepositorySortBy = Shapes::StringShape.new(name: 'CodeRepositorySortBy')
    CodeRepositorySortOrder = Shapes::StringShape.new(name: 'CodeRepositorySortOrder')
    CodeRepositorySummary = Shapes::StructureShape.new(name: 'CodeRepositorySummary')
    CodeRepositorySummaryList = Shapes::ListShape.new(name: 'CodeRepositorySummaryList')
    CognitoConfig = Shapes::StructureShape.new(name: 'CognitoConfig')
    CognitoMemberDefinition = Shapes::StructureShape.new(name: 'CognitoMemberDefinition')
    CognitoUserGroup = Shapes::StringShape.new(name: 'CognitoUserGroup')
    CognitoUserPool = Shapes::StringShape.new(name: 'CognitoUserPool')
    CollectionConfiguration = Shapes::StructureShape.new(name: 'CollectionConfiguration')
    CollectionConfigurations = Shapes::ListShape.new(name: 'CollectionConfigurations')
    CollectionName = Shapes::StringShape.new(name: 'CollectionName')
    CollectionParameters = Shapes::MapShape.new(name: 'CollectionParameters')
    CompilationJobArn = Shapes::StringShape.new(name: 'CompilationJobArn')
    CompilationJobStatus = Shapes::StringShape.new(name: 'CompilationJobStatus')
    CompilationJobSummaries = Shapes::ListShape.new(name: 'CompilationJobSummaries')
    CompilationJobSummary = Shapes::StructureShape.new(name: 'CompilationJobSummary')
    CompilerOptions = Shapes::StringShape.new(name: 'CompilerOptions')
    CompressionType = Shapes::StringShape.new(name: 'CompressionType')
    CompressionTypes = Shapes::ListShape.new(name: 'CompressionTypes')
    ConditionOutcome = Shapes::StringShape.new(name: 'ConditionOutcome')
    ConditionStepMetadata = Shapes::StructureShape.new(name: 'ConditionStepMetadata')
    ConfigKey = Shapes::StringShape.new(name: 'ConfigKey')
    ConfigValue = Shapes::StringShape.new(name: 'ConfigValue')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContainerArgument = Shapes::StringShape.new(name: 'ContainerArgument')
    ContainerArguments = Shapes::ListShape.new(name: 'ContainerArguments')
    ContainerDefinition = Shapes::StructureShape.new(name: 'ContainerDefinition')
    ContainerDefinitionList = Shapes::ListShape.new(name: 'ContainerDefinitionList')
    ContainerEntrypoint = Shapes::ListShape.new(name: 'ContainerEntrypoint')
    ContainerEntrypointString = Shapes::StringShape.new(name: 'ContainerEntrypointString')
    ContainerHostname = Shapes::StringShape.new(name: 'ContainerHostname')
    ContainerImage = Shapes::StringShape.new(name: 'ContainerImage')
    ContainerMode = Shapes::StringShape.new(name: 'ContainerMode')
    ContentClassifier = Shapes::StringShape.new(name: 'ContentClassifier')
    ContentClassifiers = Shapes::ListShape.new(name: 'ContentClassifiers')
    ContentDigest = Shapes::StringShape.new(name: 'ContentDigest')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    ContentTypes = Shapes::ListShape.new(name: 'ContentTypes')
    ContextArn = Shapes::StringShape.new(name: 'ContextArn')
    ContextSource = Shapes::StructureShape.new(name: 'ContextSource')
    ContextSummaries = Shapes::ListShape.new(name: 'ContextSummaries')
    ContextSummary = Shapes::StructureShape.new(name: 'ContextSummary')
    ContinuousParameterRange = Shapes::StructureShape.new(name: 'ContinuousParameterRange')
    ContinuousParameterRangeSpecification = Shapes::StructureShape.new(name: 'ContinuousParameterRangeSpecification')
    ContinuousParameterRanges = Shapes::ListShape.new(name: 'ContinuousParameterRanges')
    CreateActionRequest = Shapes::StructureShape.new(name: 'CreateActionRequest')
    CreateActionResponse = Shapes::StructureShape.new(name: 'CreateActionResponse')
    CreateAlgorithmInput = Shapes::StructureShape.new(name: 'CreateAlgorithmInput')
    CreateAlgorithmOutput = Shapes::StructureShape.new(name: 'CreateAlgorithmOutput')
    CreateAppImageConfigRequest = Shapes::StructureShape.new(name: 'CreateAppImageConfigRequest')
    CreateAppImageConfigResponse = Shapes::StructureShape.new(name: 'CreateAppImageConfigResponse')
    CreateAppRequest = Shapes::StructureShape.new(name: 'CreateAppRequest')
    CreateAppResponse = Shapes::StructureShape.new(name: 'CreateAppResponse')
    CreateArtifactRequest = Shapes::StructureShape.new(name: 'CreateArtifactRequest')
    CreateArtifactResponse = Shapes::StructureShape.new(name: 'CreateArtifactResponse')
    CreateAutoMLJobRequest = Shapes::StructureShape.new(name: 'CreateAutoMLJobRequest')
    CreateAutoMLJobResponse = Shapes::StructureShape.new(name: 'CreateAutoMLJobResponse')
    CreateCodeRepositoryInput = Shapes::StructureShape.new(name: 'CreateCodeRepositoryInput')
    CreateCodeRepositoryOutput = Shapes::StructureShape.new(name: 'CreateCodeRepositoryOutput')
    CreateCompilationJobRequest = Shapes::StructureShape.new(name: 'CreateCompilationJobRequest')
    CreateCompilationJobResponse = Shapes::StructureShape.new(name: 'CreateCompilationJobResponse')
    CreateContextRequest = Shapes::StructureShape.new(name: 'CreateContextRequest')
    CreateContextResponse = Shapes::StructureShape.new(name: 'CreateContextResponse')
    CreateDataQualityJobDefinitionRequest = Shapes::StructureShape.new(name: 'CreateDataQualityJobDefinitionRequest')
    CreateDataQualityJobDefinitionResponse = Shapes::StructureShape.new(name: 'CreateDataQualityJobDefinitionResponse')
    CreateDeviceFleetRequest = Shapes::StructureShape.new(name: 'CreateDeviceFleetRequest')
    CreateDomainRequest = Shapes::StructureShape.new(name: 'CreateDomainRequest')
    CreateDomainResponse = Shapes::StructureShape.new(name: 'CreateDomainResponse')
    CreateEdgePackagingJobRequest = Shapes::StructureShape.new(name: 'CreateEdgePackagingJobRequest')
    CreateEndpointConfigInput = Shapes::StructureShape.new(name: 'CreateEndpointConfigInput')
    CreateEndpointConfigOutput = Shapes::StructureShape.new(name: 'CreateEndpointConfigOutput')
    CreateEndpointInput = Shapes::StructureShape.new(name: 'CreateEndpointInput')
    CreateEndpointOutput = Shapes::StructureShape.new(name: 'CreateEndpointOutput')
    CreateExperimentRequest = Shapes::StructureShape.new(name: 'CreateExperimentRequest')
    CreateExperimentResponse = Shapes::StructureShape.new(name: 'CreateExperimentResponse')
    CreateFeatureGroupRequest = Shapes::StructureShape.new(name: 'CreateFeatureGroupRequest')
    CreateFeatureGroupResponse = Shapes::StructureShape.new(name: 'CreateFeatureGroupResponse')
    CreateFlowDefinitionRequest = Shapes::StructureShape.new(name: 'CreateFlowDefinitionRequest')
    CreateFlowDefinitionResponse = Shapes::StructureShape.new(name: 'CreateFlowDefinitionResponse')
    CreateHumanTaskUiRequest = Shapes::StructureShape.new(name: 'CreateHumanTaskUiRequest')
    CreateHumanTaskUiResponse = Shapes::StructureShape.new(name: 'CreateHumanTaskUiResponse')
    CreateHyperParameterTuningJobRequest = Shapes::StructureShape.new(name: 'CreateHyperParameterTuningJobRequest')
    CreateHyperParameterTuningJobResponse = Shapes::StructureShape.new(name: 'CreateHyperParameterTuningJobResponse')
    CreateImageRequest = Shapes::StructureShape.new(name: 'CreateImageRequest')
    CreateImageResponse = Shapes::StructureShape.new(name: 'CreateImageResponse')
    CreateImageVersionRequest = Shapes::StructureShape.new(name: 'CreateImageVersionRequest')
    CreateImageVersionResponse = Shapes::StructureShape.new(name: 'CreateImageVersionResponse')
    CreateInferenceRecommendationsJobRequest = Shapes::StructureShape.new(name: 'CreateInferenceRecommendationsJobRequest')
    CreateInferenceRecommendationsJobResponse = Shapes::StructureShape.new(name: 'CreateInferenceRecommendationsJobResponse')
    CreateLabelingJobRequest = Shapes::StructureShape.new(name: 'CreateLabelingJobRequest')
    CreateLabelingJobResponse = Shapes::StructureShape.new(name: 'CreateLabelingJobResponse')
    CreateModelBiasJobDefinitionRequest = Shapes::StructureShape.new(name: 'CreateModelBiasJobDefinitionRequest')
    CreateModelBiasJobDefinitionResponse = Shapes::StructureShape.new(name: 'CreateModelBiasJobDefinitionResponse')
    CreateModelExplainabilityJobDefinitionRequest = Shapes::StructureShape.new(name: 'CreateModelExplainabilityJobDefinitionRequest')
    CreateModelExplainabilityJobDefinitionResponse = Shapes::StructureShape.new(name: 'CreateModelExplainabilityJobDefinitionResponse')
    CreateModelInput = Shapes::StructureShape.new(name: 'CreateModelInput')
    CreateModelOutput = Shapes::StructureShape.new(name: 'CreateModelOutput')
    CreateModelPackageGroupInput = Shapes::StructureShape.new(name: 'CreateModelPackageGroupInput')
    CreateModelPackageGroupOutput = Shapes::StructureShape.new(name: 'CreateModelPackageGroupOutput')
    CreateModelPackageInput = Shapes::StructureShape.new(name: 'CreateModelPackageInput')
    CreateModelPackageOutput = Shapes::StructureShape.new(name: 'CreateModelPackageOutput')
    CreateModelQualityJobDefinitionRequest = Shapes::StructureShape.new(name: 'CreateModelQualityJobDefinitionRequest')
    CreateModelQualityJobDefinitionResponse = Shapes::StructureShape.new(name: 'CreateModelQualityJobDefinitionResponse')
    CreateMonitoringScheduleRequest = Shapes::StructureShape.new(name: 'CreateMonitoringScheduleRequest')
    CreateMonitoringScheduleResponse = Shapes::StructureShape.new(name: 'CreateMonitoringScheduleResponse')
    CreateNotebookInstanceInput = Shapes::StructureShape.new(name: 'CreateNotebookInstanceInput')
    CreateNotebookInstanceLifecycleConfigInput = Shapes::StructureShape.new(name: 'CreateNotebookInstanceLifecycleConfigInput')
    CreateNotebookInstanceLifecycleConfigOutput = Shapes::StructureShape.new(name: 'CreateNotebookInstanceLifecycleConfigOutput')
    CreateNotebookInstanceOutput = Shapes::StructureShape.new(name: 'CreateNotebookInstanceOutput')
    CreatePipelineRequest = Shapes::StructureShape.new(name: 'CreatePipelineRequest')
    CreatePipelineResponse = Shapes::StructureShape.new(name: 'CreatePipelineResponse')
    CreatePresignedDomainUrlRequest = Shapes::StructureShape.new(name: 'CreatePresignedDomainUrlRequest')
    CreatePresignedDomainUrlResponse = Shapes::StructureShape.new(name: 'CreatePresignedDomainUrlResponse')
    CreatePresignedNotebookInstanceUrlInput = Shapes::StructureShape.new(name: 'CreatePresignedNotebookInstanceUrlInput')
    CreatePresignedNotebookInstanceUrlOutput = Shapes::StructureShape.new(name: 'CreatePresignedNotebookInstanceUrlOutput')
    CreateProcessingJobRequest = Shapes::StructureShape.new(name: 'CreateProcessingJobRequest')
    CreateProcessingJobResponse = Shapes::StructureShape.new(name: 'CreateProcessingJobResponse')
    CreateProjectInput = Shapes::StructureShape.new(name: 'CreateProjectInput')
    CreateProjectOutput = Shapes::StructureShape.new(name: 'CreateProjectOutput')
    CreateStudioLifecycleConfigRequest = Shapes::StructureShape.new(name: 'CreateStudioLifecycleConfigRequest')
    CreateStudioLifecycleConfigResponse = Shapes::StructureShape.new(name: 'CreateStudioLifecycleConfigResponse')
    CreateTrainingJobRequest = Shapes::StructureShape.new(name: 'CreateTrainingJobRequest')
    CreateTrainingJobResponse = Shapes::StructureShape.new(name: 'CreateTrainingJobResponse')
    CreateTransformJobRequest = Shapes::StructureShape.new(name: 'CreateTransformJobRequest')
    CreateTransformJobResponse = Shapes::StructureShape.new(name: 'CreateTransformJobResponse')
    CreateTrialComponentRequest = Shapes::StructureShape.new(name: 'CreateTrialComponentRequest')
    CreateTrialComponentResponse = Shapes::StructureShape.new(name: 'CreateTrialComponentResponse')
    CreateTrialRequest = Shapes::StructureShape.new(name: 'CreateTrialRequest')
    CreateTrialResponse = Shapes::StructureShape.new(name: 'CreateTrialResponse')
    CreateUserProfileRequest = Shapes::StructureShape.new(name: 'CreateUserProfileRequest')
    CreateUserProfileResponse = Shapes::StructureShape.new(name: 'CreateUserProfileResponse')
    CreateWorkforceRequest = Shapes::StructureShape.new(name: 'CreateWorkforceRequest')
    CreateWorkforceResponse = Shapes::StructureShape.new(name: 'CreateWorkforceResponse')
    CreateWorkteamRequest = Shapes::StructureShape.new(name: 'CreateWorkteamRequest')
    CreateWorkteamResponse = Shapes::StructureShape.new(name: 'CreateWorkteamResponse')
    CreationTime = Shapes::TimestampShape.new(name: 'CreationTime')
    CsvContentType = Shapes::StringShape.new(name: 'CsvContentType')
    CsvContentTypes = Shapes::ListShape.new(name: 'CsvContentTypes')
    CustomImage = Shapes::StructureShape.new(name: 'CustomImage')
    CustomImages = Shapes::ListShape.new(name: 'CustomImages')
    CustomerMetadataKey = Shapes::StringShape.new(name: 'CustomerMetadataKey')
    CustomerMetadataKeyList = Shapes::ListShape.new(name: 'CustomerMetadataKeyList')
    CustomerMetadataMap = Shapes::MapShape.new(name: 'CustomerMetadataMap')
    CustomerMetadataValue = Shapes::StringShape.new(name: 'CustomerMetadataValue')
    DataCaptureConfig = Shapes::StructureShape.new(name: 'DataCaptureConfig')
    DataCaptureConfigSummary = Shapes::StructureShape.new(name: 'DataCaptureConfigSummary')
    DataCatalogConfig = Shapes::StructureShape.new(name: 'DataCatalogConfig')
    DataDistributionType = Shapes::StringShape.new(name: 'DataDistributionType')
    DataExplorationNotebookLocation = Shapes::StringShape.new(name: 'DataExplorationNotebookLocation')
    DataInputConfig = Shapes::StringShape.new(name: 'DataInputConfig')
    DataProcessing = Shapes::StructureShape.new(name: 'DataProcessing')
    DataQualityAppSpecification = Shapes::StructureShape.new(name: 'DataQualityAppSpecification')
    DataQualityBaselineConfig = Shapes::StructureShape.new(name: 'DataQualityBaselineConfig')
    DataQualityJobInput = Shapes::StructureShape.new(name: 'DataQualityJobInput')
    DataSource = Shapes::StructureShape.new(name: 'DataSource')
    Database = Shapes::StringShape.new(name: 'Database')
    DatasetDefinition = Shapes::StructureShape.new(name: 'DatasetDefinition')
    DebugHookConfig = Shapes::StructureShape.new(name: 'DebugHookConfig')
    DebugRuleConfiguration = Shapes::StructureShape.new(name: 'DebugRuleConfiguration')
    DebugRuleConfigurations = Shapes::ListShape.new(name: 'DebugRuleConfigurations')
    DebugRuleEvaluationStatus = Shapes::StructureShape.new(name: 'DebugRuleEvaluationStatus')
    DebugRuleEvaluationStatuses = Shapes::ListShape.new(name: 'DebugRuleEvaluationStatuses')
    DefaultGid = Shapes::IntegerShape.new(name: 'DefaultGid')
    DefaultUid = Shapes::IntegerShape.new(name: 'DefaultUid')
    DeleteActionRequest = Shapes::StructureShape.new(name: 'DeleteActionRequest')
    DeleteActionResponse = Shapes::StructureShape.new(name: 'DeleteActionResponse')
    DeleteAlgorithmInput = Shapes::StructureShape.new(name: 'DeleteAlgorithmInput')
    DeleteAppImageConfigRequest = Shapes::StructureShape.new(name: 'DeleteAppImageConfigRequest')
    DeleteAppRequest = Shapes::StructureShape.new(name: 'DeleteAppRequest')
    DeleteArtifactRequest = Shapes::StructureShape.new(name: 'DeleteArtifactRequest')
    DeleteArtifactResponse = Shapes::StructureShape.new(name: 'DeleteArtifactResponse')
    DeleteAssociationRequest = Shapes::StructureShape.new(name: 'DeleteAssociationRequest')
    DeleteAssociationResponse = Shapes::StructureShape.new(name: 'DeleteAssociationResponse')
    DeleteCodeRepositoryInput = Shapes::StructureShape.new(name: 'DeleteCodeRepositoryInput')
    DeleteContextRequest = Shapes::StructureShape.new(name: 'DeleteContextRequest')
    DeleteContextResponse = Shapes::StructureShape.new(name: 'DeleteContextResponse')
    DeleteDataQualityJobDefinitionRequest = Shapes::StructureShape.new(name: 'DeleteDataQualityJobDefinitionRequest')
    DeleteDeviceFleetRequest = Shapes::StructureShape.new(name: 'DeleteDeviceFleetRequest')
    DeleteDomainRequest = Shapes::StructureShape.new(name: 'DeleteDomainRequest')
    DeleteEndpointConfigInput = Shapes::StructureShape.new(name: 'DeleteEndpointConfigInput')
    DeleteEndpointInput = Shapes::StructureShape.new(name: 'DeleteEndpointInput')
    DeleteExperimentRequest = Shapes::StructureShape.new(name: 'DeleteExperimentRequest')
    DeleteExperimentResponse = Shapes::StructureShape.new(name: 'DeleteExperimentResponse')
    DeleteFeatureGroupRequest = Shapes::StructureShape.new(name: 'DeleteFeatureGroupRequest')
    DeleteFlowDefinitionRequest = Shapes::StructureShape.new(name: 'DeleteFlowDefinitionRequest')
    DeleteFlowDefinitionResponse = Shapes::StructureShape.new(name: 'DeleteFlowDefinitionResponse')
    DeleteHumanTaskUiRequest = Shapes::StructureShape.new(name: 'DeleteHumanTaskUiRequest')
    DeleteHumanTaskUiResponse = Shapes::StructureShape.new(name: 'DeleteHumanTaskUiResponse')
    DeleteImageRequest = Shapes::StructureShape.new(name: 'DeleteImageRequest')
    DeleteImageResponse = Shapes::StructureShape.new(name: 'DeleteImageResponse')
    DeleteImageVersionRequest = Shapes::StructureShape.new(name: 'DeleteImageVersionRequest')
    DeleteImageVersionResponse = Shapes::StructureShape.new(name: 'DeleteImageVersionResponse')
    DeleteModelBiasJobDefinitionRequest = Shapes::StructureShape.new(name: 'DeleteModelBiasJobDefinitionRequest')
    DeleteModelExplainabilityJobDefinitionRequest = Shapes::StructureShape.new(name: 'DeleteModelExplainabilityJobDefinitionRequest')
    DeleteModelInput = Shapes::StructureShape.new(name: 'DeleteModelInput')
    DeleteModelPackageGroupInput = Shapes::StructureShape.new(name: 'DeleteModelPackageGroupInput')
    DeleteModelPackageGroupPolicyInput = Shapes::StructureShape.new(name: 'DeleteModelPackageGroupPolicyInput')
    DeleteModelPackageInput = Shapes::StructureShape.new(name: 'DeleteModelPackageInput')
    DeleteModelQualityJobDefinitionRequest = Shapes::StructureShape.new(name: 'DeleteModelQualityJobDefinitionRequest')
    DeleteMonitoringScheduleRequest = Shapes::StructureShape.new(name: 'DeleteMonitoringScheduleRequest')
    DeleteNotebookInstanceInput = Shapes::StructureShape.new(name: 'DeleteNotebookInstanceInput')
    DeleteNotebookInstanceLifecycleConfigInput = Shapes::StructureShape.new(name: 'DeleteNotebookInstanceLifecycleConfigInput')
    DeletePipelineRequest = Shapes::StructureShape.new(name: 'DeletePipelineRequest')
    DeletePipelineResponse = Shapes::StructureShape.new(name: 'DeletePipelineResponse')
    DeleteProjectInput = Shapes::StructureShape.new(name: 'DeleteProjectInput')
    DeleteStudioLifecycleConfigRequest = Shapes::StructureShape.new(name: 'DeleteStudioLifecycleConfigRequest')
    DeleteTagsInput = Shapes::StructureShape.new(name: 'DeleteTagsInput')
    DeleteTagsOutput = Shapes::StructureShape.new(name: 'DeleteTagsOutput')
    DeleteTrialComponentRequest = Shapes::StructureShape.new(name: 'DeleteTrialComponentRequest')
    DeleteTrialComponentResponse = Shapes::StructureShape.new(name: 'DeleteTrialComponentResponse')
    DeleteTrialRequest = Shapes::StructureShape.new(name: 'DeleteTrialRequest')
    DeleteTrialResponse = Shapes::StructureShape.new(name: 'DeleteTrialResponse')
    DeleteUserProfileRequest = Shapes::StructureShape.new(name: 'DeleteUserProfileRequest')
    DeleteWorkforceRequest = Shapes::StructureShape.new(name: 'DeleteWorkforceRequest')
    DeleteWorkforceResponse = Shapes::StructureShape.new(name: 'DeleteWorkforceResponse')
    DeleteWorkteamRequest = Shapes::StructureShape.new(name: 'DeleteWorkteamRequest')
    DeleteWorkteamResponse = Shapes::StructureShape.new(name: 'DeleteWorkteamResponse')
    DeployedImage = Shapes::StructureShape.new(name: 'DeployedImage')
    DeployedImages = Shapes::ListShape.new(name: 'DeployedImages')
    DeploymentConfig = Shapes::StructureShape.new(name: 'DeploymentConfig')
    DeregisterDevicesRequest = Shapes::StructureShape.new(name: 'DeregisterDevicesRequest')
    DescribeActionRequest = Shapes::StructureShape.new(name: 'DescribeActionRequest')
    DescribeActionResponse = Shapes::StructureShape.new(name: 'DescribeActionResponse')
    DescribeAlgorithmInput = Shapes::StructureShape.new(name: 'DescribeAlgorithmInput')
    DescribeAlgorithmOutput = Shapes::StructureShape.new(name: 'DescribeAlgorithmOutput')
    DescribeAppImageConfigRequest = Shapes::StructureShape.new(name: 'DescribeAppImageConfigRequest')
    DescribeAppImageConfigResponse = Shapes::StructureShape.new(name: 'DescribeAppImageConfigResponse')
    DescribeAppRequest = Shapes::StructureShape.new(name: 'DescribeAppRequest')
    DescribeAppResponse = Shapes::StructureShape.new(name: 'DescribeAppResponse')
    DescribeArtifactRequest = Shapes::StructureShape.new(name: 'DescribeArtifactRequest')
    DescribeArtifactResponse = Shapes::StructureShape.new(name: 'DescribeArtifactResponse')
    DescribeAutoMLJobRequest = Shapes::StructureShape.new(name: 'DescribeAutoMLJobRequest')
    DescribeAutoMLJobResponse = Shapes::StructureShape.new(name: 'DescribeAutoMLJobResponse')
    DescribeCodeRepositoryInput = Shapes::StructureShape.new(name: 'DescribeCodeRepositoryInput')
    DescribeCodeRepositoryOutput = Shapes::StructureShape.new(name: 'DescribeCodeRepositoryOutput')
    DescribeCompilationJobRequest = Shapes::StructureShape.new(name: 'DescribeCompilationJobRequest')
    DescribeCompilationJobResponse = Shapes::StructureShape.new(name: 'DescribeCompilationJobResponse')
    DescribeContextRequest = Shapes::StructureShape.new(name: 'DescribeContextRequest')
    DescribeContextResponse = Shapes::StructureShape.new(name: 'DescribeContextResponse')
    DescribeDataQualityJobDefinitionRequest = Shapes::StructureShape.new(name: 'DescribeDataQualityJobDefinitionRequest')
    DescribeDataQualityJobDefinitionResponse = Shapes::StructureShape.new(name: 'DescribeDataQualityJobDefinitionResponse')
    DescribeDeviceFleetRequest = Shapes::StructureShape.new(name: 'DescribeDeviceFleetRequest')
    DescribeDeviceFleetResponse = Shapes::StructureShape.new(name: 'DescribeDeviceFleetResponse')
    DescribeDeviceRequest = Shapes::StructureShape.new(name: 'DescribeDeviceRequest')
    DescribeDeviceResponse = Shapes::StructureShape.new(name: 'DescribeDeviceResponse')
    DescribeDomainRequest = Shapes::StructureShape.new(name: 'DescribeDomainRequest')
    DescribeDomainResponse = Shapes::StructureShape.new(name: 'DescribeDomainResponse')
    DescribeEdgePackagingJobRequest = Shapes::StructureShape.new(name: 'DescribeEdgePackagingJobRequest')
    DescribeEdgePackagingJobResponse = Shapes::StructureShape.new(name: 'DescribeEdgePackagingJobResponse')
    DescribeEndpointConfigInput = Shapes::StructureShape.new(name: 'DescribeEndpointConfigInput')
    DescribeEndpointConfigOutput = Shapes::StructureShape.new(name: 'DescribeEndpointConfigOutput')
    DescribeEndpointInput = Shapes::StructureShape.new(name: 'DescribeEndpointInput')
    DescribeEndpointOutput = Shapes::StructureShape.new(name: 'DescribeEndpointOutput')
    DescribeExperimentRequest = Shapes::StructureShape.new(name: 'DescribeExperimentRequest')
    DescribeExperimentResponse = Shapes::StructureShape.new(name: 'DescribeExperimentResponse')
    DescribeFeatureGroupRequest = Shapes::StructureShape.new(name: 'DescribeFeatureGroupRequest')
    DescribeFeatureGroupResponse = Shapes::StructureShape.new(name: 'DescribeFeatureGroupResponse')
    DescribeFlowDefinitionRequest = Shapes::StructureShape.new(name: 'DescribeFlowDefinitionRequest')
    DescribeFlowDefinitionResponse = Shapes::StructureShape.new(name: 'DescribeFlowDefinitionResponse')
    DescribeHumanTaskUiRequest = Shapes::StructureShape.new(name: 'DescribeHumanTaskUiRequest')
    DescribeHumanTaskUiResponse = Shapes::StructureShape.new(name: 'DescribeHumanTaskUiResponse')
    DescribeHyperParameterTuningJobRequest = Shapes::StructureShape.new(name: 'DescribeHyperParameterTuningJobRequest')
    DescribeHyperParameterTuningJobResponse = Shapes::StructureShape.new(name: 'DescribeHyperParameterTuningJobResponse')
    DescribeImageRequest = Shapes::StructureShape.new(name: 'DescribeImageRequest')
    DescribeImageResponse = Shapes::StructureShape.new(name: 'DescribeImageResponse')
    DescribeImageVersionRequest = Shapes::StructureShape.new(name: 'DescribeImageVersionRequest')
    DescribeImageVersionResponse = Shapes::StructureShape.new(name: 'DescribeImageVersionResponse')
    DescribeInferenceRecommendationsJobRequest = Shapes::StructureShape.new(name: 'DescribeInferenceRecommendationsJobRequest')
    DescribeInferenceRecommendationsJobResponse = Shapes::StructureShape.new(name: 'DescribeInferenceRecommendationsJobResponse')
    DescribeLabelingJobRequest = Shapes::StructureShape.new(name: 'DescribeLabelingJobRequest')
    DescribeLabelingJobResponse = Shapes::StructureShape.new(name: 'DescribeLabelingJobResponse')
    DescribeLineageGroupRequest = Shapes::StructureShape.new(name: 'DescribeLineageGroupRequest')
    DescribeLineageGroupResponse = Shapes::StructureShape.new(name: 'DescribeLineageGroupResponse')
    DescribeModelBiasJobDefinitionRequest = Shapes::StructureShape.new(name: 'DescribeModelBiasJobDefinitionRequest')
    DescribeModelBiasJobDefinitionResponse = Shapes::StructureShape.new(name: 'DescribeModelBiasJobDefinitionResponse')
    DescribeModelExplainabilityJobDefinitionRequest = Shapes::StructureShape.new(name: 'DescribeModelExplainabilityJobDefinitionRequest')
    DescribeModelExplainabilityJobDefinitionResponse = Shapes::StructureShape.new(name: 'DescribeModelExplainabilityJobDefinitionResponse')
    DescribeModelInput = Shapes::StructureShape.new(name: 'DescribeModelInput')
    DescribeModelOutput = Shapes::StructureShape.new(name: 'DescribeModelOutput')
    DescribeModelPackageGroupInput = Shapes::StructureShape.new(name: 'DescribeModelPackageGroupInput')
    DescribeModelPackageGroupOutput = Shapes::StructureShape.new(name: 'DescribeModelPackageGroupOutput')
    DescribeModelPackageInput = Shapes::StructureShape.new(name: 'DescribeModelPackageInput')
    DescribeModelPackageOutput = Shapes::StructureShape.new(name: 'DescribeModelPackageOutput')
    DescribeModelQualityJobDefinitionRequest = Shapes::StructureShape.new(name: 'DescribeModelQualityJobDefinitionRequest')
    DescribeModelQualityJobDefinitionResponse = Shapes::StructureShape.new(name: 'DescribeModelQualityJobDefinitionResponse')
    DescribeMonitoringScheduleRequest = Shapes::StructureShape.new(name: 'DescribeMonitoringScheduleRequest')
    DescribeMonitoringScheduleResponse = Shapes::StructureShape.new(name: 'DescribeMonitoringScheduleResponse')
    DescribeNotebookInstanceInput = Shapes::StructureShape.new(name: 'DescribeNotebookInstanceInput')
    DescribeNotebookInstanceLifecycleConfigInput = Shapes::StructureShape.new(name: 'DescribeNotebookInstanceLifecycleConfigInput')
    DescribeNotebookInstanceLifecycleConfigOutput = Shapes::StructureShape.new(name: 'DescribeNotebookInstanceLifecycleConfigOutput')
    DescribeNotebookInstanceOutput = Shapes::StructureShape.new(name: 'DescribeNotebookInstanceOutput')
    DescribePipelineDefinitionForExecutionRequest = Shapes::StructureShape.new(name: 'DescribePipelineDefinitionForExecutionRequest')
    DescribePipelineDefinitionForExecutionResponse = Shapes::StructureShape.new(name: 'DescribePipelineDefinitionForExecutionResponse')
    DescribePipelineExecutionRequest = Shapes::StructureShape.new(name: 'DescribePipelineExecutionRequest')
    DescribePipelineExecutionResponse = Shapes::StructureShape.new(name: 'DescribePipelineExecutionResponse')
    DescribePipelineRequest = Shapes::StructureShape.new(name: 'DescribePipelineRequest')
    DescribePipelineResponse = Shapes::StructureShape.new(name: 'DescribePipelineResponse')
    DescribeProcessingJobRequest = Shapes::StructureShape.new(name: 'DescribeProcessingJobRequest')
    DescribeProcessingJobResponse = Shapes::StructureShape.new(name: 'DescribeProcessingJobResponse')
    DescribeProjectInput = Shapes::StructureShape.new(name: 'DescribeProjectInput')
    DescribeProjectOutput = Shapes::StructureShape.new(name: 'DescribeProjectOutput')
    DescribeStudioLifecycleConfigRequest = Shapes::StructureShape.new(name: 'DescribeStudioLifecycleConfigRequest')
    DescribeStudioLifecycleConfigResponse = Shapes::StructureShape.new(name: 'DescribeStudioLifecycleConfigResponse')
    DescribeSubscribedWorkteamRequest = Shapes::StructureShape.new(name: 'DescribeSubscribedWorkteamRequest')
    DescribeSubscribedWorkteamResponse = Shapes::StructureShape.new(name: 'DescribeSubscribedWorkteamResponse')
    DescribeTrainingJobRequest = Shapes::StructureShape.new(name: 'DescribeTrainingJobRequest')
    DescribeTrainingJobResponse = Shapes::StructureShape.new(name: 'DescribeTrainingJobResponse')
    DescribeTransformJobRequest = Shapes::StructureShape.new(name: 'DescribeTransformJobRequest')
    DescribeTransformJobResponse = Shapes::StructureShape.new(name: 'DescribeTransformJobResponse')
    DescribeTrialComponentRequest = Shapes::StructureShape.new(name: 'DescribeTrialComponentRequest')
    DescribeTrialComponentResponse = Shapes::StructureShape.new(name: 'DescribeTrialComponentResponse')
    DescribeTrialRequest = Shapes::StructureShape.new(name: 'DescribeTrialRequest')
    DescribeTrialResponse = Shapes::StructureShape.new(name: 'DescribeTrialResponse')
    DescribeUserProfileRequest = Shapes::StructureShape.new(name: 'DescribeUserProfileRequest')
    DescribeUserProfileResponse = Shapes::StructureShape.new(name: 'DescribeUserProfileResponse')
    DescribeWorkforceRequest = Shapes::StructureShape.new(name: 'DescribeWorkforceRequest')
    DescribeWorkforceResponse = Shapes::StructureShape.new(name: 'DescribeWorkforceResponse')
    DescribeWorkteamRequest = Shapes::StructureShape.new(name: 'DescribeWorkteamRequest')
    DescribeWorkteamResponse = Shapes::StructureShape.new(name: 'DescribeWorkteamResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DesiredWeightAndCapacity = Shapes::StructureShape.new(name: 'DesiredWeightAndCapacity')
    DesiredWeightAndCapacityList = Shapes::ListShape.new(name: 'DesiredWeightAndCapacityList')
    DestinationS3Uri = Shapes::StringShape.new(name: 'DestinationS3Uri')
    DetailedAlgorithmStatus = Shapes::StringShape.new(name: 'DetailedAlgorithmStatus')
    DetailedModelPackageStatus = Shapes::StringShape.new(name: 'DetailedModelPackageStatus')
    Device = Shapes::StructureShape.new(name: 'Device')
    DeviceArn = Shapes::StringShape.new(name: 'DeviceArn')
    DeviceDescription = Shapes::StringShape.new(name: 'DeviceDescription')
    DeviceFleetArn = Shapes::StringShape.new(name: 'DeviceFleetArn')
    DeviceFleetDescription = Shapes::StringShape.new(name: 'DeviceFleetDescription')
    DeviceFleetSummaries = Shapes::ListShape.new(name: 'DeviceFleetSummaries')
    DeviceFleetSummary = Shapes::StructureShape.new(name: 'DeviceFleetSummary')
    DeviceName = Shapes::StringShape.new(name: 'DeviceName')
    DeviceNames = Shapes::ListShape.new(name: 'DeviceNames')
    DeviceStats = Shapes::StructureShape.new(name: 'DeviceStats')
    DeviceSummaries = Shapes::ListShape.new(name: 'DeviceSummaries')
    DeviceSummary = Shapes::StructureShape.new(name: 'DeviceSummary')
    Devices = Shapes::ListShape.new(name: 'Devices')
    DirectInternetAccess = Shapes::StringShape.new(name: 'DirectInternetAccess')
    Direction = Shapes::StringShape.new(name: 'Direction')
    DirectoryPath = Shapes::StringShape.new(name: 'DirectoryPath')
    DisableProfiler = Shapes::BooleanShape.new(name: 'DisableProfiler')
    DisableSagemakerServicecatalogPortfolioInput = Shapes::StructureShape.new(name: 'DisableSagemakerServicecatalogPortfolioInput')
    DisableSagemakerServicecatalogPortfolioOutput = Shapes::StructureShape.new(name: 'DisableSagemakerServicecatalogPortfolioOutput')
    DisassociateAdditionalCodeRepositories = Shapes::BooleanShape.new(name: 'DisassociateAdditionalCodeRepositories')
    DisassociateDefaultCodeRepository = Shapes::BooleanShape.new(name: 'DisassociateDefaultCodeRepository')
    DisassociateNotebookInstanceAcceleratorTypes = Shapes::BooleanShape.new(name: 'DisassociateNotebookInstanceAcceleratorTypes')
    DisassociateNotebookInstanceLifecycleConfig = Shapes::BooleanShape.new(name: 'DisassociateNotebookInstanceLifecycleConfig')
    DisassociateTrialComponentRequest = Shapes::StructureShape.new(name: 'DisassociateTrialComponentRequest')
    DisassociateTrialComponentResponse = Shapes::StructureShape.new(name: 'DisassociateTrialComponentResponse')
    Dollars = Shapes::IntegerShape.new(name: 'Dollars')
    DomainArn = Shapes::StringShape.new(name: 'DomainArn')
    DomainDetails = Shapes::StructureShape.new(name: 'DomainDetails')
    DomainId = Shapes::StringShape.new(name: 'DomainId')
    DomainList = Shapes::ListShape.new(name: 'DomainList')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    DomainSecurityGroupIds = Shapes::ListShape.new(name: 'DomainSecurityGroupIds')
    DomainSettings = Shapes::StructureShape.new(name: 'DomainSettings')
    DomainSettingsForUpdate = Shapes::StructureShape.new(name: 'DomainSettingsForUpdate')
    DomainStatus = Shapes::StringShape.new(name: 'DomainStatus')
    DoubleParameterValue = Shapes::FloatShape.new(name: 'DoubleParameterValue')
    DriftCheckBaselines = Shapes::StructureShape.new(name: 'DriftCheckBaselines')
    DriftCheckBias = Shapes::StructureShape.new(name: 'DriftCheckBias')
    DriftCheckExplainability = Shapes::StructureShape.new(name: 'DriftCheckExplainability')
    DriftCheckModelDataQuality = Shapes::StructureShape.new(name: 'DriftCheckModelDataQuality')
    DriftCheckModelQuality = Shapes::StructureShape.new(name: 'DriftCheckModelQuality')
    EMRStepMetadata = Shapes::StructureShape.new(name: 'EMRStepMetadata')
    Edge = Shapes::StructureShape.new(name: 'Edge')
    EdgeModel = Shapes::StructureShape.new(name: 'EdgeModel')
    EdgeModelStat = Shapes::StructureShape.new(name: 'EdgeModelStat')
    EdgeModelStats = Shapes::ListShape.new(name: 'EdgeModelStats')
    EdgeModelSummaries = Shapes::ListShape.new(name: 'EdgeModelSummaries')
    EdgeModelSummary = Shapes::StructureShape.new(name: 'EdgeModelSummary')
    EdgeModels = Shapes::ListShape.new(name: 'EdgeModels')
    EdgeOutputConfig = Shapes::StructureShape.new(name: 'EdgeOutputConfig')
    EdgePackagingJobArn = Shapes::StringShape.new(name: 'EdgePackagingJobArn')
    EdgePackagingJobStatus = Shapes::StringShape.new(name: 'EdgePackagingJobStatus')
    EdgePackagingJobSummaries = Shapes::ListShape.new(name: 'EdgePackagingJobSummaries')
    EdgePackagingJobSummary = Shapes::StructureShape.new(name: 'EdgePackagingJobSummary')
    EdgePresetDeploymentArtifact = Shapes::StringShape.new(name: 'EdgePresetDeploymentArtifact')
    EdgePresetDeploymentOutput = Shapes::StructureShape.new(name: 'EdgePresetDeploymentOutput')
    EdgePresetDeploymentStatus = Shapes::StringShape.new(name: 'EdgePresetDeploymentStatus')
    EdgePresetDeploymentType = Shapes::StringShape.new(name: 'EdgePresetDeploymentType')
    EdgeVersion = Shapes::StringShape.new(name: 'EdgeVersion')
    Edges = Shapes::ListShape.new(name: 'Edges')
    EfsUid = Shapes::StringShape.new(name: 'EfsUid')
    EnableCapture = Shapes::BooleanShape.new(name: 'EnableCapture')
    EnableIotRoleAlias = Shapes::BooleanShape.new(name: 'EnableIotRoleAlias')
    EnableSagemakerServicecatalogPortfolioInput = Shapes::StructureShape.new(name: 'EnableSagemakerServicecatalogPortfolioInput')
    EnableSagemakerServicecatalogPortfolioOutput = Shapes::StructureShape.new(name: 'EnableSagemakerServicecatalogPortfolioOutput')
    Endpoint = Shapes::StructureShape.new(name: 'Endpoint')
    EndpointArn = Shapes::StringShape.new(name: 'EndpointArn')
    EndpointConfigArn = Shapes::StringShape.new(name: 'EndpointConfigArn')
    EndpointConfigName = Shapes::StringShape.new(name: 'EndpointConfigName')
    EndpointConfigNameContains = Shapes::StringShape.new(name: 'EndpointConfigNameContains')
    EndpointConfigSortKey = Shapes::StringShape.new(name: 'EndpointConfigSortKey')
    EndpointConfigSummary = Shapes::StructureShape.new(name: 'EndpointConfigSummary')
    EndpointConfigSummaryList = Shapes::ListShape.new(name: 'EndpointConfigSummaryList')
    EndpointInput = Shapes::StructureShape.new(name: 'EndpointInput')
    EndpointInputConfiguration = Shapes::StructureShape.new(name: 'EndpointInputConfiguration')
    EndpointInputConfigurations = Shapes::ListShape.new(name: 'EndpointInputConfigurations')
    EndpointName = Shapes::StringShape.new(name: 'EndpointName')
    EndpointNameContains = Shapes::StringShape.new(name: 'EndpointNameContains')
    EndpointOutputConfiguration = Shapes::StructureShape.new(name: 'EndpointOutputConfiguration')
    EndpointSortKey = Shapes::StringShape.new(name: 'EndpointSortKey')
    EndpointStatus = Shapes::StringShape.new(name: 'EndpointStatus')
    EndpointSummary = Shapes::StructureShape.new(name: 'EndpointSummary')
    EndpointSummaryList = Shapes::ListShape.new(name: 'EndpointSummaryList')
    EntityDescription = Shapes::StringShape.new(name: 'EntityDescription')
    EntityName = Shapes::StringShape.new(name: 'EntityName')
    EnvironmentKey = Shapes::StringShape.new(name: 'EnvironmentKey')
    EnvironmentMap = Shapes::MapShape.new(name: 'EnvironmentMap')
    EnvironmentParameter = Shapes::StructureShape.new(name: 'EnvironmentParameter')
    EnvironmentParameterRanges = Shapes::StructureShape.new(name: 'EnvironmentParameterRanges')
    EnvironmentParameters = Shapes::ListShape.new(name: 'EnvironmentParameters')
    EnvironmentValue = Shapes::StringShape.new(name: 'EnvironmentValue')
    ExecutionStatus = Shapes::StringShape.new(name: 'ExecutionStatus')
    ExitMessage = Shapes::StringShape.new(name: 'ExitMessage')
    Experiment = Shapes::StructureShape.new(name: 'Experiment')
    ExperimentArn = Shapes::StringShape.new(name: 'ExperimentArn')
    ExperimentConfig = Shapes::StructureShape.new(name: 'ExperimentConfig')
    ExperimentDescription = Shapes::StringShape.new(name: 'ExperimentDescription')
    ExperimentEntityName = Shapes::StringShape.new(name: 'ExperimentEntityName')
    ExperimentEntityNameOrArn = Shapes::StringShape.new(name: 'ExperimentEntityNameOrArn')
    ExperimentSource = Shapes::StructureShape.new(name: 'ExperimentSource')
    ExperimentSourceArn = Shapes::StringShape.new(name: 'ExperimentSourceArn')
    ExperimentSummaries = Shapes::ListShape.new(name: 'ExperimentSummaries')
    ExperimentSummary = Shapes::StructureShape.new(name: 'ExperimentSummary')
    ExpiresInSeconds = Shapes::IntegerShape.new(name: 'ExpiresInSeconds')
    Explainability = Shapes::StructureShape.new(name: 'Explainability')
    ExplainabilityLocation = Shapes::StringShape.new(name: 'ExplainabilityLocation')
    FailStepMetadata = Shapes::StructureShape.new(name: 'FailStepMetadata')
    FailureReason = Shapes::StringShape.new(name: 'FailureReason')
    FeatureDefinition = Shapes::StructureShape.new(name: 'FeatureDefinition')
    FeatureDefinitions = Shapes::ListShape.new(name: 'FeatureDefinitions')
    FeatureGroup = Shapes::StructureShape.new(name: 'FeatureGroup')
    FeatureGroupArn = Shapes::StringShape.new(name: 'FeatureGroupArn')
    FeatureGroupMaxResults = Shapes::IntegerShape.new(name: 'FeatureGroupMaxResults')
    FeatureGroupName = Shapes::StringShape.new(name: 'FeatureGroupName')
    FeatureGroupNameContains = Shapes::StringShape.new(name: 'FeatureGroupNameContains')
    FeatureGroupSortBy = Shapes::StringShape.new(name: 'FeatureGroupSortBy')
    FeatureGroupSortOrder = Shapes::StringShape.new(name: 'FeatureGroupSortOrder')
    FeatureGroupStatus = Shapes::StringShape.new(name: 'FeatureGroupStatus')
    FeatureGroupSummaries = Shapes::ListShape.new(name: 'FeatureGroupSummaries')
    FeatureGroupSummary = Shapes::StructureShape.new(name: 'FeatureGroupSummary')
    FeatureName = Shapes::StringShape.new(name: 'FeatureName')
    FeatureType = Shapes::StringShape.new(name: 'FeatureType')
    FileSource = Shapes::StructureShape.new(name: 'FileSource')
    FileSystemAccessMode = Shapes::StringShape.new(name: 'FileSystemAccessMode')
    FileSystemConfig = Shapes::StructureShape.new(name: 'FileSystemConfig')
    FileSystemDataSource = Shapes::StructureShape.new(name: 'FileSystemDataSource')
    FileSystemId = Shapes::StringShape.new(name: 'FileSystemId')
    FileSystemType = Shapes::StringShape.new(name: 'FileSystemType')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FinalAutoMLJobObjectiveMetric = Shapes::StructureShape.new(name: 'FinalAutoMLJobObjectiveMetric')
    FinalHyperParameterTuningJobObjectiveMetric = Shapes::StructureShape.new(name: 'FinalHyperParameterTuningJobObjectiveMetric')
    FinalMetricDataList = Shapes::ListShape.new(name: 'FinalMetricDataList')
    Float = Shapes::FloatShape.new(name: 'Float')
    FlowDefinitionArn = Shapes::StringShape.new(name: 'FlowDefinitionArn')
    FlowDefinitionName = Shapes::StringShape.new(name: 'FlowDefinitionName')
    FlowDefinitionOutputConfig = Shapes::StructureShape.new(name: 'FlowDefinitionOutputConfig')
    FlowDefinitionStatus = Shapes::StringShape.new(name: 'FlowDefinitionStatus')
    FlowDefinitionSummaries = Shapes::ListShape.new(name: 'FlowDefinitionSummaries')
    FlowDefinitionSummary = Shapes::StructureShape.new(name: 'FlowDefinitionSummary')
    FlowDefinitionTaskAvailabilityLifetimeInSeconds = Shapes::IntegerShape.new(name: 'FlowDefinitionTaskAvailabilityLifetimeInSeconds')
    FlowDefinitionTaskCount = Shapes::IntegerShape.new(name: 'FlowDefinitionTaskCount')
    FlowDefinitionTaskDescription = Shapes::StringShape.new(name: 'FlowDefinitionTaskDescription')
    FlowDefinitionTaskKeyword = Shapes::StringShape.new(name: 'FlowDefinitionTaskKeyword')
    FlowDefinitionTaskKeywords = Shapes::ListShape.new(name: 'FlowDefinitionTaskKeywords')
    FlowDefinitionTaskTimeLimitInSeconds = Shapes::IntegerShape.new(name: 'FlowDefinitionTaskTimeLimitInSeconds')
    FlowDefinitionTaskTitle = Shapes::StringShape.new(name: 'FlowDefinitionTaskTitle')
    Framework = Shapes::StringShape.new(name: 'Framework')
    FrameworkVersion = Shapes::StringShape.new(name: 'FrameworkVersion')
    GenerateCandidateDefinitionsOnly = Shapes::BooleanShape.new(name: 'GenerateCandidateDefinitionsOnly')
    GetDeviceFleetReportRequest = Shapes::StructureShape.new(name: 'GetDeviceFleetReportRequest')
    GetDeviceFleetReportResponse = Shapes::StructureShape.new(name: 'GetDeviceFleetReportResponse')
    GetLineageGroupPolicyRequest = Shapes::StructureShape.new(name: 'GetLineageGroupPolicyRequest')
    GetLineageGroupPolicyResponse = Shapes::StructureShape.new(name: 'GetLineageGroupPolicyResponse')
    GetModelPackageGroupPolicyInput = Shapes::StructureShape.new(name: 'GetModelPackageGroupPolicyInput')
    GetModelPackageGroupPolicyOutput = Shapes::StructureShape.new(name: 'GetModelPackageGroupPolicyOutput')
    GetSagemakerServicecatalogPortfolioStatusInput = Shapes::StructureShape.new(name: 'GetSagemakerServicecatalogPortfolioStatusInput')
    GetSagemakerServicecatalogPortfolioStatusOutput = Shapes::StructureShape.new(name: 'GetSagemakerServicecatalogPortfolioStatusOutput')
    GetSearchSuggestionsRequest = Shapes::StructureShape.new(name: 'GetSearchSuggestionsRequest')
    GetSearchSuggestionsResponse = Shapes::StructureShape.new(name: 'GetSearchSuggestionsResponse')
    GitConfig = Shapes::StructureShape.new(name: 'GitConfig')
    GitConfigForUpdate = Shapes::StructureShape.new(name: 'GitConfigForUpdate')
    GitConfigUrl = Shapes::StringShape.new(name: 'GitConfigUrl')
    Group = Shapes::StringShape.new(name: 'Group')
    Groups = Shapes::ListShape.new(name: 'Groups')
    HookParameters = Shapes::MapShape.new(name: 'HookParameters')
    HumanLoopActivationConditions = Shapes::StringShape.new(name: 'HumanLoopActivationConditions')
    HumanLoopActivationConditionsConfig = Shapes::StructureShape.new(name: 'HumanLoopActivationConditionsConfig')
    HumanLoopActivationConfig = Shapes::StructureShape.new(name: 'HumanLoopActivationConfig')
    HumanLoopConfig = Shapes::StructureShape.new(name: 'HumanLoopConfig')
    HumanLoopRequestSource = Shapes::StructureShape.new(name: 'HumanLoopRequestSource')
    HumanTaskConfig = Shapes::StructureShape.new(name: 'HumanTaskConfig')
    HumanTaskUiArn = Shapes::StringShape.new(name: 'HumanTaskUiArn')
    HumanTaskUiName = Shapes::StringShape.new(name: 'HumanTaskUiName')
    HumanTaskUiStatus = Shapes::StringShape.new(name: 'HumanTaskUiStatus')
    HumanTaskUiSummaries = Shapes::ListShape.new(name: 'HumanTaskUiSummaries')
    HumanTaskUiSummary = Shapes::StructureShape.new(name: 'HumanTaskUiSummary')
    HyperParameterAlgorithmSpecification = Shapes::StructureShape.new(name: 'HyperParameterAlgorithmSpecification')
    HyperParameterKey = Shapes::StringShape.new(name: 'HyperParameterKey')
    HyperParameterScalingType = Shapes::StringShape.new(name: 'HyperParameterScalingType')
    HyperParameterSpecification = Shapes::StructureShape.new(name: 'HyperParameterSpecification')
    HyperParameterSpecifications = Shapes::ListShape.new(name: 'HyperParameterSpecifications')
    HyperParameterTrainingJobDefinition = Shapes::StructureShape.new(name: 'HyperParameterTrainingJobDefinition')
    HyperParameterTrainingJobDefinitionName = Shapes::StringShape.new(name: 'HyperParameterTrainingJobDefinitionName')
    HyperParameterTrainingJobDefinitions = Shapes::ListShape.new(name: 'HyperParameterTrainingJobDefinitions')
    HyperParameterTrainingJobSummaries = Shapes::ListShape.new(name: 'HyperParameterTrainingJobSummaries')
    HyperParameterTrainingJobSummary = Shapes::StructureShape.new(name: 'HyperParameterTrainingJobSummary')
    HyperParameterTuningJobArn = Shapes::StringShape.new(name: 'HyperParameterTuningJobArn')
    HyperParameterTuningJobConfig = Shapes::StructureShape.new(name: 'HyperParameterTuningJobConfig')
    HyperParameterTuningJobName = Shapes::StringShape.new(name: 'HyperParameterTuningJobName')
    HyperParameterTuningJobObjective = Shapes::StructureShape.new(name: 'HyperParameterTuningJobObjective')
    HyperParameterTuningJobObjectiveType = Shapes::StringShape.new(name: 'HyperParameterTuningJobObjectiveType')
    HyperParameterTuningJobObjectives = Shapes::ListShape.new(name: 'HyperParameterTuningJobObjectives')
    HyperParameterTuningJobSortByOptions = Shapes::StringShape.new(name: 'HyperParameterTuningJobSortByOptions')
    HyperParameterTuningJobStatus = Shapes::StringShape.new(name: 'HyperParameterTuningJobStatus')
    HyperParameterTuningJobStrategyType = Shapes::StringShape.new(name: 'HyperParameterTuningJobStrategyType')
    HyperParameterTuningJobSummaries = Shapes::ListShape.new(name: 'HyperParameterTuningJobSummaries')
    HyperParameterTuningJobSummary = Shapes::StructureShape.new(name: 'HyperParameterTuningJobSummary')
    HyperParameterTuningJobWarmStartConfig = Shapes::StructureShape.new(name: 'HyperParameterTuningJobWarmStartConfig')
    HyperParameterTuningJobWarmStartType = Shapes::StringShape.new(name: 'HyperParameterTuningJobWarmStartType')
    HyperParameterValue = Shapes::StringShape.new(name: 'HyperParameterValue')
    HyperParameters = Shapes::MapShape.new(name: 'HyperParameters')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    Image = Shapes::StructureShape.new(name: 'Image')
    ImageArn = Shapes::StringShape.new(name: 'ImageArn')
    ImageBaseImage = Shapes::StringShape.new(name: 'ImageBaseImage')
    ImageConfig = Shapes::StructureShape.new(name: 'ImageConfig')
    ImageContainerImage = Shapes::StringShape.new(name: 'ImageContainerImage')
    ImageDeleteProperty = Shapes::StringShape.new(name: 'ImageDeleteProperty')
    ImageDeletePropertyList = Shapes::ListShape.new(name: 'ImageDeletePropertyList')
    ImageDescription = Shapes::StringShape.new(name: 'ImageDescription')
    ImageDigest = Shapes::StringShape.new(name: 'ImageDigest')
    ImageDisplayName = Shapes::StringShape.new(name: 'ImageDisplayName')
    ImageName = Shapes::StringShape.new(name: 'ImageName')
    ImageNameContains = Shapes::StringShape.new(name: 'ImageNameContains')
    ImageSortBy = Shapes::StringShape.new(name: 'ImageSortBy')
    ImageSortOrder = Shapes::StringShape.new(name: 'ImageSortOrder')
    ImageStatus = Shapes::StringShape.new(name: 'ImageStatus')
    ImageUri = Shapes::StringShape.new(name: 'ImageUri')
    ImageVersion = Shapes::StructureShape.new(name: 'ImageVersion')
    ImageVersionArn = Shapes::StringShape.new(name: 'ImageVersionArn')
    ImageVersionNumber = Shapes::IntegerShape.new(name: 'ImageVersionNumber')
    ImageVersionSortBy = Shapes::StringShape.new(name: 'ImageVersionSortBy')
    ImageVersionSortOrder = Shapes::StringShape.new(name: 'ImageVersionSortOrder')
    ImageVersionStatus = Shapes::StringShape.new(name: 'ImageVersionStatus')
    ImageVersions = Shapes::ListShape.new(name: 'ImageVersions')
    Images = Shapes::ListShape.new(name: 'Images')
    InferenceExecutionConfig = Shapes::StructureShape.new(name: 'InferenceExecutionConfig')
    InferenceExecutionMode = Shapes::StringShape.new(name: 'InferenceExecutionMode')
    InferenceImage = Shapes::StringShape.new(name: 'InferenceImage')
    InferenceRecommendation = Shapes::StructureShape.new(name: 'InferenceRecommendation')
    InferenceRecommendations = Shapes::ListShape.new(name: 'InferenceRecommendations')
    InferenceRecommendationsJob = Shapes::StructureShape.new(name: 'InferenceRecommendationsJob')
    InferenceRecommendationsJobs = Shapes::ListShape.new(name: 'InferenceRecommendationsJobs')
    InferenceSpecification = Shapes::StructureShape.new(name: 'InferenceSpecification')
    InferenceSpecificationName = Shapes::StringShape.new(name: 'InferenceSpecificationName')
    InitialNumberOfUsers = Shapes::IntegerShape.new(name: 'InitialNumberOfUsers')
    InitialTaskCount = Shapes::IntegerShape.new(name: 'InitialTaskCount')
    InputConfig = Shapes::StructureShape.new(name: 'InputConfig')
    InputDataConfig = Shapes::ListShape.new(name: 'InputDataConfig')
    InputMode = Shapes::StringShape.new(name: 'InputMode')
    InputModes = Shapes::ListShape.new(name: 'InputModes')
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerParameterRange = Shapes::StructureShape.new(name: 'IntegerParameterRange')
    IntegerParameterRangeSpecification = Shapes::StructureShape.new(name: 'IntegerParameterRangeSpecification')
    IntegerParameterRanges = Shapes::ListShape.new(name: 'IntegerParameterRanges')
    IntegerValue = Shapes::IntegerShape.new(name: 'IntegerValue')
    InvocationsMaxRetries = Shapes::IntegerShape.new(name: 'InvocationsMaxRetries')
    InvocationsTimeoutInSeconds = Shapes::IntegerShape.new(name: 'InvocationsTimeoutInSeconds')
    IotRoleAlias = Shapes::StringShape.new(name: 'IotRoleAlias')
    JobDurationInSeconds = Shapes::IntegerShape.new(name: 'JobDurationInSeconds')
    JobReferenceCode = Shapes::StringShape.new(name: 'JobReferenceCode')
    JobReferenceCodeContains = Shapes::StringShape.new(name: 'JobReferenceCodeContains')
    JoinSource = Shapes::StringShape.new(name: 'JoinSource')
    JsonContentType = Shapes::StringShape.new(name: 'JsonContentType')
    JsonContentTypes = Shapes::ListShape.new(name: 'JsonContentTypes')
    JsonPath = Shapes::StringShape.new(name: 'JsonPath')
    JupyterServerAppSettings = Shapes::StructureShape.new(name: 'JupyterServerAppSettings')
    KernelDisplayName = Shapes::StringShape.new(name: 'KernelDisplayName')
    KernelGatewayAppSettings = Shapes::StructureShape.new(name: 'KernelGatewayAppSettings')
    KernelGatewayImageConfig = Shapes::StructureShape.new(name: 'KernelGatewayImageConfig')
    KernelName = Shapes::StringShape.new(name: 'KernelName')
    KernelSpec = Shapes::StructureShape.new(name: 'KernelSpec')
    KernelSpecs = Shapes::ListShape.new(name: 'KernelSpecs')
    Key = Shapes::StringShape.new(name: 'Key')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    LabelAttributeName = Shapes::StringShape.new(name: 'LabelAttributeName')
    LabelCounter = Shapes::IntegerShape.new(name: 'LabelCounter')
    LabelCounters = Shapes::StructureShape.new(name: 'LabelCounters')
    LabelCountersForWorkteam = Shapes::StructureShape.new(name: 'LabelCountersForWorkteam')
    LabelingJobAlgorithmSpecificationArn = Shapes::StringShape.new(name: 'LabelingJobAlgorithmSpecificationArn')
    LabelingJobAlgorithmsConfig = Shapes::StructureShape.new(name: 'LabelingJobAlgorithmsConfig')
    LabelingJobArn = Shapes::StringShape.new(name: 'LabelingJobArn')
    LabelingJobDataAttributes = Shapes::StructureShape.new(name: 'LabelingJobDataAttributes')
    LabelingJobDataSource = Shapes::StructureShape.new(name: 'LabelingJobDataSource')
    LabelingJobForWorkteamSummary = Shapes::StructureShape.new(name: 'LabelingJobForWorkteamSummary')
    LabelingJobForWorkteamSummaryList = Shapes::ListShape.new(name: 'LabelingJobForWorkteamSummaryList')
    LabelingJobInputConfig = Shapes::StructureShape.new(name: 'LabelingJobInputConfig')
    LabelingJobName = Shapes::StringShape.new(name: 'LabelingJobName')
    LabelingJobOutput = Shapes::StructureShape.new(name: 'LabelingJobOutput')
    LabelingJobOutputConfig = Shapes::StructureShape.new(name: 'LabelingJobOutputConfig')
    LabelingJobResourceConfig = Shapes::StructureShape.new(name: 'LabelingJobResourceConfig')
    LabelingJobS3DataSource = Shapes::StructureShape.new(name: 'LabelingJobS3DataSource')
    LabelingJobSnsDataSource = Shapes::StructureShape.new(name: 'LabelingJobSnsDataSource')
    LabelingJobStatus = Shapes::StringShape.new(name: 'LabelingJobStatus')
    LabelingJobStoppingConditions = Shapes::StructureShape.new(name: 'LabelingJobStoppingConditions')
    LabelingJobSummary = Shapes::StructureShape.new(name: 'LabelingJobSummary')
    LabelingJobSummaryList = Shapes::ListShape.new(name: 'LabelingJobSummaryList')
    LambdaFunctionArn = Shapes::StringShape.new(name: 'LambdaFunctionArn')
    LambdaStepMetadata = Shapes::StructureShape.new(name: 'LambdaStepMetadata')
    LastModifiedTime = Shapes::TimestampShape.new(name: 'LastModifiedTime')
    LifecycleConfigArns = Shapes::ListShape.new(name: 'LifecycleConfigArns')
    LineageEntityParameters = Shapes::MapShape.new(name: 'LineageEntityParameters')
    LineageGroupArn = Shapes::StringShape.new(name: 'LineageGroupArn')
    LineageGroupNameOrArn = Shapes::StringShape.new(name: 'LineageGroupNameOrArn')
    LineageGroupSummaries = Shapes::ListShape.new(name: 'LineageGroupSummaries')
    LineageGroupSummary = Shapes::StructureShape.new(name: 'LineageGroupSummary')
    LineageType = Shapes::StringShape.new(name: 'LineageType')
    ListActionsRequest = Shapes::StructureShape.new(name: 'ListActionsRequest')
    ListActionsResponse = Shapes::StructureShape.new(name: 'ListActionsResponse')
    ListAlgorithmsInput = Shapes::StructureShape.new(name: 'ListAlgorithmsInput')
    ListAlgorithmsOutput = Shapes::StructureShape.new(name: 'ListAlgorithmsOutput')
    ListAppImageConfigsRequest = Shapes::StructureShape.new(name: 'ListAppImageConfigsRequest')
    ListAppImageConfigsResponse = Shapes::StructureShape.new(name: 'ListAppImageConfigsResponse')
    ListAppsRequest = Shapes::StructureShape.new(name: 'ListAppsRequest')
    ListAppsResponse = Shapes::StructureShape.new(name: 'ListAppsResponse')
    ListArtifactsRequest = Shapes::StructureShape.new(name: 'ListArtifactsRequest')
    ListArtifactsResponse = Shapes::StructureShape.new(name: 'ListArtifactsResponse')
    ListAssociationsRequest = Shapes::StructureShape.new(name: 'ListAssociationsRequest')
    ListAssociationsResponse = Shapes::StructureShape.new(name: 'ListAssociationsResponse')
    ListAutoMLJobsRequest = Shapes::StructureShape.new(name: 'ListAutoMLJobsRequest')
    ListAutoMLJobsResponse = Shapes::StructureShape.new(name: 'ListAutoMLJobsResponse')
    ListCandidatesForAutoMLJobRequest = Shapes::StructureShape.new(name: 'ListCandidatesForAutoMLJobRequest')
    ListCandidatesForAutoMLJobResponse = Shapes::StructureShape.new(name: 'ListCandidatesForAutoMLJobResponse')
    ListCodeRepositoriesInput = Shapes::StructureShape.new(name: 'ListCodeRepositoriesInput')
    ListCodeRepositoriesOutput = Shapes::StructureShape.new(name: 'ListCodeRepositoriesOutput')
    ListCompilationJobsRequest = Shapes::StructureShape.new(name: 'ListCompilationJobsRequest')
    ListCompilationJobsResponse = Shapes::StructureShape.new(name: 'ListCompilationJobsResponse')
    ListCompilationJobsSortBy = Shapes::StringShape.new(name: 'ListCompilationJobsSortBy')
    ListContextsRequest = Shapes::StructureShape.new(name: 'ListContextsRequest')
    ListContextsResponse = Shapes::StructureShape.new(name: 'ListContextsResponse')
    ListDataQualityJobDefinitionsRequest = Shapes::StructureShape.new(name: 'ListDataQualityJobDefinitionsRequest')
    ListDataQualityJobDefinitionsResponse = Shapes::StructureShape.new(name: 'ListDataQualityJobDefinitionsResponse')
    ListDeviceFleetsRequest = Shapes::StructureShape.new(name: 'ListDeviceFleetsRequest')
    ListDeviceFleetsResponse = Shapes::StructureShape.new(name: 'ListDeviceFleetsResponse')
    ListDeviceFleetsSortBy = Shapes::StringShape.new(name: 'ListDeviceFleetsSortBy')
    ListDevicesRequest = Shapes::StructureShape.new(name: 'ListDevicesRequest')
    ListDevicesResponse = Shapes::StructureShape.new(name: 'ListDevicesResponse')
    ListDomainsRequest = Shapes::StructureShape.new(name: 'ListDomainsRequest')
    ListDomainsResponse = Shapes::StructureShape.new(name: 'ListDomainsResponse')
    ListEdgePackagingJobsRequest = Shapes::StructureShape.new(name: 'ListEdgePackagingJobsRequest')
    ListEdgePackagingJobsResponse = Shapes::StructureShape.new(name: 'ListEdgePackagingJobsResponse')
    ListEdgePackagingJobsSortBy = Shapes::StringShape.new(name: 'ListEdgePackagingJobsSortBy')
    ListEndpointConfigsInput = Shapes::StructureShape.new(name: 'ListEndpointConfigsInput')
    ListEndpointConfigsOutput = Shapes::StructureShape.new(name: 'ListEndpointConfigsOutput')
    ListEndpointsInput = Shapes::StructureShape.new(name: 'ListEndpointsInput')
    ListEndpointsOutput = Shapes::StructureShape.new(name: 'ListEndpointsOutput')
    ListExperimentsRequest = Shapes::StructureShape.new(name: 'ListExperimentsRequest')
    ListExperimentsResponse = Shapes::StructureShape.new(name: 'ListExperimentsResponse')
    ListFeatureGroupsRequest = Shapes::StructureShape.new(name: 'ListFeatureGroupsRequest')
    ListFeatureGroupsResponse = Shapes::StructureShape.new(name: 'ListFeatureGroupsResponse')
    ListFlowDefinitionsRequest = Shapes::StructureShape.new(name: 'ListFlowDefinitionsRequest')
    ListFlowDefinitionsResponse = Shapes::StructureShape.new(name: 'ListFlowDefinitionsResponse')
    ListHumanTaskUisRequest = Shapes::StructureShape.new(name: 'ListHumanTaskUisRequest')
    ListHumanTaskUisResponse = Shapes::StructureShape.new(name: 'ListHumanTaskUisResponse')
    ListHyperParameterTuningJobsRequest = Shapes::StructureShape.new(name: 'ListHyperParameterTuningJobsRequest')
    ListHyperParameterTuningJobsResponse = Shapes::StructureShape.new(name: 'ListHyperParameterTuningJobsResponse')
    ListImageVersionsRequest = Shapes::StructureShape.new(name: 'ListImageVersionsRequest')
    ListImageVersionsResponse = Shapes::StructureShape.new(name: 'ListImageVersionsResponse')
    ListImagesRequest = Shapes::StructureShape.new(name: 'ListImagesRequest')
    ListImagesResponse = Shapes::StructureShape.new(name: 'ListImagesResponse')
    ListInferenceRecommendationsJobsRequest = Shapes::StructureShape.new(name: 'ListInferenceRecommendationsJobsRequest')
    ListInferenceRecommendationsJobsResponse = Shapes::StructureShape.new(name: 'ListInferenceRecommendationsJobsResponse')
    ListInferenceRecommendationsJobsSortBy = Shapes::StringShape.new(name: 'ListInferenceRecommendationsJobsSortBy')
    ListLabelingJobsForWorkteamRequest = Shapes::StructureShape.new(name: 'ListLabelingJobsForWorkteamRequest')
    ListLabelingJobsForWorkteamResponse = Shapes::StructureShape.new(name: 'ListLabelingJobsForWorkteamResponse')
    ListLabelingJobsForWorkteamSortByOptions = Shapes::StringShape.new(name: 'ListLabelingJobsForWorkteamSortByOptions')
    ListLabelingJobsRequest = Shapes::StructureShape.new(name: 'ListLabelingJobsRequest')
    ListLabelingJobsResponse = Shapes::StructureShape.new(name: 'ListLabelingJobsResponse')
    ListLineageEntityParameterKey = Shapes::ListShape.new(name: 'ListLineageEntityParameterKey')
    ListLineageGroupsRequest = Shapes::StructureShape.new(name: 'ListLineageGroupsRequest')
    ListLineageGroupsResponse = Shapes::StructureShape.new(name: 'ListLineageGroupsResponse')
    ListMaxResults = Shapes::IntegerShape.new(name: 'ListMaxResults')
    ListModelBiasJobDefinitionsRequest = Shapes::StructureShape.new(name: 'ListModelBiasJobDefinitionsRequest')
    ListModelBiasJobDefinitionsResponse = Shapes::StructureShape.new(name: 'ListModelBiasJobDefinitionsResponse')
    ListModelExplainabilityJobDefinitionsRequest = Shapes::StructureShape.new(name: 'ListModelExplainabilityJobDefinitionsRequest')
    ListModelExplainabilityJobDefinitionsResponse = Shapes::StructureShape.new(name: 'ListModelExplainabilityJobDefinitionsResponse')
    ListModelMetadataRequest = Shapes::StructureShape.new(name: 'ListModelMetadataRequest')
    ListModelMetadataResponse = Shapes::StructureShape.new(name: 'ListModelMetadataResponse')
    ListModelPackageGroupsInput = Shapes::StructureShape.new(name: 'ListModelPackageGroupsInput')
    ListModelPackageGroupsOutput = Shapes::StructureShape.new(name: 'ListModelPackageGroupsOutput')
    ListModelPackagesInput = Shapes::StructureShape.new(name: 'ListModelPackagesInput')
    ListModelPackagesOutput = Shapes::StructureShape.new(name: 'ListModelPackagesOutput')
    ListModelQualityJobDefinitionsRequest = Shapes::StructureShape.new(name: 'ListModelQualityJobDefinitionsRequest')
    ListModelQualityJobDefinitionsResponse = Shapes::StructureShape.new(name: 'ListModelQualityJobDefinitionsResponse')
    ListModelsInput = Shapes::StructureShape.new(name: 'ListModelsInput')
    ListModelsOutput = Shapes::StructureShape.new(name: 'ListModelsOutput')
    ListMonitoringExecutionsRequest = Shapes::StructureShape.new(name: 'ListMonitoringExecutionsRequest')
    ListMonitoringExecutionsResponse = Shapes::StructureShape.new(name: 'ListMonitoringExecutionsResponse')
    ListMonitoringSchedulesRequest = Shapes::StructureShape.new(name: 'ListMonitoringSchedulesRequest')
    ListMonitoringSchedulesResponse = Shapes::StructureShape.new(name: 'ListMonitoringSchedulesResponse')
    ListNotebookInstanceLifecycleConfigsInput = Shapes::StructureShape.new(name: 'ListNotebookInstanceLifecycleConfigsInput')
    ListNotebookInstanceLifecycleConfigsOutput = Shapes::StructureShape.new(name: 'ListNotebookInstanceLifecycleConfigsOutput')
    ListNotebookInstancesInput = Shapes::StructureShape.new(name: 'ListNotebookInstancesInput')
    ListNotebookInstancesOutput = Shapes::StructureShape.new(name: 'ListNotebookInstancesOutput')
    ListPipelineExecutionStepsRequest = Shapes::StructureShape.new(name: 'ListPipelineExecutionStepsRequest')
    ListPipelineExecutionStepsResponse = Shapes::StructureShape.new(name: 'ListPipelineExecutionStepsResponse')
    ListPipelineExecutionsRequest = Shapes::StructureShape.new(name: 'ListPipelineExecutionsRequest')
    ListPipelineExecutionsResponse = Shapes::StructureShape.new(name: 'ListPipelineExecutionsResponse')
    ListPipelineParametersForExecutionRequest = Shapes::StructureShape.new(name: 'ListPipelineParametersForExecutionRequest')
    ListPipelineParametersForExecutionResponse = Shapes::StructureShape.new(name: 'ListPipelineParametersForExecutionResponse')
    ListPipelinesRequest = Shapes::StructureShape.new(name: 'ListPipelinesRequest')
    ListPipelinesResponse = Shapes::StructureShape.new(name: 'ListPipelinesResponse')
    ListProcessingJobsRequest = Shapes::StructureShape.new(name: 'ListProcessingJobsRequest')
    ListProcessingJobsResponse = Shapes::StructureShape.new(name: 'ListProcessingJobsResponse')
    ListProjectsInput = Shapes::StructureShape.new(name: 'ListProjectsInput')
    ListProjectsOutput = Shapes::StructureShape.new(name: 'ListProjectsOutput')
    ListStudioLifecycleConfigsRequest = Shapes::StructureShape.new(name: 'ListStudioLifecycleConfigsRequest')
    ListStudioLifecycleConfigsResponse = Shapes::StructureShape.new(name: 'ListStudioLifecycleConfigsResponse')
    ListSubscribedWorkteamsRequest = Shapes::StructureShape.new(name: 'ListSubscribedWorkteamsRequest')
    ListSubscribedWorkteamsResponse = Shapes::StructureShape.new(name: 'ListSubscribedWorkteamsResponse')
    ListTagsInput = Shapes::StructureShape.new(name: 'ListTagsInput')
    ListTagsMaxResults = Shapes::IntegerShape.new(name: 'ListTagsMaxResults')
    ListTagsOutput = Shapes::StructureShape.new(name: 'ListTagsOutput')
    ListTrainingJobsForHyperParameterTuningJobRequest = Shapes::StructureShape.new(name: 'ListTrainingJobsForHyperParameterTuningJobRequest')
    ListTrainingJobsForHyperParameterTuningJobResponse = Shapes::StructureShape.new(name: 'ListTrainingJobsForHyperParameterTuningJobResponse')
    ListTrainingJobsRequest = Shapes::StructureShape.new(name: 'ListTrainingJobsRequest')
    ListTrainingJobsResponse = Shapes::StructureShape.new(name: 'ListTrainingJobsResponse')
    ListTransformJobsRequest = Shapes::StructureShape.new(name: 'ListTransformJobsRequest')
    ListTransformJobsResponse = Shapes::StructureShape.new(name: 'ListTransformJobsResponse')
    ListTrialComponentKey256 = Shapes::ListShape.new(name: 'ListTrialComponentKey256')
    ListTrialComponentsRequest = Shapes::StructureShape.new(name: 'ListTrialComponentsRequest')
    ListTrialComponentsResponse = Shapes::StructureShape.new(name: 'ListTrialComponentsResponse')
    ListTrialsRequest = Shapes::StructureShape.new(name: 'ListTrialsRequest')
    ListTrialsResponse = Shapes::StructureShape.new(name: 'ListTrialsResponse')
    ListUserProfilesRequest = Shapes::StructureShape.new(name: 'ListUserProfilesRequest')
    ListUserProfilesResponse = Shapes::StructureShape.new(name: 'ListUserProfilesResponse')
    ListWorkforcesRequest = Shapes::StructureShape.new(name: 'ListWorkforcesRequest')
    ListWorkforcesResponse = Shapes::StructureShape.new(name: 'ListWorkforcesResponse')
    ListWorkforcesSortByOptions = Shapes::StringShape.new(name: 'ListWorkforcesSortByOptions')
    ListWorkteamsRequest = Shapes::StructureShape.new(name: 'ListWorkteamsRequest')
    ListWorkteamsResponse = Shapes::StructureShape.new(name: 'ListWorkteamsResponse')
    ListWorkteamsSortByOptions = Shapes::StringShape.new(name: 'ListWorkteamsSortByOptions')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxAutoMLJobRuntimeInSeconds = Shapes::IntegerShape.new(name: 'MaxAutoMLJobRuntimeInSeconds')
    MaxCandidates = Shapes::IntegerShape.new(name: 'MaxCandidates')
    MaxConcurrentInvocationsPerInstance = Shapes::IntegerShape.new(name: 'MaxConcurrentInvocationsPerInstance')
    MaxConcurrentTaskCount = Shapes::IntegerShape.new(name: 'MaxConcurrentTaskCount')
    MaxConcurrentTransforms = Shapes::IntegerShape.new(name: 'MaxConcurrentTransforms')
    MaxHumanLabeledObjectCount = Shapes::IntegerShape.new(name: 'MaxHumanLabeledObjectCount')
    MaxNumberOfTests = Shapes::IntegerShape.new(name: 'MaxNumberOfTests')
    MaxNumberOfTrainingJobs = Shapes::IntegerShape.new(name: 'MaxNumberOfTrainingJobs')
    MaxParallelExecutionSteps = Shapes::IntegerShape.new(name: 'MaxParallelExecutionSteps')
    MaxParallelOfTests = Shapes::IntegerShape.new(name: 'MaxParallelOfTests')
    MaxParallelTrainingJobs = Shapes::IntegerShape.new(name: 'MaxParallelTrainingJobs')
    MaxPayloadInMB = Shapes::IntegerShape.new(name: 'MaxPayloadInMB')
    MaxPercentageOfInputDatasetLabeled = Shapes::IntegerShape.new(name: 'MaxPercentageOfInputDatasetLabeled')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxRuntimeInSeconds = Shapes::IntegerShape.new(name: 'MaxRuntimeInSeconds')
    MaxRuntimePerTrainingJobInSeconds = Shapes::IntegerShape.new(name: 'MaxRuntimePerTrainingJobInSeconds')
    MaxWaitTimeInSeconds = Shapes::IntegerShape.new(name: 'MaxWaitTimeInSeconds')
    MaximumExecutionTimeoutInSeconds = Shapes::IntegerShape.new(name: 'MaximumExecutionTimeoutInSeconds')
    MaximumRetryAttempts = Shapes::IntegerShape.new(name: 'MaximumRetryAttempts')
    MediaType = Shapes::StringShape.new(name: 'MediaType')
    MemberDefinition = Shapes::StructureShape.new(name: 'MemberDefinition')
    MemberDefinitions = Shapes::ListShape.new(name: 'MemberDefinitions')
    MetadataProperties = Shapes::StructureShape.new(name: 'MetadataProperties')
    MetadataPropertyValue = Shapes::StringShape.new(name: 'MetadataPropertyValue')
    MetricData = Shapes::StructureShape.new(name: 'MetricData')
    MetricDataList = Shapes::ListShape.new(name: 'MetricDataList')
    MetricDatum = Shapes::StructureShape.new(name: 'MetricDatum')
    MetricDefinition = Shapes::StructureShape.new(name: 'MetricDefinition')
    MetricDefinitionList = Shapes::ListShape.new(name: 'MetricDefinitionList')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    MetricRegex = Shapes::StringShape.new(name: 'MetricRegex')
    MetricSetSource = Shapes::StringShape.new(name: 'MetricSetSource')
    MetricValue = Shapes::FloatShape.new(name: 'MetricValue')
    MetricsSource = Shapes::StructureShape.new(name: 'MetricsSource')
    ModelApprovalStatus = Shapes::StringShape.new(name: 'ModelApprovalStatus')
    ModelArn = Shapes::StringShape.new(name: 'ModelArn')
    ModelArtifacts = Shapes::StructureShape.new(name: 'ModelArtifacts')
    ModelBiasAppSpecification = Shapes::StructureShape.new(name: 'ModelBiasAppSpecification')
    ModelBiasBaselineConfig = Shapes::StructureShape.new(name: 'ModelBiasBaselineConfig')
    ModelBiasJobInput = Shapes::StructureShape.new(name: 'ModelBiasJobInput')
    ModelCacheSetting = Shapes::StringShape.new(name: 'ModelCacheSetting')
    ModelClientConfig = Shapes::StructureShape.new(name: 'ModelClientConfig')
    ModelConfiguration = Shapes::StructureShape.new(name: 'ModelConfiguration')
    ModelDataQuality = Shapes::StructureShape.new(name: 'ModelDataQuality')
    ModelDeployConfig = Shapes::StructureShape.new(name: 'ModelDeployConfig')
    ModelDeployResult = Shapes::StructureShape.new(name: 'ModelDeployResult')
    ModelDigests = Shapes::StructureShape.new(name: 'ModelDigests')
    ModelExplainabilityAppSpecification = Shapes::StructureShape.new(name: 'ModelExplainabilityAppSpecification')
    ModelExplainabilityBaselineConfig = Shapes::StructureShape.new(name: 'ModelExplainabilityBaselineConfig')
    ModelExplainabilityJobInput = Shapes::StructureShape.new(name: 'ModelExplainabilityJobInput')
    ModelInput = Shapes::StructureShape.new(name: 'ModelInput')
    ModelInsightsLocation = Shapes::StringShape.new(name: 'ModelInsightsLocation')
    ModelLatencyThreshold = Shapes::StructureShape.new(name: 'ModelLatencyThreshold')
    ModelLatencyThresholds = Shapes::ListShape.new(name: 'ModelLatencyThresholds')
    ModelMetadataFilter = Shapes::StructureShape.new(name: 'ModelMetadataFilter')
    ModelMetadataFilterType = Shapes::StringShape.new(name: 'ModelMetadataFilterType')
    ModelMetadataFilters = Shapes::ListShape.new(name: 'ModelMetadataFilters')
    ModelMetadataSearchExpression = Shapes::StructureShape.new(name: 'ModelMetadataSearchExpression')
    ModelMetadataSummaries = Shapes::ListShape.new(name: 'ModelMetadataSummaries')
    ModelMetadataSummary = Shapes::StructureShape.new(name: 'ModelMetadataSummary')
    ModelMetrics = Shapes::StructureShape.new(name: 'ModelMetrics')
    ModelName = Shapes::StringShape.new(name: 'ModelName')
    ModelNameContains = Shapes::StringShape.new(name: 'ModelNameContains')
    ModelPackage = Shapes::StructureShape.new(name: 'ModelPackage')
    ModelPackageArn = Shapes::StringShape.new(name: 'ModelPackageArn')
    ModelPackageArnList = Shapes::ListShape.new(name: 'ModelPackageArnList')
    ModelPackageContainerDefinition = Shapes::StructureShape.new(name: 'ModelPackageContainerDefinition')
    ModelPackageContainerDefinitionList = Shapes::ListShape.new(name: 'ModelPackageContainerDefinitionList')
    ModelPackageGroup = Shapes::StructureShape.new(name: 'ModelPackageGroup')
    ModelPackageGroupArn = Shapes::StringShape.new(name: 'ModelPackageGroupArn')
    ModelPackageGroupSortBy = Shapes::StringShape.new(name: 'ModelPackageGroupSortBy')
    ModelPackageGroupStatus = Shapes::StringShape.new(name: 'ModelPackageGroupStatus')
    ModelPackageGroupSummary = Shapes::StructureShape.new(name: 'ModelPackageGroupSummary')
    ModelPackageGroupSummaryList = Shapes::ListShape.new(name: 'ModelPackageGroupSummaryList')
    ModelPackageSortBy = Shapes::StringShape.new(name: 'ModelPackageSortBy')
    ModelPackageStatus = Shapes::StringShape.new(name: 'ModelPackageStatus')
    ModelPackageStatusDetails = Shapes::StructureShape.new(name: 'ModelPackageStatusDetails')
    ModelPackageStatusItem = Shapes::StructureShape.new(name: 'ModelPackageStatusItem')
    ModelPackageStatusItemList = Shapes::ListShape.new(name: 'ModelPackageStatusItemList')
    ModelPackageSummaries = Shapes::MapShape.new(name: 'ModelPackageSummaries')
    ModelPackageSummary = Shapes::StructureShape.new(name: 'ModelPackageSummary')
    ModelPackageSummaryList = Shapes::ListShape.new(name: 'ModelPackageSummaryList')
    ModelPackageType = Shapes::StringShape.new(name: 'ModelPackageType')
    ModelPackageValidationProfile = Shapes::StructureShape.new(name: 'ModelPackageValidationProfile')
    ModelPackageValidationProfiles = Shapes::ListShape.new(name: 'ModelPackageValidationProfiles')
    ModelPackageValidationSpecification = Shapes::StructureShape.new(name: 'ModelPackageValidationSpecification')
    ModelPackageVersion = Shapes::IntegerShape.new(name: 'ModelPackageVersion')
    ModelQuality = Shapes::StructureShape.new(name: 'ModelQuality')
    ModelQualityAppSpecification = Shapes::StructureShape.new(name: 'ModelQualityAppSpecification')
    ModelQualityBaselineConfig = Shapes::StructureShape.new(name: 'ModelQualityBaselineConfig')
    ModelQualityJobInput = Shapes::StructureShape.new(name: 'ModelQualityJobInput')
    ModelSortKey = Shapes::StringShape.new(name: 'ModelSortKey')
    ModelStepMetadata = Shapes::StructureShape.new(name: 'ModelStepMetadata')
    ModelSummary = Shapes::StructureShape.new(name: 'ModelSummary')
    ModelSummaryList = Shapes::ListShape.new(name: 'ModelSummaryList')
    MonitoringAppSpecification = Shapes::StructureShape.new(name: 'MonitoringAppSpecification')
    MonitoringBaselineConfig = Shapes::StructureShape.new(name: 'MonitoringBaselineConfig')
    MonitoringClusterConfig = Shapes::StructureShape.new(name: 'MonitoringClusterConfig')
    MonitoringConstraintsResource = Shapes::StructureShape.new(name: 'MonitoringConstraintsResource')
    MonitoringContainerArguments = Shapes::ListShape.new(name: 'MonitoringContainerArguments')
    MonitoringEnvironmentMap = Shapes::MapShape.new(name: 'MonitoringEnvironmentMap')
    MonitoringExecutionSortKey = Shapes::StringShape.new(name: 'MonitoringExecutionSortKey')
    MonitoringExecutionSummary = Shapes::StructureShape.new(name: 'MonitoringExecutionSummary')
    MonitoringExecutionSummaryList = Shapes::ListShape.new(name: 'MonitoringExecutionSummaryList')
    MonitoringGroundTruthS3Input = Shapes::StructureShape.new(name: 'MonitoringGroundTruthS3Input')
    MonitoringInput = Shapes::StructureShape.new(name: 'MonitoringInput')
    MonitoringInputs = Shapes::ListShape.new(name: 'MonitoringInputs')
    MonitoringJobDefinition = Shapes::StructureShape.new(name: 'MonitoringJobDefinition')
    MonitoringJobDefinitionArn = Shapes::StringShape.new(name: 'MonitoringJobDefinitionArn')
    MonitoringJobDefinitionName = Shapes::StringShape.new(name: 'MonitoringJobDefinitionName')
    MonitoringJobDefinitionSortKey = Shapes::StringShape.new(name: 'MonitoringJobDefinitionSortKey')
    MonitoringJobDefinitionSummary = Shapes::StructureShape.new(name: 'MonitoringJobDefinitionSummary')
    MonitoringJobDefinitionSummaryList = Shapes::ListShape.new(name: 'MonitoringJobDefinitionSummaryList')
    MonitoringMaxRuntimeInSeconds = Shapes::IntegerShape.new(name: 'MonitoringMaxRuntimeInSeconds')
    MonitoringNetworkConfig = Shapes::StructureShape.new(name: 'MonitoringNetworkConfig')
    MonitoringOutput = Shapes::StructureShape.new(name: 'MonitoringOutput')
    MonitoringOutputConfig = Shapes::StructureShape.new(name: 'MonitoringOutputConfig')
    MonitoringOutputs = Shapes::ListShape.new(name: 'MonitoringOutputs')
    MonitoringProblemType = Shapes::StringShape.new(name: 'MonitoringProblemType')
    MonitoringResources = Shapes::StructureShape.new(name: 'MonitoringResources')
    MonitoringS3Output = Shapes::StructureShape.new(name: 'MonitoringS3Output')
    MonitoringS3Uri = Shapes::StringShape.new(name: 'MonitoringS3Uri')
    MonitoringSchedule = Shapes::StructureShape.new(name: 'MonitoringSchedule')
    MonitoringScheduleArn = Shapes::StringShape.new(name: 'MonitoringScheduleArn')
    MonitoringScheduleConfig = Shapes::StructureShape.new(name: 'MonitoringScheduleConfig')
    MonitoringScheduleList = Shapes::ListShape.new(name: 'MonitoringScheduleList')
    MonitoringScheduleName = Shapes::StringShape.new(name: 'MonitoringScheduleName')
    MonitoringScheduleSortKey = Shapes::StringShape.new(name: 'MonitoringScheduleSortKey')
    MonitoringScheduleSummary = Shapes::StructureShape.new(name: 'MonitoringScheduleSummary')
    MonitoringScheduleSummaryList = Shapes::ListShape.new(name: 'MonitoringScheduleSummaryList')
    MonitoringStatisticsResource = Shapes::StructureShape.new(name: 'MonitoringStatisticsResource')
    MonitoringStoppingCondition = Shapes::StructureShape.new(name: 'MonitoringStoppingCondition')
    MonitoringTimeOffsetString = Shapes::StringShape.new(name: 'MonitoringTimeOffsetString')
    MonitoringType = Shapes::StringShape.new(name: 'MonitoringType')
    MountPath = Shapes::StringShape.new(name: 'MountPath')
    MultiModelConfig = Shapes::StructureShape.new(name: 'MultiModelConfig')
    NameContains = Shapes::StringShape.new(name: 'NameContains')
    NeoVpcConfig = Shapes::StructureShape.new(name: 'NeoVpcConfig')
    NeoVpcSecurityGroupId = Shapes::StringShape.new(name: 'NeoVpcSecurityGroupId')
    NeoVpcSecurityGroupIds = Shapes::ListShape.new(name: 'NeoVpcSecurityGroupIds')
    NeoVpcSubnetId = Shapes::StringShape.new(name: 'NeoVpcSubnetId')
    NeoVpcSubnets = Shapes::ListShape.new(name: 'NeoVpcSubnets')
    NestedFilters = Shapes::StructureShape.new(name: 'NestedFilters')
    NestedFiltersList = Shapes::ListShape.new(name: 'NestedFiltersList')
    NetworkConfig = Shapes::StructureShape.new(name: 'NetworkConfig')
    NetworkInterfaceId = Shapes::StringShape.new(name: 'NetworkInterfaceId')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotebookInstanceAcceleratorType = Shapes::StringShape.new(name: 'NotebookInstanceAcceleratorType')
    NotebookInstanceAcceleratorTypes = Shapes::ListShape.new(name: 'NotebookInstanceAcceleratorTypes')
    NotebookInstanceArn = Shapes::StringShape.new(name: 'NotebookInstanceArn')
    NotebookInstanceLifecycleConfigArn = Shapes::StringShape.new(name: 'NotebookInstanceLifecycleConfigArn')
    NotebookInstanceLifecycleConfigContent = Shapes::StringShape.new(name: 'NotebookInstanceLifecycleConfigContent')
    NotebookInstanceLifecycleConfigList = Shapes::ListShape.new(name: 'NotebookInstanceLifecycleConfigList')
    NotebookInstanceLifecycleConfigName = Shapes::StringShape.new(name: 'NotebookInstanceLifecycleConfigName')
    NotebookInstanceLifecycleConfigNameContains = Shapes::StringShape.new(name: 'NotebookInstanceLifecycleConfigNameContains')
    NotebookInstanceLifecycleConfigSortKey = Shapes::StringShape.new(name: 'NotebookInstanceLifecycleConfigSortKey')
    NotebookInstanceLifecycleConfigSortOrder = Shapes::StringShape.new(name: 'NotebookInstanceLifecycleConfigSortOrder')
    NotebookInstanceLifecycleConfigSummary = Shapes::StructureShape.new(name: 'NotebookInstanceLifecycleConfigSummary')
    NotebookInstanceLifecycleConfigSummaryList = Shapes::ListShape.new(name: 'NotebookInstanceLifecycleConfigSummaryList')
    NotebookInstanceLifecycleHook = Shapes::StructureShape.new(name: 'NotebookInstanceLifecycleHook')
    NotebookInstanceName = Shapes::StringShape.new(name: 'NotebookInstanceName')
    NotebookInstanceNameContains = Shapes::StringShape.new(name: 'NotebookInstanceNameContains')
    NotebookInstanceSortKey = Shapes::StringShape.new(name: 'NotebookInstanceSortKey')
    NotebookInstanceSortOrder = Shapes::StringShape.new(name: 'NotebookInstanceSortOrder')
    NotebookInstanceStatus = Shapes::StringShape.new(name: 'NotebookInstanceStatus')
    NotebookInstanceSummary = Shapes::StructureShape.new(name: 'NotebookInstanceSummary')
    NotebookInstanceSummaryList = Shapes::ListShape.new(name: 'NotebookInstanceSummaryList')
    NotebookInstanceUrl = Shapes::StringShape.new(name: 'NotebookInstanceUrl')
    NotebookInstanceVolumeSizeInGB = Shapes::IntegerShape.new(name: 'NotebookInstanceVolumeSizeInGB')
    NotebookOutputOption = Shapes::StringShape.new(name: 'NotebookOutputOption')
    NotificationConfiguration = Shapes::StructureShape.new(name: 'NotificationConfiguration')
    NotificationTopicArn = Shapes::StringShape.new(name: 'NotificationTopicArn')
    NumberOfHumanWorkersPerDataObject = Shapes::IntegerShape.new(name: 'NumberOfHumanWorkersPerDataObject')
    ObjectiveStatus = Shapes::StringShape.new(name: 'ObjectiveStatus')
    ObjectiveStatusCounter = Shapes::IntegerShape.new(name: 'ObjectiveStatusCounter')
    ObjectiveStatusCounters = Shapes::StructureShape.new(name: 'ObjectiveStatusCounters')
    OfflineStoreConfig = Shapes::StructureShape.new(name: 'OfflineStoreConfig')
    OfflineStoreStatus = Shapes::StructureShape.new(name: 'OfflineStoreStatus')
    OfflineStoreStatusValue = Shapes::StringShape.new(name: 'OfflineStoreStatusValue')
    OidcConfig = Shapes::StructureShape.new(name: 'OidcConfig')
    OidcConfigForResponse = Shapes::StructureShape.new(name: 'OidcConfigForResponse')
    OidcEndpoint = Shapes::StringShape.new(name: 'OidcEndpoint')
    OidcMemberDefinition = Shapes::StructureShape.new(name: 'OidcMemberDefinition')
    OnlineStoreConfig = Shapes::StructureShape.new(name: 'OnlineStoreConfig')
    OnlineStoreSecurityConfig = Shapes::StructureShape.new(name: 'OnlineStoreSecurityConfig')
    Operator = Shapes::StringShape.new(name: 'Operator')
    OptionalDouble = Shapes::FloatShape.new(name: 'OptionalDouble')
    OptionalInteger = Shapes::IntegerShape.new(name: 'OptionalInteger')
    OptionalVolumeSizeInGB = Shapes::IntegerShape.new(name: 'OptionalVolumeSizeInGB')
    OrderKey = Shapes::StringShape.new(name: 'OrderKey')
    OutputConfig = Shapes::StructureShape.new(name: 'OutputConfig')
    OutputDataConfig = Shapes::StructureShape.new(name: 'OutputDataConfig')
    OutputParameter = Shapes::StructureShape.new(name: 'OutputParameter')
    OutputParameterList = Shapes::ListShape.new(name: 'OutputParameterList')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    ParallelismConfiguration = Shapes::StructureShape.new(name: 'ParallelismConfiguration')
    Parameter = Shapes::StructureShape.new(name: 'Parameter')
    ParameterKey = Shapes::StringShape.new(name: 'ParameterKey')
    ParameterList = Shapes::ListShape.new(name: 'ParameterList')
    ParameterName = Shapes::StringShape.new(name: 'ParameterName')
    ParameterRange = Shapes::StructureShape.new(name: 'ParameterRange')
    ParameterRanges = Shapes::StructureShape.new(name: 'ParameterRanges')
    ParameterType = Shapes::StringShape.new(name: 'ParameterType')
    ParameterValue = Shapes::StringShape.new(name: 'ParameterValue')
    ParameterValues = Shapes::ListShape.new(name: 'ParameterValues')
    Parent = Shapes::StructureShape.new(name: 'Parent')
    ParentHyperParameterTuningJob = Shapes::StructureShape.new(name: 'ParentHyperParameterTuningJob')
    ParentHyperParameterTuningJobs = Shapes::ListShape.new(name: 'ParentHyperParameterTuningJobs')
    Parents = Shapes::ListShape.new(name: 'Parents')
    PendingDeploymentSummary = Shapes::StructureShape.new(name: 'PendingDeploymentSummary')
    PendingProductionVariantSummary = Shapes::StructureShape.new(name: 'PendingProductionVariantSummary')
    PendingProductionVariantSummaryList = Shapes::ListShape.new(name: 'PendingProductionVariantSummaryList')
    Phase = Shapes::StructureShape.new(name: 'Phase')
    Phases = Shapes::ListShape.new(name: 'Phases')
    Pipeline = Shapes::StructureShape.new(name: 'Pipeline')
    PipelineArn = Shapes::StringShape.new(name: 'PipelineArn')
    PipelineDefinition = Shapes::StringShape.new(name: 'PipelineDefinition')
    PipelineDefinitionS3Location = Shapes::StructureShape.new(name: 'PipelineDefinitionS3Location')
    PipelineDescription = Shapes::StringShape.new(name: 'PipelineDescription')
    PipelineExecution = Shapes::StructureShape.new(name: 'PipelineExecution')
    PipelineExecutionArn = Shapes::StringShape.new(name: 'PipelineExecutionArn')
    PipelineExecutionDescription = Shapes::StringShape.new(name: 'PipelineExecutionDescription')
    PipelineExecutionFailureReason = Shapes::StringShape.new(name: 'PipelineExecutionFailureReason')
    PipelineExecutionName = Shapes::StringShape.new(name: 'PipelineExecutionName')
    PipelineExecutionStatus = Shapes::StringShape.new(name: 'PipelineExecutionStatus')
    PipelineExecutionStep = Shapes::StructureShape.new(name: 'PipelineExecutionStep')
    PipelineExecutionStepList = Shapes::ListShape.new(name: 'PipelineExecutionStepList')
    PipelineExecutionStepMetadata = Shapes::StructureShape.new(name: 'PipelineExecutionStepMetadata')
    PipelineExecutionSummary = Shapes::StructureShape.new(name: 'PipelineExecutionSummary')
    PipelineExecutionSummaryList = Shapes::ListShape.new(name: 'PipelineExecutionSummaryList')
    PipelineExperimentConfig = Shapes::StructureShape.new(name: 'PipelineExperimentConfig')
    PipelineName = Shapes::StringShape.new(name: 'PipelineName')
    PipelineParameterName = Shapes::StringShape.new(name: 'PipelineParameterName')
    PipelineStatus = Shapes::StringShape.new(name: 'PipelineStatus')
    PipelineSummary = Shapes::StructureShape.new(name: 'PipelineSummary')
    PipelineSummaryList = Shapes::ListShape.new(name: 'PipelineSummaryList')
    PlatformIdentifier = Shapes::StringShape.new(name: 'PlatformIdentifier')
    PolicyString = Shapes::StringShape.new(name: 'PolicyString')
    PresignedDomainUrl = Shapes::StringShape.new(name: 'PresignedDomainUrl')
    ProbabilityThresholdAttribute = Shapes::FloatShape.new(name: 'ProbabilityThresholdAttribute')
    ProblemType = Shapes::StringShape.new(name: 'ProblemType')
    ProcessingClusterConfig = Shapes::StructureShape.new(name: 'ProcessingClusterConfig')
    ProcessingEnvironmentKey = Shapes::StringShape.new(name: 'ProcessingEnvironmentKey')
    ProcessingEnvironmentMap = Shapes::MapShape.new(name: 'ProcessingEnvironmentMap')
    ProcessingEnvironmentValue = Shapes::StringShape.new(name: 'ProcessingEnvironmentValue')
    ProcessingFeatureStoreOutput = Shapes::StructureShape.new(name: 'ProcessingFeatureStoreOutput')
    ProcessingInput = Shapes::StructureShape.new(name: 'ProcessingInput')
    ProcessingInputs = Shapes::ListShape.new(name: 'ProcessingInputs')
    ProcessingInstanceCount = Shapes::IntegerShape.new(name: 'ProcessingInstanceCount')
    ProcessingInstanceType = Shapes::StringShape.new(name: 'ProcessingInstanceType')
    ProcessingJob = Shapes::StructureShape.new(name: 'ProcessingJob')
    ProcessingJobArn = Shapes::StringShape.new(name: 'ProcessingJobArn')
    ProcessingJobName = Shapes::StringShape.new(name: 'ProcessingJobName')
    ProcessingJobStatus = Shapes::StringShape.new(name: 'ProcessingJobStatus')
    ProcessingJobStepMetadata = Shapes::StructureShape.new(name: 'ProcessingJobStepMetadata')
    ProcessingJobSummaries = Shapes::ListShape.new(name: 'ProcessingJobSummaries')
    ProcessingJobSummary = Shapes::StructureShape.new(name: 'ProcessingJobSummary')
    ProcessingLocalPath = Shapes::StringShape.new(name: 'ProcessingLocalPath')
    ProcessingMaxRuntimeInSeconds = Shapes::IntegerShape.new(name: 'ProcessingMaxRuntimeInSeconds')
    ProcessingOutput = Shapes::StructureShape.new(name: 'ProcessingOutput')
    ProcessingOutputConfig = Shapes::StructureShape.new(name: 'ProcessingOutputConfig')
    ProcessingOutputs = Shapes::ListShape.new(name: 'ProcessingOutputs')
    ProcessingResources = Shapes::StructureShape.new(name: 'ProcessingResources')
    ProcessingS3CompressionType = Shapes::StringShape.new(name: 'ProcessingS3CompressionType')
    ProcessingS3DataDistributionType = Shapes::StringShape.new(name: 'ProcessingS3DataDistributionType')
    ProcessingS3DataType = Shapes::StringShape.new(name: 'ProcessingS3DataType')
    ProcessingS3Input = Shapes::StructureShape.new(name: 'ProcessingS3Input')
    ProcessingS3InputMode = Shapes::StringShape.new(name: 'ProcessingS3InputMode')
    ProcessingS3Output = Shapes::StructureShape.new(name: 'ProcessingS3Output')
    ProcessingS3UploadMode = Shapes::StringShape.new(name: 'ProcessingS3UploadMode')
    ProcessingStoppingCondition = Shapes::StructureShape.new(name: 'ProcessingStoppingCondition')
    ProcessingVolumeSizeInGB = Shapes::IntegerShape.new(name: 'ProcessingVolumeSizeInGB')
    ProductId = Shapes::StringShape.new(name: 'ProductId')
    ProductListings = Shapes::ListShape.new(name: 'ProductListings')
    ProductionVariant = Shapes::StructureShape.new(name: 'ProductionVariant')
    ProductionVariantAcceleratorType = Shapes::StringShape.new(name: 'ProductionVariantAcceleratorType')
    ProductionVariantCoreDumpConfig = Shapes::StructureShape.new(name: 'ProductionVariantCoreDumpConfig')
    ProductionVariantInstanceType = Shapes::StringShape.new(name: 'ProductionVariantInstanceType')
    ProductionVariantList = Shapes::ListShape.new(name: 'ProductionVariantList')
    ProductionVariantServerlessConfig = Shapes::StructureShape.new(name: 'ProductionVariantServerlessConfig')
    ProductionVariantStatus = Shapes::StructureShape.new(name: 'ProductionVariantStatus')
    ProductionVariantStatusList = Shapes::ListShape.new(name: 'ProductionVariantStatusList')
    ProductionVariantSummary = Shapes::StructureShape.new(name: 'ProductionVariantSummary')
    ProductionVariantSummaryList = Shapes::ListShape.new(name: 'ProductionVariantSummaryList')
    ProfilerConfig = Shapes::StructureShape.new(name: 'ProfilerConfig')
    ProfilerConfigForUpdate = Shapes::StructureShape.new(name: 'ProfilerConfigForUpdate')
    ProfilerRuleConfiguration = Shapes::StructureShape.new(name: 'ProfilerRuleConfiguration')
    ProfilerRuleConfigurations = Shapes::ListShape.new(name: 'ProfilerRuleConfigurations')
    ProfilerRuleEvaluationStatus = Shapes::StructureShape.new(name: 'ProfilerRuleEvaluationStatus')
    ProfilerRuleEvaluationStatuses = Shapes::ListShape.new(name: 'ProfilerRuleEvaluationStatuses')
    ProfilingIntervalInMilliseconds = Shapes::IntegerShape.new(name: 'ProfilingIntervalInMilliseconds')
    ProfilingParameters = Shapes::MapShape.new(name: 'ProfilingParameters')
    ProfilingStatus = Shapes::StringShape.new(name: 'ProfilingStatus')
    Project = Shapes::StructureShape.new(name: 'Project')
    ProjectArn = Shapes::StringShape.new(name: 'ProjectArn')
    ProjectEntityName = Shapes::StringShape.new(name: 'ProjectEntityName')
    ProjectId = Shapes::StringShape.new(name: 'ProjectId')
    ProjectSortBy = Shapes::StringShape.new(name: 'ProjectSortBy')
    ProjectSortOrder = Shapes::StringShape.new(name: 'ProjectSortOrder')
    ProjectStatus = Shapes::StringShape.new(name: 'ProjectStatus')
    ProjectSummary = Shapes::StructureShape.new(name: 'ProjectSummary')
    ProjectSummaryList = Shapes::ListShape.new(name: 'ProjectSummaryList')
    PropertyNameHint = Shapes::StringShape.new(name: 'PropertyNameHint')
    PropertyNameQuery = Shapes::StructureShape.new(name: 'PropertyNameQuery')
    PropertyNameSuggestion = Shapes::StructureShape.new(name: 'PropertyNameSuggestion')
    PropertyNameSuggestionList = Shapes::ListShape.new(name: 'PropertyNameSuggestionList')
    ProvisionedProductStatusMessage = Shapes::StringShape.new(name: 'ProvisionedProductStatusMessage')
    ProvisioningParameter = Shapes::StructureShape.new(name: 'ProvisioningParameter')
    ProvisioningParameterKey = Shapes::StringShape.new(name: 'ProvisioningParameterKey')
    ProvisioningParameterValue = Shapes::StringShape.new(name: 'ProvisioningParameterValue')
    ProvisioningParameters = Shapes::ListShape.new(name: 'ProvisioningParameters')
    PublicWorkforceTaskPrice = Shapes::StructureShape.new(name: 'PublicWorkforceTaskPrice')
    PutModelPackageGroupPolicyInput = Shapes::StructureShape.new(name: 'PutModelPackageGroupPolicyInput')
    PutModelPackageGroupPolicyOutput = Shapes::StructureShape.new(name: 'PutModelPackageGroupPolicyOutput')
    QualityCheckStepMetadata = Shapes::StructureShape.new(name: 'QualityCheckStepMetadata')
    QueryFilters = Shapes::StructureShape.new(name: 'QueryFilters')
    QueryLineageMaxDepth = Shapes::IntegerShape.new(name: 'QueryLineageMaxDepth')
    QueryLineageMaxResults = Shapes::IntegerShape.new(name: 'QueryLineageMaxResults')
    QueryLineageRequest = Shapes::StructureShape.new(name: 'QueryLineageRequest')
    QueryLineageResponse = Shapes::StructureShape.new(name: 'QueryLineageResponse')
    QueryLineageStartArns = Shapes::ListShape.new(name: 'QueryLineageStartArns')
    QueryLineageTypes = Shapes::ListShape.new(name: 'QueryLineageTypes')
    QueryProperties = Shapes::MapShape.new(name: 'QueryProperties')
    QueryTypes = Shapes::ListShape.new(name: 'QueryTypes')
    RSessionAppSettings = Shapes::StructureShape.new(name: 'RSessionAppSettings')
    RStudioServerProAccessStatus = Shapes::StringShape.new(name: 'RStudioServerProAccessStatus')
    RStudioServerProAppSettings = Shapes::StructureShape.new(name: 'RStudioServerProAppSettings')
    RStudioServerProDomainSettings = Shapes::StructureShape.new(name: 'RStudioServerProDomainSettings')
    RStudioServerProDomainSettingsForUpdate = Shapes::StructureShape.new(name: 'RStudioServerProDomainSettingsForUpdate')
    RStudioServerProUserGroup = Shapes::StringShape.new(name: 'RStudioServerProUserGroup')
    RealtimeInferenceInstanceTypes = Shapes::ListShape.new(name: 'RealtimeInferenceInstanceTypes')
    RecommendationJobArn = Shapes::StringShape.new(name: 'RecommendationJobArn')
    RecommendationJobDescription = Shapes::StringShape.new(name: 'RecommendationJobDescription')
    RecommendationJobInputConfig = Shapes::StructureShape.new(name: 'RecommendationJobInputConfig')
    RecommendationJobName = Shapes::StringShape.new(name: 'RecommendationJobName')
    RecommendationJobResourceLimit = Shapes::StructureShape.new(name: 'RecommendationJobResourceLimit')
    RecommendationJobStatus = Shapes::StringShape.new(name: 'RecommendationJobStatus')
    RecommendationJobStoppingConditions = Shapes::StructureShape.new(name: 'RecommendationJobStoppingConditions')
    RecommendationJobType = Shapes::StringShape.new(name: 'RecommendationJobType')
    RecommendationMetrics = Shapes::StructureShape.new(name: 'RecommendationMetrics')
    RecordWrapper = Shapes::StringShape.new(name: 'RecordWrapper')
    RedshiftClusterId = Shapes::StringShape.new(name: 'RedshiftClusterId')
    RedshiftDatabase = Shapes::StringShape.new(name: 'RedshiftDatabase')
    RedshiftDatasetDefinition = Shapes::StructureShape.new(name: 'RedshiftDatasetDefinition')
    RedshiftQueryString = Shapes::StringShape.new(name: 'RedshiftQueryString')
    RedshiftResultCompressionType = Shapes::StringShape.new(name: 'RedshiftResultCompressionType')
    RedshiftResultFormat = Shapes::StringShape.new(name: 'RedshiftResultFormat')
    RedshiftUserName = Shapes::StringShape.new(name: 'RedshiftUserName')
    RegisterDevicesRequest = Shapes::StructureShape.new(name: 'RegisterDevicesRequest')
    RegisterModelStepMetadata = Shapes::StructureShape.new(name: 'RegisterModelStepMetadata')
    RenderUiTemplateRequest = Shapes::StructureShape.new(name: 'RenderUiTemplateRequest')
    RenderUiTemplateResponse = Shapes::StructureShape.new(name: 'RenderUiTemplateResponse')
    RenderableTask = Shapes::StructureShape.new(name: 'RenderableTask')
    RenderingError = Shapes::StructureShape.new(name: 'RenderingError')
    RenderingErrorList = Shapes::ListShape.new(name: 'RenderingErrorList')
    RepositoryAccessMode = Shapes::StringShape.new(name: 'RepositoryAccessMode')
    RepositoryAuthConfig = Shapes::StructureShape.new(name: 'RepositoryAuthConfig')
    RepositoryCredentialsProviderArn = Shapes::StringShape.new(name: 'RepositoryCredentialsProviderArn')
    ResolvedAttributes = Shapes::StructureShape.new(name: 'ResolvedAttributes')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceConfig = Shapes::StructureShape.new(name: 'ResourceConfig')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceInUse = Shapes::StructureShape.new(name: 'ResourceInUse')
    ResourceLimitExceeded = Shapes::StructureShape.new(name: 'ResourceLimitExceeded')
    ResourceLimits = Shapes::StructureShape.new(name: 'ResourceLimits')
    ResourceNotFound = Shapes::StructureShape.new(name: 'ResourceNotFound')
    ResourcePolicyString = Shapes::StringShape.new(name: 'ResourcePolicyString')
    ResourcePropertyName = Shapes::StringShape.new(name: 'ResourcePropertyName')
    ResourceSpec = Shapes::StructureShape.new(name: 'ResourceSpec')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResponseMIMEType = Shapes::StringShape.new(name: 'ResponseMIMEType')
    ResponseMIMETypes = Shapes::ListShape.new(name: 'ResponseMIMETypes')
    RetentionPolicy = Shapes::StructureShape.new(name: 'RetentionPolicy')
    RetentionType = Shapes::StringShape.new(name: 'RetentionType')
    RetryPipelineExecutionRequest = Shapes::StructureShape.new(name: 'RetryPipelineExecutionRequest')
    RetryPipelineExecutionResponse = Shapes::StructureShape.new(name: 'RetryPipelineExecutionResponse')
    RetryStrategy = Shapes::StructureShape.new(name: 'RetryStrategy')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RootAccess = Shapes::StringShape.new(name: 'RootAccess')
    RuleConfigurationName = Shapes::StringShape.new(name: 'RuleConfigurationName')
    RuleEvaluationStatus = Shapes::StringShape.new(name: 'RuleEvaluationStatus')
    RuleParameters = Shapes::MapShape.new(name: 'RuleParameters')
    S3DataDistribution = Shapes::StringShape.new(name: 'S3DataDistribution')
    S3DataSource = Shapes::StructureShape.new(name: 'S3DataSource')
    S3DataType = Shapes::StringShape.new(name: 'S3DataType')
    S3StorageConfig = Shapes::StructureShape.new(name: 'S3StorageConfig')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    SagemakerServicecatalogStatus = Shapes::StringShape.new(name: 'SagemakerServicecatalogStatus')
    SamplingPercentage = Shapes::IntegerShape.new(name: 'SamplingPercentage')
    ScheduleConfig = Shapes::StructureShape.new(name: 'ScheduleConfig')
    ScheduleExpression = Shapes::StringShape.new(name: 'ScheduleExpression')
    ScheduleStatus = Shapes::StringShape.new(name: 'ScheduleStatus')
    SearchExpression = Shapes::StructureShape.new(name: 'SearchExpression')
    SearchExpressionList = Shapes::ListShape.new(name: 'SearchExpressionList')
    SearchRecord = Shapes::StructureShape.new(name: 'SearchRecord')
    SearchRequest = Shapes::StructureShape.new(name: 'SearchRequest')
    SearchResponse = Shapes::StructureShape.new(name: 'SearchResponse')
    SearchResultsList = Shapes::ListShape.new(name: 'SearchResultsList')
    SearchSortOrder = Shapes::StringShape.new(name: 'SearchSortOrder')
    SecondaryStatus = Shapes::StringShape.new(name: 'SecondaryStatus')
    SecondaryStatusTransition = Shapes::StructureShape.new(name: 'SecondaryStatusTransition')
    SecondaryStatusTransitions = Shapes::ListShape.new(name: 'SecondaryStatusTransitions')
    SecretArn = Shapes::StringShape.new(name: 'SecretArn')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    Seed = Shapes::IntegerShape.new(name: 'Seed')
    SendPipelineExecutionStepFailureRequest = Shapes::StructureShape.new(name: 'SendPipelineExecutionStepFailureRequest')
    SendPipelineExecutionStepFailureResponse = Shapes::StructureShape.new(name: 'SendPipelineExecutionStepFailureResponse')
    SendPipelineExecutionStepSuccessRequest = Shapes::StructureShape.new(name: 'SendPipelineExecutionStepSuccessRequest')
    SendPipelineExecutionStepSuccessResponse = Shapes::StructureShape.new(name: 'SendPipelineExecutionStepSuccessResponse')
    ServerlessMaxConcurrency = Shapes::IntegerShape.new(name: 'ServerlessMaxConcurrency')
    ServerlessMemorySizeInMB = Shapes::IntegerShape.new(name: 'ServerlessMemorySizeInMB')
    ServiceCatalogEntityId = Shapes::StringShape.new(name: 'ServiceCatalogEntityId')
    ServiceCatalogProvisionedProductDetails = Shapes::StructureShape.new(name: 'ServiceCatalogProvisionedProductDetails')
    ServiceCatalogProvisioningDetails = Shapes::StructureShape.new(name: 'ServiceCatalogProvisioningDetails')
    ServiceCatalogProvisioningUpdateDetails = Shapes::StructureShape.new(name: 'ServiceCatalogProvisioningUpdateDetails')
    SessionExpirationDurationInSeconds = Shapes::IntegerShape.new(name: 'SessionExpirationDurationInSeconds')
    SharingSettings = Shapes::StructureShape.new(name: 'SharingSettings')
    ShuffleConfig = Shapes::StructureShape.new(name: 'ShuffleConfig')
    SingleSignOnUserIdentifier = Shapes::StringShape.new(name: 'SingleSignOnUserIdentifier')
    SnsTopicArn = Shapes::StringShape.new(name: 'SnsTopicArn')
    SortActionsBy = Shapes::StringShape.new(name: 'SortActionsBy')
    SortArtifactsBy = Shapes::StringShape.new(name: 'SortArtifactsBy')
    SortAssociationsBy = Shapes::StringShape.new(name: 'SortAssociationsBy')
    SortBy = Shapes::StringShape.new(name: 'SortBy')
    SortContextsBy = Shapes::StringShape.new(name: 'SortContextsBy')
    SortExperimentsBy = Shapes::StringShape.new(name: 'SortExperimentsBy')
    SortLineageGroupsBy = Shapes::StringShape.new(name: 'SortLineageGroupsBy')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    SortPipelineExecutionsBy = Shapes::StringShape.new(name: 'SortPipelineExecutionsBy')
    SortPipelinesBy = Shapes::StringShape.new(name: 'SortPipelinesBy')
    SortTrialComponentsBy = Shapes::StringShape.new(name: 'SortTrialComponentsBy')
    SortTrialsBy = Shapes::StringShape.new(name: 'SortTrialsBy')
    SourceAlgorithm = Shapes::StructureShape.new(name: 'SourceAlgorithm')
    SourceAlgorithmList = Shapes::ListShape.new(name: 'SourceAlgorithmList')
    SourceAlgorithmSpecification = Shapes::StructureShape.new(name: 'SourceAlgorithmSpecification')
    SourceIpConfig = Shapes::StructureShape.new(name: 'SourceIpConfig')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    SourceUri = Shapes::StringShape.new(name: 'SourceUri')
    SpawnRate = Shapes::IntegerShape.new(name: 'SpawnRate')
    SplitType = Shapes::StringShape.new(name: 'SplitType')
    StartMonitoringScheduleRequest = Shapes::StructureShape.new(name: 'StartMonitoringScheduleRequest')
    StartNotebookInstanceInput = Shapes::StructureShape.new(name: 'StartNotebookInstanceInput')
    StartPipelineExecutionRequest = Shapes::StructureShape.new(name: 'StartPipelineExecutionRequest')
    StartPipelineExecutionResponse = Shapes::StructureShape.new(name: 'StartPipelineExecutionResponse')
    StatusDetails = Shapes::StringShape.new(name: 'StatusDetails')
    StatusMessage = Shapes::StringShape.new(name: 'StatusMessage')
    StepDescription = Shapes::StringShape.new(name: 'StepDescription')
    StepDisplayName = Shapes::StringShape.new(name: 'StepDisplayName')
    StepName = Shapes::StringShape.new(name: 'StepName')
    StepStatus = Shapes::StringShape.new(name: 'StepStatus')
    StopAutoMLJobRequest = Shapes::StructureShape.new(name: 'StopAutoMLJobRequest')
    StopCompilationJobRequest = Shapes::StructureShape.new(name: 'StopCompilationJobRequest')
    StopEdgePackagingJobRequest = Shapes::StructureShape.new(name: 'StopEdgePackagingJobRequest')
    StopHyperParameterTuningJobRequest = Shapes::StructureShape.new(name: 'StopHyperParameterTuningJobRequest')
    StopInferenceRecommendationsJobRequest = Shapes::StructureShape.new(name: 'StopInferenceRecommendationsJobRequest')
    StopLabelingJobRequest = Shapes::StructureShape.new(name: 'StopLabelingJobRequest')
    StopMonitoringScheduleRequest = Shapes::StructureShape.new(name: 'StopMonitoringScheduleRequest')
    StopNotebookInstanceInput = Shapes::StructureShape.new(name: 'StopNotebookInstanceInput')
    StopPipelineExecutionRequest = Shapes::StructureShape.new(name: 'StopPipelineExecutionRequest')
    StopPipelineExecutionResponse = Shapes::StructureShape.new(name: 'StopPipelineExecutionResponse')
    StopProcessingJobRequest = Shapes::StructureShape.new(name: 'StopProcessingJobRequest')
    StopTrainingJobRequest = Shapes::StructureShape.new(name: 'StopTrainingJobRequest')
    StopTransformJobRequest = Shapes::StructureShape.new(name: 'StopTransformJobRequest')
    StoppingCondition = Shapes::StructureShape.new(name: 'StoppingCondition')
    String = Shapes::StringShape.new(name: 'String')
    String1024 = Shapes::StringShape.new(name: 'String1024')
    String128 = Shapes::StringShape.new(name: 'String128')
    String200 = Shapes::StringShape.new(name: 'String200')
    String2048 = Shapes::StringShape.new(name: 'String2048')
    String256 = Shapes::StringShape.new(name: 'String256')
    String3072 = Shapes::StringShape.new(name: 'String3072')
    String40 = Shapes::StringShape.new(name: 'String40')
    String64 = Shapes::StringShape.new(name: 'String64')
    String8192 = Shapes::StringShape.new(name: 'String8192')
    StringParameterValue = Shapes::StringShape.new(name: 'StringParameterValue')
    StudioLifecycleConfigAppType = Shapes::StringShape.new(name: 'StudioLifecycleConfigAppType')
    StudioLifecycleConfigArn = Shapes::StringShape.new(name: 'StudioLifecycleConfigArn')
    StudioLifecycleConfigContent = Shapes::StringShape.new(name: 'StudioLifecycleConfigContent')
    StudioLifecycleConfigDetails = Shapes::StructureShape.new(name: 'StudioLifecycleConfigDetails')
    StudioLifecycleConfigName = Shapes::StringShape.new(name: 'StudioLifecycleConfigName')
    StudioLifecycleConfigSortKey = Shapes::StringShape.new(name: 'StudioLifecycleConfigSortKey')
    StudioLifecycleConfigsList = Shapes::ListShape.new(name: 'StudioLifecycleConfigsList')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    Subnets = Shapes::ListShape.new(name: 'Subnets')
    SubscribedWorkteam = Shapes::StructureShape.new(name: 'SubscribedWorkteam')
    SubscribedWorkteams = Shapes::ListShape.new(name: 'SubscribedWorkteams')
    Success = Shapes::BooleanShape.new(name: 'Success')
    SuggestionQuery = Shapes::StructureShape.new(name: 'SuggestionQuery')
    TableName = Shapes::StringShape.new(name: 'TableName')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetAttributeName = Shapes::StringShape.new(name: 'TargetAttributeName')
    TargetDevice = Shapes::StringShape.new(name: 'TargetDevice')
    TargetObjectiveMetricValue = Shapes::FloatShape.new(name: 'TargetObjectiveMetricValue')
    TargetPlatform = Shapes::StructureShape.new(name: 'TargetPlatform')
    TargetPlatformAccelerator = Shapes::StringShape.new(name: 'TargetPlatformAccelerator')
    TargetPlatformArch = Shapes::StringShape.new(name: 'TargetPlatformArch')
    TargetPlatformOs = Shapes::StringShape.new(name: 'TargetPlatformOs')
    TaskAvailabilityLifetimeInSeconds = Shapes::IntegerShape.new(name: 'TaskAvailabilityLifetimeInSeconds')
    TaskCount = Shapes::IntegerShape.new(name: 'TaskCount')
    TaskDescription = Shapes::StringShape.new(name: 'TaskDescription')
    TaskInput = Shapes::StringShape.new(name: 'TaskInput')
    TaskKeyword = Shapes::StringShape.new(name: 'TaskKeyword')
    TaskKeywords = Shapes::ListShape.new(name: 'TaskKeywords')
    TaskTimeLimitInSeconds = Shapes::IntegerShape.new(name: 'TaskTimeLimitInSeconds')
    TaskTitle = Shapes::StringShape.new(name: 'TaskTitle')
    TemplateContent = Shapes::StringShape.new(name: 'TemplateContent')
    TemplateContentSha256 = Shapes::StringShape.new(name: 'TemplateContentSha256')
    TemplateUrl = Shapes::StringShape.new(name: 'TemplateUrl')
    TensorBoardAppSettings = Shapes::StructureShape.new(name: 'TensorBoardAppSettings')
    TensorBoardOutputConfig = Shapes::StructureShape.new(name: 'TensorBoardOutputConfig')
    TenthFractionsOfACent = Shapes::IntegerShape.new(name: 'TenthFractionsOfACent')
    TerminationWaitInSeconds = Shapes::IntegerShape.new(name: 'TerminationWaitInSeconds')
    ThingName = Shapes::StringShape.new(name: 'ThingName')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TrafficDurationInSeconds = Shapes::IntegerShape.new(name: 'TrafficDurationInSeconds')
    TrafficPattern = Shapes::StructureShape.new(name: 'TrafficPattern')
    TrafficRoutingConfig = Shapes::StructureShape.new(name: 'TrafficRoutingConfig')
    TrafficRoutingConfigType = Shapes::StringShape.new(name: 'TrafficRoutingConfigType')
    TrafficType = Shapes::StringShape.new(name: 'TrafficType')
    TrainingEnvironmentKey = Shapes::StringShape.new(name: 'TrainingEnvironmentKey')
    TrainingEnvironmentMap = Shapes::MapShape.new(name: 'TrainingEnvironmentMap')
    TrainingEnvironmentValue = Shapes::StringShape.new(name: 'TrainingEnvironmentValue')
    TrainingInputMode = Shapes::StringShape.new(name: 'TrainingInputMode')
    TrainingInstanceCount = Shapes::IntegerShape.new(name: 'TrainingInstanceCount')
    TrainingInstanceType = Shapes::StringShape.new(name: 'TrainingInstanceType')
    TrainingInstanceTypes = Shapes::ListShape.new(name: 'TrainingInstanceTypes')
    TrainingJob = Shapes::StructureShape.new(name: 'TrainingJob')
    TrainingJobArn = Shapes::StringShape.new(name: 'TrainingJobArn')
    TrainingJobDefinition = Shapes::StructureShape.new(name: 'TrainingJobDefinition')
    TrainingJobEarlyStoppingType = Shapes::StringShape.new(name: 'TrainingJobEarlyStoppingType')
    TrainingJobName = Shapes::StringShape.new(name: 'TrainingJobName')
    TrainingJobSortByOptions = Shapes::StringShape.new(name: 'TrainingJobSortByOptions')
    TrainingJobStatus = Shapes::StringShape.new(name: 'TrainingJobStatus')
    TrainingJobStatusCounter = Shapes::IntegerShape.new(name: 'TrainingJobStatusCounter')
    TrainingJobStatusCounters = Shapes::StructureShape.new(name: 'TrainingJobStatusCounters')
    TrainingJobStepMetadata = Shapes::StructureShape.new(name: 'TrainingJobStepMetadata')
    TrainingJobSummaries = Shapes::ListShape.new(name: 'TrainingJobSummaries')
    TrainingJobSummary = Shapes::StructureShape.new(name: 'TrainingJobSummary')
    TrainingSpecification = Shapes::StructureShape.new(name: 'TrainingSpecification')
    TrainingTimeInSeconds = Shapes::IntegerShape.new(name: 'TrainingTimeInSeconds')
    TransformDataSource = Shapes::StructureShape.new(name: 'TransformDataSource')
    TransformEnvironmentKey = Shapes::StringShape.new(name: 'TransformEnvironmentKey')
    TransformEnvironmentMap = Shapes::MapShape.new(name: 'TransformEnvironmentMap')
    TransformEnvironmentValue = Shapes::StringShape.new(name: 'TransformEnvironmentValue')
    TransformInput = Shapes::StructureShape.new(name: 'TransformInput')
    TransformInstanceCount = Shapes::IntegerShape.new(name: 'TransformInstanceCount')
    TransformInstanceType = Shapes::StringShape.new(name: 'TransformInstanceType')
    TransformInstanceTypes = Shapes::ListShape.new(name: 'TransformInstanceTypes')
    TransformJob = Shapes::StructureShape.new(name: 'TransformJob')
    TransformJobArn = Shapes::StringShape.new(name: 'TransformJobArn')
    TransformJobDefinition = Shapes::StructureShape.new(name: 'TransformJobDefinition')
    TransformJobName = Shapes::StringShape.new(name: 'TransformJobName')
    TransformJobStatus = Shapes::StringShape.new(name: 'TransformJobStatus')
    TransformJobStepMetadata = Shapes::StructureShape.new(name: 'TransformJobStepMetadata')
    TransformJobSummaries = Shapes::ListShape.new(name: 'TransformJobSummaries')
    TransformJobSummary = Shapes::StructureShape.new(name: 'TransformJobSummary')
    TransformOutput = Shapes::StructureShape.new(name: 'TransformOutput')
    TransformResources = Shapes::StructureShape.new(name: 'TransformResources')
    TransformS3DataSource = Shapes::StructureShape.new(name: 'TransformS3DataSource')
    Trial = Shapes::StructureShape.new(name: 'Trial')
    TrialArn = Shapes::StringShape.new(name: 'TrialArn')
    TrialComponent = Shapes::StructureShape.new(name: 'TrialComponent')
    TrialComponentArn = Shapes::StringShape.new(name: 'TrialComponentArn')
    TrialComponentArtifact = Shapes::StructureShape.new(name: 'TrialComponentArtifact')
    TrialComponentArtifactValue = Shapes::StringShape.new(name: 'TrialComponentArtifactValue')
    TrialComponentArtifacts = Shapes::MapShape.new(name: 'TrialComponentArtifacts')
    TrialComponentKey256 = Shapes::StringShape.new(name: 'TrialComponentKey256')
    TrialComponentKey64 = Shapes::StringShape.new(name: 'TrialComponentKey64')
    TrialComponentMetricSummaries = Shapes::ListShape.new(name: 'TrialComponentMetricSummaries')
    TrialComponentMetricSummary = Shapes::StructureShape.new(name: 'TrialComponentMetricSummary')
    TrialComponentParameterValue = Shapes::StructureShape.new(name: 'TrialComponentParameterValue')
    TrialComponentParameters = Shapes::MapShape.new(name: 'TrialComponentParameters')
    TrialComponentPrimaryStatus = Shapes::StringShape.new(name: 'TrialComponentPrimaryStatus')
    TrialComponentSimpleSummaries = Shapes::ListShape.new(name: 'TrialComponentSimpleSummaries')
    TrialComponentSimpleSummary = Shapes::StructureShape.new(name: 'TrialComponentSimpleSummary')
    TrialComponentSource = Shapes::StructureShape.new(name: 'TrialComponentSource')
    TrialComponentSourceArn = Shapes::StringShape.new(name: 'TrialComponentSourceArn')
    TrialComponentSourceDetail = Shapes::StructureShape.new(name: 'TrialComponentSourceDetail')
    TrialComponentStatus = Shapes::StructureShape.new(name: 'TrialComponentStatus')
    TrialComponentStatusMessage = Shapes::StringShape.new(name: 'TrialComponentStatusMessage')
    TrialComponentSummaries = Shapes::ListShape.new(name: 'TrialComponentSummaries')
    TrialComponentSummary = Shapes::StructureShape.new(name: 'TrialComponentSummary')
    TrialSource = Shapes::StructureShape.new(name: 'TrialSource')
    TrialSourceArn = Shapes::StringShape.new(name: 'TrialSourceArn')
    TrialSummaries = Shapes::ListShape.new(name: 'TrialSummaries')
    TrialSummary = Shapes::StructureShape.new(name: 'TrialSummary')
    TuningJobCompletionCriteria = Shapes::StructureShape.new(name: 'TuningJobCompletionCriteria')
    TuningJobStepMetaData = Shapes::StructureShape.new(name: 'TuningJobStepMetaData')
    USD = Shapes::StructureShape.new(name: 'USD')
    UiConfig = Shapes::StructureShape.new(name: 'UiConfig')
    UiTemplate = Shapes::StructureShape.new(name: 'UiTemplate')
    UiTemplateInfo = Shapes::StructureShape.new(name: 'UiTemplateInfo')
    UpdateActionRequest = Shapes::StructureShape.new(name: 'UpdateActionRequest')
    UpdateActionResponse = Shapes::StructureShape.new(name: 'UpdateActionResponse')
    UpdateAppImageConfigRequest = Shapes::StructureShape.new(name: 'UpdateAppImageConfigRequest')
    UpdateAppImageConfigResponse = Shapes::StructureShape.new(name: 'UpdateAppImageConfigResponse')
    UpdateArtifactRequest = Shapes::StructureShape.new(name: 'UpdateArtifactRequest')
    UpdateArtifactResponse = Shapes::StructureShape.new(name: 'UpdateArtifactResponse')
    UpdateCodeRepositoryInput = Shapes::StructureShape.new(name: 'UpdateCodeRepositoryInput')
    UpdateCodeRepositoryOutput = Shapes::StructureShape.new(name: 'UpdateCodeRepositoryOutput')
    UpdateContextRequest = Shapes::StructureShape.new(name: 'UpdateContextRequest')
    UpdateContextResponse = Shapes::StructureShape.new(name: 'UpdateContextResponse')
    UpdateDeviceFleetRequest = Shapes::StructureShape.new(name: 'UpdateDeviceFleetRequest')
    UpdateDevicesRequest = Shapes::StructureShape.new(name: 'UpdateDevicesRequest')
    UpdateDomainRequest = Shapes::StructureShape.new(name: 'UpdateDomainRequest')
    UpdateDomainResponse = Shapes::StructureShape.new(name: 'UpdateDomainResponse')
    UpdateEndpointInput = Shapes::StructureShape.new(name: 'UpdateEndpointInput')
    UpdateEndpointOutput = Shapes::StructureShape.new(name: 'UpdateEndpointOutput')
    UpdateEndpointWeightsAndCapacitiesInput = Shapes::StructureShape.new(name: 'UpdateEndpointWeightsAndCapacitiesInput')
    UpdateEndpointWeightsAndCapacitiesOutput = Shapes::StructureShape.new(name: 'UpdateEndpointWeightsAndCapacitiesOutput')
    UpdateExperimentRequest = Shapes::StructureShape.new(name: 'UpdateExperimentRequest')
    UpdateExperimentResponse = Shapes::StructureShape.new(name: 'UpdateExperimentResponse')
    UpdateImageRequest = Shapes::StructureShape.new(name: 'UpdateImageRequest')
    UpdateImageResponse = Shapes::StructureShape.new(name: 'UpdateImageResponse')
    UpdateModelPackageInput = Shapes::StructureShape.new(name: 'UpdateModelPackageInput')
    UpdateModelPackageOutput = Shapes::StructureShape.new(name: 'UpdateModelPackageOutput')
    UpdateMonitoringScheduleRequest = Shapes::StructureShape.new(name: 'UpdateMonitoringScheduleRequest')
    UpdateMonitoringScheduleResponse = Shapes::StructureShape.new(name: 'UpdateMonitoringScheduleResponse')
    UpdateNotebookInstanceInput = Shapes::StructureShape.new(name: 'UpdateNotebookInstanceInput')
    UpdateNotebookInstanceLifecycleConfigInput = Shapes::StructureShape.new(name: 'UpdateNotebookInstanceLifecycleConfigInput')
    UpdateNotebookInstanceLifecycleConfigOutput = Shapes::StructureShape.new(name: 'UpdateNotebookInstanceLifecycleConfigOutput')
    UpdateNotebookInstanceOutput = Shapes::StructureShape.new(name: 'UpdateNotebookInstanceOutput')
    UpdatePipelineExecutionRequest = Shapes::StructureShape.new(name: 'UpdatePipelineExecutionRequest')
    UpdatePipelineExecutionResponse = Shapes::StructureShape.new(name: 'UpdatePipelineExecutionResponse')
    UpdatePipelineRequest = Shapes::StructureShape.new(name: 'UpdatePipelineRequest')
    UpdatePipelineResponse = Shapes::StructureShape.new(name: 'UpdatePipelineResponse')
    UpdateProjectInput = Shapes::StructureShape.new(name: 'UpdateProjectInput')
    UpdateProjectOutput = Shapes::StructureShape.new(name: 'UpdateProjectOutput')
    UpdateTrainingJobRequest = Shapes::StructureShape.new(name: 'UpdateTrainingJobRequest')
    UpdateTrainingJobResponse = Shapes::StructureShape.new(name: 'UpdateTrainingJobResponse')
    UpdateTrialComponentRequest = Shapes::StructureShape.new(name: 'UpdateTrialComponentRequest')
    UpdateTrialComponentResponse = Shapes::StructureShape.new(name: 'UpdateTrialComponentResponse')
    UpdateTrialRequest = Shapes::StructureShape.new(name: 'UpdateTrialRequest')
    UpdateTrialResponse = Shapes::StructureShape.new(name: 'UpdateTrialResponse')
    UpdateUserProfileRequest = Shapes::StructureShape.new(name: 'UpdateUserProfileRequest')
    UpdateUserProfileResponse = Shapes::StructureShape.new(name: 'UpdateUserProfileResponse')
    UpdateWorkforceRequest = Shapes::StructureShape.new(name: 'UpdateWorkforceRequest')
    UpdateWorkforceResponse = Shapes::StructureShape.new(name: 'UpdateWorkforceResponse')
    UpdateWorkteamRequest = Shapes::StructureShape.new(name: 'UpdateWorkteamRequest')
    UpdateWorkteamResponse = Shapes::StructureShape.new(name: 'UpdateWorkteamResponse')
    Url = Shapes::StringShape.new(name: 'Url')
    UserContext = Shapes::StructureShape.new(name: 'UserContext')
    UserProfileArn = Shapes::StringShape.new(name: 'UserProfileArn')
    UserProfileDetails = Shapes::StructureShape.new(name: 'UserProfileDetails')
    UserProfileList = Shapes::ListShape.new(name: 'UserProfileList')
    UserProfileName = Shapes::StringShape.new(name: 'UserProfileName')
    UserProfileSortKey = Shapes::StringShape.new(name: 'UserProfileSortKey')
    UserProfileStatus = Shapes::StringShape.new(name: 'UserProfileStatus')
    UserSettings = Shapes::StructureShape.new(name: 'UserSettings')
    VariantName = Shapes::StringShape.new(name: 'VariantName')
    VariantProperty = Shapes::StructureShape.new(name: 'VariantProperty')
    VariantPropertyList = Shapes::ListShape.new(name: 'VariantPropertyList')
    VariantPropertyType = Shapes::StringShape.new(name: 'VariantPropertyType')
    VariantStatus = Shapes::StringShape.new(name: 'VariantStatus')
    VariantStatusMessage = Shapes::StringShape.new(name: 'VariantStatusMessage')
    VariantWeight = Shapes::FloatShape.new(name: 'VariantWeight')
    VersionId = Shapes::StringShape.new(name: 'VersionId')
    VersionedArnOrName = Shapes::StringShape.new(name: 'VersionedArnOrName')
    Vertex = Shapes::StructureShape.new(name: 'Vertex')
    Vertices = Shapes::ListShape.new(name: 'Vertices')
    VolumeSizeInGB = Shapes::IntegerShape.new(name: 'VolumeSizeInGB')
    VpcConfig = Shapes::StructureShape.new(name: 'VpcConfig')
    VpcId = Shapes::StringShape.new(name: 'VpcId')
    VpcSecurityGroupIds = Shapes::ListShape.new(name: 'VpcSecurityGroupIds')
    WaitIntervalInSeconds = Shapes::IntegerShape.new(name: 'WaitIntervalInSeconds')
    Workforce = Shapes::StructureShape.new(name: 'Workforce')
    WorkforceArn = Shapes::StringShape.new(name: 'WorkforceArn')
    WorkforceName = Shapes::StringShape.new(name: 'WorkforceName')
    Workforces = Shapes::ListShape.new(name: 'Workforces')
    Workteam = Shapes::StructureShape.new(name: 'Workteam')
    WorkteamArn = Shapes::StringShape.new(name: 'WorkteamArn')
    WorkteamName = Shapes::StringShape.new(name: 'WorkteamName')
    Workteams = Shapes::ListShape.new(name: 'Workteams')

    ActionSource.add_member(:source_uri, Shapes::ShapeRef.new(shape: String2048, required: true, location_name: "SourceUri"))
    ActionSource.add_member(:source_type, Shapes::ShapeRef.new(shape: String256, location_name: "SourceType"))
    ActionSource.add_member(:source_id, Shapes::ShapeRef.new(shape: String256, location_name: "SourceId"))
    ActionSource.struct_class = Types::ActionSource

    ActionSummaries.member = Shapes::ShapeRef.new(shape: ActionSummary)

    ActionSummary.add_member(:action_arn, Shapes::ShapeRef.new(shape: ActionArn, location_name: "ActionArn"))
    ActionSummary.add_member(:action_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "ActionName"))
    ActionSummary.add_member(:source, Shapes::ShapeRef.new(shape: ActionSource, location_name: "Source"))
    ActionSummary.add_member(:action_type, Shapes::ShapeRef.new(shape: String64, location_name: "ActionType"))
    ActionSummary.add_member(:status, Shapes::ShapeRef.new(shape: ActionStatus, location_name: "Status"))
    ActionSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    ActionSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    ActionSummary.struct_class = Types::ActionSummary

    AddAssociationRequest.add_member(:source_arn, Shapes::ShapeRef.new(shape: AssociationEntityArn, required: true, location_name: "SourceArn"))
    AddAssociationRequest.add_member(:destination_arn, Shapes::ShapeRef.new(shape: AssociationEntityArn, required: true, location_name: "DestinationArn"))
    AddAssociationRequest.add_member(:association_type, Shapes::ShapeRef.new(shape: AssociationEdgeType, location_name: "AssociationType"))
    AddAssociationRequest.struct_class = Types::AddAssociationRequest

    AddAssociationResponse.add_member(:source_arn, Shapes::ShapeRef.new(shape: AssociationEntityArn, location_name: "SourceArn"))
    AddAssociationResponse.add_member(:destination_arn, Shapes::ShapeRef.new(shape: AssociationEntityArn, location_name: "DestinationArn"))
    AddAssociationResponse.struct_class = Types::AddAssociationResponse

    AddTagsInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    AddTagsInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    AddTagsInput.struct_class = Types::AddTagsInput

    AddTagsOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    AddTagsOutput.struct_class = Types::AddTagsOutput

    AdditionalCodeRepositoryNamesOrUrls.member = Shapes::ShapeRef.new(shape: CodeRepositoryNameOrUrl)

    AdditionalInferenceSpecificationDefinition.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    AdditionalInferenceSpecificationDefinition.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "Description"))
    AdditionalInferenceSpecificationDefinition.add_member(:containers, Shapes::ShapeRef.new(shape: ModelPackageContainerDefinitionList, required: true, location_name: "Containers"))
    AdditionalInferenceSpecificationDefinition.add_member(:supported_transform_instance_types, Shapes::ShapeRef.new(shape: TransformInstanceTypes, location_name: "SupportedTransformInstanceTypes"))
    AdditionalInferenceSpecificationDefinition.add_member(:supported_realtime_inference_instance_types, Shapes::ShapeRef.new(shape: RealtimeInferenceInstanceTypes, location_name: "SupportedRealtimeInferenceInstanceTypes"))
    AdditionalInferenceSpecificationDefinition.add_member(:supported_content_types, Shapes::ShapeRef.new(shape: ContentTypes, location_name: "SupportedContentTypes"))
    AdditionalInferenceSpecificationDefinition.add_member(:supported_response_mime_types, Shapes::ShapeRef.new(shape: ResponseMIMETypes, location_name: "SupportedResponseMIMETypes"))
    AdditionalInferenceSpecificationDefinition.struct_class = Types::AdditionalInferenceSpecificationDefinition

    AdditionalInferenceSpecifications.member = Shapes::ShapeRef.new(shape: AdditionalInferenceSpecificationDefinition)

    AgentVersion.add_member(:version, Shapes::ShapeRef.new(shape: EdgeVersion, required: true, location_name: "Version"))
    AgentVersion.add_member(:agent_count, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "AgentCount"))
    AgentVersion.struct_class = Types::AgentVersion

    AgentVersions.member = Shapes::ShapeRef.new(shape: AgentVersion)

    Alarm.add_member(:alarm_name, Shapes::ShapeRef.new(shape: AlarmName, location_name: "AlarmName"))
    Alarm.struct_class = Types::Alarm

    AlarmList.member = Shapes::ShapeRef.new(shape: Alarm)

    AlgorithmSpecification.add_member(:training_image, Shapes::ShapeRef.new(shape: AlgorithmImage, location_name: "TrainingImage"))
    AlgorithmSpecification.add_member(:algorithm_name, Shapes::ShapeRef.new(shape: ArnOrName, location_name: "AlgorithmName"))
    AlgorithmSpecification.add_member(:training_input_mode, Shapes::ShapeRef.new(shape: TrainingInputMode, required: true, location_name: "TrainingInputMode"))
    AlgorithmSpecification.add_member(:metric_definitions, Shapes::ShapeRef.new(shape: MetricDefinitionList, location_name: "MetricDefinitions"))
    AlgorithmSpecification.add_member(:enable_sage_maker_metrics_time_series, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableSageMakerMetricsTimeSeries"))
    AlgorithmSpecification.struct_class = Types::AlgorithmSpecification

    AlgorithmStatusDetails.add_member(:validation_statuses, Shapes::ShapeRef.new(shape: AlgorithmStatusItemList, location_name: "ValidationStatuses"))
    AlgorithmStatusDetails.add_member(:image_scan_statuses, Shapes::ShapeRef.new(shape: AlgorithmStatusItemList, location_name: "ImageScanStatuses"))
    AlgorithmStatusDetails.struct_class = Types::AlgorithmStatusDetails

    AlgorithmStatusItem.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    AlgorithmStatusItem.add_member(:status, Shapes::ShapeRef.new(shape: DetailedAlgorithmStatus, required: true, location_name: "Status"))
    AlgorithmStatusItem.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "FailureReason"))
    AlgorithmStatusItem.struct_class = Types::AlgorithmStatusItem

    AlgorithmStatusItemList.member = Shapes::ShapeRef.new(shape: AlgorithmStatusItem)

    AlgorithmSummary.add_member(:algorithm_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "AlgorithmName"))
    AlgorithmSummary.add_member(:algorithm_arn, Shapes::ShapeRef.new(shape: AlgorithmArn, required: true, location_name: "AlgorithmArn"))
    AlgorithmSummary.add_member(:algorithm_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "AlgorithmDescription"))
    AlgorithmSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    AlgorithmSummary.add_member(:algorithm_status, Shapes::ShapeRef.new(shape: AlgorithmStatus, required: true, location_name: "AlgorithmStatus"))
    AlgorithmSummary.struct_class = Types::AlgorithmSummary

    AlgorithmSummaryList.member = Shapes::ShapeRef.new(shape: AlgorithmSummary)

    AlgorithmValidationProfile.add_member(:profile_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "ProfileName"))
    AlgorithmValidationProfile.add_member(:training_job_definition, Shapes::ShapeRef.new(shape: TrainingJobDefinition, required: true, location_name: "TrainingJobDefinition"))
    AlgorithmValidationProfile.add_member(:transform_job_definition, Shapes::ShapeRef.new(shape: TransformJobDefinition, location_name: "TransformJobDefinition"))
    AlgorithmValidationProfile.struct_class = Types::AlgorithmValidationProfile

    AlgorithmValidationProfiles.member = Shapes::ShapeRef.new(shape: AlgorithmValidationProfile)

    AlgorithmValidationSpecification.add_member(:validation_role, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "ValidationRole"))
    AlgorithmValidationSpecification.add_member(:validation_profiles, Shapes::ShapeRef.new(shape: AlgorithmValidationProfiles, required: true, location_name: "ValidationProfiles"))
    AlgorithmValidationSpecification.struct_class = Types::AlgorithmValidationSpecification

    AnnotationConsolidationConfig.add_member(:annotation_consolidation_lambda_arn, Shapes::ShapeRef.new(shape: LambdaFunctionArn, required: true, location_name: "AnnotationConsolidationLambdaArn"))
    AnnotationConsolidationConfig.struct_class = Types::AnnotationConsolidationConfig

    AppDetails.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "DomainId"))
    AppDetails.add_member(:user_profile_name, Shapes::ShapeRef.new(shape: UserProfileName, location_name: "UserProfileName"))
    AppDetails.add_member(:app_type, Shapes::ShapeRef.new(shape: AppType, location_name: "AppType"))
    AppDetails.add_member(:app_name, Shapes::ShapeRef.new(shape: AppName, location_name: "AppName"))
    AppDetails.add_member(:status, Shapes::ShapeRef.new(shape: AppStatus, location_name: "Status"))
    AppDetails.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    AppDetails.struct_class = Types::AppDetails

    AppImageConfigDetails.add_member(:app_image_config_arn, Shapes::ShapeRef.new(shape: AppImageConfigArn, location_name: "AppImageConfigArn"))
    AppImageConfigDetails.add_member(:app_image_config_name, Shapes::ShapeRef.new(shape: AppImageConfigName, location_name: "AppImageConfigName"))
    AppImageConfigDetails.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    AppImageConfigDetails.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    AppImageConfigDetails.add_member(:kernel_gateway_image_config, Shapes::ShapeRef.new(shape: KernelGatewayImageConfig, location_name: "KernelGatewayImageConfig"))
    AppImageConfigDetails.struct_class = Types::AppImageConfigDetails

    AppImageConfigList.member = Shapes::ShapeRef.new(shape: AppImageConfigDetails)

    AppList.member = Shapes::ShapeRef.new(shape: AppDetails)

    AppSpecification.add_member(:image_uri, Shapes::ShapeRef.new(shape: ImageUri, required: true, location_name: "ImageUri"))
    AppSpecification.add_member(:container_entrypoint, Shapes::ShapeRef.new(shape: ContainerEntrypoint, location_name: "ContainerEntrypoint"))
    AppSpecification.add_member(:container_arguments, Shapes::ShapeRef.new(shape: ContainerArguments, location_name: "ContainerArguments"))
    AppSpecification.struct_class = Types::AppSpecification

    ArtifactSource.add_member(:source_uri, Shapes::ShapeRef.new(shape: String2048, required: true, location_name: "SourceUri"))
    ArtifactSource.add_member(:source_types, Shapes::ShapeRef.new(shape: ArtifactSourceTypes, location_name: "SourceTypes"))
    ArtifactSource.struct_class = Types::ArtifactSource

    ArtifactSourceType.add_member(:source_id_type, Shapes::ShapeRef.new(shape: ArtifactSourceIdType, required: true, location_name: "SourceIdType"))
    ArtifactSourceType.add_member(:value, Shapes::ShapeRef.new(shape: String256, required: true, location_name: "Value"))
    ArtifactSourceType.struct_class = Types::ArtifactSourceType

    ArtifactSourceTypes.member = Shapes::ShapeRef.new(shape: ArtifactSourceType)

    ArtifactSummaries.member = Shapes::ShapeRef.new(shape: ArtifactSummary)

    ArtifactSummary.add_member(:artifact_arn, Shapes::ShapeRef.new(shape: ArtifactArn, location_name: "ArtifactArn"))
    ArtifactSummary.add_member(:artifact_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "ArtifactName"))
    ArtifactSummary.add_member(:source, Shapes::ShapeRef.new(shape: ArtifactSource, location_name: "Source"))
    ArtifactSummary.add_member(:artifact_type, Shapes::ShapeRef.new(shape: String256, location_name: "ArtifactType"))
    ArtifactSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    ArtifactSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    ArtifactSummary.struct_class = Types::ArtifactSummary

    AssociateTrialComponentRequest.add_member(:trial_component_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "TrialComponentName"))
    AssociateTrialComponentRequest.add_member(:trial_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "TrialName"))
    AssociateTrialComponentRequest.struct_class = Types::AssociateTrialComponentRequest

    AssociateTrialComponentResponse.add_member(:trial_component_arn, Shapes::ShapeRef.new(shape: TrialComponentArn, location_name: "TrialComponentArn"))
    AssociateTrialComponentResponse.add_member(:trial_arn, Shapes::ShapeRef.new(shape: TrialArn, location_name: "TrialArn"))
    AssociateTrialComponentResponse.struct_class = Types::AssociateTrialComponentResponse

    AssociationSummaries.member = Shapes::ShapeRef.new(shape: AssociationSummary)

    AssociationSummary.add_member(:source_arn, Shapes::ShapeRef.new(shape: AssociationEntityArn, location_name: "SourceArn"))
    AssociationSummary.add_member(:destination_arn, Shapes::ShapeRef.new(shape: AssociationEntityArn, location_name: "DestinationArn"))
    AssociationSummary.add_member(:source_type, Shapes::ShapeRef.new(shape: String256, location_name: "SourceType"))
    AssociationSummary.add_member(:destination_type, Shapes::ShapeRef.new(shape: String256, location_name: "DestinationType"))
    AssociationSummary.add_member(:association_type, Shapes::ShapeRef.new(shape: AssociationEdgeType, location_name: "AssociationType"))
    AssociationSummary.add_member(:source_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "SourceName"))
    AssociationSummary.add_member(:destination_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "DestinationName"))
    AssociationSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    AssociationSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "CreatedBy"))
    AssociationSummary.struct_class = Types::AssociationSummary

    AsyncInferenceClientConfig.add_member(:max_concurrent_invocations_per_instance, Shapes::ShapeRef.new(shape: MaxConcurrentInvocationsPerInstance, location_name: "MaxConcurrentInvocationsPerInstance"))
    AsyncInferenceClientConfig.struct_class = Types::AsyncInferenceClientConfig

    AsyncInferenceConfig.add_member(:client_config, Shapes::ShapeRef.new(shape: AsyncInferenceClientConfig, location_name: "ClientConfig"))
    AsyncInferenceConfig.add_member(:output_config, Shapes::ShapeRef.new(shape: AsyncInferenceOutputConfig, required: true, location_name: "OutputConfig"))
    AsyncInferenceConfig.struct_class = Types::AsyncInferenceConfig

    AsyncInferenceNotificationConfig.add_member(:success_topic, Shapes::ShapeRef.new(shape: SnsTopicArn, location_name: "SuccessTopic"))
    AsyncInferenceNotificationConfig.add_member(:error_topic, Shapes::ShapeRef.new(shape: SnsTopicArn, location_name: "ErrorTopic"))
    AsyncInferenceNotificationConfig.struct_class = Types::AsyncInferenceNotificationConfig

    AsyncInferenceOutputConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    AsyncInferenceOutputConfig.add_member(:s3_output_path, Shapes::ShapeRef.new(shape: DestinationS3Uri, required: true, location_name: "S3OutputPath"))
    AsyncInferenceOutputConfig.add_member(:notification_config, Shapes::ShapeRef.new(shape: AsyncInferenceNotificationConfig, location_name: "NotificationConfig"))
    AsyncInferenceOutputConfig.struct_class = Types::AsyncInferenceOutputConfig

    AthenaDatasetDefinition.add_member(:catalog, Shapes::ShapeRef.new(shape: AthenaCatalog, required: true, location_name: "Catalog"))
    AthenaDatasetDefinition.add_member(:database, Shapes::ShapeRef.new(shape: AthenaDatabase, required: true, location_name: "Database"))
    AthenaDatasetDefinition.add_member(:query_string, Shapes::ShapeRef.new(shape: AthenaQueryString, required: true, location_name: "QueryString"))
    AthenaDatasetDefinition.add_member(:work_group, Shapes::ShapeRef.new(shape: AthenaWorkGroup, location_name: "WorkGroup"))
    AthenaDatasetDefinition.add_member(:output_s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "OutputS3Uri"))
    AthenaDatasetDefinition.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    AthenaDatasetDefinition.add_member(:output_format, Shapes::ShapeRef.new(shape: AthenaResultFormat, required: true, location_name: "OutputFormat"))
    AthenaDatasetDefinition.add_member(:output_compression, Shapes::ShapeRef.new(shape: AthenaResultCompressionType, location_name: "OutputCompression"))
    AthenaDatasetDefinition.struct_class = Types::AthenaDatasetDefinition

    AttributeNames.member = Shapes::ShapeRef.new(shape: AttributeName)

    AutoMLCandidate.add_member(:candidate_name, Shapes::ShapeRef.new(shape: CandidateName, required: true, location_name: "CandidateName"))
    AutoMLCandidate.add_member(:final_auto_ml_job_objective_metric, Shapes::ShapeRef.new(shape: FinalAutoMLJobObjectiveMetric, location_name: "FinalAutoMLJobObjectiveMetric"))
    AutoMLCandidate.add_member(:objective_status, Shapes::ShapeRef.new(shape: ObjectiveStatus, required: true, location_name: "ObjectiveStatus"))
    AutoMLCandidate.add_member(:candidate_steps, Shapes::ShapeRef.new(shape: CandidateSteps, required: true, location_name: "CandidateSteps"))
    AutoMLCandidate.add_member(:candidate_status, Shapes::ShapeRef.new(shape: CandidateStatus, required: true, location_name: "CandidateStatus"))
    AutoMLCandidate.add_member(:inference_containers, Shapes::ShapeRef.new(shape: AutoMLContainerDefinitions, location_name: "InferenceContainers"))
    AutoMLCandidate.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    AutoMLCandidate.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    AutoMLCandidate.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    AutoMLCandidate.add_member(:failure_reason, Shapes::ShapeRef.new(shape: AutoMLFailureReason, location_name: "FailureReason"))
    AutoMLCandidate.add_member(:candidate_properties, Shapes::ShapeRef.new(shape: CandidateProperties, location_name: "CandidateProperties"))
    AutoMLCandidate.struct_class = Types::AutoMLCandidate

    AutoMLCandidateStep.add_member(:candidate_step_type, Shapes::ShapeRef.new(shape: CandidateStepType, required: true, location_name: "CandidateStepType"))
    AutoMLCandidateStep.add_member(:candidate_step_arn, Shapes::ShapeRef.new(shape: CandidateStepArn, required: true, location_name: "CandidateStepArn"))
    AutoMLCandidateStep.add_member(:candidate_step_name, Shapes::ShapeRef.new(shape: CandidateStepName, required: true, location_name: "CandidateStepName"))
    AutoMLCandidateStep.struct_class = Types::AutoMLCandidateStep

    AutoMLCandidates.member = Shapes::ShapeRef.new(shape: AutoMLCandidate)

    AutoMLChannel.add_member(:data_source, Shapes::ShapeRef.new(shape: AutoMLDataSource, required: true, location_name: "DataSource"))
    AutoMLChannel.add_member(:compression_type, Shapes::ShapeRef.new(shape: CompressionType, location_name: "CompressionType"))
    AutoMLChannel.add_member(:target_attribute_name, Shapes::ShapeRef.new(shape: TargetAttributeName, required: true, location_name: "TargetAttributeName"))
    AutoMLChannel.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, location_name: "ContentType"))
    AutoMLChannel.struct_class = Types::AutoMLChannel

    AutoMLContainerDefinition.add_member(:image, Shapes::ShapeRef.new(shape: ContainerImage, required: true, location_name: "Image"))
    AutoMLContainerDefinition.add_member(:model_data_url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "ModelDataUrl"))
    AutoMLContainerDefinition.add_member(:environment, Shapes::ShapeRef.new(shape: EnvironmentMap, location_name: "Environment"))
    AutoMLContainerDefinition.struct_class = Types::AutoMLContainerDefinition

    AutoMLContainerDefinitions.member = Shapes::ShapeRef.new(shape: AutoMLContainerDefinition)

    AutoMLDataSource.add_member(:s3_data_source, Shapes::ShapeRef.new(shape: AutoMLS3DataSource, required: true, location_name: "S3DataSource"))
    AutoMLDataSource.struct_class = Types::AutoMLDataSource

    AutoMLInputDataConfig.member = Shapes::ShapeRef.new(shape: AutoMLChannel)

    AutoMLJobArtifacts.add_member(:candidate_definition_notebook_location, Shapes::ShapeRef.new(shape: CandidateDefinitionNotebookLocation, location_name: "CandidateDefinitionNotebookLocation"))
    AutoMLJobArtifacts.add_member(:data_exploration_notebook_location, Shapes::ShapeRef.new(shape: DataExplorationNotebookLocation, location_name: "DataExplorationNotebookLocation"))
    AutoMLJobArtifacts.struct_class = Types::AutoMLJobArtifacts

    AutoMLJobCompletionCriteria.add_member(:max_candidates, Shapes::ShapeRef.new(shape: MaxCandidates, location_name: "MaxCandidates"))
    AutoMLJobCompletionCriteria.add_member(:max_runtime_per_training_job_in_seconds, Shapes::ShapeRef.new(shape: MaxRuntimePerTrainingJobInSeconds, location_name: "MaxRuntimePerTrainingJobInSeconds"))
    AutoMLJobCompletionCriteria.add_member(:max_auto_ml_job_runtime_in_seconds, Shapes::ShapeRef.new(shape: MaxAutoMLJobRuntimeInSeconds, location_name: "MaxAutoMLJobRuntimeInSeconds"))
    AutoMLJobCompletionCriteria.struct_class = Types::AutoMLJobCompletionCriteria

    AutoMLJobConfig.add_member(:completion_criteria, Shapes::ShapeRef.new(shape: AutoMLJobCompletionCriteria, location_name: "CompletionCriteria"))
    AutoMLJobConfig.add_member(:security_config, Shapes::ShapeRef.new(shape: AutoMLSecurityConfig, location_name: "SecurityConfig"))
    AutoMLJobConfig.struct_class = Types::AutoMLJobConfig

    AutoMLJobObjective.add_member(:metric_name, Shapes::ShapeRef.new(shape: AutoMLMetricEnum, required: true, location_name: "MetricName"))
    AutoMLJobObjective.struct_class = Types::AutoMLJobObjective

    AutoMLJobSummaries.member = Shapes::ShapeRef.new(shape: AutoMLJobSummary)

    AutoMLJobSummary.add_member(:auto_ml_job_name, Shapes::ShapeRef.new(shape: AutoMLJobName, required: true, location_name: "AutoMLJobName"))
    AutoMLJobSummary.add_member(:auto_ml_job_arn, Shapes::ShapeRef.new(shape: AutoMLJobArn, required: true, location_name: "AutoMLJobArn"))
    AutoMLJobSummary.add_member(:auto_ml_job_status, Shapes::ShapeRef.new(shape: AutoMLJobStatus, required: true, location_name: "AutoMLJobStatus"))
    AutoMLJobSummary.add_member(:auto_ml_job_secondary_status, Shapes::ShapeRef.new(shape: AutoMLJobSecondaryStatus, required: true, location_name: "AutoMLJobSecondaryStatus"))
    AutoMLJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    AutoMLJobSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    AutoMLJobSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    AutoMLJobSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: AutoMLFailureReason, location_name: "FailureReason"))
    AutoMLJobSummary.add_member(:partial_failure_reasons, Shapes::ShapeRef.new(shape: AutoMLPartialFailureReasons, location_name: "PartialFailureReasons"))
    AutoMLJobSummary.struct_class = Types::AutoMLJobSummary

    AutoMLOutputDataConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    AutoMLOutputDataConfig.add_member(:s3_output_path, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3OutputPath"))
    AutoMLOutputDataConfig.struct_class = Types::AutoMLOutputDataConfig

    AutoMLPartialFailureReason.add_member(:partial_failure_message, Shapes::ShapeRef.new(shape: AutoMLFailureReason, location_name: "PartialFailureMessage"))
    AutoMLPartialFailureReason.struct_class = Types::AutoMLPartialFailureReason

    AutoMLPartialFailureReasons.member = Shapes::ShapeRef.new(shape: AutoMLPartialFailureReason)

    AutoMLS3DataSource.add_member(:s3_data_type, Shapes::ShapeRef.new(shape: AutoMLS3DataType, required: true, location_name: "S3DataType"))
    AutoMLS3DataSource.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    AutoMLS3DataSource.struct_class = Types::AutoMLS3DataSource

    AutoMLSecurityConfig.add_member(:volume_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "VolumeKmsKeyId"))
    AutoMLSecurityConfig.add_member(:enable_inter_container_traffic_encryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableInterContainerTrafficEncryption"))
    AutoMLSecurityConfig.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    AutoMLSecurityConfig.struct_class = Types::AutoMLSecurityConfig

    AutoRollbackConfig.add_member(:alarms, Shapes::ShapeRef.new(shape: AlarmList, location_name: "Alarms"))
    AutoRollbackConfig.struct_class = Types::AutoRollbackConfig

    BatchDescribeModelPackageError.add_member(:error_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ErrorCode"))
    BatchDescribeModelPackageError.add_member(:error_response, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ErrorResponse"))
    BatchDescribeModelPackageError.struct_class = Types::BatchDescribeModelPackageError

    BatchDescribeModelPackageErrorMap.key = Shapes::ShapeRef.new(shape: ModelPackageArn)
    BatchDescribeModelPackageErrorMap.value = Shapes::ShapeRef.new(shape: BatchDescribeModelPackageError)

    BatchDescribeModelPackageInput.add_member(:model_package_arn_list, Shapes::ShapeRef.new(shape: ModelPackageArnList, required: true, location_name: "ModelPackageArnList"))
    BatchDescribeModelPackageInput.struct_class = Types::BatchDescribeModelPackageInput

    BatchDescribeModelPackageOutput.add_member(:model_package_summaries, Shapes::ShapeRef.new(shape: ModelPackageSummaries, location_name: "ModelPackageSummaries"))
    BatchDescribeModelPackageOutput.add_member(:batch_describe_model_package_error_map, Shapes::ShapeRef.new(shape: BatchDescribeModelPackageErrorMap, location_name: "BatchDescribeModelPackageErrorMap"))
    BatchDescribeModelPackageOutput.struct_class = Types::BatchDescribeModelPackageOutput

    BatchDescribeModelPackageSummary.add_member(:model_package_group_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "ModelPackageGroupName"))
    BatchDescribeModelPackageSummary.add_member(:model_package_version, Shapes::ShapeRef.new(shape: ModelPackageVersion, location_name: "ModelPackageVersion"))
    BatchDescribeModelPackageSummary.add_member(:model_package_arn, Shapes::ShapeRef.new(shape: ModelPackageArn, required: true, location_name: "ModelPackageArn"))
    BatchDescribeModelPackageSummary.add_member(:model_package_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "ModelPackageDescription"))
    BatchDescribeModelPackageSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    BatchDescribeModelPackageSummary.add_member(:inference_specification, Shapes::ShapeRef.new(shape: InferenceSpecification, required: true, location_name: "InferenceSpecification"))
    BatchDescribeModelPackageSummary.add_member(:model_package_status, Shapes::ShapeRef.new(shape: ModelPackageStatus, required: true, location_name: "ModelPackageStatus"))
    BatchDescribeModelPackageSummary.add_member(:model_approval_status, Shapes::ShapeRef.new(shape: ModelApprovalStatus, location_name: "ModelApprovalStatus"))
    BatchDescribeModelPackageSummary.struct_class = Types::BatchDescribeModelPackageSummary

    Bias.add_member(:report, Shapes::ShapeRef.new(shape: MetricsSource, location_name: "Report"))
    Bias.add_member(:pre_training_report, Shapes::ShapeRef.new(shape: MetricsSource, location_name: "PreTrainingReport"))
    Bias.add_member(:post_training_report, Shapes::ShapeRef.new(shape: MetricsSource, location_name: "PostTrainingReport"))
    Bias.struct_class = Types::Bias

    BlueGreenUpdatePolicy.add_member(:traffic_routing_configuration, Shapes::ShapeRef.new(shape: TrafficRoutingConfig, required: true, location_name: "TrafficRoutingConfiguration"))
    BlueGreenUpdatePolicy.add_member(:termination_wait_in_seconds, Shapes::ShapeRef.new(shape: TerminationWaitInSeconds, location_name: "TerminationWaitInSeconds"))
    BlueGreenUpdatePolicy.add_member(:maximum_execution_timeout_in_seconds, Shapes::ShapeRef.new(shape: MaximumExecutionTimeoutInSeconds, location_name: "MaximumExecutionTimeoutInSeconds"))
    BlueGreenUpdatePolicy.struct_class = Types::BlueGreenUpdatePolicy

    CacheHitResult.add_member(:source_pipeline_execution_arn, Shapes::ShapeRef.new(shape: PipelineExecutionArn, location_name: "SourcePipelineExecutionArn"))
    CacheHitResult.struct_class = Types::CacheHitResult

    CallbackStepMetadata.add_member(:callback_token, Shapes::ShapeRef.new(shape: CallbackToken, location_name: "CallbackToken"))
    CallbackStepMetadata.add_member(:sqs_queue_url, Shapes::ShapeRef.new(shape: String256, location_name: "SqsQueueUrl"))
    CallbackStepMetadata.add_member(:output_parameters, Shapes::ShapeRef.new(shape: OutputParameterList, location_name: "OutputParameters"))
    CallbackStepMetadata.struct_class = Types::CallbackStepMetadata

    CandidateArtifactLocations.add_member(:explainability, Shapes::ShapeRef.new(shape: ExplainabilityLocation, required: true, location_name: "Explainability"))
    CandidateArtifactLocations.add_member(:model_insights, Shapes::ShapeRef.new(shape: ModelInsightsLocation, location_name: "ModelInsights"))
    CandidateArtifactLocations.struct_class = Types::CandidateArtifactLocations

    CandidateProperties.add_member(:candidate_artifact_locations, Shapes::ShapeRef.new(shape: CandidateArtifactLocations, location_name: "CandidateArtifactLocations"))
    CandidateProperties.add_member(:candidate_metrics, Shapes::ShapeRef.new(shape: MetricDataList, location_name: "CandidateMetrics"))
    CandidateProperties.struct_class = Types::CandidateProperties

    CandidateSteps.member = Shapes::ShapeRef.new(shape: AutoMLCandidateStep)

    CapacitySize.add_member(:type, Shapes::ShapeRef.new(shape: CapacitySizeType, required: true, location_name: "Type"))
    CapacitySize.add_member(:value, Shapes::ShapeRef.new(shape: CapacitySizeValue, required: true, location_name: "Value"))
    CapacitySize.struct_class = Types::CapacitySize

    CaptureContentTypeHeader.add_member(:csv_content_types, Shapes::ShapeRef.new(shape: CsvContentTypes, location_name: "CsvContentTypes"))
    CaptureContentTypeHeader.add_member(:json_content_types, Shapes::ShapeRef.new(shape: JsonContentTypes, location_name: "JsonContentTypes"))
    CaptureContentTypeHeader.struct_class = Types::CaptureContentTypeHeader

    CaptureOption.add_member(:capture_mode, Shapes::ShapeRef.new(shape: CaptureMode, required: true, location_name: "CaptureMode"))
    CaptureOption.struct_class = Types::CaptureOption

    CaptureOptionList.member = Shapes::ShapeRef.new(shape: CaptureOption)

    CategoricalParameter.add_member(:name, Shapes::ShapeRef.new(shape: String64, required: true, location_name: "Name"))
    CategoricalParameter.add_member(:value, Shapes::ShapeRef.new(shape: CategoricalParameterRangeValues, required: true, location_name: "Value"))
    CategoricalParameter.struct_class = Types::CategoricalParameter

    CategoricalParameterRange.add_member(:name, Shapes::ShapeRef.new(shape: ParameterKey, required: true, location_name: "Name"))
    CategoricalParameterRange.add_member(:values, Shapes::ShapeRef.new(shape: ParameterValues, required: true, location_name: "Values"))
    CategoricalParameterRange.struct_class = Types::CategoricalParameterRange

    CategoricalParameterRangeSpecification.add_member(:values, Shapes::ShapeRef.new(shape: ParameterValues, required: true, location_name: "Values"))
    CategoricalParameterRangeSpecification.struct_class = Types::CategoricalParameterRangeSpecification

    CategoricalParameterRangeValues.member = Shapes::ShapeRef.new(shape: String128)

    CategoricalParameterRanges.member = Shapes::ShapeRef.new(shape: CategoricalParameterRange)

    CategoricalParameters.member = Shapes::ShapeRef.new(shape: CategoricalParameter)

    Channel.add_member(:channel_name, Shapes::ShapeRef.new(shape: ChannelName, required: true, location_name: "ChannelName"))
    Channel.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, required: true, location_name: "DataSource"))
    Channel.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, location_name: "ContentType"))
    Channel.add_member(:compression_type, Shapes::ShapeRef.new(shape: CompressionType, location_name: "CompressionType"))
    Channel.add_member(:record_wrapper_type, Shapes::ShapeRef.new(shape: RecordWrapper, location_name: "RecordWrapperType"))
    Channel.add_member(:input_mode, Shapes::ShapeRef.new(shape: TrainingInputMode, location_name: "InputMode"))
    Channel.add_member(:shuffle_config, Shapes::ShapeRef.new(shape: ShuffleConfig, location_name: "ShuffleConfig"))
    Channel.struct_class = Types::Channel

    ChannelSpecification.add_member(:name, Shapes::ShapeRef.new(shape: ChannelName, required: true, location_name: "Name"))
    ChannelSpecification.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "Description"))
    ChannelSpecification.add_member(:is_required, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsRequired"))
    ChannelSpecification.add_member(:supported_content_types, Shapes::ShapeRef.new(shape: ContentTypes, required: true, location_name: "SupportedContentTypes"))
    ChannelSpecification.add_member(:supported_compression_types, Shapes::ShapeRef.new(shape: CompressionTypes, location_name: "SupportedCompressionTypes"))
    ChannelSpecification.add_member(:supported_input_modes, Shapes::ShapeRef.new(shape: InputModes, required: true, location_name: "SupportedInputModes"))
    ChannelSpecification.struct_class = Types::ChannelSpecification

    ChannelSpecifications.member = Shapes::ShapeRef.new(shape: ChannelSpecification)

    CheckpointConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    CheckpointConfig.add_member(:local_path, Shapes::ShapeRef.new(shape: DirectoryPath, location_name: "LocalPath"))
    CheckpointConfig.struct_class = Types::CheckpointConfig

    Cidrs.member = Shapes::ShapeRef.new(shape: Cidr)

    ClarifyCheckStepMetadata.add_member(:check_type, Shapes::ShapeRef.new(shape: String256, location_name: "CheckType"))
    ClarifyCheckStepMetadata.add_member(:baseline_used_for_drift_check_constraints, Shapes::ShapeRef.new(shape: String1024, location_name: "BaselineUsedForDriftCheckConstraints"))
    ClarifyCheckStepMetadata.add_member(:calculated_baseline_constraints, Shapes::ShapeRef.new(shape: String1024, location_name: "CalculatedBaselineConstraints"))
    ClarifyCheckStepMetadata.add_member(:model_package_group_name, Shapes::ShapeRef.new(shape: String256, location_name: "ModelPackageGroupName"))
    ClarifyCheckStepMetadata.add_member(:violation_report, Shapes::ShapeRef.new(shape: String1024, location_name: "ViolationReport"))
    ClarifyCheckStepMetadata.add_member(:check_job_arn, Shapes::ShapeRef.new(shape: String256, location_name: "CheckJobArn"))
    ClarifyCheckStepMetadata.add_member(:skip_check, Shapes::ShapeRef.new(shape: Boolean, location_name: "SkipCheck"))
    ClarifyCheckStepMetadata.add_member(:register_new_baseline, Shapes::ShapeRef.new(shape: Boolean, location_name: "RegisterNewBaseline"))
    ClarifyCheckStepMetadata.struct_class = Types::ClarifyCheckStepMetadata

    CodeRepositorySummary.add_member(:code_repository_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "CodeRepositoryName"))
    CodeRepositorySummary.add_member(:code_repository_arn, Shapes::ShapeRef.new(shape: CodeRepositoryArn, required: true, location_name: "CodeRepositoryArn"))
    CodeRepositorySummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    CodeRepositorySummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastModifiedTime, required: true, location_name: "LastModifiedTime"))
    CodeRepositorySummary.add_member(:git_config, Shapes::ShapeRef.new(shape: GitConfig, location_name: "GitConfig"))
    CodeRepositorySummary.struct_class = Types::CodeRepositorySummary

    CodeRepositorySummaryList.member = Shapes::ShapeRef.new(shape: CodeRepositorySummary)

    CognitoConfig.add_member(:user_pool, Shapes::ShapeRef.new(shape: CognitoUserPool, required: true, location_name: "UserPool"))
    CognitoConfig.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, required: true, location_name: "ClientId"))
    CognitoConfig.struct_class = Types::CognitoConfig

    CognitoMemberDefinition.add_member(:user_pool, Shapes::ShapeRef.new(shape: CognitoUserPool, required: true, location_name: "UserPool"))
    CognitoMemberDefinition.add_member(:user_group, Shapes::ShapeRef.new(shape: CognitoUserGroup, required: true, location_name: "UserGroup"))
    CognitoMemberDefinition.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, required: true, location_name: "ClientId"))
    CognitoMemberDefinition.struct_class = Types::CognitoMemberDefinition

    CollectionConfiguration.add_member(:collection_name, Shapes::ShapeRef.new(shape: CollectionName, location_name: "CollectionName"))
    CollectionConfiguration.add_member(:collection_parameters, Shapes::ShapeRef.new(shape: CollectionParameters, location_name: "CollectionParameters"))
    CollectionConfiguration.struct_class = Types::CollectionConfiguration

    CollectionConfigurations.member = Shapes::ShapeRef.new(shape: CollectionConfiguration)

    CollectionParameters.key = Shapes::ShapeRef.new(shape: ConfigKey)
    CollectionParameters.value = Shapes::ShapeRef.new(shape: ConfigValue)

    CompilationJobSummaries.member = Shapes::ShapeRef.new(shape: CompilationJobSummary)

    CompilationJobSummary.add_member(:compilation_job_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "CompilationJobName"))
    CompilationJobSummary.add_member(:compilation_job_arn, Shapes::ShapeRef.new(shape: CompilationJobArn, required: true, location_name: "CompilationJobArn"))
    CompilationJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    CompilationJobSummary.add_member(:compilation_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompilationStartTime"))
    CompilationJobSummary.add_member(:compilation_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompilationEndTime"))
    CompilationJobSummary.add_member(:compilation_target_device, Shapes::ShapeRef.new(shape: TargetDevice, location_name: "CompilationTargetDevice"))
    CompilationJobSummary.add_member(:compilation_target_platform_os, Shapes::ShapeRef.new(shape: TargetPlatformOs, location_name: "CompilationTargetPlatformOs"))
    CompilationJobSummary.add_member(:compilation_target_platform_arch, Shapes::ShapeRef.new(shape: TargetPlatformArch, location_name: "CompilationTargetPlatformArch"))
    CompilationJobSummary.add_member(:compilation_target_platform_accelerator, Shapes::ShapeRef.new(shape: TargetPlatformAccelerator, location_name: "CompilationTargetPlatformAccelerator"))
    CompilationJobSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTime"))
    CompilationJobSummary.add_member(:compilation_job_status, Shapes::ShapeRef.new(shape: CompilationJobStatus, required: true, location_name: "CompilationJobStatus"))
    CompilationJobSummary.struct_class = Types::CompilationJobSummary

    CompressionTypes.member = Shapes::ShapeRef.new(shape: CompressionType)

    ConditionStepMetadata.add_member(:outcome, Shapes::ShapeRef.new(shape: ConditionOutcome, location_name: "Outcome"))
    ConditionStepMetadata.struct_class = Types::ConditionStepMetadata

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: FailureReason, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    ContainerArguments.member = Shapes::ShapeRef.new(shape: ContainerArgument)

    ContainerDefinition.add_member(:container_hostname, Shapes::ShapeRef.new(shape: ContainerHostname, location_name: "ContainerHostname"))
    ContainerDefinition.add_member(:image, Shapes::ShapeRef.new(shape: ContainerImage, location_name: "Image"))
    ContainerDefinition.add_member(:image_config, Shapes::ShapeRef.new(shape: ImageConfig, location_name: "ImageConfig"))
    ContainerDefinition.add_member(:mode, Shapes::ShapeRef.new(shape: ContainerMode, location_name: "Mode"))
    ContainerDefinition.add_member(:model_data_url, Shapes::ShapeRef.new(shape: Url, location_name: "ModelDataUrl"))
    ContainerDefinition.add_member(:environment, Shapes::ShapeRef.new(shape: EnvironmentMap, location_name: "Environment"))
    ContainerDefinition.add_member(:model_package_name, Shapes::ShapeRef.new(shape: VersionedArnOrName, location_name: "ModelPackageName"))
    ContainerDefinition.add_member(:inference_specification_name, Shapes::ShapeRef.new(shape: InferenceSpecificationName, location_name: "InferenceSpecificationName"))
    ContainerDefinition.add_member(:multi_model_config, Shapes::ShapeRef.new(shape: MultiModelConfig, location_name: "MultiModelConfig"))
    ContainerDefinition.struct_class = Types::ContainerDefinition

    ContainerDefinitionList.member = Shapes::ShapeRef.new(shape: ContainerDefinition)

    ContainerEntrypoint.member = Shapes::ShapeRef.new(shape: ContainerEntrypointString)

    ContentClassifiers.member = Shapes::ShapeRef.new(shape: ContentClassifier)

    ContentTypes.member = Shapes::ShapeRef.new(shape: ContentType)

    ContextSource.add_member(:source_uri, Shapes::ShapeRef.new(shape: String2048, required: true, location_name: "SourceUri"))
    ContextSource.add_member(:source_type, Shapes::ShapeRef.new(shape: String256, location_name: "SourceType"))
    ContextSource.add_member(:source_id, Shapes::ShapeRef.new(shape: String256, location_name: "SourceId"))
    ContextSource.struct_class = Types::ContextSource

    ContextSummaries.member = Shapes::ShapeRef.new(shape: ContextSummary)

    ContextSummary.add_member(:context_arn, Shapes::ShapeRef.new(shape: ContextArn, location_name: "ContextArn"))
    ContextSummary.add_member(:context_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "ContextName"))
    ContextSummary.add_member(:source, Shapes::ShapeRef.new(shape: ContextSource, location_name: "Source"))
    ContextSummary.add_member(:context_type, Shapes::ShapeRef.new(shape: String256, location_name: "ContextType"))
    ContextSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    ContextSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    ContextSummary.struct_class = Types::ContextSummary

    ContinuousParameterRange.add_member(:name, Shapes::ShapeRef.new(shape: ParameterKey, required: true, location_name: "Name"))
    ContinuousParameterRange.add_member(:min_value, Shapes::ShapeRef.new(shape: ParameterValue, required: true, location_name: "MinValue"))
    ContinuousParameterRange.add_member(:max_value, Shapes::ShapeRef.new(shape: ParameterValue, required: true, location_name: "MaxValue"))
    ContinuousParameterRange.add_member(:scaling_type, Shapes::ShapeRef.new(shape: HyperParameterScalingType, location_name: "ScalingType"))
    ContinuousParameterRange.struct_class = Types::ContinuousParameterRange

    ContinuousParameterRangeSpecification.add_member(:min_value, Shapes::ShapeRef.new(shape: ParameterValue, required: true, location_name: "MinValue"))
    ContinuousParameterRangeSpecification.add_member(:max_value, Shapes::ShapeRef.new(shape: ParameterValue, required: true, location_name: "MaxValue"))
    ContinuousParameterRangeSpecification.struct_class = Types::ContinuousParameterRangeSpecification

    ContinuousParameterRanges.member = Shapes::ShapeRef.new(shape: ContinuousParameterRange)

    CreateActionRequest.add_member(:action_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "ActionName"))
    CreateActionRequest.add_member(:source, Shapes::ShapeRef.new(shape: ActionSource, required: true, location_name: "Source"))
    CreateActionRequest.add_member(:action_type, Shapes::ShapeRef.new(shape: String256, required: true, location_name: "ActionType"))
    CreateActionRequest.add_member(:description, Shapes::ShapeRef.new(shape: ExperimentDescription, location_name: "Description"))
    CreateActionRequest.add_member(:status, Shapes::ShapeRef.new(shape: ActionStatus, location_name: "Status"))
    CreateActionRequest.add_member(:properties, Shapes::ShapeRef.new(shape: LineageEntityParameters, location_name: "Properties"))
    CreateActionRequest.add_member(:metadata_properties, Shapes::ShapeRef.new(shape: MetadataProperties, location_name: "MetadataProperties"))
    CreateActionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateActionRequest.struct_class = Types::CreateActionRequest

    CreateActionResponse.add_member(:action_arn, Shapes::ShapeRef.new(shape: ActionArn, location_name: "ActionArn"))
    CreateActionResponse.struct_class = Types::CreateActionResponse

    CreateAlgorithmInput.add_member(:algorithm_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "AlgorithmName"))
    CreateAlgorithmInput.add_member(:algorithm_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "AlgorithmDescription"))
    CreateAlgorithmInput.add_member(:training_specification, Shapes::ShapeRef.new(shape: TrainingSpecification, required: true, location_name: "TrainingSpecification"))
    CreateAlgorithmInput.add_member(:inference_specification, Shapes::ShapeRef.new(shape: InferenceSpecification, location_name: "InferenceSpecification"))
    CreateAlgorithmInput.add_member(:validation_specification, Shapes::ShapeRef.new(shape: AlgorithmValidationSpecification, location_name: "ValidationSpecification"))
    CreateAlgorithmInput.add_member(:certify_for_marketplace, Shapes::ShapeRef.new(shape: CertifyForMarketplace, location_name: "CertifyForMarketplace"))
    CreateAlgorithmInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateAlgorithmInput.struct_class = Types::CreateAlgorithmInput

    CreateAlgorithmOutput.add_member(:algorithm_arn, Shapes::ShapeRef.new(shape: AlgorithmArn, required: true, location_name: "AlgorithmArn"))
    CreateAlgorithmOutput.struct_class = Types::CreateAlgorithmOutput

    CreateAppImageConfigRequest.add_member(:app_image_config_name, Shapes::ShapeRef.new(shape: AppImageConfigName, required: true, location_name: "AppImageConfigName"))
    CreateAppImageConfigRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateAppImageConfigRequest.add_member(:kernel_gateway_image_config, Shapes::ShapeRef.new(shape: KernelGatewayImageConfig, location_name: "KernelGatewayImageConfig"))
    CreateAppImageConfigRequest.struct_class = Types::CreateAppImageConfigRequest

    CreateAppImageConfigResponse.add_member(:app_image_config_arn, Shapes::ShapeRef.new(shape: AppImageConfigArn, location_name: "AppImageConfigArn"))
    CreateAppImageConfigResponse.struct_class = Types::CreateAppImageConfigResponse

    CreateAppRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    CreateAppRequest.add_member(:user_profile_name, Shapes::ShapeRef.new(shape: UserProfileName, required: true, location_name: "UserProfileName"))
    CreateAppRequest.add_member(:app_type, Shapes::ShapeRef.new(shape: AppType, required: true, location_name: "AppType"))
    CreateAppRequest.add_member(:app_name, Shapes::ShapeRef.new(shape: AppName, required: true, location_name: "AppName"))
    CreateAppRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateAppRequest.add_member(:resource_spec, Shapes::ShapeRef.new(shape: ResourceSpec, location_name: "ResourceSpec"))
    CreateAppRequest.struct_class = Types::CreateAppRequest

    CreateAppResponse.add_member(:app_arn, Shapes::ShapeRef.new(shape: AppArn, location_name: "AppArn"))
    CreateAppResponse.struct_class = Types::CreateAppResponse

    CreateArtifactRequest.add_member(:artifact_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "ArtifactName"))
    CreateArtifactRequest.add_member(:source, Shapes::ShapeRef.new(shape: ArtifactSource, required: true, location_name: "Source"))
    CreateArtifactRequest.add_member(:artifact_type, Shapes::ShapeRef.new(shape: String256, required: true, location_name: "ArtifactType"))
    CreateArtifactRequest.add_member(:properties, Shapes::ShapeRef.new(shape: LineageEntityParameters, location_name: "Properties"))
    CreateArtifactRequest.add_member(:metadata_properties, Shapes::ShapeRef.new(shape: MetadataProperties, location_name: "MetadataProperties"))
    CreateArtifactRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateArtifactRequest.struct_class = Types::CreateArtifactRequest

    CreateArtifactResponse.add_member(:artifact_arn, Shapes::ShapeRef.new(shape: ArtifactArn, location_name: "ArtifactArn"))
    CreateArtifactResponse.struct_class = Types::CreateArtifactResponse

    CreateAutoMLJobRequest.add_member(:auto_ml_job_name, Shapes::ShapeRef.new(shape: AutoMLJobName, required: true, location_name: "AutoMLJobName"))
    CreateAutoMLJobRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: AutoMLInputDataConfig, required: true, location_name: "InputDataConfig"))
    CreateAutoMLJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: AutoMLOutputDataConfig, required: true, location_name: "OutputDataConfig"))
    CreateAutoMLJobRequest.add_member(:problem_type, Shapes::ShapeRef.new(shape: ProblemType, location_name: "ProblemType"))
    CreateAutoMLJobRequest.add_member(:auto_ml_job_objective, Shapes::ShapeRef.new(shape: AutoMLJobObjective, location_name: "AutoMLJobObjective"))
    CreateAutoMLJobRequest.add_member(:auto_ml_job_config, Shapes::ShapeRef.new(shape: AutoMLJobConfig, location_name: "AutoMLJobConfig"))
    CreateAutoMLJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateAutoMLJobRequest.add_member(:generate_candidate_definitions_only, Shapes::ShapeRef.new(shape: GenerateCandidateDefinitionsOnly, location_name: "GenerateCandidateDefinitionsOnly"))
    CreateAutoMLJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateAutoMLJobRequest.add_member(:model_deploy_config, Shapes::ShapeRef.new(shape: ModelDeployConfig, location_name: "ModelDeployConfig"))
    CreateAutoMLJobRequest.struct_class = Types::CreateAutoMLJobRequest

    CreateAutoMLJobResponse.add_member(:auto_ml_job_arn, Shapes::ShapeRef.new(shape: AutoMLJobArn, required: true, location_name: "AutoMLJobArn"))
    CreateAutoMLJobResponse.struct_class = Types::CreateAutoMLJobResponse

    CreateCodeRepositoryInput.add_member(:code_repository_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "CodeRepositoryName"))
    CreateCodeRepositoryInput.add_member(:git_config, Shapes::ShapeRef.new(shape: GitConfig, required: true, location_name: "GitConfig"))
    CreateCodeRepositoryInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateCodeRepositoryInput.struct_class = Types::CreateCodeRepositoryInput

    CreateCodeRepositoryOutput.add_member(:code_repository_arn, Shapes::ShapeRef.new(shape: CodeRepositoryArn, required: true, location_name: "CodeRepositoryArn"))
    CreateCodeRepositoryOutput.struct_class = Types::CreateCodeRepositoryOutput

    CreateCompilationJobRequest.add_member(:compilation_job_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "CompilationJobName"))
    CreateCompilationJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateCompilationJobRequest.add_member(:model_package_version_arn, Shapes::ShapeRef.new(shape: ModelPackageArn, location_name: "ModelPackageVersionArn"))
    CreateCompilationJobRequest.add_member(:input_config, Shapes::ShapeRef.new(shape: InputConfig, location_name: "InputConfig"))
    CreateCompilationJobRequest.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, required: true, location_name: "OutputConfig"))
    CreateCompilationJobRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: NeoVpcConfig, location_name: "VpcConfig"))
    CreateCompilationJobRequest.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: StoppingCondition, required: true, location_name: "StoppingCondition"))
    CreateCompilationJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateCompilationJobRequest.struct_class = Types::CreateCompilationJobRequest

    CreateCompilationJobResponse.add_member(:compilation_job_arn, Shapes::ShapeRef.new(shape: CompilationJobArn, required: true, location_name: "CompilationJobArn"))
    CreateCompilationJobResponse.struct_class = Types::CreateCompilationJobResponse

    CreateContextRequest.add_member(:context_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "ContextName"))
    CreateContextRequest.add_member(:source, Shapes::ShapeRef.new(shape: ContextSource, required: true, location_name: "Source"))
    CreateContextRequest.add_member(:context_type, Shapes::ShapeRef.new(shape: String256, required: true, location_name: "ContextType"))
    CreateContextRequest.add_member(:description, Shapes::ShapeRef.new(shape: ExperimentDescription, location_name: "Description"))
    CreateContextRequest.add_member(:properties, Shapes::ShapeRef.new(shape: LineageEntityParameters, location_name: "Properties"))
    CreateContextRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateContextRequest.struct_class = Types::CreateContextRequest

    CreateContextResponse.add_member(:context_arn, Shapes::ShapeRef.new(shape: ContextArn, location_name: "ContextArn"))
    CreateContextResponse.struct_class = Types::CreateContextResponse

    CreateDataQualityJobDefinitionRequest.add_member(:job_definition_name, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionName, required: true, location_name: "JobDefinitionName"))
    CreateDataQualityJobDefinitionRequest.add_member(:data_quality_baseline_config, Shapes::ShapeRef.new(shape: DataQualityBaselineConfig, location_name: "DataQualityBaselineConfig"))
    CreateDataQualityJobDefinitionRequest.add_member(:data_quality_app_specification, Shapes::ShapeRef.new(shape: DataQualityAppSpecification, required: true, location_name: "DataQualityAppSpecification"))
    CreateDataQualityJobDefinitionRequest.add_member(:data_quality_job_input, Shapes::ShapeRef.new(shape: DataQualityJobInput, required: true, location_name: "DataQualityJobInput"))
    CreateDataQualityJobDefinitionRequest.add_member(:data_quality_job_output_config, Shapes::ShapeRef.new(shape: MonitoringOutputConfig, required: true, location_name: "DataQualityJobOutputConfig"))
    CreateDataQualityJobDefinitionRequest.add_member(:job_resources, Shapes::ShapeRef.new(shape: MonitoringResources, required: true, location_name: "JobResources"))
    CreateDataQualityJobDefinitionRequest.add_member(:network_config, Shapes::ShapeRef.new(shape: MonitoringNetworkConfig, location_name: "NetworkConfig"))
    CreateDataQualityJobDefinitionRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateDataQualityJobDefinitionRequest.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: MonitoringStoppingCondition, location_name: "StoppingCondition"))
    CreateDataQualityJobDefinitionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDataQualityJobDefinitionRequest.struct_class = Types::CreateDataQualityJobDefinitionRequest

    CreateDataQualityJobDefinitionResponse.add_member(:job_definition_arn, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionArn, required: true, location_name: "JobDefinitionArn"))
    CreateDataQualityJobDefinitionResponse.struct_class = Types::CreateDataQualityJobDefinitionResponse

    CreateDeviceFleetRequest.add_member(:device_fleet_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "DeviceFleetName"))
    CreateDeviceFleetRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    CreateDeviceFleetRequest.add_member(:description, Shapes::ShapeRef.new(shape: DeviceFleetDescription, location_name: "Description"))
    CreateDeviceFleetRequest.add_member(:output_config, Shapes::ShapeRef.new(shape: EdgeOutputConfig, required: true, location_name: "OutputConfig"))
    CreateDeviceFleetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDeviceFleetRequest.add_member(:enable_iot_role_alias, Shapes::ShapeRef.new(shape: EnableIotRoleAlias, location_name: "EnableIotRoleAlias"))
    CreateDeviceFleetRequest.struct_class = Types::CreateDeviceFleetRequest

    CreateDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    CreateDomainRequest.add_member(:auth_mode, Shapes::ShapeRef.new(shape: AuthMode, required: true, location_name: "AuthMode"))
    CreateDomainRequest.add_member(:default_user_settings, Shapes::ShapeRef.new(shape: UserSettings, required: true, location_name: "DefaultUserSettings"))
    CreateDomainRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: Subnets, required: true, location_name: "SubnetIds"))
    CreateDomainRequest.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, required: true, location_name: "VpcId"))
    CreateDomainRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDomainRequest.add_member(:app_network_access_type, Shapes::ShapeRef.new(shape: AppNetworkAccessType, location_name: "AppNetworkAccessType"))
    CreateDomainRequest.add_member(:home_efs_file_system_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, deprecated: true, location_name: "HomeEfsFileSystemKmsKeyId", metadata: {"deprecatedMessage"=>"This property is deprecated, use KmsKeyId instead."}))
    CreateDomainRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CreateDomainRequest.add_member(:app_security_group_management, Shapes::ShapeRef.new(shape: AppSecurityGroupManagement, location_name: "AppSecurityGroupManagement"))
    CreateDomainRequest.add_member(:domain_settings, Shapes::ShapeRef.new(shape: DomainSettings, location_name: "DomainSettings"))
    CreateDomainRequest.struct_class = Types::CreateDomainRequest

    CreateDomainResponse.add_member(:domain_arn, Shapes::ShapeRef.new(shape: DomainArn, location_name: "DomainArn"))
    CreateDomainResponse.add_member(:url, Shapes::ShapeRef.new(shape: String1024, location_name: "Url"))
    CreateDomainResponse.struct_class = Types::CreateDomainResponse

    CreateEdgePackagingJobRequest.add_member(:edge_packaging_job_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "EdgePackagingJobName"))
    CreateEdgePackagingJobRequest.add_member(:compilation_job_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "CompilationJobName"))
    CreateEdgePackagingJobRequest.add_member(:model_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "ModelName"))
    CreateEdgePackagingJobRequest.add_member(:model_version, Shapes::ShapeRef.new(shape: EdgeVersion, required: true, location_name: "ModelVersion"))
    CreateEdgePackagingJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateEdgePackagingJobRequest.add_member(:output_config, Shapes::ShapeRef.new(shape: EdgeOutputConfig, required: true, location_name: "OutputConfig"))
    CreateEdgePackagingJobRequest.add_member(:resource_key, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "ResourceKey"))
    CreateEdgePackagingJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateEdgePackagingJobRequest.struct_class = Types::CreateEdgePackagingJobRequest

    CreateEndpointConfigInput.add_member(:endpoint_config_name, Shapes::ShapeRef.new(shape: EndpointConfigName, required: true, location_name: "EndpointConfigName"))
    CreateEndpointConfigInput.add_member(:production_variants, Shapes::ShapeRef.new(shape: ProductionVariantList, required: true, location_name: "ProductionVariants"))
    CreateEndpointConfigInput.add_member(:data_capture_config, Shapes::ShapeRef.new(shape: DataCaptureConfig, location_name: "DataCaptureConfig"))
    CreateEndpointConfigInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateEndpointConfigInput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CreateEndpointConfigInput.add_member(:async_inference_config, Shapes::ShapeRef.new(shape: AsyncInferenceConfig, location_name: "AsyncInferenceConfig"))
    CreateEndpointConfigInput.struct_class = Types::CreateEndpointConfigInput

    CreateEndpointConfigOutput.add_member(:endpoint_config_arn, Shapes::ShapeRef.new(shape: EndpointConfigArn, required: true, location_name: "EndpointConfigArn"))
    CreateEndpointConfigOutput.struct_class = Types::CreateEndpointConfigOutput

    CreateEndpointInput.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "EndpointName"))
    CreateEndpointInput.add_member(:endpoint_config_name, Shapes::ShapeRef.new(shape: EndpointConfigName, required: true, location_name: "EndpointConfigName"))
    CreateEndpointInput.add_member(:deployment_config, Shapes::ShapeRef.new(shape: DeploymentConfig, location_name: "DeploymentConfig"))
    CreateEndpointInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateEndpointInput.struct_class = Types::CreateEndpointInput

    CreateEndpointOutput.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: EndpointArn, required: true, location_name: "EndpointArn"))
    CreateEndpointOutput.struct_class = Types::CreateEndpointOutput

    CreateExperimentRequest.add_member(:experiment_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "ExperimentName"))
    CreateExperimentRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "DisplayName"))
    CreateExperimentRequest.add_member(:description, Shapes::ShapeRef.new(shape: ExperimentDescription, location_name: "Description"))
    CreateExperimentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateExperimentRequest.struct_class = Types::CreateExperimentRequest

    CreateExperimentResponse.add_member(:experiment_arn, Shapes::ShapeRef.new(shape: ExperimentArn, location_name: "ExperimentArn"))
    CreateExperimentResponse.struct_class = Types::CreateExperimentResponse

    CreateFeatureGroupRequest.add_member(:feature_group_name, Shapes::ShapeRef.new(shape: FeatureGroupName, required: true, location_name: "FeatureGroupName"))
    CreateFeatureGroupRequest.add_member(:record_identifier_feature_name, Shapes::ShapeRef.new(shape: FeatureName, required: true, location_name: "RecordIdentifierFeatureName"))
    CreateFeatureGroupRequest.add_member(:event_time_feature_name, Shapes::ShapeRef.new(shape: FeatureName, required: true, location_name: "EventTimeFeatureName"))
    CreateFeatureGroupRequest.add_member(:feature_definitions, Shapes::ShapeRef.new(shape: FeatureDefinitions, required: true, location_name: "FeatureDefinitions"))
    CreateFeatureGroupRequest.add_member(:online_store_config, Shapes::ShapeRef.new(shape: OnlineStoreConfig, location_name: "OnlineStoreConfig"))
    CreateFeatureGroupRequest.add_member(:offline_store_config, Shapes::ShapeRef.new(shape: OfflineStoreConfig, location_name: "OfflineStoreConfig"))
    CreateFeatureGroupRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    CreateFeatureGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateFeatureGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateFeatureGroupRequest.struct_class = Types::CreateFeatureGroupRequest

    CreateFeatureGroupResponse.add_member(:feature_group_arn, Shapes::ShapeRef.new(shape: FeatureGroupArn, required: true, location_name: "FeatureGroupArn"))
    CreateFeatureGroupResponse.struct_class = Types::CreateFeatureGroupResponse

    CreateFlowDefinitionRequest.add_member(:flow_definition_name, Shapes::ShapeRef.new(shape: FlowDefinitionName, required: true, location_name: "FlowDefinitionName"))
    CreateFlowDefinitionRequest.add_member(:human_loop_request_source, Shapes::ShapeRef.new(shape: HumanLoopRequestSource, location_name: "HumanLoopRequestSource"))
    CreateFlowDefinitionRequest.add_member(:human_loop_activation_config, Shapes::ShapeRef.new(shape: HumanLoopActivationConfig, location_name: "HumanLoopActivationConfig"))
    CreateFlowDefinitionRequest.add_member(:human_loop_config, Shapes::ShapeRef.new(shape: HumanLoopConfig, required: true, location_name: "HumanLoopConfig"))
    CreateFlowDefinitionRequest.add_member(:output_config, Shapes::ShapeRef.new(shape: FlowDefinitionOutputConfig, required: true, location_name: "OutputConfig"))
    CreateFlowDefinitionRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateFlowDefinitionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateFlowDefinitionRequest.struct_class = Types::CreateFlowDefinitionRequest

    CreateFlowDefinitionResponse.add_member(:flow_definition_arn, Shapes::ShapeRef.new(shape: FlowDefinitionArn, required: true, location_name: "FlowDefinitionArn"))
    CreateFlowDefinitionResponse.struct_class = Types::CreateFlowDefinitionResponse

    CreateHumanTaskUiRequest.add_member(:human_task_ui_name, Shapes::ShapeRef.new(shape: HumanTaskUiName, required: true, location_name: "HumanTaskUiName"))
    CreateHumanTaskUiRequest.add_member(:ui_template, Shapes::ShapeRef.new(shape: UiTemplate, required: true, location_name: "UiTemplate"))
    CreateHumanTaskUiRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateHumanTaskUiRequest.struct_class = Types::CreateHumanTaskUiRequest

    CreateHumanTaskUiResponse.add_member(:human_task_ui_arn, Shapes::ShapeRef.new(shape: HumanTaskUiArn, required: true, location_name: "HumanTaskUiArn"))
    CreateHumanTaskUiResponse.struct_class = Types::CreateHumanTaskUiResponse

    CreateHyperParameterTuningJobRequest.add_member(:hyper_parameter_tuning_job_name, Shapes::ShapeRef.new(shape: HyperParameterTuningJobName, required: true, location_name: "HyperParameterTuningJobName"))
    CreateHyperParameterTuningJobRequest.add_member(:hyper_parameter_tuning_job_config, Shapes::ShapeRef.new(shape: HyperParameterTuningJobConfig, required: true, location_name: "HyperParameterTuningJobConfig"))
    CreateHyperParameterTuningJobRequest.add_member(:training_job_definition, Shapes::ShapeRef.new(shape: HyperParameterTrainingJobDefinition, location_name: "TrainingJobDefinition"))
    CreateHyperParameterTuningJobRequest.add_member(:training_job_definitions, Shapes::ShapeRef.new(shape: HyperParameterTrainingJobDefinitions, location_name: "TrainingJobDefinitions"))
    CreateHyperParameterTuningJobRequest.add_member(:warm_start_config, Shapes::ShapeRef.new(shape: HyperParameterTuningJobWarmStartConfig, location_name: "WarmStartConfig"))
    CreateHyperParameterTuningJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateHyperParameterTuningJobRequest.struct_class = Types::CreateHyperParameterTuningJobRequest

    CreateHyperParameterTuningJobResponse.add_member(:hyper_parameter_tuning_job_arn, Shapes::ShapeRef.new(shape: HyperParameterTuningJobArn, required: true, location_name: "HyperParameterTuningJobArn"))
    CreateHyperParameterTuningJobResponse.struct_class = Types::CreateHyperParameterTuningJobResponse

    CreateImageRequest.add_member(:description, Shapes::ShapeRef.new(shape: ImageDescription, location_name: "Description"))
    CreateImageRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ImageDisplayName, location_name: "DisplayName"))
    CreateImageRequest.add_member(:image_name, Shapes::ShapeRef.new(shape: ImageName, required: true, location_name: "ImageName"))
    CreateImageRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateImageRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateImageRequest.struct_class = Types::CreateImageRequest

    CreateImageResponse.add_member(:image_arn, Shapes::ShapeRef.new(shape: ImageArn, location_name: "ImageArn"))
    CreateImageResponse.struct_class = Types::CreateImageResponse

    CreateImageVersionRequest.add_member(:base_image, Shapes::ShapeRef.new(shape: ImageBaseImage, required: true, location_name: "BaseImage"))
    CreateImageVersionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateImageVersionRequest.add_member(:image_name, Shapes::ShapeRef.new(shape: ImageName, required: true, location_name: "ImageName"))
    CreateImageVersionRequest.struct_class = Types::CreateImageVersionRequest

    CreateImageVersionResponse.add_member(:image_version_arn, Shapes::ShapeRef.new(shape: ImageVersionArn, location_name: "ImageVersionArn"))
    CreateImageVersionResponse.struct_class = Types::CreateImageVersionResponse

    CreateInferenceRecommendationsJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: RecommendationJobName, required: true, location_name: "JobName"))
    CreateInferenceRecommendationsJobRequest.add_member(:job_type, Shapes::ShapeRef.new(shape: RecommendationJobType, required: true, location_name: "JobType"))
    CreateInferenceRecommendationsJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateInferenceRecommendationsJobRequest.add_member(:input_config, Shapes::ShapeRef.new(shape: RecommendationJobInputConfig, required: true, location_name: "InputConfig"))
    CreateInferenceRecommendationsJobRequest.add_member(:job_description, Shapes::ShapeRef.new(shape: RecommendationJobDescription, location_name: "JobDescription"))
    CreateInferenceRecommendationsJobRequest.add_member(:stopping_conditions, Shapes::ShapeRef.new(shape: RecommendationJobStoppingConditions, location_name: "StoppingConditions"))
    CreateInferenceRecommendationsJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateInferenceRecommendationsJobRequest.struct_class = Types::CreateInferenceRecommendationsJobRequest

    CreateInferenceRecommendationsJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: RecommendationJobArn, required: true, location_name: "JobArn"))
    CreateInferenceRecommendationsJobResponse.struct_class = Types::CreateInferenceRecommendationsJobResponse

    CreateLabelingJobRequest.add_member(:labeling_job_name, Shapes::ShapeRef.new(shape: LabelingJobName, required: true, location_name: "LabelingJobName"))
    CreateLabelingJobRequest.add_member(:label_attribute_name, Shapes::ShapeRef.new(shape: LabelAttributeName, required: true, location_name: "LabelAttributeName"))
    CreateLabelingJobRequest.add_member(:input_config, Shapes::ShapeRef.new(shape: LabelingJobInputConfig, required: true, location_name: "InputConfig"))
    CreateLabelingJobRequest.add_member(:output_config, Shapes::ShapeRef.new(shape: LabelingJobOutputConfig, required: true, location_name: "OutputConfig"))
    CreateLabelingJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateLabelingJobRequest.add_member(:label_category_config_s3_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "LabelCategoryConfigS3Uri"))
    CreateLabelingJobRequest.add_member(:stopping_conditions, Shapes::ShapeRef.new(shape: LabelingJobStoppingConditions, location_name: "StoppingConditions"))
    CreateLabelingJobRequest.add_member(:labeling_job_algorithms_config, Shapes::ShapeRef.new(shape: LabelingJobAlgorithmsConfig, location_name: "LabelingJobAlgorithmsConfig"))
    CreateLabelingJobRequest.add_member(:human_task_config, Shapes::ShapeRef.new(shape: HumanTaskConfig, required: true, location_name: "HumanTaskConfig"))
    CreateLabelingJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateLabelingJobRequest.struct_class = Types::CreateLabelingJobRequest

    CreateLabelingJobResponse.add_member(:labeling_job_arn, Shapes::ShapeRef.new(shape: LabelingJobArn, required: true, location_name: "LabelingJobArn"))
    CreateLabelingJobResponse.struct_class = Types::CreateLabelingJobResponse

    CreateModelBiasJobDefinitionRequest.add_member(:job_definition_name, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionName, required: true, location_name: "JobDefinitionName"))
    CreateModelBiasJobDefinitionRequest.add_member(:model_bias_baseline_config, Shapes::ShapeRef.new(shape: ModelBiasBaselineConfig, location_name: "ModelBiasBaselineConfig"))
    CreateModelBiasJobDefinitionRequest.add_member(:model_bias_app_specification, Shapes::ShapeRef.new(shape: ModelBiasAppSpecification, required: true, location_name: "ModelBiasAppSpecification"))
    CreateModelBiasJobDefinitionRequest.add_member(:model_bias_job_input, Shapes::ShapeRef.new(shape: ModelBiasJobInput, required: true, location_name: "ModelBiasJobInput"))
    CreateModelBiasJobDefinitionRequest.add_member(:model_bias_job_output_config, Shapes::ShapeRef.new(shape: MonitoringOutputConfig, required: true, location_name: "ModelBiasJobOutputConfig"))
    CreateModelBiasJobDefinitionRequest.add_member(:job_resources, Shapes::ShapeRef.new(shape: MonitoringResources, required: true, location_name: "JobResources"))
    CreateModelBiasJobDefinitionRequest.add_member(:network_config, Shapes::ShapeRef.new(shape: MonitoringNetworkConfig, location_name: "NetworkConfig"))
    CreateModelBiasJobDefinitionRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateModelBiasJobDefinitionRequest.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: MonitoringStoppingCondition, location_name: "StoppingCondition"))
    CreateModelBiasJobDefinitionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateModelBiasJobDefinitionRequest.struct_class = Types::CreateModelBiasJobDefinitionRequest

    CreateModelBiasJobDefinitionResponse.add_member(:job_definition_arn, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionArn, required: true, location_name: "JobDefinitionArn"))
    CreateModelBiasJobDefinitionResponse.struct_class = Types::CreateModelBiasJobDefinitionResponse

    CreateModelExplainabilityJobDefinitionRequest.add_member(:job_definition_name, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionName, required: true, location_name: "JobDefinitionName"))
    CreateModelExplainabilityJobDefinitionRequest.add_member(:model_explainability_baseline_config, Shapes::ShapeRef.new(shape: ModelExplainabilityBaselineConfig, location_name: "ModelExplainabilityBaselineConfig"))
    CreateModelExplainabilityJobDefinitionRequest.add_member(:model_explainability_app_specification, Shapes::ShapeRef.new(shape: ModelExplainabilityAppSpecification, required: true, location_name: "ModelExplainabilityAppSpecification"))
    CreateModelExplainabilityJobDefinitionRequest.add_member(:model_explainability_job_input, Shapes::ShapeRef.new(shape: ModelExplainabilityJobInput, required: true, location_name: "ModelExplainabilityJobInput"))
    CreateModelExplainabilityJobDefinitionRequest.add_member(:model_explainability_job_output_config, Shapes::ShapeRef.new(shape: MonitoringOutputConfig, required: true, location_name: "ModelExplainabilityJobOutputConfig"))
    CreateModelExplainabilityJobDefinitionRequest.add_member(:job_resources, Shapes::ShapeRef.new(shape: MonitoringResources, required: true, location_name: "JobResources"))
    CreateModelExplainabilityJobDefinitionRequest.add_member(:network_config, Shapes::ShapeRef.new(shape: MonitoringNetworkConfig, location_name: "NetworkConfig"))
    CreateModelExplainabilityJobDefinitionRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateModelExplainabilityJobDefinitionRequest.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: MonitoringStoppingCondition, location_name: "StoppingCondition"))
    CreateModelExplainabilityJobDefinitionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateModelExplainabilityJobDefinitionRequest.struct_class = Types::CreateModelExplainabilityJobDefinitionRequest

    CreateModelExplainabilityJobDefinitionResponse.add_member(:job_definition_arn, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionArn, required: true, location_name: "JobDefinitionArn"))
    CreateModelExplainabilityJobDefinitionResponse.struct_class = Types::CreateModelExplainabilityJobDefinitionResponse

    CreateModelInput.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    CreateModelInput.add_member(:primary_container, Shapes::ShapeRef.new(shape: ContainerDefinition, location_name: "PrimaryContainer"))
    CreateModelInput.add_member(:containers, Shapes::ShapeRef.new(shape: ContainerDefinitionList, location_name: "Containers"))
    CreateModelInput.add_member(:inference_execution_config, Shapes::ShapeRef.new(shape: InferenceExecutionConfig, location_name: "InferenceExecutionConfig"))
    CreateModelInput.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "ExecutionRoleArn"))
    CreateModelInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateModelInput.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    CreateModelInput.add_member(:enable_network_isolation, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableNetworkIsolation"))
    CreateModelInput.struct_class = Types::CreateModelInput

    CreateModelOutput.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "ModelArn"))
    CreateModelOutput.struct_class = Types::CreateModelOutput

    CreateModelPackageGroupInput.add_member(:model_package_group_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "ModelPackageGroupName"))
    CreateModelPackageGroupInput.add_member(:model_package_group_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "ModelPackageGroupDescription"))
    CreateModelPackageGroupInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateModelPackageGroupInput.struct_class = Types::CreateModelPackageGroupInput

    CreateModelPackageGroupOutput.add_member(:model_package_group_arn, Shapes::ShapeRef.new(shape: ModelPackageGroupArn, required: true, location_name: "ModelPackageGroupArn"))
    CreateModelPackageGroupOutput.struct_class = Types::CreateModelPackageGroupOutput

    CreateModelPackageInput.add_member(:model_package_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "ModelPackageName"))
    CreateModelPackageInput.add_member(:model_package_group_name, Shapes::ShapeRef.new(shape: ArnOrName, location_name: "ModelPackageGroupName"))
    CreateModelPackageInput.add_member(:model_package_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "ModelPackageDescription"))
    CreateModelPackageInput.add_member(:inference_specification, Shapes::ShapeRef.new(shape: InferenceSpecification, location_name: "InferenceSpecification"))
    CreateModelPackageInput.add_member(:validation_specification, Shapes::ShapeRef.new(shape: ModelPackageValidationSpecification, location_name: "ValidationSpecification"))
    CreateModelPackageInput.add_member(:source_algorithm_specification, Shapes::ShapeRef.new(shape: SourceAlgorithmSpecification, location_name: "SourceAlgorithmSpecification"))
    CreateModelPackageInput.add_member(:certify_for_marketplace, Shapes::ShapeRef.new(shape: CertifyForMarketplace, location_name: "CertifyForMarketplace"))
    CreateModelPackageInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateModelPackageInput.add_member(:model_approval_status, Shapes::ShapeRef.new(shape: ModelApprovalStatus, location_name: "ModelApprovalStatus"))
    CreateModelPackageInput.add_member(:metadata_properties, Shapes::ShapeRef.new(shape: MetadataProperties, location_name: "MetadataProperties"))
    CreateModelPackageInput.add_member(:model_metrics, Shapes::ShapeRef.new(shape: ModelMetrics, location_name: "ModelMetrics"))
    CreateModelPackageInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateModelPackageInput.add_member(:customer_metadata_properties, Shapes::ShapeRef.new(shape: CustomerMetadataMap, location_name: "CustomerMetadataProperties"))
    CreateModelPackageInput.add_member(:drift_check_baselines, Shapes::ShapeRef.new(shape: DriftCheckBaselines, location_name: "DriftCheckBaselines"))
    CreateModelPackageInput.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    CreateModelPackageInput.add_member(:task, Shapes::ShapeRef.new(shape: String, location_name: "Task"))
    CreateModelPackageInput.add_member(:sample_payload_url, Shapes::ShapeRef.new(shape: S3Uri, location_name: "SamplePayloadUrl"))
    CreateModelPackageInput.add_member(:additional_inference_specifications, Shapes::ShapeRef.new(shape: AdditionalInferenceSpecifications, location_name: "AdditionalInferenceSpecifications"))
    CreateModelPackageInput.struct_class = Types::CreateModelPackageInput

    CreateModelPackageOutput.add_member(:model_package_arn, Shapes::ShapeRef.new(shape: ModelPackageArn, required: true, location_name: "ModelPackageArn"))
    CreateModelPackageOutput.struct_class = Types::CreateModelPackageOutput

    CreateModelQualityJobDefinitionRequest.add_member(:job_definition_name, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionName, required: true, location_name: "JobDefinitionName"))
    CreateModelQualityJobDefinitionRequest.add_member(:model_quality_baseline_config, Shapes::ShapeRef.new(shape: ModelQualityBaselineConfig, location_name: "ModelQualityBaselineConfig"))
    CreateModelQualityJobDefinitionRequest.add_member(:model_quality_app_specification, Shapes::ShapeRef.new(shape: ModelQualityAppSpecification, required: true, location_name: "ModelQualityAppSpecification"))
    CreateModelQualityJobDefinitionRequest.add_member(:model_quality_job_input, Shapes::ShapeRef.new(shape: ModelQualityJobInput, required: true, location_name: "ModelQualityJobInput"))
    CreateModelQualityJobDefinitionRequest.add_member(:model_quality_job_output_config, Shapes::ShapeRef.new(shape: MonitoringOutputConfig, required: true, location_name: "ModelQualityJobOutputConfig"))
    CreateModelQualityJobDefinitionRequest.add_member(:job_resources, Shapes::ShapeRef.new(shape: MonitoringResources, required: true, location_name: "JobResources"))
    CreateModelQualityJobDefinitionRequest.add_member(:network_config, Shapes::ShapeRef.new(shape: MonitoringNetworkConfig, location_name: "NetworkConfig"))
    CreateModelQualityJobDefinitionRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateModelQualityJobDefinitionRequest.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: MonitoringStoppingCondition, location_name: "StoppingCondition"))
    CreateModelQualityJobDefinitionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateModelQualityJobDefinitionRequest.struct_class = Types::CreateModelQualityJobDefinitionRequest

    CreateModelQualityJobDefinitionResponse.add_member(:job_definition_arn, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionArn, required: true, location_name: "JobDefinitionArn"))
    CreateModelQualityJobDefinitionResponse.struct_class = Types::CreateModelQualityJobDefinitionResponse

    CreateMonitoringScheduleRequest.add_member(:monitoring_schedule_name, Shapes::ShapeRef.new(shape: MonitoringScheduleName, required: true, location_name: "MonitoringScheduleName"))
    CreateMonitoringScheduleRequest.add_member(:monitoring_schedule_config, Shapes::ShapeRef.new(shape: MonitoringScheduleConfig, required: true, location_name: "MonitoringScheduleConfig"))
    CreateMonitoringScheduleRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateMonitoringScheduleRequest.struct_class = Types::CreateMonitoringScheduleRequest

    CreateMonitoringScheduleResponse.add_member(:monitoring_schedule_arn, Shapes::ShapeRef.new(shape: MonitoringScheduleArn, required: true, location_name: "MonitoringScheduleArn"))
    CreateMonitoringScheduleResponse.struct_class = Types::CreateMonitoringScheduleResponse

    CreateNotebookInstanceInput.add_member(:notebook_instance_name, Shapes::ShapeRef.new(shape: NotebookInstanceName, required: true, location_name: "NotebookInstanceName"))
    CreateNotebookInstanceInput.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, required: true, location_name: "InstanceType"))
    CreateNotebookInstanceInput.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId"))
    CreateNotebookInstanceInput.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroupIds"))
    CreateNotebookInstanceInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateNotebookInstanceInput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CreateNotebookInstanceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateNotebookInstanceInput.add_member(:lifecycle_config_name, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigName, location_name: "LifecycleConfigName"))
    CreateNotebookInstanceInput.add_member(:direct_internet_access, Shapes::ShapeRef.new(shape: DirectInternetAccess, location_name: "DirectInternetAccess"))
    CreateNotebookInstanceInput.add_member(:volume_size_in_gb, Shapes::ShapeRef.new(shape: NotebookInstanceVolumeSizeInGB, location_name: "VolumeSizeInGB"))
    CreateNotebookInstanceInput.add_member(:accelerator_types, Shapes::ShapeRef.new(shape: NotebookInstanceAcceleratorTypes, location_name: "AcceleratorTypes"))
    CreateNotebookInstanceInput.add_member(:default_code_repository, Shapes::ShapeRef.new(shape: CodeRepositoryNameOrUrl, location_name: "DefaultCodeRepository"))
    CreateNotebookInstanceInput.add_member(:additional_code_repositories, Shapes::ShapeRef.new(shape: AdditionalCodeRepositoryNamesOrUrls, location_name: "AdditionalCodeRepositories"))
    CreateNotebookInstanceInput.add_member(:root_access, Shapes::ShapeRef.new(shape: RootAccess, location_name: "RootAccess"))
    CreateNotebookInstanceInput.add_member(:platform_identifier, Shapes::ShapeRef.new(shape: PlatformIdentifier, location_name: "PlatformIdentifier"))
    CreateNotebookInstanceInput.struct_class = Types::CreateNotebookInstanceInput

    CreateNotebookInstanceLifecycleConfigInput.add_member(:notebook_instance_lifecycle_config_name, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigName, required: true, location_name: "NotebookInstanceLifecycleConfigName"))
    CreateNotebookInstanceLifecycleConfigInput.add_member(:on_create, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigList, location_name: "OnCreate"))
    CreateNotebookInstanceLifecycleConfigInput.add_member(:on_start, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigList, location_name: "OnStart"))
    CreateNotebookInstanceLifecycleConfigInput.struct_class = Types::CreateNotebookInstanceLifecycleConfigInput

    CreateNotebookInstanceLifecycleConfigOutput.add_member(:notebook_instance_lifecycle_config_arn, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigArn, location_name: "NotebookInstanceLifecycleConfigArn"))
    CreateNotebookInstanceLifecycleConfigOutput.struct_class = Types::CreateNotebookInstanceLifecycleConfigOutput

    CreateNotebookInstanceOutput.add_member(:notebook_instance_arn, Shapes::ShapeRef.new(shape: NotebookInstanceArn, location_name: "NotebookInstanceArn"))
    CreateNotebookInstanceOutput.struct_class = Types::CreateNotebookInstanceOutput

    CreatePipelineRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "PipelineName"))
    CreatePipelineRequest.add_member(:pipeline_display_name, Shapes::ShapeRef.new(shape: PipelineName, location_name: "PipelineDisplayName"))
    CreatePipelineRequest.add_member(:pipeline_definition, Shapes::ShapeRef.new(shape: PipelineDefinition, location_name: "PipelineDefinition"))
    CreatePipelineRequest.add_member(:pipeline_definition_s3_location, Shapes::ShapeRef.new(shape: PipelineDefinitionS3Location, location_name: "PipelineDefinitionS3Location"))
    CreatePipelineRequest.add_member(:pipeline_description, Shapes::ShapeRef.new(shape: PipelineDescription, location_name: "PipelineDescription"))
    CreatePipelineRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreatePipelineRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreatePipelineRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreatePipelineRequest.add_member(:parallelism_configuration, Shapes::ShapeRef.new(shape: ParallelismConfiguration, location_name: "ParallelismConfiguration"))
    CreatePipelineRequest.struct_class = Types::CreatePipelineRequest

    CreatePipelineResponse.add_member(:pipeline_arn, Shapes::ShapeRef.new(shape: PipelineArn, location_name: "PipelineArn"))
    CreatePipelineResponse.struct_class = Types::CreatePipelineResponse

    CreatePresignedDomainUrlRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    CreatePresignedDomainUrlRequest.add_member(:user_profile_name, Shapes::ShapeRef.new(shape: UserProfileName, required: true, location_name: "UserProfileName"))
    CreatePresignedDomainUrlRequest.add_member(:session_expiration_duration_in_seconds, Shapes::ShapeRef.new(shape: SessionExpirationDurationInSeconds, location_name: "SessionExpirationDurationInSeconds"))
    CreatePresignedDomainUrlRequest.add_member(:expires_in_seconds, Shapes::ShapeRef.new(shape: ExpiresInSeconds, location_name: "ExpiresInSeconds"))
    CreatePresignedDomainUrlRequest.struct_class = Types::CreatePresignedDomainUrlRequest

    CreatePresignedDomainUrlResponse.add_member(:authorized_url, Shapes::ShapeRef.new(shape: PresignedDomainUrl, location_name: "AuthorizedUrl"))
    CreatePresignedDomainUrlResponse.struct_class = Types::CreatePresignedDomainUrlResponse

    CreatePresignedNotebookInstanceUrlInput.add_member(:notebook_instance_name, Shapes::ShapeRef.new(shape: NotebookInstanceName, required: true, location_name: "NotebookInstanceName"))
    CreatePresignedNotebookInstanceUrlInput.add_member(:session_expiration_duration_in_seconds, Shapes::ShapeRef.new(shape: SessionExpirationDurationInSeconds, location_name: "SessionExpirationDurationInSeconds"))
    CreatePresignedNotebookInstanceUrlInput.struct_class = Types::CreatePresignedNotebookInstanceUrlInput

    CreatePresignedNotebookInstanceUrlOutput.add_member(:authorized_url, Shapes::ShapeRef.new(shape: NotebookInstanceUrl, location_name: "AuthorizedUrl"))
    CreatePresignedNotebookInstanceUrlOutput.struct_class = Types::CreatePresignedNotebookInstanceUrlOutput

    CreateProcessingJobRequest.add_member(:processing_inputs, Shapes::ShapeRef.new(shape: ProcessingInputs, location_name: "ProcessingInputs"))
    CreateProcessingJobRequest.add_member(:processing_output_config, Shapes::ShapeRef.new(shape: ProcessingOutputConfig, location_name: "ProcessingOutputConfig"))
    CreateProcessingJobRequest.add_member(:processing_job_name, Shapes::ShapeRef.new(shape: ProcessingJobName, required: true, location_name: "ProcessingJobName"))
    CreateProcessingJobRequest.add_member(:processing_resources, Shapes::ShapeRef.new(shape: ProcessingResources, required: true, location_name: "ProcessingResources"))
    CreateProcessingJobRequest.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: ProcessingStoppingCondition, location_name: "StoppingCondition"))
    CreateProcessingJobRequest.add_member(:app_specification, Shapes::ShapeRef.new(shape: AppSpecification, required: true, location_name: "AppSpecification"))
    CreateProcessingJobRequest.add_member(:environment, Shapes::ShapeRef.new(shape: ProcessingEnvironmentMap, location_name: "Environment"))
    CreateProcessingJobRequest.add_member(:network_config, Shapes::ShapeRef.new(shape: NetworkConfig, location_name: "NetworkConfig"))
    CreateProcessingJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateProcessingJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateProcessingJobRequest.add_member(:experiment_config, Shapes::ShapeRef.new(shape: ExperimentConfig, location_name: "ExperimentConfig"))
    CreateProcessingJobRequest.struct_class = Types::CreateProcessingJobRequest

    CreateProcessingJobResponse.add_member(:processing_job_arn, Shapes::ShapeRef.new(shape: ProcessingJobArn, required: true, location_name: "ProcessingJobArn"))
    CreateProcessingJobResponse.struct_class = Types::CreateProcessingJobResponse

    CreateProjectInput.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectEntityName, required: true, location_name: "ProjectName"))
    CreateProjectInput.add_member(:project_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "ProjectDescription"))
    CreateProjectInput.add_member(:service_catalog_provisioning_details, Shapes::ShapeRef.new(shape: ServiceCatalogProvisioningDetails, required: true, location_name: "ServiceCatalogProvisioningDetails"))
    CreateProjectInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateProjectInput.struct_class = Types::CreateProjectInput

    CreateProjectOutput.add_member(:project_arn, Shapes::ShapeRef.new(shape: ProjectArn, required: true, location_name: "ProjectArn"))
    CreateProjectOutput.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "ProjectId"))
    CreateProjectOutput.struct_class = Types::CreateProjectOutput

    CreateStudioLifecycleConfigRequest.add_member(:studio_lifecycle_config_name, Shapes::ShapeRef.new(shape: StudioLifecycleConfigName, required: true, location_name: "StudioLifecycleConfigName"))
    CreateStudioLifecycleConfigRequest.add_member(:studio_lifecycle_config_content, Shapes::ShapeRef.new(shape: StudioLifecycleConfigContent, required: true, location_name: "StudioLifecycleConfigContent"))
    CreateStudioLifecycleConfigRequest.add_member(:studio_lifecycle_config_app_type, Shapes::ShapeRef.new(shape: StudioLifecycleConfigAppType, required: true, location_name: "StudioLifecycleConfigAppType"))
    CreateStudioLifecycleConfigRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateStudioLifecycleConfigRequest.struct_class = Types::CreateStudioLifecycleConfigRequest

    CreateStudioLifecycleConfigResponse.add_member(:studio_lifecycle_config_arn, Shapes::ShapeRef.new(shape: StudioLifecycleConfigArn, location_name: "StudioLifecycleConfigArn"))
    CreateStudioLifecycleConfigResponse.struct_class = Types::CreateStudioLifecycleConfigResponse

    CreateTrainingJobRequest.add_member(:training_job_name, Shapes::ShapeRef.new(shape: TrainingJobName, required: true, location_name: "TrainingJobName"))
    CreateTrainingJobRequest.add_member(:hyper_parameters, Shapes::ShapeRef.new(shape: HyperParameters, location_name: "HyperParameters"))
    CreateTrainingJobRequest.add_member(:algorithm_specification, Shapes::ShapeRef.new(shape: AlgorithmSpecification, required: true, location_name: "AlgorithmSpecification"))
    CreateTrainingJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateTrainingJobRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, location_name: "InputDataConfig"))
    CreateTrainingJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    CreateTrainingJobRequest.add_member(:resource_config, Shapes::ShapeRef.new(shape: ResourceConfig, required: true, location_name: "ResourceConfig"))
    CreateTrainingJobRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    CreateTrainingJobRequest.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: StoppingCondition, required: true, location_name: "StoppingCondition"))
    CreateTrainingJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateTrainingJobRequest.add_member(:enable_network_isolation, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableNetworkIsolation"))
    CreateTrainingJobRequest.add_member(:enable_inter_container_traffic_encryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableInterContainerTrafficEncryption"))
    CreateTrainingJobRequest.add_member(:enable_managed_spot_training, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableManagedSpotTraining"))
    CreateTrainingJobRequest.add_member(:checkpoint_config, Shapes::ShapeRef.new(shape: CheckpointConfig, location_name: "CheckpointConfig"))
    CreateTrainingJobRequest.add_member(:debug_hook_config, Shapes::ShapeRef.new(shape: DebugHookConfig, location_name: "DebugHookConfig"))
    CreateTrainingJobRequest.add_member(:debug_rule_configurations, Shapes::ShapeRef.new(shape: DebugRuleConfigurations, location_name: "DebugRuleConfigurations"))
    CreateTrainingJobRequest.add_member(:tensor_board_output_config, Shapes::ShapeRef.new(shape: TensorBoardOutputConfig, location_name: "TensorBoardOutputConfig"))
    CreateTrainingJobRequest.add_member(:experiment_config, Shapes::ShapeRef.new(shape: ExperimentConfig, location_name: "ExperimentConfig"))
    CreateTrainingJobRequest.add_member(:profiler_config, Shapes::ShapeRef.new(shape: ProfilerConfig, location_name: "ProfilerConfig"))
    CreateTrainingJobRequest.add_member(:profiler_rule_configurations, Shapes::ShapeRef.new(shape: ProfilerRuleConfigurations, location_name: "ProfilerRuleConfigurations"))
    CreateTrainingJobRequest.add_member(:environment, Shapes::ShapeRef.new(shape: TrainingEnvironmentMap, location_name: "Environment"))
    CreateTrainingJobRequest.add_member(:retry_strategy, Shapes::ShapeRef.new(shape: RetryStrategy, location_name: "RetryStrategy"))
    CreateTrainingJobRequest.struct_class = Types::CreateTrainingJobRequest

    CreateTrainingJobResponse.add_member(:training_job_arn, Shapes::ShapeRef.new(shape: TrainingJobArn, required: true, location_name: "TrainingJobArn"))
    CreateTrainingJobResponse.struct_class = Types::CreateTrainingJobResponse

    CreateTransformJobRequest.add_member(:transform_job_name, Shapes::ShapeRef.new(shape: TransformJobName, required: true, location_name: "TransformJobName"))
    CreateTransformJobRequest.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    CreateTransformJobRequest.add_member(:max_concurrent_transforms, Shapes::ShapeRef.new(shape: MaxConcurrentTransforms, location_name: "MaxConcurrentTransforms"))
    CreateTransformJobRequest.add_member(:model_client_config, Shapes::ShapeRef.new(shape: ModelClientConfig, location_name: "ModelClientConfig"))
    CreateTransformJobRequest.add_member(:max_payload_in_mb, Shapes::ShapeRef.new(shape: MaxPayloadInMB, location_name: "MaxPayloadInMB"))
    CreateTransformJobRequest.add_member(:batch_strategy, Shapes::ShapeRef.new(shape: BatchStrategy, location_name: "BatchStrategy"))
    CreateTransformJobRequest.add_member(:environment, Shapes::ShapeRef.new(shape: TransformEnvironmentMap, location_name: "Environment"))
    CreateTransformJobRequest.add_member(:transform_input, Shapes::ShapeRef.new(shape: TransformInput, required: true, location_name: "TransformInput"))
    CreateTransformJobRequest.add_member(:transform_output, Shapes::ShapeRef.new(shape: TransformOutput, required: true, location_name: "TransformOutput"))
    CreateTransformJobRequest.add_member(:transform_resources, Shapes::ShapeRef.new(shape: TransformResources, required: true, location_name: "TransformResources"))
    CreateTransformJobRequest.add_member(:data_processing, Shapes::ShapeRef.new(shape: DataProcessing, location_name: "DataProcessing"))
    CreateTransformJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateTransformJobRequest.add_member(:experiment_config, Shapes::ShapeRef.new(shape: ExperimentConfig, location_name: "ExperimentConfig"))
    CreateTransformJobRequest.struct_class = Types::CreateTransformJobRequest

    CreateTransformJobResponse.add_member(:transform_job_arn, Shapes::ShapeRef.new(shape: TransformJobArn, required: true, location_name: "TransformJobArn"))
    CreateTransformJobResponse.struct_class = Types::CreateTransformJobResponse

    CreateTrialComponentRequest.add_member(:trial_component_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "TrialComponentName"))
    CreateTrialComponentRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "DisplayName"))
    CreateTrialComponentRequest.add_member(:status, Shapes::ShapeRef.new(shape: TrialComponentStatus, location_name: "Status"))
    CreateTrialComponentRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    CreateTrialComponentRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    CreateTrialComponentRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: TrialComponentParameters, location_name: "Parameters"))
    CreateTrialComponentRequest.add_member(:input_artifacts, Shapes::ShapeRef.new(shape: TrialComponentArtifacts, location_name: "InputArtifacts"))
    CreateTrialComponentRequest.add_member(:output_artifacts, Shapes::ShapeRef.new(shape: TrialComponentArtifacts, location_name: "OutputArtifacts"))
    CreateTrialComponentRequest.add_member(:metadata_properties, Shapes::ShapeRef.new(shape: MetadataProperties, location_name: "MetadataProperties"))
    CreateTrialComponentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateTrialComponentRequest.struct_class = Types::CreateTrialComponentRequest

    CreateTrialComponentResponse.add_member(:trial_component_arn, Shapes::ShapeRef.new(shape: TrialComponentArn, location_name: "TrialComponentArn"))
    CreateTrialComponentResponse.struct_class = Types::CreateTrialComponentResponse

    CreateTrialRequest.add_member(:trial_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "TrialName"))
    CreateTrialRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "DisplayName"))
    CreateTrialRequest.add_member(:experiment_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "ExperimentName"))
    CreateTrialRequest.add_member(:metadata_properties, Shapes::ShapeRef.new(shape: MetadataProperties, location_name: "MetadataProperties"))
    CreateTrialRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateTrialRequest.struct_class = Types::CreateTrialRequest

    CreateTrialResponse.add_member(:trial_arn, Shapes::ShapeRef.new(shape: TrialArn, location_name: "TrialArn"))
    CreateTrialResponse.struct_class = Types::CreateTrialResponse

    CreateUserProfileRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    CreateUserProfileRequest.add_member(:user_profile_name, Shapes::ShapeRef.new(shape: UserProfileName, required: true, location_name: "UserProfileName"))
    CreateUserProfileRequest.add_member(:single_sign_on_user_identifier, Shapes::ShapeRef.new(shape: SingleSignOnUserIdentifier, location_name: "SingleSignOnUserIdentifier"))
    CreateUserProfileRequest.add_member(:single_sign_on_user_value, Shapes::ShapeRef.new(shape: String256, location_name: "SingleSignOnUserValue"))
    CreateUserProfileRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateUserProfileRequest.add_member(:user_settings, Shapes::ShapeRef.new(shape: UserSettings, location_name: "UserSettings"))
    CreateUserProfileRequest.struct_class = Types::CreateUserProfileRequest

    CreateUserProfileResponse.add_member(:user_profile_arn, Shapes::ShapeRef.new(shape: UserProfileArn, location_name: "UserProfileArn"))
    CreateUserProfileResponse.struct_class = Types::CreateUserProfileResponse

    CreateWorkforceRequest.add_member(:cognito_config, Shapes::ShapeRef.new(shape: CognitoConfig, location_name: "CognitoConfig"))
    CreateWorkforceRequest.add_member(:oidc_config, Shapes::ShapeRef.new(shape: OidcConfig, location_name: "OidcConfig"))
    CreateWorkforceRequest.add_member(:source_ip_config, Shapes::ShapeRef.new(shape: SourceIpConfig, location_name: "SourceIpConfig"))
    CreateWorkforceRequest.add_member(:workforce_name, Shapes::ShapeRef.new(shape: WorkforceName, required: true, location_name: "WorkforceName"))
    CreateWorkforceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateWorkforceRequest.struct_class = Types::CreateWorkforceRequest

    CreateWorkforceResponse.add_member(:workforce_arn, Shapes::ShapeRef.new(shape: WorkforceArn, required: true, location_name: "WorkforceArn"))
    CreateWorkforceResponse.struct_class = Types::CreateWorkforceResponse

    CreateWorkteamRequest.add_member(:workteam_name, Shapes::ShapeRef.new(shape: WorkteamName, required: true, location_name: "WorkteamName"))
    CreateWorkteamRequest.add_member(:workforce_name, Shapes::ShapeRef.new(shape: WorkforceName, location_name: "WorkforceName"))
    CreateWorkteamRequest.add_member(:member_definitions, Shapes::ShapeRef.new(shape: MemberDefinitions, required: true, location_name: "MemberDefinitions"))
    CreateWorkteamRequest.add_member(:description, Shapes::ShapeRef.new(shape: String200, required: true, location_name: "Description"))
    CreateWorkteamRequest.add_member(:notification_configuration, Shapes::ShapeRef.new(shape: NotificationConfiguration, location_name: "NotificationConfiguration"))
    CreateWorkteamRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateWorkteamRequest.struct_class = Types::CreateWorkteamRequest

    CreateWorkteamResponse.add_member(:workteam_arn, Shapes::ShapeRef.new(shape: WorkteamArn, location_name: "WorkteamArn"))
    CreateWorkteamResponse.struct_class = Types::CreateWorkteamResponse

    CsvContentTypes.member = Shapes::ShapeRef.new(shape: CsvContentType)

    CustomImage.add_member(:image_name, Shapes::ShapeRef.new(shape: ImageName, required: true, location_name: "ImageName"))
    CustomImage.add_member(:image_version_number, Shapes::ShapeRef.new(shape: ImageVersionNumber, location_name: "ImageVersionNumber", metadata: {"box"=>true}))
    CustomImage.add_member(:app_image_config_name, Shapes::ShapeRef.new(shape: AppImageConfigName, required: true, location_name: "AppImageConfigName"))
    CustomImage.struct_class = Types::CustomImage

    CustomImages.member = Shapes::ShapeRef.new(shape: CustomImage)

    CustomerMetadataKeyList.member = Shapes::ShapeRef.new(shape: CustomerMetadataKey)

    CustomerMetadataMap.key = Shapes::ShapeRef.new(shape: CustomerMetadataKey)
    CustomerMetadataMap.value = Shapes::ShapeRef.new(shape: CustomerMetadataValue)

    DataCaptureConfig.add_member(:enable_capture, Shapes::ShapeRef.new(shape: EnableCapture, location_name: "EnableCapture"))
    DataCaptureConfig.add_member(:initial_sampling_percentage, Shapes::ShapeRef.new(shape: SamplingPercentage, required: true, location_name: "InitialSamplingPercentage"))
    DataCaptureConfig.add_member(:destination_s3_uri, Shapes::ShapeRef.new(shape: DestinationS3Uri, required: true, location_name: "DestinationS3Uri"))
    DataCaptureConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    DataCaptureConfig.add_member(:capture_options, Shapes::ShapeRef.new(shape: CaptureOptionList, required: true, location_name: "CaptureOptions"))
    DataCaptureConfig.add_member(:capture_content_type_header, Shapes::ShapeRef.new(shape: CaptureContentTypeHeader, location_name: "CaptureContentTypeHeader"))
    DataCaptureConfig.struct_class = Types::DataCaptureConfig

    DataCaptureConfigSummary.add_member(:enable_capture, Shapes::ShapeRef.new(shape: EnableCapture, required: true, location_name: "EnableCapture"))
    DataCaptureConfigSummary.add_member(:capture_status, Shapes::ShapeRef.new(shape: CaptureStatus, required: true, location_name: "CaptureStatus"))
    DataCaptureConfigSummary.add_member(:current_sampling_percentage, Shapes::ShapeRef.new(shape: SamplingPercentage, required: true, location_name: "CurrentSamplingPercentage"))
    DataCaptureConfigSummary.add_member(:destination_s3_uri, Shapes::ShapeRef.new(shape: DestinationS3Uri, required: true, location_name: "DestinationS3Uri"))
    DataCaptureConfigSummary.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, required: true, location_name: "KmsKeyId"))
    DataCaptureConfigSummary.struct_class = Types::DataCaptureConfigSummary

    DataCatalogConfig.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    DataCatalogConfig.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    DataCatalogConfig.add_member(:database, Shapes::ShapeRef.new(shape: Database, required: true, location_name: "Database"))
    DataCatalogConfig.struct_class = Types::DataCatalogConfig

    DataProcessing.add_member(:input_filter, Shapes::ShapeRef.new(shape: JsonPath, location_name: "InputFilter"))
    DataProcessing.add_member(:output_filter, Shapes::ShapeRef.new(shape: JsonPath, location_name: "OutputFilter"))
    DataProcessing.add_member(:join_source, Shapes::ShapeRef.new(shape: JoinSource, location_name: "JoinSource"))
    DataProcessing.struct_class = Types::DataProcessing

    DataQualityAppSpecification.add_member(:image_uri, Shapes::ShapeRef.new(shape: ImageUri, required: true, location_name: "ImageUri"))
    DataQualityAppSpecification.add_member(:container_entrypoint, Shapes::ShapeRef.new(shape: ContainerEntrypoint, location_name: "ContainerEntrypoint"))
    DataQualityAppSpecification.add_member(:container_arguments, Shapes::ShapeRef.new(shape: MonitoringContainerArguments, location_name: "ContainerArguments"))
    DataQualityAppSpecification.add_member(:record_preprocessor_source_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "RecordPreprocessorSourceUri"))
    DataQualityAppSpecification.add_member(:post_analytics_processor_source_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "PostAnalyticsProcessorSourceUri"))
    DataQualityAppSpecification.add_member(:environment, Shapes::ShapeRef.new(shape: MonitoringEnvironmentMap, location_name: "Environment"))
    DataQualityAppSpecification.struct_class = Types::DataQualityAppSpecification

    DataQualityBaselineConfig.add_member(:baselining_job_name, Shapes::ShapeRef.new(shape: ProcessingJobName, location_name: "BaseliningJobName"))
    DataQualityBaselineConfig.add_member(:constraints_resource, Shapes::ShapeRef.new(shape: MonitoringConstraintsResource, location_name: "ConstraintsResource"))
    DataQualityBaselineConfig.add_member(:statistics_resource, Shapes::ShapeRef.new(shape: MonitoringStatisticsResource, location_name: "StatisticsResource"))
    DataQualityBaselineConfig.struct_class = Types::DataQualityBaselineConfig

    DataQualityJobInput.add_member(:endpoint_input, Shapes::ShapeRef.new(shape: EndpointInput, required: true, location_name: "EndpointInput"))
    DataQualityJobInput.struct_class = Types::DataQualityJobInput

    DataSource.add_member(:s3_data_source, Shapes::ShapeRef.new(shape: S3DataSource, location_name: "S3DataSource"))
    DataSource.add_member(:file_system_data_source, Shapes::ShapeRef.new(shape: FileSystemDataSource, location_name: "FileSystemDataSource"))
    DataSource.struct_class = Types::DataSource

    DatasetDefinition.add_member(:athena_dataset_definition, Shapes::ShapeRef.new(shape: AthenaDatasetDefinition, location_name: "AthenaDatasetDefinition"))
    DatasetDefinition.add_member(:redshift_dataset_definition, Shapes::ShapeRef.new(shape: RedshiftDatasetDefinition, location_name: "RedshiftDatasetDefinition"))
    DatasetDefinition.add_member(:local_path, Shapes::ShapeRef.new(shape: ProcessingLocalPath, location_name: "LocalPath"))
    DatasetDefinition.add_member(:data_distribution_type, Shapes::ShapeRef.new(shape: DataDistributionType, location_name: "DataDistributionType"))
    DatasetDefinition.add_member(:input_mode, Shapes::ShapeRef.new(shape: InputMode, location_name: "InputMode"))
    DatasetDefinition.struct_class = Types::DatasetDefinition

    DebugHookConfig.add_member(:local_path, Shapes::ShapeRef.new(shape: DirectoryPath, location_name: "LocalPath"))
    DebugHookConfig.add_member(:s3_output_path, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3OutputPath"))
    DebugHookConfig.add_member(:hook_parameters, Shapes::ShapeRef.new(shape: HookParameters, location_name: "HookParameters"))
    DebugHookConfig.add_member(:collection_configurations, Shapes::ShapeRef.new(shape: CollectionConfigurations, location_name: "CollectionConfigurations"))
    DebugHookConfig.struct_class = Types::DebugHookConfig

    DebugRuleConfiguration.add_member(:rule_configuration_name, Shapes::ShapeRef.new(shape: RuleConfigurationName, required: true, location_name: "RuleConfigurationName"))
    DebugRuleConfiguration.add_member(:local_path, Shapes::ShapeRef.new(shape: DirectoryPath, location_name: "LocalPath"))
    DebugRuleConfiguration.add_member(:s3_output_path, Shapes::ShapeRef.new(shape: S3Uri, location_name: "S3OutputPath"))
    DebugRuleConfiguration.add_member(:rule_evaluator_image, Shapes::ShapeRef.new(shape: AlgorithmImage, required: true, location_name: "RuleEvaluatorImage"))
    DebugRuleConfiguration.add_member(:instance_type, Shapes::ShapeRef.new(shape: ProcessingInstanceType, location_name: "InstanceType"))
    DebugRuleConfiguration.add_member(:volume_size_in_gb, Shapes::ShapeRef.new(shape: OptionalVolumeSizeInGB, location_name: "VolumeSizeInGB"))
    DebugRuleConfiguration.add_member(:rule_parameters, Shapes::ShapeRef.new(shape: RuleParameters, location_name: "RuleParameters"))
    DebugRuleConfiguration.struct_class = Types::DebugRuleConfiguration

    DebugRuleConfigurations.member = Shapes::ShapeRef.new(shape: DebugRuleConfiguration)

    DebugRuleEvaluationStatus.add_member(:rule_configuration_name, Shapes::ShapeRef.new(shape: RuleConfigurationName, location_name: "RuleConfigurationName"))
    DebugRuleEvaluationStatus.add_member(:rule_evaluation_job_arn, Shapes::ShapeRef.new(shape: ProcessingJobArn, location_name: "RuleEvaluationJobArn"))
    DebugRuleEvaluationStatus.add_member(:rule_evaluation_status, Shapes::ShapeRef.new(shape: RuleEvaluationStatus, location_name: "RuleEvaluationStatus"))
    DebugRuleEvaluationStatus.add_member(:status_details, Shapes::ShapeRef.new(shape: StatusDetails, location_name: "StatusDetails"))
    DebugRuleEvaluationStatus.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DebugRuleEvaluationStatus.struct_class = Types::DebugRuleEvaluationStatus

    DebugRuleEvaluationStatuses.member = Shapes::ShapeRef.new(shape: DebugRuleEvaluationStatus)

    DeleteActionRequest.add_member(:action_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "ActionName"))
    DeleteActionRequest.struct_class = Types::DeleteActionRequest

    DeleteActionResponse.add_member(:action_arn, Shapes::ShapeRef.new(shape: ActionArn, location_name: "ActionArn"))
    DeleteActionResponse.struct_class = Types::DeleteActionResponse

    DeleteAlgorithmInput.add_member(:algorithm_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "AlgorithmName"))
    DeleteAlgorithmInput.struct_class = Types::DeleteAlgorithmInput

    DeleteAppImageConfigRequest.add_member(:app_image_config_name, Shapes::ShapeRef.new(shape: AppImageConfigName, required: true, location_name: "AppImageConfigName"))
    DeleteAppImageConfigRequest.struct_class = Types::DeleteAppImageConfigRequest

    DeleteAppRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    DeleteAppRequest.add_member(:user_profile_name, Shapes::ShapeRef.new(shape: UserProfileName, required: true, location_name: "UserProfileName"))
    DeleteAppRequest.add_member(:app_type, Shapes::ShapeRef.new(shape: AppType, required: true, location_name: "AppType"))
    DeleteAppRequest.add_member(:app_name, Shapes::ShapeRef.new(shape: AppName, required: true, location_name: "AppName"))
    DeleteAppRequest.struct_class = Types::DeleteAppRequest

    DeleteArtifactRequest.add_member(:artifact_arn, Shapes::ShapeRef.new(shape: ArtifactArn, location_name: "ArtifactArn"))
    DeleteArtifactRequest.add_member(:source, Shapes::ShapeRef.new(shape: ArtifactSource, location_name: "Source"))
    DeleteArtifactRequest.struct_class = Types::DeleteArtifactRequest

    DeleteArtifactResponse.add_member(:artifact_arn, Shapes::ShapeRef.new(shape: ArtifactArn, location_name: "ArtifactArn"))
    DeleteArtifactResponse.struct_class = Types::DeleteArtifactResponse

    DeleteAssociationRequest.add_member(:source_arn, Shapes::ShapeRef.new(shape: AssociationEntityArn, required: true, location_name: "SourceArn"))
    DeleteAssociationRequest.add_member(:destination_arn, Shapes::ShapeRef.new(shape: AssociationEntityArn, required: true, location_name: "DestinationArn"))
    DeleteAssociationRequest.struct_class = Types::DeleteAssociationRequest

    DeleteAssociationResponse.add_member(:source_arn, Shapes::ShapeRef.new(shape: AssociationEntityArn, location_name: "SourceArn"))
    DeleteAssociationResponse.add_member(:destination_arn, Shapes::ShapeRef.new(shape: AssociationEntityArn, location_name: "DestinationArn"))
    DeleteAssociationResponse.struct_class = Types::DeleteAssociationResponse

    DeleteCodeRepositoryInput.add_member(:code_repository_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "CodeRepositoryName"))
    DeleteCodeRepositoryInput.struct_class = Types::DeleteCodeRepositoryInput

    DeleteContextRequest.add_member(:context_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "ContextName"))
    DeleteContextRequest.struct_class = Types::DeleteContextRequest

    DeleteContextResponse.add_member(:context_arn, Shapes::ShapeRef.new(shape: ContextArn, location_name: "ContextArn"))
    DeleteContextResponse.struct_class = Types::DeleteContextResponse

    DeleteDataQualityJobDefinitionRequest.add_member(:job_definition_name, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionName, required: true, location_name: "JobDefinitionName"))
    DeleteDataQualityJobDefinitionRequest.struct_class = Types::DeleteDataQualityJobDefinitionRequest

    DeleteDeviceFleetRequest.add_member(:device_fleet_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "DeviceFleetName"))
    DeleteDeviceFleetRequest.struct_class = Types::DeleteDeviceFleetRequest

    DeleteDomainRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    DeleteDomainRequest.add_member(:retention_policy, Shapes::ShapeRef.new(shape: RetentionPolicy, location_name: "RetentionPolicy"))
    DeleteDomainRequest.struct_class = Types::DeleteDomainRequest

    DeleteEndpointConfigInput.add_member(:endpoint_config_name, Shapes::ShapeRef.new(shape: EndpointConfigName, required: true, location_name: "EndpointConfigName"))
    DeleteEndpointConfigInput.struct_class = Types::DeleteEndpointConfigInput

    DeleteEndpointInput.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "EndpointName"))
    DeleteEndpointInput.struct_class = Types::DeleteEndpointInput

    DeleteExperimentRequest.add_member(:experiment_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "ExperimentName"))
    DeleteExperimentRequest.struct_class = Types::DeleteExperimentRequest

    DeleteExperimentResponse.add_member(:experiment_arn, Shapes::ShapeRef.new(shape: ExperimentArn, location_name: "ExperimentArn"))
    DeleteExperimentResponse.struct_class = Types::DeleteExperimentResponse

    DeleteFeatureGroupRequest.add_member(:feature_group_name, Shapes::ShapeRef.new(shape: FeatureGroupName, required: true, location_name: "FeatureGroupName"))
    DeleteFeatureGroupRequest.struct_class = Types::DeleteFeatureGroupRequest

    DeleteFlowDefinitionRequest.add_member(:flow_definition_name, Shapes::ShapeRef.new(shape: FlowDefinitionName, required: true, location_name: "FlowDefinitionName"))
    DeleteFlowDefinitionRequest.struct_class = Types::DeleteFlowDefinitionRequest

    DeleteFlowDefinitionResponse.struct_class = Types::DeleteFlowDefinitionResponse

    DeleteHumanTaskUiRequest.add_member(:human_task_ui_name, Shapes::ShapeRef.new(shape: HumanTaskUiName, required: true, location_name: "HumanTaskUiName"))
    DeleteHumanTaskUiRequest.struct_class = Types::DeleteHumanTaskUiRequest

    DeleteHumanTaskUiResponse.struct_class = Types::DeleteHumanTaskUiResponse

    DeleteImageRequest.add_member(:image_name, Shapes::ShapeRef.new(shape: ImageName, required: true, location_name: "ImageName"))
    DeleteImageRequest.struct_class = Types::DeleteImageRequest

    DeleteImageResponse.struct_class = Types::DeleteImageResponse

    DeleteImageVersionRequest.add_member(:image_name, Shapes::ShapeRef.new(shape: ImageName, required: true, location_name: "ImageName"))
    DeleteImageVersionRequest.add_member(:version, Shapes::ShapeRef.new(shape: ImageVersionNumber, required: true, location_name: "Version"))
    DeleteImageVersionRequest.struct_class = Types::DeleteImageVersionRequest

    DeleteImageVersionResponse.struct_class = Types::DeleteImageVersionResponse

    DeleteModelBiasJobDefinitionRequest.add_member(:job_definition_name, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionName, required: true, location_name: "JobDefinitionName"))
    DeleteModelBiasJobDefinitionRequest.struct_class = Types::DeleteModelBiasJobDefinitionRequest

    DeleteModelExplainabilityJobDefinitionRequest.add_member(:job_definition_name, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionName, required: true, location_name: "JobDefinitionName"))
    DeleteModelExplainabilityJobDefinitionRequest.struct_class = Types::DeleteModelExplainabilityJobDefinitionRequest

    DeleteModelInput.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    DeleteModelInput.struct_class = Types::DeleteModelInput

    DeleteModelPackageGroupInput.add_member(:model_package_group_name, Shapes::ShapeRef.new(shape: ArnOrName, required: true, location_name: "ModelPackageGroupName"))
    DeleteModelPackageGroupInput.struct_class = Types::DeleteModelPackageGroupInput

    DeleteModelPackageGroupPolicyInput.add_member(:model_package_group_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "ModelPackageGroupName"))
    DeleteModelPackageGroupPolicyInput.struct_class = Types::DeleteModelPackageGroupPolicyInput

    DeleteModelPackageInput.add_member(:model_package_name, Shapes::ShapeRef.new(shape: VersionedArnOrName, required: true, location_name: "ModelPackageName"))
    DeleteModelPackageInput.struct_class = Types::DeleteModelPackageInput

    DeleteModelQualityJobDefinitionRequest.add_member(:job_definition_name, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionName, required: true, location_name: "JobDefinitionName"))
    DeleteModelQualityJobDefinitionRequest.struct_class = Types::DeleteModelQualityJobDefinitionRequest

    DeleteMonitoringScheduleRequest.add_member(:monitoring_schedule_name, Shapes::ShapeRef.new(shape: MonitoringScheduleName, required: true, location_name: "MonitoringScheduleName"))
    DeleteMonitoringScheduleRequest.struct_class = Types::DeleteMonitoringScheduleRequest

    DeleteNotebookInstanceInput.add_member(:notebook_instance_name, Shapes::ShapeRef.new(shape: NotebookInstanceName, required: true, location_name: "NotebookInstanceName"))
    DeleteNotebookInstanceInput.struct_class = Types::DeleteNotebookInstanceInput

    DeleteNotebookInstanceLifecycleConfigInput.add_member(:notebook_instance_lifecycle_config_name, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigName, required: true, location_name: "NotebookInstanceLifecycleConfigName"))
    DeleteNotebookInstanceLifecycleConfigInput.struct_class = Types::DeleteNotebookInstanceLifecycleConfigInput

    DeletePipelineRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "PipelineName"))
    DeletePipelineRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    DeletePipelineRequest.struct_class = Types::DeletePipelineRequest

    DeletePipelineResponse.add_member(:pipeline_arn, Shapes::ShapeRef.new(shape: PipelineArn, location_name: "PipelineArn"))
    DeletePipelineResponse.struct_class = Types::DeletePipelineResponse

    DeleteProjectInput.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectEntityName, required: true, location_name: "ProjectName"))
    DeleteProjectInput.struct_class = Types::DeleteProjectInput

    DeleteStudioLifecycleConfigRequest.add_member(:studio_lifecycle_config_name, Shapes::ShapeRef.new(shape: StudioLifecycleConfigName, required: true, location_name: "StudioLifecycleConfigName"))
    DeleteStudioLifecycleConfigRequest.struct_class = Types::DeleteStudioLifecycleConfigRequest

    DeleteTagsInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    DeleteTagsInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    DeleteTagsInput.struct_class = Types::DeleteTagsInput

    DeleteTagsOutput.struct_class = Types::DeleteTagsOutput

    DeleteTrialComponentRequest.add_member(:trial_component_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "TrialComponentName"))
    DeleteTrialComponentRequest.struct_class = Types::DeleteTrialComponentRequest

    DeleteTrialComponentResponse.add_member(:trial_component_arn, Shapes::ShapeRef.new(shape: TrialComponentArn, location_name: "TrialComponentArn"))
    DeleteTrialComponentResponse.struct_class = Types::DeleteTrialComponentResponse

    DeleteTrialRequest.add_member(:trial_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "TrialName"))
    DeleteTrialRequest.struct_class = Types::DeleteTrialRequest

    DeleteTrialResponse.add_member(:trial_arn, Shapes::ShapeRef.new(shape: TrialArn, location_name: "TrialArn"))
    DeleteTrialResponse.struct_class = Types::DeleteTrialResponse

    DeleteUserProfileRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    DeleteUserProfileRequest.add_member(:user_profile_name, Shapes::ShapeRef.new(shape: UserProfileName, required: true, location_name: "UserProfileName"))
    DeleteUserProfileRequest.struct_class = Types::DeleteUserProfileRequest

    DeleteWorkforceRequest.add_member(:workforce_name, Shapes::ShapeRef.new(shape: WorkforceName, required: true, location_name: "WorkforceName"))
    DeleteWorkforceRequest.struct_class = Types::DeleteWorkforceRequest

    DeleteWorkforceResponse.struct_class = Types::DeleteWorkforceResponse

    DeleteWorkteamRequest.add_member(:workteam_name, Shapes::ShapeRef.new(shape: WorkteamName, required: true, location_name: "WorkteamName"))
    DeleteWorkteamRequest.struct_class = Types::DeleteWorkteamRequest

    DeleteWorkteamResponse.add_member(:success, Shapes::ShapeRef.new(shape: Success, required: true, location_name: "Success"))
    DeleteWorkteamResponse.struct_class = Types::DeleteWorkteamResponse

    DeployedImage.add_member(:specified_image, Shapes::ShapeRef.new(shape: ContainerImage, location_name: "SpecifiedImage"))
    DeployedImage.add_member(:resolved_image, Shapes::ShapeRef.new(shape: ContainerImage, location_name: "ResolvedImage"))
    DeployedImage.add_member(:resolution_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ResolutionTime"))
    DeployedImage.struct_class = Types::DeployedImage

    DeployedImages.member = Shapes::ShapeRef.new(shape: DeployedImage)

    DeploymentConfig.add_member(:blue_green_update_policy, Shapes::ShapeRef.new(shape: BlueGreenUpdatePolicy, required: true, location_name: "BlueGreenUpdatePolicy"))
    DeploymentConfig.add_member(:auto_rollback_configuration, Shapes::ShapeRef.new(shape: AutoRollbackConfig, location_name: "AutoRollbackConfiguration"))
    DeploymentConfig.struct_class = Types::DeploymentConfig

    DeregisterDevicesRequest.add_member(:device_fleet_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "DeviceFleetName"))
    DeregisterDevicesRequest.add_member(:device_names, Shapes::ShapeRef.new(shape: DeviceNames, required: true, location_name: "DeviceNames"))
    DeregisterDevicesRequest.struct_class = Types::DeregisterDevicesRequest

    DescribeActionRequest.add_member(:action_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "ActionName"))
    DescribeActionRequest.struct_class = Types::DescribeActionRequest

    DescribeActionResponse.add_member(:action_name, Shapes::ShapeRef.new(shape: ExperimentEntityNameOrArn, location_name: "ActionName"))
    DescribeActionResponse.add_member(:action_arn, Shapes::ShapeRef.new(shape: ActionArn, location_name: "ActionArn"))
    DescribeActionResponse.add_member(:source, Shapes::ShapeRef.new(shape: ActionSource, location_name: "Source"))
    DescribeActionResponse.add_member(:action_type, Shapes::ShapeRef.new(shape: String256, location_name: "ActionType"))
    DescribeActionResponse.add_member(:description, Shapes::ShapeRef.new(shape: ExperimentDescription, location_name: "Description"))
    DescribeActionResponse.add_member(:status, Shapes::ShapeRef.new(shape: ActionStatus, location_name: "Status"))
    DescribeActionResponse.add_member(:properties, Shapes::ShapeRef.new(shape: LineageEntityParameters, location_name: "Properties"))
    DescribeActionResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeActionResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "CreatedBy"))
    DescribeActionResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribeActionResponse.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "LastModifiedBy"))
    DescribeActionResponse.add_member(:metadata_properties, Shapes::ShapeRef.new(shape: MetadataProperties, location_name: "MetadataProperties"))
    DescribeActionResponse.add_member(:lineage_group_arn, Shapes::ShapeRef.new(shape: LineageGroupArn, location_name: "LineageGroupArn"))
    DescribeActionResponse.struct_class = Types::DescribeActionResponse

    DescribeAlgorithmInput.add_member(:algorithm_name, Shapes::ShapeRef.new(shape: ArnOrName, required: true, location_name: "AlgorithmName"))
    DescribeAlgorithmInput.struct_class = Types::DescribeAlgorithmInput

    DescribeAlgorithmOutput.add_member(:algorithm_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "AlgorithmName"))
    DescribeAlgorithmOutput.add_member(:algorithm_arn, Shapes::ShapeRef.new(shape: AlgorithmArn, required: true, location_name: "AlgorithmArn"))
    DescribeAlgorithmOutput.add_member(:algorithm_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "AlgorithmDescription"))
    DescribeAlgorithmOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    DescribeAlgorithmOutput.add_member(:training_specification, Shapes::ShapeRef.new(shape: TrainingSpecification, required: true, location_name: "TrainingSpecification"))
    DescribeAlgorithmOutput.add_member(:inference_specification, Shapes::ShapeRef.new(shape: InferenceSpecification, location_name: "InferenceSpecification"))
    DescribeAlgorithmOutput.add_member(:validation_specification, Shapes::ShapeRef.new(shape: AlgorithmValidationSpecification, location_name: "ValidationSpecification"))
    DescribeAlgorithmOutput.add_member(:algorithm_status, Shapes::ShapeRef.new(shape: AlgorithmStatus, required: true, location_name: "AlgorithmStatus"))
    DescribeAlgorithmOutput.add_member(:algorithm_status_details, Shapes::ShapeRef.new(shape: AlgorithmStatusDetails, required: true, location_name: "AlgorithmStatusDetails"))
    DescribeAlgorithmOutput.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, location_name: "ProductId"))
    DescribeAlgorithmOutput.add_member(:certify_for_marketplace, Shapes::ShapeRef.new(shape: CertifyForMarketplace, location_name: "CertifyForMarketplace"))
    DescribeAlgorithmOutput.struct_class = Types::DescribeAlgorithmOutput

    DescribeAppImageConfigRequest.add_member(:app_image_config_name, Shapes::ShapeRef.new(shape: AppImageConfigName, required: true, location_name: "AppImageConfigName"))
    DescribeAppImageConfigRequest.struct_class = Types::DescribeAppImageConfigRequest

    DescribeAppImageConfigResponse.add_member(:app_image_config_arn, Shapes::ShapeRef.new(shape: AppImageConfigArn, location_name: "AppImageConfigArn"))
    DescribeAppImageConfigResponse.add_member(:app_image_config_name, Shapes::ShapeRef.new(shape: AppImageConfigName, location_name: "AppImageConfigName"))
    DescribeAppImageConfigResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeAppImageConfigResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribeAppImageConfigResponse.add_member(:kernel_gateway_image_config, Shapes::ShapeRef.new(shape: KernelGatewayImageConfig, location_name: "KernelGatewayImageConfig"))
    DescribeAppImageConfigResponse.struct_class = Types::DescribeAppImageConfigResponse

    DescribeAppRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    DescribeAppRequest.add_member(:user_profile_name, Shapes::ShapeRef.new(shape: UserProfileName, required: true, location_name: "UserProfileName"))
    DescribeAppRequest.add_member(:app_type, Shapes::ShapeRef.new(shape: AppType, required: true, location_name: "AppType"))
    DescribeAppRequest.add_member(:app_name, Shapes::ShapeRef.new(shape: AppName, required: true, location_name: "AppName"))
    DescribeAppRequest.struct_class = Types::DescribeAppRequest

    DescribeAppResponse.add_member(:app_arn, Shapes::ShapeRef.new(shape: AppArn, location_name: "AppArn"))
    DescribeAppResponse.add_member(:app_type, Shapes::ShapeRef.new(shape: AppType, location_name: "AppType"))
    DescribeAppResponse.add_member(:app_name, Shapes::ShapeRef.new(shape: AppName, location_name: "AppName"))
    DescribeAppResponse.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "DomainId"))
    DescribeAppResponse.add_member(:user_profile_name, Shapes::ShapeRef.new(shape: UserProfileName, location_name: "UserProfileName"))
    DescribeAppResponse.add_member(:status, Shapes::ShapeRef.new(shape: AppStatus, location_name: "Status"))
    DescribeAppResponse.add_member(:last_health_check_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastHealthCheckTimestamp"))
    DescribeAppResponse.add_member(:last_user_activity_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUserActivityTimestamp"))
    DescribeAppResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    DescribeAppResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    DescribeAppResponse.add_member(:resource_spec, Shapes::ShapeRef.new(shape: ResourceSpec, location_name: "ResourceSpec"))
    DescribeAppResponse.struct_class = Types::DescribeAppResponse

    DescribeArtifactRequest.add_member(:artifact_arn, Shapes::ShapeRef.new(shape: ArtifactArn, required: true, location_name: "ArtifactArn"))
    DescribeArtifactRequest.struct_class = Types::DescribeArtifactRequest

    DescribeArtifactResponse.add_member(:artifact_name, Shapes::ShapeRef.new(shape: ExperimentEntityNameOrArn, location_name: "ArtifactName"))
    DescribeArtifactResponse.add_member(:artifact_arn, Shapes::ShapeRef.new(shape: ArtifactArn, location_name: "ArtifactArn"))
    DescribeArtifactResponse.add_member(:source, Shapes::ShapeRef.new(shape: ArtifactSource, location_name: "Source"))
    DescribeArtifactResponse.add_member(:artifact_type, Shapes::ShapeRef.new(shape: String256, location_name: "ArtifactType"))
    DescribeArtifactResponse.add_member(:properties, Shapes::ShapeRef.new(shape: LineageEntityParameters, location_name: "Properties"))
    DescribeArtifactResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeArtifactResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "CreatedBy"))
    DescribeArtifactResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribeArtifactResponse.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "LastModifiedBy"))
    DescribeArtifactResponse.add_member(:metadata_properties, Shapes::ShapeRef.new(shape: MetadataProperties, location_name: "MetadataProperties"))
    DescribeArtifactResponse.add_member(:lineage_group_arn, Shapes::ShapeRef.new(shape: LineageGroupArn, location_name: "LineageGroupArn"))
    DescribeArtifactResponse.struct_class = Types::DescribeArtifactResponse

    DescribeAutoMLJobRequest.add_member(:auto_ml_job_name, Shapes::ShapeRef.new(shape: AutoMLJobName, required: true, location_name: "AutoMLJobName"))
    DescribeAutoMLJobRequest.struct_class = Types::DescribeAutoMLJobRequest

    DescribeAutoMLJobResponse.add_member(:auto_ml_job_name, Shapes::ShapeRef.new(shape: AutoMLJobName, required: true, location_name: "AutoMLJobName"))
    DescribeAutoMLJobResponse.add_member(:auto_ml_job_arn, Shapes::ShapeRef.new(shape: AutoMLJobArn, required: true, location_name: "AutoMLJobArn"))
    DescribeAutoMLJobResponse.add_member(:input_data_config, Shapes::ShapeRef.new(shape: AutoMLInputDataConfig, required: true, location_name: "InputDataConfig"))
    DescribeAutoMLJobResponse.add_member(:output_data_config, Shapes::ShapeRef.new(shape: AutoMLOutputDataConfig, required: true, location_name: "OutputDataConfig"))
    DescribeAutoMLJobResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    DescribeAutoMLJobResponse.add_member(:auto_ml_job_objective, Shapes::ShapeRef.new(shape: AutoMLJobObjective, location_name: "AutoMLJobObjective"))
    DescribeAutoMLJobResponse.add_member(:problem_type, Shapes::ShapeRef.new(shape: ProblemType, location_name: "ProblemType"))
    DescribeAutoMLJobResponse.add_member(:auto_ml_job_config, Shapes::ShapeRef.new(shape: AutoMLJobConfig, location_name: "AutoMLJobConfig"))
    DescribeAutoMLJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeAutoMLJobResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    DescribeAutoMLJobResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    DescribeAutoMLJobResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: AutoMLFailureReason, location_name: "FailureReason"))
    DescribeAutoMLJobResponse.add_member(:partial_failure_reasons, Shapes::ShapeRef.new(shape: AutoMLPartialFailureReasons, location_name: "PartialFailureReasons"))
    DescribeAutoMLJobResponse.add_member(:best_candidate, Shapes::ShapeRef.new(shape: AutoMLCandidate, location_name: "BestCandidate"))
    DescribeAutoMLJobResponse.add_member(:auto_ml_job_status, Shapes::ShapeRef.new(shape: AutoMLJobStatus, required: true, location_name: "AutoMLJobStatus"))
    DescribeAutoMLJobResponse.add_member(:auto_ml_job_secondary_status, Shapes::ShapeRef.new(shape: AutoMLJobSecondaryStatus, required: true, location_name: "AutoMLJobSecondaryStatus"))
    DescribeAutoMLJobResponse.add_member(:generate_candidate_definitions_only, Shapes::ShapeRef.new(shape: GenerateCandidateDefinitionsOnly, location_name: "GenerateCandidateDefinitionsOnly"))
    DescribeAutoMLJobResponse.add_member(:auto_ml_job_artifacts, Shapes::ShapeRef.new(shape: AutoMLJobArtifacts, location_name: "AutoMLJobArtifacts"))
    DescribeAutoMLJobResponse.add_member(:resolved_attributes, Shapes::ShapeRef.new(shape: ResolvedAttributes, location_name: "ResolvedAttributes"))
    DescribeAutoMLJobResponse.add_member(:model_deploy_config, Shapes::ShapeRef.new(shape: ModelDeployConfig, location_name: "ModelDeployConfig"))
    DescribeAutoMLJobResponse.add_member(:model_deploy_result, Shapes::ShapeRef.new(shape: ModelDeployResult, location_name: "ModelDeployResult"))
    DescribeAutoMLJobResponse.struct_class = Types::DescribeAutoMLJobResponse

    DescribeCodeRepositoryInput.add_member(:code_repository_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "CodeRepositoryName"))
    DescribeCodeRepositoryInput.struct_class = Types::DescribeCodeRepositoryInput

    DescribeCodeRepositoryOutput.add_member(:code_repository_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "CodeRepositoryName"))
    DescribeCodeRepositoryOutput.add_member(:code_repository_arn, Shapes::ShapeRef.new(shape: CodeRepositoryArn, required: true, location_name: "CodeRepositoryArn"))
    DescribeCodeRepositoryOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    DescribeCodeRepositoryOutput.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastModifiedTime, required: true, location_name: "LastModifiedTime"))
    DescribeCodeRepositoryOutput.add_member(:git_config, Shapes::ShapeRef.new(shape: GitConfig, location_name: "GitConfig"))
    DescribeCodeRepositoryOutput.struct_class = Types::DescribeCodeRepositoryOutput

    DescribeCompilationJobRequest.add_member(:compilation_job_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "CompilationJobName"))
    DescribeCompilationJobRequest.struct_class = Types::DescribeCompilationJobRequest

    DescribeCompilationJobResponse.add_member(:compilation_job_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "CompilationJobName"))
    DescribeCompilationJobResponse.add_member(:compilation_job_arn, Shapes::ShapeRef.new(shape: CompilationJobArn, required: true, location_name: "CompilationJobArn"))
    DescribeCompilationJobResponse.add_member(:compilation_job_status, Shapes::ShapeRef.new(shape: CompilationJobStatus, required: true, location_name: "CompilationJobStatus"))
    DescribeCompilationJobResponse.add_member(:compilation_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompilationStartTime"))
    DescribeCompilationJobResponse.add_member(:compilation_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompilationEndTime"))
    DescribeCompilationJobResponse.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: StoppingCondition, required: true, location_name: "StoppingCondition"))
    DescribeCompilationJobResponse.add_member(:inference_image, Shapes::ShapeRef.new(shape: InferenceImage, location_name: "InferenceImage"))
    DescribeCompilationJobResponse.add_member(:model_package_version_arn, Shapes::ShapeRef.new(shape: ModelPackageArn, location_name: "ModelPackageVersionArn"))
    DescribeCompilationJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    DescribeCompilationJobResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastModifiedTime, required: true, location_name: "LastModifiedTime"))
    DescribeCompilationJobResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, required: true, location_name: "FailureReason"))
    DescribeCompilationJobResponse.add_member(:model_artifacts, Shapes::ShapeRef.new(shape: ModelArtifacts, required: true, location_name: "ModelArtifacts"))
    DescribeCompilationJobResponse.add_member(:model_digests, Shapes::ShapeRef.new(shape: ModelDigests, location_name: "ModelDigests"))
    DescribeCompilationJobResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    DescribeCompilationJobResponse.add_member(:input_config, Shapes::ShapeRef.new(shape: InputConfig, required: true, location_name: "InputConfig"))
    DescribeCompilationJobResponse.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, required: true, location_name: "OutputConfig"))
    DescribeCompilationJobResponse.add_member(:vpc_config, Shapes::ShapeRef.new(shape: NeoVpcConfig, location_name: "VpcConfig"))
    DescribeCompilationJobResponse.struct_class = Types::DescribeCompilationJobResponse

    DescribeContextRequest.add_member(:context_name, Shapes::ShapeRef.new(shape: ExperimentEntityNameOrArn, required: true, location_name: "ContextName"))
    DescribeContextRequest.struct_class = Types::DescribeContextRequest

    DescribeContextResponse.add_member(:context_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "ContextName"))
    DescribeContextResponse.add_member(:context_arn, Shapes::ShapeRef.new(shape: ContextArn, location_name: "ContextArn"))
    DescribeContextResponse.add_member(:source, Shapes::ShapeRef.new(shape: ContextSource, location_name: "Source"))
    DescribeContextResponse.add_member(:context_type, Shapes::ShapeRef.new(shape: String256, location_name: "ContextType"))
    DescribeContextResponse.add_member(:description, Shapes::ShapeRef.new(shape: ExperimentDescription, location_name: "Description"))
    DescribeContextResponse.add_member(:properties, Shapes::ShapeRef.new(shape: LineageEntityParameters, location_name: "Properties"))
    DescribeContextResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeContextResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "CreatedBy"))
    DescribeContextResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribeContextResponse.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "LastModifiedBy"))
    DescribeContextResponse.add_member(:lineage_group_arn, Shapes::ShapeRef.new(shape: LineageGroupArn, location_name: "LineageGroupArn"))
    DescribeContextResponse.struct_class = Types::DescribeContextResponse

    DescribeDataQualityJobDefinitionRequest.add_member(:job_definition_name, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionName, required: true, location_name: "JobDefinitionName"))
    DescribeDataQualityJobDefinitionRequest.struct_class = Types::DescribeDataQualityJobDefinitionRequest

    DescribeDataQualityJobDefinitionResponse.add_member(:job_definition_arn, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionArn, required: true, location_name: "JobDefinitionArn"))
    DescribeDataQualityJobDefinitionResponse.add_member(:job_definition_name, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionName, required: true, location_name: "JobDefinitionName"))
    DescribeDataQualityJobDefinitionResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeDataQualityJobDefinitionResponse.add_member(:data_quality_baseline_config, Shapes::ShapeRef.new(shape: DataQualityBaselineConfig, location_name: "DataQualityBaselineConfig"))
    DescribeDataQualityJobDefinitionResponse.add_member(:data_quality_app_specification, Shapes::ShapeRef.new(shape: DataQualityAppSpecification, required: true, location_name: "DataQualityAppSpecification"))
    DescribeDataQualityJobDefinitionResponse.add_member(:data_quality_job_input, Shapes::ShapeRef.new(shape: DataQualityJobInput, required: true, location_name: "DataQualityJobInput"))
    DescribeDataQualityJobDefinitionResponse.add_member(:data_quality_job_output_config, Shapes::ShapeRef.new(shape: MonitoringOutputConfig, required: true, location_name: "DataQualityJobOutputConfig"))
    DescribeDataQualityJobDefinitionResponse.add_member(:job_resources, Shapes::ShapeRef.new(shape: MonitoringResources, required: true, location_name: "JobResources"))
    DescribeDataQualityJobDefinitionResponse.add_member(:network_config, Shapes::ShapeRef.new(shape: MonitoringNetworkConfig, location_name: "NetworkConfig"))
    DescribeDataQualityJobDefinitionResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    DescribeDataQualityJobDefinitionResponse.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: MonitoringStoppingCondition, location_name: "StoppingCondition"))
    DescribeDataQualityJobDefinitionResponse.struct_class = Types::DescribeDataQualityJobDefinitionResponse

    DescribeDeviceFleetRequest.add_member(:device_fleet_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "DeviceFleetName"))
    DescribeDeviceFleetRequest.struct_class = Types::DescribeDeviceFleetRequest

    DescribeDeviceFleetResponse.add_member(:device_fleet_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "DeviceFleetName"))
    DescribeDeviceFleetResponse.add_member(:device_fleet_arn, Shapes::ShapeRef.new(shape: DeviceFleetArn, required: true, location_name: "DeviceFleetArn"))
    DescribeDeviceFleetResponse.add_member(:output_config, Shapes::ShapeRef.new(shape: EdgeOutputConfig, required: true, location_name: "OutputConfig"))
    DescribeDeviceFleetResponse.add_member(:description, Shapes::ShapeRef.new(shape: DeviceFleetDescription, location_name: "Description"))
    DescribeDeviceFleetResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeDeviceFleetResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    DescribeDeviceFleetResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DescribeDeviceFleetResponse.add_member(:iot_role_alias, Shapes::ShapeRef.new(shape: IotRoleAlias, location_name: "IotRoleAlias"))
    DescribeDeviceFleetResponse.struct_class = Types::DescribeDeviceFleetResponse

    DescribeDeviceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeDeviceRequest.add_member(:device_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "DeviceName"))
    DescribeDeviceRequest.add_member(:device_fleet_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "DeviceFleetName"))
    DescribeDeviceRequest.struct_class = Types::DescribeDeviceRequest

    DescribeDeviceResponse.add_member(:device_arn, Shapes::ShapeRef.new(shape: DeviceArn, location_name: "DeviceArn"))
    DescribeDeviceResponse.add_member(:device_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "DeviceName"))
    DescribeDeviceResponse.add_member(:description, Shapes::ShapeRef.new(shape: DeviceDescription, location_name: "Description"))
    DescribeDeviceResponse.add_member(:device_fleet_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "DeviceFleetName"))
    DescribeDeviceResponse.add_member(:iot_thing_name, Shapes::ShapeRef.new(shape: ThingName, location_name: "IotThingName"))
    DescribeDeviceResponse.add_member(:registration_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "RegistrationTime"))
    DescribeDeviceResponse.add_member(:latest_heartbeat, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LatestHeartbeat"))
    DescribeDeviceResponse.add_member(:models, Shapes::ShapeRef.new(shape: EdgeModels, location_name: "Models"))
    DescribeDeviceResponse.add_member(:max_models, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxModels"))
    DescribeDeviceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeDeviceResponse.add_member(:agent_version, Shapes::ShapeRef.new(shape: EdgeVersion, location_name: "AgentVersion"))
    DescribeDeviceResponse.struct_class = Types::DescribeDeviceResponse

    DescribeDomainRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    DescribeDomainRequest.struct_class = Types::DescribeDomainRequest

    DescribeDomainResponse.add_member(:domain_arn, Shapes::ShapeRef.new(shape: DomainArn, location_name: "DomainArn"))
    DescribeDomainResponse.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "DomainId"))
    DescribeDomainResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    DescribeDomainResponse.add_member(:home_efs_file_system_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "HomeEfsFileSystemId"))
    DescribeDomainResponse.add_member(:single_sign_on_managed_application_instance_id, Shapes::ShapeRef.new(shape: String256, location_name: "SingleSignOnManagedApplicationInstanceId"))
    DescribeDomainResponse.add_member(:status, Shapes::ShapeRef.new(shape: DomainStatus, location_name: "Status"))
    DescribeDomainResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    DescribeDomainResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTime"))
    DescribeDomainResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    DescribeDomainResponse.add_member(:auth_mode, Shapes::ShapeRef.new(shape: AuthMode, location_name: "AuthMode"))
    DescribeDomainResponse.add_member(:default_user_settings, Shapes::ShapeRef.new(shape: UserSettings, location_name: "DefaultUserSettings"))
    DescribeDomainResponse.add_member(:app_network_access_type, Shapes::ShapeRef.new(shape: AppNetworkAccessType, location_name: "AppNetworkAccessType"))
    DescribeDomainResponse.add_member(:home_efs_file_system_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, deprecated: true, location_name: "HomeEfsFileSystemKmsKeyId", metadata: {"deprecatedMessage"=>"This property is deprecated, use KmsKeyId instead."}))
    DescribeDomainResponse.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: Subnets, location_name: "SubnetIds"))
    DescribeDomainResponse.add_member(:url, Shapes::ShapeRef.new(shape: String1024, location_name: "Url"))
    DescribeDomainResponse.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    DescribeDomainResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    DescribeDomainResponse.add_member(:domain_settings, Shapes::ShapeRef.new(shape: DomainSettings, location_name: "DomainSettings"))
    DescribeDomainResponse.add_member(:app_security_group_management, Shapes::ShapeRef.new(shape: AppSecurityGroupManagement, location_name: "AppSecurityGroupManagement"))
    DescribeDomainResponse.add_member(:security_group_id_for_domain_boundary, Shapes::ShapeRef.new(shape: SecurityGroupId, location_name: "SecurityGroupIdForDomainBoundary"))
    DescribeDomainResponse.struct_class = Types::DescribeDomainResponse

    DescribeEdgePackagingJobRequest.add_member(:edge_packaging_job_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "EdgePackagingJobName"))
    DescribeEdgePackagingJobRequest.struct_class = Types::DescribeEdgePackagingJobRequest

    DescribeEdgePackagingJobResponse.add_member(:edge_packaging_job_arn, Shapes::ShapeRef.new(shape: EdgePackagingJobArn, required: true, location_name: "EdgePackagingJobArn"))
    DescribeEdgePackagingJobResponse.add_member(:edge_packaging_job_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "EdgePackagingJobName"))
    DescribeEdgePackagingJobResponse.add_member(:compilation_job_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "CompilationJobName"))
    DescribeEdgePackagingJobResponse.add_member(:model_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "ModelName"))
    DescribeEdgePackagingJobResponse.add_member(:model_version, Shapes::ShapeRef.new(shape: EdgeVersion, location_name: "ModelVersion"))
    DescribeEdgePackagingJobResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DescribeEdgePackagingJobResponse.add_member(:output_config, Shapes::ShapeRef.new(shape: EdgeOutputConfig, location_name: "OutputConfig"))
    DescribeEdgePackagingJobResponse.add_member(:resource_key, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "ResourceKey"))
    DescribeEdgePackagingJobResponse.add_member(:edge_packaging_job_status, Shapes::ShapeRef.new(shape: EdgePackagingJobStatus, required: true, location_name: "EdgePackagingJobStatus"))
    DescribeEdgePackagingJobResponse.add_member(:edge_packaging_job_status_message, Shapes::ShapeRef.new(shape: String, location_name: "EdgePackagingJobStatusMessage"))
    DescribeEdgePackagingJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeEdgePackagingJobResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribeEdgePackagingJobResponse.add_member(:model_artifact, Shapes::ShapeRef.new(shape: S3Uri, location_name: "ModelArtifact"))
    DescribeEdgePackagingJobResponse.add_member(:model_signature, Shapes::ShapeRef.new(shape: String, location_name: "ModelSignature"))
    DescribeEdgePackagingJobResponse.add_member(:preset_deployment_output, Shapes::ShapeRef.new(shape: EdgePresetDeploymentOutput, location_name: "PresetDeploymentOutput"))
    DescribeEdgePackagingJobResponse.struct_class = Types::DescribeEdgePackagingJobResponse

    DescribeEndpointConfigInput.add_member(:endpoint_config_name, Shapes::ShapeRef.new(shape: EndpointConfigName, required: true, location_name: "EndpointConfigName"))
    DescribeEndpointConfigInput.struct_class = Types::DescribeEndpointConfigInput

    DescribeEndpointConfigOutput.add_member(:endpoint_config_name, Shapes::ShapeRef.new(shape: EndpointConfigName, required: true, location_name: "EndpointConfigName"))
    DescribeEndpointConfigOutput.add_member(:endpoint_config_arn, Shapes::ShapeRef.new(shape: EndpointConfigArn, required: true, location_name: "EndpointConfigArn"))
    DescribeEndpointConfigOutput.add_member(:production_variants, Shapes::ShapeRef.new(shape: ProductionVariantList, required: true, location_name: "ProductionVariants"))
    DescribeEndpointConfigOutput.add_member(:data_capture_config, Shapes::ShapeRef.new(shape: DataCaptureConfig, location_name: "DataCaptureConfig"))
    DescribeEndpointConfigOutput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    DescribeEndpointConfigOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeEndpointConfigOutput.add_member(:async_inference_config, Shapes::ShapeRef.new(shape: AsyncInferenceConfig, location_name: "AsyncInferenceConfig"))
    DescribeEndpointConfigOutput.struct_class = Types::DescribeEndpointConfigOutput

    DescribeEndpointInput.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "EndpointName"))
    DescribeEndpointInput.struct_class = Types::DescribeEndpointInput

    DescribeEndpointOutput.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "EndpointName"))
    DescribeEndpointOutput.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: EndpointArn, required: true, location_name: "EndpointArn"))
    DescribeEndpointOutput.add_member(:endpoint_config_name, Shapes::ShapeRef.new(shape: EndpointConfigName, required: true, location_name: "EndpointConfigName"))
    DescribeEndpointOutput.add_member(:production_variants, Shapes::ShapeRef.new(shape: ProductionVariantSummaryList, location_name: "ProductionVariants"))
    DescribeEndpointOutput.add_member(:data_capture_config, Shapes::ShapeRef.new(shape: DataCaptureConfigSummary, location_name: "DataCaptureConfig"))
    DescribeEndpointOutput.add_member(:endpoint_status, Shapes::ShapeRef.new(shape: EndpointStatus, required: true, location_name: "EndpointStatus"))
    DescribeEndpointOutput.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    DescribeEndpointOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeEndpointOutput.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    DescribeEndpointOutput.add_member(:last_deployment_config, Shapes::ShapeRef.new(shape: DeploymentConfig, location_name: "LastDeploymentConfig"))
    DescribeEndpointOutput.add_member(:async_inference_config, Shapes::ShapeRef.new(shape: AsyncInferenceConfig, location_name: "AsyncInferenceConfig"))
    DescribeEndpointOutput.add_member(:pending_deployment_summary, Shapes::ShapeRef.new(shape: PendingDeploymentSummary, location_name: "PendingDeploymentSummary"))
    DescribeEndpointOutput.struct_class = Types::DescribeEndpointOutput

    DescribeExperimentRequest.add_member(:experiment_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "ExperimentName"))
    DescribeExperimentRequest.struct_class = Types::DescribeExperimentRequest

    DescribeExperimentResponse.add_member(:experiment_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "ExperimentName"))
    DescribeExperimentResponse.add_member(:experiment_arn, Shapes::ShapeRef.new(shape: ExperimentArn, location_name: "ExperimentArn"))
    DescribeExperimentResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "DisplayName"))
    DescribeExperimentResponse.add_member(:source, Shapes::ShapeRef.new(shape: ExperimentSource, location_name: "Source"))
    DescribeExperimentResponse.add_member(:description, Shapes::ShapeRef.new(shape: ExperimentDescription, location_name: "Description"))
    DescribeExperimentResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeExperimentResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "CreatedBy"))
    DescribeExperimentResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribeExperimentResponse.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "LastModifiedBy"))
    DescribeExperimentResponse.struct_class = Types::DescribeExperimentResponse

    DescribeFeatureGroupRequest.add_member(:feature_group_name, Shapes::ShapeRef.new(shape: FeatureGroupName, required: true, location_name: "FeatureGroupName"))
    DescribeFeatureGroupRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeFeatureGroupRequest.struct_class = Types::DescribeFeatureGroupRequest

    DescribeFeatureGroupResponse.add_member(:feature_group_arn, Shapes::ShapeRef.new(shape: FeatureGroupArn, required: true, location_name: "FeatureGroupArn"))
    DescribeFeatureGroupResponse.add_member(:feature_group_name, Shapes::ShapeRef.new(shape: FeatureGroupName, required: true, location_name: "FeatureGroupName"))
    DescribeFeatureGroupResponse.add_member(:record_identifier_feature_name, Shapes::ShapeRef.new(shape: FeatureName, required: true, location_name: "RecordIdentifierFeatureName"))
    DescribeFeatureGroupResponse.add_member(:event_time_feature_name, Shapes::ShapeRef.new(shape: FeatureName, required: true, location_name: "EventTimeFeatureName"))
    DescribeFeatureGroupResponse.add_member(:feature_definitions, Shapes::ShapeRef.new(shape: FeatureDefinitions, required: true, location_name: "FeatureDefinitions"))
    DescribeFeatureGroupResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    DescribeFeatureGroupResponse.add_member(:online_store_config, Shapes::ShapeRef.new(shape: OnlineStoreConfig, location_name: "OnlineStoreConfig"))
    DescribeFeatureGroupResponse.add_member(:offline_store_config, Shapes::ShapeRef.new(shape: OfflineStoreConfig, location_name: "OfflineStoreConfig"))
    DescribeFeatureGroupResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DescribeFeatureGroupResponse.add_member(:feature_group_status, Shapes::ShapeRef.new(shape: FeatureGroupStatus, location_name: "FeatureGroupStatus"))
    DescribeFeatureGroupResponse.add_member(:offline_store_status, Shapes::ShapeRef.new(shape: OfflineStoreStatus, location_name: "OfflineStoreStatus"))
    DescribeFeatureGroupResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    DescribeFeatureGroupResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeFeatureGroupResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, required: true, location_name: "NextToken"))
    DescribeFeatureGroupResponse.struct_class = Types::DescribeFeatureGroupResponse

    DescribeFlowDefinitionRequest.add_member(:flow_definition_name, Shapes::ShapeRef.new(shape: FlowDefinitionName, required: true, location_name: "FlowDefinitionName"))
    DescribeFlowDefinitionRequest.struct_class = Types::DescribeFlowDefinitionRequest

    DescribeFlowDefinitionResponse.add_member(:flow_definition_arn, Shapes::ShapeRef.new(shape: FlowDefinitionArn, required: true, location_name: "FlowDefinitionArn"))
    DescribeFlowDefinitionResponse.add_member(:flow_definition_name, Shapes::ShapeRef.new(shape: FlowDefinitionName, required: true, location_name: "FlowDefinitionName"))
    DescribeFlowDefinitionResponse.add_member(:flow_definition_status, Shapes::ShapeRef.new(shape: FlowDefinitionStatus, required: true, location_name: "FlowDefinitionStatus"))
    DescribeFlowDefinitionResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeFlowDefinitionResponse.add_member(:human_loop_request_source, Shapes::ShapeRef.new(shape: HumanLoopRequestSource, location_name: "HumanLoopRequestSource"))
    DescribeFlowDefinitionResponse.add_member(:human_loop_activation_config, Shapes::ShapeRef.new(shape: HumanLoopActivationConfig, location_name: "HumanLoopActivationConfig"))
    DescribeFlowDefinitionResponse.add_member(:human_loop_config, Shapes::ShapeRef.new(shape: HumanLoopConfig, required: true, location_name: "HumanLoopConfig"))
    DescribeFlowDefinitionResponse.add_member(:output_config, Shapes::ShapeRef.new(shape: FlowDefinitionOutputConfig, required: true, location_name: "OutputConfig"))
    DescribeFlowDefinitionResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    DescribeFlowDefinitionResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    DescribeFlowDefinitionResponse.struct_class = Types::DescribeFlowDefinitionResponse

    DescribeHumanTaskUiRequest.add_member(:human_task_ui_name, Shapes::ShapeRef.new(shape: HumanTaskUiName, required: true, location_name: "HumanTaskUiName"))
    DescribeHumanTaskUiRequest.struct_class = Types::DescribeHumanTaskUiRequest

    DescribeHumanTaskUiResponse.add_member(:human_task_ui_arn, Shapes::ShapeRef.new(shape: HumanTaskUiArn, required: true, location_name: "HumanTaskUiArn"))
    DescribeHumanTaskUiResponse.add_member(:human_task_ui_name, Shapes::ShapeRef.new(shape: HumanTaskUiName, required: true, location_name: "HumanTaskUiName"))
    DescribeHumanTaskUiResponse.add_member(:human_task_ui_status, Shapes::ShapeRef.new(shape: HumanTaskUiStatus, location_name: "HumanTaskUiStatus"))
    DescribeHumanTaskUiResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeHumanTaskUiResponse.add_member(:ui_template, Shapes::ShapeRef.new(shape: UiTemplateInfo, required: true, location_name: "UiTemplate"))
    DescribeHumanTaskUiResponse.struct_class = Types::DescribeHumanTaskUiResponse

    DescribeHyperParameterTuningJobRequest.add_member(:hyper_parameter_tuning_job_name, Shapes::ShapeRef.new(shape: HyperParameterTuningJobName, required: true, location_name: "HyperParameterTuningJobName"))
    DescribeHyperParameterTuningJobRequest.struct_class = Types::DescribeHyperParameterTuningJobRequest

    DescribeHyperParameterTuningJobResponse.add_member(:hyper_parameter_tuning_job_name, Shapes::ShapeRef.new(shape: HyperParameterTuningJobName, required: true, location_name: "HyperParameterTuningJobName"))
    DescribeHyperParameterTuningJobResponse.add_member(:hyper_parameter_tuning_job_arn, Shapes::ShapeRef.new(shape: HyperParameterTuningJobArn, required: true, location_name: "HyperParameterTuningJobArn"))
    DescribeHyperParameterTuningJobResponse.add_member(:hyper_parameter_tuning_job_config, Shapes::ShapeRef.new(shape: HyperParameterTuningJobConfig, required: true, location_name: "HyperParameterTuningJobConfig"))
    DescribeHyperParameterTuningJobResponse.add_member(:training_job_definition, Shapes::ShapeRef.new(shape: HyperParameterTrainingJobDefinition, location_name: "TrainingJobDefinition"))
    DescribeHyperParameterTuningJobResponse.add_member(:training_job_definitions, Shapes::ShapeRef.new(shape: HyperParameterTrainingJobDefinitions, location_name: "TrainingJobDefinitions"))
    DescribeHyperParameterTuningJobResponse.add_member(:hyper_parameter_tuning_job_status, Shapes::ShapeRef.new(shape: HyperParameterTuningJobStatus, required: true, location_name: "HyperParameterTuningJobStatus"))
    DescribeHyperParameterTuningJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeHyperParameterTuningJobResponse.add_member(:hyper_parameter_tuning_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "HyperParameterTuningEndTime"))
    DescribeHyperParameterTuningJobResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribeHyperParameterTuningJobResponse.add_member(:training_job_status_counters, Shapes::ShapeRef.new(shape: TrainingJobStatusCounters, required: true, location_name: "TrainingJobStatusCounters"))
    DescribeHyperParameterTuningJobResponse.add_member(:objective_status_counters, Shapes::ShapeRef.new(shape: ObjectiveStatusCounters, required: true, location_name: "ObjectiveStatusCounters"))
    DescribeHyperParameterTuningJobResponse.add_member(:best_training_job, Shapes::ShapeRef.new(shape: HyperParameterTrainingJobSummary, location_name: "BestTrainingJob"))
    DescribeHyperParameterTuningJobResponse.add_member(:overall_best_training_job, Shapes::ShapeRef.new(shape: HyperParameterTrainingJobSummary, location_name: "OverallBestTrainingJob"))
    DescribeHyperParameterTuningJobResponse.add_member(:warm_start_config, Shapes::ShapeRef.new(shape: HyperParameterTuningJobWarmStartConfig, location_name: "WarmStartConfig"))
    DescribeHyperParameterTuningJobResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    DescribeHyperParameterTuningJobResponse.struct_class = Types::DescribeHyperParameterTuningJobResponse

    DescribeImageRequest.add_member(:image_name, Shapes::ShapeRef.new(shape: ImageName, required: true, location_name: "ImageName"))
    DescribeImageRequest.struct_class = Types::DescribeImageRequest

    DescribeImageResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeImageResponse.add_member(:description, Shapes::ShapeRef.new(shape: ImageDescription, location_name: "Description"))
    DescribeImageResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: ImageDisplayName, location_name: "DisplayName"))
    DescribeImageResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    DescribeImageResponse.add_member(:image_arn, Shapes::ShapeRef.new(shape: ImageArn, location_name: "ImageArn"))
    DescribeImageResponse.add_member(:image_name, Shapes::ShapeRef.new(shape: ImageName, location_name: "ImageName"))
    DescribeImageResponse.add_member(:image_status, Shapes::ShapeRef.new(shape: ImageStatus, location_name: "ImageStatus"))
    DescribeImageResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribeImageResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DescribeImageResponse.struct_class = Types::DescribeImageResponse

    DescribeImageVersionRequest.add_member(:image_name, Shapes::ShapeRef.new(shape: ImageName, required: true, location_name: "ImageName"))
    DescribeImageVersionRequest.add_member(:version, Shapes::ShapeRef.new(shape: ImageVersionNumber, location_name: "Version"))
    DescribeImageVersionRequest.struct_class = Types::DescribeImageVersionRequest

    DescribeImageVersionResponse.add_member(:base_image, Shapes::ShapeRef.new(shape: ImageBaseImage, location_name: "BaseImage"))
    DescribeImageVersionResponse.add_member(:container_image, Shapes::ShapeRef.new(shape: ImageContainerImage, location_name: "ContainerImage"))
    DescribeImageVersionResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeImageVersionResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    DescribeImageVersionResponse.add_member(:image_arn, Shapes::ShapeRef.new(shape: ImageArn, location_name: "ImageArn"))
    DescribeImageVersionResponse.add_member(:image_version_arn, Shapes::ShapeRef.new(shape: ImageVersionArn, location_name: "ImageVersionArn"))
    DescribeImageVersionResponse.add_member(:image_version_status, Shapes::ShapeRef.new(shape: ImageVersionStatus, location_name: "ImageVersionStatus"))
    DescribeImageVersionResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribeImageVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: ImageVersionNumber, location_name: "Version"))
    DescribeImageVersionResponse.struct_class = Types::DescribeImageVersionResponse

    DescribeInferenceRecommendationsJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: RecommendationJobName, required: true, location_name: "JobName"))
    DescribeInferenceRecommendationsJobRequest.struct_class = Types::DescribeInferenceRecommendationsJobRequest

    DescribeInferenceRecommendationsJobResponse.add_member(:job_name, Shapes::ShapeRef.new(shape: RecommendationJobName, required: true, location_name: "JobName"))
    DescribeInferenceRecommendationsJobResponse.add_member(:job_description, Shapes::ShapeRef.new(shape: RecommendationJobDescription, location_name: "JobDescription"))
    DescribeInferenceRecommendationsJobResponse.add_member(:job_type, Shapes::ShapeRef.new(shape: RecommendationJobType, required: true, location_name: "JobType"))
    DescribeInferenceRecommendationsJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: RecommendationJobArn, required: true, location_name: "JobArn"))
    DescribeInferenceRecommendationsJobResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    DescribeInferenceRecommendationsJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: RecommendationJobStatus, required: true, location_name: "Status"))
    DescribeInferenceRecommendationsJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    DescribeInferenceRecommendationsJobResponse.add_member(:completion_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompletionTime"))
    DescribeInferenceRecommendationsJobResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastModifiedTime, required: true, location_name: "LastModifiedTime"))
    DescribeInferenceRecommendationsJobResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    DescribeInferenceRecommendationsJobResponse.add_member(:input_config, Shapes::ShapeRef.new(shape: RecommendationJobInputConfig, required: true, location_name: "InputConfig"))
    DescribeInferenceRecommendationsJobResponse.add_member(:stopping_conditions, Shapes::ShapeRef.new(shape: RecommendationJobStoppingConditions, location_name: "StoppingConditions"))
    DescribeInferenceRecommendationsJobResponse.add_member(:inference_recommendations, Shapes::ShapeRef.new(shape: InferenceRecommendations, location_name: "InferenceRecommendations"))
    DescribeInferenceRecommendationsJobResponse.struct_class = Types::DescribeInferenceRecommendationsJobResponse

    DescribeLabelingJobRequest.add_member(:labeling_job_name, Shapes::ShapeRef.new(shape: LabelingJobName, required: true, location_name: "LabelingJobName"))
    DescribeLabelingJobRequest.struct_class = Types::DescribeLabelingJobRequest

    DescribeLabelingJobResponse.add_member(:labeling_job_status, Shapes::ShapeRef.new(shape: LabelingJobStatus, required: true, location_name: "LabelingJobStatus"))
    DescribeLabelingJobResponse.add_member(:label_counters, Shapes::ShapeRef.new(shape: LabelCounters, required: true, location_name: "LabelCounters"))
    DescribeLabelingJobResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    DescribeLabelingJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeLabelingJobResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    DescribeLabelingJobResponse.add_member(:job_reference_code, Shapes::ShapeRef.new(shape: JobReferenceCode, required: true, location_name: "JobReferenceCode"))
    DescribeLabelingJobResponse.add_member(:labeling_job_name, Shapes::ShapeRef.new(shape: LabelingJobName, required: true, location_name: "LabelingJobName"))
    DescribeLabelingJobResponse.add_member(:labeling_job_arn, Shapes::ShapeRef.new(shape: LabelingJobArn, required: true, location_name: "LabelingJobArn"))
    DescribeLabelingJobResponse.add_member(:label_attribute_name, Shapes::ShapeRef.new(shape: LabelAttributeName, location_name: "LabelAttributeName"))
    DescribeLabelingJobResponse.add_member(:input_config, Shapes::ShapeRef.new(shape: LabelingJobInputConfig, required: true, location_name: "InputConfig"))
    DescribeLabelingJobResponse.add_member(:output_config, Shapes::ShapeRef.new(shape: LabelingJobOutputConfig, required: true, location_name: "OutputConfig"))
    DescribeLabelingJobResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    DescribeLabelingJobResponse.add_member(:label_category_config_s3_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "LabelCategoryConfigS3Uri"))
    DescribeLabelingJobResponse.add_member(:stopping_conditions, Shapes::ShapeRef.new(shape: LabelingJobStoppingConditions, location_name: "StoppingConditions"))
    DescribeLabelingJobResponse.add_member(:labeling_job_algorithms_config, Shapes::ShapeRef.new(shape: LabelingJobAlgorithmsConfig, location_name: "LabelingJobAlgorithmsConfig"))
    DescribeLabelingJobResponse.add_member(:human_task_config, Shapes::ShapeRef.new(shape: HumanTaskConfig, required: true, location_name: "HumanTaskConfig"))
    DescribeLabelingJobResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    DescribeLabelingJobResponse.add_member(:labeling_job_output, Shapes::ShapeRef.new(shape: LabelingJobOutput, location_name: "LabelingJobOutput"))
    DescribeLabelingJobResponse.struct_class = Types::DescribeLabelingJobResponse

    DescribeLineageGroupRequest.add_member(:lineage_group_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "LineageGroupName"))
    DescribeLineageGroupRequest.struct_class = Types::DescribeLineageGroupRequest

    DescribeLineageGroupResponse.add_member(:lineage_group_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "LineageGroupName"))
    DescribeLineageGroupResponse.add_member(:lineage_group_arn, Shapes::ShapeRef.new(shape: LineageGroupArn, location_name: "LineageGroupArn"))
    DescribeLineageGroupResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "DisplayName"))
    DescribeLineageGroupResponse.add_member(:description, Shapes::ShapeRef.new(shape: ExperimentDescription, location_name: "Description"))
    DescribeLineageGroupResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeLineageGroupResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "CreatedBy"))
    DescribeLineageGroupResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribeLineageGroupResponse.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "LastModifiedBy"))
    DescribeLineageGroupResponse.struct_class = Types::DescribeLineageGroupResponse

    DescribeModelBiasJobDefinitionRequest.add_member(:job_definition_name, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionName, required: true, location_name: "JobDefinitionName"))
    DescribeModelBiasJobDefinitionRequest.struct_class = Types::DescribeModelBiasJobDefinitionRequest

    DescribeModelBiasJobDefinitionResponse.add_member(:job_definition_arn, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionArn, required: true, location_name: "JobDefinitionArn"))
    DescribeModelBiasJobDefinitionResponse.add_member(:job_definition_name, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionName, required: true, location_name: "JobDefinitionName"))
    DescribeModelBiasJobDefinitionResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeModelBiasJobDefinitionResponse.add_member(:model_bias_baseline_config, Shapes::ShapeRef.new(shape: ModelBiasBaselineConfig, location_name: "ModelBiasBaselineConfig"))
    DescribeModelBiasJobDefinitionResponse.add_member(:model_bias_app_specification, Shapes::ShapeRef.new(shape: ModelBiasAppSpecification, required: true, location_name: "ModelBiasAppSpecification"))
    DescribeModelBiasJobDefinitionResponse.add_member(:model_bias_job_input, Shapes::ShapeRef.new(shape: ModelBiasJobInput, required: true, location_name: "ModelBiasJobInput"))
    DescribeModelBiasJobDefinitionResponse.add_member(:model_bias_job_output_config, Shapes::ShapeRef.new(shape: MonitoringOutputConfig, required: true, location_name: "ModelBiasJobOutputConfig"))
    DescribeModelBiasJobDefinitionResponse.add_member(:job_resources, Shapes::ShapeRef.new(shape: MonitoringResources, required: true, location_name: "JobResources"))
    DescribeModelBiasJobDefinitionResponse.add_member(:network_config, Shapes::ShapeRef.new(shape: MonitoringNetworkConfig, location_name: "NetworkConfig"))
    DescribeModelBiasJobDefinitionResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    DescribeModelBiasJobDefinitionResponse.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: MonitoringStoppingCondition, location_name: "StoppingCondition"))
    DescribeModelBiasJobDefinitionResponse.struct_class = Types::DescribeModelBiasJobDefinitionResponse

    DescribeModelExplainabilityJobDefinitionRequest.add_member(:job_definition_name, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionName, required: true, location_name: "JobDefinitionName"))
    DescribeModelExplainabilityJobDefinitionRequest.struct_class = Types::DescribeModelExplainabilityJobDefinitionRequest

    DescribeModelExplainabilityJobDefinitionResponse.add_member(:job_definition_arn, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionArn, required: true, location_name: "JobDefinitionArn"))
    DescribeModelExplainabilityJobDefinitionResponse.add_member(:job_definition_name, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionName, required: true, location_name: "JobDefinitionName"))
    DescribeModelExplainabilityJobDefinitionResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeModelExplainabilityJobDefinitionResponse.add_member(:model_explainability_baseline_config, Shapes::ShapeRef.new(shape: ModelExplainabilityBaselineConfig, location_name: "ModelExplainabilityBaselineConfig"))
    DescribeModelExplainabilityJobDefinitionResponse.add_member(:model_explainability_app_specification, Shapes::ShapeRef.new(shape: ModelExplainabilityAppSpecification, required: true, location_name: "ModelExplainabilityAppSpecification"))
    DescribeModelExplainabilityJobDefinitionResponse.add_member(:model_explainability_job_input, Shapes::ShapeRef.new(shape: ModelExplainabilityJobInput, required: true, location_name: "ModelExplainabilityJobInput"))
    DescribeModelExplainabilityJobDefinitionResponse.add_member(:model_explainability_job_output_config, Shapes::ShapeRef.new(shape: MonitoringOutputConfig, required: true, location_name: "ModelExplainabilityJobOutputConfig"))
    DescribeModelExplainabilityJobDefinitionResponse.add_member(:job_resources, Shapes::ShapeRef.new(shape: MonitoringResources, required: true, location_name: "JobResources"))
    DescribeModelExplainabilityJobDefinitionResponse.add_member(:network_config, Shapes::ShapeRef.new(shape: MonitoringNetworkConfig, location_name: "NetworkConfig"))
    DescribeModelExplainabilityJobDefinitionResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    DescribeModelExplainabilityJobDefinitionResponse.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: MonitoringStoppingCondition, location_name: "StoppingCondition"))
    DescribeModelExplainabilityJobDefinitionResponse.struct_class = Types::DescribeModelExplainabilityJobDefinitionResponse

    DescribeModelInput.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    DescribeModelInput.struct_class = Types::DescribeModelInput

    DescribeModelOutput.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    DescribeModelOutput.add_member(:primary_container, Shapes::ShapeRef.new(shape: ContainerDefinition, location_name: "PrimaryContainer"))
    DescribeModelOutput.add_member(:containers, Shapes::ShapeRef.new(shape: ContainerDefinitionList, location_name: "Containers"))
    DescribeModelOutput.add_member(:inference_execution_config, Shapes::ShapeRef.new(shape: InferenceExecutionConfig, location_name: "InferenceExecutionConfig"))
    DescribeModelOutput.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "ExecutionRoleArn"))
    DescribeModelOutput.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    DescribeModelOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeModelOutput.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "ModelArn"))
    DescribeModelOutput.add_member(:enable_network_isolation, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableNetworkIsolation"))
    DescribeModelOutput.struct_class = Types::DescribeModelOutput

    DescribeModelPackageGroupInput.add_member(:model_package_group_name, Shapes::ShapeRef.new(shape: ArnOrName, required: true, location_name: "ModelPackageGroupName"))
    DescribeModelPackageGroupInput.struct_class = Types::DescribeModelPackageGroupInput

    DescribeModelPackageGroupOutput.add_member(:model_package_group_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "ModelPackageGroupName"))
    DescribeModelPackageGroupOutput.add_member(:model_package_group_arn, Shapes::ShapeRef.new(shape: ModelPackageGroupArn, required: true, location_name: "ModelPackageGroupArn"))
    DescribeModelPackageGroupOutput.add_member(:model_package_group_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "ModelPackageGroupDescription"))
    DescribeModelPackageGroupOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    DescribeModelPackageGroupOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: UserContext, required: true, location_name: "CreatedBy"))
    DescribeModelPackageGroupOutput.add_member(:model_package_group_status, Shapes::ShapeRef.new(shape: ModelPackageGroupStatus, required: true, location_name: "ModelPackageGroupStatus"))
    DescribeModelPackageGroupOutput.struct_class = Types::DescribeModelPackageGroupOutput

    DescribeModelPackageInput.add_member(:model_package_name, Shapes::ShapeRef.new(shape: VersionedArnOrName, required: true, location_name: "ModelPackageName"))
    DescribeModelPackageInput.struct_class = Types::DescribeModelPackageInput

    DescribeModelPackageOutput.add_member(:model_package_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "ModelPackageName"))
    DescribeModelPackageOutput.add_member(:model_package_group_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "ModelPackageGroupName"))
    DescribeModelPackageOutput.add_member(:model_package_version, Shapes::ShapeRef.new(shape: ModelPackageVersion, location_name: "ModelPackageVersion"))
    DescribeModelPackageOutput.add_member(:model_package_arn, Shapes::ShapeRef.new(shape: ModelPackageArn, required: true, location_name: "ModelPackageArn"))
    DescribeModelPackageOutput.add_member(:model_package_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "ModelPackageDescription"))
    DescribeModelPackageOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    DescribeModelPackageOutput.add_member(:inference_specification, Shapes::ShapeRef.new(shape: InferenceSpecification, location_name: "InferenceSpecification"))
    DescribeModelPackageOutput.add_member(:source_algorithm_specification, Shapes::ShapeRef.new(shape: SourceAlgorithmSpecification, location_name: "SourceAlgorithmSpecification"))
    DescribeModelPackageOutput.add_member(:validation_specification, Shapes::ShapeRef.new(shape: ModelPackageValidationSpecification, location_name: "ValidationSpecification"))
    DescribeModelPackageOutput.add_member(:model_package_status, Shapes::ShapeRef.new(shape: ModelPackageStatus, required: true, location_name: "ModelPackageStatus"))
    DescribeModelPackageOutput.add_member(:model_package_status_details, Shapes::ShapeRef.new(shape: ModelPackageStatusDetails, required: true, location_name: "ModelPackageStatusDetails"))
    DescribeModelPackageOutput.add_member(:certify_for_marketplace, Shapes::ShapeRef.new(shape: CertifyForMarketplace, location_name: "CertifyForMarketplace"))
    DescribeModelPackageOutput.add_member(:model_approval_status, Shapes::ShapeRef.new(shape: ModelApprovalStatus, location_name: "ModelApprovalStatus"))
    DescribeModelPackageOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "CreatedBy"))
    DescribeModelPackageOutput.add_member(:metadata_properties, Shapes::ShapeRef.new(shape: MetadataProperties, location_name: "MetadataProperties"))
    DescribeModelPackageOutput.add_member(:model_metrics, Shapes::ShapeRef.new(shape: ModelMetrics, location_name: "ModelMetrics"))
    DescribeModelPackageOutput.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribeModelPackageOutput.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "LastModifiedBy"))
    DescribeModelPackageOutput.add_member(:approval_description, Shapes::ShapeRef.new(shape: ApprovalDescription, location_name: "ApprovalDescription"))
    DescribeModelPackageOutput.add_member(:customer_metadata_properties, Shapes::ShapeRef.new(shape: CustomerMetadataMap, location_name: "CustomerMetadataProperties"))
    DescribeModelPackageOutput.add_member(:drift_check_baselines, Shapes::ShapeRef.new(shape: DriftCheckBaselines, location_name: "DriftCheckBaselines"))
    DescribeModelPackageOutput.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    DescribeModelPackageOutput.add_member(:task, Shapes::ShapeRef.new(shape: String, location_name: "Task"))
    DescribeModelPackageOutput.add_member(:sample_payload_url, Shapes::ShapeRef.new(shape: String, location_name: "SamplePayloadUrl"))
    DescribeModelPackageOutput.add_member(:additional_inference_specifications, Shapes::ShapeRef.new(shape: AdditionalInferenceSpecifications, location_name: "AdditionalInferenceSpecifications"))
    DescribeModelPackageOutput.struct_class = Types::DescribeModelPackageOutput

    DescribeModelQualityJobDefinitionRequest.add_member(:job_definition_name, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionName, required: true, location_name: "JobDefinitionName"))
    DescribeModelQualityJobDefinitionRequest.struct_class = Types::DescribeModelQualityJobDefinitionRequest

    DescribeModelQualityJobDefinitionResponse.add_member(:job_definition_arn, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionArn, required: true, location_name: "JobDefinitionArn"))
    DescribeModelQualityJobDefinitionResponse.add_member(:job_definition_name, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionName, required: true, location_name: "JobDefinitionName"))
    DescribeModelQualityJobDefinitionResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeModelQualityJobDefinitionResponse.add_member(:model_quality_baseline_config, Shapes::ShapeRef.new(shape: ModelQualityBaselineConfig, location_name: "ModelQualityBaselineConfig"))
    DescribeModelQualityJobDefinitionResponse.add_member(:model_quality_app_specification, Shapes::ShapeRef.new(shape: ModelQualityAppSpecification, required: true, location_name: "ModelQualityAppSpecification"))
    DescribeModelQualityJobDefinitionResponse.add_member(:model_quality_job_input, Shapes::ShapeRef.new(shape: ModelQualityJobInput, required: true, location_name: "ModelQualityJobInput"))
    DescribeModelQualityJobDefinitionResponse.add_member(:model_quality_job_output_config, Shapes::ShapeRef.new(shape: MonitoringOutputConfig, required: true, location_name: "ModelQualityJobOutputConfig"))
    DescribeModelQualityJobDefinitionResponse.add_member(:job_resources, Shapes::ShapeRef.new(shape: MonitoringResources, required: true, location_name: "JobResources"))
    DescribeModelQualityJobDefinitionResponse.add_member(:network_config, Shapes::ShapeRef.new(shape: MonitoringNetworkConfig, location_name: "NetworkConfig"))
    DescribeModelQualityJobDefinitionResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    DescribeModelQualityJobDefinitionResponse.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: MonitoringStoppingCondition, location_name: "StoppingCondition"))
    DescribeModelQualityJobDefinitionResponse.struct_class = Types::DescribeModelQualityJobDefinitionResponse

    DescribeMonitoringScheduleRequest.add_member(:monitoring_schedule_name, Shapes::ShapeRef.new(shape: MonitoringScheduleName, required: true, location_name: "MonitoringScheduleName"))
    DescribeMonitoringScheduleRequest.struct_class = Types::DescribeMonitoringScheduleRequest

    DescribeMonitoringScheduleResponse.add_member(:monitoring_schedule_arn, Shapes::ShapeRef.new(shape: MonitoringScheduleArn, required: true, location_name: "MonitoringScheduleArn"))
    DescribeMonitoringScheduleResponse.add_member(:monitoring_schedule_name, Shapes::ShapeRef.new(shape: MonitoringScheduleName, required: true, location_name: "MonitoringScheduleName"))
    DescribeMonitoringScheduleResponse.add_member(:monitoring_schedule_status, Shapes::ShapeRef.new(shape: ScheduleStatus, required: true, location_name: "MonitoringScheduleStatus"))
    DescribeMonitoringScheduleResponse.add_member(:monitoring_type, Shapes::ShapeRef.new(shape: MonitoringType, location_name: "MonitoringType"))
    DescribeMonitoringScheduleResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    DescribeMonitoringScheduleResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeMonitoringScheduleResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    DescribeMonitoringScheduleResponse.add_member(:monitoring_schedule_config, Shapes::ShapeRef.new(shape: MonitoringScheduleConfig, required: true, location_name: "MonitoringScheduleConfig"))
    DescribeMonitoringScheduleResponse.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, location_name: "EndpointName"))
    DescribeMonitoringScheduleResponse.add_member(:last_monitoring_execution_summary, Shapes::ShapeRef.new(shape: MonitoringExecutionSummary, location_name: "LastMonitoringExecutionSummary"))
    DescribeMonitoringScheduleResponse.struct_class = Types::DescribeMonitoringScheduleResponse

    DescribeNotebookInstanceInput.add_member(:notebook_instance_name, Shapes::ShapeRef.new(shape: NotebookInstanceName, required: true, location_name: "NotebookInstanceName"))
    DescribeNotebookInstanceInput.struct_class = Types::DescribeNotebookInstanceInput

    DescribeNotebookInstanceLifecycleConfigInput.add_member(:notebook_instance_lifecycle_config_name, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigName, required: true, location_name: "NotebookInstanceLifecycleConfigName"))
    DescribeNotebookInstanceLifecycleConfigInput.struct_class = Types::DescribeNotebookInstanceLifecycleConfigInput

    DescribeNotebookInstanceLifecycleConfigOutput.add_member(:notebook_instance_lifecycle_config_arn, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigArn, location_name: "NotebookInstanceLifecycleConfigArn"))
    DescribeNotebookInstanceLifecycleConfigOutput.add_member(:notebook_instance_lifecycle_config_name, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigName, location_name: "NotebookInstanceLifecycleConfigName"))
    DescribeNotebookInstanceLifecycleConfigOutput.add_member(:on_create, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigList, location_name: "OnCreate"))
    DescribeNotebookInstanceLifecycleConfigOutput.add_member(:on_start, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigList, location_name: "OnStart"))
    DescribeNotebookInstanceLifecycleConfigOutput.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTime"))
    DescribeNotebookInstanceLifecycleConfigOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    DescribeNotebookInstanceLifecycleConfigOutput.struct_class = Types::DescribeNotebookInstanceLifecycleConfigOutput

    DescribeNotebookInstanceOutput.add_member(:notebook_instance_arn, Shapes::ShapeRef.new(shape: NotebookInstanceArn, location_name: "NotebookInstanceArn"))
    DescribeNotebookInstanceOutput.add_member(:notebook_instance_name, Shapes::ShapeRef.new(shape: NotebookInstanceName, location_name: "NotebookInstanceName"))
    DescribeNotebookInstanceOutput.add_member(:notebook_instance_status, Shapes::ShapeRef.new(shape: NotebookInstanceStatus, location_name: "NotebookInstanceStatus"))
    DescribeNotebookInstanceOutput.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    DescribeNotebookInstanceOutput.add_member(:url, Shapes::ShapeRef.new(shape: NotebookInstanceUrl, location_name: "Url"))
    DescribeNotebookInstanceOutput.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "InstanceType"))
    DescribeNotebookInstanceOutput.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId"))
    DescribeNotebookInstanceOutput.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroups"))
    DescribeNotebookInstanceOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DescribeNotebookInstanceOutput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    DescribeNotebookInstanceOutput.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: "NetworkInterfaceId"))
    DescribeNotebookInstanceOutput.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTime"))
    DescribeNotebookInstanceOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    DescribeNotebookInstanceOutput.add_member(:notebook_instance_lifecycle_config_name, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigName, location_name: "NotebookInstanceLifecycleConfigName"))
    DescribeNotebookInstanceOutput.add_member(:direct_internet_access, Shapes::ShapeRef.new(shape: DirectInternetAccess, location_name: "DirectInternetAccess"))
    DescribeNotebookInstanceOutput.add_member(:volume_size_in_gb, Shapes::ShapeRef.new(shape: NotebookInstanceVolumeSizeInGB, location_name: "VolumeSizeInGB"))
    DescribeNotebookInstanceOutput.add_member(:accelerator_types, Shapes::ShapeRef.new(shape: NotebookInstanceAcceleratorTypes, location_name: "AcceleratorTypes"))
    DescribeNotebookInstanceOutput.add_member(:default_code_repository, Shapes::ShapeRef.new(shape: CodeRepositoryNameOrUrl, location_name: "DefaultCodeRepository"))
    DescribeNotebookInstanceOutput.add_member(:additional_code_repositories, Shapes::ShapeRef.new(shape: AdditionalCodeRepositoryNamesOrUrls, location_name: "AdditionalCodeRepositories"))
    DescribeNotebookInstanceOutput.add_member(:root_access, Shapes::ShapeRef.new(shape: RootAccess, location_name: "RootAccess"))
    DescribeNotebookInstanceOutput.add_member(:platform_identifier, Shapes::ShapeRef.new(shape: PlatformIdentifier, location_name: "PlatformIdentifier"))
    DescribeNotebookInstanceOutput.struct_class = Types::DescribeNotebookInstanceOutput

    DescribePipelineDefinitionForExecutionRequest.add_member(:pipeline_execution_arn, Shapes::ShapeRef.new(shape: PipelineExecutionArn, required: true, location_name: "PipelineExecutionArn"))
    DescribePipelineDefinitionForExecutionRequest.struct_class = Types::DescribePipelineDefinitionForExecutionRequest

    DescribePipelineDefinitionForExecutionResponse.add_member(:pipeline_definition, Shapes::ShapeRef.new(shape: PipelineDefinition, location_name: "PipelineDefinition"))
    DescribePipelineDefinitionForExecutionResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribePipelineDefinitionForExecutionResponse.struct_class = Types::DescribePipelineDefinitionForExecutionResponse

    DescribePipelineExecutionRequest.add_member(:pipeline_execution_arn, Shapes::ShapeRef.new(shape: PipelineExecutionArn, required: true, location_name: "PipelineExecutionArn"))
    DescribePipelineExecutionRequest.struct_class = Types::DescribePipelineExecutionRequest

    DescribePipelineExecutionResponse.add_member(:pipeline_arn, Shapes::ShapeRef.new(shape: PipelineArn, location_name: "PipelineArn"))
    DescribePipelineExecutionResponse.add_member(:pipeline_execution_arn, Shapes::ShapeRef.new(shape: PipelineExecutionArn, location_name: "PipelineExecutionArn"))
    DescribePipelineExecutionResponse.add_member(:pipeline_execution_display_name, Shapes::ShapeRef.new(shape: PipelineExecutionName, location_name: "PipelineExecutionDisplayName"))
    DescribePipelineExecutionResponse.add_member(:pipeline_execution_status, Shapes::ShapeRef.new(shape: PipelineExecutionStatus, location_name: "PipelineExecutionStatus"))
    DescribePipelineExecutionResponse.add_member(:pipeline_execution_description, Shapes::ShapeRef.new(shape: PipelineExecutionDescription, location_name: "PipelineExecutionDescription"))
    DescribePipelineExecutionResponse.add_member(:pipeline_experiment_config, Shapes::ShapeRef.new(shape: PipelineExperimentConfig, location_name: "PipelineExperimentConfig"))
    DescribePipelineExecutionResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: PipelineExecutionFailureReason, location_name: "FailureReason"))
    DescribePipelineExecutionResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribePipelineExecutionResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribePipelineExecutionResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "CreatedBy"))
    DescribePipelineExecutionResponse.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "LastModifiedBy"))
    DescribePipelineExecutionResponse.add_member(:parallelism_configuration, Shapes::ShapeRef.new(shape: ParallelismConfiguration, location_name: "ParallelismConfiguration"))
    DescribePipelineExecutionResponse.struct_class = Types::DescribePipelineExecutionResponse

    DescribePipelineRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "PipelineName"))
    DescribePipelineRequest.struct_class = Types::DescribePipelineRequest

    DescribePipelineResponse.add_member(:pipeline_arn, Shapes::ShapeRef.new(shape: PipelineArn, location_name: "PipelineArn"))
    DescribePipelineResponse.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, location_name: "PipelineName"))
    DescribePipelineResponse.add_member(:pipeline_display_name, Shapes::ShapeRef.new(shape: PipelineName, location_name: "PipelineDisplayName"))
    DescribePipelineResponse.add_member(:pipeline_definition, Shapes::ShapeRef.new(shape: PipelineDefinition, location_name: "PipelineDefinition"))
    DescribePipelineResponse.add_member(:pipeline_description, Shapes::ShapeRef.new(shape: PipelineDescription, location_name: "PipelineDescription"))
    DescribePipelineResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DescribePipelineResponse.add_member(:pipeline_status, Shapes::ShapeRef.new(shape: PipelineStatus, location_name: "PipelineStatus"))
    DescribePipelineResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribePipelineResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribePipelineResponse.add_member(:last_run_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastRunTime"))
    DescribePipelineResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "CreatedBy"))
    DescribePipelineResponse.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "LastModifiedBy"))
    DescribePipelineResponse.add_member(:parallelism_configuration, Shapes::ShapeRef.new(shape: ParallelismConfiguration, location_name: "ParallelismConfiguration"))
    DescribePipelineResponse.struct_class = Types::DescribePipelineResponse

    DescribeProcessingJobRequest.add_member(:processing_job_name, Shapes::ShapeRef.new(shape: ProcessingJobName, required: true, location_name: "ProcessingJobName"))
    DescribeProcessingJobRequest.struct_class = Types::DescribeProcessingJobRequest

    DescribeProcessingJobResponse.add_member(:processing_inputs, Shapes::ShapeRef.new(shape: ProcessingInputs, location_name: "ProcessingInputs"))
    DescribeProcessingJobResponse.add_member(:processing_output_config, Shapes::ShapeRef.new(shape: ProcessingOutputConfig, location_name: "ProcessingOutputConfig"))
    DescribeProcessingJobResponse.add_member(:processing_job_name, Shapes::ShapeRef.new(shape: ProcessingJobName, required: true, location_name: "ProcessingJobName"))
    DescribeProcessingJobResponse.add_member(:processing_resources, Shapes::ShapeRef.new(shape: ProcessingResources, required: true, location_name: "ProcessingResources"))
    DescribeProcessingJobResponse.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: ProcessingStoppingCondition, location_name: "StoppingCondition"))
    DescribeProcessingJobResponse.add_member(:app_specification, Shapes::ShapeRef.new(shape: AppSpecification, required: true, location_name: "AppSpecification"))
    DescribeProcessingJobResponse.add_member(:environment, Shapes::ShapeRef.new(shape: ProcessingEnvironmentMap, location_name: "Environment"))
    DescribeProcessingJobResponse.add_member(:network_config, Shapes::ShapeRef.new(shape: NetworkConfig, location_name: "NetworkConfig"))
    DescribeProcessingJobResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DescribeProcessingJobResponse.add_member(:experiment_config, Shapes::ShapeRef.new(shape: ExperimentConfig, location_name: "ExperimentConfig"))
    DescribeProcessingJobResponse.add_member(:processing_job_arn, Shapes::ShapeRef.new(shape: ProcessingJobArn, required: true, location_name: "ProcessingJobArn"))
    DescribeProcessingJobResponse.add_member(:processing_job_status, Shapes::ShapeRef.new(shape: ProcessingJobStatus, required: true, location_name: "ProcessingJobStatus"))
    DescribeProcessingJobResponse.add_member(:exit_message, Shapes::ShapeRef.new(shape: ExitMessage, location_name: "ExitMessage"))
    DescribeProcessingJobResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    DescribeProcessingJobResponse.add_member(:processing_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ProcessingEndTime"))
    DescribeProcessingJobResponse.add_member(:processing_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ProcessingStartTime"))
    DescribeProcessingJobResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribeProcessingJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeProcessingJobResponse.add_member(:monitoring_schedule_arn, Shapes::ShapeRef.new(shape: MonitoringScheduleArn, location_name: "MonitoringScheduleArn"))
    DescribeProcessingJobResponse.add_member(:auto_ml_job_arn, Shapes::ShapeRef.new(shape: AutoMLJobArn, location_name: "AutoMLJobArn"))
    DescribeProcessingJobResponse.add_member(:training_job_arn, Shapes::ShapeRef.new(shape: TrainingJobArn, location_name: "TrainingJobArn"))
    DescribeProcessingJobResponse.struct_class = Types::DescribeProcessingJobResponse

    DescribeProjectInput.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectEntityName, required: true, location_name: "ProjectName"))
    DescribeProjectInput.struct_class = Types::DescribeProjectInput

    DescribeProjectOutput.add_member(:project_arn, Shapes::ShapeRef.new(shape: ProjectArn, required: true, location_name: "ProjectArn"))
    DescribeProjectOutput.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectEntityName, required: true, location_name: "ProjectName"))
    DescribeProjectOutput.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "ProjectId"))
    DescribeProjectOutput.add_member(:project_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "ProjectDescription"))
    DescribeProjectOutput.add_member(:service_catalog_provisioning_details, Shapes::ShapeRef.new(shape: ServiceCatalogProvisioningDetails, required: true, location_name: "ServiceCatalogProvisioningDetails"))
    DescribeProjectOutput.add_member(:service_catalog_provisioned_product_details, Shapes::ShapeRef.new(shape: ServiceCatalogProvisionedProductDetails, location_name: "ServiceCatalogProvisionedProductDetails"))
    DescribeProjectOutput.add_member(:project_status, Shapes::ShapeRef.new(shape: ProjectStatus, required: true, location_name: "ProjectStatus"))
    DescribeProjectOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "CreatedBy"))
    DescribeProjectOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeProjectOutput.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribeProjectOutput.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "LastModifiedBy"))
    DescribeProjectOutput.struct_class = Types::DescribeProjectOutput

    DescribeStudioLifecycleConfigRequest.add_member(:studio_lifecycle_config_name, Shapes::ShapeRef.new(shape: StudioLifecycleConfigName, required: true, location_name: "StudioLifecycleConfigName"))
    DescribeStudioLifecycleConfigRequest.struct_class = Types::DescribeStudioLifecycleConfigRequest

    DescribeStudioLifecycleConfigResponse.add_member(:studio_lifecycle_config_arn, Shapes::ShapeRef.new(shape: StudioLifecycleConfigArn, location_name: "StudioLifecycleConfigArn"))
    DescribeStudioLifecycleConfigResponse.add_member(:studio_lifecycle_config_name, Shapes::ShapeRef.new(shape: StudioLifecycleConfigName, location_name: "StudioLifecycleConfigName"))
    DescribeStudioLifecycleConfigResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeStudioLifecycleConfigResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribeStudioLifecycleConfigResponse.add_member(:studio_lifecycle_config_content, Shapes::ShapeRef.new(shape: StudioLifecycleConfigContent, location_name: "StudioLifecycleConfigContent"))
    DescribeStudioLifecycleConfigResponse.add_member(:studio_lifecycle_config_app_type, Shapes::ShapeRef.new(shape: StudioLifecycleConfigAppType, location_name: "StudioLifecycleConfigAppType"))
    DescribeStudioLifecycleConfigResponse.struct_class = Types::DescribeStudioLifecycleConfigResponse

    DescribeSubscribedWorkteamRequest.add_member(:workteam_arn, Shapes::ShapeRef.new(shape: WorkteamArn, required: true, location_name: "WorkteamArn"))
    DescribeSubscribedWorkteamRequest.struct_class = Types::DescribeSubscribedWorkteamRequest

    DescribeSubscribedWorkteamResponse.add_member(:subscribed_workteam, Shapes::ShapeRef.new(shape: SubscribedWorkteam, required: true, location_name: "SubscribedWorkteam"))
    DescribeSubscribedWorkteamResponse.struct_class = Types::DescribeSubscribedWorkteamResponse

    DescribeTrainingJobRequest.add_member(:training_job_name, Shapes::ShapeRef.new(shape: TrainingJobName, required: true, location_name: "TrainingJobName"))
    DescribeTrainingJobRequest.struct_class = Types::DescribeTrainingJobRequest

    DescribeTrainingJobResponse.add_member(:training_job_name, Shapes::ShapeRef.new(shape: TrainingJobName, required: true, location_name: "TrainingJobName"))
    DescribeTrainingJobResponse.add_member(:training_job_arn, Shapes::ShapeRef.new(shape: TrainingJobArn, required: true, location_name: "TrainingJobArn"))
    DescribeTrainingJobResponse.add_member(:tuning_job_arn, Shapes::ShapeRef.new(shape: HyperParameterTuningJobArn, location_name: "TuningJobArn"))
    DescribeTrainingJobResponse.add_member(:labeling_job_arn, Shapes::ShapeRef.new(shape: LabelingJobArn, location_name: "LabelingJobArn"))
    DescribeTrainingJobResponse.add_member(:auto_ml_job_arn, Shapes::ShapeRef.new(shape: AutoMLJobArn, location_name: "AutoMLJobArn"))
    DescribeTrainingJobResponse.add_member(:model_artifacts, Shapes::ShapeRef.new(shape: ModelArtifacts, required: true, location_name: "ModelArtifacts"))
    DescribeTrainingJobResponse.add_member(:training_job_status, Shapes::ShapeRef.new(shape: TrainingJobStatus, required: true, location_name: "TrainingJobStatus"))
    DescribeTrainingJobResponse.add_member(:secondary_status, Shapes::ShapeRef.new(shape: SecondaryStatus, required: true, location_name: "SecondaryStatus"))
    DescribeTrainingJobResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    DescribeTrainingJobResponse.add_member(:hyper_parameters, Shapes::ShapeRef.new(shape: HyperParameters, location_name: "HyperParameters"))
    DescribeTrainingJobResponse.add_member(:algorithm_specification, Shapes::ShapeRef.new(shape: AlgorithmSpecification, required: true, location_name: "AlgorithmSpecification"))
    DescribeTrainingJobResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DescribeTrainingJobResponse.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, location_name: "InputDataConfig"))
    DescribeTrainingJobResponse.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: "OutputDataConfig"))
    DescribeTrainingJobResponse.add_member(:resource_config, Shapes::ShapeRef.new(shape: ResourceConfig, required: true, location_name: "ResourceConfig"))
    DescribeTrainingJobResponse.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    DescribeTrainingJobResponse.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: StoppingCondition, required: true, location_name: "StoppingCondition"))
    DescribeTrainingJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeTrainingJobResponse.add_member(:training_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TrainingStartTime"))
    DescribeTrainingJobResponse.add_member(:training_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TrainingEndTime"))
    DescribeTrainingJobResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribeTrainingJobResponse.add_member(:secondary_status_transitions, Shapes::ShapeRef.new(shape: SecondaryStatusTransitions, location_name: "SecondaryStatusTransitions"))
    DescribeTrainingJobResponse.add_member(:final_metric_data_list, Shapes::ShapeRef.new(shape: FinalMetricDataList, location_name: "FinalMetricDataList"))
    DescribeTrainingJobResponse.add_member(:enable_network_isolation, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableNetworkIsolation"))
    DescribeTrainingJobResponse.add_member(:enable_inter_container_traffic_encryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableInterContainerTrafficEncryption"))
    DescribeTrainingJobResponse.add_member(:enable_managed_spot_training, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableManagedSpotTraining"))
    DescribeTrainingJobResponse.add_member(:checkpoint_config, Shapes::ShapeRef.new(shape: CheckpointConfig, location_name: "CheckpointConfig"))
    DescribeTrainingJobResponse.add_member(:training_time_in_seconds, Shapes::ShapeRef.new(shape: TrainingTimeInSeconds, location_name: "TrainingTimeInSeconds"))
    DescribeTrainingJobResponse.add_member(:billable_time_in_seconds, Shapes::ShapeRef.new(shape: BillableTimeInSeconds, location_name: "BillableTimeInSeconds"))
    DescribeTrainingJobResponse.add_member(:debug_hook_config, Shapes::ShapeRef.new(shape: DebugHookConfig, location_name: "DebugHookConfig"))
    DescribeTrainingJobResponse.add_member(:experiment_config, Shapes::ShapeRef.new(shape: ExperimentConfig, location_name: "ExperimentConfig"))
    DescribeTrainingJobResponse.add_member(:debug_rule_configurations, Shapes::ShapeRef.new(shape: DebugRuleConfigurations, location_name: "DebugRuleConfigurations"))
    DescribeTrainingJobResponse.add_member(:tensor_board_output_config, Shapes::ShapeRef.new(shape: TensorBoardOutputConfig, location_name: "TensorBoardOutputConfig"))
    DescribeTrainingJobResponse.add_member(:debug_rule_evaluation_statuses, Shapes::ShapeRef.new(shape: DebugRuleEvaluationStatuses, location_name: "DebugRuleEvaluationStatuses"))
    DescribeTrainingJobResponse.add_member(:profiler_config, Shapes::ShapeRef.new(shape: ProfilerConfig, location_name: "ProfilerConfig"))
    DescribeTrainingJobResponse.add_member(:profiler_rule_configurations, Shapes::ShapeRef.new(shape: ProfilerRuleConfigurations, location_name: "ProfilerRuleConfigurations"))
    DescribeTrainingJobResponse.add_member(:profiler_rule_evaluation_statuses, Shapes::ShapeRef.new(shape: ProfilerRuleEvaluationStatuses, location_name: "ProfilerRuleEvaluationStatuses"))
    DescribeTrainingJobResponse.add_member(:profiling_status, Shapes::ShapeRef.new(shape: ProfilingStatus, location_name: "ProfilingStatus"))
    DescribeTrainingJobResponse.add_member(:retry_strategy, Shapes::ShapeRef.new(shape: RetryStrategy, location_name: "RetryStrategy"))
    DescribeTrainingJobResponse.add_member(:environment, Shapes::ShapeRef.new(shape: TrainingEnvironmentMap, location_name: "Environment"))
    DescribeTrainingJobResponse.struct_class = Types::DescribeTrainingJobResponse

    DescribeTransformJobRequest.add_member(:transform_job_name, Shapes::ShapeRef.new(shape: TransformJobName, required: true, location_name: "TransformJobName"))
    DescribeTransformJobRequest.struct_class = Types::DescribeTransformJobRequest

    DescribeTransformJobResponse.add_member(:transform_job_name, Shapes::ShapeRef.new(shape: TransformJobName, required: true, location_name: "TransformJobName"))
    DescribeTransformJobResponse.add_member(:transform_job_arn, Shapes::ShapeRef.new(shape: TransformJobArn, required: true, location_name: "TransformJobArn"))
    DescribeTransformJobResponse.add_member(:transform_job_status, Shapes::ShapeRef.new(shape: TransformJobStatus, required: true, location_name: "TransformJobStatus"))
    DescribeTransformJobResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    DescribeTransformJobResponse.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    DescribeTransformJobResponse.add_member(:max_concurrent_transforms, Shapes::ShapeRef.new(shape: MaxConcurrentTransforms, location_name: "MaxConcurrentTransforms"))
    DescribeTransformJobResponse.add_member(:model_client_config, Shapes::ShapeRef.new(shape: ModelClientConfig, location_name: "ModelClientConfig"))
    DescribeTransformJobResponse.add_member(:max_payload_in_mb, Shapes::ShapeRef.new(shape: MaxPayloadInMB, location_name: "MaxPayloadInMB"))
    DescribeTransformJobResponse.add_member(:batch_strategy, Shapes::ShapeRef.new(shape: BatchStrategy, location_name: "BatchStrategy"))
    DescribeTransformJobResponse.add_member(:environment, Shapes::ShapeRef.new(shape: TransformEnvironmentMap, location_name: "Environment"))
    DescribeTransformJobResponse.add_member(:transform_input, Shapes::ShapeRef.new(shape: TransformInput, required: true, location_name: "TransformInput"))
    DescribeTransformJobResponse.add_member(:transform_output, Shapes::ShapeRef.new(shape: TransformOutput, location_name: "TransformOutput"))
    DescribeTransformJobResponse.add_member(:transform_resources, Shapes::ShapeRef.new(shape: TransformResources, required: true, location_name: "TransformResources"))
    DescribeTransformJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeTransformJobResponse.add_member(:transform_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TransformStartTime"))
    DescribeTransformJobResponse.add_member(:transform_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TransformEndTime"))
    DescribeTransformJobResponse.add_member(:labeling_job_arn, Shapes::ShapeRef.new(shape: LabelingJobArn, location_name: "LabelingJobArn"))
    DescribeTransformJobResponse.add_member(:auto_ml_job_arn, Shapes::ShapeRef.new(shape: AutoMLJobArn, location_name: "AutoMLJobArn"))
    DescribeTransformJobResponse.add_member(:data_processing, Shapes::ShapeRef.new(shape: DataProcessing, location_name: "DataProcessing"))
    DescribeTransformJobResponse.add_member(:experiment_config, Shapes::ShapeRef.new(shape: ExperimentConfig, location_name: "ExperimentConfig"))
    DescribeTransformJobResponse.struct_class = Types::DescribeTransformJobResponse

    DescribeTrialComponentRequest.add_member(:trial_component_name, Shapes::ShapeRef.new(shape: ExperimentEntityNameOrArn, required: true, location_name: "TrialComponentName"))
    DescribeTrialComponentRequest.struct_class = Types::DescribeTrialComponentRequest

    DescribeTrialComponentResponse.add_member(:trial_component_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "TrialComponentName"))
    DescribeTrialComponentResponse.add_member(:trial_component_arn, Shapes::ShapeRef.new(shape: TrialComponentArn, location_name: "TrialComponentArn"))
    DescribeTrialComponentResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "DisplayName"))
    DescribeTrialComponentResponse.add_member(:source, Shapes::ShapeRef.new(shape: TrialComponentSource, location_name: "Source"))
    DescribeTrialComponentResponse.add_member(:status, Shapes::ShapeRef.new(shape: TrialComponentStatus, location_name: "Status"))
    DescribeTrialComponentResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    DescribeTrialComponentResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    DescribeTrialComponentResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeTrialComponentResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "CreatedBy"))
    DescribeTrialComponentResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribeTrialComponentResponse.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "LastModifiedBy"))
    DescribeTrialComponentResponse.add_member(:parameters, Shapes::ShapeRef.new(shape: TrialComponentParameters, location_name: "Parameters"))
    DescribeTrialComponentResponse.add_member(:input_artifacts, Shapes::ShapeRef.new(shape: TrialComponentArtifacts, location_name: "InputArtifacts"))
    DescribeTrialComponentResponse.add_member(:output_artifacts, Shapes::ShapeRef.new(shape: TrialComponentArtifacts, location_name: "OutputArtifacts"))
    DescribeTrialComponentResponse.add_member(:metadata_properties, Shapes::ShapeRef.new(shape: MetadataProperties, location_name: "MetadataProperties"))
    DescribeTrialComponentResponse.add_member(:metrics, Shapes::ShapeRef.new(shape: TrialComponentMetricSummaries, location_name: "Metrics"))
    DescribeTrialComponentResponse.add_member(:lineage_group_arn, Shapes::ShapeRef.new(shape: LineageGroupArn, location_name: "LineageGroupArn"))
    DescribeTrialComponentResponse.struct_class = Types::DescribeTrialComponentResponse

    DescribeTrialRequest.add_member(:trial_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "TrialName"))
    DescribeTrialRequest.struct_class = Types::DescribeTrialRequest

    DescribeTrialResponse.add_member(:trial_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "TrialName"))
    DescribeTrialResponse.add_member(:trial_arn, Shapes::ShapeRef.new(shape: TrialArn, location_name: "TrialArn"))
    DescribeTrialResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "DisplayName"))
    DescribeTrialResponse.add_member(:experiment_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "ExperimentName"))
    DescribeTrialResponse.add_member(:source, Shapes::ShapeRef.new(shape: TrialSource, location_name: "Source"))
    DescribeTrialResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeTrialResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "CreatedBy"))
    DescribeTrialResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribeTrialResponse.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "LastModifiedBy"))
    DescribeTrialResponse.add_member(:metadata_properties, Shapes::ShapeRef.new(shape: MetadataProperties, location_name: "MetadataProperties"))
    DescribeTrialResponse.struct_class = Types::DescribeTrialResponse

    DescribeUserProfileRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    DescribeUserProfileRequest.add_member(:user_profile_name, Shapes::ShapeRef.new(shape: UserProfileName, required: true, location_name: "UserProfileName"))
    DescribeUserProfileRequest.struct_class = Types::DescribeUserProfileRequest

    DescribeUserProfileResponse.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "DomainId"))
    DescribeUserProfileResponse.add_member(:user_profile_arn, Shapes::ShapeRef.new(shape: UserProfileArn, location_name: "UserProfileArn"))
    DescribeUserProfileResponse.add_member(:user_profile_name, Shapes::ShapeRef.new(shape: UserProfileName, location_name: "UserProfileName"))
    DescribeUserProfileResponse.add_member(:home_efs_file_system_uid, Shapes::ShapeRef.new(shape: EfsUid, location_name: "HomeEfsFileSystemUid"))
    DescribeUserProfileResponse.add_member(:status, Shapes::ShapeRef.new(shape: UserProfileStatus, location_name: "Status"))
    DescribeUserProfileResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTime"))
    DescribeUserProfileResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    DescribeUserProfileResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    DescribeUserProfileResponse.add_member(:single_sign_on_user_identifier, Shapes::ShapeRef.new(shape: SingleSignOnUserIdentifier, location_name: "SingleSignOnUserIdentifier"))
    DescribeUserProfileResponse.add_member(:single_sign_on_user_value, Shapes::ShapeRef.new(shape: String256, location_name: "SingleSignOnUserValue"))
    DescribeUserProfileResponse.add_member(:user_settings, Shapes::ShapeRef.new(shape: UserSettings, location_name: "UserSettings"))
    DescribeUserProfileResponse.struct_class = Types::DescribeUserProfileResponse

    DescribeWorkforceRequest.add_member(:workforce_name, Shapes::ShapeRef.new(shape: WorkforceName, required: true, location_name: "WorkforceName"))
    DescribeWorkforceRequest.struct_class = Types::DescribeWorkforceRequest

    DescribeWorkforceResponse.add_member(:workforce, Shapes::ShapeRef.new(shape: Workforce, required: true, location_name: "Workforce"))
    DescribeWorkforceResponse.struct_class = Types::DescribeWorkforceResponse

    DescribeWorkteamRequest.add_member(:workteam_name, Shapes::ShapeRef.new(shape: WorkteamName, required: true, location_name: "WorkteamName"))
    DescribeWorkteamRequest.struct_class = Types::DescribeWorkteamRequest

    DescribeWorkteamResponse.add_member(:workteam, Shapes::ShapeRef.new(shape: Workteam, required: true, location_name: "Workteam"))
    DescribeWorkteamResponse.struct_class = Types::DescribeWorkteamResponse

    DesiredWeightAndCapacity.add_member(:variant_name, Shapes::ShapeRef.new(shape: VariantName, required: true, location_name: "VariantName"))
    DesiredWeightAndCapacity.add_member(:desired_weight, Shapes::ShapeRef.new(shape: VariantWeight, location_name: "DesiredWeight"))
    DesiredWeightAndCapacity.add_member(:desired_instance_count, Shapes::ShapeRef.new(shape: TaskCount, location_name: "DesiredInstanceCount"))
    DesiredWeightAndCapacity.struct_class = Types::DesiredWeightAndCapacity

    DesiredWeightAndCapacityList.member = Shapes::ShapeRef.new(shape: DesiredWeightAndCapacity)

    Device.add_member(:device_name, Shapes::ShapeRef.new(shape: DeviceName, required: true, location_name: "DeviceName"))
    Device.add_member(:description, Shapes::ShapeRef.new(shape: DeviceDescription, location_name: "Description"))
    Device.add_member(:iot_thing_name, Shapes::ShapeRef.new(shape: ThingName, location_name: "IotThingName"))
    Device.struct_class = Types::Device

    DeviceFleetSummaries.member = Shapes::ShapeRef.new(shape: DeviceFleetSummary)

    DeviceFleetSummary.add_member(:device_fleet_arn, Shapes::ShapeRef.new(shape: DeviceFleetArn, required: true, location_name: "DeviceFleetArn"))
    DeviceFleetSummary.add_member(:device_fleet_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "DeviceFleetName"))
    DeviceFleetSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DeviceFleetSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DeviceFleetSummary.struct_class = Types::DeviceFleetSummary

    DeviceNames.member = Shapes::ShapeRef.new(shape: DeviceName)

    DeviceStats.add_member(:connected_device_count, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "ConnectedDeviceCount"))
    DeviceStats.add_member(:registered_device_count, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "RegisteredDeviceCount"))
    DeviceStats.struct_class = Types::DeviceStats

    DeviceSummaries.member = Shapes::ShapeRef.new(shape: DeviceSummary)

    DeviceSummary.add_member(:device_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "DeviceName"))
    DeviceSummary.add_member(:device_arn, Shapes::ShapeRef.new(shape: DeviceArn, required: true, location_name: "DeviceArn"))
    DeviceSummary.add_member(:description, Shapes::ShapeRef.new(shape: DeviceDescription, location_name: "Description"))
    DeviceSummary.add_member(:device_fleet_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "DeviceFleetName"))
    DeviceSummary.add_member(:iot_thing_name, Shapes::ShapeRef.new(shape: ThingName, location_name: "IotThingName"))
    DeviceSummary.add_member(:registration_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "RegistrationTime"))
    DeviceSummary.add_member(:latest_heartbeat, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LatestHeartbeat"))
    DeviceSummary.add_member(:models, Shapes::ShapeRef.new(shape: EdgeModelSummaries, location_name: "Models"))
    DeviceSummary.add_member(:agent_version, Shapes::ShapeRef.new(shape: EdgeVersion, location_name: "AgentVersion"))
    DeviceSummary.struct_class = Types::DeviceSummary

    Devices.member = Shapes::ShapeRef.new(shape: Device)

    DisableSagemakerServicecatalogPortfolioInput.struct_class = Types::DisableSagemakerServicecatalogPortfolioInput

    DisableSagemakerServicecatalogPortfolioOutput.struct_class = Types::DisableSagemakerServicecatalogPortfolioOutput

    DisassociateTrialComponentRequest.add_member(:trial_component_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "TrialComponentName"))
    DisassociateTrialComponentRequest.add_member(:trial_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "TrialName"))
    DisassociateTrialComponentRequest.struct_class = Types::DisassociateTrialComponentRequest

    DisassociateTrialComponentResponse.add_member(:trial_component_arn, Shapes::ShapeRef.new(shape: TrialComponentArn, location_name: "TrialComponentArn"))
    DisassociateTrialComponentResponse.add_member(:trial_arn, Shapes::ShapeRef.new(shape: TrialArn, location_name: "TrialArn"))
    DisassociateTrialComponentResponse.struct_class = Types::DisassociateTrialComponentResponse

    DomainDetails.add_member(:domain_arn, Shapes::ShapeRef.new(shape: DomainArn, location_name: "DomainArn"))
    DomainDetails.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "DomainId"))
    DomainDetails.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    DomainDetails.add_member(:status, Shapes::ShapeRef.new(shape: DomainStatus, location_name: "Status"))
    DomainDetails.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    DomainDetails.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTime"))
    DomainDetails.add_member(:url, Shapes::ShapeRef.new(shape: String1024, location_name: "Url"))
    DomainDetails.struct_class = Types::DomainDetails

    DomainList.member = Shapes::ShapeRef.new(shape: DomainDetails)

    DomainSecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    DomainSettings.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: DomainSecurityGroupIds, location_name: "SecurityGroupIds"))
    DomainSettings.add_member(:r_studio_server_pro_domain_settings, Shapes::ShapeRef.new(shape: RStudioServerProDomainSettings, location_name: "RStudioServerProDomainSettings"))
    DomainSettings.struct_class = Types::DomainSettings

    DomainSettingsForUpdate.add_member(:r_studio_server_pro_domain_settings_for_update, Shapes::ShapeRef.new(shape: RStudioServerProDomainSettingsForUpdate, location_name: "RStudioServerProDomainSettingsForUpdate"))
    DomainSettingsForUpdate.struct_class = Types::DomainSettingsForUpdate

    DriftCheckBaselines.add_member(:bias, Shapes::ShapeRef.new(shape: DriftCheckBias, location_name: "Bias"))
    DriftCheckBaselines.add_member(:explainability, Shapes::ShapeRef.new(shape: DriftCheckExplainability, location_name: "Explainability"))
    DriftCheckBaselines.add_member(:model_quality, Shapes::ShapeRef.new(shape: DriftCheckModelQuality, location_name: "ModelQuality"))
    DriftCheckBaselines.add_member(:model_data_quality, Shapes::ShapeRef.new(shape: DriftCheckModelDataQuality, location_name: "ModelDataQuality"))
    DriftCheckBaselines.struct_class = Types::DriftCheckBaselines

    DriftCheckBias.add_member(:config_file, Shapes::ShapeRef.new(shape: FileSource, location_name: "ConfigFile"))
    DriftCheckBias.add_member(:pre_training_constraints, Shapes::ShapeRef.new(shape: MetricsSource, location_name: "PreTrainingConstraints"))
    DriftCheckBias.add_member(:post_training_constraints, Shapes::ShapeRef.new(shape: MetricsSource, location_name: "PostTrainingConstraints"))
    DriftCheckBias.struct_class = Types::DriftCheckBias

    DriftCheckExplainability.add_member(:constraints, Shapes::ShapeRef.new(shape: MetricsSource, location_name: "Constraints"))
    DriftCheckExplainability.add_member(:config_file, Shapes::ShapeRef.new(shape: FileSource, location_name: "ConfigFile"))
    DriftCheckExplainability.struct_class = Types::DriftCheckExplainability

    DriftCheckModelDataQuality.add_member(:statistics, Shapes::ShapeRef.new(shape: MetricsSource, location_name: "Statistics"))
    DriftCheckModelDataQuality.add_member(:constraints, Shapes::ShapeRef.new(shape: MetricsSource, location_name: "Constraints"))
    DriftCheckModelDataQuality.struct_class = Types::DriftCheckModelDataQuality

    DriftCheckModelQuality.add_member(:statistics, Shapes::ShapeRef.new(shape: MetricsSource, location_name: "Statistics"))
    DriftCheckModelQuality.add_member(:constraints, Shapes::ShapeRef.new(shape: MetricsSource, location_name: "Constraints"))
    DriftCheckModelQuality.struct_class = Types::DriftCheckModelQuality

    EMRStepMetadata.add_member(:cluster_id, Shapes::ShapeRef.new(shape: String256, location_name: "ClusterId"))
    EMRStepMetadata.add_member(:step_id, Shapes::ShapeRef.new(shape: String256, location_name: "StepId"))
    EMRStepMetadata.add_member(:step_name, Shapes::ShapeRef.new(shape: String256, location_name: "StepName"))
    EMRStepMetadata.add_member(:log_file_path, Shapes::ShapeRef.new(shape: String1024, location_name: "LogFilePath"))
    EMRStepMetadata.struct_class = Types::EMRStepMetadata

    Edge.add_member(:source_arn, Shapes::ShapeRef.new(shape: AssociationEntityArn, location_name: "SourceArn"))
    Edge.add_member(:destination_arn, Shapes::ShapeRef.new(shape: AssociationEntityArn, location_name: "DestinationArn"))
    Edge.add_member(:association_type, Shapes::ShapeRef.new(shape: AssociationEdgeType, location_name: "AssociationType"))
    Edge.struct_class = Types::Edge

    EdgeModel.add_member(:model_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "ModelName"))
    EdgeModel.add_member(:model_version, Shapes::ShapeRef.new(shape: EdgeVersion, required: true, location_name: "ModelVersion"))
    EdgeModel.add_member(:latest_sample_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LatestSampleTime"))
    EdgeModel.add_member(:latest_inference, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LatestInference"))
    EdgeModel.struct_class = Types::EdgeModel

    EdgeModelStat.add_member(:model_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "ModelName"))
    EdgeModelStat.add_member(:model_version, Shapes::ShapeRef.new(shape: EdgeVersion, required: true, location_name: "ModelVersion"))
    EdgeModelStat.add_member(:offline_device_count, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "OfflineDeviceCount"))
    EdgeModelStat.add_member(:connected_device_count, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "ConnectedDeviceCount"))
    EdgeModelStat.add_member(:active_device_count, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "ActiveDeviceCount"))
    EdgeModelStat.add_member(:sampling_device_count, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "SamplingDeviceCount"))
    EdgeModelStat.struct_class = Types::EdgeModelStat

    EdgeModelStats.member = Shapes::ShapeRef.new(shape: EdgeModelStat)

    EdgeModelSummaries.member = Shapes::ShapeRef.new(shape: EdgeModelSummary)

    EdgeModelSummary.add_member(:model_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "ModelName"))
    EdgeModelSummary.add_member(:model_version, Shapes::ShapeRef.new(shape: EdgeVersion, required: true, location_name: "ModelVersion"))
    EdgeModelSummary.struct_class = Types::EdgeModelSummary

    EdgeModels.member = Shapes::ShapeRef.new(shape: EdgeModel)

    EdgeOutputConfig.add_member(:s3_output_location, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3OutputLocation"))
    EdgeOutputConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    EdgeOutputConfig.add_member(:preset_deployment_type, Shapes::ShapeRef.new(shape: EdgePresetDeploymentType, location_name: "PresetDeploymentType"))
    EdgeOutputConfig.add_member(:preset_deployment_config, Shapes::ShapeRef.new(shape: String, location_name: "PresetDeploymentConfig"))
    EdgeOutputConfig.struct_class = Types::EdgeOutputConfig

    EdgePackagingJobSummaries.member = Shapes::ShapeRef.new(shape: EdgePackagingJobSummary)

    EdgePackagingJobSummary.add_member(:edge_packaging_job_arn, Shapes::ShapeRef.new(shape: EdgePackagingJobArn, required: true, location_name: "EdgePackagingJobArn"))
    EdgePackagingJobSummary.add_member(:edge_packaging_job_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "EdgePackagingJobName"))
    EdgePackagingJobSummary.add_member(:edge_packaging_job_status, Shapes::ShapeRef.new(shape: EdgePackagingJobStatus, required: true, location_name: "EdgePackagingJobStatus"))
    EdgePackagingJobSummary.add_member(:compilation_job_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "CompilationJobName"))
    EdgePackagingJobSummary.add_member(:model_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "ModelName"))
    EdgePackagingJobSummary.add_member(:model_version, Shapes::ShapeRef.new(shape: EdgeVersion, location_name: "ModelVersion"))
    EdgePackagingJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    EdgePackagingJobSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    EdgePackagingJobSummary.struct_class = Types::EdgePackagingJobSummary

    EdgePresetDeploymentOutput.add_member(:type, Shapes::ShapeRef.new(shape: EdgePresetDeploymentType, required: true, location_name: "Type"))
    EdgePresetDeploymentOutput.add_member(:artifact, Shapes::ShapeRef.new(shape: EdgePresetDeploymentArtifact, location_name: "Artifact"))
    EdgePresetDeploymentOutput.add_member(:status, Shapes::ShapeRef.new(shape: EdgePresetDeploymentStatus, location_name: "Status"))
    EdgePresetDeploymentOutput.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    EdgePresetDeploymentOutput.struct_class = Types::EdgePresetDeploymentOutput

    Edges.member = Shapes::ShapeRef.new(shape: Edge)

    EnableSagemakerServicecatalogPortfolioInput.struct_class = Types::EnableSagemakerServicecatalogPortfolioInput

    EnableSagemakerServicecatalogPortfolioOutput.struct_class = Types::EnableSagemakerServicecatalogPortfolioOutput

    Endpoint.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "EndpointName"))
    Endpoint.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: EndpointArn, required: true, location_name: "EndpointArn"))
    Endpoint.add_member(:endpoint_config_name, Shapes::ShapeRef.new(shape: EndpointConfigName, required: true, location_name: "EndpointConfigName"))
    Endpoint.add_member(:production_variants, Shapes::ShapeRef.new(shape: ProductionVariantSummaryList, location_name: "ProductionVariants"))
    Endpoint.add_member(:data_capture_config, Shapes::ShapeRef.new(shape: DataCaptureConfigSummary, location_name: "DataCaptureConfig"))
    Endpoint.add_member(:endpoint_status, Shapes::ShapeRef.new(shape: EndpointStatus, required: true, location_name: "EndpointStatus"))
    Endpoint.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    Endpoint.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    Endpoint.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    Endpoint.add_member(:monitoring_schedules, Shapes::ShapeRef.new(shape: MonitoringScheduleList, location_name: "MonitoringSchedules"))
    Endpoint.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    Endpoint.struct_class = Types::Endpoint

    EndpointConfigSummary.add_member(:endpoint_config_name, Shapes::ShapeRef.new(shape: EndpointConfigName, required: true, location_name: "EndpointConfigName"))
    EndpointConfigSummary.add_member(:endpoint_config_arn, Shapes::ShapeRef.new(shape: EndpointConfigArn, required: true, location_name: "EndpointConfigArn"))
    EndpointConfigSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    EndpointConfigSummary.struct_class = Types::EndpointConfigSummary

    EndpointConfigSummaryList.member = Shapes::ShapeRef.new(shape: EndpointConfigSummary)

    EndpointInput.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "EndpointName"))
    EndpointInput.add_member(:local_path, Shapes::ShapeRef.new(shape: ProcessingLocalPath, required: true, location_name: "LocalPath"))
    EndpointInput.add_member(:s3_input_mode, Shapes::ShapeRef.new(shape: ProcessingS3InputMode, location_name: "S3InputMode"))
    EndpointInput.add_member(:s3_data_distribution_type, Shapes::ShapeRef.new(shape: ProcessingS3DataDistributionType, location_name: "S3DataDistributionType"))
    EndpointInput.add_member(:features_attribute, Shapes::ShapeRef.new(shape: String, location_name: "FeaturesAttribute"))
    EndpointInput.add_member(:inference_attribute, Shapes::ShapeRef.new(shape: String, location_name: "InferenceAttribute"))
    EndpointInput.add_member(:probability_attribute, Shapes::ShapeRef.new(shape: String, location_name: "ProbabilityAttribute"))
    EndpointInput.add_member(:probability_threshold_attribute, Shapes::ShapeRef.new(shape: ProbabilityThresholdAttribute, location_name: "ProbabilityThresholdAttribute"))
    EndpointInput.add_member(:start_time_offset, Shapes::ShapeRef.new(shape: MonitoringTimeOffsetString, location_name: "StartTimeOffset"))
    EndpointInput.add_member(:end_time_offset, Shapes::ShapeRef.new(shape: MonitoringTimeOffsetString, location_name: "EndTimeOffset"))
    EndpointInput.struct_class = Types::EndpointInput

    EndpointInputConfiguration.add_member(:instance_type, Shapes::ShapeRef.new(shape: ProductionVariantInstanceType, required: true, location_name: "InstanceType"))
    EndpointInputConfiguration.add_member(:inference_specification_name, Shapes::ShapeRef.new(shape: InferenceSpecificationName, location_name: "InferenceSpecificationName"))
    EndpointInputConfiguration.add_member(:environment_parameter_ranges, Shapes::ShapeRef.new(shape: EnvironmentParameterRanges, location_name: "EnvironmentParameterRanges"))
    EndpointInputConfiguration.struct_class = Types::EndpointInputConfiguration

    EndpointInputConfigurations.member = Shapes::ShapeRef.new(shape: EndpointInputConfiguration)

    EndpointOutputConfiguration.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EndpointName"))
    EndpointOutputConfiguration.add_member(:variant_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "VariantName"))
    EndpointOutputConfiguration.add_member(:instance_type, Shapes::ShapeRef.new(shape: ProductionVariantInstanceType, required: true, location_name: "InstanceType"))
    EndpointOutputConfiguration.add_member(:initial_instance_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "InitialInstanceCount"))
    EndpointOutputConfiguration.struct_class = Types::EndpointOutputConfiguration

    EndpointSummary.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "EndpointName"))
    EndpointSummary.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: EndpointArn, required: true, location_name: "EndpointArn"))
    EndpointSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    EndpointSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    EndpointSummary.add_member(:endpoint_status, Shapes::ShapeRef.new(shape: EndpointStatus, required: true, location_name: "EndpointStatus"))
    EndpointSummary.struct_class = Types::EndpointSummary

    EndpointSummaryList.member = Shapes::ShapeRef.new(shape: EndpointSummary)

    EnvironmentMap.key = Shapes::ShapeRef.new(shape: EnvironmentKey)
    EnvironmentMap.value = Shapes::ShapeRef.new(shape: EnvironmentValue)

    EnvironmentParameter.add_member(:key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Key"))
    EnvironmentParameter.add_member(:value_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ValueType"))
    EnvironmentParameter.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    EnvironmentParameter.struct_class = Types::EnvironmentParameter

    EnvironmentParameterRanges.add_member(:categorical_parameter_ranges, Shapes::ShapeRef.new(shape: CategoricalParameters, location_name: "CategoricalParameterRanges"))
    EnvironmentParameterRanges.struct_class = Types::EnvironmentParameterRanges

    EnvironmentParameters.member = Shapes::ShapeRef.new(shape: EnvironmentParameter)

    Experiment.add_member(:experiment_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "ExperimentName"))
    Experiment.add_member(:experiment_arn, Shapes::ShapeRef.new(shape: ExperimentArn, location_name: "ExperimentArn"))
    Experiment.add_member(:display_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "DisplayName"))
    Experiment.add_member(:source, Shapes::ShapeRef.new(shape: ExperimentSource, location_name: "Source"))
    Experiment.add_member(:description, Shapes::ShapeRef.new(shape: ExperimentDescription, location_name: "Description"))
    Experiment.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    Experiment.add_member(:created_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "CreatedBy"))
    Experiment.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    Experiment.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "LastModifiedBy"))
    Experiment.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    Experiment.struct_class = Types::Experiment

    ExperimentConfig.add_member(:experiment_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "ExperimentName"))
    ExperimentConfig.add_member(:trial_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "TrialName"))
    ExperimentConfig.add_member(:trial_component_display_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "TrialComponentDisplayName"))
    ExperimentConfig.struct_class = Types::ExperimentConfig

    ExperimentSource.add_member(:source_arn, Shapes::ShapeRef.new(shape: ExperimentSourceArn, required: true, location_name: "SourceArn"))
    ExperimentSource.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "SourceType"))
    ExperimentSource.struct_class = Types::ExperimentSource

    ExperimentSummaries.member = Shapes::ShapeRef.new(shape: ExperimentSummary)

    ExperimentSummary.add_member(:experiment_arn, Shapes::ShapeRef.new(shape: ExperimentArn, location_name: "ExperimentArn"))
    ExperimentSummary.add_member(:experiment_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "ExperimentName"))
    ExperimentSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "DisplayName"))
    ExperimentSummary.add_member(:experiment_source, Shapes::ShapeRef.new(shape: ExperimentSource, location_name: "ExperimentSource"))
    ExperimentSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    ExperimentSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    ExperimentSummary.struct_class = Types::ExperimentSummary

    Explainability.add_member(:report, Shapes::ShapeRef.new(shape: MetricsSource, location_name: "Report"))
    Explainability.struct_class = Types::Explainability

    FailStepMetadata.add_member(:error_message, Shapes::ShapeRef.new(shape: String3072, location_name: "ErrorMessage"))
    FailStepMetadata.struct_class = Types::FailStepMetadata

    FeatureDefinition.add_member(:feature_name, Shapes::ShapeRef.new(shape: FeatureName, location_name: "FeatureName"))
    FeatureDefinition.add_member(:feature_type, Shapes::ShapeRef.new(shape: FeatureType, location_name: "FeatureType"))
    FeatureDefinition.struct_class = Types::FeatureDefinition

    FeatureDefinitions.member = Shapes::ShapeRef.new(shape: FeatureDefinition)

    FeatureGroup.add_member(:feature_group_arn, Shapes::ShapeRef.new(shape: FeatureGroupArn, location_name: "FeatureGroupArn"))
    FeatureGroup.add_member(:feature_group_name, Shapes::ShapeRef.new(shape: FeatureGroupName, location_name: "FeatureGroupName"))
    FeatureGroup.add_member(:record_identifier_feature_name, Shapes::ShapeRef.new(shape: FeatureName, location_name: "RecordIdentifierFeatureName"))
    FeatureGroup.add_member(:event_time_feature_name, Shapes::ShapeRef.new(shape: FeatureName, location_name: "EventTimeFeatureName"))
    FeatureGroup.add_member(:feature_definitions, Shapes::ShapeRef.new(shape: FeatureDefinitions, location_name: "FeatureDefinitions"))
    FeatureGroup.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    FeatureGroup.add_member(:online_store_config, Shapes::ShapeRef.new(shape: OnlineStoreConfig, location_name: "OnlineStoreConfig"))
    FeatureGroup.add_member(:offline_store_config, Shapes::ShapeRef.new(shape: OfflineStoreConfig, location_name: "OfflineStoreConfig"))
    FeatureGroup.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    FeatureGroup.add_member(:feature_group_status, Shapes::ShapeRef.new(shape: FeatureGroupStatus, location_name: "FeatureGroupStatus"))
    FeatureGroup.add_member(:offline_store_status, Shapes::ShapeRef.new(shape: OfflineStoreStatus, location_name: "OfflineStoreStatus"))
    FeatureGroup.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    FeatureGroup.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    FeatureGroup.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    FeatureGroup.struct_class = Types::FeatureGroup

    FeatureGroupSummaries.member = Shapes::ShapeRef.new(shape: FeatureGroupSummary)

    FeatureGroupSummary.add_member(:feature_group_name, Shapes::ShapeRef.new(shape: FeatureGroupName, required: true, location_name: "FeatureGroupName"))
    FeatureGroupSummary.add_member(:feature_group_arn, Shapes::ShapeRef.new(shape: FeatureGroupArn, required: true, location_name: "FeatureGroupArn"))
    FeatureGroupSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    FeatureGroupSummary.add_member(:feature_group_status, Shapes::ShapeRef.new(shape: FeatureGroupStatus, location_name: "FeatureGroupStatus"))
    FeatureGroupSummary.add_member(:offline_store_status, Shapes::ShapeRef.new(shape: OfflineStoreStatus, location_name: "OfflineStoreStatus"))
    FeatureGroupSummary.struct_class = Types::FeatureGroupSummary

    FileSource.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, location_name: "ContentType"))
    FileSource.add_member(:content_digest, Shapes::ShapeRef.new(shape: ContentDigest, location_name: "ContentDigest"))
    FileSource.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    FileSource.struct_class = Types::FileSource

    FileSystemConfig.add_member(:mount_path, Shapes::ShapeRef.new(shape: MountPath, location_name: "MountPath"))
    FileSystemConfig.add_member(:default_uid, Shapes::ShapeRef.new(shape: DefaultUid, location_name: "DefaultUid", metadata: {"box"=>true}))
    FileSystemConfig.add_member(:default_gid, Shapes::ShapeRef.new(shape: DefaultGid, location_name: "DefaultGid", metadata: {"box"=>true}))
    FileSystemConfig.struct_class = Types::FileSystemConfig

    FileSystemDataSource.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "FileSystemId"))
    FileSystemDataSource.add_member(:file_system_access_mode, Shapes::ShapeRef.new(shape: FileSystemAccessMode, required: true, location_name: "FileSystemAccessMode"))
    FileSystemDataSource.add_member(:file_system_type, Shapes::ShapeRef.new(shape: FileSystemType, required: true, location_name: "FileSystemType"))
    FileSystemDataSource.add_member(:directory_path, Shapes::ShapeRef.new(shape: DirectoryPath, required: true, location_name: "DirectoryPath"))
    FileSystemDataSource.struct_class = Types::FileSystemDataSource

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: ResourcePropertyName, required: true, location_name: "Name"))
    Filter.add_member(:operator, Shapes::ShapeRef.new(shape: Operator, location_name: "Operator"))
    Filter.add_member(:value, Shapes::ShapeRef.new(shape: FilterValue, location_name: "Value"))
    Filter.struct_class = Types::Filter

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    FinalAutoMLJobObjectiveMetric.add_member(:type, Shapes::ShapeRef.new(shape: AutoMLJobObjectiveType, location_name: "Type"))
    FinalAutoMLJobObjectiveMetric.add_member(:metric_name, Shapes::ShapeRef.new(shape: AutoMLMetricEnum, required: true, location_name: "MetricName"))
    FinalAutoMLJobObjectiveMetric.add_member(:value, Shapes::ShapeRef.new(shape: MetricValue, required: true, location_name: "Value"))
    FinalAutoMLJobObjectiveMetric.struct_class = Types::FinalAutoMLJobObjectiveMetric

    FinalHyperParameterTuningJobObjectiveMetric.add_member(:type, Shapes::ShapeRef.new(shape: HyperParameterTuningJobObjectiveType, location_name: "Type"))
    FinalHyperParameterTuningJobObjectiveMetric.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    FinalHyperParameterTuningJobObjectiveMetric.add_member(:value, Shapes::ShapeRef.new(shape: MetricValue, required: true, location_name: "Value"))
    FinalHyperParameterTuningJobObjectiveMetric.struct_class = Types::FinalHyperParameterTuningJobObjectiveMetric

    FinalMetricDataList.member = Shapes::ShapeRef.new(shape: MetricData)

    FlowDefinitionOutputConfig.add_member(:s3_output_path, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3OutputPath"))
    FlowDefinitionOutputConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    FlowDefinitionOutputConfig.struct_class = Types::FlowDefinitionOutputConfig

    FlowDefinitionSummaries.member = Shapes::ShapeRef.new(shape: FlowDefinitionSummary)

    FlowDefinitionSummary.add_member(:flow_definition_name, Shapes::ShapeRef.new(shape: FlowDefinitionName, required: true, location_name: "FlowDefinitionName"))
    FlowDefinitionSummary.add_member(:flow_definition_arn, Shapes::ShapeRef.new(shape: FlowDefinitionArn, required: true, location_name: "FlowDefinitionArn"))
    FlowDefinitionSummary.add_member(:flow_definition_status, Shapes::ShapeRef.new(shape: FlowDefinitionStatus, required: true, location_name: "FlowDefinitionStatus"))
    FlowDefinitionSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    FlowDefinitionSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    FlowDefinitionSummary.struct_class = Types::FlowDefinitionSummary

    FlowDefinitionTaskKeywords.member = Shapes::ShapeRef.new(shape: FlowDefinitionTaskKeyword)

    GetDeviceFleetReportRequest.add_member(:device_fleet_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "DeviceFleetName"))
    GetDeviceFleetReportRequest.struct_class = Types::GetDeviceFleetReportRequest

    GetDeviceFleetReportResponse.add_member(:device_fleet_arn, Shapes::ShapeRef.new(shape: DeviceFleetArn, required: true, location_name: "DeviceFleetArn"))
    GetDeviceFleetReportResponse.add_member(:device_fleet_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "DeviceFleetName"))
    GetDeviceFleetReportResponse.add_member(:output_config, Shapes::ShapeRef.new(shape: EdgeOutputConfig, location_name: "OutputConfig"))
    GetDeviceFleetReportResponse.add_member(:description, Shapes::ShapeRef.new(shape: DeviceFleetDescription, location_name: "Description"))
    GetDeviceFleetReportResponse.add_member(:report_generated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ReportGenerated"))
    GetDeviceFleetReportResponse.add_member(:device_stats, Shapes::ShapeRef.new(shape: DeviceStats, location_name: "DeviceStats"))
    GetDeviceFleetReportResponse.add_member(:agent_versions, Shapes::ShapeRef.new(shape: AgentVersions, location_name: "AgentVersions"))
    GetDeviceFleetReportResponse.add_member(:model_stats, Shapes::ShapeRef.new(shape: EdgeModelStats, location_name: "ModelStats"))
    GetDeviceFleetReportResponse.struct_class = Types::GetDeviceFleetReportResponse

    GetLineageGroupPolicyRequest.add_member(:lineage_group_name, Shapes::ShapeRef.new(shape: LineageGroupNameOrArn, required: true, location_name: "LineageGroupName"))
    GetLineageGroupPolicyRequest.struct_class = Types::GetLineageGroupPolicyRequest

    GetLineageGroupPolicyResponse.add_member(:lineage_group_arn, Shapes::ShapeRef.new(shape: LineageGroupArn, location_name: "LineageGroupArn"))
    GetLineageGroupPolicyResponse.add_member(:resource_policy, Shapes::ShapeRef.new(shape: ResourcePolicyString, location_name: "ResourcePolicy"))
    GetLineageGroupPolicyResponse.struct_class = Types::GetLineageGroupPolicyResponse

    GetModelPackageGroupPolicyInput.add_member(:model_package_group_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "ModelPackageGroupName"))
    GetModelPackageGroupPolicyInput.struct_class = Types::GetModelPackageGroupPolicyInput

    GetModelPackageGroupPolicyOutput.add_member(:resource_policy, Shapes::ShapeRef.new(shape: PolicyString, required: true, location_name: "ResourcePolicy"))
    GetModelPackageGroupPolicyOutput.struct_class = Types::GetModelPackageGroupPolicyOutput

    GetSagemakerServicecatalogPortfolioStatusInput.struct_class = Types::GetSagemakerServicecatalogPortfolioStatusInput

    GetSagemakerServicecatalogPortfolioStatusOutput.add_member(:status, Shapes::ShapeRef.new(shape: SagemakerServicecatalogStatus, location_name: "Status"))
    GetSagemakerServicecatalogPortfolioStatusOutput.struct_class = Types::GetSagemakerServicecatalogPortfolioStatusOutput

    GetSearchSuggestionsRequest.add_member(:resource, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "Resource"))
    GetSearchSuggestionsRequest.add_member(:suggestion_query, Shapes::ShapeRef.new(shape: SuggestionQuery, location_name: "SuggestionQuery"))
    GetSearchSuggestionsRequest.struct_class = Types::GetSearchSuggestionsRequest

    GetSearchSuggestionsResponse.add_member(:property_name_suggestions, Shapes::ShapeRef.new(shape: PropertyNameSuggestionList, location_name: "PropertyNameSuggestions"))
    GetSearchSuggestionsResponse.struct_class = Types::GetSearchSuggestionsResponse

    GitConfig.add_member(:repository_url, Shapes::ShapeRef.new(shape: GitConfigUrl, required: true, location_name: "RepositoryUrl"))
    GitConfig.add_member(:branch, Shapes::ShapeRef.new(shape: Branch, location_name: "Branch"))
    GitConfig.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, location_name: "SecretArn"))
    GitConfig.struct_class = Types::GitConfig

    GitConfigForUpdate.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, location_name: "SecretArn"))
    GitConfigForUpdate.struct_class = Types::GitConfigForUpdate

    Groups.member = Shapes::ShapeRef.new(shape: Group)

    HookParameters.key = Shapes::ShapeRef.new(shape: ConfigKey)
    HookParameters.value = Shapes::ShapeRef.new(shape: ConfigValue)

    HumanLoopActivationConditionsConfig.add_member(:human_loop_activation_conditions, Shapes::ShapeRef.new(shape: HumanLoopActivationConditions, required: true, location_name: "HumanLoopActivationConditions", metadata: {"jsonvalue"=>true}))
    HumanLoopActivationConditionsConfig.struct_class = Types::HumanLoopActivationConditionsConfig

    HumanLoopActivationConfig.add_member(:human_loop_activation_conditions_config, Shapes::ShapeRef.new(shape: HumanLoopActivationConditionsConfig, required: true, location_name: "HumanLoopActivationConditionsConfig"))
    HumanLoopActivationConfig.struct_class = Types::HumanLoopActivationConfig

    HumanLoopConfig.add_member(:workteam_arn, Shapes::ShapeRef.new(shape: WorkteamArn, required: true, location_name: "WorkteamArn"))
    HumanLoopConfig.add_member(:human_task_ui_arn, Shapes::ShapeRef.new(shape: HumanTaskUiArn, required: true, location_name: "HumanTaskUiArn"))
    HumanLoopConfig.add_member(:task_title, Shapes::ShapeRef.new(shape: FlowDefinitionTaskTitle, required: true, location_name: "TaskTitle"))
    HumanLoopConfig.add_member(:task_description, Shapes::ShapeRef.new(shape: FlowDefinitionTaskDescription, required: true, location_name: "TaskDescription"))
    HumanLoopConfig.add_member(:task_count, Shapes::ShapeRef.new(shape: FlowDefinitionTaskCount, required: true, location_name: "TaskCount"))
    HumanLoopConfig.add_member(:task_availability_lifetime_in_seconds, Shapes::ShapeRef.new(shape: FlowDefinitionTaskAvailabilityLifetimeInSeconds, location_name: "TaskAvailabilityLifetimeInSeconds"))
    HumanLoopConfig.add_member(:task_time_limit_in_seconds, Shapes::ShapeRef.new(shape: FlowDefinitionTaskTimeLimitInSeconds, location_name: "TaskTimeLimitInSeconds"))
    HumanLoopConfig.add_member(:task_keywords, Shapes::ShapeRef.new(shape: FlowDefinitionTaskKeywords, location_name: "TaskKeywords"))
    HumanLoopConfig.add_member(:public_workforce_task_price, Shapes::ShapeRef.new(shape: PublicWorkforceTaskPrice, location_name: "PublicWorkforceTaskPrice"))
    HumanLoopConfig.struct_class = Types::HumanLoopConfig

    HumanLoopRequestSource.add_member(:aws_managed_human_loop_request_source, Shapes::ShapeRef.new(shape: AwsManagedHumanLoopRequestSource, required: true, location_name: "AwsManagedHumanLoopRequestSource"))
    HumanLoopRequestSource.struct_class = Types::HumanLoopRequestSource

    HumanTaskConfig.add_member(:workteam_arn, Shapes::ShapeRef.new(shape: WorkteamArn, required: true, location_name: "WorkteamArn"))
    HumanTaskConfig.add_member(:ui_config, Shapes::ShapeRef.new(shape: UiConfig, required: true, location_name: "UiConfig"))
    HumanTaskConfig.add_member(:pre_human_task_lambda_arn, Shapes::ShapeRef.new(shape: LambdaFunctionArn, required: true, location_name: "PreHumanTaskLambdaArn"))
    HumanTaskConfig.add_member(:task_keywords, Shapes::ShapeRef.new(shape: TaskKeywords, location_name: "TaskKeywords"))
    HumanTaskConfig.add_member(:task_title, Shapes::ShapeRef.new(shape: TaskTitle, required: true, location_name: "TaskTitle"))
    HumanTaskConfig.add_member(:task_description, Shapes::ShapeRef.new(shape: TaskDescription, required: true, location_name: "TaskDescription"))
    HumanTaskConfig.add_member(:number_of_human_workers_per_data_object, Shapes::ShapeRef.new(shape: NumberOfHumanWorkersPerDataObject, required: true, location_name: "NumberOfHumanWorkersPerDataObject"))
    HumanTaskConfig.add_member(:task_time_limit_in_seconds, Shapes::ShapeRef.new(shape: TaskTimeLimitInSeconds, required: true, location_name: "TaskTimeLimitInSeconds"))
    HumanTaskConfig.add_member(:task_availability_lifetime_in_seconds, Shapes::ShapeRef.new(shape: TaskAvailabilityLifetimeInSeconds, location_name: "TaskAvailabilityLifetimeInSeconds"))
    HumanTaskConfig.add_member(:max_concurrent_task_count, Shapes::ShapeRef.new(shape: MaxConcurrentTaskCount, location_name: "MaxConcurrentTaskCount"))
    HumanTaskConfig.add_member(:annotation_consolidation_config, Shapes::ShapeRef.new(shape: AnnotationConsolidationConfig, required: true, location_name: "AnnotationConsolidationConfig"))
    HumanTaskConfig.add_member(:public_workforce_task_price, Shapes::ShapeRef.new(shape: PublicWorkforceTaskPrice, location_name: "PublicWorkforceTaskPrice"))
    HumanTaskConfig.struct_class = Types::HumanTaskConfig

    HumanTaskUiSummaries.member = Shapes::ShapeRef.new(shape: HumanTaskUiSummary)

    HumanTaskUiSummary.add_member(:human_task_ui_name, Shapes::ShapeRef.new(shape: HumanTaskUiName, required: true, location_name: "HumanTaskUiName"))
    HumanTaskUiSummary.add_member(:human_task_ui_arn, Shapes::ShapeRef.new(shape: HumanTaskUiArn, required: true, location_name: "HumanTaskUiArn"))
    HumanTaskUiSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    HumanTaskUiSummary.struct_class = Types::HumanTaskUiSummary

    HyperParameterAlgorithmSpecification.add_member(:training_image, Shapes::ShapeRef.new(shape: AlgorithmImage, location_name: "TrainingImage"))
    HyperParameterAlgorithmSpecification.add_member(:training_input_mode, Shapes::ShapeRef.new(shape: TrainingInputMode, required: true, location_name: "TrainingInputMode"))
    HyperParameterAlgorithmSpecification.add_member(:algorithm_name, Shapes::ShapeRef.new(shape: ArnOrName, location_name: "AlgorithmName"))
    HyperParameterAlgorithmSpecification.add_member(:metric_definitions, Shapes::ShapeRef.new(shape: MetricDefinitionList, location_name: "MetricDefinitions"))
    HyperParameterAlgorithmSpecification.struct_class = Types::HyperParameterAlgorithmSpecification

    HyperParameterSpecification.add_member(:name, Shapes::ShapeRef.new(shape: ParameterName, required: true, location_name: "Name"))
    HyperParameterSpecification.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "Description"))
    HyperParameterSpecification.add_member(:type, Shapes::ShapeRef.new(shape: ParameterType, required: true, location_name: "Type"))
    HyperParameterSpecification.add_member(:range, Shapes::ShapeRef.new(shape: ParameterRange, location_name: "Range"))
    HyperParameterSpecification.add_member(:is_tunable, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsTunable"))
    HyperParameterSpecification.add_member(:is_required, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsRequired"))
    HyperParameterSpecification.add_member(:default_value, Shapes::ShapeRef.new(shape: HyperParameterValue, location_name: "DefaultValue"))
    HyperParameterSpecification.struct_class = Types::HyperParameterSpecification

    HyperParameterSpecifications.member = Shapes::ShapeRef.new(shape: HyperParameterSpecification)

    HyperParameterTrainingJobDefinition.add_member(:definition_name, Shapes::ShapeRef.new(shape: HyperParameterTrainingJobDefinitionName, location_name: "DefinitionName"))
    HyperParameterTrainingJobDefinition.add_member(:tuning_objective, Shapes::ShapeRef.new(shape: HyperParameterTuningJobObjective, location_name: "TuningObjective"))
    HyperParameterTrainingJobDefinition.add_member(:hyper_parameter_ranges, Shapes::ShapeRef.new(shape: ParameterRanges, location_name: "HyperParameterRanges"))
    HyperParameterTrainingJobDefinition.add_member(:static_hyper_parameters, Shapes::ShapeRef.new(shape: HyperParameters, location_name: "StaticHyperParameters"))
    HyperParameterTrainingJobDefinition.add_member(:algorithm_specification, Shapes::ShapeRef.new(shape: HyperParameterAlgorithmSpecification, required: true, location_name: "AlgorithmSpecification"))
    HyperParameterTrainingJobDefinition.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    HyperParameterTrainingJobDefinition.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, location_name: "InputDataConfig"))
    HyperParameterTrainingJobDefinition.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    HyperParameterTrainingJobDefinition.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    HyperParameterTrainingJobDefinition.add_member(:resource_config, Shapes::ShapeRef.new(shape: ResourceConfig, required: true, location_name: "ResourceConfig"))
    HyperParameterTrainingJobDefinition.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: StoppingCondition, required: true, location_name: "StoppingCondition"))
    HyperParameterTrainingJobDefinition.add_member(:enable_network_isolation, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableNetworkIsolation"))
    HyperParameterTrainingJobDefinition.add_member(:enable_inter_container_traffic_encryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableInterContainerTrafficEncryption"))
    HyperParameterTrainingJobDefinition.add_member(:enable_managed_spot_training, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableManagedSpotTraining"))
    HyperParameterTrainingJobDefinition.add_member(:checkpoint_config, Shapes::ShapeRef.new(shape: CheckpointConfig, location_name: "CheckpointConfig"))
    HyperParameterTrainingJobDefinition.add_member(:retry_strategy, Shapes::ShapeRef.new(shape: RetryStrategy, location_name: "RetryStrategy"))
    HyperParameterTrainingJobDefinition.struct_class = Types::HyperParameterTrainingJobDefinition

    HyperParameterTrainingJobDefinitions.member = Shapes::ShapeRef.new(shape: HyperParameterTrainingJobDefinition)

    HyperParameterTrainingJobSummaries.member = Shapes::ShapeRef.new(shape: HyperParameterTrainingJobSummary)

    HyperParameterTrainingJobSummary.add_member(:training_job_definition_name, Shapes::ShapeRef.new(shape: HyperParameterTrainingJobDefinitionName, location_name: "TrainingJobDefinitionName"))
    HyperParameterTrainingJobSummary.add_member(:training_job_name, Shapes::ShapeRef.new(shape: TrainingJobName, required: true, location_name: "TrainingJobName"))
    HyperParameterTrainingJobSummary.add_member(:training_job_arn, Shapes::ShapeRef.new(shape: TrainingJobArn, required: true, location_name: "TrainingJobArn"))
    HyperParameterTrainingJobSummary.add_member(:tuning_job_name, Shapes::ShapeRef.new(shape: HyperParameterTuningJobName, location_name: "TuningJobName"))
    HyperParameterTrainingJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    HyperParameterTrainingJobSummary.add_member(:training_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TrainingStartTime"))
    HyperParameterTrainingJobSummary.add_member(:training_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TrainingEndTime"))
    HyperParameterTrainingJobSummary.add_member(:training_job_status, Shapes::ShapeRef.new(shape: TrainingJobStatus, required: true, location_name: "TrainingJobStatus"))
    HyperParameterTrainingJobSummary.add_member(:tuned_hyper_parameters, Shapes::ShapeRef.new(shape: HyperParameters, required: true, location_name: "TunedHyperParameters"))
    HyperParameterTrainingJobSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    HyperParameterTrainingJobSummary.add_member(:final_hyper_parameter_tuning_job_objective_metric, Shapes::ShapeRef.new(shape: FinalHyperParameterTuningJobObjectiveMetric, location_name: "FinalHyperParameterTuningJobObjectiveMetric"))
    HyperParameterTrainingJobSummary.add_member(:objective_status, Shapes::ShapeRef.new(shape: ObjectiveStatus, location_name: "ObjectiveStatus"))
    HyperParameterTrainingJobSummary.struct_class = Types::HyperParameterTrainingJobSummary

    HyperParameterTuningJobConfig.add_member(:strategy, Shapes::ShapeRef.new(shape: HyperParameterTuningJobStrategyType, required: true, location_name: "Strategy"))
    HyperParameterTuningJobConfig.add_member(:hyper_parameter_tuning_job_objective, Shapes::ShapeRef.new(shape: HyperParameterTuningJobObjective, location_name: "HyperParameterTuningJobObjective"))
    HyperParameterTuningJobConfig.add_member(:resource_limits, Shapes::ShapeRef.new(shape: ResourceLimits, required: true, location_name: "ResourceLimits"))
    HyperParameterTuningJobConfig.add_member(:parameter_ranges, Shapes::ShapeRef.new(shape: ParameterRanges, location_name: "ParameterRanges"))
    HyperParameterTuningJobConfig.add_member(:training_job_early_stopping_type, Shapes::ShapeRef.new(shape: TrainingJobEarlyStoppingType, location_name: "TrainingJobEarlyStoppingType"))
    HyperParameterTuningJobConfig.add_member(:tuning_job_completion_criteria, Shapes::ShapeRef.new(shape: TuningJobCompletionCriteria, location_name: "TuningJobCompletionCriteria"))
    HyperParameterTuningJobConfig.struct_class = Types::HyperParameterTuningJobConfig

    HyperParameterTuningJobObjective.add_member(:type, Shapes::ShapeRef.new(shape: HyperParameterTuningJobObjectiveType, required: true, location_name: "Type"))
    HyperParameterTuningJobObjective.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    HyperParameterTuningJobObjective.struct_class = Types::HyperParameterTuningJobObjective

    HyperParameterTuningJobObjectives.member = Shapes::ShapeRef.new(shape: HyperParameterTuningJobObjective)

    HyperParameterTuningJobSummaries.member = Shapes::ShapeRef.new(shape: HyperParameterTuningJobSummary)

    HyperParameterTuningJobSummary.add_member(:hyper_parameter_tuning_job_name, Shapes::ShapeRef.new(shape: HyperParameterTuningJobName, required: true, location_name: "HyperParameterTuningJobName"))
    HyperParameterTuningJobSummary.add_member(:hyper_parameter_tuning_job_arn, Shapes::ShapeRef.new(shape: HyperParameterTuningJobArn, required: true, location_name: "HyperParameterTuningJobArn"))
    HyperParameterTuningJobSummary.add_member(:hyper_parameter_tuning_job_status, Shapes::ShapeRef.new(shape: HyperParameterTuningJobStatus, required: true, location_name: "HyperParameterTuningJobStatus"))
    HyperParameterTuningJobSummary.add_member(:strategy, Shapes::ShapeRef.new(shape: HyperParameterTuningJobStrategyType, required: true, location_name: "Strategy"))
    HyperParameterTuningJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    HyperParameterTuningJobSummary.add_member(:hyper_parameter_tuning_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "HyperParameterTuningEndTime"))
    HyperParameterTuningJobSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    HyperParameterTuningJobSummary.add_member(:training_job_status_counters, Shapes::ShapeRef.new(shape: TrainingJobStatusCounters, required: true, location_name: "TrainingJobStatusCounters"))
    HyperParameterTuningJobSummary.add_member(:objective_status_counters, Shapes::ShapeRef.new(shape: ObjectiveStatusCounters, required: true, location_name: "ObjectiveStatusCounters"))
    HyperParameterTuningJobSummary.add_member(:resource_limits, Shapes::ShapeRef.new(shape: ResourceLimits, location_name: "ResourceLimits"))
    HyperParameterTuningJobSummary.struct_class = Types::HyperParameterTuningJobSummary

    HyperParameterTuningJobWarmStartConfig.add_member(:parent_hyper_parameter_tuning_jobs, Shapes::ShapeRef.new(shape: ParentHyperParameterTuningJobs, required: true, location_name: "ParentHyperParameterTuningJobs"))
    HyperParameterTuningJobWarmStartConfig.add_member(:warm_start_type, Shapes::ShapeRef.new(shape: HyperParameterTuningJobWarmStartType, required: true, location_name: "WarmStartType"))
    HyperParameterTuningJobWarmStartConfig.struct_class = Types::HyperParameterTuningJobWarmStartConfig

    HyperParameters.key = Shapes::ShapeRef.new(shape: HyperParameterKey)
    HyperParameters.value = Shapes::ShapeRef.new(shape: HyperParameterValue)

    Image.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    Image.add_member(:description, Shapes::ShapeRef.new(shape: ImageDescription, location_name: "Description"))
    Image.add_member(:display_name, Shapes::ShapeRef.new(shape: ImageDisplayName, location_name: "DisplayName"))
    Image.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    Image.add_member(:image_arn, Shapes::ShapeRef.new(shape: ImageArn, required: true, location_name: "ImageArn"))
    Image.add_member(:image_name, Shapes::ShapeRef.new(shape: ImageName, required: true, location_name: "ImageName"))
    Image.add_member(:image_status, Shapes::ShapeRef.new(shape: ImageStatus, required: true, location_name: "ImageStatus"))
    Image.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    Image.struct_class = Types::Image

    ImageConfig.add_member(:repository_access_mode, Shapes::ShapeRef.new(shape: RepositoryAccessMode, required: true, location_name: "RepositoryAccessMode"))
    ImageConfig.add_member(:repository_auth_config, Shapes::ShapeRef.new(shape: RepositoryAuthConfig, location_name: "RepositoryAuthConfig"))
    ImageConfig.struct_class = Types::ImageConfig

    ImageDeletePropertyList.member = Shapes::ShapeRef.new(shape: ImageDeleteProperty)

    ImageVersion.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    ImageVersion.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    ImageVersion.add_member(:image_arn, Shapes::ShapeRef.new(shape: ImageArn, required: true, location_name: "ImageArn"))
    ImageVersion.add_member(:image_version_arn, Shapes::ShapeRef.new(shape: ImageVersionArn, required: true, location_name: "ImageVersionArn"))
    ImageVersion.add_member(:image_version_status, Shapes::ShapeRef.new(shape: ImageVersionStatus, required: true, location_name: "ImageVersionStatus"))
    ImageVersion.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    ImageVersion.add_member(:version, Shapes::ShapeRef.new(shape: ImageVersionNumber, required: true, location_name: "Version"))
    ImageVersion.struct_class = Types::ImageVersion

    ImageVersions.member = Shapes::ShapeRef.new(shape: ImageVersion)

    Images.member = Shapes::ShapeRef.new(shape: Image)

    InferenceExecutionConfig.add_member(:mode, Shapes::ShapeRef.new(shape: InferenceExecutionMode, required: true, location_name: "Mode"))
    InferenceExecutionConfig.struct_class = Types::InferenceExecutionConfig

    InferenceRecommendation.add_member(:metrics, Shapes::ShapeRef.new(shape: RecommendationMetrics, required: true, location_name: "Metrics"))
    InferenceRecommendation.add_member(:endpoint_configuration, Shapes::ShapeRef.new(shape: EndpointOutputConfiguration, required: true, location_name: "EndpointConfiguration"))
    InferenceRecommendation.add_member(:model_configuration, Shapes::ShapeRef.new(shape: ModelConfiguration, required: true, location_name: "ModelConfiguration"))
    InferenceRecommendation.struct_class = Types::InferenceRecommendation

    InferenceRecommendations.member = Shapes::ShapeRef.new(shape: InferenceRecommendation)

    InferenceRecommendationsJob.add_member(:job_name, Shapes::ShapeRef.new(shape: RecommendationJobName, required: true, location_name: "JobName"))
    InferenceRecommendationsJob.add_member(:job_description, Shapes::ShapeRef.new(shape: RecommendationJobDescription, required: true, location_name: "JobDescription"))
    InferenceRecommendationsJob.add_member(:job_type, Shapes::ShapeRef.new(shape: RecommendationJobType, required: true, location_name: "JobType"))
    InferenceRecommendationsJob.add_member(:job_arn, Shapes::ShapeRef.new(shape: RecommendationJobArn, required: true, location_name: "JobArn"))
    InferenceRecommendationsJob.add_member(:status, Shapes::ShapeRef.new(shape: RecommendationJobStatus, required: true, location_name: "Status"))
    InferenceRecommendationsJob.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    InferenceRecommendationsJob.add_member(:completion_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompletionTime"))
    InferenceRecommendationsJob.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    InferenceRecommendationsJob.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastModifiedTime, required: true, location_name: "LastModifiedTime"))
    InferenceRecommendationsJob.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    InferenceRecommendationsJob.struct_class = Types::InferenceRecommendationsJob

    InferenceRecommendationsJobs.member = Shapes::ShapeRef.new(shape: InferenceRecommendationsJob)

    InferenceSpecification.add_member(:containers, Shapes::ShapeRef.new(shape: ModelPackageContainerDefinitionList, required: true, location_name: "Containers"))
    InferenceSpecification.add_member(:supported_transform_instance_types, Shapes::ShapeRef.new(shape: TransformInstanceTypes, location_name: "SupportedTransformInstanceTypes"))
    InferenceSpecification.add_member(:supported_realtime_inference_instance_types, Shapes::ShapeRef.new(shape: RealtimeInferenceInstanceTypes, location_name: "SupportedRealtimeInferenceInstanceTypes"))
    InferenceSpecification.add_member(:supported_content_types, Shapes::ShapeRef.new(shape: ContentTypes, required: true, location_name: "SupportedContentTypes"))
    InferenceSpecification.add_member(:supported_response_mime_types, Shapes::ShapeRef.new(shape: ResponseMIMETypes, required: true, location_name: "SupportedResponseMIMETypes"))
    InferenceSpecification.struct_class = Types::InferenceSpecification

    InputConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    InputConfig.add_member(:data_input_config, Shapes::ShapeRef.new(shape: DataInputConfig, required: true, location_name: "DataInputConfig"))
    InputConfig.add_member(:framework, Shapes::ShapeRef.new(shape: Framework, required: true, location_name: "Framework"))
    InputConfig.add_member(:framework_version, Shapes::ShapeRef.new(shape: FrameworkVersion, location_name: "FrameworkVersion"))
    InputConfig.struct_class = Types::InputConfig

    InputDataConfig.member = Shapes::ShapeRef.new(shape: Channel)

    InputModes.member = Shapes::ShapeRef.new(shape: TrainingInputMode)

    IntegerParameterRange.add_member(:name, Shapes::ShapeRef.new(shape: ParameterKey, required: true, location_name: "Name"))
    IntegerParameterRange.add_member(:min_value, Shapes::ShapeRef.new(shape: ParameterValue, required: true, location_name: "MinValue"))
    IntegerParameterRange.add_member(:max_value, Shapes::ShapeRef.new(shape: ParameterValue, required: true, location_name: "MaxValue"))
    IntegerParameterRange.add_member(:scaling_type, Shapes::ShapeRef.new(shape: HyperParameterScalingType, location_name: "ScalingType"))
    IntegerParameterRange.struct_class = Types::IntegerParameterRange

    IntegerParameterRangeSpecification.add_member(:min_value, Shapes::ShapeRef.new(shape: ParameterValue, required: true, location_name: "MinValue"))
    IntegerParameterRangeSpecification.add_member(:max_value, Shapes::ShapeRef.new(shape: ParameterValue, required: true, location_name: "MaxValue"))
    IntegerParameterRangeSpecification.struct_class = Types::IntegerParameterRangeSpecification

    IntegerParameterRanges.member = Shapes::ShapeRef.new(shape: IntegerParameterRange)

    JsonContentTypes.member = Shapes::ShapeRef.new(shape: JsonContentType)

    JupyterServerAppSettings.add_member(:default_resource_spec, Shapes::ShapeRef.new(shape: ResourceSpec, location_name: "DefaultResourceSpec"))
    JupyterServerAppSettings.add_member(:lifecycle_config_arns, Shapes::ShapeRef.new(shape: LifecycleConfigArns, location_name: "LifecycleConfigArns"))
    JupyterServerAppSettings.struct_class = Types::JupyterServerAppSettings

    KernelGatewayAppSettings.add_member(:default_resource_spec, Shapes::ShapeRef.new(shape: ResourceSpec, location_name: "DefaultResourceSpec"))
    KernelGatewayAppSettings.add_member(:custom_images, Shapes::ShapeRef.new(shape: CustomImages, location_name: "CustomImages"))
    KernelGatewayAppSettings.add_member(:lifecycle_config_arns, Shapes::ShapeRef.new(shape: LifecycleConfigArns, location_name: "LifecycleConfigArns"))
    KernelGatewayAppSettings.struct_class = Types::KernelGatewayAppSettings

    KernelGatewayImageConfig.add_member(:kernel_specs, Shapes::ShapeRef.new(shape: KernelSpecs, required: true, location_name: "KernelSpecs"))
    KernelGatewayImageConfig.add_member(:file_system_config, Shapes::ShapeRef.new(shape: FileSystemConfig, location_name: "FileSystemConfig"))
    KernelGatewayImageConfig.struct_class = Types::KernelGatewayImageConfig

    KernelSpec.add_member(:name, Shapes::ShapeRef.new(shape: KernelName, required: true, location_name: "Name"))
    KernelSpec.add_member(:display_name, Shapes::ShapeRef.new(shape: KernelDisplayName, location_name: "DisplayName"))
    KernelSpec.struct_class = Types::KernelSpec

    KernelSpecs.member = Shapes::ShapeRef.new(shape: KernelSpec)

    LabelCounters.add_member(:total_labeled, Shapes::ShapeRef.new(shape: LabelCounter, location_name: "TotalLabeled"))
    LabelCounters.add_member(:human_labeled, Shapes::ShapeRef.new(shape: LabelCounter, location_name: "HumanLabeled"))
    LabelCounters.add_member(:machine_labeled, Shapes::ShapeRef.new(shape: LabelCounter, location_name: "MachineLabeled"))
    LabelCounters.add_member(:failed_non_retryable_error, Shapes::ShapeRef.new(shape: LabelCounter, location_name: "FailedNonRetryableError"))
    LabelCounters.add_member(:unlabeled, Shapes::ShapeRef.new(shape: LabelCounter, location_name: "Unlabeled"))
    LabelCounters.struct_class = Types::LabelCounters

    LabelCountersForWorkteam.add_member(:human_labeled, Shapes::ShapeRef.new(shape: LabelCounter, location_name: "HumanLabeled"))
    LabelCountersForWorkteam.add_member(:pending_human, Shapes::ShapeRef.new(shape: LabelCounter, location_name: "PendingHuman"))
    LabelCountersForWorkteam.add_member(:total, Shapes::ShapeRef.new(shape: LabelCounter, location_name: "Total"))
    LabelCountersForWorkteam.struct_class = Types::LabelCountersForWorkteam

    LabelingJobAlgorithmsConfig.add_member(:labeling_job_algorithm_specification_arn, Shapes::ShapeRef.new(shape: LabelingJobAlgorithmSpecificationArn, required: true, location_name: "LabelingJobAlgorithmSpecificationArn"))
    LabelingJobAlgorithmsConfig.add_member(:initial_active_learning_model_arn, Shapes::ShapeRef.new(shape: ModelArn, location_name: "InitialActiveLearningModelArn"))
    LabelingJobAlgorithmsConfig.add_member(:labeling_job_resource_config, Shapes::ShapeRef.new(shape: LabelingJobResourceConfig, location_name: "LabelingJobResourceConfig"))
    LabelingJobAlgorithmsConfig.struct_class = Types::LabelingJobAlgorithmsConfig

    LabelingJobDataAttributes.add_member(:content_classifiers, Shapes::ShapeRef.new(shape: ContentClassifiers, location_name: "ContentClassifiers"))
    LabelingJobDataAttributes.struct_class = Types::LabelingJobDataAttributes

    LabelingJobDataSource.add_member(:s3_data_source, Shapes::ShapeRef.new(shape: LabelingJobS3DataSource, location_name: "S3DataSource"))
    LabelingJobDataSource.add_member(:sns_data_source, Shapes::ShapeRef.new(shape: LabelingJobSnsDataSource, location_name: "SnsDataSource"))
    LabelingJobDataSource.struct_class = Types::LabelingJobDataSource

    LabelingJobForWorkteamSummary.add_member(:labeling_job_name, Shapes::ShapeRef.new(shape: LabelingJobName, location_name: "LabelingJobName"))
    LabelingJobForWorkteamSummary.add_member(:job_reference_code, Shapes::ShapeRef.new(shape: JobReferenceCode, required: true, location_name: "JobReferenceCode"))
    LabelingJobForWorkteamSummary.add_member(:work_requester_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "WorkRequesterAccountId"))
    LabelingJobForWorkteamSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    LabelingJobForWorkteamSummary.add_member(:label_counters, Shapes::ShapeRef.new(shape: LabelCountersForWorkteam, location_name: "LabelCounters"))
    LabelingJobForWorkteamSummary.add_member(:number_of_human_workers_per_data_object, Shapes::ShapeRef.new(shape: NumberOfHumanWorkersPerDataObject, location_name: "NumberOfHumanWorkersPerDataObject"))
    LabelingJobForWorkteamSummary.struct_class = Types::LabelingJobForWorkteamSummary

    LabelingJobForWorkteamSummaryList.member = Shapes::ShapeRef.new(shape: LabelingJobForWorkteamSummary)

    LabelingJobInputConfig.add_member(:data_source, Shapes::ShapeRef.new(shape: LabelingJobDataSource, required: true, location_name: "DataSource"))
    LabelingJobInputConfig.add_member(:data_attributes, Shapes::ShapeRef.new(shape: LabelingJobDataAttributes, location_name: "DataAttributes"))
    LabelingJobInputConfig.struct_class = Types::LabelingJobInputConfig

    LabelingJobOutput.add_member(:output_dataset_s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "OutputDatasetS3Uri"))
    LabelingJobOutput.add_member(:final_active_learning_model_arn, Shapes::ShapeRef.new(shape: ModelArn, location_name: "FinalActiveLearningModelArn"))
    LabelingJobOutput.struct_class = Types::LabelingJobOutput

    LabelingJobOutputConfig.add_member(:s3_output_path, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3OutputPath"))
    LabelingJobOutputConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    LabelingJobOutputConfig.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: SnsTopicArn, location_name: "SnsTopicArn"))
    LabelingJobOutputConfig.struct_class = Types::LabelingJobOutputConfig

    LabelingJobResourceConfig.add_member(:volume_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "VolumeKmsKeyId"))
    LabelingJobResourceConfig.struct_class = Types::LabelingJobResourceConfig

    LabelingJobS3DataSource.add_member(:manifest_s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "ManifestS3Uri"))
    LabelingJobS3DataSource.struct_class = Types::LabelingJobS3DataSource

    LabelingJobSnsDataSource.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: SnsTopicArn, required: true, location_name: "SnsTopicArn"))
    LabelingJobSnsDataSource.struct_class = Types::LabelingJobSnsDataSource

    LabelingJobStoppingConditions.add_member(:max_human_labeled_object_count, Shapes::ShapeRef.new(shape: MaxHumanLabeledObjectCount, location_name: "MaxHumanLabeledObjectCount"))
    LabelingJobStoppingConditions.add_member(:max_percentage_of_input_dataset_labeled, Shapes::ShapeRef.new(shape: MaxPercentageOfInputDatasetLabeled, location_name: "MaxPercentageOfInputDatasetLabeled"))
    LabelingJobStoppingConditions.struct_class = Types::LabelingJobStoppingConditions

    LabelingJobSummary.add_member(:labeling_job_name, Shapes::ShapeRef.new(shape: LabelingJobName, required: true, location_name: "LabelingJobName"))
    LabelingJobSummary.add_member(:labeling_job_arn, Shapes::ShapeRef.new(shape: LabelingJobArn, required: true, location_name: "LabelingJobArn"))
    LabelingJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    LabelingJobSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    LabelingJobSummary.add_member(:labeling_job_status, Shapes::ShapeRef.new(shape: LabelingJobStatus, required: true, location_name: "LabelingJobStatus"))
    LabelingJobSummary.add_member(:label_counters, Shapes::ShapeRef.new(shape: LabelCounters, required: true, location_name: "LabelCounters"))
    LabelingJobSummary.add_member(:workteam_arn, Shapes::ShapeRef.new(shape: WorkteamArn, required: true, location_name: "WorkteamArn"))
    LabelingJobSummary.add_member(:pre_human_task_lambda_arn, Shapes::ShapeRef.new(shape: LambdaFunctionArn, required: true, location_name: "PreHumanTaskLambdaArn"))
    LabelingJobSummary.add_member(:annotation_consolidation_lambda_arn, Shapes::ShapeRef.new(shape: LambdaFunctionArn, location_name: "AnnotationConsolidationLambdaArn"))
    LabelingJobSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    LabelingJobSummary.add_member(:labeling_job_output, Shapes::ShapeRef.new(shape: LabelingJobOutput, location_name: "LabelingJobOutput"))
    LabelingJobSummary.add_member(:input_config, Shapes::ShapeRef.new(shape: LabelingJobInputConfig, location_name: "InputConfig"))
    LabelingJobSummary.struct_class = Types::LabelingJobSummary

    LabelingJobSummaryList.member = Shapes::ShapeRef.new(shape: LabelingJobSummary)

    LambdaStepMetadata.add_member(:arn, Shapes::ShapeRef.new(shape: String256, location_name: "Arn"))
    LambdaStepMetadata.add_member(:output_parameters, Shapes::ShapeRef.new(shape: OutputParameterList, location_name: "OutputParameters"))
    LambdaStepMetadata.struct_class = Types::LambdaStepMetadata

    LifecycleConfigArns.member = Shapes::ShapeRef.new(shape: StudioLifecycleConfigArn)

    LineageEntityParameters.key = Shapes::ShapeRef.new(shape: StringParameterValue)
    LineageEntityParameters.value = Shapes::ShapeRef.new(shape: StringParameterValue)

    LineageGroupSummaries.member = Shapes::ShapeRef.new(shape: LineageGroupSummary)

    LineageGroupSummary.add_member(:lineage_group_arn, Shapes::ShapeRef.new(shape: LineageGroupArn, location_name: "LineageGroupArn"))
    LineageGroupSummary.add_member(:lineage_group_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "LineageGroupName"))
    LineageGroupSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "DisplayName"))
    LineageGroupSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    LineageGroupSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    LineageGroupSummary.struct_class = Types::LineageGroupSummary

    ListActionsRequest.add_member(:source_uri, Shapes::ShapeRef.new(shape: SourceUri, location_name: "SourceUri"))
    ListActionsRequest.add_member(:action_type, Shapes::ShapeRef.new(shape: String256, location_name: "ActionType"))
    ListActionsRequest.add_member(:created_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAfter"))
    ListActionsRequest.add_member(:created_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedBefore"))
    ListActionsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortActionsBy, location_name: "SortBy"))
    ListActionsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListActionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListActionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListActionsRequest.struct_class = Types::ListActionsRequest

    ListActionsResponse.add_member(:action_summaries, Shapes::ShapeRef.new(shape: ActionSummaries, location_name: "ActionSummaries"))
    ListActionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListActionsResponse.struct_class = Types::ListActionsResponse

    ListAlgorithmsInput.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeAfter"))
    ListAlgorithmsInput.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeBefore"))
    ListAlgorithmsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAlgorithmsInput.add_member(:name_contains, Shapes::ShapeRef.new(shape: NameContains, location_name: "NameContains"))
    ListAlgorithmsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAlgorithmsInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: AlgorithmSortBy, location_name: "SortBy"))
    ListAlgorithmsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListAlgorithmsInput.struct_class = Types::ListAlgorithmsInput

    ListAlgorithmsOutput.add_member(:algorithm_summary_list, Shapes::ShapeRef.new(shape: AlgorithmSummaryList, required: true, location_name: "AlgorithmSummaryList"))
    ListAlgorithmsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAlgorithmsOutput.struct_class = Types::ListAlgorithmsOutput

    ListAppImageConfigsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAppImageConfigsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAppImageConfigsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: AppImageConfigName, location_name: "NameContains"))
    ListAppImageConfigsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListAppImageConfigsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListAppImageConfigsRequest.add_member(:modified_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ModifiedTimeBefore"))
    ListAppImageConfigsRequest.add_member(:modified_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ModifiedTimeAfter"))
    ListAppImageConfigsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: AppImageConfigSortKey, location_name: "SortBy"))
    ListAppImageConfigsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListAppImageConfigsRequest.struct_class = Types::ListAppImageConfigsRequest

    ListAppImageConfigsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAppImageConfigsResponse.add_member(:app_image_configs, Shapes::ShapeRef.new(shape: AppImageConfigList, location_name: "AppImageConfigs"))
    ListAppImageConfigsResponse.struct_class = Types::ListAppImageConfigsResponse

    ListAppsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAppsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAppsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListAppsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: AppSortKey, location_name: "SortBy"))
    ListAppsRequest.add_member(:domain_id_equals, Shapes::ShapeRef.new(shape: DomainId, location_name: "DomainIdEquals"))
    ListAppsRequest.add_member(:user_profile_name_equals, Shapes::ShapeRef.new(shape: UserProfileName, location_name: "UserProfileNameEquals"))
    ListAppsRequest.struct_class = Types::ListAppsRequest

    ListAppsResponse.add_member(:apps, Shapes::ShapeRef.new(shape: AppList, location_name: "Apps"))
    ListAppsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAppsResponse.struct_class = Types::ListAppsResponse

    ListArtifactsRequest.add_member(:source_uri, Shapes::ShapeRef.new(shape: SourceUri, location_name: "SourceUri"))
    ListArtifactsRequest.add_member(:artifact_type, Shapes::ShapeRef.new(shape: String256, location_name: "ArtifactType"))
    ListArtifactsRequest.add_member(:created_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAfter"))
    ListArtifactsRequest.add_member(:created_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedBefore"))
    ListArtifactsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortArtifactsBy, location_name: "SortBy"))
    ListArtifactsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListArtifactsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListArtifactsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListArtifactsRequest.struct_class = Types::ListArtifactsRequest

    ListArtifactsResponse.add_member(:artifact_summaries, Shapes::ShapeRef.new(shape: ArtifactSummaries, location_name: "ArtifactSummaries"))
    ListArtifactsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListArtifactsResponse.struct_class = Types::ListArtifactsResponse

    ListAssociationsRequest.add_member(:source_arn, Shapes::ShapeRef.new(shape: AssociationEntityArn, location_name: "SourceArn"))
    ListAssociationsRequest.add_member(:destination_arn, Shapes::ShapeRef.new(shape: AssociationEntityArn, location_name: "DestinationArn"))
    ListAssociationsRequest.add_member(:source_type, Shapes::ShapeRef.new(shape: String256, location_name: "SourceType"))
    ListAssociationsRequest.add_member(:destination_type, Shapes::ShapeRef.new(shape: String256, location_name: "DestinationType"))
    ListAssociationsRequest.add_member(:association_type, Shapes::ShapeRef.new(shape: AssociationEdgeType, location_name: "AssociationType"))
    ListAssociationsRequest.add_member(:created_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAfter"))
    ListAssociationsRequest.add_member(:created_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedBefore"))
    ListAssociationsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortAssociationsBy, location_name: "SortBy"))
    ListAssociationsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAssociationsRequest.struct_class = Types::ListAssociationsRequest

    ListAssociationsResponse.add_member(:association_summaries, Shapes::ShapeRef.new(shape: AssociationSummaries, location_name: "AssociationSummaries"))
    ListAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAssociationsResponse.struct_class = Types::ListAssociationsResponse

    ListAutoMLJobsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListAutoMLJobsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListAutoMLJobsRequest.add_member(:last_modified_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeAfter"))
    ListAutoMLJobsRequest.add_member(:last_modified_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeBefore"))
    ListAutoMLJobsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: AutoMLNameContains, location_name: "NameContains"))
    ListAutoMLJobsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: AutoMLJobStatus, location_name: "StatusEquals"))
    ListAutoMLJobsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: AutoMLSortOrder, location_name: "SortOrder"))
    ListAutoMLJobsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: AutoMLSortBy, location_name: "SortBy"))
    ListAutoMLJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: AutoMLMaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListAutoMLJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAutoMLJobsRequest.struct_class = Types::ListAutoMLJobsRequest

    ListAutoMLJobsResponse.add_member(:auto_ml_job_summaries, Shapes::ShapeRef.new(shape: AutoMLJobSummaries, required: true, location_name: "AutoMLJobSummaries"))
    ListAutoMLJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAutoMLJobsResponse.struct_class = Types::ListAutoMLJobsResponse

    ListCandidatesForAutoMLJobRequest.add_member(:auto_ml_job_name, Shapes::ShapeRef.new(shape: AutoMLJobName, required: true, location_name: "AutoMLJobName"))
    ListCandidatesForAutoMLJobRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: CandidateStatus, location_name: "StatusEquals"))
    ListCandidatesForAutoMLJobRequest.add_member(:candidate_name_equals, Shapes::ShapeRef.new(shape: CandidateName, location_name: "CandidateNameEquals"))
    ListCandidatesForAutoMLJobRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: AutoMLSortOrder, location_name: "SortOrder"))
    ListCandidatesForAutoMLJobRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: CandidateSortBy, location_name: "SortBy"))
    ListCandidatesForAutoMLJobRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: AutoMLMaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListCandidatesForAutoMLJobRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCandidatesForAutoMLJobRequest.struct_class = Types::ListCandidatesForAutoMLJobRequest

    ListCandidatesForAutoMLJobResponse.add_member(:candidates, Shapes::ShapeRef.new(shape: AutoMLCandidates, required: true, location_name: "Candidates"))
    ListCandidatesForAutoMLJobResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCandidatesForAutoMLJobResponse.struct_class = Types::ListCandidatesForAutoMLJobResponse

    ListCodeRepositoriesInput.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeAfter"))
    ListCodeRepositoriesInput.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeBefore"))
    ListCodeRepositoriesInput.add_member(:last_modified_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeAfter"))
    ListCodeRepositoriesInput.add_member(:last_modified_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeBefore"))
    ListCodeRepositoriesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListCodeRepositoriesInput.add_member(:name_contains, Shapes::ShapeRef.new(shape: CodeRepositoryNameContains, location_name: "NameContains"))
    ListCodeRepositoriesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCodeRepositoriesInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: CodeRepositorySortBy, location_name: "SortBy"))
    ListCodeRepositoriesInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: CodeRepositorySortOrder, location_name: "SortOrder"))
    ListCodeRepositoriesInput.struct_class = Types::ListCodeRepositoriesInput

    ListCodeRepositoriesOutput.add_member(:code_repository_summary_list, Shapes::ShapeRef.new(shape: CodeRepositorySummaryList, required: true, location_name: "CodeRepositorySummaryList"))
    ListCodeRepositoriesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCodeRepositoriesOutput.struct_class = Types::ListCodeRepositoriesOutput

    ListCompilationJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCompilationJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListCompilationJobsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeAfter"))
    ListCompilationJobsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeBefore"))
    ListCompilationJobsRequest.add_member(:last_modified_time_after, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTimeAfter"))
    ListCompilationJobsRequest.add_member(:last_modified_time_before, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTimeBefore"))
    ListCompilationJobsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: NameContains, location_name: "NameContains"))
    ListCompilationJobsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: CompilationJobStatus, location_name: "StatusEquals"))
    ListCompilationJobsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: ListCompilationJobsSortBy, location_name: "SortBy"))
    ListCompilationJobsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListCompilationJobsRequest.struct_class = Types::ListCompilationJobsRequest

    ListCompilationJobsResponse.add_member(:compilation_job_summaries, Shapes::ShapeRef.new(shape: CompilationJobSummaries, required: true, location_name: "CompilationJobSummaries"))
    ListCompilationJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCompilationJobsResponse.struct_class = Types::ListCompilationJobsResponse

    ListContextsRequest.add_member(:source_uri, Shapes::ShapeRef.new(shape: SourceUri, location_name: "SourceUri"))
    ListContextsRequest.add_member(:context_type, Shapes::ShapeRef.new(shape: String256, location_name: "ContextType"))
    ListContextsRequest.add_member(:created_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAfter"))
    ListContextsRequest.add_member(:created_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedBefore"))
    ListContextsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortContextsBy, location_name: "SortBy"))
    ListContextsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListContextsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListContextsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListContextsRequest.struct_class = Types::ListContextsRequest

    ListContextsResponse.add_member(:context_summaries, Shapes::ShapeRef.new(shape: ContextSummaries, location_name: "ContextSummaries"))
    ListContextsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListContextsResponse.struct_class = Types::ListContextsResponse

    ListDataQualityJobDefinitionsRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, location_name: "EndpointName"))
    ListDataQualityJobDefinitionsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionSortKey, location_name: "SortBy"))
    ListDataQualityJobDefinitionsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListDataQualityJobDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDataQualityJobDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListDataQualityJobDefinitionsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: NameContains, location_name: "NameContains"))
    ListDataQualityJobDefinitionsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListDataQualityJobDefinitionsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListDataQualityJobDefinitionsRequest.struct_class = Types::ListDataQualityJobDefinitionsRequest

    ListDataQualityJobDefinitionsResponse.add_member(:job_definition_summaries, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionSummaryList, required: true, location_name: "JobDefinitionSummaries"))
    ListDataQualityJobDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDataQualityJobDefinitionsResponse.struct_class = Types::ListDataQualityJobDefinitionsResponse

    ListDeviceFleetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDeviceFleetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListDeviceFleetsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListDeviceFleetsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListDeviceFleetsRequest.add_member(:last_modified_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeAfter"))
    ListDeviceFleetsRequest.add_member(:last_modified_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeBefore"))
    ListDeviceFleetsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: NameContains, location_name: "NameContains"))
    ListDeviceFleetsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: ListDeviceFleetsSortBy, location_name: "SortBy"))
    ListDeviceFleetsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListDeviceFleetsRequest.struct_class = Types::ListDeviceFleetsRequest

    ListDeviceFleetsResponse.add_member(:device_fleet_summaries, Shapes::ShapeRef.new(shape: DeviceFleetSummaries, required: true, location_name: "DeviceFleetSummaries"))
    ListDeviceFleetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDeviceFleetsResponse.struct_class = Types::ListDeviceFleetsResponse

    ListDevicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDevicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListDevicesRequest.add_member(:latest_heartbeat_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LatestHeartbeatAfter"))
    ListDevicesRequest.add_member(:model_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "ModelName"))
    ListDevicesRequest.add_member(:device_fleet_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "DeviceFleetName"))
    ListDevicesRequest.struct_class = Types::ListDevicesRequest

    ListDevicesResponse.add_member(:device_summaries, Shapes::ShapeRef.new(shape: DeviceSummaries, required: true, location_name: "DeviceSummaries"))
    ListDevicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDevicesResponse.struct_class = Types::ListDevicesResponse

    ListDomainsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDomainsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListDomainsRequest.struct_class = Types::ListDomainsRequest

    ListDomainsResponse.add_member(:domains, Shapes::ShapeRef.new(shape: DomainList, location_name: "Domains"))
    ListDomainsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDomainsResponse.struct_class = Types::ListDomainsResponse

    ListEdgePackagingJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEdgePackagingJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListEdgePackagingJobsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListEdgePackagingJobsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListEdgePackagingJobsRequest.add_member(:last_modified_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeAfter"))
    ListEdgePackagingJobsRequest.add_member(:last_modified_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeBefore"))
    ListEdgePackagingJobsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: NameContains, location_name: "NameContains"))
    ListEdgePackagingJobsRequest.add_member(:model_name_contains, Shapes::ShapeRef.new(shape: NameContains, location_name: "ModelNameContains"))
    ListEdgePackagingJobsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: EdgePackagingJobStatus, location_name: "StatusEquals"))
    ListEdgePackagingJobsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: ListEdgePackagingJobsSortBy, location_name: "SortBy"))
    ListEdgePackagingJobsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListEdgePackagingJobsRequest.struct_class = Types::ListEdgePackagingJobsRequest

    ListEdgePackagingJobsResponse.add_member(:edge_packaging_job_summaries, Shapes::ShapeRef.new(shape: EdgePackagingJobSummaries, required: true, location_name: "EdgePackagingJobSummaries"))
    ListEdgePackagingJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEdgePackagingJobsResponse.struct_class = Types::ListEdgePackagingJobsResponse

    ListEndpointConfigsInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: EndpointConfigSortKey, location_name: "SortBy"))
    ListEndpointConfigsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: OrderKey, location_name: "SortOrder"))
    ListEndpointConfigsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListEndpointConfigsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListEndpointConfigsInput.add_member(:name_contains, Shapes::ShapeRef.new(shape: EndpointConfigNameContains, location_name: "NameContains"))
    ListEndpointConfigsInput.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListEndpointConfigsInput.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListEndpointConfigsInput.struct_class = Types::ListEndpointConfigsInput

    ListEndpointConfigsOutput.add_member(:endpoint_configs, Shapes::ShapeRef.new(shape: EndpointConfigSummaryList, required: true, location_name: "EndpointConfigs"))
    ListEndpointConfigsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListEndpointConfigsOutput.struct_class = Types::ListEndpointConfigsOutput

    ListEndpointsInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: EndpointSortKey, location_name: "SortBy"))
    ListEndpointsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: OrderKey, location_name: "SortOrder"))
    ListEndpointsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListEndpointsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListEndpointsInput.add_member(:name_contains, Shapes::ShapeRef.new(shape: EndpointNameContains, location_name: "NameContains"))
    ListEndpointsInput.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListEndpointsInput.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListEndpointsInput.add_member(:last_modified_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeBefore"))
    ListEndpointsInput.add_member(:last_modified_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeAfter"))
    ListEndpointsInput.add_member(:status_equals, Shapes::ShapeRef.new(shape: EndpointStatus, location_name: "StatusEquals"))
    ListEndpointsInput.struct_class = Types::ListEndpointsInput

    ListEndpointsOutput.add_member(:endpoints, Shapes::ShapeRef.new(shape: EndpointSummaryList, required: true, location_name: "Endpoints"))
    ListEndpointsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListEndpointsOutput.struct_class = Types::ListEndpointsOutput

    ListExperimentsRequest.add_member(:created_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAfter"))
    ListExperimentsRequest.add_member(:created_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedBefore"))
    ListExperimentsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortExperimentsBy, location_name: "SortBy"))
    ListExperimentsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListExperimentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListExperimentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListExperimentsRequest.struct_class = Types::ListExperimentsRequest

    ListExperimentsResponse.add_member(:experiment_summaries, Shapes::ShapeRef.new(shape: ExperimentSummaries, location_name: "ExperimentSummaries"))
    ListExperimentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListExperimentsResponse.struct_class = Types::ListExperimentsResponse

    ListFeatureGroupsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: FeatureGroupNameContains, location_name: "NameContains"))
    ListFeatureGroupsRequest.add_member(:feature_group_status_equals, Shapes::ShapeRef.new(shape: FeatureGroupStatus, location_name: "FeatureGroupStatusEquals"))
    ListFeatureGroupsRequest.add_member(:offline_store_status_equals, Shapes::ShapeRef.new(shape: OfflineStoreStatusValue, location_name: "OfflineStoreStatusEquals"))
    ListFeatureGroupsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeAfter"))
    ListFeatureGroupsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeBefore"))
    ListFeatureGroupsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: FeatureGroupSortOrder, location_name: "SortOrder"))
    ListFeatureGroupsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: FeatureGroupSortBy, location_name: "SortBy"))
    ListFeatureGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: FeatureGroupMaxResults, location_name: "MaxResults"))
    ListFeatureGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFeatureGroupsRequest.struct_class = Types::ListFeatureGroupsRequest

    ListFeatureGroupsResponse.add_member(:feature_group_summaries, Shapes::ShapeRef.new(shape: FeatureGroupSummaries, required: true, location_name: "FeatureGroupSummaries"))
    ListFeatureGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, required: true, location_name: "NextToken"))
    ListFeatureGroupsResponse.struct_class = Types::ListFeatureGroupsResponse

    ListFlowDefinitionsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListFlowDefinitionsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListFlowDefinitionsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListFlowDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFlowDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListFlowDefinitionsRequest.struct_class = Types::ListFlowDefinitionsRequest

    ListFlowDefinitionsResponse.add_member(:flow_definition_summaries, Shapes::ShapeRef.new(shape: FlowDefinitionSummaries, required: true, location_name: "FlowDefinitionSummaries"))
    ListFlowDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFlowDefinitionsResponse.struct_class = Types::ListFlowDefinitionsResponse

    ListHumanTaskUisRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListHumanTaskUisRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListHumanTaskUisRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListHumanTaskUisRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListHumanTaskUisRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListHumanTaskUisRequest.struct_class = Types::ListHumanTaskUisRequest

    ListHumanTaskUisResponse.add_member(:human_task_ui_summaries, Shapes::ShapeRef.new(shape: HumanTaskUiSummaries, required: true, location_name: "HumanTaskUiSummaries"))
    ListHumanTaskUisResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListHumanTaskUisResponse.struct_class = Types::ListHumanTaskUisResponse

    ListHyperParameterTuningJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListHyperParameterTuningJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListHyperParameterTuningJobsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: HyperParameterTuningJobSortByOptions, location_name: "SortBy"))
    ListHyperParameterTuningJobsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListHyperParameterTuningJobsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: NameContains, location_name: "NameContains"))
    ListHyperParameterTuningJobsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListHyperParameterTuningJobsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListHyperParameterTuningJobsRequest.add_member(:last_modified_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeAfter"))
    ListHyperParameterTuningJobsRequest.add_member(:last_modified_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeBefore"))
    ListHyperParameterTuningJobsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: HyperParameterTuningJobStatus, location_name: "StatusEquals"))
    ListHyperParameterTuningJobsRequest.struct_class = Types::ListHyperParameterTuningJobsRequest

    ListHyperParameterTuningJobsResponse.add_member(:hyper_parameter_tuning_job_summaries, Shapes::ShapeRef.new(shape: HyperParameterTuningJobSummaries, required: true, location_name: "HyperParameterTuningJobSummaries"))
    ListHyperParameterTuningJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListHyperParameterTuningJobsResponse.struct_class = Types::ListHyperParameterTuningJobsResponse

    ListImageVersionsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListImageVersionsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListImageVersionsRequest.add_member(:image_name, Shapes::ShapeRef.new(shape: ImageName, required: true, location_name: "ImageName"))
    ListImageVersionsRequest.add_member(:last_modified_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeAfter"))
    ListImageVersionsRequest.add_member(:last_modified_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeBefore"))
    ListImageVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListImageVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListImageVersionsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: ImageVersionSortBy, location_name: "SortBy"))
    ListImageVersionsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: ImageVersionSortOrder, location_name: "SortOrder"))
    ListImageVersionsRequest.struct_class = Types::ListImageVersionsRequest

    ListImageVersionsResponse.add_member(:image_versions, Shapes::ShapeRef.new(shape: ImageVersions, location_name: "ImageVersions"))
    ListImageVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListImageVersionsResponse.struct_class = Types::ListImageVersionsResponse

    ListImagesRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListImagesRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListImagesRequest.add_member(:last_modified_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeAfter"))
    ListImagesRequest.add_member(:last_modified_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeBefore"))
    ListImagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListImagesRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: ImageNameContains, location_name: "NameContains"))
    ListImagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListImagesRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: ImageSortBy, location_name: "SortBy"))
    ListImagesRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: ImageSortOrder, location_name: "SortOrder"))
    ListImagesRequest.struct_class = Types::ListImagesRequest

    ListImagesResponse.add_member(:images, Shapes::ShapeRef.new(shape: Images, location_name: "Images"))
    ListImagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListImagesResponse.struct_class = Types::ListImagesResponse

    ListInferenceRecommendationsJobsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeAfter"))
    ListInferenceRecommendationsJobsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeBefore"))
    ListInferenceRecommendationsJobsRequest.add_member(:last_modified_time_after, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTimeAfter"))
    ListInferenceRecommendationsJobsRequest.add_member(:last_modified_time_before, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTimeBefore"))
    ListInferenceRecommendationsJobsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: NameContains, location_name: "NameContains"))
    ListInferenceRecommendationsJobsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: RecommendationJobStatus, location_name: "StatusEquals"))
    ListInferenceRecommendationsJobsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: ListInferenceRecommendationsJobsSortBy, location_name: "SortBy"))
    ListInferenceRecommendationsJobsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListInferenceRecommendationsJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListInferenceRecommendationsJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListInferenceRecommendationsJobsRequest.struct_class = Types::ListInferenceRecommendationsJobsRequest

    ListInferenceRecommendationsJobsResponse.add_member(:inference_recommendations_jobs, Shapes::ShapeRef.new(shape: InferenceRecommendationsJobs, required: true, location_name: "InferenceRecommendationsJobs"))
    ListInferenceRecommendationsJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListInferenceRecommendationsJobsResponse.struct_class = Types::ListInferenceRecommendationsJobsResponse

    ListLabelingJobsForWorkteamRequest.add_member(:workteam_arn, Shapes::ShapeRef.new(shape: WorkteamArn, required: true, location_name: "WorkteamArn"))
    ListLabelingJobsForWorkteamRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListLabelingJobsForWorkteamRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLabelingJobsForWorkteamRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListLabelingJobsForWorkteamRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListLabelingJobsForWorkteamRequest.add_member(:job_reference_code_contains, Shapes::ShapeRef.new(shape: JobReferenceCodeContains, location_name: "JobReferenceCodeContains"))
    ListLabelingJobsForWorkteamRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: ListLabelingJobsForWorkteamSortByOptions, location_name: "SortBy"))
    ListLabelingJobsForWorkteamRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListLabelingJobsForWorkteamRequest.struct_class = Types::ListLabelingJobsForWorkteamRequest

    ListLabelingJobsForWorkteamResponse.add_member(:labeling_job_summary_list, Shapes::ShapeRef.new(shape: LabelingJobForWorkteamSummaryList, required: true, location_name: "LabelingJobSummaryList"))
    ListLabelingJobsForWorkteamResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLabelingJobsForWorkteamResponse.struct_class = Types::ListLabelingJobsForWorkteamResponse

    ListLabelingJobsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListLabelingJobsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListLabelingJobsRequest.add_member(:last_modified_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeAfter"))
    ListLabelingJobsRequest.add_member(:last_modified_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeBefore"))
    ListLabelingJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListLabelingJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLabelingJobsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: NameContains, location_name: "NameContains"))
    ListLabelingJobsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortBy, location_name: "SortBy"))
    ListLabelingJobsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListLabelingJobsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: LabelingJobStatus, location_name: "StatusEquals"))
    ListLabelingJobsRequest.struct_class = Types::ListLabelingJobsRequest

    ListLabelingJobsResponse.add_member(:labeling_job_summary_list, Shapes::ShapeRef.new(shape: LabelingJobSummaryList, location_name: "LabelingJobSummaryList"))
    ListLabelingJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLabelingJobsResponse.struct_class = Types::ListLabelingJobsResponse

    ListLineageEntityParameterKey.member = Shapes::ShapeRef.new(shape: StringParameterValue)

    ListLineageGroupsRequest.add_member(:created_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAfter"))
    ListLineageGroupsRequest.add_member(:created_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedBefore"))
    ListLineageGroupsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortLineageGroupsBy, location_name: "SortBy"))
    ListLineageGroupsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListLineageGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLineageGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListLineageGroupsRequest.struct_class = Types::ListLineageGroupsRequest

    ListLineageGroupsResponse.add_member(:lineage_group_summaries, Shapes::ShapeRef.new(shape: LineageGroupSummaries, location_name: "LineageGroupSummaries"))
    ListLineageGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLineageGroupsResponse.struct_class = Types::ListLineageGroupsResponse

    ListModelBiasJobDefinitionsRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, location_name: "EndpointName"))
    ListModelBiasJobDefinitionsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionSortKey, location_name: "SortBy"))
    ListModelBiasJobDefinitionsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListModelBiasJobDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListModelBiasJobDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListModelBiasJobDefinitionsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: NameContains, location_name: "NameContains"))
    ListModelBiasJobDefinitionsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListModelBiasJobDefinitionsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListModelBiasJobDefinitionsRequest.struct_class = Types::ListModelBiasJobDefinitionsRequest

    ListModelBiasJobDefinitionsResponse.add_member(:job_definition_summaries, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionSummaryList, required: true, location_name: "JobDefinitionSummaries"))
    ListModelBiasJobDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListModelBiasJobDefinitionsResponse.struct_class = Types::ListModelBiasJobDefinitionsResponse

    ListModelExplainabilityJobDefinitionsRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, location_name: "EndpointName"))
    ListModelExplainabilityJobDefinitionsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionSortKey, location_name: "SortBy"))
    ListModelExplainabilityJobDefinitionsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListModelExplainabilityJobDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListModelExplainabilityJobDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListModelExplainabilityJobDefinitionsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: NameContains, location_name: "NameContains"))
    ListModelExplainabilityJobDefinitionsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListModelExplainabilityJobDefinitionsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListModelExplainabilityJobDefinitionsRequest.struct_class = Types::ListModelExplainabilityJobDefinitionsRequest

    ListModelExplainabilityJobDefinitionsResponse.add_member(:job_definition_summaries, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionSummaryList, required: true, location_name: "JobDefinitionSummaries"))
    ListModelExplainabilityJobDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListModelExplainabilityJobDefinitionsResponse.struct_class = Types::ListModelExplainabilityJobDefinitionsResponse

    ListModelMetadataRequest.add_member(:search_expression, Shapes::ShapeRef.new(shape: ModelMetadataSearchExpression, location_name: "SearchExpression"))
    ListModelMetadataRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListModelMetadataRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListModelMetadataRequest.struct_class = Types::ListModelMetadataRequest

    ListModelMetadataResponse.add_member(:model_metadata_summaries, Shapes::ShapeRef.new(shape: ModelMetadataSummaries, required: true, location_name: "ModelMetadataSummaries"))
    ListModelMetadataResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListModelMetadataResponse.struct_class = Types::ListModelMetadataResponse

    ListModelPackageGroupsInput.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeAfter"))
    ListModelPackageGroupsInput.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeBefore"))
    ListModelPackageGroupsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListModelPackageGroupsInput.add_member(:name_contains, Shapes::ShapeRef.new(shape: NameContains, location_name: "NameContains"))
    ListModelPackageGroupsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListModelPackageGroupsInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: ModelPackageGroupSortBy, location_name: "SortBy"))
    ListModelPackageGroupsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListModelPackageGroupsInput.struct_class = Types::ListModelPackageGroupsInput

    ListModelPackageGroupsOutput.add_member(:model_package_group_summary_list, Shapes::ShapeRef.new(shape: ModelPackageGroupSummaryList, required: true, location_name: "ModelPackageGroupSummaryList"))
    ListModelPackageGroupsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListModelPackageGroupsOutput.struct_class = Types::ListModelPackageGroupsOutput

    ListModelPackagesInput.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeAfter"))
    ListModelPackagesInput.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeBefore"))
    ListModelPackagesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListModelPackagesInput.add_member(:name_contains, Shapes::ShapeRef.new(shape: NameContains, location_name: "NameContains"))
    ListModelPackagesInput.add_member(:model_approval_status, Shapes::ShapeRef.new(shape: ModelApprovalStatus, location_name: "ModelApprovalStatus"))
    ListModelPackagesInput.add_member(:model_package_group_name, Shapes::ShapeRef.new(shape: ArnOrName, location_name: "ModelPackageGroupName"))
    ListModelPackagesInput.add_member(:model_package_type, Shapes::ShapeRef.new(shape: ModelPackageType, location_name: "ModelPackageType"))
    ListModelPackagesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListModelPackagesInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: ModelPackageSortBy, location_name: "SortBy"))
    ListModelPackagesInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListModelPackagesInput.struct_class = Types::ListModelPackagesInput

    ListModelPackagesOutput.add_member(:model_package_summary_list, Shapes::ShapeRef.new(shape: ModelPackageSummaryList, required: true, location_name: "ModelPackageSummaryList"))
    ListModelPackagesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListModelPackagesOutput.struct_class = Types::ListModelPackagesOutput

    ListModelQualityJobDefinitionsRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, location_name: "EndpointName"))
    ListModelQualityJobDefinitionsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionSortKey, location_name: "SortBy"))
    ListModelQualityJobDefinitionsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListModelQualityJobDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListModelQualityJobDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListModelQualityJobDefinitionsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: NameContains, location_name: "NameContains"))
    ListModelQualityJobDefinitionsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListModelQualityJobDefinitionsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListModelQualityJobDefinitionsRequest.struct_class = Types::ListModelQualityJobDefinitionsRequest

    ListModelQualityJobDefinitionsResponse.add_member(:job_definition_summaries, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionSummaryList, required: true, location_name: "JobDefinitionSummaries"))
    ListModelQualityJobDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListModelQualityJobDefinitionsResponse.struct_class = Types::ListModelQualityJobDefinitionsResponse

    ListModelsInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: ModelSortKey, location_name: "SortBy"))
    ListModelsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: OrderKey, location_name: "SortOrder"))
    ListModelsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListModelsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListModelsInput.add_member(:name_contains, Shapes::ShapeRef.new(shape: ModelNameContains, location_name: "NameContains"))
    ListModelsInput.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListModelsInput.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListModelsInput.struct_class = Types::ListModelsInput

    ListModelsOutput.add_member(:models, Shapes::ShapeRef.new(shape: ModelSummaryList, required: true, location_name: "Models"))
    ListModelsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListModelsOutput.struct_class = Types::ListModelsOutput

    ListMonitoringExecutionsRequest.add_member(:monitoring_schedule_name, Shapes::ShapeRef.new(shape: MonitoringScheduleName, location_name: "MonitoringScheduleName"))
    ListMonitoringExecutionsRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, location_name: "EndpointName"))
    ListMonitoringExecutionsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: MonitoringExecutionSortKey, location_name: "SortBy"))
    ListMonitoringExecutionsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListMonitoringExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMonitoringExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListMonitoringExecutionsRequest.add_member(:scheduled_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ScheduledTimeBefore"))
    ListMonitoringExecutionsRequest.add_member(:scheduled_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ScheduledTimeAfter"))
    ListMonitoringExecutionsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListMonitoringExecutionsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListMonitoringExecutionsRequest.add_member(:last_modified_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeBefore"))
    ListMonitoringExecutionsRequest.add_member(:last_modified_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeAfter"))
    ListMonitoringExecutionsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: "StatusEquals"))
    ListMonitoringExecutionsRequest.add_member(:monitoring_job_definition_name, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionName, location_name: "MonitoringJobDefinitionName"))
    ListMonitoringExecutionsRequest.add_member(:monitoring_type_equals, Shapes::ShapeRef.new(shape: MonitoringType, location_name: "MonitoringTypeEquals"))
    ListMonitoringExecutionsRequest.struct_class = Types::ListMonitoringExecutionsRequest

    ListMonitoringExecutionsResponse.add_member(:monitoring_execution_summaries, Shapes::ShapeRef.new(shape: MonitoringExecutionSummaryList, required: true, location_name: "MonitoringExecutionSummaries"))
    ListMonitoringExecutionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMonitoringExecutionsResponse.struct_class = Types::ListMonitoringExecutionsResponse

    ListMonitoringSchedulesRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, location_name: "EndpointName"))
    ListMonitoringSchedulesRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: MonitoringScheduleSortKey, location_name: "SortBy"))
    ListMonitoringSchedulesRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListMonitoringSchedulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMonitoringSchedulesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListMonitoringSchedulesRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: NameContains, location_name: "NameContains"))
    ListMonitoringSchedulesRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListMonitoringSchedulesRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListMonitoringSchedulesRequest.add_member(:last_modified_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeBefore"))
    ListMonitoringSchedulesRequest.add_member(:last_modified_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeAfter"))
    ListMonitoringSchedulesRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: ScheduleStatus, location_name: "StatusEquals"))
    ListMonitoringSchedulesRequest.add_member(:monitoring_job_definition_name, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionName, location_name: "MonitoringJobDefinitionName"))
    ListMonitoringSchedulesRequest.add_member(:monitoring_type_equals, Shapes::ShapeRef.new(shape: MonitoringType, location_name: "MonitoringTypeEquals"))
    ListMonitoringSchedulesRequest.struct_class = Types::ListMonitoringSchedulesRequest

    ListMonitoringSchedulesResponse.add_member(:monitoring_schedule_summaries, Shapes::ShapeRef.new(shape: MonitoringScheduleSummaryList, required: true, location_name: "MonitoringScheduleSummaries"))
    ListMonitoringSchedulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMonitoringSchedulesResponse.struct_class = Types::ListMonitoringSchedulesResponse

    ListNotebookInstanceLifecycleConfigsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListNotebookInstanceLifecycleConfigsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListNotebookInstanceLifecycleConfigsInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigSortKey, location_name: "SortBy"))
    ListNotebookInstanceLifecycleConfigsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigSortOrder, location_name: "SortOrder"))
    ListNotebookInstanceLifecycleConfigsInput.add_member(:name_contains, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigNameContains, location_name: "NameContains"))
    ListNotebookInstanceLifecycleConfigsInput.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeBefore"))
    ListNotebookInstanceLifecycleConfigsInput.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeAfter"))
    ListNotebookInstanceLifecycleConfigsInput.add_member(:last_modified_time_before, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTimeBefore"))
    ListNotebookInstanceLifecycleConfigsInput.add_member(:last_modified_time_after, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTimeAfter"))
    ListNotebookInstanceLifecycleConfigsInput.struct_class = Types::ListNotebookInstanceLifecycleConfigsInput

    ListNotebookInstanceLifecycleConfigsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListNotebookInstanceLifecycleConfigsOutput.add_member(:notebook_instance_lifecycle_configs, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigSummaryList, location_name: "NotebookInstanceLifecycleConfigs"))
    ListNotebookInstanceLifecycleConfigsOutput.struct_class = Types::ListNotebookInstanceLifecycleConfigsOutput

    ListNotebookInstancesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListNotebookInstancesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListNotebookInstancesInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: NotebookInstanceSortKey, location_name: "SortBy"))
    ListNotebookInstancesInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: NotebookInstanceSortOrder, location_name: "SortOrder"))
    ListNotebookInstancesInput.add_member(:name_contains, Shapes::ShapeRef.new(shape: NotebookInstanceNameContains, location_name: "NameContains"))
    ListNotebookInstancesInput.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeBefore"))
    ListNotebookInstancesInput.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeAfter"))
    ListNotebookInstancesInput.add_member(:last_modified_time_before, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTimeBefore"))
    ListNotebookInstancesInput.add_member(:last_modified_time_after, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTimeAfter"))
    ListNotebookInstancesInput.add_member(:status_equals, Shapes::ShapeRef.new(shape: NotebookInstanceStatus, location_name: "StatusEquals"))
    ListNotebookInstancesInput.add_member(:notebook_instance_lifecycle_config_name_contains, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigName, location_name: "NotebookInstanceLifecycleConfigNameContains"))
    ListNotebookInstancesInput.add_member(:default_code_repository_contains, Shapes::ShapeRef.new(shape: CodeRepositoryContains, location_name: "DefaultCodeRepositoryContains"))
    ListNotebookInstancesInput.add_member(:additional_code_repository_equals, Shapes::ShapeRef.new(shape: CodeRepositoryNameOrUrl, location_name: "AdditionalCodeRepositoryEquals"))
    ListNotebookInstancesInput.struct_class = Types::ListNotebookInstancesInput

    ListNotebookInstancesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListNotebookInstancesOutput.add_member(:notebook_instances, Shapes::ShapeRef.new(shape: NotebookInstanceSummaryList, location_name: "NotebookInstances"))
    ListNotebookInstancesOutput.struct_class = Types::ListNotebookInstancesOutput

    ListPipelineExecutionStepsRequest.add_member(:pipeline_execution_arn, Shapes::ShapeRef.new(shape: PipelineExecutionArn, location_name: "PipelineExecutionArn"))
    ListPipelineExecutionStepsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPipelineExecutionStepsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListPipelineExecutionStepsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListPipelineExecutionStepsRequest.struct_class = Types::ListPipelineExecutionStepsRequest

    ListPipelineExecutionStepsResponse.add_member(:pipeline_execution_steps, Shapes::ShapeRef.new(shape: PipelineExecutionStepList, location_name: "PipelineExecutionSteps"))
    ListPipelineExecutionStepsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPipelineExecutionStepsResponse.struct_class = Types::ListPipelineExecutionStepsResponse

    ListPipelineExecutionsRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "PipelineName"))
    ListPipelineExecutionsRequest.add_member(:created_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAfter"))
    ListPipelineExecutionsRequest.add_member(:created_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedBefore"))
    ListPipelineExecutionsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortPipelineExecutionsBy, location_name: "SortBy"))
    ListPipelineExecutionsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListPipelineExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPipelineExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListPipelineExecutionsRequest.struct_class = Types::ListPipelineExecutionsRequest

    ListPipelineExecutionsResponse.add_member(:pipeline_execution_summaries, Shapes::ShapeRef.new(shape: PipelineExecutionSummaryList, location_name: "PipelineExecutionSummaries"))
    ListPipelineExecutionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPipelineExecutionsResponse.struct_class = Types::ListPipelineExecutionsResponse

    ListPipelineParametersForExecutionRequest.add_member(:pipeline_execution_arn, Shapes::ShapeRef.new(shape: PipelineExecutionArn, required: true, location_name: "PipelineExecutionArn"))
    ListPipelineParametersForExecutionRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPipelineParametersForExecutionRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListPipelineParametersForExecutionRequest.struct_class = Types::ListPipelineParametersForExecutionRequest

    ListPipelineParametersForExecutionResponse.add_member(:pipeline_parameters, Shapes::ShapeRef.new(shape: ParameterList, location_name: "PipelineParameters"))
    ListPipelineParametersForExecutionResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPipelineParametersForExecutionResponse.struct_class = Types::ListPipelineParametersForExecutionResponse

    ListPipelinesRequest.add_member(:pipeline_name_prefix, Shapes::ShapeRef.new(shape: PipelineName, location_name: "PipelineNamePrefix"))
    ListPipelinesRequest.add_member(:created_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAfter"))
    ListPipelinesRequest.add_member(:created_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedBefore"))
    ListPipelinesRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortPipelinesBy, location_name: "SortBy"))
    ListPipelinesRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListPipelinesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPipelinesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListPipelinesRequest.struct_class = Types::ListPipelinesRequest

    ListPipelinesResponse.add_member(:pipeline_summaries, Shapes::ShapeRef.new(shape: PipelineSummaryList, location_name: "PipelineSummaries"))
    ListPipelinesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPipelinesResponse.struct_class = Types::ListPipelinesResponse

    ListProcessingJobsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListProcessingJobsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListProcessingJobsRequest.add_member(:last_modified_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeAfter"))
    ListProcessingJobsRequest.add_member(:last_modified_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeBefore"))
    ListProcessingJobsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: String, location_name: "NameContains"))
    ListProcessingJobsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: ProcessingJobStatus, location_name: "StatusEquals"))
    ListProcessingJobsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortBy, location_name: "SortBy"))
    ListProcessingJobsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListProcessingJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListProcessingJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListProcessingJobsRequest.struct_class = Types::ListProcessingJobsRequest

    ListProcessingJobsResponse.add_member(:processing_job_summaries, Shapes::ShapeRef.new(shape: ProcessingJobSummaries, required: true, location_name: "ProcessingJobSummaries"))
    ListProcessingJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListProcessingJobsResponse.struct_class = Types::ListProcessingJobsResponse

    ListProjectsInput.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListProjectsInput.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListProjectsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListProjectsInput.add_member(:name_contains, Shapes::ShapeRef.new(shape: ProjectEntityName, location_name: "NameContains"))
    ListProjectsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListProjectsInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: ProjectSortBy, location_name: "SortBy"))
    ListProjectsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: ProjectSortOrder, location_name: "SortOrder"))
    ListProjectsInput.struct_class = Types::ListProjectsInput

    ListProjectsOutput.add_member(:project_summary_list, Shapes::ShapeRef.new(shape: ProjectSummaryList, required: true, location_name: "ProjectSummaryList"))
    ListProjectsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListProjectsOutput.struct_class = Types::ListProjectsOutput

    ListStudioLifecycleConfigsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListStudioLifecycleConfigsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStudioLifecycleConfigsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: StudioLifecycleConfigName, location_name: "NameContains"))
    ListStudioLifecycleConfigsRequest.add_member(:app_type_equals, Shapes::ShapeRef.new(shape: StudioLifecycleConfigAppType, location_name: "AppTypeEquals"))
    ListStudioLifecycleConfigsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListStudioLifecycleConfigsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListStudioLifecycleConfigsRequest.add_member(:modified_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ModifiedTimeBefore"))
    ListStudioLifecycleConfigsRequest.add_member(:modified_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ModifiedTimeAfter"))
    ListStudioLifecycleConfigsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: StudioLifecycleConfigSortKey, location_name: "SortBy"))
    ListStudioLifecycleConfigsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListStudioLifecycleConfigsRequest.struct_class = Types::ListStudioLifecycleConfigsRequest

    ListStudioLifecycleConfigsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStudioLifecycleConfigsResponse.add_member(:studio_lifecycle_configs, Shapes::ShapeRef.new(shape: StudioLifecycleConfigsList, location_name: "StudioLifecycleConfigs"))
    ListStudioLifecycleConfigsResponse.struct_class = Types::ListStudioLifecycleConfigsResponse

    ListSubscribedWorkteamsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: WorkteamName, location_name: "NameContains"))
    ListSubscribedWorkteamsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSubscribedWorkteamsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListSubscribedWorkteamsRequest.struct_class = Types::ListSubscribedWorkteamsRequest

    ListSubscribedWorkteamsResponse.add_member(:subscribed_workteams, Shapes::ShapeRef.new(shape: SubscribedWorkteams, required: true, location_name: "SubscribedWorkteams"))
    ListSubscribedWorkteamsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSubscribedWorkteamsResponse.struct_class = Types::ListSubscribedWorkteamsResponse

    ListTagsInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    ListTagsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListTagsMaxResults, location_name: "MaxResults"))
    ListTagsInput.struct_class = Types::ListTagsInput

    ListTagsOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsOutput.struct_class = Types::ListTagsOutput

    ListTrainingJobsForHyperParameterTuningJobRequest.add_member(:hyper_parameter_tuning_job_name, Shapes::ShapeRef.new(shape: HyperParameterTuningJobName, required: true, location_name: "HyperParameterTuningJobName"))
    ListTrainingJobsForHyperParameterTuningJobRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTrainingJobsForHyperParameterTuningJobRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTrainingJobsForHyperParameterTuningJobRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: TrainingJobStatus, location_name: "StatusEquals"))
    ListTrainingJobsForHyperParameterTuningJobRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: TrainingJobSortByOptions, location_name: "SortBy"))
    ListTrainingJobsForHyperParameterTuningJobRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListTrainingJobsForHyperParameterTuningJobRequest.struct_class = Types::ListTrainingJobsForHyperParameterTuningJobRequest

    ListTrainingJobsForHyperParameterTuningJobResponse.add_member(:training_job_summaries, Shapes::ShapeRef.new(shape: HyperParameterTrainingJobSummaries, required: true, location_name: "TrainingJobSummaries"))
    ListTrainingJobsForHyperParameterTuningJobResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTrainingJobsForHyperParameterTuningJobResponse.struct_class = Types::ListTrainingJobsForHyperParameterTuningJobResponse

    ListTrainingJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTrainingJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListTrainingJobsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListTrainingJobsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListTrainingJobsRequest.add_member(:last_modified_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeAfter"))
    ListTrainingJobsRequest.add_member(:last_modified_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeBefore"))
    ListTrainingJobsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: NameContains, location_name: "NameContains"))
    ListTrainingJobsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: TrainingJobStatus, location_name: "StatusEquals"))
    ListTrainingJobsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortBy, location_name: "SortBy"))
    ListTrainingJobsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListTrainingJobsRequest.struct_class = Types::ListTrainingJobsRequest

    ListTrainingJobsResponse.add_member(:training_job_summaries, Shapes::ShapeRef.new(shape: TrainingJobSummaries, required: true, location_name: "TrainingJobSummaries"))
    ListTrainingJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTrainingJobsResponse.struct_class = Types::ListTrainingJobsResponse

    ListTransformJobsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListTransformJobsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListTransformJobsRequest.add_member(:last_modified_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeAfter"))
    ListTransformJobsRequest.add_member(:last_modified_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeBefore"))
    ListTransformJobsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: NameContains, location_name: "NameContains"))
    ListTransformJobsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: TransformJobStatus, location_name: "StatusEquals"))
    ListTransformJobsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortBy, location_name: "SortBy"))
    ListTransformJobsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListTransformJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTransformJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListTransformJobsRequest.struct_class = Types::ListTransformJobsRequest

    ListTransformJobsResponse.add_member(:transform_job_summaries, Shapes::ShapeRef.new(shape: TransformJobSummaries, required: true, location_name: "TransformJobSummaries"))
    ListTransformJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTransformJobsResponse.struct_class = Types::ListTransformJobsResponse

    ListTrialComponentKey256.member = Shapes::ShapeRef.new(shape: TrialComponentKey256)

    ListTrialComponentsRequest.add_member(:experiment_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "ExperimentName"))
    ListTrialComponentsRequest.add_member(:trial_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "TrialName"))
    ListTrialComponentsRequest.add_member(:source_arn, Shapes::ShapeRef.new(shape: String256, location_name: "SourceArn"))
    ListTrialComponentsRequest.add_member(:created_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAfter"))
    ListTrialComponentsRequest.add_member(:created_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedBefore"))
    ListTrialComponentsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortTrialComponentsBy, location_name: "SortBy"))
    ListTrialComponentsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListTrialComponentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTrialComponentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTrialComponentsRequest.struct_class = Types::ListTrialComponentsRequest

    ListTrialComponentsResponse.add_member(:trial_component_summaries, Shapes::ShapeRef.new(shape: TrialComponentSummaries, location_name: "TrialComponentSummaries"))
    ListTrialComponentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTrialComponentsResponse.struct_class = Types::ListTrialComponentsResponse

    ListTrialsRequest.add_member(:experiment_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "ExperimentName"))
    ListTrialsRequest.add_member(:trial_component_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "TrialComponentName"))
    ListTrialsRequest.add_member(:created_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAfter"))
    ListTrialsRequest.add_member(:created_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedBefore"))
    ListTrialsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortTrialsBy, location_name: "SortBy"))
    ListTrialsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListTrialsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTrialsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTrialsRequest.struct_class = Types::ListTrialsRequest

    ListTrialsResponse.add_member(:trial_summaries, Shapes::ShapeRef.new(shape: TrialSummaries, location_name: "TrialSummaries"))
    ListTrialsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTrialsResponse.struct_class = Types::ListTrialsResponse

    ListUserProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListUserProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListUserProfilesRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListUserProfilesRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: UserProfileSortKey, location_name: "SortBy"))
    ListUserProfilesRequest.add_member(:domain_id_equals, Shapes::ShapeRef.new(shape: DomainId, location_name: "DomainIdEquals"))
    ListUserProfilesRequest.add_member(:user_profile_name_contains, Shapes::ShapeRef.new(shape: UserProfileName, location_name: "UserProfileNameContains"))
    ListUserProfilesRequest.struct_class = Types::ListUserProfilesRequest

    ListUserProfilesResponse.add_member(:user_profiles, Shapes::ShapeRef.new(shape: UserProfileList, location_name: "UserProfiles"))
    ListUserProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListUserProfilesResponse.struct_class = Types::ListUserProfilesResponse

    ListWorkforcesRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: ListWorkforcesSortByOptions, location_name: "SortBy"))
    ListWorkforcesRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListWorkforcesRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: WorkforceName, location_name: "NameContains"))
    ListWorkforcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListWorkforcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListWorkforcesRequest.struct_class = Types::ListWorkforcesRequest

    ListWorkforcesResponse.add_member(:workforces, Shapes::ShapeRef.new(shape: Workforces, required: true, location_name: "Workforces"))
    ListWorkforcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListWorkforcesResponse.struct_class = Types::ListWorkforcesResponse

    ListWorkteamsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: ListWorkteamsSortByOptions, location_name: "SortBy"))
    ListWorkteamsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListWorkteamsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: WorkteamName, location_name: "NameContains"))
    ListWorkteamsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListWorkteamsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListWorkteamsRequest.struct_class = Types::ListWorkteamsRequest

    ListWorkteamsResponse.add_member(:workteams, Shapes::ShapeRef.new(shape: Workteams, required: true, location_name: "Workteams"))
    ListWorkteamsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListWorkteamsResponse.struct_class = Types::ListWorkteamsResponse

    MemberDefinition.add_member(:cognito_member_definition, Shapes::ShapeRef.new(shape: CognitoMemberDefinition, location_name: "CognitoMemberDefinition"))
    MemberDefinition.add_member(:oidc_member_definition, Shapes::ShapeRef.new(shape: OidcMemberDefinition, location_name: "OidcMemberDefinition"))
    MemberDefinition.struct_class = Types::MemberDefinition

    MemberDefinitions.member = Shapes::ShapeRef.new(shape: MemberDefinition)

    MetadataProperties.add_member(:commit_id, Shapes::ShapeRef.new(shape: MetadataPropertyValue, location_name: "CommitId"))
    MetadataProperties.add_member(:repository, Shapes::ShapeRef.new(shape: MetadataPropertyValue, location_name: "Repository"))
    MetadataProperties.add_member(:generated_by, Shapes::ShapeRef.new(shape: MetadataPropertyValue, location_name: "GeneratedBy"))
    MetadataProperties.add_member(:project_id, Shapes::ShapeRef.new(shape: MetadataPropertyValue, location_name: "ProjectId"))
    MetadataProperties.struct_class = Types::MetadataProperties

    MetricData.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    MetricData.add_member(:value, Shapes::ShapeRef.new(shape: Float, location_name: "Value"))
    MetricData.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    MetricData.struct_class = Types::MetricData

    MetricDataList.member = Shapes::ShapeRef.new(shape: MetricDatum)

    MetricDatum.add_member(:metric_name, Shapes::ShapeRef.new(shape: AutoMLMetricEnum, location_name: "MetricName"))
    MetricDatum.add_member(:value, Shapes::ShapeRef.new(shape: Float, location_name: "Value"))
    MetricDatum.add_member(:set, Shapes::ShapeRef.new(shape: MetricSetSource, location_name: "Set"))
    MetricDatum.struct_class = Types::MetricDatum

    MetricDefinition.add_member(:name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "Name"))
    MetricDefinition.add_member(:regex, Shapes::ShapeRef.new(shape: MetricRegex, required: true, location_name: "Regex"))
    MetricDefinition.struct_class = Types::MetricDefinition

    MetricDefinitionList.member = Shapes::ShapeRef.new(shape: MetricDefinition)

    MetricsSource.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, required: true, location_name: "ContentType"))
    MetricsSource.add_member(:content_digest, Shapes::ShapeRef.new(shape: ContentDigest, location_name: "ContentDigest"))
    MetricsSource.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    MetricsSource.struct_class = Types::MetricsSource

    ModelArtifacts.add_member(:s3_model_artifacts, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3ModelArtifacts"))
    ModelArtifacts.struct_class = Types::ModelArtifacts

    ModelBiasAppSpecification.add_member(:image_uri, Shapes::ShapeRef.new(shape: ImageUri, required: true, location_name: "ImageUri"))
    ModelBiasAppSpecification.add_member(:config_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "ConfigUri"))
    ModelBiasAppSpecification.add_member(:environment, Shapes::ShapeRef.new(shape: MonitoringEnvironmentMap, location_name: "Environment"))
    ModelBiasAppSpecification.struct_class = Types::ModelBiasAppSpecification

    ModelBiasBaselineConfig.add_member(:baselining_job_name, Shapes::ShapeRef.new(shape: ProcessingJobName, location_name: "BaseliningJobName"))
    ModelBiasBaselineConfig.add_member(:constraints_resource, Shapes::ShapeRef.new(shape: MonitoringConstraintsResource, location_name: "ConstraintsResource"))
    ModelBiasBaselineConfig.struct_class = Types::ModelBiasBaselineConfig

    ModelBiasJobInput.add_member(:endpoint_input, Shapes::ShapeRef.new(shape: EndpointInput, required: true, location_name: "EndpointInput"))
    ModelBiasJobInput.add_member(:ground_truth_s3_input, Shapes::ShapeRef.new(shape: MonitoringGroundTruthS3Input, required: true, location_name: "GroundTruthS3Input"))
    ModelBiasJobInput.struct_class = Types::ModelBiasJobInput

    ModelClientConfig.add_member(:invocations_timeout_in_seconds, Shapes::ShapeRef.new(shape: InvocationsTimeoutInSeconds, location_name: "InvocationsTimeoutInSeconds"))
    ModelClientConfig.add_member(:invocations_max_retries, Shapes::ShapeRef.new(shape: InvocationsMaxRetries, location_name: "InvocationsMaxRetries"))
    ModelClientConfig.struct_class = Types::ModelClientConfig

    ModelConfiguration.add_member(:inference_specification_name, Shapes::ShapeRef.new(shape: InferenceSpecificationName, location_name: "InferenceSpecificationName"))
    ModelConfiguration.add_member(:environment_parameters, Shapes::ShapeRef.new(shape: EnvironmentParameters, location_name: "EnvironmentParameters"))
    ModelConfiguration.struct_class = Types::ModelConfiguration

    ModelDataQuality.add_member(:statistics, Shapes::ShapeRef.new(shape: MetricsSource, location_name: "Statistics"))
    ModelDataQuality.add_member(:constraints, Shapes::ShapeRef.new(shape: MetricsSource, location_name: "Constraints"))
    ModelDataQuality.struct_class = Types::ModelDataQuality

    ModelDeployConfig.add_member(:auto_generate_endpoint_name, Shapes::ShapeRef.new(shape: AutoGenerateEndpointName, location_name: "AutoGenerateEndpointName"))
    ModelDeployConfig.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, location_name: "EndpointName"))
    ModelDeployConfig.struct_class = Types::ModelDeployConfig

    ModelDeployResult.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, location_name: "EndpointName"))
    ModelDeployResult.struct_class = Types::ModelDeployResult

    ModelDigests.add_member(:artifact_digest, Shapes::ShapeRef.new(shape: ArtifactDigest, location_name: "ArtifactDigest"))
    ModelDigests.struct_class = Types::ModelDigests

    ModelExplainabilityAppSpecification.add_member(:image_uri, Shapes::ShapeRef.new(shape: ImageUri, required: true, location_name: "ImageUri"))
    ModelExplainabilityAppSpecification.add_member(:config_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "ConfigUri"))
    ModelExplainabilityAppSpecification.add_member(:environment, Shapes::ShapeRef.new(shape: MonitoringEnvironmentMap, location_name: "Environment"))
    ModelExplainabilityAppSpecification.struct_class = Types::ModelExplainabilityAppSpecification

    ModelExplainabilityBaselineConfig.add_member(:baselining_job_name, Shapes::ShapeRef.new(shape: ProcessingJobName, location_name: "BaseliningJobName"))
    ModelExplainabilityBaselineConfig.add_member(:constraints_resource, Shapes::ShapeRef.new(shape: MonitoringConstraintsResource, location_name: "ConstraintsResource"))
    ModelExplainabilityBaselineConfig.struct_class = Types::ModelExplainabilityBaselineConfig

    ModelExplainabilityJobInput.add_member(:endpoint_input, Shapes::ShapeRef.new(shape: EndpointInput, required: true, location_name: "EndpointInput"))
    ModelExplainabilityJobInput.struct_class = Types::ModelExplainabilityJobInput

    ModelInput.add_member(:data_input_config, Shapes::ShapeRef.new(shape: DataInputConfig, required: true, location_name: "DataInputConfig"))
    ModelInput.struct_class = Types::ModelInput

    ModelLatencyThreshold.add_member(:percentile, Shapes::ShapeRef.new(shape: String64, location_name: "Percentile"))
    ModelLatencyThreshold.add_member(:value_in_milliseconds, Shapes::ShapeRef.new(shape: Integer, location_name: "ValueInMilliseconds"))
    ModelLatencyThreshold.struct_class = Types::ModelLatencyThreshold

    ModelLatencyThresholds.member = Shapes::ShapeRef.new(shape: ModelLatencyThreshold)

    ModelMetadataFilter.add_member(:name, Shapes::ShapeRef.new(shape: ModelMetadataFilterType, required: true, location_name: "Name"))
    ModelMetadataFilter.add_member(:value, Shapes::ShapeRef.new(shape: String256, required: true, location_name: "Value"))
    ModelMetadataFilter.struct_class = Types::ModelMetadataFilter

    ModelMetadataFilters.member = Shapes::ShapeRef.new(shape: ModelMetadataFilter)

    ModelMetadataSearchExpression.add_member(:filters, Shapes::ShapeRef.new(shape: ModelMetadataFilters, location_name: "Filters"))
    ModelMetadataSearchExpression.struct_class = Types::ModelMetadataSearchExpression

    ModelMetadataSummaries.member = Shapes::ShapeRef.new(shape: ModelMetadataSummary)

    ModelMetadataSummary.add_member(:domain, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Domain"))
    ModelMetadataSummary.add_member(:framework, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Framework"))
    ModelMetadataSummary.add_member(:task, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Task"))
    ModelMetadataSummary.add_member(:model, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Model"))
    ModelMetadataSummary.add_member(:framework_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "FrameworkVersion"))
    ModelMetadataSummary.struct_class = Types::ModelMetadataSummary

    ModelMetrics.add_member(:model_quality, Shapes::ShapeRef.new(shape: ModelQuality, location_name: "ModelQuality"))
    ModelMetrics.add_member(:model_data_quality, Shapes::ShapeRef.new(shape: ModelDataQuality, location_name: "ModelDataQuality"))
    ModelMetrics.add_member(:bias, Shapes::ShapeRef.new(shape: Bias, location_name: "Bias"))
    ModelMetrics.add_member(:explainability, Shapes::ShapeRef.new(shape: Explainability, location_name: "Explainability"))
    ModelMetrics.struct_class = Types::ModelMetrics

    ModelPackage.add_member(:model_package_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "ModelPackageName"))
    ModelPackage.add_member(:model_package_group_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "ModelPackageGroupName"))
    ModelPackage.add_member(:model_package_version, Shapes::ShapeRef.new(shape: ModelPackageVersion, location_name: "ModelPackageVersion"))
    ModelPackage.add_member(:model_package_arn, Shapes::ShapeRef.new(shape: ModelPackageArn, location_name: "ModelPackageArn"))
    ModelPackage.add_member(:model_package_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "ModelPackageDescription"))
    ModelPackage.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    ModelPackage.add_member(:inference_specification, Shapes::ShapeRef.new(shape: InferenceSpecification, location_name: "InferenceSpecification"))
    ModelPackage.add_member(:source_algorithm_specification, Shapes::ShapeRef.new(shape: SourceAlgorithmSpecification, location_name: "SourceAlgorithmSpecification"))
    ModelPackage.add_member(:validation_specification, Shapes::ShapeRef.new(shape: ModelPackageValidationSpecification, location_name: "ValidationSpecification"))
    ModelPackage.add_member(:model_package_status, Shapes::ShapeRef.new(shape: ModelPackageStatus, location_name: "ModelPackageStatus"))
    ModelPackage.add_member(:model_package_status_details, Shapes::ShapeRef.new(shape: ModelPackageStatusDetails, location_name: "ModelPackageStatusDetails"))
    ModelPackage.add_member(:certify_for_marketplace, Shapes::ShapeRef.new(shape: CertifyForMarketplace, location_name: "CertifyForMarketplace"))
    ModelPackage.add_member(:model_approval_status, Shapes::ShapeRef.new(shape: ModelApprovalStatus, location_name: "ModelApprovalStatus"))
    ModelPackage.add_member(:created_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "CreatedBy"))
    ModelPackage.add_member(:metadata_properties, Shapes::ShapeRef.new(shape: MetadataProperties, location_name: "MetadataProperties"))
    ModelPackage.add_member(:model_metrics, Shapes::ShapeRef.new(shape: ModelMetrics, location_name: "ModelMetrics"))
    ModelPackage.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    ModelPackage.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "LastModifiedBy"))
    ModelPackage.add_member(:approval_description, Shapes::ShapeRef.new(shape: ApprovalDescription, location_name: "ApprovalDescription"))
    ModelPackage.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    ModelPackage.add_member(:task, Shapes::ShapeRef.new(shape: String, location_name: "Task"))
    ModelPackage.add_member(:sample_payload_url, Shapes::ShapeRef.new(shape: String, location_name: "SamplePayloadUrl"))
    ModelPackage.add_member(:additional_inference_specifications, Shapes::ShapeRef.new(shape: AdditionalInferenceSpecifications, location_name: "AdditionalInferenceSpecifications"))
    ModelPackage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ModelPackage.add_member(:customer_metadata_properties, Shapes::ShapeRef.new(shape: CustomerMetadataMap, location_name: "CustomerMetadataProperties"))
    ModelPackage.add_member(:drift_check_baselines, Shapes::ShapeRef.new(shape: DriftCheckBaselines, location_name: "DriftCheckBaselines"))
    ModelPackage.struct_class = Types::ModelPackage

    ModelPackageArnList.member = Shapes::ShapeRef.new(shape: ModelPackageArn)

    ModelPackageContainerDefinition.add_member(:container_hostname, Shapes::ShapeRef.new(shape: ContainerHostname, location_name: "ContainerHostname"))
    ModelPackageContainerDefinition.add_member(:image, Shapes::ShapeRef.new(shape: ContainerImage, required: true, location_name: "Image"))
    ModelPackageContainerDefinition.add_member(:image_digest, Shapes::ShapeRef.new(shape: ImageDigest, location_name: "ImageDigest"))
    ModelPackageContainerDefinition.add_member(:model_data_url, Shapes::ShapeRef.new(shape: Url, location_name: "ModelDataUrl"))
    ModelPackageContainerDefinition.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, location_name: "ProductId"))
    ModelPackageContainerDefinition.add_member(:environment, Shapes::ShapeRef.new(shape: EnvironmentMap, location_name: "Environment"))
    ModelPackageContainerDefinition.add_member(:model_input, Shapes::ShapeRef.new(shape: ModelInput, location_name: "ModelInput"))
    ModelPackageContainerDefinition.add_member(:framework, Shapes::ShapeRef.new(shape: String, location_name: "Framework"))
    ModelPackageContainerDefinition.add_member(:framework_version, Shapes::ShapeRef.new(shape: FrameworkVersion, location_name: "FrameworkVersion"))
    ModelPackageContainerDefinition.add_member(:nearest_model_name, Shapes::ShapeRef.new(shape: String, location_name: "NearestModelName"))
    ModelPackageContainerDefinition.struct_class = Types::ModelPackageContainerDefinition

    ModelPackageContainerDefinitionList.member = Shapes::ShapeRef.new(shape: ModelPackageContainerDefinition)

    ModelPackageGroup.add_member(:model_package_group_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "ModelPackageGroupName"))
    ModelPackageGroup.add_member(:model_package_group_arn, Shapes::ShapeRef.new(shape: ModelPackageGroupArn, location_name: "ModelPackageGroupArn"))
    ModelPackageGroup.add_member(:model_package_group_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "ModelPackageGroupDescription"))
    ModelPackageGroup.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    ModelPackageGroup.add_member(:created_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "CreatedBy"))
    ModelPackageGroup.add_member(:model_package_group_status, Shapes::ShapeRef.new(shape: ModelPackageGroupStatus, location_name: "ModelPackageGroupStatus"))
    ModelPackageGroup.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ModelPackageGroup.struct_class = Types::ModelPackageGroup

    ModelPackageGroupSummary.add_member(:model_package_group_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "ModelPackageGroupName"))
    ModelPackageGroupSummary.add_member(:model_package_group_arn, Shapes::ShapeRef.new(shape: ModelPackageGroupArn, required: true, location_name: "ModelPackageGroupArn"))
    ModelPackageGroupSummary.add_member(:model_package_group_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "ModelPackageGroupDescription"))
    ModelPackageGroupSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    ModelPackageGroupSummary.add_member(:model_package_group_status, Shapes::ShapeRef.new(shape: ModelPackageGroupStatus, required: true, location_name: "ModelPackageGroupStatus"))
    ModelPackageGroupSummary.struct_class = Types::ModelPackageGroupSummary

    ModelPackageGroupSummaryList.member = Shapes::ShapeRef.new(shape: ModelPackageGroupSummary)

    ModelPackageStatusDetails.add_member(:validation_statuses, Shapes::ShapeRef.new(shape: ModelPackageStatusItemList, required: true, location_name: "ValidationStatuses"))
    ModelPackageStatusDetails.add_member(:image_scan_statuses, Shapes::ShapeRef.new(shape: ModelPackageStatusItemList, location_name: "ImageScanStatuses"))
    ModelPackageStatusDetails.struct_class = Types::ModelPackageStatusDetails

    ModelPackageStatusItem.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    ModelPackageStatusItem.add_member(:status, Shapes::ShapeRef.new(shape: DetailedModelPackageStatus, required: true, location_name: "Status"))
    ModelPackageStatusItem.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "FailureReason"))
    ModelPackageStatusItem.struct_class = Types::ModelPackageStatusItem

    ModelPackageStatusItemList.member = Shapes::ShapeRef.new(shape: ModelPackageStatusItem)

    ModelPackageSummaries.key = Shapes::ShapeRef.new(shape: ModelPackageArn)
    ModelPackageSummaries.value = Shapes::ShapeRef.new(shape: BatchDescribeModelPackageSummary)

    ModelPackageSummary.add_member(:model_package_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "ModelPackageName"))
    ModelPackageSummary.add_member(:model_package_group_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "ModelPackageGroupName"))
    ModelPackageSummary.add_member(:model_package_version, Shapes::ShapeRef.new(shape: ModelPackageVersion, location_name: "ModelPackageVersion"))
    ModelPackageSummary.add_member(:model_package_arn, Shapes::ShapeRef.new(shape: ModelPackageArn, required: true, location_name: "ModelPackageArn"))
    ModelPackageSummary.add_member(:model_package_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "ModelPackageDescription"))
    ModelPackageSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    ModelPackageSummary.add_member(:model_package_status, Shapes::ShapeRef.new(shape: ModelPackageStatus, required: true, location_name: "ModelPackageStatus"))
    ModelPackageSummary.add_member(:model_approval_status, Shapes::ShapeRef.new(shape: ModelApprovalStatus, location_name: "ModelApprovalStatus"))
    ModelPackageSummary.struct_class = Types::ModelPackageSummary

    ModelPackageSummaryList.member = Shapes::ShapeRef.new(shape: ModelPackageSummary)

    ModelPackageValidationProfile.add_member(:profile_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "ProfileName"))
    ModelPackageValidationProfile.add_member(:transform_job_definition, Shapes::ShapeRef.new(shape: TransformJobDefinition, required: true, location_name: "TransformJobDefinition"))
    ModelPackageValidationProfile.struct_class = Types::ModelPackageValidationProfile

    ModelPackageValidationProfiles.member = Shapes::ShapeRef.new(shape: ModelPackageValidationProfile)

    ModelPackageValidationSpecification.add_member(:validation_role, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "ValidationRole"))
    ModelPackageValidationSpecification.add_member(:validation_profiles, Shapes::ShapeRef.new(shape: ModelPackageValidationProfiles, required: true, location_name: "ValidationProfiles"))
    ModelPackageValidationSpecification.struct_class = Types::ModelPackageValidationSpecification

    ModelQuality.add_member(:statistics, Shapes::ShapeRef.new(shape: MetricsSource, location_name: "Statistics"))
    ModelQuality.add_member(:constraints, Shapes::ShapeRef.new(shape: MetricsSource, location_name: "Constraints"))
    ModelQuality.struct_class = Types::ModelQuality

    ModelQualityAppSpecification.add_member(:image_uri, Shapes::ShapeRef.new(shape: ImageUri, required: true, location_name: "ImageUri"))
    ModelQualityAppSpecification.add_member(:container_entrypoint, Shapes::ShapeRef.new(shape: ContainerEntrypoint, location_name: "ContainerEntrypoint"))
    ModelQualityAppSpecification.add_member(:container_arguments, Shapes::ShapeRef.new(shape: MonitoringContainerArguments, location_name: "ContainerArguments"))
    ModelQualityAppSpecification.add_member(:record_preprocessor_source_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "RecordPreprocessorSourceUri"))
    ModelQualityAppSpecification.add_member(:post_analytics_processor_source_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "PostAnalyticsProcessorSourceUri"))
    ModelQualityAppSpecification.add_member(:problem_type, Shapes::ShapeRef.new(shape: MonitoringProblemType, location_name: "ProblemType"))
    ModelQualityAppSpecification.add_member(:environment, Shapes::ShapeRef.new(shape: MonitoringEnvironmentMap, location_name: "Environment"))
    ModelQualityAppSpecification.struct_class = Types::ModelQualityAppSpecification

    ModelQualityBaselineConfig.add_member(:baselining_job_name, Shapes::ShapeRef.new(shape: ProcessingJobName, location_name: "BaseliningJobName"))
    ModelQualityBaselineConfig.add_member(:constraints_resource, Shapes::ShapeRef.new(shape: MonitoringConstraintsResource, location_name: "ConstraintsResource"))
    ModelQualityBaselineConfig.struct_class = Types::ModelQualityBaselineConfig

    ModelQualityJobInput.add_member(:endpoint_input, Shapes::ShapeRef.new(shape: EndpointInput, required: true, location_name: "EndpointInput"))
    ModelQualityJobInput.add_member(:ground_truth_s3_input, Shapes::ShapeRef.new(shape: MonitoringGroundTruthS3Input, required: true, location_name: "GroundTruthS3Input"))
    ModelQualityJobInput.struct_class = Types::ModelQualityJobInput

    ModelStepMetadata.add_member(:arn, Shapes::ShapeRef.new(shape: String256, location_name: "Arn"))
    ModelStepMetadata.struct_class = Types::ModelStepMetadata

    ModelSummary.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    ModelSummary.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "ModelArn"))
    ModelSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    ModelSummary.struct_class = Types::ModelSummary

    ModelSummaryList.member = Shapes::ShapeRef.new(shape: ModelSummary)

    MonitoringAppSpecification.add_member(:image_uri, Shapes::ShapeRef.new(shape: ImageUri, required: true, location_name: "ImageUri"))
    MonitoringAppSpecification.add_member(:container_entrypoint, Shapes::ShapeRef.new(shape: ContainerEntrypoint, location_name: "ContainerEntrypoint"))
    MonitoringAppSpecification.add_member(:container_arguments, Shapes::ShapeRef.new(shape: MonitoringContainerArguments, location_name: "ContainerArguments"))
    MonitoringAppSpecification.add_member(:record_preprocessor_source_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "RecordPreprocessorSourceUri"))
    MonitoringAppSpecification.add_member(:post_analytics_processor_source_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "PostAnalyticsProcessorSourceUri"))
    MonitoringAppSpecification.struct_class = Types::MonitoringAppSpecification

    MonitoringBaselineConfig.add_member(:baselining_job_name, Shapes::ShapeRef.new(shape: ProcessingJobName, location_name: "BaseliningJobName"))
    MonitoringBaselineConfig.add_member(:constraints_resource, Shapes::ShapeRef.new(shape: MonitoringConstraintsResource, location_name: "ConstraintsResource"))
    MonitoringBaselineConfig.add_member(:statistics_resource, Shapes::ShapeRef.new(shape: MonitoringStatisticsResource, location_name: "StatisticsResource"))
    MonitoringBaselineConfig.struct_class = Types::MonitoringBaselineConfig

    MonitoringClusterConfig.add_member(:instance_count, Shapes::ShapeRef.new(shape: ProcessingInstanceCount, required: true, location_name: "InstanceCount"))
    MonitoringClusterConfig.add_member(:instance_type, Shapes::ShapeRef.new(shape: ProcessingInstanceType, required: true, location_name: "InstanceType"))
    MonitoringClusterConfig.add_member(:volume_size_in_gb, Shapes::ShapeRef.new(shape: ProcessingVolumeSizeInGB, required: true, location_name: "VolumeSizeInGB"))
    MonitoringClusterConfig.add_member(:volume_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "VolumeKmsKeyId"))
    MonitoringClusterConfig.struct_class = Types::MonitoringClusterConfig

    MonitoringConstraintsResource.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "S3Uri"))
    MonitoringConstraintsResource.struct_class = Types::MonitoringConstraintsResource

    MonitoringContainerArguments.member = Shapes::ShapeRef.new(shape: ContainerArgument)

    MonitoringEnvironmentMap.key = Shapes::ShapeRef.new(shape: ProcessingEnvironmentKey)
    MonitoringEnvironmentMap.value = Shapes::ShapeRef.new(shape: ProcessingEnvironmentValue)

    MonitoringExecutionSummary.add_member(:monitoring_schedule_name, Shapes::ShapeRef.new(shape: MonitoringScheduleName, required: true, location_name: "MonitoringScheduleName"))
    MonitoringExecutionSummary.add_member(:scheduled_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ScheduledTime"))
    MonitoringExecutionSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    MonitoringExecutionSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    MonitoringExecutionSummary.add_member(:monitoring_execution_status, Shapes::ShapeRef.new(shape: ExecutionStatus, required: true, location_name: "MonitoringExecutionStatus"))
    MonitoringExecutionSummary.add_member(:processing_job_arn, Shapes::ShapeRef.new(shape: ProcessingJobArn, location_name: "ProcessingJobArn"))
    MonitoringExecutionSummary.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, location_name: "EndpointName"))
    MonitoringExecutionSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    MonitoringExecutionSummary.add_member(:monitoring_job_definition_name, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionName, location_name: "MonitoringJobDefinitionName"))
    MonitoringExecutionSummary.add_member(:monitoring_type, Shapes::ShapeRef.new(shape: MonitoringType, location_name: "MonitoringType"))
    MonitoringExecutionSummary.struct_class = Types::MonitoringExecutionSummary

    MonitoringExecutionSummaryList.member = Shapes::ShapeRef.new(shape: MonitoringExecutionSummary)

    MonitoringGroundTruthS3Input.add_member(:s3_uri, Shapes::ShapeRef.new(shape: MonitoringS3Uri, location_name: "S3Uri"))
    MonitoringGroundTruthS3Input.struct_class = Types::MonitoringGroundTruthS3Input

    MonitoringInput.add_member(:endpoint_input, Shapes::ShapeRef.new(shape: EndpointInput, required: true, location_name: "EndpointInput"))
    MonitoringInput.struct_class = Types::MonitoringInput

    MonitoringInputs.member = Shapes::ShapeRef.new(shape: MonitoringInput)

    MonitoringJobDefinition.add_member(:baseline_config, Shapes::ShapeRef.new(shape: MonitoringBaselineConfig, location_name: "BaselineConfig"))
    MonitoringJobDefinition.add_member(:monitoring_inputs, Shapes::ShapeRef.new(shape: MonitoringInputs, required: true, location_name: "MonitoringInputs"))
    MonitoringJobDefinition.add_member(:monitoring_output_config, Shapes::ShapeRef.new(shape: MonitoringOutputConfig, required: true, location_name: "MonitoringOutputConfig"))
    MonitoringJobDefinition.add_member(:monitoring_resources, Shapes::ShapeRef.new(shape: MonitoringResources, required: true, location_name: "MonitoringResources"))
    MonitoringJobDefinition.add_member(:monitoring_app_specification, Shapes::ShapeRef.new(shape: MonitoringAppSpecification, required: true, location_name: "MonitoringAppSpecification"))
    MonitoringJobDefinition.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: MonitoringStoppingCondition, location_name: "StoppingCondition"))
    MonitoringJobDefinition.add_member(:environment, Shapes::ShapeRef.new(shape: MonitoringEnvironmentMap, location_name: "Environment"))
    MonitoringJobDefinition.add_member(:network_config, Shapes::ShapeRef.new(shape: NetworkConfig, location_name: "NetworkConfig"))
    MonitoringJobDefinition.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    MonitoringJobDefinition.struct_class = Types::MonitoringJobDefinition

    MonitoringJobDefinitionSummary.add_member(:monitoring_job_definition_name, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionName, required: true, location_name: "MonitoringJobDefinitionName"))
    MonitoringJobDefinitionSummary.add_member(:monitoring_job_definition_arn, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionArn, required: true, location_name: "MonitoringJobDefinitionArn"))
    MonitoringJobDefinitionSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    MonitoringJobDefinitionSummary.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "EndpointName"))
    MonitoringJobDefinitionSummary.struct_class = Types::MonitoringJobDefinitionSummary

    MonitoringJobDefinitionSummaryList.member = Shapes::ShapeRef.new(shape: MonitoringJobDefinitionSummary)

    MonitoringNetworkConfig.add_member(:enable_inter_container_traffic_encryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableInterContainerTrafficEncryption"))
    MonitoringNetworkConfig.add_member(:enable_network_isolation, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableNetworkIsolation"))
    MonitoringNetworkConfig.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    MonitoringNetworkConfig.struct_class = Types::MonitoringNetworkConfig

    MonitoringOutput.add_member(:s3_output, Shapes::ShapeRef.new(shape: MonitoringS3Output, required: true, location_name: "S3Output"))
    MonitoringOutput.struct_class = Types::MonitoringOutput

    MonitoringOutputConfig.add_member(:monitoring_outputs, Shapes::ShapeRef.new(shape: MonitoringOutputs, required: true, location_name: "MonitoringOutputs"))
    MonitoringOutputConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    MonitoringOutputConfig.struct_class = Types::MonitoringOutputConfig

    MonitoringOutputs.member = Shapes::ShapeRef.new(shape: MonitoringOutput)

    MonitoringResources.add_member(:cluster_config, Shapes::ShapeRef.new(shape: MonitoringClusterConfig, required: true, location_name: "ClusterConfig"))
    MonitoringResources.struct_class = Types::MonitoringResources

    MonitoringS3Output.add_member(:s3_uri, Shapes::ShapeRef.new(shape: MonitoringS3Uri, required: true, location_name: "S3Uri"))
    MonitoringS3Output.add_member(:local_path, Shapes::ShapeRef.new(shape: ProcessingLocalPath, required: true, location_name: "LocalPath"))
    MonitoringS3Output.add_member(:s3_upload_mode, Shapes::ShapeRef.new(shape: ProcessingS3UploadMode, location_name: "S3UploadMode"))
    MonitoringS3Output.struct_class = Types::MonitoringS3Output

    MonitoringSchedule.add_member(:monitoring_schedule_arn, Shapes::ShapeRef.new(shape: MonitoringScheduleArn, location_name: "MonitoringScheduleArn"))
    MonitoringSchedule.add_member(:monitoring_schedule_name, Shapes::ShapeRef.new(shape: MonitoringScheduleName, location_name: "MonitoringScheduleName"))
    MonitoringSchedule.add_member(:monitoring_schedule_status, Shapes::ShapeRef.new(shape: ScheduleStatus, location_name: "MonitoringScheduleStatus"))
    MonitoringSchedule.add_member(:monitoring_type, Shapes::ShapeRef.new(shape: MonitoringType, location_name: "MonitoringType"))
    MonitoringSchedule.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    MonitoringSchedule.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    MonitoringSchedule.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    MonitoringSchedule.add_member(:monitoring_schedule_config, Shapes::ShapeRef.new(shape: MonitoringScheduleConfig, location_name: "MonitoringScheduleConfig"))
    MonitoringSchedule.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, location_name: "EndpointName"))
    MonitoringSchedule.add_member(:last_monitoring_execution_summary, Shapes::ShapeRef.new(shape: MonitoringExecutionSummary, location_name: "LastMonitoringExecutionSummary"))
    MonitoringSchedule.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    MonitoringSchedule.struct_class = Types::MonitoringSchedule

    MonitoringScheduleConfig.add_member(:schedule_config, Shapes::ShapeRef.new(shape: ScheduleConfig, location_name: "ScheduleConfig"))
    MonitoringScheduleConfig.add_member(:monitoring_job_definition, Shapes::ShapeRef.new(shape: MonitoringJobDefinition, location_name: "MonitoringJobDefinition"))
    MonitoringScheduleConfig.add_member(:monitoring_job_definition_name, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionName, location_name: "MonitoringJobDefinitionName"))
    MonitoringScheduleConfig.add_member(:monitoring_type, Shapes::ShapeRef.new(shape: MonitoringType, location_name: "MonitoringType"))
    MonitoringScheduleConfig.struct_class = Types::MonitoringScheduleConfig

    MonitoringScheduleList.member = Shapes::ShapeRef.new(shape: MonitoringSchedule)

    MonitoringScheduleSummary.add_member(:monitoring_schedule_name, Shapes::ShapeRef.new(shape: MonitoringScheduleName, required: true, location_name: "MonitoringScheduleName"))
    MonitoringScheduleSummary.add_member(:monitoring_schedule_arn, Shapes::ShapeRef.new(shape: MonitoringScheduleArn, required: true, location_name: "MonitoringScheduleArn"))
    MonitoringScheduleSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    MonitoringScheduleSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    MonitoringScheduleSummary.add_member(:monitoring_schedule_status, Shapes::ShapeRef.new(shape: ScheduleStatus, required: true, location_name: "MonitoringScheduleStatus"))
    MonitoringScheduleSummary.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, location_name: "EndpointName"))
    MonitoringScheduleSummary.add_member(:monitoring_job_definition_name, Shapes::ShapeRef.new(shape: MonitoringJobDefinitionName, location_name: "MonitoringJobDefinitionName"))
    MonitoringScheduleSummary.add_member(:monitoring_type, Shapes::ShapeRef.new(shape: MonitoringType, location_name: "MonitoringType"))
    MonitoringScheduleSummary.struct_class = Types::MonitoringScheduleSummary

    MonitoringScheduleSummaryList.member = Shapes::ShapeRef.new(shape: MonitoringScheduleSummary)

    MonitoringStatisticsResource.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "S3Uri"))
    MonitoringStatisticsResource.struct_class = Types::MonitoringStatisticsResource

    MonitoringStoppingCondition.add_member(:max_runtime_in_seconds, Shapes::ShapeRef.new(shape: MonitoringMaxRuntimeInSeconds, required: true, location_name: "MaxRuntimeInSeconds"))
    MonitoringStoppingCondition.struct_class = Types::MonitoringStoppingCondition

    MultiModelConfig.add_member(:model_cache_setting, Shapes::ShapeRef.new(shape: ModelCacheSetting, location_name: "ModelCacheSetting"))
    MultiModelConfig.struct_class = Types::MultiModelConfig

    NeoVpcConfig.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: NeoVpcSecurityGroupIds, required: true, location_name: "SecurityGroupIds"))
    NeoVpcConfig.add_member(:subnets, Shapes::ShapeRef.new(shape: NeoVpcSubnets, required: true, location_name: "Subnets"))
    NeoVpcConfig.struct_class = Types::NeoVpcConfig

    NeoVpcSecurityGroupIds.member = Shapes::ShapeRef.new(shape: NeoVpcSecurityGroupId)

    NeoVpcSubnets.member = Shapes::ShapeRef.new(shape: NeoVpcSubnetId)

    NestedFilters.add_member(:nested_property_name, Shapes::ShapeRef.new(shape: ResourcePropertyName, required: true, location_name: "NestedPropertyName"))
    NestedFilters.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, required: true, location_name: "Filters"))
    NestedFilters.struct_class = Types::NestedFilters

    NestedFiltersList.member = Shapes::ShapeRef.new(shape: NestedFilters)

    NetworkConfig.add_member(:enable_inter_container_traffic_encryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableInterContainerTrafficEncryption"))
    NetworkConfig.add_member(:enable_network_isolation, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableNetworkIsolation"))
    NetworkConfig.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    NetworkConfig.struct_class = Types::NetworkConfig

    NotebookInstanceAcceleratorTypes.member = Shapes::ShapeRef.new(shape: NotebookInstanceAcceleratorType)

    NotebookInstanceLifecycleConfigList.member = Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleHook)

    NotebookInstanceLifecycleConfigSummary.add_member(:notebook_instance_lifecycle_config_name, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigName, required: true, location_name: "NotebookInstanceLifecycleConfigName"))
    NotebookInstanceLifecycleConfigSummary.add_member(:notebook_instance_lifecycle_config_arn, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigArn, required: true, location_name: "NotebookInstanceLifecycleConfigArn"))
    NotebookInstanceLifecycleConfigSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    NotebookInstanceLifecycleConfigSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTime"))
    NotebookInstanceLifecycleConfigSummary.struct_class = Types::NotebookInstanceLifecycleConfigSummary

    NotebookInstanceLifecycleConfigSummaryList.member = Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigSummary)

    NotebookInstanceLifecycleHook.add_member(:content, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigContent, location_name: "Content"))
    NotebookInstanceLifecycleHook.struct_class = Types::NotebookInstanceLifecycleHook

    NotebookInstanceSummary.add_member(:notebook_instance_name, Shapes::ShapeRef.new(shape: NotebookInstanceName, required: true, location_name: "NotebookInstanceName"))
    NotebookInstanceSummary.add_member(:notebook_instance_arn, Shapes::ShapeRef.new(shape: NotebookInstanceArn, required: true, location_name: "NotebookInstanceArn"))
    NotebookInstanceSummary.add_member(:notebook_instance_status, Shapes::ShapeRef.new(shape: NotebookInstanceStatus, location_name: "NotebookInstanceStatus"))
    NotebookInstanceSummary.add_member(:url, Shapes::ShapeRef.new(shape: NotebookInstanceUrl, location_name: "Url"))
    NotebookInstanceSummary.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "InstanceType"))
    NotebookInstanceSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    NotebookInstanceSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTime"))
    NotebookInstanceSummary.add_member(:notebook_instance_lifecycle_config_name, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigName, location_name: "NotebookInstanceLifecycleConfigName"))
    NotebookInstanceSummary.add_member(:default_code_repository, Shapes::ShapeRef.new(shape: CodeRepositoryNameOrUrl, location_name: "DefaultCodeRepository"))
    NotebookInstanceSummary.add_member(:additional_code_repositories, Shapes::ShapeRef.new(shape: AdditionalCodeRepositoryNamesOrUrls, location_name: "AdditionalCodeRepositories"))
    NotebookInstanceSummary.struct_class = Types::NotebookInstanceSummary

    NotebookInstanceSummaryList.member = Shapes::ShapeRef.new(shape: NotebookInstanceSummary)

    NotificationConfiguration.add_member(:notification_topic_arn, Shapes::ShapeRef.new(shape: NotificationTopicArn, location_name: "NotificationTopicArn"))
    NotificationConfiguration.struct_class = Types::NotificationConfiguration

    ObjectiveStatusCounters.add_member(:succeeded, Shapes::ShapeRef.new(shape: ObjectiveStatusCounter, location_name: "Succeeded"))
    ObjectiveStatusCounters.add_member(:pending, Shapes::ShapeRef.new(shape: ObjectiveStatusCounter, location_name: "Pending"))
    ObjectiveStatusCounters.add_member(:failed, Shapes::ShapeRef.new(shape: ObjectiveStatusCounter, location_name: "Failed"))
    ObjectiveStatusCounters.struct_class = Types::ObjectiveStatusCounters

    OfflineStoreConfig.add_member(:s3_storage_config, Shapes::ShapeRef.new(shape: S3StorageConfig, required: true, location_name: "S3StorageConfig"))
    OfflineStoreConfig.add_member(:disable_glue_table_creation, Shapes::ShapeRef.new(shape: Boolean, location_name: "DisableGlueTableCreation"))
    OfflineStoreConfig.add_member(:data_catalog_config, Shapes::ShapeRef.new(shape: DataCatalogConfig, location_name: "DataCatalogConfig"))
    OfflineStoreConfig.struct_class = Types::OfflineStoreConfig

    OfflineStoreStatus.add_member(:status, Shapes::ShapeRef.new(shape: OfflineStoreStatusValue, required: true, location_name: "Status"))
    OfflineStoreStatus.add_member(:blocked_reason, Shapes::ShapeRef.new(shape: BlockedReason, location_name: "BlockedReason"))
    OfflineStoreStatus.struct_class = Types::OfflineStoreStatus

    OidcConfig.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, required: true, location_name: "ClientId"))
    OidcConfig.add_member(:client_secret, Shapes::ShapeRef.new(shape: ClientSecret, required: true, location_name: "ClientSecret"))
    OidcConfig.add_member(:issuer, Shapes::ShapeRef.new(shape: OidcEndpoint, required: true, location_name: "Issuer"))
    OidcConfig.add_member(:authorization_endpoint, Shapes::ShapeRef.new(shape: OidcEndpoint, required: true, location_name: "AuthorizationEndpoint"))
    OidcConfig.add_member(:token_endpoint, Shapes::ShapeRef.new(shape: OidcEndpoint, required: true, location_name: "TokenEndpoint"))
    OidcConfig.add_member(:user_info_endpoint, Shapes::ShapeRef.new(shape: OidcEndpoint, required: true, location_name: "UserInfoEndpoint"))
    OidcConfig.add_member(:logout_endpoint, Shapes::ShapeRef.new(shape: OidcEndpoint, required: true, location_name: "LogoutEndpoint"))
    OidcConfig.add_member(:jwks_uri, Shapes::ShapeRef.new(shape: OidcEndpoint, required: true, location_name: "JwksUri"))
    OidcConfig.struct_class = Types::OidcConfig

    OidcConfigForResponse.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, location_name: "ClientId"))
    OidcConfigForResponse.add_member(:issuer, Shapes::ShapeRef.new(shape: OidcEndpoint, location_name: "Issuer"))
    OidcConfigForResponse.add_member(:authorization_endpoint, Shapes::ShapeRef.new(shape: OidcEndpoint, location_name: "AuthorizationEndpoint"))
    OidcConfigForResponse.add_member(:token_endpoint, Shapes::ShapeRef.new(shape: OidcEndpoint, location_name: "TokenEndpoint"))
    OidcConfigForResponse.add_member(:user_info_endpoint, Shapes::ShapeRef.new(shape: OidcEndpoint, location_name: "UserInfoEndpoint"))
    OidcConfigForResponse.add_member(:logout_endpoint, Shapes::ShapeRef.new(shape: OidcEndpoint, location_name: "LogoutEndpoint"))
    OidcConfigForResponse.add_member(:jwks_uri, Shapes::ShapeRef.new(shape: OidcEndpoint, location_name: "JwksUri"))
    OidcConfigForResponse.struct_class = Types::OidcConfigForResponse

    OidcMemberDefinition.add_member(:groups, Shapes::ShapeRef.new(shape: Groups, required: true, location_name: "Groups"))
    OidcMemberDefinition.struct_class = Types::OidcMemberDefinition

    OnlineStoreConfig.add_member(:security_config, Shapes::ShapeRef.new(shape: OnlineStoreSecurityConfig, location_name: "SecurityConfig"))
    OnlineStoreConfig.add_member(:enable_online_store, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableOnlineStore"))
    OnlineStoreConfig.struct_class = Types::OnlineStoreConfig

    OnlineStoreSecurityConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    OnlineStoreSecurityConfig.struct_class = Types::OnlineStoreSecurityConfig

    OutputConfig.add_member(:s3_output_location, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3OutputLocation"))
    OutputConfig.add_member(:target_device, Shapes::ShapeRef.new(shape: TargetDevice, location_name: "TargetDevice"))
    OutputConfig.add_member(:target_platform, Shapes::ShapeRef.new(shape: TargetPlatform, location_name: "TargetPlatform"))
    OutputConfig.add_member(:compiler_options, Shapes::ShapeRef.new(shape: CompilerOptions, location_name: "CompilerOptions"))
    OutputConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    OutputConfig.struct_class = Types::OutputConfig

    OutputDataConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    OutputDataConfig.add_member(:s3_output_path, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3OutputPath"))
    OutputDataConfig.struct_class = Types::OutputDataConfig

    OutputParameter.add_member(:name, Shapes::ShapeRef.new(shape: String256, required: true, location_name: "Name"))
    OutputParameter.add_member(:value, Shapes::ShapeRef.new(shape: String1024, required: true, location_name: "Value"))
    OutputParameter.struct_class = Types::OutputParameter

    OutputParameterList.member = Shapes::ShapeRef.new(shape: OutputParameter)

    ParallelismConfiguration.add_member(:max_parallel_execution_steps, Shapes::ShapeRef.new(shape: MaxParallelExecutionSteps, required: true, location_name: "MaxParallelExecutionSteps"))
    ParallelismConfiguration.struct_class = Types::ParallelismConfiguration

    Parameter.add_member(:name, Shapes::ShapeRef.new(shape: PipelineParameterName, required: true, location_name: "Name"))
    Parameter.add_member(:value, Shapes::ShapeRef.new(shape: String1024, required: true, location_name: "Value"))
    Parameter.struct_class = Types::Parameter

    ParameterList.member = Shapes::ShapeRef.new(shape: Parameter)

    ParameterRange.add_member(:integer_parameter_range_specification, Shapes::ShapeRef.new(shape: IntegerParameterRangeSpecification, location_name: "IntegerParameterRangeSpecification"))
    ParameterRange.add_member(:continuous_parameter_range_specification, Shapes::ShapeRef.new(shape: ContinuousParameterRangeSpecification, location_name: "ContinuousParameterRangeSpecification"))
    ParameterRange.add_member(:categorical_parameter_range_specification, Shapes::ShapeRef.new(shape: CategoricalParameterRangeSpecification, location_name: "CategoricalParameterRangeSpecification"))
    ParameterRange.struct_class = Types::ParameterRange

    ParameterRanges.add_member(:integer_parameter_ranges, Shapes::ShapeRef.new(shape: IntegerParameterRanges, location_name: "IntegerParameterRanges"))
    ParameterRanges.add_member(:continuous_parameter_ranges, Shapes::ShapeRef.new(shape: ContinuousParameterRanges, location_name: "ContinuousParameterRanges"))
    ParameterRanges.add_member(:categorical_parameter_ranges, Shapes::ShapeRef.new(shape: CategoricalParameterRanges, location_name: "CategoricalParameterRanges"))
    ParameterRanges.struct_class = Types::ParameterRanges

    ParameterValues.member = Shapes::ShapeRef.new(shape: ParameterValue)

    Parent.add_member(:trial_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "TrialName"))
    Parent.add_member(:experiment_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "ExperimentName"))
    Parent.struct_class = Types::Parent

    ParentHyperParameterTuningJob.add_member(:hyper_parameter_tuning_job_name, Shapes::ShapeRef.new(shape: HyperParameterTuningJobName, location_name: "HyperParameterTuningJobName"))
    ParentHyperParameterTuningJob.struct_class = Types::ParentHyperParameterTuningJob

    ParentHyperParameterTuningJobs.member = Shapes::ShapeRef.new(shape: ParentHyperParameterTuningJob)

    Parents.member = Shapes::ShapeRef.new(shape: Parent)

    PendingDeploymentSummary.add_member(:endpoint_config_name, Shapes::ShapeRef.new(shape: EndpointConfigName, required: true, location_name: "EndpointConfigName"))
    PendingDeploymentSummary.add_member(:production_variants, Shapes::ShapeRef.new(shape: PendingProductionVariantSummaryList, location_name: "ProductionVariants"))
    PendingDeploymentSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    PendingDeploymentSummary.struct_class = Types::PendingDeploymentSummary

    PendingProductionVariantSummary.add_member(:variant_name, Shapes::ShapeRef.new(shape: VariantName, required: true, location_name: "VariantName"))
    PendingProductionVariantSummary.add_member(:deployed_images, Shapes::ShapeRef.new(shape: DeployedImages, location_name: "DeployedImages"))
    PendingProductionVariantSummary.add_member(:current_weight, Shapes::ShapeRef.new(shape: VariantWeight, location_name: "CurrentWeight"))
    PendingProductionVariantSummary.add_member(:desired_weight, Shapes::ShapeRef.new(shape: VariantWeight, location_name: "DesiredWeight"))
    PendingProductionVariantSummary.add_member(:current_instance_count, Shapes::ShapeRef.new(shape: TaskCount, location_name: "CurrentInstanceCount"))
    PendingProductionVariantSummary.add_member(:desired_instance_count, Shapes::ShapeRef.new(shape: TaskCount, location_name: "DesiredInstanceCount"))
    PendingProductionVariantSummary.add_member(:instance_type, Shapes::ShapeRef.new(shape: ProductionVariantInstanceType, location_name: "InstanceType"))
    PendingProductionVariantSummary.add_member(:accelerator_type, Shapes::ShapeRef.new(shape: ProductionVariantAcceleratorType, location_name: "AcceleratorType"))
    PendingProductionVariantSummary.add_member(:variant_status, Shapes::ShapeRef.new(shape: ProductionVariantStatusList, location_name: "VariantStatus"))
    PendingProductionVariantSummary.add_member(:current_serverless_config, Shapes::ShapeRef.new(shape: ProductionVariantServerlessConfig, location_name: "CurrentServerlessConfig"))
    PendingProductionVariantSummary.add_member(:desired_serverless_config, Shapes::ShapeRef.new(shape: ProductionVariantServerlessConfig, location_name: "DesiredServerlessConfig"))
    PendingProductionVariantSummary.struct_class = Types::PendingProductionVariantSummary

    PendingProductionVariantSummaryList.member = Shapes::ShapeRef.new(shape: PendingProductionVariantSummary)

    Phase.add_member(:initial_number_of_users, Shapes::ShapeRef.new(shape: InitialNumberOfUsers, location_name: "InitialNumberOfUsers"))
    Phase.add_member(:spawn_rate, Shapes::ShapeRef.new(shape: SpawnRate, location_name: "SpawnRate"))
    Phase.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: TrafficDurationInSeconds, location_name: "DurationInSeconds"))
    Phase.struct_class = Types::Phase

    Phases.member = Shapes::ShapeRef.new(shape: Phase)

    Pipeline.add_member(:pipeline_arn, Shapes::ShapeRef.new(shape: PipelineArn, location_name: "PipelineArn"))
    Pipeline.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, location_name: "PipelineName"))
    Pipeline.add_member(:pipeline_display_name, Shapes::ShapeRef.new(shape: PipelineName, location_name: "PipelineDisplayName"))
    Pipeline.add_member(:pipeline_description, Shapes::ShapeRef.new(shape: PipelineDescription, location_name: "PipelineDescription"))
    Pipeline.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    Pipeline.add_member(:pipeline_status, Shapes::ShapeRef.new(shape: PipelineStatus, location_name: "PipelineStatus"))
    Pipeline.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    Pipeline.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    Pipeline.add_member(:last_run_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastRunTime"))
    Pipeline.add_member(:created_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "CreatedBy"))
    Pipeline.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "LastModifiedBy"))
    Pipeline.add_member(:parallelism_configuration, Shapes::ShapeRef.new(shape: ParallelismConfiguration, location_name: "ParallelismConfiguration"))
    Pipeline.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    Pipeline.struct_class = Types::Pipeline

    PipelineDefinitionS3Location.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "Bucket"))
    PipelineDefinitionS3Location.add_member(:object_key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "ObjectKey"))
    PipelineDefinitionS3Location.add_member(:version_id, Shapes::ShapeRef.new(shape: VersionId, location_name: "VersionId"))
    PipelineDefinitionS3Location.struct_class = Types::PipelineDefinitionS3Location

    PipelineExecution.add_member(:pipeline_arn, Shapes::ShapeRef.new(shape: PipelineArn, location_name: "PipelineArn"))
    PipelineExecution.add_member(:pipeline_execution_arn, Shapes::ShapeRef.new(shape: PipelineExecutionArn, location_name: "PipelineExecutionArn"))
    PipelineExecution.add_member(:pipeline_execution_display_name, Shapes::ShapeRef.new(shape: PipelineExecutionName, location_name: "PipelineExecutionDisplayName"))
    PipelineExecution.add_member(:pipeline_execution_status, Shapes::ShapeRef.new(shape: PipelineExecutionStatus, location_name: "PipelineExecutionStatus"))
    PipelineExecution.add_member(:pipeline_execution_description, Shapes::ShapeRef.new(shape: PipelineExecutionDescription, location_name: "PipelineExecutionDescription"))
    PipelineExecution.add_member(:pipeline_experiment_config, Shapes::ShapeRef.new(shape: PipelineExperimentConfig, location_name: "PipelineExperimentConfig"))
    PipelineExecution.add_member(:failure_reason, Shapes::ShapeRef.new(shape: PipelineExecutionFailureReason, location_name: "FailureReason"))
    PipelineExecution.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    PipelineExecution.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    PipelineExecution.add_member(:created_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "CreatedBy"))
    PipelineExecution.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "LastModifiedBy"))
    PipelineExecution.add_member(:parallelism_configuration, Shapes::ShapeRef.new(shape: ParallelismConfiguration, location_name: "ParallelismConfiguration"))
    PipelineExecution.add_member(:pipeline_parameters, Shapes::ShapeRef.new(shape: ParameterList, location_name: "PipelineParameters"))
    PipelineExecution.struct_class = Types::PipelineExecution

    PipelineExecutionStep.add_member(:step_name, Shapes::ShapeRef.new(shape: StepName, location_name: "StepName"))
    PipelineExecutionStep.add_member(:step_display_name, Shapes::ShapeRef.new(shape: StepDisplayName, location_name: "StepDisplayName"))
    PipelineExecutionStep.add_member(:step_description, Shapes::ShapeRef.new(shape: StepDescription, location_name: "StepDescription"))
    PipelineExecutionStep.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    PipelineExecutionStep.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    PipelineExecutionStep.add_member(:step_status, Shapes::ShapeRef.new(shape: StepStatus, location_name: "StepStatus"))
    PipelineExecutionStep.add_member(:cache_hit_result, Shapes::ShapeRef.new(shape: CacheHitResult, location_name: "CacheHitResult"))
    PipelineExecutionStep.add_member(:attempt_count, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "AttemptCount"))
    PipelineExecutionStep.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    PipelineExecutionStep.add_member(:metadata, Shapes::ShapeRef.new(shape: PipelineExecutionStepMetadata, location_name: "Metadata"))
    PipelineExecutionStep.struct_class = Types::PipelineExecutionStep

    PipelineExecutionStepList.member = Shapes::ShapeRef.new(shape: PipelineExecutionStep)

    PipelineExecutionStepMetadata.add_member(:training_job, Shapes::ShapeRef.new(shape: TrainingJobStepMetadata, location_name: "TrainingJob"))
    PipelineExecutionStepMetadata.add_member(:processing_job, Shapes::ShapeRef.new(shape: ProcessingJobStepMetadata, location_name: "ProcessingJob"))
    PipelineExecutionStepMetadata.add_member(:transform_job, Shapes::ShapeRef.new(shape: TransformJobStepMetadata, location_name: "TransformJob"))
    PipelineExecutionStepMetadata.add_member(:tuning_job, Shapes::ShapeRef.new(shape: TuningJobStepMetaData, location_name: "TuningJob"))
    PipelineExecutionStepMetadata.add_member(:model, Shapes::ShapeRef.new(shape: ModelStepMetadata, location_name: "Model"))
    PipelineExecutionStepMetadata.add_member(:register_model, Shapes::ShapeRef.new(shape: RegisterModelStepMetadata, location_name: "RegisterModel"))
    PipelineExecutionStepMetadata.add_member(:condition, Shapes::ShapeRef.new(shape: ConditionStepMetadata, location_name: "Condition"))
    PipelineExecutionStepMetadata.add_member(:callback, Shapes::ShapeRef.new(shape: CallbackStepMetadata, location_name: "Callback"))
    PipelineExecutionStepMetadata.add_member(:lambda, Shapes::ShapeRef.new(shape: LambdaStepMetadata, location_name: "Lambda"))
    PipelineExecutionStepMetadata.add_member(:quality_check, Shapes::ShapeRef.new(shape: QualityCheckStepMetadata, location_name: "QualityCheck"))
    PipelineExecutionStepMetadata.add_member(:clarify_check, Shapes::ShapeRef.new(shape: ClarifyCheckStepMetadata, location_name: "ClarifyCheck"))
    PipelineExecutionStepMetadata.add_member(:emr, Shapes::ShapeRef.new(shape: EMRStepMetadata, location_name: "EMR"))
    PipelineExecutionStepMetadata.add_member(:fail, Shapes::ShapeRef.new(shape: FailStepMetadata, location_name: "Fail"))
    PipelineExecutionStepMetadata.struct_class = Types::PipelineExecutionStepMetadata

    PipelineExecutionSummary.add_member(:pipeline_execution_arn, Shapes::ShapeRef.new(shape: PipelineExecutionArn, location_name: "PipelineExecutionArn"))
    PipelineExecutionSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    PipelineExecutionSummary.add_member(:pipeline_execution_status, Shapes::ShapeRef.new(shape: PipelineExecutionStatus, location_name: "PipelineExecutionStatus"))
    PipelineExecutionSummary.add_member(:pipeline_execution_description, Shapes::ShapeRef.new(shape: PipelineExecutionDescription, location_name: "PipelineExecutionDescription"))
    PipelineExecutionSummary.add_member(:pipeline_execution_display_name, Shapes::ShapeRef.new(shape: PipelineExecutionName, location_name: "PipelineExecutionDisplayName"))
    PipelineExecutionSummary.add_member(:pipeline_execution_failure_reason, Shapes::ShapeRef.new(shape: String3072, location_name: "PipelineExecutionFailureReason"))
    PipelineExecutionSummary.struct_class = Types::PipelineExecutionSummary

    PipelineExecutionSummaryList.member = Shapes::ShapeRef.new(shape: PipelineExecutionSummary)

    PipelineExperimentConfig.add_member(:experiment_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "ExperimentName"))
    PipelineExperimentConfig.add_member(:trial_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "TrialName"))
    PipelineExperimentConfig.struct_class = Types::PipelineExperimentConfig

    PipelineSummary.add_member(:pipeline_arn, Shapes::ShapeRef.new(shape: PipelineArn, location_name: "PipelineArn"))
    PipelineSummary.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, location_name: "PipelineName"))
    PipelineSummary.add_member(:pipeline_display_name, Shapes::ShapeRef.new(shape: PipelineName, location_name: "PipelineDisplayName"))
    PipelineSummary.add_member(:pipeline_description, Shapes::ShapeRef.new(shape: PipelineDescription, location_name: "PipelineDescription"))
    PipelineSummary.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    PipelineSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    PipelineSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    PipelineSummary.add_member(:last_execution_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastExecutionTime"))
    PipelineSummary.struct_class = Types::PipelineSummary

    PipelineSummaryList.member = Shapes::ShapeRef.new(shape: PipelineSummary)

    ProcessingClusterConfig.add_member(:instance_count, Shapes::ShapeRef.new(shape: ProcessingInstanceCount, required: true, location_name: "InstanceCount"))
    ProcessingClusterConfig.add_member(:instance_type, Shapes::ShapeRef.new(shape: ProcessingInstanceType, required: true, location_name: "InstanceType"))
    ProcessingClusterConfig.add_member(:volume_size_in_gb, Shapes::ShapeRef.new(shape: ProcessingVolumeSizeInGB, required: true, location_name: "VolumeSizeInGB"))
    ProcessingClusterConfig.add_member(:volume_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "VolumeKmsKeyId"))
    ProcessingClusterConfig.struct_class = Types::ProcessingClusterConfig

    ProcessingEnvironmentMap.key = Shapes::ShapeRef.new(shape: ProcessingEnvironmentKey)
    ProcessingEnvironmentMap.value = Shapes::ShapeRef.new(shape: ProcessingEnvironmentValue)

    ProcessingFeatureStoreOutput.add_member(:feature_group_name, Shapes::ShapeRef.new(shape: FeatureGroupName, required: true, location_name: "FeatureGroupName"))
    ProcessingFeatureStoreOutput.struct_class = Types::ProcessingFeatureStoreOutput

    ProcessingInput.add_member(:input_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InputName"))
    ProcessingInput.add_member(:app_managed, Shapes::ShapeRef.new(shape: AppManaged, location_name: "AppManaged"))
    ProcessingInput.add_member(:s3_input, Shapes::ShapeRef.new(shape: ProcessingS3Input, location_name: "S3Input"))
    ProcessingInput.add_member(:dataset_definition, Shapes::ShapeRef.new(shape: DatasetDefinition, location_name: "DatasetDefinition"))
    ProcessingInput.struct_class = Types::ProcessingInput

    ProcessingInputs.member = Shapes::ShapeRef.new(shape: ProcessingInput)

    ProcessingJob.add_member(:processing_inputs, Shapes::ShapeRef.new(shape: ProcessingInputs, location_name: "ProcessingInputs"))
    ProcessingJob.add_member(:processing_output_config, Shapes::ShapeRef.new(shape: ProcessingOutputConfig, location_name: "ProcessingOutputConfig"))
    ProcessingJob.add_member(:processing_job_name, Shapes::ShapeRef.new(shape: ProcessingJobName, location_name: "ProcessingJobName"))
    ProcessingJob.add_member(:processing_resources, Shapes::ShapeRef.new(shape: ProcessingResources, location_name: "ProcessingResources"))
    ProcessingJob.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: ProcessingStoppingCondition, location_name: "StoppingCondition"))
    ProcessingJob.add_member(:app_specification, Shapes::ShapeRef.new(shape: AppSpecification, location_name: "AppSpecification"))
    ProcessingJob.add_member(:environment, Shapes::ShapeRef.new(shape: ProcessingEnvironmentMap, location_name: "Environment"))
    ProcessingJob.add_member(:network_config, Shapes::ShapeRef.new(shape: NetworkConfig, location_name: "NetworkConfig"))
    ProcessingJob.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    ProcessingJob.add_member(:experiment_config, Shapes::ShapeRef.new(shape: ExperimentConfig, location_name: "ExperimentConfig"))
    ProcessingJob.add_member(:processing_job_arn, Shapes::ShapeRef.new(shape: ProcessingJobArn, location_name: "ProcessingJobArn"))
    ProcessingJob.add_member(:processing_job_status, Shapes::ShapeRef.new(shape: ProcessingJobStatus, location_name: "ProcessingJobStatus"))
    ProcessingJob.add_member(:exit_message, Shapes::ShapeRef.new(shape: ExitMessage, location_name: "ExitMessage"))
    ProcessingJob.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    ProcessingJob.add_member(:processing_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ProcessingEndTime"))
    ProcessingJob.add_member(:processing_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ProcessingStartTime"))
    ProcessingJob.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    ProcessingJob.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    ProcessingJob.add_member(:monitoring_schedule_arn, Shapes::ShapeRef.new(shape: MonitoringScheduleArn, location_name: "MonitoringScheduleArn"))
    ProcessingJob.add_member(:auto_ml_job_arn, Shapes::ShapeRef.new(shape: AutoMLJobArn, location_name: "AutoMLJobArn"))
    ProcessingJob.add_member(:training_job_arn, Shapes::ShapeRef.new(shape: TrainingJobArn, location_name: "TrainingJobArn"))
    ProcessingJob.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ProcessingJob.struct_class = Types::ProcessingJob

    ProcessingJobStepMetadata.add_member(:arn, Shapes::ShapeRef.new(shape: ProcessingJobArn, location_name: "Arn"))
    ProcessingJobStepMetadata.struct_class = Types::ProcessingJobStepMetadata

    ProcessingJobSummaries.member = Shapes::ShapeRef.new(shape: ProcessingJobSummary)

    ProcessingJobSummary.add_member(:processing_job_name, Shapes::ShapeRef.new(shape: ProcessingJobName, required: true, location_name: "ProcessingJobName"))
    ProcessingJobSummary.add_member(:processing_job_arn, Shapes::ShapeRef.new(shape: ProcessingJobArn, required: true, location_name: "ProcessingJobArn"))
    ProcessingJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    ProcessingJobSummary.add_member(:processing_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ProcessingEndTime"))
    ProcessingJobSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    ProcessingJobSummary.add_member(:processing_job_status, Shapes::ShapeRef.new(shape: ProcessingJobStatus, required: true, location_name: "ProcessingJobStatus"))
    ProcessingJobSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    ProcessingJobSummary.add_member(:exit_message, Shapes::ShapeRef.new(shape: ExitMessage, location_name: "ExitMessage"))
    ProcessingJobSummary.struct_class = Types::ProcessingJobSummary

    ProcessingOutput.add_member(:output_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "OutputName"))
    ProcessingOutput.add_member(:s3_output, Shapes::ShapeRef.new(shape: ProcessingS3Output, location_name: "S3Output"))
    ProcessingOutput.add_member(:feature_store_output, Shapes::ShapeRef.new(shape: ProcessingFeatureStoreOutput, location_name: "FeatureStoreOutput"))
    ProcessingOutput.add_member(:app_managed, Shapes::ShapeRef.new(shape: AppManaged, location_name: "AppManaged"))
    ProcessingOutput.struct_class = Types::ProcessingOutput

    ProcessingOutputConfig.add_member(:outputs, Shapes::ShapeRef.new(shape: ProcessingOutputs, required: true, location_name: "Outputs"))
    ProcessingOutputConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    ProcessingOutputConfig.struct_class = Types::ProcessingOutputConfig

    ProcessingOutputs.member = Shapes::ShapeRef.new(shape: ProcessingOutput)

    ProcessingResources.add_member(:cluster_config, Shapes::ShapeRef.new(shape: ProcessingClusterConfig, required: true, location_name: "ClusterConfig"))
    ProcessingResources.struct_class = Types::ProcessingResources

    ProcessingS3Input.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    ProcessingS3Input.add_member(:local_path, Shapes::ShapeRef.new(shape: ProcessingLocalPath, location_name: "LocalPath"))
    ProcessingS3Input.add_member(:s3_data_type, Shapes::ShapeRef.new(shape: ProcessingS3DataType, required: true, location_name: "S3DataType"))
    ProcessingS3Input.add_member(:s3_input_mode, Shapes::ShapeRef.new(shape: ProcessingS3InputMode, location_name: "S3InputMode"))
    ProcessingS3Input.add_member(:s3_data_distribution_type, Shapes::ShapeRef.new(shape: ProcessingS3DataDistributionType, location_name: "S3DataDistributionType"))
    ProcessingS3Input.add_member(:s3_compression_type, Shapes::ShapeRef.new(shape: ProcessingS3CompressionType, location_name: "S3CompressionType"))
    ProcessingS3Input.struct_class = Types::ProcessingS3Input

    ProcessingS3Output.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    ProcessingS3Output.add_member(:local_path, Shapes::ShapeRef.new(shape: ProcessingLocalPath, required: true, location_name: "LocalPath"))
    ProcessingS3Output.add_member(:s3_upload_mode, Shapes::ShapeRef.new(shape: ProcessingS3UploadMode, required: true, location_name: "S3UploadMode"))
    ProcessingS3Output.struct_class = Types::ProcessingS3Output

    ProcessingStoppingCondition.add_member(:max_runtime_in_seconds, Shapes::ShapeRef.new(shape: ProcessingMaxRuntimeInSeconds, required: true, location_name: "MaxRuntimeInSeconds"))
    ProcessingStoppingCondition.struct_class = Types::ProcessingStoppingCondition

    ProductListings.member = Shapes::ShapeRef.new(shape: String)

    ProductionVariant.add_member(:variant_name, Shapes::ShapeRef.new(shape: VariantName, required: true, location_name: "VariantName"))
    ProductionVariant.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    ProductionVariant.add_member(:initial_instance_count, Shapes::ShapeRef.new(shape: InitialTaskCount, location_name: "InitialInstanceCount"))
    ProductionVariant.add_member(:instance_type, Shapes::ShapeRef.new(shape: ProductionVariantInstanceType, location_name: "InstanceType"))
    ProductionVariant.add_member(:initial_variant_weight, Shapes::ShapeRef.new(shape: VariantWeight, location_name: "InitialVariantWeight"))
    ProductionVariant.add_member(:accelerator_type, Shapes::ShapeRef.new(shape: ProductionVariantAcceleratorType, location_name: "AcceleratorType"))
    ProductionVariant.add_member(:core_dump_config, Shapes::ShapeRef.new(shape: ProductionVariantCoreDumpConfig, location_name: "CoreDumpConfig"))
    ProductionVariant.add_member(:serverless_config, Shapes::ShapeRef.new(shape: ProductionVariantServerlessConfig, location_name: "ServerlessConfig"))
    ProductionVariant.struct_class = Types::ProductionVariant

    ProductionVariantCoreDumpConfig.add_member(:destination_s3_uri, Shapes::ShapeRef.new(shape: DestinationS3Uri, required: true, location_name: "DestinationS3Uri"))
    ProductionVariantCoreDumpConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    ProductionVariantCoreDumpConfig.struct_class = Types::ProductionVariantCoreDumpConfig

    ProductionVariantList.member = Shapes::ShapeRef.new(shape: ProductionVariant)

    ProductionVariantServerlessConfig.add_member(:memory_size_in_mb, Shapes::ShapeRef.new(shape: ServerlessMemorySizeInMB, required: true, location_name: "MemorySizeInMB"))
    ProductionVariantServerlessConfig.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: ServerlessMaxConcurrency, required: true, location_name: "MaxConcurrency"))
    ProductionVariantServerlessConfig.struct_class = Types::ProductionVariantServerlessConfig

    ProductionVariantStatus.add_member(:status, Shapes::ShapeRef.new(shape: VariantStatus, required: true, location_name: "Status"))
    ProductionVariantStatus.add_member(:status_message, Shapes::ShapeRef.new(shape: VariantStatusMessage, location_name: "StatusMessage"))
    ProductionVariantStatus.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    ProductionVariantStatus.struct_class = Types::ProductionVariantStatus

    ProductionVariantStatusList.member = Shapes::ShapeRef.new(shape: ProductionVariantStatus)

    ProductionVariantSummary.add_member(:variant_name, Shapes::ShapeRef.new(shape: VariantName, required: true, location_name: "VariantName"))
    ProductionVariantSummary.add_member(:deployed_images, Shapes::ShapeRef.new(shape: DeployedImages, location_name: "DeployedImages"))
    ProductionVariantSummary.add_member(:current_weight, Shapes::ShapeRef.new(shape: VariantWeight, location_name: "CurrentWeight"))
    ProductionVariantSummary.add_member(:desired_weight, Shapes::ShapeRef.new(shape: VariantWeight, location_name: "DesiredWeight"))
    ProductionVariantSummary.add_member(:current_instance_count, Shapes::ShapeRef.new(shape: TaskCount, location_name: "CurrentInstanceCount"))
    ProductionVariantSummary.add_member(:desired_instance_count, Shapes::ShapeRef.new(shape: TaskCount, location_name: "DesiredInstanceCount"))
    ProductionVariantSummary.add_member(:variant_status, Shapes::ShapeRef.new(shape: ProductionVariantStatusList, location_name: "VariantStatus"))
    ProductionVariantSummary.add_member(:current_serverless_config, Shapes::ShapeRef.new(shape: ProductionVariantServerlessConfig, location_name: "CurrentServerlessConfig"))
    ProductionVariantSummary.add_member(:desired_serverless_config, Shapes::ShapeRef.new(shape: ProductionVariantServerlessConfig, location_name: "DesiredServerlessConfig"))
    ProductionVariantSummary.struct_class = Types::ProductionVariantSummary

    ProductionVariantSummaryList.member = Shapes::ShapeRef.new(shape: ProductionVariantSummary)

    ProfilerConfig.add_member(:s3_output_path, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3OutputPath"))
    ProfilerConfig.add_member(:profiling_interval_in_milliseconds, Shapes::ShapeRef.new(shape: ProfilingIntervalInMilliseconds, location_name: "ProfilingIntervalInMilliseconds"))
    ProfilerConfig.add_member(:profiling_parameters, Shapes::ShapeRef.new(shape: ProfilingParameters, location_name: "ProfilingParameters"))
    ProfilerConfig.struct_class = Types::ProfilerConfig

    ProfilerConfigForUpdate.add_member(:s3_output_path, Shapes::ShapeRef.new(shape: S3Uri, location_name: "S3OutputPath"))
    ProfilerConfigForUpdate.add_member(:profiling_interval_in_milliseconds, Shapes::ShapeRef.new(shape: ProfilingIntervalInMilliseconds, location_name: "ProfilingIntervalInMilliseconds"))
    ProfilerConfigForUpdate.add_member(:profiling_parameters, Shapes::ShapeRef.new(shape: ProfilingParameters, location_name: "ProfilingParameters"))
    ProfilerConfigForUpdate.add_member(:disable_profiler, Shapes::ShapeRef.new(shape: DisableProfiler, location_name: "DisableProfiler"))
    ProfilerConfigForUpdate.struct_class = Types::ProfilerConfigForUpdate

    ProfilerRuleConfiguration.add_member(:rule_configuration_name, Shapes::ShapeRef.new(shape: RuleConfigurationName, required: true, location_name: "RuleConfigurationName"))
    ProfilerRuleConfiguration.add_member(:local_path, Shapes::ShapeRef.new(shape: DirectoryPath, location_name: "LocalPath"))
    ProfilerRuleConfiguration.add_member(:s3_output_path, Shapes::ShapeRef.new(shape: S3Uri, location_name: "S3OutputPath"))
    ProfilerRuleConfiguration.add_member(:rule_evaluator_image, Shapes::ShapeRef.new(shape: AlgorithmImage, required: true, location_name: "RuleEvaluatorImage"))
    ProfilerRuleConfiguration.add_member(:instance_type, Shapes::ShapeRef.new(shape: ProcessingInstanceType, location_name: "InstanceType"))
    ProfilerRuleConfiguration.add_member(:volume_size_in_gb, Shapes::ShapeRef.new(shape: OptionalVolumeSizeInGB, location_name: "VolumeSizeInGB"))
    ProfilerRuleConfiguration.add_member(:rule_parameters, Shapes::ShapeRef.new(shape: RuleParameters, location_name: "RuleParameters"))
    ProfilerRuleConfiguration.struct_class = Types::ProfilerRuleConfiguration

    ProfilerRuleConfigurations.member = Shapes::ShapeRef.new(shape: ProfilerRuleConfiguration)

    ProfilerRuleEvaluationStatus.add_member(:rule_configuration_name, Shapes::ShapeRef.new(shape: RuleConfigurationName, location_name: "RuleConfigurationName"))
    ProfilerRuleEvaluationStatus.add_member(:rule_evaluation_job_arn, Shapes::ShapeRef.new(shape: ProcessingJobArn, location_name: "RuleEvaluationJobArn"))
    ProfilerRuleEvaluationStatus.add_member(:rule_evaluation_status, Shapes::ShapeRef.new(shape: RuleEvaluationStatus, location_name: "RuleEvaluationStatus"))
    ProfilerRuleEvaluationStatus.add_member(:status_details, Shapes::ShapeRef.new(shape: StatusDetails, location_name: "StatusDetails"))
    ProfilerRuleEvaluationStatus.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    ProfilerRuleEvaluationStatus.struct_class = Types::ProfilerRuleEvaluationStatus

    ProfilerRuleEvaluationStatuses.member = Shapes::ShapeRef.new(shape: ProfilerRuleEvaluationStatus)

    ProfilingParameters.key = Shapes::ShapeRef.new(shape: ConfigKey)
    ProfilingParameters.value = Shapes::ShapeRef.new(shape: ConfigValue)

    Project.add_member(:project_arn, Shapes::ShapeRef.new(shape: ProjectArn, location_name: "ProjectArn"))
    Project.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectEntityName, location_name: "ProjectName"))
    Project.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, location_name: "ProjectId"))
    Project.add_member(:project_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "ProjectDescription"))
    Project.add_member(:service_catalog_provisioning_details, Shapes::ShapeRef.new(shape: ServiceCatalogProvisioningDetails, location_name: "ServiceCatalogProvisioningDetails"))
    Project.add_member(:service_catalog_provisioned_product_details, Shapes::ShapeRef.new(shape: ServiceCatalogProvisionedProductDetails, location_name: "ServiceCatalogProvisionedProductDetails"))
    Project.add_member(:project_status, Shapes::ShapeRef.new(shape: ProjectStatus, location_name: "ProjectStatus"))
    Project.add_member(:created_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "CreatedBy"))
    Project.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    Project.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    Project.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    Project.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "LastModifiedBy"))
    Project.struct_class = Types::Project

    ProjectSummary.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectEntityName, required: true, location_name: "ProjectName"))
    ProjectSummary.add_member(:project_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "ProjectDescription"))
    ProjectSummary.add_member(:project_arn, Shapes::ShapeRef.new(shape: ProjectArn, required: true, location_name: "ProjectArn"))
    ProjectSummary.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "ProjectId"))
    ProjectSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    ProjectSummary.add_member(:project_status, Shapes::ShapeRef.new(shape: ProjectStatus, required: true, location_name: "ProjectStatus"))
    ProjectSummary.struct_class = Types::ProjectSummary

    ProjectSummaryList.member = Shapes::ShapeRef.new(shape: ProjectSummary)

    PropertyNameQuery.add_member(:property_name_hint, Shapes::ShapeRef.new(shape: PropertyNameHint, required: true, location_name: "PropertyNameHint"))
    PropertyNameQuery.struct_class = Types::PropertyNameQuery

    PropertyNameSuggestion.add_member(:property_name, Shapes::ShapeRef.new(shape: ResourcePropertyName, location_name: "PropertyName"))
    PropertyNameSuggestion.struct_class = Types::PropertyNameSuggestion

    PropertyNameSuggestionList.member = Shapes::ShapeRef.new(shape: PropertyNameSuggestion)

    ProvisioningParameter.add_member(:key, Shapes::ShapeRef.new(shape: ProvisioningParameterKey, location_name: "Key"))
    ProvisioningParameter.add_member(:value, Shapes::ShapeRef.new(shape: ProvisioningParameterValue, location_name: "Value"))
    ProvisioningParameter.struct_class = Types::ProvisioningParameter

    ProvisioningParameters.member = Shapes::ShapeRef.new(shape: ProvisioningParameter)

    PublicWorkforceTaskPrice.add_member(:amount_in_usd, Shapes::ShapeRef.new(shape: USD, location_name: "AmountInUsd"))
    PublicWorkforceTaskPrice.struct_class = Types::PublicWorkforceTaskPrice

    PutModelPackageGroupPolicyInput.add_member(:model_package_group_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "ModelPackageGroupName"))
    PutModelPackageGroupPolicyInput.add_member(:resource_policy, Shapes::ShapeRef.new(shape: PolicyString, required: true, location_name: "ResourcePolicy"))
    PutModelPackageGroupPolicyInput.struct_class = Types::PutModelPackageGroupPolicyInput

    PutModelPackageGroupPolicyOutput.add_member(:model_package_group_arn, Shapes::ShapeRef.new(shape: ModelPackageGroupArn, required: true, location_name: "ModelPackageGroupArn"))
    PutModelPackageGroupPolicyOutput.struct_class = Types::PutModelPackageGroupPolicyOutput

    QualityCheckStepMetadata.add_member(:check_type, Shapes::ShapeRef.new(shape: String256, location_name: "CheckType"))
    QualityCheckStepMetadata.add_member(:baseline_used_for_drift_check_statistics, Shapes::ShapeRef.new(shape: String1024, location_name: "BaselineUsedForDriftCheckStatistics"))
    QualityCheckStepMetadata.add_member(:baseline_used_for_drift_check_constraints, Shapes::ShapeRef.new(shape: String1024, location_name: "BaselineUsedForDriftCheckConstraints"))
    QualityCheckStepMetadata.add_member(:calculated_baseline_statistics, Shapes::ShapeRef.new(shape: String1024, location_name: "CalculatedBaselineStatistics"))
    QualityCheckStepMetadata.add_member(:calculated_baseline_constraints, Shapes::ShapeRef.new(shape: String1024, location_name: "CalculatedBaselineConstraints"))
    QualityCheckStepMetadata.add_member(:model_package_group_name, Shapes::ShapeRef.new(shape: String256, location_name: "ModelPackageGroupName"))
    QualityCheckStepMetadata.add_member(:violation_report, Shapes::ShapeRef.new(shape: String1024, location_name: "ViolationReport"))
    QualityCheckStepMetadata.add_member(:check_job_arn, Shapes::ShapeRef.new(shape: String256, location_name: "CheckJobArn"))
    QualityCheckStepMetadata.add_member(:skip_check, Shapes::ShapeRef.new(shape: Boolean, location_name: "SkipCheck"))
    QualityCheckStepMetadata.add_member(:register_new_baseline, Shapes::ShapeRef.new(shape: Boolean, location_name: "RegisterNewBaseline"))
    QualityCheckStepMetadata.struct_class = Types::QualityCheckStepMetadata

    QueryFilters.add_member(:types, Shapes::ShapeRef.new(shape: QueryTypes, location_name: "Types"))
    QueryFilters.add_member(:lineage_types, Shapes::ShapeRef.new(shape: QueryLineageTypes, location_name: "LineageTypes"))
    QueryFilters.add_member(:created_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedBefore"))
    QueryFilters.add_member(:created_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAfter"))
    QueryFilters.add_member(:modified_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ModifiedBefore"))
    QueryFilters.add_member(:modified_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ModifiedAfter"))
    QueryFilters.add_member(:properties, Shapes::ShapeRef.new(shape: QueryProperties, location_name: "Properties"))
    QueryFilters.struct_class = Types::QueryFilters

    QueryLineageRequest.add_member(:start_arns, Shapes::ShapeRef.new(shape: QueryLineageStartArns, required: true, location_name: "StartArns"))
    QueryLineageRequest.add_member(:direction, Shapes::ShapeRef.new(shape: Direction, location_name: "Direction"))
    QueryLineageRequest.add_member(:include_edges, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeEdges"))
    QueryLineageRequest.add_member(:filters, Shapes::ShapeRef.new(shape: QueryFilters, location_name: "Filters"))
    QueryLineageRequest.add_member(:max_depth, Shapes::ShapeRef.new(shape: QueryLineageMaxDepth, location_name: "MaxDepth"))
    QueryLineageRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: QueryLineageMaxResults, location_name: "MaxResults"))
    QueryLineageRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String8192, location_name: "NextToken"))
    QueryLineageRequest.struct_class = Types::QueryLineageRequest

    QueryLineageResponse.add_member(:vertices, Shapes::ShapeRef.new(shape: Vertices, location_name: "Vertices"))
    QueryLineageResponse.add_member(:edges, Shapes::ShapeRef.new(shape: Edges, location_name: "Edges"))
    QueryLineageResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String8192, location_name: "NextToken"))
    QueryLineageResponse.struct_class = Types::QueryLineageResponse

    QueryLineageStartArns.member = Shapes::ShapeRef.new(shape: AssociationEntityArn)

    QueryLineageTypes.member = Shapes::ShapeRef.new(shape: LineageType)

    QueryProperties.key = Shapes::ShapeRef.new(shape: String256)
    QueryProperties.value = Shapes::ShapeRef.new(shape: String256)

    QueryTypes.member = Shapes::ShapeRef.new(shape: String40)

    RSessionAppSettings.struct_class = Types::RSessionAppSettings

    RStudioServerProAppSettings.add_member(:access_status, Shapes::ShapeRef.new(shape: RStudioServerProAccessStatus, location_name: "AccessStatus"))
    RStudioServerProAppSettings.add_member(:user_group, Shapes::ShapeRef.new(shape: RStudioServerProUserGroup, location_name: "UserGroup"))
    RStudioServerProAppSettings.struct_class = Types::RStudioServerProAppSettings

    RStudioServerProDomainSettings.add_member(:domain_execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "DomainExecutionRoleArn"))
    RStudioServerProDomainSettings.add_member(:r_studio_connect_url, Shapes::ShapeRef.new(shape: String, location_name: "RStudioConnectUrl"))
    RStudioServerProDomainSettings.add_member(:r_studio_package_manager_url, Shapes::ShapeRef.new(shape: String, location_name: "RStudioPackageManagerUrl"))
    RStudioServerProDomainSettings.add_member(:default_resource_spec, Shapes::ShapeRef.new(shape: ResourceSpec, location_name: "DefaultResourceSpec"))
    RStudioServerProDomainSettings.struct_class = Types::RStudioServerProDomainSettings

    RStudioServerProDomainSettingsForUpdate.add_member(:domain_execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "DomainExecutionRoleArn"))
    RStudioServerProDomainSettingsForUpdate.add_member(:default_resource_spec, Shapes::ShapeRef.new(shape: ResourceSpec, location_name: "DefaultResourceSpec"))
    RStudioServerProDomainSettingsForUpdate.struct_class = Types::RStudioServerProDomainSettingsForUpdate

    RealtimeInferenceInstanceTypes.member = Shapes::ShapeRef.new(shape: ProductionVariantInstanceType)

    RecommendationJobInputConfig.add_member(:model_package_version_arn, Shapes::ShapeRef.new(shape: ModelPackageArn, required: true, location_name: "ModelPackageVersionArn"))
    RecommendationJobInputConfig.add_member(:job_duration_in_seconds, Shapes::ShapeRef.new(shape: JobDurationInSeconds, location_name: "JobDurationInSeconds"))
    RecommendationJobInputConfig.add_member(:traffic_pattern, Shapes::ShapeRef.new(shape: TrafficPattern, location_name: "TrafficPattern"))
    RecommendationJobInputConfig.add_member(:resource_limit, Shapes::ShapeRef.new(shape: RecommendationJobResourceLimit, location_name: "ResourceLimit"))
    RecommendationJobInputConfig.add_member(:endpoint_configurations, Shapes::ShapeRef.new(shape: EndpointInputConfigurations, location_name: "EndpointConfigurations"))
    RecommendationJobInputConfig.struct_class = Types::RecommendationJobInputConfig

    RecommendationJobResourceLimit.add_member(:max_number_of_tests, Shapes::ShapeRef.new(shape: MaxNumberOfTests, location_name: "MaxNumberOfTests"))
    RecommendationJobResourceLimit.add_member(:max_parallel_of_tests, Shapes::ShapeRef.new(shape: MaxParallelOfTests, location_name: "MaxParallelOfTests"))
    RecommendationJobResourceLimit.struct_class = Types::RecommendationJobResourceLimit

    RecommendationJobStoppingConditions.add_member(:max_invocations, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxInvocations"))
    RecommendationJobStoppingConditions.add_member(:model_latency_thresholds, Shapes::ShapeRef.new(shape: ModelLatencyThresholds, location_name: "ModelLatencyThresholds"))
    RecommendationJobStoppingConditions.struct_class = Types::RecommendationJobStoppingConditions

    RecommendationMetrics.add_member(:cost_per_hour, Shapes::ShapeRef.new(shape: Float, required: true, location_name: "CostPerHour"))
    RecommendationMetrics.add_member(:cost_per_inference, Shapes::ShapeRef.new(shape: Float, required: true, location_name: "CostPerInference"))
    RecommendationMetrics.add_member(:max_invocations, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "MaxInvocations"))
    RecommendationMetrics.add_member(:model_latency, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "ModelLatency"))
    RecommendationMetrics.struct_class = Types::RecommendationMetrics

    RedshiftDatasetDefinition.add_member(:cluster_id, Shapes::ShapeRef.new(shape: RedshiftClusterId, required: true, location_name: "ClusterId"))
    RedshiftDatasetDefinition.add_member(:database, Shapes::ShapeRef.new(shape: RedshiftDatabase, required: true, location_name: "Database"))
    RedshiftDatasetDefinition.add_member(:db_user, Shapes::ShapeRef.new(shape: RedshiftUserName, required: true, location_name: "DbUser"))
    RedshiftDatasetDefinition.add_member(:query_string, Shapes::ShapeRef.new(shape: RedshiftQueryString, required: true, location_name: "QueryString"))
    RedshiftDatasetDefinition.add_member(:cluster_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "ClusterRoleArn"))
    RedshiftDatasetDefinition.add_member(:output_s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "OutputS3Uri"))
    RedshiftDatasetDefinition.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    RedshiftDatasetDefinition.add_member(:output_format, Shapes::ShapeRef.new(shape: RedshiftResultFormat, required: true, location_name: "OutputFormat"))
    RedshiftDatasetDefinition.add_member(:output_compression, Shapes::ShapeRef.new(shape: RedshiftResultCompressionType, location_name: "OutputCompression"))
    RedshiftDatasetDefinition.struct_class = Types::RedshiftDatasetDefinition

    RegisterDevicesRequest.add_member(:device_fleet_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "DeviceFleetName"))
    RegisterDevicesRequest.add_member(:devices, Shapes::ShapeRef.new(shape: Devices, required: true, location_name: "Devices"))
    RegisterDevicesRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    RegisterDevicesRequest.struct_class = Types::RegisterDevicesRequest

    RegisterModelStepMetadata.add_member(:arn, Shapes::ShapeRef.new(shape: String256, location_name: "Arn"))
    RegisterModelStepMetadata.struct_class = Types::RegisterModelStepMetadata

    RenderUiTemplateRequest.add_member(:ui_template, Shapes::ShapeRef.new(shape: UiTemplate, location_name: "UiTemplate"))
    RenderUiTemplateRequest.add_member(:task, Shapes::ShapeRef.new(shape: RenderableTask, required: true, location_name: "Task"))
    RenderUiTemplateRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    RenderUiTemplateRequest.add_member(:human_task_ui_arn, Shapes::ShapeRef.new(shape: HumanTaskUiArn, location_name: "HumanTaskUiArn"))
    RenderUiTemplateRequest.struct_class = Types::RenderUiTemplateRequest

    RenderUiTemplateResponse.add_member(:rendered_content, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RenderedContent"))
    RenderUiTemplateResponse.add_member(:errors, Shapes::ShapeRef.new(shape: RenderingErrorList, required: true, location_name: "Errors"))
    RenderUiTemplateResponse.struct_class = Types::RenderUiTemplateResponse

    RenderableTask.add_member(:input, Shapes::ShapeRef.new(shape: TaskInput, required: true, location_name: "Input"))
    RenderableTask.struct_class = Types::RenderableTask

    RenderingError.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Code"))
    RenderingError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    RenderingError.struct_class = Types::RenderingError

    RenderingErrorList.member = Shapes::ShapeRef.new(shape: RenderingError)

    RepositoryAuthConfig.add_member(:repository_credentials_provider_arn, Shapes::ShapeRef.new(shape: RepositoryCredentialsProviderArn, required: true, location_name: "RepositoryCredentialsProviderArn"))
    RepositoryAuthConfig.struct_class = Types::RepositoryAuthConfig

    ResolvedAttributes.add_member(:auto_ml_job_objective, Shapes::ShapeRef.new(shape: AutoMLJobObjective, location_name: "AutoMLJobObjective"))
    ResolvedAttributes.add_member(:problem_type, Shapes::ShapeRef.new(shape: ProblemType, location_name: "ProblemType"))
    ResolvedAttributes.add_member(:completion_criteria, Shapes::ShapeRef.new(shape: AutoMLJobCompletionCriteria, location_name: "CompletionCriteria"))
    ResolvedAttributes.struct_class = Types::ResolvedAttributes

    ResourceConfig.add_member(:instance_type, Shapes::ShapeRef.new(shape: TrainingInstanceType, required: true, location_name: "InstanceType"))
    ResourceConfig.add_member(:instance_count, Shapes::ShapeRef.new(shape: TrainingInstanceCount, required: true, location_name: "InstanceCount"))
    ResourceConfig.add_member(:volume_size_in_gb, Shapes::ShapeRef.new(shape: VolumeSizeInGB, required: true, location_name: "VolumeSizeInGB"))
    ResourceConfig.add_member(:volume_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "VolumeKmsKeyId"))
    ResourceConfig.struct_class = Types::ResourceConfig

    ResourceInUse.add_member(:message, Shapes::ShapeRef.new(shape: FailureReason, location_name: "Message"))
    ResourceInUse.struct_class = Types::ResourceInUse

    ResourceLimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: FailureReason, location_name: "Message"))
    ResourceLimitExceeded.struct_class = Types::ResourceLimitExceeded

    ResourceLimits.add_member(:max_number_of_training_jobs, Shapes::ShapeRef.new(shape: MaxNumberOfTrainingJobs, required: true, location_name: "MaxNumberOfTrainingJobs"))
    ResourceLimits.add_member(:max_parallel_training_jobs, Shapes::ShapeRef.new(shape: MaxParallelTrainingJobs, required: true, location_name: "MaxParallelTrainingJobs"))
    ResourceLimits.struct_class = Types::ResourceLimits

    ResourceNotFound.add_member(:message, Shapes::ShapeRef.new(shape: FailureReason, location_name: "Message"))
    ResourceNotFound.struct_class = Types::ResourceNotFound

    ResourceSpec.add_member(:sage_maker_image_arn, Shapes::ShapeRef.new(shape: ImageArn, location_name: "SageMakerImageArn"))
    ResourceSpec.add_member(:sage_maker_image_version_arn, Shapes::ShapeRef.new(shape: ImageVersionArn, location_name: "SageMakerImageVersionArn"))
    ResourceSpec.add_member(:instance_type, Shapes::ShapeRef.new(shape: AppInstanceType, location_name: "InstanceType"))
    ResourceSpec.add_member(:lifecycle_config_arn, Shapes::ShapeRef.new(shape: StudioLifecycleConfigArn, location_name: "LifecycleConfigArn"))
    ResourceSpec.struct_class = Types::ResourceSpec

    ResponseMIMETypes.member = Shapes::ShapeRef.new(shape: ResponseMIMEType)

    RetentionPolicy.add_member(:home_efs_file_system, Shapes::ShapeRef.new(shape: RetentionType, location_name: "HomeEfsFileSystem"))
    RetentionPolicy.struct_class = Types::RetentionPolicy

    RetryPipelineExecutionRequest.add_member(:pipeline_execution_arn, Shapes::ShapeRef.new(shape: PipelineExecutionArn, required: true, location_name: "PipelineExecutionArn"))
    RetryPipelineExecutionRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    RetryPipelineExecutionRequest.add_member(:parallelism_configuration, Shapes::ShapeRef.new(shape: ParallelismConfiguration, location_name: "ParallelismConfiguration"))
    RetryPipelineExecutionRequest.struct_class = Types::RetryPipelineExecutionRequest

    RetryPipelineExecutionResponse.add_member(:pipeline_execution_arn, Shapes::ShapeRef.new(shape: PipelineExecutionArn, location_name: "PipelineExecutionArn"))
    RetryPipelineExecutionResponse.struct_class = Types::RetryPipelineExecutionResponse

    RetryStrategy.add_member(:maximum_retry_attempts, Shapes::ShapeRef.new(shape: MaximumRetryAttempts, required: true, location_name: "MaximumRetryAttempts"))
    RetryStrategy.struct_class = Types::RetryStrategy

    RuleParameters.key = Shapes::ShapeRef.new(shape: ConfigKey)
    RuleParameters.value = Shapes::ShapeRef.new(shape: ConfigValue)

    S3DataSource.add_member(:s3_data_type, Shapes::ShapeRef.new(shape: S3DataType, required: true, location_name: "S3DataType"))
    S3DataSource.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    S3DataSource.add_member(:s3_data_distribution_type, Shapes::ShapeRef.new(shape: S3DataDistribution, location_name: "S3DataDistributionType"))
    S3DataSource.add_member(:attribute_names, Shapes::ShapeRef.new(shape: AttributeNames, location_name: "AttributeNames"))
    S3DataSource.struct_class = Types::S3DataSource

    S3StorageConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    S3StorageConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    S3StorageConfig.add_member(:resolved_output_s3_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "ResolvedOutputS3Uri"))
    S3StorageConfig.struct_class = Types::S3StorageConfig

    ScheduleConfig.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, required: true, location_name: "ScheduleExpression"))
    ScheduleConfig.struct_class = Types::ScheduleConfig

    SearchExpression.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    SearchExpression.add_member(:nested_filters, Shapes::ShapeRef.new(shape: NestedFiltersList, location_name: "NestedFilters"))
    SearchExpression.add_member(:sub_expressions, Shapes::ShapeRef.new(shape: SearchExpressionList, location_name: "SubExpressions"))
    SearchExpression.add_member(:operator, Shapes::ShapeRef.new(shape: BooleanOperator, location_name: "Operator"))
    SearchExpression.struct_class = Types::SearchExpression

    SearchExpressionList.member = Shapes::ShapeRef.new(shape: SearchExpression)

    SearchRecord.add_member(:training_job, Shapes::ShapeRef.new(shape: TrainingJob, location_name: "TrainingJob"))
    SearchRecord.add_member(:experiment, Shapes::ShapeRef.new(shape: Experiment, location_name: "Experiment"))
    SearchRecord.add_member(:trial, Shapes::ShapeRef.new(shape: Trial, location_name: "Trial"))
    SearchRecord.add_member(:trial_component, Shapes::ShapeRef.new(shape: TrialComponent, location_name: "TrialComponent"))
    SearchRecord.add_member(:endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "Endpoint"))
    SearchRecord.add_member(:model_package, Shapes::ShapeRef.new(shape: ModelPackage, location_name: "ModelPackage"))
    SearchRecord.add_member(:model_package_group, Shapes::ShapeRef.new(shape: ModelPackageGroup, location_name: "ModelPackageGroup"))
    SearchRecord.add_member(:pipeline, Shapes::ShapeRef.new(shape: Pipeline, location_name: "Pipeline"))
    SearchRecord.add_member(:pipeline_execution, Shapes::ShapeRef.new(shape: PipelineExecution, location_name: "PipelineExecution"))
    SearchRecord.add_member(:feature_group, Shapes::ShapeRef.new(shape: FeatureGroup, location_name: "FeatureGroup"))
    SearchRecord.add_member(:project, Shapes::ShapeRef.new(shape: Project, location_name: "Project"))
    SearchRecord.struct_class = Types::SearchRecord

    SearchRequest.add_member(:resource, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "Resource"))
    SearchRequest.add_member(:search_expression, Shapes::ShapeRef.new(shape: SearchExpression, location_name: "SearchExpression"))
    SearchRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: ResourcePropertyName, location_name: "SortBy"))
    SearchRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SearchSortOrder, location_name: "SortOrder"))
    SearchRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    SearchRequest.struct_class = Types::SearchRequest

    SearchResponse.add_member(:results, Shapes::ShapeRef.new(shape: SearchResultsList, location_name: "Results"))
    SearchResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchResponse.struct_class = Types::SearchResponse

    SearchResultsList.member = Shapes::ShapeRef.new(shape: SearchRecord)

    SecondaryStatusTransition.add_member(:status, Shapes::ShapeRef.new(shape: SecondaryStatus, required: true, location_name: "Status"))
    SecondaryStatusTransition.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    SecondaryStatusTransition.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    SecondaryStatusTransition.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    SecondaryStatusTransition.struct_class = Types::SecondaryStatusTransition

    SecondaryStatusTransitions.member = Shapes::ShapeRef.new(shape: SecondaryStatusTransition)

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    SendPipelineExecutionStepFailureRequest.add_member(:callback_token, Shapes::ShapeRef.new(shape: CallbackToken, required: true, location_name: "CallbackToken"))
    SendPipelineExecutionStepFailureRequest.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String256, location_name: "FailureReason"))
    SendPipelineExecutionStepFailureRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    SendPipelineExecutionStepFailureRequest.struct_class = Types::SendPipelineExecutionStepFailureRequest

    SendPipelineExecutionStepFailureResponse.add_member(:pipeline_execution_arn, Shapes::ShapeRef.new(shape: PipelineExecutionArn, location_name: "PipelineExecutionArn"))
    SendPipelineExecutionStepFailureResponse.struct_class = Types::SendPipelineExecutionStepFailureResponse

    SendPipelineExecutionStepSuccessRequest.add_member(:callback_token, Shapes::ShapeRef.new(shape: CallbackToken, required: true, location_name: "CallbackToken"))
    SendPipelineExecutionStepSuccessRequest.add_member(:output_parameters, Shapes::ShapeRef.new(shape: OutputParameterList, location_name: "OutputParameters"))
    SendPipelineExecutionStepSuccessRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    SendPipelineExecutionStepSuccessRequest.struct_class = Types::SendPipelineExecutionStepSuccessRequest

    SendPipelineExecutionStepSuccessResponse.add_member(:pipeline_execution_arn, Shapes::ShapeRef.new(shape: PipelineExecutionArn, location_name: "PipelineExecutionArn"))
    SendPipelineExecutionStepSuccessResponse.struct_class = Types::SendPipelineExecutionStepSuccessResponse

    ServiceCatalogProvisionedProductDetails.add_member(:provisioned_product_id, Shapes::ShapeRef.new(shape: ServiceCatalogEntityId, location_name: "ProvisionedProductId"))
    ServiceCatalogProvisionedProductDetails.add_member(:provisioned_product_status_message, Shapes::ShapeRef.new(shape: ProvisionedProductStatusMessage, location_name: "ProvisionedProductStatusMessage"))
    ServiceCatalogProvisionedProductDetails.struct_class = Types::ServiceCatalogProvisionedProductDetails

    ServiceCatalogProvisioningDetails.add_member(:product_id, Shapes::ShapeRef.new(shape: ServiceCatalogEntityId, required: true, location_name: "ProductId"))
    ServiceCatalogProvisioningDetails.add_member(:provisioning_artifact_id, Shapes::ShapeRef.new(shape: ServiceCatalogEntityId, location_name: "ProvisioningArtifactId"))
    ServiceCatalogProvisioningDetails.add_member(:path_id, Shapes::ShapeRef.new(shape: ServiceCatalogEntityId, location_name: "PathId"))
    ServiceCatalogProvisioningDetails.add_member(:provisioning_parameters, Shapes::ShapeRef.new(shape: ProvisioningParameters, location_name: "ProvisioningParameters"))
    ServiceCatalogProvisioningDetails.struct_class = Types::ServiceCatalogProvisioningDetails

    ServiceCatalogProvisioningUpdateDetails.add_member(:provisioning_artifact_id, Shapes::ShapeRef.new(shape: ServiceCatalogEntityId, location_name: "ProvisioningArtifactId"))
    ServiceCatalogProvisioningUpdateDetails.add_member(:provisioning_parameters, Shapes::ShapeRef.new(shape: ProvisioningParameters, location_name: "ProvisioningParameters"))
    ServiceCatalogProvisioningUpdateDetails.struct_class = Types::ServiceCatalogProvisioningUpdateDetails

    SharingSettings.add_member(:notebook_output_option, Shapes::ShapeRef.new(shape: NotebookOutputOption, location_name: "NotebookOutputOption"))
    SharingSettings.add_member(:s3_output_path, Shapes::ShapeRef.new(shape: S3Uri, location_name: "S3OutputPath"))
    SharingSettings.add_member(:s3_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "S3KmsKeyId"))
    SharingSettings.struct_class = Types::SharingSettings

    ShuffleConfig.add_member(:seed, Shapes::ShapeRef.new(shape: Seed, required: true, location_name: "Seed"))
    ShuffleConfig.struct_class = Types::ShuffleConfig

    SourceAlgorithm.add_member(:model_data_url, Shapes::ShapeRef.new(shape: Url, location_name: "ModelDataUrl"))
    SourceAlgorithm.add_member(:algorithm_name, Shapes::ShapeRef.new(shape: ArnOrName, required: true, location_name: "AlgorithmName"))
    SourceAlgorithm.struct_class = Types::SourceAlgorithm

    SourceAlgorithmList.member = Shapes::ShapeRef.new(shape: SourceAlgorithm)

    SourceAlgorithmSpecification.add_member(:source_algorithms, Shapes::ShapeRef.new(shape: SourceAlgorithmList, required: true, location_name: "SourceAlgorithms"))
    SourceAlgorithmSpecification.struct_class = Types::SourceAlgorithmSpecification

    SourceIpConfig.add_member(:cidrs, Shapes::ShapeRef.new(shape: Cidrs, required: true, location_name: "Cidrs"))
    SourceIpConfig.struct_class = Types::SourceIpConfig

    StartMonitoringScheduleRequest.add_member(:monitoring_schedule_name, Shapes::ShapeRef.new(shape: MonitoringScheduleName, required: true, location_name: "MonitoringScheduleName"))
    StartMonitoringScheduleRequest.struct_class = Types::StartMonitoringScheduleRequest

    StartNotebookInstanceInput.add_member(:notebook_instance_name, Shapes::ShapeRef.new(shape: NotebookInstanceName, required: true, location_name: "NotebookInstanceName"))
    StartNotebookInstanceInput.struct_class = Types::StartNotebookInstanceInput

    StartPipelineExecutionRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "PipelineName"))
    StartPipelineExecutionRequest.add_member(:pipeline_execution_display_name, Shapes::ShapeRef.new(shape: PipelineExecutionName, location_name: "PipelineExecutionDisplayName"))
    StartPipelineExecutionRequest.add_member(:pipeline_parameters, Shapes::ShapeRef.new(shape: ParameterList, location_name: "PipelineParameters"))
    StartPipelineExecutionRequest.add_member(:pipeline_execution_description, Shapes::ShapeRef.new(shape: PipelineExecutionDescription, location_name: "PipelineExecutionDescription"))
    StartPipelineExecutionRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    StartPipelineExecutionRequest.add_member(:parallelism_configuration, Shapes::ShapeRef.new(shape: ParallelismConfiguration, location_name: "ParallelismConfiguration"))
    StartPipelineExecutionRequest.struct_class = Types::StartPipelineExecutionRequest

    StartPipelineExecutionResponse.add_member(:pipeline_execution_arn, Shapes::ShapeRef.new(shape: PipelineExecutionArn, location_name: "PipelineExecutionArn"))
    StartPipelineExecutionResponse.struct_class = Types::StartPipelineExecutionResponse

    StopAutoMLJobRequest.add_member(:auto_ml_job_name, Shapes::ShapeRef.new(shape: AutoMLJobName, required: true, location_name: "AutoMLJobName"))
    StopAutoMLJobRequest.struct_class = Types::StopAutoMLJobRequest

    StopCompilationJobRequest.add_member(:compilation_job_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "CompilationJobName"))
    StopCompilationJobRequest.struct_class = Types::StopCompilationJobRequest

    StopEdgePackagingJobRequest.add_member(:edge_packaging_job_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "EdgePackagingJobName"))
    StopEdgePackagingJobRequest.struct_class = Types::StopEdgePackagingJobRequest

    StopHyperParameterTuningJobRequest.add_member(:hyper_parameter_tuning_job_name, Shapes::ShapeRef.new(shape: HyperParameterTuningJobName, required: true, location_name: "HyperParameterTuningJobName"))
    StopHyperParameterTuningJobRequest.struct_class = Types::StopHyperParameterTuningJobRequest

    StopInferenceRecommendationsJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: RecommendationJobName, required: true, location_name: "JobName"))
    StopInferenceRecommendationsJobRequest.struct_class = Types::StopInferenceRecommendationsJobRequest

    StopLabelingJobRequest.add_member(:labeling_job_name, Shapes::ShapeRef.new(shape: LabelingJobName, required: true, location_name: "LabelingJobName"))
    StopLabelingJobRequest.struct_class = Types::StopLabelingJobRequest

    StopMonitoringScheduleRequest.add_member(:monitoring_schedule_name, Shapes::ShapeRef.new(shape: MonitoringScheduleName, required: true, location_name: "MonitoringScheduleName"))
    StopMonitoringScheduleRequest.struct_class = Types::StopMonitoringScheduleRequest

    StopNotebookInstanceInput.add_member(:notebook_instance_name, Shapes::ShapeRef.new(shape: NotebookInstanceName, required: true, location_name: "NotebookInstanceName"))
    StopNotebookInstanceInput.struct_class = Types::StopNotebookInstanceInput

    StopPipelineExecutionRequest.add_member(:pipeline_execution_arn, Shapes::ShapeRef.new(shape: PipelineExecutionArn, required: true, location_name: "PipelineExecutionArn"))
    StopPipelineExecutionRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    StopPipelineExecutionRequest.struct_class = Types::StopPipelineExecutionRequest

    StopPipelineExecutionResponse.add_member(:pipeline_execution_arn, Shapes::ShapeRef.new(shape: PipelineExecutionArn, location_name: "PipelineExecutionArn"))
    StopPipelineExecutionResponse.struct_class = Types::StopPipelineExecutionResponse

    StopProcessingJobRequest.add_member(:processing_job_name, Shapes::ShapeRef.new(shape: ProcessingJobName, required: true, location_name: "ProcessingJobName"))
    StopProcessingJobRequest.struct_class = Types::StopProcessingJobRequest

    StopTrainingJobRequest.add_member(:training_job_name, Shapes::ShapeRef.new(shape: TrainingJobName, required: true, location_name: "TrainingJobName"))
    StopTrainingJobRequest.struct_class = Types::StopTrainingJobRequest

    StopTransformJobRequest.add_member(:transform_job_name, Shapes::ShapeRef.new(shape: TransformJobName, required: true, location_name: "TransformJobName"))
    StopTransformJobRequest.struct_class = Types::StopTransformJobRequest

    StoppingCondition.add_member(:max_runtime_in_seconds, Shapes::ShapeRef.new(shape: MaxRuntimeInSeconds, location_name: "MaxRuntimeInSeconds"))
    StoppingCondition.add_member(:max_wait_time_in_seconds, Shapes::ShapeRef.new(shape: MaxWaitTimeInSeconds, location_name: "MaxWaitTimeInSeconds"))
    StoppingCondition.struct_class = Types::StoppingCondition

    StudioLifecycleConfigDetails.add_member(:studio_lifecycle_config_arn, Shapes::ShapeRef.new(shape: StudioLifecycleConfigArn, location_name: "StudioLifecycleConfigArn"))
    StudioLifecycleConfigDetails.add_member(:studio_lifecycle_config_name, Shapes::ShapeRef.new(shape: StudioLifecycleConfigName, location_name: "StudioLifecycleConfigName"))
    StudioLifecycleConfigDetails.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    StudioLifecycleConfigDetails.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    StudioLifecycleConfigDetails.add_member(:studio_lifecycle_config_app_type, Shapes::ShapeRef.new(shape: StudioLifecycleConfigAppType, location_name: "StudioLifecycleConfigAppType"))
    StudioLifecycleConfigDetails.struct_class = Types::StudioLifecycleConfigDetails

    StudioLifecycleConfigsList.member = Shapes::ShapeRef.new(shape: StudioLifecycleConfigDetails)

    Subnets.member = Shapes::ShapeRef.new(shape: SubnetId)

    SubscribedWorkteam.add_member(:workteam_arn, Shapes::ShapeRef.new(shape: WorkteamArn, required: true, location_name: "WorkteamArn"))
    SubscribedWorkteam.add_member(:marketplace_title, Shapes::ShapeRef.new(shape: String200, location_name: "MarketplaceTitle"))
    SubscribedWorkteam.add_member(:seller_name, Shapes::ShapeRef.new(shape: String, location_name: "SellerName"))
    SubscribedWorkteam.add_member(:marketplace_description, Shapes::ShapeRef.new(shape: String200, location_name: "MarketplaceDescription"))
    SubscribedWorkteam.add_member(:listing_id, Shapes::ShapeRef.new(shape: String, location_name: "ListingId"))
    SubscribedWorkteam.struct_class = Types::SubscribedWorkteam

    SubscribedWorkteams.member = Shapes::ShapeRef.new(shape: SubscribedWorkteam)

    SuggestionQuery.add_member(:property_name_query, Shapes::ShapeRef.new(shape: PropertyNameQuery, location_name: "PropertyNameQuery"))
    SuggestionQuery.struct_class = Types::SuggestionQuery

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TargetPlatform.add_member(:os, Shapes::ShapeRef.new(shape: TargetPlatformOs, required: true, location_name: "Os"))
    TargetPlatform.add_member(:arch, Shapes::ShapeRef.new(shape: TargetPlatformArch, required: true, location_name: "Arch"))
    TargetPlatform.add_member(:accelerator, Shapes::ShapeRef.new(shape: TargetPlatformAccelerator, location_name: "Accelerator"))
    TargetPlatform.struct_class = Types::TargetPlatform

    TaskKeywords.member = Shapes::ShapeRef.new(shape: TaskKeyword)

    TensorBoardAppSettings.add_member(:default_resource_spec, Shapes::ShapeRef.new(shape: ResourceSpec, location_name: "DefaultResourceSpec"))
    TensorBoardAppSettings.struct_class = Types::TensorBoardAppSettings

    TensorBoardOutputConfig.add_member(:local_path, Shapes::ShapeRef.new(shape: DirectoryPath, location_name: "LocalPath"))
    TensorBoardOutputConfig.add_member(:s3_output_path, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3OutputPath"))
    TensorBoardOutputConfig.struct_class = Types::TensorBoardOutputConfig

    TrafficPattern.add_member(:traffic_type, Shapes::ShapeRef.new(shape: TrafficType, location_name: "TrafficType"))
    TrafficPattern.add_member(:phases, Shapes::ShapeRef.new(shape: Phases, location_name: "Phases"))
    TrafficPattern.struct_class = Types::TrafficPattern

    TrafficRoutingConfig.add_member(:type, Shapes::ShapeRef.new(shape: TrafficRoutingConfigType, required: true, location_name: "Type"))
    TrafficRoutingConfig.add_member(:wait_interval_in_seconds, Shapes::ShapeRef.new(shape: WaitIntervalInSeconds, required: true, location_name: "WaitIntervalInSeconds"))
    TrafficRoutingConfig.add_member(:canary_size, Shapes::ShapeRef.new(shape: CapacitySize, location_name: "CanarySize"))
    TrafficRoutingConfig.add_member(:linear_step_size, Shapes::ShapeRef.new(shape: CapacitySize, location_name: "LinearStepSize"))
    TrafficRoutingConfig.struct_class = Types::TrafficRoutingConfig

    TrainingEnvironmentMap.key = Shapes::ShapeRef.new(shape: TrainingEnvironmentKey)
    TrainingEnvironmentMap.value = Shapes::ShapeRef.new(shape: TrainingEnvironmentValue)

    TrainingInstanceTypes.member = Shapes::ShapeRef.new(shape: TrainingInstanceType)

    TrainingJob.add_member(:training_job_name, Shapes::ShapeRef.new(shape: TrainingJobName, location_name: "TrainingJobName"))
    TrainingJob.add_member(:training_job_arn, Shapes::ShapeRef.new(shape: TrainingJobArn, location_name: "TrainingJobArn"))
    TrainingJob.add_member(:tuning_job_arn, Shapes::ShapeRef.new(shape: HyperParameterTuningJobArn, location_name: "TuningJobArn"))
    TrainingJob.add_member(:labeling_job_arn, Shapes::ShapeRef.new(shape: LabelingJobArn, location_name: "LabelingJobArn"))
    TrainingJob.add_member(:auto_ml_job_arn, Shapes::ShapeRef.new(shape: AutoMLJobArn, location_name: "AutoMLJobArn"))
    TrainingJob.add_member(:model_artifacts, Shapes::ShapeRef.new(shape: ModelArtifacts, location_name: "ModelArtifacts"))
    TrainingJob.add_member(:training_job_status, Shapes::ShapeRef.new(shape: TrainingJobStatus, location_name: "TrainingJobStatus"))
    TrainingJob.add_member(:secondary_status, Shapes::ShapeRef.new(shape: SecondaryStatus, location_name: "SecondaryStatus"))
    TrainingJob.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    TrainingJob.add_member(:hyper_parameters, Shapes::ShapeRef.new(shape: HyperParameters, location_name: "HyperParameters"))
    TrainingJob.add_member(:algorithm_specification, Shapes::ShapeRef.new(shape: AlgorithmSpecification, location_name: "AlgorithmSpecification"))
    TrainingJob.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    TrainingJob.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, location_name: "InputDataConfig"))
    TrainingJob.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: "OutputDataConfig"))
    TrainingJob.add_member(:resource_config, Shapes::ShapeRef.new(shape: ResourceConfig, location_name: "ResourceConfig"))
    TrainingJob.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    TrainingJob.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: StoppingCondition, location_name: "StoppingCondition"))
    TrainingJob.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    TrainingJob.add_member(:training_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TrainingStartTime"))
    TrainingJob.add_member(:training_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TrainingEndTime"))
    TrainingJob.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    TrainingJob.add_member(:secondary_status_transitions, Shapes::ShapeRef.new(shape: SecondaryStatusTransitions, location_name: "SecondaryStatusTransitions"))
    TrainingJob.add_member(:final_metric_data_list, Shapes::ShapeRef.new(shape: FinalMetricDataList, location_name: "FinalMetricDataList"))
    TrainingJob.add_member(:enable_network_isolation, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableNetworkIsolation"))
    TrainingJob.add_member(:enable_inter_container_traffic_encryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableInterContainerTrafficEncryption"))
    TrainingJob.add_member(:enable_managed_spot_training, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableManagedSpotTraining"))
    TrainingJob.add_member(:checkpoint_config, Shapes::ShapeRef.new(shape: CheckpointConfig, location_name: "CheckpointConfig"))
    TrainingJob.add_member(:training_time_in_seconds, Shapes::ShapeRef.new(shape: TrainingTimeInSeconds, location_name: "TrainingTimeInSeconds"))
    TrainingJob.add_member(:billable_time_in_seconds, Shapes::ShapeRef.new(shape: BillableTimeInSeconds, location_name: "BillableTimeInSeconds"))
    TrainingJob.add_member(:debug_hook_config, Shapes::ShapeRef.new(shape: DebugHookConfig, location_name: "DebugHookConfig"))
    TrainingJob.add_member(:experiment_config, Shapes::ShapeRef.new(shape: ExperimentConfig, location_name: "ExperimentConfig"))
    TrainingJob.add_member(:debug_rule_configurations, Shapes::ShapeRef.new(shape: DebugRuleConfigurations, location_name: "DebugRuleConfigurations"))
    TrainingJob.add_member(:tensor_board_output_config, Shapes::ShapeRef.new(shape: TensorBoardOutputConfig, location_name: "TensorBoardOutputConfig"))
    TrainingJob.add_member(:debug_rule_evaluation_statuses, Shapes::ShapeRef.new(shape: DebugRuleEvaluationStatuses, location_name: "DebugRuleEvaluationStatuses"))
    TrainingJob.add_member(:environment, Shapes::ShapeRef.new(shape: TrainingEnvironmentMap, location_name: "Environment"))
    TrainingJob.add_member(:retry_strategy, Shapes::ShapeRef.new(shape: RetryStrategy, location_name: "RetryStrategy"))
    TrainingJob.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    TrainingJob.struct_class = Types::TrainingJob

    TrainingJobDefinition.add_member(:training_input_mode, Shapes::ShapeRef.new(shape: TrainingInputMode, required: true, location_name: "TrainingInputMode"))
    TrainingJobDefinition.add_member(:hyper_parameters, Shapes::ShapeRef.new(shape: HyperParameters, location_name: "HyperParameters"))
    TrainingJobDefinition.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    TrainingJobDefinition.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    TrainingJobDefinition.add_member(:resource_config, Shapes::ShapeRef.new(shape: ResourceConfig, required: true, location_name: "ResourceConfig"))
    TrainingJobDefinition.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: StoppingCondition, required: true, location_name: "StoppingCondition"))
    TrainingJobDefinition.struct_class = Types::TrainingJobDefinition

    TrainingJobStatusCounters.add_member(:completed, Shapes::ShapeRef.new(shape: TrainingJobStatusCounter, location_name: "Completed"))
    TrainingJobStatusCounters.add_member(:in_progress, Shapes::ShapeRef.new(shape: TrainingJobStatusCounter, location_name: "InProgress"))
    TrainingJobStatusCounters.add_member(:retryable_error, Shapes::ShapeRef.new(shape: TrainingJobStatusCounter, location_name: "RetryableError"))
    TrainingJobStatusCounters.add_member(:non_retryable_error, Shapes::ShapeRef.new(shape: TrainingJobStatusCounter, location_name: "NonRetryableError"))
    TrainingJobStatusCounters.add_member(:stopped, Shapes::ShapeRef.new(shape: TrainingJobStatusCounter, location_name: "Stopped"))
    TrainingJobStatusCounters.struct_class = Types::TrainingJobStatusCounters

    TrainingJobStepMetadata.add_member(:arn, Shapes::ShapeRef.new(shape: TrainingJobArn, location_name: "Arn"))
    TrainingJobStepMetadata.struct_class = Types::TrainingJobStepMetadata

    TrainingJobSummaries.member = Shapes::ShapeRef.new(shape: TrainingJobSummary)

    TrainingJobSummary.add_member(:training_job_name, Shapes::ShapeRef.new(shape: TrainingJobName, required: true, location_name: "TrainingJobName"))
    TrainingJobSummary.add_member(:training_job_arn, Shapes::ShapeRef.new(shape: TrainingJobArn, required: true, location_name: "TrainingJobArn"))
    TrainingJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    TrainingJobSummary.add_member(:training_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TrainingEndTime"))
    TrainingJobSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    TrainingJobSummary.add_member(:training_job_status, Shapes::ShapeRef.new(shape: TrainingJobStatus, required: true, location_name: "TrainingJobStatus"))
    TrainingJobSummary.struct_class = Types::TrainingJobSummary

    TrainingSpecification.add_member(:training_image, Shapes::ShapeRef.new(shape: ContainerImage, required: true, location_name: "TrainingImage"))
    TrainingSpecification.add_member(:training_image_digest, Shapes::ShapeRef.new(shape: ImageDigest, location_name: "TrainingImageDigest"))
    TrainingSpecification.add_member(:supported_hyper_parameters, Shapes::ShapeRef.new(shape: HyperParameterSpecifications, location_name: "SupportedHyperParameters"))
    TrainingSpecification.add_member(:supported_training_instance_types, Shapes::ShapeRef.new(shape: TrainingInstanceTypes, required: true, location_name: "SupportedTrainingInstanceTypes"))
    TrainingSpecification.add_member(:supports_distributed_training, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsDistributedTraining"))
    TrainingSpecification.add_member(:metric_definitions, Shapes::ShapeRef.new(shape: MetricDefinitionList, location_name: "MetricDefinitions"))
    TrainingSpecification.add_member(:training_channels, Shapes::ShapeRef.new(shape: ChannelSpecifications, required: true, location_name: "TrainingChannels"))
    TrainingSpecification.add_member(:supported_tuning_job_objective_metrics, Shapes::ShapeRef.new(shape: HyperParameterTuningJobObjectives, location_name: "SupportedTuningJobObjectiveMetrics"))
    TrainingSpecification.struct_class = Types::TrainingSpecification

    TransformDataSource.add_member(:s3_data_source, Shapes::ShapeRef.new(shape: TransformS3DataSource, required: true, location_name: "S3DataSource"))
    TransformDataSource.struct_class = Types::TransformDataSource

    TransformEnvironmentMap.key = Shapes::ShapeRef.new(shape: TransformEnvironmentKey)
    TransformEnvironmentMap.value = Shapes::ShapeRef.new(shape: TransformEnvironmentValue)

    TransformInput.add_member(:data_source, Shapes::ShapeRef.new(shape: TransformDataSource, required: true, location_name: "DataSource"))
    TransformInput.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, location_name: "ContentType"))
    TransformInput.add_member(:compression_type, Shapes::ShapeRef.new(shape: CompressionType, location_name: "CompressionType"))
    TransformInput.add_member(:split_type, Shapes::ShapeRef.new(shape: SplitType, location_name: "SplitType"))
    TransformInput.struct_class = Types::TransformInput

    TransformInstanceTypes.member = Shapes::ShapeRef.new(shape: TransformInstanceType)

    TransformJob.add_member(:transform_job_name, Shapes::ShapeRef.new(shape: TransformJobName, location_name: "TransformJobName"))
    TransformJob.add_member(:transform_job_arn, Shapes::ShapeRef.new(shape: TransformJobArn, location_name: "TransformJobArn"))
    TransformJob.add_member(:transform_job_status, Shapes::ShapeRef.new(shape: TransformJobStatus, location_name: "TransformJobStatus"))
    TransformJob.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    TransformJob.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, location_name: "ModelName"))
    TransformJob.add_member(:max_concurrent_transforms, Shapes::ShapeRef.new(shape: MaxConcurrentTransforms, location_name: "MaxConcurrentTransforms"))
    TransformJob.add_member(:model_client_config, Shapes::ShapeRef.new(shape: ModelClientConfig, location_name: "ModelClientConfig"))
    TransformJob.add_member(:max_payload_in_mb, Shapes::ShapeRef.new(shape: MaxPayloadInMB, location_name: "MaxPayloadInMB"))
    TransformJob.add_member(:batch_strategy, Shapes::ShapeRef.new(shape: BatchStrategy, location_name: "BatchStrategy"))
    TransformJob.add_member(:environment, Shapes::ShapeRef.new(shape: TransformEnvironmentMap, location_name: "Environment"))
    TransformJob.add_member(:transform_input, Shapes::ShapeRef.new(shape: TransformInput, location_name: "TransformInput"))
    TransformJob.add_member(:transform_output, Shapes::ShapeRef.new(shape: TransformOutput, location_name: "TransformOutput"))
    TransformJob.add_member(:transform_resources, Shapes::ShapeRef.new(shape: TransformResources, location_name: "TransformResources"))
    TransformJob.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    TransformJob.add_member(:transform_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TransformStartTime"))
    TransformJob.add_member(:transform_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TransformEndTime"))
    TransformJob.add_member(:labeling_job_arn, Shapes::ShapeRef.new(shape: LabelingJobArn, location_name: "LabelingJobArn"))
    TransformJob.add_member(:auto_ml_job_arn, Shapes::ShapeRef.new(shape: AutoMLJobArn, location_name: "AutoMLJobArn"))
    TransformJob.add_member(:data_processing, Shapes::ShapeRef.new(shape: DataProcessing, location_name: "DataProcessing"))
    TransformJob.add_member(:experiment_config, Shapes::ShapeRef.new(shape: ExperimentConfig, location_name: "ExperimentConfig"))
    TransformJob.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    TransformJob.struct_class = Types::TransformJob

    TransformJobDefinition.add_member(:max_concurrent_transforms, Shapes::ShapeRef.new(shape: MaxConcurrentTransforms, location_name: "MaxConcurrentTransforms"))
    TransformJobDefinition.add_member(:max_payload_in_mb, Shapes::ShapeRef.new(shape: MaxPayloadInMB, location_name: "MaxPayloadInMB"))
    TransformJobDefinition.add_member(:batch_strategy, Shapes::ShapeRef.new(shape: BatchStrategy, location_name: "BatchStrategy"))
    TransformJobDefinition.add_member(:environment, Shapes::ShapeRef.new(shape: TransformEnvironmentMap, location_name: "Environment"))
    TransformJobDefinition.add_member(:transform_input, Shapes::ShapeRef.new(shape: TransformInput, required: true, location_name: "TransformInput"))
    TransformJobDefinition.add_member(:transform_output, Shapes::ShapeRef.new(shape: TransformOutput, required: true, location_name: "TransformOutput"))
    TransformJobDefinition.add_member(:transform_resources, Shapes::ShapeRef.new(shape: TransformResources, required: true, location_name: "TransformResources"))
    TransformJobDefinition.struct_class = Types::TransformJobDefinition

    TransformJobStepMetadata.add_member(:arn, Shapes::ShapeRef.new(shape: TransformJobArn, location_name: "Arn"))
    TransformJobStepMetadata.struct_class = Types::TransformJobStepMetadata

    TransformJobSummaries.member = Shapes::ShapeRef.new(shape: TransformJobSummary)

    TransformJobSummary.add_member(:transform_job_name, Shapes::ShapeRef.new(shape: TransformJobName, required: true, location_name: "TransformJobName"))
    TransformJobSummary.add_member(:transform_job_arn, Shapes::ShapeRef.new(shape: TransformJobArn, required: true, location_name: "TransformJobArn"))
    TransformJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    TransformJobSummary.add_member(:transform_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TransformEndTime"))
    TransformJobSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    TransformJobSummary.add_member(:transform_job_status, Shapes::ShapeRef.new(shape: TransformJobStatus, required: true, location_name: "TransformJobStatus"))
    TransformJobSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    TransformJobSummary.struct_class = Types::TransformJobSummary

    TransformOutput.add_member(:s3_output_path, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3OutputPath"))
    TransformOutput.add_member(:accept, Shapes::ShapeRef.new(shape: Accept, location_name: "Accept"))
    TransformOutput.add_member(:assemble_with, Shapes::ShapeRef.new(shape: AssemblyType, location_name: "AssembleWith"))
    TransformOutput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    TransformOutput.struct_class = Types::TransformOutput

    TransformResources.add_member(:instance_type, Shapes::ShapeRef.new(shape: TransformInstanceType, required: true, location_name: "InstanceType"))
    TransformResources.add_member(:instance_count, Shapes::ShapeRef.new(shape: TransformInstanceCount, required: true, location_name: "InstanceCount"))
    TransformResources.add_member(:volume_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "VolumeKmsKeyId"))
    TransformResources.struct_class = Types::TransformResources

    TransformS3DataSource.add_member(:s3_data_type, Shapes::ShapeRef.new(shape: S3DataType, required: true, location_name: "S3DataType"))
    TransformS3DataSource.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    TransformS3DataSource.struct_class = Types::TransformS3DataSource

    Trial.add_member(:trial_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "TrialName"))
    Trial.add_member(:trial_arn, Shapes::ShapeRef.new(shape: TrialArn, location_name: "TrialArn"))
    Trial.add_member(:display_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "DisplayName"))
    Trial.add_member(:experiment_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "ExperimentName"))
    Trial.add_member(:source, Shapes::ShapeRef.new(shape: TrialSource, location_name: "Source"))
    Trial.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    Trial.add_member(:created_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "CreatedBy"))
    Trial.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    Trial.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "LastModifiedBy"))
    Trial.add_member(:metadata_properties, Shapes::ShapeRef.new(shape: MetadataProperties, location_name: "MetadataProperties"))
    Trial.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    Trial.add_member(:trial_component_summaries, Shapes::ShapeRef.new(shape: TrialComponentSimpleSummaries, location_name: "TrialComponentSummaries"))
    Trial.struct_class = Types::Trial

    TrialComponent.add_member(:trial_component_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "TrialComponentName"))
    TrialComponent.add_member(:display_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "DisplayName"))
    TrialComponent.add_member(:trial_component_arn, Shapes::ShapeRef.new(shape: TrialComponentArn, location_name: "TrialComponentArn"))
    TrialComponent.add_member(:source, Shapes::ShapeRef.new(shape: TrialComponentSource, location_name: "Source"))
    TrialComponent.add_member(:status, Shapes::ShapeRef.new(shape: TrialComponentStatus, location_name: "Status"))
    TrialComponent.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    TrialComponent.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    TrialComponent.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    TrialComponent.add_member(:created_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "CreatedBy"))
    TrialComponent.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    TrialComponent.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "LastModifiedBy"))
    TrialComponent.add_member(:parameters, Shapes::ShapeRef.new(shape: TrialComponentParameters, location_name: "Parameters"))
    TrialComponent.add_member(:input_artifacts, Shapes::ShapeRef.new(shape: TrialComponentArtifacts, location_name: "InputArtifacts"))
    TrialComponent.add_member(:output_artifacts, Shapes::ShapeRef.new(shape: TrialComponentArtifacts, location_name: "OutputArtifacts"))
    TrialComponent.add_member(:metrics, Shapes::ShapeRef.new(shape: TrialComponentMetricSummaries, location_name: "Metrics"))
    TrialComponent.add_member(:metadata_properties, Shapes::ShapeRef.new(shape: MetadataProperties, location_name: "MetadataProperties"))
    TrialComponent.add_member(:source_detail, Shapes::ShapeRef.new(shape: TrialComponentSourceDetail, location_name: "SourceDetail"))
    TrialComponent.add_member(:lineage_group_arn, Shapes::ShapeRef.new(shape: LineageGroupArn, location_name: "LineageGroupArn"))
    TrialComponent.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    TrialComponent.add_member(:parents, Shapes::ShapeRef.new(shape: Parents, location_name: "Parents"))
    TrialComponent.struct_class = Types::TrialComponent

    TrialComponentArtifact.add_member(:media_type, Shapes::ShapeRef.new(shape: MediaType, location_name: "MediaType"))
    TrialComponentArtifact.add_member(:value, Shapes::ShapeRef.new(shape: TrialComponentArtifactValue, required: true, location_name: "Value"))
    TrialComponentArtifact.struct_class = Types::TrialComponentArtifact

    TrialComponentArtifacts.key = Shapes::ShapeRef.new(shape: TrialComponentKey64)
    TrialComponentArtifacts.value = Shapes::ShapeRef.new(shape: TrialComponentArtifact)

    TrialComponentMetricSummaries.member = Shapes::ShapeRef.new(shape: TrialComponentMetricSummary)

    TrialComponentMetricSummary.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    TrialComponentMetricSummary.add_member(:source_arn, Shapes::ShapeRef.new(shape: TrialComponentSourceArn, location_name: "SourceArn"))
    TrialComponentMetricSummary.add_member(:time_stamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TimeStamp"))
    TrialComponentMetricSummary.add_member(:max, Shapes::ShapeRef.new(shape: OptionalDouble, location_name: "Max"))
    TrialComponentMetricSummary.add_member(:min, Shapes::ShapeRef.new(shape: OptionalDouble, location_name: "Min"))
    TrialComponentMetricSummary.add_member(:last, Shapes::ShapeRef.new(shape: OptionalDouble, location_name: "Last"))
    TrialComponentMetricSummary.add_member(:count, Shapes::ShapeRef.new(shape: OptionalInteger, location_name: "Count"))
    TrialComponentMetricSummary.add_member(:avg, Shapes::ShapeRef.new(shape: OptionalDouble, location_name: "Avg"))
    TrialComponentMetricSummary.add_member(:std_dev, Shapes::ShapeRef.new(shape: OptionalDouble, location_name: "StdDev"))
    TrialComponentMetricSummary.struct_class = Types::TrialComponentMetricSummary

    TrialComponentParameterValue.add_member(:string_value, Shapes::ShapeRef.new(shape: StringParameterValue, location_name: "StringValue"))
    TrialComponentParameterValue.add_member(:number_value, Shapes::ShapeRef.new(shape: DoubleParameterValue, location_name: "NumberValue"))
    TrialComponentParameterValue.struct_class = Types::TrialComponentParameterValue

    TrialComponentParameters.key = Shapes::ShapeRef.new(shape: TrialComponentKey256)
    TrialComponentParameters.value = Shapes::ShapeRef.new(shape: TrialComponentParameterValue)

    TrialComponentSimpleSummaries.member = Shapes::ShapeRef.new(shape: TrialComponentSimpleSummary)

    TrialComponentSimpleSummary.add_member(:trial_component_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "TrialComponentName"))
    TrialComponentSimpleSummary.add_member(:trial_component_arn, Shapes::ShapeRef.new(shape: TrialComponentArn, location_name: "TrialComponentArn"))
    TrialComponentSimpleSummary.add_member(:trial_component_source, Shapes::ShapeRef.new(shape: TrialComponentSource, location_name: "TrialComponentSource"))
    TrialComponentSimpleSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    TrialComponentSimpleSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "CreatedBy"))
    TrialComponentSimpleSummary.struct_class = Types::TrialComponentSimpleSummary

    TrialComponentSource.add_member(:source_arn, Shapes::ShapeRef.new(shape: TrialComponentSourceArn, required: true, location_name: "SourceArn"))
    TrialComponentSource.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "SourceType"))
    TrialComponentSource.struct_class = Types::TrialComponentSource

    TrialComponentSourceDetail.add_member(:source_arn, Shapes::ShapeRef.new(shape: TrialComponentSourceArn, location_name: "SourceArn"))
    TrialComponentSourceDetail.add_member(:training_job, Shapes::ShapeRef.new(shape: TrainingJob, location_name: "TrainingJob"))
    TrialComponentSourceDetail.add_member(:processing_job, Shapes::ShapeRef.new(shape: ProcessingJob, location_name: "ProcessingJob"))
    TrialComponentSourceDetail.add_member(:transform_job, Shapes::ShapeRef.new(shape: TransformJob, location_name: "TransformJob"))
    TrialComponentSourceDetail.struct_class = Types::TrialComponentSourceDetail

    TrialComponentStatus.add_member(:primary_status, Shapes::ShapeRef.new(shape: TrialComponentPrimaryStatus, location_name: "PrimaryStatus"))
    TrialComponentStatus.add_member(:message, Shapes::ShapeRef.new(shape: TrialComponentStatusMessage, location_name: "Message"))
    TrialComponentStatus.struct_class = Types::TrialComponentStatus

    TrialComponentSummaries.member = Shapes::ShapeRef.new(shape: TrialComponentSummary)

    TrialComponentSummary.add_member(:trial_component_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "TrialComponentName"))
    TrialComponentSummary.add_member(:trial_component_arn, Shapes::ShapeRef.new(shape: TrialComponentArn, location_name: "TrialComponentArn"))
    TrialComponentSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "DisplayName"))
    TrialComponentSummary.add_member(:trial_component_source, Shapes::ShapeRef.new(shape: TrialComponentSource, location_name: "TrialComponentSource"))
    TrialComponentSummary.add_member(:status, Shapes::ShapeRef.new(shape: TrialComponentStatus, location_name: "Status"))
    TrialComponentSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    TrialComponentSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    TrialComponentSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    TrialComponentSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "CreatedBy"))
    TrialComponentSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    TrialComponentSummary.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: UserContext, location_name: "LastModifiedBy"))
    TrialComponentSummary.struct_class = Types::TrialComponentSummary

    TrialSource.add_member(:source_arn, Shapes::ShapeRef.new(shape: TrialSourceArn, required: true, location_name: "SourceArn"))
    TrialSource.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "SourceType"))
    TrialSource.struct_class = Types::TrialSource

    TrialSummaries.member = Shapes::ShapeRef.new(shape: TrialSummary)

    TrialSummary.add_member(:trial_arn, Shapes::ShapeRef.new(shape: TrialArn, location_name: "TrialArn"))
    TrialSummary.add_member(:trial_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "TrialName"))
    TrialSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "DisplayName"))
    TrialSummary.add_member(:trial_source, Shapes::ShapeRef.new(shape: TrialSource, location_name: "TrialSource"))
    TrialSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    TrialSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    TrialSummary.struct_class = Types::TrialSummary

    TuningJobCompletionCriteria.add_member(:target_objective_metric_value, Shapes::ShapeRef.new(shape: TargetObjectiveMetricValue, required: true, location_name: "TargetObjectiveMetricValue"))
    TuningJobCompletionCriteria.struct_class = Types::TuningJobCompletionCriteria

    TuningJobStepMetaData.add_member(:arn, Shapes::ShapeRef.new(shape: HyperParameterTuningJobArn, location_name: "Arn"))
    TuningJobStepMetaData.struct_class = Types::TuningJobStepMetaData

    USD.add_member(:dollars, Shapes::ShapeRef.new(shape: Dollars, location_name: "Dollars"))
    USD.add_member(:cents, Shapes::ShapeRef.new(shape: Cents, location_name: "Cents"))
    USD.add_member(:tenth_fractions_of_a_cent, Shapes::ShapeRef.new(shape: TenthFractionsOfACent, location_name: "TenthFractionsOfACent"))
    USD.struct_class = Types::USD

    UiConfig.add_member(:ui_template_s3_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "UiTemplateS3Uri"))
    UiConfig.add_member(:human_task_ui_arn, Shapes::ShapeRef.new(shape: HumanTaskUiArn, location_name: "HumanTaskUiArn"))
    UiConfig.struct_class = Types::UiConfig

    UiTemplate.add_member(:content, Shapes::ShapeRef.new(shape: TemplateContent, required: true, location_name: "Content"))
    UiTemplate.struct_class = Types::UiTemplate

    UiTemplateInfo.add_member(:url, Shapes::ShapeRef.new(shape: TemplateUrl, location_name: "Url"))
    UiTemplateInfo.add_member(:content_sha_256, Shapes::ShapeRef.new(shape: TemplateContentSha256, location_name: "ContentSha256"))
    UiTemplateInfo.struct_class = Types::UiTemplateInfo

    UpdateActionRequest.add_member(:action_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "ActionName"))
    UpdateActionRequest.add_member(:description, Shapes::ShapeRef.new(shape: ExperimentDescription, location_name: "Description"))
    UpdateActionRequest.add_member(:status, Shapes::ShapeRef.new(shape: ActionStatus, location_name: "Status"))
    UpdateActionRequest.add_member(:properties, Shapes::ShapeRef.new(shape: LineageEntityParameters, location_name: "Properties"))
    UpdateActionRequest.add_member(:properties_to_remove, Shapes::ShapeRef.new(shape: ListLineageEntityParameterKey, location_name: "PropertiesToRemove"))
    UpdateActionRequest.struct_class = Types::UpdateActionRequest

    UpdateActionResponse.add_member(:action_arn, Shapes::ShapeRef.new(shape: ActionArn, location_name: "ActionArn"))
    UpdateActionResponse.struct_class = Types::UpdateActionResponse

    UpdateAppImageConfigRequest.add_member(:app_image_config_name, Shapes::ShapeRef.new(shape: AppImageConfigName, required: true, location_name: "AppImageConfigName"))
    UpdateAppImageConfigRequest.add_member(:kernel_gateway_image_config, Shapes::ShapeRef.new(shape: KernelGatewayImageConfig, location_name: "KernelGatewayImageConfig"))
    UpdateAppImageConfigRequest.struct_class = Types::UpdateAppImageConfigRequest

    UpdateAppImageConfigResponse.add_member(:app_image_config_arn, Shapes::ShapeRef.new(shape: AppImageConfigArn, location_name: "AppImageConfigArn"))
    UpdateAppImageConfigResponse.struct_class = Types::UpdateAppImageConfigResponse

    UpdateArtifactRequest.add_member(:artifact_arn, Shapes::ShapeRef.new(shape: ArtifactArn, required: true, location_name: "ArtifactArn"))
    UpdateArtifactRequest.add_member(:artifact_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "ArtifactName"))
    UpdateArtifactRequest.add_member(:properties, Shapes::ShapeRef.new(shape: LineageEntityParameters, location_name: "Properties"))
    UpdateArtifactRequest.add_member(:properties_to_remove, Shapes::ShapeRef.new(shape: ListLineageEntityParameterKey, location_name: "PropertiesToRemove"))
    UpdateArtifactRequest.struct_class = Types::UpdateArtifactRequest

    UpdateArtifactResponse.add_member(:artifact_arn, Shapes::ShapeRef.new(shape: ArtifactArn, location_name: "ArtifactArn"))
    UpdateArtifactResponse.struct_class = Types::UpdateArtifactResponse

    UpdateCodeRepositoryInput.add_member(:code_repository_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "CodeRepositoryName"))
    UpdateCodeRepositoryInput.add_member(:git_config, Shapes::ShapeRef.new(shape: GitConfigForUpdate, location_name: "GitConfig"))
    UpdateCodeRepositoryInput.struct_class = Types::UpdateCodeRepositoryInput

    UpdateCodeRepositoryOutput.add_member(:code_repository_arn, Shapes::ShapeRef.new(shape: CodeRepositoryArn, required: true, location_name: "CodeRepositoryArn"))
    UpdateCodeRepositoryOutput.struct_class = Types::UpdateCodeRepositoryOutput

    UpdateContextRequest.add_member(:context_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "ContextName"))
    UpdateContextRequest.add_member(:description, Shapes::ShapeRef.new(shape: ExperimentDescription, location_name: "Description"))
    UpdateContextRequest.add_member(:properties, Shapes::ShapeRef.new(shape: LineageEntityParameters, location_name: "Properties"))
    UpdateContextRequest.add_member(:properties_to_remove, Shapes::ShapeRef.new(shape: ListLineageEntityParameterKey, location_name: "PropertiesToRemove"))
    UpdateContextRequest.struct_class = Types::UpdateContextRequest

    UpdateContextResponse.add_member(:context_arn, Shapes::ShapeRef.new(shape: ContextArn, location_name: "ContextArn"))
    UpdateContextResponse.struct_class = Types::UpdateContextResponse

    UpdateDeviceFleetRequest.add_member(:device_fleet_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "DeviceFleetName"))
    UpdateDeviceFleetRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    UpdateDeviceFleetRequest.add_member(:description, Shapes::ShapeRef.new(shape: DeviceFleetDescription, location_name: "Description"))
    UpdateDeviceFleetRequest.add_member(:output_config, Shapes::ShapeRef.new(shape: EdgeOutputConfig, required: true, location_name: "OutputConfig"))
    UpdateDeviceFleetRequest.add_member(:enable_iot_role_alias, Shapes::ShapeRef.new(shape: EnableIotRoleAlias, location_name: "EnableIotRoleAlias"))
    UpdateDeviceFleetRequest.struct_class = Types::UpdateDeviceFleetRequest

    UpdateDevicesRequest.add_member(:device_fleet_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "DeviceFleetName"))
    UpdateDevicesRequest.add_member(:devices, Shapes::ShapeRef.new(shape: Devices, required: true, location_name: "Devices"))
    UpdateDevicesRequest.struct_class = Types::UpdateDevicesRequest

    UpdateDomainRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    UpdateDomainRequest.add_member(:default_user_settings, Shapes::ShapeRef.new(shape: UserSettings, location_name: "DefaultUserSettings"))
    UpdateDomainRequest.add_member(:domain_settings_for_update, Shapes::ShapeRef.new(shape: DomainSettingsForUpdate, location_name: "DomainSettingsForUpdate"))
    UpdateDomainRequest.struct_class = Types::UpdateDomainRequest

    UpdateDomainResponse.add_member(:domain_arn, Shapes::ShapeRef.new(shape: DomainArn, location_name: "DomainArn"))
    UpdateDomainResponse.struct_class = Types::UpdateDomainResponse

    UpdateEndpointInput.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "EndpointName"))
    UpdateEndpointInput.add_member(:endpoint_config_name, Shapes::ShapeRef.new(shape: EndpointConfigName, required: true, location_name: "EndpointConfigName"))
    UpdateEndpointInput.add_member(:retain_all_variant_properties, Shapes::ShapeRef.new(shape: Boolean, location_name: "RetainAllVariantProperties"))
    UpdateEndpointInput.add_member(:exclude_retained_variant_properties, Shapes::ShapeRef.new(shape: VariantPropertyList, location_name: "ExcludeRetainedVariantProperties"))
    UpdateEndpointInput.add_member(:deployment_config, Shapes::ShapeRef.new(shape: DeploymentConfig, location_name: "DeploymentConfig"))
    UpdateEndpointInput.add_member(:retain_deployment_config, Shapes::ShapeRef.new(shape: Boolean, location_name: "RetainDeploymentConfig"))
    UpdateEndpointInput.struct_class = Types::UpdateEndpointInput

    UpdateEndpointOutput.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: EndpointArn, required: true, location_name: "EndpointArn"))
    UpdateEndpointOutput.struct_class = Types::UpdateEndpointOutput

    UpdateEndpointWeightsAndCapacitiesInput.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "EndpointName"))
    UpdateEndpointWeightsAndCapacitiesInput.add_member(:desired_weights_and_capacities, Shapes::ShapeRef.new(shape: DesiredWeightAndCapacityList, required: true, location_name: "DesiredWeightsAndCapacities"))
    UpdateEndpointWeightsAndCapacitiesInput.struct_class = Types::UpdateEndpointWeightsAndCapacitiesInput

    UpdateEndpointWeightsAndCapacitiesOutput.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: EndpointArn, required: true, location_name: "EndpointArn"))
    UpdateEndpointWeightsAndCapacitiesOutput.struct_class = Types::UpdateEndpointWeightsAndCapacitiesOutput

    UpdateExperimentRequest.add_member(:experiment_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "ExperimentName"))
    UpdateExperimentRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "DisplayName"))
    UpdateExperimentRequest.add_member(:description, Shapes::ShapeRef.new(shape: ExperimentDescription, location_name: "Description"))
    UpdateExperimentRequest.struct_class = Types::UpdateExperimentRequest

    UpdateExperimentResponse.add_member(:experiment_arn, Shapes::ShapeRef.new(shape: ExperimentArn, location_name: "ExperimentArn"))
    UpdateExperimentResponse.struct_class = Types::UpdateExperimentResponse

    UpdateImageRequest.add_member(:delete_properties, Shapes::ShapeRef.new(shape: ImageDeletePropertyList, location_name: "DeleteProperties"))
    UpdateImageRequest.add_member(:description, Shapes::ShapeRef.new(shape: ImageDescription, location_name: "Description"))
    UpdateImageRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ImageDisplayName, location_name: "DisplayName"))
    UpdateImageRequest.add_member(:image_name, Shapes::ShapeRef.new(shape: ImageName, required: true, location_name: "ImageName"))
    UpdateImageRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    UpdateImageRequest.struct_class = Types::UpdateImageRequest

    UpdateImageResponse.add_member(:image_arn, Shapes::ShapeRef.new(shape: ImageArn, location_name: "ImageArn"))
    UpdateImageResponse.struct_class = Types::UpdateImageResponse

    UpdateModelPackageInput.add_member(:model_package_arn, Shapes::ShapeRef.new(shape: ModelPackageArn, required: true, location_name: "ModelPackageArn"))
    UpdateModelPackageInput.add_member(:model_approval_status, Shapes::ShapeRef.new(shape: ModelApprovalStatus, location_name: "ModelApprovalStatus"))
    UpdateModelPackageInput.add_member(:approval_description, Shapes::ShapeRef.new(shape: ApprovalDescription, location_name: "ApprovalDescription"))
    UpdateModelPackageInput.add_member(:customer_metadata_properties, Shapes::ShapeRef.new(shape: CustomerMetadataMap, location_name: "CustomerMetadataProperties"))
    UpdateModelPackageInput.add_member(:customer_metadata_properties_to_remove, Shapes::ShapeRef.new(shape: CustomerMetadataKeyList, location_name: "CustomerMetadataPropertiesToRemove"))
    UpdateModelPackageInput.add_member(:additional_inference_specifications_to_add, Shapes::ShapeRef.new(shape: AdditionalInferenceSpecifications, location_name: "AdditionalInferenceSpecificationsToAdd"))
    UpdateModelPackageInput.struct_class = Types::UpdateModelPackageInput

    UpdateModelPackageOutput.add_member(:model_package_arn, Shapes::ShapeRef.new(shape: ModelPackageArn, required: true, location_name: "ModelPackageArn"))
    UpdateModelPackageOutput.struct_class = Types::UpdateModelPackageOutput

    UpdateMonitoringScheduleRequest.add_member(:monitoring_schedule_name, Shapes::ShapeRef.new(shape: MonitoringScheduleName, required: true, location_name: "MonitoringScheduleName"))
    UpdateMonitoringScheduleRequest.add_member(:monitoring_schedule_config, Shapes::ShapeRef.new(shape: MonitoringScheduleConfig, required: true, location_name: "MonitoringScheduleConfig"))
    UpdateMonitoringScheduleRequest.struct_class = Types::UpdateMonitoringScheduleRequest

    UpdateMonitoringScheduleResponse.add_member(:monitoring_schedule_arn, Shapes::ShapeRef.new(shape: MonitoringScheduleArn, required: true, location_name: "MonitoringScheduleArn"))
    UpdateMonitoringScheduleResponse.struct_class = Types::UpdateMonitoringScheduleResponse

    UpdateNotebookInstanceInput.add_member(:notebook_instance_name, Shapes::ShapeRef.new(shape: NotebookInstanceName, required: true, location_name: "NotebookInstanceName"))
    UpdateNotebookInstanceInput.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "InstanceType"))
    UpdateNotebookInstanceInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    UpdateNotebookInstanceInput.add_member(:lifecycle_config_name, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigName, location_name: "LifecycleConfigName"))
    UpdateNotebookInstanceInput.add_member(:disassociate_lifecycle_config, Shapes::ShapeRef.new(shape: DisassociateNotebookInstanceLifecycleConfig, location_name: "DisassociateLifecycleConfig"))
    UpdateNotebookInstanceInput.add_member(:volume_size_in_gb, Shapes::ShapeRef.new(shape: NotebookInstanceVolumeSizeInGB, location_name: "VolumeSizeInGB"))
    UpdateNotebookInstanceInput.add_member(:default_code_repository, Shapes::ShapeRef.new(shape: CodeRepositoryNameOrUrl, location_name: "DefaultCodeRepository"))
    UpdateNotebookInstanceInput.add_member(:additional_code_repositories, Shapes::ShapeRef.new(shape: AdditionalCodeRepositoryNamesOrUrls, location_name: "AdditionalCodeRepositories"))
    UpdateNotebookInstanceInput.add_member(:accelerator_types, Shapes::ShapeRef.new(shape: NotebookInstanceAcceleratorTypes, location_name: "AcceleratorTypes"))
    UpdateNotebookInstanceInput.add_member(:disassociate_accelerator_types, Shapes::ShapeRef.new(shape: DisassociateNotebookInstanceAcceleratorTypes, location_name: "DisassociateAcceleratorTypes"))
    UpdateNotebookInstanceInput.add_member(:disassociate_default_code_repository, Shapes::ShapeRef.new(shape: DisassociateDefaultCodeRepository, location_name: "DisassociateDefaultCodeRepository"))
    UpdateNotebookInstanceInput.add_member(:disassociate_additional_code_repositories, Shapes::ShapeRef.new(shape: DisassociateAdditionalCodeRepositories, location_name: "DisassociateAdditionalCodeRepositories"))
    UpdateNotebookInstanceInput.add_member(:root_access, Shapes::ShapeRef.new(shape: RootAccess, location_name: "RootAccess"))
    UpdateNotebookInstanceInput.struct_class = Types::UpdateNotebookInstanceInput

    UpdateNotebookInstanceLifecycleConfigInput.add_member(:notebook_instance_lifecycle_config_name, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigName, required: true, location_name: "NotebookInstanceLifecycleConfigName"))
    UpdateNotebookInstanceLifecycleConfigInput.add_member(:on_create, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigList, location_name: "OnCreate"))
    UpdateNotebookInstanceLifecycleConfigInput.add_member(:on_start, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigList, location_name: "OnStart"))
    UpdateNotebookInstanceLifecycleConfigInput.struct_class = Types::UpdateNotebookInstanceLifecycleConfigInput

    UpdateNotebookInstanceLifecycleConfigOutput.struct_class = Types::UpdateNotebookInstanceLifecycleConfigOutput

    UpdateNotebookInstanceOutput.struct_class = Types::UpdateNotebookInstanceOutput

    UpdatePipelineExecutionRequest.add_member(:pipeline_execution_arn, Shapes::ShapeRef.new(shape: PipelineExecutionArn, required: true, location_name: "PipelineExecutionArn"))
    UpdatePipelineExecutionRequest.add_member(:pipeline_execution_description, Shapes::ShapeRef.new(shape: PipelineExecutionDescription, location_name: "PipelineExecutionDescription"))
    UpdatePipelineExecutionRequest.add_member(:pipeline_execution_display_name, Shapes::ShapeRef.new(shape: PipelineExecutionName, location_name: "PipelineExecutionDisplayName"))
    UpdatePipelineExecutionRequest.add_member(:parallelism_configuration, Shapes::ShapeRef.new(shape: ParallelismConfiguration, location_name: "ParallelismConfiguration"))
    UpdatePipelineExecutionRequest.struct_class = Types::UpdatePipelineExecutionRequest

    UpdatePipelineExecutionResponse.add_member(:pipeline_execution_arn, Shapes::ShapeRef.new(shape: PipelineExecutionArn, location_name: "PipelineExecutionArn"))
    UpdatePipelineExecutionResponse.struct_class = Types::UpdatePipelineExecutionResponse

    UpdatePipelineRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "PipelineName"))
    UpdatePipelineRequest.add_member(:pipeline_display_name, Shapes::ShapeRef.new(shape: PipelineName, location_name: "PipelineDisplayName"))
    UpdatePipelineRequest.add_member(:pipeline_definition, Shapes::ShapeRef.new(shape: PipelineDefinition, location_name: "PipelineDefinition"))
    UpdatePipelineRequest.add_member(:pipeline_definition_s3_location, Shapes::ShapeRef.new(shape: PipelineDefinitionS3Location, location_name: "PipelineDefinitionS3Location"))
    UpdatePipelineRequest.add_member(:pipeline_description, Shapes::ShapeRef.new(shape: PipelineDescription, location_name: "PipelineDescription"))
    UpdatePipelineRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    UpdatePipelineRequest.add_member(:parallelism_configuration, Shapes::ShapeRef.new(shape: ParallelismConfiguration, location_name: "ParallelismConfiguration"))
    UpdatePipelineRequest.struct_class = Types::UpdatePipelineRequest

    UpdatePipelineResponse.add_member(:pipeline_arn, Shapes::ShapeRef.new(shape: PipelineArn, location_name: "PipelineArn"))
    UpdatePipelineResponse.struct_class = Types::UpdatePipelineResponse

    UpdateProjectInput.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectEntityName, required: true, location_name: "ProjectName"))
    UpdateProjectInput.add_member(:project_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "ProjectDescription"))
    UpdateProjectInput.add_member(:service_catalog_provisioning_update_details, Shapes::ShapeRef.new(shape: ServiceCatalogProvisioningUpdateDetails, location_name: "ServiceCatalogProvisioningUpdateDetails"))
    UpdateProjectInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    UpdateProjectInput.struct_class = Types::UpdateProjectInput

    UpdateProjectOutput.add_member(:project_arn, Shapes::ShapeRef.new(shape: ProjectArn, required: true, location_name: "ProjectArn"))
    UpdateProjectOutput.struct_class = Types::UpdateProjectOutput

    UpdateTrainingJobRequest.add_member(:training_job_name, Shapes::ShapeRef.new(shape: TrainingJobName, required: true, location_name: "TrainingJobName"))
    UpdateTrainingJobRequest.add_member(:profiler_config, Shapes::ShapeRef.new(shape: ProfilerConfigForUpdate, location_name: "ProfilerConfig"))
    UpdateTrainingJobRequest.add_member(:profiler_rule_configurations, Shapes::ShapeRef.new(shape: ProfilerRuleConfigurations, location_name: "ProfilerRuleConfigurations"))
    UpdateTrainingJobRequest.struct_class = Types::UpdateTrainingJobRequest

    UpdateTrainingJobResponse.add_member(:training_job_arn, Shapes::ShapeRef.new(shape: TrainingJobArn, required: true, location_name: "TrainingJobArn"))
    UpdateTrainingJobResponse.struct_class = Types::UpdateTrainingJobResponse

    UpdateTrialComponentRequest.add_member(:trial_component_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "TrialComponentName"))
    UpdateTrialComponentRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "DisplayName"))
    UpdateTrialComponentRequest.add_member(:status, Shapes::ShapeRef.new(shape: TrialComponentStatus, location_name: "Status"))
    UpdateTrialComponentRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    UpdateTrialComponentRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    UpdateTrialComponentRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: TrialComponentParameters, location_name: "Parameters"))
    UpdateTrialComponentRequest.add_member(:parameters_to_remove, Shapes::ShapeRef.new(shape: ListTrialComponentKey256, location_name: "ParametersToRemove"))
    UpdateTrialComponentRequest.add_member(:input_artifacts, Shapes::ShapeRef.new(shape: TrialComponentArtifacts, location_name: "InputArtifacts"))
    UpdateTrialComponentRequest.add_member(:input_artifacts_to_remove, Shapes::ShapeRef.new(shape: ListTrialComponentKey256, location_name: "InputArtifactsToRemove"))
    UpdateTrialComponentRequest.add_member(:output_artifacts, Shapes::ShapeRef.new(shape: TrialComponentArtifacts, location_name: "OutputArtifacts"))
    UpdateTrialComponentRequest.add_member(:output_artifacts_to_remove, Shapes::ShapeRef.new(shape: ListTrialComponentKey256, location_name: "OutputArtifactsToRemove"))
    UpdateTrialComponentRequest.struct_class = Types::UpdateTrialComponentRequest

    UpdateTrialComponentResponse.add_member(:trial_component_arn, Shapes::ShapeRef.new(shape: TrialComponentArn, location_name: "TrialComponentArn"))
    UpdateTrialComponentResponse.struct_class = Types::UpdateTrialComponentResponse

    UpdateTrialRequest.add_member(:trial_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "TrialName"))
    UpdateTrialRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "DisplayName"))
    UpdateTrialRequest.struct_class = Types::UpdateTrialRequest

    UpdateTrialResponse.add_member(:trial_arn, Shapes::ShapeRef.new(shape: TrialArn, location_name: "TrialArn"))
    UpdateTrialResponse.struct_class = Types::UpdateTrialResponse

    UpdateUserProfileRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    UpdateUserProfileRequest.add_member(:user_profile_name, Shapes::ShapeRef.new(shape: UserProfileName, required: true, location_name: "UserProfileName"))
    UpdateUserProfileRequest.add_member(:user_settings, Shapes::ShapeRef.new(shape: UserSettings, location_name: "UserSettings"))
    UpdateUserProfileRequest.struct_class = Types::UpdateUserProfileRequest

    UpdateUserProfileResponse.add_member(:user_profile_arn, Shapes::ShapeRef.new(shape: UserProfileArn, location_name: "UserProfileArn"))
    UpdateUserProfileResponse.struct_class = Types::UpdateUserProfileResponse

    UpdateWorkforceRequest.add_member(:workforce_name, Shapes::ShapeRef.new(shape: WorkforceName, required: true, location_name: "WorkforceName"))
    UpdateWorkforceRequest.add_member(:source_ip_config, Shapes::ShapeRef.new(shape: SourceIpConfig, location_name: "SourceIpConfig"))
    UpdateWorkforceRequest.add_member(:oidc_config, Shapes::ShapeRef.new(shape: OidcConfig, location_name: "OidcConfig"))
    UpdateWorkforceRequest.struct_class = Types::UpdateWorkforceRequest

    UpdateWorkforceResponse.add_member(:workforce, Shapes::ShapeRef.new(shape: Workforce, required: true, location_name: "Workforce"))
    UpdateWorkforceResponse.struct_class = Types::UpdateWorkforceResponse

    UpdateWorkteamRequest.add_member(:workteam_name, Shapes::ShapeRef.new(shape: WorkteamName, required: true, location_name: "WorkteamName"))
    UpdateWorkteamRequest.add_member(:member_definitions, Shapes::ShapeRef.new(shape: MemberDefinitions, location_name: "MemberDefinitions"))
    UpdateWorkteamRequest.add_member(:description, Shapes::ShapeRef.new(shape: String200, location_name: "Description"))
    UpdateWorkteamRequest.add_member(:notification_configuration, Shapes::ShapeRef.new(shape: NotificationConfiguration, location_name: "NotificationConfiguration"))
    UpdateWorkteamRequest.struct_class = Types::UpdateWorkteamRequest

    UpdateWorkteamResponse.add_member(:workteam, Shapes::ShapeRef.new(shape: Workteam, required: true, location_name: "Workteam"))
    UpdateWorkteamResponse.struct_class = Types::UpdateWorkteamResponse

    UserContext.add_member(:user_profile_arn, Shapes::ShapeRef.new(shape: String, location_name: "UserProfileArn"))
    UserContext.add_member(:user_profile_name, Shapes::ShapeRef.new(shape: String, location_name: "UserProfileName"))
    UserContext.add_member(:domain_id, Shapes::ShapeRef.new(shape: String, location_name: "DomainId"))
    UserContext.struct_class = Types::UserContext

    UserProfileDetails.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "DomainId"))
    UserProfileDetails.add_member(:user_profile_name, Shapes::ShapeRef.new(shape: UserProfileName, location_name: "UserProfileName"))
    UserProfileDetails.add_member(:status, Shapes::ShapeRef.new(shape: UserProfileStatus, location_name: "Status"))
    UserProfileDetails.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    UserProfileDetails.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTime"))
    UserProfileDetails.struct_class = Types::UserProfileDetails

    UserProfileList.member = Shapes::ShapeRef.new(shape: UserProfileDetails)

    UserSettings.add_member(:execution_role, Shapes::ShapeRef.new(shape: RoleArn, location_name: "ExecutionRole"))
    UserSettings.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroups"))
    UserSettings.add_member(:sharing_settings, Shapes::ShapeRef.new(shape: SharingSettings, location_name: "SharingSettings"))
    UserSettings.add_member(:jupyter_server_app_settings, Shapes::ShapeRef.new(shape: JupyterServerAppSettings, location_name: "JupyterServerAppSettings"))
    UserSettings.add_member(:kernel_gateway_app_settings, Shapes::ShapeRef.new(shape: KernelGatewayAppSettings, location_name: "KernelGatewayAppSettings"))
    UserSettings.add_member(:tensor_board_app_settings, Shapes::ShapeRef.new(shape: TensorBoardAppSettings, location_name: "TensorBoardAppSettings"))
    UserSettings.add_member(:r_studio_server_pro_app_settings, Shapes::ShapeRef.new(shape: RStudioServerProAppSettings, location_name: "RStudioServerProAppSettings"))
    UserSettings.add_member(:r_session_app_settings, Shapes::ShapeRef.new(shape: RSessionAppSettings, location_name: "RSessionAppSettings"))
    UserSettings.struct_class = Types::UserSettings

    VariantProperty.add_member(:variant_property_type, Shapes::ShapeRef.new(shape: VariantPropertyType, required: true, location_name: "VariantPropertyType"))
    VariantProperty.struct_class = Types::VariantProperty

    VariantPropertyList.member = Shapes::ShapeRef.new(shape: VariantProperty)

    Vertex.add_member(:arn, Shapes::ShapeRef.new(shape: AssociationEntityArn, location_name: "Arn"))
    Vertex.add_member(:type, Shapes::ShapeRef.new(shape: String40, location_name: "Type"))
    Vertex.add_member(:lineage_type, Shapes::ShapeRef.new(shape: LineageType, location_name: "LineageType"))
    Vertex.struct_class = Types::Vertex

    Vertices.member = Shapes::ShapeRef.new(shape: Vertex)

    VpcConfig.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIds, required: true, location_name: "SecurityGroupIds"))
    VpcConfig.add_member(:subnets, Shapes::ShapeRef.new(shape: Subnets, required: true, location_name: "Subnets"))
    VpcConfig.struct_class = Types::VpcConfig

    VpcSecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    Workforce.add_member(:workforce_name, Shapes::ShapeRef.new(shape: WorkforceName, required: true, location_name: "WorkforceName"))
    Workforce.add_member(:workforce_arn, Shapes::ShapeRef.new(shape: WorkforceArn, required: true, location_name: "WorkforceArn"))
    Workforce.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedDate"))
    Workforce.add_member(:source_ip_config, Shapes::ShapeRef.new(shape: SourceIpConfig, location_name: "SourceIpConfig"))
    Workforce.add_member(:sub_domain, Shapes::ShapeRef.new(shape: String, location_name: "SubDomain"))
    Workforce.add_member(:cognito_config, Shapes::ShapeRef.new(shape: CognitoConfig, location_name: "CognitoConfig"))
    Workforce.add_member(:oidc_config, Shapes::ShapeRef.new(shape: OidcConfigForResponse, location_name: "OidcConfig"))
    Workforce.add_member(:create_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateDate"))
    Workforce.struct_class = Types::Workforce

    Workforces.member = Shapes::ShapeRef.new(shape: Workforce)

    Workteam.add_member(:workteam_name, Shapes::ShapeRef.new(shape: WorkteamName, required: true, location_name: "WorkteamName"))
    Workteam.add_member(:member_definitions, Shapes::ShapeRef.new(shape: MemberDefinitions, required: true, location_name: "MemberDefinitions"))
    Workteam.add_member(:workteam_arn, Shapes::ShapeRef.new(shape: WorkteamArn, required: true, location_name: "WorkteamArn"))
    Workteam.add_member(:workforce_arn, Shapes::ShapeRef.new(shape: WorkforceArn, location_name: "WorkforceArn"))
    Workteam.add_member(:product_listing_ids, Shapes::ShapeRef.new(shape: ProductListings, location_name: "ProductListingIds"))
    Workteam.add_member(:description, Shapes::ShapeRef.new(shape: String200, required: true, location_name: "Description"))
    Workteam.add_member(:sub_domain, Shapes::ShapeRef.new(shape: String, location_name: "SubDomain"))
    Workteam.add_member(:create_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateDate"))
    Workteam.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedDate"))
    Workteam.add_member(:notification_configuration, Shapes::ShapeRef.new(shape: NotificationConfiguration, location_name: "NotificationConfiguration"))
    Workteam.struct_class = Types::Workteam

    Workteams.member = Shapes::ShapeRef.new(shape: Workteam)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-07-24"

      api.metadata = {
        "apiVersion" => "2017-07-24",
        "endpointPrefix" => "api.sagemaker",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "SageMaker",
        "serviceFullName" => "Amazon SageMaker Service",
        "serviceId" => "SageMaker",
        "signatureVersion" => "v4",
        "signingName" => "sagemaker",
        "targetPrefix" => "SageMaker",
        "uid" => "sagemaker-2017-07-24",
      }

      api.add_operation(:add_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: AddAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:add_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddTagsInput)
        o.output = Shapes::ShapeRef.new(shape: AddTagsOutput)
      end)

      api.add_operation(:associate_trial_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateTrialComponent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateTrialComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateTrialComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:batch_describe_model_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDescribeModelPackage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchDescribeModelPackageInput)
        o.output = Shapes::ShapeRef.new(shape: BatchDescribeModelPackageOutput)
      end)

      api.add_operation(:create_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateActionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_algorithm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAlgorithm"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAlgorithmInput)
        o.output = Shapes::ShapeRef.new(shape: CreateAlgorithmOutput)
      end)

      api.add_operation(:create_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApp"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAppRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAppResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
      end)

      api.add_operation(:create_app_image_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAppImageConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAppImageConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAppImageConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
      end)

      api.add_operation(:create_artifact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateArtifact"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateArtifactRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateArtifactResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_auto_ml_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAutoMLJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAutoMLJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAutoMLJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_code_repository, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCodeRepository"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCodeRepositoryInput)
        o.output = Shapes::ShapeRef.new(shape: CreateCodeRepositoryOutput)
      end)

      api.add_operation(:create_compilation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCompilationJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCompilationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCompilationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_context, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateContext"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateContextRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateContextResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_data_quality_job_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataQualityJobDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDataQualityJobDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataQualityJobDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
      end)

      api.add_operation(:create_device_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDeviceFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDeviceFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
      end)

      api.add_operation(:create_edge_packaging_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEdgePackagingJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEdgePackagingJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEndpointInput)
        o.output = Shapes::ShapeRef.new(shape: CreateEndpointOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_endpoint_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEndpointConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEndpointConfigInput)
        o.output = Shapes::ShapeRef.new(shape: CreateEndpointConfigOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_experiment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateExperiment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateExperimentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateExperimentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_feature_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFeatureGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateFeatureGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFeatureGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_flow_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFlowDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateFlowDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFlowDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
      end)

      api.add_operation(:create_human_task_ui, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateHumanTaskUi"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateHumanTaskUiRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateHumanTaskUiResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
      end)

      api.add_operation(:create_hyper_parameter_tuning_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateHyperParameterTuningJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateHyperParameterTuningJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateHyperParameterTuningJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateImage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateImageRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateImageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_image_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateImageVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateImageVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateImageVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:create_inference_recommendations_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInferenceRecommendationsJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateInferenceRecommendationsJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInferenceRecommendationsJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_labeling_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLabelingJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLabelingJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLabelingJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateModel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateModelInput)
        o.output = Shapes::ShapeRef.new(shape: CreateModelOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_model_bias_job_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateModelBiasJobDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateModelBiasJobDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateModelBiasJobDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
      end)

      api.add_operation(:create_model_explainability_job_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateModelExplainabilityJobDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateModelExplainabilityJobDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateModelExplainabilityJobDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
      end)

      api.add_operation(:create_model_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateModelPackage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateModelPackageInput)
        o.output = Shapes::ShapeRef.new(shape: CreateModelPackageOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_model_package_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateModelPackageGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateModelPackageGroupInput)
        o.output = Shapes::ShapeRef.new(shape: CreateModelPackageGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_model_quality_job_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateModelQualityJobDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateModelQualityJobDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateModelQualityJobDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
      end)

      api.add_operation(:create_monitoring_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMonitoringSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateMonitoringScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMonitoringScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
      end)

      api.add_operation(:create_notebook_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNotebookInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateNotebookInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: CreateNotebookInstanceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_notebook_instance_lifecycle_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNotebookInstanceLifecycleConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateNotebookInstanceLifecycleConfigInput)
        o.output = Shapes::ShapeRef.new(shape: CreateNotebookInstanceLifecycleConfigOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePipeline"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_presigned_domain_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePresignedDomainUrl"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePresignedDomainUrlRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePresignedDomainUrlResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:create_presigned_notebook_instance_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePresignedNotebookInstanceUrl"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePresignedNotebookInstanceUrlInput)
        o.output = Shapes::ShapeRef.new(shape: CreatePresignedNotebookInstanceUrlOutput)
      end)

      api.add_operation(:create_processing_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProcessingJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateProcessingJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProcessingJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:create_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProject"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateProjectInput)
        o.output = Shapes::ShapeRef.new(shape: CreateProjectOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_studio_lifecycle_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStudioLifecycleConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateStudioLifecycleConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStudioLifecycleConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
      end)

      api.add_operation(:create_training_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTrainingJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTrainingJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTrainingJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:create_transform_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTransformJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTransformJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTransformJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:create_trial, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTrial"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTrialRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTrialResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_trial_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTrialComponent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTrialComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTrialComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_user_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUserProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateUserProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
      end)

      api.add_operation(:create_workforce, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkforce"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkforceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkforceResponse)
      end)

      api.add_operation(:create_workteam, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkteam"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkteamRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkteamResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:delete_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteActionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:delete_algorithm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAlgorithm"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAlgorithmInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:delete_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApp"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAppRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:delete_app_image_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAppImageConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAppImageConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:delete_artifact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteArtifact"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteArtifactRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteArtifactResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:delete_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:delete_code_repository, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCodeRepository"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCodeRepositoryInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:delete_context, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteContext"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteContextRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteContextResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:delete_data_quality_job_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataQualityJobDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataQualityJobDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:delete_device_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDeviceFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDeviceFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
      end)

      api.add_operation(:delete_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:delete_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEndpointInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:delete_endpoint_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEndpointConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEndpointConfigInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:delete_experiment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteExperiment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteExperimentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteExperimentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:delete_feature_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFeatureGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFeatureGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:delete_flow_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFlowDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFlowDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFlowDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:delete_human_task_ui, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteHumanTaskUi"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteHumanTaskUiRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteHumanTaskUiResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:delete_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteImage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteImageRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteImageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:delete_image_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteImageVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteImageVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteImageVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:delete_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteModel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteModelInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:delete_model_bias_job_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteModelBiasJobDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteModelBiasJobDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:delete_model_explainability_job_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteModelExplainabilityJobDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteModelExplainabilityJobDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:delete_model_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteModelPackage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteModelPackageInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_model_package_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteModelPackageGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteModelPackageGroupInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_model_package_group_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteModelPackageGroupPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteModelPackageGroupPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:delete_model_quality_job_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteModelQualityJobDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteModelQualityJobDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:delete_monitoring_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMonitoringSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteMonitoringScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:delete_notebook_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNotebookInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteNotebookInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:delete_notebook_instance_lifecycle_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNotebookInstanceLifecycleConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteNotebookInstanceLifecycleConfigInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:delete_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePipeline"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:delete_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProject"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteProjectInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_studio_lifecycle_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStudioLifecycleConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteStudioLifecycleConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
      end)

      api.add_operation(:delete_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTagsInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteTagsOutput)
      end)

      api.add_operation(:delete_trial, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTrial"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTrialRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTrialResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:delete_trial_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTrialComponent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTrialComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTrialComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:delete_user_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUserProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:delete_workforce, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkforce"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkforceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWorkforceResponse)
      end)

      api.add_operation(:delete_workteam, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkteam"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkteamRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWorkteamResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:deregister_devices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterDevices"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterDevicesRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:describe_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeActionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_algorithm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAlgorithm"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAlgorithmInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeAlgorithmOutput)
      end)

      api.add_operation(:describe_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeApp"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAppRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAppResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_app_image_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAppImageConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAppImageConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAppImageConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_artifact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeArtifact"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeArtifactRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeArtifactResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_auto_ml_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAutoMLJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAutoMLJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAutoMLJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_code_repository, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCodeRepository"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCodeRepositoryInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeCodeRepositoryOutput)
      end)

      api.add_operation(:describe_compilation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCompilationJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCompilationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCompilationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_context, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeContext"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeContextRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeContextResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_data_quality_job_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDataQualityJobDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDataQualityJobDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDataQualityJobDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDevice"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_device_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDeviceFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDeviceFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDeviceFleetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_edge_packaging_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEdgePackagingJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEdgePackagingJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEdgePackagingJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEndpointInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeEndpointOutput)
      end)

      api.add_operation(:describe_endpoint_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEndpointConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEndpointConfigInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeEndpointConfigOutput)
      end)

      api.add_operation(:describe_experiment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeExperiment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeExperimentRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeExperimentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_feature_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFeatureGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFeatureGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFeatureGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_flow_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFlowDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFlowDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFlowDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_human_task_ui, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeHumanTaskUi"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeHumanTaskUiRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeHumanTaskUiResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_hyper_parameter_tuning_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeHyperParameterTuningJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeHyperParameterTuningJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeHyperParameterTuningJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeImage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeImageRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeImageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_image_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeImageVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeImageVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeImageVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_inference_recommendations_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInferenceRecommendationsJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeInferenceRecommendationsJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInferenceRecommendationsJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_labeling_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLabelingJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLabelingJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLabelingJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_lineage_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLineageGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLineageGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLineageGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeModel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeModelInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeModelOutput)
      end)

      api.add_operation(:describe_model_bias_job_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeModelBiasJobDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeModelBiasJobDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeModelBiasJobDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_model_explainability_job_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeModelExplainabilityJobDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeModelExplainabilityJobDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeModelExplainabilityJobDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_model_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeModelPackage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeModelPackageInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeModelPackageOutput)
      end)

      api.add_operation(:describe_model_package_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeModelPackageGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeModelPackageGroupInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeModelPackageGroupOutput)
      end)

      api.add_operation(:describe_model_quality_job_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeModelQualityJobDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeModelQualityJobDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeModelQualityJobDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_monitoring_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMonitoringSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMonitoringScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMonitoringScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_notebook_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeNotebookInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeNotebookInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeNotebookInstanceOutput)
      end)

      api.add_operation(:describe_notebook_instance_lifecycle_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeNotebookInstanceLifecycleConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeNotebookInstanceLifecycleConfigInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeNotebookInstanceLifecycleConfigOutput)
      end)

      api.add_operation(:describe_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePipeline"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_pipeline_definition_for_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePipelineDefinitionForExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePipelineDefinitionForExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePipelineDefinitionForExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_pipeline_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePipelineExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePipelineExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePipelineExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_processing_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProcessingJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeProcessingJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeProcessingJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProject"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeProjectInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeProjectOutput)
      end)

      api.add_operation(:describe_studio_lifecycle_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStudioLifecycleConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStudioLifecycleConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeStudioLifecycleConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_subscribed_workteam, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSubscribedWorkteam"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSubscribedWorkteamRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSubscribedWorkteamResponse)
      end)

      api.add_operation(:describe_training_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTrainingJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTrainingJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTrainingJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_transform_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTransformJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTransformJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTransformJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_trial, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTrial"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTrialRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTrialResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_trial_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTrialComponent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTrialComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTrialComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_user_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeUserProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeUserProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeUserProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_workforce, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeWorkforce"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeWorkforceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeWorkforceResponse)
      end)

      api.add_operation(:describe_workteam, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeWorkteam"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeWorkteamRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeWorkteamResponse)
      end)

      api.add_operation(:disable_sagemaker_servicecatalog_portfolio, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableSagemakerServicecatalogPortfolio"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisableSagemakerServicecatalogPortfolioInput)
        o.output = Shapes::ShapeRef.new(shape: DisableSagemakerServicecatalogPortfolioOutput)
      end)

      api.add_operation(:disassociate_trial_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateTrialComponent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateTrialComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateTrialComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:enable_sagemaker_servicecatalog_portfolio, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableSagemakerServicecatalogPortfolio"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EnableSagemakerServicecatalogPortfolioInput)
        o.output = Shapes::ShapeRef.new(shape: EnableSagemakerServicecatalogPortfolioOutput)
      end)

      api.add_operation(:get_device_fleet_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeviceFleetReport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDeviceFleetReportRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeviceFleetReportResponse)
      end)

      api.add_operation(:get_lineage_group_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLineageGroupPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLineageGroupPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLineageGroupPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:get_model_package_group_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetModelPackageGroupPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetModelPackageGroupPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: GetModelPackageGroupPolicyOutput)
      end)

      api.add_operation(:get_sagemaker_servicecatalog_portfolio_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSagemakerServicecatalogPortfolioStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSagemakerServicecatalogPortfolioStatusInput)
        o.output = Shapes::ShapeRef.new(shape: GetSagemakerServicecatalogPortfolioStatusOutput)
      end)

      api.add_operation(:get_search_suggestions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSearchSuggestions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSearchSuggestionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSearchSuggestionsResponse)
      end)

      api.add_operation(:list_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListActions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListActionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListActionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_algorithms, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAlgorithms"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAlgorithmsInput)
        o.output = Shapes::ShapeRef.new(shape: ListAlgorithmsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_app_image_configs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAppImageConfigs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAppImageConfigsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAppImageConfigsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_apps, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApps"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAppsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAppsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_artifacts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListArtifacts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListArtifactsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListArtifactsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_auto_ml_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAutoMLJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAutoMLJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAutoMLJobsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_candidates_for_auto_ml_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCandidatesForAutoMLJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCandidatesForAutoMLJobRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCandidatesForAutoMLJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_code_repositories, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCodeRepositories"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCodeRepositoriesInput)
        o.output = Shapes::ShapeRef.new(shape: ListCodeRepositoriesOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_compilation_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCompilationJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCompilationJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCompilationJobsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_contexts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListContexts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListContextsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListContextsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_data_quality_job_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataQualityJobDefinitions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDataQualityJobDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataQualityJobDefinitionsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_device_fleets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeviceFleets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDeviceFleetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDeviceFleetsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_devices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDevices"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDevicesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDevicesResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDomains"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDomainsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDomainsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_edge_packaging_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEdgePackagingJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEdgePackagingJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEdgePackagingJobsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_endpoint_configs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEndpointConfigs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEndpointConfigsInput)
        o.output = Shapes::ShapeRef.new(shape: ListEndpointConfigsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEndpointsInput)
        o.output = Shapes::ShapeRef.new(shape: ListEndpointsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_experiments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExperiments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListExperimentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListExperimentsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_feature_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFeatureGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFeatureGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFeatureGroupsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_flow_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFlowDefinitions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFlowDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFlowDefinitionsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_human_task_uis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListHumanTaskUis"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListHumanTaskUisRequest)
        o.output = Shapes::ShapeRef.new(shape: ListHumanTaskUisResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_hyper_parameter_tuning_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListHyperParameterTuningJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListHyperParameterTuningJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListHyperParameterTuningJobsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_image_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListImageVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListImageVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListImageVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_images, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListImages"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListImagesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListImagesResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_inference_recommendations_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInferenceRecommendationsJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListInferenceRecommendationsJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInferenceRecommendationsJobsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_labeling_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLabelingJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLabelingJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLabelingJobsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_labeling_jobs_for_workteam, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLabelingJobsForWorkteam"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLabelingJobsForWorkteamRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLabelingJobsForWorkteamResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_lineage_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLineageGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLineageGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLineageGroupsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_model_bias_job_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListModelBiasJobDefinitions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListModelBiasJobDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListModelBiasJobDefinitionsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_model_explainability_job_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListModelExplainabilityJobDefinitions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListModelExplainabilityJobDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListModelExplainabilityJobDefinitionsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_model_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListModelMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListModelMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: ListModelMetadataResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_model_package_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListModelPackageGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListModelPackageGroupsInput)
        o.output = Shapes::ShapeRef.new(shape: ListModelPackageGroupsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_model_packages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListModelPackages"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListModelPackagesInput)
        o.output = Shapes::ShapeRef.new(shape: ListModelPackagesOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_model_quality_job_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListModelQualityJobDefinitions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListModelQualityJobDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListModelQualityJobDefinitionsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListModels"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListModelsInput)
        o.output = Shapes::ShapeRef.new(shape: ListModelsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_monitoring_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMonitoringExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListMonitoringExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMonitoringExecutionsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_monitoring_schedules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMonitoringSchedules"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListMonitoringSchedulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMonitoringSchedulesResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_notebook_instance_lifecycle_configs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNotebookInstanceLifecycleConfigs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListNotebookInstanceLifecycleConfigsInput)
        o.output = Shapes::ShapeRef.new(shape: ListNotebookInstanceLifecycleConfigsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_notebook_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNotebookInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListNotebookInstancesInput)
        o.output = Shapes::ShapeRef.new(shape: ListNotebookInstancesOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_pipeline_execution_steps, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPipelineExecutionSteps"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPipelineExecutionStepsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPipelineExecutionStepsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_pipeline_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPipelineExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPipelineExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPipelineExecutionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_pipeline_parameters_for_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPipelineParametersForExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPipelineParametersForExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPipelineParametersForExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_pipelines, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPipelines"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPipelinesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPipelinesResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_processing_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProcessingJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListProcessingJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProcessingJobsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_projects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProjects"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListProjectsInput)
        o.output = Shapes::ShapeRef.new(shape: ListProjectsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_studio_lifecycle_configs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStudioLifecycleConfigs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListStudioLifecycleConfigsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStudioLifecycleConfigsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_subscribed_workteams, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSubscribedWorkteams"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSubscribedWorkteamsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSubscribedWorkteamsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_training_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTrainingJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTrainingJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTrainingJobsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_training_jobs_for_hyper_parameter_tuning_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTrainingJobsForHyperParameterTuningJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTrainingJobsForHyperParameterTuningJobRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTrainingJobsForHyperParameterTuningJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_transform_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTransformJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTransformJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTransformJobsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_trial_components, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTrialComponents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTrialComponentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTrialComponentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_trials, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTrials"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTrialsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTrialsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_user_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUserProfiles"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListUserProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUserProfilesResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_workforces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkforces"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListWorkforcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkforcesResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_workteams, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkteams"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListWorkteamsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkteamsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_model_package_group_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutModelPackageGroupPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutModelPackageGroupPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: PutModelPackageGroupPolicyOutput)
      end)

      api.add_operation(:query_lineage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "QueryLineage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: QueryLineageRequest)
        o.output = Shapes::ShapeRef.new(shape: QueryLineageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:register_devices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterDevices"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterDevicesRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:render_ui_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RenderUiTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RenderUiTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: RenderUiTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:retry_pipeline_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RetryPipelineExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RetryPipelineExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: RetryPipelineExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:search, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Search"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:send_pipeline_execution_step_failure, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendPipelineExecutionStepFailure"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendPipelineExecutionStepFailureRequest)
        o.output = Shapes::ShapeRef.new(shape: SendPipelineExecutionStepFailureResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:send_pipeline_execution_step_success, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendPipelineExecutionStepSuccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendPipelineExecutionStepSuccessRequest)
        o.output = Shapes::ShapeRef.new(shape: SendPipelineExecutionStepSuccessResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:start_monitoring_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMonitoringSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartMonitoringScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:start_notebook_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartNotebookInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartNotebookInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:start_pipeline_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartPipelineExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartPipelineExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartPipelineExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:stop_auto_ml_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopAutoMLJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopAutoMLJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:stop_compilation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopCompilationJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopCompilationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:stop_edge_packaging_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopEdgePackagingJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopEdgePackagingJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:stop_hyper_parameter_tuning_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopHyperParameterTuningJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopHyperParameterTuningJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:stop_inference_recommendations_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopInferenceRecommendationsJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopInferenceRecommendationsJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:stop_labeling_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopLabelingJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopLabelingJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:stop_monitoring_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopMonitoringSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopMonitoringScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:stop_notebook_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopNotebookInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopNotebookInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:stop_pipeline_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopPipelineExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopPipelineExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: StopPipelineExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:stop_processing_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopProcessingJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopProcessingJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:stop_training_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopTrainingJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopTrainingJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:stop_transform_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopTransformJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopTransformJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:update_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateActionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:update_app_image_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAppImageConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAppImageConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAppImageConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:update_artifact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateArtifact"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateArtifactRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateArtifactResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:update_code_repository, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCodeRepository"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCodeRepositoryInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateCodeRepositoryOutput)
      end)

      api.add_operation(:update_context, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateContext"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateContextRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateContextResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:update_device_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDeviceFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDeviceFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
      end)

      api.add_operation(:update_devices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDevices"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDevicesRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:update_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:update_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEndpointInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateEndpointOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:update_endpoint_weights_and_capacities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEndpointWeightsAndCapacities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEndpointWeightsAndCapacitiesInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateEndpointWeightsAndCapacitiesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:update_experiment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateExperiment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateExperimentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateExperimentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:update_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateImage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateImageRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateImageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:update_model_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateModelPackage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateModelPackageInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateModelPackageOutput)
      end)

      api.add_operation(:update_monitoring_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMonitoringSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateMonitoringScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMonitoringScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:update_notebook_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNotebookInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateNotebookInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateNotebookInstanceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:update_notebook_instance_lifecycle_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNotebookInstanceLifecycleConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateNotebookInstanceLifecycleConfigInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateNotebookInstanceLifecycleConfigOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:update_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePipeline"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdatePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:update_pipeline_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePipelineExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdatePipelineExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePipelineExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:update_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProject"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateProjectInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateProjectOutput)
      end)

      api.add_operation(:update_training_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTrainingJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateTrainingJobRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTrainingJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:update_trial, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTrial"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateTrialRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTrialResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:update_trial_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTrialComponent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateTrialComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTrialComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:update_user_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUserProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateUserProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:update_workforce, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkforce"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkforceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWorkforceResponse)
      end)

      api.add_operation(:update_workteam, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkteam"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkteamRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWorkteamResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)
    end

  end
end
