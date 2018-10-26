# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodePipeline
  # @api private
  module ClientApi

    include Seahorse::Model

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
    ActionExecutionStatus = Shapes::StringShape.new(name: 'ActionExecutionStatus')
    ActionExecutionToken = Shapes::StringShape.new(name: 'ActionExecutionToken')
    ActionName = Shapes::StringShape.new(name: 'ActionName')
    ActionNotFoundException = Shapes::StructureShape.new(name: 'ActionNotFoundException')
    ActionOwner = Shapes::StringShape.new(name: 'ActionOwner')
    ActionProvider = Shapes::StringShape.new(name: 'ActionProvider')
    ActionRevision = Shapes::StructureShape.new(name: 'ActionRevision')
    ActionRunOrder = Shapes::IntegerShape.new(name: 'ActionRunOrder')
    ActionState = Shapes::StructureShape.new(name: 'ActionState')
    ActionStateList = Shapes::ListShape.new(name: 'ActionStateList')
    ActionType = Shapes::StructureShape.new(name: 'ActionType')
    ActionTypeId = Shapes::StructureShape.new(name: 'ActionTypeId')
    ActionTypeList = Shapes::ListShape.new(name: 'ActionTypeList')
    ActionTypeNotFoundException = Shapes::StructureShape.new(name: 'ActionTypeNotFoundException')
    ActionTypeSettings = Shapes::StructureShape.new(name: 'ActionTypeSettings')
    ApprovalAlreadyCompletedException = Shapes::StructureShape.new(name: 'ApprovalAlreadyCompletedException')
    ApprovalResult = Shapes::StructureShape.new(name: 'ApprovalResult')
    ApprovalStatus = Shapes::StringShape.new(name: 'ApprovalStatus')
    ApprovalSummary = Shapes::StringShape.new(name: 'ApprovalSummary')
    ApprovalToken = Shapes::StringShape.new(name: 'ApprovalToken')
    Artifact = Shapes::StructureShape.new(name: 'Artifact')
    ArtifactDetails = Shapes::StructureShape.new(name: 'ArtifactDetails')
    ArtifactList = Shapes::ListShape.new(name: 'ArtifactList')
    ArtifactLocation = Shapes::StructureShape.new(name: 'ArtifactLocation')
    ArtifactLocationType = Shapes::StringShape.new(name: 'ArtifactLocationType')
    ArtifactName = Shapes::StringShape.new(name: 'ArtifactName')
    ArtifactRevision = Shapes::StructureShape.new(name: 'ArtifactRevision')
    ArtifactRevisionList = Shapes::ListShape.new(name: 'ArtifactRevisionList')
    ArtifactStore = Shapes::StructureShape.new(name: 'ArtifactStore')
    ArtifactStoreLocation = Shapes::StringShape.new(name: 'ArtifactStoreLocation')
    ArtifactStoreType = Shapes::StringShape.new(name: 'ArtifactStoreType')
    BlockerDeclaration = Shapes::StructureShape.new(name: 'BlockerDeclaration')
    BlockerName = Shapes::StringShape.new(name: 'BlockerName')
    BlockerType = Shapes::StringShape.new(name: 'BlockerType')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ClientId = Shapes::StringShape.new(name: 'ClientId')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    Code = Shapes::StringShape.new(name: 'Code')
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
    EnableStageTransitionInput = Shapes::StructureShape.new(name: 'EnableStageTransitionInput')
    Enabled = Shapes::BooleanShape.new(name: 'Enabled')
    EncryptionKey = Shapes::StructureShape.new(name: 'EncryptionKey')
    EncryptionKeyId = Shapes::StringShape.new(name: 'EncryptionKeyId')
    EncryptionKeyType = Shapes::StringShape.new(name: 'EncryptionKeyType')
    ErrorDetails = Shapes::StructureShape.new(name: 'ErrorDetails')
    ExecutionDetails = Shapes::StructureShape.new(name: 'ExecutionDetails')
    ExecutionId = Shapes::StringShape.new(name: 'ExecutionId')
    ExecutionSummary = Shapes::StringShape.new(name: 'ExecutionSummary')
    FailureDetails = Shapes::StructureShape.new(name: 'FailureDetails')
    FailureType = Shapes::StringShape.new(name: 'FailureType')
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
    InputArtifact = Shapes::StructureShape.new(name: 'InputArtifact')
    InputArtifactList = Shapes::ListShape.new(name: 'InputArtifactList')
    InvalidActionDeclarationException = Shapes::StructureShape.new(name: 'InvalidActionDeclarationException')
    InvalidApprovalTokenException = Shapes::StructureShape.new(name: 'InvalidApprovalTokenException')
    InvalidBlockerDeclarationException = Shapes::StructureShape.new(name: 'InvalidBlockerDeclarationException')
    InvalidClientTokenException = Shapes::StructureShape.new(name: 'InvalidClientTokenException')
    InvalidJobException = Shapes::StructureShape.new(name: 'InvalidJobException')
    InvalidJobStateException = Shapes::StructureShape.new(name: 'InvalidJobStateException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidNonceException = Shapes::StructureShape.new(name: 'InvalidNonceException')
    InvalidStageDeclarationException = Shapes::StructureShape.new(name: 'InvalidStageDeclarationException')
    InvalidStructureException = Shapes::StructureShape.new(name: 'InvalidStructureException')
    InvalidWebhookAuthenticationParametersException = Shapes::StructureShape.new(name: 'InvalidWebhookAuthenticationParametersException')
    InvalidWebhookFilterPatternException = Shapes::StructureShape.new(name: 'InvalidWebhookFilterPatternException')
    Job = Shapes::StructureShape.new(name: 'Job')
    JobData = Shapes::StructureShape.new(name: 'JobData')
    JobDetails = Shapes::StructureShape.new(name: 'JobDetails')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobList = Shapes::ListShape.new(name: 'JobList')
    JobNotFoundException = Shapes::StructureShape.new(name: 'JobNotFoundException')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    JsonPath = Shapes::StringShape.new(name: 'JsonPath')
    LastChangedAt = Shapes::TimestampShape.new(name: 'LastChangedAt')
    LastChangedBy = Shapes::StringShape.new(name: 'LastChangedBy')
    LastUpdatedBy = Shapes::StringShape.new(name: 'LastUpdatedBy')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListActionTypesInput = Shapes::StructureShape.new(name: 'ListActionTypesInput')
    ListActionTypesOutput = Shapes::StructureShape.new(name: 'ListActionTypesOutput')
    ListPipelineExecutionsInput = Shapes::StructureShape.new(name: 'ListPipelineExecutionsInput')
    ListPipelineExecutionsOutput = Shapes::StructureShape.new(name: 'ListPipelineExecutionsOutput')
    ListPipelinesInput = Shapes::StructureShape.new(name: 'ListPipelinesInput')
    ListPipelinesOutput = Shapes::StructureShape.new(name: 'ListPipelinesOutput')
    ListWebhookItem = Shapes::StructureShape.new(name: 'ListWebhookItem')
    ListWebhooksInput = Shapes::StructureShape.new(name: 'ListWebhooksInput')
    ListWebhooksOutput = Shapes::StructureShape.new(name: 'ListWebhooksOutput')
    MatchEquals = Shapes::StringShape.new(name: 'MatchEquals')
    MaxBatchSize = Shapes::IntegerShape.new(name: 'MaxBatchSize')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaximumArtifactCount = Shapes::IntegerShape.new(name: 'MaximumArtifactCount')
    Message = Shapes::StringShape.new(name: 'Message')
    MinimumArtifactCount = Shapes::IntegerShape.new(name: 'MinimumArtifactCount')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Nonce = Shapes::StringShape.new(name: 'Nonce')
    NotLatestPipelineExecutionException = Shapes::StructureShape.new(name: 'NotLatestPipelineExecutionException')
    OutputArtifact = Shapes::StructureShape.new(name: 'OutputArtifact')
    OutputArtifactList = Shapes::ListShape.new(name: 'OutputArtifactList')
    Percentage = Shapes::IntegerShape.new(name: 'Percentage')
    PipelineArn = Shapes::StringShape.new(name: 'PipelineArn')
    PipelineContext = Shapes::StructureShape.new(name: 'PipelineContext')
    PipelineDeclaration = Shapes::StructureShape.new(name: 'PipelineDeclaration')
    PipelineExecution = Shapes::StructureShape.new(name: 'PipelineExecution')
    PipelineExecutionId = Shapes::StringShape.new(name: 'PipelineExecutionId')
    PipelineExecutionNotFoundException = Shapes::StructureShape.new(name: 'PipelineExecutionNotFoundException')
    PipelineExecutionStatus = Shapes::StringShape.new(name: 'PipelineExecutionStatus')
    PipelineExecutionSummary = Shapes::StructureShape.new(name: 'PipelineExecutionSummary')
    PipelineExecutionSummaryList = Shapes::ListShape.new(name: 'PipelineExecutionSummaryList')
    PipelineList = Shapes::ListShape.new(name: 'PipelineList')
    PipelineMetadata = Shapes::StructureShape.new(name: 'PipelineMetadata')
    PipelineName = Shapes::StringShape.new(name: 'PipelineName')
    PipelineNameInUseException = Shapes::StructureShape.new(name: 'PipelineNameInUseException')
    PipelineNotFoundException = Shapes::StructureShape.new(name: 'PipelineNotFoundException')
    PipelineStageDeclarationList = Shapes::ListShape.new(name: 'PipelineStageDeclarationList')
    PipelineSummary = Shapes::StructureShape.new(name: 'PipelineSummary')
    PipelineVersion = Shapes::IntegerShape.new(name: 'PipelineVersion')
    PipelineVersionNotFoundException = Shapes::StructureShape.new(name: 'PipelineVersionNotFoundException')
    PollForJobsInput = Shapes::StructureShape.new(name: 'PollForJobsInput')
    PollForJobsOutput = Shapes::StructureShape.new(name: 'PollForJobsOutput')
    PollForThirdPartyJobsInput = Shapes::StructureShape.new(name: 'PollForThirdPartyJobsInput')
    PollForThirdPartyJobsOutput = Shapes::StructureShape.new(name: 'PollForThirdPartyJobsOutput')
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
    RetryStageExecutionInput = Shapes::StructureShape.new(name: 'RetryStageExecutionInput')
    RetryStageExecutionOutput = Shapes::StructureShape.new(name: 'RetryStageExecutionOutput')
    Revision = Shapes::StringShape.new(name: 'Revision')
    RevisionChangeIdentifier = Shapes::StringShape.new(name: 'RevisionChangeIdentifier')
    RevisionSummary = Shapes::StringShape.new(name: 'RevisionSummary')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3ArtifactLocation = Shapes::StructureShape.new(name: 'S3ArtifactLocation')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3ObjectKey = Shapes::StringShape.new(name: 'S3ObjectKey')
    SecretAccessKey = Shapes::StringShape.new(name: 'SecretAccessKey')
    SessionToken = Shapes::StringShape.new(name: 'SessionToken')
    SourceRevision = Shapes::StructureShape.new(name: 'SourceRevision')
    SourceRevisionList = Shapes::ListShape.new(name: 'SourceRevisionList')
    StageActionDeclarationList = Shapes::ListShape.new(name: 'StageActionDeclarationList')
    StageBlockerDeclarationList = Shapes::ListShape.new(name: 'StageBlockerDeclarationList')
    StageContext = Shapes::StructureShape.new(name: 'StageContext')
    StageDeclaration = Shapes::StructureShape.new(name: 'StageDeclaration')
    StageExecution = Shapes::StructureShape.new(name: 'StageExecution')
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
    ThirdPartyJob = Shapes::StructureShape.new(name: 'ThirdPartyJob')
    ThirdPartyJobData = Shapes::StructureShape.new(name: 'ThirdPartyJobData')
    ThirdPartyJobDetails = Shapes::StructureShape.new(name: 'ThirdPartyJobDetails')
    ThirdPartyJobId = Shapes::StringShape.new(name: 'ThirdPartyJobId')
    ThirdPartyJobList = Shapes::ListShape.new(name: 'ThirdPartyJobList')
    Time = Shapes::TimestampShape.new(name: 'Time')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TransitionState = Shapes::StructureShape.new(name: 'TransitionState')
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
    ActionContext.struct_class = Types::ActionContext

    ActionDeclaration.add_member(:name, Shapes::ShapeRef.new(shape: ActionName, required: true, location_name: "name"))
    ActionDeclaration.add_member(:action_type_id, Shapes::ShapeRef.new(shape: ActionTypeId, required: true, location_name: "actionTypeId"))
    ActionDeclaration.add_member(:run_order, Shapes::ShapeRef.new(shape: ActionRunOrder, location_name: "runOrder"))
    ActionDeclaration.add_member(:configuration, Shapes::ShapeRef.new(shape: ActionConfigurationMap, location_name: "configuration"))
    ActionDeclaration.add_member(:output_artifacts, Shapes::ShapeRef.new(shape: OutputArtifactList, location_name: "outputArtifacts"))
    ActionDeclaration.add_member(:input_artifacts, Shapes::ShapeRef.new(shape: InputArtifactList, location_name: "inputArtifacts"))
    ActionDeclaration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    ActionDeclaration.struct_class = Types::ActionDeclaration

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

    ActionTypeId.add_member(:category, Shapes::ShapeRef.new(shape: ActionCategory, required: true, location_name: "category"))
    ActionTypeId.add_member(:owner, Shapes::ShapeRef.new(shape: ActionOwner, required: true, location_name: "owner"))
    ActionTypeId.add_member(:provider, Shapes::ShapeRef.new(shape: ActionProvider, required: true, location_name: "provider"))
    ActionTypeId.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    ActionTypeId.struct_class = Types::ActionTypeId

    ActionTypeList.member = Shapes::ShapeRef.new(shape: ActionType)

    ActionTypeSettings.add_member(:third_party_configuration_url, Shapes::ShapeRef.new(shape: Url, location_name: "thirdPartyConfigurationUrl"))
    ActionTypeSettings.add_member(:entity_url_template, Shapes::ShapeRef.new(shape: UrlTemplate, location_name: "entityUrlTemplate"))
    ActionTypeSettings.add_member(:execution_url_template, Shapes::ShapeRef.new(shape: UrlTemplate, location_name: "executionUrlTemplate"))
    ActionTypeSettings.add_member(:revision_url_template, Shapes::ShapeRef.new(shape: UrlTemplate, location_name: "revisionUrlTemplate"))
    ActionTypeSettings.struct_class = Types::ActionTypeSettings

    ApprovalResult.add_member(:summary, Shapes::ShapeRef.new(shape: ApprovalSummary, required: true, location_name: "summary"))
    ApprovalResult.add_member(:status, Shapes::ShapeRef.new(shape: ApprovalStatus, required: true, location_name: "status"))
    ApprovalResult.struct_class = Types::ApprovalResult

    Artifact.add_member(:name, Shapes::ShapeRef.new(shape: ArtifactName, location_name: "name"))
    Artifact.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, location_name: "revision"))
    Artifact.add_member(:location, Shapes::ShapeRef.new(shape: ArtifactLocation, location_name: "location"))
    Artifact.struct_class = Types::Artifact

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

    BlockerDeclaration.add_member(:name, Shapes::ShapeRef.new(shape: BlockerName, required: true, location_name: "name"))
    BlockerDeclaration.add_member(:type, Shapes::ShapeRef.new(shape: BlockerType, required: true, location_name: "type"))
    BlockerDeclaration.struct_class = Types::BlockerDeclaration

    CreateCustomActionTypeInput.add_member(:category, Shapes::ShapeRef.new(shape: ActionCategory, required: true, location_name: "category"))
    CreateCustomActionTypeInput.add_member(:provider, Shapes::ShapeRef.new(shape: ActionProvider, required: true, location_name: "provider"))
    CreateCustomActionTypeInput.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    CreateCustomActionTypeInput.add_member(:settings, Shapes::ShapeRef.new(shape: ActionTypeSettings, location_name: "settings"))
    CreateCustomActionTypeInput.add_member(:configuration_properties, Shapes::ShapeRef.new(shape: ActionConfigurationPropertyList, location_name: "configurationProperties"))
    CreateCustomActionTypeInput.add_member(:input_artifact_details, Shapes::ShapeRef.new(shape: ArtifactDetails, required: true, location_name: "inputArtifactDetails"))
    CreateCustomActionTypeInput.add_member(:output_artifact_details, Shapes::ShapeRef.new(shape: ArtifactDetails, required: true, location_name: "outputArtifactDetails"))
    CreateCustomActionTypeInput.struct_class = Types::CreateCustomActionTypeInput

    CreateCustomActionTypeOutput.add_member(:action_type, Shapes::ShapeRef.new(shape: ActionType, required: true, location_name: "actionType"))
    CreateCustomActionTypeOutput.struct_class = Types::CreateCustomActionTypeOutput

    CreatePipelineInput.add_member(:pipeline, Shapes::ShapeRef.new(shape: PipelineDeclaration, required: true, location_name: "pipeline"))
    CreatePipelineInput.struct_class = Types::CreatePipelineInput

    CreatePipelineOutput.add_member(:pipeline, Shapes::ShapeRef.new(shape: PipelineDeclaration, location_name: "pipeline"))
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

    FailureDetails.add_member(:type, Shapes::ShapeRef.new(shape: FailureType, required: true, location_name: "type"))
    FailureDetails.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "message"))
    FailureDetails.add_member(:external_execution_id, Shapes::ShapeRef.new(shape: ExecutionId, location_name: "externalExecutionId"))
    FailureDetails.struct_class = Types::FailureDetails

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

    InputArtifact.add_member(:name, Shapes::ShapeRef.new(shape: ArtifactName, required: true, location_name: "name"))
    InputArtifact.struct_class = Types::InputArtifact

    InputArtifactList.member = Shapes::ShapeRef.new(shape: InputArtifact)

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

    ListActionTypesInput.add_member(:action_owner_filter, Shapes::ShapeRef.new(shape: ActionOwner, location_name: "actionOwnerFilter"))
    ListActionTypesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListActionTypesInput.struct_class = Types::ListActionTypesInput

    ListActionTypesOutput.add_member(:action_types, Shapes::ShapeRef.new(shape: ActionTypeList, required: true, location_name: "actionTypes"))
    ListActionTypesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListActionTypesOutput.struct_class = Types::ListActionTypesOutput

    ListPipelineExecutionsInput.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "pipelineName"))
    ListPipelineExecutionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListPipelineExecutionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPipelineExecutionsInput.struct_class = Types::ListPipelineExecutionsInput

    ListPipelineExecutionsOutput.add_member(:pipeline_execution_summaries, Shapes::ShapeRef.new(shape: PipelineExecutionSummaryList, location_name: "pipelineExecutionSummaries"))
    ListPipelineExecutionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPipelineExecutionsOutput.struct_class = Types::ListPipelineExecutionsOutput

    ListPipelinesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPipelinesInput.struct_class = Types::ListPipelinesInput

    ListPipelinesOutput.add_member(:pipelines, Shapes::ShapeRef.new(shape: PipelineList, location_name: "pipelines"))
    ListPipelinesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPipelinesOutput.struct_class = Types::ListPipelinesOutput

    ListWebhookItem.add_member(:definition, Shapes::ShapeRef.new(shape: WebhookDefinition, required: true, location_name: "definition"))
    ListWebhookItem.add_member(:url, Shapes::ShapeRef.new(shape: WebhookUrl, required: true, location_name: "url"))
    ListWebhookItem.add_member(:error_message, Shapes::ShapeRef.new(shape: WebhookErrorMessage, location_name: "errorMessage"))
    ListWebhookItem.add_member(:error_code, Shapes::ShapeRef.new(shape: WebhookErrorCode, location_name: "errorCode"))
    ListWebhookItem.add_member(:last_triggered, Shapes::ShapeRef.new(shape: WebhookLastTriggered, location_name: "lastTriggered"))
    ListWebhookItem.add_member(:arn, Shapes::ShapeRef.new(shape: WebhookArn, location_name: "arn"))
    ListWebhookItem.struct_class = Types::ListWebhookItem

    ListWebhooksInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListWebhooksInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListWebhooksInput.struct_class = Types::ListWebhooksInput

    ListWebhooksOutput.add_member(:webhooks, Shapes::ShapeRef.new(shape: WebhookList, location_name: "webhooks"))
    ListWebhooksOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListWebhooksOutput.struct_class = Types::ListWebhooksOutput

    OutputArtifact.add_member(:name, Shapes::ShapeRef.new(shape: ArtifactName, required: true, location_name: "name"))
    OutputArtifact.struct_class = Types::OutputArtifact

    OutputArtifactList.member = Shapes::ShapeRef.new(shape: OutputArtifact)

    PipelineContext.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, location_name: "pipelineName"))
    PipelineContext.add_member(:stage, Shapes::ShapeRef.new(shape: StageContext, location_name: "stage"))
    PipelineContext.add_member(:action, Shapes::ShapeRef.new(shape: ActionContext, location_name: "action"))
    PipelineContext.struct_class = Types::PipelineContext

    PipelineDeclaration.add_member(:name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "name"))
    PipelineDeclaration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    PipelineDeclaration.add_member(:artifact_store, Shapes::ShapeRef.new(shape: ArtifactStore, required: true, location_name: "artifactStore"))
    PipelineDeclaration.add_member(:stages, Shapes::ShapeRef.new(shape: PipelineStageDeclarationList, required: true, location_name: "stages"))
    PipelineDeclaration.add_member(:version, Shapes::ShapeRef.new(shape: PipelineVersion, location_name: "version"))
    PipelineDeclaration.struct_class = Types::PipelineDeclaration

    PipelineExecution.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, location_name: "pipelineName"))
    PipelineExecution.add_member(:pipeline_version, Shapes::ShapeRef.new(shape: PipelineVersion, location_name: "pipelineVersion"))
    PipelineExecution.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: "pipelineExecutionId"))
    PipelineExecution.add_member(:status, Shapes::ShapeRef.new(shape: PipelineExecutionStatus, location_name: "status"))
    PipelineExecution.add_member(:artifact_revisions, Shapes::ShapeRef.new(shape: ArtifactRevisionList, location_name: "artifactRevisions"))
    PipelineExecution.struct_class = Types::PipelineExecution

    PipelineExecutionSummary.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: "pipelineExecutionId"))
    PipelineExecutionSummary.add_member(:status, Shapes::ShapeRef.new(shape: PipelineExecutionStatus, location_name: "status"))
    PipelineExecutionSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    PipelineExecutionSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    PipelineExecutionSummary.add_member(:source_revisions, Shapes::ShapeRef.new(shape: SourceRevisionList, location_name: "sourceRevisions"))
    PipelineExecutionSummary.struct_class = Types::PipelineExecutionSummary

    PipelineExecutionSummaryList.member = Shapes::ShapeRef.new(shape: PipelineExecutionSummary)

    PipelineList.member = Shapes::ShapeRef.new(shape: PipelineSummary)

    PipelineMetadata.add_member(:pipeline_arn, Shapes::ShapeRef.new(shape: PipelineArn, location_name: "pipelineArn"))
    PipelineMetadata.add_member(:created, Shapes::ShapeRef.new(shape: Timestamp, location_name: "created"))
    PipelineMetadata.add_member(:updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updated"))
    PipelineMetadata.struct_class = Types::PipelineMetadata

    PipelineStageDeclarationList.member = Shapes::ShapeRef.new(shape: StageDeclaration)

    PipelineSummary.add_member(:name, Shapes::ShapeRef.new(shape: PipelineName, location_name: "name"))
    PipelineSummary.add_member(:version, Shapes::ShapeRef.new(shape: PipelineVersion, location_name: "version"))
    PipelineSummary.add_member(:created, Shapes::ShapeRef.new(shape: Timestamp, location_name: "created"))
    PipelineSummary.add_member(:updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updated"))
    PipelineSummary.struct_class = Types::PipelineSummary

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
    PutWebhookInput.struct_class = Types::PutWebhookInput

    PutWebhookOutput.add_member(:webhook, Shapes::ShapeRef.new(shape: ListWebhookItem, location_name: "webhook"))
    PutWebhookOutput.struct_class = Types::PutWebhookOutput

    QueryParamMap.key = Shapes::ShapeRef.new(shape: ActionConfigurationKey)
    QueryParamMap.value = Shapes::ShapeRef.new(shape: ActionConfigurationQueryableValue)

    RegisterWebhookWithThirdPartyInput.add_member(:webhook_name, Shapes::ShapeRef.new(shape: WebhookName, location_name: "webhookName"))
    RegisterWebhookWithThirdPartyInput.struct_class = Types::RegisterWebhookWithThirdPartyInput

    RegisterWebhookWithThirdPartyOutput.struct_class = Types::RegisterWebhookWithThirdPartyOutput

    RetryStageExecutionInput.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "pipelineName"))
    RetryStageExecutionInput.add_member(:stage_name, Shapes::ShapeRef.new(shape: StageName, required: true, location_name: "stageName"))
    RetryStageExecutionInput.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: PipelineExecutionId, required: true, location_name: "pipelineExecutionId"))
    RetryStageExecutionInput.add_member(:retry_mode, Shapes::ShapeRef.new(shape: StageRetryMode, required: true, location_name: "retryMode"))
    RetryStageExecutionInput.struct_class = Types::RetryStageExecutionInput

    RetryStageExecutionOutput.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: "pipelineExecutionId"))
    RetryStageExecutionOutput.struct_class = Types::RetryStageExecutionOutput

    S3ArtifactLocation.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "bucketName"))
    S3ArtifactLocation.add_member(:object_key, Shapes::ShapeRef.new(shape: S3ObjectKey, required: true, location_name: "objectKey"))
    S3ArtifactLocation.struct_class = Types::S3ArtifactLocation

    SourceRevision.add_member(:action_name, Shapes::ShapeRef.new(shape: ActionName, required: true, location_name: "actionName"))
    SourceRevision.add_member(:revision_id, Shapes::ShapeRef.new(shape: Revision, location_name: "revisionId"))
    SourceRevision.add_member(:revision_summary, Shapes::ShapeRef.new(shape: RevisionSummary, location_name: "revisionSummary"))
    SourceRevision.add_member(:revision_url, Shapes::ShapeRef.new(shape: Url, location_name: "revisionUrl"))
    SourceRevision.struct_class = Types::SourceRevision

    SourceRevisionList.member = Shapes::ShapeRef.new(shape: SourceRevision)

    StageActionDeclarationList.member = Shapes::ShapeRef.new(shape: ActionDeclaration)

    StageBlockerDeclarationList.member = Shapes::ShapeRef.new(shape: BlockerDeclaration)

    StageContext.add_member(:name, Shapes::ShapeRef.new(shape: StageName, location_name: "name"))
    StageContext.struct_class = Types::StageContext

    StageDeclaration.add_member(:name, Shapes::ShapeRef.new(shape: StageName, required: true, location_name: "name"))
    StageDeclaration.add_member(:blockers, Shapes::ShapeRef.new(shape: StageBlockerDeclarationList, location_name: "blockers"))
    StageDeclaration.add_member(:actions, Shapes::ShapeRef.new(shape: StageActionDeclarationList, required: true, location_name: "actions"))
    StageDeclaration.struct_class = Types::StageDeclaration

    StageExecution.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: PipelineExecutionId, required: true, location_name: "pipelineExecutionId"))
    StageExecution.add_member(:status, Shapes::ShapeRef.new(shape: StageExecutionStatus, required: true, location_name: "status"))
    StageExecution.struct_class = Types::StageExecution

    StageState.add_member(:stage_name, Shapes::ShapeRef.new(shape: StageName, location_name: "stageName"))
    StageState.add_member(:inbound_transition_state, Shapes::ShapeRef.new(shape: TransitionState, location_name: "inboundTransitionState"))
    StageState.add_member(:action_states, Shapes::ShapeRef.new(shape: ActionStateList, location_name: "actionStates"))
    StageState.add_member(:latest_execution, Shapes::ShapeRef.new(shape: StageExecution, location_name: "latestExecution"))
    StageState.struct_class = Types::StageState

    StageStateList.member = Shapes::ShapeRef.new(shape: StageState)

    StartPipelineExecutionInput.add_member(:name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "name"))
    StartPipelineExecutionInput.struct_class = Types::StartPipelineExecutionInput

    StartPipelineExecutionOutput.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: "pipelineExecutionId"))
    StartPipelineExecutionOutput.struct_class = Types::StartPipelineExecutionOutput

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

    TransitionState.add_member(:enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "enabled"))
    TransitionState.add_member(:last_changed_by, Shapes::ShapeRef.new(shape: LastChangedBy, location_name: "lastChangedBy"))
    TransitionState.add_member(:last_changed_at, Shapes::ShapeRef.new(shape: LastChangedAt, location_name: "lastChangedAt"))
    TransitionState.add_member(:disabled_reason, Shapes::ShapeRef.new(shape: DisabledReason, location_name: "disabledReason"))
    TransitionState.struct_class = Types::TransitionState

    UpdatePipelineInput.add_member(:pipeline, Shapes::ShapeRef.new(shape: PipelineDeclaration, required: true, location_name: "pipeline"))
    UpdatePipelineInput.struct_class = Types::UpdatePipelineInput

    UpdatePipelineOutput.add_member(:pipeline, Shapes::ShapeRef.new(shape: PipelineDeclaration, location_name: "pipeline"))
    UpdatePipelineOutput.struct_class = Types::UpdatePipelineOutput

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


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-07-09"

      api.metadata = {
        "apiVersion" => "2015-07-09",
        "endpointPrefix" => "codepipeline",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "CodePipeline",
        "serviceFullName" => "AWS CodePipeline",
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
      end)

      api.add_operation(:delete_custom_action_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCustomActionType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCustomActionTypeInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePipeline"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePipelineInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_webhook, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWebhook"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteWebhookInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteWebhookOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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

      api.add_operation(:list_action_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListActionTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListActionTypesInput)
        o.output = Shapes::ShapeRef.new(shape: ListActionTypesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
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
      end)

      api.add_operation(:list_pipelines, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPipelines"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPipelinesInput)
        o.output = Shapes::ShapeRef.new(shape: ListPipelinesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
      end)

      api.add_operation(:list_webhooks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWebhooks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListWebhooksInput)
        o.output = Shapes::ShapeRef.new(shape: ListWebhooksOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
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
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: StageNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: StageNotRetryableException)
        o.errors << Shapes::ShapeRef.new(shape: NotLatestPipelineExecutionException)
      end)

      api.add_operation(:start_pipeline_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartPipelineExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartPipelineExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: StartPipelineExecutionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
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
