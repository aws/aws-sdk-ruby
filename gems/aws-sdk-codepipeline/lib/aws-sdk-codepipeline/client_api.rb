# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CodePipeline
  # @api private
  module ClientApi

    include Seahorse::Model

    AWSRegionName = Shapes::StringShape.new(name: 'AWSRegionName')
    AWSSessionCredentials = Shapes::StructureShape.new(name: 'AWSSessionCredentials')
    AccessKeyId = Shapes::StringShape.new(name: 'AccessKeyId')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AcknowledgeJobInput = Shapes::StructureShape.new(name: 'AcknowledgeJobInput')
    AcknowledgeJobOutput = Shapes::StructureShape.new(name: 'AcknowledgeJobOutput')
    AcknowledgeThirdPartyJobInput = Shapes::StructureShape.new(name: 'AcknowledgeThirdPartyJobInput')
    AcknowledgeThirdPartyJobOutput = Shapes::StructureShape.new(name: 'AcknowledgeThirdPartyJobOutput')
    ActionCategory = Shapes::StringShape.new(name: 'ActionCategory')
    ActionConfiguration = Shapes::StructureShape.new(name: 'ActionConfiguration')
    ActionConfigurationKey = Shapes::StringShape.new(name: 'ActionConfigurationKey')
    ActionConfigurationMap = Shapes::MapShape.new(name: 'ActionConfigurationMap')
    ActionConfigurationProperty = Shapes::StructureShape.new(name: 'ActionConfigurationProperty')
    ActionConfigurationPropertyList = Shapes::ListShape.new(name: 'ActionConfigurationPropertyList')
    ActionConfigurationPropertyType = Shapes::StringShape.new(name: 'ActionConfigurationPropertyType')
    ActionConfigurationQueryableValue = Shapes::StringShape.new(name: 'ActionConfigurationQueryableValue')
    ActionConfigurationValue = Shapes::StringShape.new(name: 'ActionConfigurationValue')
    ActionContext = Shapes::StructureShape.new(name: 'ActionContext')
    ActionDeclaration = Shapes::StructureShape.new(name: 'ActionDeclaration')
    ActionExecution = Shapes::StructureShape.new(name: 'ActionExecution')
    ActionExecutionDetail = Shapes::StructureShape.new(name: 'ActionExecutionDetail')
    ActionExecutionDetailList = Shapes::ListShape.new(name: 'ActionExecutionDetailList')
    ActionExecutionFilter = Shapes::StructureShape.new(name: 'ActionExecutionFilter')
    ActionExecutionId = Shapes::StringShape.new(name: 'ActionExecutionId')
    ActionExecutionInput = Shapes::StructureShape.new(name: 'ActionExecutionInput')
    ActionExecutionOutput = Shapes::StructureShape.new(name: 'ActionExecutionOutput')
    ActionExecutionResult = Shapes::StructureShape.new(name: 'ActionExecutionResult')
    ActionExecutionStatus = Shapes::StringShape.new(name: 'ActionExecutionStatus')
    ActionExecutionToken = Shapes::StringShape.new(name: 'ActionExecutionToken')
    ActionName = Shapes::StringShape.new(name: 'ActionName')
    ActionNamespace = Shapes::StringShape.new(name: 'ActionNamespace')
    ActionNotFoundException = Shapes::StructureShape.new(name: 'ActionNotFoundException')
    ActionOwner = Shapes::StringShape.new(name: 'ActionOwner')
    ActionProvider = Shapes::StringShape.new(name: 'ActionProvider')
    ActionRevision = Shapes::StructureShape.new(name: 'ActionRevision')
    ActionRunOrder = Shapes::IntegerShape.new(name: 'ActionRunOrder')
    ActionState = Shapes::StructureShape.new(name: 'ActionState')
    ActionStateList = Shapes::ListShape.new(name: 'ActionStateList')
    ActionTimeout = Shapes::IntegerShape.new(name: 'ActionTimeout')
    ActionType = Shapes::StructureShape.new(name: 'ActionType')
    ActionTypeAlreadyExistsException = Shapes::StructureShape.new(name: 'ActionTypeAlreadyExistsException')
    ActionTypeArtifactDetails = Shapes::StructureShape.new(name: 'ActionTypeArtifactDetails')
    ActionTypeDeclaration = Shapes::StructureShape.new(name: 'ActionTypeDeclaration')
    ActionTypeDescription = Shapes::StringShape.new(name: 'ActionTypeDescription')
    ActionTypeExecutor = Shapes::StructureShape.new(name: 'ActionTypeExecutor')
    ActionTypeId = Shapes::StructureShape.new(name: 'ActionTypeId')
    ActionTypeIdentifier = Shapes::StructureShape.new(name: 'ActionTypeIdentifier')
    ActionTypeList = Shapes::ListShape.new(name: 'ActionTypeList')
    ActionTypeNotFoundException = Shapes::StructureShape.new(name: 'ActionTypeNotFoundException')
    ActionTypeOwner = Shapes::StringShape.new(name: 'ActionTypeOwner')
    ActionTypePermissions = Shapes::StructureShape.new(name: 'ActionTypePermissions')
    ActionTypeProperties = Shapes::ListShape.new(name: 'ActionTypeProperties')
    ActionTypeProperty = Shapes::StructureShape.new(name: 'ActionTypeProperty')
    ActionTypeSettings = Shapes::StructureShape.new(name: 'ActionTypeSettings')
    ActionTypeUrls = Shapes::StructureShape.new(name: 'ActionTypeUrls')
    AllowedAccount = Shapes::StringShape.new(name: 'AllowedAccount')
    AllowedAccounts = Shapes::ListShape.new(name: 'AllowedAccounts')
    ApprovalAlreadyCompletedException = Shapes::StructureShape.new(name: 'ApprovalAlreadyCompletedException')
    ApprovalResult = Shapes::StructureShape.new(name: 'ApprovalResult')
    ApprovalStatus = Shapes::StringShape.new(name: 'ApprovalStatus')
    ApprovalSummary = Shapes::StringShape.new(name: 'ApprovalSummary')
    ApprovalToken = Shapes::StringShape.new(name: 'ApprovalToken')
    Artifact = Shapes::StructureShape.new(name: 'Artifact')
    ArtifactDetail = Shapes::StructureShape.new(name: 'ArtifactDetail')
    ArtifactDetailList = Shapes::ListShape.new(name: 'ArtifactDetailList')
    ArtifactDetails = Shapes::StructureShape.new(name: 'ArtifactDetails')
    ArtifactList = Shapes::ListShape.new(name: 'ArtifactList')
    ArtifactLocation = Shapes::StructureShape.new(name: 'ArtifactLocation')
    ArtifactLocationType = Shapes::StringShape.new(name: 'ArtifactLocationType')
    ArtifactName = Shapes::StringShape.new(name: 'ArtifactName')
    ArtifactRevision = Shapes::StructureShape.new(name: 'ArtifactRevision')
    ArtifactRevisionList = Shapes::ListShape.new(name: 'ArtifactRevisionList')
    ArtifactStore = Shapes::StructureShape.new(name: 'ArtifactStore')
    ArtifactStoreLocation = Shapes::StringShape.new(name: 'ArtifactStoreLocation')
    ArtifactStoreMap = Shapes::MapShape.new(name: 'ArtifactStoreMap')
    ArtifactStoreType = Shapes::StringShape.new(name: 'ArtifactStoreType')
    BeforeEntryConditions = Shapes::StructureShape.new(name: 'BeforeEntryConditions')
    BlockerDeclaration = Shapes::StructureShape.new(name: 'BlockerDeclaration')
    BlockerName = Shapes::StringShape.new(name: 'BlockerName')
    BlockerType = Shapes::StringShape.new(name: 'BlockerType')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ClientId = Shapes::StringShape.new(name: 'ClientId')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    Code = Shapes::StringShape.new(name: 'Code')
    Command = Shapes::StringShape.new(name: 'Command')
    CommandList = Shapes::ListShape.new(name: 'CommandList')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    ConcurrentPipelineExecutionsLimitExceededException = Shapes::StructureShape.new(name: 'ConcurrentPipelineExecutionsLimitExceededException')
    Condition = Shapes::StructureShape.new(name: 'Condition')
    ConditionExecution = Shapes::StructureShape.new(name: 'ConditionExecution')
    ConditionExecutionStatus = Shapes::StringShape.new(name: 'ConditionExecutionStatus')
    ConditionList = Shapes::ListShape.new(name: 'ConditionList')
    ConditionNotOverridableException = Shapes::StructureShape.new(name: 'ConditionNotOverridableException')
    ConditionState = Shapes::StructureShape.new(name: 'ConditionState')
    ConditionStateList = Shapes::ListShape.new(name: 'ConditionStateList')
    ConditionType = Shapes::StringShape.new(name: 'ConditionType')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContinuationToken = Shapes::StringShape.new(name: 'ContinuationToken')
    CreateCustomActionTypeInput = Shapes::StructureShape.new(name: 'CreateCustomActionTypeInput')
    CreateCustomActionTypeOutput = Shapes::StructureShape.new(name: 'CreateCustomActionTypeOutput')
    CreatePipelineInput = Shapes::StructureShape.new(name: 'CreatePipelineInput')
    CreatePipelineOutput = Shapes::StructureShape.new(name: 'CreatePipelineOutput')
    CurrentRevision = Shapes::StructureShape.new(name: 'CurrentRevision')
    DeleteCustomActionTypeInput = Shapes::StructureShape.new(name: 'DeleteCustomActionTypeInput')
    DeletePipelineInput = Shapes::StructureShape.new(name: 'DeletePipelineInput')
    DeleteWebhookInput = Shapes::StructureShape.new(name: 'DeleteWebhookInput')
    DeleteWebhookOutput = Shapes::StructureShape.new(name: 'DeleteWebhookOutput')
    DeregisterWebhookWithThirdPartyInput = Shapes::StructureShape.new(name: 'DeregisterWebhookWithThirdPartyInput')
    DeregisterWebhookWithThirdPartyOutput = Shapes::StructureShape.new(name: 'DeregisterWebhookWithThirdPartyOutput')
    Description = Shapes::StringShape.new(name: 'Description')
    DisableStageTransitionInput = Shapes::StructureShape.new(name: 'DisableStageTransitionInput')
    DisabledReason = Shapes::StringShape.new(name: 'DisabledReason')
    DuplicatedStopRequestException = Shapes::StructureShape.new(name: 'DuplicatedStopRequestException')
    EnableStageTransitionInput = Shapes::StructureShape.new(name: 'EnableStageTransitionInput')
    Enabled = Shapes::BooleanShape.new(name: 'Enabled')
    EncryptionKey = Shapes::StructureShape.new(name: 'EncryptionKey')
    EncryptionKeyId = Shapes::StringShape.new(name: 'EncryptionKeyId')
    EncryptionKeyType = Shapes::StringShape.new(name: 'EncryptionKeyType')
    ErrorDetails = Shapes::StructureShape.new(name: 'ErrorDetails')
    ExecutionDetails = Shapes::StructureShape.new(name: 'ExecutionDetails')
    ExecutionId = Shapes::StringShape.new(name: 'ExecutionId')
    ExecutionMode = Shapes::StringShape.new(name: 'ExecutionMode')
    ExecutionSummary = Shapes::StringShape.new(name: 'ExecutionSummary')
    ExecutionTrigger = Shapes::StructureShape.new(name: 'ExecutionTrigger')
    ExecutionType = Shapes::StringShape.new(name: 'ExecutionType')
    ExecutorConfiguration = Shapes::StructureShape.new(name: 'ExecutorConfiguration')
    ExecutorType = Shapes::StringShape.new(name: 'ExecutorType')
    ExternalExecutionId = Shapes::StringShape.new(name: 'ExternalExecutionId')
    ExternalExecutionSummary = Shapes::StringShape.new(name: 'ExternalExecutionSummary')
    FailureConditions = Shapes::StructureShape.new(name: 'FailureConditions')
    FailureDetails = Shapes::StructureShape.new(name: 'FailureDetails')
    FailureType = Shapes::StringShape.new(name: 'FailureType')
    FilePath = Shapes::StringShape.new(name: 'FilePath')
    FilePathList = Shapes::ListShape.new(name: 'FilePathList')
    GetActionTypeInput = Shapes::StructureShape.new(name: 'GetActionTypeInput')
    GetActionTypeOutput = Shapes::StructureShape.new(name: 'GetActionTypeOutput')
    GetJobDetailsInput = Shapes::StructureShape.new(name: 'GetJobDetailsInput')
    GetJobDetailsOutput = Shapes::StructureShape.new(name: 'GetJobDetailsOutput')
    GetPipelineExecutionInput = Shapes::StructureShape.new(name: 'GetPipelineExecutionInput')
    GetPipelineExecutionOutput = Shapes::StructureShape.new(name: 'GetPipelineExecutionOutput')
    GetPipelineInput = Shapes::StructureShape.new(name: 'GetPipelineInput')
    GetPipelineOutput = Shapes::StructureShape.new(name: 'GetPipelineOutput')
    GetPipelineStateInput = Shapes::StructureShape.new(name: 'GetPipelineStateInput')
    GetPipelineStateOutput = Shapes::StructureShape.new(name: 'GetPipelineStateOutput')
    GetThirdPartyJobDetailsInput = Shapes::StructureShape.new(name: 'GetThirdPartyJobDetailsInput')
    GetThirdPartyJobDetailsOutput = Shapes::StructureShape.new(name: 'GetThirdPartyJobDetailsOutput')
    GitBranchFilterCriteria = Shapes::StructureShape.new(name: 'GitBranchFilterCriteria')
    GitBranchNamePattern = Shapes::StringShape.new(name: 'GitBranchNamePattern')
    GitBranchPatternList = Shapes::ListShape.new(name: 'GitBranchPatternList')
    GitConfiguration = Shapes::StructureShape.new(name: 'GitConfiguration')
    GitFilePathFilterCriteria = Shapes::StructureShape.new(name: 'GitFilePathFilterCriteria')
    GitFilePathPattern = Shapes::StringShape.new(name: 'GitFilePathPattern')
    GitFilePathPatternList = Shapes::ListShape.new(name: 'GitFilePathPatternList')
    GitPullRequestEventType = Shapes::StringShape.new(name: 'GitPullRequestEventType')
    GitPullRequestEventTypeList = Shapes::ListShape.new(name: 'GitPullRequestEventTypeList')
    GitPullRequestFilter = Shapes::StructureShape.new(name: 'GitPullRequestFilter')
    GitPullRequestFilterList = Shapes::ListShape.new(name: 'GitPullRequestFilterList')
    GitPushFilter = Shapes::StructureShape.new(name: 'GitPushFilter')
    GitPushFilterList = Shapes::ListShape.new(name: 'GitPushFilterList')
    GitTagFilterCriteria = Shapes::StructureShape.new(name: 'GitTagFilterCriteria')
    GitTagNamePattern = Shapes::StringShape.new(name: 'GitTagNamePattern')
    GitTagPatternList = Shapes::ListShape.new(name: 'GitTagPatternList')
    InputArtifact = Shapes::StructureShape.new(name: 'InputArtifact')
    InputArtifactList = Shapes::ListShape.new(name: 'InputArtifactList')
    InvalidActionDeclarationException = Shapes::StructureShape.new(name: 'InvalidActionDeclarationException')
    InvalidApprovalTokenException = Shapes::StructureShape.new(name: 'InvalidApprovalTokenException')
    InvalidArnException = Shapes::StructureShape.new(name: 'InvalidArnException')
    InvalidBlockerDeclarationException = Shapes::StructureShape.new(name: 'InvalidBlockerDeclarationException')
    InvalidClientTokenException = Shapes::StructureShape.new(name: 'InvalidClientTokenException')
    InvalidJobException = Shapes::StructureShape.new(name: 'InvalidJobException')
    InvalidJobStateException = Shapes::StructureShape.new(name: 'InvalidJobStateException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidNonceException = Shapes::StructureShape.new(name: 'InvalidNonceException')
    InvalidStageDeclarationException = Shapes::StructureShape.new(name: 'InvalidStageDeclarationException')
    InvalidStructureException = Shapes::StructureShape.new(name: 'InvalidStructureException')
    InvalidTagsException = Shapes::StructureShape.new(name: 'InvalidTagsException')
    InvalidWebhookAuthenticationParametersException = Shapes::StructureShape.new(name: 'InvalidWebhookAuthenticationParametersException')
    InvalidWebhookFilterPatternException = Shapes::StructureShape.new(name: 'InvalidWebhookFilterPatternException')
    Job = Shapes::StructureShape.new(name: 'Job')
    JobData = Shapes::StructureShape.new(name: 'JobData')
    JobDetails = Shapes::StructureShape.new(name: 'JobDetails')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobList = Shapes::ListShape.new(name: 'JobList')
    JobNotFoundException = Shapes::StructureShape.new(name: 'JobNotFoundException')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    JobTimeout = Shapes::IntegerShape.new(name: 'JobTimeout')
    JobWorkerExecutorConfiguration = Shapes::StructureShape.new(name: 'JobWorkerExecutorConfiguration')
    JsonPath = Shapes::StringShape.new(name: 'JsonPath')
    LambdaExecutorConfiguration = Shapes::StructureShape.new(name: 'LambdaExecutorConfiguration')
    LambdaFunctionArn = Shapes::StringShape.new(name: 'LambdaFunctionArn')
    LastChangedAt = Shapes::TimestampShape.new(name: 'LastChangedAt')
    LastChangedBy = Shapes::StringShape.new(name: 'LastChangedBy')
    LastUpdatedBy = Shapes::StringShape.new(name: 'LastUpdatedBy')
    LatestInPipelineExecutionFilter = Shapes::StructureShape.new(name: 'LatestInPipelineExecutionFilter')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListActionExecutionsInput = Shapes::StructureShape.new(name: 'ListActionExecutionsInput')
    ListActionExecutionsOutput = Shapes::StructureShape.new(name: 'ListActionExecutionsOutput')
    ListActionTypesInput = Shapes::StructureShape.new(name: 'ListActionTypesInput')
    ListActionTypesOutput = Shapes::StructureShape.new(name: 'ListActionTypesOutput')
    ListPipelineExecutionsInput = Shapes::StructureShape.new(name: 'ListPipelineExecutionsInput')
    ListPipelineExecutionsOutput = Shapes::StructureShape.new(name: 'ListPipelineExecutionsOutput')
    ListPipelinesInput = Shapes::StructureShape.new(name: 'ListPipelinesInput')
    ListPipelinesOutput = Shapes::StructureShape.new(name: 'ListPipelinesOutput')
    ListRuleExecutionsInput = Shapes::StructureShape.new(name: 'ListRuleExecutionsInput')
    ListRuleExecutionsOutput = Shapes::StructureShape.new(name: 'ListRuleExecutionsOutput')
    ListRuleTypesInput = Shapes::StructureShape.new(name: 'ListRuleTypesInput')
    ListRuleTypesOutput = Shapes::StructureShape.new(name: 'ListRuleTypesOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    ListWebhookItem = Shapes::StructureShape.new(name: 'ListWebhookItem')
    ListWebhooksInput = Shapes::StructureShape.new(name: 'ListWebhooksInput')
    ListWebhooksOutput = Shapes::StructureShape.new(name: 'ListWebhooksOutput')
    MatchEquals = Shapes::StringShape.new(name: 'MatchEquals')
    MaxBatchSize = Shapes::IntegerShape.new(name: 'MaxBatchSize')
    MaxPipelines = Shapes::IntegerShape.new(name: 'MaxPipelines')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaximumActionTypeArtifactCount = Shapes::IntegerShape.new(name: 'MaximumActionTypeArtifactCount')
    MaximumArtifactCount = Shapes::IntegerShape.new(name: 'MaximumArtifactCount')
    Message = Shapes::StringShape.new(name: 'Message')
    MinimumActionTypeArtifactCount = Shapes::IntegerShape.new(name: 'MinimumActionTypeArtifactCount')
    MinimumArtifactCount = Shapes::IntegerShape.new(name: 'MinimumArtifactCount')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Nonce = Shapes::StringShape.new(name: 'Nonce')
    NotLatestPipelineExecutionException = Shapes::StructureShape.new(name: 'NotLatestPipelineExecutionException')
    OutputArtifact = Shapes::StructureShape.new(name: 'OutputArtifact')
    OutputArtifactList = Shapes::ListShape.new(name: 'OutputArtifactList')
    OutputVariable = Shapes::StringShape.new(name: 'OutputVariable')
    OutputVariableList = Shapes::ListShape.new(name: 'OutputVariableList')
    OutputVariablesKey = Shapes::StringShape.new(name: 'OutputVariablesKey')
    OutputVariablesMap = Shapes::MapShape.new(name: 'OutputVariablesMap')
    OutputVariablesSizeExceededException = Shapes::StructureShape.new(name: 'OutputVariablesSizeExceededException')
    OutputVariablesValue = Shapes::StringShape.new(name: 'OutputVariablesValue')
    OverrideStageConditionInput = Shapes::StructureShape.new(name: 'OverrideStageConditionInput')
    Percentage = Shapes::IntegerShape.new(name: 'Percentage')
    PipelineArn = Shapes::StringShape.new(name: 'PipelineArn')
    PipelineContext = Shapes::StructureShape.new(name: 'PipelineContext')
    PipelineDeclaration = Shapes::StructureShape.new(name: 'PipelineDeclaration')
    PipelineExecution = Shapes::StructureShape.new(name: 'PipelineExecution')
    PipelineExecutionFilter = Shapes::StructureShape.new(name: 'PipelineExecutionFilter')
    PipelineExecutionId = Shapes::StringShape.new(name: 'PipelineExecutionId')
    PipelineExecutionNotFoundException = Shapes::StructureShape.new(name: 'PipelineExecutionNotFoundException')
    PipelineExecutionNotStoppableException = Shapes::StructureShape.new(name: 'PipelineExecutionNotStoppableException')
    PipelineExecutionOutdatedException = Shapes::StructureShape.new(name: 'PipelineExecutionOutdatedException')
    PipelineExecutionStatus = Shapes::StringShape.new(name: 'PipelineExecutionStatus')
    PipelineExecutionStatusSummary = Shapes::StringShape.new(name: 'PipelineExecutionStatusSummary')
    PipelineExecutionSummary = Shapes::StructureShape.new(name: 'PipelineExecutionSummary')
    PipelineExecutionSummaryList = Shapes::ListShape.new(name: 'PipelineExecutionSummaryList')
    PipelineList = Shapes::ListShape.new(name: 'PipelineList')
    PipelineMetadata = Shapes::StructureShape.new(name: 'PipelineMetadata')
    PipelineName = Shapes::StringShape.new(name: 'PipelineName')
    PipelineNameInUseException = Shapes::StructureShape.new(name: 'PipelineNameInUseException')
    PipelineNotFoundException = Shapes::StructureShape.new(name: 'PipelineNotFoundException')
    PipelineRollbackMetadata = Shapes::StructureShape.new(name: 'PipelineRollbackMetadata')
    PipelineStageDeclarationList = Shapes::ListShape.new(name: 'PipelineStageDeclarationList')
    PipelineSummary = Shapes::StructureShape.new(name: 'PipelineSummary')
    PipelineTriggerDeclaration = Shapes::StructureShape.new(name: 'PipelineTriggerDeclaration')
    PipelineTriggerDeclarationList = Shapes::ListShape.new(name: 'PipelineTriggerDeclarationList')
    PipelineTriggerProviderType = Shapes::StringShape.new(name: 'PipelineTriggerProviderType')
    PipelineType = Shapes::StringShape.new(name: 'PipelineType')
    PipelineVariable = Shapes::StructureShape.new(name: 'PipelineVariable')
    PipelineVariableDeclaration = Shapes::StructureShape.new(name: 'PipelineVariableDeclaration')
    PipelineVariableDeclarationList = Shapes::ListShape.new(name: 'PipelineVariableDeclarationList')
    PipelineVariableDescription = Shapes::StringShape.new(name: 'PipelineVariableDescription')
    PipelineVariableList = Shapes::ListShape.new(name: 'PipelineVariableList')
    PipelineVariableName = Shapes::StringShape.new(name: 'PipelineVariableName')
    PipelineVariableValue = Shapes::StringShape.new(name: 'PipelineVariableValue')
    PipelineVersion = Shapes::IntegerShape.new(name: 'PipelineVersion')
    PipelineVersionNotFoundException = Shapes::StructureShape.new(name: 'PipelineVersionNotFoundException')
    PolicyStatementsTemplate = Shapes::StringShape.new(name: 'PolicyStatementsTemplate')
    PollForJobsInput = Shapes::StructureShape.new(name: 'PollForJobsInput')
    PollForJobsOutput = Shapes::StructureShape.new(name: 'PollForJobsOutput')
    PollForThirdPartyJobsInput = Shapes::StructureShape.new(name: 'PollForThirdPartyJobsInput')
    PollForThirdPartyJobsOutput = Shapes::StructureShape.new(name: 'PollForThirdPartyJobsOutput')
    PollingAccountList = Shapes::ListShape.new(name: 'PollingAccountList')
    PollingServicePrincipalList = Shapes::ListShape.new(name: 'PollingServicePrincipalList')
    PropertyDescription = Shapes::StringShape.new(name: 'PropertyDescription')
    PutActionRevisionInput = Shapes::StructureShape.new(name: 'PutActionRevisionInput')
    PutActionRevisionOutput = Shapes::StructureShape.new(name: 'PutActionRevisionOutput')
    PutApprovalResultInput = Shapes::StructureShape.new(name: 'PutApprovalResultInput')
    PutApprovalResultOutput = Shapes::StructureShape.new(name: 'PutApprovalResultOutput')
    PutJobFailureResultInput = Shapes::StructureShape.new(name: 'PutJobFailureResultInput')
    PutJobSuccessResultInput = Shapes::StructureShape.new(name: 'PutJobSuccessResultInput')
    PutThirdPartyJobFailureResultInput = Shapes::StructureShape.new(name: 'PutThirdPartyJobFailureResultInput')
    PutThirdPartyJobSuccessResultInput = Shapes::StructureShape.new(name: 'PutThirdPartyJobSuccessResultInput')
    PutWebhookInput = Shapes::StructureShape.new(name: 'PutWebhookInput')
    PutWebhookOutput = Shapes::StructureShape.new(name: 'PutWebhookOutput')
    QueryParamMap = Shapes::MapShape.new(name: 'QueryParamMap')
    RegisterWebhookWithThirdPartyInput = Shapes::StructureShape.new(name: 'RegisterWebhookWithThirdPartyInput')
    RegisterWebhookWithThirdPartyOutput = Shapes::StructureShape.new(name: 'RegisterWebhookWithThirdPartyOutput')
    RequestFailedException = Shapes::StructureShape.new(name: 'RequestFailedException')
    ResolvedActionConfigurationMap = Shapes::MapShape.new(name: 'ResolvedActionConfigurationMap')
    ResolvedPipelineVariable = Shapes::StructureShape.new(name: 'ResolvedPipelineVariable')
    ResolvedPipelineVariableList = Shapes::ListShape.new(name: 'ResolvedPipelineVariableList')
    ResolvedRuleConfigurationMap = Shapes::MapShape.new(name: 'ResolvedRuleConfigurationMap')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    Result = Shapes::StringShape.new(name: 'Result')
    RetryAttempt = Shapes::IntegerShape.new(name: 'RetryAttempt')
    RetryConfiguration = Shapes::StructureShape.new(name: 'RetryConfiguration')
    RetryStageExecutionInput = Shapes::StructureShape.new(name: 'RetryStageExecutionInput')
    RetryStageExecutionOutput = Shapes::StructureShape.new(name: 'RetryStageExecutionOutput')
    RetryStageMetadata = Shapes::StructureShape.new(name: 'RetryStageMetadata')
    RetryTrigger = Shapes::StringShape.new(name: 'RetryTrigger')
    Revision = Shapes::StringShape.new(name: 'Revision')
    RevisionChangeIdentifier = Shapes::StringShape.new(name: 'RevisionChangeIdentifier')
    RevisionSummary = Shapes::StringShape.new(name: 'RevisionSummary')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RollbackStageInput = Shapes::StructureShape.new(name: 'RollbackStageInput')
    RollbackStageOutput = Shapes::StructureShape.new(name: 'RollbackStageOutput')
    RuleCategory = Shapes::StringShape.new(name: 'RuleCategory')
    RuleConfigurationKey = Shapes::StringShape.new(name: 'RuleConfigurationKey')
    RuleConfigurationMap = Shapes::MapShape.new(name: 'RuleConfigurationMap')
    RuleConfigurationProperty = Shapes::StructureShape.new(name: 'RuleConfigurationProperty')
    RuleConfigurationPropertyList = Shapes::ListShape.new(name: 'RuleConfigurationPropertyList')
    RuleConfigurationPropertyType = Shapes::StringShape.new(name: 'RuleConfigurationPropertyType')
    RuleConfigurationValue = Shapes::StringShape.new(name: 'RuleConfigurationValue')
    RuleDeclaration = Shapes::StructureShape.new(name: 'RuleDeclaration')
    RuleDeclarationList = Shapes::ListShape.new(name: 'RuleDeclarationList')
    RuleExecution = Shapes::StructureShape.new(name: 'RuleExecution')
    RuleExecutionDetail = Shapes::StructureShape.new(name: 'RuleExecutionDetail')
    RuleExecutionDetailList = Shapes::ListShape.new(name: 'RuleExecutionDetailList')
    RuleExecutionFilter = Shapes::StructureShape.new(name: 'RuleExecutionFilter')
    RuleExecutionId = Shapes::StringShape.new(name: 'RuleExecutionId')
    RuleExecutionInput = Shapes::StructureShape.new(name: 'RuleExecutionInput')
    RuleExecutionOutput = Shapes::StructureShape.new(name: 'RuleExecutionOutput')
    RuleExecutionResult = Shapes::StructureShape.new(name: 'RuleExecutionResult')
    RuleExecutionStatus = Shapes::StringShape.new(name: 'RuleExecutionStatus')
    RuleExecutionToken = Shapes::StringShape.new(name: 'RuleExecutionToken')
    RuleName = Shapes::StringShape.new(name: 'RuleName')
    RuleOwner = Shapes::StringShape.new(name: 'RuleOwner')
    RuleProvider = Shapes::StringShape.new(name: 'RuleProvider')
    RuleRevision = Shapes::StructureShape.new(name: 'RuleRevision')
    RuleState = Shapes::StructureShape.new(name: 'RuleState')
    RuleStateList = Shapes::ListShape.new(name: 'RuleStateList')
    RuleTimeout = Shapes::IntegerShape.new(name: 'RuleTimeout')
    RuleType = Shapes::StructureShape.new(name: 'RuleType')
    RuleTypeId = Shapes::StructureShape.new(name: 'RuleTypeId')
    RuleTypeList = Shapes::ListShape.new(name: 'RuleTypeList')
    RuleTypeSettings = Shapes::StructureShape.new(name: 'RuleTypeSettings')
    S3ArtifactLocation = Shapes::StructureShape.new(name: 'S3ArtifactLocation')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    S3Location = Shapes::StructureShape.new(name: 'S3Location')
    S3ObjectKey = Shapes::StringShape.new(name: 'S3ObjectKey')
    SecretAccessKey = Shapes::StringShape.new(name: 'SecretAccessKey')
    ServicePrincipal = Shapes::StringShape.new(name: 'ServicePrincipal')
    SessionToken = Shapes::StringShape.new(name: 'SessionToken')
    SourceRevision = Shapes::StructureShape.new(name: 'SourceRevision')
    SourceRevisionList = Shapes::ListShape.new(name: 'SourceRevisionList')
    SourceRevisionOverride = Shapes::StructureShape.new(name: 'SourceRevisionOverride')
    SourceRevisionOverrideList = Shapes::ListShape.new(name: 'SourceRevisionOverrideList')
    SourceRevisionType = Shapes::StringShape.new(name: 'SourceRevisionType')
    StageActionDeclarationList = Shapes::ListShape.new(name: 'StageActionDeclarationList')
    StageBlockerDeclarationList = Shapes::ListShape.new(name: 'StageBlockerDeclarationList')
    StageConditionState = Shapes::StructureShape.new(name: 'StageConditionState')
    StageConditionsExecution = Shapes::StructureShape.new(name: 'StageConditionsExecution')
    StageContext = Shapes::StructureShape.new(name: 'StageContext')
    StageDeclaration = Shapes::StructureShape.new(name: 'StageDeclaration')
    StageExecution = Shapes::StructureShape.new(name: 'StageExecution')
    StageExecutionList = Shapes::ListShape.new(name: 'StageExecutionList')
    StageExecutionStatus = Shapes::StringShape.new(name: 'StageExecutionStatus')
    StageName = Shapes::StringShape.new(name: 'StageName')
    StageNotFoundException = Shapes::StructureShape.new(name: 'StageNotFoundException')
    StageNotRetryableException = Shapes::StructureShape.new(name: 'StageNotRetryableException')
    StageRetryMode = Shapes::StringShape.new(name: 'StageRetryMode')
    StageState = Shapes::StructureShape.new(name: 'StageState')
    StageStateList = Shapes::ListShape.new(name: 'StageStateList')
    StageTransitionType = Shapes::StringShape.new(name: 'StageTransitionType')
    StartPipelineExecutionInput = Shapes::StructureShape.new(name: 'StartPipelineExecutionInput')
    StartPipelineExecutionOutput = Shapes::StructureShape.new(name: 'StartPipelineExecutionOutput')
    StartTimeRange = Shapes::StringShape.new(name: 'StartTimeRange')
    StopExecutionTrigger = Shapes::StructureShape.new(name: 'StopExecutionTrigger')
    StopPipelineExecutionInput = Shapes::StructureShape.new(name: 'StopPipelineExecutionInput')
    StopPipelineExecutionOutput = Shapes::StructureShape.new(name: 'StopPipelineExecutionOutput')
    StopPipelineExecutionReason = Shapes::StringShape.new(name: 'StopPipelineExecutionReason')
    String = Shapes::StringShape.new(name: 'String')
    SucceededInStageFilter = Shapes::StructureShape.new(name: 'SucceededInStageFilter')
    SuccessConditions = Shapes::StructureShape.new(name: 'SuccessConditions')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThirdPartyJob = Shapes::StructureShape.new(name: 'ThirdPartyJob')
    ThirdPartyJobData = Shapes::StructureShape.new(name: 'ThirdPartyJobData')
    ThirdPartyJobDetails = Shapes::StructureShape.new(name: 'ThirdPartyJobDetails')
    ThirdPartyJobId = Shapes::StringShape.new(name: 'ThirdPartyJobId')
    ThirdPartyJobList = Shapes::ListShape.new(name: 'ThirdPartyJobList')
    Time = Shapes::TimestampShape.new(name: 'Time')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    TransitionState = Shapes::StructureShape.new(name: 'TransitionState')
    TriggerDetail = Shapes::StringShape.new(name: 'TriggerDetail')
    TriggerType = Shapes::StringShape.new(name: 'TriggerType')
    UnableToRollbackStageException = Shapes::StructureShape.new(name: 'UnableToRollbackStageException')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateActionTypeInput = Shapes::StructureShape.new(name: 'UpdateActionTypeInput')
    UpdatePipelineInput = Shapes::StructureShape.new(name: 'UpdatePipelineInput')
    UpdatePipelineOutput = Shapes::StructureShape.new(name: 'UpdatePipelineOutput')
    Url = Shapes::StringShape.new(name: 'Url')
    UrlTemplate = Shapes::StringShape.new(name: 'UrlTemplate')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    Version = Shapes::StringShape.new(name: 'Version')
    WebhookArn = Shapes::StringShape.new(name: 'WebhookArn')
    WebhookAuthConfiguration = Shapes::StructureShape.new(name: 'WebhookAuthConfiguration')
    WebhookAuthConfigurationAllowedIPRange = Shapes::StringShape.new(name: 'WebhookAuthConfigurationAllowedIPRange')
    WebhookAuthConfigurationSecretToken = Shapes::StringShape.new(name: 'WebhookAuthConfigurationSecretToken')
    WebhookAuthenticationType = Shapes::StringShape.new(name: 'WebhookAuthenticationType')
    WebhookDefinition = Shapes::StructureShape.new(name: 'WebhookDefinition')
    WebhookErrorCode = Shapes::StringShape.new(name: 'WebhookErrorCode')
    WebhookErrorMessage = Shapes::StringShape.new(name: 'WebhookErrorMessage')
    WebhookFilterRule = Shapes::StructureShape.new(name: 'WebhookFilterRule')
    WebhookFilters = Shapes::ListShape.new(name: 'WebhookFilters')
    WebhookLastTriggered = Shapes::TimestampShape.new(name: 'WebhookLastTriggered')
    WebhookList = Shapes::ListShape.new(name: 'WebhookList')
    WebhookName = Shapes::StringShape.new(name: 'WebhookName')
    WebhookNotFoundException = Shapes::StructureShape.new(name: 'WebhookNotFoundException')
    WebhookUrl = Shapes::StringShape.new(name: 'WebhookUrl')

    AWSSessionCredentials.add_member(:access_key_id, Shapes::ShapeRef.new(shape: AccessKeyId, required: true, location_name: "accessKeyId"))
    AWSSessionCredentials.add_member(:secret_access_key, Shapes::ShapeRef.new(shape: SecretAccessKey, required: true, location_name: "secretAccessKey"))
    AWSSessionCredentials.add_member(:session_token, Shapes::ShapeRef.new(shape: SessionToken, required: true, location_name: "sessionToken"))
    AWSSessionCredentials.struct_class = Types::AWSSessionCredentials

    AcknowledgeJobInput.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    AcknowledgeJobInput.add_member(:nonce, Shapes::ShapeRef.new(shape: Nonce, required: true, location_name: "nonce"))
    AcknowledgeJobInput.struct_class = Types::AcknowledgeJobInput

    AcknowledgeJobOutput.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "status"))
    AcknowledgeJobOutput.struct_class = Types::AcknowledgeJobOutput

    AcknowledgeThirdPartyJobInput.add_member(:job_id, Shapes::ShapeRef.new(shape: ThirdPartyJobId, required: true, location_name: "jobId"))
    AcknowledgeThirdPartyJobInput.add_member(:nonce, Shapes::ShapeRef.new(shape: Nonce, required: true, location_name: "nonce"))
    AcknowledgeThirdPartyJobInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken"))
    AcknowledgeThirdPartyJobInput.struct_class = Types::AcknowledgeThirdPartyJobInput

    AcknowledgeThirdPartyJobOutput.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "status"))
    AcknowledgeThirdPartyJobOutput.struct_class = Types::AcknowledgeThirdPartyJobOutput

    ActionConfiguration.add_member(:configuration, Shapes::ShapeRef.new(shape: ActionConfigurationMap, location_name: "configuration"))
    ActionConfiguration.struct_class = Types::ActionConfiguration

    ActionConfigurationMap.key = Shapes::ShapeRef.new(shape: ActionConfigurationKey)
    ActionConfigurationMap.value = Shapes::ShapeRef.new(shape: ActionConfigurationValue)

    ActionConfigurationProperty.add_member(:name, Shapes::ShapeRef.new(shape: ActionConfigurationKey, required: true, location_name: "name"))
    ActionConfigurationProperty.add_member(:required, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "required"))
    ActionConfigurationProperty.add_member(:key, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "key"))
    ActionConfigurationProperty.add_member(:secret, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "secret"))
    ActionConfigurationProperty.add_member(:queryable, Shapes::ShapeRef.new(shape: Boolean, location_name: "queryable"))
    ActionConfigurationProperty.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ActionConfigurationProperty.add_member(:type, Shapes::ShapeRef.new(shape: ActionConfigurationPropertyType, location_name: "type"))
    ActionConfigurationProperty.struct_class = Types::ActionConfigurationProperty

    ActionConfigurationPropertyList.member = Shapes::ShapeRef.new(shape: ActionConfigurationProperty)

    ActionContext.add_member(:name, Shapes::ShapeRef.new(shape: ActionName, location_name: "name"))
    ActionContext.add_member(:action_execution_id, Shapes::ShapeRef.new(shape: ActionExecutionId, location_name: "actionExecutionId"))
    ActionContext.struct_class = Types::ActionContext

    ActionDeclaration.add_member(:name, Shapes::ShapeRef.new(shape: ActionName, required: true, location_name: "name"))
    ActionDeclaration.add_member(:action_type_id, Shapes::ShapeRef.new(shape: ActionTypeId, required: true, location_name: "actionTypeId"))
    ActionDeclaration.add_member(:run_order, Shapes::ShapeRef.new(shape: ActionRunOrder, location_name: "runOrder"))
    ActionDeclaration.add_member(:configuration, Shapes::ShapeRef.new(shape: ActionConfigurationMap, location_name: "configuration"))
    ActionDeclaration.add_member(:commands, Shapes::ShapeRef.new(shape: CommandList, location_name: "commands"))
    ActionDeclaration.add_member(:output_artifacts, Shapes::ShapeRef.new(shape: OutputArtifactList, location_name: "outputArtifacts"))
    ActionDeclaration.add_member(:input_artifacts, Shapes::ShapeRef.new(shape: InputArtifactList, location_name: "inputArtifacts"))
    ActionDeclaration.add_member(:output_variables, Shapes::ShapeRef.new(shape: OutputVariableList, location_name: "outputVariables"))
    ActionDeclaration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    ActionDeclaration.add_member(:region, Shapes::ShapeRef.new(shape: AWSRegionName, location_name: "region"))
    ActionDeclaration.add_member(:namespace, Shapes::ShapeRef.new(shape: ActionNamespace, location_name: "namespace"))
    ActionDeclaration.add_member(:timeout_in_minutes, Shapes::ShapeRef.new(shape: ActionTimeout, location_name: "timeoutInMinutes"))
    ActionDeclaration.struct_class = Types::ActionDeclaration

    ActionExecution.add_member(:action_execution_id, Shapes::ShapeRef.new(shape: ActionExecutionId, location_name: "actionExecutionId"))
    ActionExecution.add_member(:status, Shapes::ShapeRef.new(shape: ActionExecutionStatus, location_name: "status"))
    ActionExecution.add_member(:summary, Shapes::ShapeRef.new(shape: ExecutionSummary, location_name: "summary"))
    ActionExecution.add_member(:last_status_change, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastStatusChange"))
    ActionExecution.add_member(:token, Shapes::ShapeRef.new(shape: ActionExecutionToken, location_name: "token"))
    ActionExecution.add_member(:last_updated_by, Shapes::ShapeRef.new(shape: LastUpdatedBy, location_name: "lastUpdatedBy"))
    ActionExecution.add_member(:external_execution_id, Shapes::ShapeRef.new(shape: ExecutionId, location_name: "externalExecutionId"))
    ActionExecution.add_member(:external_execution_url, Shapes::ShapeRef.new(shape: Url, location_name: "externalExecutionUrl"))
    ActionExecution.add_member(:percent_complete, Shapes::ShapeRef.new(shape: Percentage, location_name: "percentComplete"))
    ActionExecution.add_member(:error_details, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "errorDetails"))
    ActionExecution.struct_class = Types::ActionExecution

    ActionExecutionDetail.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: "pipelineExecutionId"))
    ActionExecutionDetail.add_member(:action_execution_id, Shapes::ShapeRef.new(shape: ActionExecutionId, location_name: "actionExecutionId"))
    ActionExecutionDetail.add_member(:pipeline_version, Shapes::ShapeRef.new(shape: PipelineVersion, location_name: "pipelineVersion"))
    ActionExecutionDetail.add_member(:stage_name, Shapes::ShapeRef.new(shape: StageName, location_name: "stageName"))
    ActionExecutionDetail.add_member(:action_name, Shapes::ShapeRef.new(shape: ActionName, location_name: "actionName"))
    ActionExecutionDetail.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    ActionExecutionDetail.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    ActionExecutionDetail.add_member(:updated_by, Shapes::ShapeRef.new(shape: LastUpdatedBy, location_name: "updatedBy"))
    ActionExecutionDetail.add_member(:status, Shapes::ShapeRef.new(shape: ActionExecutionStatus, location_name: "status"))
    ActionExecutionDetail.add_member(:input, Shapes::ShapeRef.new(shape: ActionExecutionInput, location_name: "input"))
    ActionExecutionDetail.add_member(:output, Shapes::ShapeRef.new(shape: ActionExecutionOutput, location_name: "output"))
    ActionExecutionDetail.struct_class = Types::ActionExecutionDetail

    ActionExecutionDetailList.member = Shapes::ShapeRef.new(shape: ActionExecutionDetail)

    ActionExecutionFilter.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: "pipelineExecutionId"))
    ActionExecutionFilter.add_member(:latest_in_pipeline_execution, Shapes::ShapeRef.new(shape: LatestInPipelineExecutionFilter, location_name: "latestInPipelineExecution"))
    ActionExecutionFilter.struct_class = Types::ActionExecutionFilter

    ActionExecutionInput.add_member(:action_type_id, Shapes::ShapeRef.new(shape: ActionTypeId, location_name: "actionTypeId"))
    ActionExecutionInput.add_member(:configuration, Shapes::ShapeRef.new(shape: ActionConfigurationMap, location_name: "configuration"))
    ActionExecutionInput.add_member(:resolved_configuration, Shapes::ShapeRef.new(shape: ResolvedActionConfigurationMap, location_name: "resolvedConfiguration"))
    ActionExecutionInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    ActionExecutionInput.add_member(:region, Shapes::ShapeRef.new(shape: AWSRegionName, location_name: "region"))
    ActionExecutionInput.add_member(:input_artifacts, Shapes::ShapeRef.new(shape: ArtifactDetailList, location_name: "inputArtifacts"))
    ActionExecutionInput.add_member(:namespace, Shapes::ShapeRef.new(shape: ActionNamespace, location_name: "namespace"))
    ActionExecutionInput.struct_class = Types::ActionExecutionInput

    ActionExecutionOutput.add_member(:output_artifacts, Shapes::ShapeRef.new(shape: ArtifactDetailList, location_name: "outputArtifacts"))
    ActionExecutionOutput.add_member(:execution_result, Shapes::ShapeRef.new(shape: ActionExecutionResult, location_name: "executionResult"))
    ActionExecutionOutput.add_member(:output_variables, Shapes::ShapeRef.new(shape: OutputVariablesMap, location_name: "outputVariables"))
    ActionExecutionOutput.struct_class = Types::ActionExecutionOutput

    ActionExecutionResult.add_member(:external_execution_id, Shapes::ShapeRef.new(shape: ExternalExecutionId, location_name: "externalExecutionId"))
    ActionExecutionResult.add_member(:external_execution_summary, Shapes::ShapeRef.new(shape: ExternalExecutionSummary, location_name: "externalExecutionSummary"))
    ActionExecutionResult.add_member(:external_execution_url, Shapes::ShapeRef.new(shape: Url, location_name: "externalExecutionUrl"))
    ActionExecutionResult.add_member(:error_details, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "errorDetails"))
    ActionExecutionResult.struct_class = Types::ActionExecutionResult

    ActionNotFoundException.struct_class = Types::ActionNotFoundException

    ActionRevision.add_member(:revision_id, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "revisionId"))
    ActionRevision.add_member(:revision_change_id, Shapes::ShapeRef.new(shape: RevisionChangeIdentifier, required: true, location_name: "revisionChangeId"))
    ActionRevision.add_member(:created, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "created"))
    ActionRevision.struct_class = Types::ActionRevision

    ActionState.add_member(:action_name, Shapes::ShapeRef.new(shape: ActionName, location_name: "actionName"))
    ActionState.add_member(:current_revision, Shapes::ShapeRef.new(shape: ActionRevision, location_name: "currentRevision"))
    ActionState.add_member(:latest_execution, Shapes::ShapeRef.new(shape: ActionExecution, location_name: "latestExecution"))
    ActionState.add_member(:entity_url, Shapes::ShapeRef.new(shape: Url, location_name: "entityUrl"))
    ActionState.add_member(:revision_url, Shapes::ShapeRef.new(shape: Url, location_name: "revisionUrl"))
    ActionState.struct_class = Types::ActionState

    ActionStateList.member = Shapes::ShapeRef.new(shape: ActionState)

    ActionType.add_member(:id, Shapes::ShapeRef.new(shape: ActionTypeId, required: true, location_name: "id"))
    ActionType.add_member(:settings, Shapes::ShapeRef.new(shape: ActionTypeSettings, location_name: "settings"))
    ActionType.add_member(:action_configuration_properties, Shapes::ShapeRef.new(shape: ActionConfigurationPropertyList, location_name: "actionConfigurationProperties"))
    ActionType.add_member(:input_artifact_details, Shapes::ShapeRef.new(shape: ArtifactDetails, required: true, location_name: "inputArtifactDetails"))
    ActionType.add_member(:output_artifact_details, Shapes::ShapeRef.new(shape: ArtifactDetails, required: true, location_name: "outputArtifactDetails"))
    ActionType.struct_class = Types::ActionType

    ActionTypeAlreadyExistsException.struct_class = Types::ActionTypeAlreadyExistsException

    ActionTypeArtifactDetails.add_member(:minimum_count, Shapes::ShapeRef.new(shape: MinimumActionTypeArtifactCount, required: true, location_name: "minimumCount"))
    ActionTypeArtifactDetails.add_member(:maximum_count, Shapes::ShapeRef.new(shape: MaximumActionTypeArtifactCount, required: true, location_name: "maximumCount"))
    ActionTypeArtifactDetails.struct_class = Types::ActionTypeArtifactDetails

    ActionTypeDeclaration.add_member(:description, Shapes::ShapeRef.new(shape: ActionTypeDescription, location_name: "description"))
    ActionTypeDeclaration.add_member(:executor, Shapes::ShapeRef.new(shape: ActionTypeExecutor, required: true, location_name: "executor"))
    ActionTypeDeclaration.add_member(:id, Shapes::ShapeRef.new(shape: ActionTypeIdentifier, required: true, location_name: "id"))
    ActionTypeDeclaration.add_member(:input_artifact_details, Shapes::ShapeRef.new(shape: ActionTypeArtifactDetails, required: true, location_name: "inputArtifactDetails"))
    ActionTypeDeclaration.add_member(:output_artifact_details, Shapes::ShapeRef.new(shape: ActionTypeArtifactDetails, required: true, location_name: "outputArtifactDetails"))
    ActionTypeDeclaration.add_member(:permissions, Shapes::ShapeRef.new(shape: ActionTypePermissions, location_name: "permissions"))
    ActionTypeDeclaration.add_member(:properties, Shapes::ShapeRef.new(shape: ActionTypeProperties, location_name: "properties"))
    ActionTypeDeclaration.add_member(:urls, Shapes::ShapeRef.new(shape: ActionTypeUrls, location_name: "urls"))
    ActionTypeDeclaration.struct_class = Types::ActionTypeDeclaration

    ActionTypeExecutor.add_member(:configuration, Shapes::ShapeRef.new(shape: ExecutorConfiguration, required: true, location_name: "configuration"))
    ActionTypeExecutor.add_member(:type, Shapes::ShapeRef.new(shape: ExecutorType, required: true, location_name: "type"))
    ActionTypeExecutor.add_member(:policy_statements_template, Shapes::ShapeRef.new(shape: PolicyStatementsTemplate, location_name: "policyStatementsTemplate"))
    ActionTypeExecutor.add_member(:job_timeout, Shapes::ShapeRef.new(shape: JobTimeout, location_name: "jobTimeout"))
    ActionTypeExecutor.struct_class = Types::ActionTypeExecutor

    ActionTypeId.add_member(:category, Shapes::ShapeRef.new(shape: ActionCategory, required: true, location_name: "category"))
    ActionTypeId.add_member(:owner, Shapes::ShapeRef.new(shape: ActionOwner, required: true, location_name: "owner"))
    ActionTypeId.add_member(:provider, Shapes::ShapeRef.new(shape: ActionProvider, required: true, location_name: "provider"))
    ActionTypeId.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    ActionTypeId.struct_class = Types::ActionTypeId

    ActionTypeIdentifier.add_member(:category, Shapes::ShapeRef.new(shape: ActionCategory, required: true, location_name: "category"))
    ActionTypeIdentifier.add_member(:owner, Shapes::ShapeRef.new(shape: ActionTypeOwner, required: true, location_name: "owner"))
    ActionTypeIdentifier.add_member(:provider, Shapes::ShapeRef.new(shape: ActionProvider, required: true, location_name: "provider"))
    ActionTypeIdentifier.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    ActionTypeIdentifier.struct_class = Types::ActionTypeIdentifier

    ActionTypeList.member = Shapes::ShapeRef.new(shape: ActionType)

    ActionTypeNotFoundException.struct_class = Types::ActionTypeNotFoundException

    ActionTypePermissions.add_member(:allowed_accounts, Shapes::ShapeRef.new(shape: AllowedAccounts, required: true, location_name: "allowedAccounts"))
    ActionTypePermissions.struct_class = Types::ActionTypePermissions

    ActionTypeProperties.member = Shapes::ShapeRef.new(shape: ActionTypeProperty)

    ActionTypeProperty.add_member(:name, Shapes::ShapeRef.new(shape: ActionConfigurationKey, required: true, location_name: "name"))
    ActionTypeProperty.add_member(:optional, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "optional"))
    ActionTypeProperty.add_member(:key, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "key"))
    ActionTypeProperty.add_member(:no_echo, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "noEcho"))
    ActionTypeProperty.add_member(:queryable, Shapes::ShapeRef.new(shape: Boolean, location_name: "queryable"))
    ActionTypeProperty.add_member(:description, Shapes::ShapeRef.new(shape: PropertyDescription, location_name: "description"))
    ActionTypeProperty.struct_class = Types::ActionTypeProperty

    ActionTypeSettings.add_member(:third_party_configuration_url, Shapes::ShapeRef.new(shape: Url, location_name: "thirdPartyConfigurationUrl"))
    ActionTypeSettings.add_member(:entity_url_template, Shapes::ShapeRef.new(shape: UrlTemplate, location_name: "entityUrlTemplate"))
    ActionTypeSettings.add_member(:execution_url_template, Shapes::ShapeRef.new(shape: UrlTemplate, location_name: "executionUrlTemplate"))
    ActionTypeSettings.add_member(:revision_url_template, Shapes::ShapeRef.new(shape: UrlTemplate, location_name: "revisionUrlTemplate"))
    ActionTypeSettings.struct_class = Types::ActionTypeSettings

    ActionTypeUrls.add_member(:configuration_url, Shapes::ShapeRef.new(shape: Url, location_name: "configurationUrl"))
    ActionTypeUrls.add_member(:entity_url_template, Shapes::ShapeRef.new(shape: UrlTemplate, location_name: "entityUrlTemplate"))
    ActionTypeUrls.add_member(:execution_url_template, Shapes::ShapeRef.new(shape: UrlTemplate, location_name: "executionUrlTemplate"))
    ActionTypeUrls.add_member(:revision_url_template, Shapes::ShapeRef.new(shape: UrlTemplate, location_name: "revisionUrlTemplate"))
    ActionTypeUrls.struct_class = Types::ActionTypeUrls

    AllowedAccounts.member = Shapes::ShapeRef.new(shape: AllowedAccount)

    ApprovalAlreadyCompletedException.struct_class = Types::ApprovalAlreadyCompletedException

    ApprovalResult.add_member(:summary, Shapes::ShapeRef.new(shape: ApprovalSummary, required: true, location_name: "summary"))
    ApprovalResult.add_member(:status, Shapes::ShapeRef.new(shape: ApprovalStatus, required: true, location_name: "status"))
    ApprovalResult.struct_class = Types::ApprovalResult

    Artifact.add_member(:name, Shapes::ShapeRef.new(shape: ArtifactName, location_name: "name"))
    Artifact.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, location_name: "revision"))
    Artifact.add_member(:location, Shapes::ShapeRef.new(shape: ArtifactLocation, location_name: "location"))
    Artifact.struct_class = Types::Artifact

    ArtifactDetail.add_member(:name, Shapes::ShapeRef.new(shape: ArtifactName, location_name: "name"))
    ArtifactDetail.add_member(:s3location, Shapes::ShapeRef.new(shape: S3Location, location_name: "s3location"))
    ArtifactDetail.struct_class = Types::ArtifactDetail

    ArtifactDetailList.member = Shapes::ShapeRef.new(shape: ArtifactDetail)

    ArtifactDetails.add_member(:minimum_count, Shapes::ShapeRef.new(shape: MinimumArtifactCount, required: true, location_name: "minimumCount"))
    ArtifactDetails.add_member(:maximum_count, Shapes::ShapeRef.new(shape: MaximumArtifactCount, required: true, location_name: "maximumCount"))
    ArtifactDetails.struct_class = Types::ArtifactDetails

    ArtifactList.member = Shapes::ShapeRef.new(shape: Artifact)

    ArtifactLocation.add_member(:type, Shapes::ShapeRef.new(shape: ArtifactLocationType, location_name: "type"))
    ArtifactLocation.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3ArtifactLocation, location_name: "s3Location"))
    ArtifactLocation.struct_class = Types::ArtifactLocation

    ArtifactRevision.add_member(:name, Shapes::ShapeRef.new(shape: ArtifactName, location_name: "name"))
    ArtifactRevision.add_member(:revision_id, Shapes::ShapeRef.new(shape: Revision, location_name: "revisionId"))
    ArtifactRevision.add_member(:revision_change_identifier, Shapes::ShapeRef.new(shape: RevisionChangeIdentifier, location_name: "revisionChangeIdentifier"))
    ArtifactRevision.add_member(:revision_summary, Shapes::ShapeRef.new(shape: RevisionSummary, location_name: "revisionSummary"))
    ArtifactRevision.add_member(:created, Shapes::ShapeRef.new(shape: Timestamp, location_name: "created"))
    ArtifactRevision.add_member(:revision_url, Shapes::ShapeRef.new(shape: Url, location_name: "revisionUrl"))
    ArtifactRevision.struct_class = Types::ArtifactRevision

    ArtifactRevisionList.member = Shapes::ShapeRef.new(shape: ArtifactRevision)

    ArtifactStore.add_member(:type, Shapes::ShapeRef.new(shape: ArtifactStoreType, required: true, location_name: "type"))
    ArtifactStore.add_member(:location, Shapes::ShapeRef.new(shape: ArtifactStoreLocation, required: true, location_name: "location"))
    ArtifactStore.add_member(:encryption_key, Shapes::ShapeRef.new(shape: EncryptionKey, location_name: "encryptionKey"))
    ArtifactStore.struct_class = Types::ArtifactStore

    ArtifactStoreMap.key = Shapes::ShapeRef.new(shape: AWSRegionName)
    ArtifactStoreMap.value = Shapes::ShapeRef.new(shape: ArtifactStore)

    BeforeEntryConditions.add_member(:conditions, Shapes::ShapeRef.new(shape: ConditionList, required: true, location_name: "conditions"))
    BeforeEntryConditions.struct_class = Types::BeforeEntryConditions

    BlockerDeclaration.add_member(:name, Shapes::ShapeRef.new(shape: BlockerName, required: true, location_name: "name"))
    BlockerDeclaration.add_member(:type, Shapes::ShapeRef.new(shape: BlockerType, required: true, location_name: "type"))
    BlockerDeclaration.struct_class = Types::BlockerDeclaration

    CommandList.member = Shapes::ShapeRef.new(shape: Command)

    ConcurrentModificationException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    ConcurrentPipelineExecutionsLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    ConcurrentPipelineExecutionsLimitExceededException.struct_class = Types::ConcurrentPipelineExecutionsLimitExceededException

    Condition.add_member(:result, Shapes::ShapeRef.new(shape: Result, location_name: "result"))
    Condition.add_member(:rules, Shapes::ShapeRef.new(shape: RuleDeclarationList, location_name: "rules"))
    Condition.struct_class = Types::Condition

    ConditionExecution.add_member(:status, Shapes::ShapeRef.new(shape: ConditionExecutionStatus, location_name: "status"))
    ConditionExecution.add_member(:summary, Shapes::ShapeRef.new(shape: ExecutionSummary, location_name: "summary"))
    ConditionExecution.add_member(:last_status_change, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastStatusChange"))
    ConditionExecution.struct_class = Types::ConditionExecution

    ConditionList.member = Shapes::ShapeRef.new(shape: Condition)

    ConditionNotOverridableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConditionNotOverridableException.struct_class = Types::ConditionNotOverridableException

    ConditionState.add_member(:latest_execution, Shapes::ShapeRef.new(shape: ConditionExecution, location_name: "latestExecution"))
    ConditionState.add_member(:rule_states, Shapes::ShapeRef.new(shape: RuleStateList, location_name: "ruleStates"))
    ConditionState.struct_class = Types::ConditionState

    ConditionStateList.member = Shapes::ShapeRef.new(shape: ConditionState)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateCustomActionTypeInput.add_member(:category, Shapes::ShapeRef.new(shape: ActionCategory, required: true, location_name: "category"))
    CreateCustomActionTypeInput.add_member(:provider, Shapes::ShapeRef.new(shape: ActionProvider, required: true, location_name: "provider"))
    CreateCustomActionTypeInput.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    CreateCustomActionTypeInput.add_member(:settings, Shapes::ShapeRef.new(shape: ActionTypeSettings, location_name: "settings"))
    CreateCustomActionTypeInput.add_member(:configuration_properties, Shapes::ShapeRef.new(shape: ActionConfigurationPropertyList, location_name: "configurationProperties"))
    CreateCustomActionTypeInput.add_member(:input_artifact_details, Shapes::ShapeRef.new(shape: ArtifactDetails, required: true, location_name: "inputArtifactDetails"))
    CreateCustomActionTypeInput.add_member(:output_artifact_details, Shapes::ShapeRef.new(shape: ArtifactDetails, required: true, location_name: "outputArtifactDetails"))
    CreateCustomActionTypeInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateCustomActionTypeInput.struct_class = Types::CreateCustomActionTypeInput

    CreateCustomActionTypeOutput.add_member(:action_type, Shapes::ShapeRef.new(shape: ActionType, required: true, location_name: "actionType"))
    CreateCustomActionTypeOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateCustomActionTypeOutput.struct_class = Types::CreateCustomActionTypeOutput

    CreatePipelineInput.add_member(:pipeline, Shapes::ShapeRef.new(shape: PipelineDeclaration, required: true, location_name: "pipeline"))
    CreatePipelineInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreatePipelineInput.struct_class = Types::CreatePipelineInput

    CreatePipelineOutput.add_member(:pipeline, Shapes::ShapeRef.new(shape: PipelineDeclaration, location_name: "pipeline"))
    CreatePipelineOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreatePipelineOutput.struct_class = Types::CreatePipelineOutput

    CurrentRevision.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "revision"))
    CurrentRevision.add_member(:change_identifier, Shapes::ShapeRef.new(shape: RevisionChangeIdentifier, required: true, location_name: "changeIdentifier"))
    CurrentRevision.add_member(:created, Shapes::ShapeRef.new(shape: Time, location_name: "created"))
    CurrentRevision.add_member(:revision_summary, Shapes::ShapeRef.new(shape: RevisionSummary, location_name: "revisionSummary"))
    CurrentRevision.struct_class = Types::CurrentRevision

    DeleteCustomActionTypeInput.add_member(:category, Shapes::ShapeRef.new(shape: ActionCategory, required: true, location_name: "category"))
    DeleteCustomActionTypeInput.add_member(:provider, Shapes::ShapeRef.new(shape: ActionProvider, required: true, location_name: "provider"))
    DeleteCustomActionTypeInput.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    DeleteCustomActionTypeInput.struct_class = Types::DeleteCustomActionTypeInput

    DeletePipelineInput.add_member(:name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "name"))
    DeletePipelineInput.struct_class = Types::DeletePipelineInput

    DeleteWebhookInput.add_member(:name, Shapes::ShapeRef.new(shape: WebhookName, required: true, location_name: "name"))
    DeleteWebhookInput.struct_class = Types::DeleteWebhookInput

    DeleteWebhookOutput.struct_class = Types::DeleteWebhookOutput

    DeregisterWebhookWithThirdPartyInput.add_member(:webhook_name, Shapes::ShapeRef.new(shape: WebhookName, location_name: "webhookName"))
    DeregisterWebhookWithThirdPartyInput.struct_class = Types::DeregisterWebhookWithThirdPartyInput

    DeregisterWebhookWithThirdPartyOutput.struct_class = Types::DeregisterWebhookWithThirdPartyOutput

    DisableStageTransitionInput.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "pipelineName"))
    DisableStageTransitionInput.add_member(:stage_name, Shapes::ShapeRef.new(shape: StageName, required: true, location_name: "stageName"))
    DisableStageTransitionInput.add_member(:transition_type, Shapes::ShapeRef.new(shape: StageTransitionType, required: true, location_name: "transitionType"))
    DisableStageTransitionInput.add_member(:reason, Shapes::ShapeRef.new(shape: DisabledReason, required: true, location_name: "reason"))
    DisableStageTransitionInput.struct_class = Types::DisableStageTransitionInput

    DuplicatedStopRequestException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    DuplicatedStopRequestException.struct_class = Types::DuplicatedStopRequestException

    EnableStageTransitionInput.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "pipelineName"))
    EnableStageTransitionInput.add_member(:stage_name, Shapes::ShapeRef.new(shape: StageName, required: true, location_name: "stageName"))
    EnableStageTransitionInput.add_member(:transition_type, Shapes::ShapeRef.new(shape: StageTransitionType, required: true, location_name: "transitionType"))
    EnableStageTransitionInput.struct_class = Types::EnableStageTransitionInput

    EncryptionKey.add_member(:id, Shapes::ShapeRef.new(shape: EncryptionKeyId, required: true, location_name: "id"))
    EncryptionKey.add_member(:type, Shapes::ShapeRef.new(shape: EncryptionKeyType, required: true, location_name: "type"))
    EncryptionKey.struct_class = Types::EncryptionKey

    ErrorDetails.add_member(:code, Shapes::ShapeRef.new(shape: Code, location_name: "code"))
    ErrorDetails.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    ErrorDetails.struct_class = Types::ErrorDetails

    ExecutionDetails.add_member(:summary, Shapes::ShapeRef.new(shape: ExecutionSummary, location_name: "summary"))
    ExecutionDetails.add_member(:external_execution_id, Shapes::ShapeRef.new(shape: ExecutionId, location_name: "externalExecutionId"))
    ExecutionDetails.add_member(:percent_complete, Shapes::ShapeRef.new(shape: Percentage, location_name: "percentComplete"))
    ExecutionDetails.struct_class = Types::ExecutionDetails

    ExecutionTrigger.add_member(:trigger_type, Shapes::ShapeRef.new(shape: TriggerType, location_name: "triggerType"))
    ExecutionTrigger.add_member(:trigger_detail, Shapes::ShapeRef.new(shape: TriggerDetail, location_name: "triggerDetail"))
    ExecutionTrigger.struct_class = Types::ExecutionTrigger

    ExecutorConfiguration.add_member(:lambda_executor_configuration, Shapes::ShapeRef.new(shape: LambdaExecutorConfiguration, location_name: "lambdaExecutorConfiguration"))
    ExecutorConfiguration.add_member(:job_worker_executor_configuration, Shapes::ShapeRef.new(shape: JobWorkerExecutorConfiguration, location_name: "jobWorkerExecutorConfiguration"))
    ExecutorConfiguration.struct_class = Types::ExecutorConfiguration

    FailureConditions.add_member(:result, Shapes::ShapeRef.new(shape: Result, location_name: "result"))
    FailureConditions.add_member(:retry_configuration, Shapes::ShapeRef.new(shape: RetryConfiguration, location_name: "retryConfiguration"))
    FailureConditions.add_member(:conditions, Shapes::ShapeRef.new(shape: ConditionList, location_name: "conditions"))
    FailureConditions.struct_class = Types::FailureConditions

    FailureDetails.add_member(:type, Shapes::ShapeRef.new(shape: FailureType, required: true, location_name: "type"))
    FailureDetails.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "message"))
    FailureDetails.add_member(:external_execution_id, Shapes::ShapeRef.new(shape: ExecutionId, location_name: "externalExecutionId"))
    FailureDetails.struct_class = Types::FailureDetails

    FilePathList.member = Shapes::ShapeRef.new(shape: FilePath)

    GetActionTypeInput.add_member(:category, Shapes::ShapeRef.new(shape: ActionCategory, required: true, location_name: "category"))
    GetActionTypeInput.add_member(:owner, Shapes::ShapeRef.new(shape: ActionTypeOwner, required: true, location_name: "owner"))
    GetActionTypeInput.add_member(:provider, Shapes::ShapeRef.new(shape: ActionProvider, required: true, location_name: "provider"))
    GetActionTypeInput.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    GetActionTypeInput.struct_class = Types::GetActionTypeInput

    GetActionTypeOutput.add_member(:action_type, Shapes::ShapeRef.new(shape: ActionTypeDeclaration, location_name: "actionType"))
    GetActionTypeOutput.struct_class = Types::GetActionTypeOutput

    GetJobDetailsInput.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    GetJobDetailsInput.struct_class = Types::GetJobDetailsInput

    GetJobDetailsOutput.add_member(:job_details, Shapes::ShapeRef.new(shape: JobDetails, location_name: "jobDetails"))
    GetJobDetailsOutput.struct_class = Types::GetJobDetailsOutput

    GetPipelineExecutionInput.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "pipelineName"))
    GetPipelineExecutionInput.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: PipelineExecutionId, required: true, location_name: "pipelineExecutionId"))
    GetPipelineExecutionInput.struct_class = Types::GetPipelineExecutionInput

    GetPipelineExecutionOutput.add_member(:pipeline_execution, Shapes::ShapeRef.new(shape: PipelineExecution, location_name: "pipelineExecution"))
    GetPipelineExecutionOutput.struct_class = Types::GetPipelineExecutionOutput

    GetPipelineInput.add_member(:name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "name"))
    GetPipelineInput.add_member(:version, Shapes::ShapeRef.new(shape: PipelineVersion, location_name: "version"))
    GetPipelineInput.struct_class = Types::GetPipelineInput

    GetPipelineOutput.add_member(:pipeline, Shapes::ShapeRef.new(shape: PipelineDeclaration, location_name: "pipeline"))
    GetPipelineOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: PipelineMetadata, location_name: "metadata"))
    GetPipelineOutput.struct_class = Types::GetPipelineOutput

    GetPipelineStateInput.add_member(:name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "name"))
    GetPipelineStateInput.struct_class = Types::GetPipelineStateInput

    GetPipelineStateOutput.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, location_name: "pipelineName"))
    GetPipelineStateOutput.add_member(:pipeline_version, Shapes::ShapeRef.new(shape: PipelineVersion, location_name: "pipelineVersion"))
    GetPipelineStateOutput.add_member(:stage_states, Shapes::ShapeRef.new(shape: StageStateList, location_name: "stageStates"))
    GetPipelineStateOutput.add_member(:created, Shapes::ShapeRef.new(shape: Timestamp, location_name: "created"))
    GetPipelineStateOutput.add_member(:updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updated"))
    GetPipelineStateOutput.struct_class = Types::GetPipelineStateOutput

    GetThirdPartyJobDetailsInput.add_member(:job_id, Shapes::ShapeRef.new(shape: ThirdPartyJobId, required: true, location_name: "jobId"))
    GetThirdPartyJobDetailsInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken"))
    GetThirdPartyJobDetailsInput.struct_class = Types::GetThirdPartyJobDetailsInput

    GetThirdPartyJobDetailsOutput.add_member(:job_details, Shapes::ShapeRef.new(shape: ThirdPartyJobDetails, location_name: "jobDetails"))
    GetThirdPartyJobDetailsOutput.struct_class = Types::GetThirdPartyJobDetailsOutput

    GitBranchFilterCriteria.add_member(:includes, Shapes::ShapeRef.new(shape: GitBranchPatternList, location_name: "includes"))
    GitBranchFilterCriteria.add_member(:excludes, Shapes::ShapeRef.new(shape: GitBranchPatternList, location_name: "excludes"))
    GitBranchFilterCriteria.struct_class = Types::GitBranchFilterCriteria

    GitBranchPatternList.member = Shapes::ShapeRef.new(shape: GitBranchNamePattern)

    GitConfiguration.add_member(:source_action_name, Shapes::ShapeRef.new(shape: ActionName, required: true, location_name: "sourceActionName"))
    GitConfiguration.add_member(:push, Shapes::ShapeRef.new(shape: GitPushFilterList, location_name: "push"))
    GitConfiguration.add_member(:pull_request, Shapes::ShapeRef.new(shape: GitPullRequestFilterList, location_name: "pullRequest"))
    GitConfiguration.struct_class = Types::GitConfiguration

    GitFilePathFilterCriteria.add_member(:includes, Shapes::ShapeRef.new(shape: GitFilePathPatternList, location_name: "includes"))
    GitFilePathFilterCriteria.add_member(:excludes, Shapes::ShapeRef.new(shape: GitFilePathPatternList, location_name: "excludes"))
    GitFilePathFilterCriteria.struct_class = Types::GitFilePathFilterCriteria

    GitFilePathPatternList.member = Shapes::ShapeRef.new(shape: GitFilePathPattern)

    GitPullRequestEventTypeList.member = Shapes::ShapeRef.new(shape: GitPullRequestEventType)

    GitPullRequestFilter.add_member(:events, Shapes::ShapeRef.new(shape: GitPullRequestEventTypeList, location_name: "events"))
    GitPullRequestFilter.add_member(:branches, Shapes::ShapeRef.new(shape: GitBranchFilterCriteria, location_name: "branches"))
    GitPullRequestFilter.add_member(:file_paths, Shapes::ShapeRef.new(shape: GitFilePathFilterCriteria, location_name: "filePaths"))
    GitPullRequestFilter.struct_class = Types::GitPullRequestFilter

    GitPullRequestFilterList.member = Shapes::ShapeRef.new(shape: GitPullRequestFilter)

    GitPushFilter.add_member(:tags, Shapes::ShapeRef.new(shape: GitTagFilterCriteria, location_name: "tags"))
    GitPushFilter.add_member(:branches, Shapes::ShapeRef.new(shape: GitBranchFilterCriteria, location_name: "branches"))
    GitPushFilter.add_member(:file_paths, Shapes::ShapeRef.new(shape: GitFilePathFilterCriteria, location_name: "filePaths"))
    GitPushFilter.struct_class = Types::GitPushFilter

    GitPushFilterList.member = Shapes::ShapeRef.new(shape: GitPushFilter)

    GitTagFilterCriteria.add_member(:includes, Shapes::ShapeRef.new(shape: GitTagPatternList, location_name: "includes"))
    GitTagFilterCriteria.add_member(:excludes, Shapes::ShapeRef.new(shape: GitTagPatternList, location_name: "excludes"))
    GitTagFilterCriteria.struct_class = Types::GitTagFilterCriteria

    GitTagPatternList.member = Shapes::ShapeRef.new(shape: GitTagNamePattern)

    InputArtifact.add_member(:name, Shapes::ShapeRef.new(shape: ArtifactName, required: true, location_name: "name"))
    InputArtifact.struct_class = Types::InputArtifact

    InputArtifactList.member = Shapes::ShapeRef.new(shape: InputArtifact)

    InvalidActionDeclarationException.struct_class = Types::InvalidActionDeclarationException

    InvalidApprovalTokenException.struct_class = Types::InvalidApprovalTokenException

    InvalidArnException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    InvalidArnException.struct_class = Types::InvalidArnException

    InvalidBlockerDeclarationException.struct_class = Types::InvalidBlockerDeclarationException

    InvalidClientTokenException.struct_class = Types::InvalidClientTokenException

    InvalidJobException.struct_class = Types::InvalidJobException

    InvalidJobStateException.struct_class = Types::InvalidJobStateException

    InvalidNextTokenException.struct_class = Types::InvalidNextTokenException

    InvalidNonceException.struct_class = Types::InvalidNonceException

    InvalidStageDeclarationException.struct_class = Types::InvalidStageDeclarationException

    InvalidStructureException.struct_class = Types::InvalidStructureException

    InvalidTagsException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    InvalidTagsException.struct_class = Types::InvalidTagsException

    InvalidWebhookAuthenticationParametersException.struct_class = Types::InvalidWebhookAuthenticationParametersException

    InvalidWebhookFilterPatternException.struct_class = Types::InvalidWebhookFilterPatternException

    Job.add_member(:id, Shapes::ShapeRef.new(shape: JobId, location_name: "id"))
    Job.add_member(:data, Shapes::ShapeRef.new(shape: JobData, location_name: "data"))
    Job.add_member(:nonce, Shapes::ShapeRef.new(shape: Nonce, location_name: "nonce"))
    Job.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    Job.struct_class = Types::Job

    JobData.add_member(:action_type_id, Shapes::ShapeRef.new(shape: ActionTypeId, location_name: "actionTypeId"))
    JobData.add_member(:action_configuration, Shapes::ShapeRef.new(shape: ActionConfiguration, location_name: "actionConfiguration"))
    JobData.add_member(:pipeline_context, Shapes::ShapeRef.new(shape: PipelineContext, location_name: "pipelineContext"))
    JobData.add_member(:input_artifacts, Shapes::ShapeRef.new(shape: ArtifactList, location_name: "inputArtifacts"))
    JobData.add_member(:output_artifacts, Shapes::ShapeRef.new(shape: ArtifactList, location_name: "outputArtifacts"))
    JobData.add_member(:artifact_credentials, Shapes::ShapeRef.new(shape: AWSSessionCredentials, location_name: "artifactCredentials"))
    JobData.add_member(:continuation_token, Shapes::ShapeRef.new(shape: ContinuationToken, location_name: "continuationToken"))
    JobData.add_member(:encryption_key, Shapes::ShapeRef.new(shape: EncryptionKey, location_name: "encryptionKey"))
    JobData.struct_class = Types::JobData

    JobDetails.add_member(:id, Shapes::ShapeRef.new(shape: JobId, location_name: "id"))
    JobDetails.add_member(:data, Shapes::ShapeRef.new(shape: JobData, location_name: "data"))
    JobDetails.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    JobDetails.struct_class = Types::JobDetails

    JobList.member = Shapes::ShapeRef.new(shape: Job)

    JobNotFoundException.struct_class = Types::JobNotFoundException

    JobWorkerExecutorConfiguration.add_member(:polling_accounts, Shapes::ShapeRef.new(shape: PollingAccountList, location_name: "pollingAccounts"))
    JobWorkerExecutorConfiguration.add_member(:polling_service_principals, Shapes::ShapeRef.new(shape: PollingServicePrincipalList, location_name: "pollingServicePrincipals"))
    JobWorkerExecutorConfiguration.struct_class = Types::JobWorkerExecutorConfiguration

    LambdaExecutorConfiguration.add_member(:lambda_function_arn, Shapes::ShapeRef.new(shape: LambdaFunctionArn, required: true, location_name: "lambdaFunctionArn"))
    LambdaExecutorConfiguration.struct_class = Types::LambdaExecutorConfiguration

    LatestInPipelineExecutionFilter.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: PipelineExecutionId, required: true, location_name: "pipelineExecutionId"))
    LatestInPipelineExecutionFilter.add_member(:start_time_range, Shapes::ShapeRef.new(shape: StartTimeRange, required: true, location_name: "startTimeRange"))
    LatestInPipelineExecutionFilter.struct_class = Types::LatestInPipelineExecutionFilter

    LimitExceededException.struct_class = Types::LimitExceededException

    ListActionExecutionsInput.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "pipelineName"))
    ListActionExecutionsInput.add_member(:filter, Shapes::ShapeRef.new(shape: ActionExecutionFilter, location_name: "filter"))
    ListActionExecutionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListActionExecutionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListActionExecutionsInput.struct_class = Types::ListActionExecutionsInput

    ListActionExecutionsOutput.add_member(:action_execution_details, Shapes::ShapeRef.new(shape: ActionExecutionDetailList, location_name: "actionExecutionDetails"))
    ListActionExecutionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListActionExecutionsOutput.struct_class = Types::ListActionExecutionsOutput

    ListActionTypesInput.add_member(:action_owner_filter, Shapes::ShapeRef.new(shape: ActionOwner, location_name: "actionOwnerFilter"))
    ListActionTypesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListActionTypesInput.add_member(:region_filter, Shapes::ShapeRef.new(shape: AWSRegionName, location_name: "regionFilter"))
    ListActionTypesInput.struct_class = Types::ListActionTypesInput

    ListActionTypesOutput.add_member(:action_types, Shapes::ShapeRef.new(shape: ActionTypeList, required: true, location_name: "actionTypes"))
    ListActionTypesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListActionTypesOutput.struct_class = Types::ListActionTypesOutput

    ListPipelineExecutionsInput.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "pipelineName"))
    ListPipelineExecutionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListPipelineExecutionsInput.add_member(:filter, Shapes::ShapeRef.new(shape: PipelineExecutionFilter, location_name: "filter"))
    ListPipelineExecutionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPipelineExecutionsInput.struct_class = Types::ListPipelineExecutionsInput

    ListPipelineExecutionsOutput.add_member(:pipeline_execution_summaries, Shapes::ShapeRef.new(shape: PipelineExecutionSummaryList, location_name: "pipelineExecutionSummaries"))
    ListPipelineExecutionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPipelineExecutionsOutput.struct_class = Types::ListPipelineExecutionsOutput

    ListPipelinesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPipelinesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxPipelines, location_name: "maxResults"))
    ListPipelinesInput.struct_class = Types::ListPipelinesInput

    ListPipelinesOutput.add_member(:pipelines, Shapes::ShapeRef.new(shape: PipelineList, location_name: "pipelines"))
    ListPipelinesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPipelinesOutput.struct_class = Types::ListPipelinesOutput

    ListRuleExecutionsInput.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "pipelineName"))
    ListRuleExecutionsInput.add_member(:filter, Shapes::ShapeRef.new(shape: RuleExecutionFilter, location_name: "filter"))
    ListRuleExecutionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListRuleExecutionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRuleExecutionsInput.struct_class = Types::ListRuleExecutionsInput

    ListRuleExecutionsOutput.add_member(:rule_execution_details, Shapes::ShapeRef.new(shape: RuleExecutionDetailList, location_name: "ruleExecutionDetails"))
    ListRuleExecutionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRuleExecutionsOutput.struct_class = Types::ListRuleExecutionsOutput

    ListRuleTypesInput.add_member(:rule_owner_filter, Shapes::ShapeRef.new(shape: RuleOwner, location_name: "ruleOwnerFilter"))
    ListRuleTypesInput.add_member(:region_filter, Shapes::ShapeRef.new(shape: AWSRegionName, location_name: "regionFilter"))
    ListRuleTypesInput.struct_class = Types::ListRuleTypesInput

    ListRuleTypesOutput.add_member(:rule_types, Shapes::ShapeRef.new(shape: RuleTypeList, required: true, location_name: "ruleTypes"))
    ListRuleTypesOutput.struct_class = Types::ListRuleTypesOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    ListTagsForResourceInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTagsForResourceInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    ListWebhookItem.add_member(:definition, Shapes::ShapeRef.new(shape: WebhookDefinition, required: true, location_name: "definition"))
    ListWebhookItem.add_member(:url, Shapes::ShapeRef.new(shape: WebhookUrl, required: true, location_name: "url"))
    ListWebhookItem.add_member(:error_message, Shapes::ShapeRef.new(shape: WebhookErrorMessage, location_name: "errorMessage"))
    ListWebhookItem.add_member(:error_code, Shapes::ShapeRef.new(shape: WebhookErrorCode, location_name: "errorCode"))
    ListWebhookItem.add_member(:last_triggered, Shapes::ShapeRef.new(shape: WebhookLastTriggered, location_name: "lastTriggered"))
    ListWebhookItem.add_member(:arn, Shapes::ShapeRef.new(shape: WebhookArn, location_name: "arn"))
    ListWebhookItem.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListWebhookItem.struct_class = Types::ListWebhookItem

    ListWebhooksInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListWebhooksInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListWebhooksInput.struct_class = Types::ListWebhooksInput

    ListWebhooksOutput.add_member(:webhooks, Shapes::ShapeRef.new(shape: WebhookList, location_name: "webhooks"))
    ListWebhooksOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListWebhooksOutput.struct_class = Types::ListWebhooksOutput

    NotLatestPipelineExecutionException.struct_class = Types::NotLatestPipelineExecutionException

    OutputArtifact.add_member(:name, Shapes::ShapeRef.new(shape: ArtifactName, required: true, location_name: "name"))
    OutputArtifact.add_member(:files, Shapes::ShapeRef.new(shape: FilePathList, location_name: "files"))
    OutputArtifact.struct_class = Types::OutputArtifact

    OutputArtifactList.member = Shapes::ShapeRef.new(shape: OutputArtifact)

    OutputVariableList.member = Shapes::ShapeRef.new(shape: OutputVariable)

    OutputVariablesMap.key = Shapes::ShapeRef.new(shape: OutputVariablesKey)
    OutputVariablesMap.value = Shapes::ShapeRef.new(shape: OutputVariablesValue)

    OutputVariablesSizeExceededException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    OutputVariablesSizeExceededException.struct_class = Types::OutputVariablesSizeExceededException

    OverrideStageConditionInput.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "pipelineName"))
    OverrideStageConditionInput.add_member(:stage_name, Shapes::ShapeRef.new(shape: StageName, required: true, location_name: "stageName"))
    OverrideStageConditionInput.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: PipelineExecutionId, required: true, location_name: "pipelineExecutionId"))
    OverrideStageConditionInput.add_member(:condition_type, Shapes::ShapeRef.new(shape: ConditionType, required: true, location_name: "conditionType"))
    OverrideStageConditionInput.struct_class = Types::OverrideStageConditionInput

    PipelineContext.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, location_name: "pipelineName"))
    PipelineContext.add_member(:stage, Shapes::ShapeRef.new(shape: StageContext, location_name: "stage"))
    PipelineContext.add_member(:action, Shapes::ShapeRef.new(shape: ActionContext, location_name: "action"))
    PipelineContext.add_member(:pipeline_arn, Shapes::ShapeRef.new(shape: PipelineArn, location_name: "pipelineArn"))
    PipelineContext.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: "pipelineExecutionId"))
    PipelineContext.struct_class = Types::PipelineContext

    PipelineDeclaration.add_member(:name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "name"))
    PipelineDeclaration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    PipelineDeclaration.add_member(:artifact_store, Shapes::ShapeRef.new(shape: ArtifactStore, location_name: "artifactStore"))
    PipelineDeclaration.add_member(:artifact_stores, Shapes::ShapeRef.new(shape: ArtifactStoreMap, location_name: "artifactStores"))
    PipelineDeclaration.add_member(:stages, Shapes::ShapeRef.new(shape: PipelineStageDeclarationList, required: true, location_name: "stages"))
    PipelineDeclaration.add_member(:version, Shapes::ShapeRef.new(shape: PipelineVersion, location_name: "version"))
    PipelineDeclaration.add_member(:execution_mode, Shapes::ShapeRef.new(shape: ExecutionMode, location_name: "executionMode"))
    PipelineDeclaration.add_member(:pipeline_type, Shapes::ShapeRef.new(shape: PipelineType, location_name: "pipelineType"))
    PipelineDeclaration.add_member(:variables, Shapes::ShapeRef.new(shape: PipelineVariableDeclarationList, location_name: "variables"))
    PipelineDeclaration.add_member(:triggers, Shapes::ShapeRef.new(shape: PipelineTriggerDeclarationList, location_name: "triggers"))
    PipelineDeclaration.struct_class = Types::PipelineDeclaration

    PipelineExecution.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, location_name: "pipelineName"))
    PipelineExecution.add_member(:pipeline_version, Shapes::ShapeRef.new(shape: PipelineVersion, location_name: "pipelineVersion"))
    PipelineExecution.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: "pipelineExecutionId"))
    PipelineExecution.add_member(:status, Shapes::ShapeRef.new(shape: PipelineExecutionStatus, location_name: "status"))
    PipelineExecution.add_member(:status_summary, Shapes::ShapeRef.new(shape: PipelineExecutionStatusSummary, location_name: "statusSummary"))
    PipelineExecution.add_member(:artifact_revisions, Shapes::ShapeRef.new(shape: ArtifactRevisionList, location_name: "artifactRevisions"))
    PipelineExecution.add_member(:variables, Shapes::ShapeRef.new(shape: ResolvedPipelineVariableList, location_name: "variables"))
    PipelineExecution.add_member(:trigger, Shapes::ShapeRef.new(shape: ExecutionTrigger, location_name: "trigger"))
    PipelineExecution.add_member(:execution_mode, Shapes::ShapeRef.new(shape: ExecutionMode, location_name: "executionMode"))
    PipelineExecution.add_member(:execution_type, Shapes::ShapeRef.new(shape: ExecutionType, location_name: "executionType"))
    PipelineExecution.add_member(:rollback_metadata, Shapes::ShapeRef.new(shape: PipelineRollbackMetadata, location_name: "rollbackMetadata"))
    PipelineExecution.struct_class = Types::PipelineExecution

    PipelineExecutionFilter.add_member(:succeeded_in_stage, Shapes::ShapeRef.new(shape: SucceededInStageFilter, location_name: "succeededInStage"))
    PipelineExecutionFilter.struct_class = Types::PipelineExecutionFilter

    PipelineExecutionNotFoundException.struct_class = Types::PipelineExecutionNotFoundException

    PipelineExecutionNotStoppableException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    PipelineExecutionNotStoppableException.struct_class = Types::PipelineExecutionNotStoppableException

    PipelineExecutionOutdatedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    PipelineExecutionOutdatedException.struct_class = Types::PipelineExecutionOutdatedException

    PipelineExecutionSummary.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: "pipelineExecutionId"))
    PipelineExecutionSummary.add_member(:status, Shapes::ShapeRef.new(shape: PipelineExecutionStatus, location_name: "status"))
    PipelineExecutionSummary.add_member(:status_summary, Shapes::ShapeRef.new(shape: PipelineExecutionStatusSummary, location_name: "statusSummary"))
    PipelineExecutionSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    PipelineExecutionSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    PipelineExecutionSummary.add_member(:source_revisions, Shapes::ShapeRef.new(shape: SourceRevisionList, location_name: "sourceRevisions"))
    PipelineExecutionSummary.add_member(:trigger, Shapes::ShapeRef.new(shape: ExecutionTrigger, location_name: "trigger"))
    PipelineExecutionSummary.add_member(:stop_trigger, Shapes::ShapeRef.new(shape: StopExecutionTrigger, location_name: "stopTrigger"))
    PipelineExecutionSummary.add_member(:execution_mode, Shapes::ShapeRef.new(shape: ExecutionMode, location_name: "executionMode"))
    PipelineExecutionSummary.add_member(:execution_type, Shapes::ShapeRef.new(shape: ExecutionType, location_name: "executionType"))
    PipelineExecutionSummary.add_member(:rollback_metadata, Shapes::ShapeRef.new(shape: PipelineRollbackMetadata, location_name: "rollbackMetadata"))
    PipelineExecutionSummary.struct_class = Types::PipelineExecutionSummary

    PipelineExecutionSummaryList.member = Shapes::ShapeRef.new(shape: PipelineExecutionSummary)

    PipelineList.member = Shapes::ShapeRef.new(shape: PipelineSummary)

    PipelineMetadata.add_member(:pipeline_arn, Shapes::ShapeRef.new(shape: PipelineArn, location_name: "pipelineArn"))
    PipelineMetadata.add_member(:created, Shapes::ShapeRef.new(shape: Timestamp, location_name: "created"))
    PipelineMetadata.add_member(:updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updated"))
    PipelineMetadata.add_member(:polling_disabled_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "pollingDisabledAt"))
    PipelineMetadata.struct_class = Types::PipelineMetadata

    PipelineNameInUseException.struct_class = Types::PipelineNameInUseException

    PipelineNotFoundException.struct_class = Types::PipelineNotFoundException

    PipelineRollbackMetadata.add_member(:rollback_target_pipeline_execution_id, Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: "rollbackTargetPipelineExecutionId"))
    PipelineRollbackMetadata.struct_class = Types::PipelineRollbackMetadata

    PipelineStageDeclarationList.member = Shapes::ShapeRef.new(shape: StageDeclaration)

    PipelineSummary.add_member(:name, Shapes::ShapeRef.new(shape: PipelineName, location_name: "name"))
    PipelineSummary.add_member(:version, Shapes::ShapeRef.new(shape: PipelineVersion, location_name: "version"))
    PipelineSummary.add_member(:pipeline_type, Shapes::ShapeRef.new(shape: PipelineType, location_name: "pipelineType"))
    PipelineSummary.add_member(:execution_mode, Shapes::ShapeRef.new(shape: ExecutionMode, location_name: "executionMode"))
    PipelineSummary.add_member(:created, Shapes::ShapeRef.new(shape: Timestamp, location_name: "created"))
    PipelineSummary.add_member(:updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updated"))
    PipelineSummary.struct_class = Types::PipelineSummary

    PipelineTriggerDeclaration.add_member(:provider_type, Shapes::ShapeRef.new(shape: PipelineTriggerProviderType, required: true, location_name: "providerType"))
    PipelineTriggerDeclaration.add_member(:git_configuration, Shapes::ShapeRef.new(shape: GitConfiguration, required: true, location_name: "gitConfiguration"))
    PipelineTriggerDeclaration.struct_class = Types::PipelineTriggerDeclaration

    PipelineTriggerDeclarationList.member = Shapes::ShapeRef.new(shape: PipelineTriggerDeclaration)

    PipelineVariable.add_member(:name, Shapes::ShapeRef.new(shape: PipelineVariableName, required: true, location_name: "name"))
    PipelineVariable.add_member(:value, Shapes::ShapeRef.new(shape: PipelineVariableValue, required: true, location_name: "value"))
    PipelineVariable.struct_class = Types::PipelineVariable

    PipelineVariableDeclaration.add_member(:name, Shapes::ShapeRef.new(shape: PipelineVariableName, required: true, location_name: "name"))
    PipelineVariableDeclaration.add_member(:default_value, Shapes::ShapeRef.new(shape: PipelineVariableValue, location_name: "defaultValue"))
    PipelineVariableDeclaration.add_member(:description, Shapes::ShapeRef.new(shape: PipelineVariableDescription, location_name: "description"))
    PipelineVariableDeclaration.struct_class = Types::PipelineVariableDeclaration

    PipelineVariableDeclarationList.member = Shapes::ShapeRef.new(shape: PipelineVariableDeclaration)

    PipelineVariableList.member = Shapes::ShapeRef.new(shape: PipelineVariable)

    PipelineVersionNotFoundException.struct_class = Types::PipelineVersionNotFoundException

    PollForJobsInput.add_member(:action_type_id, Shapes::ShapeRef.new(shape: ActionTypeId, required: true, location_name: "actionTypeId"))
    PollForJobsInput.add_member(:max_batch_size, Shapes::ShapeRef.new(shape: MaxBatchSize, location_name: "maxBatchSize"))
    PollForJobsInput.add_member(:query_param, Shapes::ShapeRef.new(shape: QueryParamMap, location_name: "queryParam"))
    PollForJobsInput.struct_class = Types::PollForJobsInput

    PollForJobsOutput.add_member(:jobs, Shapes::ShapeRef.new(shape: JobList, location_name: "jobs"))
    PollForJobsOutput.struct_class = Types::PollForJobsOutput

    PollForThirdPartyJobsInput.add_member(:action_type_id, Shapes::ShapeRef.new(shape: ActionTypeId, required: true, location_name: "actionTypeId"))
    PollForThirdPartyJobsInput.add_member(:max_batch_size, Shapes::ShapeRef.new(shape: MaxBatchSize, location_name: "maxBatchSize"))
    PollForThirdPartyJobsInput.struct_class = Types::PollForThirdPartyJobsInput

    PollForThirdPartyJobsOutput.add_member(:jobs, Shapes::ShapeRef.new(shape: ThirdPartyJobList, location_name: "jobs"))
    PollForThirdPartyJobsOutput.struct_class = Types::PollForThirdPartyJobsOutput

    PollingAccountList.member = Shapes::ShapeRef.new(shape: AccountId)

    PollingServicePrincipalList.member = Shapes::ShapeRef.new(shape: ServicePrincipal)

    PutActionRevisionInput.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "pipelineName"))
    PutActionRevisionInput.add_member(:stage_name, Shapes::ShapeRef.new(shape: StageName, required: true, location_name: "stageName"))
    PutActionRevisionInput.add_member(:action_name, Shapes::ShapeRef.new(shape: ActionName, required: true, location_name: "actionName"))
    PutActionRevisionInput.add_member(:action_revision, Shapes::ShapeRef.new(shape: ActionRevision, required: true, location_name: "actionRevision"))
    PutActionRevisionInput.struct_class = Types::PutActionRevisionInput

    PutActionRevisionOutput.add_member(:new_revision, Shapes::ShapeRef.new(shape: Boolean, location_name: "newRevision"))
    PutActionRevisionOutput.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: "pipelineExecutionId"))
    PutActionRevisionOutput.struct_class = Types::PutActionRevisionOutput

    PutApprovalResultInput.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "pipelineName"))
    PutApprovalResultInput.add_member(:stage_name, Shapes::ShapeRef.new(shape: StageName, required: true, location_name: "stageName"))
    PutApprovalResultInput.add_member(:action_name, Shapes::ShapeRef.new(shape: ActionName, required: true, location_name: "actionName"))
    PutApprovalResultInput.add_member(:result, Shapes::ShapeRef.new(shape: ApprovalResult, required: true, location_name: "result"))
    PutApprovalResultInput.add_member(:token, Shapes::ShapeRef.new(shape: ApprovalToken, required: true, location_name: "token"))
    PutApprovalResultInput.struct_class = Types::PutApprovalResultInput

    PutApprovalResultOutput.add_member(:approved_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "approvedAt"))
    PutApprovalResultOutput.struct_class = Types::PutApprovalResultOutput

    PutJobFailureResultInput.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    PutJobFailureResultInput.add_member(:failure_details, Shapes::ShapeRef.new(shape: FailureDetails, required: true, location_name: "failureDetails"))
    PutJobFailureResultInput.struct_class = Types::PutJobFailureResultInput

    PutJobSuccessResultInput.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    PutJobSuccessResultInput.add_member(:current_revision, Shapes::ShapeRef.new(shape: CurrentRevision, location_name: "currentRevision"))
    PutJobSuccessResultInput.add_member(:continuation_token, Shapes::ShapeRef.new(shape: ContinuationToken, location_name: "continuationToken"))
    PutJobSuccessResultInput.add_member(:execution_details, Shapes::ShapeRef.new(shape: ExecutionDetails, location_name: "executionDetails"))
    PutJobSuccessResultInput.add_member(:output_variables, Shapes::ShapeRef.new(shape: OutputVariablesMap, location_name: "outputVariables"))
    PutJobSuccessResultInput.struct_class = Types::PutJobSuccessResultInput

    PutThirdPartyJobFailureResultInput.add_member(:job_id, Shapes::ShapeRef.new(shape: ThirdPartyJobId, required: true, location_name: "jobId"))
    PutThirdPartyJobFailureResultInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken"))
    PutThirdPartyJobFailureResultInput.add_member(:failure_details, Shapes::ShapeRef.new(shape: FailureDetails, required: true, location_name: "failureDetails"))
    PutThirdPartyJobFailureResultInput.struct_class = Types::PutThirdPartyJobFailureResultInput

    PutThirdPartyJobSuccessResultInput.add_member(:job_id, Shapes::ShapeRef.new(shape: ThirdPartyJobId, required: true, location_name: "jobId"))
    PutThirdPartyJobSuccessResultInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken"))
    PutThirdPartyJobSuccessResultInput.add_member(:current_revision, Shapes::ShapeRef.new(shape: CurrentRevision, location_name: "currentRevision"))
    PutThirdPartyJobSuccessResultInput.add_member(:continuation_token, Shapes::ShapeRef.new(shape: ContinuationToken, location_name: "continuationToken"))
    PutThirdPartyJobSuccessResultInput.add_member(:execution_details, Shapes::ShapeRef.new(shape: ExecutionDetails, location_name: "executionDetails"))
    PutThirdPartyJobSuccessResultInput.struct_class = Types::PutThirdPartyJobSuccessResultInput

    PutWebhookInput.add_member(:webhook, Shapes::ShapeRef.new(shape: WebhookDefinition, required: true, location_name: "webhook"))
    PutWebhookInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    PutWebhookInput.struct_class = Types::PutWebhookInput

    PutWebhookOutput.add_member(:webhook, Shapes::ShapeRef.new(shape: ListWebhookItem, location_name: "webhook"))
    PutWebhookOutput.struct_class = Types::PutWebhookOutput

    QueryParamMap.key = Shapes::ShapeRef.new(shape: ActionConfigurationKey)
    QueryParamMap.value = Shapes::ShapeRef.new(shape: ActionConfigurationQueryableValue)

    RegisterWebhookWithThirdPartyInput.add_member(:webhook_name, Shapes::ShapeRef.new(shape: WebhookName, location_name: "webhookName"))
    RegisterWebhookWithThirdPartyInput.struct_class = Types::RegisterWebhookWithThirdPartyInput

    RegisterWebhookWithThirdPartyOutput.struct_class = Types::RegisterWebhookWithThirdPartyOutput

    RequestFailedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    RequestFailedException.struct_class = Types::RequestFailedException

    ResolvedActionConfigurationMap.key = Shapes::ShapeRef.new(shape: String)
    ResolvedActionConfigurationMap.value = Shapes::ShapeRef.new(shape: String)

    ResolvedPipelineVariable.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ResolvedPipelineVariable.add_member(:resolved_value, Shapes::ShapeRef.new(shape: String, location_name: "resolvedValue"))
    ResolvedPipelineVariable.struct_class = Types::ResolvedPipelineVariable

    ResolvedPipelineVariableList.member = Shapes::ShapeRef.new(shape: ResolvedPipelineVariable)

    ResolvedRuleConfigurationMap.key = Shapes::ShapeRef.new(shape: String)
    ResolvedRuleConfigurationMap.value = Shapes::ShapeRef.new(shape: String)

    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RetryConfiguration.add_member(:retry_mode, Shapes::ShapeRef.new(shape: StageRetryMode, location_name: "retryMode"))
    RetryConfiguration.struct_class = Types::RetryConfiguration

    RetryStageExecutionInput.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "pipelineName"))
    RetryStageExecutionInput.add_member(:stage_name, Shapes::ShapeRef.new(shape: StageName, required: true, location_name: "stageName"))
    RetryStageExecutionInput.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: PipelineExecutionId, required: true, location_name: "pipelineExecutionId"))
    RetryStageExecutionInput.add_member(:retry_mode, Shapes::ShapeRef.new(shape: StageRetryMode, required: true, location_name: "retryMode"))
    RetryStageExecutionInput.struct_class = Types::RetryStageExecutionInput

    RetryStageExecutionOutput.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: "pipelineExecutionId"))
    RetryStageExecutionOutput.struct_class = Types::RetryStageExecutionOutput

    RetryStageMetadata.add_member(:auto_stage_retry_attempt, Shapes::ShapeRef.new(shape: RetryAttempt, location_name: "autoStageRetryAttempt"))
    RetryStageMetadata.add_member(:manual_stage_retry_attempt, Shapes::ShapeRef.new(shape: RetryAttempt, location_name: "manualStageRetryAttempt"))
    RetryStageMetadata.add_member(:latest_retry_trigger, Shapes::ShapeRef.new(shape: RetryTrigger, location_name: "latestRetryTrigger"))
    RetryStageMetadata.struct_class = Types::RetryStageMetadata

    RollbackStageInput.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "pipelineName"))
    RollbackStageInput.add_member(:stage_name, Shapes::ShapeRef.new(shape: StageName, required: true, location_name: "stageName"))
    RollbackStageInput.add_member(:target_pipeline_execution_id, Shapes::ShapeRef.new(shape: PipelineExecutionId, required: true, location_name: "targetPipelineExecutionId"))
    RollbackStageInput.struct_class = Types::RollbackStageInput

    RollbackStageOutput.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: PipelineExecutionId, required: true, location_name: "pipelineExecutionId"))
    RollbackStageOutput.struct_class = Types::RollbackStageOutput

    RuleConfigurationMap.key = Shapes::ShapeRef.new(shape: RuleConfigurationKey)
    RuleConfigurationMap.value = Shapes::ShapeRef.new(shape: RuleConfigurationValue)

    RuleConfigurationProperty.add_member(:name, Shapes::ShapeRef.new(shape: RuleConfigurationKey, required: true, location_name: "name"))
    RuleConfigurationProperty.add_member(:required, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "required"))
    RuleConfigurationProperty.add_member(:key, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "key"))
    RuleConfigurationProperty.add_member(:secret, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "secret"))
    RuleConfigurationProperty.add_member(:queryable, Shapes::ShapeRef.new(shape: Boolean, location_name: "queryable"))
    RuleConfigurationProperty.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    RuleConfigurationProperty.add_member(:type, Shapes::ShapeRef.new(shape: RuleConfigurationPropertyType, location_name: "type"))
    RuleConfigurationProperty.struct_class = Types::RuleConfigurationProperty

    RuleConfigurationPropertyList.member = Shapes::ShapeRef.new(shape: RuleConfigurationProperty)

    RuleDeclaration.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "name"))
    RuleDeclaration.add_member(:rule_type_id, Shapes::ShapeRef.new(shape: RuleTypeId, required: true, location_name: "ruleTypeId"))
    RuleDeclaration.add_member(:configuration, Shapes::ShapeRef.new(shape: RuleConfigurationMap, location_name: "configuration"))
    RuleDeclaration.add_member(:input_artifacts, Shapes::ShapeRef.new(shape: InputArtifactList, location_name: "inputArtifacts"))
    RuleDeclaration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    RuleDeclaration.add_member(:region, Shapes::ShapeRef.new(shape: AWSRegionName, location_name: "region"))
    RuleDeclaration.add_member(:timeout_in_minutes, Shapes::ShapeRef.new(shape: RuleTimeout, location_name: "timeoutInMinutes"))
    RuleDeclaration.struct_class = Types::RuleDeclaration

    RuleDeclarationList.member = Shapes::ShapeRef.new(shape: RuleDeclaration)

    RuleExecution.add_member(:rule_execution_id, Shapes::ShapeRef.new(shape: RuleExecutionId, location_name: "ruleExecutionId"))
    RuleExecution.add_member(:status, Shapes::ShapeRef.new(shape: RuleExecutionStatus, location_name: "status"))
    RuleExecution.add_member(:summary, Shapes::ShapeRef.new(shape: ExecutionSummary, location_name: "summary"))
    RuleExecution.add_member(:last_status_change, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastStatusChange"))
    RuleExecution.add_member(:token, Shapes::ShapeRef.new(shape: RuleExecutionToken, location_name: "token"))
    RuleExecution.add_member(:last_updated_by, Shapes::ShapeRef.new(shape: LastUpdatedBy, location_name: "lastUpdatedBy"))
    RuleExecution.add_member(:external_execution_id, Shapes::ShapeRef.new(shape: ExecutionId, location_name: "externalExecutionId"))
    RuleExecution.add_member(:external_execution_url, Shapes::ShapeRef.new(shape: Url, location_name: "externalExecutionUrl"))
    RuleExecution.add_member(:error_details, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "errorDetails"))
    RuleExecution.struct_class = Types::RuleExecution

    RuleExecutionDetail.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: "pipelineExecutionId"))
    RuleExecutionDetail.add_member(:rule_execution_id, Shapes::ShapeRef.new(shape: RuleExecutionId, location_name: "ruleExecutionId"))
    RuleExecutionDetail.add_member(:pipeline_version, Shapes::ShapeRef.new(shape: PipelineVersion, location_name: "pipelineVersion"))
    RuleExecutionDetail.add_member(:stage_name, Shapes::ShapeRef.new(shape: StageName, location_name: "stageName"))
    RuleExecutionDetail.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, location_name: "ruleName"))
    RuleExecutionDetail.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    RuleExecutionDetail.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    RuleExecutionDetail.add_member(:updated_by, Shapes::ShapeRef.new(shape: LastUpdatedBy, location_name: "updatedBy"))
    RuleExecutionDetail.add_member(:status, Shapes::ShapeRef.new(shape: RuleExecutionStatus, location_name: "status"))
    RuleExecutionDetail.add_member(:input, Shapes::ShapeRef.new(shape: RuleExecutionInput, location_name: "input"))
    RuleExecutionDetail.add_member(:output, Shapes::ShapeRef.new(shape: RuleExecutionOutput, location_name: "output"))
    RuleExecutionDetail.struct_class = Types::RuleExecutionDetail

    RuleExecutionDetailList.member = Shapes::ShapeRef.new(shape: RuleExecutionDetail)

    RuleExecutionFilter.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: "pipelineExecutionId"))
    RuleExecutionFilter.add_member(:latest_in_pipeline_execution, Shapes::ShapeRef.new(shape: LatestInPipelineExecutionFilter, location_name: "latestInPipelineExecution"))
    RuleExecutionFilter.struct_class = Types::RuleExecutionFilter

    RuleExecutionInput.add_member(:rule_type_id, Shapes::ShapeRef.new(shape: RuleTypeId, location_name: "ruleTypeId"))
    RuleExecutionInput.add_member(:configuration, Shapes::ShapeRef.new(shape: RuleConfigurationMap, location_name: "configuration"))
    RuleExecutionInput.add_member(:resolved_configuration, Shapes::ShapeRef.new(shape: ResolvedRuleConfigurationMap, location_name: "resolvedConfiguration"))
    RuleExecutionInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    RuleExecutionInput.add_member(:region, Shapes::ShapeRef.new(shape: AWSRegionName, location_name: "region"))
    RuleExecutionInput.add_member(:input_artifacts, Shapes::ShapeRef.new(shape: ArtifactDetailList, location_name: "inputArtifacts"))
    RuleExecutionInput.struct_class = Types::RuleExecutionInput

    RuleExecutionOutput.add_member(:execution_result, Shapes::ShapeRef.new(shape: RuleExecutionResult, location_name: "executionResult"))
    RuleExecutionOutput.struct_class = Types::RuleExecutionOutput

    RuleExecutionResult.add_member(:external_execution_id, Shapes::ShapeRef.new(shape: ExternalExecutionId, location_name: "externalExecutionId"))
    RuleExecutionResult.add_member(:external_execution_summary, Shapes::ShapeRef.new(shape: ExternalExecutionSummary, location_name: "externalExecutionSummary"))
    RuleExecutionResult.add_member(:external_execution_url, Shapes::ShapeRef.new(shape: Url, location_name: "externalExecutionUrl"))
    RuleExecutionResult.add_member(:error_details, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "errorDetails"))
    RuleExecutionResult.struct_class = Types::RuleExecutionResult

    RuleRevision.add_member(:revision_id, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "revisionId"))
    RuleRevision.add_member(:revision_change_id, Shapes::ShapeRef.new(shape: RevisionChangeIdentifier, required: true, location_name: "revisionChangeId"))
    RuleRevision.add_member(:created, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "created"))
    RuleRevision.struct_class = Types::RuleRevision

    RuleState.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, location_name: "ruleName"))
    RuleState.add_member(:current_revision, Shapes::ShapeRef.new(shape: RuleRevision, location_name: "currentRevision"))
    RuleState.add_member(:latest_execution, Shapes::ShapeRef.new(shape: RuleExecution, location_name: "latestExecution"))
    RuleState.add_member(:entity_url, Shapes::ShapeRef.new(shape: Url, location_name: "entityUrl"))
    RuleState.add_member(:revision_url, Shapes::ShapeRef.new(shape: Url, location_name: "revisionUrl"))
    RuleState.struct_class = Types::RuleState

    RuleStateList.member = Shapes::ShapeRef.new(shape: RuleState)

    RuleType.add_member(:id, Shapes::ShapeRef.new(shape: RuleTypeId, required: true, location_name: "id"))
    RuleType.add_member(:settings, Shapes::ShapeRef.new(shape: RuleTypeSettings, location_name: "settings"))
    RuleType.add_member(:rule_configuration_properties, Shapes::ShapeRef.new(shape: RuleConfigurationPropertyList, location_name: "ruleConfigurationProperties"))
    RuleType.add_member(:input_artifact_details, Shapes::ShapeRef.new(shape: ArtifactDetails, required: true, location_name: "inputArtifactDetails"))
    RuleType.struct_class = Types::RuleType

    RuleTypeId.add_member(:category, Shapes::ShapeRef.new(shape: RuleCategory, required: true, location_name: "category"))
    RuleTypeId.add_member(:owner, Shapes::ShapeRef.new(shape: RuleOwner, location_name: "owner"))
    RuleTypeId.add_member(:provider, Shapes::ShapeRef.new(shape: RuleProvider, required: true, location_name: "provider"))
    RuleTypeId.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    RuleTypeId.struct_class = Types::RuleTypeId

    RuleTypeList.member = Shapes::ShapeRef.new(shape: RuleType)

    RuleTypeSettings.add_member(:third_party_configuration_url, Shapes::ShapeRef.new(shape: Url, location_name: "thirdPartyConfigurationUrl"))
    RuleTypeSettings.add_member(:entity_url_template, Shapes::ShapeRef.new(shape: UrlTemplate, location_name: "entityUrlTemplate"))
    RuleTypeSettings.add_member(:execution_url_template, Shapes::ShapeRef.new(shape: UrlTemplate, location_name: "executionUrlTemplate"))
    RuleTypeSettings.add_member(:revision_url_template, Shapes::ShapeRef.new(shape: UrlTemplate, location_name: "revisionUrlTemplate"))
    RuleTypeSettings.struct_class = Types::RuleTypeSettings

    S3ArtifactLocation.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "bucketName"))
    S3ArtifactLocation.add_member(:object_key, Shapes::ShapeRef.new(shape: S3ObjectKey, required: true, location_name: "objectKey"))
    S3ArtifactLocation.struct_class = Types::S3ArtifactLocation

    S3Location.add_member(:bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "bucket"))
    S3Location.add_member(:key, Shapes::ShapeRef.new(shape: S3Key, location_name: "key"))
    S3Location.struct_class = Types::S3Location

    SourceRevision.add_member(:action_name, Shapes::ShapeRef.new(shape: ActionName, required: true, location_name: "actionName"))
    SourceRevision.add_member(:revision_id, Shapes::ShapeRef.new(shape: Revision, location_name: "revisionId"))
    SourceRevision.add_member(:revision_summary, Shapes::ShapeRef.new(shape: RevisionSummary, location_name: "revisionSummary"))
    SourceRevision.add_member(:revision_url, Shapes::ShapeRef.new(shape: Url, location_name: "revisionUrl"))
    SourceRevision.struct_class = Types::SourceRevision

    SourceRevisionList.member = Shapes::ShapeRef.new(shape: SourceRevision)

    SourceRevisionOverride.add_member(:action_name, Shapes::ShapeRef.new(shape: ActionName, required: true, location_name: "actionName"))
    SourceRevisionOverride.add_member(:revision_type, Shapes::ShapeRef.new(shape: SourceRevisionType, required: true, location_name: "revisionType"))
    SourceRevisionOverride.add_member(:revision_value, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "revisionValue"))
    SourceRevisionOverride.struct_class = Types::SourceRevisionOverride

    SourceRevisionOverrideList.member = Shapes::ShapeRef.new(shape: SourceRevisionOverride)

    StageActionDeclarationList.member = Shapes::ShapeRef.new(shape: ActionDeclaration)

    StageBlockerDeclarationList.member = Shapes::ShapeRef.new(shape: BlockerDeclaration)

    StageConditionState.add_member(:latest_execution, Shapes::ShapeRef.new(shape: StageConditionsExecution, location_name: "latestExecution"))
    StageConditionState.add_member(:condition_states, Shapes::ShapeRef.new(shape: ConditionStateList, location_name: "conditionStates"))
    StageConditionState.struct_class = Types::StageConditionState

    StageConditionsExecution.add_member(:status, Shapes::ShapeRef.new(shape: ConditionExecutionStatus, location_name: "status"))
    StageConditionsExecution.add_member(:summary, Shapes::ShapeRef.new(shape: ExecutionSummary, location_name: "summary"))
    StageConditionsExecution.struct_class = Types::StageConditionsExecution

    StageContext.add_member(:name, Shapes::ShapeRef.new(shape: StageName, location_name: "name"))
    StageContext.struct_class = Types::StageContext

    StageDeclaration.add_member(:name, Shapes::ShapeRef.new(shape: StageName, required: true, location_name: "name"))
    StageDeclaration.add_member(:blockers, Shapes::ShapeRef.new(shape: StageBlockerDeclarationList, location_name: "blockers"))
    StageDeclaration.add_member(:actions, Shapes::ShapeRef.new(shape: StageActionDeclarationList, required: true, location_name: "actions"))
    StageDeclaration.add_member(:on_failure, Shapes::ShapeRef.new(shape: FailureConditions, location_name: "onFailure"))
    StageDeclaration.add_member(:on_success, Shapes::ShapeRef.new(shape: SuccessConditions, location_name: "onSuccess"))
    StageDeclaration.add_member(:before_entry, Shapes::ShapeRef.new(shape: BeforeEntryConditions, location_name: "beforeEntry"))
    StageDeclaration.struct_class = Types::StageDeclaration

    StageExecution.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: PipelineExecutionId, required: true, location_name: "pipelineExecutionId"))
    StageExecution.add_member(:status, Shapes::ShapeRef.new(shape: StageExecutionStatus, required: true, location_name: "status"))
    StageExecution.add_member(:type, Shapes::ShapeRef.new(shape: ExecutionType, location_name: "type"))
    StageExecution.struct_class = Types::StageExecution

    StageExecutionList.member = Shapes::ShapeRef.new(shape: StageExecution)

    StageNotFoundException.struct_class = Types::StageNotFoundException

    StageNotRetryableException.struct_class = Types::StageNotRetryableException

    StageState.add_member(:stage_name, Shapes::ShapeRef.new(shape: StageName, location_name: "stageName"))
    StageState.add_member(:inbound_execution, Shapes::ShapeRef.new(shape: StageExecution, location_name: "inboundExecution"))
    StageState.add_member(:inbound_executions, Shapes::ShapeRef.new(shape: StageExecutionList, location_name: "inboundExecutions"))
    StageState.add_member(:inbound_transition_state, Shapes::ShapeRef.new(shape: TransitionState, location_name: "inboundTransitionState"))
    StageState.add_member(:action_states, Shapes::ShapeRef.new(shape: ActionStateList, location_name: "actionStates"))
    StageState.add_member(:latest_execution, Shapes::ShapeRef.new(shape: StageExecution, location_name: "latestExecution"))
    StageState.add_member(:before_entry_condition_state, Shapes::ShapeRef.new(shape: StageConditionState, location_name: "beforeEntryConditionState"))
    StageState.add_member(:on_success_condition_state, Shapes::ShapeRef.new(shape: StageConditionState, location_name: "onSuccessConditionState"))
    StageState.add_member(:on_failure_condition_state, Shapes::ShapeRef.new(shape: StageConditionState, location_name: "onFailureConditionState"))
    StageState.add_member(:retry_stage_metadata, Shapes::ShapeRef.new(shape: RetryStageMetadata, location_name: "retryStageMetadata"))
    StageState.struct_class = Types::StageState

    StageStateList.member = Shapes::ShapeRef.new(shape: StageState)

    StartPipelineExecutionInput.add_member(:name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "name"))
    StartPipelineExecutionInput.add_member(:variables, Shapes::ShapeRef.new(shape: PipelineVariableList, location_name: "variables"))
    StartPipelineExecutionInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    StartPipelineExecutionInput.add_member(:source_revisions, Shapes::ShapeRef.new(shape: SourceRevisionOverrideList, location_name: "sourceRevisions"))
    StartPipelineExecutionInput.struct_class = Types::StartPipelineExecutionInput

    StartPipelineExecutionOutput.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: "pipelineExecutionId"))
    StartPipelineExecutionOutput.struct_class = Types::StartPipelineExecutionOutput

    StopExecutionTrigger.add_member(:reason, Shapes::ShapeRef.new(shape: StopPipelineExecutionReason, location_name: "reason"))
    StopExecutionTrigger.struct_class = Types::StopExecutionTrigger

    StopPipelineExecutionInput.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "pipelineName"))
    StopPipelineExecutionInput.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: PipelineExecutionId, required: true, location_name: "pipelineExecutionId"))
    StopPipelineExecutionInput.add_member(:abandon, Shapes::ShapeRef.new(shape: Boolean, location_name: "abandon"))
    StopPipelineExecutionInput.add_member(:reason, Shapes::ShapeRef.new(shape: StopPipelineExecutionReason, location_name: "reason"))
    StopPipelineExecutionInput.struct_class = Types::StopPipelineExecutionInput

    StopPipelineExecutionOutput.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: "pipelineExecutionId"))
    StopPipelineExecutionOutput.struct_class = Types::StopPipelineExecutionOutput

    SucceededInStageFilter.add_member(:stage_name, Shapes::ShapeRef.new(shape: StageName, location_name: "stageName"))
    SucceededInStageFilter.struct_class = Types::SucceededInStageFilter

    SuccessConditions.add_member(:conditions, Shapes::ShapeRef.new(shape: ConditionList, required: true, location_name: "conditions"))
    SuccessConditions.struct_class = Types::SuccessConditions

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    ThirdPartyJob.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, location_name: "clientId"))
    ThirdPartyJob.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "jobId"))
    ThirdPartyJob.struct_class = Types::ThirdPartyJob

    ThirdPartyJobData.add_member(:action_type_id, Shapes::ShapeRef.new(shape: ActionTypeId, location_name: "actionTypeId"))
    ThirdPartyJobData.add_member(:action_configuration, Shapes::ShapeRef.new(shape: ActionConfiguration, location_name: "actionConfiguration"))
    ThirdPartyJobData.add_member(:pipeline_context, Shapes::ShapeRef.new(shape: PipelineContext, location_name: "pipelineContext"))
    ThirdPartyJobData.add_member(:input_artifacts, Shapes::ShapeRef.new(shape: ArtifactList, location_name: "inputArtifacts"))
    ThirdPartyJobData.add_member(:output_artifacts, Shapes::ShapeRef.new(shape: ArtifactList, location_name: "outputArtifacts"))
    ThirdPartyJobData.add_member(:artifact_credentials, Shapes::ShapeRef.new(shape: AWSSessionCredentials, location_name: "artifactCredentials"))
    ThirdPartyJobData.add_member(:continuation_token, Shapes::ShapeRef.new(shape: ContinuationToken, location_name: "continuationToken"))
    ThirdPartyJobData.add_member(:encryption_key, Shapes::ShapeRef.new(shape: EncryptionKey, location_name: "encryptionKey"))
    ThirdPartyJobData.struct_class = Types::ThirdPartyJobData

    ThirdPartyJobDetails.add_member(:id, Shapes::ShapeRef.new(shape: ThirdPartyJobId, location_name: "id"))
    ThirdPartyJobDetails.add_member(:data, Shapes::ShapeRef.new(shape: ThirdPartyJobData, location_name: "data"))
    ThirdPartyJobDetails.add_member(:nonce, Shapes::ShapeRef.new(shape: Nonce, location_name: "nonce"))
    ThirdPartyJobDetails.struct_class = Types::ThirdPartyJobDetails

    ThirdPartyJobList.member = Shapes::ShapeRef.new(shape: ThirdPartyJob)

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    TransitionState.add_member(:enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "enabled"))
    TransitionState.add_member(:last_changed_by, Shapes::ShapeRef.new(shape: LastChangedBy, location_name: "lastChangedBy"))
    TransitionState.add_member(:last_changed_at, Shapes::ShapeRef.new(shape: LastChangedAt, location_name: "lastChangedAt"))
    TransitionState.add_member(:disabled_reason, Shapes::ShapeRef.new(shape: DisabledReason, location_name: "disabledReason"))
    TransitionState.struct_class = Types::TransitionState

    UnableToRollbackStageException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    UnableToRollbackStageException.struct_class = Types::UnableToRollbackStageException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateActionTypeInput.add_member(:action_type, Shapes::ShapeRef.new(shape: ActionTypeDeclaration, required: true, location_name: "actionType"))
    UpdateActionTypeInput.struct_class = Types::UpdateActionTypeInput

    UpdatePipelineInput.add_member(:pipeline, Shapes::ShapeRef.new(shape: PipelineDeclaration, required: true, location_name: "pipeline"))
    UpdatePipelineInput.struct_class = Types::UpdatePipelineInput

    UpdatePipelineOutput.add_member(:pipeline, Shapes::ShapeRef.new(shape: PipelineDeclaration, location_name: "pipeline"))
    UpdatePipelineOutput.struct_class = Types::UpdatePipelineOutput

    ValidationException.struct_class = Types::ValidationException

    WebhookAuthConfiguration.add_member(:allowed_ip_range, Shapes::ShapeRef.new(shape: WebhookAuthConfigurationAllowedIPRange, location_name: "AllowedIPRange"))
    WebhookAuthConfiguration.add_member(:secret_token, Shapes::ShapeRef.new(shape: WebhookAuthConfigurationSecretToken, location_name: "SecretToken"))
    WebhookAuthConfiguration.struct_class = Types::WebhookAuthConfiguration

    WebhookDefinition.add_member(:name, Shapes::ShapeRef.new(shape: WebhookName, required: true, location_name: "name"))
    WebhookDefinition.add_member(:target_pipeline, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "targetPipeline"))
    WebhookDefinition.add_member(:target_action, Shapes::ShapeRef.new(shape: ActionName, required: true, location_name: "targetAction"))
    WebhookDefinition.add_member(:filters, Shapes::ShapeRef.new(shape: WebhookFilters, required: true, location_name: "filters"))
    WebhookDefinition.add_member(:authentication, Shapes::ShapeRef.new(shape: WebhookAuthenticationType, required: true, location_name: "authentication"))
    WebhookDefinition.add_member(:authentication_configuration, Shapes::ShapeRef.new(shape: WebhookAuthConfiguration, required: true, location_name: "authenticationConfiguration"))
    WebhookDefinition.struct_class = Types::WebhookDefinition

    WebhookFilterRule.add_member(:json_path, Shapes::ShapeRef.new(shape: JsonPath, required: true, location_name: "jsonPath"))
    WebhookFilterRule.add_member(:match_equals, Shapes::ShapeRef.new(shape: MatchEquals, location_name: "matchEquals"))
    WebhookFilterRule.struct_class = Types::WebhookFilterRule

    WebhookFilters.member = Shapes::ShapeRef.new(shape: WebhookFilterRule)

    WebhookList.member = Shapes::ShapeRef.new(shape: ListWebhookItem)

    WebhookNotFoundException.struct_class = Types::WebhookNotFoundException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-07-09"

      api.metadata = {
        "apiVersion" => "2015-07-09",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "codepipeline",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceAbbreviation" => "CodePipeline",
        "serviceFullName" => "AWS CodePipeline",
        "serviceId" => "CodePipeline",
        "signatureVersion" => "v4",
        "targetPrefix" => "CodePipeline_20150709",
        "uid" => "codepipeline-2015-07-09",
      }

      api.add_operation(:acknowledge_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcknowledgeJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AcknowledgeJobInput)
        o.output = Shapes::ShapeRef.new(shape: AcknowledgeJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNonceException)
        o.errors << Shapes::ShapeRef.new(shape: JobNotFoundException)
      end)

      api.add_operation(:acknowledge_third_party_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcknowledgeThirdPartyJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AcknowledgeThirdPartyJobInput)
        o.output = Shapes::ShapeRef.new(shape: AcknowledgeThirdPartyJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNonceException)
        o.errors << Shapes::ShapeRef.new(shape: JobNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClientTokenException)
      end)

      api.add_operation(:create_custom_action_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCustomActionType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCustomActionTypeInput)
        o.output = Shapes::ShapeRef.new(shape: CreateCustomActionTypeOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:create_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePipeline"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePipelineInput)
        o.output = Shapes::ShapeRef.new(shape: CreatePipelineOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNameInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStageDeclarationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidActionDeclarationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidBlockerDeclarationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStructureException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_custom_action_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCustomActionType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCustomActionTypeInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePipeline"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePipelineInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_webhook, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWebhook"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteWebhookInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteWebhookOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:deregister_webhook_with_third_party, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterWebhookWithThirdParty"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterWebhookWithThirdPartyInput)
        o.output = Shapes::ShapeRef.new(shape: DeregisterWebhookWithThirdPartyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: WebhookNotFoundException)
      end)

      api.add_operation(:disable_stage_transition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableStageTransition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisableStageTransitionInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: StageNotFoundException)
      end)

      api.add_operation(:enable_stage_transition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableStageTransition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EnableStageTransitionInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: StageNotFoundException)
      end)

      api.add_operation(:get_action_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetActionType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetActionTypeInput)
        o.output = Shapes::ShapeRef.new(shape: GetActionTypeOutput)
        o.errors << Shapes::ShapeRef.new(shape: ActionTypeNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_job_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetJobDetails"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetJobDetailsInput)
        o.output = Shapes::ShapeRef.new(shape: GetJobDetailsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: JobNotFoundException)
      end)

      api.add_operation(:get_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPipeline"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPipelineInput)
        o.output = Shapes::ShapeRef.new(shape: GetPipelineOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineVersionNotFoundException)
      end)

      api.add_operation(:get_pipeline_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPipelineExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPipelineExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: GetPipelineExecutionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineExecutionNotFoundException)
      end)

      api.add_operation(:get_pipeline_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPipelineState"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPipelineStateInput)
        o.output = Shapes::ShapeRef.new(shape: GetPipelineStateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
      end)

      api.add_operation(:get_third_party_job_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetThirdPartyJobDetails"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetThirdPartyJobDetailsInput)
        o.output = Shapes::ShapeRef.new(shape: GetThirdPartyJobDetailsOutput)
        o.errors << Shapes::ShapeRef.new(shape: JobNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidJobException)
      end)

      api.add_operation(:list_action_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListActionExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListActionExecutionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListActionExecutionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineExecutionNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_action_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListActionTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListActionTypesInput)
        o.output = Shapes::ShapeRef.new(shape: ListActionTypesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_pipeline_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPipelineExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPipelineExecutionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListPipelineExecutionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
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
        o.input = Shapes::ShapeRef.new(shape: ListPipelinesInput)
        o.output = Shapes::ShapeRef.new(shape: ListPipelinesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_rule_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRuleExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRuleExecutionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListRuleExecutionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineExecutionNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_rule_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRuleTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRuleTypesInput)
        o.output = Shapes::ShapeRef.new(shape: ListRuleTypesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_webhooks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWebhooks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListWebhooksInput)
        o.output = Shapes::ShapeRef.new(shape: ListWebhooksOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:override_stage_condition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "OverrideStageCondition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: OverrideStageConditionInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: StageNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConditionNotOverridableException)
        o.errors << Shapes::ShapeRef.new(shape: NotLatestPipelineExecutionException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentPipelineExecutionsLimitExceededException)
      end)

      api.add_operation(:poll_for_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PollForJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PollForJobsInput)
        o.output = Shapes::ShapeRef.new(shape: PollForJobsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ActionTypeNotFoundException)
      end)

      api.add_operation(:poll_for_third_party_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PollForThirdPartyJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PollForThirdPartyJobsInput)
        o.output = Shapes::ShapeRef.new(shape: PollForThirdPartyJobsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ActionTypeNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:put_action_revision, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutActionRevision"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutActionRevisionInput)
        o.output = Shapes::ShapeRef.new(shape: PutActionRevisionOutput)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: StageNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ActionNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentPipelineExecutionsLimitExceededException)
      end)

      api.add_operation(:put_approval_result, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutApprovalResult"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutApprovalResultInput)
        o.output = Shapes::ShapeRef.new(shape: PutApprovalResultOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidApprovalTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ApprovalAlreadyCompletedException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: StageNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ActionNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:put_job_failure_result, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutJobFailureResult"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutJobFailureResultInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: JobNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidJobStateException)
      end)

      api.add_operation(:put_job_success_result, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutJobSuccessResult"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutJobSuccessResultInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: JobNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidJobStateException)
        o.errors << Shapes::ShapeRef.new(shape: OutputVariablesSizeExceededException)
      end)

      api.add_operation(:put_third_party_job_failure_result, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutThirdPartyJobFailureResult"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutThirdPartyJobFailureResultInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: JobNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidJobStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClientTokenException)
      end)

      api.add_operation(:put_third_party_job_success_result, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutThirdPartyJobSuccessResult"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutThirdPartyJobSuccessResultInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: JobNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidJobStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClientTokenException)
      end)

      api.add_operation(:put_webhook, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutWebhook"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutWebhookInput)
        o.output = Shapes::ShapeRef.new(shape: PutWebhookOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidWebhookFilterPatternException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidWebhookAuthenticationParametersException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:register_webhook_with_third_party, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterWebhookWithThirdParty"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterWebhookWithThirdPartyInput)
        o.output = Shapes::ShapeRef.new(shape: RegisterWebhookWithThirdPartyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: WebhookNotFoundException)
      end)

      api.add_operation(:retry_stage_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RetryStageExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RetryStageExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: RetryStageExecutionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: StageNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: StageNotRetryableException)
        o.errors << Shapes::ShapeRef.new(shape: NotLatestPipelineExecutionException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentPipelineExecutionsLimitExceededException)
      end)

      api.add_operation(:rollback_stage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RollbackStage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RollbackStageInput)
        o.output = Shapes::ShapeRef.new(shape: RollbackStageOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineExecutionNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineExecutionOutdatedException)
        o.errors << Shapes::ShapeRef.new(shape: StageNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnableToRollbackStageException)
      end)

      api.add_operation(:start_pipeline_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartPipelineExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartPipelineExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: StartPipelineExecutionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentPipelineExecutionsLimitExceededException)
      end)

      api.add_operation(:stop_pipeline_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopPipelineExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopPipelineExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: StopPipelineExecutionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineExecutionNotStoppableException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicatedStopRequestException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:update_action_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateActionType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateActionTypeInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: RequestFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ActionTypeNotFoundException)
      end)

      api.add_operation(:update_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePipeline"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdatePipelineInput)
        o.output = Shapes::ShapeRef.new(shape: UpdatePipelineOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStageDeclarationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidActionDeclarationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidBlockerDeclarationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStructureException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)
    end

  end
end
