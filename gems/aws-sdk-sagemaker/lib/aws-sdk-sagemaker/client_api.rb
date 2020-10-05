# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SageMaker
  # @api private
  module ClientApi

    include Seahorse::Model

    Accept = Shapes::StringShape.new(name: 'Accept')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AddTagsInput = Shapes::StructureShape.new(name: 'AddTagsInput')
    AddTagsOutput = Shapes::StructureShape.new(name: 'AddTagsOutput')
    AdditionalCodeRepositoryNamesOrUrls = Shapes::ListShape.new(name: 'AdditionalCodeRepositoryNamesOrUrls')
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
    AppInstanceType = Shapes::StringShape.new(name: 'AppInstanceType')
    AppList = Shapes::ListShape.new(name: 'AppList')
    AppName = Shapes::StringShape.new(name: 'AppName')
    AppNetworkAccessType = Shapes::StringShape.new(name: 'AppNetworkAccessType')
    AppSortKey = Shapes::StringShape.new(name: 'AppSortKey')
    AppSpecification = Shapes::StructureShape.new(name: 'AppSpecification')
    AppStatus = Shapes::StringShape.new(name: 'AppStatus')
    AppType = Shapes::StringShape.new(name: 'AppType')
    ArnOrName = Shapes::StringShape.new(name: 'ArnOrName')
    AssemblyType = Shapes::StringShape.new(name: 'AssemblyType')
    AssociateTrialComponentRequest = Shapes::StructureShape.new(name: 'AssociateTrialComponentRequest')
    AssociateTrialComponentResponse = Shapes::StructureShape.new(name: 'AssociateTrialComponentResponse')
    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    AttributeNames = Shapes::ListShape.new(name: 'AttributeNames')
    AuthMode = Shapes::StringShape.new(name: 'AuthMode')
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
    AutoMLS3DataSource = Shapes::StructureShape.new(name: 'AutoMLS3DataSource')
    AutoMLS3DataType = Shapes::StringShape.new(name: 'AutoMLS3DataType')
    AutoMLSecurityConfig = Shapes::StructureShape.new(name: 'AutoMLSecurityConfig')
    AutoMLSortBy = Shapes::StringShape.new(name: 'AutoMLSortBy')
    AutoMLSortOrder = Shapes::StringShape.new(name: 'AutoMLSortOrder')
    AwsManagedHumanLoopRequestSource = Shapes::StringShape.new(name: 'AwsManagedHumanLoopRequestSource')
    BatchStrategy = Shapes::StringShape.new(name: 'BatchStrategy')
    BillableTimeInSeconds = Shapes::IntegerShape.new(name: 'BillableTimeInSeconds')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BooleanOperator = Shapes::StringShape.new(name: 'BooleanOperator')
    Branch = Shapes::StringShape.new(name: 'Branch')
    CandidateDefinitionNotebookLocation = Shapes::StringShape.new(name: 'CandidateDefinitionNotebookLocation')
    CandidateName = Shapes::StringShape.new(name: 'CandidateName')
    CandidateSortBy = Shapes::StringShape.new(name: 'CandidateSortBy')
    CandidateStatus = Shapes::StringShape.new(name: 'CandidateStatus')
    CandidateStepArn = Shapes::StringShape.new(name: 'CandidateStepArn')
    CandidateStepName = Shapes::StringShape.new(name: 'CandidateStepName')
    CandidateStepType = Shapes::StringShape.new(name: 'CandidateStepType')
    CandidateSteps = Shapes::ListShape.new(name: 'CandidateSteps')
    CaptureContentTypeHeader = Shapes::StructureShape.new(name: 'CaptureContentTypeHeader')
    CaptureMode = Shapes::StringShape.new(name: 'CaptureMode')
    CaptureOption = Shapes::StructureShape.new(name: 'CaptureOption')
    CaptureOptionList = Shapes::ListShape.new(name: 'CaptureOptionList')
    CaptureStatus = Shapes::StringShape.new(name: 'CaptureStatus')
    CategoricalParameterRange = Shapes::StructureShape.new(name: 'CategoricalParameterRange')
    CategoricalParameterRangeSpecification = Shapes::StructureShape.new(name: 'CategoricalParameterRangeSpecification')
    CategoricalParameterRanges = Shapes::ListShape.new(name: 'CategoricalParameterRanges')
    Cents = Shapes::IntegerShape.new(name: 'Cents')
    CertifyForMarketplace = Shapes::BooleanShape.new(name: 'CertifyForMarketplace')
    Channel = Shapes::StructureShape.new(name: 'Channel')
    ChannelName = Shapes::StringShape.new(name: 'ChannelName')
    ChannelSpecification = Shapes::StructureShape.new(name: 'ChannelSpecification')
    ChannelSpecifications = Shapes::ListShape.new(name: 'ChannelSpecifications')
    CheckpointConfig = Shapes::StructureShape.new(name: 'CheckpointConfig')
    Cidr = Shapes::StringShape.new(name: 'Cidr')
    Cidrs = Shapes::ListShape.new(name: 'Cidrs')
    ClientId = Shapes::StringShape.new(name: 'ClientId')
    ClientSecret = Shapes::StringShape.new(name: 'ClientSecret')
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
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    ContentTypes = Shapes::ListShape.new(name: 'ContentTypes')
    ContinuousParameterRange = Shapes::StructureShape.new(name: 'ContinuousParameterRange')
    ContinuousParameterRangeSpecification = Shapes::StructureShape.new(name: 'ContinuousParameterRangeSpecification')
    ContinuousParameterRanges = Shapes::ListShape.new(name: 'ContinuousParameterRanges')
    CreateAlgorithmInput = Shapes::StructureShape.new(name: 'CreateAlgorithmInput')
    CreateAlgorithmOutput = Shapes::StructureShape.new(name: 'CreateAlgorithmOutput')
    CreateAppRequest = Shapes::StructureShape.new(name: 'CreateAppRequest')
    CreateAppResponse = Shapes::StructureShape.new(name: 'CreateAppResponse')
    CreateAutoMLJobRequest = Shapes::StructureShape.new(name: 'CreateAutoMLJobRequest')
    CreateAutoMLJobResponse = Shapes::StructureShape.new(name: 'CreateAutoMLJobResponse')
    CreateCodeRepositoryInput = Shapes::StructureShape.new(name: 'CreateCodeRepositoryInput')
    CreateCodeRepositoryOutput = Shapes::StructureShape.new(name: 'CreateCodeRepositoryOutput')
    CreateCompilationJobRequest = Shapes::StructureShape.new(name: 'CreateCompilationJobRequest')
    CreateCompilationJobResponse = Shapes::StructureShape.new(name: 'CreateCompilationJobResponse')
    CreateDomainRequest = Shapes::StructureShape.new(name: 'CreateDomainRequest')
    CreateDomainResponse = Shapes::StructureShape.new(name: 'CreateDomainResponse')
    CreateEndpointConfigInput = Shapes::StructureShape.new(name: 'CreateEndpointConfigInput')
    CreateEndpointConfigOutput = Shapes::StructureShape.new(name: 'CreateEndpointConfigOutput')
    CreateEndpointInput = Shapes::StructureShape.new(name: 'CreateEndpointInput')
    CreateEndpointOutput = Shapes::StructureShape.new(name: 'CreateEndpointOutput')
    CreateExperimentRequest = Shapes::StructureShape.new(name: 'CreateExperimentRequest')
    CreateExperimentResponse = Shapes::StructureShape.new(name: 'CreateExperimentResponse')
    CreateFlowDefinitionRequest = Shapes::StructureShape.new(name: 'CreateFlowDefinitionRequest')
    CreateFlowDefinitionResponse = Shapes::StructureShape.new(name: 'CreateFlowDefinitionResponse')
    CreateHumanTaskUiRequest = Shapes::StructureShape.new(name: 'CreateHumanTaskUiRequest')
    CreateHumanTaskUiResponse = Shapes::StructureShape.new(name: 'CreateHumanTaskUiResponse')
    CreateHyperParameterTuningJobRequest = Shapes::StructureShape.new(name: 'CreateHyperParameterTuningJobRequest')
    CreateHyperParameterTuningJobResponse = Shapes::StructureShape.new(name: 'CreateHyperParameterTuningJobResponse')
    CreateLabelingJobRequest = Shapes::StructureShape.new(name: 'CreateLabelingJobRequest')
    CreateLabelingJobResponse = Shapes::StructureShape.new(name: 'CreateLabelingJobResponse')
    CreateModelInput = Shapes::StructureShape.new(name: 'CreateModelInput')
    CreateModelOutput = Shapes::StructureShape.new(name: 'CreateModelOutput')
    CreateModelPackageInput = Shapes::StructureShape.new(name: 'CreateModelPackageInput')
    CreateModelPackageOutput = Shapes::StructureShape.new(name: 'CreateModelPackageOutput')
    CreateMonitoringScheduleRequest = Shapes::StructureShape.new(name: 'CreateMonitoringScheduleRequest')
    CreateMonitoringScheduleResponse = Shapes::StructureShape.new(name: 'CreateMonitoringScheduleResponse')
    CreateNotebookInstanceInput = Shapes::StructureShape.new(name: 'CreateNotebookInstanceInput')
    CreateNotebookInstanceLifecycleConfigInput = Shapes::StructureShape.new(name: 'CreateNotebookInstanceLifecycleConfigInput')
    CreateNotebookInstanceLifecycleConfigOutput = Shapes::StructureShape.new(name: 'CreateNotebookInstanceLifecycleConfigOutput')
    CreateNotebookInstanceOutput = Shapes::StructureShape.new(name: 'CreateNotebookInstanceOutput')
    CreatePresignedDomainUrlRequest = Shapes::StructureShape.new(name: 'CreatePresignedDomainUrlRequest')
    CreatePresignedDomainUrlResponse = Shapes::StructureShape.new(name: 'CreatePresignedDomainUrlResponse')
    CreatePresignedNotebookInstanceUrlInput = Shapes::StructureShape.new(name: 'CreatePresignedNotebookInstanceUrlInput')
    CreatePresignedNotebookInstanceUrlOutput = Shapes::StructureShape.new(name: 'CreatePresignedNotebookInstanceUrlOutput')
    CreateProcessingJobRequest = Shapes::StructureShape.new(name: 'CreateProcessingJobRequest')
    CreateProcessingJobResponse = Shapes::StructureShape.new(name: 'CreateProcessingJobResponse')
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
    DataCaptureConfig = Shapes::StructureShape.new(name: 'DataCaptureConfig')
    DataCaptureConfigSummary = Shapes::StructureShape.new(name: 'DataCaptureConfigSummary')
    DataExplorationNotebookLocation = Shapes::StringShape.new(name: 'DataExplorationNotebookLocation')
    DataInputConfig = Shapes::StringShape.new(name: 'DataInputConfig')
    DataProcessing = Shapes::StructureShape.new(name: 'DataProcessing')
    DataSource = Shapes::StructureShape.new(name: 'DataSource')
    DebugHookConfig = Shapes::StructureShape.new(name: 'DebugHookConfig')
    DebugRuleConfiguration = Shapes::StructureShape.new(name: 'DebugRuleConfiguration')
    DebugRuleConfigurations = Shapes::ListShape.new(name: 'DebugRuleConfigurations')
    DebugRuleEvaluationStatus = Shapes::StructureShape.new(name: 'DebugRuleEvaluationStatus')
    DebugRuleEvaluationStatuses = Shapes::ListShape.new(name: 'DebugRuleEvaluationStatuses')
    DeleteAlgorithmInput = Shapes::StructureShape.new(name: 'DeleteAlgorithmInput')
    DeleteAppRequest = Shapes::StructureShape.new(name: 'DeleteAppRequest')
    DeleteCodeRepositoryInput = Shapes::StructureShape.new(name: 'DeleteCodeRepositoryInput')
    DeleteDomainRequest = Shapes::StructureShape.new(name: 'DeleteDomainRequest')
    DeleteEndpointConfigInput = Shapes::StructureShape.new(name: 'DeleteEndpointConfigInput')
    DeleteEndpointInput = Shapes::StructureShape.new(name: 'DeleteEndpointInput')
    DeleteExperimentRequest = Shapes::StructureShape.new(name: 'DeleteExperimentRequest')
    DeleteExperimentResponse = Shapes::StructureShape.new(name: 'DeleteExperimentResponse')
    DeleteFlowDefinitionRequest = Shapes::StructureShape.new(name: 'DeleteFlowDefinitionRequest')
    DeleteFlowDefinitionResponse = Shapes::StructureShape.new(name: 'DeleteFlowDefinitionResponse')
    DeleteHumanTaskUiRequest = Shapes::StructureShape.new(name: 'DeleteHumanTaskUiRequest')
    DeleteHumanTaskUiResponse = Shapes::StructureShape.new(name: 'DeleteHumanTaskUiResponse')
    DeleteModelInput = Shapes::StructureShape.new(name: 'DeleteModelInput')
    DeleteModelPackageInput = Shapes::StructureShape.new(name: 'DeleteModelPackageInput')
    DeleteMonitoringScheduleRequest = Shapes::StructureShape.new(name: 'DeleteMonitoringScheduleRequest')
    DeleteNotebookInstanceInput = Shapes::StructureShape.new(name: 'DeleteNotebookInstanceInput')
    DeleteNotebookInstanceLifecycleConfigInput = Shapes::StructureShape.new(name: 'DeleteNotebookInstanceLifecycleConfigInput')
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
    DescribeAlgorithmInput = Shapes::StructureShape.new(name: 'DescribeAlgorithmInput')
    DescribeAlgorithmOutput = Shapes::StructureShape.new(name: 'DescribeAlgorithmOutput')
    DescribeAppRequest = Shapes::StructureShape.new(name: 'DescribeAppRequest')
    DescribeAppResponse = Shapes::StructureShape.new(name: 'DescribeAppResponse')
    DescribeAutoMLJobRequest = Shapes::StructureShape.new(name: 'DescribeAutoMLJobRequest')
    DescribeAutoMLJobResponse = Shapes::StructureShape.new(name: 'DescribeAutoMLJobResponse')
    DescribeCodeRepositoryInput = Shapes::StructureShape.new(name: 'DescribeCodeRepositoryInput')
    DescribeCodeRepositoryOutput = Shapes::StructureShape.new(name: 'DescribeCodeRepositoryOutput')
    DescribeCompilationJobRequest = Shapes::StructureShape.new(name: 'DescribeCompilationJobRequest')
    DescribeCompilationJobResponse = Shapes::StructureShape.new(name: 'DescribeCompilationJobResponse')
    DescribeDomainRequest = Shapes::StructureShape.new(name: 'DescribeDomainRequest')
    DescribeDomainResponse = Shapes::StructureShape.new(name: 'DescribeDomainResponse')
    DescribeEndpointConfigInput = Shapes::StructureShape.new(name: 'DescribeEndpointConfigInput')
    DescribeEndpointConfigOutput = Shapes::StructureShape.new(name: 'DescribeEndpointConfigOutput')
    DescribeEndpointInput = Shapes::StructureShape.new(name: 'DescribeEndpointInput')
    DescribeEndpointOutput = Shapes::StructureShape.new(name: 'DescribeEndpointOutput')
    DescribeExperimentRequest = Shapes::StructureShape.new(name: 'DescribeExperimentRequest')
    DescribeExperimentResponse = Shapes::StructureShape.new(name: 'DescribeExperimentResponse')
    DescribeFlowDefinitionRequest = Shapes::StructureShape.new(name: 'DescribeFlowDefinitionRequest')
    DescribeFlowDefinitionResponse = Shapes::StructureShape.new(name: 'DescribeFlowDefinitionResponse')
    DescribeHumanTaskUiRequest = Shapes::StructureShape.new(name: 'DescribeHumanTaskUiRequest')
    DescribeHumanTaskUiResponse = Shapes::StructureShape.new(name: 'DescribeHumanTaskUiResponse')
    DescribeHyperParameterTuningJobRequest = Shapes::StructureShape.new(name: 'DescribeHyperParameterTuningJobRequest')
    DescribeHyperParameterTuningJobResponse = Shapes::StructureShape.new(name: 'DescribeHyperParameterTuningJobResponse')
    DescribeLabelingJobRequest = Shapes::StructureShape.new(name: 'DescribeLabelingJobRequest')
    DescribeLabelingJobResponse = Shapes::StructureShape.new(name: 'DescribeLabelingJobResponse')
    DescribeModelInput = Shapes::StructureShape.new(name: 'DescribeModelInput')
    DescribeModelOutput = Shapes::StructureShape.new(name: 'DescribeModelOutput')
    DescribeModelPackageInput = Shapes::StructureShape.new(name: 'DescribeModelPackageInput')
    DescribeModelPackageOutput = Shapes::StructureShape.new(name: 'DescribeModelPackageOutput')
    DescribeMonitoringScheduleRequest = Shapes::StructureShape.new(name: 'DescribeMonitoringScheduleRequest')
    DescribeMonitoringScheduleResponse = Shapes::StructureShape.new(name: 'DescribeMonitoringScheduleResponse')
    DescribeNotebookInstanceInput = Shapes::StructureShape.new(name: 'DescribeNotebookInstanceInput')
    DescribeNotebookInstanceLifecycleConfigInput = Shapes::StructureShape.new(name: 'DescribeNotebookInstanceLifecycleConfigInput')
    DescribeNotebookInstanceLifecycleConfigOutput = Shapes::StructureShape.new(name: 'DescribeNotebookInstanceLifecycleConfigOutput')
    DescribeNotebookInstanceOutput = Shapes::StructureShape.new(name: 'DescribeNotebookInstanceOutput')
    DescribeProcessingJobRequest = Shapes::StructureShape.new(name: 'DescribeProcessingJobRequest')
    DescribeProcessingJobResponse = Shapes::StructureShape.new(name: 'DescribeProcessingJobResponse')
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
    DesiredWeightAndCapacity = Shapes::StructureShape.new(name: 'DesiredWeightAndCapacity')
    DesiredWeightAndCapacityList = Shapes::ListShape.new(name: 'DesiredWeightAndCapacityList')
    DestinationS3Uri = Shapes::StringShape.new(name: 'DestinationS3Uri')
    DetailedAlgorithmStatus = Shapes::StringShape.new(name: 'DetailedAlgorithmStatus')
    DetailedModelPackageStatus = Shapes::StringShape.new(name: 'DetailedModelPackageStatus')
    DirectInternetAccess = Shapes::StringShape.new(name: 'DirectInternetAccess')
    DirectoryPath = Shapes::StringShape.new(name: 'DirectoryPath')
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
    DomainStatus = Shapes::StringShape.new(name: 'DomainStatus')
    DoubleParameterValue = Shapes::FloatShape.new(name: 'DoubleParameterValue')
    EfsUid = Shapes::StringShape.new(name: 'EfsUid')
    EnableCapture = Shapes::BooleanShape.new(name: 'EnableCapture')
    EndpointArn = Shapes::StringShape.new(name: 'EndpointArn')
    EndpointConfigArn = Shapes::StringShape.new(name: 'EndpointConfigArn')
    EndpointConfigName = Shapes::StringShape.new(name: 'EndpointConfigName')
    EndpointConfigNameContains = Shapes::StringShape.new(name: 'EndpointConfigNameContains')
    EndpointConfigSortKey = Shapes::StringShape.new(name: 'EndpointConfigSortKey')
    EndpointConfigSummary = Shapes::StructureShape.new(name: 'EndpointConfigSummary')
    EndpointConfigSummaryList = Shapes::ListShape.new(name: 'EndpointConfigSummaryList')
    EndpointInput = Shapes::StructureShape.new(name: 'EndpointInput')
    EndpointName = Shapes::StringShape.new(name: 'EndpointName')
    EndpointNameContains = Shapes::StringShape.new(name: 'EndpointNameContains')
    EndpointSortKey = Shapes::StringShape.new(name: 'EndpointSortKey')
    EndpointStatus = Shapes::StringShape.new(name: 'EndpointStatus')
    EndpointSummary = Shapes::StructureShape.new(name: 'EndpointSummary')
    EndpointSummaryList = Shapes::ListShape.new(name: 'EndpointSummaryList')
    EntityDescription = Shapes::StringShape.new(name: 'EntityDescription')
    EntityName = Shapes::StringShape.new(name: 'EntityName')
    EnvironmentKey = Shapes::StringShape.new(name: 'EnvironmentKey')
    EnvironmentMap = Shapes::MapShape.new(name: 'EnvironmentMap')
    EnvironmentValue = Shapes::StringShape.new(name: 'EnvironmentValue')
    ExecutionStatus = Shapes::StringShape.new(name: 'ExecutionStatus')
    ExitMessage = Shapes::StringShape.new(name: 'ExitMessage')
    Experiment = Shapes::StructureShape.new(name: 'Experiment')
    ExperimentArn = Shapes::StringShape.new(name: 'ExperimentArn')
    ExperimentConfig = Shapes::StructureShape.new(name: 'ExperimentConfig')
    ExperimentDescription = Shapes::StringShape.new(name: 'ExperimentDescription')
    ExperimentEntityName = Shapes::StringShape.new(name: 'ExperimentEntityName')
    ExperimentSource = Shapes::StructureShape.new(name: 'ExperimentSource')
    ExperimentSourceArn = Shapes::StringShape.new(name: 'ExperimentSourceArn')
    ExperimentSummaries = Shapes::ListShape.new(name: 'ExperimentSummaries')
    ExperimentSummary = Shapes::StructureShape.new(name: 'ExperimentSummary')
    FailureReason = Shapes::StringShape.new(name: 'FailureReason')
    FileSystemAccessMode = Shapes::StringShape.new(name: 'FileSystemAccessMode')
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
    GenerateCandidateDefinitionsOnly = Shapes::BooleanShape.new(name: 'GenerateCandidateDefinitionsOnly')
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
    HyperParameters = Shapes::MapShape.new(name: 'HyperParameters')
    ImageArn = Shapes::StringShape.new(name: 'ImageArn')
    ImageConfig = Shapes::StructureShape.new(name: 'ImageConfig')
    ImageDigest = Shapes::StringShape.new(name: 'ImageDigest')
    ImageUri = Shapes::StringShape.new(name: 'ImageUri')
    InferenceSpecification = Shapes::StructureShape.new(name: 'InferenceSpecification')
    InputConfig = Shapes::StructureShape.new(name: 'InputConfig')
    InputDataConfig = Shapes::ListShape.new(name: 'InputDataConfig')
    InputModes = Shapes::ListShape.new(name: 'InputModes')
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    IntegerParameterRange = Shapes::StructureShape.new(name: 'IntegerParameterRange')
    IntegerParameterRangeSpecification = Shapes::StructureShape.new(name: 'IntegerParameterRangeSpecification')
    IntegerParameterRanges = Shapes::ListShape.new(name: 'IntegerParameterRanges')
    InvocationsMaxRetries = Shapes::IntegerShape.new(name: 'InvocationsMaxRetries')
    InvocationsTimeoutInSeconds = Shapes::IntegerShape.new(name: 'InvocationsTimeoutInSeconds')
    JobReferenceCode = Shapes::StringShape.new(name: 'JobReferenceCode')
    JobReferenceCodeContains = Shapes::StringShape.new(name: 'JobReferenceCodeContains')
    JoinSource = Shapes::StringShape.new(name: 'JoinSource')
    JsonContentType = Shapes::StringShape.new(name: 'JsonContentType')
    JsonContentTypes = Shapes::ListShape.new(name: 'JsonContentTypes')
    JsonPath = Shapes::StringShape.new(name: 'JsonPath')
    JupyterServerAppSettings = Shapes::StructureShape.new(name: 'JupyterServerAppSettings')
    KernelGatewayAppSettings = Shapes::StructureShape.new(name: 'KernelGatewayAppSettings')
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
    LastModifiedTime = Shapes::TimestampShape.new(name: 'LastModifiedTime')
    ListAlgorithmsInput = Shapes::StructureShape.new(name: 'ListAlgorithmsInput')
    ListAlgorithmsOutput = Shapes::StructureShape.new(name: 'ListAlgorithmsOutput')
    ListAppsRequest = Shapes::StructureShape.new(name: 'ListAppsRequest')
    ListAppsResponse = Shapes::StructureShape.new(name: 'ListAppsResponse')
    ListAutoMLJobsRequest = Shapes::StructureShape.new(name: 'ListAutoMLJobsRequest')
    ListAutoMLJobsResponse = Shapes::StructureShape.new(name: 'ListAutoMLJobsResponse')
    ListCandidatesForAutoMLJobRequest = Shapes::StructureShape.new(name: 'ListCandidatesForAutoMLJobRequest')
    ListCandidatesForAutoMLJobResponse = Shapes::StructureShape.new(name: 'ListCandidatesForAutoMLJobResponse')
    ListCodeRepositoriesInput = Shapes::StructureShape.new(name: 'ListCodeRepositoriesInput')
    ListCodeRepositoriesOutput = Shapes::StructureShape.new(name: 'ListCodeRepositoriesOutput')
    ListCompilationJobsRequest = Shapes::StructureShape.new(name: 'ListCompilationJobsRequest')
    ListCompilationJobsResponse = Shapes::StructureShape.new(name: 'ListCompilationJobsResponse')
    ListCompilationJobsSortBy = Shapes::StringShape.new(name: 'ListCompilationJobsSortBy')
    ListDomainsRequest = Shapes::StructureShape.new(name: 'ListDomainsRequest')
    ListDomainsResponse = Shapes::StructureShape.new(name: 'ListDomainsResponse')
    ListEndpointConfigsInput = Shapes::StructureShape.new(name: 'ListEndpointConfigsInput')
    ListEndpointConfigsOutput = Shapes::StructureShape.new(name: 'ListEndpointConfigsOutput')
    ListEndpointsInput = Shapes::StructureShape.new(name: 'ListEndpointsInput')
    ListEndpointsOutput = Shapes::StructureShape.new(name: 'ListEndpointsOutput')
    ListExperimentsRequest = Shapes::StructureShape.new(name: 'ListExperimentsRequest')
    ListExperimentsResponse = Shapes::StructureShape.new(name: 'ListExperimentsResponse')
    ListFlowDefinitionsRequest = Shapes::StructureShape.new(name: 'ListFlowDefinitionsRequest')
    ListFlowDefinitionsResponse = Shapes::StructureShape.new(name: 'ListFlowDefinitionsResponse')
    ListHumanTaskUisRequest = Shapes::StructureShape.new(name: 'ListHumanTaskUisRequest')
    ListHumanTaskUisResponse = Shapes::StructureShape.new(name: 'ListHumanTaskUisResponse')
    ListHyperParameterTuningJobsRequest = Shapes::StructureShape.new(name: 'ListHyperParameterTuningJobsRequest')
    ListHyperParameterTuningJobsResponse = Shapes::StructureShape.new(name: 'ListHyperParameterTuningJobsResponse')
    ListLabelingJobsForWorkteamRequest = Shapes::StructureShape.new(name: 'ListLabelingJobsForWorkteamRequest')
    ListLabelingJobsForWorkteamResponse = Shapes::StructureShape.new(name: 'ListLabelingJobsForWorkteamResponse')
    ListLabelingJobsForWorkteamSortByOptions = Shapes::StringShape.new(name: 'ListLabelingJobsForWorkteamSortByOptions')
    ListLabelingJobsRequest = Shapes::StructureShape.new(name: 'ListLabelingJobsRequest')
    ListLabelingJobsResponse = Shapes::StructureShape.new(name: 'ListLabelingJobsResponse')
    ListModelPackagesInput = Shapes::StructureShape.new(name: 'ListModelPackagesInput')
    ListModelPackagesOutput = Shapes::StructureShape.new(name: 'ListModelPackagesOutput')
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
    ListProcessingJobsRequest = Shapes::StructureShape.new(name: 'ListProcessingJobsRequest')
    ListProcessingJobsResponse = Shapes::StructureShape.new(name: 'ListProcessingJobsResponse')
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
    MaxAutoMLJobRuntimeInSeconds = Shapes::IntegerShape.new(name: 'MaxAutoMLJobRuntimeInSeconds')
    MaxCandidates = Shapes::IntegerShape.new(name: 'MaxCandidates')
    MaxConcurrentTaskCount = Shapes::IntegerShape.new(name: 'MaxConcurrentTaskCount')
    MaxConcurrentTransforms = Shapes::IntegerShape.new(name: 'MaxConcurrentTransforms')
    MaxHumanLabeledObjectCount = Shapes::IntegerShape.new(name: 'MaxHumanLabeledObjectCount')
    MaxNumberOfTrainingJobs = Shapes::IntegerShape.new(name: 'MaxNumberOfTrainingJobs')
    MaxParallelTrainingJobs = Shapes::IntegerShape.new(name: 'MaxParallelTrainingJobs')
    MaxPayloadInMB = Shapes::IntegerShape.new(name: 'MaxPayloadInMB')
    MaxPercentageOfInputDatasetLabeled = Shapes::IntegerShape.new(name: 'MaxPercentageOfInputDatasetLabeled')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxRuntimeInSeconds = Shapes::IntegerShape.new(name: 'MaxRuntimeInSeconds')
    MaxRuntimePerTrainingJobInSeconds = Shapes::IntegerShape.new(name: 'MaxRuntimePerTrainingJobInSeconds')
    MaxWaitTimeInSeconds = Shapes::IntegerShape.new(name: 'MaxWaitTimeInSeconds')
    MediaType = Shapes::StringShape.new(name: 'MediaType')
    MemberDefinition = Shapes::StructureShape.new(name: 'MemberDefinition')
    MemberDefinitions = Shapes::ListShape.new(name: 'MemberDefinitions')
    MetricData = Shapes::StructureShape.new(name: 'MetricData')
    MetricDefinition = Shapes::StructureShape.new(name: 'MetricDefinition')
    MetricDefinitionList = Shapes::ListShape.new(name: 'MetricDefinitionList')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    MetricRegex = Shapes::StringShape.new(name: 'MetricRegex')
    MetricValue = Shapes::FloatShape.new(name: 'MetricValue')
    ModelArn = Shapes::StringShape.new(name: 'ModelArn')
    ModelArtifacts = Shapes::StructureShape.new(name: 'ModelArtifacts')
    ModelClientConfig = Shapes::StructureShape.new(name: 'ModelClientConfig')
    ModelName = Shapes::StringShape.new(name: 'ModelName')
    ModelNameContains = Shapes::StringShape.new(name: 'ModelNameContains')
    ModelPackageArn = Shapes::StringShape.new(name: 'ModelPackageArn')
    ModelPackageContainerDefinition = Shapes::StructureShape.new(name: 'ModelPackageContainerDefinition')
    ModelPackageContainerDefinitionList = Shapes::ListShape.new(name: 'ModelPackageContainerDefinitionList')
    ModelPackageSortBy = Shapes::StringShape.new(name: 'ModelPackageSortBy')
    ModelPackageStatus = Shapes::StringShape.new(name: 'ModelPackageStatus')
    ModelPackageStatusDetails = Shapes::StructureShape.new(name: 'ModelPackageStatusDetails')
    ModelPackageStatusItem = Shapes::StructureShape.new(name: 'ModelPackageStatusItem')
    ModelPackageStatusItemList = Shapes::ListShape.new(name: 'ModelPackageStatusItemList')
    ModelPackageSummary = Shapes::StructureShape.new(name: 'ModelPackageSummary')
    ModelPackageSummaryList = Shapes::ListShape.new(name: 'ModelPackageSummaryList')
    ModelPackageValidationProfile = Shapes::StructureShape.new(name: 'ModelPackageValidationProfile')
    ModelPackageValidationProfiles = Shapes::ListShape.new(name: 'ModelPackageValidationProfiles')
    ModelPackageValidationSpecification = Shapes::StructureShape.new(name: 'ModelPackageValidationSpecification')
    ModelSortKey = Shapes::StringShape.new(name: 'ModelSortKey')
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
    MonitoringInput = Shapes::StructureShape.new(name: 'MonitoringInput')
    MonitoringInputs = Shapes::ListShape.new(name: 'MonitoringInputs')
    MonitoringJobDefinition = Shapes::StructureShape.new(name: 'MonitoringJobDefinition')
    MonitoringMaxRuntimeInSeconds = Shapes::IntegerShape.new(name: 'MonitoringMaxRuntimeInSeconds')
    MonitoringOutput = Shapes::StructureShape.new(name: 'MonitoringOutput')
    MonitoringOutputConfig = Shapes::StructureShape.new(name: 'MonitoringOutputConfig')
    MonitoringOutputs = Shapes::ListShape.new(name: 'MonitoringOutputs')
    MonitoringResources = Shapes::StructureShape.new(name: 'MonitoringResources')
    MonitoringS3Output = Shapes::StructureShape.new(name: 'MonitoringS3Output')
    MonitoringS3Uri = Shapes::StringShape.new(name: 'MonitoringS3Uri')
    MonitoringScheduleArn = Shapes::StringShape.new(name: 'MonitoringScheduleArn')
    MonitoringScheduleConfig = Shapes::StructureShape.new(name: 'MonitoringScheduleConfig')
    MonitoringScheduleName = Shapes::StringShape.new(name: 'MonitoringScheduleName')
    MonitoringScheduleSortKey = Shapes::StringShape.new(name: 'MonitoringScheduleSortKey')
    MonitoringScheduleSummary = Shapes::StructureShape.new(name: 'MonitoringScheduleSummary')
    MonitoringScheduleSummaryList = Shapes::ListShape.new(name: 'MonitoringScheduleSummaryList')
    MonitoringStatisticsResource = Shapes::StructureShape.new(name: 'MonitoringStatisticsResource')
    MonitoringStoppingCondition = Shapes::StructureShape.new(name: 'MonitoringStoppingCondition')
    NameContains = Shapes::StringShape.new(name: 'NameContains')
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
    OidcConfig = Shapes::StructureShape.new(name: 'OidcConfig')
    OidcConfigForResponse = Shapes::StructureShape.new(name: 'OidcConfigForResponse')
    OidcEndpoint = Shapes::StringShape.new(name: 'OidcEndpoint')
    OidcMemberDefinition = Shapes::StructureShape.new(name: 'OidcMemberDefinition')
    Operator = Shapes::StringShape.new(name: 'Operator')
    OptionalDouble = Shapes::FloatShape.new(name: 'OptionalDouble')
    OptionalInteger = Shapes::IntegerShape.new(name: 'OptionalInteger')
    OptionalVolumeSizeInGB = Shapes::IntegerShape.new(name: 'OptionalVolumeSizeInGB')
    OrderKey = Shapes::StringShape.new(name: 'OrderKey')
    OutputConfig = Shapes::StructureShape.new(name: 'OutputConfig')
    OutputDataConfig = Shapes::StructureShape.new(name: 'OutputDataConfig')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    ParameterKey = Shapes::StringShape.new(name: 'ParameterKey')
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
    PresignedDomainUrl = Shapes::StringShape.new(name: 'PresignedDomainUrl')
    ProblemType = Shapes::StringShape.new(name: 'ProblemType')
    ProcessingClusterConfig = Shapes::StructureShape.new(name: 'ProcessingClusterConfig')
    ProcessingEnvironmentKey = Shapes::StringShape.new(name: 'ProcessingEnvironmentKey')
    ProcessingEnvironmentMap = Shapes::MapShape.new(name: 'ProcessingEnvironmentMap')
    ProcessingEnvironmentValue = Shapes::StringShape.new(name: 'ProcessingEnvironmentValue')
    ProcessingInput = Shapes::StructureShape.new(name: 'ProcessingInput')
    ProcessingInputs = Shapes::ListShape.new(name: 'ProcessingInputs')
    ProcessingInstanceCount = Shapes::IntegerShape.new(name: 'ProcessingInstanceCount')
    ProcessingInstanceType = Shapes::StringShape.new(name: 'ProcessingInstanceType')
    ProcessingJob = Shapes::StructureShape.new(name: 'ProcessingJob')
    ProcessingJobArn = Shapes::StringShape.new(name: 'ProcessingJobArn')
    ProcessingJobName = Shapes::StringShape.new(name: 'ProcessingJobName')
    ProcessingJobStatus = Shapes::StringShape.new(name: 'ProcessingJobStatus')
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
    ProductionVariantInstanceType = Shapes::StringShape.new(name: 'ProductionVariantInstanceType')
    ProductionVariantList = Shapes::ListShape.new(name: 'ProductionVariantList')
    ProductionVariantSummary = Shapes::StructureShape.new(name: 'ProductionVariantSummary')
    ProductionVariantSummaryList = Shapes::ListShape.new(name: 'ProductionVariantSummaryList')
    PropertyNameHint = Shapes::StringShape.new(name: 'PropertyNameHint')
    PropertyNameQuery = Shapes::StructureShape.new(name: 'PropertyNameQuery')
    PropertyNameSuggestion = Shapes::StructureShape.new(name: 'PropertyNameSuggestion')
    PropertyNameSuggestionList = Shapes::ListShape.new(name: 'PropertyNameSuggestionList')
    PublicWorkforceTaskPrice = Shapes::StructureShape.new(name: 'PublicWorkforceTaskPrice')
    RealtimeInferenceInstanceTypes = Shapes::ListShape.new(name: 'RealtimeInferenceInstanceTypes')
    RecordWrapper = Shapes::StringShape.new(name: 'RecordWrapper')
    RenderUiTemplateRequest = Shapes::StructureShape.new(name: 'RenderUiTemplateRequest')
    RenderUiTemplateResponse = Shapes::StructureShape.new(name: 'RenderUiTemplateResponse')
    RenderableTask = Shapes::StructureShape.new(name: 'RenderableTask')
    RenderingError = Shapes::StructureShape.new(name: 'RenderingError')
    RenderingErrorList = Shapes::ListShape.new(name: 'RenderingErrorList')
    RepositoryAccessMode = Shapes::StringShape.new(name: 'RepositoryAccessMode')
    ResolvedAttributes = Shapes::StructureShape.new(name: 'ResolvedAttributes')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceConfig = Shapes::StructureShape.new(name: 'ResourceConfig')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceInUse = Shapes::StructureShape.new(name: 'ResourceInUse')
    ResourceLimitExceeded = Shapes::StructureShape.new(name: 'ResourceLimitExceeded')
    ResourceLimits = Shapes::StructureShape.new(name: 'ResourceLimits')
    ResourceNotFound = Shapes::StructureShape.new(name: 'ResourceNotFound')
    ResourcePropertyName = Shapes::StringShape.new(name: 'ResourcePropertyName')
    ResourceSpec = Shapes::StructureShape.new(name: 'ResourceSpec')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResponseMIMEType = Shapes::StringShape.new(name: 'ResponseMIMEType')
    ResponseMIMETypes = Shapes::ListShape.new(name: 'ResponseMIMETypes')
    RetentionPolicy = Shapes::StructureShape.new(name: 'RetentionPolicy')
    RetentionType = Shapes::StringShape.new(name: 'RetentionType')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RootAccess = Shapes::StringShape.new(name: 'RootAccess')
    RuleConfigurationName = Shapes::StringShape.new(name: 'RuleConfigurationName')
    RuleEvaluationStatus = Shapes::StringShape.new(name: 'RuleEvaluationStatus')
    RuleParameters = Shapes::MapShape.new(name: 'RuleParameters')
    S3DataDistribution = Shapes::StringShape.new(name: 'S3DataDistribution')
    S3DataSource = Shapes::StructureShape.new(name: 'S3DataSource')
    S3DataType = Shapes::StringShape.new(name: 'S3DataType')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
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
    SessionExpirationDurationInSeconds = Shapes::IntegerShape.new(name: 'SessionExpirationDurationInSeconds')
    SharingSettings = Shapes::StructureShape.new(name: 'SharingSettings')
    ShuffleConfig = Shapes::StructureShape.new(name: 'ShuffleConfig')
    SingleSignOnUserIdentifier = Shapes::StringShape.new(name: 'SingleSignOnUserIdentifier')
    SnsTopicArn = Shapes::StringShape.new(name: 'SnsTopicArn')
    SortBy = Shapes::StringShape.new(name: 'SortBy')
    SortExperimentsBy = Shapes::StringShape.new(name: 'SortExperimentsBy')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    SortTrialComponentsBy = Shapes::StringShape.new(name: 'SortTrialComponentsBy')
    SortTrialsBy = Shapes::StringShape.new(name: 'SortTrialsBy')
    SourceAlgorithm = Shapes::StructureShape.new(name: 'SourceAlgorithm')
    SourceAlgorithmList = Shapes::ListShape.new(name: 'SourceAlgorithmList')
    SourceAlgorithmSpecification = Shapes::StructureShape.new(name: 'SourceAlgorithmSpecification')
    SourceIpConfig = Shapes::StructureShape.new(name: 'SourceIpConfig')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    SplitType = Shapes::StringShape.new(name: 'SplitType')
    StartMonitoringScheduleRequest = Shapes::StructureShape.new(name: 'StartMonitoringScheduleRequest')
    StartNotebookInstanceInput = Shapes::StructureShape.new(name: 'StartNotebookInstanceInput')
    StatusDetails = Shapes::StringShape.new(name: 'StatusDetails')
    StatusMessage = Shapes::StringShape.new(name: 'StatusMessage')
    StopAutoMLJobRequest = Shapes::StructureShape.new(name: 'StopAutoMLJobRequest')
    StopCompilationJobRequest = Shapes::StructureShape.new(name: 'StopCompilationJobRequest')
    StopHyperParameterTuningJobRequest = Shapes::StructureShape.new(name: 'StopHyperParameterTuningJobRequest')
    StopLabelingJobRequest = Shapes::StructureShape.new(name: 'StopLabelingJobRequest')
    StopMonitoringScheduleRequest = Shapes::StructureShape.new(name: 'StopMonitoringScheduleRequest')
    StopNotebookInstanceInput = Shapes::StructureShape.new(name: 'StopNotebookInstanceInput')
    StopProcessingJobRequest = Shapes::StructureShape.new(name: 'StopProcessingJobRequest')
    StopTrainingJobRequest = Shapes::StructureShape.new(name: 'StopTrainingJobRequest')
    StopTransformJobRequest = Shapes::StructureShape.new(name: 'StopTransformJobRequest')
    StoppingCondition = Shapes::StructureShape.new(name: 'StoppingCondition')
    String = Shapes::StringShape.new(name: 'String')
    String1024 = Shapes::StringShape.new(name: 'String1024')
    String200 = Shapes::StringShape.new(name: 'String200')
    String256 = Shapes::StringShape.new(name: 'String256')
    StringParameterValue = Shapes::StringShape.new(name: 'StringParameterValue')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    Subnets = Shapes::ListShape.new(name: 'Subnets')
    SubscribedWorkteam = Shapes::StructureShape.new(name: 'SubscribedWorkteam')
    SubscribedWorkteams = Shapes::ListShape.new(name: 'SubscribedWorkteams')
    Success = Shapes::BooleanShape.new(name: 'Success')
    SuggestionQuery = Shapes::StructureShape.new(name: 'SuggestionQuery')
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
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
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
    USD = Shapes::StructureShape.new(name: 'USD')
    UiConfig = Shapes::StructureShape.new(name: 'UiConfig')
    UiTemplate = Shapes::StructureShape.new(name: 'UiTemplate')
    UiTemplateInfo = Shapes::StructureShape.new(name: 'UiTemplateInfo')
    UpdateCodeRepositoryInput = Shapes::StructureShape.new(name: 'UpdateCodeRepositoryInput')
    UpdateCodeRepositoryOutput = Shapes::StructureShape.new(name: 'UpdateCodeRepositoryOutput')
    UpdateDomainRequest = Shapes::StructureShape.new(name: 'UpdateDomainRequest')
    UpdateDomainResponse = Shapes::StructureShape.new(name: 'UpdateDomainResponse')
    UpdateEndpointInput = Shapes::StructureShape.new(name: 'UpdateEndpointInput')
    UpdateEndpointOutput = Shapes::StructureShape.new(name: 'UpdateEndpointOutput')
    UpdateEndpointWeightsAndCapacitiesInput = Shapes::StructureShape.new(name: 'UpdateEndpointWeightsAndCapacitiesInput')
    UpdateEndpointWeightsAndCapacitiesOutput = Shapes::StructureShape.new(name: 'UpdateEndpointWeightsAndCapacitiesOutput')
    UpdateExperimentRequest = Shapes::StructureShape.new(name: 'UpdateExperimentRequest')
    UpdateExperimentResponse = Shapes::StructureShape.new(name: 'UpdateExperimentResponse')
    UpdateMonitoringScheduleRequest = Shapes::StructureShape.new(name: 'UpdateMonitoringScheduleRequest')
    UpdateMonitoringScheduleResponse = Shapes::StructureShape.new(name: 'UpdateMonitoringScheduleResponse')
    UpdateNotebookInstanceInput = Shapes::StructureShape.new(name: 'UpdateNotebookInstanceInput')
    UpdateNotebookInstanceLifecycleConfigInput = Shapes::StructureShape.new(name: 'UpdateNotebookInstanceLifecycleConfigInput')
    UpdateNotebookInstanceLifecycleConfigOutput = Shapes::StructureShape.new(name: 'UpdateNotebookInstanceLifecycleConfigOutput')
    UpdateNotebookInstanceOutput = Shapes::StructureShape.new(name: 'UpdateNotebookInstanceOutput')
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
    VariantWeight = Shapes::FloatShape.new(name: 'VariantWeight')
    VolumeSizeInGB = Shapes::IntegerShape.new(name: 'VolumeSizeInGB')
    VpcConfig = Shapes::StructureShape.new(name: 'VpcConfig')
    VpcId = Shapes::StringShape.new(name: 'VpcId')
    VpcSecurityGroupIds = Shapes::ListShape.new(name: 'VpcSecurityGroupIds')
    Workforce = Shapes::StructureShape.new(name: 'Workforce')
    WorkforceArn = Shapes::StringShape.new(name: 'WorkforceArn')
    WorkforceName = Shapes::StringShape.new(name: 'WorkforceName')
    Workforces = Shapes::ListShape.new(name: 'Workforces')
    Workteam = Shapes::StructureShape.new(name: 'Workteam')
    WorkteamArn = Shapes::StringShape.new(name: 'WorkteamArn')
    WorkteamName = Shapes::StringShape.new(name: 'WorkteamName')
    Workteams = Shapes::ListShape.new(name: 'Workteams')

    AddTagsInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    AddTagsInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    AddTagsInput.struct_class = Types::AddTagsInput

    AddTagsOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    AddTagsOutput.struct_class = Types::AddTagsOutput

    AdditionalCodeRepositoryNamesOrUrls.member = Shapes::ShapeRef.new(shape: CodeRepositoryNameOrUrl)

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

    AppList.member = Shapes::ShapeRef.new(shape: AppDetails)

    AppSpecification.add_member(:image_uri, Shapes::ShapeRef.new(shape: ImageUri, required: true, location_name: "ImageUri"))
    AppSpecification.add_member(:container_entrypoint, Shapes::ShapeRef.new(shape: ContainerEntrypoint, location_name: "ContainerEntrypoint"))
    AppSpecification.add_member(:container_arguments, Shapes::ShapeRef.new(shape: ContainerArguments, location_name: "ContainerArguments"))
    AppSpecification.struct_class = Types::AppSpecification

    AssociateTrialComponentRequest.add_member(:trial_component_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "TrialComponentName"))
    AssociateTrialComponentRequest.add_member(:trial_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "TrialName"))
    AssociateTrialComponentRequest.struct_class = Types::AssociateTrialComponentRequest

    AssociateTrialComponentResponse.add_member(:trial_component_arn, Shapes::ShapeRef.new(shape: TrialComponentArn, location_name: "TrialComponentArn"))
    AssociateTrialComponentResponse.add_member(:trial_arn, Shapes::ShapeRef.new(shape: TrialArn, location_name: "TrialArn"))
    AssociateTrialComponentResponse.struct_class = Types::AssociateTrialComponentResponse

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
    AutoMLCandidate.struct_class = Types::AutoMLCandidate

    AutoMLCandidateStep.add_member(:candidate_step_type, Shapes::ShapeRef.new(shape: CandidateStepType, required: true, location_name: "CandidateStepType"))
    AutoMLCandidateStep.add_member(:candidate_step_arn, Shapes::ShapeRef.new(shape: CandidateStepArn, required: true, location_name: "CandidateStepArn"))
    AutoMLCandidateStep.add_member(:candidate_step_name, Shapes::ShapeRef.new(shape: CandidateStepName, required: true, location_name: "CandidateStepName"))
    AutoMLCandidateStep.struct_class = Types::AutoMLCandidateStep

    AutoMLCandidates.member = Shapes::ShapeRef.new(shape: AutoMLCandidate)

    AutoMLChannel.add_member(:data_source, Shapes::ShapeRef.new(shape: AutoMLDataSource, required: true, location_name: "DataSource"))
    AutoMLChannel.add_member(:compression_type, Shapes::ShapeRef.new(shape: CompressionType, location_name: "CompressionType"))
    AutoMLChannel.add_member(:target_attribute_name, Shapes::ShapeRef.new(shape: TargetAttributeName, required: true, location_name: "TargetAttributeName"))
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
    AutoMLJobSummary.struct_class = Types::AutoMLJobSummary

    AutoMLOutputDataConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    AutoMLOutputDataConfig.add_member(:s3_output_path, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3OutputPath"))
    AutoMLOutputDataConfig.struct_class = Types::AutoMLOutputDataConfig

    AutoMLS3DataSource.add_member(:s3_data_type, Shapes::ShapeRef.new(shape: AutoMLS3DataType, required: true, location_name: "S3DataType"))
    AutoMLS3DataSource.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    AutoMLS3DataSource.struct_class = Types::AutoMLS3DataSource

    AutoMLSecurityConfig.add_member(:volume_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "VolumeKmsKeyId"))
    AutoMLSecurityConfig.add_member(:enable_inter_container_traffic_encryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableInterContainerTrafficEncryption"))
    AutoMLSecurityConfig.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    AutoMLSecurityConfig.struct_class = Types::AutoMLSecurityConfig

    CandidateSteps.member = Shapes::ShapeRef.new(shape: AutoMLCandidateStep)

    CaptureContentTypeHeader.add_member(:csv_content_types, Shapes::ShapeRef.new(shape: CsvContentTypes, location_name: "CsvContentTypes"))
    CaptureContentTypeHeader.add_member(:json_content_types, Shapes::ShapeRef.new(shape: JsonContentTypes, location_name: "JsonContentTypes"))
    CaptureContentTypeHeader.struct_class = Types::CaptureContentTypeHeader

    CaptureOption.add_member(:capture_mode, Shapes::ShapeRef.new(shape: CaptureMode, required: true, location_name: "CaptureMode"))
    CaptureOption.struct_class = Types::CaptureOption

    CaptureOptionList.member = Shapes::ShapeRef.new(shape: CaptureOption)

    CategoricalParameterRange.add_member(:name, Shapes::ShapeRef.new(shape: ParameterKey, required: true, location_name: "Name"))
    CategoricalParameterRange.add_member(:values, Shapes::ShapeRef.new(shape: ParameterValues, required: true, location_name: "Values"))
    CategoricalParameterRange.struct_class = Types::CategoricalParameterRange

    CategoricalParameterRangeSpecification.add_member(:values, Shapes::ShapeRef.new(shape: ParameterValues, required: true, location_name: "Values"))
    CategoricalParameterRangeSpecification.struct_class = Types::CategoricalParameterRangeSpecification

    CategoricalParameterRanges.member = Shapes::ShapeRef.new(shape: CategoricalParameterRange)

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

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: FailureReason, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    ContainerArguments.member = Shapes::ShapeRef.new(shape: ContainerArgument)

    ContainerDefinition.add_member(:container_hostname, Shapes::ShapeRef.new(shape: ContainerHostname, location_name: "ContainerHostname"))
    ContainerDefinition.add_member(:image, Shapes::ShapeRef.new(shape: ContainerImage, location_name: "Image"))
    ContainerDefinition.add_member(:image_config, Shapes::ShapeRef.new(shape: ImageConfig, location_name: "ImageConfig"))
    ContainerDefinition.add_member(:mode, Shapes::ShapeRef.new(shape: ContainerMode, location_name: "Mode"))
    ContainerDefinition.add_member(:model_data_url, Shapes::ShapeRef.new(shape: Url, location_name: "ModelDataUrl"))
    ContainerDefinition.add_member(:environment, Shapes::ShapeRef.new(shape: EnvironmentMap, location_name: "Environment"))
    ContainerDefinition.add_member(:model_package_name, Shapes::ShapeRef.new(shape: ArnOrName, location_name: "ModelPackageName"))
    ContainerDefinition.struct_class = Types::ContainerDefinition

    ContainerDefinitionList.member = Shapes::ShapeRef.new(shape: ContainerDefinition)

    ContainerEntrypoint.member = Shapes::ShapeRef.new(shape: ContainerEntrypointString)

    ContentClassifiers.member = Shapes::ShapeRef.new(shape: ContentClassifier)

    ContentTypes.member = Shapes::ShapeRef.new(shape: ContentType)

    ContinuousParameterRange.add_member(:name, Shapes::ShapeRef.new(shape: ParameterKey, required: true, location_name: "Name"))
    ContinuousParameterRange.add_member(:min_value, Shapes::ShapeRef.new(shape: ParameterValue, required: true, location_name: "MinValue"))
    ContinuousParameterRange.add_member(:max_value, Shapes::ShapeRef.new(shape: ParameterValue, required: true, location_name: "MaxValue"))
    ContinuousParameterRange.add_member(:scaling_type, Shapes::ShapeRef.new(shape: HyperParameterScalingType, location_name: "ScalingType"))
    ContinuousParameterRange.struct_class = Types::ContinuousParameterRange

    ContinuousParameterRangeSpecification.add_member(:min_value, Shapes::ShapeRef.new(shape: ParameterValue, required: true, location_name: "MinValue"))
    ContinuousParameterRangeSpecification.add_member(:max_value, Shapes::ShapeRef.new(shape: ParameterValue, required: true, location_name: "MaxValue"))
    ContinuousParameterRangeSpecification.struct_class = Types::ContinuousParameterRangeSpecification

    ContinuousParameterRanges.member = Shapes::ShapeRef.new(shape: ContinuousParameterRange)

    CreateAlgorithmInput.add_member(:algorithm_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "AlgorithmName"))
    CreateAlgorithmInput.add_member(:algorithm_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "AlgorithmDescription"))
    CreateAlgorithmInput.add_member(:training_specification, Shapes::ShapeRef.new(shape: TrainingSpecification, required: true, location_name: "TrainingSpecification"))
    CreateAlgorithmInput.add_member(:inference_specification, Shapes::ShapeRef.new(shape: InferenceSpecification, location_name: "InferenceSpecification"))
    CreateAlgorithmInput.add_member(:validation_specification, Shapes::ShapeRef.new(shape: AlgorithmValidationSpecification, location_name: "ValidationSpecification"))
    CreateAlgorithmInput.add_member(:certify_for_marketplace, Shapes::ShapeRef.new(shape: CertifyForMarketplace, location_name: "CertifyForMarketplace"))
    CreateAlgorithmInput.struct_class = Types::CreateAlgorithmInput

    CreateAlgorithmOutput.add_member(:algorithm_arn, Shapes::ShapeRef.new(shape: AlgorithmArn, required: true, location_name: "AlgorithmArn"))
    CreateAlgorithmOutput.struct_class = Types::CreateAlgorithmOutput

    CreateAppRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    CreateAppRequest.add_member(:user_profile_name, Shapes::ShapeRef.new(shape: UserProfileName, required: true, location_name: "UserProfileName"))
    CreateAppRequest.add_member(:app_type, Shapes::ShapeRef.new(shape: AppType, required: true, location_name: "AppType"))
    CreateAppRequest.add_member(:app_name, Shapes::ShapeRef.new(shape: AppName, required: true, location_name: "AppName"))
    CreateAppRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateAppRequest.add_member(:resource_spec, Shapes::ShapeRef.new(shape: ResourceSpec, location_name: "ResourceSpec"))
    CreateAppRequest.struct_class = Types::CreateAppRequest

    CreateAppResponse.add_member(:app_arn, Shapes::ShapeRef.new(shape: AppArn, location_name: "AppArn"))
    CreateAppResponse.struct_class = Types::CreateAppResponse

    CreateAutoMLJobRequest.add_member(:auto_ml_job_name, Shapes::ShapeRef.new(shape: AutoMLJobName, required: true, location_name: "AutoMLJobName"))
    CreateAutoMLJobRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: AutoMLInputDataConfig, required: true, location_name: "InputDataConfig"))
    CreateAutoMLJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: AutoMLOutputDataConfig, required: true, location_name: "OutputDataConfig"))
    CreateAutoMLJobRequest.add_member(:problem_type, Shapes::ShapeRef.new(shape: ProblemType, location_name: "ProblemType"))
    CreateAutoMLJobRequest.add_member(:auto_ml_job_objective, Shapes::ShapeRef.new(shape: AutoMLJobObjective, location_name: "AutoMLJobObjective"))
    CreateAutoMLJobRequest.add_member(:auto_ml_job_config, Shapes::ShapeRef.new(shape: AutoMLJobConfig, location_name: "AutoMLJobConfig"))
    CreateAutoMLJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateAutoMLJobRequest.add_member(:generate_candidate_definitions_only, Shapes::ShapeRef.new(shape: GenerateCandidateDefinitionsOnly, location_name: "GenerateCandidateDefinitionsOnly"))
    CreateAutoMLJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateAutoMLJobRequest.struct_class = Types::CreateAutoMLJobRequest

    CreateAutoMLJobResponse.add_member(:auto_ml_job_arn, Shapes::ShapeRef.new(shape: AutoMLJobArn, required: true, location_name: "AutoMLJobArn"))
    CreateAutoMLJobResponse.struct_class = Types::CreateAutoMLJobResponse

    CreateCodeRepositoryInput.add_member(:code_repository_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "CodeRepositoryName"))
    CreateCodeRepositoryInput.add_member(:git_config, Shapes::ShapeRef.new(shape: GitConfig, required: true, location_name: "GitConfig"))
    CreateCodeRepositoryInput.struct_class = Types::CreateCodeRepositoryInput

    CreateCodeRepositoryOutput.add_member(:code_repository_arn, Shapes::ShapeRef.new(shape: CodeRepositoryArn, required: true, location_name: "CodeRepositoryArn"))
    CreateCodeRepositoryOutput.struct_class = Types::CreateCodeRepositoryOutput

    CreateCompilationJobRequest.add_member(:compilation_job_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "CompilationJobName"))
    CreateCompilationJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateCompilationJobRequest.add_member(:input_config, Shapes::ShapeRef.new(shape: InputConfig, required: true, location_name: "InputConfig"))
    CreateCompilationJobRequest.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, required: true, location_name: "OutputConfig"))
    CreateCompilationJobRequest.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: StoppingCondition, required: true, location_name: "StoppingCondition"))
    CreateCompilationJobRequest.struct_class = Types::CreateCompilationJobRequest

    CreateCompilationJobResponse.add_member(:compilation_job_arn, Shapes::ShapeRef.new(shape: CompilationJobArn, required: true, location_name: "CompilationJobArn"))
    CreateCompilationJobResponse.struct_class = Types::CreateCompilationJobResponse

    CreateDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    CreateDomainRequest.add_member(:auth_mode, Shapes::ShapeRef.new(shape: AuthMode, required: true, location_name: "AuthMode"))
    CreateDomainRequest.add_member(:default_user_settings, Shapes::ShapeRef.new(shape: UserSettings, required: true, location_name: "DefaultUserSettings"))
    CreateDomainRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: Subnets, required: true, location_name: "SubnetIds"))
    CreateDomainRequest.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, required: true, location_name: "VpcId"))
    CreateDomainRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDomainRequest.add_member(:home_efs_file_system_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "HomeEfsFileSystemKmsKeyId"))
    CreateDomainRequest.add_member(:app_network_access_type, Shapes::ShapeRef.new(shape: AppNetworkAccessType, location_name: "AppNetworkAccessType"))
    CreateDomainRequest.struct_class = Types::CreateDomainRequest

    CreateDomainResponse.add_member(:domain_arn, Shapes::ShapeRef.new(shape: DomainArn, location_name: "DomainArn"))
    CreateDomainResponse.add_member(:url, Shapes::ShapeRef.new(shape: String1024, location_name: "Url"))
    CreateDomainResponse.struct_class = Types::CreateDomainResponse

    CreateEndpointConfigInput.add_member(:endpoint_config_name, Shapes::ShapeRef.new(shape: EndpointConfigName, required: true, location_name: "EndpointConfigName"))
    CreateEndpointConfigInput.add_member(:production_variants, Shapes::ShapeRef.new(shape: ProductionVariantList, required: true, location_name: "ProductionVariants"))
    CreateEndpointConfigInput.add_member(:data_capture_config, Shapes::ShapeRef.new(shape: DataCaptureConfig, location_name: "DataCaptureConfig"))
    CreateEndpointConfigInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateEndpointConfigInput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CreateEndpointConfigInput.struct_class = Types::CreateEndpointConfigInput

    CreateEndpointConfigOutput.add_member(:endpoint_config_arn, Shapes::ShapeRef.new(shape: EndpointConfigArn, required: true, location_name: "EndpointConfigArn"))
    CreateEndpointConfigOutput.struct_class = Types::CreateEndpointConfigOutput

    CreateEndpointInput.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "EndpointName"))
    CreateEndpointInput.add_member(:endpoint_config_name, Shapes::ShapeRef.new(shape: EndpointConfigName, required: true, location_name: "EndpointConfigName"))
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

    CreateModelInput.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    CreateModelInput.add_member(:primary_container, Shapes::ShapeRef.new(shape: ContainerDefinition, location_name: "PrimaryContainer"))
    CreateModelInput.add_member(:containers, Shapes::ShapeRef.new(shape: ContainerDefinitionList, location_name: "Containers"))
    CreateModelInput.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "ExecutionRoleArn"))
    CreateModelInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateModelInput.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    CreateModelInput.add_member(:enable_network_isolation, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableNetworkIsolation"))
    CreateModelInput.struct_class = Types::CreateModelInput

    CreateModelOutput.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "ModelArn"))
    CreateModelOutput.struct_class = Types::CreateModelOutput

    CreateModelPackageInput.add_member(:model_package_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "ModelPackageName"))
    CreateModelPackageInput.add_member(:model_package_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "ModelPackageDescription"))
    CreateModelPackageInput.add_member(:inference_specification, Shapes::ShapeRef.new(shape: InferenceSpecification, location_name: "InferenceSpecification"))
    CreateModelPackageInput.add_member(:validation_specification, Shapes::ShapeRef.new(shape: ModelPackageValidationSpecification, location_name: "ValidationSpecification"))
    CreateModelPackageInput.add_member(:source_algorithm_specification, Shapes::ShapeRef.new(shape: SourceAlgorithmSpecification, location_name: "SourceAlgorithmSpecification"))
    CreateModelPackageInput.add_member(:certify_for_marketplace, Shapes::ShapeRef.new(shape: CertifyForMarketplace, location_name: "CertifyForMarketplace"))
    CreateModelPackageInput.struct_class = Types::CreateModelPackageInput

    CreateModelPackageOutput.add_member(:model_package_arn, Shapes::ShapeRef.new(shape: ModelPackageArn, required: true, location_name: "ModelPackageArn"))
    CreateModelPackageOutput.struct_class = Types::CreateModelPackageOutput

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
    CreateNotebookInstanceInput.struct_class = Types::CreateNotebookInstanceInput

    CreateNotebookInstanceLifecycleConfigInput.add_member(:notebook_instance_lifecycle_config_name, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigName, required: true, location_name: "NotebookInstanceLifecycleConfigName"))
    CreateNotebookInstanceLifecycleConfigInput.add_member(:on_create, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigList, location_name: "OnCreate"))
    CreateNotebookInstanceLifecycleConfigInput.add_member(:on_start, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigList, location_name: "OnStart"))
    CreateNotebookInstanceLifecycleConfigInput.struct_class = Types::CreateNotebookInstanceLifecycleConfigInput

    CreateNotebookInstanceLifecycleConfigOutput.add_member(:notebook_instance_lifecycle_config_arn, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigArn, location_name: "NotebookInstanceLifecycleConfigArn"))
    CreateNotebookInstanceLifecycleConfigOutput.struct_class = Types::CreateNotebookInstanceLifecycleConfigOutput

    CreateNotebookInstanceOutput.add_member(:notebook_instance_arn, Shapes::ShapeRef.new(shape: NotebookInstanceArn, location_name: "NotebookInstanceArn"))
    CreateNotebookInstanceOutput.struct_class = Types::CreateNotebookInstanceOutput

    CreatePresignedDomainUrlRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    CreatePresignedDomainUrlRequest.add_member(:user_profile_name, Shapes::ShapeRef.new(shape: UserProfileName, required: true, location_name: "UserProfileName"))
    CreatePresignedDomainUrlRequest.add_member(:session_expiration_duration_in_seconds, Shapes::ShapeRef.new(shape: SessionExpirationDurationInSeconds, location_name: "SessionExpirationDurationInSeconds"))
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
    CreateTrialComponentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateTrialComponentRequest.struct_class = Types::CreateTrialComponentRequest

    CreateTrialComponentResponse.add_member(:trial_component_arn, Shapes::ShapeRef.new(shape: TrialComponentArn, location_name: "TrialComponentArn"))
    CreateTrialComponentResponse.struct_class = Types::CreateTrialComponentResponse

    CreateTrialRequest.add_member(:trial_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "TrialName"))
    CreateTrialRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: "DisplayName"))
    CreateTrialRequest.add_member(:experiment_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "ExperimentName"))
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

    DataProcessing.add_member(:input_filter, Shapes::ShapeRef.new(shape: JsonPath, location_name: "InputFilter"))
    DataProcessing.add_member(:output_filter, Shapes::ShapeRef.new(shape: JsonPath, location_name: "OutputFilter"))
    DataProcessing.add_member(:join_source, Shapes::ShapeRef.new(shape: JoinSource, location_name: "JoinSource"))
    DataProcessing.struct_class = Types::DataProcessing

    DataSource.add_member(:s3_data_source, Shapes::ShapeRef.new(shape: S3DataSource, location_name: "S3DataSource"))
    DataSource.add_member(:file_system_data_source, Shapes::ShapeRef.new(shape: FileSystemDataSource, location_name: "FileSystemDataSource"))
    DataSource.struct_class = Types::DataSource

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

    DeleteAlgorithmInput.add_member(:algorithm_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "AlgorithmName"))
    DeleteAlgorithmInput.struct_class = Types::DeleteAlgorithmInput

    DeleteAppRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    DeleteAppRequest.add_member(:user_profile_name, Shapes::ShapeRef.new(shape: UserProfileName, required: true, location_name: "UserProfileName"))
    DeleteAppRequest.add_member(:app_type, Shapes::ShapeRef.new(shape: AppType, required: true, location_name: "AppType"))
    DeleteAppRequest.add_member(:app_name, Shapes::ShapeRef.new(shape: AppName, required: true, location_name: "AppName"))
    DeleteAppRequest.struct_class = Types::DeleteAppRequest

    DeleteCodeRepositoryInput.add_member(:code_repository_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "CodeRepositoryName"))
    DeleteCodeRepositoryInput.struct_class = Types::DeleteCodeRepositoryInput

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

    DeleteFlowDefinitionRequest.add_member(:flow_definition_name, Shapes::ShapeRef.new(shape: FlowDefinitionName, required: true, location_name: "FlowDefinitionName"))
    DeleteFlowDefinitionRequest.struct_class = Types::DeleteFlowDefinitionRequest

    DeleteFlowDefinitionResponse.struct_class = Types::DeleteFlowDefinitionResponse

    DeleteHumanTaskUiRequest.add_member(:human_task_ui_name, Shapes::ShapeRef.new(shape: HumanTaskUiName, required: true, location_name: "HumanTaskUiName"))
    DeleteHumanTaskUiRequest.struct_class = Types::DeleteHumanTaskUiRequest

    DeleteHumanTaskUiResponse.struct_class = Types::DeleteHumanTaskUiResponse

    DeleteModelInput.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    DeleteModelInput.struct_class = Types::DeleteModelInput

    DeleteModelPackageInput.add_member(:model_package_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "ModelPackageName"))
    DeleteModelPackageInput.struct_class = Types::DeleteModelPackageInput

    DeleteMonitoringScheduleRequest.add_member(:monitoring_schedule_name, Shapes::ShapeRef.new(shape: MonitoringScheduleName, required: true, location_name: "MonitoringScheduleName"))
    DeleteMonitoringScheduleRequest.struct_class = Types::DeleteMonitoringScheduleRequest

    DeleteNotebookInstanceInput.add_member(:notebook_instance_name, Shapes::ShapeRef.new(shape: NotebookInstanceName, required: true, location_name: "NotebookInstanceName"))
    DeleteNotebookInstanceInput.struct_class = Types::DeleteNotebookInstanceInput

    DeleteNotebookInstanceLifecycleConfigInput.add_member(:notebook_instance_lifecycle_config_name, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigName, required: true, location_name: "NotebookInstanceLifecycleConfigName"))
    DeleteNotebookInstanceLifecycleConfigInput.struct_class = Types::DeleteNotebookInstanceLifecycleConfigInput

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
    DescribeAutoMLJobResponse.add_member(:best_candidate, Shapes::ShapeRef.new(shape: AutoMLCandidate, location_name: "BestCandidate"))
    DescribeAutoMLJobResponse.add_member(:auto_ml_job_status, Shapes::ShapeRef.new(shape: AutoMLJobStatus, required: true, location_name: "AutoMLJobStatus"))
    DescribeAutoMLJobResponse.add_member(:auto_ml_job_secondary_status, Shapes::ShapeRef.new(shape: AutoMLJobSecondaryStatus, required: true, location_name: "AutoMLJobSecondaryStatus"))
    DescribeAutoMLJobResponse.add_member(:generate_candidate_definitions_only, Shapes::ShapeRef.new(shape: GenerateCandidateDefinitionsOnly, location_name: "GenerateCandidateDefinitionsOnly"))
    DescribeAutoMLJobResponse.add_member(:auto_ml_job_artifacts, Shapes::ShapeRef.new(shape: AutoMLJobArtifacts, location_name: "AutoMLJobArtifacts"))
    DescribeAutoMLJobResponse.add_member(:resolved_attributes, Shapes::ShapeRef.new(shape: ResolvedAttributes, location_name: "ResolvedAttributes"))
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
    DescribeCompilationJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    DescribeCompilationJobResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastModifiedTime, required: true, location_name: "LastModifiedTime"))
    DescribeCompilationJobResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, required: true, location_name: "FailureReason"))
    DescribeCompilationJobResponse.add_member(:model_artifacts, Shapes::ShapeRef.new(shape: ModelArtifacts, required: true, location_name: "ModelArtifacts"))
    DescribeCompilationJobResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    DescribeCompilationJobResponse.add_member(:input_config, Shapes::ShapeRef.new(shape: InputConfig, required: true, location_name: "InputConfig"))
    DescribeCompilationJobResponse.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, required: true, location_name: "OutputConfig"))
    DescribeCompilationJobResponse.struct_class = Types::DescribeCompilationJobResponse

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
    DescribeDomainResponse.add_member(:home_efs_file_system_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "HomeEfsFileSystemKmsKeyId"))
    DescribeDomainResponse.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: Subnets, location_name: "SubnetIds"))
    DescribeDomainResponse.add_member(:url, Shapes::ShapeRef.new(shape: String1024, location_name: "Url"))
    DescribeDomainResponse.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    DescribeDomainResponse.add_member(:app_network_access_type, Shapes::ShapeRef.new(shape: AppNetworkAccessType, location_name: "AppNetworkAccessType"))
    DescribeDomainResponse.struct_class = Types::DescribeDomainResponse

    DescribeEndpointConfigInput.add_member(:endpoint_config_name, Shapes::ShapeRef.new(shape: EndpointConfigName, required: true, location_name: "EndpointConfigName"))
    DescribeEndpointConfigInput.struct_class = Types::DescribeEndpointConfigInput

    DescribeEndpointConfigOutput.add_member(:endpoint_config_name, Shapes::ShapeRef.new(shape: EndpointConfigName, required: true, location_name: "EndpointConfigName"))
    DescribeEndpointConfigOutput.add_member(:endpoint_config_arn, Shapes::ShapeRef.new(shape: EndpointConfigArn, required: true, location_name: "EndpointConfigArn"))
    DescribeEndpointConfigOutput.add_member(:production_variants, Shapes::ShapeRef.new(shape: ProductionVariantList, required: true, location_name: "ProductionVariants"))
    DescribeEndpointConfigOutput.add_member(:data_capture_config, Shapes::ShapeRef.new(shape: DataCaptureConfig, location_name: "DataCaptureConfig"))
    DescribeEndpointConfigOutput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    DescribeEndpointConfigOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
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

    DescribeModelInput.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    DescribeModelInput.struct_class = Types::DescribeModelInput

    DescribeModelOutput.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    DescribeModelOutput.add_member(:primary_container, Shapes::ShapeRef.new(shape: ContainerDefinition, location_name: "PrimaryContainer"))
    DescribeModelOutput.add_member(:containers, Shapes::ShapeRef.new(shape: ContainerDefinitionList, location_name: "Containers"))
    DescribeModelOutput.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "ExecutionRoleArn"))
    DescribeModelOutput.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    DescribeModelOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeModelOutput.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "ModelArn"))
    DescribeModelOutput.add_member(:enable_network_isolation, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableNetworkIsolation"))
    DescribeModelOutput.struct_class = Types::DescribeModelOutput

    DescribeModelPackageInput.add_member(:model_package_name, Shapes::ShapeRef.new(shape: ArnOrName, required: true, location_name: "ModelPackageName"))
    DescribeModelPackageInput.struct_class = Types::DescribeModelPackageInput

    DescribeModelPackageOutput.add_member(:model_package_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "ModelPackageName"))
    DescribeModelPackageOutput.add_member(:model_package_arn, Shapes::ShapeRef.new(shape: ModelPackageArn, required: true, location_name: "ModelPackageArn"))
    DescribeModelPackageOutput.add_member(:model_package_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "ModelPackageDescription"))
    DescribeModelPackageOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    DescribeModelPackageOutput.add_member(:inference_specification, Shapes::ShapeRef.new(shape: InferenceSpecification, location_name: "InferenceSpecification"))
    DescribeModelPackageOutput.add_member(:source_algorithm_specification, Shapes::ShapeRef.new(shape: SourceAlgorithmSpecification, location_name: "SourceAlgorithmSpecification"))
    DescribeModelPackageOutput.add_member(:validation_specification, Shapes::ShapeRef.new(shape: ModelPackageValidationSpecification, location_name: "ValidationSpecification"))
    DescribeModelPackageOutput.add_member(:model_package_status, Shapes::ShapeRef.new(shape: ModelPackageStatus, required: true, location_name: "ModelPackageStatus"))
    DescribeModelPackageOutput.add_member(:model_package_status_details, Shapes::ShapeRef.new(shape: ModelPackageStatusDetails, required: true, location_name: "ModelPackageStatusDetails"))
    DescribeModelPackageOutput.add_member(:certify_for_marketplace, Shapes::ShapeRef.new(shape: CertifyForMarketplace, location_name: "CertifyForMarketplace"))
    DescribeModelPackageOutput.struct_class = Types::DescribeModelPackageOutput

    DescribeMonitoringScheduleRequest.add_member(:monitoring_schedule_name, Shapes::ShapeRef.new(shape: MonitoringScheduleName, required: true, location_name: "MonitoringScheduleName"))
    DescribeMonitoringScheduleRequest.struct_class = Types::DescribeMonitoringScheduleRequest

    DescribeMonitoringScheduleResponse.add_member(:monitoring_schedule_arn, Shapes::ShapeRef.new(shape: MonitoringScheduleArn, required: true, location_name: "MonitoringScheduleArn"))
    DescribeMonitoringScheduleResponse.add_member(:monitoring_schedule_name, Shapes::ShapeRef.new(shape: MonitoringScheduleName, required: true, location_name: "MonitoringScheduleName"))
    DescribeMonitoringScheduleResponse.add_member(:monitoring_schedule_status, Shapes::ShapeRef.new(shape: ScheduleStatus, required: true, location_name: "MonitoringScheduleStatus"))
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
    DescribeNotebookInstanceOutput.struct_class = Types::DescribeNotebookInstanceOutput

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

    DescribeTrialComponentRequest.add_member(:trial_component_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "TrialComponentName"))
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
    DescribeTrialComponentResponse.add_member(:metrics, Shapes::ShapeRef.new(shape: TrialComponentMetricSummaries, location_name: "Metrics"))
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

    EndpointConfigSummary.add_member(:endpoint_config_name, Shapes::ShapeRef.new(shape: EndpointConfigName, required: true, location_name: "EndpointConfigName"))
    EndpointConfigSummary.add_member(:endpoint_config_arn, Shapes::ShapeRef.new(shape: EndpointConfigArn, required: true, location_name: "EndpointConfigArn"))
    EndpointConfigSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    EndpointConfigSummary.struct_class = Types::EndpointConfigSummary

    EndpointConfigSummaryList.member = Shapes::ShapeRef.new(shape: EndpointConfigSummary)

    EndpointInput.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "EndpointName"))
    EndpointInput.add_member(:local_path, Shapes::ShapeRef.new(shape: ProcessingLocalPath, required: true, location_name: "LocalPath"))
    EndpointInput.add_member(:s3_input_mode, Shapes::ShapeRef.new(shape: ProcessingS3InputMode, location_name: "S3InputMode"))
    EndpointInput.add_member(:s3_data_distribution_type, Shapes::ShapeRef.new(shape: ProcessingS3DataDistributionType, location_name: "S3DataDistributionType"))
    EndpointInput.struct_class = Types::EndpointInput

    EndpointSummary.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "EndpointName"))
    EndpointSummary.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: EndpointArn, required: true, location_name: "EndpointArn"))
    EndpointSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    EndpointSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    EndpointSummary.add_member(:endpoint_status, Shapes::ShapeRef.new(shape: EndpointStatus, required: true, location_name: "EndpointStatus"))
    EndpointSummary.struct_class = Types::EndpointSummary

    EndpointSummaryList.member = Shapes::ShapeRef.new(shape: EndpointSummary)

    EnvironmentMap.key = Shapes::ShapeRef.new(shape: EnvironmentKey)
    EnvironmentMap.value = Shapes::ShapeRef.new(shape: EnvironmentValue)

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
    HyperParameterSpecification.add_member(:default_value, Shapes::ShapeRef.new(shape: ParameterValue, location_name: "DefaultValue"))
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

    HyperParameters.key = Shapes::ShapeRef.new(shape: ParameterKey)
    HyperParameters.value = Shapes::ShapeRef.new(shape: ParameterValue)

    ImageConfig.add_member(:repository_access_mode, Shapes::ShapeRef.new(shape: RepositoryAccessMode, required: true, location_name: "RepositoryAccessMode"))
    ImageConfig.struct_class = Types::ImageConfig

    InferenceSpecification.add_member(:containers, Shapes::ShapeRef.new(shape: ModelPackageContainerDefinitionList, required: true, location_name: "Containers"))
    InferenceSpecification.add_member(:supported_transform_instance_types, Shapes::ShapeRef.new(shape: TransformInstanceTypes, required: true, location_name: "SupportedTransformInstanceTypes"))
    InferenceSpecification.add_member(:supported_realtime_inference_instance_types, Shapes::ShapeRef.new(shape: RealtimeInferenceInstanceTypes, required: true, location_name: "SupportedRealtimeInferenceInstanceTypes"))
    InferenceSpecification.add_member(:supported_content_types, Shapes::ShapeRef.new(shape: ContentTypes, required: true, location_name: "SupportedContentTypes"))
    InferenceSpecification.add_member(:supported_response_mime_types, Shapes::ShapeRef.new(shape: ResponseMIMETypes, required: true, location_name: "SupportedResponseMIMETypes"))
    InferenceSpecification.struct_class = Types::InferenceSpecification

    InputConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    InputConfig.add_member(:data_input_config, Shapes::ShapeRef.new(shape: DataInputConfig, required: true, location_name: "DataInputConfig"))
    InputConfig.add_member(:framework, Shapes::ShapeRef.new(shape: Framework, required: true, location_name: "Framework"))
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
    JupyterServerAppSettings.struct_class = Types::JupyterServerAppSettings

    KernelGatewayAppSettings.add_member(:default_resource_spec, Shapes::ShapeRef.new(shape: ResourceSpec, location_name: "DefaultResourceSpec"))
    KernelGatewayAppSettings.struct_class = Types::KernelGatewayAppSettings

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

    ListDomainsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDomainsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListDomainsRequest.struct_class = Types::ListDomainsRequest

    ListDomainsResponse.add_member(:domains, Shapes::ShapeRef.new(shape: DomainList, location_name: "Domains"))
    ListDomainsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDomainsResponse.struct_class = Types::ListDomainsResponse

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

    ListModelPackagesInput.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeAfter"))
    ListModelPackagesInput.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeBefore"))
    ListModelPackagesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListModelPackagesInput.add_member(:name_contains, Shapes::ShapeRef.new(shape: NameContains, location_name: "NameContains"))
    ListModelPackagesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListModelPackagesInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: ModelPackageSortBy, location_name: "SortBy"))
    ListModelPackagesInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListModelPackagesInput.struct_class = Types::ListModelPackagesInput

    ListModelPackagesOutput.add_member(:model_package_summary_list, Shapes::ShapeRef.new(shape: ModelPackageSummaryList, required: true, location_name: "ModelPackageSummaryList"))
    ListModelPackagesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListModelPackagesOutput.struct_class = Types::ListModelPackagesOutput

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

    MetricData.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    MetricData.add_member(:value, Shapes::ShapeRef.new(shape: Float, location_name: "Value"))
    MetricData.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    MetricData.struct_class = Types::MetricData

    MetricDefinition.add_member(:name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "Name"))
    MetricDefinition.add_member(:regex, Shapes::ShapeRef.new(shape: MetricRegex, required: true, location_name: "Regex"))
    MetricDefinition.struct_class = Types::MetricDefinition

    MetricDefinitionList.member = Shapes::ShapeRef.new(shape: MetricDefinition)

    ModelArtifacts.add_member(:s3_model_artifacts, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3ModelArtifacts"))
    ModelArtifacts.struct_class = Types::ModelArtifacts

    ModelClientConfig.add_member(:invocations_timeout_in_seconds, Shapes::ShapeRef.new(shape: InvocationsTimeoutInSeconds, location_name: "InvocationsTimeoutInSeconds"))
    ModelClientConfig.add_member(:invocations_max_retries, Shapes::ShapeRef.new(shape: InvocationsMaxRetries, location_name: "InvocationsMaxRetries"))
    ModelClientConfig.struct_class = Types::ModelClientConfig

    ModelPackageContainerDefinition.add_member(:container_hostname, Shapes::ShapeRef.new(shape: ContainerHostname, location_name: "ContainerHostname"))
    ModelPackageContainerDefinition.add_member(:image, Shapes::ShapeRef.new(shape: ContainerImage, required: true, location_name: "Image"))
    ModelPackageContainerDefinition.add_member(:image_digest, Shapes::ShapeRef.new(shape: ImageDigest, location_name: "ImageDigest"))
    ModelPackageContainerDefinition.add_member(:model_data_url, Shapes::ShapeRef.new(shape: Url, location_name: "ModelDataUrl"))
    ModelPackageContainerDefinition.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, location_name: "ProductId"))
    ModelPackageContainerDefinition.struct_class = Types::ModelPackageContainerDefinition

    ModelPackageContainerDefinitionList.member = Shapes::ShapeRef.new(shape: ModelPackageContainerDefinition)

    ModelPackageStatusDetails.add_member(:validation_statuses, Shapes::ShapeRef.new(shape: ModelPackageStatusItemList, required: true, location_name: "ValidationStatuses"))
    ModelPackageStatusDetails.add_member(:image_scan_statuses, Shapes::ShapeRef.new(shape: ModelPackageStatusItemList, location_name: "ImageScanStatuses"))
    ModelPackageStatusDetails.struct_class = Types::ModelPackageStatusDetails

    ModelPackageStatusItem.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    ModelPackageStatusItem.add_member(:status, Shapes::ShapeRef.new(shape: DetailedModelPackageStatus, required: true, location_name: "Status"))
    ModelPackageStatusItem.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "FailureReason"))
    ModelPackageStatusItem.struct_class = Types::ModelPackageStatusItem

    ModelPackageStatusItemList.member = Shapes::ShapeRef.new(shape: ModelPackageStatusItem)

    ModelPackageSummary.add_member(:model_package_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "ModelPackageName"))
    ModelPackageSummary.add_member(:model_package_arn, Shapes::ShapeRef.new(shape: ModelPackageArn, required: true, location_name: "ModelPackageArn"))
    ModelPackageSummary.add_member(:model_package_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "ModelPackageDescription"))
    ModelPackageSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    ModelPackageSummary.add_member(:model_package_status, Shapes::ShapeRef.new(shape: ModelPackageStatus, required: true, location_name: "ModelPackageStatus"))
    ModelPackageSummary.struct_class = Types::ModelPackageSummary

    ModelPackageSummaryList.member = Shapes::ShapeRef.new(shape: ModelPackageSummary)

    ModelPackageValidationProfile.add_member(:profile_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "ProfileName"))
    ModelPackageValidationProfile.add_member(:transform_job_definition, Shapes::ShapeRef.new(shape: TransformJobDefinition, required: true, location_name: "TransformJobDefinition"))
    ModelPackageValidationProfile.struct_class = Types::ModelPackageValidationProfile

    ModelPackageValidationProfiles.member = Shapes::ShapeRef.new(shape: ModelPackageValidationProfile)

    ModelPackageValidationSpecification.add_member(:validation_role, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "ValidationRole"))
    ModelPackageValidationSpecification.add_member(:validation_profiles, Shapes::ShapeRef.new(shape: ModelPackageValidationProfiles, required: true, location_name: "ValidationProfiles"))
    ModelPackageValidationSpecification.struct_class = Types::ModelPackageValidationSpecification

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
    MonitoringExecutionSummary.struct_class = Types::MonitoringExecutionSummary

    MonitoringExecutionSummaryList.member = Shapes::ShapeRef.new(shape: MonitoringExecutionSummary)

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

    MonitoringScheduleConfig.add_member(:schedule_config, Shapes::ShapeRef.new(shape: ScheduleConfig, location_name: "ScheduleConfig"))
    MonitoringScheduleConfig.add_member(:monitoring_job_definition, Shapes::ShapeRef.new(shape: MonitoringJobDefinition, required: true, location_name: "MonitoringJobDefinition"))
    MonitoringScheduleConfig.struct_class = Types::MonitoringScheduleConfig

    MonitoringScheduleSummary.add_member(:monitoring_schedule_name, Shapes::ShapeRef.new(shape: MonitoringScheduleName, required: true, location_name: "MonitoringScheduleName"))
    MonitoringScheduleSummary.add_member(:monitoring_schedule_arn, Shapes::ShapeRef.new(shape: MonitoringScheduleArn, required: true, location_name: "MonitoringScheduleArn"))
    MonitoringScheduleSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    MonitoringScheduleSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    MonitoringScheduleSummary.add_member(:monitoring_schedule_status, Shapes::ShapeRef.new(shape: ScheduleStatus, required: true, location_name: "MonitoringScheduleStatus"))
    MonitoringScheduleSummary.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, location_name: "EndpointName"))
    MonitoringScheduleSummary.struct_class = Types::MonitoringScheduleSummary

    MonitoringScheduleSummaryList.member = Shapes::ShapeRef.new(shape: MonitoringScheduleSummary)

    MonitoringStatisticsResource.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "S3Uri"))
    MonitoringStatisticsResource.struct_class = Types::MonitoringStatisticsResource

    MonitoringStoppingCondition.add_member(:max_runtime_in_seconds, Shapes::ShapeRef.new(shape: MonitoringMaxRuntimeInSeconds, required: true, location_name: "MaxRuntimeInSeconds"))
    MonitoringStoppingCondition.struct_class = Types::MonitoringStoppingCondition

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

    OutputConfig.add_member(:s3_output_location, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3OutputLocation"))
    OutputConfig.add_member(:target_device, Shapes::ShapeRef.new(shape: TargetDevice, location_name: "TargetDevice"))
    OutputConfig.add_member(:target_platform, Shapes::ShapeRef.new(shape: TargetPlatform, location_name: "TargetPlatform"))
    OutputConfig.add_member(:compiler_options, Shapes::ShapeRef.new(shape: CompilerOptions, location_name: "CompilerOptions"))
    OutputConfig.struct_class = Types::OutputConfig

    OutputDataConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    OutputDataConfig.add_member(:s3_output_path, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3OutputPath"))
    OutputDataConfig.struct_class = Types::OutputDataConfig

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

    ProcessingClusterConfig.add_member(:instance_count, Shapes::ShapeRef.new(shape: ProcessingInstanceCount, required: true, location_name: "InstanceCount"))
    ProcessingClusterConfig.add_member(:instance_type, Shapes::ShapeRef.new(shape: ProcessingInstanceType, required: true, location_name: "InstanceType"))
    ProcessingClusterConfig.add_member(:volume_size_in_gb, Shapes::ShapeRef.new(shape: ProcessingVolumeSizeInGB, required: true, location_name: "VolumeSizeInGB"))
    ProcessingClusterConfig.add_member(:volume_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "VolumeKmsKeyId"))
    ProcessingClusterConfig.struct_class = Types::ProcessingClusterConfig

    ProcessingEnvironmentMap.key = Shapes::ShapeRef.new(shape: ProcessingEnvironmentKey)
    ProcessingEnvironmentMap.value = Shapes::ShapeRef.new(shape: ProcessingEnvironmentValue)

    ProcessingInput.add_member(:input_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InputName"))
    ProcessingInput.add_member(:s3_input, Shapes::ShapeRef.new(shape: ProcessingS3Input, required: true, location_name: "S3Input"))
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
    ProcessingOutput.add_member(:s3_output, Shapes::ShapeRef.new(shape: ProcessingS3Output, required: true, location_name: "S3Output"))
    ProcessingOutput.struct_class = Types::ProcessingOutput

    ProcessingOutputConfig.add_member(:outputs, Shapes::ShapeRef.new(shape: ProcessingOutputs, required: true, location_name: "Outputs"))
    ProcessingOutputConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    ProcessingOutputConfig.struct_class = Types::ProcessingOutputConfig

    ProcessingOutputs.member = Shapes::ShapeRef.new(shape: ProcessingOutput)

    ProcessingResources.add_member(:cluster_config, Shapes::ShapeRef.new(shape: ProcessingClusterConfig, required: true, location_name: "ClusterConfig"))
    ProcessingResources.struct_class = Types::ProcessingResources

    ProcessingS3Input.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    ProcessingS3Input.add_member(:local_path, Shapes::ShapeRef.new(shape: ProcessingLocalPath, required: true, location_name: "LocalPath"))
    ProcessingS3Input.add_member(:s3_data_type, Shapes::ShapeRef.new(shape: ProcessingS3DataType, required: true, location_name: "S3DataType"))
    ProcessingS3Input.add_member(:s3_input_mode, Shapes::ShapeRef.new(shape: ProcessingS3InputMode, required: true, location_name: "S3InputMode"))
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
    ProductionVariant.add_member(:initial_instance_count, Shapes::ShapeRef.new(shape: TaskCount, required: true, location_name: "InitialInstanceCount"))
    ProductionVariant.add_member(:instance_type, Shapes::ShapeRef.new(shape: ProductionVariantInstanceType, required: true, location_name: "InstanceType"))
    ProductionVariant.add_member(:initial_variant_weight, Shapes::ShapeRef.new(shape: VariantWeight, location_name: "InitialVariantWeight"))
    ProductionVariant.add_member(:accelerator_type, Shapes::ShapeRef.new(shape: ProductionVariantAcceleratorType, location_name: "AcceleratorType"))
    ProductionVariant.struct_class = Types::ProductionVariant

    ProductionVariantList.member = Shapes::ShapeRef.new(shape: ProductionVariant)

    ProductionVariantSummary.add_member(:variant_name, Shapes::ShapeRef.new(shape: VariantName, required: true, location_name: "VariantName"))
    ProductionVariantSummary.add_member(:deployed_images, Shapes::ShapeRef.new(shape: DeployedImages, location_name: "DeployedImages"))
    ProductionVariantSummary.add_member(:current_weight, Shapes::ShapeRef.new(shape: VariantWeight, location_name: "CurrentWeight"))
    ProductionVariantSummary.add_member(:desired_weight, Shapes::ShapeRef.new(shape: VariantWeight, location_name: "DesiredWeight"))
    ProductionVariantSummary.add_member(:current_instance_count, Shapes::ShapeRef.new(shape: TaskCount, location_name: "CurrentInstanceCount"))
    ProductionVariantSummary.add_member(:desired_instance_count, Shapes::ShapeRef.new(shape: TaskCount, location_name: "DesiredInstanceCount"))
    ProductionVariantSummary.struct_class = Types::ProductionVariantSummary

    ProductionVariantSummaryList.member = Shapes::ShapeRef.new(shape: ProductionVariantSummary)

    PropertyNameQuery.add_member(:property_name_hint, Shapes::ShapeRef.new(shape: PropertyNameHint, required: true, location_name: "PropertyNameHint"))
    PropertyNameQuery.struct_class = Types::PropertyNameQuery

    PropertyNameSuggestion.add_member(:property_name, Shapes::ShapeRef.new(shape: ResourcePropertyName, location_name: "PropertyName"))
    PropertyNameSuggestion.struct_class = Types::PropertyNameSuggestion

    PropertyNameSuggestionList.member = Shapes::ShapeRef.new(shape: PropertyNameSuggestion)

    PublicWorkforceTaskPrice.add_member(:amount_in_usd, Shapes::ShapeRef.new(shape: USD, location_name: "AmountInUsd"))
    PublicWorkforceTaskPrice.struct_class = Types::PublicWorkforceTaskPrice

    RealtimeInferenceInstanceTypes.member = Shapes::ShapeRef.new(shape: ProductionVariantInstanceType)

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
    ResourceSpec.add_member(:instance_type, Shapes::ShapeRef.new(shape: AppInstanceType, location_name: "InstanceType"))
    ResourceSpec.struct_class = Types::ResourceSpec

    ResponseMIMETypes.member = Shapes::ShapeRef.new(shape: ResponseMIMEType)

    RetentionPolicy.add_member(:home_efs_file_system, Shapes::ShapeRef.new(shape: RetentionType, location_name: "HomeEfsFileSystem"))
    RetentionPolicy.struct_class = Types::RetentionPolicy

    RuleParameters.key = Shapes::ShapeRef.new(shape: ConfigKey)
    RuleParameters.value = Shapes::ShapeRef.new(shape: ConfigValue)

    S3DataSource.add_member(:s3_data_type, Shapes::ShapeRef.new(shape: S3DataType, required: true, location_name: "S3DataType"))
    S3DataSource.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    S3DataSource.add_member(:s3_data_distribution_type, Shapes::ShapeRef.new(shape: S3DataDistribution, location_name: "S3DataDistributionType"))
    S3DataSource.add_member(:attribute_names, Shapes::ShapeRef.new(shape: AttributeNames, location_name: "AttributeNames"))
    S3DataSource.struct_class = Types::S3DataSource

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

    StopAutoMLJobRequest.add_member(:auto_ml_job_name, Shapes::ShapeRef.new(shape: AutoMLJobName, required: true, location_name: "AutoMLJobName"))
    StopAutoMLJobRequest.struct_class = Types::StopAutoMLJobRequest

    StopCompilationJobRequest.add_member(:compilation_job_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "CompilationJobName"))
    StopCompilationJobRequest.struct_class = Types::StopCompilationJobRequest

    StopHyperParameterTuningJobRequest.add_member(:hyper_parameter_tuning_job_name, Shapes::ShapeRef.new(shape: HyperParameterTuningJobName, required: true, location_name: "HyperParameterTuningJobName"))
    StopHyperParameterTuningJobRequest.struct_class = Types::StopHyperParameterTuningJobRequest

    StopLabelingJobRequest.add_member(:labeling_job_name, Shapes::ShapeRef.new(shape: LabelingJobName, required: true, location_name: "LabelingJobName"))
    StopLabelingJobRequest.struct_class = Types::StopLabelingJobRequest

    StopMonitoringScheduleRequest.add_member(:monitoring_schedule_name, Shapes::ShapeRef.new(shape: MonitoringScheduleName, required: true, location_name: "MonitoringScheduleName"))
    StopMonitoringScheduleRequest.struct_class = Types::StopMonitoringScheduleRequest

    StopNotebookInstanceInput.add_member(:notebook_instance_name, Shapes::ShapeRef.new(shape: NotebookInstanceName, required: true, location_name: "NotebookInstanceName"))
    StopNotebookInstanceInput.struct_class = Types::StopNotebookInstanceInput

    StopProcessingJobRequest.add_member(:processing_job_name, Shapes::ShapeRef.new(shape: ProcessingJobName, required: true, location_name: "ProcessingJobName"))
    StopProcessingJobRequest.struct_class = Types::StopProcessingJobRequest

    StopTrainingJobRequest.add_member(:training_job_name, Shapes::ShapeRef.new(shape: TrainingJobName, required: true, location_name: "TrainingJobName"))
    StopTrainingJobRequest.struct_class = Types::StopTrainingJobRequest

    StopTransformJobRequest.add_member(:transform_job_name, Shapes::ShapeRef.new(shape: TransformJobName, required: true, location_name: "TransformJobName"))
    StopTransformJobRequest.struct_class = Types::StopTransformJobRequest

    StoppingCondition.add_member(:max_runtime_in_seconds, Shapes::ShapeRef.new(shape: MaxRuntimeInSeconds, location_name: "MaxRuntimeInSeconds"))
    StoppingCondition.add_member(:max_wait_time_in_seconds, Shapes::ShapeRef.new(shape: MaxWaitTimeInSeconds, location_name: "MaxWaitTimeInSeconds"))
    StoppingCondition.struct_class = Types::StoppingCondition

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
    TrialComponent.add_member(:source_detail, Shapes::ShapeRef.new(shape: TrialComponentSourceDetail, location_name: "SourceDetail"))
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

    UpdateCodeRepositoryInput.add_member(:code_repository_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "CodeRepositoryName"))
    UpdateCodeRepositoryInput.add_member(:git_config, Shapes::ShapeRef.new(shape: GitConfigForUpdate, location_name: "GitConfig"))
    UpdateCodeRepositoryInput.struct_class = Types::UpdateCodeRepositoryInput

    UpdateCodeRepositoryOutput.add_member(:code_repository_arn, Shapes::ShapeRef.new(shape: CodeRepositoryArn, required: true, location_name: "CodeRepositoryArn"))
    UpdateCodeRepositoryOutput.struct_class = Types::UpdateCodeRepositoryOutput

    UpdateDomainRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    UpdateDomainRequest.add_member(:default_user_settings, Shapes::ShapeRef.new(shape: UserSettings, location_name: "DefaultUserSettings"))
    UpdateDomainRequest.struct_class = Types::UpdateDomainRequest

    UpdateDomainResponse.add_member(:domain_arn, Shapes::ShapeRef.new(shape: DomainArn, location_name: "DomainArn"))
    UpdateDomainResponse.struct_class = Types::UpdateDomainResponse

    UpdateEndpointInput.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "EndpointName"))
    UpdateEndpointInput.add_member(:endpoint_config_name, Shapes::ShapeRef.new(shape: EndpointConfigName, required: true, location_name: "EndpointConfigName"))
    UpdateEndpointInput.add_member(:retain_all_variant_properties, Shapes::ShapeRef.new(shape: Boolean, location_name: "RetainAllVariantProperties"))
    UpdateEndpointInput.add_member(:exclude_retained_variant_properties, Shapes::ShapeRef.new(shape: VariantPropertyList, location_name: "ExcludeRetainedVariantProperties"))
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
    UserSettings.struct_class = Types::UserSettings

    VariantProperty.add_member(:variant_property_type, Shapes::ShapeRef.new(shape: VariantPropertyType, required: true, location_name: "VariantPropertyType"))
    VariantProperty.struct_class = Types::VariantProperty

    VariantPropertyList.member = Shapes::ShapeRef.new(shape: VariantProperty)

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

      api.add_operation(:create_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
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

      api.add_operation(:create_model_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateModelPackage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateModelPackageInput)
        o.output = Shapes::ShapeRef.new(shape: CreateModelPackageOutput)
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

      api.add_operation(:delete_code_repository, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCodeRepository"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCodeRepositoryInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
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

      api.add_operation(:delete_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteModel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteModelInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:delete_model_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteModelPackage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteModelPackageInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
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

      api.add_operation(:describe_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDomainResponse)
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

      api.add_operation(:describe_labeling_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLabelingJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLabelingJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLabelingJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeModel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeModelInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeModelOutput)
      end)

      api.add_operation(:describe_model_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeModelPackage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeModelPackageInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeModelPackageOutput)
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

      api.add_operation(:describe_processing_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProcessingJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeProcessingJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeProcessingJobResponse)
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

      api.add_operation(:disassociate_trial_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateTrialComponent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateTrialComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateTrialComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:get_search_suggestions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSearchSuggestions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSearchSuggestionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSearchSuggestionsResponse)
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

      api.add_operation(:render_ui_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RenderUiTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RenderUiTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: RenderUiTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
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

      api.add_operation(:stop_hyper_parameter_tuning_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopHyperParameterTuningJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopHyperParameterTuningJobRequest)
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

      api.add_operation(:update_code_repository, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCodeRepository"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCodeRepositoryInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateCodeRepositoryOutput)
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
