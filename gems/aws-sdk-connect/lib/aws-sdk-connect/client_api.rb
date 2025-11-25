# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Connect
  # @api private
  module ClientApi

    include Seahorse::Model

    ARN = Shapes::StringShape.new(name: 'ARN')
    AWSAccountId = Shapes::StringShape.new(name: 'AWSAccountId')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessTokenDuration = Shapes::IntegerShape.new(name: 'AccessTokenDuration')
    ActionSummaries = Shapes::ListShape.new(name: 'ActionSummaries')
    ActionSummary = Shapes::StructureShape.new(name: 'ActionSummary')
    ActionType = Shapes::StringShape.new(name: 'ActionType')
    ActivateEvaluationFormRequest = Shapes::StructureShape.new(name: 'ActivateEvaluationFormRequest')
    ActivateEvaluationFormResponse = Shapes::StructureShape.new(name: 'ActivateEvaluationFormResponse')
    AdditionalEmailRecipients = Shapes::StructureShape.new(name: 'AdditionalEmailRecipients')
    AfterContactWorkTimeLimit = Shapes::IntegerShape.new(name: 'AfterContactWorkTimeLimit')
    AgentAvailabilityTimer = Shapes::StringShape.new(name: 'AgentAvailabilityTimer')
    AgentConfig = Shapes::StructureShape.new(name: 'AgentConfig')
    AgentContactReference = Shapes::StructureShape.new(name: 'AgentContactReference')
    AgentContactReferenceList = Shapes::ListShape.new(name: 'AgentContactReferenceList')
    AgentFirst = Shapes::StructureShape.new(name: 'AgentFirst')
    AgentFirstName = Shapes::StringShape.new(name: 'AgentFirstName')
    AgentHierarchyGroup = Shapes::StructureShape.new(name: 'AgentHierarchyGroup')
    AgentHierarchyGroups = Shapes::StructureShape.new(name: 'AgentHierarchyGroups')
    AgentId = Shapes::StringShape.new(name: 'AgentId')
    AgentIds = Shapes::ListShape.new(name: 'AgentIds')
    AgentInfo = Shapes::StructureShape.new(name: 'AgentInfo')
    AgentLastName = Shapes::StringShape.new(name: 'AgentLastName')
    AgentPauseDurationInSeconds = Shapes::IntegerShape.new(name: 'AgentPauseDurationInSeconds')
    AgentQualityMetrics = Shapes::StructureShape.new(name: 'AgentQualityMetrics')
    AgentResourceId = Shapes::StringShape.new(name: 'AgentResourceId')
    AgentResourceIdList = Shapes::ListShape.new(name: 'AgentResourceIdList')
    AgentStatus = Shapes::StructureShape.new(name: 'AgentStatus')
    AgentStatusDescription = Shapes::StringShape.new(name: 'AgentStatusDescription')
    AgentStatusId = Shapes::StringShape.new(name: 'AgentStatusId')
    AgentStatusIdentifier = Shapes::StructureShape.new(name: 'AgentStatusIdentifier')
    AgentStatusList = Shapes::ListShape.new(name: 'AgentStatusList')
    AgentStatusName = Shapes::StringShape.new(name: 'AgentStatusName')
    AgentStatusOrderNumber = Shapes::IntegerShape.new(name: 'AgentStatusOrderNumber')
    AgentStatusReference = Shapes::StructureShape.new(name: 'AgentStatusReference')
    AgentStatusSearchConditionList = Shapes::ListShape.new(name: 'AgentStatusSearchConditionList')
    AgentStatusSearchCriteria = Shapes::StructureShape.new(name: 'AgentStatusSearchCriteria')
    AgentStatusSearchFilter = Shapes::StructureShape.new(name: 'AgentStatusSearchFilter')
    AgentStatusState = Shapes::StringShape.new(name: 'AgentStatusState')
    AgentStatusSummary = Shapes::StructureShape.new(name: 'AgentStatusSummary')
    AgentStatusSummaryList = Shapes::ListShape.new(name: 'AgentStatusSummaryList')
    AgentStatusType = Shapes::StringShape.new(name: 'AgentStatusType')
    AgentStatusTypes = Shapes::ListShape.new(name: 'AgentStatusTypes')
    AgentStatuses = Shapes::ListShape.new(name: 'AgentStatuses')
    AgentUsername = Shapes::StringShape.new(name: 'AgentUsername')
    AgentsCriteria = Shapes::StructureShape.new(name: 'AgentsCriteria')
    AgentsMinOneMaxHundred = Shapes::ListShape.new(name: 'AgentsMinOneMaxHundred')
    AliasArn = Shapes::StringShape.new(name: 'AliasArn')
    AliasConfiguration = Shapes::StructureShape.new(name: 'AliasConfiguration')
    AliasConfigurationList = Shapes::ListShape.new(name: 'AliasConfigurationList')
    AllowedAccessControlTags = Shapes::MapShape.new(name: 'AllowedAccessControlTags')
    AllowedCapabilities = Shapes::StructureShape.new(name: 'AllowedCapabilities')
    AllowedMonitorCapabilities = Shapes::ListShape.new(name: 'AllowedMonitorCapabilities')
    AllowedUserAction = Shapes::StringShape.new(name: 'AllowedUserAction')
    AllowedUserActions = Shapes::ListShape.new(name: 'AllowedUserActions')
    AnalyticsDataAssociationResult = Shapes::StructureShape.new(name: 'AnalyticsDataAssociationResult')
    AnalyticsDataAssociationResults = Shapes::ListShape.new(name: 'AnalyticsDataAssociationResults')
    AnalyticsDataSetsResult = Shapes::StructureShape.new(name: 'AnalyticsDataSetsResult')
    AnalyticsDataSetsResults = Shapes::ListShape.new(name: 'AnalyticsDataSetsResults')
    AnswerMachineDetectionConfig = Shapes::StructureShape.new(name: 'AnswerMachineDetectionConfig')
    AnsweringMachineDetectionStatus = Shapes::StringShape.new(name: 'AnsweringMachineDetectionStatus')
    Application = Shapes::StructureShape.new(name: 'Application')
    ApplicationPermissions = Shapes::ListShape.new(name: 'ApplicationPermissions')
    Applications = Shapes::ListShape.new(name: 'Applications')
    ApproximateTotalCount = Shapes::IntegerShape.new(name: 'ApproximateTotalCount')
    ArtifactId = Shapes::StringShape.new(name: 'ArtifactId')
    ArtifactStatus = Shapes::StringShape.new(name: 'ArtifactStatus')
    AssignContactCategoryActionDefinition = Shapes::StructureShape.new(name: 'AssignContactCategoryActionDefinition')
    AssignSlaActionDefinition = Shapes::StructureShape.new(name: 'AssignSlaActionDefinition')
    AssociateAnalyticsDataSetRequest = Shapes::StructureShape.new(name: 'AssociateAnalyticsDataSetRequest')
    AssociateAnalyticsDataSetResponse = Shapes::StructureShape.new(name: 'AssociateAnalyticsDataSetResponse')
    AssociateApprovedOriginRequest = Shapes::StructureShape.new(name: 'AssociateApprovedOriginRequest')
    AssociateBotRequest = Shapes::StructureShape.new(name: 'AssociateBotRequest')
    AssociateContactWithUserRequest = Shapes::StructureShape.new(name: 'AssociateContactWithUserRequest')
    AssociateContactWithUserResponse = Shapes::StructureShape.new(name: 'AssociateContactWithUserResponse')
    AssociateDefaultVocabularyRequest = Shapes::StructureShape.new(name: 'AssociateDefaultVocabularyRequest')
    AssociateDefaultVocabularyResponse = Shapes::StructureShape.new(name: 'AssociateDefaultVocabularyResponse')
    AssociateEmailAddressAliasRequest = Shapes::StructureShape.new(name: 'AssociateEmailAddressAliasRequest')
    AssociateEmailAddressAliasResponse = Shapes::StructureShape.new(name: 'AssociateEmailAddressAliasResponse')
    AssociateFlowRequest = Shapes::StructureShape.new(name: 'AssociateFlowRequest')
    AssociateFlowResponse = Shapes::StructureShape.new(name: 'AssociateFlowResponse')
    AssociateInstanceStorageConfigRequest = Shapes::StructureShape.new(name: 'AssociateInstanceStorageConfigRequest')
    AssociateInstanceStorageConfigResponse = Shapes::StructureShape.new(name: 'AssociateInstanceStorageConfigResponse')
    AssociateLambdaFunctionRequest = Shapes::StructureShape.new(name: 'AssociateLambdaFunctionRequest')
    AssociateLexBotRequest = Shapes::StructureShape.new(name: 'AssociateLexBotRequest')
    AssociatePhoneNumberContactFlowRequest = Shapes::StructureShape.new(name: 'AssociatePhoneNumberContactFlowRequest')
    AssociateQueueQuickConnectsRequest = Shapes::StructureShape.new(name: 'AssociateQueueQuickConnectsRequest')
    AssociateRoutingProfileQueuesRequest = Shapes::StructureShape.new(name: 'AssociateRoutingProfileQueuesRequest')
    AssociateSecurityKeyRequest = Shapes::StructureShape.new(name: 'AssociateSecurityKeyRequest')
    AssociateSecurityKeyResponse = Shapes::StructureShape.new(name: 'AssociateSecurityKeyResponse')
    AssociateTrafficDistributionGroupUserRequest = Shapes::StructureShape.new(name: 'AssociateTrafficDistributionGroupUserRequest')
    AssociateTrafficDistributionGroupUserResponse = Shapes::StructureShape.new(name: 'AssociateTrafficDistributionGroupUserResponse')
    AssociateUserProficienciesRequest = Shapes::StructureShape.new(name: 'AssociateUserProficienciesRequest')
    AssociatedContactSummary = Shapes::StructureShape.new(name: 'AssociatedContactSummary')
    AssociatedContactSummaryList = Shapes::ListShape.new(name: 'AssociatedContactSummaryList')
    AssociatedQueueIdList = Shapes::ListShape.new(name: 'AssociatedQueueIdList')
    AssociationId = Shapes::StringShape.new(name: 'AssociationId')
    AttachedFile = Shapes::StructureShape.new(name: 'AttachedFile')
    AttachedFileError = Shapes::StructureShape.new(name: 'AttachedFileError')
    AttachedFileErrorsList = Shapes::ListShape.new(name: 'AttachedFileErrorsList')
    AttachedFileInvalidRequestExceptionReason = Shapes::StringShape.new(name: 'AttachedFileInvalidRequestExceptionReason')
    AttachedFileServiceQuotaExceededExceptionReason = Shapes::StringShape.new(name: 'AttachedFileServiceQuotaExceededExceptionReason')
    AttachedFilesList = Shapes::ListShape.new(name: 'AttachedFilesList')
    AttachmentName = Shapes::StringShape.new(name: 'AttachmentName')
    AttachmentReference = Shapes::StructureShape.new(name: 'AttachmentReference')
    Attendee = Shapes::StructureShape.new(name: 'Attendee')
    AttendeeId = Shapes::StringShape.new(name: 'AttendeeId')
    Attribute = Shapes::StructureShape.new(name: 'Attribute')
    AttributeAndCondition = Shapes::StructureShape.new(name: 'AttributeAndCondition')
    AttributeCondition = Shapes::StructureShape.new(name: 'AttributeCondition')
    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    AttributeOrConditionList = Shapes::ListShape.new(name: 'AttributeOrConditionList')
    AttributeValue = Shapes::StringShape.new(name: 'AttributeValue')
    Attributes = Shapes::MapShape.new(name: 'Attributes')
    AttributesList = Shapes::ListShape.new(name: 'AttributesList')
    AudioFeatures = Shapes::StructureShape.new(name: 'AudioFeatures')
    AudioQualityMetricsInfo = Shapes::StructureShape.new(name: 'AudioQualityMetricsInfo')
    AudioQualityScore = Shapes::FloatShape.new(name: 'AudioQualityScore')
    AuthenticationError = Shapes::StringShape.new(name: 'AuthenticationError')
    AuthenticationErrorDescription = Shapes::StringShape.new(name: 'AuthenticationErrorDescription')
    AuthenticationProfile = Shapes::StructureShape.new(name: 'AuthenticationProfile')
    AuthenticationProfileDescription = Shapes::StringShape.new(name: 'AuthenticationProfileDescription')
    AuthenticationProfileId = Shapes::StringShape.new(name: 'AuthenticationProfileId')
    AuthenticationProfileName = Shapes::StringShape.new(name: 'AuthenticationProfileName')
    AuthenticationProfileSummary = Shapes::StructureShape.new(name: 'AuthenticationProfileSummary')
    AuthenticationProfileSummaryList = Shapes::ListShape.new(name: 'AuthenticationProfileSummaryList')
    AuthorizationCode = Shapes::StringShape.new(name: 'AuthorizationCode')
    AutoAccept = Shapes::BooleanShape.new(name: 'AutoAccept')
    AutoEvaluationConfiguration = Shapes::StructureShape.new(name: 'AutoEvaluationConfiguration')
    AutoEvaluationDetails = Shapes::StructureShape.new(name: 'AutoEvaluationDetails')
    AutoEvaluationStatus = Shapes::StringShape.new(name: 'AutoEvaluationStatus')
    AutomaticFailConfiguration = Shapes::StructureShape.new(name: 'AutomaticFailConfiguration')
    AvailableNumberSummary = Shapes::StructureShape.new(name: 'AvailableNumberSummary')
    AvailableNumbersList = Shapes::ListShape.new(name: 'AvailableNumbersList')
    AwsRegion = Shapes::StringShape.new(name: 'AwsRegion')
    BatchAssociateAnalyticsDataSetRequest = Shapes::StructureShape.new(name: 'BatchAssociateAnalyticsDataSetRequest')
    BatchAssociateAnalyticsDataSetResponse = Shapes::StructureShape.new(name: 'BatchAssociateAnalyticsDataSetResponse')
    BatchDisassociateAnalyticsDataSetRequest = Shapes::StructureShape.new(name: 'BatchDisassociateAnalyticsDataSetRequest')
    BatchDisassociateAnalyticsDataSetResponse = Shapes::StructureShape.new(name: 'BatchDisassociateAnalyticsDataSetResponse')
    BatchGetAttachedFileMetadataRequest = Shapes::StructureShape.new(name: 'BatchGetAttachedFileMetadataRequest')
    BatchGetAttachedFileMetadataResponse = Shapes::StructureShape.new(name: 'BatchGetAttachedFileMetadataResponse')
    BatchGetFlowAssociationRequest = Shapes::StructureShape.new(name: 'BatchGetFlowAssociationRequest')
    BatchGetFlowAssociationResponse = Shapes::StructureShape.new(name: 'BatchGetFlowAssociationResponse')
    BatchPutContactRequest = Shapes::StructureShape.new(name: 'BatchPutContactRequest')
    BatchPutContactResponse = Shapes::StructureShape.new(name: 'BatchPutContactResponse')
    BehaviorType = Shapes::StringShape.new(name: 'BehaviorType')
    Body = Shapes::StringShape.new(name: 'Body')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BooleanComparisonType = Shapes::StringShape.new(name: 'BooleanComparisonType')
    BooleanCondition = Shapes::StructureShape.new(name: 'BooleanCondition')
    BotName = Shapes::StringShape.new(name: 'BotName')
    BoxedBoolean = Shapes::BooleanShape.new(name: 'BoxedBoolean')
    BucketName = Shapes::StringShape.new(name: 'BucketName')
    Campaign = Shapes::StructureShape.new(name: 'Campaign')
    CampaignId = Shapes::StringShape.new(name: 'CampaignId')
    CaseSlaConfiguration = Shapes::StructureShape.new(name: 'CaseSlaConfiguration')
    Channel = Shapes::StringShape.new(name: 'Channel')
    ChannelList = Shapes::ListShape.new(name: 'ChannelList')
    ChannelToCountMap = Shapes::MapShape.new(name: 'ChannelToCountMap')
    Channels = Shapes::ListShape.new(name: 'Channels')
    ChatContactMetrics = Shapes::StructureShape.new(name: 'ChatContactMetrics')
    ChatContent = Shapes::StringShape.new(name: 'ChatContent')
    ChatContentType = Shapes::StringShape.new(name: 'ChatContentType')
    ChatDurationInMinutes = Shapes::IntegerShape.new(name: 'ChatDurationInMinutes')
    ChatEvent = Shapes::StructureShape.new(name: 'ChatEvent')
    ChatEventType = Shapes::StringShape.new(name: 'ChatEventType')
    ChatMessage = Shapes::StructureShape.new(name: 'ChatMessage')
    ChatMetrics = Shapes::StructureShape.new(name: 'ChatMetrics')
    ChatParticipantRoleConfig = Shapes::StructureShape.new(name: 'ChatParticipantRoleConfig')
    ChatStreamingConfiguration = Shapes::StructureShape.new(name: 'ChatStreamingConfiguration')
    ChatStreamingEndpointARN = Shapes::StringShape.new(name: 'ChatStreamingEndpointARN')
    ClaimPhoneNumberRequest = Shapes::StructureShape.new(name: 'ClaimPhoneNumberRequest')
    ClaimPhoneNumberResponse = Shapes::StructureShape.new(name: 'ClaimPhoneNumberResponse')
    ClaimedPhoneNumberSummary = Shapes::StructureShape.new(name: 'ClaimedPhoneNumberSummary')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CommonAttributeAndCondition = Shapes::StructureShape.new(name: 'CommonAttributeAndCondition')
    CommonAttributeOrConditionList = Shapes::ListShape.new(name: 'CommonAttributeOrConditionList')
    CommonHumanReadableDescription = Shapes::StringShape.new(name: 'CommonHumanReadableDescription')
    CommonHumanReadableName = Shapes::StringShape.new(name: 'CommonHumanReadableName')
    CommonNameLength127 = Shapes::StringShape.new(name: 'CommonNameLength127')
    Comparison = Shapes::StringShape.new(name: 'Comparison')
    ComparisonOperator = Shapes::StringShape.new(name: 'ComparisonOperator')
    CompleteAttachedFileUploadRequest = Shapes::StructureShape.new(name: 'CompleteAttachedFileUploadRequest')
    CompleteAttachedFileUploadResponse = Shapes::StructureShape.new(name: 'CompleteAttachedFileUploadResponse')
    Concurrency = Shapes::IntegerShape.new(name: 'Concurrency')
    Condition = Shapes::StructureShape.new(name: 'Condition')
    ConditionalOperationFailedException = Shapes::StructureShape.new(name: 'ConditionalOperationFailedException')
    Conditions = Shapes::ListShape.new(name: 'Conditions')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectionData = Shapes::StructureShape.new(name: 'ConnectionData')
    Contact = Shapes::StructureShape.new(name: 'Contact')
    ContactAnalysis = Shapes::StructureShape.new(name: 'ContactAnalysis')
    ContactConfiguration = Shapes::StructureShape.new(name: 'ContactConfiguration')
    ContactDataRequest = Shapes::StructureShape.new(name: 'ContactDataRequest')
    ContactDataRequestList = Shapes::ListShape.new(name: 'ContactDataRequestList')
    ContactDetailDescription = Shapes::StringShape.new(name: 'ContactDetailDescription')
    ContactDetailName = Shapes::StringShape.new(name: 'ContactDetailName')
    ContactDetails = Shapes::StructureShape.new(name: 'ContactDetails')
    ContactEvaluation = Shapes::StructureShape.new(name: 'ContactEvaluation')
    ContactEvaluations = Shapes::MapShape.new(name: 'ContactEvaluations')
    ContactFilter = Shapes::StructureShape.new(name: 'ContactFilter')
    ContactFlow = Shapes::StructureShape.new(name: 'ContactFlow')
    ContactFlowContent = Shapes::StringShape.new(name: 'ContactFlowContent')
    ContactFlowDescription = Shapes::StringShape.new(name: 'ContactFlowDescription')
    ContactFlowId = Shapes::StringShape.new(name: 'ContactFlowId')
    ContactFlowModule = Shapes::StructureShape.new(name: 'ContactFlowModule')
    ContactFlowModuleAlias = Shapes::StringShape.new(name: 'ContactFlowModuleAlias')
    ContactFlowModuleAliasInfo = Shapes::StructureShape.new(name: 'ContactFlowModuleAliasInfo')
    ContactFlowModuleAliasSummary = Shapes::StructureShape.new(name: 'ContactFlowModuleAliasSummary')
    ContactFlowModuleAliasSummaryList = Shapes::ListShape.new(name: 'ContactFlowModuleAliasSummaryList')
    ContactFlowModuleContent = Shapes::StringShape.new(name: 'ContactFlowModuleContent')
    ContactFlowModuleDescription = Shapes::StringShape.new(name: 'ContactFlowModuleDescription')
    ContactFlowModuleId = Shapes::StringShape.new(name: 'ContactFlowModuleId')
    ContactFlowModuleName = Shapes::StringShape.new(name: 'ContactFlowModuleName')
    ContactFlowModuleSearchConditionList = Shapes::ListShape.new(name: 'ContactFlowModuleSearchConditionList')
    ContactFlowModuleSearchCriteria = Shapes::StructureShape.new(name: 'ContactFlowModuleSearchCriteria')
    ContactFlowModuleSearchFilter = Shapes::StructureShape.new(name: 'ContactFlowModuleSearchFilter')
    ContactFlowModuleSearchSummaryList = Shapes::ListShape.new(name: 'ContactFlowModuleSearchSummaryList')
    ContactFlowModuleState = Shapes::StringShape.new(name: 'ContactFlowModuleState')
    ContactFlowModuleStatus = Shapes::StringShape.new(name: 'ContactFlowModuleStatus')
    ContactFlowModuleSummary = Shapes::StructureShape.new(name: 'ContactFlowModuleSummary')
    ContactFlowModuleVersionSummary = Shapes::StructureShape.new(name: 'ContactFlowModuleVersionSummary')
    ContactFlowModuleVersionSummaryList = Shapes::ListShape.new(name: 'ContactFlowModuleVersionSummaryList')
    ContactFlowModulesSummaryList = Shapes::ListShape.new(name: 'ContactFlowModulesSummaryList')
    ContactFlowName = Shapes::StringShape.new(name: 'ContactFlowName')
    ContactFlowNotPublishedException = Shapes::StructureShape.new(name: 'ContactFlowNotPublishedException')
    ContactFlowSearchConditionList = Shapes::ListShape.new(name: 'ContactFlowSearchConditionList')
    ContactFlowSearchCriteria = Shapes::StructureShape.new(name: 'ContactFlowSearchCriteria')
    ContactFlowSearchFilter = Shapes::StructureShape.new(name: 'ContactFlowSearchFilter')
    ContactFlowSearchSummaryList = Shapes::ListShape.new(name: 'ContactFlowSearchSummaryList')
    ContactFlowState = Shapes::StringShape.new(name: 'ContactFlowState')
    ContactFlowStatus = Shapes::StringShape.new(name: 'ContactFlowStatus')
    ContactFlowSummary = Shapes::StructureShape.new(name: 'ContactFlowSummary')
    ContactFlowSummaryList = Shapes::ListShape.new(name: 'ContactFlowSummaryList')
    ContactFlowType = Shapes::StringShape.new(name: 'ContactFlowType')
    ContactFlowTypes = Shapes::ListShape.new(name: 'ContactFlowTypes')
    ContactFlowVersionSummary = Shapes::StructureShape.new(name: 'ContactFlowVersionSummary')
    ContactFlowVersionSummaryList = Shapes::ListShape.new(name: 'ContactFlowVersionSummaryList')
    ContactId = Shapes::StringShape.new(name: 'ContactId')
    ContactInitiationMethod = Shapes::StringShape.new(name: 'ContactInitiationMethod')
    ContactMetricInfo = Shapes::StructureShape.new(name: 'ContactMetricInfo')
    ContactMetricName = Shapes::StringShape.new(name: 'ContactMetricName')
    ContactMetricResult = Shapes::StructureShape.new(name: 'ContactMetricResult')
    ContactMetricResults = Shapes::ListShape.new(name: 'ContactMetricResults')
    ContactMetricValue = Shapes::UnionShape.new(name: 'ContactMetricValue')
    ContactMetrics = Shapes::ListShape.new(name: 'ContactMetrics')
    ContactNotFoundException = Shapes::StructureShape.new(name: 'ContactNotFoundException')
    ContactRecordingType = Shapes::StringShape.new(name: 'ContactRecordingType')
    ContactReferences = Shapes::MapShape.new(name: 'ContactReferences')
    ContactSearchSummary = Shapes::StructureShape.new(name: 'ContactSearchSummary')
    ContactSearchSummaryAgentInfo = Shapes::StructureShape.new(name: 'ContactSearchSummaryAgentInfo')
    ContactSearchSummaryQueueInfo = Shapes::StructureShape.new(name: 'ContactSearchSummaryQueueInfo')
    ContactSearchSummarySegmentAttributeValue = Shapes::StructureShape.new(name: 'ContactSearchSummarySegmentAttributeValue')
    ContactSearchSummarySegmentAttributes = Shapes::MapShape.new(name: 'ContactSearchSummarySegmentAttributes')
    ContactState = Shapes::StringShape.new(name: 'ContactState')
    ContactStates = Shapes::ListShape.new(name: 'ContactStates')
    ContactTagKey = Shapes::StringShape.new(name: 'ContactTagKey')
    ContactTagKeys = Shapes::ListShape.new(name: 'ContactTagKeys')
    ContactTagMap = Shapes::MapShape.new(name: 'ContactTagMap')
    ContactTagValue = Shapes::StringShape.new(name: 'ContactTagValue')
    Contacts = Shapes::ListShape.new(name: 'Contacts')
    Content = Shapes::StringShape.new(name: 'Content')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    ControlPlaneAttributeFilter = Shapes::StructureShape.new(name: 'ControlPlaneAttributeFilter')
    ControlPlaneTagFilter = Shapes::StructureShape.new(name: 'ControlPlaneTagFilter')
    ControlPlaneUserAttributeFilter = Shapes::StructureShape.new(name: 'ControlPlaneUserAttributeFilter')
    Count = Shapes::IntegerShape.new(name: 'Count')
    CreateAgentStatusRequest = Shapes::StructureShape.new(name: 'CreateAgentStatusRequest')
    CreateAgentStatusResponse = Shapes::StructureShape.new(name: 'CreateAgentStatusResponse')
    CreateCaseActionDefinition = Shapes::StructureShape.new(name: 'CreateCaseActionDefinition')
    CreateContactFlowModuleAliasRequest = Shapes::StructureShape.new(name: 'CreateContactFlowModuleAliasRequest')
    CreateContactFlowModuleAliasResponse = Shapes::StructureShape.new(name: 'CreateContactFlowModuleAliasResponse')
    CreateContactFlowModuleRequest = Shapes::StructureShape.new(name: 'CreateContactFlowModuleRequest')
    CreateContactFlowModuleResponse = Shapes::StructureShape.new(name: 'CreateContactFlowModuleResponse')
    CreateContactFlowModuleVersionRequest = Shapes::StructureShape.new(name: 'CreateContactFlowModuleVersionRequest')
    CreateContactFlowModuleVersionResponse = Shapes::StructureShape.new(name: 'CreateContactFlowModuleVersionResponse')
    CreateContactFlowRequest = Shapes::StructureShape.new(name: 'CreateContactFlowRequest')
    CreateContactFlowResponse = Shapes::StructureShape.new(name: 'CreateContactFlowResponse')
    CreateContactFlowVersionRequest = Shapes::StructureShape.new(name: 'CreateContactFlowVersionRequest')
    CreateContactFlowVersionResponse = Shapes::StructureShape.new(name: 'CreateContactFlowVersionResponse')
    CreateContactRequest = Shapes::StructureShape.new(name: 'CreateContactRequest')
    CreateContactResponse = Shapes::StructureShape.new(name: 'CreateContactResponse')
    CreateEmailAddressRequest = Shapes::StructureShape.new(name: 'CreateEmailAddressRequest')
    CreateEmailAddressResponse = Shapes::StructureShape.new(name: 'CreateEmailAddressResponse')
    CreateEvaluationFormRequest = Shapes::StructureShape.new(name: 'CreateEvaluationFormRequest')
    CreateEvaluationFormResponse = Shapes::StructureShape.new(name: 'CreateEvaluationFormResponse')
    CreateHoursOfOperationOverrideRequest = Shapes::StructureShape.new(name: 'CreateHoursOfOperationOverrideRequest')
    CreateHoursOfOperationOverrideResponse = Shapes::StructureShape.new(name: 'CreateHoursOfOperationOverrideResponse')
    CreateHoursOfOperationRequest = Shapes::StructureShape.new(name: 'CreateHoursOfOperationRequest')
    CreateHoursOfOperationResponse = Shapes::StructureShape.new(name: 'CreateHoursOfOperationResponse')
    CreateInstanceRequest = Shapes::StructureShape.new(name: 'CreateInstanceRequest')
    CreateInstanceResponse = Shapes::StructureShape.new(name: 'CreateInstanceResponse')
    CreateIntegrationAssociationRequest = Shapes::StructureShape.new(name: 'CreateIntegrationAssociationRequest')
    CreateIntegrationAssociationResponse = Shapes::StructureShape.new(name: 'CreateIntegrationAssociationResponse')
    CreateParticipantRequest = Shapes::StructureShape.new(name: 'CreateParticipantRequest')
    CreateParticipantResponse = Shapes::StructureShape.new(name: 'CreateParticipantResponse')
    CreatePersistentContactAssociationRequest = Shapes::StructureShape.new(name: 'CreatePersistentContactAssociationRequest')
    CreatePersistentContactAssociationResponse = Shapes::StructureShape.new(name: 'CreatePersistentContactAssociationResponse')
    CreatePredefinedAttributeRequest = Shapes::StructureShape.new(name: 'CreatePredefinedAttributeRequest')
    CreatePromptRequest = Shapes::StructureShape.new(name: 'CreatePromptRequest')
    CreatePromptResponse = Shapes::StructureShape.new(name: 'CreatePromptResponse')
    CreatePushNotificationRegistrationRequest = Shapes::StructureShape.new(name: 'CreatePushNotificationRegistrationRequest')
    CreatePushNotificationRegistrationResponse = Shapes::StructureShape.new(name: 'CreatePushNotificationRegistrationResponse')
    CreateQueueRequest = Shapes::StructureShape.new(name: 'CreateQueueRequest')
    CreateQueueResponse = Shapes::StructureShape.new(name: 'CreateQueueResponse')
    CreateQuickConnectRequest = Shapes::StructureShape.new(name: 'CreateQuickConnectRequest')
    CreateQuickConnectResponse = Shapes::StructureShape.new(name: 'CreateQuickConnectResponse')
    CreateRoutingProfileRequest = Shapes::StructureShape.new(name: 'CreateRoutingProfileRequest')
    CreateRoutingProfileResponse = Shapes::StructureShape.new(name: 'CreateRoutingProfileResponse')
    CreateRuleRequest = Shapes::StructureShape.new(name: 'CreateRuleRequest')
    CreateRuleResponse = Shapes::StructureShape.new(name: 'CreateRuleResponse')
    CreateSecurityProfileName = Shapes::StringShape.new(name: 'CreateSecurityProfileName')
    CreateSecurityProfileRequest = Shapes::StructureShape.new(name: 'CreateSecurityProfileRequest')
    CreateSecurityProfileResponse = Shapes::StructureShape.new(name: 'CreateSecurityProfileResponse')
    CreateTaskTemplateRequest = Shapes::StructureShape.new(name: 'CreateTaskTemplateRequest')
    CreateTaskTemplateResponse = Shapes::StructureShape.new(name: 'CreateTaskTemplateResponse')
    CreateTrafficDistributionGroupRequest = Shapes::StructureShape.new(name: 'CreateTrafficDistributionGroupRequest')
    CreateTrafficDistributionGroupResponse = Shapes::StructureShape.new(name: 'CreateTrafficDistributionGroupResponse')
    CreateUseCaseRequest = Shapes::StructureShape.new(name: 'CreateUseCaseRequest')
    CreateUseCaseResponse = Shapes::StructureShape.new(name: 'CreateUseCaseResponse')
    CreateUserHierarchyGroupRequest = Shapes::StructureShape.new(name: 'CreateUserHierarchyGroupRequest')
    CreateUserHierarchyGroupResponse = Shapes::StructureShape.new(name: 'CreateUserHierarchyGroupResponse')
    CreateUserRequest = Shapes::StructureShape.new(name: 'CreateUserRequest')
    CreateUserResponse = Shapes::StructureShape.new(name: 'CreateUserResponse')
    CreateViewRequest = Shapes::StructureShape.new(name: 'CreateViewRequest')
    CreateViewResponse = Shapes::StructureShape.new(name: 'CreateViewResponse')
    CreateViewVersionRequest = Shapes::StructureShape.new(name: 'CreateViewVersionRequest')
    CreateViewVersionResponse = Shapes::StructureShape.new(name: 'CreateViewVersionResponse')
    CreateVocabularyRequest = Shapes::StructureShape.new(name: 'CreateVocabularyRequest')
    CreateVocabularyResponse = Shapes::StructureShape.new(name: 'CreateVocabularyResponse')
    CreatedByInfo = Shapes::UnionShape.new(name: 'CreatedByInfo')
    Credentials = Shapes::StructureShape.new(name: 'Credentials')
    CrossChannelBehavior = Shapes::StructureShape.new(name: 'CrossChannelBehavior')
    CurrentMetric = Shapes::StructureShape.new(name: 'CurrentMetric')
    CurrentMetricData = Shapes::StructureShape.new(name: 'CurrentMetricData')
    CurrentMetricDataCollections = Shapes::ListShape.new(name: 'CurrentMetricDataCollections')
    CurrentMetricName = Shapes::StringShape.new(name: 'CurrentMetricName')
    CurrentMetricResult = Shapes::StructureShape.new(name: 'CurrentMetricResult')
    CurrentMetricResults = Shapes::ListShape.new(name: 'CurrentMetricResults')
    CurrentMetricSortCriteria = Shapes::StructureShape.new(name: 'CurrentMetricSortCriteria')
    CurrentMetricSortCriteriaMaxOne = Shapes::ListShape.new(name: 'CurrentMetricSortCriteriaMaxOne')
    CurrentMetrics = Shapes::ListShape.new(name: 'CurrentMetrics')
    Customer = Shapes::StructureShape.new(name: 'Customer')
    CustomerId = Shapes::StringShape.new(name: 'CustomerId')
    CustomerIdNonEmpty = Shapes::StringShape.new(name: 'CustomerIdNonEmpty')
    CustomerProfileAttributesSerialized = Shapes::StringShape.new(name: 'CustomerProfileAttributesSerialized')
    CustomerQualityMetrics = Shapes::StructureShape.new(name: 'CustomerQualityMetrics')
    CustomerVoiceActivity = Shapes::StructureShape.new(name: 'CustomerVoiceActivity')
    DataSetId = Shapes::StringShape.new(name: 'DataSetId')
    DataSetIds = Shapes::ListShape.new(name: 'DataSetIds')
    DateComparisonType = Shapes::StringShape.new(name: 'DateComparisonType')
    DateCondition = Shapes::StructureShape.new(name: 'DateCondition')
    DateReference = Shapes::StructureShape.new(name: 'DateReference')
    DateTimeComparisonType = Shapes::StringShape.new(name: 'DateTimeComparisonType')
    DateTimeCondition = Shapes::StructureShape.new(name: 'DateTimeCondition')
    DateTimeFormat = Shapes::StringShape.new(name: 'DateTimeFormat')
    DateYearMonthDayFormat = Shapes::StringShape.new(name: 'DateYearMonthDayFormat')
    DeactivateEvaluationFormRequest = Shapes::StructureShape.new(name: 'DeactivateEvaluationFormRequest')
    DeactivateEvaluationFormResponse = Shapes::StructureShape.new(name: 'DeactivateEvaluationFormResponse')
    DecimalComparisonType = Shapes::StringShape.new(name: 'DecimalComparisonType')
    DecimalCondition = Shapes::StructureShape.new(name: 'DecimalCondition')
    DefaultVocabulary = Shapes::StructureShape.new(name: 'DefaultVocabulary')
    DefaultVocabularyList = Shapes::ListShape.new(name: 'DefaultVocabularyList')
    Delay = Shapes::IntegerShape.new(name: 'Delay')
    DeleteAttachedFileRequest = Shapes::StructureShape.new(name: 'DeleteAttachedFileRequest')
    DeleteAttachedFileResponse = Shapes::StructureShape.new(name: 'DeleteAttachedFileResponse')
    DeleteContactEvaluationRequest = Shapes::StructureShape.new(name: 'DeleteContactEvaluationRequest')
    DeleteContactFlowModuleAliasRequest = Shapes::StructureShape.new(name: 'DeleteContactFlowModuleAliasRequest')
    DeleteContactFlowModuleAliasResponse = Shapes::StructureShape.new(name: 'DeleteContactFlowModuleAliasResponse')
    DeleteContactFlowModuleRequest = Shapes::StructureShape.new(name: 'DeleteContactFlowModuleRequest')
    DeleteContactFlowModuleResponse = Shapes::StructureShape.new(name: 'DeleteContactFlowModuleResponse')
    DeleteContactFlowModuleVersionRequest = Shapes::StructureShape.new(name: 'DeleteContactFlowModuleVersionRequest')
    DeleteContactFlowModuleVersionResponse = Shapes::StructureShape.new(name: 'DeleteContactFlowModuleVersionResponse')
    DeleteContactFlowRequest = Shapes::StructureShape.new(name: 'DeleteContactFlowRequest')
    DeleteContactFlowResponse = Shapes::StructureShape.new(name: 'DeleteContactFlowResponse')
    DeleteContactFlowVersionRequest = Shapes::StructureShape.new(name: 'DeleteContactFlowVersionRequest')
    DeleteContactFlowVersionResponse = Shapes::StructureShape.new(name: 'DeleteContactFlowVersionResponse')
    DeleteEmailAddressRequest = Shapes::StructureShape.new(name: 'DeleteEmailAddressRequest')
    DeleteEmailAddressResponse = Shapes::StructureShape.new(name: 'DeleteEmailAddressResponse')
    DeleteEvaluationFormRequest = Shapes::StructureShape.new(name: 'DeleteEvaluationFormRequest')
    DeleteHoursOfOperationOverrideRequest = Shapes::StructureShape.new(name: 'DeleteHoursOfOperationOverrideRequest')
    DeleteHoursOfOperationRequest = Shapes::StructureShape.new(name: 'DeleteHoursOfOperationRequest')
    DeleteInstanceRequest = Shapes::StructureShape.new(name: 'DeleteInstanceRequest')
    DeleteIntegrationAssociationRequest = Shapes::StructureShape.new(name: 'DeleteIntegrationAssociationRequest')
    DeletePredefinedAttributeRequest = Shapes::StructureShape.new(name: 'DeletePredefinedAttributeRequest')
    DeletePromptRequest = Shapes::StructureShape.new(name: 'DeletePromptRequest')
    DeletePushNotificationRegistrationRequest = Shapes::StructureShape.new(name: 'DeletePushNotificationRegistrationRequest')
    DeletePushNotificationRegistrationResponse = Shapes::StructureShape.new(name: 'DeletePushNotificationRegistrationResponse')
    DeleteQueueRequest = Shapes::StructureShape.new(name: 'DeleteQueueRequest')
    DeleteQuickConnectRequest = Shapes::StructureShape.new(name: 'DeleteQuickConnectRequest')
    DeleteRoutingProfileRequest = Shapes::StructureShape.new(name: 'DeleteRoutingProfileRequest')
    DeleteRuleRequest = Shapes::StructureShape.new(name: 'DeleteRuleRequest')
    DeleteSecurityProfileRequest = Shapes::StructureShape.new(name: 'DeleteSecurityProfileRequest')
    DeleteTaskTemplateRequest = Shapes::StructureShape.new(name: 'DeleteTaskTemplateRequest')
    DeleteTaskTemplateResponse = Shapes::StructureShape.new(name: 'DeleteTaskTemplateResponse')
    DeleteTrafficDistributionGroupRequest = Shapes::StructureShape.new(name: 'DeleteTrafficDistributionGroupRequest')
    DeleteTrafficDistributionGroupResponse = Shapes::StructureShape.new(name: 'DeleteTrafficDistributionGroupResponse')
    DeleteUseCaseRequest = Shapes::StructureShape.new(name: 'DeleteUseCaseRequest')
    DeleteUserHierarchyGroupRequest = Shapes::StructureShape.new(name: 'DeleteUserHierarchyGroupRequest')
    DeleteUserRequest = Shapes::StructureShape.new(name: 'DeleteUserRequest')
    DeleteViewRequest = Shapes::StructureShape.new(name: 'DeleteViewRequest')
    DeleteViewResponse = Shapes::StructureShape.new(name: 'DeleteViewResponse')
    DeleteViewVersionRequest = Shapes::StructureShape.new(name: 'DeleteViewVersionRequest')
    DeleteViewVersionResponse = Shapes::StructureShape.new(name: 'DeleteViewVersionResponse')
    DeleteVocabularyRequest = Shapes::StructureShape.new(name: 'DeleteVocabularyRequest')
    DeleteVocabularyResponse = Shapes::StructureShape.new(name: 'DeleteVocabularyResponse')
    DescribeAgentStatusRequest = Shapes::StructureShape.new(name: 'DescribeAgentStatusRequest')
    DescribeAgentStatusResponse = Shapes::StructureShape.new(name: 'DescribeAgentStatusResponse')
    DescribeAuthenticationProfileRequest = Shapes::StructureShape.new(name: 'DescribeAuthenticationProfileRequest')
    DescribeAuthenticationProfileResponse = Shapes::StructureShape.new(name: 'DescribeAuthenticationProfileResponse')
    DescribeContactEvaluationRequest = Shapes::StructureShape.new(name: 'DescribeContactEvaluationRequest')
    DescribeContactEvaluationResponse = Shapes::StructureShape.new(name: 'DescribeContactEvaluationResponse')
    DescribeContactFlowModuleAliasRequest = Shapes::StructureShape.new(name: 'DescribeContactFlowModuleAliasRequest')
    DescribeContactFlowModuleAliasResponse = Shapes::StructureShape.new(name: 'DescribeContactFlowModuleAliasResponse')
    DescribeContactFlowModuleRequest = Shapes::StructureShape.new(name: 'DescribeContactFlowModuleRequest')
    DescribeContactFlowModuleResponse = Shapes::StructureShape.new(name: 'DescribeContactFlowModuleResponse')
    DescribeContactFlowRequest = Shapes::StructureShape.new(name: 'DescribeContactFlowRequest')
    DescribeContactFlowResponse = Shapes::StructureShape.new(name: 'DescribeContactFlowResponse')
    DescribeContactRequest = Shapes::StructureShape.new(name: 'DescribeContactRequest')
    DescribeContactResponse = Shapes::StructureShape.new(name: 'DescribeContactResponse')
    DescribeEmailAddressRequest = Shapes::StructureShape.new(name: 'DescribeEmailAddressRequest')
    DescribeEmailAddressResponse = Shapes::StructureShape.new(name: 'DescribeEmailAddressResponse')
    DescribeEvaluationFormRequest = Shapes::StructureShape.new(name: 'DescribeEvaluationFormRequest')
    DescribeEvaluationFormResponse = Shapes::StructureShape.new(name: 'DescribeEvaluationFormResponse')
    DescribeHoursOfOperationOverrideRequest = Shapes::StructureShape.new(name: 'DescribeHoursOfOperationOverrideRequest')
    DescribeHoursOfOperationOverrideResponse = Shapes::StructureShape.new(name: 'DescribeHoursOfOperationOverrideResponse')
    DescribeHoursOfOperationRequest = Shapes::StructureShape.new(name: 'DescribeHoursOfOperationRequest')
    DescribeHoursOfOperationResponse = Shapes::StructureShape.new(name: 'DescribeHoursOfOperationResponse')
    DescribeInstanceAttributeRequest = Shapes::StructureShape.new(name: 'DescribeInstanceAttributeRequest')
    DescribeInstanceAttributeResponse = Shapes::StructureShape.new(name: 'DescribeInstanceAttributeResponse')
    DescribeInstanceRequest = Shapes::StructureShape.new(name: 'DescribeInstanceRequest')
    DescribeInstanceResponse = Shapes::StructureShape.new(name: 'DescribeInstanceResponse')
    DescribeInstanceStorageConfigRequest = Shapes::StructureShape.new(name: 'DescribeInstanceStorageConfigRequest')
    DescribeInstanceStorageConfigResponse = Shapes::StructureShape.new(name: 'DescribeInstanceStorageConfigResponse')
    DescribePhoneNumberRequest = Shapes::StructureShape.new(name: 'DescribePhoneNumberRequest')
    DescribePhoneNumberResponse = Shapes::StructureShape.new(name: 'DescribePhoneNumberResponse')
    DescribePredefinedAttributeRequest = Shapes::StructureShape.new(name: 'DescribePredefinedAttributeRequest')
    DescribePredefinedAttributeResponse = Shapes::StructureShape.new(name: 'DescribePredefinedAttributeResponse')
    DescribePromptRequest = Shapes::StructureShape.new(name: 'DescribePromptRequest')
    DescribePromptResponse = Shapes::StructureShape.new(name: 'DescribePromptResponse')
    DescribeQueueRequest = Shapes::StructureShape.new(name: 'DescribeQueueRequest')
    DescribeQueueResponse = Shapes::StructureShape.new(name: 'DescribeQueueResponse')
    DescribeQuickConnectRequest = Shapes::StructureShape.new(name: 'DescribeQuickConnectRequest')
    DescribeQuickConnectResponse = Shapes::StructureShape.new(name: 'DescribeQuickConnectResponse')
    DescribeRoutingProfileRequest = Shapes::StructureShape.new(name: 'DescribeRoutingProfileRequest')
    DescribeRoutingProfileResponse = Shapes::StructureShape.new(name: 'DescribeRoutingProfileResponse')
    DescribeRuleRequest = Shapes::StructureShape.new(name: 'DescribeRuleRequest')
    DescribeRuleResponse = Shapes::StructureShape.new(name: 'DescribeRuleResponse')
    DescribeSecurityProfileRequest = Shapes::StructureShape.new(name: 'DescribeSecurityProfileRequest')
    DescribeSecurityProfileResponse = Shapes::StructureShape.new(name: 'DescribeSecurityProfileResponse')
    DescribeTrafficDistributionGroupRequest = Shapes::StructureShape.new(name: 'DescribeTrafficDistributionGroupRequest')
    DescribeTrafficDistributionGroupResponse = Shapes::StructureShape.new(name: 'DescribeTrafficDistributionGroupResponse')
    DescribeUserHierarchyGroupRequest = Shapes::StructureShape.new(name: 'DescribeUserHierarchyGroupRequest')
    DescribeUserHierarchyGroupResponse = Shapes::StructureShape.new(name: 'DescribeUserHierarchyGroupResponse')
    DescribeUserHierarchyStructureRequest = Shapes::StructureShape.new(name: 'DescribeUserHierarchyStructureRequest')
    DescribeUserHierarchyStructureResponse = Shapes::StructureShape.new(name: 'DescribeUserHierarchyStructureResponse')
    DescribeUserRequest = Shapes::StructureShape.new(name: 'DescribeUserRequest')
    DescribeUserResponse = Shapes::StructureShape.new(name: 'DescribeUserResponse')
    DescribeViewRequest = Shapes::StructureShape.new(name: 'DescribeViewRequest')
    DescribeViewResponse = Shapes::StructureShape.new(name: 'DescribeViewResponse')
    DescribeVocabularyRequest = Shapes::StructureShape.new(name: 'DescribeVocabularyRequest')
    DescribeVocabularyResponse = Shapes::StructureShape.new(name: 'DescribeVocabularyResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    Description250 = Shapes::StringShape.new(name: 'Description250')
    DestinationId = Shapes::StringShape.new(name: 'DestinationId')
    DestinationNotAllowedException = Shapes::StructureShape.new(name: 'DestinationNotAllowedException')
    DeviceInfo = Shapes::StructureShape.new(name: 'DeviceInfo')
    DeviceToken = Shapes::StringShape.new(name: 'DeviceToken')
    DeviceType = Shapes::StringShape.new(name: 'DeviceType')
    Dimensions = Shapes::StructureShape.new(name: 'Dimensions')
    DimensionsV2Key = Shapes::StringShape.new(name: 'DimensionsV2Key')
    DimensionsV2Map = Shapes::MapShape.new(name: 'DimensionsV2Map')
    DimensionsV2Value = Shapes::StringShape.new(name: 'DimensionsV2Value')
    DirectoryAlias = Shapes::StringShape.new(name: 'DirectoryAlias')
    DirectoryId = Shapes::StringShape.new(name: 'DirectoryId')
    DirectoryType = Shapes::StringShape.new(name: 'DirectoryType')
    DirectoryUserId = Shapes::StringShape.new(name: 'DirectoryUserId')
    DisassociateAnalyticsDataSetRequest = Shapes::StructureShape.new(name: 'DisassociateAnalyticsDataSetRequest')
    DisassociateApprovedOriginRequest = Shapes::StructureShape.new(name: 'DisassociateApprovedOriginRequest')
    DisassociateBotRequest = Shapes::StructureShape.new(name: 'DisassociateBotRequest')
    DisassociateEmailAddressAliasRequest = Shapes::StructureShape.new(name: 'DisassociateEmailAddressAliasRequest')
    DisassociateEmailAddressAliasResponse = Shapes::StructureShape.new(name: 'DisassociateEmailAddressAliasResponse')
    DisassociateFlowRequest = Shapes::StructureShape.new(name: 'DisassociateFlowRequest')
    DisassociateFlowResponse = Shapes::StructureShape.new(name: 'DisassociateFlowResponse')
    DisassociateInstanceStorageConfigRequest = Shapes::StructureShape.new(name: 'DisassociateInstanceStorageConfigRequest')
    DisassociateLambdaFunctionRequest = Shapes::StructureShape.new(name: 'DisassociateLambdaFunctionRequest')
    DisassociateLexBotRequest = Shapes::StructureShape.new(name: 'DisassociateLexBotRequest')
    DisassociatePhoneNumberContactFlowRequest = Shapes::StructureShape.new(name: 'DisassociatePhoneNumberContactFlowRequest')
    DisassociateQueueQuickConnectsRequest = Shapes::StructureShape.new(name: 'DisassociateQueueQuickConnectsRequest')
    DisassociateRoutingProfileQueuesRequest = Shapes::StructureShape.new(name: 'DisassociateRoutingProfileQueuesRequest')
    DisassociateSecurityKeyRequest = Shapes::StructureShape.new(name: 'DisassociateSecurityKeyRequest')
    DisassociateTrafficDistributionGroupUserRequest = Shapes::StructureShape.new(name: 'DisassociateTrafficDistributionGroupUserRequest')
    DisassociateTrafficDistributionGroupUserResponse = Shapes::StructureShape.new(name: 'DisassociateTrafficDistributionGroupUserResponse')
    DisassociateUserProficienciesRequest = Shapes::StructureShape.new(name: 'DisassociateUserProficienciesRequest')
    DisconnectDetails = Shapes::StructureShape.new(name: 'DisconnectDetails')
    DisconnectReason = Shapes::StructureShape.new(name: 'DisconnectReason')
    DisconnectReasonCode = Shapes::StringShape.new(name: 'DisconnectReasonCode')
    DismissUserContactRequest = Shapes::StructureShape.new(name: 'DismissUserContactRequest')
    DismissUserContactResponse = Shapes::StructureShape.new(name: 'DismissUserContactResponse')
    DisplayName = Shapes::StringShape.new(name: 'DisplayName')
    Distribution = Shapes::StructureShape.new(name: 'Distribution')
    DistributionList = Shapes::ListShape.new(name: 'DistributionList')
    Double = Shapes::FloatShape.new(name: 'Double')
    DownloadUrlMetadata = Shapes::StructureShape.new(name: 'DownloadUrlMetadata')
    DuplicateResourceException = Shapes::StructureShape.new(name: 'DuplicateResourceException')
    Duration = Shapes::IntegerShape.new(name: 'Duration')
    DurationInSeconds = Shapes::IntegerShape.new(name: 'DurationInSeconds')
    DurationMillis = Shapes::IntegerShape.new(name: 'DurationMillis')
    EffectiveHoursOfOperationList = Shapes::ListShape.new(name: 'EffectiveHoursOfOperationList')
    EffectiveHoursOfOperations = Shapes::StructureShape.new(name: 'EffectiveHoursOfOperations')
    Email = Shapes::StringShape.new(name: 'Email')
    EmailAddress = Shapes::StringShape.new(name: 'EmailAddress')
    EmailAddressArn = Shapes::StringShape.new(name: 'EmailAddressArn')
    EmailAddressDisplayName = Shapes::StringShape.new(name: 'EmailAddressDisplayName')
    EmailAddressId = Shapes::StringShape.new(name: 'EmailAddressId')
    EmailAddressInfo = Shapes::StructureShape.new(name: 'EmailAddressInfo')
    EmailAddressList = Shapes::ListShape.new(name: 'EmailAddressList')
    EmailAddressMetadata = Shapes::StructureShape.new(name: 'EmailAddressMetadata')
    EmailAddressRecipientList = Shapes::ListShape.new(name: 'EmailAddressRecipientList')
    EmailAddressSearchConditionList = Shapes::ListShape.new(name: 'EmailAddressSearchConditionList')
    EmailAddressSearchCriteria = Shapes::StructureShape.new(name: 'EmailAddressSearchCriteria')
    EmailAddressSearchFilter = Shapes::StructureShape.new(name: 'EmailAddressSearchFilter')
    EmailAttachment = Shapes::StructureShape.new(name: 'EmailAttachment')
    EmailAttachments = Shapes::ListShape.new(name: 'EmailAttachments')
    EmailHeaderType = Shapes::StringShape.new(name: 'EmailHeaderType')
    EmailHeaderValue = Shapes::StringShape.new(name: 'EmailHeaderValue')
    EmailHeaders = Shapes::MapShape.new(name: 'EmailHeaders')
    EmailMessageContentType = Shapes::StringShape.new(name: 'EmailMessageContentType')
    EmailMessageReference = Shapes::StructureShape.new(name: 'EmailMessageReference')
    EmailRecipient = Shapes::StructureShape.new(name: 'EmailRecipient')
    EmailRecipientsList = Shapes::ListShape.new(name: 'EmailRecipientsList')
    EmailReference = Shapes::StructureShape.new(name: 'EmailReference')
    EmptyFieldValue = Shapes::StructureShape.new(name: 'EmptyFieldValue')
    EnableValueValidationOnAssociation = Shapes::BooleanShape.new(name: 'EnableValueValidationOnAssociation')
    EncryptionConfig = Shapes::StructureShape.new(name: 'EncryptionConfig')
    EncryptionType = Shapes::StringShape.new(name: 'EncryptionType')
    EndAssociatedTasksActionDefinition = Shapes::StructureShape.new(name: 'EndAssociatedTasksActionDefinition')
    Endpoint = Shapes::StructureShape.new(name: 'Endpoint')
    EndpointAddress = Shapes::StringShape.new(name: 'EndpointAddress')
    EndpointDisplayName = Shapes::StringShape.new(name: 'EndpointDisplayName')
    EndpointInfo = Shapes::StructureShape.new(name: 'EndpointInfo')
    EndpointType = Shapes::StringShape.new(name: 'EndpointType')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ErrorResult = Shapes::StructureShape.new(name: 'ErrorResult')
    ErrorResults = Shapes::ListShape.new(name: 'ErrorResults')
    Evaluation = Shapes::StructureShape.new(name: 'Evaluation')
    EvaluationAcknowledgement = Shapes::StructureShape.new(name: 'EvaluationAcknowledgement')
    EvaluationAcknowledgementSummary = Shapes::StructureShape.new(name: 'EvaluationAcknowledgementSummary')
    EvaluationAcknowledgerCommentString = Shapes::StringShape.new(name: 'EvaluationAcknowledgerCommentString')
    EvaluationAnswerData = Shapes::UnionShape.new(name: 'EvaluationAnswerData')
    EvaluationAnswerDataNumericValue = Shapes::FloatShape.new(name: 'EvaluationAnswerDataNumericValue')
    EvaluationAnswerDataStringValue = Shapes::StringShape.new(name: 'EvaluationAnswerDataStringValue')
    EvaluationAnswerInput = Shapes::StructureShape.new(name: 'EvaluationAnswerInput')
    EvaluationAnswerOutput = Shapes::StructureShape.new(name: 'EvaluationAnswerOutput')
    EvaluationAnswersInputMap = Shapes::MapShape.new(name: 'EvaluationAnswersInputMap')
    EvaluationAnswersOutputMap = Shapes::MapShape.new(name: 'EvaluationAnswersOutputMap')
    EvaluationArn = Shapes::StringShape.new(name: 'EvaluationArn')
    EvaluationAutomationRuleCategory = Shapes::StructureShape.new(name: 'EvaluationAutomationRuleCategory')
    EvaluationAutomationRuleCategoryList = Shapes::ListShape.new(name: 'EvaluationAutomationRuleCategoryList')
    EvaluationContactLensAnswerAnalysisDetails = Shapes::StructureShape.new(name: 'EvaluationContactLensAnswerAnalysisDetails')
    EvaluationForm = Shapes::StructureShape.new(name: 'EvaluationForm')
    EvaluationFormAutoEvaluationConfiguration = Shapes::StructureShape.new(name: 'EvaluationFormAutoEvaluationConfiguration')
    EvaluationFormContent = Shapes::StructureShape.new(name: 'EvaluationFormContent')
    EvaluationFormDescription = Shapes::StringShape.new(name: 'EvaluationFormDescription')
    EvaluationFormId = Shapes::StringShape.new(name: 'EvaluationFormId')
    EvaluationFormItem = Shapes::UnionShape.new(name: 'EvaluationFormItem')
    EvaluationFormItemEnablementAction = Shapes::StringShape.new(name: 'EvaluationFormItemEnablementAction')
    EvaluationFormItemEnablementCondition = Shapes::StructureShape.new(name: 'EvaluationFormItemEnablementCondition')
    EvaluationFormItemEnablementConditionOperand = Shapes::UnionShape.new(name: 'EvaluationFormItemEnablementConditionOperand')
    EvaluationFormItemEnablementConditionOperandList = Shapes::ListShape.new(name: 'EvaluationFormItemEnablementConditionOperandList')
    EvaluationFormItemEnablementConfiguration = Shapes::StructureShape.new(name: 'EvaluationFormItemEnablementConfiguration')
    EvaluationFormItemEnablementExpression = Shapes::StructureShape.new(name: 'EvaluationFormItemEnablementExpression')
    EvaluationFormItemEnablementOperator = Shapes::StringShape.new(name: 'EvaluationFormItemEnablementOperator')
    EvaluationFormItemEnablementSource = Shapes::StructureShape.new(name: 'EvaluationFormItemEnablementSource')
    EvaluationFormItemEnablementSourceType = Shapes::StringShape.new(name: 'EvaluationFormItemEnablementSourceType')
    EvaluationFormItemEnablementSourceValue = Shapes::StructureShape.new(name: 'EvaluationFormItemEnablementSourceValue')
    EvaluationFormItemEnablementSourceValueList = Shapes::ListShape.new(name: 'EvaluationFormItemEnablementSourceValueList')
    EvaluationFormItemEnablementSourceValueType = Shapes::StringShape.new(name: 'EvaluationFormItemEnablementSourceValueType')
    EvaluationFormItemSourceValuesComparator = Shapes::StringShape.new(name: 'EvaluationFormItemSourceValuesComparator')
    EvaluationFormItemWeight = Shapes::FloatShape.new(name: 'EvaluationFormItemWeight')
    EvaluationFormItemsList = Shapes::ListShape.new(name: 'EvaluationFormItemsList')
    EvaluationFormNumericQuestionAutomation = Shapes::UnionShape.new(name: 'EvaluationFormNumericQuestionAutomation')
    EvaluationFormNumericQuestionOption = Shapes::StructureShape.new(name: 'EvaluationFormNumericQuestionOption')
    EvaluationFormNumericQuestionOptionList = Shapes::ListShape.new(name: 'EvaluationFormNumericQuestionOptionList')
    EvaluationFormNumericQuestionProperties = Shapes::StructureShape.new(name: 'EvaluationFormNumericQuestionProperties')
    EvaluationFormQuestion = Shapes::StructureShape.new(name: 'EvaluationFormQuestion')
    EvaluationFormQuestionAnswerScore = Shapes::IntegerShape.new(name: 'EvaluationFormQuestionAnswerScore')
    EvaluationFormQuestionAutomationAnswerSource = Shapes::StructureShape.new(name: 'EvaluationFormQuestionAutomationAnswerSource')
    EvaluationFormQuestionAutomationAnswerSourceType = Shapes::StringShape.new(name: 'EvaluationFormQuestionAutomationAnswerSourceType')
    EvaluationFormQuestionInstructions = Shapes::StringShape.new(name: 'EvaluationFormQuestionInstructions')
    EvaluationFormQuestionTitle = Shapes::StringShape.new(name: 'EvaluationFormQuestionTitle')
    EvaluationFormQuestionType = Shapes::StringShape.new(name: 'EvaluationFormQuestionType')
    EvaluationFormQuestionTypeProperties = Shapes::UnionShape.new(name: 'EvaluationFormQuestionTypeProperties')
    EvaluationFormScoringMode = Shapes::StringShape.new(name: 'EvaluationFormScoringMode')
    EvaluationFormScoringStatus = Shapes::StringShape.new(name: 'EvaluationFormScoringStatus')
    EvaluationFormScoringStrategy = Shapes::StructureShape.new(name: 'EvaluationFormScoringStrategy')
    EvaluationFormSearchConditionList = Shapes::ListShape.new(name: 'EvaluationFormSearchConditionList')
    EvaluationFormSearchCriteria = Shapes::StructureShape.new(name: 'EvaluationFormSearchCriteria')
    EvaluationFormSearchFilter = Shapes::StructureShape.new(name: 'EvaluationFormSearchFilter')
    EvaluationFormSearchSummary = Shapes::StructureShape.new(name: 'EvaluationFormSearchSummary')
    EvaluationFormSearchSummaryList = Shapes::ListShape.new(name: 'EvaluationFormSearchSummaryList')
    EvaluationFormSection = Shapes::StructureShape.new(name: 'EvaluationFormSection')
    EvaluationFormSectionTitle = Shapes::StringShape.new(name: 'EvaluationFormSectionTitle')
    EvaluationFormSingleSelectQuestionAutomation = Shapes::StructureShape.new(name: 'EvaluationFormSingleSelectQuestionAutomation')
    EvaluationFormSingleSelectQuestionAutomationOption = Shapes::UnionShape.new(name: 'EvaluationFormSingleSelectQuestionAutomationOption')
    EvaluationFormSingleSelectQuestionAutomationOptionList = Shapes::ListShape.new(name: 'EvaluationFormSingleSelectQuestionAutomationOptionList')
    EvaluationFormSingleSelectQuestionDisplayMode = Shapes::StringShape.new(name: 'EvaluationFormSingleSelectQuestionDisplayMode')
    EvaluationFormSingleSelectQuestionOption = Shapes::StructureShape.new(name: 'EvaluationFormSingleSelectQuestionOption')
    EvaluationFormSingleSelectQuestionOptionList = Shapes::ListShape.new(name: 'EvaluationFormSingleSelectQuestionOptionList')
    EvaluationFormSingleSelectQuestionOptionText = Shapes::StringShape.new(name: 'EvaluationFormSingleSelectQuestionOptionText')
    EvaluationFormSingleSelectQuestionProperties = Shapes::StructureShape.new(name: 'EvaluationFormSingleSelectQuestionProperties')
    EvaluationFormSummary = Shapes::StructureShape.new(name: 'EvaluationFormSummary')
    EvaluationFormSummaryList = Shapes::ListShape.new(name: 'EvaluationFormSummaryList')
    EvaluationFormTextQuestionAutomation = Shapes::StructureShape.new(name: 'EvaluationFormTextQuestionAutomation')
    EvaluationFormTextQuestionProperties = Shapes::StructureShape.new(name: 'EvaluationFormTextQuestionProperties')
    EvaluationFormTitle = Shapes::StringShape.new(name: 'EvaluationFormTitle')
    EvaluationFormVersionIsLocked = Shapes::BooleanShape.new(name: 'EvaluationFormVersionIsLocked')
    EvaluationFormVersionStatus = Shapes::StringShape.new(name: 'EvaluationFormVersionStatus')
    EvaluationFormVersionSummary = Shapes::StructureShape.new(name: 'EvaluationFormVersionSummary')
    EvaluationFormVersionSummaryList = Shapes::ListShape.new(name: 'EvaluationFormVersionSummaryList')
    EvaluationGenAIAnswerAnalysisDetails = Shapes::StructureShape.new(name: 'EvaluationGenAIAnswerAnalysisDetails')
    EvaluationId = Shapes::StringShape.new(name: 'EvaluationId')
    EvaluationMetadata = Shapes::StructureShape.new(name: 'EvaluationMetadata')
    EvaluationNote = Shapes::StructureShape.new(name: 'EvaluationNote')
    EvaluationNoteString = Shapes::StringShape.new(name: 'EvaluationNoteString')
    EvaluationNotesMap = Shapes::MapShape.new(name: 'EvaluationNotesMap')
    EvaluationQuestionAnswerAnalysisDetails = Shapes::UnionShape.new(name: 'EvaluationQuestionAnswerAnalysisDetails')
    EvaluationQuestionAnswerAnalysisType = Shapes::StringShape.new(name: 'EvaluationQuestionAnswerAnalysisType')
    EvaluationQuestionInputDetails = Shapes::StructureShape.new(name: 'EvaluationQuestionInputDetails')
    EvaluationScore = Shapes::StructureShape.new(name: 'EvaluationScore')
    EvaluationScorePercentage = Shapes::FloatShape.new(name: 'EvaluationScorePercentage')
    EvaluationScoresMap = Shapes::MapShape.new(name: 'EvaluationScoresMap')
    EvaluationSearchConditionList = Shapes::ListShape.new(name: 'EvaluationSearchConditionList')
    EvaluationSearchCriteria = Shapes::StructureShape.new(name: 'EvaluationSearchCriteria')
    EvaluationSearchFilter = Shapes::StructureShape.new(name: 'EvaluationSearchFilter')
    EvaluationSearchMetadata = Shapes::StructureShape.new(name: 'EvaluationSearchMetadata')
    EvaluationSearchSummary = Shapes::StructureShape.new(name: 'EvaluationSearchSummary')
    EvaluationSearchSummaryList = Shapes::ListShape.new(name: 'EvaluationSearchSummaryList')
    EvaluationStatus = Shapes::StringShape.new(name: 'EvaluationStatus')
    EvaluationSuggestedAnswer = Shapes::StructureShape.new(name: 'EvaluationSuggestedAnswer')
    EvaluationSuggestedAnswerJustification = Shapes::StringShape.new(name: 'EvaluationSuggestedAnswerJustification')
    EvaluationSuggestedAnswerStatus = Shapes::StringShape.new(name: 'EvaluationSuggestedAnswerStatus')
    EvaluationSuggestedAnswerTranscriptMillisOffset = Shapes::IntegerShape.new(name: 'EvaluationSuggestedAnswerTranscriptMillisOffset')
    EvaluationSuggestedAnswerTranscriptMillisecondOffsets = Shapes::StructureShape.new(name: 'EvaluationSuggestedAnswerTranscriptMillisecondOffsets')
    EvaluationSuggestedAnswerTranscriptSegment = Shapes::StringShape.new(name: 'EvaluationSuggestedAnswerTranscriptSegment')
    EvaluationSuggestedAnswersList = Shapes::ListShape.new(name: 'EvaluationSuggestedAnswersList')
    EvaluationSummary = Shapes::StructureShape.new(name: 'EvaluationSummary')
    EvaluationSummaryList = Shapes::ListShape.new(name: 'EvaluationSummaryList')
    EvaluationTranscriptPointOfInterest = Shapes::StructureShape.new(name: 'EvaluationTranscriptPointOfInterest')
    EvaluationTranscriptPointsOfInterest = Shapes::ListShape.new(name: 'EvaluationTranscriptPointsOfInterest')
    EvaluationTranscriptType = Shapes::StringShape.new(name: 'EvaluationTranscriptType')
    EvaluationType = Shapes::StringShape.new(name: 'EvaluationType')
    EvaluatorUserUnion = Shapes::UnionShape.new(name: 'EvaluatorUserUnion')
    EventBridgeActionDefinition = Shapes::StructureShape.new(name: 'EventBridgeActionDefinition')
    EventBridgeActionName = Shapes::StringShape.new(name: 'EventBridgeActionName')
    EventSourceName = Shapes::StringShape.new(name: 'EventSourceName')
    Expiry = Shapes::StructureShape.new(name: 'Expiry')
    ExpiryDurationInMinutes = Shapes::IntegerShape.new(name: 'ExpiryDurationInMinutes')
    ExportLocation = Shapes::StringShape.new(name: 'ExportLocation')
    Expression = Shapes::StructureShape.new(name: 'Expression')
    Expressions = Shapes::ListShape.new(name: 'Expressions')
    ExternalInvocationConfiguration = Shapes::StructureShape.new(name: 'ExternalInvocationConfiguration')
    FailedRequest = Shapes::StructureShape.new(name: 'FailedRequest')
    FailedRequestList = Shapes::ListShape.new(name: 'FailedRequestList')
    FailureReasonCode = Shapes::StringShape.new(name: 'FailureReasonCode')
    FieldStringValue = Shapes::StringShape.new(name: 'FieldStringValue')
    FieldValue = Shapes::StructureShape.new(name: 'FieldValue')
    FieldValueId = Shapes::StringShape.new(name: 'FieldValueId')
    FieldValueUnion = Shapes::StructureShape.new(name: 'FieldValueUnion')
    FieldValues = Shapes::ListShape.new(name: 'FieldValues')
    FileId = Shapes::StringShape.new(name: 'FileId')
    FileIdList = Shapes::ListShape.new(name: 'FileIdList')
    FileName = Shapes::StringShape.new(name: 'FileName')
    FileSizeInBytes = Shapes::IntegerShape.new(name: 'FileSizeInBytes')
    FileStatusType = Shapes::StringShape.new(name: 'FileStatusType')
    FileUseCaseType = Shapes::StringShape.new(name: 'FileUseCaseType')
    FilterV2 = Shapes::StructureShape.new(name: 'FilterV2')
    FilterValueList = Shapes::ListShape.new(name: 'FilterValueList')
    Filters = Shapes::StructureShape.new(name: 'Filters')
    FiltersV2List = Shapes::ListShape.new(name: 'FiltersV2List')
    FlowAssociationResourceType = Shapes::StringShape.new(name: 'FlowAssociationResourceType')
    FlowAssociationSummary = Shapes::StructureShape.new(name: 'FlowAssociationSummary')
    FlowAssociationSummaryList = Shapes::ListShape.new(name: 'FlowAssociationSummaryList')
    FlowContentSha256 = Shapes::StringShape.new(name: 'FlowContentSha256')
    FlowModuleContentSha256 = Shapes::StringShape.new(name: 'FlowModuleContentSha256')
    FlowModuleSettings = Shapes::StringShape.new(name: 'FlowModuleSettings')
    FormId = Shapes::StringShape.new(name: 'FormId')
    FragmentNumber = Shapes::StringShape.new(name: 'FragmentNumber')
    FunctionArn = Shapes::StringShape.new(name: 'FunctionArn')
    FunctionArnsList = Shapes::ListShape.new(name: 'FunctionArnsList')
    GetAttachedFileRequest = Shapes::StructureShape.new(name: 'GetAttachedFileRequest')
    GetAttachedFileResponse = Shapes::StructureShape.new(name: 'GetAttachedFileResponse')
    GetContactAttributesRequest = Shapes::StructureShape.new(name: 'GetContactAttributesRequest')
    GetContactAttributesResponse = Shapes::StructureShape.new(name: 'GetContactAttributesResponse')
    GetContactMetricsRequest = Shapes::StructureShape.new(name: 'GetContactMetricsRequest')
    GetContactMetricsResponse = Shapes::StructureShape.new(name: 'GetContactMetricsResponse')
    GetCurrentMetricDataRequest = Shapes::StructureShape.new(name: 'GetCurrentMetricDataRequest')
    GetCurrentMetricDataResponse = Shapes::StructureShape.new(name: 'GetCurrentMetricDataResponse')
    GetCurrentUserDataRequest = Shapes::StructureShape.new(name: 'GetCurrentUserDataRequest')
    GetCurrentUserDataResponse = Shapes::StructureShape.new(name: 'GetCurrentUserDataResponse')
    GetEffectiveHoursOfOperationsRequest = Shapes::StructureShape.new(name: 'GetEffectiveHoursOfOperationsRequest')
    GetEffectiveHoursOfOperationsResponse = Shapes::StructureShape.new(name: 'GetEffectiveHoursOfOperationsResponse')
    GetFederationTokenRequest = Shapes::StructureShape.new(name: 'GetFederationTokenRequest')
    GetFederationTokenResponse = Shapes::StructureShape.new(name: 'GetFederationTokenResponse')
    GetFlowAssociationRequest = Shapes::StructureShape.new(name: 'GetFlowAssociationRequest')
    GetFlowAssociationResponse = Shapes::StructureShape.new(name: 'GetFlowAssociationResponse')
    GetMetricDataRequest = Shapes::StructureShape.new(name: 'GetMetricDataRequest')
    GetMetricDataResponse = Shapes::StructureShape.new(name: 'GetMetricDataResponse')
    GetMetricDataV2Request = Shapes::StructureShape.new(name: 'GetMetricDataV2Request')
    GetMetricDataV2Response = Shapes::StructureShape.new(name: 'GetMetricDataV2Response')
    GetPromptFileRequest = Shapes::StructureShape.new(name: 'GetPromptFileRequest')
    GetPromptFileResponse = Shapes::StructureShape.new(name: 'GetPromptFileResponse')
    GetTaskTemplateRequest = Shapes::StructureShape.new(name: 'GetTaskTemplateRequest')
    GetTaskTemplateResponse = Shapes::StructureShape.new(name: 'GetTaskTemplateResponse')
    GetTrafficDistributionRequest = Shapes::StructureShape.new(name: 'GetTrafficDistributionRequest')
    GetTrafficDistributionResponse = Shapes::StructureShape.new(name: 'GetTrafficDistributionResponse')
    GlobalSignInEndpoint = Shapes::StringShape.new(name: 'GlobalSignInEndpoint')
    Grouping = Shapes::StringShape.new(name: 'Grouping')
    GroupingV2 = Shapes::StringShape.new(name: 'GroupingV2')
    Groupings = Shapes::ListShape.new(name: 'Groupings')
    GroupingsV2 = Shapes::ListShape.new(name: 'GroupingsV2')
    HierarchyGroup = Shapes::StructureShape.new(name: 'HierarchyGroup')
    HierarchyGroupCondition = Shapes::StructureShape.new(name: 'HierarchyGroupCondition')
    HierarchyGroupId = Shapes::StringShape.new(name: 'HierarchyGroupId')
    HierarchyGroupIdList = Shapes::ListShape.new(name: 'HierarchyGroupIdList')
    HierarchyGroupMatchType = Shapes::StringShape.new(name: 'HierarchyGroupMatchType')
    HierarchyGroupName = Shapes::StringShape.new(name: 'HierarchyGroupName')
    HierarchyGroupSummary = Shapes::StructureShape.new(name: 'HierarchyGroupSummary')
    HierarchyGroupSummaryList = Shapes::ListShape.new(name: 'HierarchyGroupSummaryList')
    HierarchyGroupSummaryReference = Shapes::StructureShape.new(name: 'HierarchyGroupSummaryReference')
    HierarchyGroups = Shapes::StructureShape.new(name: 'HierarchyGroups')
    HierarchyLevel = Shapes::StructureShape.new(name: 'HierarchyLevel')
    HierarchyLevelId = Shapes::StringShape.new(name: 'HierarchyLevelId')
    HierarchyLevelName = Shapes::StringShape.new(name: 'HierarchyLevelName')
    HierarchyLevelUpdate = Shapes::StructureShape.new(name: 'HierarchyLevelUpdate')
    HierarchyPath = Shapes::StructureShape.new(name: 'HierarchyPath')
    HierarchyPathReference = Shapes::StructureShape.new(name: 'HierarchyPathReference')
    HierarchyRestrictedResourceList = Shapes::ListShape.new(name: 'HierarchyRestrictedResourceList')
    HierarchyRestrictedResourceName = Shapes::StringShape.new(name: 'HierarchyRestrictedResourceName')
    HierarchyStructure = Shapes::StructureShape.new(name: 'HierarchyStructure')
    HierarchyStructureUpdate = Shapes::StructureShape.new(name: 'HierarchyStructureUpdate')
    HistoricalMetric = Shapes::StructureShape.new(name: 'HistoricalMetric')
    HistoricalMetricData = Shapes::StructureShape.new(name: 'HistoricalMetricData')
    HistoricalMetricDataCollections = Shapes::ListShape.new(name: 'HistoricalMetricDataCollections')
    HistoricalMetricName = Shapes::StringShape.new(name: 'HistoricalMetricName')
    HistoricalMetricResult = Shapes::StructureShape.new(name: 'HistoricalMetricResult')
    HistoricalMetricResults = Shapes::ListShape.new(name: 'HistoricalMetricResults')
    HistoricalMetrics = Shapes::ListShape.new(name: 'HistoricalMetrics')
    Hours = Shapes::IntegerShape.new(name: 'Hours')
    Hours24Format = Shapes::IntegerShape.new(name: 'Hours24Format')
    HoursOfOperation = Shapes::StructureShape.new(name: 'HoursOfOperation')
    HoursOfOperationConfig = Shapes::StructureShape.new(name: 'HoursOfOperationConfig')
    HoursOfOperationConfigList = Shapes::ListShape.new(name: 'HoursOfOperationConfigList')
    HoursOfOperationDays = Shapes::StringShape.new(name: 'HoursOfOperationDays')
    HoursOfOperationDescription = Shapes::StringShape.new(name: 'HoursOfOperationDescription')
    HoursOfOperationId = Shapes::StringShape.new(name: 'HoursOfOperationId')
    HoursOfOperationList = Shapes::ListShape.new(name: 'HoursOfOperationList')
    HoursOfOperationName = Shapes::StringShape.new(name: 'HoursOfOperationName')
    HoursOfOperationOverride = Shapes::StructureShape.new(name: 'HoursOfOperationOverride')
    HoursOfOperationOverrideConfig = Shapes::StructureShape.new(name: 'HoursOfOperationOverrideConfig')
    HoursOfOperationOverrideConfigList = Shapes::ListShape.new(name: 'HoursOfOperationOverrideConfigList')
    HoursOfOperationOverrideId = Shapes::StringShape.new(name: 'HoursOfOperationOverrideId')
    HoursOfOperationOverrideList = Shapes::ListShape.new(name: 'HoursOfOperationOverrideList')
    HoursOfOperationOverrideSearchConditionList = Shapes::ListShape.new(name: 'HoursOfOperationOverrideSearchConditionList')
    HoursOfOperationOverrideSearchCriteria = Shapes::StructureShape.new(name: 'HoursOfOperationOverrideSearchCriteria')
    HoursOfOperationOverrideYearMonthDayDateFormat = Shapes::StringShape.new(name: 'HoursOfOperationOverrideYearMonthDayDateFormat')
    HoursOfOperationSearchConditionList = Shapes::ListShape.new(name: 'HoursOfOperationSearchConditionList')
    HoursOfOperationSearchCriteria = Shapes::StructureShape.new(name: 'HoursOfOperationSearchCriteria')
    HoursOfOperationSearchFilter = Shapes::StructureShape.new(name: 'HoursOfOperationSearchFilter')
    HoursOfOperationSummary = Shapes::StructureShape.new(name: 'HoursOfOperationSummary')
    HoursOfOperationSummaryList = Shapes::ListShape.new(name: 'HoursOfOperationSummaryList')
    HoursOfOperationTimeSlice = Shapes::StructureShape.new(name: 'HoursOfOperationTimeSlice')
    ISO8601Datetime = Shapes::StringShape.new(name: 'ISO8601Datetime')
    IdempotencyException = Shapes::StructureShape.new(name: 'IdempotencyException')
    ImportPhoneNumberRequest = Shapes::StructureShape.new(name: 'ImportPhoneNumberRequest')
    ImportPhoneNumberResponse = Shapes::StructureShape.new(name: 'ImportPhoneNumberResponse')
    InactivityDuration = Shapes::IntegerShape.new(name: 'InactivityDuration')
    InboundAdditionalRecipients = Shapes::StructureShape.new(name: 'InboundAdditionalRecipients')
    InboundCallsEnabled = Shapes::BooleanShape.new(name: 'InboundCallsEnabled')
    InboundEmailContent = Shapes::StructureShape.new(name: 'InboundEmailContent')
    InboundMessageSourceType = Shapes::StringShape.new(name: 'InboundMessageSourceType')
    InboundRawMessage = Shapes::StructureShape.new(name: 'InboundRawMessage')
    InboundSubject = Shapes::StringShape.new(name: 'InboundSubject')
    IncludeRawMessage = Shapes::BooleanShape.new(name: 'IncludeRawMessage')
    Index = Shapes::IntegerShape.new(name: 'Index')
    InitiateAs = Shapes::StringShape.new(name: 'InitiateAs')
    InitiationMethodList = Shapes::ListShape.new(name: 'InitiationMethodList')
    InputPredefinedAttributeConfiguration = Shapes::StructureShape.new(name: 'InputPredefinedAttributeConfiguration')
    Instance = Shapes::StructureShape.new(name: 'Instance')
    InstanceArn = Shapes::StringShape.new(name: 'InstanceArn')
    InstanceAttributeType = Shapes::StringShape.new(name: 'InstanceAttributeType')
    InstanceAttributeValue = Shapes::StringShape.new(name: 'InstanceAttributeValue')
    InstanceId = Shapes::StringShape.new(name: 'InstanceId')
    InstanceIdOrArn = Shapes::StringShape.new(name: 'InstanceIdOrArn')
    InstanceReplicationStatus = Shapes::StringShape.new(name: 'InstanceReplicationStatus')
    InstanceStatus = Shapes::StringShape.new(name: 'InstanceStatus')
    InstanceStatusReason = Shapes::StructureShape.new(name: 'InstanceStatusReason')
    InstanceStorageConfig = Shapes::StructureShape.new(name: 'InstanceStorageConfig')
    InstanceStorageConfigs = Shapes::ListShape.new(name: 'InstanceStorageConfigs')
    InstanceStorageResourceType = Shapes::StringShape.new(name: 'InstanceStorageResourceType')
    InstanceSummary = Shapes::StructureShape.new(name: 'InstanceSummary')
    InstanceSummaryList = Shapes::ListShape.new(name: 'InstanceSummaryList')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerCount = Shapes::IntegerShape.new(name: 'IntegerCount')
    IntegrationAssociationId = Shapes::StringShape.new(name: 'IntegrationAssociationId')
    IntegrationAssociationSummary = Shapes::StructureShape.new(name: 'IntegrationAssociationSummary')
    IntegrationAssociationSummaryList = Shapes::ListShape.new(name: 'IntegrationAssociationSummaryList')
    IntegrationType = Shapes::StringShape.new(name: 'IntegrationType')
    InternalServiceException = Shapes::StructureShape.new(name: 'InternalServiceException')
    IntervalDetails = Shapes::StructureShape.new(name: 'IntervalDetails')
    IntervalPeriod = Shapes::StringShape.new(name: 'IntervalPeriod')
    InvalidContactFlowException = Shapes::StructureShape.new(name: 'InvalidContactFlowException')
    InvalidContactFlowModuleException = Shapes::StructureShape.new(name: 'InvalidContactFlowModuleException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    InvalidRequestExceptionReason = Shapes::UnionShape.new(name: 'InvalidRequestExceptionReason')
    InvisibleFieldInfo = Shapes::StructureShape.new(name: 'InvisibleFieldInfo')
    InvisibleTaskTemplateFields = Shapes::ListShape.new(name: 'InvisibleTaskTemplateFields')
    IpCidr = Shapes::StringShape.new(name: 'IpCidr')
    IpCidrList = Shapes::ListShape.new(name: 'IpCidrList')
    IsReadOnly = Shapes::BooleanShape.new(name: 'IsReadOnly')
    IvrRecordingTrack = Shapes::StringShape.new(name: 'IvrRecordingTrack')
    JoinToken = Shapes::StringShape.new(name: 'JoinToken')
    KeyId = Shapes::StringShape.new(name: 'KeyId')
    KinesisFirehoseConfig = Shapes::StructureShape.new(name: 'KinesisFirehoseConfig')
    KinesisStreamConfig = Shapes::StructureShape.new(name: 'KinesisStreamConfig')
    KinesisVideoStreamConfig = Shapes::StructureShape.new(name: 'KinesisVideoStreamConfig')
    LargeNextToken = Shapes::StringShape.new(name: 'LargeNextToken')
    LexBot = Shapes::StructureShape.new(name: 'LexBot')
    LexBotConfig = Shapes::StructureShape.new(name: 'LexBotConfig')
    LexBotConfigList = Shapes::ListShape.new(name: 'LexBotConfigList')
    LexBotsList = Shapes::ListShape.new(name: 'LexBotsList')
    LexRegion = Shapes::StringShape.new(name: 'LexRegion')
    LexV2Bot = Shapes::StructureShape.new(name: 'LexV2Bot')
    LexVersion = Shapes::StringShape.new(name: 'LexVersion')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListAgentStatusRequest = Shapes::StructureShape.new(name: 'ListAgentStatusRequest')
    ListAgentStatusResponse = Shapes::StructureShape.new(name: 'ListAgentStatusResponse')
    ListAnalyticsDataAssociationsRequest = Shapes::StructureShape.new(name: 'ListAnalyticsDataAssociationsRequest')
    ListAnalyticsDataAssociationsResponse = Shapes::StructureShape.new(name: 'ListAnalyticsDataAssociationsResponse')
    ListAnalyticsDataLakeDataSetsRequest = Shapes::StructureShape.new(name: 'ListAnalyticsDataLakeDataSetsRequest')
    ListAnalyticsDataLakeDataSetsResponse = Shapes::StructureShape.new(name: 'ListAnalyticsDataLakeDataSetsResponse')
    ListApprovedOriginsRequest = Shapes::StructureShape.new(name: 'ListApprovedOriginsRequest')
    ListApprovedOriginsResponse = Shapes::StructureShape.new(name: 'ListApprovedOriginsResponse')
    ListAssociatedContactsRequest = Shapes::StructureShape.new(name: 'ListAssociatedContactsRequest')
    ListAssociatedContactsRequestMaxResults = Shapes::IntegerShape.new(name: 'ListAssociatedContactsRequestMaxResults')
    ListAssociatedContactsResponse = Shapes::StructureShape.new(name: 'ListAssociatedContactsResponse')
    ListAuthenticationProfilesRequest = Shapes::StructureShape.new(name: 'ListAuthenticationProfilesRequest')
    ListAuthenticationProfilesResponse = Shapes::StructureShape.new(name: 'ListAuthenticationProfilesResponse')
    ListBotsRequest = Shapes::StructureShape.new(name: 'ListBotsRequest')
    ListBotsResponse = Shapes::StructureShape.new(name: 'ListBotsResponse')
    ListCondition = Shapes::StructureShape.new(name: 'ListCondition')
    ListContactEvaluationsRequest = Shapes::StructureShape.new(name: 'ListContactEvaluationsRequest')
    ListContactEvaluationsResponse = Shapes::StructureShape.new(name: 'ListContactEvaluationsResponse')
    ListContactFlowModuleAliasesRequest = Shapes::StructureShape.new(name: 'ListContactFlowModuleAliasesRequest')
    ListContactFlowModuleAliasesResponse = Shapes::StructureShape.new(name: 'ListContactFlowModuleAliasesResponse')
    ListContactFlowModuleVersionsRequest = Shapes::StructureShape.new(name: 'ListContactFlowModuleVersionsRequest')
    ListContactFlowModuleVersionsResponse = Shapes::StructureShape.new(name: 'ListContactFlowModuleVersionsResponse')
    ListContactFlowModulesRequest = Shapes::StructureShape.new(name: 'ListContactFlowModulesRequest')
    ListContactFlowModulesResponse = Shapes::StructureShape.new(name: 'ListContactFlowModulesResponse')
    ListContactFlowVersionsRequest = Shapes::StructureShape.new(name: 'ListContactFlowVersionsRequest')
    ListContactFlowVersionsResponse = Shapes::StructureShape.new(name: 'ListContactFlowVersionsResponse')
    ListContactFlowsRequest = Shapes::StructureShape.new(name: 'ListContactFlowsRequest')
    ListContactFlowsResponse = Shapes::StructureShape.new(name: 'ListContactFlowsResponse')
    ListContactReferencesRequest = Shapes::StructureShape.new(name: 'ListContactReferencesRequest')
    ListContactReferencesResponse = Shapes::StructureShape.new(name: 'ListContactReferencesResponse')
    ListDefaultVocabulariesRequest = Shapes::StructureShape.new(name: 'ListDefaultVocabulariesRequest')
    ListDefaultVocabulariesResponse = Shapes::StructureShape.new(name: 'ListDefaultVocabulariesResponse')
    ListEvaluationFormVersionsRequest = Shapes::StructureShape.new(name: 'ListEvaluationFormVersionsRequest')
    ListEvaluationFormVersionsResponse = Shapes::StructureShape.new(name: 'ListEvaluationFormVersionsResponse')
    ListEvaluationFormsRequest = Shapes::StructureShape.new(name: 'ListEvaluationFormsRequest')
    ListEvaluationFormsResponse = Shapes::StructureShape.new(name: 'ListEvaluationFormsResponse')
    ListFlowAssociationResourceType = Shapes::StringShape.new(name: 'ListFlowAssociationResourceType')
    ListFlowAssociationsRequest = Shapes::StructureShape.new(name: 'ListFlowAssociationsRequest')
    ListFlowAssociationsResponse = Shapes::StructureShape.new(name: 'ListFlowAssociationsResponse')
    ListHoursOfOperationOverridesRequest = Shapes::StructureShape.new(name: 'ListHoursOfOperationOverridesRequest')
    ListHoursOfOperationOverridesResponse = Shapes::StructureShape.new(name: 'ListHoursOfOperationOverridesResponse')
    ListHoursOfOperationsRequest = Shapes::StructureShape.new(name: 'ListHoursOfOperationsRequest')
    ListHoursOfOperationsResponse = Shapes::StructureShape.new(name: 'ListHoursOfOperationsResponse')
    ListInstanceAttributesRequest = Shapes::StructureShape.new(name: 'ListInstanceAttributesRequest')
    ListInstanceAttributesResponse = Shapes::StructureShape.new(name: 'ListInstanceAttributesResponse')
    ListInstanceStorageConfigsRequest = Shapes::StructureShape.new(name: 'ListInstanceStorageConfigsRequest')
    ListInstanceStorageConfigsResponse = Shapes::StructureShape.new(name: 'ListInstanceStorageConfigsResponse')
    ListInstancesRequest = Shapes::StructureShape.new(name: 'ListInstancesRequest')
    ListInstancesResponse = Shapes::StructureShape.new(name: 'ListInstancesResponse')
    ListIntegrationAssociationsRequest = Shapes::StructureShape.new(name: 'ListIntegrationAssociationsRequest')
    ListIntegrationAssociationsResponse = Shapes::StructureShape.new(name: 'ListIntegrationAssociationsResponse')
    ListLambdaFunctionsRequest = Shapes::StructureShape.new(name: 'ListLambdaFunctionsRequest')
    ListLambdaFunctionsResponse = Shapes::StructureShape.new(name: 'ListLambdaFunctionsResponse')
    ListLexBotsRequest = Shapes::StructureShape.new(name: 'ListLexBotsRequest')
    ListLexBotsResponse = Shapes::StructureShape.new(name: 'ListLexBotsResponse')
    ListPhoneNumbersRequest = Shapes::StructureShape.new(name: 'ListPhoneNumbersRequest')
    ListPhoneNumbersResponse = Shapes::StructureShape.new(name: 'ListPhoneNumbersResponse')
    ListPhoneNumbersSummary = Shapes::StructureShape.new(name: 'ListPhoneNumbersSummary')
    ListPhoneNumbersSummaryList = Shapes::ListShape.new(name: 'ListPhoneNumbersSummaryList')
    ListPhoneNumbersV2Request = Shapes::StructureShape.new(name: 'ListPhoneNumbersV2Request')
    ListPhoneNumbersV2Response = Shapes::StructureShape.new(name: 'ListPhoneNumbersV2Response')
    ListPredefinedAttributesRequest = Shapes::StructureShape.new(name: 'ListPredefinedAttributesRequest')
    ListPredefinedAttributesResponse = Shapes::StructureShape.new(name: 'ListPredefinedAttributesResponse')
    ListPromptsRequest = Shapes::StructureShape.new(name: 'ListPromptsRequest')
    ListPromptsResponse = Shapes::StructureShape.new(name: 'ListPromptsResponse')
    ListQueueQuickConnectsRequest = Shapes::StructureShape.new(name: 'ListQueueQuickConnectsRequest')
    ListQueueQuickConnectsResponse = Shapes::StructureShape.new(name: 'ListQueueQuickConnectsResponse')
    ListQueuesRequest = Shapes::StructureShape.new(name: 'ListQueuesRequest')
    ListQueuesResponse = Shapes::StructureShape.new(name: 'ListQueuesResponse')
    ListQuickConnectsRequest = Shapes::StructureShape.new(name: 'ListQuickConnectsRequest')
    ListQuickConnectsResponse = Shapes::StructureShape.new(name: 'ListQuickConnectsResponse')
    ListRealtimeContactAnalysisSegmentsV2Request = Shapes::StructureShape.new(name: 'ListRealtimeContactAnalysisSegmentsV2Request')
    ListRealtimeContactAnalysisSegmentsV2Response = Shapes::StructureShape.new(name: 'ListRealtimeContactAnalysisSegmentsV2Response')
    ListRoutingProfileManualAssignmentQueuesRequest = Shapes::StructureShape.new(name: 'ListRoutingProfileManualAssignmentQueuesRequest')
    ListRoutingProfileManualAssignmentQueuesResponse = Shapes::StructureShape.new(name: 'ListRoutingProfileManualAssignmentQueuesResponse')
    ListRoutingProfileQueuesRequest = Shapes::StructureShape.new(name: 'ListRoutingProfileQueuesRequest')
    ListRoutingProfileQueuesResponse = Shapes::StructureShape.new(name: 'ListRoutingProfileQueuesResponse')
    ListRoutingProfilesRequest = Shapes::StructureShape.new(name: 'ListRoutingProfilesRequest')
    ListRoutingProfilesResponse = Shapes::StructureShape.new(name: 'ListRoutingProfilesResponse')
    ListRulesRequest = Shapes::StructureShape.new(name: 'ListRulesRequest')
    ListRulesResponse = Shapes::StructureShape.new(name: 'ListRulesResponse')
    ListSecurityKeysRequest = Shapes::StructureShape.new(name: 'ListSecurityKeysRequest')
    ListSecurityKeysResponse = Shapes::StructureShape.new(name: 'ListSecurityKeysResponse')
    ListSecurityProfileApplicationsRequest = Shapes::StructureShape.new(name: 'ListSecurityProfileApplicationsRequest')
    ListSecurityProfileApplicationsResponse = Shapes::StructureShape.new(name: 'ListSecurityProfileApplicationsResponse')
    ListSecurityProfilePermissionsRequest = Shapes::StructureShape.new(name: 'ListSecurityProfilePermissionsRequest')
    ListSecurityProfilePermissionsResponse = Shapes::StructureShape.new(name: 'ListSecurityProfilePermissionsResponse')
    ListSecurityProfilesRequest = Shapes::StructureShape.new(name: 'ListSecurityProfilesRequest')
    ListSecurityProfilesResponse = Shapes::StructureShape.new(name: 'ListSecurityProfilesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTaskTemplatesRequest = Shapes::StructureShape.new(name: 'ListTaskTemplatesRequest')
    ListTaskTemplatesResponse = Shapes::StructureShape.new(name: 'ListTaskTemplatesResponse')
    ListTrafficDistributionGroupUsersRequest = Shapes::StructureShape.new(name: 'ListTrafficDistributionGroupUsersRequest')
    ListTrafficDistributionGroupUsersResponse = Shapes::StructureShape.new(name: 'ListTrafficDistributionGroupUsersResponse')
    ListTrafficDistributionGroupsRequest = Shapes::StructureShape.new(name: 'ListTrafficDistributionGroupsRequest')
    ListTrafficDistributionGroupsResponse = Shapes::StructureShape.new(name: 'ListTrafficDistributionGroupsResponse')
    ListUseCasesRequest = Shapes::StructureShape.new(name: 'ListUseCasesRequest')
    ListUseCasesResponse = Shapes::StructureShape.new(name: 'ListUseCasesResponse')
    ListUserHierarchyGroupsRequest = Shapes::StructureShape.new(name: 'ListUserHierarchyGroupsRequest')
    ListUserHierarchyGroupsResponse = Shapes::StructureShape.new(name: 'ListUserHierarchyGroupsResponse')
    ListUserProficienciesRequest = Shapes::StructureShape.new(name: 'ListUserProficienciesRequest')
    ListUserProficienciesResponse = Shapes::StructureShape.new(name: 'ListUserProficienciesResponse')
    ListUsersRequest = Shapes::StructureShape.new(name: 'ListUsersRequest')
    ListUsersResponse = Shapes::StructureShape.new(name: 'ListUsersResponse')
    ListViewVersionsRequest = Shapes::StructureShape.new(name: 'ListViewVersionsRequest')
    ListViewVersionsResponse = Shapes::StructureShape.new(name: 'ListViewVersionsResponse')
    ListViewsRequest = Shapes::StructureShape.new(name: 'ListViewsRequest')
    ListViewsResponse = Shapes::StructureShape.new(name: 'ListViewsResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MatchCriteria = Shapes::StructureShape.new(name: 'MatchCriteria')
    MaxResult10 = Shapes::IntegerShape.new(name: 'MaxResult10')
    MaxResult100 = Shapes::IntegerShape.new(name: 'MaxResult100')
    MaxResult1000 = Shapes::IntegerShape.new(name: 'MaxResult1000')
    MaxResult2 = Shapes::IntegerShape.new(name: 'MaxResult2')
    MaxResult200 = Shapes::IntegerShape.new(name: 'MaxResult200')
    MaxResult25 = Shapes::IntegerShape.new(name: 'MaxResult25')
    MaxResult500 = Shapes::IntegerShape.new(name: 'MaxResult500')
    MaxResult7 = Shapes::IntegerShape.new(name: 'MaxResult7')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaximumResultReturnedException = Shapes::StructureShape.new(name: 'MaximumResultReturnedException')
    MediaConcurrencies = Shapes::ListShape.new(name: 'MediaConcurrencies')
    MediaConcurrency = Shapes::StructureShape.new(name: 'MediaConcurrency')
    MediaPlacement = Shapes::StructureShape.new(name: 'MediaPlacement')
    MediaRegion = Shapes::StringShape.new(name: 'MediaRegion')
    MediaStreamType = Shapes::StringShape.new(name: 'MediaStreamType')
    Meeting = Shapes::StructureShape.new(name: 'Meeting')
    MeetingFeatureStatus = Shapes::StringShape.new(name: 'MeetingFeatureStatus')
    MeetingFeaturesConfiguration = Shapes::StructureShape.new(name: 'MeetingFeaturesConfiguration')
    MeetingId = Shapes::StringShape.new(name: 'MeetingId')
    Message = Shapes::StringShape.new(name: 'Message')
    MessageTemplateId = Shapes::StringShape.new(name: 'MessageTemplateId')
    MessageTemplateKnowledgeBaseId = Shapes::StringShape.new(name: 'MessageTemplateKnowledgeBaseId')
    MetadataUrl = Shapes::StringShape.new(name: 'MetadataUrl')
    MetricDataCollectionsV2 = Shapes::ListShape.new(name: 'MetricDataCollectionsV2')
    MetricDataV2 = Shapes::StructureShape.new(name: 'MetricDataV2')
    MetricFilterV2 = Shapes::StructureShape.new(name: 'MetricFilterV2')
    MetricFilterValueList = Shapes::ListShape.new(name: 'MetricFilterValueList')
    MetricFiltersV2List = Shapes::ListShape.new(name: 'MetricFiltersV2List')
    MetricInterval = Shapes::StructureShape.new(name: 'MetricInterval')
    MetricNameV2 = Shapes::StringShape.new(name: 'MetricNameV2')
    MetricResultV2 = Shapes::StructureShape.new(name: 'MetricResultV2')
    MetricResultsV2 = Shapes::ListShape.new(name: 'MetricResultsV2')
    MetricV2 = Shapes::StructureShape.new(name: 'MetricV2')
    MetricsV2 = Shapes::ListShape.new(name: 'MetricsV2')
    MinutesLimit60 = Shapes::IntegerShape.new(name: 'MinutesLimit60')
    MonitorCapability = Shapes::StringShape.new(name: 'MonitorCapability')
    MonitorContactRequest = Shapes::StructureShape.new(name: 'MonitorContactRequest')
    MonitorContactResponse = Shapes::StructureShape.new(name: 'MonitorContactResponse')
    Name = Shapes::StringShape.new(name: 'Name')
    Name128 = Shapes::StringShape.new(name: 'Name128')
    NameCriteria = Shapes::StructureShape.new(name: 'NameCriteria')
    Namespace = Shapes::StringShape.new(name: 'Namespace')
    NewChatCreated = Shapes::BooleanShape.new(name: 'NewChatCreated')
    NewSessionDetails = Shapes::StructureShape.new(name: 'NewSessionDetails')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NextToken2500 = Shapes::StringShape.new(name: 'NextToken2500')
    NotificationContentType = Shapes::StringShape.new(name: 'NotificationContentType')
    NotificationDeliveryType = Shapes::StringShape.new(name: 'NotificationDeliveryType')
    NotificationRecipientType = Shapes::StructureShape.new(name: 'NotificationRecipientType')
    NullableBoolean = Shapes::BooleanShape.new(name: 'NullableBoolean')
    NullableDouble = Shapes::FloatShape.new(name: 'NullableDouble')
    NullableProficiencyLevel = Shapes::FloatShape.new(name: 'NullableProficiencyLevel')
    NullableProficiencyLimitValue = Shapes::IntegerShape.new(name: 'NullableProficiencyLimitValue')
    NumberComparisonType = Shapes::StringShape.new(name: 'NumberComparisonType')
    NumberCondition = Shapes::StructureShape.new(name: 'NumberCondition')
    NumberReference = Shapes::StructureShape.new(name: 'NumberReference')
    NumericQuestionPropertyAutomationLabel = Shapes::StringShape.new(name: 'NumericQuestionPropertyAutomationLabel')
    NumericQuestionPropertyValueAutomation = Shapes::StructureShape.new(name: 'NumericQuestionPropertyValueAutomation')
    OperatingSystem = Shapes::StringShape.new(name: 'OperatingSystem')
    OperationalHour = Shapes::StructureShape.new(name: 'OperationalHour')
    OperationalHours = Shapes::ListShape.new(name: 'OperationalHours')
    Origin = Shapes::StringShape.new(name: 'Origin')
    OriginsList = Shapes::ListShape.new(name: 'OriginsList')
    OutboundAdditionalRecipients = Shapes::StructureShape.new(name: 'OutboundAdditionalRecipients')
    OutboundCallerConfig = Shapes::StructureShape.new(name: 'OutboundCallerConfig')
    OutboundCallerIdName = Shapes::StringShape.new(name: 'OutboundCallerIdName')
    OutboundCallsEnabled = Shapes::BooleanShape.new(name: 'OutboundCallsEnabled')
    OutboundContactNotPermittedException = Shapes::StructureShape.new(name: 'OutboundContactNotPermittedException')
    OutboundEmailConfig = Shapes::StructureShape.new(name: 'OutboundEmailConfig')
    OutboundEmailContent = Shapes::StructureShape.new(name: 'OutboundEmailContent')
    OutboundMessageSourceType = Shapes::StringShape.new(name: 'OutboundMessageSourceType')
    OutboundRawMessage = Shapes::StructureShape.new(name: 'OutboundRawMessage')
    OutboundRequestId = Shapes::StringShape.new(name: 'OutboundRequestId')
    OutboundStrategy = Shapes::StructureShape.new(name: 'OutboundStrategy')
    OutboundStrategyConfig = Shapes::StructureShape.new(name: 'OutboundStrategyConfig')
    OutboundStrategyType = Shapes::StringShape.new(name: 'OutboundStrategyType')
    OutboundSubject = Shapes::StringShape.new(name: 'OutboundSubject')
    OutputTypeNotFoundException = Shapes::StructureShape.new(name: 'OutputTypeNotFoundException')
    OverrideDays = Shapes::StringShape.new(name: 'OverrideDays')
    OverrideTimeSlice = Shapes::StructureShape.new(name: 'OverrideTimeSlice')
    PEM = Shapes::StringShape.new(name: 'PEM')
    ParticipantCapabilities = Shapes::StructureShape.new(name: 'ParticipantCapabilities')
    ParticipantDetails = Shapes::StructureShape.new(name: 'ParticipantDetails')
    ParticipantDetailsToAdd = Shapes::StructureShape.new(name: 'ParticipantDetailsToAdd')
    ParticipantId = Shapes::StringShape.new(name: 'ParticipantId')
    ParticipantMetrics = Shapes::StructureShape.new(name: 'ParticipantMetrics')
    ParticipantRole = Shapes::StringShape.new(name: 'ParticipantRole')
    ParticipantState = Shapes::StringShape.new(name: 'ParticipantState')
    ParticipantTimerAction = Shapes::StringShape.new(name: 'ParticipantTimerAction')
    ParticipantTimerConfigList = Shapes::ListShape.new(name: 'ParticipantTimerConfigList')
    ParticipantTimerConfiguration = Shapes::StructureShape.new(name: 'ParticipantTimerConfiguration')
    ParticipantTimerDurationInMinutes = Shapes::IntegerShape.new(name: 'ParticipantTimerDurationInMinutes')
    ParticipantTimerType = Shapes::StringShape.new(name: 'ParticipantTimerType')
    ParticipantTimerValue = Shapes::UnionShape.new(name: 'ParticipantTimerValue')
    ParticipantToken = Shapes::StringShape.new(name: 'ParticipantToken')
    ParticipantTokenCredentials = Shapes::StructureShape.new(name: 'ParticipantTokenCredentials')
    ParticipantType = Shapes::StringShape.new(name: 'ParticipantType')
    Password = Shapes::StringShape.new(name: 'Password')
    PauseContactRequest = Shapes::StructureShape.new(name: 'PauseContactRequest')
    PauseContactResponse = Shapes::StructureShape.new(name: 'PauseContactResponse')
    Percentage = Shapes::IntegerShape.new(name: 'Percentage')
    Permission = Shapes::StringShape.new(name: 'Permission')
    PermissionsList = Shapes::ListShape.new(name: 'PermissionsList')
    PersistentChat = Shapes::StructureShape.new(name: 'PersistentChat')
    PersistentConnection = Shapes::BooleanShape.new(name: 'PersistentConnection')
    PhoneNumber = Shapes::StringShape.new(name: 'PhoneNumber')
    PhoneNumberCountryCode = Shapes::StringShape.new(name: 'PhoneNumberCountryCode')
    PhoneNumberCountryCodes = Shapes::ListShape.new(name: 'PhoneNumberCountryCodes')
    PhoneNumberDescription = Shapes::StringShape.new(name: 'PhoneNumberDescription')
    PhoneNumberId = Shapes::StringShape.new(name: 'PhoneNumberId')
    PhoneNumberPrefix = Shapes::StringShape.new(name: 'PhoneNumberPrefix')
    PhoneNumberQuickConnectConfig = Shapes::StructureShape.new(name: 'PhoneNumberQuickConnectConfig')
    PhoneNumberStatus = Shapes::StructureShape.new(name: 'PhoneNumberStatus')
    PhoneNumberSummary = Shapes::StructureShape.new(name: 'PhoneNumberSummary')
    PhoneNumberSummaryList = Shapes::ListShape.new(name: 'PhoneNumberSummaryList')
    PhoneNumberType = Shapes::StringShape.new(name: 'PhoneNumberType')
    PhoneNumberTypes = Shapes::ListShape.new(name: 'PhoneNumberTypes')
    PhoneNumberWorkflowMessage = Shapes::StringShape.new(name: 'PhoneNumberWorkflowMessage')
    PhoneNumberWorkflowStatus = Shapes::StringShape.new(name: 'PhoneNumberWorkflowStatus')
    PhoneType = Shapes::StringShape.new(name: 'PhoneType')
    PlatformName = Shapes::StringShape.new(name: 'PlatformName')
    PlatformVersion = Shapes::StringShape.new(name: 'PlatformVersion')
    PostAcceptPreviewTimeoutDurationInSeconds = Shapes::IntegerShape.new(name: 'PostAcceptPreviewTimeoutDurationInSeconds')
    PostAcceptTimeoutConfig = Shapes::StructureShape.new(name: 'PostAcceptTimeoutConfig')
    PotentialAudioQualityIssue = Shapes::StringShape.new(name: 'PotentialAudioQualityIssue')
    PotentialAudioQualityIssues = Shapes::ListShape.new(name: 'PotentialAudioQualityIssues')
    PotentialDisconnectIssue = Shapes::StringShape.new(name: 'PotentialDisconnectIssue')
    PreSignedAttachmentUrl = Shapes::StringShape.new(name: 'PreSignedAttachmentUrl')
    PredefinedAttribute = Shapes::StructureShape.new(name: 'PredefinedAttribute')
    PredefinedAttributeConfiguration = Shapes::StructureShape.new(name: 'PredefinedAttributeConfiguration')
    PredefinedAttributeName = Shapes::StringShape.new(name: 'PredefinedAttributeName')
    PredefinedAttributePurposeName = Shapes::StringShape.new(name: 'PredefinedAttributePurposeName')
    PredefinedAttributePurposeNameList = Shapes::ListShape.new(name: 'PredefinedAttributePurposeNameList')
    PredefinedAttributeSearchConditionList = Shapes::ListShape.new(name: 'PredefinedAttributeSearchConditionList')
    PredefinedAttributeSearchCriteria = Shapes::StructureShape.new(name: 'PredefinedAttributeSearchCriteria')
    PredefinedAttributeSearchSummaryList = Shapes::ListShape.new(name: 'PredefinedAttributeSearchSummaryList')
    PredefinedAttributeStringValue = Shapes::StringShape.new(name: 'PredefinedAttributeStringValue')
    PredefinedAttributeStringValuesList = Shapes::ListShape.new(name: 'PredefinedAttributeStringValuesList')
    PredefinedAttributeSummary = Shapes::StructureShape.new(name: 'PredefinedAttributeSummary')
    PredefinedAttributeSummaryList = Shapes::ListShape.new(name: 'PredefinedAttributeSummaryList')
    PredefinedAttributeValues = Shapes::UnionShape.new(name: 'PredefinedAttributeValues')
    Prefix = Shapes::StringShape.new(name: 'Prefix')
    Preview = Shapes::StructureShape.new(name: 'Preview')
    Priority = Shapes::IntegerShape.new(name: 'Priority')
    ProblemDetail = Shapes::StructureShape.new(name: 'ProblemDetail')
    ProblemMessageString = Shapes::StringShape.new(name: 'ProblemMessageString')
    Problems = Shapes::ListShape.new(name: 'Problems')
    ProficiencyLevel = Shapes::FloatShape.new(name: 'ProficiencyLevel')
    ProficiencyValue = Shapes::StringShape.new(name: 'ProficiencyValue')
    Prompt = Shapes::StructureShape.new(name: 'Prompt')
    PromptDescription = Shapes::StringShape.new(name: 'PromptDescription')
    PromptId = Shapes::StringShape.new(name: 'PromptId')
    PromptList = Shapes::ListShape.new(name: 'PromptList')
    PromptName = Shapes::StringShape.new(name: 'PromptName')
    PromptPresignedUrl = Shapes::StringShape.new(name: 'PromptPresignedUrl')
    PromptSearchConditionList = Shapes::ListShape.new(name: 'PromptSearchConditionList')
    PromptSearchCriteria = Shapes::StructureShape.new(name: 'PromptSearchCriteria')
    PromptSearchFilter = Shapes::StructureShape.new(name: 'PromptSearchFilter')
    PromptSummary = Shapes::StructureShape.new(name: 'PromptSummary')
    PromptSummaryList = Shapes::ListShape.new(name: 'PromptSummaryList')
    PropertyValidationException = Shapes::StructureShape.new(name: 'PropertyValidationException')
    PropertyValidationExceptionProperty = Shapes::StructureShape.new(name: 'PropertyValidationExceptionProperty')
    PropertyValidationExceptionPropertyList = Shapes::ListShape.new(name: 'PropertyValidationExceptionPropertyList')
    PropertyValidationExceptionReason = Shapes::StringShape.new(name: 'PropertyValidationExceptionReason')
    PutUserStatusRequest = Shapes::StructureShape.new(name: 'PutUserStatusRequest')
    PutUserStatusResponse = Shapes::StructureShape.new(name: 'PutUserStatusResponse')
    QualityMetrics = Shapes::StructureShape.new(name: 'QualityMetrics')
    QuestionRuleCategoryAutomationCondition = Shapes::StringShape.new(name: 'QuestionRuleCategoryAutomationCondition')
    QuestionRuleCategoryAutomationLabel = Shapes::StringShape.new(name: 'QuestionRuleCategoryAutomationLabel')
    Queue = Shapes::StructureShape.new(name: 'Queue')
    QueueDescription = Shapes::StringShape.new(name: 'QueueDescription')
    QueueId = Shapes::StringShape.new(name: 'QueueId')
    QueueIdList = Shapes::ListShape.new(name: 'QueueIdList')
    QueueInfo = Shapes::StructureShape.new(name: 'QueueInfo')
    QueueInfoInput = Shapes::StructureShape.new(name: 'QueueInfoInput')
    QueueMaxContacts = Shapes::IntegerShape.new(name: 'QueueMaxContacts')
    QueueName = Shapes::StringShape.new(name: 'QueueName')
    QueuePriority = Shapes::IntegerShape.new(name: 'QueuePriority')
    QueueQuickConnectConfig = Shapes::StructureShape.new(name: 'QueueQuickConnectConfig')
    QueueReference = Shapes::StructureShape.new(name: 'QueueReference')
    QueueSearchConditionList = Shapes::ListShape.new(name: 'QueueSearchConditionList')
    QueueSearchCriteria = Shapes::StructureShape.new(name: 'QueueSearchCriteria')
    QueueSearchFilter = Shapes::StructureShape.new(name: 'QueueSearchFilter')
    QueueSearchSummaryList = Shapes::ListShape.new(name: 'QueueSearchSummaryList')
    QueueStatus = Shapes::StringShape.new(name: 'QueueStatus')
    QueueSummary = Shapes::StructureShape.new(name: 'QueueSummary')
    QueueSummaryList = Shapes::ListShape.new(name: 'QueueSummaryList')
    QueueTimeAdjustmentSeconds = Shapes::IntegerShape.new(name: 'QueueTimeAdjustmentSeconds')
    QueueType = Shapes::StringShape.new(name: 'QueueType')
    QueueTypes = Shapes::ListShape.new(name: 'QueueTypes')
    Queues = Shapes::ListShape.new(name: 'Queues')
    QuickConnect = Shapes::StructureShape.new(name: 'QuickConnect')
    QuickConnectConfig = Shapes::StructureShape.new(name: 'QuickConnectConfig')
    QuickConnectDescription = Shapes::StringShape.new(name: 'QuickConnectDescription')
    QuickConnectId = Shapes::StringShape.new(name: 'QuickConnectId')
    QuickConnectName = Shapes::StringShape.new(name: 'QuickConnectName')
    QuickConnectSearchConditionList = Shapes::ListShape.new(name: 'QuickConnectSearchConditionList')
    QuickConnectSearchCriteria = Shapes::StructureShape.new(name: 'QuickConnectSearchCriteria')
    QuickConnectSearchFilter = Shapes::StructureShape.new(name: 'QuickConnectSearchFilter')
    QuickConnectSearchSummaryList = Shapes::ListShape.new(name: 'QuickConnectSearchSummaryList')
    QuickConnectSummary = Shapes::StructureShape.new(name: 'QuickConnectSummary')
    QuickConnectSummaryList = Shapes::ListShape.new(name: 'QuickConnectSummaryList')
    QuickConnectType = Shapes::StringShape.new(name: 'QuickConnectType')
    QuickConnectTypes = Shapes::ListShape.new(name: 'QuickConnectTypes')
    QuickConnectsList = Shapes::ListShape.new(name: 'QuickConnectsList')
    Range = Shapes::StructureShape.new(name: 'Range')
    ReadOnlyFieldInfo = Shapes::StructureShape.new(name: 'ReadOnlyFieldInfo')
    ReadOnlyTaskTemplateFields = Shapes::ListShape.new(name: 'ReadOnlyTaskTemplateFields')
    RealTimeContactAnalysisAttachment = Shapes::StructureShape.new(name: 'RealTimeContactAnalysisAttachment')
    RealTimeContactAnalysisAttachments = Shapes::ListShape.new(name: 'RealTimeContactAnalysisAttachments')
    RealTimeContactAnalysisCategoryDetails = Shapes::StructureShape.new(name: 'RealTimeContactAnalysisCategoryDetails')
    RealTimeContactAnalysisCategoryName = Shapes::StringShape.new(name: 'RealTimeContactAnalysisCategoryName')
    RealTimeContactAnalysisCharacterInterval = Shapes::StructureShape.new(name: 'RealTimeContactAnalysisCharacterInterval')
    RealTimeContactAnalysisCharacterIntervals = Shapes::ListShape.new(name: 'RealTimeContactAnalysisCharacterIntervals')
    RealTimeContactAnalysisContentType = Shapes::StringShape.new(name: 'RealTimeContactAnalysisContentType')
    RealTimeContactAnalysisEventType = Shapes::StringShape.new(name: 'RealTimeContactAnalysisEventType')
    RealTimeContactAnalysisId256 = Shapes::StringShape.new(name: 'RealTimeContactAnalysisId256')
    RealTimeContactAnalysisIssueDetected = Shapes::StructureShape.new(name: 'RealTimeContactAnalysisIssueDetected')
    RealTimeContactAnalysisIssuesDetected = Shapes::ListShape.new(name: 'RealTimeContactAnalysisIssuesDetected')
    RealTimeContactAnalysisMatchedDetails = Shapes::MapShape.new(name: 'RealTimeContactAnalysisMatchedDetails')
    RealTimeContactAnalysisOffset = Shapes::IntegerShape.new(name: 'RealTimeContactAnalysisOffset')
    RealTimeContactAnalysisOutputType = Shapes::StringShape.new(name: 'RealTimeContactAnalysisOutputType')
    RealTimeContactAnalysisPointOfInterest = Shapes::StructureShape.new(name: 'RealTimeContactAnalysisPointOfInterest')
    RealTimeContactAnalysisPointsOfInterest = Shapes::ListShape.new(name: 'RealTimeContactAnalysisPointsOfInterest')
    RealTimeContactAnalysisPostContactSummaryContent = Shapes::StringShape.new(name: 'RealTimeContactAnalysisPostContactSummaryContent')
    RealTimeContactAnalysisPostContactSummaryFailureCode = Shapes::StringShape.new(name: 'RealTimeContactAnalysisPostContactSummaryFailureCode')
    RealTimeContactAnalysisPostContactSummaryStatus = Shapes::StringShape.new(name: 'RealTimeContactAnalysisPostContactSummaryStatus')
    RealTimeContactAnalysisSegmentAttachments = Shapes::StructureShape.new(name: 'RealTimeContactAnalysisSegmentAttachments')
    RealTimeContactAnalysisSegmentCategories = Shapes::StructureShape.new(name: 'RealTimeContactAnalysisSegmentCategories')
    RealTimeContactAnalysisSegmentEvent = Shapes::StructureShape.new(name: 'RealTimeContactAnalysisSegmentEvent')
    RealTimeContactAnalysisSegmentIssues = Shapes::StructureShape.new(name: 'RealTimeContactAnalysisSegmentIssues')
    RealTimeContactAnalysisSegmentPostContactSummary = Shapes::StructureShape.new(name: 'RealTimeContactAnalysisSegmentPostContactSummary')
    RealTimeContactAnalysisSegmentTranscript = Shapes::StructureShape.new(name: 'RealTimeContactAnalysisSegmentTranscript')
    RealTimeContactAnalysisSegmentType = Shapes::StringShape.new(name: 'RealTimeContactAnalysisSegmentType')
    RealTimeContactAnalysisSegmentTypes = Shapes::ListShape.new(name: 'RealTimeContactAnalysisSegmentTypes')
    RealTimeContactAnalysisSentimentLabel = Shapes::StringShape.new(name: 'RealTimeContactAnalysisSentimentLabel')
    RealTimeContactAnalysisStatus = Shapes::StringShape.new(name: 'RealTimeContactAnalysisStatus')
    RealTimeContactAnalysisSupportedChannel = Shapes::StringShape.new(name: 'RealTimeContactAnalysisSupportedChannel')
    RealTimeContactAnalysisTimeData = Shapes::UnionShape.new(name: 'RealTimeContactAnalysisTimeData')
    RealTimeContactAnalysisTimeInstant = Shapes::TimestampShape.new(name: 'RealTimeContactAnalysisTimeInstant', timestampFormat: "iso8601")
    RealTimeContactAnalysisTranscriptContent = Shapes::StringShape.new(name: 'RealTimeContactAnalysisTranscriptContent')
    RealTimeContactAnalysisTranscriptItemRedaction = Shapes::StructureShape.new(name: 'RealTimeContactAnalysisTranscriptItemRedaction')
    RealTimeContactAnalysisTranscriptItemWithCharacterOffsets = Shapes::StructureShape.new(name: 'RealTimeContactAnalysisTranscriptItemWithCharacterOffsets')
    RealTimeContactAnalysisTranscriptItemWithContent = Shapes::StructureShape.new(name: 'RealTimeContactAnalysisTranscriptItemWithContent')
    RealTimeContactAnalysisTranscriptItemsWithCharacterOffsets = Shapes::ListShape.new(name: 'RealTimeContactAnalysisTranscriptItemsWithCharacterOffsets')
    RealTimeContactAnalysisTranscriptItemsWithContent = Shapes::ListShape.new(name: 'RealTimeContactAnalysisTranscriptItemsWithContent')
    RealtimeContactAnalysisSegment = Shapes::UnionShape.new(name: 'RealtimeContactAnalysisSegment')
    RealtimeContactAnalysisSegments = Shapes::ListShape.new(name: 'RealtimeContactAnalysisSegments')
    RecordingDeletionReason = Shapes::StringShape.new(name: 'RecordingDeletionReason')
    RecordingInfo = Shapes::StructureShape.new(name: 'RecordingInfo')
    RecordingLocation = Shapes::StringShape.new(name: 'RecordingLocation')
    RecordingStatus = Shapes::StringShape.new(name: 'RecordingStatus')
    Recordings = Shapes::ListShape.new(name: 'Recordings')
    Reference = Shapes::StructureShape.new(name: 'Reference')
    ReferenceArn = Shapes::StringShape.new(name: 'ReferenceArn')
    ReferenceId = Shapes::StringShape.new(name: 'ReferenceId')
    ReferenceKey = Shapes::StringShape.new(name: 'ReferenceKey')
    ReferenceStatus = Shapes::StringShape.new(name: 'ReferenceStatus')
    ReferenceStatusReason = Shapes::StringShape.new(name: 'ReferenceStatusReason')
    ReferenceSummary = Shapes::UnionShape.new(name: 'ReferenceSummary')
    ReferenceSummaryList = Shapes::ListShape.new(name: 'ReferenceSummaryList')
    ReferenceType = Shapes::StringShape.new(name: 'ReferenceType')
    ReferenceTypes = Shapes::ListShape.new(name: 'ReferenceTypes')
    ReferenceValue = Shapes::StringShape.new(name: 'ReferenceValue')
    RefreshTokenDuration = Shapes::IntegerShape.new(name: 'RefreshTokenDuration')
    RegionName = Shapes::StringShape.new(name: 'RegionName')
    RegistrationId = Shapes::StringShape.new(name: 'RegistrationId')
    RehydrationType = Shapes::StringShape.new(name: 'RehydrationType')
    ReleasePhoneNumberRequest = Shapes::StructureShape.new(name: 'ReleasePhoneNumberRequest')
    ReplicateInstanceRequest = Shapes::StructureShape.new(name: 'ReplicateInstanceRequest')
    ReplicateInstanceResponse = Shapes::StructureShape.new(name: 'ReplicateInstanceResponse')
    ReplicationConfiguration = Shapes::StructureShape.new(name: 'ReplicationConfiguration')
    ReplicationStatusReason = Shapes::StringShape.new(name: 'ReplicationStatusReason')
    ReplicationStatusSummary = Shapes::StructureShape.new(name: 'ReplicationStatusSummary')
    ReplicationStatusSummaryList = Shapes::ListShape.new(name: 'ReplicationStatusSummaryList')
    RequestIdentifier = Shapes::StringShape.new(name: 'RequestIdentifier')
    RequiredFieldInfo = Shapes::StructureShape.new(name: 'RequiredFieldInfo')
    RequiredTaskTemplateFields = Shapes::ListShape.new(name: 'RequiredTaskTemplateFields')
    ResourceArnOrId = Shapes::StringShape.new(name: 'ResourceArnOrId')
    ResourceConflictException = Shapes::StructureShape.new(name: 'ResourceConflictException')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceNotReadyException = Shapes::StructureShape.new(name: 'ResourceNotReadyException')
    ResourceTagsSearchCriteria = Shapes::StructureShape.new(name: 'ResourceTagsSearchCriteria')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResourceTypeList = Shapes::ListShape.new(name: 'ResourceTypeList')
    ResourceVersion = Shapes::IntegerShape.new(name: 'ResourceVersion')
    ResumeContactRecordingRequest = Shapes::StructureShape.new(name: 'ResumeContactRecordingRequest')
    ResumeContactRecordingResponse = Shapes::StructureShape.new(name: 'ResumeContactRecordingResponse')
    ResumeContactRequest = Shapes::StructureShape.new(name: 'ResumeContactRequest')
    ResumeContactResponse = Shapes::StructureShape.new(name: 'ResumeContactResponse')
    RingTimeoutInSeconds = Shapes::IntegerShape.new(name: 'RingTimeoutInSeconds')
    RoutingCriteria = Shapes::StructureShape.new(name: 'RoutingCriteria')
    RoutingCriteriaInput = Shapes::StructureShape.new(name: 'RoutingCriteriaInput')
    RoutingCriteriaInputStep = Shapes::StructureShape.new(name: 'RoutingCriteriaInputStep')
    RoutingCriteriaInputStepExpiry = Shapes::StructureShape.new(name: 'RoutingCriteriaInputStepExpiry')
    RoutingCriteriaInputSteps = Shapes::ListShape.new(name: 'RoutingCriteriaInputSteps')
    RoutingCriteriaStepStatus = Shapes::StringShape.new(name: 'RoutingCriteriaStepStatus')
    RoutingExpression = Shapes::StringShape.new(name: 'RoutingExpression')
    RoutingExpressions = Shapes::ListShape.new(name: 'RoutingExpressions')
    RoutingProfile = Shapes::StructureShape.new(name: 'RoutingProfile')
    RoutingProfileDescription = Shapes::StringShape.new(name: 'RoutingProfileDescription')
    RoutingProfileId = Shapes::StringShape.new(name: 'RoutingProfileId')
    RoutingProfileList = Shapes::ListShape.new(name: 'RoutingProfileList')
    RoutingProfileManualAssignmentQueueConfig = Shapes::StructureShape.new(name: 'RoutingProfileManualAssignmentQueueConfig')
    RoutingProfileManualAssignmentQueueConfigList = Shapes::ListShape.new(name: 'RoutingProfileManualAssignmentQueueConfigList')
    RoutingProfileManualAssignmentQueueConfigSummary = Shapes::StructureShape.new(name: 'RoutingProfileManualAssignmentQueueConfigSummary')
    RoutingProfileManualAssignmentQueueConfigSummaryList = Shapes::ListShape.new(name: 'RoutingProfileManualAssignmentQueueConfigSummaryList')
    RoutingProfileName = Shapes::StringShape.new(name: 'RoutingProfileName')
    RoutingProfileQueueConfig = Shapes::StructureShape.new(name: 'RoutingProfileQueueConfig')
    RoutingProfileQueueConfigList = Shapes::ListShape.new(name: 'RoutingProfileQueueConfigList')
    RoutingProfileQueueConfigSummary = Shapes::StructureShape.new(name: 'RoutingProfileQueueConfigSummary')
    RoutingProfileQueueConfigSummaryList = Shapes::ListShape.new(name: 'RoutingProfileQueueConfigSummaryList')
    RoutingProfileQueueReference = Shapes::StructureShape.new(name: 'RoutingProfileQueueReference')
    RoutingProfileQueueReferenceList = Shapes::ListShape.new(name: 'RoutingProfileQueueReferenceList')
    RoutingProfileReference = Shapes::StructureShape.new(name: 'RoutingProfileReference')
    RoutingProfileSearchConditionList = Shapes::ListShape.new(name: 'RoutingProfileSearchConditionList')
    RoutingProfileSearchCriteria = Shapes::StructureShape.new(name: 'RoutingProfileSearchCriteria')
    RoutingProfileSearchFilter = Shapes::StructureShape.new(name: 'RoutingProfileSearchFilter')
    RoutingProfileSummary = Shapes::StructureShape.new(name: 'RoutingProfileSummary')
    RoutingProfileSummaryList = Shapes::ListShape.new(name: 'RoutingProfileSummaryList')
    RoutingProfiles = Shapes::ListShape.new(name: 'RoutingProfiles')
    Rule = Shapes::StructureShape.new(name: 'Rule')
    RuleAction = Shapes::StructureShape.new(name: 'RuleAction')
    RuleActions = Shapes::ListShape.new(name: 'RuleActions')
    RuleFunction = Shapes::StringShape.new(name: 'RuleFunction')
    RuleId = Shapes::StringShape.new(name: 'RuleId')
    RuleName = Shapes::StringShape.new(name: 'RuleName')
    RulePublishStatus = Shapes::StringShape.new(name: 'RulePublishStatus')
    RuleSummary = Shapes::StructureShape.new(name: 'RuleSummary')
    RuleSummaryList = Shapes::ListShape.new(name: 'RuleSummaryList')
    RuleTriggerEventSource = Shapes::StructureShape.new(name: 'RuleTriggerEventSource')
    S3Config = Shapes::StructureShape.new(name: 'S3Config')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    ScreenShareCapability = Shapes::StringShape.new(name: 'ScreenShareCapability')
    SearchAgentStatusesRequest = Shapes::StructureShape.new(name: 'SearchAgentStatusesRequest')
    SearchAgentStatusesResponse = Shapes::StructureShape.new(name: 'SearchAgentStatusesResponse')
    SearchAvailablePhoneNumbersRequest = Shapes::StructureShape.new(name: 'SearchAvailablePhoneNumbersRequest')
    SearchAvailablePhoneNumbersResponse = Shapes::StructureShape.new(name: 'SearchAvailablePhoneNumbersResponse')
    SearchContactEvaluationsRequest = Shapes::StructureShape.new(name: 'SearchContactEvaluationsRequest')
    SearchContactEvaluationsResponse = Shapes::StructureShape.new(name: 'SearchContactEvaluationsResponse')
    SearchContactFlowModulesRequest = Shapes::StructureShape.new(name: 'SearchContactFlowModulesRequest')
    SearchContactFlowModulesResponse = Shapes::StructureShape.new(name: 'SearchContactFlowModulesResponse')
    SearchContactFlowsRequest = Shapes::StructureShape.new(name: 'SearchContactFlowsRequest')
    SearchContactFlowsResponse = Shapes::StructureShape.new(name: 'SearchContactFlowsResponse')
    SearchContactsAdditionalTimeRange = Shapes::StructureShape.new(name: 'SearchContactsAdditionalTimeRange')
    SearchContactsAdditionalTimeRangeCriteria = Shapes::StructureShape.new(name: 'SearchContactsAdditionalTimeRangeCriteria')
    SearchContactsAdditionalTimeRangeCriteriaList = Shapes::ListShape.new(name: 'SearchContactsAdditionalTimeRangeCriteriaList')
    SearchContactsMatchType = Shapes::StringShape.new(name: 'SearchContactsMatchType')
    SearchContactsRequest = Shapes::StructureShape.new(name: 'SearchContactsRequest')
    SearchContactsResponse = Shapes::StructureShape.new(name: 'SearchContactsResponse')
    SearchContactsTimeRange = Shapes::StructureShape.new(name: 'SearchContactsTimeRange')
    SearchContactsTimeRangeConditionType = Shapes::StringShape.new(name: 'SearchContactsTimeRangeConditionType')
    SearchContactsTimeRangeType = Shapes::StringShape.new(name: 'SearchContactsTimeRangeType')
    SearchContactsTimestampCondition = Shapes::StructureShape.new(name: 'SearchContactsTimestampCondition')
    SearchCriteria = Shapes::StructureShape.new(name: 'SearchCriteria')
    SearchEmailAddressesRequest = Shapes::StructureShape.new(name: 'SearchEmailAddressesRequest')
    SearchEmailAddressesResponse = Shapes::StructureShape.new(name: 'SearchEmailAddressesResponse')
    SearchEvaluationFormsRequest = Shapes::StructureShape.new(name: 'SearchEvaluationFormsRequest')
    SearchEvaluationFormsResponse = Shapes::StructureShape.new(name: 'SearchEvaluationFormsResponse')
    SearchHoursOfOperationOverridesRequest = Shapes::StructureShape.new(name: 'SearchHoursOfOperationOverridesRequest')
    SearchHoursOfOperationOverridesResponse = Shapes::StructureShape.new(name: 'SearchHoursOfOperationOverridesResponse')
    SearchHoursOfOperationsRequest = Shapes::StructureShape.new(name: 'SearchHoursOfOperationsRequest')
    SearchHoursOfOperationsResponse = Shapes::StructureShape.new(name: 'SearchHoursOfOperationsResponse')
    SearchPredefinedAttributesRequest = Shapes::StructureShape.new(name: 'SearchPredefinedAttributesRequest')
    SearchPredefinedAttributesResponse = Shapes::StructureShape.new(name: 'SearchPredefinedAttributesResponse')
    SearchPromptsRequest = Shapes::StructureShape.new(name: 'SearchPromptsRequest')
    SearchPromptsResponse = Shapes::StructureShape.new(name: 'SearchPromptsResponse')
    SearchQueuesRequest = Shapes::StructureShape.new(name: 'SearchQueuesRequest')
    SearchQueuesResponse = Shapes::StructureShape.new(name: 'SearchQueuesResponse')
    SearchQuickConnectsRequest = Shapes::StructureShape.new(name: 'SearchQuickConnectsRequest')
    SearchQuickConnectsResponse = Shapes::StructureShape.new(name: 'SearchQuickConnectsResponse')
    SearchResourceTagsRequest = Shapes::StructureShape.new(name: 'SearchResourceTagsRequest')
    SearchResourceTagsResponse = Shapes::StructureShape.new(name: 'SearchResourceTagsResponse')
    SearchRoutingProfilesRequest = Shapes::StructureShape.new(name: 'SearchRoutingProfilesRequest')
    SearchRoutingProfilesResponse = Shapes::StructureShape.new(name: 'SearchRoutingProfilesResponse')
    SearchSecurityProfilesRequest = Shapes::StructureShape.new(name: 'SearchSecurityProfilesRequest')
    SearchSecurityProfilesResponse = Shapes::StructureShape.new(name: 'SearchSecurityProfilesResponse')
    SearchText = Shapes::StringShape.new(name: 'SearchText')
    SearchTextList = Shapes::ListShape.new(name: 'SearchTextList')
    SearchUserHierarchyGroupsRequest = Shapes::StructureShape.new(name: 'SearchUserHierarchyGroupsRequest')
    SearchUserHierarchyGroupsResponse = Shapes::StructureShape.new(name: 'SearchUserHierarchyGroupsResponse')
    SearchUsersRequest = Shapes::StructureShape.new(name: 'SearchUsersRequest')
    SearchUsersResponse = Shapes::StructureShape.new(name: 'SearchUsersResponse')
    SearchVocabulariesRequest = Shapes::StructureShape.new(name: 'SearchVocabulariesRequest')
    SearchVocabulariesResponse = Shapes::StructureShape.new(name: 'SearchVocabulariesResponse')
    SearchableAgentCriteriaStep = Shapes::StructureShape.new(name: 'SearchableAgentCriteriaStep')
    SearchableContactAttributeKey = Shapes::StringShape.new(name: 'SearchableContactAttributeKey')
    SearchableContactAttributeValue = Shapes::StringShape.new(name: 'SearchableContactAttributeValue')
    SearchableContactAttributeValueList = Shapes::ListShape.new(name: 'SearchableContactAttributeValueList')
    SearchableContactAttributes = Shapes::StructureShape.new(name: 'SearchableContactAttributes')
    SearchableContactAttributesCriteria = Shapes::StructureShape.new(name: 'SearchableContactAttributesCriteria')
    SearchableContactAttributesCriteriaList = Shapes::ListShape.new(name: 'SearchableContactAttributesCriteriaList')
    SearchableQueueType = Shapes::StringShape.new(name: 'SearchableQueueType')
    SearchableRoutingCriteria = Shapes::StructureShape.new(name: 'SearchableRoutingCriteria')
    SearchableRoutingCriteriaStep = Shapes::StructureShape.new(name: 'SearchableRoutingCriteriaStep')
    SearchableRoutingCriteriaStepList = Shapes::ListShape.new(name: 'SearchableRoutingCriteriaStepList')
    SearchableSegmentAttributeKey = Shapes::StringShape.new(name: 'SearchableSegmentAttributeKey')
    SearchableSegmentAttributeValue = Shapes::StringShape.new(name: 'SearchableSegmentAttributeValue')
    SearchableSegmentAttributeValueList = Shapes::ListShape.new(name: 'SearchableSegmentAttributeValueList')
    SearchableSegmentAttributes = Shapes::StructureShape.new(name: 'SearchableSegmentAttributes')
    SearchableSegmentAttributesCriteria = Shapes::StructureShape.new(name: 'SearchableSegmentAttributesCriteria')
    SearchableSegmentAttributesCriteriaList = Shapes::ListShape.new(name: 'SearchableSegmentAttributesCriteriaList')
    SecurityKey = Shapes::StructureShape.new(name: 'SecurityKey')
    SecurityKeysList = Shapes::ListShape.new(name: 'SecurityKeysList')
    SecurityProfile = Shapes::StructureShape.new(name: 'SecurityProfile')
    SecurityProfileDescription = Shapes::StringShape.new(name: 'SecurityProfileDescription')
    SecurityProfileId = Shapes::StringShape.new(name: 'SecurityProfileId')
    SecurityProfileIds = Shapes::ListShape.new(name: 'SecurityProfileIds')
    SecurityProfileName = Shapes::StringShape.new(name: 'SecurityProfileName')
    SecurityProfilePermission = Shapes::StringShape.new(name: 'SecurityProfilePermission')
    SecurityProfilePolicyKey = Shapes::StringShape.new(name: 'SecurityProfilePolicyKey')
    SecurityProfilePolicyValue = Shapes::StringShape.new(name: 'SecurityProfilePolicyValue')
    SecurityProfileSearchConditionList = Shapes::ListShape.new(name: 'SecurityProfileSearchConditionList')
    SecurityProfileSearchCriteria = Shapes::StructureShape.new(name: 'SecurityProfileSearchCriteria')
    SecurityProfileSearchSummary = Shapes::StructureShape.new(name: 'SecurityProfileSearchSummary')
    SecurityProfileSummary = Shapes::StructureShape.new(name: 'SecurityProfileSummary')
    SecurityProfileSummaryList = Shapes::ListShape.new(name: 'SecurityProfileSummaryList')
    SecurityProfilesSearchFilter = Shapes::StructureShape.new(name: 'SecurityProfilesSearchFilter')
    SecurityProfilesSearchSummaryList = Shapes::ListShape.new(name: 'SecurityProfilesSearchSummaryList')
    SecurityToken = Shapes::StringShape.new(name: 'SecurityToken')
    SegmentAttributeName = Shapes::StringShape.new(name: 'SegmentAttributeName')
    SegmentAttributeValue = Shapes::StructureShape.new(name: 'SegmentAttributeValue')
    SegmentAttributeValueInteger = Shapes::IntegerShape.new(name: 'SegmentAttributeValueInteger')
    SegmentAttributeValueList = Shapes::ListShape.new(name: 'SegmentAttributeValueList')
    SegmentAttributeValueMap = Shapes::MapShape.new(name: 'SegmentAttributeValueMap')
    SegmentAttributeValueString = Shapes::StringShape.new(name: 'SegmentAttributeValueString')
    SegmentAttributes = Shapes::MapShape.new(name: 'SegmentAttributes')
    SendChatIntegrationEventRequest = Shapes::StructureShape.new(name: 'SendChatIntegrationEventRequest')
    SendChatIntegrationEventResponse = Shapes::StructureShape.new(name: 'SendChatIntegrationEventResponse')
    SendNotificationActionDefinition = Shapes::StructureShape.new(name: 'SendNotificationActionDefinition')
    SendOutboundEmailRequest = Shapes::StructureShape.new(name: 'SendOutboundEmailRequest')
    SendOutboundEmailResponse = Shapes::StructureShape.new(name: 'SendOutboundEmailResponse')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceQuotaExceededExceptionReason = Shapes::UnionShape.new(name: 'ServiceQuotaExceededExceptionReason')
    SignInConfig = Shapes::StructureShape.new(name: 'SignInConfig')
    SignInDistribution = Shapes::StructureShape.new(name: 'SignInDistribution')
    SignInDistributionList = Shapes::ListShape.new(name: 'SignInDistributionList')
    SingleSelectOptions = Shapes::ListShape.new(name: 'SingleSelectOptions')
    SingleSelectQuestionRuleCategoryAutomation = Shapes::StructureShape.new(name: 'SingleSelectQuestionRuleCategoryAutomation')
    SingleSelectQuestionRuleCategoryAutomationCondition = Shapes::StringShape.new(name: 'SingleSelectQuestionRuleCategoryAutomationCondition')
    SingleSelectQuestionRuleCategoryAutomationLabel = Shapes::StringShape.new(name: 'SingleSelectQuestionRuleCategoryAutomationLabel')
    SlaAssignmentType = Shapes::StringShape.new(name: 'SlaAssignmentType')
    SlaFieldValueUnionList = Shapes::ListShape.new(name: 'SlaFieldValueUnionList')
    SlaName = Shapes::StringShape.new(name: 'SlaName')
    SlaType = Shapes::StringShape.new(name: 'SlaType')
    SnapshotVersion = Shapes::StringShape.new(name: 'SnapshotVersion')
    Sort = Shapes::StructureShape.new(name: 'Sort')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    SortableFieldName = Shapes::StringShape.new(name: 'SortableFieldName')
    SourceApplicationName = Shapes::StringShape.new(name: 'SourceApplicationName')
    SourceCampaign = Shapes::StructureShape.new(name: 'SourceCampaign')
    SourceId = Shapes::StringShape.new(name: 'SourceId')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    StartAttachedFileUploadRequest = Shapes::StructureShape.new(name: 'StartAttachedFileUploadRequest')
    StartAttachedFileUploadResponse = Shapes::StructureShape.new(name: 'StartAttachedFileUploadResponse')
    StartChatContactRequest = Shapes::StructureShape.new(name: 'StartChatContactRequest')
    StartChatContactResponse = Shapes::StructureShape.new(name: 'StartChatContactResponse')
    StartContactEvaluationRequest = Shapes::StructureShape.new(name: 'StartContactEvaluationRequest')
    StartContactEvaluationResponse = Shapes::StructureShape.new(name: 'StartContactEvaluationResponse')
    StartContactRecordingRequest = Shapes::StructureShape.new(name: 'StartContactRecordingRequest')
    StartContactRecordingResponse = Shapes::StructureShape.new(name: 'StartContactRecordingResponse')
    StartContactStreamingRequest = Shapes::StructureShape.new(name: 'StartContactStreamingRequest')
    StartContactStreamingResponse = Shapes::StructureShape.new(name: 'StartContactStreamingResponse')
    StartEmailContactRequest = Shapes::StructureShape.new(name: 'StartEmailContactRequest')
    StartEmailContactResponse = Shapes::StructureShape.new(name: 'StartEmailContactResponse')
    StartOutboundChatContactRequest = Shapes::StructureShape.new(name: 'StartOutboundChatContactRequest')
    StartOutboundChatContactResponse = Shapes::StructureShape.new(name: 'StartOutboundChatContactResponse')
    StartOutboundEmailContactRequest = Shapes::StructureShape.new(name: 'StartOutboundEmailContactRequest')
    StartOutboundEmailContactResponse = Shapes::StructureShape.new(name: 'StartOutboundEmailContactResponse')
    StartOutboundVoiceContactRequest = Shapes::StructureShape.new(name: 'StartOutboundVoiceContactRequest')
    StartOutboundVoiceContactResponse = Shapes::StructureShape.new(name: 'StartOutboundVoiceContactResponse')
    StartScreenSharingRequest = Shapes::StructureShape.new(name: 'StartScreenSharingRequest')
    StartScreenSharingResponse = Shapes::StructureShape.new(name: 'StartScreenSharingResponse')
    StartTaskContactRequest = Shapes::StructureShape.new(name: 'StartTaskContactRequest')
    StartTaskContactResponse = Shapes::StructureShape.new(name: 'StartTaskContactResponse')
    StartWebRTCContactRequest = Shapes::StructureShape.new(name: 'StartWebRTCContactRequest')
    StartWebRTCContactResponse = Shapes::StructureShape.new(name: 'StartWebRTCContactResponse')
    StateTransition = Shapes::StructureShape.new(name: 'StateTransition')
    StateTransitions = Shapes::ListShape.new(name: 'StateTransitions')
    Statistic = Shapes::StringShape.new(name: 'Statistic')
    Status = Shapes::StringShape.new(name: 'Status')
    Step = Shapes::StructureShape.new(name: 'Step')
    Steps = Shapes::ListShape.new(name: 'Steps')
    StopContactRecordingRequest = Shapes::StructureShape.new(name: 'StopContactRecordingRequest')
    StopContactRecordingResponse = Shapes::StructureShape.new(name: 'StopContactRecordingResponse')
    StopContactRequest = Shapes::StructureShape.new(name: 'StopContactRequest')
    StopContactResponse = Shapes::StructureShape.new(name: 'StopContactResponse')
    StopContactStreamingRequest = Shapes::StructureShape.new(name: 'StopContactStreamingRequest')
    StopContactStreamingResponse = Shapes::StructureShape.new(name: 'StopContactStreamingResponse')
    StorageType = Shapes::StringShape.new(name: 'StorageType')
    StreamingId = Shapes::StringShape.new(name: 'StreamingId')
    String = Shapes::StringShape.new(name: 'String')
    StringComparisonType = Shapes::StringShape.new(name: 'StringComparisonType')
    StringCondition = Shapes::StructureShape.new(name: 'StringCondition')
    StringReference = Shapes::StructureShape.new(name: 'StringReference')
    Subject = Shapes::StringShape.new(name: 'Subject')
    SubmitAutoEvaluationActionDefinition = Shapes::StructureShape.new(name: 'SubmitAutoEvaluationActionDefinition')
    SubmitContactEvaluationRequest = Shapes::StructureShape.new(name: 'SubmitContactEvaluationRequest')
    SubmitContactEvaluationResponse = Shapes::StructureShape.new(name: 'SubmitContactEvaluationResponse')
    Subtype = Shapes::StringShape.new(name: 'Subtype')
    SuccessfulRequest = Shapes::StructureShape.new(name: 'SuccessfulRequest')
    SuccessfulRequestList = Shapes::ListShape.new(name: 'SuccessfulRequestList')
    SupportedMessagingContentType = Shapes::StringShape.new(name: 'SupportedMessagingContentType')
    SupportedMessagingContentTypes = Shapes::ListShape.new(name: 'SupportedMessagingContentTypes')
    SuspendContactRecordingRequest = Shapes::StructureShape.new(name: 'SuspendContactRecordingRequest')
    SuspendContactRecordingResponse = Shapes::StructureShape.new(name: 'SuspendContactRecordingResponse')
    TagAndConditionList = Shapes::ListShape.new(name: 'TagAndConditionList')
    TagCondition = Shapes::StructureShape.new(name: 'TagCondition')
    TagContactRequest = Shapes::StructureShape.new(name: 'TagContactRequest')
    TagContactResponse = Shapes::StructureShape.new(name: 'TagContactResponse')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagKeyString = Shapes::StringShape.new(name: 'TagKeyString')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagOrConditionList = Shapes::ListShape.new(name: 'TagOrConditionList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagRestrictedResourceList = Shapes::ListShape.new(name: 'TagRestrictedResourceList')
    TagRestrictedResourceName = Shapes::StringShape.new(name: 'TagRestrictedResourceName')
    TagSearchCondition = Shapes::StructureShape.new(name: 'TagSearchCondition')
    TagSet = Shapes::StructureShape.new(name: 'TagSet')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagValueString = Shapes::StringShape.new(name: 'TagValueString')
    TagsList = Shapes::ListShape.new(name: 'TagsList')
    TargetListType = Shapes::StringShape.new(name: 'TargetListType')
    TargetSlaMinutes = Shapes::IntegerShape.new(name: 'TargetSlaMinutes')
    TaskActionDefinition = Shapes::StructureShape.new(name: 'TaskActionDefinition')
    TaskDescriptionExpression = Shapes::StringShape.new(name: 'TaskDescriptionExpression')
    TaskNameExpression = Shapes::StringShape.new(name: 'TaskNameExpression')
    TaskTemplateArn = Shapes::StringShape.new(name: 'TaskTemplateArn')
    TaskTemplateConstraints = Shapes::StructureShape.new(name: 'TaskTemplateConstraints')
    TaskTemplateDefaultFieldValue = Shapes::StructureShape.new(name: 'TaskTemplateDefaultFieldValue')
    TaskTemplateDefaultFieldValueList = Shapes::ListShape.new(name: 'TaskTemplateDefaultFieldValueList')
    TaskTemplateDefaults = Shapes::StructureShape.new(name: 'TaskTemplateDefaults')
    TaskTemplateDescription = Shapes::StringShape.new(name: 'TaskTemplateDescription')
    TaskTemplateField = Shapes::StructureShape.new(name: 'TaskTemplateField')
    TaskTemplateFieldDescription = Shapes::StringShape.new(name: 'TaskTemplateFieldDescription')
    TaskTemplateFieldIdentifier = Shapes::StructureShape.new(name: 'TaskTemplateFieldIdentifier')
    TaskTemplateFieldName = Shapes::StringShape.new(name: 'TaskTemplateFieldName')
    TaskTemplateFieldType = Shapes::StringShape.new(name: 'TaskTemplateFieldType')
    TaskTemplateFieldValue = Shapes::StringShape.new(name: 'TaskTemplateFieldValue')
    TaskTemplateFields = Shapes::ListShape.new(name: 'TaskTemplateFields')
    TaskTemplateId = Shapes::StringShape.new(name: 'TaskTemplateId')
    TaskTemplateInfoV2 = Shapes::StructureShape.new(name: 'TaskTemplateInfoV2')
    TaskTemplateList = Shapes::ListShape.new(name: 'TaskTemplateList')
    TaskTemplateMetadata = Shapes::StructureShape.new(name: 'TaskTemplateMetadata')
    TaskTemplateName = Shapes::StringShape.new(name: 'TaskTemplateName')
    TaskTemplateSingleSelectOption = Shapes::StringShape.new(name: 'TaskTemplateSingleSelectOption')
    TaskTemplateStatus = Shapes::StringShape.new(name: 'TaskTemplateStatus')
    TelephonyConfig = Shapes::StructureShape.new(name: 'TelephonyConfig')
    TemplateAttributes = Shapes::StructureShape.new(name: 'TemplateAttributes')
    TemplateId = Shapes::StringShape.new(name: 'TemplateId')
    TemplatedMessageConfig = Shapes::StructureShape.new(name: 'TemplatedMessageConfig')
    Threshold = Shapes::StructureShape.new(name: 'Threshold')
    ThresholdCollections = Shapes::ListShape.new(name: 'ThresholdCollections')
    ThresholdV2 = Shapes::StructureShape.new(name: 'ThresholdV2')
    ThresholdValue = Shapes::FloatShape.new(name: 'ThresholdValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeZone = Shapes::StringShape.new(name: 'TimeZone')
    TimerEligibleParticipantRoles = Shapes::StringShape.new(name: 'TimerEligibleParticipantRoles')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    TotalCount = Shapes::IntegerShape.new(name: 'TotalCount')
    TotalPauseCount = Shapes::IntegerShape.new(name: 'TotalPauseCount')
    TotalPauseDurationInSeconds = Shapes::IntegerShape.new(name: 'TotalPauseDurationInSeconds')
    TrafficDistributionGroup = Shapes::StructureShape.new(name: 'TrafficDistributionGroup')
    TrafficDistributionGroupArn = Shapes::StringShape.new(name: 'TrafficDistributionGroupArn')
    TrafficDistributionGroupId = Shapes::StringShape.new(name: 'TrafficDistributionGroupId')
    TrafficDistributionGroupIdOrArn = Shapes::StringShape.new(name: 'TrafficDistributionGroupIdOrArn')
    TrafficDistributionGroupStatus = Shapes::StringShape.new(name: 'TrafficDistributionGroupStatus')
    TrafficDistributionGroupSummary = Shapes::StructureShape.new(name: 'TrafficDistributionGroupSummary')
    TrafficDistributionGroupSummaryList = Shapes::ListShape.new(name: 'TrafficDistributionGroupSummaryList')
    TrafficDistributionGroupUserSummary = Shapes::StructureShape.new(name: 'TrafficDistributionGroupUserSummary')
    TrafficDistributionGroupUserSummaryList = Shapes::ListShape.new(name: 'TrafficDistributionGroupUserSummaryList')
    TrafficType = Shapes::StringShape.new(name: 'TrafficType')
    Transcript = Shapes::StructureShape.new(name: 'Transcript')
    TranscriptCriteria = Shapes::StructureShape.new(name: 'TranscriptCriteria')
    TranscriptCriteriaList = Shapes::ListShape.new(name: 'TranscriptCriteriaList')
    TransferContactRequest = Shapes::StructureShape.new(name: 'TransferContactRequest')
    TransferContactResponse = Shapes::StructureShape.new(name: 'TransferContactResponse')
    URI = Shapes::StringShape.new(name: 'URI')
    URLExpiryInSeconds = Shapes::IntegerShape.new(name: 'URLExpiryInSeconds')
    Unit = Shapes::StringShape.new(name: 'Unit')
    UntagContactRequest = Shapes::StructureShape.new(name: 'UntagContactRequest')
    UntagContactResponse = Shapes::StructureShape.new(name: 'UntagContactResponse')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateAgentStatusDescription = Shapes::StringShape.new(name: 'UpdateAgentStatusDescription')
    UpdateAgentStatusRequest = Shapes::StructureShape.new(name: 'UpdateAgentStatusRequest')
    UpdateAuthenticationProfileRequest = Shapes::StructureShape.new(name: 'UpdateAuthenticationProfileRequest')
    UpdateCaseActionDefinition = Shapes::StructureShape.new(name: 'UpdateCaseActionDefinition')
    UpdateContactAttributesRequest = Shapes::StructureShape.new(name: 'UpdateContactAttributesRequest')
    UpdateContactAttributesResponse = Shapes::StructureShape.new(name: 'UpdateContactAttributesResponse')
    UpdateContactEvaluationRequest = Shapes::StructureShape.new(name: 'UpdateContactEvaluationRequest')
    UpdateContactEvaluationResponse = Shapes::StructureShape.new(name: 'UpdateContactEvaluationResponse')
    UpdateContactFlowContentRequest = Shapes::StructureShape.new(name: 'UpdateContactFlowContentRequest')
    UpdateContactFlowContentResponse = Shapes::StructureShape.new(name: 'UpdateContactFlowContentResponse')
    UpdateContactFlowMetadataRequest = Shapes::StructureShape.new(name: 'UpdateContactFlowMetadataRequest')
    UpdateContactFlowMetadataResponse = Shapes::StructureShape.new(name: 'UpdateContactFlowMetadataResponse')
    UpdateContactFlowModuleAliasRequest = Shapes::StructureShape.new(name: 'UpdateContactFlowModuleAliasRequest')
    UpdateContactFlowModuleAliasResponse = Shapes::StructureShape.new(name: 'UpdateContactFlowModuleAliasResponse')
    UpdateContactFlowModuleContentRequest = Shapes::StructureShape.new(name: 'UpdateContactFlowModuleContentRequest')
    UpdateContactFlowModuleContentResponse = Shapes::StructureShape.new(name: 'UpdateContactFlowModuleContentResponse')
    UpdateContactFlowModuleMetadataRequest = Shapes::StructureShape.new(name: 'UpdateContactFlowModuleMetadataRequest')
    UpdateContactFlowModuleMetadataResponse = Shapes::StructureShape.new(name: 'UpdateContactFlowModuleMetadataResponse')
    UpdateContactFlowNameRequest = Shapes::StructureShape.new(name: 'UpdateContactFlowNameRequest')
    UpdateContactFlowNameResponse = Shapes::StructureShape.new(name: 'UpdateContactFlowNameResponse')
    UpdateContactRequest = Shapes::StructureShape.new(name: 'UpdateContactRequest')
    UpdateContactResponse = Shapes::StructureShape.new(name: 'UpdateContactResponse')
    UpdateContactRoutingDataRequest = Shapes::StructureShape.new(name: 'UpdateContactRoutingDataRequest')
    UpdateContactRoutingDataResponse = Shapes::StructureShape.new(name: 'UpdateContactRoutingDataResponse')
    UpdateContactScheduleRequest = Shapes::StructureShape.new(name: 'UpdateContactScheduleRequest')
    UpdateContactScheduleResponse = Shapes::StructureShape.new(name: 'UpdateContactScheduleResponse')
    UpdateEmailAddressMetadataRequest = Shapes::StructureShape.new(name: 'UpdateEmailAddressMetadataRequest')
    UpdateEmailAddressMetadataResponse = Shapes::StructureShape.new(name: 'UpdateEmailAddressMetadataResponse')
    UpdateEvaluationFormRequest = Shapes::StructureShape.new(name: 'UpdateEvaluationFormRequest')
    UpdateEvaluationFormResponse = Shapes::StructureShape.new(name: 'UpdateEvaluationFormResponse')
    UpdateHoursOfOperationDescription = Shapes::StringShape.new(name: 'UpdateHoursOfOperationDescription')
    UpdateHoursOfOperationOverrideRequest = Shapes::StructureShape.new(name: 'UpdateHoursOfOperationOverrideRequest')
    UpdateHoursOfOperationRequest = Shapes::StructureShape.new(name: 'UpdateHoursOfOperationRequest')
    UpdateInstanceAttributeRequest = Shapes::StructureShape.new(name: 'UpdateInstanceAttributeRequest')
    UpdateInstanceStorageConfigRequest = Shapes::StructureShape.new(name: 'UpdateInstanceStorageConfigRequest')
    UpdateParticipantAuthenticationRequest = Shapes::StructureShape.new(name: 'UpdateParticipantAuthenticationRequest')
    UpdateParticipantAuthenticationResponse = Shapes::StructureShape.new(name: 'UpdateParticipantAuthenticationResponse')
    UpdateParticipantRoleConfigChannelInfo = Shapes::UnionShape.new(name: 'UpdateParticipantRoleConfigChannelInfo')
    UpdateParticipantRoleConfigRequest = Shapes::StructureShape.new(name: 'UpdateParticipantRoleConfigRequest')
    UpdateParticipantRoleConfigResponse = Shapes::StructureShape.new(name: 'UpdateParticipantRoleConfigResponse')
    UpdatePhoneNumberMetadataRequest = Shapes::StructureShape.new(name: 'UpdatePhoneNumberMetadataRequest')
    UpdatePhoneNumberRequest = Shapes::StructureShape.new(name: 'UpdatePhoneNumberRequest')
    UpdatePhoneNumberResponse = Shapes::StructureShape.new(name: 'UpdatePhoneNumberResponse')
    UpdatePredefinedAttributeRequest = Shapes::StructureShape.new(name: 'UpdatePredefinedAttributeRequest')
    UpdatePromptRequest = Shapes::StructureShape.new(name: 'UpdatePromptRequest')
    UpdatePromptResponse = Shapes::StructureShape.new(name: 'UpdatePromptResponse')
    UpdateQueueHoursOfOperationRequest = Shapes::StructureShape.new(name: 'UpdateQueueHoursOfOperationRequest')
    UpdateQueueMaxContactsRequest = Shapes::StructureShape.new(name: 'UpdateQueueMaxContactsRequest')
    UpdateQueueNameRequest = Shapes::StructureShape.new(name: 'UpdateQueueNameRequest')
    UpdateQueueOutboundCallerConfigRequest = Shapes::StructureShape.new(name: 'UpdateQueueOutboundCallerConfigRequest')
    UpdateQueueOutboundEmailConfigRequest = Shapes::StructureShape.new(name: 'UpdateQueueOutboundEmailConfigRequest')
    UpdateQueueStatusRequest = Shapes::StructureShape.new(name: 'UpdateQueueStatusRequest')
    UpdateQuickConnectConfigRequest = Shapes::StructureShape.new(name: 'UpdateQuickConnectConfigRequest')
    UpdateQuickConnectDescription = Shapes::StringShape.new(name: 'UpdateQuickConnectDescription')
    UpdateQuickConnectNameRequest = Shapes::StructureShape.new(name: 'UpdateQuickConnectNameRequest')
    UpdateRoutingProfileAgentAvailabilityTimerRequest = Shapes::StructureShape.new(name: 'UpdateRoutingProfileAgentAvailabilityTimerRequest')
    UpdateRoutingProfileConcurrencyRequest = Shapes::StructureShape.new(name: 'UpdateRoutingProfileConcurrencyRequest')
    UpdateRoutingProfileDefaultOutboundQueueRequest = Shapes::StructureShape.new(name: 'UpdateRoutingProfileDefaultOutboundQueueRequest')
    UpdateRoutingProfileNameRequest = Shapes::StructureShape.new(name: 'UpdateRoutingProfileNameRequest')
    UpdateRoutingProfileQueuesRequest = Shapes::StructureShape.new(name: 'UpdateRoutingProfileQueuesRequest')
    UpdateRuleRequest = Shapes::StructureShape.new(name: 'UpdateRuleRequest')
    UpdateSecurityProfileRequest = Shapes::StructureShape.new(name: 'UpdateSecurityProfileRequest')
    UpdateTaskTemplateRequest = Shapes::StructureShape.new(name: 'UpdateTaskTemplateRequest')
    UpdateTaskTemplateResponse = Shapes::StructureShape.new(name: 'UpdateTaskTemplateResponse')
    UpdateTrafficDistributionRequest = Shapes::StructureShape.new(name: 'UpdateTrafficDistributionRequest')
    UpdateTrafficDistributionResponse = Shapes::StructureShape.new(name: 'UpdateTrafficDistributionResponse')
    UpdateUserHierarchyGroupNameRequest = Shapes::StructureShape.new(name: 'UpdateUserHierarchyGroupNameRequest')
    UpdateUserHierarchyRequest = Shapes::StructureShape.new(name: 'UpdateUserHierarchyRequest')
    UpdateUserHierarchyStructureRequest = Shapes::StructureShape.new(name: 'UpdateUserHierarchyStructureRequest')
    UpdateUserIdentityInfoRequest = Shapes::StructureShape.new(name: 'UpdateUserIdentityInfoRequest')
    UpdateUserPhoneConfigRequest = Shapes::StructureShape.new(name: 'UpdateUserPhoneConfigRequest')
    UpdateUserProficienciesRequest = Shapes::StructureShape.new(name: 'UpdateUserProficienciesRequest')
    UpdateUserRoutingProfileRequest = Shapes::StructureShape.new(name: 'UpdateUserRoutingProfileRequest')
    UpdateUserSecurityProfilesRequest = Shapes::StructureShape.new(name: 'UpdateUserSecurityProfilesRequest')
    UpdateViewContentRequest = Shapes::StructureShape.new(name: 'UpdateViewContentRequest')
    UpdateViewContentResponse = Shapes::StructureShape.new(name: 'UpdateViewContentResponse')
    UpdateViewMetadataRequest = Shapes::StructureShape.new(name: 'UpdateViewMetadataRequest')
    UpdateViewMetadataResponse = Shapes::StructureShape.new(name: 'UpdateViewMetadataResponse')
    UploadUrlMetadata = Shapes::StructureShape.new(name: 'UploadUrlMetadata')
    Url = Shapes::StringShape.new(name: 'Url')
    UrlMetadataSignedHeaders = Shapes::MapShape.new(name: 'UrlMetadataSignedHeaders')
    UrlMetadataSignedHeadersKey = Shapes::StringShape.new(name: 'UrlMetadataSignedHeadersKey')
    UrlMetadataSignedHeadersValue = Shapes::StringShape.new(name: 'UrlMetadataSignedHeadersValue')
    UrlReference = Shapes::StructureShape.new(name: 'UrlReference')
    UseCase = Shapes::StructureShape.new(name: 'UseCase')
    UseCaseId = Shapes::StringShape.new(name: 'UseCaseId')
    UseCaseSummaryList = Shapes::ListShape.new(name: 'UseCaseSummaryList')
    UseCaseType = Shapes::StringShape.new(name: 'UseCaseType')
    User = Shapes::StructureShape.new(name: 'User')
    UserData = Shapes::StructureShape.new(name: 'UserData')
    UserDataFilters = Shapes::StructureShape.new(name: 'UserDataFilters')
    UserDataHierarchyGroups = Shapes::ListShape.new(name: 'UserDataHierarchyGroups')
    UserDataList = Shapes::ListShape.new(name: 'UserDataList')
    UserHierarchyGroupList = Shapes::ListShape.new(name: 'UserHierarchyGroupList')
    UserHierarchyGroupSearchConditionList = Shapes::ListShape.new(name: 'UserHierarchyGroupSearchConditionList')
    UserHierarchyGroupSearchCriteria = Shapes::StructureShape.new(name: 'UserHierarchyGroupSearchCriteria')
    UserHierarchyGroupSearchFilter = Shapes::StructureShape.new(name: 'UserHierarchyGroupSearchFilter')
    UserId = Shapes::StringShape.new(name: 'UserId')
    UserIdList = Shapes::ListShape.new(name: 'UserIdList')
    UserIdentityInfo = Shapes::StructureShape.new(name: 'UserIdentityInfo')
    UserIdentityInfoLite = Shapes::StructureShape.new(name: 'UserIdentityInfoLite')
    UserInfo = Shapes::StructureShape.new(name: 'UserInfo')
    UserNotFoundException = Shapes::StructureShape.new(name: 'UserNotFoundException')
    UserPhoneConfig = Shapes::StructureShape.new(name: 'UserPhoneConfig')
    UserProficiency = Shapes::StructureShape.new(name: 'UserProficiency')
    UserProficiencyDisassociate = Shapes::StructureShape.new(name: 'UserProficiencyDisassociate')
    UserProficiencyDisassociateList = Shapes::ListShape.new(name: 'UserProficiencyDisassociateList')
    UserProficiencyList = Shapes::ListShape.new(name: 'UserProficiencyList')
    UserQuickConnectConfig = Shapes::StructureShape.new(name: 'UserQuickConnectConfig')
    UserReference = Shapes::StructureShape.new(name: 'UserReference')
    UserSearchConditionList = Shapes::ListShape.new(name: 'UserSearchConditionList')
    UserSearchCriteria = Shapes::StructureShape.new(name: 'UserSearchCriteria')
    UserSearchFilter = Shapes::StructureShape.new(name: 'UserSearchFilter')
    UserSearchSummary = Shapes::StructureShape.new(name: 'UserSearchSummary')
    UserSearchSummaryList = Shapes::ListShape.new(name: 'UserSearchSummaryList')
    UserSummary = Shapes::StructureShape.new(name: 'UserSummary')
    UserSummaryList = Shapes::ListShape.new(name: 'UserSummaryList')
    UserTagMap = Shapes::MapShape.new(name: 'UserTagMap')
    Value = Shapes::FloatShape.new(name: 'Value')
    VersionNumber = Shapes::IntegerShape.new(name: 'VersionNumber')
    VideoCapability = Shapes::StringShape.new(name: 'VideoCapability')
    View = Shapes::StructureShape.new(name: 'View')
    ViewAction = Shapes::StringShape.new(name: 'ViewAction')
    ViewActions = Shapes::ListShape.new(name: 'ViewActions')
    ViewContent = Shapes::StructureShape.new(name: 'ViewContent')
    ViewContentSha256 = Shapes::StringShape.new(name: 'ViewContentSha256')
    ViewDescription = Shapes::StringShape.new(name: 'ViewDescription')
    ViewId = Shapes::StringShape.new(name: 'ViewId')
    ViewInputContent = Shapes::StructureShape.new(name: 'ViewInputContent')
    ViewInputSchema = Shapes::StringShape.new(name: 'ViewInputSchema')
    ViewName = Shapes::StringShape.new(name: 'ViewName')
    ViewStatus = Shapes::StringShape.new(name: 'ViewStatus')
    ViewSummary = Shapes::StructureShape.new(name: 'ViewSummary')
    ViewTemplate = Shapes::StringShape.new(name: 'ViewTemplate')
    ViewType = Shapes::StringShape.new(name: 'ViewType')
    ViewVersion = Shapes::IntegerShape.new(name: 'ViewVersion')
    ViewVersionSummary = Shapes::StructureShape.new(name: 'ViewVersionSummary')
    ViewVersionSummaryList = Shapes::ListShape.new(name: 'ViewVersionSummaryList')
    ViewsClientToken = Shapes::StringShape.new(name: 'ViewsClientToken')
    ViewsInstanceId = Shapes::StringShape.new(name: 'ViewsInstanceId')
    ViewsNextToken = Shapes::StringShape.new(name: 'ViewsNextToken')
    ViewsSummaryList = Shapes::ListShape.new(name: 'ViewsSummaryList')
    Vocabulary = Shapes::StructureShape.new(name: 'Vocabulary')
    VocabularyContent = Shapes::StringShape.new(name: 'VocabularyContent')
    VocabularyFailureReason = Shapes::StringShape.new(name: 'VocabularyFailureReason')
    VocabularyId = Shapes::StringShape.new(name: 'VocabularyId')
    VocabularyLanguageCode = Shapes::StringShape.new(name: 'VocabularyLanguageCode')
    VocabularyLastModifiedTime = Shapes::TimestampShape.new(name: 'VocabularyLastModifiedTime')
    VocabularyName = Shapes::StringShape.new(name: 'VocabularyName')
    VocabularyNextToken = Shapes::StringShape.new(name: 'VocabularyNextToken')
    VocabularyState = Shapes::StringShape.new(name: 'VocabularyState')
    VocabularySummary = Shapes::StructureShape.new(name: 'VocabularySummary')
    VocabularySummaryList = Shapes::ListShape.new(name: 'VocabularySummaryList')
    VoiceRecordingConfiguration = Shapes::StructureShape.new(name: 'VoiceRecordingConfiguration')
    VoiceRecordingTrack = Shapes::StringShape.new(name: 'VoiceRecordingTrack')
    WisdomInfo = Shapes::StructureShape.new(name: 'WisdomInfo')
    resourceArnListMaxLimit100 = Shapes::ListShape.new(name: 'resourceArnListMaxLimit100')
    timestamp = Shapes::TimestampShape.new(name: 'timestamp')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActionSummaries.member = Shapes::ShapeRef.new(shape: ActionSummary)

    ActionSummary.add_member(:action_type, Shapes::ShapeRef.new(shape: ActionType, required: true, location_name: "ActionType"))
    ActionSummary.struct_class = Types::ActionSummary

    ActivateEvaluationFormRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ActivateEvaluationFormRequest.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "EvaluationFormId"))
    ActivateEvaluationFormRequest.add_member(:evaluation_form_version, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "EvaluationFormVersion"))
    ActivateEvaluationFormRequest.struct_class = Types::ActivateEvaluationFormRequest

    ActivateEvaluationFormResponse.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "EvaluationFormId"))
    ActivateEvaluationFormResponse.add_member(:evaluation_form_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "EvaluationFormArn"))
    ActivateEvaluationFormResponse.add_member(:evaluation_form_version, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "EvaluationFormVersion"))
    ActivateEvaluationFormResponse.struct_class = Types::ActivateEvaluationFormResponse

    AdditionalEmailRecipients.add_member(:to_list, Shapes::ShapeRef.new(shape: EmailRecipientsList, location_name: "ToList"))
    AdditionalEmailRecipients.add_member(:cc_list, Shapes::ShapeRef.new(shape: EmailRecipientsList, location_name: "CcList"))
    AdditionalEmailRecipients.struct_class = Types::AdditionalEmailRecipients

    AgentConfig.add_member(:distributions, Shapes::ShapeRef.new(shape: DistributionList, required: true, location_name: "Distributions"))
    AgentConfig.struct_class = Types::AgentConfig

    AgentContactReference.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContactId"))
    AgentContactReference.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "Channel"))
    AgentContactReference.add_member(:initiation_method, Shapes::ShapeRef.new(shape: ContactInitiationMethod, location_name: "InitiationMethod"))
    AgentContactReference.add_member(:agent_contact_state, Shapes::ShapeRef.new(shape: ContactState, location_name: "AgentContactState"))
    AgentContactReference.add_member(:state_start_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StateStartTimestamp"))
    AgentContactReference.add_member(:connected_to_agent_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ConnectedToAgentTimestamp"))
    AgentContactReference.add_member(:queue, Shapes::ShapeRef.new(shape: QueueReference, location_name: "Queue"))
    AgentContactReference.struct_class = Types::AgentContactReference

    AgentContactReferenceList.member = Shapes::ShapeRef.new(shape: AgentContactReference)

    AgentFirst.add_member(:preview, Shapes::ShapeRef.new(shape: Preview, location_name: "Preview"))
    AgentFirst.struct_class = Types::AgentFirst

    AgentHierarchyGroup.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    AgentHierarchyGroup.struct_class = Types::AgentHierarchyGroup

    AgentHierarchyGroups.add_member(:l1_ids, Shapes::ShapeRef.new(shape: HierarchyGroupIdList, location_name: "L1Ids"))
    AgentHierarchyGroups.add_member(:l2_ids, Shapes::ShapeRef.new(shape: HierarchyGroupIdList, location_name: "L2Ids"))
    AgentHierarchyGroups.add_member(:l3_ids, Shapes::ShapeRef.new(shape: HierarchyGroupIdList, location_name: "L3Ids"))
    AgentHierarchyGroups.add_member(:l4_ids, Shapes::ShapeRef.new(shape: HierarchyGroupIdList, location_name: "L4Ids"))
    AgentHierarchyGroups.add_member(:l5_ids, Shapes::ShapeRef.new(shape: HierarchyGroupIdList, location_name: "L5Ids"))
    AgentHierarchyGroups.struct_class = Types::AgentHierarchyGroups

    AgentIds.member = Shapes::ShapeRef.new(shape: AgentId)

    AgentInfo.add_member(:id, Shapes::ShapeRef.new(shape: AgentResourceId, location_name: "Id"))
    AgentInfo.add_member(:accepted_by_agent_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "AcceptedByAgentTimestamp"))
    AgentInfo.add_member(:preview_end_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "PreviewEndTimestamp"))
    AgentInfo.add_member(:connected_to_agent_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "ConnectedToAgentTimestamp"))
    AgentInfo.add_member(:agent_pause_duration_in_seconds, Shapes::ShapeRef.new(shape: AgentPauseDurationInSeconds, location_name: "AgentPauseDurationInSeconds"))
    AgentInfo.add_member(:hierarchy_groups, Shapes::ShapeRef.new(shape: HierarchyGroups, location_name: "HierarchyGroups"))
    AgentInfo.add_member(:device_info, Shapes::ShapeRef.new(shape: DeviceInfo, location_name: "DeviceInfo"))
    AgentInfo.add_member(:capabilities, Shapes::ShapeRef.new(shape: ParticipantCapabilities, location_name: "Capabilities"))
    AgentInfo.add_member(:after_contact_work_duration, Shapes::ShapeRef.new(shape: Duration, location_name: "AfterContactWorkDuration"))
    AgentInfo.add_member(:after_contact_work_start_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "AfterContactWorkStartTimestamp"))
    AgentInfo.add_member(:after_contact_work_end_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "AfterContactWorkEndTimestamp"))
    AgentInfo.add_member(:agent_initiated_hold_duration, Shapes::ShapeRef.new(shape: Duration, location_name: "AgentInitiatedHoldDuration"))
    AgentInfo.add_member(:state_transitions, Shapes::ShapeRef.new(shape: StateTransitions, location_name: "StateTransitions"))
    AgentInfo.struct_class = Types::AgentInfo

    AgentQualityMetrics.add_member(:audio, Shapes::ShapeRef.new(shape: AudioQualityMetricsInfo, location_name: "Audio"))
    AgentQualityMetrics.struct_class = Types::AgentQualityMetrics

    AgentResourceIdList.member = Shapes::ShapeRef.new(shape: AgentResourceId)

    AgentStatus.add_member(:agent_status_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "AgentStatusARN"))
    AgentStatus.add_member(:agent_status_id, Shapes::ShapeRef.new(shape: AgentStatusId, location_name: "AgentStatusId"))
    AgentStatus.add_member(:name, Shapes::ShapeRef.new(shape: AgentStatusName, location_name: "Name"))
    AgentStatus.add_member(:description, Shapes::ShapeRef.new(shape: AgentStatusDescription, location_name: "Description"))
    AgentStatus.add_member(:type, Shapes::ShapeRef.new(shape: AgentStatusType, location_name: "Type"))
    AgentStatus.add_member(:display_order, Shapes::ShapeRef.new(shape: AgentStatusOrderNumber, location_name: "DisplayOrder"))
    AgentStatus.add_member(:state, Shapes::ShapeRef.new(shape: AgentStatusState, location_name: "State"))
    AgentStatus.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    AgentStatus.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    AgentStatus.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    AgentStatus.struct_class = Types::AgentStatus

    AgentStatusIdentifier.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    AgentStatusIdentifier.add_member(:id, Shapes::ShapeRef.new(shape: AgentStatusId, location_name: "Id"))
    AgentStatusIdentifier.struct_class = Types::AgentStatusIdentifier

    AgentStatusList.member = Shapes::ShapeRef.new(shape: AgentStatus)

    AgentStatusReference.add_member(:status_start_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StatusStartTimestamp"))
    AgentStatusReference.add_member(:status_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "StatusArn"))
    AgentStatusReference.add_member(:status_name, Shapes::ShapeRef.new(shape: AgentStatusName, location_name: "StatusName"))
    AgentStatusReference.struct_class = Types::AgentStatusReference

    AgentStatusSearchConditionList.member = Shapes::ShapeRef.new(shape: AgentStatusSearchCriteria)

    AgentStatusSearchCriteria.add_member(:or_conditions, Shapes::ShapeRef.new(shape: AgentStatusSearchConditionList, location_name: "OrConditions"))
    AgentStatusSearchCriteria.add_member(:and_conditions, Shapes::ShapeRef.new(shape: AgentStatusSearchConditionList, location_name: "AndConditions"))
    AgentStatusSearchCriteria.add_member(:string_condition, Shapes::ShapeRef.new(shape: StringCondition, location_name: "StringCondition"))
    AgentStatusSearchCriteria.struct_class = Types::AgentStatusSearchCriteria

    AgentStatusSearchFilter.add_member(:attribute_filter, Shapes::ShapeRef.new(shape: ControlPlaneAttributeFilter, location_name: "AttributeFilter"))
    AgentStatusSearchFilter.struct_class = Types::AgentStatusSearchFilter

    AgentStatusSummary.add_member(:id, Shapes::ShapeRef.new(shape: AgentStatusId, location_name: "Id"))
    AgentStatusSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    AgentStatusSummary.add_member(:name, Shapes::ShapeRef.new(shape: AgentStatusName, location_name: "Name"))
    AgentStatusSummary.add_member(:type, Shapes::ShapeRef.new(shape: AgentStatusType, location_name: "Type"))
    AgentStatusSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    AgentStatusSummary.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    AgentStatusSummary.struct_class = Types::AgentStatusSummary

    AgentStatusSummaryList.member = Shapes::ShapeRef.new(shape: AgentStatusSummary)

    AgentStatusTypes.member = Shapes::ShapeRef.new(shape: AgentStatusType)

    AgentStatuses.member = Shapes::ShapeRef.new(shape: AgentStatusId)

    AgentsCriteria.add_member(:agent_ids, Shapes::ShapeRef.new(shape: AgentIds, location_name: "AgentIds"))
    AgentsCriteria.struct_class = Types::AgentsCriteria

    AgentsMinOneMaxHundred.member = Shapes::ShapeRef.new(shape: UserId)

    AliasConfiguration.add_member(:email_address_id, Shapes::ShapeRef.new(shape: EmailAddressId, required: true, location_name: "EmailAddressId"))
    AliasConfiguration.struct_class = Types::AliasConfiguration

    AliasConfigurationList.member = Shapes::ShapeRef.new(shape: AliasConfiguration)

    AllowedAccessControlTags.key = Shapes::ShapeRef.new(shape: SecurityProfilePolicyKey)
    AllowedAccessControlTags.value = Shapes::ShapeRef.new(shape: SecurityProfilePolicyValue)

    AllowedCapabilities.add_member(:customer, Shapes::ShapeRef.new(shape: ParticipantCapabilities, location_name: "Customer"))
    AllowedCapabilities.add_member(:agent, Shapes::ShapeRef.new(shape: ParticipantCapabilities, location_name: "Agent"))
    AllowedCapabilities.struct_class = Types::AllowedCapabilities

    AllowedMonitorCapabilities.member = Shapes::ShapeRef.new(shape: MonitorCapability)

    AllowedUserActions.member = Shapes::ShapeRef.new(shape: AllowedUserAction)

    AnalyticsDataAssociationResult.add_member(:data_set_id, Shapes::ShapeRef.new(shape: DataSetId, location_name: "DataSetId"))
    AnalyticsDataAssociationResult.add_member(:target_account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "TargetAccountId"))
    AnalyticsDataAssociationResult.add_member(:resource_share_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceShareId"))
    AnalyticsDataAssociationResult.add_member(:resource_share_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ResourceShareArn"))
    AnalyticsDataAssociationResult.add_member(:resource_share_status, Shapes::ShapeRef.new(shape: String, location_name: "ResourceShareStatus"))
    AnalyticsDataAssociationResult.struct_class = Types::AnalyticsDataAssociationResult

    AnalyticsDataAssociationResults.member = Shapes::ShapeRef.new(shape: AnalyticsDataAssociationResult)

    AnalyticsDataSetsResult.add_member(:data_set_id, Shapes::ShapeRef.new(shape: DataSetId, location_name: "DataSetId"))
    AnalyticsDataSetsResult.add_member(:data_set_name, Shapes::ShapeRef.new(shape: String, location_name: "DataSetName"))
    AnalyticsDataSetsResult.struct_class = Types::AnalyticsDataSetsResult

    AnalyticsDataSetsResults.member = Shapes::ShapeRef.new(shape: AnalyticsDataSetsResult)

    AnswerMachineDetectionConfig.add_member(:enable_answer_machine_detection, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableAnswerMachineDetection"))
    AnswerMachineDetectionConfig.add_member(:await_answer_machine_prompt, Shapes::ShapeRef.new(shape: Boolean, location_name: "AwaitAnswerMachinePrompt"))
    AnswerMachineDetectionConfig.struct_class = Types::AnswerMachineDetectionConfig

    Application.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace"))
    Application.add_member(:application_permissions, Shapes::ShapeRef.new(shape: ApplicationPermissions, location_name: "ApplicationPermissions"))
    Application.struct_class = Types::Application

    ApplicationPermissions.member = Shapes::ShapeRef.new(shape: Permission)

    Applications.member = Shapes::ShapeRef.new(shape: Application)

    AssignContactCategoryActionDefinition.struct_class = Types::AssignContactCategoryActionDefinition

    AssignSlaActionDefinition.add_member(:sla_assignment_type, Shapes::ShapeRef.new(shape: SlaAssignmentType, required: true, location_name: "SlaAssignmentType"))
    AssignSlaActionDefinition.add_member(:case_sla_configuration, Shapes::ShapeRef.new(shape: CaseSlaConfiguration, location_name: "CaseSlaConfiguration"))
    AssignSlaActionDefinition.struct_class = Types::AssignSlaActionDefinition

    AssociateAnalyticsDataSetRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    AssociateAnalyticsDataSetRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: DataSetId, required: true, location_name: "DataSetId"))
    AssociateAnalyticsDataSetRequest.add_member(:target_account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "TargetAccountId"))
    AssociateAnalyticsDataSetRequest.struct_class = Types::AssociateAnalyticsDataSetRequest

    AssociateAnalyticsDataSetResponse.add_member(:data_set_id, Shapes::ShapeRef.new(shape: DataSetId, location_name: "DataSetId"))
    AssociateAnalyticsDataSetResponse.add_member(:target_account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "TargetAccountId"))
    AssociateAnalyticsDataSetResponse.add_member(:resource_share_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceShareId"))
    AssociateAnalyticsDataSetResponse.add_member(:resource_share_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ResourceShareArn"))
    AssociateAnalyticsDataSetResponse.struct_class = Types::AssociateAnalyticsDataSetResponse

    AssociateApprovedOriginRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    AssociateApprovedOriginRequest.add_member(:origin, Shapes::ShapeRef.new(shape: Origin, required: true, location_name: "Origin"))
    AssociateApprovedOriginRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    AssociateApprovedOriginRequest.struct_class = Types::AssociateApprovedOriginRequest

    AssociateBotRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    AssociateBotRequest.add_member(:lex_bot, Shapes::ShapeRef.new(shape: LexBot, location_name: "LexBot"))
    AssociateBotRequest.add_member(:lex_v2_bot, Shapes::ShapeRef.new(shape: LexV2Bot, location_name: "LexV2Bot"))
    AssociateBotRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    AssociateBotRequest.struct_class = Types::AssociateBotRequest

    AssociateContactWithUserRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    AssociateContactWithUserRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location: "uri", location_name: "ContactId"))
    AssociateContactWithUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: AgentResourceId, required: true, location_name: "UserId"))
    AssociateContactWithUserRequest.struct_class = Types::AssociateContactWithUserRequest

    AssociateContactWithUserResponse.struct_class = Types::AssociateContactWithUserResponse

    AssociateDefaultVocabularyRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    AssociateDefaultVocabularyRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: VocabularyLanguageCode, required: true, location: "uri", location_name: "LanguageCode"))
    AssociateDefaultVocabularyRequest.add_member(:vocabulary_id, Shapes::ShapeRef.new(shape: VocabularyId, location_name: "VocabularyId"))
    AssociateDefaultVocabularyRequest.struct_class = Types::AssociateDefaultVocabularyRequest

    AssociateDefaultVocabularyResponse.struct_class = Types::AssociateDefaultVocabularyResponse

    AssociateEmailAddressAliasRequest.add_member(:email_address_id, Shapes::ShapeRef.new(shape: EmailAddressId, required: true, location: "uri", location_name: "EmailAddressId"))
    AssociateEmailAddressAliasRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    AssociateEmailAddressAliasRequest.add_member(:alias_configuration, Shapes::ShapeRef.new(shape: AliasConfiguration, required: true, location_name: "AliasConfiguration"))
    AssociateEmailAddressAliasRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    AssociateEmailAddressAliasRequest.struct_class = Types::AssociateEmailAddressAliasRequest

    AssociateEmailAddressAliasResponse.struct_class = Types::AssociateEmailAddressAliasResponse

    AssociateFlowRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    AssociateFlowRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "ResourceId"))
    AssociateFlowRequest.add_member(:flow_id, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "FlowId"))
    AssociateFlowRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: FlowAssociationResourceType, required: true, location_name: "ResourceType"))
    AssociateFlowRequest.struct_class = Types::AssociateFlowRequest

    AssociateFlowResponse.struct_class = Types::AssociateFlowResponse

    AssociateInstanceStorageConfigRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    AssociateInstanceStorageConfigRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: InstanceStorageResourceType, required: true, location_name: "ResourceType"))
    AssociateInstanceStorageConfigRequest.add_member(:storage_config, Shapes::ShapeRef.new(shape: InstanceStorageConfig, required: true, location_name: "StorageConfig"))
    AssociateInstanceStorageConfigRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    AssociateInstanceStorageConfigRequest.struct_class = Types::AssociateInstanceStorageConfigRequest

    AssociateInstanceStorageConfigResponse.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    AssociateInstanceStorageConfigResponse.struct_class = Types::AssociateInstanceStorageConfigResponse

    AssociateLambdaFunctionRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    AssociateLambdaFunctionRequest.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionArn, required: true, location_name: "FunctionArn"))
    AssociateLambdaFunctionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    AssociateLambdaFunctionRequest.struct_class = Types::AssociateLambdaFunctionRequest

    AssociateLexBotRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    AssociateLexBotRequest.add_member(:lex_bot, Shapes::ShapeRef.new(shape: LexBot, required: true, location_name: "LexBot"))
    AssociateLexBotRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    AssociateLexBotRequest.struct_class = Types::AssociateLexBotRequest

    AssociatePhoneNumberContactFlowRequest.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: PhoneNumberId, required: true, location: "uri", location_name: "PhoneNumberId"))
    AssociatePhoneNumberContactFlowRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    AssociatePhoneNumberContactFlowRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, required: true, location_name: "ContactFlowId"))
    AssociatePhoneNumberContactFlowRequest.struct_class = Types::AssociatePhoneNumberContactFlowRequest

    AssociateQueueQuickConnectsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    AssociateQueueQuickConnectsRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "QueueId"))
    AssociateQueueQuickConnectsRequest.add_member(:quick_connect_ids, Shapes::ShapeRef.new(shape: QuickConnectsList, required: true, location_name: "QuickConnectIds"))
    AssociateQueueQuickConnectsRequest.struct_class = Types::AssociateQueueQuickConnectsRequest

    AssociateRoutingProfileQueuesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    AssociateRoutingProfileQueuesRequest.add_member(:routing_profile_id, Shapes::ShapeRef.new(shape: RoutingProfileId, required: true, location: "uri", location_name: "RoutingProfileId"))
    AssociateRoutingProfileQueuesRequest.add_member(:queue_configs, Shapes::ShapeRef.new(shape: RoutingProfileQueueConfigList, location_name: "QueueConfigs"))
    AssociateRoutingProfileQueuesRequest.add_member(:manual_assignment_queue_configs, Shapes::ShapeRef.new(shape: RoutingProfileManualAssignmentQueueConfigList, location_name: "ManualAssignmentQueueConfigs"))
    AssociateRoutingProfileQueuesRequest.struct_class = Types::AssociateRoutingProfileQueuesRequest

    AssociateSecurityKeyRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    AssociateSecurityKeyRequest.add_member(:key, Shapes::ShapeRef.new(shape: PEM, required: true, location_name: "Key"))
    AssociateSecurityKeyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    AssociateSecurityKeyRequest.struct_class = Types::AssociateSecurityKeyRequest

    AssociateSecurityKeyResponse.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    AssociateSecurityKeyResponse.struct_class = Types::AssociateSecurityKeyResponse

    AssociateTrafficDistributionGroupUserRequest.add_member(:traffic_distribution_group_id, Shapes::ShapeRef.new(shape: TrafficDistributionGroupIdOrArn, required: true, location: "uri", location_name: "TrafficDistributionGroupId"))
    AssociateTrafficDistributionGroupUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location_name: "UserId"))
    AssociateTrafficDistributionGroupUserRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    AssociateTrafficDistributionGroupUserRequest.struct_class = Types::AssociateTrafficDistributionGroupUserRequest

    AssociateTrafficDistributionGroupUserResponse.struct_class = Types::AssociateTrafficDistributionGroupUserResponse

    AssociateUserProficienciesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    AssociateUserProficienciesRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "UserId"))
    AssociateUserProficienciesRequest.add_member(:user_proficiencies, Shapes::ShapeRef.new(shape: UserProficiencyList, required: true, location_name: "UserProficiencies"))
    AssociateUserProficienciesRequest.struct_class = Types::AssociateUserProficienciesRequest

    AssociatedContactSummary.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContactId"))
    AssociatedContactSummary.add_member(:contact_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ContactArn"))
    AssociatedContactSummary.add_member(:initiation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "InitiationTimestamp"))
    AssociatedContactSummary.add_member(:disconnect_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DisconnectTimestamp"))
    AssociatedContactSummary.add_member(:initial_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "InitialContactId"))
    AssociatedContactSummary.add_member(:previous_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "PreviousContactId"))
    AssociatedContactSummary.add_member(:related_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "RelatedContactId"))
    AssociatedContactSummary.add_member(:initiation_method, Shapes::ShapeRef.new(shape: ContactInitiationMethod, location_name: "InitiationMethod"))
    AssociatedContactSummary.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "Channel"))
    AssociatedContactSummary.struct_class = Types::AssociatedContactSummary

    AssociatedContactSummaryList.member = Shapes::ShapeRef.new(shape: AssociatedContactSummary)

    AssociatedQueueIdList.member = Shapes::ShapeRef.new(shape: QueueId)

    AttachedFile.add_member(:creation_time, Shapes::ShapeRef.new(shape: ISO8601Datetime, required: true, location_name: "CreationTime"))
    AttachedFile.add_member(:file_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "FileArn"))
    AttachedFile.add_member(:file_id, Shapes::ShapeRef.new(shape: FileId, required: true, location_name: "FileId"))
    AttachedFile.add_member(:file_name, Shapes::ShapeRef.new(shape: FileName, required: true, location_name: "FileName"))
    AttachedFile.add_member(:file_size_in_bytes, Shapes::ShapeRef.new(shape: FileSizeInBytes, required: true, location_name: "FileSizeInBytes", metadata: {"box" => true}))
    AttachedFile.add_member(:file_status, Shapes::ShapeRef.new(shape: FileStatusType, required: true, location_name: "FileStatus"))
    AttachedFile.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedByInfo, location_name: "CreatedBy"))
    AttachedFile.add_member(:file_use_case_type, Shapes::ShapeRef.new(shape: FileUseCaseType, location_name: "FileUseCaseType"))
    AttachedFile.add_member(:associated_resource_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "AssociatedResourceArn"))
    AttachedFile.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    AttachedFile.struct_class = Types::AttachedFile

    AttachedFileError.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    AttachedFileError.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    AttachedFileError.add_member(:file_id, Shapes::ShapeRef.new(shape: FileId, location_name: "FileId"))
    AttachedFileError.struct_class = Types::AttachedFileError

    AttachedFileErrorsList.member = Shapes::ShapeRef.new(shape: AttachedFileError)

    AttachedFilesList.member = Shapes::ShapeRef.new(shape: AttachedFile)

    AttachmentReference.add_member(:name, Shapes::ShapeRef.new(shape: ReferenceKey, location_name: "Name"))
    AttachmentReference.add_member(:value, Shapes::ShapeRef.new(shape: ReferenceValue, location_name: "Value"))
    AttachmentReference.add_member(:status, Shapes::ShapeRef.new(shape: ReferenceStatus, location_name: "Status"))
    AttachmentReference.add_member(:arn, Shapes::ShapeRef.new(shape: ReferenceArn, location_name: "Arn"))
    AttachmentReference.struct_class = Types::AttachmentReference

    Attendee.add_member(:attendee_id, Shapes::ShapeRef.new(shape: AttendeeId, location_name: "AttendeeId"))
    Attendee.add_member(:join_token, Shapes::ShapeRef.new(shape: JoinToken, location_name: "JoinToken"))
    Attendee.struct_class = Types::Attendee

    Attribute.add_member(:attribute_type, Shapes::ShapeRef.new(shape: InstanceAttributeType, location_name: "AttributeType"))
    Attribute.add_member(:value, Shapes::ShapeRef.new(shape: InstanceAttributeValue, location_name: "Value"))
    Attribute.struct_class = Types::Attribute

    AttributeAndCondition.add_member(:tag_conditions, Shapes::ShapeRef.new(shape: TagAndConditionList, location_name: "TagConditions"))
    AttributeAndCondition.add_member(:hierarchy_group_condition, Shapes::ShapeRef.new(shape: HierarchyGroupCondition, location_name: "HierarchyGroupCondition"))
    AttributeAndCondition.struct_class = Types::AttributeAndCondition

    AttributeCondition.add_member(:name, Shapes::ShapeRef.new(shape: PredefinedAttributeName, location_name: "Name"))
    AttributeCondition.add_member(:value, Shapes::ShapeRef.new(shape: ProficiencyValue, location_name: "Value"))
    AttributeCondition.add_member(:proficiency_level, Shapes::ShapeRef.new(shape: NullableProficiencyLevel, location_name: "ProficiencyLevel"))
    AttributeCondition.add_member(:range, Shapes::ShapeRef.new(shape: Range, location_name: "Range"))
    AttributeCondition.add_member(:match_criteria, Shapes::ShapeRef.new(shape: MatchCriteria, location_name: "MatchCriteria"))
    AttributeCondition.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: "ComparisonOperator"))
    AttributeCondition.struct_class = Types::AttributeCondition

    AttributeOrConditionList.member = Shapes::ShapeRef.new(shape: AttributeAndCondition)

    Attributes.key = Shapes::ShapeRef.new(shape: AttributeName)
    Attributes.value = Shapes::ShapeRef.new(shape: AttributeValue)

    AttributesList.member = Shapes::ShapeRef.new(shape: Attribute)

    AudioFeatures.add_member(:echo_reduction, Shapes::ShapeRef.new(shape: MeetingFeatureStatus, location_name: "EchoReduction"))
    AudioFeatures.struct_class = Types::AudioFeatures

    AudioQualityMetricsInfo.add_member(:quality_score, Shapes::ShapeRef.new(shape: AudioQualityScore, location_name: "QualityScore"))
    AudioQualityMetricsInfo.add_member(:potential_quality_issues, Shapes::ShapeRef.new(shape: PotentialAudioQualityIssues, location_name: "PotentialQualityIssues"))
    AudioQualityMetricsInfo.struct_class = Types::AudioQualityMetricsInfo

    AuthenticationProfile.add_member(:id, Shapes::ShapeRef.new(shape: AuthenticationProfileId, location_name: "Id"))
    AuthenticationProfile.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    AuthenticationProfile.add_member(:name, Shapes::ShapeRef.new(shape: AuthenticationProfileName, location_name: "Name"))
    AuthenticationProfile.add_member(:description, Shapes::ShapeRef.new(shape: AuthenticationProfileDescription, location_name: "Description"))
    AuthenticationProfile.add_member(:allowed_ips, Shapes::ShapeRef.new(shape: IpCidrList, location_name: "AllowedIps"))
    AuthenticationProfile.add_member(:blocked_ips, Shapes::ShapeRef.new(shape: IpCidrList, location_name: "BlockedIps"))
    AuthenticationProfile.add_member(:is_default, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsDefault"))
    AuthenticationProfile.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    AuthenticationProfile.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    AuthenticationProfile.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    AuthenticationProfile.add_member(:periodic_session_duration, Shapes::ShapeRef.new(shape: AccessTokenDuration, deprecated: true, location_name: "PeriodicSessionDuration", metadata: {"deprecatedMessage" => "PeriodicSessionDuration is deprecated. Use SessionInactivityDuration instead.", "deprecatedSince" => "10/31/2025"}))
    AuthenticationProfile.add_member(:max_session_duration, Shapes::ShapeRef.new(shape: RefreshTokenDuration, location_name: "MaxSessionDuration"))
    AuthenticationProfile.add_member(:session_inactivity_duration, Shapes::ShapeRef.new(shape: InactivityDuration, location_name: "SessionInactivityDuration", metadata: {"box" => true}))
    AuthenticationProfile.add_member(:session_inactivity_handling_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "SessionInactivityHandlingEnabled", metadata: {"box" => true}))
    AuthenticationProfile.struct_class = Types::AuthenticationProfile

    AuthenticationProfileSummary.add_member(:id, Shapes::ShapeRef.new(shape: AuthenticationProfileId, location_name: "Id"))
    AuthenticationProfileSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    AuthenticationProfileSummary.add_member(:name, Shapes::ShapeRef.new(shape: AuthenticationProfileName, location_name: "Name"))
    AuthenticationProfileSummary.add_member(:is_default, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsDefault"))
    AuthenticationProfileSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    AuthenticationProfileSummary.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    AuthenticationProfileSummary.struct_class = Types::AuthenticationProfileSummary

    AuthenticationProfileSummaryList.member = Shapes::ShapeRef.new(shape: AuthenticationProfileSummary)

    AutoEvaluationConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "Enabled"))
    AutoEvaluationConfiguration.struct_class = Types::AutoEvaluationConfiguration

    AutoEvaluationDetails.add_member(:auto_evaluation_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "AutoEvaluationEnabled"))
    AutoEvaluationDetails.add_member(:auto_evaluation_status, Shapes::ShapeRef.new(shape: AutoEvaluationStatus, location_name: "AutoEvaluationStatus"))
    AutoEvaluationDetails.struct_class = Types::AutoEvaluationDetails

    AutomaticFailConfiguration.add_member(:target_section, Shapes::ShapeRef.new(shape: ReferenceId, location_name: "TargetSection"))
    AutomaticFailConfiguration.struct_class = Types::AutomaticFailConfiguration

    AvailableNumberSummary.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "PhoneNumber"))
    AvailableNumberSummary.add_member(:phone_number_country_code, Shapes::ShapeRef.new(shape: PhoneNumberCountryCode, location_name: "PhoneNumberCountryCode"))
    AvailableNumberSummary.add_member(:phone_number_type, Shapes::ShapeRef.new(shape: PhoneNumberType, location_name: "PhoneNumberType"))
    AvailableNumberSummary.struct_class = Types::AvailableNumberSummary

    AvailableNumbersList.member = Shapes::ShapeRef.new(shape: AvailableNumberSummary)

    BatchAssociateAnalyticsDataSetRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    BatchAssociateAnalyticsDataSetRequest.add_member(:data_set_ids, Shapes::ShapeRef.new(shape: DataSetIds, required: true, location_name: "DataSetIds"))
    BatchAssociateAnalyticsDataSetRequest.add_member(:target_account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "TargetAccountId"))
    BatchAssociateAnalyticsDataSetRequest.struct_class = Types::BatchAssociateAnalyticsDataSetRequest

    BatchAssociateAnalyticsDataSetResponse.add_member(:created, Shapes::ShapeRef.new(shape: AnalyticsDataAssociationResults, location_name: "Created"))
    BatchAssociateAnalyticsDataSetResponse.add_member(:errors, Shapes::ShapeRef.new(shape: ErrorResults, location_name: "Errors"))
    BatchAssociateAnalyticsDataSetResponse.struct_class = Types::BatchAssociateAnalyticsDataSetResponse

    BatchDisassociateAnalyticsDataSetRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    BatchDisassociateAnalyticsDataSetRequest.add_member(:data_set_ids, Shapes::ShapeRef.new(shape: DataSetIds, required: true, location_name: "DataSetIds"))
    BatchDisassociateAnalyticsDataSetRequest.add_member(:target_account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "TargetAccountId"))
    BatchDisassociateAnalyticsDataSetRequest.struct_class = Types::BatchDisassociateAnalyticsDataSetRequest

    BatchDisassociateAnalyticsDataSetResponse.add_member(:deleted, Shapes::ShapeRef.new(shape: DataSetIds, location_name: "Deleted"))
    BatchDisassociateAnalyticsDataSetResponse.add_member(:errors, Shapes::ShapeRef.new(shape: ErrorResults, location_name: "Errors"))
    BatchDisassociateAnalyticsDataSetResponse.struct_class = Types::BatchDisassociateAnalyticsDataSetResponse

    BatchGetAttachedFileMetadataRequest.add_member(:file_ids, Shapes::ShapeRef.new(shape: FileIdList, required: true, location_name: "FileIds"))
    BatchGetAttachedFileMetadataRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    BatchGetAttachedFileMetadataRequest.add_member(:associated_resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "querystring", location_name: "associatedResourceArn"))
    BatchGetAttachedFileMetadataRequest.struct_class = Types::BatchGetAttachedFileMetadataRequest

    BatchGetAttachedFileMetadataResponse.add_member(:files, Shapes::ShapeRef.new(shape: AttachedFilesList, location_name: "Files"))
    BatchGetAttachedFileMetadataResponse.add_member(:errors, Shapes::ShapeRef.new(shape: AttachedFileErrorsList, location_name: "Errors"))
    BatchGetAttachedFileMetadataResponse.struct_class = Types::BatchGetAttachedFileMetadataResponse

    BatchGetFlowAssociationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    BatchGetFlowAssociationRequest.add_member(:resource_ids, Shapes::ShapeRef.new(shape: resourceArnListMaxLimit100, required: true, location_name: "ResourceIds"))
    BatchGetFlowAssociationRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ListFlowAssociationResourceType, location_name: "ResourceType"))
    BatchGetFlowAssociationRequest.struct_class = Types::BatchGetFlowAssociationRequest

    BatchGetFlowAssociationResponse.add_member(:flow_association_summary_list, Shapes::ShapeRef.new(shape: FlowAssociationSummaryList, location_name: "FlowAssociationSummaryList"))
    BatchGetFlowAssociationResponse.struct_class = Types::BatchGetFlowAssociationResponse

    BatchPutContactRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    BatchPutContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    BatchPutContactRequest.add_member(:contact_data_request_list, Shapes::ShapeRef.new(shape: ContactDataRequestList, required: true, location_name: "ContactDataRequestList"))
    BatchPutContactRequest.struct_class = Types::BatchPutContactRequest

    BatchPutContactResponse.add_member(:successful_request_list, Shapes::ShapeRef.new(shape: SuccessfulRequestList, location_name: "SuccessfulRequestList"))
    BatchPutContactResponse.add_member(:failed_request_list, Shapes::ShapeRef.new(shape: FailedRequestList, location_name: "FailedRequestList"))
    BatchPutContactResponse.struct_class = Types::BatchPutContactResponse

    BooleanCondition.add_member(:field_name, Shapes::ShapeRef.new(shape: String, location_name: "FieldName"))
    BooleanCondition.add_member(:comparison_type, Shapes::ShapeRef.new(shape: BooleanComparisonType, location_name: "ComparisonType"))
    BooleanCondition.struct_class = Types::BooleanCondition

    Campaign.add_member(:campaign_id, Shapes::ShapeRef.new(shape: CampaignId, location_name: "CampaignId"))
    Campaign.struct_class = Types::Campaign

    CaseSlaConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: SlaName, required: true, location_name: "Name"))
    CaseSlaConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: SlaType, required: true, location_name: "Type"))
    CaseSlaConfiguration.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldValueId, location_name: "FieldId"))
    CaseSlaConfiguration.add_member(:target_field_values, Shapes::ShapeRef.new(shape: SlaFieldValueUnionList, location_name: "TargetFieldValues"))
    CaseSlaConfiguration.add_member(:target_sla_minutes, Shapes::ShapeRef.new(shape: TargetSlaMinutes, required: true, location_name: "TargetSlaMinutes"))
    CaseSlaConfiguration.struct_class = Types::CaseSlaConfiguration

    ChannelList.member = Shapes::ShapeRef.new(shape: Channel)

    ChannelToCountMap.key = Shapes::ShapeRef.new(shape: Channel)
    ChannelToCountMap.value = Shapes::ShapeRef.new(shape: IntegerCount)

    Channels.member = Shapes::ShapeRef.new(shape: Channel)

    ChatContactMetrics.add_member(:multi_party, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "MultiParty"))
    ChatContactMetrics.add_member(:total_messages, Shapes::ShapeRef.new(shape: Count, location_name: "TotalMessages"))
    ChatContactMetrics.add_member(:total_bot_messages, Shapes::ShapeRef.new(shape: Count, location_name: "TotalBotMessages"))
    ChatContactMetrics.add_member(:total_bot_message_length_in_chars, Shapes::ShapeRef.new(shape: Count, location_name: "TotalBotMessageLengthInChars"))
    ChatContactMetrics.add_member(:conversation_close_time_in_millis, Shapes::ShapeRef.new(shape: DurationMillis, location_name: "ConversationCloseTimeInMillis"))
    ChatContactMetrics.add_member(:conversation_turn_count, Shapes::ShapeRef.new(shape: Count, location_name: "ConversationTurnCount"))
    ChatContactMetrics.add_member(:agent_first_response_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "AgentFirstResponseTimestamp"))
    ChatContactMetrics.add_member(:agent_first_response_time_in_millis, Shapes::ShapeRef.new(shape: DurationMillis, location_name: "AgentFirstResponseTimeInMillis"))
    ChatContactMetrics.struct_class = Types::ChatContactMetrics

    ChatEvent.add_member(:type, Shapes::ShapeRef.new(shape: ChatEventType, required: true, location_name: "Type"))
    ChatEvent.add_member(:content_type, Shapes::ShapeRef.new(shape: ChatContentType, location_name: "ContentType"))
    ChatEvent.add_member(:content, Shapes::ShapeRef.new(shape: ChatContent, location_name: "Content"))
    ChatEvent.struct_class = Types::ChatEvent

    ChatMessage.add_member(:content_type, Shapes::ShapeRef.new(shape: ChatContentType, required: true, location_name: "ContentType"))
    ChatMessage.add_member(:content, Shapes::ShapeRef.new(shape: ChatContent, required: true, location_name: "Content"))
    ChatMessage.struct_class = Types::ChatMessage

    ChatMetrics.add_member(:chat_contact_metrics, Shapes::ShapeRef.new(shape: ChatContactMetrics, location_name: "ChatContactMetrics"))
    ChatMetrics.add_member(:agent_metrics, Shapes::ShapeRef.new(shape: ParticipantMetrics, location_name: "AgentMetrics"))
    ChatMetrics.add_member(:customer_metrics, Shapes::ShapeRef.new(shape: ParticipantMetrics, location_name: "CustomerMetrics"))
    ChatMetrics.struct_class = Types::ChatMetrics

    ChatParticipantRoleConfig.add_member(:participant_timer_config_list, Shapes::ShapeRef.new(shape: ParticipantTimerConfigList, required: true, location_name: "ParticipantTimerConfigList"))
    ChatParticipantRoleConfig.struct_class = Types::ChatParticipantRoleConfig

    ChatStreamingConfiguration.add_member(:streaming_endpoint_arn, Shapes::ShapeRef.new(shape: ChatStreamingEndpointARN, required: true, location_name: "StreamingEndpointArn"))
    ChatStreamingConfiguration.struct_class = Types::ChatStreamingConfiguration

    ClaimPhoneNumberRequest.add_member(:target_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "TargetArn"))
    ClaimPhoneNumberRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    ClaimPhoneNumberRequest.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "PhoneNumber"))
    ClaimPhoneNumberRequest.add_member(:phone_number_description, Shapes::ShapeRef.new(shape: PhoneNumberDescription, location_name: "PhoneNumberDescription"))
    ClaimPhoneNumberRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ClaimPhoneNumberRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    ClaimPhoneNumberRequest.struct_class = Types::ClaimPhoneNumberRequest

    ClaimPhoneNumberResponse.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: PhoneNumberId, location_name: "PhoneNumberId"))
    ClaimPhoneNumberResponse.add_member(:phone_number_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "PhoneNumberArn"))
    ClaimPhoneNumberResponse.struct_class = Types::ClaimPhoneNumberResponse

    ClaimedPhoneNumberSummary.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: PhoneNumberId, location_name: "PhoneNumberId"))
    ClaimedPhoneNumberSummary.add_member(:phone_number_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "PhoneNumberArn"))
    ClaimedPhoneNumberSummary.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "PhoneNumber"))
    ClaimedPhoneNumberSummary.add_member(:phone_number_country_code, Shapes::ShapeRef.new(shape: PhoneNumberCountryCode, location_name: "PhoneNumberCountryCode"))
    ClaimedPhoneNumberSummary.add_member(:phone_number_type, Shapes::ShapeRef.new(shape: PhoneNumberType, location_name: "PhoneNumberType"))
    ClaimedPhoneNumberSummary.add_member(:phone_number_description, Shapes::ShapeRef.new(shape: PhoneNumberDescription, location_name: "PhoneNumberDescription"))
    ClaimedPhoneNumberSummary.add_member(:target_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "TargetArn"))
    ClaimedPhoneNumberSummary.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    ClaimedPhoneNumberSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ClaimedPhoneNumberSummary.add_member(:phone_number_status, Shapes::ShapeRef.new(shape: PhoneNumberStatus, location_name: "PhoneNumberStatus"))
    ClaimedPhoneNumberSummary.add_member(:source_phone_number_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "SourcePhoneNumberArn"))
    ClaimedPhoneNumberSummary.struct_class = Types::ClaimedPhoneNumberSummary

    CommonAttributeAndCondition.add_member(:tag_conditions, Shapes::ShapeRef.new(shape: TagAndConditionList, location_name: "TagConditions"))
    CommonAttributeAndCondition.struct_class = Types::CommonAttributeAndCondition

    CommonAttributeOrConditionList.member = Shapes::ShapeRef.new(shape: CommonAttributeAndCondition)

    CompleteAttachedFileUploadRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CompleteAttachedFileUploadRequest.add_member(:file_id, Shapes::ShapeRef.new(shape: FileId, required: true, location: "uri", location_name: "FileId"))
    CompleteAttachedFileUploadRequest.add_member(:associated_resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "querystring", location_name: "associatedResourceArn"))
    CompleteAttachedFileUploadRequest.struct_class = Types::CompleteAttachedFileUploadRequest

    CompleteAttachedFileUploadResponse.struct_class = Types::CompleteAttachedFileUploadResponse

    Condition.add_member(:string_condition, Shapes::ShapeRef.new(shape: StringCondition, location_name: "StringCondition"))
    Condition.add_member(:number_condition, Shapes::ShapeRef.new(shape: NumberCondition, location_name: "NumberCondition"))
    Condition.struct_class = Types::Condition

    ConditionalOperationFailedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ConditionalOperationFailedException.struct_class = Types::ConditionalOperationFailedException

    Conditions.member = Shapes::ShapeRef.new(shape: Condition)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    ConnectionData.add_member(:attendee, Shapes::ShapeRef.new(shape: Attendee, location_name: "Attendee"))
    ConnectionData.add_member(:meeting, Shapes::ShapeRef.new(shape: Meeting, location_name: "Meeting"))
    ConnectionData.struct_class = Types::ConnectionData

    Contact.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    Contact.add_member(:id, Shapes::ShapeRef.new(shape: ContactId, location_name: "Id"))
    Contact.add_member(:initial_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "InitialContactId"))
    Contact.add_member(:previous_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "PreviousContactId"))
    Contact.add_member(:contact_association_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContactAssociationId"))
    Contact.add_member(:initiation_method, Shapes::ShapeRef.new(shape: ContactInitiationMethod, location_name: "InitiationMethod"))
    Contact.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    Contact.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Contact.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "Channel"))
    Contact.add_member(:queue_info, Shapes::ShapeRef.new(shape: QueueInfo, location_name: "QueueInfo"))
    Contact.add_member(:agent_info, Shapes::ShapeRef.new(shape: AgentInfo, location_name: "AgentInfo"))
    Contact.add_member(:initiation_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "InitiationTimestamp"))
    Contact.add_member(:disconnect_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "DisconnectTimestamp"))
    Contact.add_member(:last_update_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastUpdateTimestamp"))
    Contact.add_member(:last_paused_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastPausedTimestamp"))
    Contact.add_member(:last_resumed_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastResumedTimestamp"))
    Contact.add_member(:ring_start_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "RingStartTimestamp"))
    Contact.add_member(:total_pause_count, Shapes::ShapeRef.new(shape: TotalPauseCount, location_name: "TotalPauseCount"))
    Contact.add_member(:total_pause_duration_in_seconds, Shapes::ShapeRef.new(shape: TotalPauseDurationInSeconds, location_name: "TotalPauseDurationInSeconds"))
    Contact.add_member(:scheduled_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "ScheduledTimestamp"))
    Contact.add_member(:related_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "RelatedContactId"))
    Contact.add_member(:wisdom_info, Shapes::ShapeRef.new(shape: WisdomInfo, location_name: "WisdomInfo"))
    Contact.add_member(:customer_id, Shapes::ShapeRef.new(shape: CustomerId, location_name: "CustomerId"))
    Contact.add_member(:customer_endpoint, Shapes::ShapeRef.new(shape: EndpointInfo, location_name: "CustomerEndpoint"))
    Contact.add_member(:system_endpoint, Shapes::ShapeRef.new(shape: EndpointInfo, location_name: "SystemEndpoint"))
    Contact.add_member(:queue_time_adjustment_seconds, Shapes::ShapeRef.new(shape: QueueTimeAdjustmentSeconds, location_name: "QueueTimeAdjustmentSeconds"))
    Contact.add_member(:queue_priority, Shapes::ShapeRef.new(shape: QueuePriority, location_name: "QueuePriority"))
    Contact.add_member(:tags, Shapes::ShapeRef.new(shape: ContactTagMap, location_name: "Tags"))
    Contact.add_member(:connected_to_system_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "ConnectedToSystemTimestamp"))
    Contact.add_member(:routing_criteria, Shapes::ShapeRef.new(shape: RoutingCriteria, location_name: "RoutingCriteria"))
    Contact.add_member(:customer, Shapes::ShapeRef.new(shape: Customer, location_name: "Customer"))
    Contact.add_member(:campaign, Shapes::ShapeRef.new(shape: Campaign, location_name: "Campaign"))
    Contact.add_member(:answering_machine_detection_status, Shapes::ShapeRef.new(shape: AnsweringMachineDetectionStatus, location_name: "AnsweringMachineDetectionStatus"))
    Contact.add_member(:customer_voice_activity, Shapes::ShapeRef.new(shape: CustomerVoiceActivity, location_name: "CustomerVoiceActivity"))
    Contact.add_member(:quality_metrics, Shapes::ShapeRef.new(shape: QualityMetrics, location_name: "QualityMetrics"))
    Contact.add_member(:chat_metrics, Shapes::ShapeRef.new(shape: ChatMetrics, location_name: "ChatMetrics"))
    Contact.add_member(:disconnect_details, Shapes::ShapeRef.new(shape: DisconnectDetails, location_name: "DisconnectDetails"))
    Contact.add_member(:additional_email_recipients, Shapes::ShapeRef.new(shape: AdditionalEmailRecipients, location_name: "AdditionalEmailRecipients"))
    Contact.add_member(:segment_attributes, Shapes::ShapeRef.new(shape: SegmentAttributes, location_name: "SegmentAttributes"))
    Contact.add_member(:recordings, Shapes::ShapeRef.new(shape: Recordings, location_name: "Recordings"))
    Contact.add_member(:disconnect_reason, Shapes::ShapeRef.new(shape: String, location_name: "DisconnectReason"))
    Contact.add_member(:contact_evaluations, Shapes::ShapeRef.new(shape: ContactEvaluations, location_name: "ContactEvaluations"))
    Contact.add_member(:task_template_info, Shapes::ShapeRef.new(shape: TaskTemplateInfoV2, location_name: "TaskTemplateInfo"))
    Contact.add_member(:contact_details, Shapes::ShapeRef.new(shape: ContactDetails, location_name: "ContactDetails"))
    Contact.add_member(:outbound_strategy, Shapes::ShapeRef.new(shape: OutboundStrategy, location_name: "OutboundStrategy"))
    Contact.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    Contact.struct_class = Types::Contact

    ContactAnalysis.add_member(:transcript, Shapes::ShapeRef.new(shape: Transcript, location_name: "Transcript"))
    ContactAnalysis.struct_class = Types::ContactAnalysis

    ContactConfiguration.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    ContactConfiguration.add_member(:participant_role, Shapes::ShapeRef.new(shape: ParticipantRole, location_name: "ParticipantRole"))
    ContactConfiguration.add_member(:include_raw_message, Shapes::ShapeRef.new(shape: IncludeRawMessage, location_name: "IncludeRawMessage"))
    ContactConfiguration.struct_class = Types::ContactConfiguration

    ContactDataRequest.add_member(:system_endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "SystemEndpoint"))
    ContactDataRequest.add_member(:customer_endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "CustomerEndpoint"))
    ContactDataRequest.add_member(:request_identifier, Shapes::ShapeRef.new(shape: RequestIdentifier, location_name: "RequestIdentifier"))
    ContactDataRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, location_name: "QueueId"))
    ContactDataRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    ContactDataRequest.add_member(:campaign, Shapes::ShapeRef.new(shape: Campaign, location_name: "Campaign"))
    ContactDataRequest.add_member(:outbound_strategy, Shapes::ShapeRef.new(shape: OutboundStrategy, location_name: "OutboundStrategy"))
    ContactDataRequest.struct_class = Types::ContactDataRequest

    ContactDataRequestList.member = Shapes::ShapeRef.new(shape: ContactDataRequest)

    ContactDetails.add_member(:name, Shapes::ShapeRef.new(shape: ContactDetailName, location_name: "Name"))
    ContactDetails.add_member(:description, Shapes::ShapeRef.new(shape: ContactDetailDescription, location_name: "Description"))
    ContactDetails.struct_class = Types::ContactDetails

    ContactEvaluation.add_member(:form_id, Shapes::ShapeRef.new(shape: FormId, location_name: "FormId"))
    ContactEvaluation.add_member(:evaluation_arn, Shapes::ShapeRef.new(shape: EvaluationArn, location_name: "EvaluationArn"))
    ContactEvaluation.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    ContactEvaluation.add_member(:start_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "StartTimestamp"))
    ContactEvaluation.add_member(:end_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "EndTimestamp"))
    ContactEvaluation.add_member(:delete_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "DeleteTimestamp"))
    ContactEvaluation.add_member(:export_location, Shapes::ShapeRef.new(shape: ExportLocation, location_name: "ExportLocation"))
    ContactEvaluation.struct_class = Types::ContactEvaluation

    ContactEvaluations.key = Shapes::ShapeRef.new(shape: EvaluationId)
    ContactEvaluations.value = Shapes::ShapeRef.new(shape: ContactEvaluation)

    ContactFilter.add_member(:contact_states, Shapes::ShapeRef.new(shape: ContactStates, location_name: "ContactStates"))
    ContactFilter.struct_class = Types::ContactFilter

    ContactFlow.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    ContactFlow.add_member(:id, Shapes::ShapeRef.new(shape: ContactFlowId, location_name: "Id"))
    ContactFlow.add_member(:name, Shapes::ShapeRef.new(shape: ContactFlowName, location_name: "Name"))
    ContactFlow.add_member(:type, Shapes::ShapeRef.new(shape: ContactFlowType, location_name: "Type"))
    ContactFlow.add_member(:state, Shapes::ShapeRef.new(shape: ContactFlowState, location_name: "State"))
    ContactFlow.add_member(:status, Shapes::ShapeRef.new(shape: ContactFlowStatus, location_name: "Status"))
    ContactFlow.add_member(:description, Shapes::ShapeRef.new(shape: ContactFlowDescription, location_name: "Description"))
    ContactFlow.add_member(:content, Shapes::ShapeRef.new(shape: ContactFlowContent, location_name: "Content"))
    ContactFlow.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ContactFlow.add_member(:flow_content_sha_256, Shapes::ShapeRef.new(shape: FlowContentSha256, location_name: "FlowContentSha256"))
    ContactFlow.add_member(:version, Shapes::ShapeRef.new(shape: ResourceVersion, location_name: "Version"))
    ContactFlow.add_member(:version_description, Shapes::ShapeRef.new(shape: ContactFlowDescription, location_name: "VersionDescription"))
    ContactFlow.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    ContactFlow.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    ContactFlow.struct_class = Types::ContactFlow

    ContactFlowModule.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    ContactFlowModule.add_member(:id, Shapes::ShapeRef.new(shape: ContactFlowModuleId, location_name: "Id"))
    ContactFlowModule.add_member(:name, Shapes::ShapeRef.new(shape: ContactFlowModuleName, location_name: "Name"))
    ContactFlowModule.add_member(:content, Shapes::ShapeRef.new(shape: ContactFlowModuleContent, location_name: "Content"))
    ContactFlowModule.add_member(:description, Shapes::ShapeRef.new(shape: ContactFlowModuleDescription, location_name: "Description"))
    ContactFlowModule.add_member(:state, Shapes::ShapeRef.new(shape: ContactFlowModuleState, location_name: "State"))
    ContactFlowModule.add_member(:status, Shapes::ShapeRef.new(shape: ContactFlowModuleStatus, location_name: "Status"))
    ContactFlowModule.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ContactFlowModule.add_member(:flow_module_content_sha_256, Shapes::ShapeRef.new(shape: FlowModuleContentSha256, location_name: "FlowModuleContentSha256"))
    ContactFlowModule.add_member(:version, Shapes::ShapeRef.new(shape: ResourceVersion, location_name: "Version"))
    ContactFlowModule.add_member(:version_description, Shapes::ShapeRef.new(shape: ContactFlowModuleDescription, location_name: "VersionDescription"))
    ContactFlowModule.add_member(:settings, Shapes::ShapeRef.new(shape: FlowModuleSettings, location_name: "Settings"))
    ContactFlowModule.add_member(:external_invocation_configuration, Shapes::ShapeRef.new(shape: ExternalInvocationConfiguration, location_name: "ExternalInvocationConfiguration"))
    ContactFlowModule.struct_class = Types::ContactFlowModule

    ContactFlowModuleAliasInfo.add_member(:contact_flow_module_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ContactFlowModuleId"))
    ContactFlowModuleAliasInfo.add_member(:contact_flow_module_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ContactFlowModuleArn"))
    ContactFlowModuleAliasInfo.add_member(:alias_id, Shapes::ShapeRef.new(shape: ContactFlowModuleAlias, location_name: "AliasId"))
    ContactFlowModuleAliasInfo.add_member(:version, Shapes::ShapeRef.new(shape: ResourceVersion, location_name: "Version"))
    ContactFlowModuleAliasInfo.add_member(:name, Shapes::ShapeRef.new(shape: ContactFlowModuleAlias, location_name: "Name"))
    ContactFlowModuleAliasInfo.add_member(:description, Shapes::ShapeRef.new(shape: ContactFlowModuleDescription, location_name: "Description"))
    ContactFlowModuleAliasInfo.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    ContactFlowModuleAliasInfo.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    ContactFlowModuleAliasInfo.struct_class = Types::ContactFlowModuleAliasInfo

    ContactFlowModuleAliasSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    ContactFlowModuleAliasSummary.add_member(:alias_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "AliasId"))
    ContactFlowModuleAliasSummary.add_member(:version, Shapes::ShapeRef.new(shape: ResourceVersion, location_name: "Version"))
    ContactFlowModuleAliasSummary.add_member(:alias_name, Shapes::ShapeRef.new(shape: ContactFlowModuleName, location_name: "AliasName"))
    ContactFlowModuleAliasSummary.add_member(:alias_description, Shapes::ShapeRef.new(shape: ContactFlowModuleDescription, location_name: "AliasDescription"))
    ContactFlowModuleAliasSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    ContactFlowModuleAliasSummary.struct_class = Types::ContactFlowModuleAliasSummary

    ContactFlowModuleAliasSummaryList.member = Shapes::ShapeRef.new(shape: ContactFlowModuleAliasSummary)

    ContactFlowModuleSearchConditionList.member = Shapes::ShapeRef.new(shape: ContactFlowModuleSearchCriteria)

    ContactFlowModuleSearchCriteria.add_member(:or_conditions, Shapes::ShapeRef.new(shape: ContactFlowModuleSearchConditionList, location_name: "OrConditions"))
    ContactFlowModuleSearchCriteria.add_member(:and_conditions, Shapes::ShapeRef.new(shape: ContactFlowModuleSearchConditionList, location_name: "AndConditions"))
    ContactFlowModuleSearchCriteria.add_member(:string_condition, Shapes::ShapeRef.new(shape: StringCondition, location_name: "StringCondition"))
    ContactFlowModuleSearchCriteria.add_member(:state_condition, Shapes::ShapeRef.new(shape: ContactFlowModuleState, location_name: "StateCondition"))
    ContactFlowModuleSearchCriteria.add_member(:status_condition, Shapes::ShapeRef.new(shape: ContactFlowModuleStatus, location_name: "StatusCondition"))
    ContactFlowModuleSearchCriteria.struct_class = Types::ContactFlowModuleSearchCriteria

    ContactFlowModuleSearchFilter.add_member(:tag_filter, Shapes::ShapeRef.new(shape: ControlPlaneTagFilter, location_name: "TagFilter"))
    ContactFlowModuleSearchFilter.struct_class = Types::ContactFlowModuleSearchFilter

    ContactFlowModuleSearchSummaryList.member = Shapes::ShapeRef.new(shape: ContactFlowModule)

    ContactFlowModuleSummary.add_member(:id, Shapes::ShapeRef.new(shape: ContactFlowModuleId, location_name: "Id"))
    ContactFlowModuleSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    ContactFlowModuleSummary.add_member(:name, Shapes::ShapeRef.new(shape: ContactFlowModuleName, location_name: "Name"))
    ContactFlowModuleSummary.add_member(:state, Shapes::ShapeRef.new(shape: ContactFlowModuleState, location_name: "State"))
    ContactFlowModuleSummary.struct_class = Types::ContactFlowModuleSummary

    ContactFlowModuleVersionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    ContactFlowModuleVersionSummary.add_member(:version_description, Shapes::ShapeRef.new(shape: ContactFlowModuleDescription, location_name: "VersionDescription"))
    ContactFlowModuleVersionSummary.add_member(:version, Shapes::ShapeRef.new(shape: ResourceVersion, location_name: "Version"))
    ContactFlowModuleVersionSummary.struct_class = Types::ContactFlowModuleVersionSummary

    ContactFlowModuleVersionSummaryList.member = Shapes::ShapeRef.new(shape: ContactFlowModuleVersionSummary)

    ContactFlowModulesSummaryList.member = Shapes::ShapeRef.new(shape: ContactFlowModuleSummary)

    ContactFlowNotPublishedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ContactFlowNotPublishedException.struct_class = Types::ContactFlowNotPublishedException

    ContactFlowSearchConditionList.member = Shapes::ShapeRef.new(shape: ContactFlowSearchCriteria)

    ContactFlowSearchCriteria.add_member(:or_conditions, Shapes::ShapeRef.new(shape: ContactFlowSearchConditionList, location_name: "OrConditions"))
    ContactFlowSearchCriteria.add_member(:and_conditions, Shapes::ShapeRef.new(shape: ContactFlowSearchConditionList, location_name: "AndConditions"))
    ContactFlowSearchCriteria.add_member(:string_condition, Shapes::ShapeRef.new(shape: StringCondition, location_name: "StringCondition"))
    ContactFlowSearchCriteria.add_member(:type_condition, Shapes::ShapeRef.new(shape: ContactFlowType, location_name: "TypeCondition"))
    ContactFlowSearchCriteria.add_member(:state_condition, Shapes::ShapeRef.new(shape: ContactFlowState, location_name: "StateCondition"))
    ContactFlowSearchCriteria.add_member(:status_condition, Shapes::ShapeRef.new(shape: ContactFlowStatus, location_name: "StatusCondition"))
    ContactFlowSearchCriteria.struct_class = Types::ContactFlowSearchCriteria

    ContactFlowSearchFilter.add_member(:tag_filter, Shapes::ShapeRef.new(shape: ControlPlaneTagFilter, location_name: "TagFilter"))
    ContactFlowSearchFilter.struct_class = Types::ContactFlowSearchFilter

    ContactFlowSearchSummaryList.member = Shapes::ShapeRef.new(shape: ContactFlow)

    ContactFlowSummary.add_member(:id, Shapes::ShapeRef.new(shape: ContactFlowId, location_name: "Id"))
    ContactFlowSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    ContactFlowSummary.add_member(:name, Shapes::ShapeRef.new(shape: ContactFlowName, location_name: "Name"))
    ContactFlowSummary.add_member(:contact_flow_type, Shapes::ShapeRef.new(shape: ContactFlowType, location_name: "ContactFlowType"))
    ContactFlowSummary.add_member(:contact_flow_state, Shapes::ShapeRef.new(shape: ContactFlowState, location_name: "ContactFlowState"))
    ContactFlowSummary.add_member(:contact_flow_status, Shapes::ShapeRef.new(shape: ContactFlowStatus, location_name: "ContactFlowStatus"))
    ContactFlowSummary.struct_class = Types::ContactFlowSummary

    ContactFlowSummaryList.member = Shapes::ShapeRef.new(shape: ContactFlowSummary)

    ContactFlowTypes.member = Shapes::ShapeRef.new(shape: ContactFlowType)

    ContactFlowVersionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    ContactFlowVersionSummary.add_member(:version_description, Shapes::ShapeRef.new(shape: ContactFlowDescription, location_name: "VersionDescription"))
    ContactFlowVersionSummary.add_member(:version, Shapes::ShapeRef.new(shape: ResourceVersion, location_name: "Version"))
    ContactFlowVersionSummary.struct_class = Types::ContactFlowVersionSummary

    ContactFlowVersionSummaryList.member = Shapes::ShapeRef.new(shape: ContactFlowVersionSummary)

    ContactMetricInfo.add_member(:name, Shapes::ShapeRef.new(shape: ContactMetricName, required: true, location_name: "Name"))
    ContactMetricInfo.struct_class = Types::ContactMetricInfo

    ContactMetricResult.add_member(:name, Shapes::ShapeRef.new(shape: ContactMetricName, required: true, location_name: "Name"))
    ContactMetricResult.add_member(:value, Shapes::ShapeRef.new(shape: ContactMetricValue, required: true, location_name: "Value"))
    ContactMetricResult.struct_class = Types::ContactMetricResult

    ContactMetricResults.member = Shapes::ShapeRef.new(shape: ContactMetricResult)

    ContactMetricValue.add_member(:number, Shapes::ShapeRef.new(shape: Double, location_name: "Number"))
    ContactMetricValue.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ContactMetricValue.add_member_subclass(:number, Types::ContactMetricValue::Number)
    ContactMetricValue.add_member_subclass(:unknown, Types::ContactMetricValue::Unknown)
    ContactMetricValue.struct_class = Types::ContactMetricValue

    ContactMetrics.member = Shapes::ShapeRef.new(shape: ContactMetricInfo)

    ContactNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ContactNotFoundException.struct_class = Types::ContactNotFoundException

    ContactReferences.key = Shapes::ShapeRef.new(shape: ReferenceKey)
    ContactReferences.value = Shapes::ShapeRef.new(shape: Reference)

    ContactSearchSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    ContactSearchSummary.add_member(:id, Shapes::ShapeRef.new(shape: ContactId, location_name: "Id"))
    ContactSearchSummary.add_member(:initial_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "InitialContactId"))
    ContactSearchSummary.add_member(:previous_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "PreviousContactId"))
    ContactSearchSummary.add_member(:initiation_method, Shapes::ShapeRef.new(shape: ContactInitiationMethod, location_name: "InitiationMethod"))
    ContactSearchSummary.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "Channel"))
    ContactSearchSummary.add_member(:queue_info, Shapes::ShapeRef.new(shape: ContactSearchSummaryQueueInfo, location_name: "QueueInfo"))
    ContactSearchSummary.add_member(:agent_info, Shapes::ShapeRef.new(shape: ContactSearchSummaryAgentInfo, location_name: "AgentInfo"))
    ContactSearchSummary.add_member(:initiation_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "InitiationTimestamp"))
    ContactSearchSummary.add_member(:disconnect_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "DisconnectTimestamp"))
    ContactSearchSummary.add_member(:scheduled_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "ScheduledTimestamp"))
    ContactSearchSummary.add_member(:segment_attributes, Shapes::ShapeRef.new(shape: ContactSearchSummarySegmentAttributes, location_name: "SegmentAttributes"))
    ContactSearchSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    ContactSearchSummary.add_member(:routing_criteria, Shapes::ShapeRef.new(shape: RoutingCriteria, location_name: "RoutingCriteria"))
    ContactSearchSummary.struct_class = Types::ContactSearchSummary

    ContactSearchSummaryAgentInfo.add_member(:id, Shapes::ShapeRef.new(shape: AgentResourceId, location_name: "Id"))
    ContactSearchSummaryAgentInfo.add_member(:connected_to_agent_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "ConnectedToAgentTimestamp"))
    ContactSearchSummaryAgentInfo.struct_class = Types::ContactSearchSummaryAgentInfo

    ContactSearchSummaryQueueInfo.add_member(:id, Shapes::ShapeRef.new(shape: QueueId, location_name: "Id"))
    ContactSearchSummaryQueueInfo.add_member(:enqueue_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "EnqueueTimestamp"))
    ContactSearchSummaryQueueInfo.struct_class = Types::ContactSearchSummaryQueueInfo

    ContactSearchSummarySegmentAttributeValue.add_member(:value_string, Shapes::ShapeRef.new(shape: SegmentAttributeValueString, location_name: "ValueString"))
    ContactSearchSummarySegmentAttributeValue.add_member(:value_map, Shapes::ShapeRef.new(shape: SegmentAttributeValueMap, location_name: "ValueMap"))
    ContactSearchSummarySegmentAttributeValue.struct_class = Types::ContactSearchSummarySegmentAttributeValue

    ContactSearchSummarySegmentAttributes.key = Shapes::ShapeRef.new(shape: SegmentAttributeName)
    ContactSearchSummarySegmentAttributes.value = Shapes::ShapeRef.new(shape: ContactSearchSummarySegmentAttributeValue)

    ContactStates.member = Shapes::ShapeRef.new(shape: ContactState)

    ContactTagKeys.member = Shapes::ShapeRef.new(shape: ContactTagKey)

    ContactTagMap.key = Shapes::ShapeRef.new(shape: ContactTagKey)
    ContactTagMap.value = Shapes::ShapeRef.new(shape: ContactTagValue)

    Contacts.member = Shapes::ShapeRef.new(shape: ContactSearchSummary)

    ControlPlaneAttributeFilter.add_member(:or_conditions, Shapes::ShapeRef.new(shape: CommonAttributeOrConditionList, location_name: "OrConditions"))
    ControlPlaneAttributeFilter.add_member(:and_condition, Shapes::ShapeRef.new(shape: CommonAttributeAndCondition, location_name: "AndCondition"))
    ControlPlaneAttributeFilter.add_member(:tag_condition, Shapes::ShapeRef.new(shape: TagCondition, location_name: "TagCondition"))
    ControlPlaneAttributeFilter.struct_class = Types::ControlPlaneAttributeFilter

    ControlPlaneTagFilter.add_member(:or_conditions, Shapes::ShapeRef.new(shape: TagOrConditionList, location_name: "OrConditions"))
    ControlPlaneTagFilter.add_member(:and_conditions, Shapes::ShapeRef.new(shape: TagAndConditionList, location_name: "AndConditions"))
    ControlPlaneTagFilter.add_member(:tag_condition, Shapes::ShapeRef.new(shape: TagCondition, location_name: "TagCondition"))
    ControlPlaneTagFilter.struct_class = Types::ControlPlaneTagFilter

    ControlPlaneUserAttributeFilter.add_member(:or_conditions, Shapes::ShapeRef.new(shape: AttributeOrConditionList, location_name: "OrConditions"))
    ControlPlaneUserAttributeFilter.add_member(:and_condition, Shapes::ShapeRef.new(shape: AttributeAndCondition, location_name: "AndCondition"))
    ControlPlaneUserAttributeFilter.add_member(:tag_condition, Shapes::ShapeRef.new(shape: TagCondition, location_name: "TagCondition"))
    ControlPlaneUserAttributeFilter.add_member(:hierarchy_group_condition, Shapes::ShapeRef.new(shape: HierarchyGroupCondition, location_name: "HierarchyGroupCondition"))
    ControlPlaneUserAttributeFilter.struct_class = Types::ControlPlaneUserAttributeFilter

    CreateAgentStatusRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateAgentStatusRequest.add_member(:name, Shapes::ShapeRef.new(shape: AgentStatusName, required: true, location_name: "Name"))
    CreateAgentStatusRequest.add_member(:description, Shapes::ShapeRef.new(shape: AgentStatusDescription, location_name: "Description"))
    CreateAgentStatusRequest.add_member(:state, Shapes::ShapeRef.new(shape: AgentStatusState, required: true, location_name: "State"))
    CreateAgentStatusRequest.add_member(:display_order, Shapes::ShapeRef.new(shape: AgentStatusOrderNumber, location_name: "DisplayOrder", metadata: {"box" => true}))
    CreateAgentStatusRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateAgentStatusRequest.struct_class = Types::CreateAgentStatusRequest

    CreateAgentStatusResponse.add_member(:agent_status_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "AgentStatusARN"))
    CreateAgentStatusResponse.add_member(:agent_status_id, Shapes::ShapeRef.new(shape: AgentStatusId, location_name: "AgentStatusId"))
    CreateAgentStatusResponse.struct_class = Types::CreateAgentStatusResponse

    CreateCaseActionDefinition.add_member(:fields, Shapes::ShapeRef.new(shape: FieldValues, required: true, location_name: "Fields"))
    CreateCaseActionDefinition.add_member(:template_id, Shapes::ShapeRef.new(shape: TemplateId, required: true, location_name: "TemplateId"))
    CreateCaseActionDefinition.struct_class = Types::CreateCaseActionDefinition

    CreateContactFlowModuleAliasRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceIdOrArn, required: true, location: "uri", location_name: "InstanceId"))
    CreateContactFlowModuleAliasRequest.add_member(:description, Shapes::ShapeRef.new(shape: ContactFlowDescription, location_name: "Description"))
    CreateContactFlowModuleAliasRequest.add_member(:contact_flow_module_id, Shapes::ShapeRef.new(shape: ContactFlowModuleId, required: true, location: "uri", location_name: "ContactFlowModuleId"))
    CreateContactFlowModuleAliasRequest.add_member(:contact_flow_module_version, Shapes::ShapeRef.new(shape: ResourceVersion, required: true, location_name: "ContactFlowModuleVersion"))
    CreateContactFlowModuleAliasRequest.add_member(:alias_name, Shapes::ShapeRef.new(shape: ContactFlowModuleAlias, required: true, location_name: "AliasName"))
    CreateContactFlowModuleAliasRequest.struct_class = Types::CreateContactFlowModuleAliasRequest

    CreateContactFlowModuleAliasResponse.add_member(:contact_flow_module_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ContactFlowModuleArn"))
    CreateContactFlowModuleAliasResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    CreateContactFlowModuleAliasResponse.struct_class = Types::CreateContactFlowModuleAliasResponse

    CreateContactFlowModuleRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateContactFlowModuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: ContactFlowModuleName, required: true, location_name: "Name"))
    CreateContactFlowModuleRequest.add_member(:description, Shapes::ShapeRef.new(shape: ContactFlowModuleDescription, location_name: "Description"))
    CreateContactFlowModuleRequest.add_member(:content, Shapes::ShapeRef.new(shape: ContactFlowModuleContent, required: true, location_name: "Content"))
    CreateContactFlowModuleRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateContactFlowModuleRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateContactFlowModuleRequest.add_member(:settings, Shapes::ShapeRef.new(shape: FlowModuleSettings, location_name: "Settings"))
    CreateContactFlowModuleRequest.add_member(:external_invocation_configuration, Shapes::ShapeRef.new(shape: ExternalInvocationConfiguration, location_name: "ExternalInvocationConfiguration"))
    CreateContactFlowModuleRequest.struct_class = Types::CreateContactFlowModuleRequest

    CreateContactFlowModuleResponse.add_member(:id, Shapes::ShapeRef.new(shape: ContactFlowModuleId, location_name: "Id"))
    CreateContactFlowModuleResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    CreateContactFlowModuleResponse.struct_class = Types::CreateContactFlowModuleResponse

    CreateContactFlowModuleVersionRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateContactFlowModuleVersionRequest.add_member(:description, Shapes::ShapeRef.new(shape: ContactFlowModuleDescription, location_name: "Description"))
    CreateContactFlowModuleVersionRequest.add_member(:contact_flow_module_id, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "ContactFlowModuleId"))
    CreateContactFlowModuleVersionRequest.add_member(:flow_module_content_sha_256, Shapes::ShapeRef.new(shape: FlowModuleContentSha256, location_name: "FlowModuleContentSha256"))
    CreateContactFlowModuleVersionRequest.struct_class = Types::CreateContactFlowModuleVersionRequest

    CreateContactFlowModuleVersionResponse.add_member(:contact_flow_module_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ContactFlowModuleArn"))
    CreateContactFlowModuleVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: ResourceVersion, location_name: "Version"))
    CreateContactFlowModuleVersionResponse.struct_class = Types::CreateContactFlowModuleVersionResponse

    CreateContactFlowRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateContactFlowRequest.add_member(:name, Shapes::ShapeRef.new(shape: ContactFlowName, required: true, location_name: "Name"))
    CreateContactFlowRequest.add_member(:type, Shapes::ShapeRef.new(shape: ContactFlowType, required: true, location_name: "Type"))
    CreateContactFlowRequest.add_member(:description, Shapes::ShapeRef.new(shape: ContactFlowDescription, location_name: "Description"))
    CreateContactFlowRequest.add_member(:content, Shapes::ShapeRef.new(shape: ContactFlowContent, required: true, location_name: "Content"))
    CreateContactFlowRequest.add_member(:status, Shapes::ShapeRef.new(shape: ContactFlowStatus, location_name: "Status"))
    CreateContactFlowRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateContactFlowRequest.struct_class = Types::CreateContactFlowRequest

    CreateContactFlowResponse.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, location_name: "ContactFlowId"))
    CreateContactFlowResponse.add_member(:contact_flow_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ContactFlowArn"))
    CreateContactFlowResponse.add_member(:flow_content_sha_256, Shapes::ShapeRef.new(shape: FlowContentSha256, location_name: "FlowContentSha256"))
    CreateContactFlowResponse.struct_class = Types::CreateContactFlowResponse

    CreateContactFlowVersionRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateContactFlowVersionRequest.add_member(:description, Shapes::ShapeRef.new(shape: ContactFlowDescription, location_name: "Description"))
    CreateContactFlowVersionRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "ContactFlowId"))
    CreateContactFlowVersionRequest.add_member(:flow_content_sha_256, Shapes::ShapeRef.new(shape: FlowContentSha256, location_name: "FlowContentSha256"))
    CreateContactFlowVersionRequest.add_member(:contact_flow_version, Shapes::ShapeRef.new(shape: ResourceVersion, location_name: "ContactFlowVersion"))
    CreateContactFlowVersionRequest.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    CreateContactFlowVersionRequest.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    CreateContactFlowVersionRequest.struct_class = Types::CreateContactFlowVersionRequest

    CreateContactFlowVersionResponse.add_member(:contact_flow_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ContactFlowArn"))
    CreateContactFlowVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: ResourceVersion, location_name: "Version"))
    CreateContactFlowVersionResponse.struct_class = Types::CreateContactFlowVersionResponse

    CreateContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    CreateContactRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateContactRequest.add_member(:related_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "RelatedContactId"))
    CreateContactRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    CreateContactRequest.add_member(:references, Shapes::ShapeRef.new(shape: ContactReferences, location_name: "References"))
    CreateContactRequest.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, required: true, location_name: "Channel"))
    CreateContactRequest.add_member(:initiation_method, Shapes::ShapeRef.new(shape: ContactInitiationMethod, required: true, location_name: "InitiationMethod"))
    CreateContactRequest.add_member(:expiry_duration_in_minutes, Shapes::ShapeRef.new(shape: ExpiryDurationInMinutes, location_name: "ExpiryDurationInMinutes"))
    CreateContactRequest.add_member(:user_info, Shapes::ShapeRef.new(shape: UserInfo, location_name: "UserInfo"))
    CreateContactRequest.add_member(:initiate_as, Shapes::ShapeRef.new(shape: InitiateAs, location_name: "InitiateAs"))
    CreateContactRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    CreateContactRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateContactRequest.add_member(:segment_attributes, Shapes::ShapeRef.new(shape: SegmentAttributes, location_name: "SegmentAttributes"))
    CreateContactRequest.add_member(:previous_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "PreviousContactId"))
    CreateContactRequest.struct_class = Types::CreateContactRequest

    CreateContactResponse.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContactId"))
    CreateContactResponse.add_member(:contact_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ContactArn"))
    CreateContactResponse.struct_class = Types::CreateContactResponse

    CreateEmailAddressRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateEmailAddressRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateEmailAddressRequest.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location_name: "EmailAddress"))
    CreateEmailAddressRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: EmailAddressDisplayName, location_name: "DisplayName"))
    CreateEmailAddressRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateEmailAddressRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken"))
    CreateEmailAddressRequest.struct_class = Types::CreateEmailAddressRequest

    CreateEmailAddressResponse.add_member(:email_address_id, Shapes::ShapeRef.new(shape: EmailAddressId, location_name: "EmailAddressId"))
    CreateEmailAddressResponse.add_member(:email_address_arn, Shapes::ShapeRef.new(shape: EmailAddressArn, location_name: "EmailAddressArn"))
    CreateEmailAddressResponse.struct_class = Types::CreateEmailAddressResponse

    CreateEvaluationFormRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateEvaluationFormRequest.add_member(:title, Shapes::ShapeRef.new(shape: EvaluationFormTitle, required: true, location_name: "Title"))
    CreateEvaluationFormRequest.add_member(:description, Shapes::ShapeRef.new(shape: EvaluationFormDescription, location_name: "Description"))
    CreateEvaluationFormRequest.add_member(:items, Shapes::ShapeRef.new(shape: EvaluationFormItemsList, required: true, location_name: "Items"))
    CreateEvaluationFormRequest.add_member(:scoring_strategy, Shapes::ShapeRef.new(shape: EvaluationFormScoringStrategy, location_name: "ScoringStrategy"))
    CreateEvaluationFormRequest.add_member(:auto_evaluation_configuration, Shapes::ShapeRef.new(shape: EvaluationFormAutoEvaluationConfiguration, location_name: "AutoEvaluationConfiguration"))
    CreateEvaluationFormRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateEvaluationFormRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateEvaluationFormRequest.struct_class = Types::CreateEvaluationFormRequest

    CreateEvaluationFormResponse.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "EvaluationFormId"))
    CreateEvaluationFormResponse.add_member(:evaluation_form_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "EvaluationFormArn"))
    CreateEvaluationFormResponse.struct_class = Types::CreateEvaluationFormResponse

    CreateHoursOfOperationOverrideRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateHoursOfOperationOverrideRequest.add_member(:hours_of_operation_id, Shapes::ShapeRef.new(shape: HoursOfOperationId, required: true, location: "uri", location_name: "HoursOfOperationId"))
    CreateHoursOfOperationOverrideRequest.add_member(:name, Shapes::ShapeRef.new(shape: CommonHumanReadableName, required: true, location_name: "Name"))
    CreateHoursOfOperationOverrideRequest.add_member(:description, Shapes::ShapeRef.new(shape: CommonHumanReadableDescription, location_name: "Description"))
    CreateHoursOfOperationOverrideRequest.add_member(:config, Shapes::ShapeRef.new(shape: HoursOfOperationOverrideConfigList, required: true, location_name: "Config"))
    CreateHoursOfOperationOverrideRequest.add_member(:effective_from, Shapes::ShapeRef.new(shape: HoursOfOperationOverrideYearMonthDayDateFormat, required: true, location_name: "EffectiveFrom"))
    CreateHoursOfOperationOverrideRequest.add_member(:effective_till, Shapes::ShapeRef.new(shape: HoursOfOperationOverrideYearMonthDayDateFormat, required: true, location_name: "EffectiveTill"))
    CreateHoursOfOperationOverrideRequest.struct_class = Types::CreateHoursOfOperationOverrideRequest

    CreateHoursOfOperationOverrideResponse.add_member(:hours_of_operation_override_id, Shapes::ShapeRef.new(shape: HoursOfOperationOverrideId, location_name: "HoursOfOperationOverrideId"))
    CreateHoursOfOperationOverrideResponse.struct_class = Types::CreateHoursOfOperationOverrideResponse

    CreateHoursOfOperationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateHoursOfOperationRequest.add_member(:name, Shapes::ShapeRef.new(shape: CommonNameLength127, required: true, location_name: "Name"))
    CreateHoursOfOperationRequest.add_member(:description, Shapes::ShapeRef.new(shape: HoursOfOperationDescription, location_name: "Description"))
    CreateHoursOfOperationRequest.add_member(:time_zone, Shapes::ShapeRef.new(shape: TimeZone, required: true, location_name: "TimeZone"))
    CreateHoursOfOperationRequest.add_member(:config, Shapes::ShapeRef.new(shape: HoursOfOperationConfigList, required: true, location_name: "Config"))
    CreateHoursOfOperationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateHoursOfOperationRequest.struct_class = Types::CreateHoursOfOperationRequest

    CreateHoursOfOperationResponse.add_member(:hours_of_operation_id, Shapes::ShapeRef.new(shape: HoursOfOperationId, location_name: "HoursOfOperationId"))
    CreateHoursOfOperationResponse.add_member(:hours_of_operation_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "HoursOfOperationArn"))
    CreateHoursOfOperationResponse.struct_class = Types::CreateHoursOfOperationResponse

    CreateInstanceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateInstanceRequest.add_member(:identity_management_type, Shapes::ShapeRef.new(shape: DirectoryType, required: true, location_name: "IdentityManagementType"))
    CreateInstanceRequest.add_member(:instance_alias, Shapes::ShapeRef.new(shape: DirectoryAlias, location_name: "InstanceAlias"))
    CreateInstanceRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    CreateInstanceRequest.add_member(:inbound_calls_enabled, Shapes::ShapeRef.new(shape: InboundCallsEnabled, required: true, location_name: "InboundCallsEnabled"))
    CreateInstanceRequest.add_member(:outbound_calls_enabled, Shapes::ShapeRef.new(shape: OutboundCallsEnabled, required: true, location_name: "OutboundCallsEnabled"))
    CreateInstanceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateInstanceRequest.struct_class = Types::CreateInstanceRequest

    CreateInstanceResponse.add_member(:id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "Id"))
    CreateInstanceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    CreateInstanceResponse.struct_class = Types::CreateInstanceResponse

    CreateIntegrationAssociationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateIntegrationAssociationRequest.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, required: true, location_name: "IntegrationType"))
    CreateIntegrationAssociationRequest.add_member(:integration_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "IntegrationArn"))
    CreateIntegrationAssociationRequest.add_member(:source_application_url, Shapes::ShapeRef.new(shape: URI, location_name: "SourceApplicationUrl"))
    CreateIntegrationAssociationRequest.add_member(:source_application_name, Shapes::ShapeRef.new(shape: SourceApplicationName, location_name: "SourceApplicationName"))
    CreateIntegrationAssociationRequest.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "SourceType"))
    CreateIntegrationAssociationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateIntegrationAssociationRequest.struct_class = Types::CreateIntegrationAssociationRequest

    CreateIntegrationAssociationResponse.add_member(:integration_association_id, Shapes::ShapeRef.new(shape: IntegrationAssociationId, location_name: "IntegrationAssociationId"))
    CreateIntegrationAssociationResponse.add_member(:integration_association_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "IntegrationAssociationArn"))
    CreateIntegrationAssociationResponse.struct_class = Types::CreateIntegrationAssociationResponse

    CreateParticipantRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    CreateParticipantRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    CreateParticipantRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateParticipantRequest.add_member(:participant_details, Shapes::ShapeRef.new(shape: ParticipantDetailsToAdd, required: true, location_name: "ParticipantDetails"))
    CreateParticipantRequest.struct_class = Types::CreateParticipantRequest

    CreateParticipantResponse.add_member(:participant_credentials, Shapes::ShapeRef.new(shape: ParticipantTokenCredentials, location_name: "ParticipantCredentials"))
    CreateParticipantResponse.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantId, location_name: "ParticipantId"))
    CreateParticipantResponse.struct_class = Types::CreateParticipantResponse

    CreatePersistentContactAssociationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreatePersistentContactAssociationRequest.add_member(:initial_contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location: "uri", location_name: "InitialContactId"))
    CreatePersistentContactAssociationRequest.add_member(:rehydration_type, Shapes::ShapeRef.new(shape: RehydrationType, required: true, location_name: "RehydrationType"))
    CreatePersistentContactAssociationRequest.add_member(:source_contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "SourceContactId"))
    CreatePersistentContactAssociationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken"))
    CreatePersistentContactAssociationRequest.struct_class = Types::CreatePersistentContactAssociationRequest

    CreatePersistentContactAssociationResponse.add_member(:continued_from_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContinuedFromContactId"))
    CreatePersistentContactAssociationResponse.struct_class = Types::CreatePersistentContactAssociationResponse

    CreatePredefinedAttributeRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreatePredefinedAttributeRequest.add_member(:name, Shapes::ShapeRef.new(shape: PredefinedAttributeName, required: true, location_name: "Name"))
    CreatePredefinedAttributeRequest.add_member(:values, Shapes::ShapeRef.new(shape: PredefinedAttributeValues, location_name: "Values"))
    CreatePredefinedAttributeRequest.add_member(:purposes, Shapes::ShapeRef.new(shape: PredefinedAttributePurposeNameList, location_name: "Purposes"))
    CreatePredefinedAttributeRequest.add_member(:attribute_configuration, Shapes::ShapeRef.new(shape: InputPredefinedAttributeConfiguration, location_name: "AttributeConfiguration"))
    CreatePredefinedAttributeRequest.struct_class = Types::CreatePredefinedAttributeRequest

    CreatePromptRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreatePromptRequest.add_member(:name, Shapes::ShapeRef.new(shape: CommonNameLength127, required: true, location_name: "Name"))
    CreatePromptRequest.add_member(:description, Shapes::ShapeRef.new(shape: PromptDescription, location_name: "Description"))
    CreatePromptRequest.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    CreatePromptRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreatePromptRequest.struct_class = Types::CreatePromptRequest

    CreatePromptResponse.add_member(:prompt_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "PromptARN"))
    CreatePromptResponse.add_member(:prompt_id, Shapes::ShapeRef.new(shape: PromptId, location_name: "PromptId"))
    CreatePromptResponse.struct_class = Types::CreatePromptResponse

    CreatePushNotificationRegistrationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreatePushNotificationRegistrationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreatePushNotificationRegistrationRequest.add_member(:pinpoint_app_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "PinpointAppArn"))
    CreatePushNotificationRegistrationRequest.add_member(:device_token, Shapes::ShapeRef.new(shape: DeviceToken, required: true, location_name: "DeviceToken"))
    CreatePushNotificationRegistrationRequest.add_member(:device_type, Shapes::ShapeRef.new(shape: DeviceType, required: true, location_name: "DeviceType"))
    CreatePushNotificationRegistrationRequest.add_member(:contact_configuration, Shapes::ShapeRef.new(shape: ContactConfiguration, required: true, location_name: "ContactConfiguration"))
    CreatePushNotificationRegistrationRequest.struct_class = Types::CreatePushNotificationRegistrationRequest

    CreatePushNotificationRegistrationResponse.add_member(:registration_id, Shapes::ShapeRef.new(shape: RegistrationId, required: true, location_name: "RegistrationId"))
    CreatePushNotificationRegistrationResponse.struct_class = Types::CreatePushNotificationRegistrationResponse

    CreateQueueRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateQueueRequest.add_member(:name, Shapes::ShapeRef.new(shape: CommonNameLength127, required: true, location_name: "Name"))
    CreateQueueRequest.add_member(:description, Shapes::ShapeRef.new(shape: QueueDescription, location_name: "Description"))
    CreateQueueRequest.add_member(:outbound_caller_config, Shapes::ShapeRef.new(shape: OutboundCallerConfig, location_name: "OutboundCallerConfig"))
    CreateQueueRequest.add_member(:outbound_email_config, Shapes::ShapeRef.new(shape: OutboundEmailConfig, location_name: "OutboundEmailConfig"))
    CreateQueueRequest.add_member(:hours_of_operation_id, Shapes::ShapeRef.new(shape: HoursOfOperationId, required: true, location_name: "HoursOfOperationId"))
    CreateQueueRequest.add_member(:max_contacts, Shapes::ShapeRef.new(shape: QueueMaxContacts, location_name: "MaxContacts", metadata: {"box" => true}))
    CreateQueueRequest.add_member(:quick_connect_ids, Shapes::ShapeRef.new(shape: QuickConnectsList, location_name: "QuickConnectIds"))
    CreateQueueRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateQueueRequest.struct_class = Types::CreateQueueRequest

    CreateQueueResponse.add_member(:queue_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "QueueArn"))
    CreateQueueResponse.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, location_name: "QueueId"))
    CreateQueueResponse.struct_class = Types::CreateQueueResponse

    CreateQuickConnectRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateQuickConnectRequest.add_member(:name, Shapes::ShapeRef.new(shape: QuickConnectName, required: true, location_name: "Name"))
    CreateQuickConnectRequest.add_member(:description, Shapes::ShapeRef.new(shape: QuickConnectDescription, location_name: "Description"))
    CreateQuickConnectRequest.add_member(:quick_connect_config, Shapes::ShapeRef.new(shape: QuickConnectConfig, required: true, location_name: "QuickConnectConfig"))
    CreateQuickConnectRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateQuickConnectRequest.struct_class = Types::CreateQuickConnectRequest

    CreateQuickConnectResponse.add_member(:quick_connect_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "QuickConnectARN"))
    CreateQuickConnectResponse.add_member(:quick_connect_id, Shapes::ShapeRef.new(shape: QuickConnectId, location_name: "QuickConnectId"))
    CreateQuickConnectResponse.struct_class = Types::CreateQuickConnectResponse

    CreateRoutingProfileRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateRoutingProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: RoutingProfileName, required: true, location_name: "Name"))
    CreateRoutingProfileRequest.add_member(:description, Shapes::ShapeRef.new(shape: RoutingProfileDescription, required: true, location_name: "Description"))
    CreateRoutingProfileRequest.add_member(:default_outbound_queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location_name: "DefaultOutboundQueueId"))
    CreateRoutingProfileRequest.add_member(:queue_configs, Shapes::ShapeRef.new(shape: RoutingProfileQueueConfigList, location_name: "QueueConfigs"))
    CreateRoutingProfileRequest.add_member(:manual_assignment_queue_configs, Shapes::ShapeRef.new(shape: RoutingProfileManualAssignmentQueueConfigList, location_name: "ManualAssignmentQueueConfigs"))
    CreateRoutingProfileRequest.add_member(:media_concurrencies, Shapes::ShapeRef.new(shape: MediaConcurrencies, required: true, location_name: "MediaConcurrencies"))
    CreateRoutingProfileRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateRoutingProfileRequest.add_member(:agent_availability_timer, Shapes::ShapeRef.new(shape: AgentAvailabilityTimer, location_name: "AgentAvailabilityTimer"))
    CreateRoutingProfileRequest.struct_class = Types::CreateRoutingProfileRequest

    CreateRoutingProfileResponse.add_member(:routing_profile_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RoutingProfileArn"))
    CreateRoutingProfileResponse.add_member(:routing_profile_id, Shapes::ShapeRef.new(shape: RoutingProfileId, location_name: "RoutingProfileId"))
    CreateRoutingProfileResponse.struct_class = Types::CreateRoutingProfileResponse

    CreateRuleRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "Name"))
    CreateRuleRequest.add_member(:trigger_event_source, Shapes::ShapeRef.new(shape: RuleTriggerEventSource, required: true, location_name: "TriggerEventSource"))
    CreateRuleRequest.add_member(:function, Shapes::ShapeRef.new(shape: RuleFunction, required: true, location_name: "Function"))
    CreateRuleRequest.add_member(:actions, Shapes::ShapeRef.new(shape: RuleActions, required: true, location_name: "Actions"))
    CreateRuleRequest.add_member(:publish_status, Shapes::ShapeRef.new(shape: RulePublishStatus, required: true, location_name: "PublishStatus"))
    CreateRuleRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateRuleRequest.struct_class = Types::CreateRuleRequest

    CreateRuleResponse.add_member(:rule_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "RuleArn"))
    CreateRuleResponse.add_member(:rule_id, Shapes::ShapeRef.new(shape: RuleId, required: true, location_name: "RuleId"))
    CreateRuleResponse.struct_class = Types::CreateRuleResponse

    CreateSecurityProfileRequest.add_member(:security_profile_name, Shapes::ShapeRef.new(shape: CreateSecurityProfileName, required: true, location_name: "SecurityProfileName"))
    CreateSecurityProfileRequest.add_member(:description, Shapes::ShapeRef.new(shape: SecurityProfileDescription, location_name: "Description"))
    CreateSecurityProfileRequest.add_member(:permissions, Shapes::ShapeRef.new(shape: PermissionsList, location_name: "Permissions"))
    CreateSecurityProfileRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateSecurityProfileRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateSecurityProfileRequest.add_member(:allowed_access_control_tags, Shapes::ShapeRef.new(shape: AllowedAccessControlTags, location_name: "AllowedAccessControlTags"))
    CreateSecurityProfileRequest.add_member(:tag_restricted_resources, Shapes::ShapeRef.new(shape: TagRestrictedResourceList, location_name: "TagRestrictedResources"))
    CreateSecurityProfileRequest.add_member(:applications, Shapes::ShapeRef.new(shape: Applications, location_name: "Applications"))
    CreateSecurityProfileRequest.add_member(:hierarchy_restricted_resources, Shapes::ShapeRef.new(shape: HierarchyRestrictedResourceList, location_name: "HierarchyRestrictedResources"))
    CreateSecurityProfileRequest.add_member(:allowed_access_control_hierarchy_group_id, Shapes::ShapeRef.new(shape: HierarchyGroupId, location_name: "AllowedAccessControlHierarchyGroupId"))
    CreateSecurityProfileRequest.struct_class = Types::CreateSecurityProfileRequest

    CreateSecurityProfileResponse.add_member(:security_profile_id, Shapes::ShapeRef.new(shape: SecurityProfileId, location_name: "SecurityProfileId"))
    CreateSecurityProfileResponse.add_member(:security_profile_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "SecurityProfileArn"))
    CreateSecurityProfileResponse.struct_class = Types::CreateSecurityProfileResponse

    CreateTaskTemplateRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateTaskTemplateRequest.add_member(:name, Shapes::ShapeRef.new(shape: TaskTemplateName, required: true, location_name: "Name"))
    CreateTaskTemplateRequest.add_member(:description, Shapes::ShapeRef.new(shape: TaskTemplateDescription, location_name: "Description"))
    CreateTaskTemplateRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, location_name: "ContactFlowId"))
    CreateTaskTemplateRequest.add_member(:self_assign_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, location_name: "SelfAssignFlowId"))
    CreateTaskTemplateRequest.add_member(:constraints, Shapes::ShapeRef.new(shape: TaskTemplateConstraints, location_name: "Constraints"))
    CreateTaskTemplateRequest.add_member(:defaults, Shapes::ShapeRef.new(shape: TaskTemplateDefaults, location_name: "Defaults"))
    CreateTaskTemplateRequest.add_member(:status, Shapes::ShapeRef.new(shape: TaskTemplateStatus, location_name: "Status"))
    CreateTaskTemplateRequest.add_member(:fields, Shapes::ShapeRef.new(shape: TaskTemplateFields, required: true, location_name: "Fields"))
    CreateTaskTemplateRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateTaskTemplateRequest.struct_class = Types::CreateTaskTemplateRequest

    CreateTaskTemplateResponse.add_member(:id, Shapes::ShapeRef.new(shape: TaskTemplateId, required: true, location_name: "Id"))
    CreateTaskTemplateResponse.add_member(:arn, Shapes::ShapeRef.new(shape: TaskTemplateArn, required: true, location_name: "Arn"))
    CreateTaskTemplateResponse.struct_class = Types::CreateTaskTemplateResponse

    CreateTrafficDistributionGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name128, required: true, location_name: "Name"))
    CreateTrafficDistributionGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description250, location_name: "Description"))
    CreateTrafficDistributionGroupRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceIdOrArn, required: true, location_name: "InstanceId"))
    CreateTrafficDistributionGroupRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateTrafficDistributionGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateTrafficDistributionGroupRequest.struct_class = Types::CreateTrafficDistributionGroupRequest

    CreateTrafficDistributionGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: TrafficDistributionGroupId, location_name: "Id"))
    CreateTrafficDistributionGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: TrafficDistributionGroupArn, location_name: "Arn"))
    CreateTrafficDistributionGroupResponse.struct_class = Types::CreateTrafficDistributionGroupResponse

    CreateUseCaseRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateUseCaseRequest.add_member(:integration_association_id, Shapes::ShapeRef.new(shape: IntegrationAssociationId, required: true, location: "uri", location_name: "IntegrationAssociationId"))
    CreateUseCaseRequest.add_member(:use_case_type, Shapes::ShapeRef.new(shape: UseCaseType, required: true, location_name: "UseCaseType"))
    CreateUseCaseRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateUseCaseRequest.struct_class = Types::CreateUseCaseRequest

    CreateUseCaseResponse.add_member(:use_case_id, Shapes::ShapeRef.new(shape: UseCaseId, location_name: "UseCaseId"))
    CreateUseCaseResponse.add_member(:use_case_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "UseCaseArn"))
    CreateUseCaseResponse.struct_class = Types::CreateUseCaseResponse

    CreateUserHierarchyGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: HierarchyGroupName, required: true, location_name: "Name"))
    CreateUserHierarchyGroupRequest.add_member(:parent_group_id, Shapes::ShapeRef.new(shape: HierarchyGroupId, location_name: "ParentGroupId"))
    CreateUserHierarchyGroupRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateUserHierarchyGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateUserHierarchyGroupRequest.struct_class = Types::CreateUserHierarchyGroupRequest

    CreateUserHierarchyGroupResponse.add_member(:hierarchy_group_id, Shapes::ShapeRef.new(shape: HierarchyGroupId, location_name: "HierarchyGroupId"))
    CreateUserHierarchyGroupResponse.add_member(:hierarchy_group_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "HierarchyGroupArn"))
    CreateUserHierarchyGroupResponse.struct_class = Types::CreateUserHierarchyGroupResponse

    CreateUserRequest.add_member(:username, Shapes::ShapeRef.new(shape: AgentUsername, required: true, location_name: "Username"))
    CreateUserRequest.add_member(:password, Shapes::ShapeRef.new(shape: Password, location_name: "Password"))
    CreateUserRequest.add_member(:identity_info, Shapes::ShapeRef.new(shape: UserIdentityInfo, location_name: "IdentityInfo"))
    CreateUserRequest.add_member(:phone_config, Shapes::ShapeRef.new(shape: UserPhoneConfig, required: true, location_name: "PhoneConfig"))
    CreateUserRequest.add_member(:directory_user_id, Shapes::ShapeRef.new(shape: DirectoryUserId, location_name: "DirectoryUserId"))
    CreateUserRequest.add_member(:security_profile_ids, Shapes::ShapeRef.new(shape: SecurityProfileIds, required: true, location_name: "SecurityProfileIds"))
    CreateUserRequest.add_member(:routing_profile_id, Shapes::ShapeRef.new(shape: RoutingProfileId, required: true, location_name: "RoutingProfileId"))
    CreateUserRequest.add_member(:hierarchy_group_id, Shapes::ShapeRef.new(shape: HierarchyGroupId, location_name: "HierarchyGroupId"))
    CreateUserRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateUserRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateUserRequest.struct_class = Types::CreateUserRequest

    CreateUserResponse.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    CreateUserResponse.add_member(:user_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "UserArn"))
    CreateUserResponse.struct_class = Types::CreateUserResponse

    CreateViewRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: ViewsInstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateViewRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ViewsClientToken, location_name: "ClientToken"))
    CreateViewRequest.add_member(:status, Shapes::ShapeRef.new(shape: ViewStatus, required: true, location_name: "Status"))
    CreateViewRequest.add_member(:content, Shapes::ShapeRef.new(shape: ViewInputContent, required: true, location_name: "Content"))
    CreateViewRequest.add_member(:description, Shapes::ShapeRef.new(shape: ViewDescription, location_name: "Description"))
    CreateViewRequest.add_member(:name, Shapes::ShapeRef.new(shape: ViewName, required: true, location_name: "Name"))
    CreateViewRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateViewRequest.struct_class = Types::CreateViewRequest

    CreateViewResponse.add_member(:view, Shapes::ShapeRef.new(shape: View, location_name: "View"))
    CreateViewResponse.struct_class = Types::CreateViewResponse

    CreateViewVersionRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: ViewsInstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateViewVersionRequest.add_member(:view_id, Shapes::ShapeRef.new(shape: ViewId, required: true, location: "uri", location_name: "ViewId"))
    CreateViewVersionRequest.add_member(:version_description, Shapes::ShapeRef.new(shape: ViewDescription, location_name: "VersionDescription"))
    CreateViewVersionRequest.add_member(:view_content_sha_256, Shapes::ShapeRef.new(shape: ViewContentSha256, location_name: "ViewContentSha256"))
    CreateViewVersionRequest.struct_class = Types::CreateViewVersionRequest

    CreateViewVersionResponse.add_member(:view, Shapes::ShapeRef.new(shape: View, location_name: "View"))
    CreateViewVersionResponse.struct_class = Types::CreateViewVersionResponse

    CreateVocabularyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateVocabularyRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateVocabularyRequest.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, required: true, location_name: "VocabularyName"))
    CreateVocabularyRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: VocabularyLanguageCode, required: true, location_name: "LanguageCode"))
    CreateVocabularyRequest.add_member(:content, Shapes::ShapeRef.new(shape: VocabularyContent, required: true, location_name: "Content"))
    CreateVocabularyRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateVocabularyRequest.struct_class = Types::CreateVocabularyRequest

    CreateVocabularyResponse.add_member(:vocabulary_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "VocabularyArn"))
    CreateVocabularyResponse.add_member(:vocabulary_id, Shapes::ShapeRef.new(shape: VocabularyId, required: true, location_name: "VocabularyId"))
    CreateVocabularyResponse.add_member(:state, Shapes::ShapeRef.new(shape: VocabularyState, required: true, location_name: "State"))
    CreateVocabularyResponse.struct_class = Types::CreateVocabularyResponse

    CreatedByInfo.add_member(:connect_user_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ConnectUserArn"))
    CreatedByInfo.add_member(:aws_identity_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "AWSIdentityArn"))
    CreatedByInfo.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CreatedByInfo.add_member_subclass(:connect_user_arn, Types::CreatedByInfo::ConnectUserArn)
    CreatedByInfo.add_member_subclass(:aws_identity_arn, Types::CreatedByInfo::AwsIdentityArn)
    CreatedByInfo.add_member_subclass(:unknown, Types::CreatedByInfo::Unknown)
    CreatedByInfo.struct_class = Types::CreatedByInfo

    Credentials.add_member(:access_token, Shapes::ShapeRef.new(shape: SecurityToken, location_name: "AccessToken"))
    Credentials.add_member(:access_token_expiration, Shapes::ShapeRef.new(shape: timestamp, location_name: "AccessTokenExpiration"))
    Credentials.add_member(:refresh_token, Shapes::ShapeRef.new(shape: SecurityToken, location_name: "RefreshToken"))
    Credentials.add_member(:refresh_token_expiration, Shapes::ShapeRef.new(shape: timestamp, location_name: "RefreshTokenExpiration"))
    Credentials.struct_class = Types::Credentials

    CrossChannelBehavior.add_member(:behavior_type, Shapes::ShapeRef.new(shape: BehaviorType, required: true, location_name: "BehaviorType"))
    CrossChannelBehavior.struct_class = Types::CrossChannelBehavior

    CurrentMetric.add_member(:name, Shapes::ShapeRef.new(shape: CurrentMetricName, location_name: "Name"))
    CurrentMetric.add_member(:unit, Shapes::ShapeRef.new(shape: Unit, location_name: "Unit"))
    CurrentMetric.struct_class = Types::CurrentMetric

    CurrentMetricData.add_member(:metric, Shapes::ShapeRef.new(shape: CurrentMetric, location_name: "Metric"))
    CurrentMetricData.add_member(:value, Shapes::ShapeRef.new(shape: Value, location_name: "Value", metadata: {"box" => true}))
    CurrentMetricData.struct_class = Types::CurrentMetricData

    CurrentMetricDataCollections.member = Shapes::ShapeRef.new(shape: CurrentMetricData)

    CurrentMetricResult.add_member(:dimensions, Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions"))
    CurrentMetricResult.add_member(:collections, Shapes::ShapeRef.new(shape: CurrentMetricDataCollections, location_name: "Collections"))
    CurrentMetricResult.struct_class = Types::CurrentMetricResult

    CurrentMetricResults.member = Shapes::ShapeRef.new(shape: CurrentMetricResult)

    CurrentMetricSortCriteria.add_member(:sort_by_metric, Shapes::ShapeRef.new(shape: CurrentMetricName, location_name: "SortByMetric"))
    CurrentMetricSortCriteria.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    CurrentMetricSortCriteria.struct_class = Types::CurrentMetricSortCriteria

    CurrentMetricSortCriteriaMaxOne.member = Shapes::ShapeRef.new(shape: CurrentMetricSortCriteria)

    CurrentMetrics.member = Shapes::ShapeRef.new(shape: CurrentMetric)

    Customer.add_member(:device_info, Shapes::ShapeRef.new(shape: DeviceInfo, location_name: "DeviceInfo"))
    Customer.add_member(:capabilities, Shapes::ShapeRef.new(shape: ParticipantCapabilities, location_name: "Capabilities"))
    Customer.struct_class = Types::Customer

    CustomerQualityMetrics.add_member(:audio, Shapes::ShapeRef.new(shape: AudioQualityMetricsInfo, location_name: "Audio"))
    CustomerQualityMetrics.struct_class = Types::CustomerQualityMetrics

    CustomerVoiceActivity.add_member(:greeting_start_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "GreetingStartTimestamp"))
    CustomerVoiceActivity.add_member(:greeting_end_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "GreetingEndTimestamp"))
    CustomerVoiceActivity.struct_class = Types::CustomerVoiceActivity

    DataSetIds.member = Shapes::ShapeRef.new(shape: DataSetId)

    DateCondition.add_member(:field_name, Shapes::ShapeRef.new(shape: String, location_name: "FieldName"))
    DateCondition.add_member(:value, Shapes::ShapeRef.new(shape: DateYearMonthDayFormat, location_name: "Value"))
    DateCondition.add_member(:comparison_type, Shapes::ShapeRef.new(shape: DateComparisonType, location_name: "ComparisonType"))
    DateCondition.struct_class = Types::DateCondition

    DateReference.add_member(:name, Shapes::ShapeRef.new(shape: ReferenceKey, location_name: "Name"))
    DateReference.add_member(:value, Shapes::ShapeRef.new(shape: ReferenceValue, location_name: "Value"))
    DateReference.struct_class = Types::DateReference

    DateTimeCondition.add_member(:field_name, Shapes::ShapeRef.new(shape: String, location_name: "FieldName"))
    DateTimeCondition.add_member(:min_value, Shapes::ShapeRef.new(shape: DateTimeFormat, location_name: "MinValue"))
    DateTimeCondition.add_member(:max_value, Shapes::ShapeRef.new(shape: DateTimeFormat, location_name: "MaxValue"))
    DateTimeCondition.add_member(:comparison_type, Shapes::ShapeRef.new(shape: DateTimeComparisonType, location_name: "ComparisonType"))
    DateTimeCondition.struct_class = Types::DateTimeCondition

    DeactivateEvaluationFormRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeactivateEvaluationFormRequest.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "EvaluationFormId"))
    DeactivateEvaluationFormRequest.add_member(:evaluation_form_version, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "EvaluationFormVersion"))
    DeactivateEvaluationFormRequest.struct_class = Types::DeactivateEvaluationFormRequest

    DeactivateEvaluationFormResponse.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "EvaluationFormId"))
    DeactivateEvaluationFormResponse.add_member(:evaluation_form_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "EvaluationFormArn"))
    DeactivateEvaluationFormResponse.add_member(:evaluation_form_version, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "EvaluationFormVersion"))
    DeactivateEvaluationFormResponse.struct_class = Types::DeactivateEvaluationFormResponse

    DecimalCondition.add_member(:field_name, Shapes::ShapeRef.new(shape: String, location_name: "FieldName"))
    DecimalCondition.add_member(:min_value, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "MinValue"))
    DecimalCondition.add_member(:max_value, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "MaxValue"))
    DecimalCondition.add_member(:comparison_type, Shapes::ShapeRef.new(shape: DecimalComparisonType, location_name: "ComparisonType"))
    DecimalCondition.struct_class = Types::DecimalCondition

    DefaultVocabulary.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    DefaultVocabulary.add_member(:language_code, Shapes::ShapeRef.new(shape: VocabularyLanguageCode, required: true, location_name: "LanguageCode"))
    DefaultVocabulary.add_member(:vocabulary_id, Shapes::ShapeRef.new(shape: VocabularyId, required: true, location_name: "VocabularyId"))
    DefaultVocabulary.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, required: true, location_name: "VocabularyName"))
    DefaultVocabulary.struct_class = Types::DefaultVocabulary

    DefaultVocabularyList.member = Shapes::ShapeRef.new(shape: DefaultVocabulary)

    DeleteAttachedFileRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteAttachedFileRequest.add_member(:file_id, Shapes::ShapeRef.new(shape: FileId, required: true, location: "uri", location_name: "FileId"))
    DeleteAttachedFileRequest.add_member(:associated_resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "querystring", location_name: "associatedResourceArn"))
    DeleteAttachedFileRequest.struct_class = Types::DeleteAttachedFileRequest

    DeleteAttachedFileResponse.struct_class = Types::DeleteAttachedFileResponse

    DeleteContactEvaluationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteContactEvaluationRequest.add_member(:evaluation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "EvaluationId"))
    DeleteContactEvaluationRequest.struct_class = Types::DeleteContactEvaluationRequest

    DeleteContactFlowModuleAliasRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceIdOrArn, required: true, location: "uri", location_name: "InstanceId"))
    DeleteContactFlowModuleAliasRequest.add_member(:contact_flow_module_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "ContactFlowModuleId"))
    DeleteContactFlowModuleAliasRequest.add_member(:alias_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "AliasId"))
    DeleteContactFlowModuleAliasRequest.struct_class = Types::DeleteContactFlowModuleAliasRequest

    DeleteContactFlowModuleAliasResponse.struct_class = Types::DeleteContactFlowModuleAliasResponse

    DeleteContactFlowModuleRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteContactFlowModuleRequest.add_member(:contact_flow_module_id, Shapes::ShapeRef.new(shape: ContactFlowModuleId, required: true, location: "uri", location_name: "ContactFlowModuleId"))
    DeleteContactFlowModuleRequest.struct_class = Types::DeleteContactFlowModuleRequest

    DeleteContactFlowModuleResponse.struct_class = Types::DeleteContactFlowModuleResponse

    DeleteContactFlowModuleVersionRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteContactFlowModuleVersionRequest.add_member(:contact_flow_module_id, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "ContactFlowModuleId"))
    DeleteContactFlowModuleVersionRequest.add_member(:contact_flow_module_version, Shapes::ShapeRef.new(shape: ResourceVersion, required: true, location: "uri", location_name: "ContactFlowModuleVersion"))
    DeleteContactFlowModuleVersionRequest.struct_class = Types::DeleteContactFlowModuleVersionRequest

    DeleteContactFlowModuleVersionResponse.struct_class = Types::DeleteContactFlowModuleVersionResponse

    DeleteContactFlowRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteContactFlowRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, required: true, location: "uri", location_name: "ContactFlowId"))
    DeleteContactFlowRequest.struct_class = Types::DeleteContactFlowRequest

    DeleteContactFlowResponse.struct_class = Types::DeleteContactFlowResponse

    DeleteContactFlowVersionRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteContactFlowVersionRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "ContactFlowId"))
    DeleteContactFlowVersionRequest.add_member(:contact_flow_version, Shapes::ShapeRef.new(shape: ResourceVersion, required: true, location: "uri", location_name: "ContactFlowVersion"))
    DeleteContactFlowVersionRequest.struct_class = Types::DeleteContactFlowVersionRequest

    DeleteContactFlowVersionResponse.struct_class = Types::DeleteContactFlowVersionResponse

    DeleteEmailAddressRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteEmailAddressRequest.add_member(:email_address_id, Shapes::ShapeRef.new(shape: EmailAddressId, required: true, location: "uri", location_name: "EmailAddressId"))
    DeleteEmailAddressRequest.struct_class = Types::DeleteEmailAddressRequest

    DeleteEmailAddressResponse.struct_class = Types::DeleteEmailAddressResponse

    DeleteEvaluationFormRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteEvaluationFormRequest.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "EvaluationFormId"))
    DeleteEvaluationFormRequest.add_member(:evaluation_form_version, Shapes::ShapeRef.new(shape: VersionNumber, location: "querystring", location_name: "version", metadata: {"box" => true}))
    DeleteEvaluationFormRequest.struct_class = Types::DeleteEvaluationFormRequest

    DeleteHoursOfOperationOverrideRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteHoursOfOperationOverrideRequest.add_member(:hours_of_operation_id, Shapes::ShapeRef.new(shape: HoursOfOperationId, required: true, location: "uri", location_name: "HoursOfOperationId"))
    DeleteHoursOfOperationOverrideRequest.add_member(:hours_of_operation_override_id, Shapes::ShapeRef.new(shape: HoursOfOperationOverrideId, required: true, location: "uri", location_name: "HoursOfOperationOverrideId"))
    DeleteHoursOfOperationOverrideRequest.struct_class = Types::DeleteHoursOfOperationOverrideRequest

    DeleteHoursOfOperationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteHoursOfOperationRequest.add_member(:hours_of_operation_id, Shapes::ShapeRef.new(shape: HoursOfOperationId, required: true, location: "uri", location_name: "HoursOfOperationId"))
    DeleteHoursOfOperationRequest.struct_class = Types::DeleteHoursOfOperationRequest

    DeleteInstanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteInstanceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteInstanceRequest.struct_class = Types::DeleteInstanceRequest

    DeleteIntegrationAssociationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteIntegrationAssociationRequest.add_member(:integration_association_id, Shapes::ShapeRef.new(shape: IntegrationAssociationId, required: true, location: "uri", location_name: "IntegrationAssociationId"))
    DeleteIntegrationAssociationRequest.struct_class = Types::DeleteIntegrationAssociationRequest

    DeletePredefinedAttributeRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeletePredefinedAttributeRequest.add_member(:name, Shapes::ShapeRef.new(shape: PredefinedAttributeName, required: true, location: "uri", location_name: "Name"))
    DeletePredefinedAttributeRequest.struct_class = Types::DeletePredefinedAttributeRequest

    DeletePromptRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeletePromptRequest.add_member(:prompt_id, Shapes::ShapeRef.new(shape: PromptId, required: true, location: "uri", location_name: "PromptId"))
    DeletePromptRequest.struct_class = Types::DeletePromptRequest

    DeletePushNotificationRegistrationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeletePushNotificationRegistrationRequest.add_member(:registration_id, Shapes::ShapeRef.new(shape: RegistrationId, required: true, location: "uri", location_name: "RegistrationId"))
    DeletePushNotificationRegistrationRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location: "querystring", location_name: "contactId"))
    DeletePushNotificationRegistrationRequest.struct_class = Types::DeletePushNotificationRegistrationRequest

    DeletePushNotificationRegistrationResponse.struct_class = Types::DeletePushNotificationRegistrationResponse

    DeleteQueueRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteQueueRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "QueueId"))
    DeleteQueueRequest.struct_class = Types::DeleteQueueRequest

    DeleteQuickConnectRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteQuickConnectRequest.add_member(:quick_connect_id, Shapes::ShapeRef.new(shape: QuickConnectId, required: true, location: "uri", location_name: "QuickConnectId"))
    DeleteQuickConnectRequest.struct_class = Types::DeleteQuickConnectRequest

    DeleteRoutingProfileRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteRoutingProfileRequest.add_member(:routing_profile_id, Shapes::ShapeRef.new(shape: RoutingProfileId, required: true, location: "uri", location_name: "RoutingProfileId"))
    DeleteRoutingProfileRequest.struct_class = Types::DeleteRoutingProfileRequest

    DeleteRuleRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteRuleRequest.add_member(:rule_id, Shapes::ShapeRef.new(shape: RuleId, required: true, location: "uri", location_name: "RuleId"))
    DeleteRuleRequest.struct_class = Types::DeleteRuleRequest

    DeleteSecurityProfileRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteSecurityProfileRequest.add_member(:security_profile_id, Shapes::ShapeRef.new(shape: SecurityProfileId, required: true, location: "uri", location_name: "SecurityProfileId"))
    DeleteSecurityProfileRequest.struct_class = Types::DeleteSecurityProfileRequest

    DeleteTaskTemplateRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteTaskTemplateRequest.add_member(:task_template_id, Shapes::ShapeRef.new(shape: TaskTemplateId, required: true, location: "uri", location_name: "TaskTemplateId"))
    DeleteTaskTemplateRequest.struct_class = Types::DeleteTaskTemplateRequest

    DeleteTaskTemplateResponse.struct_class = Types::DeleteTaskTemplateResponse

    DeleteTrafficDistributionGroupRequest.add_member(:traffic_distribution_group_id, Shapes::ShapeRef.new(shape: TrafficDistributionGroupIdOrArn, required: true, location: "uri", location_name: "TrafficDistributionGroupId"))
    DeleteTrafficDistributionGroupRequest.struct_class = Types::DeleteTrafficDistributionGroupRequest

    DeleteTrafficDistributionGroupResponse.struct_class = Types::DeleteTrafficDistributionGroupResponse

    DeleteUseCaseRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteUseCaseRequest.add_member(:integration_association_id, Shapes::ShapeRef.new(shape: IntegrationAssociationId, required: true, location: "uri", location_name: "IntegrationAssociationId"))
    DeleteUseCaseRequest.add_member(:use_case_id, Shapes::ShapeRef.new(shape: UseCaseId, required: true, location: "uri", location_name: "UseCaseId"))
    DeleteUseCaseRequest.struct_class = Types::DeleteUseCaseRequest

    DeleteUserHierarchyGroupRequest.add_member(:hierarchy_group_id, Shapes::ShapeRef.new(shape: HierarchyGroupId, required: true, location: "uri", location_name: "HierarchyGroupId"))
    DeleteUserHierarchyGroupRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteUserHierarchyGroupRequest.struct_class = Types::DeleteUserHierarchyGroupRequest

    DeleteUserRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "UserId"))
    DeleteUserRequest.struct_class = Types::DeleteUserRequest

    DeleteViewRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: ViewsInstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteViewRequest.add_member(:view_id, Shapes::ShapeRef.new(shape: ViewId, required: true, location: "uri", location_name: "ViewId"))
    DeleteViewRequest.struct_class = Types::DeleteViewRequest

    DeleteViewResponse.struct_class = Types::DeleteViewResponse

    DeleteViewVersionRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: ViewsInstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteViewVersionRequest.add_member(:view_id, Shapes::ShapeRef.new(shape: ViewId, required: true, location: "uri", location_name: "ViewId"))
    DeleteViewVersionRequest.add_member(:view_version, Shapes::ShapeRef.new(shape: ViewVersion, required: true, location: "uri", location_name: "ViewVersion"))
    DeleteViewVersionRequest.struct_class = Types::DeleteViewVersionRequest

    DeleteViewVersionResponse.struct_class = Types::DeleteViewVersionResponse

    DeleteVocabularyRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteVocabularyRequest.add_member(:vocabulary_id, Shapes::ShapeRef.new(shape: VocabularyId, required: true, location: "uri", location_name: "VocabularyId"))
    DeleteVocabularyRequest.struct_class = Types::DeleteVocabularyRequest

    DeleteVocabularyResponse.add_member(:vocabulary_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "VocabularyArn"))
    DeleteVocabularyResponse.add_member(:vocabulary_id, Shapes::ShapeRef.new(shape: VocabularyId, required: true, location_name: "VocabularyId"))
    DeleteVocabularyResponse.add_member(:state, Shapes::ShapeRef.new(shape: VocabularyState, required: true, location_name: "State"))
    DeleteVocabularyResponse.struct_class = Types::DeleteVocabularyResponse

    DescribeAgentStatusRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribeAgentStatusRequest.add_member(:agent_status_id, Shapes::ShapeRef.new(shape: AgentStatusId, required: true, location: "uri", location_name: "AgentStatusId"))
    DescribeAgentStatusRequest.struct_class = Types::DescribeAgentStatusRequest

    DescribeAgentStatusResponse.add_member(:agent_status, Shapes::ShapeRef.new(shape: AgentStatus, location_name: "AgentStatus"))
    DescribeAgentStatusResponse.struct_class = Types::DescribeAgentStatusResponse

    DescribeAuthenticationProfileRequest.add_member(:authentication_profile_id, Shapes::ShapeRef.new(shape: AuthenticationProfileId, required: true, location: "uri", location_name: "AuthenticationProfileId"))
    DescribeAuthenticationProfileRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribeAuthenticationProfileRequest.struct_class = Types::DescribeAuthenticationProfileRequest

    DescribeAuthenticationProfileResponse.add_member(:authentication_profile, Shapes::ShapeRef.new(shape: AuthenticationProfile, location_name: "AuthenticationProfile"))
    DescribeAuthenticationProfileResponse.struct_class = Types::DescribeAuthenticationProfileResponse

    DescribeContactEvaluationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribeContactEvaluationRequest.add_member(:evaluation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "EvaluationId"))
    DescribeContactEvaluationRequest.struct_class = Types::DescribeContactEvaluationRequest

    DescribeContactEvaluationResponse.add_member(:evaluation, Shapes::ShapeRef.new(shape: Evaluation, required: true, location_name: "Evaluation"))
    DescribeContactEvaluationResponse.add_member(:evaluation_form, Shapes::ShapeRef.new(shape: EvaluationFormContent, required: true, location_name: "EvaluationForm"))
    DescribeContactEvaluationResponse.struct_class = Types::DescribeContactEvaluationResponse

    DescribeContactFlowModuleAliasRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceIdOrArn, required: true, location: "uri", location_name: "InstanceId"))
    DescribeContactFlowModuleAliasRequest.add_member(:contact_flow_module_id, Shapes::ShapeRef.new(shape: ContactFlowModuleId, required: true, location: "uri", location_name: "ContactFlowModuleId"))
    DescribeContactFlowModuleAliasRequest.add_member(:alias_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "AliasId"))
    DescribeContactFlowModuleAliasRequest.struct_class = Types::DescribeContactFlowModuleAliasRequest

    DescribeContactFlowModuleAliasResponse.add_member(:contact_flow_module_alias, Shapes::ShapeRef.new(shape: ContactFlowModuleAliasInfo, location_name: "ContactFlowModuleAlias"))
    DescribeContactFlowModuleAliasResponse.struct_class = Types::DescribeContactFlowModuleAliasResponse

    DescribeContactFlowModuleRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribeContactFlowModuleRequest.add_member(:contact_flow_module_id, Shapes::ShapeRef.new(shape: ContactFlowModuleId, required: true, location: "uri", location_name: "ContactFlowModuleId"))
    DescribeContactFlowModuleRequest.struct_class = Types::DescribeContactFlowModuleRequest

    DescribeContactFlowModuleResponse.add_member(:contact_flow_module, Shapes::ShapeRef.new(shape: ContactFlowModule, location_name: "ContactFlowModule"))
    DescribeContactFlowModuleResponse.struct_class = Types::DescribeContactFlowModuleResponse

    DescribeContactFlowRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribeContactFlowRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, required: true, location: "uri", location_name: "ContactFlowId"))
    DescribeContactFlowRequest.struct_class = Types::DescribeContactFlowRequest

    DescribeContactFlowResponse.add_member(:contact_flow, Shapes::ShapeRef.new(shape: ContactFlow, location_name: "ContactFlow"))
    DescribeContactFlowResponse.struct_class = Types::DescribeContactFlowResponse

    DescribeContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribeContactRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location: "uri", location_name: "ContactId"))
    DescribeContactRequest.struct_class = Types::DescribeContactRequest

    DescribeContactResponse.add_member(:contact, Shapes::ShapeRef.new(shape: Contact, location_name: "Contact"))
    DescribeContactResponse.struct_class = Types::DescribeContactResponse

    DescribeEmailAddressRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribeEmailAddressRequest.add_member(:email_address_id, Shapes::ShapeRef.new(shape: EmailAddressId, required: true, location: "uri", location_name: "EmailAddressId"))
    DescribeEmailAddressRequest.struct_class = Types::DescribeEmailAddressRequest

    DescribeEmailAddressResponse.add_member(:email_address_id, Shapes::ShapeRef.new(shape: EmailAddressId, location_name: "EmailAddressId"))
    DescribeEmailAddressResponse.add_member(:email_address_arn, Shapes::ShapeRef.new(shape: EmailAddressArn, location_name: "EmailAddressArn"))
    DescribeEmailAddressResponse.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "EmailAddress"))
    DescribeEmailAddressResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: EmailAddressDisplayName, location_name: "DisplayName"))
    DescribeEmailAddressResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeEmailAddressResponse.add_member(:create_timestamp, Shapes::ShapeRef.new(shape: ISO8601Datetime, location_name: "CreateTimestamp"))
    DescribeEmailAddressResponse.add_member(:modified_timestamp, Shapes::ShapeRef.new(shape: ISO8601Datetime, location_name: "ModifiedTimestamp"))
    DescribeEmailAddressResponse.add_member(:alias_configurations, Shapes::ShapeRef.new(shape: AliasConfigurationList, location_name: "AliasConfigurations"))
    DescribeEmailAddressResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    DescribeEmailAddressResponse.struct_class = Types::DescribeEmailAddressResponse

    DescribeEvaluationFormRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribeEvaluationFormRequest.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "EvaluationFormId"))
    DescribeEvaluationFormRequest.add_member(:evaluation_form_version, Shapes::ShapeRef.new(shape: VersionNumber, location: "querystring", location_name: "version", metadata: {"box" => true}))
    DescribeEvaluationFormRequest.struct_class = Types::DescribeEvaluationFormRequest

    DescribeEvaluationFormResponse.add_member(:evaluation_form, Shapes::ShapeRef.new(shape: EvaluationForm, required: true, location_name: "EvaluationForm"))
    DescribeEvaluationFormResponse.struct_class = Types::DescribeEvaluationFormResponse

    DescribeHoursOfOperationOverrideRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribeHoursOfOperationOverrideRequest.add_member(:hours_of_operation_id, Shapes::ShapeRef.new(shape: HoursOfOperationId, required: true, location: "uri", location_name: "HoursOfOperationId"))
    DescribeHoursOfOperationOverrideRequest.add_member(:hours_of_operation_override_id, Shapes::ShapeRef.new(shape: HoursOfOperationOverrideId, required: true, location: "uri", location_name: "HoursOfOperationOverrideId"))
    DescribeHoursOfOperationOverrideRequest.struct_class = Types::DescribeHoursOfOperationOverrideRequest

    DescribeHoursOfOperationOverrideResponse.add_member(:hours_of_operation_override, Shapes::ShapeRef.new(shape: HoursOfOperationOverride, location_name: "HoursOfOperationOverride"))
    DescribeHoursOfOperationOverrideResponse.struct_class = Types::DescribeHoursOfOperationOverrideResponse

    DescribeHoursOfOperationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribeHoursOfOperationRequest.add_member(:hours_of_operation_id, Shapes::ShapeRef.new(shape: HoursOfOperationId, required: true, location: "uri", location_name: "HoursOfOperationId"))
    DescribeHoursOfOperationRequest.struct_class = Types::DescribeHoursOfOperationRequest

    DescribeHoursOfOperationResponse.add_member(:hours_of_operation, Shapes::ShapeRef.new(shape: HoursOfOperation, location_name: "HoursOfOperation"))
    DescribeHoursOfOperationResponse.struct_class = Types::DescribeHoursOfOperationResponse

    DescribeInstanceAttributeRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribeInstanceAttributeRequest.add_member(:attribute_type, Shapes::ShapeRef.new(shape: InstanceAttributeType, required: true, location: "uri", location_name: "AttributeType"))
    DescribeInstanceAttributeRequest.struct_class = Types::DescribeInstanceAttributeRequest

    DescribeInstanceAttributeResponse.add_member(:attribute, Shapes::ShapeRef.new(shape: Attribute, location_name: "Attribute"))
    DescribeInstanceAttributeResponse.struct_class = Types::DescribeInstanceAttributeResponse

    DescribeInstanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribeInstanceRequest.struct_class = Types::DescribeInstanceRequest

    DescribeInstanceResponse.add_member(:instance, Shapes::ShapeRef.new(shape: Instance, location_name: "Instance"))
    DescribeInstanceResponse.add_member(:replication_configuration, Shapes::ShapeRef.new(shape: ReplicationConfiguration, location_name: "ReplicationConfiguration"))
    DescribeInstanceResponse.struct_class = Types::DescribeInstanceResponse

    DescribeInstanceStorageConfigRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribeInstanceStorageConfigRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, required: true, location: "uri", location_name: "AssociationId"))
    DescribeInstanceStorageConfigRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: InstanceStorageResourceType, required: true, location: "querystring", location_name: "resourceType"))
    DescribeInstanceStorageConfigRequest.struct_class = Types::DescribeInstanceStorageConfigRequest

    DescribeInstanceStorageConfigResponse.add_member(:storage_config, Shapes::ShapeRef.new(shape: InstanceStorageConfig, location_name: "StorageConfig"))
    DescribeInstanceStorageConfigResponse.struct_class = Types::DescribeInstanceStorageConfigResponse

    DescribePhoneNumberRequest.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: PhoneNumberId, required: true, location: "uri", location_name: "PhoneNumberId"))
    DescribePhoneNumberRequest.struct_class = Types::DescribePhoneNumberRequest

    DescribePhoneNumberResponse.add_member(:claimed_phone_number_summary, Shapes::ShapeRef.new(shape: ClaimedPhoneNumberSummary, location_name: "ClaimedPhoneNumberSummary"))
    DescribePhoneNumberResponse.struct_class = Types::DescribePhoneNumberResponse

    DescribePredefinedAttributeRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribePredefinedAttributeRequest.add_member(:name, Shapes::ShapeRef.new(shape: PredefinedAttributeName, required: true, location: "uri", location_name: "Name"))
    DescribePredefinedAttributeRequest.struct_class = Types::DescribePredefinedAttributeRequest

    DescribePredefinedAttributeResponse.add_member(:predefined_attribute, Shapes::ShapeRef.new(shape: PredefinedAttribute, location_name: "PredefinedAttribute"))
    DescribePredefinedAttributeResponse.struct_class = Types::DescribePredefinedAttributeResponse

    DescribePromptRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribePromptRequest.add_member(:prompt_id, Shapes::ShapeRef.new(shape: PromptId, required: true, location: "uri", location_name: "PromptId"))
    DescribePromptRequest.struct_class = Types::DescribePromptRequest

    DescribePromptResponse.add_member(:prompt, Shapes::ShapeRef.new(shape: Prompt, location_name: "Prompt"))
    DescribePromptResponse.struct_class = Types::DescribePromptResponse

    DescribeQueueRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribeQueueRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "QueueId"))
    DescribeQueueRequest.struct_class = Types::DescribeQueueRequest

    DescribeQueueResponse.add_member(:queue, Shapes::ShapeRef.new(shape: Queue, location_name: "Queue"))
    DescribeQueueResponse.struct_class = Types::DescribeQueueResponse

    DescribeQuickConnectRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribeQuickConnectRequest.add_member(:quick_connect_id, Shapes::ShapeRef.new(shape: QuickConnectId, required: true, location: "uri", location_name: "QuickConnectId"))
    DescribeQuickConnectRequest.struct_class = Types::DescribeQuickConnectRequest

    DescribeQuickConnectResponse.add_member(:quick_connect, Shapes::ShapeRef.new(shape: QuickConnect, location_name: "QuickConnect"))
    DescribeQuickConnectResponse.struct_class = Types::DescribeQuickConnectResponse

    DescribeRoutingProfileRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribeRoutingProfileRequest.add_member(:routing_profile_id, Shapes::ShapeRef.new(shape: RoutingProfileId, required: true, location: "uri", location_name: "RoutingProfileId"))
    DescribeRoutingProfileRequest.struct_class = Types::DescribeRoutingProfileRequest

    DescribeRoutingProfileResponse.add_member(:routing_profile, Shapes::ShapeRef.new(shape: RoutingProfile, location_name: "RoutingProfile"))
    DescribeRoutingProfileResponse.struct_class = Types::DescribeRoutingProfileResponse

    DescribeRuleRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribeRuleRequest.add_member(:rule_id, Shapes::ShapeRef.new(shape: RuleId, required: true, location: "uri", location_name: "RuleId"))
    DescribeRuleRequest.struct_class = Types::DescribeRuleRequest

    DescribeRuleResponse.add_member(:rule, Shapes::ShapeRef.new(shape: Rule, required: true, location_name: "Rule"))
    DescribeRuleResponse.struct_class = Types::DescribeRuleResponse

    DescribeSecurityProfileRequest.add_member(:security_profile_id, Shapes::ShapeRef.new(shape: SecurityProfileId, required: true, location: "uri", location_name: "SecurityProfileId"))
    DescribeSecurityProfileRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribeSecurityProfileRequest.struct_class = Types::DescribeSecurityProfileRequest

    DescribeSecurityProfileResponse.add_member(:security_profile, Shapes::ShapeRef.new(shape: SecurityProfile, location_name: "SecurityProfile"))
    DescribeSecurityProfileResponse.struct_class = Types::DescribeSecurityProfileResponse

    DescribeTrafficDistributionGroupRequest.add_member(:traffic_distribution_group_id, Shapes::ShapeRef.new(shape: TrafficDistributionGroupIdOrArn, required: true, location: "uri", location_name: "TrafficDistributionGroupId"))
    DescribeTrafficDistributionGroupRequest.struct_class = Types::DescribeTrafficDistributionGroupRequest

    DescribeTrafficDistributionGroupResponse.add_member(:traffic_distribution_group, Shapes::ShapeRef.new(shape: TrafficDistributionGroup, location_name: "TrafficDistributionGroup"))
    DescribeTrafficDistributionGroupResponse.struct_class = Types::DescribeTrafficDistributionGroupResponse

    DescribeUserHierarchyGroupRequest.add_member(:hierarchy_group_id, Shapes::ShapeRef.new(shape: HierarchyGroupId, required: true, location: "uri", location_name: "HierarchyGroupId"))
    DescribeUserHierarchyGroupRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribeUserHierarchyGroupRequest.struct_class = Types::DescribeUserHierarchyGroupRequest

    DescribeUserHierarchyGroupResponse.add_member(:hierarchy_group, Shapes::ShapeRef.new(shape: HierarchyGroup, location_name: "HierarchyGroup"))
    DescribeUserHierarchyGroupResponse.struct_class = Types::DescribeUserHierarchyGroupResponse

    DescribeUserHierarchyStructureRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribeUserHierarchyStructureRequest.struct_class = Types::DescribeUserHierarchyStructureRequest

    DescribeUserHierarchyStructureResponse.add_member(:hierarchy_structure, Shapes::ShapeRef.new(shape: HierarchyStructure, location_name: "HierarchyStructure"))
    DescribeUserHierarchyStructureResponse.struct_class = Types::DescribeUserHierarchyStructureResponse

    DescribeUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "UserId"))
    DescribeUserRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribeUserRequest.struct_class = Types::DescribeUserRequest

    DescribeUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    DescribeUserResponse.struct_class = Types::DescribeUserResponse

    DescribeViewRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: ViewsInstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribeViewRequest.add_member(:view_id, Shapes::ShapeRef.new(shape: ViewId, required: true, location: "uri", location_name: "ViewId"))
    DescribeViewRequest.struct_class = Types::DescribeViewRequest

    DescribeViewResponse.add_member(:view, Shapes::ShapeRef.new(shape: View, location_name: "View"))
    DescribeViewResponse.struct_class = Types::DescribeViewResponse

    DescribeVocabularyRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribeVocabularyRequest.add_member(:vocabulary_id, Shapes::ShapeRef.new(shape: VocabularyId, required: true, location: "uri", location_name: "VocabularyId"))
    DescribeVocabularyRequest.struct_class = Types::DescribeVocabularyRequest

    DescribeVocabularyResponse.add_member(:vocabulary, Shapes::ShapeRef.new(shape: Vocabulary, required: true, location_name: "Vocabulary"))
    DescribeVocabularyResponse.struct_class = Types::DescribeVocabularyResponse

    DestinationNotAllowedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    DestinationNotAllowedException.struct_class = Types::DestinationNotAllowedException

    DeviceInfo.add_member(:platform_name, Shapes::ShapeRef.new(shape: PlatformName, location_name: "PlatformName"))
    DeviceInfo.add_member(:platform_version, Shapes::ShapeRef.new(shape: PlatformVersion, location_name: "PlatformVersion"))
    DeviceInfo.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    DeviceInfo.struct_class = Types::DeviceInfo

    Dimensions.add_member(:queue, Shapes::ShapeRef.new(shape: QueueReference, location_name: "Queue"))
    Dimensions.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "Channel"))
    Dimensions.add_member(:routing_profile, Shapes::ShapeRef.new(shape: RoutingProfileReference, location_name: "RoutingProfile"))
    Dimensions.add_member(:routing_step_expression, Shapes::ShapeRef.new(shape: RoutingExpression, location_name: "RoutingStepExpression"))
    Dimensions.add_member(:agent_status, Shapes::ShapeRef.new(shape: AgentStatusIdentifier, location_name: "AgentStatus"))
    Dimensions.struct_class = Types::Dimensions

    DimensionsV2Map.key = Shapes::ShapeRef.new(shape: DimensionsV2Key)
    DimensionsV2Map.value = Shapes::ShapeRef.new(shape: DimensionsV2Value)

    DisassociateAnalyticsDataSetRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DisassociateAnalyticsDataSetRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: DataSetId, required: true, location_name: "DataSetId"))
    DisassociateAnalyticsDataSetRequest.add_member(:target_account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "TargetAccountId"))
    DisassociateAnalyticsDataSetRequest.struct_class = Types::DisassociateAnalyticsDataSetRequest

    DisassociateApprovedOriginRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DisassociateApprovedOriginRequest.add_member(:origin, Shapes::ShapeRef.new(shape: Origin, required: true, location: "querystring", location_name: "origin"))
    DisassociateApprovedOriginRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DisassociateApprovedOriginRequest.struct_class = Types::DisassociateApprovedOriginRequest

    DisassociateBotRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DisassociateBotRequest.add_member(:lex_bot, Shapes::ShapeRef.new(shape: LexBot, location_name: "LexBot"))
    DisassociateBotRequest.add_member(:lex_v2_bot, Shapes::ShapeRef.new(shape: LexV2Bot, location_name: "LexV2Bot"))
    DisassociateBotRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    DisassociateBotRequest.struct_class = Types::DisassociateBotRequest

    DisassociateEmailAddressAliasRequest.add_member(:email_address_id, Shapes::ShapeRef.new(shape: EmailAddressId, required: true, location: "uri", location_name: "EmailAddressId"))
    DisassociateEmailAddressAliasRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DisassociateEmailAddressAliasRequest.add_member(:alias_configuration, Shapes::ShapeRef.new(shape: AliasConfiguration, required: true, location_name: "AliasConfiguration"))
    DisassociateEmailAddressAliasRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    DisassociateEmailAddressAliasRequest.struct_class = Types::DisassociateEmailAddressAliasRequest

    DisassociateEmailAddressAliasResponse.struct_class = Types::DisassociateEmailAddressAliasResponse

    DisassociateFlowRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DisassociateFlowRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "ResourceId"))
    DisassociateFlowRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: FlowAssociationResourceType, required: true, location: "uri", location_name: "ResourceType"))
    DisassociateFlowRequest.struct_class = Types::DisassociateFlowRequest

    DisassociateFlowResponse.struct_class = Types::DisassociateFlowResponse

    DisassociateInstanceStorageConfigRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DisassociateInstanceStorageConfigRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, required: true, location: "uri", location_name: "AssociationId"))
    DisassociateInstanceStorageConfigRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: InstanceStorageResourceType, required: true, location: "querystring", location_name: "resourceType"))
    DisassociateInstanceStorageConfigRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DisassociateInstanceStorageConfigRequest.struct_class = Types::DisassociateInstanceStorageConfigRequest

    DisassociateLambdaFunctionRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DisassociateLambdaFunctionRequest.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionArn, required: true, location: "querystring", location_name: "functionArn"))
    DisassociateLambdaFunctionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DisassociateLambdaFunctionRequest.struct_class = Types::DisassociateLambdaFunctionRequest

    DisassociateLexBotRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DisassociateLexBotRequest.add_member(:bot_name, Shapes::ShapeRef.new(shape: BotName, required: true, location: "querystring", location_name: "botName"))
    DisassociateLexBotRequest.add_member(:lex_region, Shapes::ShapeRef.new(shape: LexRegion, required: true, location: "querystring", location_name: "lexRegion"))
    DisassociateLexBotRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DisassociateLexBotRequest.struct_class = Types::DisassociateLexBotRequest

    DisassociatePhoneNumberContactFlowRequest.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: PhoneNumberId, required: true, location: "uri", location_name: "PhoneNumberId"))
    DisassociatePhoneNumberContactFlowRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "querystring", location_name: "instanceId"))
    DisassociatePhoneNumberContactFlowRequest.struct_class = Types::DisassociatePhoneNumberContactFlowRequest

    DisassociateQueueQuickConnectsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DisassociateQueueQuickConnectsRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "QueueId"))
    DisassociateQueueQuickConnectsRequest.add_member(:quick_connect_ids, Shapes::ShapeRef.new(shape: QuickConnectsList, required: true, location_name: "QuickConnectIds"))
    DisassociateQueueQuickConnectsRequest.struct_class = Types::DisassociateQueueQuickConnectsRequest

    DisassociateRoutingProfileQueuesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DisassociateRoutingProfileQueuesRequest.add_member(:routing_profile_id, Shapes::ShapeRef.new(shape: RoutingProfileId, required: true, location: "uri", location_name: "RoutingProfileId"))
    DisassociateRoutingProfileQueuesRequest.add_member(:queue_references, Shapes::ShapeRef.new(shape: RoutingProfileQueueReferenceList, location_name: "QueueReferences"))
    DisassociateRoutingProfileQueuesRequest.add_member(:manual_assignment_queue_references, Shapes::ShapeRef.new(shape: RoutingProfileQueueReferenceList, location_name: "ManualAssignmentQueueReferences"))
    DisassociateRoutingProfileQueuesRequest.struct_class = Types::DisassociateRoutingProfileQueuesRequest

    DisassociateSecurityKeyRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DisassociateSecurityKeyRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, required: true, location: "uri", location_name: "AssociationId"))
    DisassociateSecurityKeyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DisassociateSecurityKeyRequest.struct_class = Types::DisassociateSecurityKeyRequest

    DisassociateTrafficDistributionGroupUserRequest.add_member(:traffic_distribution_group_id, Shapes::ShapeRef.new(shape: TrafficDistributionGroupIdOrArn, required: true, location: "uri", location_name: "TrafficDistributionGroupId"))
    DisassociateTrafficDistributionGroupUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "querystring", location_name: "UserId"))
    DisassociateTrafficDistributionGroupUserRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "querystring", location_name: "InstanceId"))
    DisassociateTrafficDistributionGroupUserRequest.struct_class = Types::DisassociateTrafficDistributionGroupUserRequest

    DisassociateTrafficDistributionGroupUserResponse.struct_class = Types::DisassociateTrafficDistributionGroupUserResponse

    DisassociateUserProficienciesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DisassociateUserProficienciesRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "UserId"))
    DisassociateUserProficienciesRequest.add_member(:user_proficiencies, Shapes::ShapeRef.new(shape: UserProficiencyDisassociateList, required: true, location_name: "UserProficiencies"))
    DisassociateUserProficienciesRequest.struct_class = Types::DisassociateUserProficienciesRequest

    DisconnectDetails.add_member(:potential_disconnect_issue, Shapes::ShapeRef.new(shape: PotentialDisconnectIssue, location_name: "PotentialDisconnectIssue"))
    DisconnectDetails.struct_class = Types::DisconnectDetails

    DisconnectReason.add_member(:code, Shapes::ShapeRef.new(shape: DisconnectReasonCode, location_name: "Code"))
    DisconnectReason.struct_class = Types::DisconnectReason

    DismissUserContactRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "UserId"))
    DismissUserContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DismissUserContactRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    DismissUserContactRequest.struct_class = Types::DismissUserContactRequest

    DismissUserContactResponse.struct_class = Types::DismissUserContactResponse

    Distribution.add_member(:region, Shapes::ShapeRef.new(shape: AwsRegion, required: true, location_name: "Region"))
    Distribution.add_member(:percentage, Shapes::ShapeRef.new(shape: Percentage, required: true, location_name: "Percentage"))
    Distribution.struct_class = Types::Distribution

    DistributionList.member = Shapes::ShapeRef.new(shape: Distribution)

    DownloadUrlMetadata.add_member(:url, Shapes::ShapeRef.new(shape: MetadataUrl, location_name: "Url"))
    DownloadUrlMetadata.add_member(:url_expiry, Shapes::ShapeRef.new(shape: ISO8601Datetime, location_name: "UrlExpiry"))
    DownloadUrlMetadata.struct_class = Types::DownloadUrlMetadata

    DuplicateResourceException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    DuplicateResourceException.struct_class = Types::DuplicateResourceException

    EffectiveHoursOfOperationList.member = Shapes::ShapeRef.new(shape: EffectiveHoursOfOperations)

    EffectiveHoursOfOperations.add_member(:date, Shapes::ShapeRef.new(shape: HoursOfOperationOverrideYearMonthDayDateFormat, location_name: "Date"))
    EffectiveHoursOfOperations.add_member(:operational_hours, Shapes::ShapeRef.new(shape: OperationalHours, location_name: "OperationalHours"))
    EffectiveHoursOfOperations.struct_class = Types::EffectiveHoursOfOperations

    EmailAddressInfo.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location_name: "EmailAddress"))
    EmailAddressInfo.add_member(:display_name, Shapes::ShapeRef.new(shape: EmailAddressDisplayName, location_name: "DisplayName"))
    EmailAddressInfo.struct_class = Types::EmailAddressInfo

    EmailAddressList.member = Shapes::ShapeRef.new(shape: EmailAddressMetadata)

    EmailAddressMetadata.add_member(:email_address_id, Shapes::ShapeRef.new(shape: EmailAddressId, location_name: "EmailAddressId"))
    EmailAddressMetadata.add_member(:email_address_arn, Shapes::ShapeRef.new(shape: EmailAddressArn, location_name: "EmailAddressArn"))
    EmailAddressMetadata.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "EmailAddress"))
    EmailAddressMetadata.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    EmailAddressMetadata.add_member(:display_name, Shapes::ShapeRef.new(shape: EmailAddressDisplayName, location_name: "DisplayName"))
    EmailAddressMetadata.add_member(:alias_configurations, Shapes::ShapeRef.new(shape: AliasConfigurationList, location_name: "AliasConfigurations"))
    EmailAddressMetadata.struct_class = Types::EmailAddressMetadata

    EmailAddressRecipientList.member = Shapes::ShapeRef.new(shape: EmailAddressInfo)

    EmailAddressSearchConditionList.member = Shapes::ShapeRef.new(shape: EmailAddressSearchCriteria)

    EmailAddressSearchCriteria.add_member(:or_conditions, Shapes::ShapeRef.new(shape: EmailAddressSearchConditionList, location_name: "OrConditions"))
    EmailAddressSearchCriteria.add_member(:and_conditions, Shapes::ShapeRef.new(shape: EmailAddressSearchConditionList, location_name: "AndConditions"))
    EmailAddressSearchCriteria.add_member(:string_condition, Shapes::ShapeRef.new(shape: StringCondition, location_name: "StringCondition"))
    EmailAddressSearchCriteria.struct_class = Types::EmailAddressSearchCriteria

    EmailAddressSearchFilter.add_member(:tag_filter, Shapes::ShapeRef.new(shape: ControlPlaneTagFilter, location_name: "TagFilter"))
    EmailAddressSearchFilter.struct_class = Types::EmailAddressSearchFilter

    EmailAttachment.add_member(:file_name, Shapes::ShapeRef.new(shape: FileName, required: true, location_name: "FileName"))
    EmailAttachment.add_member(:s3_url, Shapes::ShapeRef.new(shape: PreSignedAttachmentUrl, required: true, location_name: "S3Url"))
    EmailAttachment.struct_class = Types::EmailAttachment

    EmailAttachments.member = Shapes::ShapeRef.new(shape: EmailAttachment)

    EmailHeaders.key = Shapes::ShapeRef.new(shape: EmailHeaderType)
    EmailHeaders.value = Shapes::ShapeRef.new(shape: EmailHeaderValue)

    EmailMessageReference.add_member(:name, Shapes::ShapeRef.new(shape: ReferenceKey, location_name: "Name"))
    EmailMessageReference.add_member(:arn, Shapes::ShapeRef.new(shape: ReferenceArn, location_name: "Arn"))
    EmailMessageReference.struct_class = Types::EmailMessageReference

    EmailRecipient.add_member(:address, Shapes::ShapeRef.new(shape: EndpointAddress, location_name: "Address"))
    EmailRecipient.add_member(:display_name, Shapes::ShapeRef.new(shape: EndpointDisplayName, location_name: "DisplayName"))
    EmailRecipient.struct_class = Types::EmailRecipient

    EmailRecipientsList.member = Shapes::ShapeRef.new(shape: EmailRecipient)

    EmailReference.add_member(:name, Shapes::ShapeRef.new(shape: ReferenceKey, location_name: "Name"))
    EmailReference.add_member(:value, Shapes::ShapeRef.new(shape: ReferenceValue, location_name: "Value"))
    EmailReference.struct_class = Types::EmailReference

    EmptyFieldValue.struct_class = Types::EmptyFieldValue

    EncryptionConfig.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, required: true, location_name: "EncryptionType"))
    EncryptionConfig.add_member(:key_id, Shapes::ShapeRef.new(shape: KeyId, required: true, location_name: "KeyId"))
    EncryptionConfig.struct_class = Types::EncryptionConfig

    EndAssociatedTasksActionDefinition.struct_class = Types::EndAssociatedTasksActionDefinition

    Endpoint.add_member(:type, Shapes::ShapeRef.new(shape: EndpointType, location_name: "Type"))
    Endpoint.add_member(:address, Shapes::ShapeRef.new(shape: EndpointAddress, location_name: "Address"))
    Endpoint.struct_class = Types::Endpoint

    EndpointInfo.add_member(:type, Shapes::ShapeRef.new(shape: EndpointType, location_name: "Type"))
    EndpointInfo.add_member(:address, Shapes::ShapeRef.new(shape: EndpointAddress, location_name: "Address"))
    EndpointInfo.add_member(:display_name, Shapes::ShapeRef.new(shape: EndpointDisplayName, location_name: "DisplayName"))
    EndpointInfo.struct_class = Types::EndpointInfo

    ErrorResult.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    ErrorResult.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    ErrorResult.struct_class = Types::ErrorResult

    ErrorResults.member = Shapes::ShapeRef.new(shape: ErrorResult)

    Evaluation.add_member(:evaluation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "EvaluationId"))
    Evaluation.add_member(:evaluation_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "EvaluationArn"))
    Evaluation.add_member(:metadata, Shapes::ShapeRef.new(shape: EvaluationMetadata, required: true, location_name: "Metadata"))
    Evaluation.add_member(:answers, Shapes::ShapeRef.new(shape: EvaluationAnswersOutputMap, required: true, location_name: "Answers"))
    Evaluation.add_member(:notes, Shapes::ShapeRef.new(shape: EvaluationNotesMap, required: true, location_name: "Notes"))
    Evaluation.add_member(:status, Shapes::ShapeRef.new(shape: EvaluationStatus, required: true, location_name: "Status"))
    Evaluation.add_member(:scores, Shapes::ShapeRef.new(shape: EvaluationScoresMap, location_name: "Scores"))
    Evaluation.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTime"))
    Evaluation.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    Evaluation.add_member(:evaluation_type, Shapes::ShapeRef.new(shape: EvaluationType, location_name: "EvaluationType"))
    Evaluation.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    Evaluation.struct_class = Types::Evaluation

    EvaluationAcknowledgement.add_member(:acknowledged_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "AcknowledgedTime"))
    EvaluationAcknowledgement.add_member(:acknowledged_by, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "AcknowledgedBy"))
    EvaluationAcknowledgement.add_member(:acknowledger_comment, Shapes::ShapeRef.new(shape: EvaluationAcknowledgerCommentString, location_name: "AcknowledgerComment"))
    EvaluationAcknowledgement.struct_class = Types::EvaluationAcknowledgement

    EvaluationAcknowledgementSummary.add_member(:acknowledged_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "AcknowledgedTime"))
    EvaluationAcknowledgementSummary.add_member(:acknowledged_by, Shapes::ShapeRef.new(shape: ARN, location_name: "AcknowledgedBy"))
    EvaluationAcknowledgementSummary.add_member(:acknowledger_comment, Shapes::ShapeRef.new(shape: EvaluationAcknowledgerCommentString, location_name: "AcknowledgerComment"))
    EvaluationAcknowledgementSummary.struct_class = Types::EvaluationAcknowledgementSummary

    EvaluationAnswerData.add_member(:string_value, Shapes::ShapeRef.new(shape: EvaluationAnswerDataStringValue, location_name: "StringValue"))
    EvaluationAnswerData.add_member(:numeric_value, Shapes::ShapeRef.new(shape: EvaluationAnswerDataNumericValue, location_name: "NumericValue"))
    EvaluationAnswerData.add_member(:not_applicable, Shapes::ShapeRef.new(shape: Boolean, location_name: "NotApplicable"))
    EvaluationAnswerData.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluationAnswerData.add_member_subclass(:string_value, Types::EvaluationAnswerData::StringValue)
    EvaluationAnswerData.add_member_subclass(:numeric_value, Types::EvaluationAnswerData::NumericValue)
    EvaluationAnswerData.add_member_subclass(:not_applicable, Types::EvaluationAnswerData::NotApplicable)
    EvaluationAnswerData.add_member_subclass(:unknown, Types::EvaluationAnswerData::Unknown)
    EvaluationAnswerData.struct_class = Types::EvaluationAnswerData

    EvaluationAnswerInput.add_member(:value, Shapes::ShapeRef.new(shape: EvaluationAnswerData, location_name: "Value"))
    EvaluationAnswerInput.struct_class = Types::EvaluationAnswerInput

    EvaluationAnswerOutput.add_member(:value, Shapes::ShapeRef.new(shape: EvaluationAnswerData, location_name: "Value"))
    EvaluationAnswerOutput.add_member(:system_suggested_value, Shapes::ShapeRef.new(shape: EvaluationAnswerData, location_name: "SystemSuggestedValue"))
    EvaluationAnswerOutput.add_member(:suggested_answers, Shapes::ShapeRef.new(shape: EvaluationSuggestedAnswersList, location_name: "SuggestedAnswers"))
    EvaluationAnswerOutput.struct_class = Types::EvaluationAnswerOutput

    EvaluationAnswersInputMap.key = Shapes::ShapeRef.new(shape: ResourceId)
    EvaluationAnswersInputMap.value = Shapes::ShapeRef.new(shape: EvaluationAnswerInput)

    EvaluationAnswersOutputMap.key = Shapes::ShapeRef.new(shape: ResourceId)
    EvaluationAnswersOutputMap.value = Shapes::ShapeRef.new(shape: EvaluationAnswerOutput)

    EvaluationAutomationRuleCategory.add_member(:category, Shapes::ShapeRef.new(shape: QuestionRuleCategoryAutomationLabel, required: true, location_name: "Category"))
    EvaluationAutomationRuleCategory.add_member(:condition, Shapes::ShapeRef.new(shape: QuestionRuleCategoryAutomationCondition, required: true, location_name: "Condition"))
    EvaluationAutomationRuleCategory.add_member(:points_of_interest, Shapes::ShapeRef.new(shape: EvaluationTranscriptPointsOfInterest, location_name: "PointsOfInterest"))
    EvaluationAutomationRuleCategory.struct_class = Types::EvaluationAutomationRuleCategory

    EvaluationAutomationRuleCategoryList.member = Shapes::ShapeRef.new(shape: EvaluationAutomationRuleCategory)

    EvaluationContactLensAnswerAnalysisDetails.add_member(:matched_rule_categories, Shapes::ShapeRef.new(shape: EvaluationAutomationRuleCategoryList, location_name: "MatchedRuleCategories"))
    EvaluationContactLensAnswerAnalysisDetails.struct_class = Types::EvaluationContactLensAnswerAnalysisDetails

    EvaluationForm.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "EvaluationFormId"))
    EvaluationForm.add_member(:evaluation_form_version, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "EvaluationFormVersion"))
    EvaluationForm.add_member(:locked, Shapes::ShapeRef.new(shape: EvaluationFormVersionIsLocked, required: true, location_name: "Locked"))
    EvaluationForm.add_member(:evaluation_form_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "EvaluationFormArn"))
    EvaluationForm.add_member(:title, Shapes::ShapeRef.new(shape: EvaluationFormTitle, required: true, location_name: "Title"))
    EvaluationForm.add_member(:description, Shapes::ShapeRef.new(shape: EvaluationFormDescription, location_name: "Description"))
    EvaluationForm.add_member(:status, Shapes::ShapeRef.new(shape: EvaluationFormVersionStatus, required: true, location_name: "Status"))
    EvaluationForm.add_member(:items, Shapes::ShapeRef.new(shape: EvaluationFormItemsList, required: true, location_name: "Items"))
    EvaluationForm.add_member(:scoring_strategy, Shapes::ShapeRef.new(shape: EvaluationFormScoringStrategy, location_name: "ScoringStrategy"))
    EvaluationForm.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTime"))
    EvaluationForm.add_member(:created_by, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "CreatedBy"))
    EvaluationForm.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    EvaluationForm.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "LastModifiedBy"))
    EvaluationForm.add_member(:auto_evaluation_configuration, Shapes::ShapeRef.new(shape: EvaluationFormAutoEvaluationConfiguration, location_name: "AutoEvaluationConfiguration"))
    EvaluationForm.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    EvaluationForm.struct_class = Types::EvaluationForm

    EvaluationFormAutoEvaluationConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "Enabled"))
    EvaluationFormAutoEvaluationConfiguration.struct_class = Types::EvaluationFormAutoEvaluationConfiguration

    EvaluationFormContent.add_member(:evaluation_form_version, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "EvaluationFormVersion"))
    EvaluationFormContent.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "EvaluationFormId"))
    EvaluationFormContent.add_member(:evaluation_form_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "EvaluationFormArn"))
    EvaluationFormContent.add_member(:title, Shapes::ShapeRef.new(shape: EvaluationFormTitle, required: true, location_name: "Title"))
    EvaluationFormContent.add_member(:description, Shapes::ShapeRef.new(shape: EvaluationFormDescription, location_name: "Description"))
    EvaluationFormContent.add_member(:items, Shapes::ShapeRef.new(shape: EvaluationFormItemsList, required: true, location_name: "Items"))
    EvaluationFormContent.add_member(:scoring_strategy, Shapes::ShapeRef.new(shape: EvaluationFormScoringStrategy, location_name: "ScoringStrategy"))
    EvaluationFormContent.add_member(:auto_evaluation_configuration, Shapes::ShapeRef.new(shape: EvaluationFormAutoEvaluationConfiguration, location_name: "AutoEvaluationConfiguration"))
    EvaluationFormContent.struct_class = Types::EvaluationFormContent

    EvaluationFormItem.add_member(:section, Shapes::ShapeRef.new(shape: EvaluationFormSection, location_name: "Section"))
    EvaluationFormItem.add_member(:question, Shapes::ShapeRef.new(shape: EvaluationFormQuestion, location_name: "Question"))
    EvaluationFormItem.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluationFormItem.add_member_subclass(:section, Types::EvaluationFormItem::Section)
    EvaluationFormItem.add_member_subclass(:question, Types::EvaluationFormItem::Question)
    EvaluationFormItem.add_member_subclass(:unknown, Types::EvaluationFormItem::Unknown)
    EvaluationFormItem.struct_class = Types::EvaluationFormItem

    EvaluationFormItemEnablementCondition.add_member(:operands, Shapes::ShapeRef.new(shape: EvaluationFormItemEnablementConditionOperandList, required: true, location_name: "Operands"))
    EvaluationFormItemEnablementCondition.add_member(:operator, Shapes::ShapeRef.new(shape: EvaluationFormItemEnablementOperator, location_name: "Operator"))
    EvaluationFormItemEnablementCondition.struct_class = Types::EvaluationFormItemEnablementCondition

    EvaluationFormItemEnablementConditionOperand.add_member(:expression, Shapes::ShapeRef.new(shape: EvaluationFormItemEnablementExpression, location_name: "Expression"))
    EvaluationFormItemEnablementConditionOperand.add_member(:condition, Shapes::ShapeRef.new(shape: EvaluationFormItemEnablementCondition, location_name: "Condition"))
    EvaluationFormItemEnablementConditionOperand.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluationFormItemEnablementConditionOperand.add_member_subclass(:expression, Types::EvaluationFormItemEnablementConditionOperand::Expression)
    EvaluationFormItemEnablementConditionOperand.add_member_subclass(:condition, Types::EvaluationFormItemEnablementConditionOperand::Condition)
    EvaluationFormItemEnablementConditionOperand.add_member_subclass(:unknown, Types::EvaluationFormItemEnablementConditionOperand::Unknown)
    EvaluationFormItemEnablementConditionOperand.struct_class = Types::EvaluationFormItemEnablementConditionOperand

    EvaluationFormItemEnablementConditionOperandList.member = Shapes::ShapeRef.new(shape: EvaluationFormItemEnablementConditionOperand)

    EvaluationFormItemEnablementConfiguration.add_member(:condition, Shapes::ShapeRef.new(shape: EvaluationFormItemEnablementCondition, required: true, location_name: "Condition"))
    EvaluationFormItemEnablementConfiguration.add_member(:action, Shapes::ShapeRef.new(shape: EvaluationFormItemEnablementAction, required: true, location_name: "Action"))
    EvaluationFormItemEnablementConfiguration.add_member(:default_action, Shapes::ShapeRef.new(shape: EvaluationFormItemEnablementAction, location_name: "DefaultAction"))
    EvaluationFormItemEnablementConfiguration.struct_class = Types::EvaluationFormItemEnablementConfiguration

    EvaluationFormItemEnablementExpression.add_member(:source, Shapes::ShapeRef.new(shape: EvaluationFormItemEnablementSource, required: true, location_name: "Source"))
    EvaluationFormItemEnablementExpression.add_member(:values, Shapes::ShapeRef.new(shape: EvaluationFormItemEnablementSourceValueList, required: true, location_name: "Values"))
    EvaluationFormItemEnablementExpression.add_member(:comparator, Shapes::ShapeRef.new(shape: EvaluationFormItemSourceValuesComparator, required: true, location_name: "Comparator"))
    EvaluationFormItemEnablementExpression.struct_class = Types::EvaluationFormItemEnablementExpression

    EvaluationFormItemEnablementSource.add_member(:type, Shapes::ShapeRef.new(shape: EvaluationFormItemEnablementSourceType, required: true, location_name: "Type"))
    EvaluationFormItemEnablementSource.add_member(:ref_id, Shapes::ShapeRef.new(shape: ReferenceId, location_name: "RefId"))
    EvaluationFormItemEnablementSource.struct_class = Types::EvaluationFormItemEnablementSource

    EvaluationFormItemEnablementSourceValue.add_member(:type, Shapes::ShapeRef.new(shape: EvaluationFormItemEnablementSourceValueType, required: true, location_name: "Type"))
    EvaluationFormItemEnablementSourceValue.add_member(:ref_id, Shapes::ShapeRef.new(shape: ReferenceId, location_name: "RefId"))
    EvaluationFormItemEnablementSourceValue.struct_class = Types::EvaluationFormItemEnablementSourceValue

    EvaluationFormItemEnablementSourceValueList.member = Shapes::ShapeRef.new(shape: EvaluationFormItemEnablementSourceValue)

    EvaluationFormItemsList.member = Shapes::ShapeRef.new(shape: EvaluationFormItem)

    EvaluationFormNumericQuestionAutomation.add_member(:property_value, Shapes::ShapeRef.new(shape: NumericQuestionPropertyValueAutomation, location_name: "PropertyValue"))
    EvaluationFormNumericQuestionAutomation.add_member(:answer_source, Shapes::ShapeRef.new(shape: EvaluationFormQuestionAutomationAnswerSource, location_name: "AnswerSource"))
    EvaluationFormNumericQuestionAutomation.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluationFormNumericQuestionAutomation.add_member_subclass(:property_value, Types::EvaluationFormNumericQuestionAutomation::PropertyValue)
    EvaluationFormNumericQuestionAutomation.add_member_subclass(:answer_source, Types::EvaluationFormNumericQuestionAutomation::AnswerSource)
    EvaluationFormNumericQuestionAutomation.add_member_subclass(:unknown, Types::EvaluationFormNumericQuestionAutomation::Unknown)
    EvaluationFormNumericQuestionAutomation.struct_class = Types::EvaluationFormNumericQuestionAutomation

    EvaluationFormNumericQuestionOption.add_member(:min_value, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "MinValue"))
    EvaluationFormNumericQuestionOption.add_member(:max_value, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "MaxValue"))
    EvaluationFormNumericQuestionOption.add_member(:score, Shapes::ShapeRef.new(shape: EvaluationFormQuestionAnswerScore, location_name: "Score"))
    EvaluationFormNumericQuestionOption.add_member(:automatic_fail, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutomaticFail"))
    EvaluationFormNumericQuestionOption.add_member(:automatic_fail_configuration, Shapes::ShapeRef.new(shape: AutomaticFailConfiguration, location_name: "AutomaticFailConfiguration"))
    EvaluationFormNumericQuestionOption.struct_class = Types::EvaluationFormNumericQuestionOption

    EvaluationFormNumericQuestionOptionList.member = Shapes::ShapeRef.new(shape: EvaluationFormNumericQuestionOption)

    EvaluationFormNumericQuestionProperties.add_member(:min_value, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "MinValue"))
    EvaluationFormNumericQuestionProperties.add_member(:max_value, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "MaxValue"))
    EvaluationFormNumericQuestionProperties.add_member(:options, Shapes::ShapeRef.new(shape: EvaluationFormNumericQuestionOptionList, location_name: "Options"))
    EvaluationFormNumericQuestionProperties.add_member(:automation, Shapes::ShapeRef.new(shape: EvaluationFormNumericQuestionAutomation, location_name: "Automation"))
    EvaluationFormNumericQuestionProperties.struct_class = Types::EvaluationFormNumericQuestionProperties

    EvaluationFormQuestion.add_member(:title, Shapes::ShapeRef.new(shape: EvaluationFormQuestionTitle, required: true, location_name: "Title"))
    EvaluationFormQuestion.add_member(:instructions, Shapes::ShapeRef.new(shape: EvaluationFormQuestionInstructions, location_name: "Instructions"))
    EvaluationFormQuestion.add_member(:ref_id, Shapes::ShapeRef.new(shape: ReferenceId, required: true, location_name: "RefId"))
    EvaluationFormQuestion.add_member(:not_applicable_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "NotApplicableEnabled"))
    EvaluationFormQuestion.add_member(:question_type, Shapes::ShapeRef.new(shape: EvaluationFormQuestionType, required: true, location_name: "QuestionType"))
    EvaluationFormQuestion.add_member(:question_type_properties, Shapes::ShapeRef.new(shape: EvaluationFormQuestionTypeProperties, location_name: "QuestionTypeProperties"))
    EvaluationFormQuestion.add_member(:enablement, Shapes::ShapeRef.new(shape: EvaluationFormItemEnablementConfiguration, location_name: "Enablement"))
    EvaluationFormQuestion.add_member(:weight, Shapes::ShapeRef.new(shape: EvaluationFormItemWeight, location_name: "Weight"))
    EvaluationFormQuestion.struct_class = Types::EvaluationFormQuestion

    EvaluationFormQuestionAutomationAnswerSource.add_member(:source_type, Shapes::ShapeRef.new(shape: EvaluationFormQuestionAutomationAnswerSourceType, required: true, location_name: "SourceType"))
    EvaluationFormQuestionAutomationAnswerSource.struct_class = Types::EvaluationFormQuestionAutomationAnswerSource

    EvaluationFormQuestionTypeProperties.add_member(:numeric, Shapes::ShapeRef.new(shape: EvaluationFormNumericQuestionProperties, location_name: "Numeric"))
    EvaluationFormQuestionTypeProperties.add_member(:single_select, Shapes::ShapeRef.new(shape: EvaluationFormSingleSelectQuestionProperties, location_name: "SingleSelect"))
    EvaluationFormQuestionTypeProperties.add_member(:text, Shapes::ShapeRef.new(shape: EvaluationFormTextQuestionProperties, location_name: "Text"))
    EvaluationFormQuestionTypeProperties.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluationFormQuestionTypeProperties.add_member_subclass(:numeric, Types::EvaluationFormQuestionTypeProperties::Numeric)
    EvaluationFormQuestionTypeProperties.add_member_subclass(:single_select, Types::EvaluationFormQuestionTypeProperties::SingleSelect)
    EvaluationFormQuestionTypeProperties.add_member_subclass(:text, Types::EvaluationFormQuestionTypeProperties::Text)
    EvaluationFormQuestionTypeProperties.add_member_subclass(:unknown, Types::EvaluationFormQuestionTypeProperties::Unknown)
    EvaluationFormQuestionTypeProperties.struct_class = Types::EvaluationFormQuestionTypeProperties

    EvaluationFormScoringStrategy.add_member(:mode, Shapes::ShapeRef.new(shape: EvaluationFormScoringMode, required: true, location_name: "Mode"))
    EvaluationFormScoringStrategy.add_member(:status, Shapes::ShapeRef.new(shape: EvaluationFormScoringStatus, required: true, location_name: "Status"))
    EvaluationFormScoringStrategy.struct_class = Types::EvaluationFormScoringStrategy

    EvaluationFormSearchConditionList.member = Shapes::ShapeRef.new(shape: EvaluationFormSearchCriteria)

    EvaluationFormSearchCriteria.add_member(:or_conditions, Shapes::ShapeRef.new(shape: EvaluationFormSearchConditionList, location_name: "OrConditions"))
    EvaluationFormSearchCriteria.add_member(:and_conditions, Shapes::ShapeRef.new(shape: EvaluationFormSearchConditionList, location_name: "AndConditions"))
    EvaluationFormSearchCriteria.add_member(:string_condition, Shapes::ShapeRef.new(shape: StringCondition, location_name: "StringCondition"))
    EvaluationFormSearchCriteria.add_member(:number_condition, Shapes::ShapeRef.new(shape: NumberCondition, location_name: "NumberCondition"))
    EvaluationFormSearchCriteria.add_member(:boolean_condition, Shapes::ShapeRef.new(shape: BooleanCondition, location_name: "BooleanCondition"))
    EvaluationFormSearchCriteria.add_member(:date_time_condition, Shapes::ShapeRef.new(shape: DateTimeCondition, location_name: "DateTimeCondition"))
    EvaluationFormSearchCriteria.struct_class = Types::EvaluationFormSearchCriteria

    EvaluationFormSearchFilter.add_member(:attribute_filter, Shapes::ShapeRef.new(shape: ControlPlaneAttributeFilter, location_name: "AttributeFilter"))
    EvaluationFormSearchFilter.struct_class = Types::EvaluationFormSearchFilter

    EvaluationFormSearchSummary.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "EvaluationFormId"))
    EvaluationFormSearchSummary.add_member(:evaluation_form_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "EvaluationFormArn"))
    EvaluationFormSearchSummary.add_member(:title, Shapes::ShapeRef.new(shape: EvaluationFormTitle, required: true, location_name: "Title"))
    EvaluationFormSearchSummary.add_member(:status, Shapes::ShapeRef.new(shape: EvaluationFormVersionStatus, required: true, location_name: "Status"))
    EvaluationFormSearchSummary.add_member(:description, Shapes::ShapeRef.new(shape: EvaluationFormDescription, location_name: "Description"))
    EvaluationFormSearchSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTime"))
    EvaluationFormSearchSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "CreatedBy"))
    EvaluationFormSearchSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    EvaluationFormSearchSummary.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "LastModifiedBy"))
    EvaluationFormSearchSummary.add_member(:last_activated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastActivatedTime"))
    EvaluationFormSearchSummary.add_member(:last_activated_by, Shapes::ShapeRef.new(shape: ARN, location_name: "LastActivatedBy"))
    EvaluationFormSearchSummary.add_member(:latest_version, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "LatestVersion", metadata: {"box" => true}))
    EvaluationFormSearchSummary.add_member(:active_version, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "ActiveVersion", metadata: {"box" => true}))
    EvaluationFormSearchSummary.add_member(:auto_evaluation_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoEvaluationEnabled"))
    EvaluationFormSearchSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    EvaluationFormSearchSummary.struct_class = Types::EvaluationFormSearchSummary

    EvaluationFormSearchSummaryList.member = Shapes::ShapeRef.new(shape: EvaluationFormSearchSummary)

    EvaluationFormSection.add_member(:title, Shapes::ShapeRef.new(shape: EvaluationFormSectionTitle, required: true, location_name: "Title"))
    EvaluationFormSection.add_member(:ref_id, Shapes::ShapeRef.new(shape: ReferenceId, required: true, location_name: "RefId"))
    EvaluationFormSection.add_member(:instructions, Shapes::ShapeRef.new(shape: EvaluationFormQuestionInstructions, location_name: "Instructions"))
    EvaluationFormSection.add_member(:items, Shapes::ShapeRef.new(shape: EvaluationFormItemsList, required: true, location_name: "Items"))
    EvaluationFormSection.add_member(:weight, Shapes::ShapeRef.new(shape: EvaluationFormItemWeight, location_name: "Weight"))
    EvaluationFormSection.struct_class = Types::EvaluationFormSection

    EvaluationFormSingleSelectQuestionAutomation.add_member(:options, Shapes::ShapeRef.new(shape: EvaluationFormSingleSelectQuestionAutomationOptionList, location_name: "Options"))
    EvaluationFormSingleSelectQuestionAutomation.add_member(:default_option_ref_id, Shapes::ShapeRef.new(shape: ReferenceId, location_name: "DefaultOptionRefId"))
    EvaluationFormSingleSelectQuestionAutomation.add_member(:answer_source, Shapes::ShapeRef.new(shape: EvaluationFormQuestionAutomationAnswerSource, location_name: "AnswerSource"))
    EvaluationFormSingleSelectQuestionAutomation.struct_class = Types::EvaluationFormSingleSelectQuestionAutomation

    EvaluationFormSingleSelectQuestionAutomationOption.add_member(:rule_category, Shapes::ShapeRef.new(shape: SingleSelectQuestionRuleCategoryAutomation, location_name: "RuleCategory"))
    EvaluationFormSingleSelectQuestionAutomationOption.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluationFormSingleSelectQuestionAutomationOption.add_member_subclass(:rule_category, Types::EvaluationFormSingleSelectQuestionAutomationOption::RuleCategory)
    EvaluationFormSingleSelectQuestionAutomationOption.add_member_subclass(:unknown, Types::EvaluationFormSingleSelectQuestionAutomationOption::Unknown)
    EvaluationFormSingleSelectQuestionAutomationOption.struct_class = Types::EvaluationFormSingleSelectQuestionAutomationOption

    EvaluationFormSingleSelectQuestionAutomationOptionList.member = Shapes::ShapeRef.new(shape: EvaluationFormSingleSelectQuestionAutomationOption)

    EvaluationFormSingleSelectQuestionOption.add_member(:ref_id, Shapes::ShapeRef.new(shape: ReferenceId, required: true, location_name: "RefId"))
    EvaluationFormSingleSelectQuestionOption.add_member(:text, Shapes::ShapeRef.new(shape: EvaluationFormSingleSelectQuestionOptionText, required: true, location_name: "Text"))
    EvaluationFormSingleSelectQuestionOption.add_member(:score, Shapes::ShapeRef.new(shape: EvaluationFormQuestionAnswerScore, location_name: "Score"))
    EvaluationFormSingleSelectQuestionOption.add_member(:automatic_fail, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutomaticFail"))
    EvaluationFormSingleSelectQuestionOption.add_member(:automatic_fail_configuration, Shapes::ShapeRef.new(shape: AutomaticFailConfiguration, location_name: "AutomaticFailConfiguration"))
    EvaluationFormSingleSelectQuestionOption.struct_class = Types::EvaluationFormSingleSelectQuestionOption

    EvaluationFormSingleSelectQuestionOptionList.member = Shapes::ShapeRef.new(shape: EvaluationFormSingleSelectQuestionOption)

    EvaluationFormSingleSelectQuestionProperties.add_member(:options, Shapes::ShapeRef.new(shape: EvaluationFormSingleSelectQuestionOptionList, required: true, location_name: "Options"))
    EvaluationFormSingleSelectQuestionProperties.add_member(:display_as, Shapes::ShapeRef.new(shape: EvaluationFormSingleSelectQuestionDisplayMode, location_name: "DisplayAs"))
    EvaluationFormSingleSelectQuestionProperties.add_member(:automation, Shapes::ShapeRef.new(shape: EvaluationFormSingleSelectQuestionAutomation, location_name: "Automation"))
    EvaluationFormSingleSelectQuestionProperties.struct_class = Types::EvaluationFormSingleSelectQuestionProperties

    EvaluationFormSummary.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "EvaluationFormId"))
    EvaluationFormSummary.add_member(:evaluation_form_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "EvaluationFormArn"))
    EvaluationFormSummary.add_member(:title, Shapes::ShapeRef.new(shape: EvaluationFormTitle, required: true, location_name: "Title"))
    EvaluationFormSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTime"))
    EvaluationFormSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "CreatedBy"))
    EvaluationFormSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    EvaluationFormSummary.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "LastModifiedBy"))
    EvaluationFormSummary.add_member(:last_activated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastActivatedTime"))
    EvaluationFormSummary.add_member(:last_activated_by, Shapes::ShapeRef.new(shape: ARN, location_name: "LastActivatedBy"))
    EvaluationFormSummary.add_member(:latest_version, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "LatestVersion"))
    EvaluationFormSummary.add_member(:active_version, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "ActiveVersion", metadata: {"box" => true}))
    EvaluationFormSummary.struct_class = Types::EvaluationFormSummary

    EvaluationFormSummaryList.member = Shapes::ShapeRef.new(shape: EvaluationFormSummary)

    EvaluationFormTextQuestionAutomation.add_member(:answer_source, Shapes::ShapeRef.new(shape: EvaluationFormQuestionAutomationAnswerSource, location_name: "AnswerSource"))
    EvaluationFormTextQuestionAutomation.struct_class = Types::EvaluationFormTextQuestionAutomation

    EvaluationFormTextQuestionProperties.add_member(:automation, Shapes::ShapeRef.new(shape: EvaluationFormTextQuestionAutomation, location_name: "Automation"))
    EvaluationFormTextQuestionProperties.struct_class = Types::EvaluationFormTextQuestionProperties

    EvaluationFormVersionSummary.add_member(:evaluation_form_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "EvaluationFormArn"))
    EvaluationFormVersionSummary.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "EvaluationFormId"))
    EvaluationFormVersionSummary.add_member(:evaluation_form_version, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "EvaluationFormVersion"))
    EvaluationFormVersionSummary.add_member(:locked, Shapes::ShapeRef.new(shape: EvaluationFormVersionIsLocked, required: true, location_name: "Locked"))
    EvaluationFormVersionSummary.add_member(:status, Shapes::ShapeRef.new(shape: EvaluationFormVersionStatus, required: true, location_name: "Status"))
    EvaluationFormVersionSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTime"))
    EvaluationFormVersionSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "CreatedBy"))
    EvaluationFormVersionSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    EvaluationFormVersionSummary.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "LastModifiedBy"))
    EvaluationFormVersionSummary.struct_class = Types::EvaluationFormVersionSummary

    EvaluationFormVersionSummaryList.member = Shapes::ShapeRef.new(shape: EvaluationFormVersionSummary)

    EvaluationGenAIAnswerAnalysisDetails.add_member(:justification, Shapes::ShapeRef.new(shape: EvaluationSuggestedAnswerJustification, location_name: "Justification"))
    EvaluationGenAIAnswerAnalysisDetails.add_member(:points_of_interest, Shapes::ShapeRef.new(shape: EvaluationTranscriptPointsOfInterest, location_name: "PointsOfInterest"))
    EvaluationGenAIAnswerAnalysisDetails.struct_class = Types::EvaluationGenAIAnswerAnalysisDetails

    EvaluationMetadata.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    EvaluationMetadata.add_member(:evaluator_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "EvaluatorArn"))
    EvaluationMetadata.add_member(:contact_agent_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ContactAgentId"))
    EvaluationMetadata.add_member(:calibration_session_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "CalibrationSessionId"))
    EvaluationMetadata.add_member(:score, Shapes::ShapeRef.new(shape: EvaluationScore, location_name: "Score"))
    EvaluationMetadata.add_member(:auto_evaluation, Shapes::ShapeRef.new(shape: AutoEvaluationDetails, location_name: "AutoEvaluation"))
    EvaluationMetadata.add_member(:acknowledgement, Shapes::ShapeRef.new(shape: EvaluationAcknowledgement, location_name: "Acknowledgement"))
    EvaluationMetadata.struct_class = Types::EvaluationMetadata

    EvaluationNote.add_member(:value, Shapes::ShapeRef.new(shape: EvaluationNoteString, location_name: "Value"))
    EvaluationNote.struct_class = Types::EvaluationNote

    EvaluationNotesMap.key = Shapes::ShapeRef.new(shape: ResourceId)
    EvaluationNotesMap.value = Shapes::ShapeRef.new(shape: EvaluationNote)

    EvaluationQuestionAnswerAnalysisDetails.add_member(:gen_ai, Shapes::ShapeRef.new(shape: EvaluationGenAIAnswerAnalysisDetails, location_name: "GenAI"))
    EvaluationQuestionAnswerAnalysisDetails.add_member(:contact_lens, Shapes::ShapeRef.new(shape: EvaluationContactLensAnswerAnalysisDetails, location_name: "ContactLens"))
    EvaluationQuestionAnswerAnalysisDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluationQuestionAnswerAnalysisDetails.add_member_subclass(:gen_ai, Types::EvaluationQuestionAnswerAnalysisDetails::GenAi)
    EvaluationQuestionAnswerAnalysisDetails.add_member_subclass(:contact_lens, Types::EvaluationQuestionAnswerAnalysisDetails::ContactLens)
    EvaluationQuestionAnswerAnalysisDetails.add_member_subclass(:unknown, Types::EvaluationQuestionAnswerAnalysisDetails::Unknown)
    EvaluationQuestionAnswerAnalysisDetails.struct_class = Types::EvaluationQuestionAnswerAnalysisDetails

    EvaluationQuestionInputDetails.add_member(:transcript_type, Shapes::ShapeRef.new(shape: EvaluationTranscriptType, location_name: "TranscriptType"))
    EvaluationQuestionInputDetails.struct_class = Types::EvaluationQuestionInputDetails

    EvaluationScore.add_member(:percentage, Shapes::ShapeRef.new(shape: EvaluationScorePercentage, location_name: "Percentage"))
    EvaluationScore.add_member(:not_applicable, Shapes::ShapeRef.new(shape: Boolean, location_name: "NotApplicable"))
    EvaluationScore.add_member(:automatic_fail, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutomaticFail"))
    EvaluationScore.struct_class = Types::EvaluationScore

    EvaluationScoresMap.key = Shapes::ShapeRef.new(shape: ResourceId)
    EvaluationScoresMap.value = Shapes::ShapeRef.new(shape: EvaluationScore)

    EvaluationSearchConditionList.member = Shapes::ShapeRef.new(shape: EvaluationSearchCriteria)

    EvaluationSearchCriteria.add_member(:or_conditions, Shapes::ShapeRef.new(shape: EvaluationSearchConditionList, location_name: "OrConditions"))
    EvaluationSearchCriteria.add_member(:and_conditions, Shapes::ShapeRef.new(shape: EvaluationSearchConditionList, location_name: "AndConditions"))
    EvaluationSearchCriteria.add_member(:string_condition, Shapes::ShapeRef.new(shape: StringCondition, location_name: "StringCondition"))
    EvaluationSearchCriteria.add_member(:number_condition, Shapes::ShapeRef.new(shape: NumberCondition, location_name: "NumberCondition"))
    EvaluationSearchCriteria.add_member(:boolean_condition, Shapes::ShapeRef.new(shape: BooleanCondition, location_name: "BooleanCondition"))
    EvaluationSearchCriteria.add_member(:date_time_condition, Shapes::ShapeRef.new(shape: DateTimeCondition, location_name: "DateTimeCondition"))
    EvaluationSearchCriteria.add_member(:decimal_condition, Shapes::ShapeRef.new(shape: DecimalCondition, location_name: "DecimalCondition"))
    EvaluationSearchCriteria.struct_class = Types::EvaluationSearchCriteria

    EvaluationSearchFilter.add_member(:attribute_filter, Shapes::ShapeRef.new(shape: ControlPlaneAttributeFilter, location_name: "AttributeFilter"))
    EvaluationSearchFilter.struct_class = Types::EvaluationSearchFilter

    EvaluationSearchMetadata.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    EvaluationSearchMetadata.add_member(:evaluator_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "EvaluatorArn"))
    EvaluationSearchMetadata.add_member(:contact_agent_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ContactAgentId"))
    EvaluationSearchMetadata.add_member(:calibration_session_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "CalibrationSessionId"))
    EvaluationSearchMetadata.add_member(:score_percentage, Shapes::ShapeRef.new(shape: EvaluationScorePercentage, location_name: "ScorePercentage"))
    EvaluationSearchMetadata.add_member(:score_automatic_fail, Shapes::ShapeRef.new(shape: Boolean, location_name: "ScoreAutomaticFail"))
    EvaluationSearchMetadata.add_member(:score_not_applicable, Shapes::ShapeRef.new(shape: Boolean, location_name: "ScoreNotApplicable"))
    EvaluationSearchMetadata.add_member(:auto_evaluation_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoEvaluationEnabled"))
    EvaluationSearchMetadata.add_member(:auto_evaluation_status, Shapes::ShapeRef.new(shape: AutoEvaluationStatus, location_name: "AutoEvaluationStatus"))
    EvaluationSearchMetadata.add_member(:acknowledged_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "AcknowledgedTime"))
    EvaluationSearchMetadata.add_member(:acknowledged_by, Shapes::ShapeRef.new(shape: ARN, location_name: "AcknowledgedBy"))
    EvaluationSearchMetadata.add_member(:acknowledger_comment, Shapes::ShapeRef.new(shape: EvaluationAcknowledgerCommentString, location_name: "AcknowledgerComment"))
    EvaluationSearchMetadata.struct_class = Types::EvaluationSearchMetadata

    EvaluationSearchSummary.add_member(:evaluation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "EvaluationId"))
    EvaluationSearchSummary.add_member(:evaluation_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "EvaluationArn"))
    EvaluationSearchSummary.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "EvaluationFormId"))
    EvaluationSearchSummary.add_member(:evaluation_form_version, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "EvaluationFormVersion", metadata: {"box" => true}))
    EvaluationSearchSummary.add_member(:metadata, Shapes::ShapeRef.new(shape: EvaluationSearchMetadata, required: true, location_name: "Metadata"))
    EvaluationSearchSummary.add_member(:status, Shapes::ShapeRef.new(shape: EvaluationStatus, required: true, location_name: "Status"))
    EvaluationSearchSummary.add_member(:evaluation_type, Shapes::ShapeRef.new(shape: EvaluationType, location_name: "EvaluationType"))
    EvaluationSearchSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTime"))
    EvaluationSearchSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    EvaluationSearchSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    EvaluationSearchSummary.struct_class = Types::EvaluationSearchSummary

    EvaluationSearchSummaryList.member = Shapes::ShapeRef.new(shape: EvaluationSearchSummary)

    EvaluationSuggestedAnswer.add_member(:value, Shapes::ShapeRef.new(shape: EvaluationAnswerData, location_name: "Value"))
    EvaluationSuggestedAnswer.add_member(:status, Shapes::ShapeRef.new(shape: EvaluationSuggestedAnswerStatus, required: true, location_name: "Status"))
    EvaluationSuggestedAnswer.add_member(:input, Shapes::ShapeRef.new(shape: EvaluationQuestionInputDetails, location_name: "Input"))
    EvaluationSuggestedAnswer.add_member(:analysis_type, Shapes::ShapeRef.new(shape: EvaluationQuestionAnswerAnalysisType, required: true, location_name: "AnalysisType"))
    EvaluationSuggestedAnswer.add_member(:analysis_details, Shapes::ShapeRef.new(shape: EvaluationQuestionAnswerAnalysisDetails, location_name: "AnalysisDetails"))
    EvaluationSuggestedAnswer.struct_class = Types::EvaluationSuggestedAnswer

    EvaluationSuggestedAnswerTranscriptMillisecondOffsets.add_member(:begin_offset_millis, Shapes::ShapeRef.new(shape: EvaluationSuggestedAnswerTranscriptMillisOffset, required: true, location_name: "BeginOffsetMillis"))
    EvaluationSuggestedAnswerTranscriptMillisecondOffsets.struct_class = Types::EvaluationSuggestedAnswerTranscriptMillisecondOffsets

    EvaluationSuggestedAnswersList.member = Shapes::ShapeRef.new(shape: EvaluationSuggestedAnswer)

    EvaluationSummary.add_member(:evaluation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "EvaluationId"))
    EvaluationSummary.add_member(:evaluation_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "EvaluationArn"))
    EvaluationSummary.add_member(:evaluation_form_title, Shapes::ShapeRef.new(shape: EvaluationFormTitle, required: true, location_name: "EvaluationFormTitle"))
    EvaluationSummary.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "EvaluationFormId"))
    EvaluationSummary.add_member(:calibration_session_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "CalibrationSessionId"))
    EvaluationSummary.add_member(:status, Shapes::ShapeRef.new(shape: EvaluationStatus, required: true, location_name: "Status"))
    EvaluationSummary.add_member(:auto_evaluation_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoEvaluationEnabled"))
    EvaluationSummary.add_member(:auto_evaluation_status, Shapes::ShapeRef.new(shape: AutoEvaluationStatus, location_name: "AutoEvaluationStatus"))
    EvaluationSummary.add_member(:evaluator_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "EvaluatorArn"))
    EvaluationSummary.add_member(:score, Shapes::ShapeRef.new(shape: EvaluationScore, location_name: "Score"))
    EvaluationSummary.add_member(:acknowledgement, Shapes::ShapeRef.new(shape: EvaluationAcknowledgementSummary, location_name: "Acknowledgement"))
    EvaluationSummary.add_member(:evaluation_type, Shapes::ShapeRef.new(shape: EvaluationType, location_name: "EvaluationType"))
    EvaluationSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTime"))
    EvaluationSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    EvaluationSummary.struct_class = Types::EvaluationSummary

    EvaluationSummaryList.member = Shapes::ShapeRef.new(shape: EvaluationSummary)

    EvaluationTranscriptPointOfInterest.add_member(:millisecond_offsets, Shapes::ShapeRef.new(shape: EvaluationSuggestedAnswerTranscriptMillisecondOffsets, location_name: "MillisecondOffsets"))
    EvaluationTranscriptPointOfInterest.add_member(:transcript_segment, Shapes::ShapeRef.new(shape: EvaluationSuggestedAnswerTranscriptSegment, location_name: "TranscriptSegment"))
    EvaluationTranscriptPointOfInterest.struct_class = Types::EvaluationTranscriptPointOfInterest

    EvaluationTranscriptPointsOfInterest.member = Shapes::ShapeRef.new(shape: EvaluationTranscriptPointOfInterest)

    EvaluatorUserUnion.add_member(:connect_user_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ConnectUserArn"))
    EvaluatorUserUnion.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluatorUserUnion.add_member_subclass(:connect_user_arn, Types::EvaluatorUserUnion::ConnectUserArn)
    EvaluatorUserUnion.add_member_subclass(:unknown, Types::EvaluatorUserUnion::Unknown)
    EvaluatorUserUnion.struct_class = Types::EvaluatorUserUnion

    EventBridgeActionDefinition.add_member(:name, Shapes::ShapeRef.new(shape: EventBridgeActionName, required: true, location_name: "Name"))
    EventBridgeActionDefinition.struct_class = Types::EventBridgeActionDefinition

    Expiry.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: "DurationInSeconds"))
    Expiry.add_member(:expiry_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "ExpiryTimestamp"))
    Expiry.struct_class = Types::Expiry

    Expression.add_member(:attribute_condition, Shapes::ShapeRef.new(shape: AttributeCondition, location_name: "AttributeCondition"))
    Expression.add_member(:and_expression, Shapes::ShapeRef.new(shape: Expressions, location_name: "AndExpression"))
    Expression.add_member(:or_expression, Shapes::ShapeRef.new(shape: Expressions, location_name: "OrExpression"))
    Expression.add_member(:not_attribute_condition, Shapes::ShapeRef.new(shape: AttributeCondition, location_name: "NotAttributeCondition"))
    Expression.struct_class = Types::Expression

    Expressions.member = Shapes::ShapeRef.new(shape: Expression)

    ExternalInvocationConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    ExternalInvocationConfiguration.struct_class = Types::ExternalInvocationConfiguration

    FailedRequest.add_member(:request_identifier, Shapes::ShapeRef.new(shape: RequestIdentifier, location_name: "RequestIdentifier"))
    FailedRequest.add_member(:failure_reason_code, Shapes::ShapeRef.new(shape: FailureReasonCode, location_name: "FailureReasonCode"))
    FailedRequest.add_member(:failure_reason_message, Shapes::ShapeRef.new(shape: String, location_name: "FailureReasonMessage"))
    FailedRequest.struct_class = Types::FailedRequest

    FailedRequestList.member = Shapes::ShapeRef.new(shape: FailedRequest)

    FieldValue.add_member(:id, Shapes::ShapeRef.new(shape: FieldValueId, required: true, location_name: "Id"))
    FieldValue.add_member(:value, Shapes::ShapeRef.new(shape: FieldValueUnion, required: true, location_name: "Value"))
    FieldValue.struct_class = Types::FieldValue

    FieldValueUnion.add_member(:boolean_value, Shapes::ShapeRef.new(shape: Boolean, location_name: "BooleanValue"))
    FieldValueUnion.add_member(:double_value, Shapes::ShapeRef.new(shape: Double, location_name: "DoubleValue"))
    FieldValueUnion.add_member(:empty_value, Shapes::ShapeRef.new(shape: EmptyFieldValue, location_name: "EmptyValue"))
    FieldValueUnion.add_member(:string_value, Shapes::ShapeRef.new(shape: FieldStringValue, location_name: "StringValue"))
    FieldValueUnion.struct_class = Types::FieldValueUnion

    FieldValues.member = Shapes::ShapeRef.new(shape: FieldValue)

    FileIdList.member = Shapes::ShapeRef.new(shape: FileId)

    FilterV2.add_member(:filter_key, Shapes::ShapeRef.new(shape: ResourceArnOrId, location_name: "FilterKey"))
    FilterV2.add_member(:filter_values, Shapes::ShapeRef.new(shape: FilterValueList, location_name: "FilterValues"))
    FilterV2.struct_class = Types::FilterV2

    FilterValueList.member = Shapes::ShapeRef.new(shape: ResourceArnOrId)

    Filters.add_member(:queues, Shapes::ShapeRef.new(shape: Queues, location_name: "Queues"))
    Filters.add_member(:channels, Shapes::ShapeRef.new(shape: Channels, location_name: "Channels"))
    Filters.add_member(:routing_profiles, Shapes::ShapeRef.new(shape: RoutingProfiles, location_name: "RoutingProfiles"))
    Filters.add_member(:routing_step_expressions, Shapes::ShapeRef.new(shape: RoutingExpressions, location_name: "RoutingStepExpressions"))
    Filters.add_member(:agent_statuses, Shapes::ShapeRef.new(shape: AgentStatuses, location_name: "AgentStatuses"))
    Filters.struct_class = Types::Filters

    FiltersV2List.member = Shapes::ShapeRef.new(shape: FilterV2)

    FlowAssociationSummary.add_member(:resource_id, Shapes::ShapeRef.new(shape: ARN, location_name: "ResourceId"))
    FlowAssociationSummary.add_member(:flow_id, Shapes::ShapeRef.new(shape: ARN, location_name: "FlowId"))
    FlowAssociationSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: ListFlowAssociationResourceType, location_name: "ResourceType"))
    FlowAssociationSummary.struct_class = Types::FlowAssociationSummary

    FlowAssociationSummaryList.member = Shapes::ShapeRef.new(shape: FlowAssociationSummary)

    FunctionArnsList.member = Shapes::ShapeRef.new(shape: FunctionArn)

    GetAttachedFileRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    GetAttachedFileRequest.add_member(:file_id, Shapes::ShapeRef.new(shape: FileId, required: true, location: "uri", location_name: "FileId"))
    GetAttachedFileRequest.add_member(:url_expiry_in_seconds, Shapes::ShapeRef.new(shape: URLExpiryInSeconds, location: "querystring", location_name: "urlExpiryInSeconds"))
    GetAttachedFileRequest.add_member(:associated_resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "querystring", location_name: "associatedResourceArn"))
    GetAttachedFileRequest.struct_class = Types::GetAttachedFileRequest

    GetAttachedFileResponse.add_member(:file_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "FileArn"))
    GetAttachedFileResponse.add_member(:file_id, Shapes::ShapeRef.new(shape: FileId, location_name: "FileId"))
    GetAttachedFileResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: ISO8601Datetime, location_name: "CreationTime"))
    GetAttachedFileResponse.add_member(:file_status, Shapes::ShapeRef.new(shape: FileStatusType, location_name: "FileStatus"))
    GetAttachedFileResponse.add_member(:file_name, Shapes::ShapeRef.new(shape: FileName, location_name: "FileName"))
    GetAttachedFileResponse.add_member(:file_size_in_bytes, Shapes::ShapeRef.new(shape: FileSizeInBytes, required: true, location_name: "FileSizeInBytes", metadata: {"box" => true}))
    GetAttachedFileResponse.add_member(:associated_resource_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "AssociatedResourceArn"))
    GetAttachedFileResponse.add_member(:file_use_case_type, Shapes::ShapeRef.new(shape: FileUseCaseType, location_name: "FileUseCaseType"))
    GetAttachedFileResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedByInfo, location_name: "CreatedBy"))
    GetAttachedFileResponse.add_member(:download_url_metadata, Shapes::ShapeRef.new(shape: DownloadUrlMetadata, location_name: "DownloadUrlMetadata"))
    GetAttachedFileResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetAttachedFileResponse.struct_class = Types::GetAttachedFileResponse

    GetContactAttributesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    GetContactAttributesRequest.add_member(:initial_contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location: "uri", location_name: "InitialContactId"))
    GetContactAttributesRequest.struct_class = Types::GetContactAttributesRequest

    GetContactAttributesResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    GetContactAttributesResponse.struct_class = Types::GetContactAttributesResponse

    GetContactMetricsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceIdOrArn, required: true, location_name: "InstanceId"))
    GetContactMetricsRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: InstanceIdOrArn, required: true, location_name: "ContactId"))
    GetContactMetricsRequest.add_member(:metrics, Shapes::ShapeRef.new(shape: ContactMetrics, required: true, location_name: "Metrics"))
    GetContactMetricsRequest.struct_class = Types::GetContactMetricsRequest

    GetContactMetricsResponse.add_member(:metric_results, Shapes::ShapeRef.new(shape: ContactMetricResults, location_name: "MetricResults"))
    GetContactMetricsResponse.add_member(:id, Shapes::ShapeRef.new(shape: ContactId, location_name: "Id"))
    GetContactMetricsResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    GetContactMetricsResponse.struct_class = Types::GetContactMetricsResponse

    GetCurrentMetricDataRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    GetCurrentMetricDataRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, required: true, location_name: "Filters"))
    GetCurrentMetricDataRequest.add_member(:groupings, Shapes::ShapeRef.new(shape: Groupings, location_name: "Groupings"))
    GetCurrentMetricDataRequest.add_member(:current_metrics, Shapes::ShapeRef.new(shape: CurrentMetrics, required: true, location_name: "CurrentMetrics"))
    GetCurrentMetricDataRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetCurrentMetricDataRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box" => true}))
    GetCurrentMetricDataRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: CurrentMetricSortCriteriaMaxOne, location_name: "SortCriteria"))
    GetCurrentMetricDataRequest.struct_class = Types::GetCurrentMetricDataRequest

    GetCurrentMetricDataResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetCurrentMetricDataResponse.add_member(:metric_results, Shapes::ShapeRef.new(shape: CurrentMetricResults, location_name: "MetricResults"))
    GetCurrentMetricDataResponse.add_member(:data_snapshot_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "DataSnapshotTime"))
    GetCurrentMetricDataResponse.add_member(:approximate_total_count, Shapes::ShapeRef.new(shape: ApproximateTotalCount, location_name: "ApproximateTotalCount"))
    GetCurrentMetricDataResponse.struct_class = Types::GetCurrentMetricDataResponse

    GetCurrentUserDataRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    GetCurrentUserDataRequest.add_member(:filters, Shapes::ShapeRef.new(shape: UserDataFilters, required: true, location_name: "Filters"))
    GetCurrentUserDataRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetCurrentUserDataRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box" => true}))
    GetCurrentUserDataRequest.struct_class = Types::GetCurrentUserDataRequest

    GetCurrentUserDataResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetCurrentUserDataResponse.add_member(:user_data_list, Shapes::ShapeRef.new(shape: UserDataList, location_name: "UserDataList"))
    GetCurrentUserDataResponse.add_member(:approximate_total_count, Shapes::ShapeRef.new(shape: ApproximateTotalCount, location_name: "ApproximateTotalCount"))
    GetCurrentUserDataResponse.struct_class = Types::GetCurrentUserDataResponse

    GetEffectiveHoursOfOperationsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    GetEffectiveHoursOfOperationsRequest.add_member(:hours_of_operation_id, Shapes::ShapeRef.new(shape: HoursOfOperationId, required: true, location: "uri", location_name: "HoursOfOperationId"))
    GetEffectiveHoursOfOperationsRequest.add_member(:from_date, Shapes::ShapeRef.new(shape: HoursOfOperationOverrideYearMonthDayDateFormat, required: true, location: "querystring", location_name: "fromDate"))
    GetEffectiveHoursOfOperationsRequest.add_member(:to_date, Shapes::ShapeRef.new(shape: HoursOfOperationOverrideYearMonthDayDateFormat, required: true, location: "querystring", location_name: "toDate"))
    GetEffectiveHoursOfOperationsRequest.struct_class = Types::GetEffectiveHoursOfOperationsRequest

    GetEffectiveHoursOfOperationsResponse.add_member(:effective_hours_of_operation_list, Shapes::ShapeRef.new(shape: EffectiveHoursOfOperationList, location_name: "EffectiveHoursOfOperationList"))
    GetEffectiveHoursOfOperationsResponse.add_member(:time_zone, Shapes::ShapeRef.new(shape: TimeZone, location_name: "TimeZone"))
    GetEffectiveHoursOfOperationsResponse.struct_class = Types::GetEffectiveHoursOfOperationsResponse

    GetFederationTokenRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    GetFederationTokenRequest.struct_class = Types::GetFederationTokenRequest

    GetFederationTokenResponse.add_member(:credentials, Shapes::ShapeRef.new(shape: Credentials, location_name: "Credentials"))
    GetFederationTokenResponse.add_member(:sign_in_url, Shapes::ShapeRef.new(shape: Url, location_name: "SignInUrl"))
    GetFederationTokenResponse.add_member(:user_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "UserArn"))
    GetFederationTokenResponse.add_member(:user_id, Shapes::ShapeRef.new(shape: AgentResourceId, location_name: "UserId"))
    GetFederationTokenResponse.struct_class = Types::GetFederationTokenResponse

    GetFlowAssociationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    GetFlowAssociationRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "ResourceId"))
    GetFlowAssociationRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: FlowAssociationResourceType, required: true, location: "uri", location_name: "ResourceType"))
    GetFlowAssociationRequest.struct_class = Types::GetFlowAssociationRequest

    GetFlowAssociationResponse.add_member(:resource_id, Shapes::ShapeRef.new(shape: ARN, location_name: "ResourceId"))
    GetFlowAssociationResponse.add_member(:flow_id, Shapes::ShapeRef.new(shape: ARN, location_name: "FlowId"))
    GetFlowAssociationResponse.add_member(:resource_type, Shapes::ShapeRef.new(shape: FlowAssociationResourceType, location_name: "ResourceType"))
    GetFlowAssociationResponse.struct_class = Types::GetFlowAssociationResponse

    GetMetricDataRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    GetMetricDataRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "StartTime"))
    GetMetricDataRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "EndTime"))
    GetMetricDataRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, required: true, location_name: "Filters"))
    GetMetricDataRequest.add_member(:groupings, Shapes::ShapeRef.new(shape: Groupings, location_name: "Groupings"))
    GetMetricDataRequest.add_member(:historical_metrics, Shapes::ShapeRef.new(shape: HistoricalMetrics, required: true, location_name: "HistoricalMetrics"))
    GetMetricDataRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetMetricDataRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box" => true}))
    GetMetricDataRequest.struct_class = Types::GetMetricDataRequest

    GetMetricDataResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetMetricDataResponse.add_member(:metric_results, Shapes::ShapeRef.new(shape: HistoricalMetricResults, location_name: "MetricResults"))
    GetMetricDataResponse.struct_class = Types::GetMetricDataResponse

    GetMetricDataV2Request.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "ResourceArn"))
    GetMetricDataV2Request.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    GetMetricDataV2Request.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndTime"))
    GetMetricDataV2Request.add_member(:interval, Shapes::ShapeRef.new(shape: IntervalDetails, location_name: "Interval"))
    GetMetricDataV2Request.add_member(:filters, Shapes::ShapeRef.new(shape: FiltersV2List, required: true, location_name: "Filters"))
    GetMetricDataV2Request.add_member(:groupings, Shapes::ShapeRef.new(shape: GroupingsV2, location_name: "Groupings"))
    GetMetricDataV2Request.add_member(:metrics, Shapes::ShapeRef.new(shape: MetricsV2, required: true, location_name: "Metrics"))
    GetMetricDataV2Request.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    GetMetricDataV2Request.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box" => true}))
    GetMetricDataV2Request.struct_class = Types::GetMetricDataV2Request

    GetMetricDataV2Response.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    GetMetricDataV2Response.add_member(:metric_results, Shapes::ShapeRef.new(shape: MetricResultsV2, location_name: "MetricResults"))
    GetMetricDataV2Response.struct_class = Types::GetMetricDataV2Response

    GetPromptFileRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    GetPromptFileRequest.add_member(:prompt_id, Shapes::ShapeRef.new(shape: PromptId, required: true, location: "uri", location_name: "PromptId"))
    GetPromptFileRequest.struct_class = Types::GetPromptFileRequest

    GetPromptFileResponse.add_member(:prompt_presigned_url, Shapes::ShapeRef.new(shape: PromptPresignedUrl, location_name: "PromptPresignedUrl"))
    GetPromptFileResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    GetPromptFileResponse.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    GetPromptFileResponse.struct_class = Types::GetPromptFileResponse

    GetTaskTemplateRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    GetTaskTemplateRequest.add_member(:task_template_id, Shapes::ShapeRef.new(shape: TaskTemplateId, required: true, location: "uri", location_name: "TaskTemplateId"))
    GetTaskTemplateRequest.add_member(:snapshot_version, Shapes::ShapeRef.new(shape: SnapshotVersion, location: "querystring", location_name: "snapshotVersion"))
    GetTaskTemplateRequest.struct_class = Types::GetTaskTemplateRequest

    GetTaskTemplateResponse.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    GetTaskTemplateResponse.add_member(:id, Shapes::ShapeRef.new(shape: TaskTemplateId, required: true, location_name: "Id"))
    GetTaskTemplateResponse.add_member(:arn, Shapes::ShapeRef.new(shape: TaskTemplateArn, required: true, location_name: "Arn"))
    GetTaskTemplateResponse.add_member(:name, Shapes::ShapeRef.new(shape: TaskTemplateName, required: true, location_name: "Name"))
    GetTaskTemplateResponse.add_member(:description, Shapes::ShapeRef.new(shape: TaskTemplateDescription, location_name: "Description"))
    GetTaskTemplateResponse.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, location_name: "ContactFlowId"))
    GetTaskTemplateResponse.add_member(:self_assign_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, location_name: "SelfAssignFlowId"))
    GetTaskTemplateResponse.add_member(:constraints, Shapes::ShapeRef.new(shape: TaskTemplateConstraints, location_name: "Constraints"))
    GetTaskTemplateResponse.add_member(:defaults, Shapes::ShapeRef.new(shape: TaskTemplateDefaults, location_name: "Defaults"))
    GetTaskTemplateResponse.add_member(:fields, Shapes::ShapeRef.new(shape: TaskTemplateFields, location_name: "Fields"))
    GetTaskTemplateResponse.add_member(:status, Shapes::ShapeRef.new(shape: TaskTemplateStatus, location_name: "Status"))
    GetTaskTemplateResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastModifiedTime"))
    GetTaskTemplateResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreatedTime"))
    GetTaskTemplateResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetTaskTemplateResponse.struct_class = Types::GetTaskTemplateResponse

    GetTrafficDistributionRequest.add_member(:id, Shapes::ShapeRef.new(shape: TrafficDistributionGroupIdOrArn, required: true, location: "uri", location_name: "Id"))
    GetTrafficDistributionRequest.struct_class = Types::GetTrafficDistributionRequest

    GetTrafficDistributionResponse.add_member(:telephony_config, Shapes::ShapeRef.new(shape: TelephonyConfig, location_name: "TelephonyConfig"))
    GetTrafficDistributionResponse.add_member(:id, Shapes::ShapeRef.new(shape: TrafficDistributionGroupId, location_name: "Id"))
    GetTrafficDistributionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: TrafficDistributionGroupArn, location_name: "Arn"))
    GetTrafficDistributionResponse.add_member(:sign_in_config, Shapes::ShapeRef.new(shape: SignInConfig, location_name: "SignInConfig"))
    GetTrafficDistributionResponse.add_member(:agent_config, Shapes::ShapeRef.new(shape: AgentConfig, location_name: "AgentConfig"))
    GetTrafficDistributionResponse.struct_class = Types::GetTrafficDistributionResponse

    Groupings.member = Shapes::ShapeRef.new(shape: Grouping)

    GroupingsV2.member = Shapes::ShapeRef.new(shape: GroupingV2)

    HierarchyGroup.add_member(:id, Shapes::ShapeRef.new(shape: HierarchyGroupId, location_name: "Id"))
    HierarchyGroup.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    HierarchyGroup.add_member(:name, Shapes::ShapeRef.new(shape: HierarchyGroupName, location_name: "Name"))
    HierarchyGroup.add_member(:level_id, Shapes::ShapeRef.new(shape: HierarchyLevelId, location_name: "LevelId"))
    HierarchyGroup.add_member(:hierarchy_path, Shapes::ShapeRef.new(shape: HierarchyPath, location_name: "HierarchyPath"))
    HierarchyGroup.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    HierarchyGroup.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    HierarchyGroup.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    HierarchyGroup.struct_class = Types::HierarchyGroup

    HierarchyGroupCondition.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    HierarchyGroupCondition.add_member(:hierarchy_group_match_type, Shapes::ShapeRef.new(shape: HierarchyGroupMatchType, location_name: "HierarchyGroupMatchType"))
    HierarchyGroupCondition.struct_class = Types::HierarchyGroupCondition

    HierarchyGroupIdList.member = Shapes::ShapeRef.new(shape: HierarchyGroupId)

    HierarchyGroupSummary.add_member(:id, Shapes::ShapeRef.new(shape: HierarchyGroupId, location_name: "Id"))
    HierarchyGroupSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    HierarchyGroupSummary.add_member(:name, Shapes::ShapeRef.new(shape: HierarchyGroupName, location_name: "Name"))
    HierarchyGroupSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    HierarchyGroupSummary.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    HierarchyGroupSummary.struct_class = Types::HierarchyGroupSummary

    HierarchyGroupSummaryList.member = Shapes::ShapeRef.new(shape: HierarchyGroupSummary)

    HierarchyGroupSummaryReference.add_member(:id, Shapes::ShapeRef.new(shape: HierarchyGroupId, location_name: "Id"))
    HierarchyGroupSummaryReference.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    HierarchyGroupSummaryReference.struct_class = Types::HierarchyGroupSummaryReference

    HierarchyGroups.add_member(:level_1, Shapes::ShapeRef.new(shape: AgentHierarchyGroup, location_name: "Level1"))
    HierarchyGroups.add_member(:level_2, Shapes::ShapeRef.new(shape: AgentHierarchyGroup, location_name: "Level2"))
    HierarchyGroups.add_member(:level_3, Shapes::ShapeRef.new(shape: AgentHierarchyGroup, location_name: "Level3"))
    HierarchyGroups.add_member(:level_4, Shapes::ShapeRef.new(shape: AgentHierarchyGroup, location_name: "Level4"))
    HierarchyGroups.add_member(:level_5, Shapes::ShapeRef.new(shape: AgentHierarchyGroup, location_name: "Level5"))
    HierarchyGroups.struct_class = Types::HierarchyGroups

    HierarchyLevel.add_member(:id, Shapes::ShapeRef.new(shape: HierarchyLevelId, location_name: "Id"))
    HierarchyLevel.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    HierarchyLevel.add_member(:name, Shapes::ShapeRef.new(shape: HierarchyLevelName, location_name: "Name"))
    HierarchyLevel.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    HierarchyLevel.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    HierarchyLevel.struct_class = Types::HierarchyLevel

    HierarchyLevelUpdate.add_member(:name, Shapes::ShapeRef.new(shape: HierarchyLevelName, required: true, location_name: "Name"))
    HierarchyLevelUpdate.struct_class = Types::HierarchyLevelUpdate

    HierarchyPath.add_member(:level_one, Shapes::ShapeRef.new(shape: HierarchyGroupSummary, location_name: "LevelOne"))
    HierarchyPath.add_member(:level_two, Shapes::ShapeRef.new(shape: HierarchyGroupSummary, location_name: "LevelTwo"))
    HierarchyPath.add_member(:level_three, Shapes::ShapeRef.new(shape: HierarchyGroupSummary, location_name: "LevelThree"))
    HierarchyPath.add_member(:level_four, Shapes::ShapeRef.new(shape: HierarchyGroupSummary, location_name: "LevelFour"))
    HierarchyPath.add_member(:level_five, Shapes::ShapeRef.new(shape: HierarchyGroupSummary, location_name: "LevelFive"))
    HierarchyPath.struct_class = Types::HierarchyPath

    HierarchyPathReference.add_member(:level_one, Shapes::ShapeRef.new(shape: HierarchyGroupSummaryReference, location_name: "LevelOne"))
    HierarchyPathReference.add_member(:level_two, Shapes::ShapeRef.new(shape: HierarchyGroupSummaryReference, location_name: "LevelTwo"))
    HierarchyPathReference.add_member(:level_three, Shapes::ShapeRef.new(shape: HierarchyGroupSummaryReference, location_name: "LevelThree"))
    HierarchyPathReference.add_member(:level_four, Shapes::ShapeRef.new(shape: HierarchyGroupSummaryReference, location_name: "LevelFour"))
    HierarchyPathReference.add_member(:level_five, Shapes::ShapeRef.new(shape: HierarchyGroupSummaryReference, location_name: "LevelFive"))
    HierarchyPathReference.struct_class = Types::HierarchyPathReference

    HierarchyRestrictedResourceList.member = Shapes::ShapeRef.new(shape: HierarchyRestrictedResourceName)

    HierarchyStructure.add_member(:level_one, Shapes::ShapeRef.new(shape: HierarchyLevel, location_name: "LevelOne"))
    HierarchyStructure.add_member(:level_two, Shapes::ShapeRef.new(shape: HierarchyLevel, location_name: "LevelTwo"))
    HierarchyStructure.add_member(:level_three, Shapes::ShapeRef.new(shape: HierarchyLevel, location_name: "LevelThree"))
    HierarchyStructure.add_member(:level_four, Shapes::ShapeRef.new(shape: HierarchyLevel, location_name: "LevelFour"))
    HierarchyStructure.add_member(:level_five, Shapes::ShapeRef.new(shape: HierarchyLevel, location_name: "LevelFive"))
    HierarchyStructure.struct_class = Types::HierarchyStructure

    HierarchyStructureUpdate.add_member(:level_one, Shapes::ShapeRef.new(shape: HierarchyLevelUpdate, location_name: "LevelOne"))
    HierarchyStructureUpdate.add_member(:level_two, Shapes::ShapeRef.new(shape: HierarchyLevelUpdate, location_name: "LevelTwo"))
    HierarchyStructureUpdate.add_member(:level_three, Shapes::ShapeRef.new(shape: HierarchyLevelUpdate, location_name: "LevelThree"))
    HierarchyStructureUpdate.add_member(:level_four, Shapes::ShapeRef.new(shape: HierarchyLevelUpdate, location_name: "LevelFour"))
    HierarchyStructureUpdate.add_member(:level_five, Shapes::ShapeRef.new(shape: HierarchyLevelUpdate, location_name: "LevelFive"))
    HierarchyStructureUpdate.struct_class = Types::HierarchyStructureUpdate

    HistoricalMetric.add_member(:name, Shapes::ShapeRef.new(shape: HistoricalMetricName, location_name: "Name"))
    HistoricalMetric.add_member(:threshold, Shapes::ShapeRef.new(shape: Threshold, location_name: "Threshold", metadata: {"box" => true}))
    HistoricalMetric.add_member(:statistic, Shapes::ShapeRef.new(shape: Statistic, location_name: "Statistic"))
    HistoricalMetric.add_member(:unit, Shapes::ShapeRef.new(shape: Unit, location_name: "Unit"))
    HistoricalMetric.struct_class = Types::HistoricalMetric

    HistoricalMetricData.add_member(:metric, Shapes::ShapeRef.new(shape: HistoricalMetric, location_name: "Metric"))
    HistoricalMetricData.add_member(:value, Shapes::ShapeRef.new(shape: Value, location_name: "Value", metadata: {"box" => true}))
    HistoricalMetricData.struct_class = Types::HistoricalMetricData

    HistoricalMetricDataCollections.member = Shapes::ShapeRef.new(shape: HistoricalMetricData)

    HistoricalMetricResult.add_member(:dimensions, Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions"))
    HistoricalMetricResult.add_member(:collections, Shapes::ShapeRef.new(shape: HistoricalMetricDataCollections, location_name: "Collections"))
    HistoricalMetricResult.struct_class = Types::HistoricalMetricResult

    HistoricalMetricResults.member = Shapes::ShapeRef.new(shape: HistoricalMetricResult)

    HistoricalMetrics.member = Shapes::ShapeRef.new(shape: HistoricalMetric)

    HoursOfOperation.add_member(:hours_of_operation_id, Shapes::ShapeRef.new(shape: HoursOfOperationId, location_name: "HoursOfOperationId"))
    HoursOfOperation.add_member(:hours_of_operation_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "HoursOfOperationArn"))
    HoursOfOperation.add_member(:name, Shapes::ShapeRef.new(shape: CommonNameLength127, location_name: "Name"))
    HoursOfOperation.add_member(:description, Shapes::ShapeRef.new(shape: HoursOfOperationDescription, location_name: "Description"))
    HoursOfOperation.add_member(:time_zone, Shapes::ShapeRef.new(shape: TimeZone, location_name: "TimeZone"))
    HoursOfOperation.add_member(:config, Shapes::ShapeRef.new(shape: HoursOfOperationConfigList, location_name: "Config"))
    HoursOfOperation.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    HoursOfOperation.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    HoursOfOperation.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    HoursOfOperation.struct_class = Types::HoursOfOperation

    HoursOfOperationConfig.add_member(:day, Shapes::ShapeRef.new(shape: HoursOfOperationDays, required: true, location_name: "Day"))
    HoursOfOperationConfig.add_member(:start_time, Shapes::ShapeRef.new(shape: HoursOfOperationTimeSlice, required: true, location_name: "StartTime"))
    HoursOfOperationConfig.add_member(:end_time, Shapes::ShapeRef.new(shape: HoursOfOperationTimeSlice, required: true, location_name: "EndTime"))
    HoursOfOperationConfig.struct_class = Types::HoursOfOperationConfig

    HoursOfOperationConfigList.member = Shapes::ShapeRef.new(shape: HoursOfOperationConfig)

    HoursOfOperationList.member = Shapes::ShapeRef.new(shape: HoursOfOperation)

    HoursOfOperationOverride.add_member(:hours_of_operation_override_id, Shapes::ShapeRef.new(shape: HoursOfOperationOverrideId, location_name: "HoursOfOperationOverrideId"))
    HoursOfOperationOverride.add_member(:hours_of_operation_id, Shapes::ShapeRef.new(shape: HoursOfOperationId, location_name: "HoursOfOperationId"))
    HoursOfOperationOverride.add_member(:hours_of_operation_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "HoursOfOperationArn"))
    HoursOfOperationOverride.add_member(:name, Shapes::ShapeRef.new(shape: CommonHumanReadableName, location_name: "Name"))
    HoursOfOperationOverride.add_member(:description, Shapes::ShapeRef.new(shape: CommonHumanReadableDescription, location_name: "Description"))
    HoursOfOperationOverride.add_member(:config, Shapes::ShapeRef.new(shape: HoursOfOperationOverrideConfigList, location_name: "Config"))
    HoursOfOperationOverride.add_member(:effective_from, Shapes::ShapeRef.new(shape: HoursOfOperationOverrideYearMonthDayDateFormat, location_name: "EffectiveFrom"))
    HoursOfOperationOverride.add_member(:effective_till, Shapes::ShapeRef.new(shape: HoursOfOperationOverrideYearMonthDayDateFormat, location_name: "EffectiveTill"))
    HoursOfOperationOverride.struct_class = Types::HoursOfOperationOverride

    HoursOfOperationOverrideConfig.add_member(:day, Shapes::ShapeRef.new(shape: OverrideDays, location_name: "Day"))
    HoursOfOperationOverrideConfig.add_member(:start_time, Shapes::ShapeRef.new(shape: OverrideTimeSlice, location_name: "StartTime"))
    HoursOfOperationOverrideConfig.add_member(:end_time, Shapes::ShapeRef.new(shape: OverrideTimeSlice, location_name: "EndTime"))
    HoursOfOperationOverrideConfig.struct_class = Types::HoursOfOperationOverrideConfig

    HoursOfOperationOverrideConfigList.member = Shapes::ShapeRef.new(shape: HoursOfOperationOverrideConfig)

    HoursOfOperationOverrideList.member = Shapes::ShapeRef.new(shape: HoursOfOperationOverride)

    HoursOfOperationOverrideSearchConditionList.member = Shapes::ShapeRef.new(shape: HoursOfOperationOverrideSearchCriteria)

    HoursOfOperationOverrideSearchCriteria.add_member(:or_conditions, Shapes::ShapeRef.new(shape: HoursOfOperationOverrideSearchConditionList, location_name: "OrConditions"))
    HoursOfOperationOverrideSearchCriteria.add_member(:and_conditions, Shapes::ShapeRef.new(shape: HoursOfOperationOverrideSearchConditionList, location_name: "AndConditions"))
    HoursOfOperationOverrideSearchCriteria.add_member(:string_condition, Shapes::ShapeRef.new(shape: StringCondition, location_name: "StringCondition"))
    HoursOfOperationOverrideSearchCriteria.add_member(:date_condition, Shapes::ShapeRef.new(shape: DateCondition, location_name: "DateCondition"))
    HoursOfOperationOverrideSearchCriteria.struct_class = Types::HoursOfOperationOverrideSearchCriteria

    HoursOfOperationSearchConditionList.member = Shapes::ShapeRef.new(shape: HoursOfOperationSearchCriteria)

    HoursOfOperationSearchCriteria.add_member(:or_conditions, Shapes::ShapeRef.new(shape: HoursOfOperationSearchConditionList, location_name: "OrConditions"))
    HoursOfOperationSearchCriteria.add_member(:and_conditions, Shapes::ShapeRef.new(shape: HoursOfOperationSearchConditionList, location_name: "AndConditions"))
    HoursOfOperationSearchCriteria.add_member(:string_condition, Shapes::ShapeRef.new(shape: StringCondition, location_name: "StringCondition"))
    HoursOfOperationSearchCriteria.struct_class = Types::HoursOfOperationSearchCriteria

    HoursOfOperationSearchFilter.add_member(:tag_filter, Shapes::ShapeRef.new(shape: ControlPlaneTagFilter, location_name: "TagFilter"))
    HoursOfOperationSearchFilter.struct_class = Types::HoursOfOperationSearchFilter

    HoursOfOperationSummary.add_member(:id, Shapes::ShapeRef.new(shape: HoursOfOperationId, location_name: "Id"))
    HoursOfOperationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    HoursOfOperationSummary.add_member(:name, Shapes::ShapeRef.new(shape: HoursOfOperationName, location_name: "Name"))
    HoursOfOperationSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    HoursOfOperationSummary.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    HoursOfOperationSummary.struct_class = Types::HoursOfOperationSummary

    HoursOfOperationSummaryList.member = Shapes::ShapeRef.new(shape: HoursOfOperationSummary)

    HoursOfOperationTimeSlice.add_member(:hours, Shapes::ShapeRef.new(shape: Hours24Format, required: true, location_name: "Hours", metadata: {"box" => true}))
    HoursOfOperationTimeSlice.add_member(:minutes, Shapes::ShapeRef.new(shape: MinutesLimit60, required: true, location_name: "Minutes", metadata: {"box" => true}))
    HoursOfOperationTimeSlice.struct_class = Types::HoursOfOperationTimeSlice

    IdempotencyException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    IdempotencyException.struct_class = Types::IdempotencyException

    ImportPhoneNumberRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    ImportPhoneNumberRequest.add_member(:source_phone_number_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "SourcePhoneNumberArn"))
    ImportPhoneNumberRequest.add_member(:phone_number_description, Shapes::ShapeRef.new(shape: PhoneNumberDescription, location_name: "PhoneNumberDescription"))
    ImportPhoneNumberRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ImportPhoneNumberRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    ImportPhoneNumberRequest.struct_class = Types::ImportPhoneNumberRequest

    ImportPhoneNumberResponse.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: PhoneNumberId, location_name: "PhoneNumberId"))
    ImportPhoneNumberResponse.add_member(:phone_number_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "PhoneNumberArn"))
    ImportPhoneNumberResponse.struct_class = Types::ImportPhoneNumberResponse

    InboundAdditionalRecipients.add_member(:to_addresses, Shapes::ShapeRef.new(shape: EmailAddressRecipientList, location_name: "ToAddresses"))
    InboundAdditionalRecipients.add_member(:cc_addresses, Shapes::ShapeRef.new(shape: EmailAddressRecipientList, location_name: "CcAddresses"))
    InboundAdditionalRecipients.struct_class = Types::InboundAdditionalRecipients

    InboundEmailContent.add_member(:message_source_type, Shapes::ShapeRef.new(shape: InboundMessageSourceType, required: true, location_name: "MessageSourceType"))
    InboundEmailContent.add_member(:raw_message, Shapes::ShapeRef.new(shape: InboundRawMessage, location_name: "RawMessage"))
    InboundEmailContent.struct_class = Types::InboundEmailContent

    InboundRawMessage.add_member(:subject, Shapes::ShapeRef.new(shape: InboundSubject, required: true, location_name: "Subject"))
    InboundRawMessage.add_member(:body, Shapes::ShapeRef.new(shape: Body, required: true, location_name: "Body"))
    InboundRawMessage.add_member(:content_type, Shapes::ShapeRef.new(shape: EmailMessageContentType, required: true, location_name: "ContentType"))
    InboundRawMessage.add_member(:headers, Shapes::ShapeRef.new(shape: EmailHeaders, location_name: "Headers"))
    InboundRawMessage.struct_class = Types::InboundRawMessage

    InitiationMethodList.member = Shapes::ShapeRef.new(shape: ContactInitiationMethod)

    InputPredefinedAttributeConfiguration.add_member(:enable_value_validation_on_association, Shapes::ShapeRef.new(shape: EnableValueValidationOnAssociation, location_name: "EnableValueValidationOnAssociation"))
    InputPredefinedAttributeConfiguration.struct_class = Types::InputPredefinedAttributeConfiguration

    Instance.add_member(:id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "Id"))
    Instance.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    Instance.add_member(:identity_management_type, Shapes::ShapeRef.new(shape: DirectoryType, location_name: "IdentityManagementType"))
    Instance.add_member(:instance_alias, Shapes::ShapeRef.new(shape: DirectoryAlias, location_name: "InstanceAlias"))
    Instance.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    Instance.add_member(:service_role, Shapes::ShapeRef.new(shape: ARN, location_name: "ServiceRole"))
    Instance.add_member(:instance_status, Shapes::ShapeRef.new(shape: InstanceStatus, location_name: "InstanceStatus"))
    Instance.add_member(:status_reason, Shapes::ShapeRef.new(shape: InstanceStatusReason, location_name: "StatusReason"))
    Instance.add_member(:inbound_calls_enabled, Shapes::ShapeRef.new(shape: InboundCallsEnabled, location_name: "InboundCallsEnabled"))
    Instance.add_member(:outbound_calls_enabled, Shapes::ShapeRef.new(shape: OutboundCallsEnabled, location_name: "OutboundCallsEnabled"))
    Instance.add_member(:instance_access_url, Shapes::ShapeRef.new(shape: Url, location_name: "InstanceAccessUrl"))
    Instance.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    Instance.struct_class = Types::Instance

    InstanceStatusReason.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InstanceStatusReason.struct_class = Types::InstanceStatusReason

    InstanceStorageConfig.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    InstanceStorageConfig.add_member(:storage_type, Shapes::ShapeRef.new(shape: StorageType, required: true, location_name: "StorageType"))
    InstanceStorageConfig.add_member(:s3_config, Shapes::ShapeRef.new(shape: S3Config, location_name: "S3Config"))
    InstanceStorageConfig.add_member(:kinesis_video_stream_config, Shapes::ShapeRef.new(shape: KinesisVideoStreamConfig, location_name: "KinesisVideoStreamConfig"))
    InstanceStorageConfig.add_member(:kinesis_stream_config, Shapes::ShapeRef.new(shape: KinesisStreamConfig, location_name: "KinesisStreamConfig"))
    InstanceStorageConfig.add_member(:kinesis_firehose_config, Shapes::ShapeRef.new(shape: KinesisFirehoseConfig, location_name: "KinesisFirehoseConfig"))
    InstanceStorageConfig.struct_class = Types::InstanceStorageConfig

    InstanceStorageConfigs.member = Shapes::ShapeRef.new(shape: InstanceStorageConfig)

    InstanceSummary.add_member(:id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "Id"))
    InstanceSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    InstanceSummary.add_member(:identity_management_type, Shapes::ShapeRef.new(shape: DirectoryType, location_name: "IdentityManagementType"))
    InstanceSummary.add_member(:instance_alias, Shapes::ShapeRef.new(shape: DirectoryAlias, location_name: "InstanceAlias"))
    InstanceSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    InstanceSummary.add_member(:service_role, Shapes::ShapeRef.new(shape: ARN, location_name: "ServiceRole"))
    InstanceSummary.add_member(:instance_status, Shapes::ShapeRef.new(shape: InstanceStatus, location_name: "InstanceStatus"))
    InstanceSummary.add_member(:inbound_calls_enabled, Shapes::ShapeRef.new(shape: InboundCallsEnabled, location_name: "InboundCallsEnabled"))
    InstanceSummary.add_member(:outbound_calls_enabled, Shapes::ShapeRef.new(shape: OutboundCallsEnabled, location_name: "OutboundCallsEnabled"))
    InstanceSummary.add_member(:instance_access_url, Shapes::ShapeRef.new(shape: Url, location_name: "InstanceAccessUrl"))
    InstanceSummary.struct_class = Types::InstanceSummary

    InstanceSummaryList.member = Shapes::ShapeRef.new(shape: InstanceSummary)

    IntegrationAssociationSummary.add_member(:integration_association_id, Shapes::ShapeRef.new(shape: IntegrationAssociationId, location_name: "IntegrationAssociationId"))
    IntegrationAssociationSummary.add_member(:integration_association_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "IntegrationAssociationArn"))
    IntegrationAssociationSummary.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    IntegrationAssociationSummary.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, location_name: "IntegrationType"))
    IntegrationAssociationSummary.add_member(:integration_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "IntegrationArn"))
    IntegrationAssociationSummary.add_member(:source_application_url, Shapes::ShapeRef.new(shape: URI, location_name: "SourceApplicationUrl"))
    IntegrationAssociationSummary.add_member(:source_application_name, Shapes::ShapeRef.new(shape: SourceApplicationName, location_name: "SourceApplicationName"))
    IntegrationAssociationSummary.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "SourceType"))
    IntegrationAssociationSummary.struct_class = Types::IntegrationAssociationSummary

    IntegrationAssociationSummaryList.member = Shapes::ShapeRef.new(shape: IntegrationAssociationSummary)

    InternalServiceException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    InternalServiceException.struct_class = Types::InternalServiceException

    IntervalDetails.add_member(:time_zone, Shapes::ShapeRef.new(shape: String, location_name: "TimeZone"))
    IntervalDetails.add_member(:interval_period, Shapes::ShapeRef.new(shape: IntervalPeriod, location_name: "IntervalPeriod"))
    IntervalDetails.struct_class = Types::IntervalDetails

    InvalidContactFlowException.add_member(:problems, Shapes::ShapeRef.new(shape: Problems, location_name: "problems"))
    InvalidContactFlowException.struct_class = Types::InvalidContactFlowException

    InvalidContactFlowModuleException.add_member(:problems, Shapes::ShapeRef.new(shape: Problems, location_name: "Problems"))
    InvalidContactFlowModuleException.struct_class = Types::InvalidContactFlowModuleException

    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    InvalidRequestException.add_member(:reason, Shapes::ShapeRef.new(shape: InvalidRequestExceptionReason, location_name: "Reason"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    InvalidRequestExceptionReason.add_member(:attached_file_invalid_request_exception_reason, Shapes::ShapeRef.new(shape: AttachedFileInvalidRequestExceptionReason, location_name: "AttachedFileInvalidRequestExceptionReason"))
    InvalidRequestExceptionReason.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    InvalidRequestExceptionReason.add_member_subclass(:attached_file_invalid_request_exception_reason, Types::InvalidRequestExceptionReason::AttachedFileInvalidRequestExceptionReason)
    InvalidRequestExceptionReason.add_member_subclass(:unknown, Types::InvalidRequestExceptionReason::Unknown)
    InvalidRequestExceptionReason.struct_class = Types::InvalidRequestExceptionReason

    InvisibleFieldInfo.add_member(:id, Shapes::ShapeRef.new(shape: TaskTemplateFieldIdentifier, location_name: "Id"))
    InvisibleFieldInfo.struct_class = Types::InvisibleFieldInfo

    InvisibleTaskTemplateFields.member = Shapes::ShapeRef.new(shape: InvisibleFieldInfo)

    IpCidrList.member = Shapes::ShapeRef.new(shape: IpCidr)

    KinesisFirehoseConfig.add_member(:firehose_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "FirehoseArn"))
    KinesisFirehoseConfig.struct_class = Types::KinesisFirehoseConfig

    KinesisStreamConfig.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "StreamArn"))
    KinesisStreamConfig.struct_class = Types::KinesisStreamConfig

    KinesisVideoStreamConfig.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, required: true, location_name: "Prefix"))
    KinesisVideoStreamConfig.add_member(:retention_period_hours, Shapes::ShapeRef.new(shape: Hours, required: true, location_name: "RetentionPeriodHours"))
    KinesisVideoStreamConfig.add_member(:encryption_config, Shapes::ShapeRef.new(shape: EncryptionConfig, required: true, location_name: "EncryptionConfig"))
    KinesisVideoStreamConfig.struct_class = Types::KinesisVideoStreamConfig

    LexBot.add_member(:name, Shapes::ShapeRef.new(shape: BotName, required: true, location_name: "Name"))
    LexBot.add_member(:lex_region, Shapes::ShapeRef.new(shape: LexRegion, required: true, location_name: "LexRegion"))
    LexBot.struct_class = Types::LexBot

    LexBotConfig.add_member(:lex_bot, Shapes::ShapeRef.new(shape: LexBot, location_name: "LexBot"))
    LexBotConfig.add_member(:lex_v2_bot, Shapes::ShapeRef.new(shape: LexV2Bot, location_name: "LexV2Bot"))
    LexBotConfig.struct_class = Types::LexBotConfig

    LexBotConfigList.member = Shapes::ShapeRef.new(shape: LexBotConfig)

    LexBotsList.member = Shapes::ShapeRef.new(shape: LexBot)

    LexV2Bot.add_member(:alias_arn, Shapes::ShapeRef.new(shape: AliasArn, location_name: "AliasArn"))
    LexV2Bot.struct_class = Types::LexV2Bot

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListAgentStatusRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListAgentStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAgentStatusRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListAgentStatusRequest.add_member(:agent_status_types, Shapes::ShapeRef.new(shape: AgentStatusTypes, location: "querystring", location_name: "AgentStatusTypes"))
    ListAgentStatusRequest.struct_class = Types::ListAgentStatusRequest

    ListAgentStatusResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAgentStatusResponse.add_member(:agent_status_summary_list, Shapes::ShapeRef.new(shape: AgentStatusSummaryList, location_name: "AgentStatusSummaryList"))
    ListAgentStatusResponse.struct_class = Types::ListAgentStatusResponse

    ListAnalyticsDataAssociationsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListAnalyticsDataAssociationsRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: DataSetId, location: "querystring", location_name: "DataSetId"))
    ListAnalyticsDataAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAnalyticsDataAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults"))
    ListAnalyticsDataAssociationsRequest.struct_class = Types::ListAnalyticsDataAssociationsRequest

    ListAnalyticsDataAssociationsResponse.add_member(:results, Shapes::ShapeRef.new(shape: AnalyticsDataAssociationResults, location_name: "Results"))
    ListAnalyticsDataAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAnalyticsDataAssociationsResponse.struct_class = Types::ListAnalyticsDataAssociationsResponse

    ListAnalyticsDataLakeDataSetsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListAnalyticsDataLakeDataSetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAnalyticsDataLakeDataSetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults"))
    ListAnalyticsDataLakeDataSetsRequest.struct_class = Types::ListAnalyticsDataLakeDataSetsRequest

    ListAnalyticsDataLakeDataSetsResponse.add_member(:results, Shapes::ShapeRef.new(shape: AnalyticsDataSetsResults, location_name: "Results"))
    ListAnalyticsDataLakeDataSetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAnalyticsDataLakeDataSetsResponse.struct_class = Types::ListAnalyticsDataLakeDataSetsResponse

    ListApprovedOriginsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListApprovedOriginsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListApprovedOriginsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult25, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListApprovedOriginsRequest.struct_class = Types::ListApprovedOriginsRequest

    ListApprovedOriginsResponse.add_member(:origins, Shapes::ShapeRef.new(shape: OriginsList, location_name: "Origins"))
    ListApprovedOriginsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListApprovedOriginsResponse.struct_class = Types::ListApprovedOriginsResponse

    ListAssociatedContactsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListAssociatedContactsRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location: "querystring", location_name: "contactId"))
    ListAssociatedContactsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAssociatedContactsRequestMaxResults, location: "querystring", location_name: "maxResults"))
    ListAssociatedContactsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAssociatedContactsRequest.struct_class = Types::ListAssociatedContactsRequest

    ListAssociatedContactsResponse.add_member(:contact_summary_list, Shapes::ShapeRef.new(shape: AssociatedContactSummaryList, location_name: "ContactSummaryList"))
    ListAssociatedContactsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAssociatedContactsResponse.struct_class = Types::ListAssociatedContactsResponse

    ListAuthenticationProfilesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListAuthenticationProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListAuthenticationProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAuthenticationProfilesRequest.struct_class = Types::ListAuthenticationProfilesRequest

    ListAuthenticationProfilesResponse.add_member(:authentication_profile_summary_list, Shapes::ShapeRef.new(shape: AuthenticationProfileSummaryList, location_name: "AuthenticationProfileSummaryList"))
    ListAuthenticationProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAuthenticationProfilesResponse.struct_class = Types::ListAuthenticationProfilesResponse

    ListBotsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListBotsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListBotsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult25, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListBotsRequest.add_member(:lex_version, Shapes::ShapeRef.new(shape: LexVersion, required: true, location: "querystring", location_name: "lexVersion"))
    ListBotsRequest.struct_class = Types::ListBotsRequest

    ListBotsResponse.add_member(:lex_bots, Shapes::ShapeRef.new(shape: LexBotConfigList, location_name: "LexBots"))
    ListBotsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListBotsResponse.struct_class = Types::ListBotsResponse

    ListCondition.add_member(:target_list_type, Shapes::ShapeRef.new(shape: TargetListType, location_name: "TargetListType"))
    ListCondition.add_member(:conditions, Shapes::ShapeRef.new(shape: Conditions, location_name: "Conditions"))
    ListCondition.struct_class = Types::ListCondition

    ListContactEvaluationsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListContactEvaluationsRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location: "querystring", location_name: "contactId"))
    ListContactEvaluationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListContactEvaluationsRequest.struct_class = Types::ListContactEvaluationsRequest

    ListContactEvaluationsResponse.add_member(:evaluation_summary_list, Shapes::ShapeRef.new(shape: EvaluationSummaryList, required: true, location_name: "EvaluationSummaryList"))
    ListContactEvaluationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListContactEvaluationsResponse.struct_class = Types::ListContactEvaluationsResponse

    ListContactFlowModuleAliasesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceIdOrArn, required: true, location: "uri", location_name: "InstanceId"))
    ListContactFlowModuleAliasesRequest.add_member(:contact_flow_module_id, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "ContactFlowModuleId"))
    ListContactFlowModuleAliasesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListContactFlowModuleAliasesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListContactFlowModuleAliasesRequest.struct_class = Types::ListContactFlowModuleAliasesRequest

    ListContactFlowModuleAliasesResponse.add_member(:contact_flow_module_alias_summary_list, Shapes::ShapeRef.new(shape: ContactFlowModuleAliasSummaryList, location_name: "ContactFlowModuleAliasSummaryList"))
    ListContactFlowModuleAliasesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListContactFlowModuleAliasesResponse.struct_class = Types::ListContactFlowModuleAliasesResponse

    ListContactFlowModuleVersionsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListContactFlowModuleVersionsRequest.add_member(:contact_flow_module_id, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "ContactFlowModuleId"))
    ListContactFlowModuleVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListContactFlowModuleVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListContactFlowModuleVersionsRequest.struct_class = Types::ListContactFlowModuleVersionsRequest

    ListContactFlowModuleVersionsResponse.add_member(:contact_flow_module_version_summary_list, Shapes::ShapeRef.new(shape: ContactFlowModuleVersionSummaryList, location_name: "ContactFlowModuleVersionSummaryList"))
    ListContactFlowModuleVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListContactFlowModuleVersionsResponse.struct_class = Types::ListContactFlowModuleVersionsResponse

    ListContactFlowModulesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListContactFlowModulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListContactFlowModulesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListContactFlowModulesRequest.add_member(:contact_flow_module_state, Shapes::ShapeRef.new(shape: ContactFlowModuleState, location: "querystring", location_name: "state"))
    ListContactFlowModulesRequest.struct_class = Types::ListContactFlowModulesRequest

    ListContactFlowModulesResponse.add_member(:contact_flow_modules_summary_list, Shapes::ShapeRef.new(shape: ContactFlowModulesSummaryList, location_name: "ContactFlowModulesSummaryList"))
    ListContactFlowModulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListContactFlowModulesResponse.struct_class = Types::ListContactFlowModulesResponse

    ListContactFlowVersionsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListContactFlowVersionsRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "ContactFlowId"))
    ListContactFlowVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListContactFlowVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListContactFlowVersionsRequest.struct_class = Types::ListContactFlowVersionsRequest

    ListContactFlowVersionsResponse.add_member(:contact_flow_version_summary_list, Shapes::ShapeRef.new(shape: ContactFlowVersionSummaryList, location_name: "ContactFlowVersionSummaryList"))
    ListContactFlowVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListContactFlowVersionsResponse.struct_class = Types::ListContactFlowVersionsResponse

    ListContactFlowsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListContactFlowsRequest.add_member(:contact_flow_types, Shapes::ShapeRef.new(shape: ContactFlowTypes, location: "querystring", location_name: "contactFlowTypes"))
    ListContactFlowsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListContactFlowsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults"))
    ListContactFlowsRequest.struct_class = Types::ListContactFlowsRequest

    ListContactFlowsResponse.add_member(:contact_flow_summary_list, Shapes::ShapeRef.new(shape: ContactFlowSummaryList, location_name: "ContactFlowSummaryList"))
    ListContactFlowsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListContactFlowsResponse.struct_class = Types::ListContactFlowsResponse

    ListContactReferencesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListContactReferencesRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location: "uri", location_name: "ContactId"))
    ListContactReferencesRequest.add_member(:reference_types, Shapes::ShapeRef.new(shape: ReferenceTypes, required: true, location: "querystring", location_name: "referenceTypes"))
    ListContactReferencesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListContactReferencesRequest.struct_class = Types::ListContactReferencesRequest

    ListContactReferencesResponse.add_member(:reference_summary_list, Shapes::ShapeRef.new(shape: ReferenceSummaryList, location_name: "ReferenceSummaryList"))
    ListContactReferencesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListContactReferencesResponse.struct_class = Types::ListContactReferencesResponse

    ListDefaultVocabulariesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListDefaultVocabulariesRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: VocabularyLanguageCode, location_name: "LanguageCode"))
    ListDefaultVocabulariesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults"))
    ListDefaultVocabulariesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: VocabularyNextToken, location_name: "NextToken"))
    ListDefaultVocabulariesRequest.struct_class = Types::ListDefaultVocabulariesRequest

    ListDefaultVocabulariesResponse.add_member(:default_vocabulary_list, Shapes::ShapeRef.new(shape: DefaultVocabularyList, required: true, location_name: "DefaultVocabularyList"))
    ListDefaultVocabulariesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: VocabularyNextToken, location_name: "NextToken"))
    ListDefaultVocabulariesResponse.struct_class = Types::ListDefaultVocabulariesResponse

    ListEvaluationFormVersionsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListEvaluationFormVersionsRequest.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "EvaluationFormId"))
    ListEvaluationFormVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListEvaluationFormVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListEvaluationFormVersionsRequest.struct_class = Types::ListEvaluationFormVersionsRequest

    ListEvaluationFormVersionsResponse.add_member(:evaluation_form_version_summary_list, Shapes::ShapeRef.new(shape: EvaluationFormVersionSummaryList, required: true, location_name: "EvaluationFormVersionSummaryList"))
    ListEvaluationFormVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEvaluationFormVersionsResponse.struct_class = Types::ListEvaluationFormVersionsResponse

    ListEvaluationFormsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListEvaluationFormsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListEvaluationFormsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListEvaluationFormsRequest.struct_class = Types::ListEvaluationFormsRequest

    ListEvaluationFormsResponse.add_member(:evaluation_form_summary_list, Shapes::ShapeRef.new(shape: EvaluationFormSummaryList, required: true, location_name: "EvaluationFormSummaryList"))
    ListEvaluationFormsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEvaluationFormsResponse.struct_class = Types::ListEvaluationFormsResponse

    ListFlowAssociationsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListFlowAssociationsRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ListFlowAssociationResourceType, location: "querystring", location_name: "ResourceType"))
    ListFlowAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListFlowAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListFlowAssociationsRequest.struct_class = Types::ListFlowAssociationsRequest

    ListFlowAssociationsResponse.add_member(:flow_association_summary_list, Shapes::ShapeRef.new(shape: FlowAssociationSummaryList, location_name: "FlowAssociationSummaryList"))
    ListFlowAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFlowAssociationsResponse.struct_class = Types::ListFlowAssociationsResponse

    ListHoursOfOperationOverridesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListHoursOfOperationOverridesRequest.add_member(:hours_of_operation_id, Shapes::ShapeRef.new(shape: HoursOfOperationId, required: true, location: "uri", location_name: "HoursOfOperationId"))
    ListHoursOfOperationOverridesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListHoursOfOperationOverridesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListHoursOfOperationOverridesRequest.struct_class = Types::ListHoursOfOperationOverridesRequest

    ListHoursOfOperationOverridesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListHoursOfOperationOverridesResponse.add_member(:hours_of_operation_override_list, Shapes::ShapeRef.new(shape: HoursOfOperationOverrideList, location_name: "HoursOfOperationOverrideList"))
    ListHoursOfOperationOverridesResponse.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    ListHoursOfOperationOverridesResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    ListHoursOfOperationOverridesResponse.struct_class = Types::ListHoursOfOperationOverridesResponse

    ListHoursOfOperationsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListHoursOfOperationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListHoursOfOperationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults"))
    ListHoursOfOperationsRequest.struct_class = Types::ListHoursOfOperationsRequest

    ListHoursOfOperationsResponse.add_member(:hours_of_operation_summary_list, Shapes::ShapeRef.new(shape: HoursOfOperationSummaryList, location_name: "HoursOfOperationSummaryList"))
    ListHoursOfOperationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListHoursOfOperationsResponse.struct_class = Types::ListHoursOfOperationsResponse

    ListInstanceAttributesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListInstanceAttributesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListInstanceAttributesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult7, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListInstanceAttributesRequest.struct_class = Types::ListInstanceAttributesRequest

    ListInstanceAttributesResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributesList, location_name: "Attributes"))
    ListInstanceAttributesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListInstanceAttributesResponse.struct_class = Types::ListInstanceAttributesResponse

    ListInstanceStorageConfigsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListInstanceStorageConfigsRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: InstanceStorageResourceType, required: true, location: "querystring", location_name: "resourceType"))
    ListInstanceStorageConfigsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListInstanceStorageConfigsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult10, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListInstanceStorageConfigsRequest.struct_class = Types::ListInstanceStorageConfigsRequest

    ListInstanceStorageConfigsResponse.add_member(:storage_configs, Shapes::ShapeRef.new(shape: InstanceStorageConfigs, location_name: "StorageConfigs"))
    ListInstanceStorageConfigsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListInstanceStorageConfigsResponse.struct_class = Types::ListInstanceStorageConfigsResponse

    ListInstancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListInstancesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult10, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListInstancesRequest.struct_class = Types::ListInstancesRequest

    ListInstancesResponse.add_member(:instance_summary_list, Shapes::ShapeRef.new(shape: InstanceSummaryList, location_name: "InstanceSummaryList"))
    ListInstancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListInstancesResponse.struct_class = Types::ListInstancesResponse

    ListIntegrationAssociationsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListIntegrationAssociationsRequest.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, location: "querystring", location_name: "integrationType"))
    ListIntegrationAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListIntegrationAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListIntegrationAssociationsRequest.add_member(:integration_arn, Shapes::ShapeRef.new(shape: ARN, location: "querystring", location_name: "integrationArn"))
    ListIntegrationAssociationsRequest.struct_class = Types::ListIntegrationAssociationsRequest

    ListIntegrationAssociationsResponse.add_member(:integration_association_summary_list, Shapes::ShapeRef.new(shape: IntegrationAssociationSummaryList, location_name: "IntegrationAssociationSummaryList"))
    ListIntegrationAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListIntegrationAssociationsResponse.struct_class = Types::ListIntegrationAssociationsResponse

    ListLambdaFunctionsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListLambdaFunctionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListLambdaFunctionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult25, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListLambdaFunctionsRequest.struct_class = Types::ListLambdaFunctionsRequest

    ListLambdaFunctionsResponse.add_member(:lambda_functions, Shapes::ShapeRef.new(shape: FunctionArnsList, location_name: "LambdaFunctions"))
    ListLambdaFunctionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLambdaFunctionsResponse.struct_class = Types::ListLambdaFunctionsResponse

    ListLexBotsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListLexBotsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListLexBotsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult25, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListLexBotsRequest.struct_class = Types::ListLexBotsRequest

    ListLexBotsResponse.add_member(:lex_bots, Shapes::ShapeRef.new(shape: LexBotsList, location_name: "LexBots"))
    ListLexBotsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLexBotsResponse.struct_class = Types::ListLexBotsResponse

    ListPhoneNumbersRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListPhoneNumbersRequest.add_member(:phone_number_types, Shapes::ShapeRef.new(shape: PhoneNumberTypes, location: "querystring", location_name: "phoneNumberTypes"))
    ListPhoneNumbersRequest.add_member(:phone_number_country_codes, Shapes::ShapeRef.new(shape: PhoneNumberCountryCodes, location: "querystring", location_name: "phoneNumberCountryCodes"))
    ListPhoneNumbersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPhoneNumbersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults"))
    ListPhoneNumbersRequest.struct_class = Types::ListPhoneNumbersRequest

    ListPhoneNumbersResponse.add_member(:phone_number_summary_list, Shapes::ShapeRef.new(shape: PhoneNumberSummaryList, location_name: "PhoneNumberSummaryList"))
    ListPhoneNumbersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPhoneNumbersResponse.struct_class = Types::ListPhoneNumbersResponse

    ListPhoneNumbersSummary.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: PhoneNumberId, location_name: "PhoneNumberId"))
    ListPhoneNumbersSummary.add_member(:phone_number_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "PhoneNumberArn"))
    ListPhoneNumbersSummary.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "PhoneNumber"))
    ListPhoneNumbersSummary.add_member(:phone_number_country_code, Shapes::ShapeRef.new(shape: PhoneNumberCountryCode, location_name: "PhoneNumberCountryCode"))
    ListPhoneNumbersSummary.add_member(:phone_number_type, Shapes::ShapeRef.new(shape: PhoneNumberType, location_name: "PhoneNumberType"))
    ListPhoneNumbersSummary.add_member(:target_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "TargetArn"))
    ListPhoneNumbersSummary.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    ListPhoneNumbersSummary.add_member(:phone_number_description, Shapes::ShapeRef.new(shape: PhoneNumberDescription, location_name: "PhoneNumberDescription"))
    ListPhoneNumbersSummary.add_member(:source_phone_number_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "SourcePhoneNumberArn"))
    ListPhoneNumbersSummary.struct_class = Types::ListPhoneNumbersSummary

    ListPhoneNumbersSummaryList.member = Shapes::ShapeRef.new(shape: ListPhoneNumbersSummary)

    ListPhoneNumbersV2Request.add_member(:target_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "TargetArn"))
    ListPhoneNumbersV2Request.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    ListPhoneNumbersV2Request.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location_name: "MaxResults", metadata: {"box" => true}))
    ListPhoneNumbersV2Request.add_member(:next_token, Shapes::ShapeRef.new(shape: LargeNextToken, location_name: "NextToken"))
    ListPhoneNumbersV2Request.add_member(:phone_number_country_codes, Shapes::ShapeRef.new(shape: PhoneNumberCountryCodes, location_name: "PhoneNumberCountryCodes"))
    ListPhoneNumbersV2Request.add_member(:phone_number_types, Shapes::ShapeRef.new(shape: PhoneNumberTypes, location_name: "PhoneNumberTypes"))
    ListPhoneNumbersV2Request.add_member(:phone_number_prefix, Shapes::ShapeRef.new(shape: PhoneNumberPrefix, location_name: "PhoneNumberPrefix"))
    ListPhoneNumbersV2Request.struct_class = Types::ListPhoneNumbersV2Request

    ListPhoneNumbersV2Response.add_member(:next_token, Shapes::ShapeRef.new(shape: LargeNextToken, location_name: "NextToken"))
    ListPhoneNumbersV2Response.add_member(:list_phone_numbers_summary_list, Shapes::ShapeRef.new(shape: ListPhoneNumbersSummaryList, location_name: "ListPhoneNumbersSummaryList"))
    ListPhoneNumbersV2Response.struct_class = Types::ListPhoneNumbersV2Response

    ListPredefinedAttributesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListPredefinedAttributesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPredefinedAttributesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListPredefinedAttributesRequest.struct_class = Types::ListPredefinedAttributesRequest

    ListPredefinedAttributesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPredefinedAttributesResponse.add_member(:predefined_attribute_summary_list, Shapes::ShapeRef.new(shape: PredefinedAttributeSummaryList, location_name: "PredefinedAttributeSummaryList"))
    ListPredefinedAttributesResponse.struct_class = Types::ListPredefinedAttributesResponse

    ListPromptsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListPromptsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPromptsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListPromptsRequest.struct_class = Types::ListPromptsRequest

    ListPromptsResponse.add_member(:prompt_summary_list, Shapes::ShapeRef.new(shape: PromptSummaryList, location_name: "PromptSummaryList"))
    ListPromptsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPromptsResponse.struct_class = Types::ListPromptsResponse

    ListQueueQuickConnectsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListQueueQuickConnectsRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "QueueId"))
    ListQueueQuickConnectsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListQueueQuickConnectsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListQueueQuickConnectsRequest.struct_class = Types::ListQueueQuickConnectsRequest

    ListQueueQuickConnectsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListQueueQuickConnectsResponse.add_member(:quick_connect_summary_list, Shapes::ShapeRef.new(shape: QuickConnectSummaryList, location_name: "QuickConnectSummaryList"))
    ListQueueQuickConnectsResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    ListQueueQuickConnectsResponse.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    ListQueueQuickConnectsResponse.struct_class = Types::ListQueueQuickConnectsResponse

    ListQueuesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListQueuesRequest.add_member(:queue_types, Shapes::ShapeRef.new(shape: QueueTypes, location: "querystring", location_name: "queueTypes"))
    ListQueuesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListQueuesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults"))
    ListQueuesRequest.struct_class = Types::ListQueuesRequest

    ListQueuesResponse.add_member(:queue_summary_list, Shapes::ShapeRef.new(shape: QueueSummaryList, location_name: "QueueSummaryList"))
    ListQueuesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListQueuesResponse.struct_class = Types::ListQueuesResponse

    ListQuickConnectsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListQuickConnectsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListQuickConnectsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListQuickConnectsRequest.add_member(:quick_connect_types, Shapes::ShapeRef.new(shape: QuickConnectTypes, location: "querystring", location_name: "QuickConnectTypes"))
    ListQuickConnectsRequest.struct_class = Types::ListQuickConnectsRequest

    ListQuickConnectsResponse.add_member(:quick_connect_summary_list, Shapes::ShapeRef.new(shape: QuickConnectSummaryList, location_name: "QuickConnectSummaryList"))
    ListQuickConnectsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListQuickConnectsResponse.struct_class = Types::ListQuickConnectsResponse

    ListRealtimeContactAnalysisSegmentsV2Request.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListRealtimeContactAnalysisSegmentsV2Request.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location: "uri", location_name: "ContactId"))
    ListRealtimeContactAnalysisSegmentsV2Request.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults"))
    ListRealtimeContactAnalysisSegmentsV2Request.add_member(:next_token, Shapes::ShapeRef.new(shape: LargeNextToken, location_name: "NextToken"))
    ListRealtimeContactAnalysisSegmentsV2Request.add_member(:output_type, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisOutputType, required: true, location_name: "OutputType"))
    ListRealtimeContactAnalysisSegmentsV2Request.add_member(:segment_types, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisSegmentTypes, required: true, location_name: "SegmentTypes"))
    ListRealtimeContactAnalysisSegmentsV2Request.struct_class = Types::ListRealtimeContactAnalysisSegmentsV2Request

    ListRealtimeContactAnalysisSegmentsV2Response.add_member(:channel, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisSupportedChannel, required: true, location_name: "Channel"))
    ListRealtimeContactAnalysisSegmentsV2Response.add_member(:status, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisStatus, required: true, location_name: "Status"))
    ListRealtimeContactAnalysisSegmentsV2Response.add_member(:segments, Shapes::ShapeRef.new(shape: RealtimeContactAnalysisSegments, required: true, location_name: "Segments"))
    ListRealtimeContactAnalysisSegmentsV2Response.add_member(:next_token, Shapes::ShapeRef.new(shape: LargeNextToken, location_name: "NextToken"))
    ListRealtimeContactAnalysisSegmentsV2Response.struct_class = Types::ListRealtimeContactAnalysisSegmentsV2Response

    ListRoutingProfileManualAssignmentQueuesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListRoutingProfileManualAssignmentQueuesRequest.add_member(:routing_profile_id, Shapes::ShapeRef.new(shape: RoutingProfileId, required: true, location: "uri", location_name: "RoutingProfileId"))
    ListRoutingProfileManualAssignmentQueuesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListRoutingProfileManualAssignmentQueuesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListRoutingProfileManualAssignmentQueuesRequest.struct_class = Types::ListRoutingProfileManualAssignmentQueuesRequest

    ListRoutingProfileManualAssignmentQueuesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRoutingProfileManualAssignmentQueuesResponse.add_member(:routing_profile_manual_assignment_queue_config_summary_list, Shapes::ShapeRef.new(shape: RoutingProfileManualAssignmentQueueConfigSummaryList, location_name: "RoutingProfileManualAssignmentQueueConfigSummaryList"))
    ListRoutingProfileManualAssignmentQueuesResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    ListRoutingProfileManualAssignmentQueuesResponse.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    ListRoutingProfileManualAssignmentQueuesResponse.struct_class = Types::ListRoutingProfileManualAssignmentQueuesResponse

    ListRoutingProfileQueuesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListRoutingProfileQueuesRequest.add_member(:routing_profile_id, Shapes::ShapeRef.new(shape: RoutingProfileId, required: true, location: "uri", location_name: "RoutingProfileId"))
    ListRoutingProfileQueuesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListRoutingProfileQueuesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListRoutingProfileQueuesRequest.struct_class = Types::ListRoutingProfileQueuesRequest

    ListRoutingProfileQueuesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRoutingProfileQueuesResponse.add_member(:routing_profile_queue_config_summary_list, Shapes::ShapeRef.new(shape: RoutingProfileQueueConfigSummaryList, location_name: "RoutingProfileQueueConfigSummaryList"))
    ListRoutingProfileQueuesResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    ListRoutingProfileQueuesResponse.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    ListRoutingProfileQueuesResponse.struct_class = Types::ListRoutingProfileQueuesResponse

    ListRoutingProfilesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListRoutingProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListRoutingProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListRoutingProfilesRequest.struct_class = Types::ListRoutingProfilesRequest

    ListRoutingProfilesResponse.add_member(:routing_profile_summary_list, Shapes::ShapeRef.new(shape: RoutingProfileSummaryList, location_name: "RoutingProfileSummaryList"))
    ListRoutingProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRoutingProfilesResponse.struct_class = Types::ListRoutingProfilesResponse

    ListRulesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListRulesRequest.add_member(:publish_status, Shapes::ShapeRef.new(shape: RulePublishStatus, location: "querystring", location_name: "publishStatus"))
    ListRulesRequest.add_member(:event_source_name, Shapes::ShapeRef.new(shape: EventSourceName, location: "querystring", location_name: "eventSourceName"))
    ListRulesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult200, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListRulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListRulesRequest.struct_class = Types::ListRulesRequest

    ListRulesResponse.add_member(:rule_summary_list, Shapes::ShapeRef.new(shape: RuleSummaryList, required: true, location_name: "RuleSummaryList"))
    ListRulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRulesResponse.struct_class = Types::ListRulesResponse

    ListSecurityKeysRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListSecurityKeysRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListSecurityKeysRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult2, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListSecurityKeysRequest.struct_class = Types::ListSecurityKeysRequest

    ListSecurityKeysResponse.add_member(:security_keys, Shapes::ShapeRef.new(shape: SecurityKeysList, location_name: "SecurityKeys"))
    ListSecurityKeysResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSecurityKeysResponse.struct_class = Types::ListSecurityKeysResponse

    ListSecurityProfileApplicationsRequest.add_member(:security_profile_id, Shapes::ShapeRef.new(shape: SecurityProfileId, required: true, location: "uri", location_name: "SecurityProfileId"))
    ListSecurityProfileApplicationsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListSecurityProfileApplicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListSecurityProfileApplicationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults"))
    ListSecurityProfileApplicationsRequest.struct_class = Types::ListSecurityProfileApplicationsRequest

    ListSecurityProfileApplicationsResponse.add_member(:applications, Shapes::ShapeRef.new(shape: Applications, location_name: "Applications"))
    ListSecurityProfileApplicationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSecurityProfileApplicationsResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    ListSecurityProfileApplicationsResponse.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    ListSecurityProfileApplicationsResponse.struct_class = Types::ListSecurityProfileApplicationsResponse

    ListSecurityProfilePermissionsRequest.add_member(:security_profile_id, Shapes::ShapeRef.new(shape: SecurityProfileId, required: true, location: "uri", location_name: "SecurityProfileId"))
    ListSecurityProfilePermissionsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListSecurityProfilePermissionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListSecurityProfilePermissionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListSecurityProfilePermissionsRequest.struct_class = Types::ListSecurityProfilePermissionsRequest

    ListSecurityProfilePermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: PermissionsList, location_name: "Permissions"))
    ListSecurityProfilePermissionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSecurityProfilePermissionsResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    ListSecurityProfilePermissionsResponse.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    ListSecurityProfilePermissionsResponse.struct_class = Types::ListSecurityProfilePermissionsResponse

    ListSecurityProfilesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListSecurityProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListSecurityProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListSecurityProfilesRequest.struct_class = Types::ListSecurityProfilesRequest

    ListSecurityProfilesResponse.add_member(:security_profile_summary_list, Shapes::ShapeRef.new(shape: SecurityProfileSummaryList, location_name: "SecurityProfileSummaryList"))
    ListSecurityProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSecurityProfilesResponse.struct_class = Types::ListSecurityProfilesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTaskTemplatesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListTaskTemplatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTaskTemplatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListTaskTemplatesRequest.add_member(:status, Shapes::ShapeRef.new(shape: TaskTemplateStatus, location: "querystring", location_name: "status"))
    ListTaskTemplatesRequest.add_member(:name, Shapes::ShapeRef.new(shape: TaskTemplateName, location: "querystring", location_name: "name"))
    ListTaskTemplatesRequest.struct_class = Types::ListTaskTemplatesRequest

    ListTaskTemplatesResponse.add_member(:task_templates, Shapes::ShapeRef.new(shape: TaskTemplateList, location_name: "TaskTemplates"))
    ListTaskTemplatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTaskTemplatesResponse.struct_class = Types::ListTaskTemplatesResponse

    ListTrafficDistributionGroupUsersRequest.add_member(:traffic_distribution_group_id, Shapes::ShapeRef.new(shape: TrafficDistributionGroupIdOrArn, required: true, location: "uri", location_name: "TrafficDistributionGroupId"))
    ListTrafficDistributionGroupUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult10, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListTrafficDistributionGroupUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTrafficDistributionGroupUsersRequest.struct_class = Types::ListTrafficDistributionGroupUsersRequest

    ListTrafficDistributionGroupUsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTrafficDistributionGroupUsersResponse.add_member(:traffic_distribution_group_user_summary_list, Shapes::ShapeRef.new(shape: TrafficDistributionGroupUserSummaryList, location_name: "TrafficDistributionGroupUserSummaryList"))
    ListTrafficDistributionGroupUsersResponse.struct_class = Types::ListTrafficDistributionGroupUsersResponse

    ListTrafficDistributionGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult10, location: "querystring", location_name: "maxResults"))
    ListTrafficDistributionGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTrafficDistributionGroupsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceIdOrArn, location: "querystring", location_name: "instanceId"))
    ListTrafficDistributionGroupsRequest.struct_class = Types::ListTrafficDistributionGroupsRequest

    ListTrafficDistributionGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTrafficDistributionGroupsResponse.add_member(:traffic_distribution_group_summary_list, Shapes::ShapeRef.new(shape: TrafficDistributionGroupSummaryList, location_name: "TrafficDistributionGroupSummaryList"))
    ListTrafficDistributionGroupsResponse.struct_class = Types::ListTrafficDistributionGroupsResponse

    ListUseCasesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListUseCasesRequest.add_member(:integration_association_id, Shapes::ShapeRef.new(shape: IntegrationAssociationId, required: true, location: "uri", location_name: "IntegrationAssociationId"))
    ListUseCasesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListUseCasesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListUseCasesRequest.struct_class = Types::ListUseCasesRequest

    ListUseCasesResponse.add_member(:use_case_summary_list, Shapes::ShapeRef.new(shape: UseCaseSummaryList, location_name: "UseCaseSummaryList"))
    ListUseCasesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListUseCasesResponse.struct_class = Types::ListUseCasesResponse

    ListUserHierarchyGroupsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListUserHierarchyGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListUserHierarchyGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListUserHierarchyGroupsRequest.struct_class = Types::ListUserHierarchyGroupsRequest

    ListUserHierarchyGroupsResponse.add_member(:user_hierarchy_group_summary_list, Shapes::ShapeRef.new(shape: HierarchyGroupSummaryList, location_name: "UserHierarchyGroupSummaryList"))
    ListUserHierarchyGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListUserHierarchyGroupsResponse.struct_class = Types::ListUserHierarchyGroupsResponse

    ListUserProficienciesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListUserProficienciesRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "UserId"))
    ListUserProficienciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListUserProficienciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListUserProficienciesRequest.struct_class = Types::ListUserProficienciesRequest

    ListUserProficienciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListUserProficienciesResponse.add_member(:user_proficiency_list, Shapes::ShapeRef.new(shape: UserProficiencyList, location_name: "UserProficiencyList"))
    ListUserProficienciesResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    ListUserProficienciesResponse.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    ListUserProficienciesResponse.struct_class = Types::ListUserProficienciesResponse

    ListUsersRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListUsersRequest.struct_class = Types::ListUsersRequest

    ListUsersResponse.add_member(:user_summary_list, Shapes::ShapeRef.new(shape: UserSummaryList, location_name: "UserSummaryList"))
    ListUsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListUsersResponse.struct_class = Types::ListUsersResponse

    ListViewVersionsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: ViewsInstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListViewVersionsRequest.add_member(:view_id, Shapes::ShapeRef.new(shape: ViewId, required: true, location: "uri", location_name: "ViewId"))
    ListViewVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ViewsNextToken, location: "querystring", location_name: "nextToken"))
    ListViewVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListViewVersionsRequest.struct_class = Types::ListViewVersionsRequest

    ListViewVersionsResponse.add_member(:view_version_summary_list, Shapes::ShapeRef.new(shape: ViewVersionSummaryList, location_name: "ViewVersionSummaryList"))
    ListViewVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: ViewsNextToken, location_name: "NextToken"))
    ListViewVersionsResponse.struct_class = Types::ListViewVersionsResponse

    ListViewsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: ViewsInstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListViewsRequest.add_member(:type, Shapes::ShapeRef.new(shape: ViewType, location: "querystring", location_name: "type"))
    ListViewsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ViewsNextToken, location: "querystring", location_name: "nextToken"))
    ListViewsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults", metadata: {"box" => true}))
    ListViewsRequest.struct_class = Types::ListViewsRequest

    ListViewsResponse.add_member(:views_summary_list, Shapes::ShapeRef.new(shape: ViewsSummaryList, location_name: "ViewsSummaryList"))
    ListViewsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: ViewsNextToken, location_name: "NextToken"))
    ListViewsResponse.struct_class = Types::ListViewsResponse

    MatchCriteria.add_member(:agents_criteria, Shapes::ShapeRef.new(shape: AgentsCriteria, location_name: "AgentsCriteria"))
    MatchCriteria.struct_class = Types::MatchCriteria

    MaximumResultReturnedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    MaximumResultReturnedException.struct_class = Types::MaximumResultReturnedException

    MediaConcurrencies.member = Shapes::ShapeRef.new(shape: MediaConcurrency)

    MediaConcurrency.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, required: true, location_name: "Channel"))
    MediaConcurrency.add_member(:concurrency, Shapes::ShapeRef.new(shape: Concurrency, required: true, location_name: "Concurrency"))
    MediaConcurrency.add_member(:cross_channel_behavior, Shapes::ShapeRef.new(shape: CrossChannelBehavior, location_name: "CrossChannelBehavior"))
    MediaConcurrency.struct_class = Types::MediaConcurrency

    MediaPlacement.add_member(:audio_host_url, Shapes::ShapeRef.new(shape: URI, location_name: "AudioHostUrl"))
    MediaPlacement.add_member(:audio_fallback_url, Shapes::ShapeRef.new(shape: URI, location_name: "AudioFallbackUrl"))
    MediaPlacement.add_member(:signaling_url, Shapes::ShapeRef.new(shape: URI, location_name: "SignalingUrl"))
    MediaPlacement.add_member(:turn_control_url, Shapes::ShapeRef.new(shape: URI, location_name: "TurnControlUrl"))
    MediaPlacement.add_member(:event_ingestion_url, Shapes::ShapeRef.new(shape: URI, location_name: "EventIngestionUrl"))
    MediaPlacement.struct_class = Types::MediaPlacement

    Meeting.add_member(:media_region, Shapes::ShapeRef.new(shape: MediaRegion, location_name: "MediaRegion"))
    Meeting.add_member(:media_placement, Shapes::ShapeRef.new(shape: MediaPlacement, location_name: "MediaPlacement"))
    Meeting.add_member(:meeting_features, Shapes::ShapeRef.new(shape: MeetingFeaturesConfiguration, location_name: "MeetingFeatures"))
    Meeting.add_member(:meeting_id, Shapes::ShapeRef.new(shape: MeetingId, location_name: "MeetingId"))
    Meeting.struct_class = Types::Meeting

    MeetingFeaturesConfiguration.add_member(:audio, Shapes::ShapeRef.new(shape: AudioFeatures, location_name: "Audio"))
    MeetingFeaturesConfiguration.struct_class = Types::MeetingFeaturesConfiguration

    MetricDataCollectionsV2.member = Shapes::ShapeRef.new(shape: MetricDataV2)

    MetricDataV2.add_member(:metric, Shapes::ShapeRef.new(shape: MetricV2, location_name: "Metric"))
    MetricDataV2.add_member(:value, Shapes::ShapeRef.new(shape: Value, location_name: "Value", metadata: {"box" => true}))
    MetricDataV2.struct_class = Types::MetricDataV2

    MetricFilterV2.add_member(:metric_filter_key, Shapes::ShapeRef.new(shape: String, location_name: "MetricFilterKey"))
    MetricFilterV2.add_member(:metric_filter_values, Shapes::ShapeRef.new(shape: MetricFilterValueList, location_name: "MetricFilterValues"))
    MetricFilterV2.add_member(:negate, Shapes::ShapeRef.new(shape: Boolean, location_name: "Negate"))
    MetricFilterV2.struct_class = Types::MetricFilterV2

    MetricFilterValueList.member = Shapes::ShapeRef.new(shape: String)

    MetricFiltersV2List.member = Shapes::ShapeRef.new(shape: MetricFilterV2)

    MetricInterval.add_member(:interval, Shapes::ShapeRef.new(shape: IntervalPeriod, location_name: "Interval"))
    MetricInterval.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    MetricInterval.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    MetricInterval.struct_class = Types::MetricInterval

    MetricResultV2.add_member(:dimensions, Shapes::ShapeRef.new(shape: DimensionsV2Map, location_name: "Dimensions"))
    MetricResultV2.add_member(:metric_interval, Shapes::ShapeRef.new(shape: MetricInterval, location_name: "MetricInterval"))
    MetricResultV2.add_member(:collections, Shapes::ShapeRef.new(shape: MetricDataCollectionsV2, location_name: "Collections"))
    MetricResultV2.struct_class = Types::MetricResultV2

    MetricResultsV2.member = Shapes::ShapeRef.new(shape: MetricResultV2)

    MetricV2.add_member(:name, Shapes::ShapeRef.new(shape: MetricNameV2, location_name: "Name"))
    MetricV2.add_member(:threshold, Shapes::ShapeRef.new(shape: ThresholdCollections, location_name: "Threshold"))
    MetricV2.add_member(:metric_filters, Shapes::ShapeRef.new(shape: MetricFiltersV2List, location_name: "MetricFilters"))
    MetricV2.struct_class = Types::MetricV2

    MetricsV2.member = Shapes::ShapeRef.new(shape: MetricV2)

    MonitorContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    MonitorContactRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    MonitorContactRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: AgentResourceId, required: true, location_name: "UserId"))
    MonitorContactRequest.add_member(:allowed_monitor_capabilities, Shapes::ShapeRef.new(shape: AllowedMonitorCapabilities, location_name: "AllowedMonitorCapabilities"))
    MonitorContactRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    MonitorContactRequest.struct_class = Types::MonitorContactRequest

    MonitorContactResponse.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContactId"))
    MonitorContactResponse.add_member(:contact_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ContactArn"))
    MonitorContactResponse.struct_class = Types::MonitorContactResponse

    NameCriteria.add_member(:search_text, Shapes::ShapeRef.new(shape: SearchTextList, required: true, location_name: "SearchText"))
    NameCriteria.add_member(:match_type, Shapes::ShapeRef.new(shape: SearchContactsMatchType, required: true, location_name: "MatchType"))
    NameCriteria.struct_class = Types::NameCriteria

    NewSessionDetails.add_member(:supported_messaging_content_types, Shapes::ShapeRef.new(shape: SupportedMessagingContentTypes, location_name: "SupportedMessagingContentTypes"))
    NewSessionDetails.add_member(:participant_details, Shapes::ShapeRef.new(shape: ParticipantDetails, location_name: "ParticipantDetails"))
    NewSessionDetails.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    NewSessionDetails.add_member(:streaming_configuration, Shapes::ShapeRef.new(shape: ChatStreamingConfiguration, location_name: "StreamingConfiguration"))
    NewSessionDetails.struct_class = Types::NewSessionDetails

    NotificationRecipientType.add_member(:user_tags, Shapes::ShapeRef.new(shape: UserTagMap, location_name: "UserTags"))
    NotificationRecipientType.add_member(:user_ids, Shapes::ShapeRef.new(shape: UserIdList, location_name: "UserIds"))
    NotificationRecipientType.struct_class = Types::NotificationRecipientType

    NumberCondition.add_member(:field_name, Shapes::ShapeRef.new(shape: String, location_name: "FieldName"))
    NumberCondition.add_member(:min_value, Shapes::ShapeRef.new(shape: NullableProficiencyLimitValue, location_name: "MinValue"))
    NumberCondition.add_member(:max_value, Shapes::ShapeRef.new(shape: NullableProficiencyLimitValue, location_name: "MaxValue"))
    NumberCondition.add_member(:comparison_type, Shapes::ShapeRef.new(shape: NumberComparisonType, location_name: "ComparisonType"))
    NumberCondition.struct_class = Types::NumberCondition

    NumberReference.add_member(:name, Shapes::ShapeRef.new(shape: ReferenceKey, location_name: "Name"))
    NumberReference.add_member(:value, Shapes::ShapeRef.new(shape: ReferenceValue, location_name: "Value"))
    NumberReference.struct_class = Types::NumberReference

    NumericQuestionPropertyValueAutomation.add_member(:label, Shapes::ShapeRef.new(shape: NumericQuestionPropertyAutomationLabel, required: true, location_name: "Label"))
    NumericQuestionPropertyValueAutomation.struct_class = Types::NumericQuestionPropertyValueAutomation

    OperationalHour.add_member(:start, Shapes::ShapeRef.new(shape: OverrideTimeSlice, location_name: "Start"))
    OperationalHour.add_member(:end, Shapes::ShapeRef.new(shape: OverrideTimeSlice, location_name: "End"))
    OperationalHour.struct_class = Types::OperationalHour

    OperationalHours.member = Shapes::ShapeRef.new(shape: OperationalHour)

    OriginsList.member = Shapes::ShapeRef.new(shape: Origin)

    OutboundAdditionalRecipients.add_member(:cc_email_addresses, Shapes::ShapeRef.new(shape: EmailAddressRecipientList, location_name: "CcEmailAddresses"))
    OutboundAdditionalRecipients.struct_class = Types::OutboundAdditionalRecipients

    OutboundCallerConfig.add_member(:outbound_caller_id_name, Shapes::ShapeRef.new(shape: OutboundCallerIdName, location_name: "OutboundCallerIdName"))
    OutboundCallerConfig.add_member(:outbound_caller_id_number_id, Shapes::ShapeRef.new(shape: PhoneNumberId, location_name: "OutboundCallerIdNumberId"))
    OutboundCallerConfig.add_member(:outbound_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, location_name: "OutboundFlowId"))
    OutboundCallerConfig.struct_class = Types::OutboundCallerConfig

    OutboundContactNotPermittedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    OutboundContactNotPermittedException.struct_class = Types::OutboundContactNotPermittedException

    OutboundEmailConfig.add_member(:outbound_email_address_id, Shapes::ShapeRef.new(shape: EmailAddressId, location_name: "OutboundEmailAddressId"))
    OutboundEmailConfig.struct_class = Types::OutboundEmailConfig

    OutboundEmailContent.add_member(:message_source_type, Shapes::ShapeRef.new(shape: OutboundMessageSourceType, required: true, location_name: "MessageSourceType"))
    OutboundEmailContent.add_member(:templated_message_config, Shapes::ShapeRef.new(shape: TemplatedMessageConfig, location_name: "TemplatedMessageConfig"))
    OutboundEmailContent.add_member(:raw_message, Shapes::ShapeRef.new(shape: OutboundRawMessage, location_name: "RawMessage"))
    OutboundEmailContent.struct_class = Types::OutboundEmailContent

    OutboundRawMessage.add_member(:subject, Shapes::ShapeRef.new(shape: OutboundSubject, required: true, location_name: "Subject"))
    OutboundRawMessage.add_member(:body, Shapes::ShapeRef.new(shape: Body, required: true, location_name: "Body"))
    OutboundRawMessage.add_member(:content_type, Shapes::ShapeRef.new(shape: EmailMessageContentType, required: true, location_name: "ContentType"))
    OutboundRawMessage.struct_class = Types::OutboundRawMessage

    OutboundStrategy.add_member(:type, Shapes::ShapeRef.new(shape: OutboundStrategyType, required: true, location_name: "Type"))
    OutboundStrategy.add_member(:config, Shapes::ShapeRef.new(shape: OutboundStrategyConfig, location_name: "Config"))
    OutboundStrategy.struct_class = Types::OutboundStrategy

    OutboundStrategyConfig.add_member(:agent_first, Shapes::ShapeRef.new(shape: AgentFirst, location_name: "AgentFirst"))
    OutboundStrategyConfig.struct_class = Types::OutboundStrategyConfig

    OutputTypeNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    OutputTypeNotFoundException.struct_class = Types::OutputTypeNotFoundException

    OverrideTimeSlice.add_member(:hours, Shapes::ShapeRef.new(shape: Hours24Format, required: true, location_name: "Hours", metadata: {"box" => true}))
    OverrideTimeSlice.add_member(:minutes, Shapes::ShapeRef.new(shape: MinutesLimit60, required: true, location_name: "Minutes", metadata: {"box" => true}))
    OverrideTimeSlice.struct_class = Types::OverrideTimeSlice

    ParticipantCapabilities.add_member(:video, Shapes::ShapeRef.new(shape: VideoCapability, location_name: "Video"))
    ParticipantCapabilities.add_member(:screen_share, Shapes::ShapeRef.new(shape: ScreenShareCapability, location_name: "ScreenShare"))
    ParticipantCapabilities.struct_class = Types::ParticipantCapabilities

    ParticipantDetails.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "DisplayName"))
    ParticipantDetails.struct_class = Types::ParticipantDetails

    ParticipantDetailsToAdd.add_member(:participant_role, Shapes::ShapeRef.new(shape: ParticipantRole, location_name: "ParticipantRole"))
    ParticipantDetailsToAdd.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    ParticipantDetailsToAdd.add_member(:participant_capabilities, Shapes::ShapeRef.new(shape: ParticipantCapabilities, location_name: "ParticipantCapabilities"))
    ParticipantDetailsToAdd.struct_class = Types::ParticipantDetailsToAdd

    ParticipantMetrics.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantId, location_name: "ParticipantId"))
    ParticipantMetrics.add_member(:participant_type, Shapes::ShapeRef.new(shape: ParticipantType, location_name: "ParticipantType"))
    ParticipantMetrics.add_member(:conversation_abandon, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "ConversationAbandon"))
    ParticipantMetrics.add_member(:messages_sent, Shapes::ShapeRef.new(shape: Count, location_name: "MessagesSent"))
    ParticipantMetrics.add_member(:num_responses, Shapes::ShapeRef.new(shape: Count, location_name: "NumResponses"))
    ParticipantMetrics.add_member(:message_length_in_chars, Shapes::ShapeRef.new(shape: Count, location_name: "MessageLengthInChars"))
    ParticipantMetrics.add_member(:total_response_time_in_millis, Shapes::ShapeRef.new(shape: DurationMillis, location_name: "TotalResponseTimeInMillis"))
    ParticipantMetrics.add_member(:max_response_time_in_millis, Shapes::ShapeRef.new(shape: DurationMillis, location_name: "MaxResponseTimeInMillis"))
    ParticipantMetrics.add_member(:last_message_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastMessageTimestamp"))
    ParticipantMetrics.struct_class = Types::ParticipantMetrics

    ParticipantTimerConfigList.member = Shapes::ShapeRef.new(shape: ParticipantTimerConfiguration)

    ParticipantTimerConfiguration.add_member(:participant_role, Shapes::ShapeRef.new(shape: TimerEligibleParticipantRoles, required: true, location_name: "ParticipantRole"))
    ParticipantTimerConfiguration.add_member(:timer_type, Shapes::ShapeRef.new(shape: ParticipantTimerType, required: true, location_name: "TimerType"))
    ParticipantTimerConfiguration.add_member(:timer_value, Shapes::ShapeRef.new(shape: ParticipantTimerValue, required: true, location_name: "TimerValue"))
    ParticipantTimerConfiguration.struct_class = Types::ParticipantTimerConfiguration

    ParticipantTimerValue.add_member(:participant_timer_action, Shapes::ShapeRef.new(shape: ParticipantTimerAction, location_name: "ParticipantTimerAction"))
    ParticipantTimerValue.add_member(:participant_timer_duration_in_minutes, Shapes::ShapeRef.new(shape: ParticipantTimerDurationInMinutes, location_name: "ParticipantTimerDurationInMinutes"))
    ParticipantTimerValue.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ParticipantTimerValue.add_member_subclass(:participant_timer_action, Types::ParticipantTimerValue::ParticipantTimerAction)
    ParticipantTimerValue.add_member_subclass(:participant_timer_duration_in_minutes, Types::ParticipantTimerValue::ParticipantTimerDurationInMinutes)
    ParticipantTimerValue.add_member_subclass(:unknown, Types::ParticipantTimerValue::Unknown)
    ParticipantTimerValue.struct_class = Types::ParticipantTimerValue

    ParticipantTokenCredentials.add_member(:participant_token, Shapes::ShapeRef.new(shape: ParticipantToken, location_name: "ParticipantToken"))
    ParticipantTokenCredentials.add_member(:expiry, Shapes::ShapeRef.new(shape: ISO8601Datetime, location_name: "Expiry"))
    ParticipantTokenCredentials.struct_class = Types::ParticipantTokenCredentials

    PauseContactRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    PauseContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    PauseContactRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, location_name: "ContactFlowId"))
    PauseContactRequest.struct_class = Types::PauseContactRequest

    PauseContactResponse.struct_class = Types::PauseContactResponse

    PermissionsList.member = Shapes::ShapeRef.new(shape: SecurityProfilePermission)

    PersistentChat.add_member(:rehydration_type, Shapes::ShapeRef.new(shape: RehydrationType, location_name: "RehydrationType"))
    PersistentChat.add_member(:source_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "SourceContactId"))
    PersistentChat.struct_class = Types::PersistentChat

    PhoneNumberCountryCodes.member = Shapes::ShapeRef.new(shape: PhoneNumberCountryCode)

    PhoneNumberQuickConnectConfig.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "PhoneNumber"))
    PhoneNumberQuickConnectConfig.struct_class = Types::PhoneNumberQuickConnectConfig

    PhoneNumberStatus.add_member(:status, Shapes::ShapeRef.new(shape: PhoneNumberWorkflowStatus, location_name: "Status"))
    PhoneNumberStatus.add_member(:message, Shapes::ShapeRef.new(shape: PhoneNumberWorkflowMessage, location_name: "Message"))
    PhoneNumberStatus.struct_class = Types::PhoneNumberStatus

    PhoneNumberSummary.add_member(:id, Shapes::ShapeRef.new(shape: PhoneNumberId, location_name: "Id"))
    PhoneNumberSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    PhoneNumberSummary.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "PhoneNumber"))
    PhoneNumberSummary.add_member(:phone_number_type, Shapes::ShapeRef.new(shape: PhoneNumberType, location_name: "PhoneNumberType"))
    PhoneNumberSummary.add_member(:phone_number_country_code, Shapes::ShapeRef.new(shape: PhoneNumberCountryCode, location_name: "PhoneNumberCountryCode"))
    PhoneNumberSummary.struct_class = Types::PhoneNumberSummary

    PhoneNumberSummaryList.member = Shapes::ShapeRef.new(shape: PhoneNumberSummary)

    PhoneNumberTypes.member = Shapes::ShapeRef.new(shape: PhoneNumberType)

    PostAcceptTimeoutConfig.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: PostAcceptPreviewTimeoutDurationInSeconds, required: true, location_name: "DurationInSeconds"))
    PostAcceptTimeoutConfig.struct_class = Types::PostAcceptTimeoutConfig

    PotentialAudioQualityIssues.member = Shapes::ShapeRef.new(shape: PotentialAudioQualityIssue)

    PredefinedAttribute.add_member(:name, Shapes::ShapeRef.new(shape: PredefinedAttributeName, location_name: "Name"))
    PredefinedAttribute.add_member(:values, Shapes::ShapeRef.new(shape: PredefinedAttributeValues, location_name: "Values"))
    PredefinedAttribute.add_member(:purposes, Shapes::ShapeRef.new(shape: PredefinedAttributePurposeNameList, location_name: "Purposes"))
    PredefinedAttribute.add_member(:attribute_configuration, Shapes::ShapeRef.new(shape: PredefinedAttributeConfiguration, location_name: "AttributeConfiguration"))
    PredefinedAttribute.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    PredefinedAttribute.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    PredefinedAttribute.struct_class = Types::PredefinedAttribute

    PredefinedAttributeConfiguration.add_member(:enable_value_validation_on_association, Shapes::ShapeRef.new(shape: EnableValueValidationOnAssociation, location_name: "EnableValueValidationOnAssociation"))
    PredefinedAttributeConfiguration.add_member(:is_read_only, Shapes::ShapeRef.new(shape: IsReadOnly, location_name: "IsReadOnly"))
    PredefinedAttributeConfiguration.struct_class = Types::PredefinedAttributeConfiguration

    PredefinedAttributePurposeNameList.member = Shapes::ShapeRef.new(shape: PredefinedAttributePurposeName)

    PredefinedAttributeSearchConditionList.member = Shapes::ShapeRef.new(shape: PredefinedAttributeSearchCriteria)

    PredefinedAttributeSearchCriteria.add_member(:or_conditions, Shapes::ShapeRef.new(shape: PredefinedAttributeSearchConditionList, location_name: "OrConditions"))
    PredefinedAttributeSearchCriteria.add_member(:and_conditions, Shapes::ShapeRef.new(shape: PredefinedAttributeSearchConditionList, location_name: "AndConditions"))
    PredefinedAttributeSearchCriteria.add_member(:string_condition, Shapes::ShapeRef.new(shape: StringCondition, location_name: "StringCondition"))
    PredefinedAttributeSearchCriteria.struct_class = Types::PredefinedAttributeSearchCriteria

    PredefinedAttributeSearchSummaryList.member = Shapes::ShapeRef.new(shape: PredefinedAttribute)

    PredefinedAttributeStringValuesList.member = Shapes::ShapeRef.new(shape: PredefinedAttributeStringValue)

    PredefinedAttributeSummary.add_member(:name, Shapes::ShapeRef.new(shape: PredefinedAttributeName, location_name: "Name"))
    PredefinedAttributeSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    PredefinedAttributeSummary.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    PredefinedAttributeSummary.struct_class = Types::PredefinedAttributeSummary

    PredefinedAttributeSummaryList.member = Shapes::ShapeRef.new(shape: PredefinedAttributeSummary)

    PredefinedAttributeValues.add_member(:string_list, Shapes::ShapeRef.new(shape: PredefinedAttributeStringValuesList, location_name: "StringList"))
    PredefinedAttributeValues.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PredefinedAttributeValues.add_member_subclass(:string_list, Types::PredefinedAttributeValues::StringList)
    PredefinedAttributeValues.add_member_subclass(:unknown, Types::PredefinedAttributeValues::Unknown)
    PredefinedAttributeValues.struct_class = Types::PredefinedAttributeValues

    Preview.add_member(:post_accept_timeout_config, Shapes::ShapeRef.new(shape: PostAcceptTimeoutConfig, required: true, location_name: "PostAcceptTimeoutConfig"))
    Preview.add_member(:allowed_user_actions, Shapes::ShapeRef.new(shape: AllowedUserActions, required: true, location_name: "AllowedUserActions"))
    Preview.struct_class = Types::Preview

    ProblemDetail.add_member(:message, Shapes::ShapeRef.new(shape: ProblemMessageString, location_name: "message"))
    ProblemDetail.struct_class = Types::ProblemDetail

    Problems.member = Shapes::ShapeRef.new(shape: ProblemDetail)

    Prompt.add_member(:prompt_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "PromptARN"))
    Prompt.add_member(:prompt_id, Shapes::ShapeRef.new(shape: PromptId, location_name: "PromptId"))
    Prompt.add_member(:name, Shapes::ShapeRef.new(shape: CommonNameLength127, location_name: "Name"))
    Prompt.add_member(:description, Shapes::ShapeRef.new(shape: PromptDescription, location_name: "Description"))
    Prompt.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    Prompt.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    Prompt.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    Prompt.struct_class = Types::Prompt

    PromptList.member = Shapes::ShapeRef.new(shape: Prompt)

    PromptSearchConditionList.member = Shapes::ShapeRef.new(shape: PromptSearchCriteria)

    PromptSearchCriteria.add_member(:or_conditions, Shapes::ShapeRef.new(shape: PromptSearchConditionList, location_name: "OrConditions"))
    PromptSearchCriteria.add_member(:and_conditions, Shapes::ShapeRef.new(shape: PromptSearchConditionList, location_name: "AndConditions"))
    PromptSearchCriteria.add_member(:string_condition, Shapes::ShapeRef.new(shape: StringCondition, location_name: "StringCondition"))
    PromptSearchCriteria.struct_class = Types::PromptSearchCriteria

    PromptSearchFilter.add_member(:tag_filter, Shapes::ShapeRef.new(shape: ControlPlaneTagFilter, location_name: "TagFilter"))
    PromptSearchFilter.struct_class = Types::PromptSearchFilter

    PromptSummary.add_member(:id, Shapes::ShapeRef.new(shape: PromptId, location_name: "Id"))
    PromptSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    PromptSummary.add_member(:name, Shapes::ShapeRef.new(shape: PromptName, location_name: "Name"))
    PromptSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    PromptSummary.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    PromptSummary.struct_class = Types::PromptSummary

    PromptSummaryList.member = Shapes::ShapeRef.new(shape: PromptSummary)

    PropertyValidationException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    PropertyValidationException.add_member(:property_list, Shapes::ShapeRef.new(shape: PropertyValidationExceptionPropertyList, location_name: "PropertyList"))
    PropertyValidationException.struct_class = Types::PropertyValidationException

    PropertyValidationExceptionProperty.add_member(:property_path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "PropertyPath"))
    PropertyValidationExceptionProperty.add_member(:reason, Shapes::ShapeRef.new(shape: PropertyValidationExceptionReason, required: true, location_name: "Reason"))
    PropertyValidationExceptionProperty.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    PropertyValidationExceptionProperty.struct_class = Types::PropertyValidationExceptionProperty

    PropertyValidationExceptionPropertyList.member = Shapes::ShapeRef.new(shape: PropertyValidationExceptionProperty)

    PutUserStatusRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "UserId"))
    PutUserStatusRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    PutUserStatusRequest.add_member(:agent_status_id, Shapes::ShapeRef.new(shape: AgentStatusId, required: true, location_name: "AgentStatusId"))
    PutUserStatusRequest.struct_class = Types::PutUserStatusRequest

    PutUserStatusResponse.struct_class = Types::PutUserStatusResponse

    QualityMetrics.add_member(:agent, Shapes::ShapeRef.new(shape: AgentQualityMetrics, location_name: "Agent"))
    QualityMetrics.add_member(:customer, Shapes::ShapeRef.new(shape: CustomerQualityMetrics, location_name: "Customer"))
    QualityMetrics.struct_class = Types::QualityMetrics

    Queue.add_member(:name, Shapes::ShapeRef.new(shape: CommonNameLength127, location_name: "Name"))
    Queue.add_member(:queue_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "QueueArn"))
    Queue.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, location_name: "QueueId"))
    Queue.add_member(:description, Shapes::ShapeRef.new(shape: QueueDescription, location_name: "Description"))
    Queue.add_member(:outbound_caller_config, Shapes::ShapeRef.new(shape: OutboundCallerConfig, location_name: "OutboundCallerConfig"))
    Queue.add_member(:outbound_email_config, Shapes::ShapeRef.new(shape: OutboundEmailConfig, location_name: "OutboundEmailConfig"))
    Queue.add_member(:hours_of_operation_id, Shapes::ShapeRef.new(shape: HoursOfOperationId, location_name: "HoursOfOperationId"))
    Queue.add_member(:max_contacts, Shapes::ShapeRef.new(shape: QueueMaxContacts, location_name: "MaxContacts", metadata: {"box" => true}))
    Queue.add_member(:status, Shapes::ShapeRef.new(shape: QueueStatus, location_name: "Status"))
    Queue.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    Queue.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    Queue.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    Queue.struct_class = Types::Queue

    QueueIdList.member = Shapes::ShapeRef.new(shape: QueueId)

    QueueInfo.add_member(:id, Shapes::ShapeRef.new(shape: QueueId, location_name: "Id"))
    QueueInfo.add_member(:enqueue_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "EnqueueTimestamp"))
    QueueInfo.struct_class = Types::QueueInfo

    QueueInfoInput.add_member(:id, Shapes::ShapeRef.new(shape: QueueId, location_name: "Id"))
    QueueInfoInput.struct_class = Types::QueueInfoInput

    QueueQuickConnectConfig.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location_name: "QueueId"))
    QueueQuickConnectConfig.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, required: true, location_name: "ContactFlowId"))
    QueueQuickConnectConfig.struct_class = Types::QueueQuickConnectConfig

    QueueReference.add_member(:id, Shapes::ShapeRef.new(shape: QueueId, location_name: "Id"))
    QueueReference.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    QueueReference.struct_class = Types::QueueReference

    QueueSearchConditionList.member = Shapes::ShapeRef.new(shape: QueueSearchCriteria)

    QueueSearchCriteria.add_member(:or_conditions, Shapes::ShapeRef.new(shape: QueueSearchConditionList, location_name: "OrConditions"))
    QueueSearchCriteria.add_member(:and_conditions, Shapes::ShapeRef.new(shape: QueueSearchConditionList, location_name: "AndConditions"))
    QueueSearchCriteria.add_member(:string_condition, Shapes::ShapeRef.new(shape: StringCondition, location_name: "StringCondition"))
    QueueSearchCriteria.add_member(:queue_type_condition, Shapes::ShapeRef.new(shape: SearchableQueueType, location_name: "QueueTypeCondition"))
    QueueSearchCriteria.struct_class = Types::QueueSearchCriteria

    QueueSearchFilter.add_member(:tag_filter, Shapes::ShapeRef.new(shape: ControlPlaneTagFilter, location_name: "TagFilter"))
    QueueSearchFilter.struct_class = Types::QueueSearchFilter

    QueueSearchSummaryList.member = Shapes::ShapeRef.new(shape: Queue)

    QueueSummary.add_member(:id, Shapes::ShapeRef.new(shape: QueueId, location_name: "Id"))
    QueueSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    QueueSummary.add_member(:name, Shapes::ShapeRef.new(shape: QueueName, location_name: "Name"))
    QueueSummary.add_member(:queue_type, Shapes::ShapeRef.new(shape: QueueType, location_name: "QueueType"))
    QueueSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    QueueSummary.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    QueueSummary.struct_class = Types::QueueSummary

    QueueSummaryList.member = Shapes::ShapeRef.new(shape: QueueSummary)

    QueueTypes.member = Shapes::ShapeRef.new(shape: QueueType)

    Queues.member = Shapes::ShapeRef.new(shape: QueueId)

    QuickConnect.add_member(:quick_connect_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "QuickConnectARN"))
    QuickConnect.add_member(:quick_connect_id, Shapes::ShapeRef.new(shape: QuickConnectId, location_name: "QuickConnectId"))
    QuickConnect.add_member(:name, Shapes::ShapeRef.new(shape: QuickConnectName, location_name: "Name"))
    QuickConnect.add_member(:description, Shapes::ShapeRef.new(shape: QuickConnectDescription, location_name: "Description"))
    QuickConnect.add_member(:quick_connect_config, Shapes::ShapeRef.new(shape: QuickConnectConfig, location_name: "QuickConnectConfig"))
    QuickConnect.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    QuickConnect.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    QuickConnect.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    QuickConnect.struct_class = Types::QuickConnect

    QuickConnectConfig.add_member(:quick_connect_type, Shapes::ShapeRef.new(shape: QuickConnectType, required: true, location_name: "QuickConnectType"))
    QuickConnectConfig.add_member(:user_config, Shapes::ShapeRef.new(shape: UserQuickConnectConfig, location_name: "UserConfig"))
    QuickConnectConfig.add_member(:queue_config, Shapes::ShapeRef.new(shape: QueueQuickConnectConfig, location_name: "QueueConfig"))
    QuickConnectConfig.add_member(:phone_config, Shapes::ShapeRef.new(shape: PhoneNumberQuickConnectConfig, location_name: "PhoneConfig"))
    QuickConnectConfig.struct_class = Types::QuickConnectConfig

    QuickConnectSearchConditionList.member = Shapes::ShapeRef.new(shape: QuickConnectSearchCriteria)

    QuickConnectSearchCriteria.add_member(:or_conditions, Shapes::ShapeRef.new(shape: QuickConnectSearchConditionList, location_name: "OrConditions"))
    QuickConnectSearchCriteria.add_member(:and_conditions, Shapes::ShapeRef.new(shape: QuickConnectSearchConditionList, location_name: "AndConditions"))
    QuickConnectSearchCriteria.add_member(:string_condition, Shapes::ShapeRef.new(shape: StringCondition, location_name: "StringCondition"))
    QuickConnectSearchCriteria.struct_class = Types::QuickConnectSearchCriteria

    QuickConnectSearchFilter.add_member(:tag_filter, Shapes::ShapeRef.new(shape: ControlPlaneTagFilter, location_name: "TagFilter"))
    QuickConnectSearchFilter.struct_class = Types::QuickConnectSearchFilter

    QuickConnectSearchSummaryList.member = Shapes::ShapeRef.new(shape: QuickConnect)

    QuickConnectSummary.add_member(:id, Shapes::ShapeRef.new(shape: QuickConnectId, location_name: "Id"))
    QuickConnectSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    QuickConnectSummary.add_member(:name, Shapes::ShapeRef.new(shape: QuickConnectName, location_name: "Name"))
    QuickConnectSummary.add_member(:quick_connect_type, Shapes::ShapeRef.new(shape: QuickConnectType, location_name: "QuickConnectType"))
    QuickConnectSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    QuickConnectSummary.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    QuickConnectSummary.struct_class = Types::QuickConnectSummary

    QuickConnectSummaryList.member = Shapes::ShapeRef.new(shape: QuickConnectSummary)

    QuickConnectTypes.member = Shapes::ShapeRef.new(shape: QuickConnectType)

    QuickConnectsList.member = Shapes::ShapeRef.new(shape: QuickConnectId)

    Range.add_member(:min_proficiency_level, Shapes::ShapeRef.new(shape: NullableProficiencyLevel, location_name: "MinProficiencyLevel"))
    Range.add_member(:max_proficiency_level, Shapes::ShapeRef.new(shape: NullableProficiencyLevel, location_name: "MaxProficiencyLevel"))
    Range.struct_class = Types::Range

    ReadOnlyFieldInfo.add_member(:id, Shapes::ShapeRef.new(shape: TaskTemplateFieldIdentifier, location_name: "Id"))
    ReadOnlyFieldInfo.struct_class = Types::ReadOnlyFieldInfo

    ReadOnlyTaskTemplateFields.member = Shapes::ShapeRef.new(shape: ReadOnlyFieldInfo)

    RealTimeContactAnalysisAttachment.add_member(:attachment_name, Shapes::ShapeRef.new(shape: AttachmentName, required: true, location_name: "AttachmentName"))
    RealTimeContactAnalysisAttachment.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, location_name: "ContentType"))
    RealTimeContactAnalysisAttachment.add_member(:attachment_id, Shapes::ShapeRef.new(shape: ArtifactId, required: true, location_name: "AttachmentId"))
    RealTimeContactAnalysisAttachment.add_member(:status, Shapes::ShapeRef.new(shape: ArtifactStatus, location_name: "Status"))
    RealTimeContactAnalysisAttachment.struct_class = Types::RealTimeContactAnalysisAttachment

    RealTimeContactAnalysisAttachments.member = Shapes::ShapeRef.new(shape: RealTimeContactAnalysisAttachment)

    RealTimeContactAnalysisCategoryDetails.add_member(:points_of_interest, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisPointsOfInterest, required: true, location_name: "PointsOfInterest"))
    RealTimeContactAnalysisCategoryDetails.struct_class = Types::RealTimeContactAnalysisCategoryDetails

    RealTimeContactAnalysisCharacterInterval.add_member(:begin_offset_char, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisOffset, required: true, location_name: "BeginOffsetChar"))
    RealTimeContactAnalysisCharacterInterval.add_member(:end_offset_char, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisOffset, required: true, location_name: "EndOffsetChar"))
    RealTimeContactAnalysisCharacterInterval.struct_class = Types::RealTimeContactAnalysisCharacterInterval

    RealTimeContactAnalysisCharacterIntervals.member = Shapes::ShapeRef.new(shape: RealTimeContactAnalysisCharacterInterval)

    RealTimeContactAnalysisIssueDetected.add_member(:transcript_items, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisTranscriptItemsWithContent, required: true, location_name: "TranscriptItems"))
    RealTimeContactAnalysisIssueDetected.struct_class = Types::RealTimeContactAnalysisIssueDetected

    RealTimeContactAnalysisIssuesDetected.member = Shapes::ShapeRef.new(shape: RealTimeContactAnalysisIssueDetected)

    RealTimeContactAnalysisMatchedDetails.key = Shapes::ShapeRef.new(shape: RealTimeContactAnalysisCategoryName)
    RealTimeContactAnalysisMatchedDetails.value = Shapes::ShapeRef.new(shape: RealTimeContactAnalysisCategoryDetails)

    RealTimeContactAnalysisPointOfInterest.add_member(:transcript_items, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisTranscriptItemsWithCharacterOffsets, location_name: "TranscriptItems"))
    RealTimeContactAnalysisPointOfInterest.struct_class = Types::RealTimeContactAnalysisPointOfInterest

    RealTimeContactAnalysisPointsOfInterest.member = Shapes::ShapeRef.new(shape: RealTimeContactAnalysisPointOfInterest)

    RealTimeContactAnalysisSegmentAttachments.add_member(:id, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisId256, required: true, location_name: "Id"))
    RealTimeContactAnalysisSegmentAttachments.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantId, required: true, location_name: "ParticipantId"))
    RealTimeContactAnalysisSegmentAttachments.add_member(:participant_role, Shapes::ShapeRef.new(shape: ParticipantRole, required: true, location_name: "ParticipantRole"))
    RealTimeContactAnalysisSegmentAttachments.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    RealTimeContactAnalysisSegmentAttachments.add_member(:attachments, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisAttachments, required: true, location_name: "Attachments"))
    RealTimeContactAnalysisSegmentAttachments.add_member(:time, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisTimeData, required: true, location_name: "Time"))
    RealTimeContactAnalysisSegmentAttachments.struct_class = Types::RealTimeContactAnalysisSegmentAttachments

    RealTimeContactAnalysisSegmentCategories.add_member(:matched_details, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisMatchedDetails, required: true, location_name: "MatchedDetails"))
    RealTimeContactAnalysisSegmentCategories.struct_class = Types::RealTimeContactAnalysisSegmentCategories

    RealTimeContactAnalysisSegmentEvent.add_member(:id, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisId256, required: true, location_name: "Id"))
    RealTimeContactAnalysisSegmentEvent.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantId, location_name: "ParticipantId"))
    RealTimeContactAnalysisSegmentEvent.add_member(:participant_role, Shapes::ShapeRef.new(shape: ParticipantRole, location_name: "ParticipantRole"))
    RealTimeContactAnalysisSegmentEvent.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    RealTimeContactAnalysisSegmentEvent.add_member(:event_type, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisEventType, required: true, location_name: "EventType"))
    RealTimeContactAnalysisSegmentEvent.add_member(:time, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisTimeData, required: true, location_name: "Time"))
    RealTimeContactAnalysisSegmentEvent.struct_class = Types::RealTimeContactAnalysisSegmentEvent

    RealTimeContactAnalysisSegmentIssues.add_member(:issues_detected, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisIssuesDetected, required: true, location_name: "IssuesDetected"))
    RealTimeContactAnalysisSegmentIssues.struct_class = Types::RealTimeContactAnalysisSegmentIssues

    RealTimeContactAnalysisSegmentPostContactSummary.add_member(:content, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisPostContactSummaryContent, location_name: "Content"))
    RealTimeContactAnalysisSegmentPostContactSummary.add_member(:status, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisPostContactSummaryStatus, required: true, location_name: "Status"))
    RealTimeContactAnalysisSegmentPostContactSummary.add_member(:failure_code, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisPostContactSummaryFailureCode, location_name: "FailureCode"))
    RealTimeContactAnalysisSegmentPostContactSummary.struct_class = Types::RealTimeContactAnalysisSegmentPostContactSummary

    RealTimeContactAnalysisSegmentTranscript.add_member(:id, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisId256, required: true, location_name: "Id"))
    RealTimeContactAnalysisSegmentTranscript.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantId, required: true, location_name: "ParticipantId"))
    RealTimeContactAnalysisSegmentTranscript.add_member(:participant_role, Shapes::ShapeRef.new(shape: ParticipantRole, required: true, location_name: "ParticipantRole"))
    RealTimeContactAnalysisSegmentTranscript.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    RealTimeContactAnalysisSegmentTranscript.add_member(:content, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisTranscriptContent, required: true, location_name: "Content"))
    RealTimeContactAnalysisSegmentTranscript.add_member(:content_type, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisContentType, location_name: "ContentType"))
    RealTimeContactAnalysisSegmentTranscript.add_member(:time, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisTimeData, required: true, location_name: "Time"))
    RealTimeContactAnalysisSegmentTranscript.add_member(:redaction, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisTranscriptItemRedaction, location_name: "Redaction"))
    RealTimeContactAnalysisSegmentTranscript.add_member(:sentiment, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisSentimentLabel, location_name: "Sentiment"))
    RealTimeContactAnalysisSegmentTranscript.struct_class = Types::RealTimeContactAnalysisSegmentTranscript

    RealTimeContactAnalysisSegmentTypes.member = Shapes::ShapeRef.new(shape: RealTimeContactAnalysisSegmentType)

    RealTimeContactAnalysisTimeData.add_member(:absolute_time, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisTimeInstant, location_name: "AbsoluteTime"))
    RealTimeContactAnalysisTimeData.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RealTimeContactAnalysisTimeData.add_member_subclass(:absolute_time, Types::RealTimeContactAnalysisTimeData::AbsoluteTime)
    RealTimeContactAnalysisTimeData.add_member_subclass(:unknown, Types::RealTimeContactAnalysisTimeData::Unknown)
    RealTimeContactAnalysisTimeData.struct_class = Types::RealTimeContactAnalysisTimeData

    RealTimeContactAnalysisTranscriptItemRedaction.add_member(:character_offsets, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisCharacterIntervals, location_name: "CharacterOffsets"))
    RealTimeContactAnalysisTranscriptItemRedaction.struct_class = Types::RealTimeContactAnalysisTranscriptItemRedaction

    RealTimeContactAnalysisTranscriptItemWithCharacterOffsets.add_member(:id, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisId256, required: true, location_name: "Id"))
    RealTimeContactAnalysisTranscriptItemWithCharacterOffsets.add_member(:character_offsets, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisCharacterInterval, location_name: "CharacterOffsets"))
    RealTimeContactAnalysisTranscriptItemWithCharacterOffsets.struct_class = Types::RealTimeContactAnalysisTranscriptItemWithCharacterOffsets

    RealTimeContactAnalysisTranscriptItemWithContent.add_member(:content, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisTranscriptContent, location_name: "Content"))
    RealTimeContactAnalysisTranscriptItemWithContent.add_member(:id, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisId256, required: true, location_name: "Id"))
    RealTimeContactAnalysisTranscriptItemWithContent.add_member(:character_offsets, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisCharacterInterval, location_name: "CharacterOffsets"))
    RealTimeContactAnalysisTranscriptItemWithContent.struct_class = Types::RealTimeContactAnalysisTranscriptItemWithContent

    RealTimeContactAnalysisTranscriptItemsWithCharacterOffsets.member = Shapes::ShapeRef.new(shape: RealTimeContactAnalysisTranscriptItemWithCharacterOffsets)

    RealTimeContactAnalysisTranscriptItemsWithContent.member = Shapes::ShapeRef.new(shape: RealTimeContactAnalysisTranscriptItemWithContent)

    RealtimeContactAnalysisSegment.add_member(:transcript, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisSegmentTranscript, location_name: "Transcript"))
    RealtimeContactAnalysisSegment.add_member(:categories, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisSegmentCategories, location_name: "Categories"))
    RealtimeContactAnalysisSegment.add_member(:issues, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisSegmentIssues, location_name: "Issues"))
    RealtimeContactAnalysisSegment.add_member(:event, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisSegmentEvent, location_name: "Event"))
    RealtimeContactAnalysisSegment.add_member(:attachments, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisSegmentAttachments, location_name: "Attachments"))
    RealtimeContactAnalysisSegment.add_member(:post_contact_summary, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisSegmentPostContactSummary, location_name: "PostContactSummary"))
    RealtimeContactAnalysisSegment.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RealtimeContactAnalysisSegment.add_member_subclass(:transcript, Types::RealtimeContactAnalysisSegment::Transcript)
    RealtimeContactAnalysisSegment.add_member_subclass(:categories, Types::RealtimeContactAnalysisSegment::Categories)
    RealtimeContactAnalysisSegment.add_member_subclass(:issues, Types::RealtimeContactAnalysisSegment::Issues)
    RealtimeContactAnalysisSegment.add_member_subclass(:event, Types::RealtimeContactAnalysisSegment::Event)
    RealtimeContactAnalysisSegment.add_member_subclass(:attachments, Types::RealtimeContactAnalysisSegment::Attachments)
    RealtimeContactAnalysisSegment.add_member_subclass(:post_contact_summary, Types::RealtimeContactAnalysisSegment::PostContactSummary)
    RealtimeContactAnalysisSegment.add_member_subclass(:unknown, Types::RealtimeContactAnalysisSegment::Unknown)
    RealtimeContactAnalysisSegment.struct_class = Types::RealtimeContactAnalysisSegment

    RealtimeContactAnalysisSegments.member = Shapes::ShapeRef.new(shape: RealtimeContactAnalysisSegment)

    RecordingInfo.add_member(:storage_type, Shapes::ShapeRef.new(shape: StorageType, location_name: "StorageType"))
    RecordingInfo.add_member(:location, Shapes::ShapeRef.new(shape: RecordingLocation, location_name: "Location"))
    RecordingInfo.add_member(:media_stream_type, Shapes::ShapeRef.new(shape: MediaStreamType, location_name: "MediaStreamType"))
    RecordingInfo.add_member(:participant_type, Shapes::ShapeRef.new(shape: ParticipantType, location_name: "ParticipantType"))
    RecordingInfo.add_member(:fragment_start_number, Shapes::ShapeRef.new(shape: FragmentNumber, location_name: "FragmentStartNumber"))
    RecordingInfo.add_member(:fragment_stop_number, Shapes::ShapeRef.new(shape: FragmentNumber, location_name: "FragmentStopNumber"))
    RecordingInfo.add_member(:start_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "StartTimestamp"))
    RecordingInfo.add_member(:stop_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "StopTimestamp"))
    RecordingInfo.add_member(:status, Shapes::ShapeRef.new(shape: RecordingStatus, location_name: "Status"))
    RecordingInfo.add_member(:deletion_reason, Shapes::ShapeRef.new(shape: RecordingDeletionReason, location_name: "DeletionReason"))
    RecordingInfo.struct_class = Types::RecordingInfo

    Recordings.member = Shapes::ShapeRef.new(shape: RecordingInfo)

    Reference.add_member(:value, Shapes::ShapeRef.new(shape: ReferenceValue, location_name: "Value"))
    Reference.add_member(:type, Shapes::ShapeRef.new(shape: ReferenceType, required: true, location_name: "Type"))
    Reference.add_member(:status, Shapes::ShapeRef.new(shape: ReferenceStatus, location_name: "Status"))
    Reference.add_member(:arn, Shapes::ShapeRef.new(shape: ReferenceArn, location_name: "Arn"))
    Reference.add_member(:status_reason, Shapes::ShapeRef.new(shape: ReferenceStatusReason, location_name: "StatusReason"))
    Reference.struct_class = Types::Reference

    ReferenceSummary.add_member(:url, Shapes::ShapeRef.new(shape: UrlReference, location_name: "Url"))
    ReferenceSummary.add_member(:attachment, Shapes::ShapeRef.new(shape: AttachmentReference, location_name: "Attachment"))
    ReferenceSummary.add_member(:email_message, Shapes::ShapeRef.new(shape: EmailMessageReference, location_name: "EmailMessage"))
    ReferenceSummary.add_member(:string, Shapes::ShapeRef.new(shape: StringReference, location_name: "String"))
    ReferenceSummary.add_member(:number, Shapes::ShapeRef.new(shape: NumberReference, location_name: "Number"))
    ReferenceSummary.add_member(:date, Shapes::ShapeRef.new(shape: DateReference, location_name: "Date"))
    ReferenceSummary.add_member(:email, Shapes::ShapeRef.new(shape: EmailReference, location_name: "Email"))
    ReferenceSummary.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ReferenceSummary.add_member_subclass(:url, Types::ReferenceSummary::Url)
    ReferenceSummary.add_member_subclass(:attachment, Types::ReferenceSummary::Attachment)
    ReferenceSummary.add_member_subclass(:email_message, Types::ReferenceSummary::EmailMessage)
    ReferenceSummary.add_member_subclass(:string, Types::ReferenceSummary::String)
    ReferenceSummary.add_member_subclass(:number, Types::ReferenceSummary::Number)
    ReferenceSummary.add_member_subclass(:date, Types::ReferenceSummary::Date)
    ReferenceSummary.add_member_subclass(:email, Types::ReferenceSummary::Email)
    ReferenceSummary.add_member_subclass(:unknown, Types::ReferenceSummary::Unknown)
    ReferenceSummary.struct_class = Types::ReferenceSummary

    ReferenceSummaryList.member = Shapes::ShapeRef.new(shape: ReferenceSummary)

    ReferenceTypes.member = Shapes::ShapeRef.new(shape: ReferenceType)

    ReleasePhoneNumberRequest.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: PhoneNumberId, required: true, location: "uri", location_name: "PhoneNumberId"))
    ReleasePhoneNumberRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    ReleasePhoneNumberRequest.struct_class = Types::ReleasePhoneNumberRequest

    ReplicateInstanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceIdOrArn, required: true, location: "uri", location_name: "InstanceId"))
    ReplicateInstanceRequest.add_member(:replica_region, Shapes::ShapeRef.new(shape: AwsRegion, required: true, location_name: "ReplicaRegion"))
    ReplicateInstanceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    ReplicateInstanceRequest.add_member(:replica_alias, Shapes::ShapeRef.new(shape: DirectoryAlias, required: true, location_name: "ReplicaAlias"))
    ReplicateInstanceRequest.struct_class = Types::ReplicateInstanceRequest

    ReplicateInstanceResponse.add_member(:id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "Id"))
    ReplicateInstanceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    ReplicateInstanceResponse.struct_class = Types::ReplicateInstanceResponse

    ReplicationConfiguration.add_member(:replication_status_summary_list, Shapes::ShapeRef.new(shape: ReplicationStatusSummaryList, location_name: "ReplicationStatusSummaryList"))
    ReplicationConfiguration.add_member(:source_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "SourceRegion"))
    ReplicationConfiguration.add_member(:global_sign_in_endpoint, Shapes::ShapeRef.new(shape: GlobalSignInEndpoint, location_name: "GlobalSignInEndpoint"))
    ReplicationConfiguration.struct_class = Types::ReplicationConfiguration

    ReplicationStatusSummary.add_member(:region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "Region"))
    ReplicationStatusSummary.add_member(:replication_status, Shapes::ShapeRef.new(shape: InstanceReplicationStatus, location_name: "ReplicationStatus"))
    ReplicationStatusSummary.add_member(:replication_status_reason, Shapes::ShapeRef.new(shape: ReplicationStatusReason, location_name: "ReplicationStatusReason"))
    ReplicationStatusSummary.struct_class = Types::ReplicationStatusSummary

    ReplicationStatusSummaryList.member = Shapes::ShapeRef.new(shape: ReplicationStatusSummary)

    RequiredFieldInfo.add_member(:id, Shapes::ShapeRef.new(shape: TaskTemplateFieldIdentifier, location_name: "Id"))
    RequiredFieldInfo.struct_class = Types::RequiredFieldInfo

    RequiredTaskTemplateFields.member = Shapes::ShapeRef.new(shape: RequiredFieldInfo)

    ResourceConflictException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ResourceConflictException.struct_class = Types::ResourceConflictException

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ResourceInUseException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceInUseException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ARN, location_name: "ResourceId"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceNotReadyException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ResourceNotReadyException.struct_class = Types::ResourceNotReadyException

    ResourceTagsSearchCriteria.add_member(:tag_search_condition, Shapes::ShapeRef.new(shape: TagSearchCondition, location_name: "TagSearchCondition"))
    ResourceTagsSearchCriteria.struct_class = Types::ResourceTagsSearchCriteria

    ResourceTypeList.member = Shapes::ShapeRef.new(shape: String)

    ResumeContactRecordingRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    ResumeContactRecordingRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    ResumeContactRecordingRequest.add_member(:initial_contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "InitialContactId"))
    ResumeContactRecordingRequest.add_member(:contact_recording_type, Shapes::ShapeRef.new(shape: ContactRecordingType, location_name: "ContactRecordingType"))
    ResumeContactRecordingRequest.struct_class = Types::ResumeContactRecordingRequest

    ResumeContactRecordingResponse.struct_class = Types::ResumeContactRecordingResponse

    ResumeContactRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    ResumeContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    ResumeContactRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, location_name: "ContactFlowId"))
    ResumeContactRequest.struct_class = Types::ResumeContactRequest

    ResumeContactResponse.struct_class = Types::ResumeContactResponse

    RoutingCriteria.add_member(:steps, Shapes::ShapeRef.new(shape: Steps, location_name: "Steps"))
    RoutingCriteria.add_member(:activation_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "ActivationTimestamp"))
    RoutingCriteria.add_member(:index, Shapes::ShapeRef.new(shape: Index, location_name: "Index"))
    RoutingCriteria.struct_class = Types::RoutingCriteria

    RoutingCriteriaInput.add_member(:steps, Shapes::ShapeRef.new(shape: RoutingCriteriaInputSteps, location_name: "Steps"))
    RoutingCriteriaInput.struct_class = Types::RoutingCriteriaInput

    RoutingCriteriaInputStep.add_member(:expiry, Shapes::ShapeRef.new(shape: RoutingCriteriaInputStepExpiry, location_name: "Expiry"))
    RoutingCriteriaInputStep.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, location_name: "Expression"))
    RoutingCriteriaInputStep.struct_class = Types::RoutingCriteriaInputStep

    RoutingCriteriaInputStepExpiry.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: "DurationInSeconds"))
    RoutingCriteriaInputStepExpiry.struct_class = Types::RoutingCriteriaInputStepExpiry

    RoutingCriteriaInputSteps.member = Shapes::ShapeRef.new(shape: RoutingCriteriaInputStep)

    RoutingExpressions.member = Shapes::ShapeRef.new(shape: RoutingExpression)

    RoutingProfile.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    RoutingProfile.add_member(:name, Shapes::ShapeRef.new(shape: RoutingProfileName, location_name: "Name"))
    RoutingProfile.add_member(:routing_profile_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RoutingProfileArn"))
    RoutingProfile.add_member(:routing_profile_id, Shapes::ShapeRef.new(shape: RoutingProfileId, location_name: "RoutingProfileId"))
    RoutingProfile.add_member(:description, Shapes::ShapeRef.new(shape: RoutingProfileDescription, location_name: "Description"))
    RoutingProfile.add_member(:media_concurrencies, Shapes::ShapeRef.new(shape: MediaConcurrencies, location_name: "MediaConcurrencies"))
    RoutingProfile.add_member(:default_outbound_queue_id, Shapes::ShapeRef.new(shape: QueueId, location_name: "DefaultOutboundQueueId"))
    RoutingProfile.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    RoutingProfile.add_member(:number_of_associated_queues, Shapes::ShapeRef.new(shape: Long, location_name: "NumberOfAssociatedQueues"))
    RoutingProfile.add_member(:number_of_associated_manual_assignment_queues, Shapes::ShapeRef.new(shape: Long, location_name: "NumberOfAssociatedManualAssignmentQueues"))
    RoutingProfile.add_member(:number_of_associated_users, Shapes::ShapeRef.new(shape: Long, location_name: "NumberOfAssociatedUsers"))
    RoutingProfile.add_member(:agent_availability_timer, Shapes::ShapeRef.new(shape: AgentAvailabilityTimer, location_name: "AgentAvailabilityTimer"))
    RoutingProfile.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    RoutingProfile.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    RoutingProfile.add_member(:is_default, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsDefault"))
    RoutingProfile.add_member(:associated_queue_ids, Shapes::ShapeRef.new(shape: AssociatedQueueIdList, location_name: "AssociatedQueueIds"))
    RoutingProfile.add_member(:associated_manual_assignment_queue_ids, Shapes::ShapeRef.new(shape: AssociatedQueueIdList, location_name: "AssociatedManualAssignmentQueueIds"))
    RoutingProfile.struct_class = Types::RoutingProfile

    RoutingProfileList.member = Shapes::ShapeRef.new(shape: RoutingProfile)

    RoutingProfileManualAssignmentQueueConfig.add_member(:queue_reference, Shapes::ShapeRef.new(shape: RoutingProfileQueueReference, required: true, location_name: "QueueReference"))
    RoutingProfileManualAssignmentQueueConfig.struct_class = Types::RoutingProfileManualAssignmentQueueConfig

    RoutingProfileManualAssignmentQueueConfigList.member = Shapes::ShapeRef.new(shape: RoutingProfileManualAssignmentQueueConfig)

    RoutingProfileManualAssignmentQueueConfigSummary.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location_name: "QueueId"))
    RoutingProfileManualAssignmentQueueConfigSummary.add_member(:queue_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "QueueArn"))
    RoutingProfileManualAssignmentQueueConfigSummary.add_member(:queue_name, Shapes::ShapeRef.new(shape: QueueName, required: true, location_name: "QueueName"))
    RoutingProfileManualAssignmentQueueConfigSummary.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, required: true, location_name: "Channel"))
    RoutingProfileManualAssignmentQueueConfigSummary.struct_class = Types::RoutingProfileManualAssignmentQueueConfigSummary

    RoutingProfileManualAssignmentQueueConfigSummaryList.member = Shapes::ShapeRef.new(shape: RoutingProfileManualAssignmentQueueConfigSummary)

    RoutingProfileQueueConfig.add_member(:queue_reference, Shapes::ShapeRef.new(shape: RoutingProfileQueueReference, required: true, location_name: "QueueReference"))
    RoutingProfileQueueConfig.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, required: true, location_name: "Priority", metadata: {"box" => true}))
    RoutingProfileQueueConfig.add_member(:delay, Shapes::ShapeRef.new(shape: Delay, required: true, location_name: "Delay", metadata: {"box" => true}))
    RoutingProfileQueueConfig.struct_class = Types::RoutingProfileQueueConfig

    RoutingProfileQueueConfigList.member = Shapes::ShapeRef.new(shape: RoutingProfileQueueConfig)

    RoutingProfileQueueConfigSummary.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location_name: "QueueId"))
    RoutingProfileQueueConfigSummary.add_member(:queue_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "QueueArn"))
    RoutingProfileQueueConfigSummary.add_member(:queue_name, Shapes::ShapeRef.new(shape: QueueName, required: true, location_name: "QueueName"))
    RoutingProfileQueueConfigSummary.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, required: true, location_name: "Priority"))
    RoutingProfileQueueConfigSummary.add_member(:delay, Shapes::ShapeRef.new(shape: Delay, required: true, location_name: "Delay"))
    RoutingProfileQueueConfigSummary.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, required: true, location_name: "Channel"))
    RoutingProfileQueueConfigSummary.struct_class = Types::RoutingProfileQueueConfigSummary

    RoutingProfileQueueConfigSummaryList.member = Shapes::ShapeRef.new(shape: RoutingProfileQueueConfigSummary)

    RoutingProfileQueueReference.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location_name: "QueueId"))
    RoutingProfileQueueReference.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, required: true, location_name: "Channel"))
    RoutingProfileQueueReference.struct_class = Types::RoutingProfileQueueReference

    RoutingProfileQueueReferenceList.member = Shapes::ShapeRef.new(shape: RoutingProfileQueueReference)

    RoutingProfileReference.add_member(:id, Shapes::ShapeRef.new(shape: RoutingProfileId, location_name: "Id"))
    RoutingProfileReference.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    RoutingProfileReference.struct_class = Types::RoutingProfileReference

    RoutingProfileSearchConditionList.member = Shapes::ShapeRef.new(shape: RoutingProfileSearchCriteria)

    RoutingProfileSearchCriteria.add_member(:or_conditions, Shapes::ShapeRef.new(shape: RoutingProfileSearchConditionList, location_name: "OrConditions"))
    RoutingProfileSearchCriteria.add_member(:and_conditions, Shapes::ShapeRef.new(shape: RoutingProfileSearchConditionList, location_name: "AndConditions"))
    RoutingProfileSearchCriteria.add_member(:string_condition, Shapes::ShapeRef.new(shape: StringCondition, location_name: "StringCondition"))
    RoutingProfileSearchCriteria.struct_class = Types::RoutingProfileSearchCriteria

    RoutingProfileSearchFilter.add_member(:tag_filter, Shapes::ShapeRef.new(shape: ControlPlaneTagFilter, location_name: "TagFilter"))
    RoutingProfileSearchFilter.struct_class = Types::RoutingProfileSearchFilter

    RoutingProfileSummary.add_member(:id, Shapes::ShapeRef.new(shape: RoutingProfileId, location_name: "Id"))
    RoutingProfileSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    RoutingProfileSummary.add_member(:name, Shapes::ShapeRef.new(shape: RoutingProfileName, location_name: "Name"))
    RoutingProfileSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    RoutingProfileSummary.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    RoutingProfileSummary.struct_class = Types::RoutingProfileSummary

    RoutingProfileSummaryList.member = Shapes::ShapeRef.new(shape: RoutingProfileSummary)

    RoutingProfiles.member = Shapes::ShapeRef.new(shape: RoutingProfileId)

    Rule.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "Name"))
    Rule.add_member(:rule_id, Shapes::ShapeRef.new(shape: RuleId, required: true, location_name: "RuleId"))
    Rule.add_member(:rule_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "RuleArn"))
    Rule.add_member(:trigger_event_source, Shapes::ShapeRef.new(shape: RuleTriggerEventSource, required: true, location_name: "TriggerEventSource"))
    Rule.add_member(:function, Shapes::ShapeRef.new(shape: RuleFunction, required: true, location_name: "Function"))
    Rule.add_member(:actions, Shapes::ShapeRef.new(shape: RuleActions, required: true, location_name: "Actions"))
    Rule.add_member(:publish_status, Shapes::ShapeRef.new(shape: RulePublishStatus, required: true, location_name: "PublishStatus"))
    Rule.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTime"))
    Rule.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastUpdatedTime"))
    Rule.add_member(:last_updated_by, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "LastUpdatedBy"))
    Rule.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    Rule.struct_class = Types::Rule

    RuleAction.add_member(:action_type, Shapes::ShapeRef.new(shape: ActionType, required: true, location_name: "ActionType"))
    RuleAction.add_member(:task_action, Shapes::ShapeRef.new(shape: TaskActionDefinition, location_name: "TaskAction"))
    RuleAction.add_member(:event_bridge_action, Shapes::ShapeRef.new(shape: EventBridgeActionDefinition, location_name: "EventBridgeAction"))
    RuleAction.add_member(:assign_contact_category_action, Shapes::ShapeRef.new(shape: AssignContactCategoryActionDefinition, location_name: "AssignContactCategoryAction"))
    RuleAction.add_member(:send_notification_action, Shapes::ShapeRef.new(shape: SendNotificationActionDefinition, location_name: "SendNotificationAction"))
    RuleAction.add_member(:create_case_action, Shapes::ShapeRef.new(shape: CreateCaseActionDefinition, location_name: "CreateCaseAction"))
    RuleAction.add_member(:update_case_action, Shapes::ShapeRef.new(shape: UpdateCaseActionDefinition, location_name: "UpdateCaseAction"))
    RuleAction.add_member(:assign_sla_action, Shapes::ShapeRef.new(shape: AssignSlaActionDefinition, location_name: "AssignSlaAction"))
    RuleAction.add_member(:end_associated_tasks_action, Shapes::ShapeRef.new(shape: EndAssociatedTasksActionDefinition, location_name: "EndAssociatedTasksAction"))
    RuleAction.add_member(:submit_auto_evaluation_action, Shapes::ShapeRef.new(shape: SubmitAutoEvaluationActionDefinition, location_name: "SubmitAutoEvaluationAction"))
    RuleAction.struct_class = Types::RuleAction

    RuleActions.member = Shapes::ShapeRef.new(shape: RuleAction)

    RuleSummary.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "Name"))
    RuleSummary.add_member(:rule_id, Shapes::ShapeRef.new(shape: RuleId, required: true, location_name: "RuleId"))
    RuleSummary.add_member(:rule_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "RuleArn"))
    RuleSummary.add_member(:event_source_name, Shapes::ShapeRef.new(shape: EventSourceName, required: true, location_name: "EventSourceName"))
    RuleSummary.add_member(:publish_status, Shapes::ShapeRef.new(shape: RulePublishStatus, required: true, location_name: "PublishStatus"))
    RuleSummary.add_member(:action_summaries, Shapes::ShapeRef.new(shape: ActionSummaries, required: true, location_name: "ActionSummaries"))
    RuleSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTime"))
    RuleSummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastUpdatedTime"))
    RuleSummary.struct_class = Types::RuleSummary

    RuleSummaryList.member = Shapes::ShapeRef.new(shape: RuleSummary)

    RuleTriggerEventSource.add_member(:event_source_name, Shapes::ShapeRef.new(shape: EventSourceName, required: true, location_name: "EventSourceName"))
    RuleTriggerEventSource.add_member(:integration_association_id, Shapes::ShapeRef.new(shape: IntegrationAssociationId, location_name: "IntegrationAssociationId"))
    RuleTriggerEventSource.struct_class = Types::RuleTriggerEventSource

    S3Config.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "BucketName"))
    S3Config.add_member(:bucket_prefix, Shapes::ShapeRef.new(shape: Prefix, required: true, location_name: "BucketPrefix"))
    S3Config.add_member(:encryption_config, Shapes::ShapeRef.new(shape: EncryptionConfig, location_name: "EncryptionConfig"))
    S3Config.struct_class = Types::S3Config

    SearchAgentStatusesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    SearchAgentStatusesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchAgentStatusesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box" => true}))
    SearchAgentStatusesRequest.add_member(:search_filter, Shapes::ShapeRef.new(shape: AgentStatusSearchFilter, location_name: "SearchFilter"))
    SearchAgentStatusesRequest.add_member(:search_criteria, Shapes::ShapeRef.new(shape: AgentStatusSearchCriteria, location_name: "SearchCriteria"))
    SearchAgentStatusesRequest.struct_class = Types::SearchAgentStatusesRequest

    SearchAgentStatusesResponse.add_member(:agent_statuses, Shapes::ShapeRef.new(shape: AgentStatusList, location_name: "AgentStatuses"))
    SearchAgentStatusesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchAgentStatusesResponse.add_member(:approximate_total_count, Shapes::ShapeRef.new(shape: ApproximateTotalCount, location_name: "ApproximateTotalCount"))
    SearchAgentStatusesResponse.struct_class = Types::SearchAgentStatusesResponse

    SearchAvailablePhoneNumbersRequest.add_member(:target_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "TargetArn"))
    SearchAvailablePhoneNumbersRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    SearchAvailablePhoneNumbersRequest.add_member(:phone_number_country_code, Shapes::ShapeRef.new(shape: PhoneNumberCountryCode, required: true, location_name: "PhoneNumberCountryCode"))
    SearchAvailablePhoneNumbersRequest.add_member(:phone_number_type, Shapes::ShapeRef.new(shape: PhoneNumberType, required: true, location_name: "PhoneNumberType"))
    SearchAvailablePhoneNumbersRequest.add_member(:phone_number_prefix, Shapes::ShapeRef.new(shape: PhoneNumberPrefix, location_name: "PhoneNumberPrefix"))
    SearchAvailablePhoneNumbersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult10, location_name: "MaxResults", metadata: {"box" => true}))
    SearchAvailablePhoneNumbersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: LargeNextToken, location_name: "NextToken"))
    SearchAvailablePhoneNumbersRequest.struct_class = Types::SearchAvailablePhoneNumbersRequest

    SearchAvailablePhoneNumbersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: LargeNextToken, location_name: "NextToken"))
    SearchAvailablePhoneNumbersResponse.add_member(:available_numbers_list, Shapes::ShapeRef.new(shape: AvailableNumbersList, location_name: "AvailableNumbersList"))
    SearchAvailablePhoneNumbersResponse.struct_class = Types::SearchAvailablePhoneNumbersResponse

    SearchContactEvaluationsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    SearchContactEvaluationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchContactEvaluationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box" => true}))
    SearchContactEvaluationsRequest.add_member(:search_criteria, Shapes::ShapeRef.new(shape: EvaluationSearchCriteria, location_name: "SearchCriteria"))
    SearchContactEvaluationsRequest.add_member(:search_filter, Shapes::ShapeRef.new(shape: EvaluationSearchFilter, location_name: "SearchFilter"))
    SearchContactEvaluationsRequest.struct_class = Types::SearchContactEvaluationsRequest

    SearchContactEvaluationsResponse.add_member(:evaluation_search_summary_list, Shapes::ShapeRef.new(shape: EvaluationSearchSummaryList, location_name: "EvaluationSearchSummaryList"))
    SearchContactEvaluationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchContactEvaluationsResponse.add_member(:approximate_total_count, Shapes::ShapeRef.new(shape: ApproximateTotalCount, location_name: "ApproximateTotalCount"))
    SearchContactEvaluationsResponse.struct_class = Types::SearchContactEvaluationsResponse

    SearchContactFlowModulesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    SearchContactFlowModulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchContactFlowModulesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box" => true}))
    SearchContactFlowModulesRequest.add_member(:search_filter, Shapes::ShapeRef.new(shape: ContactFlowModuleSearchFilter, location_name: "SearchFilter"))
    SearchContactFlowModulesRequest.add_member(:search_criteria, Shapes::ShapeRef.new(shape: ContactFlowModuleSearchCriteria, location_name: "SearchCriteria"))
    SearchContactFlowModulesRequest.struct_class = Types::SearchContactFlowModulesRequest

    SearchContactFlowModulesResponse.add_member(:contact_flow_modules, Shapes::ShapeRef.new(shape: ContactFlowModuleSearchSummaryList, location_name: "ContactFlowModules"))
    SearchContactFlowModulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchContactFlowModulesResponse.add_member(:approximate_total_count, Shapes::ShapeRef.new(shape: ApproximateTotalCount, location_name: "ApproximateTotalCount"))
    SearchContactFlowModulesResponse.struct_class = Types::SearchContactFlowModulesResponse

    SearchContactFlowsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    SearchContactFlowsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchContactFlowsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box" => true}))
    SearchContactFlowsRequest.add_member(:search_filter, Shapes::ShapeRef.new(shape: ContactFlowSearchFilter, location_name: "SearchFilter"))
    SearchContactFlowsRequest.add_member(:search_criteria, Shapes::ShapeRef.new(shape: ContactFlowSearchCriteria, location_name: "SearchCriteria"))
    SearchContactFlowsRequest.struct_class = Types::SearchContactFlowsRequest

    SearchContactFlowsResponse.add_member(:contact_flows, Shapes::ShapeRef.new(shape: ContactFlowSearchSummaryList, location_name: "ContactFlows"))
    SearchContactFlowsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchContactFlowsResponse.add_member(:approximate_total_count, Shapes::ShapeRef.new(shape: ApproximateTotalCount, location_name: "ApproximateTotalCount"))
    SearchContactFlowsResponse.struct_class = Types::SearchContactFlowsResponse

    SearchContactsAdditionalTimeRange.add_member(:criteria, Shapes::ShapeRef.new(shape: SearchContactsAdditionalTimeRangeCriteriaList, required: true, location_name: "Criteria"))
    SearchContactsAdditionalTimeRange.add_member(:match_type, Shapes::ShapeRef.new(shape: SearchContactsMatchType, required: true, location_name: "MatchType"))
    SearchContactsAdditionalTimeRange.struct_class = Types::SearchContactsAdditionalTimeRange

    SearchContactsAdditionalTimeRangeCriteria.add_member(:time_range, Shapes::ShapeRef.new(shape: SearchContactsTimeRange, location_name: "TimeRange"))
    SearchContactsAdditionalTimeRangeCriteria.add_member(:timestamp_condition, Shapes::ShapeRef.new(shape: SearchContactsTimestampCondition, location_name: "TimestampCondition"))
    SearchContactsAdditionalTimeRangeCriteria.struct_class = Types::SearchContactsAdditionalTimeRangeCriteria

    SearchContactsAdditionalTimeRangeCriteriaList.member = Shapes::ShapeRef.new(shape: SearchContactsAdditionalTimeRangeCriteria)

    SearchContactsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    SearchContactsRequest.add_member(:time_range, Shapes::ShapeRef.new(shape: SearchContactsTimeRange, required: true, location_name: "TimeRange"))
    SearchContactsRequest.add_member(:search_criteria, Shapes::ShapeRef.new(shape: SearchCriteria, location_name: "SearchCriteria"))
    SearchContactsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box" => true}))
    SearchContactsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: LargeNextToken, location_name: "NextToken"))
    SearchContactsRequest.add_member(:sort, Shapes::ShapeRef.new(shape: Sort, location_name: "Sort"))
    SearchContactsRequest.struct_class = Types::SearchContactsRequest

    SearchContactsResponse.add_member(:contacts, Shapes::ShapeRef.new(shape: Contacts, required: true, location_name: "Contacts"))
    SearchContactsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: LargeNextToken, location_name: "NextToken"))
    SearchContactsResponse.add_member(:total_count, Shapes::ShapeRef.new(shape: TotalCount, location_name: "TotalCount"))
    SearchContactsResponse.struct_class = Types::SearchContactsResponse

    SearchContactsTimeRange.add_member(:type, Shapes::ShapeRef.new(shape: SearchContactsTimeRangeType, required: true, location_name: "Type"))
    SearchContactsTimeRange.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    SearchContactsTimeRange.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndTime"))
    SearchContactsTimeRange.struct_class = Types::SearchContactsTimeRange

    SearchContactsTimestampCondition.add_member(:type, Shapes::ShapeRef.new(shape: SearchContactsTimeRangeType, required: true, location_name: "Type"))
    SearchContactsTimestampCondition.add_member(:condition_type, Shapes::ShapeRef.new(shape: SearchContactsTimeRangeConditionType, required: true, location_name: "ConditionType"))
    SearchContactsTimestampCondition.struct_class = Types::SearchContactsTimestampCondition

    SearchCriteria.add_member(:name, Shapes::ShapeRef.new(shape: NameCriteria, location_name: "Name"))
    SearchCriteria.add_member(:agent_ids, Shapes::ShapeRef.new(shape: AgentResourceIdList, location_name: "AgentIds"))
    SearchCriteria.add_member(:agent_hierarchy_groups, Shapes::ShapeRef.new(shape: AgentHierarchyGroups, location_name: "AgentHierarchyGroups"))
    SearchCriteria.add_member(:channels, Shapes::ShapeRef.new(shape: ChannelList, location_name: "Channels"))
    SearchCriteria.add_member(:contact_analysis, Shapes::ShapeRef.new(shape: ContactAnalysis, location_name: "ContactAnalysis"))
    SearchCriteria.add_member(:initiation_methods, Shapes::ShapeRef.new(shape: InitiationMethodList, location_name: "InitiationMethods"))
    SearchCriteria.add_member(:queue_ids, Shapes::ShapeRef.new(shape: QueueIdList, location_name: "QueueIds"))
    SearchCriteria.add_member(:routing_criteria, Shapes::ShapeRef.new(shape: SearchableRoutingCriteria, location_name: "RoutingCriteria"))
    SearchCriteria.add_member(:additional_time_range, Shapes::ShapeRef.new(shape: SearchContactsAdditionalTimeRange, location_name: "AdditionalTimeRange"))
    SearchCriteria.add_member(:searchable_contact_attributes, Shapes::ShapeRef.new(shape: SearchableContactAttributes, location_name: "SearchableContactAttributes"))
    SearchCriteria.add_member(:searchable_segment_attributes, Shapes::ShapeRef.new(shape: SearchableSegmentAttributes, location_name: "SearchableSegmentAttributes"))
    SearchCriteria.struct_class = Types::SearchCriteria

    SearchEmailAddressesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    SearchEmailAddressesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults"))
    SearchEmailAddressesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchEmailAddressesRequest.add_member(:search_criteria, Shapes::ShapeRef.new(shape: EmailAddressSearchCriteria, location_name: "SearchCriteria"))
    SearchEmailAddressesRequest.add_member(:search_filter, Shapes::ShapeRef.new(shape: EmailAddressSearchFilter, location_name: "SearchFilter"))
    SearchEmailAddressesRequest.struct_class = Types::SearchEmailAddressesRequest

    SearchEmailAddressesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchEmailAddressesResponse.add_member(:email_addresses, Shapes::ShapeRef.new(shape: EmailAddressList, location_name: "EmailAddresses"))
    SearchEmailAddressesResponse.add_member(:approximate_total_count, Shapes::ShapeRef.new(shape: ApproximateTotalCount, location_name: "ApproximateTotalCount"))
    SearchEmailAddressesResponse.struct_class = Types::SearchEmailAddressesResponse

    SearchEvaluationFormsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    SearchEvaluationFormsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchEvaluationFormsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box" => true}))
    SearchEvaluationFormsRequest.add_member(:search_criteria, Shapes::ShapeRef.new(shape: EvaluationFormSearchCriteria, location_name: "SearchCriteria"))
    SearchEvaluationFormsRequest.add_member(:search_filter, Shapes::ShapeRef.new(shape: EvaluationFormSearchFilter, location_name: "SearchFilter"))
    SearchEvaluationFormsRequest.struct_class = Types::SearchEvaluationFormsRequest

    SearchEvaluationFormsResponse.add_member(:evaluation_form_search_summary_list, Shapes::ShapeRef.new(shape: EvaluationFormSearchSummaryList, location_name: "EvaluationFormSearchSummaryList"))
    SearchEvaluationFormsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchEvaluationFormsResponse.add_member(:approximate_total_count, Shapes::ShapeRef.new(shape: ApproximateTotalCount, location_name: "ApproximateTotalCount"))
    SearchEvaluationFormsResponse.struct_class = Types::SearchEvaluationFormsResponse

    SearchHoursOfOperationOverridesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    SearchHoursOfOperationOverridesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchHoursOfOperationOverridesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box" => true}))
    SearchHoursOfOperationOverridesRequest.add_member(:search_filter, Shapes::ShapeRef.new(shape: HoursOfOperationSearchFilter, location_name: "SearchFilter"))
    SearchHoursOfOperationOverridesRequest.add_member(:search_criteria, Shapes::ShapeRef.new(shape: HoursOfOperationOverrideSearchCriteria, location_name: "SearchCriteria"))
    SearchHoursOfOperationOverridesRequest.struct_class = Types::SearchHoursOfOperationOverridesRequest

    SearchHoursOfOperationOverridesResponse.add_member(:hours_of_operation_overrides, Shapes::ShapeRef.new(shape: HoursOfOperationOverrideList, location_name: "HoursOfOperationOverrides"))
    SearchHoursOfOperationOverridesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchHoursOfOperationOverridesResponse.add_member(:approximate_total_count, Shapes::ShapeRef.new(shape: ApproximateTotalCount, location_name: "ApproximateTotalCount"))
    SearchHoursOfOperationOverridesResponse.struct_class = Types::SearchHoursOfOperationOverridesResponse

    SearchHoursOfOperationsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    SearchHoursOfOperationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchHoursOfOperationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box" => true}))
    SearchHoursOfOperationsRequest.add_member(:search_filter, Shapes::ShapeRef.new(shape: HoursOfOperationSearchFilter, location_name: "SearchFilter"))
    SearchHoursOfOperationsRequest.add_member(:search_criteria, Shapes::ShapeRef.new(shape: HoursOfOperationSearchCriteria, location_name: "SearchCriteria"))
    SearchHoursOfOperationsRequest.struct_class = Types::SearchHoursOfOperationsRequest

    SearchHoursOfOperationsResponse.add_member(:hours_of_operations, Shapes::ShapeRef.new(shape: HoursOfOperationList, location_name: "HoursOfOperations"))
    SearchHoursOfOperationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchHoursOfOperationsResponse.add_member(:approximate_total_count, Shapes::ShapeRef.new(shape: ApproximateTotalCount, location_name: "ApproximateTotalCount"))
    SearchHoursOfOperationsResponse.struct_class = Types::SearchHoursOfOperationsResponse

    SearchPredefinedAttributesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    SearchPredefinedAttributesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchPredefinedAttributesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box" => true}))
    SearchPredefinedAttributesRequest.add_member(:search_criteria, Shapes::ShapeRef.new(shape: PredefinedAttributeSearchCriteria, location_name: "SearchCriteria"))
    SearchPredefinedAttributesRequest.struct_class = Types::SearchPredefinedAttributesRequest

    SearchPredefinedAttributesResponse.add_member(:predefined_attributes, Shapes::ShapeRef.new(shape: PredefinedAttributeSearchSummaryList, location_name: "PredefinedAttributes"))
    SearchPredefinedAttributesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchPredefinedAttributesResponse.add_member(:approximate_total_count, Shapes::ShapeRef.new(shape: ApproximateTotalCount, location_name: "ApproximateTotalCount"))
    SearchPredefinedAttributesResponse.struct_class = Types::SearchPredefinedAttributesResponse

    SearchPromptsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    SearchPromptsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchPromptsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box" => true}))
    SearchPromptsRequest.add_member(:search_filter, Shapes::ShapeRef.new(shape: PromptSearchFilter, location_name: "SearchFilter"))
    SearchPromptsRequest.add_member(:search_criteria, Shapes::ShapeRef.new(shape: PromptSearchCriteria, location_name: "SearchCriteria"))
    SearchPromptsRequest.struct_class = Types::SearchPromptsRequest

    SearchPromptsResponse.add_member(:prompts, Shapes::ShapeRef.new(shape: PromptList, location_name: "Prompts"))
    SearchPromptsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchPromptsResponse.add_member(:approximate_total_count, Shapes::ShapeRef.new(shape: ApproximateTotalCount, location_name: "ApproximateTotalCount"))
    SearchPromptsResponse.struct_class = Types::SearchPromptsResponse

    SearchQueuesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    SearchQueuesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchQueuesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult500, location_name: "MaxResults", metadata: {"box" => true}))
    SearchQueuesRequest.add_member(:search_filter, Shapes::ShapeRef.new(shape: QueueSearchFilter, location_name: "SearchFilter"))
    SearchQueuesRequest.add_member(:search_criteria, Shapes::ShapeRef.new(shape: QueueSearchCriteria, location_name: "SearchCriteria"))
    SearchQueuesRequest.struct_class = Types::SearchQueuesRequest

    SearchQueuesResponse.add_member(:queues, Shapes::ShapeRef.new(shape: QueueSearchSummaryList, location_name: "Queues"))
    SearchQueuesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchQueuesResponse.add_member(:approximate_total_count, Shapes::ShapeRef.new(shape: ApproximateTotalCount, location_name: "ApproximateTotalCount"))
    SearchQueuesResponse.struct_class = Types::SearchQueuesResponse

    SearchQuickConnectsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    SearchQuickConnectsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchQuickConnectsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box" => true}))
    SearchQuickConnectsRequest.add_member(:search_filter, Shapes::ShapeRef.new(shape: QuickConnectSearchFilter, location_name: "SearchFilter"))
    SearchQuickConnectsRequest.add_member(:search_criteria, Shapes::ShapeRef.new(shape: QuickConnectSearchCriteria, location_name: "SearchCriteria"))
    SearchQuickConnectsRequest.struct_class = Types::SearchQuickConnectsRequest

    SearchQuickConnectsResponse.add_member(:quick_connects, Shapes::ShapeRef.new(shape: QuickConnectSearchSummaryList, location_name: "QuickConnects"))
    SearchQuickConnectsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchQuickConnectsResponse.add_member(:approximate_total_count, Shapes::ShapeRef.new(shape: ApproximateTotalCount, location_name: "ApproximateTotalCount"))
    SearchQuickConnectsResponse.struct_class = Types::SearchQuickConnectsResponse

    SearchResourceTagsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceIdOrArn, required: true, location_name: "InstanceId"))
    SearchResourceTagsRequest.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypeList, location_name: "ResourceTypes"))
    SearchResourceTagsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchResourceTagsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box" => true}))
    SearchResourceTagsRequest.add_member(:search_criteria, Shapes::ShapeRef.new(shape: ResourceTagsSearchCriteria, location_name: "SearchCriteria"))
    SearchResourceTagsRequest.struct_class = Types::SearchResourceTagsRequest

    SearchResourceTagsResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsList, location_name: "Tags"))
    SearchResourceTagsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchResourceTagsResponse.struct_class = Types::SearchResourceTagsResponse

    SearchRoutingProfilesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    SearchRoutingProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchRoutingProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult500, location_name: "MaxResults", metadata: {"box" => true}))
    SearchRoutingProfilesRequest.add_member(:search_filter, Shapes::ShapeRef.new(shape: RoutingProfileSearchFilter, location_name: "SearchFilter"))
    SearchRoutingProfilesRequest.add_member(:search_criteria, Shapes::ShapeRef.new(shape: RoutingProfileSearchCriteria, location_name: "SearchCriteria"))
    SearchRoutingProfilesRequest.struct_class = Types::SearchRoutingProfilesRequest

    SearchRoutingProfilesResponse.add_member(:routing_profiles, Shapes::ShapeRef.new(shape: RoutingProfileList, location_name: "RoutingProfiles"))
    SearchRoutingProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchRoutingProfilesResponse.add_member(:approximate_total_count, Shapes::ShapeRef.new(shape: ApproximateTotalCount, location_name: "ApproximateTotalCount"))
    SearchRoutingProfilesResponse.struct_class = Types::SearchRoutingProfilesResponse

    SearchSecurityProfilesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    SearchSecurityProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchSecurityProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box" => true}))
    SearchSecurityProfilesRequest.add_member(:search_criteria, Shapes::ShapeRef.new(shape: SecurityProfileSearchCriteria, location_name: "SearchCriteria"))
    SearchSecurityProfilesRequest.add_member(:search_filter, Shapes::ShapeRef.new(shape: SecurityProfilesSearchFilter, location_name: "SearchFilter"))
    SearchSecurityProfilesRequest.struct_class = Types::SearchSecurityProfilesRequest

    SearchSecurityProfilesResponse.add_member(:security_profiles, Shapes::ShapeRef.new(shape: SecurityProfilesSearchSummaryList, location_name: "SecurityProfiles"))
    SearchSecurityProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchSecurityProfilesResponse.add_member(:approximate_total_count, Shapes::ShapeRef.new(shape: ApproximateTotalCount, location_name: "ApproximateTotalCount"))
    SearchSecurityProfilesResponse.struct_class = Types::SearchSecurityProfilesResponse

    SearchTextList.member = Shapes::ShapeRef.new(shape: SearchText)

    SearchUserHierarchyGroupsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    SearchUserHierarchyGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchUserHierarchyGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box" => true}))
    SearchUserHierarchyGroupsRequest.add_member(:search_filter, Shapes::ShapeRef.new(shape: UserHierarchyGroupSearchFilter, location_name: "SearchFilter"))
    SearchUserHierarchyGroupsRequest.add_member(:search_criteria, Shapes::ShapeRef.new(shape: UserHierarchyGroupSearchCriteria, location_name: "SearchCriteria"))
    SearchUserHierarchyGroupsRequest.struct_class = Types::SearchUserHierarchyGroupsRequest

    SearchUserHierarchyGroupsResponse.add_member(:user_hierarchy_groups, Shapes::ShapeRef.new(shape: UserHierarchyGroupList, location_name: "UserHierarchyGroups"))
    SearchUserHierarchyGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchUserHierarchyGroupsResponse.add_member(:approximate_total_count, Shapes::ShapeRef.new(shape: ApproximateTotalCount, location_name: "ApproximateTotalCount"))
    SearchUserHierarchyGroupsResponse.struct_class = Types::SearchUserHierarchyGroupsResponse

    SearchUsersRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    SearchUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult500, location_name: "MaxResults", metadata: {"box" => true}))
    SearchUsersRequest.add_member(:search_filter, Shapes::ShapeRef.new(shape: UserSearchFilter, location_name: "SearchFilter"))
    SearchUsersRequest.add_member(:search_criteria, Shapes::ShapeRef.new(shape: UserSearchCriteria, location_name: "SearchCriteria"))
    SearchUsersRequest.struct_class = Types::SearchUsersRequest

    SearchUsersResponse.add_member(:users, Shapes::ShapeRef.new(shape: UserSearchSummaryList, location_name: "Users"))
    SearchUsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchUsersResponse.add_member(:approximate_total_count, Shapes::ShapeRef.new(shape: ApproximateTotalCount, location_name: "ApproximateTotalCount"))
    SearchUsersResponse.struct_class = Types::SearchUsersResponse

    SearchVocabulariesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    SearchVocabulariesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults"))
    SearchVocabulariesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: VocabularyNextToken, location_name: "NextToken"))
    SearchVocabulariesRequest.add_member(:state, Shapes::ShapeRef.new(shape: VocabularyState, location_name: "State"))
    SearchVocabulariesRequest.add_member(:name_starts_with, Shapes::ShapeRef.new(shape: VocabularyName, location_name: "NameStartsWith"))
    SearchVocabulariesRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: VocabularyLanguageCode, location_name: "LanguageCode"))
    SearchVocabulariesRequest.struct_class = Types::SearchVocabulariesRequest

    SearchVocabulariesResponse.add_member(:vocabulary_summary_list, Shapes::ShapeRef.new(shape: VocabularySummaryList, location_name: "VocabularySummaryList"))
    SearchVocabulariesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: VocabularyNextToken, location_name: "NextToken"))
    SearchVocabulariesResponse.struct_class = Types::SearchVocabulariesResponse

    SearchableAgentCriteriaStep.add_member(:agent_ids, Shapes::ShapeRef.new(shape: AgentResourceIdList, location_name: "AgentIds"))
    SearchableAgentCriteriaStep.add_member(:match_type, Shapes::ShapeRef.new(shape: SearchContactsMatchType, location_name: "MatchType"))
    SearchableAgentCriteriaStep.struct_class = Types::SearchableAgentCriteriaStep

    SearchableContactAttributeValueList.member = Shapes::ShapeRef.new(shape: SearchableContactAttributeValue)

    SearchableContactAttributes.add_member(:criteria, Shapes::ShapeRef.new(shape: SearchableContactAttributesCriteriaList, required: true, location_name: "Criteria"))
    SearchableContactAttributes.add_member(:match_type, Shapes::ShapeRef.new(shape: SearchContactsMatchType, location_name: "MatchType"))
    SearchableContactAttributes.struct_class = Types::SearchableContactAttributes

    SearchableContactAttributesCriteria.add_member(:key, Shapes::ShapeRef.new(shape: SearchableContactAttributeKey, required: true, location_name: "Key"))
    SearchableContactAttributesCriteria.add_member(:values, Shapes::ShapeRef.new(shape: SearchableContactAttributeValueList, required: true, location_name: "Values"))
    SearchableContactAttributesCriteria.struct_class = Types::SearchableContactAttributesCriteria

    SearchableContactAttributesCriteriaList.member = Shapes::ShapeRef.new(shape: SearchableContactAttributesCriteria)

    SearchableRoutingCriteria.add_member(:steps, Shapes::ShapeRef.new(shape: SearchableRoutingCriteriaStepList, location_name: "Steps"))
    SearchableRoutingCriteria.struct_class = Types::SearchableRoutingCriteria

    SearchableRoutingCriteriaStep.add_member(:agent_criteria, Shapes::ShapeRef.new(shape: SearchableAgentCriteriaStep, location_name: "AgentCriteria"))
    SearchableRoutingCriteriaStep.struct_class = Types::SearchableRoutingCriteriaStep

    SearchableRoutingCriteriaStepList.member = Shapes::ShapeRef.new(shape: SearchableRoutingCriteriaStep)

    SearchableSegmentAttributeValueList.member = Shapes::ShapeRef.new(shape: SearchableSegmentAttributeValue)

    SearchableSegmentAttributes.add_member(:criteria, Shapes::ShapeRef.new(shape: SearchableSegmentAttributesCriteriaList, required: true, location_name: "Criteria"))
    SearchableSegmentAttributes.add_member(:match_type, Shapes::ShapeRef.new(shape: SearchContactsMatchType, location_name: "MatchType"))
    SearchableSegmentAttributes.struct_class = Types::SearchableSegmentAttributes

    SearchableSegmentAttributesCriteria.add_member(:key, Shapes::ShapeRef.new(shape: SearchableSegmentAttributeKey, required: true, location_name: "Key"))
    SearchableSegmentAttributesCriteria.add_member(:values, Shapes::ShapeRef.new(shape: SearchableSegmentAttributeValueList, required: true, location_name: "Values"))
    SearchableSegmentAttributesCriteria.struct_class = Types::SearchableSegmentAttributesCriteria

    SearchableSegmentAttributesCriteriaList.member = Shapes::ShapeRef.new(shape: SearchableSegmentAttributesCriteria)

    SecurityKey.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    SecurityKey.add_member(:key, Shapes::ShapeRef.new(shape: PEM, location_name: "Key"))
    SecurityKey.add_member(:creation_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationTime"))
    SecurityKey.struct_class = Types::SecurityKey

    SecurityKeysList.member = Shapes::ShapeRef.new(shape: SecurityKey)

    SecurityProfile.add_member(:id, Shapes::ShapeRef.new(shape: SecurityProfileId, location_name: "Id"))
    SecurityProfile.add_member(:organization_resource_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "OrganizationResourceId"))
    SecurityProfile.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    SecurityProfile.add_member(:security_profile_name, Shapes::ShapeRef.new(shape: SecurityProfileName, location_name: "SecurityProfileName"))
    SecurityProfile.add_member(:description, Shapes::ShapeRef.new(shape: SecurityProfileDescription, location_name: "Description"))
    SecurityProfile.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    SecurityProfile.add_member(:allowed_access_control_tags, Shapes::ShapeRef.new(shape: AllowedAccessControlTags, location_name: "AllowedAccessControlTags"))
    SecurityProfile.add_member(:tag_restricted_resources, Shapes::ShapeRef.new(shape: TagRestrictedResourceList, location_name: "TagRestrictedResources"))
    SecurityProfile.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    SecurityProfile.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    SecurityProfile.add_member(:hierarchy_restricted_resources, Shapes::ShapeRef.new(shape: HierarchyRestrictedResourceList, location_name: "HierarchyRestrictedResources"))
    SecurityProfile.add_member(:allowed_access_control_hierarchy_group_id, Shapes::ShapeRef.new(shape: HierarchyGroupId, location_name: "AllowedAccessControlHierarchyGroupId"))
    SecurityProfile.struct_class = Types::SecurityProfile

    SecurityProfileIds.member = Shapes::ShapeRef.new(shape: SecurityProfileId)

    SecurityProfileSearchConditionList.member = Shapes::ShapeRef.new(shape: SecurityProfileSearchCriteria)

    SecurityProfileSearchCriteria.add_member(:or_conditions, Shapes::ShapeRef.new(shape: SecurityProfileSearchConditionList, location_name: "OrConditions"))
    SecurityProfileSearchCriteria.add_member(:and_conditions, Shapes::ShapeRef.new(shape: SecurityProfileSearchConditionList, location_name: "AndConditions"))
    SecurityProfileSearchCriteria.add_member(:string_condition, Shapes::ShapeRef.new(shape: StringCondition, location_name: "StringCondition"))
    SecurityProfileSearchCriteria.struct_class = Types::SecurityProfileSearchCriteria

    SecurityProfileSearchSummary.add_member(:id, Shapes::ShapeRef.new(shape: SecurityProfileId, location_name: "Id"))
    SecurityProfileSearchSummary.add_member(:organization_resource_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "OrganizationResourceId"))
    SecurityProfileSearchSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    SecurityProfileSearchSummary.add_member(:security_profile_name, Shapes::ShapeRef.new(shape: SecurityProfileName, location_name: "SecurityProfileName"))
    SecurityProfileSearchSummary.add_member(:description, Shapes::ShapeRef.new(shape: SecurityProfileDescription, location_name: "Description"))
    SecurityProfileSearchSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    SecurityProfileSearchSummary.struct_class = Types::SecurityProfileSearchSummary

    SecurityProfileSummary.add_member(:id, Shapes::ShapeRef.new(shape: SecurityProfileId, location_name: "Id"))
    SecurityProfileSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    SecurityProfileSummary.add_member(:name, Shapes::ShapeRef.new(shape: SecurityProfileName, location_name: "Name"))
    SecurityProfileSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    SecurityProfileSummary.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    SecurityProfileSummary.struct_class = Types::SecurityProfileSummary

    SecurityProfileSummaryList.member = Shapes::ShapeRef.new(shape: SecurityProfileSummary)

    SecurityProfilesSearchFilter.add_member(:tag_filter, Shapes::ShapeRef.new(shape: ControlPlaneTagFilter, location_name: "TagFilter"))
    SecurityProfilesSearchFilter.struct_class = Types::SecurityProfilesSearchFilter

    SecurityProfilesSearchSummaryList.member = Shapes::ShapeRef.new(shape: SecurityProfileSearchSummary)

    SegmentAttributeValue.add_member(:value_string, Shapes::ShapeRef.new(shape: SegmentAttributeValueString, location_name: "ValueString"))
    SegmentAttributeValue.add_member(:value_map, Shapes::ShapeRef.new(shape: SegmentAttributeValueMap, location_name: "ValueMap"))
    SegmentAttributeValue.add_member(:value_integer, Shapes::ShapeRef.new(shape: SegmentAttributeValueInteger, location_name: "ValueInteger"))
    SegmentAttributeValue.add_member(:value_list, Shapes::ShapeRef.new(shape: SegmentAttributeValueList, location_name: "ValueList"))
    SegmentAttributeValue.add_member(:value_arn, Shapes::ShapeRef.new(shape: SegmentAttributeValueString, location_name: "ValueArn"))
    SegmentAttributeValue.struct_class = Types::SegmentAttributeValue

    SegmentAttributeValueList.member = Shapes::ShapeRef.new(shape: SegmentAttributeValue)

    SegmentAttributeValueMap.key = Shapes::ShapeRef.new(shape: SegmentAttributeName)
    SegmentAttributeValueMap.value = Shapes::ShapeRef.new(shape: SegmentAttributeValue)

    SegmentAttributes.key = Shapes::ShapeRef.new(shape: SegmentAttributeName)
    SegmentAttributes.value = Shapes::ShapeRef.new(shape: SegmentAttributeValue)

    SendChatIntegrationEventRequest.add_member(:source_id, Shapes::ShapeRef.new(shape: SourceId, required: true, location_name: "SourceId"))
    SendChatIntegrationEventRequest.add_member(:destination_id, Shapes::ShapeRef.new(shape: DestinationId, required: true, location_name: "DestinationId"))
    SendChatIntegrationEventRequest.add_member(:subtype, Shapes::ShapeRef.new(shape: Subtype, location_name: "Subtype"))
    SendChatIntegrationEventRequest.add_member(:event, Shapes::ShapeRef.new(shape: ChatEvent, required: true, location_name: "Event"))
    SendChatIntegrationEventRequest.add_member(:new_session_details, Shapes::ShapeRef.new(shape: NewSessionDetails, location_name: "NewSessionDetails"))
    SendChatIntegrationEventRequest.struct_class = Types::SendChatIntegrationEventRequest

    SendChatIntegrationEventResponse.add_member(:initial_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "InitialContactId"))
    SendChatIntegrationEventResponse.add_member(:new_chat_created, Shapes::ShapeRef.new(shape: NewChatCreated, location_name: "NewChatCreated"))
    SendChatIntegrationEventResponse.struct_class = Types::SendChatIntegrationEventResponse

    SendNotificationActionDefinition.add_member(:delivery_method, Shapes::ShapeRef.new(shape: NotificationDeliveryType, required: true, location_name: "DeliveryMethod"))
    SendNotificationActionDefinition.add_member(:subject, Shapes::ShapeRef.new(shape: Subject, location_name: "Subject"))
    SendNotificationActionDefinition.add_member(:content, Shapes::ShapeRef.new(shape: Content, required: true, location_name: "Content"))
    SendNotificationActionDefinition.add_member(:content_type, Shapes::ShapeRef.new(shape: NotificationContentType, required: true, location_name: "ContentType"))
    SendNotificationActionDefinition.add_member(:recipient, Shapes::ShapeRef.new(shape: NotificationRecipientType, required: true, location_name: "Recipient"))
    SendNotificationActionDefinition.add_member(:exclusion, Shapes::ShapeRef.new(shape: NotificationRecipientType, location_name: "Exclusion"))
    SendNotificationActionDefinition.struct_class = Types::SendNotificationActionDefinition

    SendOutboundEmailRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    SendOutboundEmailRequest.add_member(:from_email_address, Shapes::ShapeRef.new(shape: EmailAddressInfo, required: true, location_name: "FromEmailAddress"))
    SendOutboundEmailRequest.add_member(:destination_email_address, Shapes::ShapeRef.new(shape: EmailAddressInfo, required: true, location_name: "DestinationEmailAddress"))
    SendOutboundEmailRequest.add_member(:additional_recipients, Shapes::ShapeRef.new(shape: OutboundAdditionalRecipients, location_name: "AdditionalRecipients"))
    SendOutboundEmailRequest.add_member(:email_message, Shapes::ShapeRef.new(shape: OutboundEmailContent, required: true, location_name: "EmailMessage"))
    SendOutboundEmailRequest.add_member(:traffic_type, Shapes::ShapeRef.new(shape: TrafficType, required: true, location_name: "TrafficType"))
    SendOutboundEmailRequest.add_member(:source_campaign, Shapes::ShapeRef.new(shape: SourceCampaign, location_name: "SourceCampaign"))
    SendOutboundEmailRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    SendOutboundEmailRequest.struct_class = Types::SendOutboundEmailRequest

    SendOutboundEmailResponse.struct_class = Types::SendOutboundEmailResponse

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:reason, Shapes::ShapeRef.new(shape: ServiceQuotaExceededExceptionReason, location_name: "Reason"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ServiceQuotaExceededExceptionReason.add_member(:attached_file_service_quota_exceeded_exception_reason, Shapes::ShapeRef.new(shape: AttachedFileServiceQuotaExceededExceptionReason, location_name: "AttachedFileServiceQuotaExceededExceptionReason"))
    ServiceQuotaExceededExceptionReason.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ServiceQuotaExceededExceptionReason.add_member_subclass(:attached_file_service_quota_exceeded_exception_reason, Types::ServiceQuotaExceededExceptionReason::AttachedFileServiceQuotaExceededExceptionReason)
    ServiceQuotaExceededExceptionReason.add_member_subclass(:unknown, Types::ServiceQuotaExceededExceptionReason::Unknown)
    ServiceQuotaExceededExceptionReason.struct_class = Types::ServiceQuotaExceededExceptionReason

    SignInConfig.add_member(:distributions, Shapes::ShapeRef.new(shape: SignInDistributionList, required: true, location_name: "Distributions"))
    SignInConfig.struct_class = Types::SignInConfig

    SignInDistribution.add_member(:region, Shapes::ShapeRef.new(shape: AwsRegion, required: true, location_name: "Region"))
    SignInDistribution.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "Enabled"))
    SignInDistribution.struct_class = Types::SignInDistribution

    SignInDistributionList.member = Shapes::ShapeRef.new(shape: SignInDistribution)

    SingleSelectOptions.member = Shapes::ShapeRef.new(shape: TaskTemplateSingleSelectOption)

    SingleSelectQuestionRuleCategoryAutomation.add_member(:category, Shapes::ShapeRef.new(shape: SingleSelectQuestionRuleCategoryAutomationLabel, required: true, location_name: "Category"))
    SingleSelectQuestionRuleCategoryAutomation.add_member(:condition, Shapes::ShapeRef.new(shape: SingleSelectQuestionRuleCategoryAutomationCondition, required: true, location_name: "Condition"))
    SingleSelectQuestionRuleCategoryAutomation.add_member(:option_ref_id, Shapes::ShapeRef.new(shape: ReferenceId, required: true, location_name: "OptionRefId"))
    SingleSelectQuestionRuleCategoryAutomation.struct_class = Types::SingleSelectQuestionRuleCategoryAutomation

    SlaFieldValueUnionList.member = Shapes::ShapeRef.new(shape: FieldValueUnion)

    Sort.add_member(:field_name, Shapes::ShapeRef.new(shape: SortableFieldName, required: true, location_name: "FieldName"))
    Sort.add_member(:order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "Order"))
    Sort.struct_class = Types::Sort

    SourceCampaign.add_member(:campaign_id, Shapes::ShapeRef.new(shape: CampaignId, location_name: "CampaignId"))
    SourceCampaign.add_member(:outbound_request_id, Shapes::ShapeRef.new(shape: OutboundRequestId, location_name: "OutboundRequestId"))
    SourceCampaign.struct_class = Types::SourceCampaign

    StartAttachedFileUploadRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    StartAttachedFileUploadRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    StartAttachedFileUploadRequest.add_member(:file_name, Shapes::ShapeRef.new(shape: FileName, required: true, location_name: "FileName"))
    StartAttachedFileUploadRequest.add_member(:file_size_in_bytes, Shapes::ShapeRef.new(shape: FileSizeInBytes, required: true, location_name: "FileSizeInBytes", metadata: {"box" => true}))
    StartAttachedFileUploadRequest.add_member(:url_expiry_in_seconds, Shapes::ShapeRef.new(shape: URLExpiryInSeconds, location_name: "UrlExpiryInSeconds"))
    StartAttachedFileUploadRequest.add_member(:file_use_case_type, Shapes::ShapeRef.new(shape: FileUseCaseType, required: true, location_name: "FileUseCaseType"))
    StartAttachedFileUploadRequest.add_member(:associated_resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "querystring", location_name: "associatedResourceArn"))
    StartAttachedFileUploadRequest.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedByInfo, location_name: "CreatedBy"))
    StartAttachedFileUploadRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    StartAttachedFileUploadRequest.struct_class = Types::StartAttachedFileUploadRequest

    StartAttachedFileUploadResponse.add_member(:file_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "FileArn"))
    StartAttachedFileUploadResponse.add_member(:file_id, Shapes::ShapeRef.new(shape: FileId, location_name: "FileId"))
    StartAttachedFileUploadResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: ISO8601Datetime, location_name: "CreationTime"))
    StartAttachedFileUploadResponse.add_member(:file_status, Shapes::ShapeRef.new(shape: FileStatusType, location_name: "FileStatus"))
    StartAttachedFileUploadResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedByInfo, location_name: "CreatedBy"))
    StartAttachedFileUploadResponse.add_member(:upload_url_metadata, Shapes::ShapeRef.new(shape: UploadUrlMetadata, location_name: "UploadUrlMetadata"))
    StartAttachedFileUploadResponse.struct_class = Types::StartAttachedFileUploadResponse

    StartChatContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    StartChatContactRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, required: true, location_name: "ContactFlowId"))
    StartChatContactRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    StartChatContactRequest.add_member(:participant_details, Shapes::ShapeRef.new(shape: ParticipantDetails, required: true, location_name: "ParticipantDetails"))
    StartChatContactRequest.add_member(:initial_message, Shapes::ShapeRef.new(shape: ChatMessage, location_name: "InitialMessage"))
    StartChatContactRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    StartChatContactRequest.add_member(:chat_duration_in_minutes, Shapes::ShapeRef.new(shape: ChatDurationInMinutes, location_name: "ChatDurationInMinutes"))
    StartChatContactRequest.add_member(:supported_messaging_content_types, Shapes::ShapeRef.new(shape: SupportedMessagingContentTypes, location_name: "SupportedMessagingContentTypes"))
    StartChatContactRequest.add_member(:persistent_chat, Shapes::ShapeRef.new(shape: PersistentChat, location_name: "PersistentChat"))
    StartChatContactRequest.add_member(:related_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "RelatedContactId"))
    StartChatContactRequest.add_member(:segment_attributes, Shapes::ShapeRef.new(shape: SegmentAttributes, location_name: "SegmentAttributes"))
    StartChatContactRequest.add_member(:customer_id, Shapes::ShapeRef.new(shape: CustomerIdNonEmpty, location_name: "CustomerId"))
    StartChatContactRequest.struct_class = Types::StartChatContactRequest

    StartChatContactResponse.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContactId"))
    StartChatContactResponse.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantId, location_name: "ParticipantId"))
    StartChatContactResponse.add_member(:participant_token, Shapes::ShapeRef.new(shape: ParticipantToken, location_name: "ParticipantToken"))
    StartChatContactResponse.add_member(:continued_from_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContinuedFromContactId"))
    StartChatContactResponse.struct_class = Types::StartChatContactResponse

    StartContactEvaluationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    StartContactEvaluationRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    StartContactEvaluationRequest.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "EvaluationFormId"))
    StartContactEvaluationRequest.add_member(:auto_evaluation_configuration, Shapes::ShapeRef.new(shape: AutoEvaluationConfiguration, location_name: "AutoEvaluationConfiguration"))
    StartContactEvaluationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    StartContactEvaluationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    StartContactEvaluationRequest.struct_class = Types::StartContactEvaluationRequest

    StartContactEvaluationResponse.add_member(:evaluation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "EvaluationId"))
    StartContactEvaluationResponse.add_member(:evaluation_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "EvaluationArn"))
    StartContactEvaluationResponse.struct_class = Types::StartContactEvaluationResponse

    StartContactRecordingRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    StartContactRecordingRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    StartContactRecordingRequest.add_member(:initial_contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "InitialContactId"))
    StartContactRecordingRequest.add_member(:voice_recording_configuration, Shapes::ShapeRef.new(shape: VoiceRecordingConfiguration, required: true, location_name: "VoiceRecordingConfiguration"))
    StartContactRecordingRequest.struct_class = Types::StartContactRecordingRequest

    StartContactRecordingResponse.struct_class = Types::StartContactRecordingResponse

    StartContactStreamingRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    StartContactStreamingRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    StartContactStreamingRequest.add_member(:chat_streaming_configuration, Shapes::ShapeRef.new(shape: ChatStreamingConfiguration, required: true, location_name: "ChatStreamingConfiguration"))
    StartContactStreamingRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    StartContactStreamingRequest.struct_class = Types::StartContactStreamingRequest

    StartContactStreamingResponse.add_member(:streaming_id, Shapes::ShapeRef.new(shape: StreamingId, required: true, location_name: "StreamingId"))
    StartContactStreamingResponse.struct_class = Types::StartContactStreamingResponse

    StartEmailContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    StartEmailContactRequest.add_member(:from_email_address, Shapes::ShapeRef.new(shape: EmailAddressInfo, required: true, location_name: "FromEmailAddress"))
    StartEmailContactRequest.add_member(:destination_email_address, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location_name: "DestinationEmailAddress"))
    StartEmailContactRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    StartEmailContactRequest.add_member(:references, Shapes::ShapeRef.new(shape: ContactReferences, location_name: "References"))
    StartEmailContactRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    StartEmailContactRequest.add_member(:email_message, Shapes::ShapeRef.new(shape: InboundEmailContent, required: true, location_name: "EmailMessage"))
    StartEmailContactRequest.add_member(:additional_recipients, Shapes::ShapeRef.new(shape: InboundAdditionalRecipients, location_name: "AdditionalRecipients"))
    StartEmailContactRequest.add_member(:attachments, Shapes::ShapeRef.new(shape: EmailAttachments, location_name: "Attachments"))
    StartEmailContactRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, location_name: "ContactFlowId"))
    StartEmailContactRequest.add_member(:related_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "RelatedContactId"))
    StartEmailContactRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    StartEmailContactRequest.add_member(:segment_attributes, Shapes::ShapeRef.new(shape: SegmentAttributes, location_name: "SegmentAttributes"))
    StartEmailContactRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    StartEmailContactRequest.struct_class = Types::StartEmailContactRequest

    StartEmailContactResponse.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContactId"))
    StartEmailContactResponse.struct_class = Types::StartEmailContactResponse

    StartOutboundChatContactRequest.add_member(:source_endpoint, Shapes::ShapeRef.new(shape: Endpoint, required: true, location_name: "SourceEndpoint"))
    StartOutboundChatContactRequest.add_member(:destination_endpoint, Shapes::ShapeRef.new(shape: Endpoint, required: true, location_name: "DestinationEndpoint"))
    StartOutboundChatContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    StartOutboundChatContactRequest.add_member(:segment_attributes, Shapes::ShapeRef.new(shape: SegmentAttributes, required: true, location_name: "SegmentAttributes"))
    StartOutboundChatContactRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    StartOutboundChatContactRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, required: true, location_name: "ContactFlowId"))
    StartOutboundChatContactRequest.add_member(:chat_duration_in_minutes, Shapes::ShapeRef.new(shape: ChatDurationInMinutes, location_name: "ChatDurationInMinutes"))
    StartOutboundChatContactRequest.add_member(:participant_details, Shapes::ShapeRef.new(shape: ParticipantDetails, location_name: "ParticipantDetails"))
    StartOutboundChatContactRequest.add_member(:initial_system_message, Shapes::ShapeRef.new(shape: ChatMessage, location_name: "InitialSystemMessage"))
    StartOutboundChatContactRequest.add_member(:related_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "RelatedContactId"))
    StartOutboundChatContactRequest.add_member(:supported_messaging_content_types, Shapes::ShapeRef.new(shape: SupportedMessagingContentTypes, location_name: "SupportedMessagingContentTypes"))
    StartOutboundChatContactRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    StartOutboundChatContactRequest.struct_class = Types::StartOutboundChatContactRequest

    StartOutboundChatContactResponse.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContactId"))
    StartOutboundChatContactResponse.struct_class = Types::StartOutboundChatContactResponse

    StartOutboundEmailContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    StartOutboundEmailContactRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    StartOutboundEmailContactRequest.add_member(:from_email_address, Shapes::ShapeRef.new(shape: EmailAddressInfo, location_name: "FromEmailAddress"))
    StartOutboundEmailContactRequest.add_member(:destination_email_address, Shapes::ShapeRef.new(shape: EmailAddressInfo, required: true, location_name: "DestinationEmailAddress"))
    StartOutboundEmailContactRequest.add_member(:additional_recipients, Shapes::ShapeRef.new(shape: OutboundAdditionalRecipients, location_name: "AdditionalRecipients"))
    StartOutboundEmailContactRequest.add_member(:email_message, Shapes::ShapeRef.new(shape: OutboundEmailContent, required: true, location_name: "EmailMessage"))
    StartOutboundEmailContactRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    StartOutboundEmailContactRequest.struct_class = Types::StartOutboundEmailContactRequest

    StartOutboundEmailContactResponse.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContactId"))
    StartOutboundEmailContactResponse.struct_class = Types::StartOutboundEmailContactResponse

    StartOutboundVoiceContactRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    StartOutboundVoiceContactRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    StartOutboundVoiceContactRequest.add_member(:references, Shapes::ShapeRef.new(shape: ContactReferences, location_name: "References"))
    StartOutboundVoiceContactRequest.add_member(:related_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "RelatedContactId"))
    StartOutboundVoiceContactRequest.add_member(:destination_phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "DestinationPhoneNumber"))
    StartOutboundVoiceContactRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, required: true, location_name: "ContactFlowId"))
    StartOutboundVoiceContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    StartOutboundVoiceContactRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    StartOutboundVoiceContactRequest.add_member(:source_phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "SourcePhoneNumber"))
    StartOutboundVoiceContactRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, location_name: "QueueId"))
    StartOutboundVoiceContactRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    StartOutboundVoiceContactRequest.add_member(:answer_machine_detection_config, Shapes::ShapeRef.new(shape: AnswerMachineDetectionConfig, location_name: "AnswerMachineDetectionConfig"))
    StartOutboundVoiceContactRequest.add_member(:campaign_id, Shapes::ShapeRef.new(shape: CampaignId, location_name: "CampaignId"))
    StartOutboundVoiceContactRequest.add_member(:traffic_type, Shapes::ShapeRef.new(shape: TrafficType, location_name: "TrafficType"))
    StartOutboundVoiceContactRequest.add_member(:outbound_strategy, Shapes::ShapeRef.new(shape: OutboundStrategy, location_name: "OutboundStrategy"))
    StartOutboundVoiceContactRequest.add_member(:ring_timeout_in_seconds, Shapes::ShapeRef.new(shape: RingTimeoutInSeconds, location_name: "RingTimeoutInSeconds"))
    StartOutboundVoiceContactRequest.struct_class = Types::StartOutboundVoiceContactRequest

    StartOutboundVoiceContactResponse.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContactId"))
    StartOutboundVoiceContactResponse.struct_class = Types::StartOutboundVoiceContactResponse

    StartScreenSharingRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    StartScreenSharingRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    StartScreenSharingRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    StartScreenSharingRequest.struct_class = Types::StartScreenSharingRequest

    StartScreenSharingResponse.struct_class = Types::StartScreenSharingResponse

    StartTaskContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    StartTaskContactRequest.add_member(:previous_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "PreviousContactId"))
    StartTaskContactRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, location_name: "ContactFlowId"))
    StartTaskContactRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    StartTaskContactRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    StartTaskContactRequest.add_member(:references, Shapes::ShapeRef.new(shape: ContactReferences, location_name: "References"))
    StartTaskContactRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    StartTaskContactRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    StartTaskContactRequest.add_member(:scheduled_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ScheduledTime"))
    StartTaskContactRequest.add_member(:task_template_id, Shapes::ShapeRef.new(shape: TaskTemplateId, location_name: "TaskTemplateId"))
    StartTaskContactRequest.add_member(:quick_connect_id, Shapes::ShapeRef.new(shape: QuickConnectId, location_name: "QuickConnectId"))
    StartTaskContactRequest.add_member(:related_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "RelatedContactId"))
    StartTaskContactRequest.add_member(:segment_attributes, Shapes::ShapeRef.new(shape: SegmentAttributes, location_name: "SegmentAttributes"))
    StartTaskContactRequest.struct_class = Types::StartTaskContactRequest

    StartTaskContactResponse.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContactId"))
    StartTaskContactResponse.struct_class = Types::StartTaskContactResponse

    StartWebRTCContactRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    StartWebRTCContactRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    StartWebRTCContactRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, required: true, location_name: "ContactFlowId"))
    StartWebRTCContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    StartWebRTCContactRequest.add_member(:allowed_capabilities, Shapes::ShapeRef.new(shape: AllowedCapabilities, location_name: "AllowedCapabilities"))
    StartWebRTCContactRequest.add_member(:participant_details, Shapes::ShapeRef.new(shape: ParticipantDetails, required: true, location_name: "ParticipantDetails"))
    StartWebRTCContactRequest.add_member(:related_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "RelatedContactId"))
    StartWebRTCContactRequest.add_member(:references, Shapes::ShapeRef.new(shape: ContactReferences, location_name: "References"))
    StartWebRTCContactRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    StartWebRTCContactRequest.struct_class = Types::StartWebRTCContactRequest

    StartWebRTCContactResponse.add_member(:connection_data, Shapes::ShapeRef.new(shape: ConnectionData, location_name: "ConnectionData"))
    StartWebRTCContactResponse.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContactId"))
    StartWebRTCContactResponse.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantId, location_name: "ParticipantId"))
    StartWebRTCContactResponse.add_member(:participant_token, Shapes::ShapeRef.new(shape: ParticipantToken, location_name: "ParticipantToken"))
    StartWebRTCContactResponse.struct_class = Types::StartWebRTCContactResponse

    StateTransition.add_member(:state, Shapes::ShapeRef.new(shape: ParticipantState, location_name: "State"))
    StateTransition.add_member(:state_start_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "StateStartTimestamp"))
    StateTransition.add_member(:state_end_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "StateEndTimestamp"))
    StateTransition.struct_class = Types::StateTransition

    StateTransitions.member = Shapes::ShapeRef.new(shape: StateTransition)

    Step.add_member(:expiry, Shapes::ShapeRef.new(shape: Expiry, location_name: "Expiry"))
    Step.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, location_name: "Expression"))
    Step.add_member(:status, Shapes::ShapeRef.new(shape: RoutingCriteriaStepStatus, location_name: "Status"))
    Step.struct_class = Types::Step

    Steps.member = Shapes::ShapeRef.new(shape: Step)

    StopContactRecordingRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    StopContactRecordingRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    StopContactRecordingRequest.add_member(:initial_contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "InitialContactId"))
    StopContactRecordingRequest.add_member(:contact_recording_type, Shapes::ShapeRef.new(shape: ContactRecordingType, location_name: "ContactRecordingType"))
    StopContactRecordingRequest.struct_class = Types::StopContactRecordingRequest

    StopContactRecordingResponse.struct_class = Types::StopContactRecordingResponse

    StopContactRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    StopContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    StopContactRequest.add_member(:disconnect_reason, Shapes::ShapeRef.new(shape: DisconnectReason, location_name: "DisconnectReason"))
    StopContactRequest.struct_class = Types::StopContactRequest

    StopContactResponse.struct_class = Types::StopContactResponse

    StopContactStreamingRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    StopContactStreamingRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    StopContactStreamingRequest.add_member(:streaming_id, Shapes::ShapeRef.new(shape: StreamingId, required: true, location_name: "StreamingId"))
    StopContactStreamingRequest.struct_class = Types::StopContactStreamingRequest

    StopContactStreamingResponse.struct_class = Types::StopContactStreamingResponse

    StringCondition.add_member(:field_name, Shapes::ShapeRef.new(shape: String, location_name: "FieldName"))
    StringCondition.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    StringCondition.add_member(:comparison_type, Shapes::ShapeRef.new(shape: StringComparisonType, location_name: "ComparisonType"))
    StringCondition.struct_class = Types::StringCondition

    StringReference.add_member(:name, Shapes::ShapeRef.new(shape: ReferenceKey, location_name: "Name"))
    StringReference.add_member(:value, Shapes::ShapeRef.new(shape: ReferenceValue, location_name: "Value"))
    StringReference.struct_class = Types::StringReference

    SubmitAutoEvaluationActionDefinition.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: EvaluationFormId, required: true, location_name: "EvaluationFormId"))
    SubmitAutoEvaluationActionDefinition.struct_class = Types::SubmitAutoEvaluationActionDefinition

    SubmitContactEvaluationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    SubmitContactEvaluationRequest.add_member(:evaluation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "EvaluationId"))
    SubmitContactEvaluationRequest.add_member(:answers, Shapes::ShapeRef.new(shape: EvaluationAnswersInputMap, location_name: "Answers"))
    SubmitContactEvaluationRequest.add_member(:notes, Shapes::ShapeRef.new(shape: EvaluationNotesMap, location_name: "Notes"))
    SubmitContactEvaluationRequest.add_member(:submitted_by, Shapes::ShapeRef.new(shape: EvaluatorUserUnion, location_name: "SubmittedBy"))
    SubmitContactEvaluationRequest.struct_class = Types::SubmitContactEvaluationRequest

    SubmitContactEvaluationResponse.add_member(:evaluation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "EvaluationId"))
    SubmitContactEvaluationResponse.add_member(:evaluation_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "EvaluationArn"))
    SubmitContactEvaluationResponse.struct_class = Types::SubmitContactEvaluationResponse

    SuccessfulRequest.add_member(:request_identifier, Shapes::ShapeRef.new(shape: RequestIdentifier, location_name: "RequestIdentifier"))
    SuccessfulRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContactId"))
    SuccessfulRequest.struct_class = Types::SuccessfulRequest

    SuccessfulRequestList.member = Shapes::ShapeRef.new(shape: SuccessfulRequest)

    SupportedMessagingContentTypes.member = Shapes::ShapeRef.new(shape: SupportedMessagingContentType)

    SuspendContactRecordingRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    SuspendContactRecordingRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    SuspendContactRecordingRequest.add_member(:initial_contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "InitialContactId"))
    SuspendContactRecordingRequest.add_member(:contact_recording_type, Shapes::ShapeRef.new(shape: ContactRecordingType, location_name: "ContactRecordingType"))
    SuspendContactRecordingRequest.struct_class = Types::SuspendContactRecordingRequest

    SuspendContactRecordingResponse.struct_class = Types::SuspendContactRecordingResponse

    TagAndConditionList.member = Shapes::ShapeRef.new(shape: TagCondition)

    TagCondition.add_member(:tag_key, Shapes::ShapeRef.new(shape: String, location_name: "TagKey"))
    TagCondition.add_member(:tag_value, Shapes::ShapeRef.new(shape: String, location_name: "TagValue"))
    TagCondition.struct_class = Types::TagCondition

    TagContactRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    TagContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    TagContactRequest.add_member(:tags, Shapes::ShapeRef.new(shape: ContactTagMap, required: true, location_name: "Tags"))
    TagContactRequest.struct_class = Types::TagContactRequest

    TagContactResponse.struct_class = Types::TagContactResponse

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagOrConditionList.member = Shapes::ShapeRef.new(shape: TagAndConditionList)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagRestrictedResourceList.member = Shapes::ShapeRef.new(shape: TagRestrictedResourceName)

    TagSearchCondition.add_member(:tag_key, Shapes::ShapeRef.new(shape: TagKeyString, location_name: "tagKey"))
    TagSearchCondition.add_member(:tag_value, Shapes::ShapeRef.new(shape: TagValueString, location_name: "tagValue"))
    TagSearchCondition.add_member(:tag_key_comparison_type, Shapes::ShapeRef.new(shape: StringComparisonType, location_name: "tagKeyComparisonType"))
    TagSearchCondition.add_member(:tag_value_comparison_type, Shapes::ShapeRef.new(shape: StringComparisonType, location_name: "tagValueComparisonType"))
    TagSearchCondition.struct_class = Types::TagSearchCondition

    TagSet.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "key"))
    TagSet.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "value"))
    TagSet.struct_class = Types::TagSet

    TagsList.member = Shapes::ShapeRef.new(shape: TagSet)

    TaskActionDefinition.add_member(:name, Shapes::ShapeRef.new(shape: TaskNameExpression, required: true, location_name: "Name"))
    TaskActionDefinition.add_member(:description, Shapes::ShapeRef.new(shape: TaskDescriptionExpression, location_name: "Description"))
    TaskActionDefinition.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, required: true, location_name: "ContactFlowId"))
    TaskActionDefinition.add_member(:references, Shapes::ShapeRef.new(shape: ContactReferences, location_name: "References"))
    TaskActionDefinition.struct_class = Types::TaskActionDefinition

    TaskTemplateConstraints.add_member(:required_fields, Shapes::ShapeRef.new(shape: RequiredTaskTemplateFields, location_name: "RequiredFields"))
    TaskTemplateConstraints.add_member(:read_only_fields, Shapes::ShapeRef.new(shape: ReadOnlyTaskTemplateFields, location_name: "ReadOnlyFields"))
    TaskTemplateConstraints.add_member(:invisible_fields, Shapes::ShapeRef.new(shape: InvisibleTaskTemplateFields, location_name: "InvisibleFields"))
    TaskTemplateConstraints.struct_class = Types::TaskTemplateConstraints

    TaskTemplateDefaultFieldValue.add_member(:id, Shapes::ShapeRef.new(shape: TaskTemplateFieldIdentifier, location_name: "Id"))
    TaskTemplateDefaultFieldValue.add_member(:default_value, Shapes::ShapeRef.new(shape: TaskTemplateFieldValue, location_name: "DefaultValue"))
    TaskTemplateDefaultFieldValue.struct_class = Types::TaskTemplateDefaultFieldValue

    TaskTemplateDefaultFieldValueList.member = Shapes::ShapeRef.new(shape: TaskTemplateDefaultFieldValue)

    TaskTemplateDefaults.add_member(:default_field_values, Shapes::ShapeRef.new(shape: TaskTemplateDefaultFieldValueList, location_name: "DefaultFieldValues"))
    TaskTemplateDefaults.struct_class = Types::TaskTemplateDefaults

    TaskTemplateField.add_member(:id, Shapes::ShapeRef.new(shape: TaskTemplateFieldIdentifier, required: true, location_name: "Id"))
    TaskTemplateField.add_member(:description, Shapes::ShapeRef.new(shape: TaskTemplateFieldDescription, location_name: "Description"))
    TaskTemplateField.add_member(:type, Shapes::ShapeRef.new(shape: TaskTemplateFieldType, location_name: "Type"))
    TaskTemplateField.add_member(:single_select_options, Shapes::ShapeRef.new(shape: SingleSelectOptions, location_name: "SingleSelectOptions"))
    TaskTemplateField.struct_class = Types::TaskTemplateField

    TaskTemplateFieldIdentifier.add_member(:name, Shapes::ShapeRef.new(shape: TaskTemplateFieldName, location_name: "Name"))
    TaskTemplateFieldIdentifier.struct_class = Types::TaskTemplateFieldIdentifier

    TaskTemplateFields.member = Shapes::ShapeRef.new(shape: TaskTemplateField)

    TaskTemplateInfoV2.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    TaskTemplateInfoV2.add_member(:name, Shapes::ShapeRef.new(shape: TaskTemplateName, location_name: "Name"))
    TaskTemplateInfoV2.struct_class = Types::TaskTemplateInfoV2

    TaskTemplateList.member = Shapes::ShapeRef.new(shape: TaskTemplateMetadata)

    TaskTemplateMetadata.add_member(:id, Shapes::ShapeRef.new(shape: TaskTemplateId, location_name: "Id"))
    TaskTemplateMetadata.add_member(:arn, Shapes::ShapeRef.new(shape: TaskTemplateArn, location_name: "Arn"))
    TaskTemplateMetadata.add_member(:name, Shapes::ShapeRef.new(shape: TaskTemplateName, location_name: "Name"))
    TaskTemplateMetadata.add_member(:description, Shapes::ShapeRef.new(shape: TaskTemplateDescription, location_name: "Description"))
    TaskTemplateMetadata.add_member(:status, Shapes::ShapeRef.new(shape: TaskTemplateStatus, location_name: "Status"))
    TaskTemplateMetadata.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastModifiedTime"))
    TaskTemplateMetadata.add_member(:created_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreatedTime"))
    TaskTemplateMetadata.struct_class = Types::TaskTemplateMetadata

    TelephonyConfig.add_member(:distributions, Shapes::ShapeRef.new(shape: DistributionList, required: true, location_name: "Distributions"))
    TelephonyConfig.struct_class = Types::TelephonyConfig

    TemplateAttributes.add_member(:custom_attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "CustomAttributes"))
    TemplateAttributes.add_member(:customer_profile_attributes, Shapes::ShapeRef.new(shape: CustomerProfileAttributesSerialized, location_name: "CustomerProfileAttributes"))
    TemplateAttributes.struct_class = Types::TemplateAttributes

    TemplatedMessageConfig.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: MessageTemplateKnowledgeBaseId, required: true, location_name: "KnowledgeBaseId"))
    TemplatedMessageConfig.add_member(:message_template_id, Shapes::ShapeRef.new(shape: MessageTemplateId, required: true, location_name: "MessageTemplateId"))
    TemplatedMessageConfig.add_member(:template_attributes, Shapes::ShapeRef.new(shape: TemplateAttributes, required: true, location_name: "TemplateAttributes"))
    TemplatedMessageConfig.struct_class = Types::TemplatedMessageConfig

    Threshold.add_member(:comparison, Shapes::ShapeRef.new(shape: Comparison, location_name: "Comparison"))
    Threshold.add_member(:threshold_value, Shapes::ShapeRef.new(shape: ThresholdValue, location_name: "ThresholdValue", metadata: {"box" => true}))
    Threshold.struct_class = Types::Threshold

    ThresholdCollections.member = Shapes::ShapeRef.new(shape: ThresholdV2)

    ThresholdV2.add_member(:comparison, Shapes::ShapeRef.new(shape: ResourceArnOrId, location_name: "Comparison"))
    ThresholdV2.add_member(:threshold_value, Shapes::ShapeRef.new(shape: ThresholdValue, location_name: "ThresholdValue", metadata: {"box" => true}))
    ThresholdV2.struct_class = Types::ThresholdV2

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    TrafficDistributionGroup.add_member(:id, Shapes::ShapeRef.new(shape: TrafficDistributionGroupId, location_name: "Id"))
    TrafficDistributionGroup.add_member(:arn, Shapes::ShapeRef.new(shape: TrafficDistributionGroupArn, location_name: "Arn"))
    TrafficDistributionGroup.add_member(:name, Shapes::ShapeRef.new(shape: Name128, location_name: "Name"))
    TrafficDistributionGroup.add_member(:description, Shapes::ShapeRef.new(shape: Description250, location_name: "Description"))
    TrafficDistributionGroup.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, location_name: "InstanceArn"))
    TrafficDistributionGroup.add_member(:status, Shapes::ShapeRef.new(shape: TrafficDistributionGroupStatus, location_name: "Status"))
    TrafficDistributionGroup.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    TrafficDistributionGroup.add_member(:is_default, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsDefault"))
    TrafficDistributionGroup.struct_class = Types::TrafficDistributionGroup

    TrafficDistributionGroupSummary.add_member(:id, Shapes::ShapeRef.new(shape: TrafficDistributionGroupId, location_name: "Id"))
    TrafficDistributionGroupSummary.add_member(:arn, Shapes::ShapeRef.new(shape: TrafficDistributionGroupArn, location_name: "Arn"))
    TrafficDistributionGroupSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name128, location_name: "Name"))
    TrafficDistributionGroupSummary.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, location_name: "InstanceArn"))
    TrafficDistributionGroupSummary.add_member(:status, Shapes::ShapeRef.new(shape: TrafficDistributionGroupStatus, location_name: "Status"))
    TrafficDistributionGroupSummary.add_member(:is_default, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsDefault"))
    TrafficDistributionGroupSummary.struct_class = Types::TrafficDistributionGroupSummary

    TrafficDistributionGroupSummaryList.member = Shapes::ShapeRef.new(shape: TrafficDistributionGroupSummary)

    TrafficDistributionGroupUserSummary.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    TrafficDistributionGroupUserSummary.struct_class = Types::TrafficDistributionGroupUserSummary

    TrafficDistributionGroupUserSummaryList.member = Shapes::ShapeRef.new(shape: TrafficDistributionGroupUserSummary)

    Transcript.add_member(:criteria, Shapes::ShapeRef.new(shape: TranscriptCriteriaList, required: true, location_name: "Criteria"))
    Transcript.add_member(:match_type, Shapes::ShapeRef.new(shape: SearchContactsMatchType, location_name: "MatchType"))
    Transcript.struct_class = Types::Transcript

    TranscriptCriteria.add_member(:participant_role, Shapes::ShapeRef.new(shape: ParticipantRole, required: true, location_name: "ParticipantRole"))
    TranscriptCriteria.add_member(:search_text, Shapes::ShapeRef.new(shape: SearchTextList, required: true, location_name: "SearchText"))
    TranscriptCriteria.add_member(:match_type, Shapes::ShapeRef.new(shape: SearchContactsMatchType, required: true, location_name: "MatchType"))
    TranscriptCriteria.struct_class = Types::TranscriptCriteria

    TranscriptCriteriaList.member = Shapes::ShapeRef.new(shape: TranscriptCriteria)

    TransferContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    TransferContactRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    TransferContactRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, location_name: "QueueId"))
    TransferContactRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: AgentResourceId, location_name: "UserId"))
    TransferContactRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, required: true, location_name: "ContactFlowId"))
    TransferContactRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    TransferContactRequest.struct_class = Types::TransferContactRequest

    TransferContactResponse.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContactId"))
    TransferContactResponse.add_member(:contact_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ContactArn"))
    TransferContactResponse.struct_class = Types::TransferContactResponse

    UntagContactRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location: "uri", location_name: "ContactId"))
    UntagContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UntagContactRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: ContactTagKeys, required: true, location: "querystring", location_name: "TagKeys"))
    UntagContactRequest.struct_class = Types::UntagContactRequest

    UntagContactResponse.struct_class = Types::UntagContactResponse

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateAgentStatusRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateAgentStatusRequest.add_member(:agent_status_id, Shapes::ShapeRef.new(shape: AgentStatusId, required: true, location: "uri", location_name: "AgentStatusId"))
    UpdateAgentStatusRequest.add_member(:name, Shapes::ShapeRef.new(shape: AgentStatusName, location_name: "Name"))
    UpdateAgentStatusRequest.add_member(:description, Shapes::ShapeRef.new(shape: UpdateAgentStatusDescription, location_name: "Description"))
    UpdateAgentStatusRequest.add_member(:state, Shapes::ShapeRef.new(shape: AgentStatusState, location_name: "State"))
    UpdateAgentStatusRequest.add_member(:display_order, Shapes::ShapeRef.new(shape: AgentStatusOrderNumber, location_name: "DisplayOrder", metadata: {"box" => true}))
    UpdateAgentStatusRequest.add_member(:reset_order_number, Shapes::ShapeRef.new(shape: Boolean, location_name: "ResetOrderNumber"))
    UpdateAgentStatusRequest.struct_class = Types::UpdateAgentStatusRequest

    UpdateAuthenticationProfileRequest.add_member(:authentication_profile_id, Shapes::ShapeRef.new(shape: AuthenticationProfileId, required: true, location: "uri", location_name: "AuthenticationProfileId"))
    UpdateAuthenticationProfileRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateAuthenticationProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: AuthenticationProfileName, location_name: "Name"))
    UpdateAuthenticationProfileRequest.add_member(:description, Shapes::ShapeRef.new(shape: AuthenticationProfileDescription, location_name: "Description"))
    UpdateAuthenticationProfileRequest.add_member(:allowed_ips, Shapes::ShapeRef.new(shape: IpCidrList, location_name: "AllowedIps"))
    UpdateAuthenticationProfileRequest.add_member(:blocked_ips, Shapes::ShapeRef.new(shape: IpCidrList, location_name: "BlockedIps"))
    UpdateAuthenticationProfileRequest.add_member(:periodic_session_duration, Shapes::ShapeRef.new(shape: AccessTokenDuration, deprecated: true, location_name: "PeriodicSessionDuration", metadata: {"box" => true, "deprecatedMessage" => "PeriodicSessionDuration is deprecated. Use SessionInactivityDuration instead.", "deprecatedSince" => "10/31/2025"}))
    UpdateAuthenticationProfileRequest.add_member(:session_inactivity_duration, Shapes::ShapeRef.new(shape: InactivityDuration, location_name: "SessionInactivityDuration", metadata: {"box" => true}))
    UpdateAuthenticationProfileRequest.add_member(:session_inactivity_handling_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "SessionInactivityHandlingEnabled", metadata: {"box" => true}))
    UpdateAuthenticationProfileRequest.struct_class = Types::UpdateAuthenticationProfileRequest

    UpdateCaseActionDefinition.add_member(:fields, Shapes::ShapeRef.new(shape: FieldValues, required: true, location_name: "Fields"))
    UpdateCaseActionDefinition.struct_class = Types::UpdateCaseActionDefinition

    UpdateContactAttributesRequest.add_member(:initial_contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "InitialContactId"))
    UpdateContactAttributesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    UpdateContactAttributesRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, required: true, location_name: "Attributes"))
    UpdateContactAttributesRequest.struct_class = Types::UpdateContactAttributesRequest

    UpdateContactAttributesResponse.struct_class = Types::UpdateContactAttributesResponse

    UpdateContactEvaluationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateContactEvaluationRequest.add_member(:evaluation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "EvaluationId"))
    UpdateContactEvaluationRequest.add_member(:answers, Shapes::ShapeRef.new(shape: EvaluationAnswersInputMap, location_name: "Answers"))
    UpdateContactEvaluationRequest.add_member(:notes, Shapes::ShapeRef.new(shape: EvaluationNotesMap, location_name: "Notes"))
    UpdateContactEvaluationRequest.add_member(:updated_by, Shapes::ShapeRef.new(shape: EvaluatorUserUnion, location_name: "UpdatedBy"))
    UpdateContactEvaluationRequest.struct_class = Types::UpdateContactEvaluationRequest

    UpdateContactEvaluationResponse.add_member(:evaluation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "EvaluationId"))
    UpdateContactEvaluationResponse.add_member(:evaluation_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "EvaluationArn"))
    UpdateContactEvaluationResponse.struct_class = Types::UpdateContactEvaluationResponse

    UpdateContactFlowContentRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateContactFlowContentRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, required: true, location: "uri", location_name: "ContactFlowId"))
    UpdateContactFlowContentRequest.add_member(:content, Shapes::ShapeRef.new(shape: ContactFlowContent, required: true, location_name: "Content"))
    UpdateContactFlowContentRequest.struct_class = Types::UpdateContactFlowContentRequest

    UpdateContactFlowContentResponse.struct_class = Types::UpdateContactFlowContentResponse

    UpdateContactFlowMetadataRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateContactFlowMetadataRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, required: true, location: "uri", location_name: "ContactFlowId"))
    UpdateContactFlowMetadataRequest.add_member(:name, Shapes::ShapeRef.new(shape: ContactFlowName, location_name: "Name"))
    UpdateContactFlowMetadataRequest.add_member(:description, Shapes::ShapeRef.new(shape: ContactFlowDescription, location_name: "Description"))
    UpdateContactFlowMetadataRequest.add_member(:contact_flow_state, Shapes::ShapeRef.new(shape: ContactFlowState, location_name: "ContactFlowState"))
    UpdateContactFlowMetadataRequest.struct_class = Types::UpdateContactFlowMetadataRequest

    UpdateContactFlowMetadataResponse.struct_class = Types::UpdateContactFlowMetadataResponse

    UpdateContactFlowModuleAliasRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceIdOrArn, required: true, location: "uri", location_name: "InstanceId"))
    UpdateContactFlowModuleAliasRequest.add_member(:contact_flow_module_id, Shapes::ShapeRef.new(shape: ContactFlowModuleId, required: true, location: "uri", location_name: "ContactFlowModuleId"))
    UpdateContactFlowModuleAliasRequest.add_member(:alias_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "AliasId"))
    UpdateContactFlowModuleAliasRequest.add_member(:name, Shapes::ShapeRef.new(shape: ContactFlowModuleName, location_name: "Name"))
    UpdateContactFlowModuleAliasRequest.add_member(:description, Shapes::ShapeRef.new(shape: ContactFlowModuleDescription, location_name: "Description"))
    UpdateContactFlowModuleAliasRequest.add_member(:contact_flow_module_version, Shapes::ShapeRef.new(shape: ResourceVersion, location_name: "ContactFlowModuleVersion"))
    UpdateContactFlowModuleAliasRequest.struct_class = Types::UpdateContactFlowModuleAliasRequest

    UpdateContactFlowModuleAliasResponse.struct_class = Types::UpdateContactFlowModuleAliasResponse

    UpdateContactFlowModuleContentRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateContactFlowModuleContentRequest.add_member(:contact_flow_module_id, Shapes::ShapeRef.new(shape: ContactFlowModuleId, required: true, location: "uri", location_name: "ContactFlowModuleId"))
    UpdateContactFlowModuleContentRequest.add_member(:content, Shapes::ShapeRef.new(shape: ContactFlowModuleContent, location_name: "Content"))
    UpdateContactFlowModuleContentRequest.add_member(:settings, Shapes::ShapeRef.new(shape: FlowModuleSettings, location_name: "Settings"))
    UpdateContactFlowModuleContentRequest.struct_class = Types::UpdateContactFlowModuleContentRequest

    UpdateContactFlowModuleContentResponse.struct_class = Types::UpdateContactFlowModuleContentResponse

    UpdateContactFlowModuleMetadataRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateContactFlowModuleMetadataRequest.add_member(:contact_flow_module_id, Shapes::ShapeRef.new(shape: ContactFlowModuleId, required: true, location: "uri", location_name: "ContactFlowModuleId"))
    UpdateContactFlowModuleMetadataRequest.add_member(:name, Shapes::ShapeRef.new(shape: ContactFlowModuleName, location_name: "Name"))
    UpdateContactFlowModuleMetadataRequest.add_member(:description, Shapes::ShapeRef.new(shape: ContactFlowModuleDescription, location_name: "Description"))
    UpdateContactFlowModuleMetadataRequest.add_member(:state, Shapes::ShapeRef.new(shape: ContactFlowModuleState, location_name: "State"))
    UpdateContactFlowModuleMetadataRequest.struct_class = Types::UpdateContactFlowModuleMetadataRequest

    UpdateContactFlowModuleMetadataResponse.struct_class = Types::UpdateContactFlowModuleMetadataResponse

    UpdateContactFlowNameRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateContactFlowNameRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, required: true, location: "uri", location_name: "ContactFlowId"))
    UpdateContactFlowNameRequest.add_member(:name, Shapes::ShapeRef.new(shape: ContactFlowName, location_name: "Name"))
    UpdateContactFlowNameRequest.add_member(:description, Shapes::ShapeRef.new(shape: ContactFlowDescription, location_name: "Description"))
    UpdateContactFlowNameRequest.struct_class = Types::UpdateContactFlowNameRequest

    UpdateContactFlowNameResponse.struct_class = Types::UpdateContactFlowNameResponse

    UpdateContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateContactRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location: "uri", location_name: "ContactId"))
    UpdateContactRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    UpdateContactRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateContactRequest.add_member(:references, Shapes::ShapeRef.new(shape: ContactReferences, location_name: "References"))
    UpdateContactRequest.add_member(:segment_attributes, Shapes::ShapeRef.new(shape: SegmentAttributes, location_name: "SegmentAttributes"))
    UpdateContactRequest.add_member(:queue_info, Shapes::ShapeRef.new(shape: QueueInfoInput, location_name: "QueueInfo"))
    UpdateContactRequest.add_member(:user_info, Shapes::ShapeRef.new(shape: UserInfo, location_name: "UserInfo"))
    UpdateContactRequest.add_member(:customer_endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "CustomerEndpoint"))
    UpdateContactRequest.add_member(:system_endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "SystemEndpoint"))
    UpdateContactRequest.struct_class = Types::UpdateContactRequest

    UpdateContactResponse.struct_class = Types::UpdateContactResponse

    UpdateContactRoutingDataRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateContactRoutingDataRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location: "uri", location_name: "ContactId"))
    UpdateContactRoutingDataRequest.add_member(:queue_time_adjustment_seconds, Shapes::ShapeRef.new(shape: QueueTimeAdjustmentSeconds, location_name: "QueueTimeAdjustmentSeconds"))
    UpdateContactRoutingDataRequest.add_member(:queue_priority, Shapes::ShapeRef.new(shape: QueuePriority, location_name: "QueuePriority"))
    UpdateContactRoutingDataRequest.add_member(:routing_criteria, Shapes::ShapeRef.new(shape: RoutingCriteriaInput, location_name: "RoutingCriteria"))
    UpdateContactRoutingDataRequest.struct_class = Types::UpdateContactRoutingDataRequest

    UpdateContactRoutingDataResponse.struct_class = Types::UpdateContactRoutingDataResponse

    UpdateContactScheduleRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    UpdateContactScheduleRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    UpdateContactScheduleRequest.add_member(:scheduled_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ScheduledTime"))
    UpdateContactScheduleRequest.struct_class = Types::UpdateContactScheduleRequest

    UpdateContactScheduleResponse.struct_class = Types::UpdateContactScheduleResponse

    UpdateEmailAddressMetadataRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateEmailAddressMetadataRequest.add_member(:email_address_id, Shapes::ShapeRef.new(shape: EmailAddressId, required: true, location: "uri", location_name: "EmailAddressId"))
    UpdateEmailAddressMetadataRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateEmailAddressMetadataRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: EmailAddressDisplayName, location_name: "DisplayName"))
    UpdateEmailAddressMetadataRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken"))
    UpdateEmailAddressMetadataRequest.struct_class = Types::UpdateEmailAddressMetadataRequest

    UpdateEmailAddressMetadataResponse.add_member(:email_address_id, Shapes::ShapeRef.new(shape: EmailAddressId, location_name: "EmailAddressId"))
    UpdateEmailAddressMetadataResponse.add_member(:email_address_arn, Shapes::ShapeRef.new(shape: EmailAddressArn, location_name: "EmailAddressArn"))
    UpdateEmailAddressMetadataResponse.struct_class = Types::UpdateEmailAddressMetadataResponse

    UpdateEvaluationFormRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateEvaluationFormRequest.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "EvaluationFormId"))
    UpdateEvaluationFormRequest.add_member(:evaluation_form_version, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "EvaluationFormVersion"))
    UpdateEvaluationFormRequest.add_member(:create_new_version, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "CreateNewVersion", metadata: {"box" => true}))
    UpdateEvaluationFormRequest.add_member(:title, Shapes::ShapeRef.new(shape: EvaluationFormTitle, required: true, location_name: "Title"))
    UpdateEvaluationFormRequest.add_member(:description, Shapes::ShapeRef.new(shape: EvaluationFormDescription, location_name: "Description"))
    UpdateEvaluationFormRequest.add_member(:items, Shapes::ShapeRef.new(shape: EvaluationFormItemsList, required: true, location_name: "Items"))
    UpdateEvaluationFormRequest.add_member(:scoring_strategy, Shapes::ShapeRef.new(shape: EvaluationFormScoringStrategy, location_name: "ScoringStrategy"))
    UpdateEvaluationFormRequest.add_member(:auto_evaluation_configuration, Shapes::ShapeRef.new(shape: EvaluationFormAutoEvaluationConfiguration, location_name: "AutoEvaluationConfiguration"))
    UpdateEvaluationFormRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    UpdateEvaluationFormRequest.struct_class = Types::UpdateEvaluationFormRequest

    UpdateEvaluationFormResponse.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "EvaluationFormId"))
    UpdateEvaluationFormResponse.add_member(:evaluation_form_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "EvaluationFormArn"))
    UpdateEvaluationFormResponse.add_member(:evaluation_form_version, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "EvaluationFormVersion"))
    UpdateEvaluationFormResponse.struct_class = Types::UpdateEvaluationFormResponse

    UpdateHoursOfOperationOverrideRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateHoursOfOperationOverrideRequest.add_member(:hours_of_operation_id, Shapes::ShapeRef.new(shape: HoursOfOperationId, required: true, location: "uri", location_name: "HoursOfOperationId"))
    UpdateHoursOfOperationOverrideRequest.add_member(:hours_of_operation_override_id, Shapes::ShapeRef.new(shape: HoursOfOperationOverrideId, required: true, location: "uri", location_name: "HoursOfOperationOverrideId"))
    UpdateHoursOfOperationOverrideRequest.add_member(:name, Shapes::ShapeRef.new(shape: CommonHumanReadableName, location_name: "Name"))
    UpdateHoursOfOperationOverrideRequest.add_member(:description, Shapes::ShapeRef.new(shape: CommonHumanReadableDescription, location_name: "Description"))
    UpdateHoursOfOperationOverrideRequest.add_member(:config, Shapes::ShapeRef.new(shape: HoursOfOperationOverrideConfigList, location_name: "Config"))
    UpdateHoursOfOperationOverrideRequest.add_member(:effective_from, Shapes::ShapeRef.new(shape: HoursOfOperationOverrideYearMonthDayDateFormat, location_name: "EffectiveFrom"))
    UpdateHoursOfOperationOverrideRequest.add_member(:effective_till, Shapes::ShapeRef.new(shape: HoursOfOperationOverrideYearMonthDayDateFormat, location_name: "EffectiveTill"))
    UpdateHoursOfOperationOverrideRequest.struct_class = Types::UpdateHoursOfOperationOverrideRequest

    UpdateHoursOfOperationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateHoursOfOperationRequest.add_member(:hours_of_operation_id, Shapes::ShapeRef.new(shape: HoursOfOperationId, required: true, location: "uri", location_name: "HoursOfOperationId"))
    UpdateHoursOfOperationRequest.add_member(:name, Shapes::ShapeRef.new(shape: CommonNameLength127, location_name: "Name"))
    UpdateHoursOfOperationRequest.add_member(:description, Shapes::ShapeRef.new(shape: UpdateHoursOfOperationDescription, location_name: "Description"))
    UpdateHoursOfOperationRequest.add_member(:time_zone, Shapes::ShapeRef.new(shape: TimeZone, location_name: "TimeZone"))
    UpdateHoursOfOperationRequest.add_member(:config, Shapes::ShapeRef.new(shape: HoursOfOperationConfigList, location_name: "Config"))
    UpdateHoursOfOperationRequest.struct_class = Types::UpdateHoursOfOperationRequest

    UpdateInstanceAttributeRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateInstanceAttributeRequest.add_member(:attribute_type, Shapes::ShapeRef.new(shape: InstanceAttributeType, required: true, location: "uri", location_name: "AttributeType"))
    UpdateInstanceAttributeRequest.add_member(:value, Shapes::ShapeRef.new(shape: InstanceAttributeValue, required: true, location_name: "Value"))
    UpdateInstanceAttributeRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    UpdateInstanceAttributeRequest.struct_class = Types::UpdateInstanceAttributeRequest

    UpdateInstanceStorageConfigRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateInstanceStorageConfigRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, required: true, location: "uri", location_name: "AssociationId"))
    UpdateInstanceStorageConfigRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: InstanceStorageResourceType, required: true, location: "querystring", location_name: "resourceType"))
    UpdateInstanceStorageConfigRequest.add_member(:storage_config, Shapes::ShapeRef.new(shape: InstanceStorageConfig, required: true, location_name: "StorageConfig"))
    UpdateInstanceStorageConfigRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    UpdateInstanceStorageConfigRequest.struct_class = Types::UpdateInstanceStorageConfigRequest

    UpdateParticipantAuthenticationRequest.add_member(:state, Shapes::ShapeRef.new(shape: ParticipantToken, required: true, location_name: "State"))
    UpdateParticipantAuthenticationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    UpdateParticipantAuthenticationRequest.add_member(:code, Shapes::ShapeRef.new(shape: AuthorizationCode, location_name: "Code"))
    UpdateParticipantAuthenticationRequest.add_member(:error, Shapes::ShapeRef.new(shape: AuthenticationError, location_name: "Error"))
    UpdateParticipantAuthenticationRequest.add_member(:error_description, Shapes::ShapeRef.new(shape: AuthenticationErrorDescription, location_name: "ErrorDescription"))
    UpdateParticipantAuthenticationRequest.struct_class = Types::UpdateParticipantAuthenticationRequest

    UpdateParticipantAuthenticationResponse.struct_class = Types::UpdateParticipantAuthenticationResponse

    UpdateParticipantRoleConfigChannelInfo.add_member(:chat, Shapes::ShapeRef.new(shape: ChatParticipantRoleConfig, location_name: "Chat"))
    UpdateParticipantRoleConfigChannelInfo.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    UpdateParticipantRoleConfigChannelInfo.add_member_subclass(:chat, Types::UpdateParticipantRoleConfigChannelInfo::Chat)
    UpdateParticipantRoleConfigChannelInfo.add_member_subclass(:unknown, Types::UpdateParticipantRoleConfigChannelInfo::Unknown)
    UpdateParticipantRoleConfigChannelInfo.struct_class = Types::UpdateParticipantRoleConfigChannelInfo

    UpdateParticipantRoleConfigRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateParticipantRoleConfigRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location: "uri", location_name: "ContactId"))
    UpdateParticipantRoleConfigRequest.add_member(:channel_configuration, Shapes::ShapeRef.new(shape: UpdateParticipantRoleConfigChannelInfo, required: true, location_name: "ChannelConfiguration"))
    UpdateParticipantRoleConfigRequest.struct_class = Types::UpdateParticipantRoleConfigRequest

    UpdateParticipantRoleConfigResponse.struct_class = Types::UpdateParticipantRoleConfigResponse

    UpdatePhoneNumberMetadataRequest.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: PhoneNumberId, required: true, location: "uri", location_name: "PhoneNumberId"))
    UpdatePhoneNumberMetadataRequest.add_member(:phone_number_description, Shapes::ShapeRef.new(shape: PhoneNumberDescription, location_name: "PhoneNumberDescription"))
    UpdatePhoneNumberMetadataRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    UpdatePhoneNumberMetadataRequest.struct_class = Types::UpdatePhoneNumberMetadataRequest

    UpdatePhoneNumberRequest.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: PhoneNumberId, required: true, location: "uri", location_name: "PhoneNumberId"))
    UpdatePhoneNumberRequest.add_member(:target_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "TargetArn"))
    UpdatePhoneNumberRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    UpdatePhoneNumberRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    UpdatePhoneNumberRequest.struct_class = Types::UpdatePhoneNumberRequest

    UpdatePhoneNumberResponse.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: PhoneNumberId, location_name: "PhoneNumberId"))
    UpdatePhoneNumberResponse.add_member(:phone_number_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "PhoneNumberArn"))
    UpdatePhoneNumberResponse.struct_class = Types::UpdatePhoneNumberResponse

    UpdatePredefinedAttributeRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdatePredefinedAttributeRequest.add_member(:name, Shapes::ShapeRef.new(shape: PredefinedAttributeName, required: true, location: "uri", location_name: "Name"))
    UpdatePredefinedAttributeRequest.add_member(:values, Shapes::ShapeRef.new(shape: PredefinedAttributeValues, location_name: "Values"))
    UpdatePredefinedAttributeRequest.add_member(:purposes, Shapes::ShapeRef.new(shape: PredefinedAttributePurposeNameList, location_name: "Purposes"))
    UpdatePredefinedAttributeRequest.add_member(:attribute_configuration, Shapes::ShapeRef.new(shape: InputPredefinedAttributeConfiguration, location_name: "AttributeConfiguration"))
    UpdatePredefinedAttributeRequest.struct_class = Types::UpdatePredefinedAttributeRequest

    UpdatePromptRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdatePromptRequest.add_member(:prompt_id, Shapes::ShapeRef.new(shape: PromptId, required: true, location: "uri", location_name: "PromptId"))
    UpdatePromptRequest.add_member(:name, Shapes::ShapeRef.new(shape: CommonNameLength127, location_name: "Name"))
    UpdatePromptRequest.add_member(:description, Shapes::ShapeRef.new(shape: PromptDescription, location_name: "Description"))
    UpdatePromptRequest.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "S3Uri"))
    UpdatePromptRequest.struct_class = Types::UpdatePromptRequest

    UpdatePromptResponse.add_member(:prompt_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "PromptARN"))
    UpdatePromptResponse.add_member(:prompt_id, Shapes::ShapeRef.new(shape: PromptId, location_name: "PromptId"))
    UpdatePromptResponse.struct_class = Types::UpdatePromptResponse

    UpdateQueueHoursOfOperationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateQueueHoursOfOperationRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "QueueId"))
    UpdateQueueHoursOfOperationRequest.add_member(:hours_of_operation_id, Shapes::ShapeRef.new(shape: HoursOfOperationId, required: true, location_name: "HoursOfOperationId"))
    UpdateQueueHoursOfOperationRequest.struct_class = Types::UpdateQueueHoursOfOperationRequest

    UpdateQueueMaxContactsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateQueueMaxContactsRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "QueueId"))
    UpdateQueueMaxContactsRequest.add_member(:max_contacts, Shapes::ShapeRef.new(shape: QueueMaxContacts, location_name: "MaxContacts", metadata: {"box" => true}))
    UpdateQueueMaxContactsRequest.struct_class = Types::UpdateQueueMaxContactsRequest

    UpdateQueueNameRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateQueueNameRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "QueueId"))
    UpdateQueueNameRequest.add_member(:name, Shapes::ShapeRef.new(shape: CommonNameLength127, location_name: "Name"))
    UpdateQueueNameRequest.add_member(:description, Shapes::ShapeRef.new(shape: QueueDescription, location_name: "Description"))
    UpdateQueueNameRequest.struct_class = Types::UpdateQueueNameRequest

    UpdateQueueOutboundCallerConfigRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateQueueOutboundCallerConfigRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "QueueId"))
    UpdateQueueOutboundCallerConfigRequest.add_member(:outbound_caller_config, Shapes::ShapeRef.new(shape: OutboundCallerConfig, required: true, location_name: "OutboundCallerConfig"))
    UpdateQueueOutboundCallerConfigRequest.struct_class = Types::UpdateQueueOutboundCallerConfigRequest

    UpdateQueueOutboundEmailConfigRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateQueueOutboundEmailConfigRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "QueueId"))
    UpdateQueueOutboundEmailConfigRequest.add_member(:outbound_email_config, Shapes::ShapeRef.new(shape: OutboundEmailConfig, required: true, location_name: "OutboundEmailConfig"))
    UpdateQueueOutboundEmailConfigRequest.struct_class = Types::UpdateQueueOutboundEmailConfigRequest

    UpdateQueueStatusRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateQueueStatusRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "QueueId"))
    UpdateQueueStatusRequest.add_member(:status, Shapes::ShapeRef.new(shape: QueueStatus, required: true, location_name: "Status"))
    UpdateQueueStatusRequest.struct_class = Types::UpdateQueueStatusRequest

    UpdateQuickConnectConfigRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateQuickConnectConfigRequest.add_member(:quick_connect_id, Shapes::ShapeRef.new(shape: QuickConnectId, required: true, location: "uri", location_name: "QuickConnectId"))
    UpdateQuickConnectConfigRequest.add_member(:quick_connect_config, Shapes::ShapeRef.new(shape: QuickConnectConfig, required: true, location_name: "QuickConnectConfig"))
    UpdateQuickConnectConfigRequest.struct_class = Types::UpdateQuickConnectConfigRequest

    UpdateQuickConnectNameRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateQuickConnectNameRequest.add_member(:quick_connect_id, Shapes::ShapeRef.new(shape: QuickConnectId, required: true, location: "uri", location_name: "QuickConnectId"))
    UpdateQuickConnectNameRequest.add_member(:name, Shapes::ShapeRef.new(shape: QuickConnectName, location_name: "Name"))
    UpdateQuickConnectNameRequest.add_member(:description, Shapes::ShapeRef.new(shape: UpdateQuickConnectDescription, location_name: "Description"))
    UpdateQuickConnectNameRequest.struct_class = Types::UpdateQuickConnectNameRequest

    UpdateRoutingProfileAgentAvailabilityTimerRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateRoutingProfileAgentAvailabilityTimerRequest.add_member(:routing_profile_id, Shapes::ShapeRef.new(shape: RoutingProfileId, required: true, location: "uri", location_name: "RoutingProfileId"))
    UpdateRoutingProfileAgentAvailabilityTimerRequest.add_member(:agent_availability_timer, Shapes::ShapeRef.new(shape: AgentAvailabilityTimer, required: true, location_name: "AgentAvailabilityTimer"))
    UpdateRoutingProfileAgentAvailabilityTimerRequest.struct_class = Types::UpdateRoutingProfileAgentAvailabilityTimerRequest

    UpdateRoutingProfileConcurrencyRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateRoutingProfileConcurrencyRequest.add_member(:routing_profile_id, Shapes::ShapeRef.new(shape: RoutingProfileId, required: true, location: "uri", location_name: "RoutingProfileId"))
    UpdateRoutingProfileConcurrencyRequest.add_member(:media_concurrencies, Shapes::ShapeRef.new(shape: MediaConcurrencies, required: true, location_name: "MediaConcurrencies"))
    UpdateRoutingProfileConcurrencyRequest.struct_class = Types::UpdateRoutingProfileConcurrencyRequest

    UpdateRoutingProfileDefaultOutboundQueueRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateRoutingProfileDefaultOutboundQueueRequest.add_member(:routing_profile_id, Shapes::ShapeRef.new(shape: RoutingProfileId, required: true, location: "uri", location_name: "RoutingProfileId"))
    UpdateRoutingProfileDefaultOutboundQueueRequest.add_member(:default_outbound_queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location_name: "DefaultOutboundQueueId"))
    UpdateRoutingProfileDefaultOutboundQueueRequest.struct_class = Types::UpdateRoutingProfileDefaultOutboundQueueRequest

    UpdateRoutingProfileNameRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateRoutingProfileNameRequest.add_member(:routing_profile_id, Shapes::ShapeRef.new(shape: RoutingProfileId, required: true, location: "uri", location_name: "RoutingProfileId"))
    UpdateRoutingProfileNameRequest.add_member(:name, Shapes::ShapeRef.new(shape: RoutingProfileName, location_name: "Name"))
    UpdateRoutingProfileNameRequest.add_member(:description, Shapes::ShapeRef.new(shape: RoutingProfileDescription, location_name: "Description"))
    UpdateRoutingProfileNameRequest.struct_class = Types::UpdateRoutingProfileNameRequest

    UpdateRoutingProfileQueuesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateRoutingProfileQueuesRequest.add_member(:routing_profile_id, Shapes::ShapeRef.new(shape: RoutingProfileId, required: true, location: "uri", location_name: "RoutingProfileId"))
    UpdateRoutingProfileQueuesRequest.add_member(:queue_configs, Shapes::ShapeRef.new(shape: RoutingProfileQueueConfigList, required: true, location_name: "QueueConfigs"))
    UpdateRoutingProfileQueuesRequest.struct_class = Types::UpdateRoutingProfileQueuesRequest

    UpdateRuleRequest.add_member(:rule_id, Shapes::ShapeRef.new(shape: RuleId, required: true, location: "uri", location_name: "RuleId"))
    UpdateRuleRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "Name"))
    UpdateRuleRequest.add_member(:function, Shapes::ShapeRef.new(shape: RuleFunction, required: true, location_name: "Function"))
    UpdateRuleRequest.add_member(:actions, Shapes::ShapeRef.new(shape: RuleActions, required: true, location_name: "Actions"))
    UpdateRuleRequest.add_member(:publish_status, Shapes::ShapeRef.new(shape: RulePublishStatus, required: true, location_name: "PublishStatus"))
    UpdateRuleRequest.struct_class = Types::UpdateRuleRequest

    UpdateSecurityProfileRequest.add_member(:description, Shapes::ShapeRef.new(shape: SecurityProfileDescription, location_name: "Description"))
    UpdateSecurityProfileRequest.add_member(:permissions, Shapes::ShapeRef.new(shape: PermissionsList, location_name: "Permissions"))
    UpdateSecurityProfileRequest.add_member(:security_profile_id, Shapes::ShapeRef.new(shape: SecurityProfileId, required: true, location: "uri", location_name: "SecurityProfileId"))
    UpdateSecurityProfileRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateSecurityProfileRequest.add_member(:allowed_access_control_tags, Shapes::ShapeRef.new(shape: AllowedAccessControlTags, location_name: "AllowedAccessControlTags"))
    UpdateSecurityProfileRequest.add_member(:tag_restricted_resources, Shapes::ShapeRef.new(shape: TagRestrictedResourceList, location_name: "TagRestrictedResources"))
    UpdateSecurityProfileRequest.add_member(:applications, Shapes::ShapeRef.new(shape: Applications, location_name: "Applications"))
    UpdateSecurityProfileRequest.add_member(:hierarchy_restricted_resources, Shapes::ShapeRef.new(shape: HierarchyRestrictedResourceList, location_name: "HierarchyRestrictedResources"))
    UpdateSecurityProfileRequest.add_member(:allowed_access_control_hierarchy_group_id, Shapes::ShapeRef.new(shape: HierarchyGroupId, location_name: "AllowedAccessControlHierarchyGroupId"))
    UpdateSecurityProfileRequest.struct_class = Types::UpdateSecurityProfileRequest

    UpdateTaskTemplateRequest.add_member(:task_template_id, Shapes::ShapeRef.new(shape: TaskTemplateId, required: true, location: "uri", location_name: "TaskTemplateId"))
    UpdateTaskTemplateRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateTaskTemplateRequest.add_member(:name, Shapes::ShapeRef.new(shape: TaskTemplateName, location_name: "Name"))
    UpdateTaskTemplateRequest.add_member(:description, Shapes::ShapeRef.new(shape: TaskTemplateDescription, location_name: "Description"))
    UpdateTaskTemplateRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, location_name: "ContactFlowId"))
    UpdateTaskTemplateRequest.add_member(:self_assign_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, location_name: "SelfAssignFlowId"))
    UpdateTaskTemplateRequest.add_member(:constraints, Shapes::ShapeRef.new(shape: TaskTemplateConstraints, location_name: "Constraints"))
    UpdateTaskTemplateRequest.add_member(:defaults, Shapes::ShapeRef.new(shape: TaskTemplateDefaults, location_name: "Defaults"))
    UpdateTaskTemplateRequest.add_member(:status, Shapes::ShapeRef.new(shape: TaskTemplateStatus, location_name: "Status"))
    UpdateTaskTemplateRequest.add_member(:fields, Shapes::ShapeRef.new(shape: TaskTemplateFields, location_name: "Fields"))
    UpdateTaskTemplateRequest.struct_class = Types::UpdateTaskTemplateRequest

    UpdateTaskTemplateResponse.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    UpdateTaskTemplateResponse.add_member(:id, Shapes::ShapeRef.new(shape: TaskTemplateId, location_name: "Id"))
    UpdateTaskTemplateResponse.add_member(:arn, Shapes::ShapeRef.new(shape: TaskTemplateArn, location_name: "Arn"))
    UpdateTaskTemplateResponse.add_member(:name, Shapes::ShapeRef.new(shape: TaskTemplateName, location_name: "Name"))
    UpdateTaskTemplateResponse.add_member(:description, Shapes::ShapeRef.new(shape: TaskTemplateDescription, location_name: "Description"))
    UpdateTaskTemplateResponse.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, location_name: "ContactFlowId"))
    UpdateTaskTemplateResponse.add_member(:self_assign_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, location_name: "SelfAssignFlowId"))
    UpdateTaskTemplateResponse.add_member(:constraints, Shapes::ShapeRef.new(shape: TaskTemplateConstraints, location_name: "Constraints"))
    UpdateTaskTemplateResponse.add_member(:defaults, Shapes::ShapeRef.new(shape: TaskTemplateDefaults, location_name: "Defaults"))
    UpdateTaskTemplateResponse.add_member(:fields, Shapes::ShapeRef.new(shape: TaskTemplateFields, location_name: "Fields"))
    UpdateTaskTemplateResponse.add_member(:status, Shapes::ShapeRef.new(shape: TaskTemplateStatus, location_name: "Status"))
    UpdateTaskTemplateResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastModifiedTime"))
    UpdateTaskTemplateResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreatedTime"))
    UpdateTaskTemplateResponse.struct_class = Types::UpdateTaskTemplateResponse

    UpdateTrafficDistributionRequest.add_member(:id, Shapes::ShapeRef.new(shape: TrafficDistributionGroupIdOrArn, required: true, location: "uri", location_name: "Id"))
    UpdateTrafficDistributionRequest.add_member(:telephony_config, Shapes::ShapeRef.new(shape: TelephonyConfig, location_name: "TelephonyConfig"))
    UpdateTrafficDistributionRequest.add_member(:sign_in_config, Shapes::ShapeRef.new(shape: SignInConfig, location_name: "SignInConfig"))
    UpdateTrafficDistributionRequest.add_member(:agent_config, Shapes::ShapeRef.new(shape: AgentConfig, location_name: "AgentConfig"))
    UpdateTrafficDistributionRequest.struct_class = Types::UpdateTrafficDistributionRequest

    UpdateTrafficDistributionResponse.struct_class = Types::UpdateTrafficDistributionResponse

    UpdateUserHierarchyGroupNameRequest.add_member(:name, Shapes::ShapeRef.new(shape: HierarchyGroupName, required: true, location_name: "Name"))
    UpdateUserHierarchyGroupNameRequest.add_member(:hierarchy_group_id, Shapes::ShapeRef.new(shape: HierarchyGroupId, required: true, location: "uri", location_name: "HierarchyGroupId"))
    UpdateUserHierarchyGroupNameRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateUserHierarchyGroupNameRequest.struct_class = Types::UpdateUserHierarchyGroupNameRequest

    UpdateUserHierarchyRequest.add_member(:hierarchy_group_id, Shapes::ShapeRef.new(shape: HierarchyGroupId, location_name: "HierarchyGroupId"))
    UpdateUserHierarchyRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "UserId"))
    UpdateUserHierarchyRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateUserHierarchyRequest.struct_class = Types::UpdateUserHierarchyRequest

    UpdateUserHierarchyStructureRequest.add_member(:hierarchy_structure, Shapes::ShapeRef.new(shape: HierarchyStructureUpdate, required: true, location_name: "HierarchyStructure"))
    UpdateUserHierarchyStructureRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateUserHierarchyStructureRequest.struct_class = Types::UpdateUserHierarchyStructureRequest

    UpdateUserIdentityInfoRequest.add_member(:identity_info, Shapes::ShapeRef.new(shape: UserIdentityInfo, required: true, location_name: "IdentityInfo"))
    UpdateUserIdentityInfoRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "UserId"))
    UpdateUserIdentityInfoRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateUserIdentityInfoRequest.struct_class = Types::UpdateUserIdentityInfoRequest

    UpdateUserPhoneConfigRequest.add_member(:phone_config, Shapes::ShapeRef.new(shape: UserPhoneConfig, required: true, location_name: "PhoneConfig"))
    UpdateUserPhoneConfigRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "UserId"))
    UpdateUserPhoneConfigRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateUserPhoneConfigRequest.struct_class = Types::UpdateUserPhoneConfigRequest

    UpdateUserProficienciesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateUserProficienciesRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "UserId"))
    UpdateUserProficienciesRequest.add_member(:user_proficiencies, Shapes::ShapeRef.new(shape: UserProficiencyList, required: true, location_name: "UserProficiencies"))
    UpdateUserProficienciesRequest.struct_class = Types::UpdateUserProficienciesRequest

    UpdateUserRoutingProfileRequest.add_member(:routing_profile_id, Shapes::ShapeRef.new(shape: RoutingProfileId, required: true, location_name: "RoutingProfileId"))
    UpdateUserRoutingProfileRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "UserId"))
    UpdateUserRoutingProfileRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateUserRoutingProfileRequest.struct_class = Types::UpdateUserRoutingProfileRequest

    UpdateUserSecurityProfilesRequest.add_member(:security_profile_ids, Shapes::ShapeRef.new(shape: SecurityProfileIds, required: true, location_name: "SecurityProfileIds"))
    UpdateUserSecurityProfilesRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "UserId"))
    UpdateUserSecurityProfilesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateUserSecurityProfilesRequest.struct_class = Types::UpdateUserSecurityProfilesRequest

    UpdateViewContentRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: ViewsInstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateViewContentRequest.add_member(:view_id, Shapes::ShapeRef.new(shape: ViewId, required: true, location: "uri", location_name: "ViewId"))
    UpdateViewContentRequest.add_member(:status, Shapes::ShapeRef.new(shape: ViewStatus, required: true, location_name: "Status"))
    UpdateViewContentRequest.add_member(:content, Shapes::ShapeRef.new(shape: ViewInputContent, required: true, location_name: "Content"))
    UpdateViewContentRequest.struct_class = Types::UpdateViewContentRequest

    UpdateViewContentResponse.add_member(:view, Shapes::ShapeRef.new(shape: View, location_name: "View"))
    UpdateViewContentResponse.struct_class = Types::UpdateViewContentResponse

    UpdateViewMetadataRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: ViewsInstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateViewMetadataRequest.add_member(:view_id, Shapes::ShapeRef.new(shape: ViewId, required: true, location: "uri", location_name: "ViewId"))
    UpdateViewMetadataRequest.add_member(:name, Shapes::ShapeRef.new(shape: ViewName, location_name: "Name"))
    UpdateViewMetadataRequest.add_member(:description, Shapes::ShapeRef.new(shape: ViewDescription, location_name: "Description"))
    UpdateViewMetadataRequest.struct_class = Types::UpdateViewMetadataRequest

    UpdateViewMetadataResponse.struct_class = Types::UpdateViewMetadataResponse

    UploadUrlMetadata.add_member(:url, Shapes::ShapeRef.new(shape: MetadataUrl, location_name: "Url"))
    UploadUrlMetadata.add_member(:url_expiry, Shapes::ShapeRef.new(shape: ISO8601Datetime, location_name: "UrlExpiry"))
    UploadUrlMetadata.add_member(:headers_to_include, Shapes::ShapeRef.new(shape: UrlMetadataSignedHeaders, location_name: "HeadersToInclude"))
    UploadUrlMetadata.struct_class = Types::UploadUrlMetadata

    UrlMetadataSignedHeaders.key = Shapes::ShapeRef.new(shape: UrlMetadataSignedHeadersKey)
    UrlMetadataSignedHeaders.value = Shapes::ShapeRef.new(shape: UrlMetadataSignedHeadersValue)

    UrlReference.add_member(:name, Shapes::ShapeRef.new(shape: ReferenceKey, location_name: "Name"))
    UrlReference.add_member(:value, Shapes::ShapeRef.new(shape: ReferenceValue, location_name: "Value"))
    UrlReference.struct_class = Types::UrlReference

    UseCase.add_member(:use_case_id, Shapes::ShapeRef.new(shape: UseCaseId, location_name: "UseCaseId"))
    UseCase.add_member(:use_case_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "UseCaseArn"))
    UseCase.add_member(:use_case_type, Shapes::ShapeRef.new(shape: UseCaseType, location_name: "UseCaseType"))
    UseCase.struct_class = Types::UseCase

    UseCaseSummaryList.member = Shapes::ShapeRef.new(shape: UseCase)

    User.add_member(:id, Shapes::ShapeRef.new(shape: UserId, location_name: "Id"))
    User.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    User.add_member(:username, Shapes::ShapeRef.new(shape: AgentUsername, location_name: "Username"))
    User.add_member(:identity_info, Shapes::ShapeRef.new(shape: UserIdentityInfo, location_name: "IdentityInfo"))
    User.add_member(:phone_config, Shapes::ShapeRef.new(shape: UserPhoneConfig, location_name: "PhoneConfig"))
    User.add_member(:directory_user_id, Shapes::ShapeRef.new(shape: DirectoryUserId, location_name: "DirectoryUserId"))
    User.add_member(:security_profile_ids, Shapes::ShapeRef.new(shape: SecurityProfileIds, location_name: "SecurityProfileIds"))
    User.add_member(:routing_profile_id, Shapes::ShapeRef.new(shape: RoutingProfileId, location_name: "RoutingProfileId"))
    User.add_member(:hierarchy_group_id, Shapes::ShapeRef.new(shape: HierarchyGroupId, location_name: "HierarchyGroupId"))
    User.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    User.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    User.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    User.struct_class = Types::User

    UserData.add_member(:user, Shapes::ShapeRef.new(shape: UserReference, location_name: "User"))
    UserData.add_member(:routing_profile, Shapes::ShapeRef.new(shape: RoutingProfileReference, location_name: "RoutingProfile"))
    UserData.add_member(:hierarchy_path, Shapes::ShapeRef.new(shape: HierarchyPathReference, location_name: "HierarchyPath"))
    UserData.add_member(:status, Shapes::ShapeRef.new(shape: AgentStatusReference, location_name: "Status"))
    UserData.add_member(:available_slots_by_channel, Shapes::ShapeRef.new(shape: ChannelToCountMap, location_name: "AvailableSlotsByChannel"))
    UserData.add_member(:max_slots_by_channel, Shapes::ShapeRef.new(shape: ChannelToCountMap, location_name: "MaxSlotsByChannel"))
    UserData.add_member(:active_slots_by_channel, Shapes::ShapeRef.new(shape: ChannelToCountMap, location_name: "ActiveSlotsByChannel"))
    UserData.add_member(:contacts, Shapes::ShapeRef.new(shape: AgentContactReferenceList, location_name: "Contacts"))
    UserData.add_member(:next_status, Shapes::ShapeRef.new(shape: AgentStatusName, location_name: "NextStatus"))
    UserData.struct_class = Types::UserData

    UserDataFilters.add_member(:queues, Shapes::ShapeRef.new(shape: Queues, location_name: "Queues"))
    UserDataFilters.add_member(:contact_filter, Shapes::ShapeRef.new(shape: ContactFilter, location_name: "ContactFilter"))
    UserDataFilters.add_member(:routing_profiles, Shapes::ShapeRef.new(shape: RoutingProfiles, location_name: "RoutingProfiles"))
    UserDataFilters.add_member(:agents, Shapes::ShapeRef.new(shape: AgentsMinOneMaxHundred, location_name: "Agents"))
    UserDataFilters.add_member(:user_hierarchy_groups, Shapes::ShapeRef.new(shape: UserDataHierarchyGroups, location_name: "UserHierarchyGroups"))
    UserDataFilters.struct_class = Types::UserDataFilters

    UserDataHierarchyGroups.member = Shapes::ShapeRef.new(shape: HierarchyGroupId)

    UserDataList.member = Shapes::ShapeRef.new(shape: UserData)

    UserHierarchyGroupList.member = Shapes::ShapeRef.new(shape: HierarchyGroup)

    UserHierarchyGroupSearchConditionList.member = Shapes::ShapeRef.new(shape: UserHierarchyGroupSearchCriteria)

    UserHierarchyGroupSearchCriteria.add_member(:or_conditions, Shapes::ShapeRef.new(shape: UserHierarchyGroupSearchConditionList, location_name: "OrConditions"))
    UserHierarchyGroupSearchCriteria.add_member(:and_conditions, Shapes::ShapeRef.new(shape: UserHierarchyGroupSearchConditionList, location_name: "AndConditions"))
    UserHierarchyGroupSearchCriteria.add_member(:string_condition, Shapes::ShapeRef.new(shape: StringCondition, location_name: "StringCondition"))
    UserHierarchyGroupSearchCriteria.struct_class = Types::UserHierarchyGroupSearchCriteria

    UserHierarchyGroupSearchFilter.add_member(:attribute_filter, Shapes::ShapeRef.new(shape: ControlPlaneAttributeFilter, location_name: "AttributeFilter"))
    UserHierarchyGroupSearchFilter.struct_class = Types::UserHierarchyGroupSearchFilter

    UserIdList.member = Shapes::ShapeRef.new(shape: UserId)

    UserIdentityInfo.add_member(:first_name, Shapes::ShapeRef.new(shape: AgentFirstName, location_name: "FirstName"))
    UserIdentityInfo.add_member(:last_name, Shapes::ShapeRef.new(shape: AgentLastName, location_name: "LastName"))
    UserIdentityInfo.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "Email"))
    UserIdentityInfo.add_member(:secondary_email, Shapes::ShapeRef.new(shape: Email, location_name: "SecondaryEmail"))
    UserIdentityInfo.add_member(:mobile, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "Mobile"))
    UserIdentityInfo.struct_class = Types::UserIdentityInfo

    UserIdentityInfoLite.add_member(:first_name, Shapes::ShapeRef.new(shape: AgentFirstName, location_name: "FirstName"))
    UserIdentityInfoLite.add_member(:last_name, Shapes::ShapeRef.new(shape: AgentLastName, location_name: "LastName"))
    UserIdentityInfoLite.struct_class = Types::UserIdentityInfoLite

    UserInfo.add_member(:user_id, Shapes::ShapeRef.new(shape: AgentResourceId, location_name: "UserId"))
    UserInfo.struct_class = Types::UserInfo

    UserNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    UserNotFoundException.struct_class = Types::UserNotFoundException

    UserPhoneConfig.add_member(:phone_type, Shapes::ShapeRef.new(shape: PhoneType, required: true, location_name: "PhoneType"))
    UserPhoneConfig.add_member(:auto_accept, Shapes::ShapeRef.new(shape: AutoAccept, location_name: "AutoAccept"))
    UserPhoneConfig.add_member(:after_contact_work_time_limit, Shapes::ShapeRef.new(shape: AfterContactWorkTimeLimit, location_name: "AfterContactWorkTimeLimit"))
    UserPhoneConfig.add_member(:desk_phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "DeskPhoneNumber"))
    UserPhoneConfig.add_member(:persistent_connection, Shapes::ShapeRef.new(shape: PersistentConnection, location_name: "PersistentConnection", metadata: {"box" => true}))
    UserPhoneConfig.struct_class = Types::UserPhoneConfig

    UserProficiency.add_member(:attribute_name, Shapes::ShapeRef.new(shape: PredefinedAttributeName, required: true, location_name: "AttributeName"))
    UserProficiency.add_member(:attribute_value, Shapes::ShapeRef.new(shape: PredefinedAttributeStringValue, required: true, location_name: "AttributeValue"))
    UserProficiency.add_member(:level, Shapes::ShapeRef.new(shape: ProficiencyLevel, required: true, location_name: "Level"))
    UserProficiency.struct_class = Types::UserProficiency

    UserProficiencyDisassociate.add_member(:attribute_name, Shapes::ShapeRef.new(shape: PredefinedAttributeName, required: true, location_name: "AttributeName"))
    UserProficiencyDisassociate.add_member(:attribute_value, Shapes::ShapeRef.new(shape: PredefinedAttributeStringValue, required: true, location_name: "AttributeValue"))
    UserProficiencyDisassociate.struct_class = Types::UserProficiencyDisassociate

    UserProficiencyDisassociateList.member = Shapes::ShapeRef.new(shape: UserProficiencyDisassociate)

    UserProficiencyList.member = Shapes::ShapeRef.new(shape: UserProficiency)

    UserQuickConnectConfig.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location_name: "UserId"))
    UserQuickConnectConfig.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, required: true, location_name: "ContactFlowId"))
    UserQuickConnectConfig.struct_class = Types::UserQuickConnectConfig

    UserReference.add_member(:id, Shapes::ShapeRef.new(shape: UserId, location_name: "Id"))
    UserReference.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    UserReference.struct_class = Types::UserReference

    UserSearchConditionList.member = Shapes::ShapeRef.new(shape: UserSearchCriteria)

    UserSearchCriteria.add_member(:or_conditions, Shapes::ShapeRef.new(shape: UserSearchConditionList, location_name: "OrConditions"))
    UserSearchCriteria.add_member(:and_conditions, Shapes::ShapeRef.new(shape: UserSearchConditionList, location_name: "AndConditions"))
    UserSearchCriteria.add_member(:string_condition, Shapes::ShapeRef.new(shape: StringCondition, location_name: "StringCondition"))
    UserSearchCriteria.add_member(:list_condition, Shapes::ShapeRef.new(shape: ListCondition, location_name: "ListCondition"))
    UserSearchCriteria.add_member(:hierarchy_group_condition, Shapes::ShapeRef.new(shape: HierarchyGroupCondition, location_name: "HierarchyGroupCondition"))
    UserSearchCriteria.struct_class = Types::UserSearchCriteria

    UserSearchFilter.add_member(:tag_filter, Shapes::ShapeRef.new(shape: ControlPlaneTagFilter, location_name: "TagFilter"))
    UserSearchFilter.add_member(:user_attribute_filter, Shapes::ShapeRef.new(shape: ControlPlaneUserAttributeFilter, location_name: "UserAttributeFilter"))
    UserSearchFilter.struct_class = Types::UserSearchFilter

    UserSearchSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    UserSearchSummary.add_member(:directory_user_id, Shapes::ShapeRef.new(shape: DirectoryUserId, location_name: "DirectoryUserId"))
    UserSearchSummary.add_member(:hierarchy_group_id, Shapes::ShapeRef.new(shape: HierarchyGroupId, location_name: "HierarchyGroupId"))
    UserSearchSummary.add_member(:id, Shapes::ShapeRef.new(shape: UserId, location_name: "Id"))
    UserSearchSummary.add_member(:identity_info, Shapes::ShapeRef.new(shape: UserIdentityInfoLite, location_name: "IdentityInfo"))
    UserSearchSummary.add_member(:phone_config, Shapes::ShapeRef.new(shape: UserPhoneConfig, location_name: "PhoneConfig"))
    UserSearchSummary.add_member(:routing_profile_id, Shapes::ShapeRef.new(shape: RoutingProfileId, location_name: "RoutingProfileId"))
    UserSearchSummary.add_member(:security_profile_ids, Shapes::ShapeRef.new(shape: SecurityProfileIds, location_name: "SecurityProfileIds"))
    UserSearchSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    UserSearchSummary.add_member(:username, Shapes::ShapeRef.new(shape: AgentUsername, location_name: "Username"))
    UserSearchSummary.struct_class = Types::UserSearchSummary

    UserSearchSummaryList.member = Shapes::ShapeRef.new(shape: UserSearchSummary)

    UserSummary.add_member(:id, Shapes::ShapeRef.new(shape: UserId, location_name: "Id"))
    UserSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    UserSummary.add_member(:username, Shapes::ShapeRef.new(shape: AgentUsername, location_name: "Username"))
    UserSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    UserSummary.add_member(:last_modified_region, Shapes::ShapeRef.new(shape: RegionName, location_name: "LastModifiedRegion"))
    UserSummary.struct_class = Types::UserSummary

    UserSummaryList.member = Shapes::ShapeRef.new(shape: UserSummary)

    UserTagMap.key = Shapes::ShapeRef.new(shape: String)
    UserTagMap.value = Shapes::ShapeRef.new(shape: String)

    View.add_member(:id, Shapes::ShapeRef.new(shape: ViewId, location_name: "Id"))
    View.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    View.add_member(:name, Shapes::ShapeRef.new(shape: ViewName, location_name: "Name"))
    View.add_member(:status, Shapes::ShapeRef.new(shape: ViewStatus, location_name: "Status"))
    View.add_member(:type, Shapes::ShapeRef.new(shape: ViewType, location_name: "Type"))
    View.add_member(:description, Shapes::ShapeRef.new(shape: ViewDescription, location_name: "Description"))
    View.add_member(:version, Shapes::ShapeRef.new(shape: ViewVersion, location_name: "Version"))
    View.add_member(:version_description, Shapes::ShapeRef.new(shape: ViewDescription, location_name: "VersionDescription"))
    View.add_member(:content, Shapes::ShapeRef.new(shape: ViewContent, location_name: "Content"))
    View.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    View.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    View.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    View.add_member(:view_content_sha_256, Shapes::ShapeRef.new(shape: ViewContentSha256, location_name: "ViewContentSha256"))
    View.struct_class = Types::View

    ViewActions.member = Shapes::ShapeRef.new(shape: ViewAction)

    ViewContent.add_member(:input_schema, Shapes::ShapeRef.new(shape: ViewInputSchema, location_name: "InputSchema"))
    ViewContent.add_member(:template, Shapes::ShapeRef.new(shape: ViewTemplate, location_name: "Template"))
    ViewContent.add_member(:actions, Shapes::ShapeRef.new(shape: ViewActions, location_name: "Actions"))
    ViewContent.struct_class = Types::ViewContent

    ViewInputContent.add_member(:template, Shapes::ShapeRef.new(shape: ViewTemplate, location_name: "Template"))
    ViewInputContent.add_member(:actions, Shapes::ShapeRef.new(shape: ViewActions, location_name: "Actions"))
    ViewInputContent.struct_class = Types::ViewInputContent

    ViewSummary.add_member(:id, Shapes::ShapeRef.new(shape: ViewId, location_name: "Id"))
    ViewSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    ViewSummary.add_member(:name, Shapes::ShapeRef.new(shape: ViewName, location_name: "Name"))
    ViewSummary.add_member(:type, Shapes::ShapeRef.new(shape: ViewType, location_name: "Type"))
    ViewSummary.add_member(:status, Shapes::ShapeRef.new(shape: ViewStatus, location_name: "Status"))
    ViewSummary.add_member(:description, Shapes::ShapeRef.new(shape: ViewDescription, location_name: "Description"))
    ViewSummary.struct_class = Types::ViewSummary

    ViewVersionSummary.add_member(:id, Shapes::ShapeRef.new(shape: ViewId, location_name: "Id"))
    ViewVersionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    ViewVersionSummary.add_member(:description, Shapes::ShapeRef.new(shape: ViewDescription, location_name: "Description"))
    ViewVersionSummary.add_member(:name, Shapes::ShapeRef.new(shape: ViewName, location_name: "Name"))
    ViewVersionSummary.add_member(:type, Shapes::ShapeRef.new(shape: ViewType, location_name: "Type"))
    ViewVersionSummary.add_member(:version, Shapes::ShapeRef.new(shape: ViewVersion, location_name: "Version"))
    ViewVersionSummary.add_member(:version_description, Shapes::ShapeRef.new(shape: ViewDescription, location_name: "VersionDescription"))
    ViewVersionSummary.struct_class = Types::ViewVersionSummary

    ViewVersionSummaryList.member = Shapes::ShapeRef.new(shape: ViewVersionSummary)

    ViewsSummaryList.member = Shapes::ShapeRef.new(shape: ViewSummary)

    Vocabulary.add_member(:name, Shapes::ShapeRef.new(shape: VocabularyName, required: true, location_name: "Name"))
    Vocabulary.add_member(:id, Shapes::ShapeRef.new(shape: VocabularyId, required: true, location_name: "Id"))
    Vocabulary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "Arn"))
    Vocabulary.add_member(:language_code, Shapes::ShapeRef.new(shape: VocabularyLanguageCode, required: true, location_name: "LanguageCode"))
    Vocabulary.add_member(:state, Shapes::ShapeRef.new(shape: VocabularyState, required: true, location_name: "State"))
    Vocabulary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: VocabularyLastModifiedTime, required: true, location_name: "LastModifiedTime"))
    Vocabulary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: VocabularyFailureReason, location_name: "FailureReason"))
    Vocabulary.add_member(:content, Shapes::ShapeRef.new(shape: VocabularyContent, location_name: "Content"))
    Vocabulary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    Vocabulary.struct_class = Types::Vocabulary

    VocabularySummary.add_member(:name, Shapes::ShapeRef.new(shape: VocabularyName, required: true, location_name: "Name"))
    VocabularySummary.add_member(:id, Shapes::ShapeRef.new(shape: VocabularyId, required: true, location_name: "Id"))
    VocabularySummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "Arn"))
    VocabularySummary.add_member(:language_code, Shapes::ShapeRef.new(shape: VocabularyLanguageCode, required: true, location_name: "LanguageCode"))
    VocabularySummary.add_member(:state, Shapes::ShapeRef.new(shape: VocabularyState, required: true, location_name: "State"))
    VocabularySummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: VocabularyLastModifiedTime, required: true, location_name: "LastModifiedTime"))
    VocabularySummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: VocabularyFailureReason, location_name: "FailureReason"))
    VocabularySummary.struct_class = Types::VocabularySummary

    VocabularySummaryList.member = Shapes::ShapeRef.new(shape: VocabularySummary)

    VoiceRecordingConfiguration.add_member(:voice_recording_track, Shapes::ShapeRef.new(shape: VoiceRecordingTrack, location_name: "VoiceRecordingTrack"))
    VoiceRecordingConfiguration.add_member(:ivr_recording_track, Shapes::ShapeRef.new(shape: IvrRecordingTrack, location_name: "IvrRecordingTrack"))
    VoiceRecordingConfiguration.struct_class = Types::VoiceRecordingConfiguration

    WisdomInfo.add_member(:session_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "SessionArn"))
    WisdomInfo.struct_class = Types::WisdomInfo

    resourceArnListMaxLimit100.member = Shapes::ShapeRef.new(shape: ARN)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-08-08"

      api.metadata = {
        "apiVersion" => "2017-08-08",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "connect",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceAbbreviation" => "Amazon Connect",
        "serviceFullName" => "Amazon Connect Service",
        "serviceId" => "Connect",
        "signatureVersion" => "v4",
        "signingName" => "connect",
        "uid" => "connect-2017-08-08",
      }

      api.add_operation(:activate_evaluation_form, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ActivateEvaluationForm"
        o.http_method = "POST"
        o.http_request_uri = "/evaluation-forms/{InstanceId}/{EvaluationFormId}/activate"
        o.input = Shapes::ShapeRef.new(shape: ActivateEvaluationFormRequest)
        o.output = Shapes::ShapeRef.new(shape: ActivateEvaluationFormResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
      end)

      api.add_operation(:associate_analytics_data_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateAnalyticsDataSet"
        o.http_method = "PUT"
        o.http_request_uri = "/analytics-data/instance/{InstanceId}/association"
        o.input = Shapes::ShapeRef.new(shape: AssociateAnalyticsDataSetRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateAnalyticsDataSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:associate_approved_origin, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateApprovedOrigin"
        o.http_method = "PUT"
        o.http_request_uri = "/instance/{InstanceId}/approved-origin"
        o.input = Shapes::ShapeRef.new(shape: AssociateApprovedOriginRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:associate_bot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateBot"
        o.http_method = "PUT"
        o.http_request_uri = "/instance/{InstanceId}/bot"
        o.input = Shapes::ShapeRef.new(shape: AssociateBotRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:associate_contact_with_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateContactWithUser"
        o.http_method = "POST"
        o.http_request_uri = "/contacts/{InstanceId}/{ContactId}/associate-user"
        o.input = Shapes::ShapeRef.new(shape: AssociateContactWithUserRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateContactWithUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:associate_default_vocabulary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateDefaultVocabulary"
        o.http_method = "PUT"
        o.http_request_uri = "/default-vocabulary/{InstanceId}/{LanguageCode}"
        o.input = Shapes::ShapeRef.new(shape: AssociateDefaultVocabularyRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateDefaultVocabularyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:associate_email_address_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateEmailAddressAlias"
        o.http_method = "POST"
        o.http_request_uri = "/email-addresses/{InstanceId}/{EmailAddressId}/associate-alias"
        o.input = Shapes::ShapeRef.new(shape: AssociateEmailAddressAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateEmailAddressAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyException)
      end)

      api.add_operation(:associate_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateFlow"
        o.http_method = "PUT"
        o.http_request_uri = "/flow-associations/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: AssociateFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:associate_instance_storage_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateInstanceStorageConfig"
        o.http_method = "PUT"
        o.http_request_uri = "/instance/{InstanceId}/storage-config"
        o.input = Shapes::ShapeRef.new(shape: AssociateInstanceStorageConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateInstanceStorageConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:associate_lambda_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateLambdaFunction"
        o.http_method = "PUT"
        o.http_request_uri = "/instance/{InstanceId}/lambda-function"
        o.input = Shapes::ShapeRef.new(shape: AssociateLambdaFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:associate_lex_bot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateLexBot"
        o.http_method = "PUT"
        o.http_request_uri = "/instance/{InstanceId}/lex-bot"
        o.input = Shapes::ShapeRef.new(shape: AssociateLexBotRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:associate_phone_number_contact_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociatePhoneNumberContactFlow"
        o.http_method = "PUT"
        o.http_request_uri = "/phone-number/{PhoneNumberId}/contact-flow"
        o.input = Shapes::ShapeRef.new(shape: AssociatePhoneNumberContactFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:associate_queue_quick_connects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateQueueQuickConnects"
        o.http_method = "POST"
        o.http_request_uri = "/queues/{InstanceId}/{QueueId}/associate-quick-connects"
        o.input = Shapes::ShapeRef.new(shape: AssociateQueueQuickConnectsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:associate_routing_profile_queues, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateRoutingProfileQueues"
        o.http_method = "POST"
        o.http_request_uri = "/routing-profiles/{InstanceId}/{RoutingProfileId}/associate-queues"
        o.input = Shapes::ShapeRef.new(shape: AssociateRoutingProfileQueuesRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:associate_security_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateSecurityKey"
        o.http_method = "PUT"
        o.http_request_uri = "/instance/{InstanceId}/security-key"
        o.input = Shapes::ShapeRef.new(shape: AssociateSecurityKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateSecurityKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:associate_traffic_distribution_group_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateTrafficDistributionGroupUser"
        o.http_method = "PUT"
        o.http_request_uri = "/traffic-distribution-group/{TrafficDistributionGroupId}/user"
        o.input = Shapes::ShapeRef.new(shape: AssociateTrafficDistributionGroupUserRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateTrafficDistributionGroupUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:associate_user_proficiencies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateUserProficiencies"
        o.http_method = "POST"
        o.http_request_uri = "/users/{InstanceId}/{UserId}/associate-proficiencies"
        o.input = Shapes::ShapeRef.new(shape: AssociateUserProficienciesRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:batch_associate_analytics_data_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchAssociateAnalyticsDataSet"
        o.http_method = "PUT"
        o.http_request_uri = "/analytics-data/instance/{InstanceId}/associations"
        o.input = Shapes::ShapeRef.new(shape: BatchAssociateAnalyticsDataSetRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchAssociateAnalyticsDataSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:batch_disassociate_analytics_data_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDisassociateAnalyticsDataSet"
        o.http_method = "POST"
        o.http_request_uri = "/analytics-data/instance/{InstanceId}/associations"
        o.input = Shapes::ShapeRef.new(shape: BatchDisassociateAnalyticsDataSetRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDisassociateAnalyticsDataSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:batch_get_attached_file_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetAttachedFileMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/attached-files/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: BatchGetAttachedFileMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetAttachedFileMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_get_flow_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetFlowAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/flow-associations-batch/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: BatchGetFlowAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetFlowAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_put_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchPutContact"
        o.http_method = "PUT"
        o.http_request_uri = "/contact/batch/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: BatchPutContactRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchPutContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyException)
      end)

      api.add_operation(:claim_phone_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ClaimPhoneNumber"
        o.http_method = "POST"
        o.http_request_uri = "/phone-number/claim"
        o.input = Shapes::ShapeRef.new(shape: ClaimPhoneNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: ClaimPhoneNumberResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:complete_attached_file_upload, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CompleteAttachedFileUpload"
        o.http_method = "POST"
        o.http_request_uri = "/attached-files/{InstanceId}/{FileId}"
        o.input = Shapes::ShapeRef.new(shape: CompleteAttachedFileUploadRequest)
        o.output = Shapes::ShapeRef.new(shape: CompleteAttachedFileUploadResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_agent_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAgentStatus"
        o.http_method = "PUT"
        o.http_request_uri = "/agent-status/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: CreateAgentStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAgentStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:create_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateContact"
        o.http_method = "PUT"
        o.http_request_uri = "/contact/create-contact"
        o.input = Shapes::ShapeRef.new(shape: CreateContactRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_contact_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateContactFlow"
        o.http_method = "PUT"
        o.http_request_uri = "/contact-flows/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: CreateContactFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateContactFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidContactFlowException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:create_contact_flow_module, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateContactFlowModule"
        o.http_method = "PUT"
        o.http_request_uri = "/contact-flow-modules/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: CreateContactFlowModuleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateContactFlowModuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidContactFlowModuleException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:create_contact_flow_module_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateContactFlowModuleAlias"
        o.http_method = "PUT"
        o.http_request_uri = "/contact-flow-modules/{InstanceId}/{ContactFlowModuleId}/alias"
        o.input = Shapes::ShapeRef.new(shape: CreateContactFlowModuleAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateContactFlowModuleAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_contact_flow_module_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateContactFlowModuleVersion"
        o.http_method = "PUT"
        o.http_request_uri = "/contact-flow-modules/{InstanceId}/{ContactFlowModuleId}/version"
        o.input = Shapes::ShapeRef.new(shape: CreateContactFlowModuleVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateContactFlowModuleVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_contact_flow_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateContactFlowVersion"
        o.http_method = "PUT"
        o.http_request_uri = "/contact-flows/{InstanceId}/{ContactFlowId}/version"
        o.input = Shapes::ShapeRef.new(shape: CreateContactFlowVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateContactFlowVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_email_address, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEmailAddress"
        o.http_method = "PUT"
        o.http_request_uri = "/email-addresses/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: CreateEmailAddressRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEmailAddressResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
      end)

      api.add_operation(:create_evaluation_form, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEvaluationForm"
        o.http_method = "PUT"
        o.http_request_uri = "/evaluation-forms/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: CreateEvaluationFormRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEvaluationFormResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
      end)

      api.add_operation(:create_hours_of_operation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateHoursOfOperation"
        o.http_method = "PUT"
        o.http_request_uri = "/hours-of-operations/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: CreateHoursOfOperationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateHoursOfOperationResponse)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:create_hours_of_operation_override, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateHoursOfOperationOverride"
        o.http_method = "PUT"
        o.http_request_uri = "/hours-of-operations/{InstanceId}/{HoursOfOperationId}/overrides"
        o.input = Shapes::ShapeRef.new(shape: CreateHoursOfOperationOverrideRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateHoursOfOperationOverrideResponse)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:create_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInstance"
        o.http_method = "PUT"
        o.http_request_uri = "/instance"
        o.input = Shapes::ShapeRef.new(shape: CreateInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:create_integration_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIntegrationAssociation"
        o.http_method = "PUT"
        o.http_request_uri = "/instance/{InstanceId}/integration-associations"
        o.input = Shapes::ShapeRef.new(shape: CreateIntegrationAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateIntegrationAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_participant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateParticipant"
        o.http_method = "POST"
        o.http_request_uri = "/contact/create-participant"
        o.input = Shapes::ShapeRef.new(shape: CreateParticipantRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateParticipantResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_persistent_contact_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePersistentContactAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/contact/persistent-contact-association/{InstanceId}/{InitialContactId}"
        o.input = Shapes::ShapeRef.new(shape: CreatePersistentContactAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePersistentContactAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:create_predefined_attribute, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePredefinedAttribute"
        o.http_method = "PUT"
        o.http_request_uri = "/predefined-attributes/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: CreatePredefinedAttributeRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:create_prompt, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePrompt"
        o.http_method = "PUT"
        o.http_request_uri = "/prompts/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: CreatePromptRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePromptResponse)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:create_push_notification_registration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePushNotificationRegistration"
        o.http_method = "PUT"
        o.http_request_uri = "/push-notification/{InstanceId}/registrations"
        o.input = Shapes::ShapeRef.new(shape: CreatePushNotificationRegistrationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePushNotificationRegistrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateQueue"
        o.http_method = "PUT"
        o.http_request_uri = "/queues/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: CreateQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateQueueResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:create_quick_connect, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateQuickConnect"
        o.http_method = "PUT"
        o.http_request_uri = "/quick-connects/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: CreateQuickConnectRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateQuickConnectResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:create_routing_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRoutingProfile"
        o.http_method = "PUT"
        o.http_request_uri = "/routing-profiles/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: CreateRoutingProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRoutingProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:create_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRule"
        o.http_method = "POST"
        o.http_request_uri = "/rules/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: CreateRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_security_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSecurityProfile"
        o.http_method = "PUT"
        o.http_request_uri = "/security-profiles/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: CreateSecurityProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSecurityProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:create_task_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTaskTemplate"
        o.http_method = "PUT"
        o.http_request_uri = "/instance/{InstanceId}/task/template"
        o.input = Shapes::ShapeRef.new(shape: CreateTaskTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTaskTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: PropertyValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:create_traffic_distribution_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTrafficDistributionGroup"
        o.http_method = "PUT"
        o.http_request_uri = "/traffic-distribution-group"
        o.input = Shapes::ShapeRef.new(shape: CreateTrafficDistributionGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTrafficDistributionGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotReadyException)
      end)

      api.add_operation(:create_use_case, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUseCase"
        o.http_method = "PUT"
        o.http_request_uri = "/instance/{InstanceId}/integration-associations/{IntegrationAssociationId}/use-cases"
        o.input = Shapes::ShapeRef.new(shape: CreateUseCaseRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUseCaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUser"
        o.http_method = "PUT"
        o.http_request_uri = "/users/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: CreateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:create_user_hierarchy_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUserHierarchyGroup"
        o.http_method = "PUT"
        o.http_request_uri = "/user-hierarchy-groups/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: CreateUserHierarchyGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserHierarchyGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:create_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateView"
        o.http_method = "PUT"
        o.http_request_uri = "/views/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: CreateViewRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateViewResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:create_view_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateViewVersion"
        o.http_method = "PUT"
        o.http_request_uri = "/views/{InstanceId}/{ViewId}/versions"
        o.input = Shapes::ShapeRef.new(shape: CreateViewVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateViewVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:create_vocabulary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVocabulary"
        o.http_method = "POST"
        o.http_request_uri = "/vocabulary/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: CreateVocabularyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateVocabularyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:deactivate_evaluation_form, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeactivateEvaluationForm"
        o.http_method = "POST"
        o.http_request_uri = "/evaluation-forms/{InstanceId}/{EvaluationFormId}/deactivate"
        o.input = Shapes::ShapeRef.new(shape: DeactivateEvaluationFormRequest)
        o.output = Shapes::ShapeRef.new(shape: DeactivateEvaluationFormResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
      end)

      api.add_operation(:delete_attached_file, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAttachedFile"
        o.http_method = "DELETE"
        o.http_request_uri = "/attached-files/{InstanceId}/{FileId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAttachedFileRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAttachedFileResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_contact_evaluation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteContactEvaluation"
        o.http_method = "DELETE"
        o.http_request_uri = "/contact-evaluations/{InstanceId}/{EvaluationId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteContactEvaluationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
      end)

      api.add_operation(:delete_contact_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteContactFlow"
        o.http_method = "DELETE"
        o.http_request_uri = "/contact-flows/{InstanceId}/{ContactFlowId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteContactFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteContactFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_contact_flow_module, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteContactFlowModule"
        o.http_method = "DELETE"
        o.http_request_uri = "/contact-flow-modules/{InstanceId}/{ContactFlowModuleId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteContactFlowModuleRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteContactFlowModuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:delete_contact_flow_module_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteContactFlowModuleAlias"
        o.http_method = "DELETE"
        o.http_request_uri = "/contact-flow-modules/{InstanceId}/{ContactFlowModuleId}/alias/{AliasId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteContactFlowModuleAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteContactFlowModuleAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_contact_flow_module_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteContactFlowModuleVersion"
        o.http_method = "DELETE"
        o.http_request_uri = "/contact-flow-modules/{InstanceId}/{ContactFlowModuleId}/version/{ContactFlowModuleVersion}"
        o.input = Shapes::ShapeRef.new(shape: DeleteContactFlowModuleVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteContactFlowModuleVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_contact_flow_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteContactFlowVersion"
        o.http_method = "DELETE"
        o.http_request_uri = "/contact-flows/{InstanceId}/{ContactFlowId}/version/{ContactFlowVersion}"
        o.input = Shapes::ShapeRef.new(shape: DeleteContactFlowVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteContactFlowVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_email_address, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEmailAddress"
        o.http_method = "DELETE"
        o.http_request_uri = "/email-addresses/{InstanceId}/{EmailAddressId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEmailAddressRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEmailAddressResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
      end)

      api.add_operation(:delete_evaluation_form, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEvaluationForm"
        o.http_method = "DELETE"
        o.http_request_uri = "/evaluation-forms/{InstanceId}/{EvaluationFormId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEvaluationFormRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
      end)

      api.add_operation(:delete_hours_of_operation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteHoursOfOperation"
        o.http_method = "DELETE"
        o.http_request_uri = "/hours-of-operations/{InstanceId}/{HoursOfOperationId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteHoursOfOperationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:delete_hours_of_operation_override, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteHoursOfOperationOverride"
        o.http_method = "DELETE"
        o.http_request_uri = "/hours-of-operations/{InstanceId}/{HoursOfOperationId}/overrides/{HoursOfOperationOverrideId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteHoursOfOperationOverrideRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:delete_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInstance"
        o.http_method = "DELETE"
        o.http_request_uri = "/instance/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:delete_integration_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIntegrationAssociation"
        o.http_method = "DELETE"
        o.http_request_uri = "/instance/{InstanceId}/integration-associations/{IntegrationAssociationId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteIntegrationAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_predefined_attribute, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePredefinedAttribute"
        o.http_method = "DELETE"
        o.http_request_uri = "/predefined-attributes/{InstanceId}/{Name}"
        o.input = Shapes::ShapeRef.new(shape: DeletePredefinedAttributeRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:delete_prompt, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePrompt"
        o.http_method = "DELETE"
        o.http_request_uri = "/prompts/{InstanceId}/{PromptId}"
        o.input = Shapes::ShapeRef.new(shape: DeletePromptRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:delete_push_notification_registration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePushNotificationRegistration"
        o.http_method = "DELETE"
        o.http_request_uri = "/push-notification/{InstanceId}/registrations/{RegistrationId}"
        o.input = Shapes::ShapeRef.new(shape: DeletePushNotificationRegistrationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePushNotificationRegistrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteQueue"
        o.http_method = "DELETE"
        o.http_request_uri = "/queues/{InstanceId}/{QueueId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:delete_quick_connect, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteQuickConnect"
        o.http_method = "DELETE"
        o.http_request_uri = "/quick-connects/{InstanceId}/{QuickConnectId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteQuickConnectRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:delete_routing_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRoutingProfile"
        o.http_method = "DELETE"
        o.http_request_uri = "/routing-profiles/{InstanceId}/{RoutingProfileId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRoutingProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:delete_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRule"
        o.http_method = "DELETE"
        o.http_request_uri = "/rules/{InstanceId}/{RuleId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_security_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSecurityProfile"
        o.http_method = "DELETE"
        o.http_request_uri = "/security-profiles/{InstanceId}/{SecurityProfileId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSecurityProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:delete_task_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTaskTemplate"
        o.http_method = "DELETE"
        o.http_request_uri = "/instance/{InstanceId}/task/template/{TaskTemplateId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTaskTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTaskTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:delete_traffic_distribution_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTrafficDistributionGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/traffic-distribution-group/{TrafficDistributionGroupId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTrafficDistributionGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTrafficDistributionGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:delete_use_case, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUseCase"
        o.http_method = "DELETE"
        o.http_request_uri = "/instance/{InstanceId}/integration-associations/{IntegrationAssociationId}/use-cases/{UseCaseId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteUseCaseRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUser"
        o.http_method = "DELETE"
        o.http_request_uri = "/users/{InstanceId}/{UserId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:delete_user_hierarchy_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUserHierarchyGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/user-hierarchy-groups/{InstanceId}/{HierarchyGroupId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserHierarchyGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:delete_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteView"
        o.http_method = "DELETE"
        o.http_request_uri = "/views/{InstanceId}/{ViewId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteViewRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteViewResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:delete_view_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteViewVersion"
        o.http_method = "DELETE"
        o.http_request_uri = "/views/{InstanceId}/{ViewId}/versions/{ViewVersion}"
        o.input = Shapes::ShapeRef.new(shape: DeleteViewVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteViewVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:delete_vocabulary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVocabulary"
        o.http_method = "POST"
        o.http_request_uri = "/vocabulary-remove/{InstanceId}/{VocabularyId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteVocabularyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteVocabularyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:describe_agent_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAgentStatus"
        o.http_method = "GET"
        o.http_request_uri = "/agent-status/{InstanceId}/{AgentStatusId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeAgentStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAgentStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_authentication_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAuthenticationProfile"
        o.http_method = "GET"
        o.http_request_uri = "/authentication-profiles/{InstanceId}/{AuthenticationProfileId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeAuthenticationProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAuthenticationProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeContact"
        o.http_method = "GET"
        o.http_request_uri = "/contacts/{InstanceId}/{ContactId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeContactRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_contact_evaluation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeContactEvaluation"
        o.http_method = "GET"
        o.http_request_uri = "/contact-evaluations/{InstanceId}/{EvaluationId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeContactEvaluationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeContactEvaluationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_contact_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeContactFlow"
        o.http_method = "GET"
        o.http_request_uri = "/contact-flows/{InstanceId}/{ContactFlowId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeContactFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeContactFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ContactFlowNotPublishedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_contact_flow_module, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeContactFlowModule"
        o.http_method = "GET"
        o.http_request_uri = "/contact-flow-modules/{InstanceId}/{ContactFlowModuleId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeContactFlowModuleRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeContactFlowModuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_contact_flow_module_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeContactFlowModuleAlias"
        o.http_method = "GET"
        o.http_request_uri = "/contact-flow-modules/{InstanceId}/{ContactFlowModuleId}/alias/{AliasId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeContactFlowModuleAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeContactFlowModuleAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_email_address, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEmailAddress"
        o.http_method = "GET"
        o.http_request_uri = "/email-addresses/{InstanceId}/{EmailAddressId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeEmailAddressRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEmailAddressResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_evaluation_form, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEvaluationForm"
        o.http_method = "GET"
        o.http_request_uri = "/evaluation-forms/{InstanceId}/{EvaluationFormId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeEvaluationFormRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEvaluationFormResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_hours_of_operation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeHoursOfOperation"
        o.http_method = "GET"
        o.http_request_uri = "/hours-of-operations/{InstanceId}/{HoursOfOperationId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeHoursOfOperationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeHoursOfOperationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_hours_of_operation_override, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeHoursOfOperationOverride"
        o.http_method = "GET"
        o.http_request_uri = "/hours-of-operations/{InstanceId}/{HoursOfOperationId}/overrides/{HoursOfOperationOverrideId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeHoursOfOperationOverrideRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeHoursOfOperationOverrideResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInstance"
        o.http_method = "GET"
        o.http_request_uri = "/instance/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_instance_attribute, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInstanceAttribute"
        o.http_method = "GET"
        o.http_request_uri = "/instance/{InstanceId}/attribute/{AttributeType}"
        o.input = Shapes::ShapeRef.new(shape: DescribeInstanceAttributeRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInstanceAttributeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_instance_storage_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInstanceStorageConfig"
        o.http_method = "GET"
        o.http_request_uri = "/instance/{InstanceId}/storage-config/{AssociationId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeInstanceStorageConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInstanceStorageConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_phone_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePhoneNumber"
        o.http_method = "GET"
        o.http_request_uri = "/phone-number/{PhoneNumberId}"
        o.input = Shapes::ShapeRef.new(shape: DescribePhoneNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePhoneNumberResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_predefined_attribute, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePredefinedAttribute"
        o.http_method = "GET"
        o.http_request_uri = "/predefined-attributes/{InstanceId}/{Name}"
        o.input = Shapes::ShapeRef.new(shape: DescribePredefinedAttributeRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePredefinedAttributeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_prompt, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePrompt"
        o.http_method = "GET"
        o.http_request_uri = "/prompts/{InstanceId}/{PromptId}"
        o.input = Shapes::ShapeRef.new(shape: DescribePromptRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePromptResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeQueue"
        o.http_method = "GET"
        o.http_request_uri = "/queues/{InstanceId}/{QueueId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeQueueResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_quick_connect, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeQuickConnect"
        o.http_method = "GET"
        o.http_request_uri = "/quick-connects/{InstanceId}/{QuickConnectId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeQuickConnectRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeQuickConnectResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_routing_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRoutingProfile"
        o.http_method = "GET"
        o.http_request_uri = "/routing-profiles/{InstanceId}/{RoutingProfileId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeRoutingProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRoutingProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRule"
        o.http_method = "GET"
        o.http_request_uri = "/rules/{InstanceId}/{RuleId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_security_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSecurityProfile"
        o.http_method = "GET"
        o.http_request_uri = "/security-profiles/{InstanceId}/{SecurityProfileId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeSecurityProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSecurityProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_traffic_distribution_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTrafficDistributionGroup"
        o.http_method = "GET"
        o.http_request_uri = "/traffic-distribution-group/{TrafficDistributionGroupId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeTrafficDistributionGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTrafficDistributionGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeUser"
        o.http_method = "GET"
        o.http_request_uri = "/users/{InstanceId}/{UserId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_user_hierarchy_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeUserHierarchyGroup"
        o.http_method = "GET"
        o.http_request_uri = "/user-hierarchy-groups/{InstanceId}/{HierarchyGroupId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeUserHierarchyGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeUserHierarchyGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_user_hierarchy_structure, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeUserHierarchyStructure"
        o.http_method = "GET"
        o.http_request_uri = "/user-hierarchy-structure/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeUserHierarchyStructureRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeUserHierarchyStructureResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeView"
        o.http_method = "GET"
        o.http_request_uri = "/views/{InstanceId}/{ViewId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeViewRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeViewResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_vocabulary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeVocabulary"
        o.http_method = "GET"
        o.http_request_uri = "/vocabulary/{InstanceId}/{VocabularyId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeVocabularyRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeVocabularyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:disassociate_analytics_data_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateAnalyticsDataSet"
        o.http_method = "POST"
        o.http_request_uri = "/analytics-data/instance/{InstanceId}/association"
        o.input = Shapes::ShapeRef.new(shape: DisassociateAnalyticsDataSetRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:disassociate_approved_origin, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateApprovedOrigin"
        o.http_method = "DELETE"
        o.http_request_uri = "/instance/{InstanceId}/approved-origin"
        o.input = Shapes::ShapeRef.new(shape: DisassociateApprovedOriginRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disassociate_bot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateBot"
        o.http_method = "POST"
        o.http_request_uri = "/instance/{InstanceId}/bot"
        o.input = Shapes::ShapeRef.new(shape: DisassociateBotRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disassociate_email_address_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateEmailAddressAlias"
        o.http_method = "POST"
        o.http_request_uri = "/email-addresses/{InstanceId}/{EmailAddressId}/disassociate-alias"
        o.input = Shapes::ShapeRef.new(shape: DisassociateEmailAddressAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateEmailAddressAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
      end)

      api.add_operation(:disassociate_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateFlow"
        o.http_method = "DELETE"
        o.http_request_uri = "/flow-associations/{InstanceId}/{ResourceId}/{ResourceType}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disassociate_instance_storage_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateInstanceStorageConfig"
        o.http_method = "DELETE"
        o.http_request_uri = "/instance/{InstanceId}/storage-config/{AssociationId}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateInstanceStorageConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disassociate_lambda_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateLambdaFunction"
        o.http_method = "DELETE"
        o.http_request_uri = "/instance/{InstanceId}/lambda-function"
        o.input = Shapes::ShapeRef.new(shape: DisassociateLambdaFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disassociate_lex_bot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateLexBot"
        o.http_method = "DELETE"
        o.http_request_uri = "/instance/{InstanceId}/lex-bot"
        o.input = Shapes::ShapeRef.new(shape: DisassociateLexBotRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disassociate_phone_number_contact_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociatePhoneNumberContactFlow"
        o.http_method = "DELETE"
        o.http_request_uri = "/phone-number/{PhoneNumberId}/contact-flow"
        o.input = Shapes::ShapeRef.new(shape: DisassociatePhoneNumberContactFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:disassociate_queue_quick_connects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateQueueQuickConnects"
        o.http_method = "POST"
        o.http_request_uri = "/queues/{InstanceId}/{QueueId}/disassociate-quick-connects"
        o.input = Shapes::ShapeRef.new(shape: DisassociateQueueQuickConnectsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:disassociate_routing_profile_queues, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateRoutingProfileQueues"
        o.http_method = "POST"
        o.http_request_uri = "/routing-profiles/{InstanceId}/{RoutingProfileId}/disassociate-queues"
        o.input = Shapes::ShapeRef.new(shape: DisassociateRoutingProfileQueuesRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:disassociate_security_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateSecurityKey"
        o.http_method = "DELETE"
        o.http_request_uri = "/instance/{InstanceId}/security-key/{AssociationId}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateSecurityKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disassociate_traffic_distribution_group_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateTrafficDistributionGroupUser"
        o.http_method = "DELETE"
        o.http_request_uri = "/traffic-distribution-group/{TrafficDistributionGroupId}/user"
        o.input = Shapes::ShapeRef.new(shape: DisassociateTrafficDistributionGroupUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateTrafficDistributionGroupUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:disassociate_user_proficiencies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateUserProficiencies"
        o.http_method = "POST"
        o.http_request_uri = "/users/{InstanceId}/{UserId}/disassociate-proficiencies"
        o.input = Shapes::ShapeRef.new(shape: DisassociateUserProficienciesRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:dismiss_user_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DismissUserContact"
        o.http_method = "POST"
        o.http_request_uri = "/users/{InstanceId}/{UserId}/contact"
        o.input = Shapes::ShapeRef.new(shape: DismissUserContactRequest)
        o.output = Shapes::ShapeRef.new(shape: DismissUserContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:get_attached_file, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAttachedFile"
        o.http_method = "GET"
        o.http_request_uri = "/attached-files/{InstanceId}/{FileId}"
        o.input = Shapes::ShapeRef.new(shape: GetAttachedFileRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAttachedFileResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_contact_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetContactAttributes"
        o.http_method = "GET"
        o.http_request_uri = "/contact/attributes/{InstanceId}/{InitialContactId}"
        o.input = Shapes::ShapeRef.new(shape: GetContactAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetContactAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:get_contact_metrics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetContactMetrics"
        o.http_method = "POST"
        o.http_request_uri = "/metrics/contact"
        o.input = Shapes::ShapeRef.new(shape: GetContactMetricsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetContactMetricsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:get_current_metric_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCurrentMetricData"
        o.http_method = "POST"
        o.http_request_uri = "/metrics/current/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: GetCurrentMetricDataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCurrentMetricDataResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_current_user_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCurrentUserData"
        o.http_method = "POST"
        o.http_request_uri = "/metrics/userdata/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: GetCurrentUserDataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCurrentUserDataResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_effective_hours_of_operations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEffectiveHoursOfOperations"
        o.http_method = "GET"
        o.http_request_uri = "/effective-hours-of-operations/{InstanceId}/{HoursOfOperationId}"
        o.input = Shapes::ShapeRef.new(shape: GetEffectiveHoursOfOperationsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEffectiveHoursOfOperationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:get_federation_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFederationToken"
        o.http_method = "GET"
        o.http_request_uri = "/user/federate/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: GetFederationTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFederationTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
      end)

      api.add_operation(:get_flow_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFlowAssociation"
        o.http_method = "GET"
        o.http_request_uri = "/flow-associations/{InstanceId}/{ResourceId}/{ResourceType}"
        o.input = Shapes::ShapeRef.new(shape: GetFlowAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFlowAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_metric_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMetricData"
        o.http_method = "POST"
        o.http_request_uri = "/metrics/historical/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: GetMetricDataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMetricDataResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_metric_data_v2, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMetricDataV2"
        o.http_method = "POST"
        o.http_request_uri = "/metrics/data"
        o.input = Shapes::ShapeRef.new(shape: GetMetricDataV2Request)
        o.output = Shapes::ShapeRef.new(shape: GetMetricDataV2Response)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_prompt_file, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPromptFile"
        o.http_method = "GET"
        o.http_request_uri = "/prompts/{InstanceId}/{PromptId}/file"
        o.input = Shapes::ShapeRef.new(shape: GetPromptFileRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPromptFileResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:get_task_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTaskTemplate"
        o.http_method = "GET"
        o.http_request_uri = "/instance/{InstanceId}/task/template/{TaskTemplateId}"
        o.input = Shapes::ShapeRef.new(shape: GetTaskTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTaskTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:get_traffic_distribution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTrafficDistribution"
        o.http_method = "GET"
        o.http_request_uri = "/traffic-distribution/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetTrafficDistributionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTrafficDistributionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:import_phone_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportPhoneNumber"
        o.http_method = "POST"
        o.http_request_uri = "/phone-number/import"
        o.input = Shapes::ShapeRef.new(shape: ImportPhoneNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportPhoneNumberResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_agent_statuses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAgentStatuses"
        o.http_method = "GET"
        o.http_request_uri = "/agent-status/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: ListAgentStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAgentStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_analytics_data_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAnalyticsDataAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/analytics-data/instance/{InstanceId}/association"
        o.input = Shapes::ShapeRef.new(shape: ListAnalyticsDataAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAnalyticsDataAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:list_analytics_data_lake_data_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAnalyticsDataLakeDataSets"
        o.http_method = "GET"
        o.http_request_uri = "/analytics-data/instance/{InstanceId}/datasets"
        o.input = Shapes::ShapeRef.new(shape: ListAnalyticsDataLakeDataSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAnalyticsDataLakeDataSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:list_approved_origins, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApprovedOrigins"
        o.http_method = "GET"
        o.http_request_uri = "/instance/{InstanceId}/approved-origins"
        o.input = Shapes::ShapeRef.new(shape: ListApprovedOriginsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApprovedOriginsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_associated_contacts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssociatedContacts"
        o.http_method = "GET"
        o.http_request_uri = "/contact/associated/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: ListAssociatedContactsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssociatedContactsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_authentication_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAuthenticationProfiles"
        o.http_method = "GET"
        o.http_request_uri = "/authentication-profiles-summary/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: ListAuthenticationProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAuthenticationProfilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_bots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBots"
        o.http_method = "GET"
        o.http_request_uri = "/instance/{InstanceId}/bots"
        o.input = Shapes::ShapeRef.new(shape: ListBotsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBotsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_contact_evaluations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListContactEvaluations"
        o.http_method = "GET"
        o.http_request_uri = "/contact-evaluations/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: ListContactEvaluationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListContactEvaluationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_contact_flow_module_aliases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListContactFlowModuleAliases"
        o.http_method = "GET"
        o.http_request_uri = "/contact-flow-modules/{InstanceId}/{ContactFlowModuleId}/aliases"
        o.input = Shapes::ShapeRef.new(shape: ListContactFlowModuleAliasesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListContactFlowModuleAliasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_contact_flow_module_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListContactFlowModuleVersions"
        o.http_method = "GET"
        o.http_request_uri = "/contact-flow-modules/{InstanceId}/{ContactFlowModuleId}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListContactFlowModuleVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListContactFlowModuleVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_contact_flow_modules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListContactFlowModules"
        o.http_method = "GET"
        o.http_request_uri = "/contact-flow-modules-summary/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: ListContactFlowModulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListContactFlowModulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_contact_flow_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListContactFlowVersions"
        o.http_method = "GET"
        o.http_request_uri = "/contact-flows/{InstanceId}/{ContactFlowId}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListContactFlowVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListContactFlowVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_contact_flows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListContactFlows"
        o.http_method = "GET"
        o.http_request_uri = "/contact-flows-summary/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: ListContactFlowsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListContactFlowsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_contact_references, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListContactReferences"
        o.http_method = "GET"
        o.http_request_uri = "/contact/references/{InstanceId}/{ContactId}"
        o.input = Shapes::ShapeRef.new(shape: ListContactReferencesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListContactReferencesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_default_vocabularies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDefaultVocabularies"
        o.http_method = "POST"
        o.http_request_uri = "/default-vocabulary-summary/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: ListDefaultVocabulariesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDefaultVocabulariesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_evaluation_form_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEvaluationFormVersions"
        o.http_method = "GET"
        o.http_request_uri = "/evaluation-forms/{InstanceId}/{EvaluationFormId}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListEvaluationFormVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEvaluationFormVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_evaluation_forms, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEvaluationForms"
        o.http_method = "GET"
        o.http_request_uri = "/evaluation-forms/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: ListEvaluationFormsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEvaluationFormsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_flow_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFlowAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/flow-associations-summary/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: ListFlowAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFlowAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_hours_of_operation_overrides, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListHoursOfOperationOverrides"
        o.http_method = "GET"
        o.http_request_uri = "/hours-of-operations/{InstanceId}/{HoursOfOperationId}/overrides"
        o.input = Shapes::ShapeRef.new(shape: ListHoursOfOperationOverridesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListHoursOfOperationOverridesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_hours_of_operations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListHoursOfOperations"
        o.http_method = "GET"
        o.http_request_uri = "/hours-of-operations-summary/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: ListHoursOfOperationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListHoursOfOperationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_instance_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInstanceAttributes"
        o.http_method = "GET"
        o.http_request_uri = "/instance/{InstanceId}/attributes"
        o.input = Shapes::ShapeRef.new(shape: ListInstanceAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInstanceAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_instance_storage_configs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInstanceStorageConfigs"
        o.http_method = "GET"
        o.http_request_uri = "/instance/{InstanceId}/storage-configs"
        o.input = Shapes::ShapeRef.new(shape: ListInstanceStorageConfigsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInstanceStorageConfigsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInstances"
        o.http_method = "GET"
        o.http_request_uri = "/instance"
        o.input = Shapes::ShapeRef.new(shape: ListInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInstancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_integration_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIntegrationAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/instance/{InstanceId}/integration-associations"
        o.input = Shapes::ShapeRef.new(shape: ListIntegrationAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIntegrationAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_lambda_functions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLambdaFunctions"
        o.http_method = "GET"
        o.http_request_uri = "/instance/{InstanceId}/lambda-functions"
        o.input = Shapes::ShapeRef.new(shape: ListLambdaFunctionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLambdaFunctionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_lex_bots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLexBots"
        o.http_method = "GET"
        o.http_request_uri = "/instance/{InstanceId}/lex-bots"
        o.input = Shapes::ShapeRef.new(shape: ListLexBotsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLexBotsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_phone_numbers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPhoneNumbers"
        o.http_method = "GET"
        o.http_request_uri = "/phone-numbers-summary/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: ListPhoneNumbersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPhoneNumbersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_phone_numbers_v2, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPhoneNumbersV2"
        o.http_method = "POST"
        o.http_request_uri = "/phone-number/list"
        o.input = Shapes::ShapeRef.new(shape: ListPhoneNumbersV2Request)
        o.output = Shapes::ShapeRef.new(shape: ListPhoneNumbersV2Response)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_predefined_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPredefinedAttributes"
        o.http_method = "GET"
        o.http_request_uri = "/predefined-attributes/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: ListPredefinedAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPredefinedAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_prompts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPrompts"
        o.http_method = "GET"
        o.http_request_uri = "/prompts-summary/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: ListPromptsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPromptsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_queue_quick_connects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListQueueQuickConnects"
        o.http_method = "GET"
        o.http_request_uri = "/queues/{InstanceId}/{QueueId}/quick-connects"
        o.input = Shapes::ShapeRef.new(shape: ListQueueQuickConnectsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListQueueQuickConnectsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_queues, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListQueues"
        o.http_method = "GET"
        o.http_request_uri = "/queues-summary/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: ListQueuesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListQueuesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_quick_connects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListQuickConnects"
        o.http_method = "GET"
        o.http_request_uri = "/quick-connects/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: ListQuickConnectsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListQuickConnectsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_realtime_contact_analysis_segments_v2, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRealtimeContactAnalysisSegmentsV2"
        o.http_method = "POST"
        o.http_request_uri = "/contact/list-real-time-analysis-segments-v2/{InstanceId}/{ContactId}"
        o.input = Shapes::ShapeRef.new(shape: ListRealtimeContactAnalysisSegmentsV2Request)
        o.output = Shapes::ShapeRef.new(shape: ListRealtimeContactAnalysisSegmentsV2Response)
        o.errors << Shapes::ShapeRef.new(shape: OutputTypeNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_routing_profile_manual_assignment_queues, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRoutingProfileManualAssignmentQueues"
        o.http_method = "GET"
        o.http_request_uri = "/routing-profiles/{InstanceId}/{RoutingProfileId}/manual-assignment-queues"
        o.input = Shapes::ShapeRef.new(shape: ListRoutingProfileManualAssignmentQueuesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRoutingProfileManualAssignmentQueuesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_routing_profile_queues, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRoutingProfileQueues"
        o.http_method = "GET"
        o.http_request_uri = "/routing-profiles/{InstanceId}/{RoutingProfileId}/queues"
        o.input = Shapes::ShapeRef.new(shape: ListRoutingProfileQueuesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRoutingProfileQueuesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_routing_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRoutingProfiles"
        o.http_method = "GET"
        o.http_request_uri = "/routing-profiles-summary/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: ListRoutingProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRoutingProfilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRules"
        o.http_method = "GET"
        o.http_request_uri = "/rules/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: ListRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_security_keys, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSecurityKeys"
        o.http_method = "GET"
        o.http_request_uri = "/instance/{InstanceId}/security-keys"
        o.input = Shapes::ShapeRef.new(shape: ListSecurityKeysRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSecurityKeysResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_security_profile_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSecurityProfileApplications"
        o.http_method = "GET"
        o.http_request_uri = "/security-profiles-applications/{InstanceId}/{SecurityProfileId}"
        o.input = Shapes::ShapeRef.new(shape: ListSecurityProfileApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSecurityProfileApplicationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_security_profile_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSecurityProfilePermissions"
        o.http_method = "GET"
        o.http_request_uri = "/security-profiles-permissions/{InstanceId}/{SecurityProfileId}"
        o.input = Shapes::ShapeRef.new(shape: ListSecurityProfilePermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSecurityProfilePermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_security_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSecurityProfiles"
        o.http_method = "GET"
        o.http_request_uri = "/security-profiles-summary/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: ListSecurityProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSecurityProfilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
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
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_task_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTaskTemplates"
        o.http_method = "GET"
        o.http_request_uri = "/instance/{InstanceId}/task/template"
        o.input = Shapes::ShapeRef.new(shape: ListTaskTemplatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTaskTemplatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_traffic_distribution_group_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTrafficDistributionGroupUsers"
        o.http_method = "GET"
        o.http_request_uri = "/traffic-distribution-group/{TrafficDistributionGroupId}/user"
        o.input = Shapes::ShapeRef.new(shape: ListTrafficDistributionGroupUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTrafficDistributionGroupUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_traffic_distribution_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTrafficDistributionGroups"
        o.http_method = "GET"
        o.http_request_uri = "/traffic-distribution-groups"
        o.input = Shapes::ShapeRef.new(shape: ListTrafficDistributionGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTrafficDistributionGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_use_cases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUseCases"
        o.http_method = "GET"
        o.http_request_uri = "/instance/{InstanceId}/integration-associations/{IntegrationAssociationId}/use-cases"
        o.input = Shapes::ShapeRef.new(shape: ListUseCasesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUseCasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_user_hierarchy_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUserHierarchyGroups"
        o.http_method = "GET"
        o.http_request_uri = "/user-hierarchy-groups-summary/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: ListUserHierarchyGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUserHierarchyGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_user_proficiencies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUserProficiencies"
        o.http_method = "GET"
        o.http_request_uri = "/users/{InstanceId}/{UserId}/proficiencies"
        o.input = Shapes::ShapeRef.new(shape: ListUserProficienciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUserProficienciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUsers"
        o.http_method = "GET"
        o.http_request_uri = "/users-summary/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: ListUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_view_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListViewVersions"
        o.http_method = "GET"
        o.http_request_uri = "/views/{InstanceId}/{ViewId}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListViewVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListViewVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_views, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListViews"
        o.http_method = "GET"
        o.http_request_uri = "/views/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: ListViewsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListViewsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:monitor_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "MonitorContact"
        o.http_method = "POST"
        o.http_request_uri = "/contact/monitor"
        o.input = Shapes::ShapeRef.new(shape: MonitorContactRequest)
        o.output = Shapes::ShapeRef.new(shape: MonitorContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:pause_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PauseContact"
        o.http_method = "POST"
        o.http_request_uri = "/contact/pause"
        o.input = Shapes::ShapeRef.new(shape: PauseContactRequest)
        o.output = Shapes::ShapeRef.new(shape: PauseContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:put_user_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutUserStatus"
        o.http_method = "PUT"
        o.http_request_uri = "/users/{InstanceId}/{UserId}/status"
        o.input = Shapes::ShapeRef.new(shape: PutUserStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: PutUserStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:release_phone_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ReleasePhoneNumber"
        o.http_method = "DELETE"
        o.http_request_uri = "/phone-number/{PhoneNumberId}"
        o.input = Shapes::ShapeRef.new(shape: ReleasePhoneNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:replicate_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ReplicateInstance"
        o.http_method = "POST"
        o.http_request_uri = "/instance/{InstanceId}/replicate"
        o.input = Shapes::ShapeRef.new(shape: ReplicateInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: ReplicateInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
      end)

      api.add_operation(:resume_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResumeContact"
        o.http_method = "POST"
        o.http_request_uri = "/contact/resume"
        o.input = Shapes::ShapeRef.new(shape: ResumeContactRequest)
        o.output = Shapes::ShapeRef.new(shape: ResumeContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:resume_contact_recording, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResumeContactRecording"
        o.http_method = "POST"
        o.http_request_uri = "/contact/resume-recording"
        o.input = Shapes::ShapeRef.new(shape: ResumeContactRecordingRequest)
        o.output = Shapes::ShapeRef.new(shape: ResumeContactRecordingResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:search_agent_statuses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchAgentStatuses"
        o.http_method = "POST"
        o.http_request_uri = "/search-agent-statuses"
        o.input = Shapes::ShapeRef.new(shape: SearchAgentStatusesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchAgentStatusesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_available_phone_numbers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchAvailablePhoneNumbers"
        o.http_method = "POST"
        o.http_request_uri = "/phone-number/search-available"
        o.input = Shapes::ShapeRef.new(shape: SearchAvailablePhoneNumbersRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchAvailablePhoneNumbersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_contact_evaluations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchContactEvaluations"
        o.http_method = "POST"
        o.http_request_uri = "/search-contact-evaluations"
        o.input = Shapes::ShapeRef.new(shape: SearchContactEvaluationsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchContactEvaluationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:search_contact_flow_modules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchContactFlowModules"
        o.http_method = "POST"
        o.http_request_uri = "/search-contact-flow-modules"
        o.input = Shapes::ShapeRef.new(shape: SearchContactFlowModulesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchContactFlowModulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_contact_flows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchContactFlows"
        o.http_method = "POST"
        o.http_request_uri = "/search-contact-flows"
        o.input = Shapes::ShapeRef.new(shape: SearchContactFlowsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchContactFlowsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_contacts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchContacts"
        o.http_method = "POST"
        o.http_request_uri = "/search-contacts"
        o.input = Shapes::ShapeRef.new(shape: SearchContactsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchContactsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_email_addresses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchEmailAddresses"
        o.http_method = "POST"
        o.http_request_uri = "/search-email-addresses"
        o.input = Shapes::ShapeRef.new(shape: SearchEmailAddressesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchEmailAddressesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:search_evaluation_forms, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchEvaluationForms"
        o.http_method = "POST"
        o.http_request_uri = "/search-evaluation-forms"
        o.input = Shapes::ShapeRef.new(shape: SearchEvaluationFormsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchEvaluationFormsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:search_hours_of_operation_overrides, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchHoursOfOperationOverrides"
        o.http_method = "POST"
        o.http_request_uri = "/search-hours-of-operation-overrides"
        o.input = Shapes::ShapeRef.new(shape: SearchHoursOfOperationOverridesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchHoursOfOperationOverridesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_hours_of_operations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchHoursOfOperations"
        o.http_method = "POST"
        o.http_request_uri = "/search-hours-of-operations"
        o.input = Shapes::ShapeRef.new(shape: SearchHoursOfOperationsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchHoursOfOperationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_predefined_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchPredefinedAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/search-predefined-attributes"
        o.input = Shapes::ShapeRef.new(shape: SearchPredefinedAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchPredefinedAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_prompts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchPrompts"
        o.http_method = "POST"
        o.http_request_uri = "/search-prompts"
        o.input = Shapes::ShapeRef.new(shape: SearchPromptsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchPromptsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_queues, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchQueues"
        o.http_method = "POST"
        o.http_request_uri = "/search-queues"
        o.input = Shapes::ShapeRef.new(shape: SearchQueuesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchQueuesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_quick_connects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchQuickConnects"
        o.http_method = "POST"
        o.http_request_uri = "/search-quick-connects"
        o.input = Shapes::ShapeRef.new(shape: SearchQuickConnectsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchQuickConnectsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_resource_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchResourceTags"
        o.http_method = "POST"
        o.http_request_uri = "/search-resource-tags"
        o.input = Shapes::ShapeRef.new(shape: SearchResourceTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchResourceTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumResultReturnedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_routing_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchRoutingProfiles"
        o.http_method = "POST"
        o.http_request_uri = "/search-routing-profiles"
        o.input = Shapes::ShapeRef.new(shape: SearchRoutingProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchRoutingProfilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_security_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchSecurityProfiles"
        o.http_method = "POST"
        o.http_request_uri = "/search-security-profiles"
        o.input = Shapes::ShapeRef.new(shape: SearchSecurityProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchSecurityProfilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_user_hierarchy_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchUserHierarchyGroups"
        o.http_method = "POST"
        o.http_request_uri = "/search-user-hierarchy-groups"
        o.input = Shapes::ShapeRef.new(shape: SearchUserHierarchyGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchUserHierarchyGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchUsers"
        o.http_method = "POST"
        o.http_request_uri = "/search-users"
        o.input = Shapes::ShapeRef.new(shape: SearchUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_vocabularies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchVocabularies"
        o.http_method = "POST"
        o.http_request_uri = "/vocabulary-summary/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: SearchVocabulariesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchVocabulariesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:send_chat_integration_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendChatIntegrationEvent"
        o.http_method = "POST"
        o.http_request_uri = "/chat-integration-event"
        o.input = Shapes::ShapeRef.new(shape: SendChatIntegrationEventRequest)
        o.output = Shapes::ShapeRef.new(shape: SendChatIntegrationEventResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:send_outbound_email, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendOutboundEmail"
        o.http_method = "PUT"
        o.http_request_uri = "/instance/{InstanceId}/outbound-email"
        o.input = Shapes::ShapeRef.new(shape: SendOutboundEmailRequest)
        o.output = Shapes::ShapeRef.new(shape: SendOutboundEmailResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyException)
      end)

      api.add_operation(:start_attached_file_upload, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartAttachedFileUpload"
        o.http_method = "PUT"
        o.http_request_uri = "/attached-files/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: StartAttachedFileUploadRequest)
        o.output = Shapes::ShapeRef.new(shape: StartAttachedFileUploadResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:start_chat_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartChatContact"
        o.http_method = "PUT"
        o.http_request_uri = "/contact/chat"
        o.input = Shapes::ShapeRef.new(shape: StartChatContactRequest)
        o.output = Shapes::ShapeRef.new(shape: StartChatContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:start_contact_evaluation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartContactEvaluation"
        o.http_method = "PUT"
        o.http_request_uri = "/contact-evaluations/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: StartContactEvaluationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartContactEvaluationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
      end)

      api.add_operation(:start_contact_recording, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartContactRecording"
        o.http_method = "POST"
        o.http_request_uri = "/contact/start-recording"
        o.input = Shapes::ShapeRef.new(shape: StartContactRecordingRequest)
        o.output = Shapes::ShapeRef.new(shape: StartContactRecordingResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:start_contact_streaming, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartContactStreaming"
        o.http_method = "POST"
        o.http_request_uri = "/contact/start-streaming"
        o.input = Shapes::ShapeRef.new(shape: StartContactStreamingRequest)
        o.output = Shapes::ShapeRef.new(shape: StartContactStreamingResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:start_email_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartEmailContact"
        o.http_method = "PUT"
        o.http_request_uri = "/contact/email"
        o.input = Shapes::ShapeRef.new(shape: StartEmailContactRequest)
        o.output = Shapes::ShapeRef.new(shape: StartEmailContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyException)
      end)

      api.add_operation(:start_outbound_chat_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartOutboundChatContact"
        o.http_method = "PUT"
        o.http_request_uri = "/contact/outbound-chat"
        o.input = Shapes::ShapeRef.new(shape: StartOutboundChatContactRequest)
        o.output = Shapes::ShapeRef.new(shape: StartOutboundChatContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:start_outbound_email_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartOutboundEmailContact"
        o.http_method = "PUT"
        o.http_request_uri = "/contact/outbound-email"
        o.input = Shapes::ShapeRef.new(shape: StartOutboundEmailContactRequest)
        o.output = Shapes::ShapeRef.new(shape: StartOutboundEmailContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyException)
      end)

      api.add_operation(:start_outbound_voice_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartOutboundVoiceContact"
        o.http_method = "PUT"
        o.http_request_uri = "/contact/outbound-voice"
        o.input = Shapes::ShapeRef.new(shape: StartOutboundVoiceContactRequest)
        o.output = Shapes::ShapeRef.new(shape: StartOutboundVoiceContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DestinationNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: OutboundContactNotPermittedException)
      end)

      api.add_operation(:start_screen_sharing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartScreenSharing"
        o.http_method = "PUT"
        o.http_request_uri = "/contact/screen-sharing"
        o.input = Shapes::ShapeRef.new(shape: StartScreenSharingRequest)
        o.output = Shapes::ShapeRef.new(shape: StartScreenSharingResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_task_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTaskContact"
        o.http_method = "PUT"
        o.http_request_uri = "/contact/task"
        o.input = Shapes::ShapeRef.new(shape: StartTaskContactRequest)
        o.output = Shapes::ShapeRef.new(shape: StartTaskContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:start_web_rtc_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartWebRTCContact"
        o.http_method = "PUT"
        o.http_request_uri = "/contact/webrtc"
        o.input = Shapes::ShapeRef.new(shape: StartWebRTCContactRequest)
        o.output = Shapes::ShapeRef.new(shape: StartWebRTCContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:stop_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopContact"
        o.http_method = "POST"
        o.http_request_uri = "/contact/stop"
        o.input = Shapes::ShapeRef.new(shape: StopContactRequest)
        o.output = Shapes::ShapeRef.new(shape: StopContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ContactNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:stop_contact_recording, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopContactRecording"
        o.http_method = "POST"
        o.http_request_uri = "/contact/stop-recording"
        o.input = Shapes::ShapeRef.new(shape: StopContactRecordingRequest)
        o.output = Shapes::ShapeRef.new(shape: StopContactRecordingResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:stop_contact_streaming, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopContactStreaming"
        o.http_method = "POST"
        o.http_request_uri = "/contact/stop-streaming"
        o.input = Shapes::ShapeRef.new(shape: StopContactStreamingRequest)
        o.output = Shapes::ShapeRef.new(shape: StopContactStreamingResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:submit_contact_evaluation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SubmitContactEvaluation"
        o.http_method = "POST"
        o.http_request_uri = "/contact-evaluations/{InstanceId}/{EvaluationId}/submit"
        o.input = Shapes::ShapeRef.new(shape: SubmitContactEvaluationRequest)
        o.output = Shapes::ShapeRef.new(shape: SubmitContactEvaluationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
      end)

      api.add_operation(:suspend_contact_recording, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SuspendContactRecording"
        o.http_method = "POST"
        o.http_request_uri = "/contact/suspend-recording"
        o.input = Shapes::ShapeRef.new(shape: SuspendContactRecordingRequest)
        o.output = Shapes::ShapeRef.new(shape: SuspendContactRecordingResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:tag_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagContact"
        o.http_method = "POST"
        o.http_request_uri = "/contact/tags"
        o.input = Shapes::ShapeRef.new(shape: TagContactRequest)
        o.output = Shapes::ShapeRef.new(shape: TagContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:transfer_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TransferContact"
        o.http_method = "POST"
        o.http_request_uri = "/contact/transfer"
        o.input = Shapes::ShapeRef.new(shape: TransferContactRequest)
        o.output = Shapes::ShapeRef.new(shape: TransferContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:untag_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagContact"
        o.http_method = "DELETE"
        o.http_request_uri = "/contact/tags/{InstanceId}/{ContactId}"
        o.input = Shapes::ShapeRef.new(shape: UntagContactRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_agent_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAgentStatus"
        o.http_method = "POST"
        o.http_request_uri = "/agent-status/{InstanceId}/{AgentStatusId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAgentStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_authentication_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAuthenticationProfile"
        o.http_method = "POST"
        o.http_request_uri = "/authentication-profiles/{InstanceId}/{AuthenticationProfileId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAuthenticationProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateContact"
        o.http_method = "POST"
        o.http_request_uri = "/contacts/{InstanceId}/{ContactId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateContactRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_contact_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateContactAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/contact/attributes"
        o.input = Shapes::ShapeRef.new(shape: UpdateContactAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateContactAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_contact_evaluation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateContactEvaluation"
        o.http_method = "POST"
        o.http_request_uri = "/contact-evaluations/{InstanceId}/{EvaluationId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateContactEvaluationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateContactEvaluationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
      end)

      api.add_operation(:update_contact_flow_content, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateContactFlowContent"
        o.http_method = "POST"
        o.http_request_uri = "/contact-flows/{InstanceId}/{ContactFlowId}/content"
        o.input = Shapes::ShapeRef.new(shape: UpdateContactFlowContentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateContactFlowContentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidContactFlowException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_contact_flow_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateContactFlowMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/contact-flows/{InstanceId}/{ContactFlowId}/metadata"
        o.input = Shapes::ShapeRef.new(shape: UpdateContactFlowMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateContactFlowMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_contact_flow_module_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateContactFlowModuleAlias"
        o.http_method = "POST"
        o.http_request_uri = "/contact-flow-modules/{InstanceId}/{ContactFlowModuleId}/alias/{AliasId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateContactFlowModuleAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateContactFlowModuleAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConditionalOperationFailedException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
      end)

      api.add_operation(:update_contact_flow_module_content, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateContactFlowModuleContent"
        o.http_method = "POST"
        o.http_request_uri = "/contact-flow-modules/{InstanceId}/{ContactFlowModuleId}/content"
        o.input = Shapes::ShapeRef.new(shape: UpdateContactFlowModuleContentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateContactFlowModuleContentResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidContactFlowModuleException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_contact_flow_module_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateContactFlowModuleMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/contact-flow-modules/{InstanceId}/{ContactFlowModuleId}/metadata"
        o.input = Shapes::ShapeRef.new(shape: UpdateContactFlowModuleMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateContactFlowModuleMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_contact_flow_name, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateContactFlowName"
        o.http_method = "POST"
        o.http_request_uri = "/contact-flows/{InstanceId}/{ContactFlowId}/name"
        o.input = Shapes::ShapeRef.new(shape: UpdateContactFlowNameRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateContactFlowNameResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_contact_routing_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateContactRoutingData"
        o.http_method = "POST"
        o.http_request_uri = "/contacts/{InstanceId}/{ContactId}/routing-data"
        o.input = Shapes::ShapeRef.new(shape: UpdateContactRoutingDataRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateContactRoutingDataResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_contact_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateContactSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/contact/schedule"
        o.input = Shapes::ShapeRef.new(shape: UpdateContactScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateContactScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_email_address_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEmailAddressMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/email-addresses/{InstanceId}/{EmailAddressId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateEmailAddressMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEmailAddressMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyException)
      end)

      api.add_operation(:update_evaluation_form, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEvaluationForm"
        o.http_method = "PUT"
        o.http_request_uri = "/evaluation-forms/{InstanceId}/{EvaluationFormId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateEvaluationFormRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEvaluationFormResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
      end)

      api.add_operation(:update_hours_of_operation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateHoursOfOperation"
        o.http_method = "POST"
        o.http_request_uri = "/hours-of-operations/{InstanceId}/{HoursOfOperationId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateHoursOfOperationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_hours_of_operation_override, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateHoursOfOperationOverride"
        o.http_method = "POST"
        o.http_request_uri = "/hours-of-operations/{InstanceId}/{HoursOfOperationId}/overrides/{HoursOfOperationOverrideId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateHoursOfOperationOverrideRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ConditionalOperationFailedException)
      end)

      api.add_operation(:update_instance_attribute, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateInstanceAttribute"
        o.http_method = "POST"
        o.http_request_uri = "/instance/{InstanceId}/attribute/{AttributeType}"
        o.input = Shapes::ShapeRef.new(shape: UpdateInstanceAttributeRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_instance_storage_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateInstanceStorageConfig"
        o.http_method = "POST"
        o.http_request_uri = "/instance/{InstanceId}/storage-config/{AssociationId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateInstanceStorageConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_participant_authentication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateParticipantAuthentication"
        o.http_method = "POST"
        o.http_request_uri = "/contact/update-participant-authentication"
        o.input = Shapes::ShapeRef.new(shape: UpdateParticipantAuthenticationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateParticipantAuthenticationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_participant_role_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateParticipantRoleConfig"
        o.http_method = "PUT"
        o.http_request_uri = "/contact/participant-role-config/{InstanceId}/{ContactId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateParticipantRoleConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateParticipantRoleConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_phone_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePhoneNumber"
        o.http_method = "PUT"
        o.http_request_uri = "/phone-number/{PhoneNumberId}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePhoneNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePhoneNumberResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_phone_number_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePhoneNumberMetadata"
        o.http_method = "PUT"
        o.http_request_uri = "/phone-number/{PhoneNumberId}/metadata"
        o.input = Shapes::ShapeRef.new(shape: UpdatePhoneNumberMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_predefined_attribute, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePredefinedAttribute"
        o.http_method = "POST"
        o.http_request_uri = "/predefined-attributes/{InstanceId}/{Name}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePredefinedAttributeRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_prompt, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePrompt"
        o.http_method = "POST"
        o.http_request_uri = "/prompts/{InstanceId}/{PromptId}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePromptRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePromptResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_queue_hours_of_operation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateQueueHoursOfOperation"
        o.http_method = "POST"
        o.http_request_uri = "/queues/{InstanceId}/{QueueId}/hours-of-operation"
        o.input = Shapes::ShapeRef.new(shape: UpdateQueueHoursOfOperationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_queue_max_contacts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateQueueMaxContacts"
        o.http_method = "POST"
        o.http_request_uri = "/queues/{InstanceId}/{QueueId}/max-contacts"
        o.input = Shapes::ShapeRef.new(shape: UpdateQueueMaxContactsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_queue_name, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateQueueName"
        o.http_method = "POST"
        o.http_request_uri = "/queues/{InstanceId}/{QueueId}/name"
        o.input = Shapes::ShapeRef.new(shape: UpdateQueueNameRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_queue_outbound_caller_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateQueueOutboundCallerConfig"
        o.http_method = "POST"
        o.http_request_uri = "/queues/{InstanceId}/{QueueId}/outbound-caller-config"
        o.input = Shapes::ShapeRef.new(shape: UpdateQueueOutboundCallerConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_queue_outbound_email_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateQueueOutboundEmailConfig"
        o.http_method = "POST"
        o.http_request_uri = "/queues/{InstanceId}/{QueueId}/outbound-email-config"
        o.input = Shapes::ShapeRef.new(shape: UpdateQueueOutboundEmailConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConditionalOperationFailedException)
      end)

      api.add_operation(:update_queue_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateQueueStatus"
        o.http_method = "POST"
        o.http_request_uri = "/queues/{InstanceId}/{QueueId}/status"
        o.input = Shapes::ShapeRef.new(shape: UpdateQueueStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_quick_connect_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateQuickConnectConfig"
        o.http_method = "POST"
        o.http_request_uri = "/quick-connects/{InstanceId}/{QuickConnectId}/config"
        o.input = Shapes::ShapeRef.new(shape: UpdateQuickConnectConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_quick_connect_name, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateQuickConnectName"
        o.http_method = "POST"
        o.http_request_uri = "/quick-connects/{InstanceId}/{QuickConnectId}/name"
        o.input = Shapes::ShapeRef.new(shape: UpdateQuickConnectNameRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_routing_profile_agent_availability_timer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRoutingProfileAgentAvailabilityTimer"
        o.http_method = "POST"
        o.http_request_uri = "/routing-profiles/{InstanceId}/{RoutingProfileId}/agent-availability-timer"
        o.input = Shapes::ShapeRef.new(shape: UpdateRoutingProfileAgentAvailabilityTimerRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_routing_profile_concurrency, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRoutingProfileConcurrency"
        o.http_method = "POST"
        o.http_request_uri = "/routing-profiles/{InstanceId}/{RoutingProfileId}/concurrency"
        o.input = Shapes::ShapeRef.new(shape: UpdateRoutingProfileConcurrencyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_routing_profile_default_outbound_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRoutingProfileDefaultOutboundQueue"
        o.http_method = "POST"
        o.http_request_uri = "/routing-profiles/{InstanceId}/{RoutingProfileId}/default-outbound-queue"
        o.input = Shapes::ShapeRef.new(shape: UpdateRoutingProfileDefaultOutboundQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_routing_profile_name, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRoutingProfileName"
        o.http_method = "POST"
        o.http_request_uri = "/routing-profiles/{InstanceId}/{RoutingProfileId}/name"
        o.input = Shapes::ShapeRef.new(shape: UpdateRoutingProfileNameRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_routing_profile_queues, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRoutingProfileQueues"
        o.http_method = "POST"
        o.http_request_uri = "/routing-profiles/{InstanceId}/{RoutingProfileId}/queues"
        o.input = Shapes::ShapeRef.new(shape: UpdateRoutingProfileQueuesRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRule"
        o.http_method = "PUT"
        o.http_request_uri = "/rules/{InstanceId}/{RuleId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
      end)

      api.add_operation(:update_security_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSecurityProfile"
        o.http_method = "POST"
        o.http_request_uri = "/security-profiles/{InstanceId}/{SecurityProfileId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateSecurityProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_task_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTaskTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/instance/{InstanceId}/task/template/{TaskTemplateId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateTaskTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTaskTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: PropertyValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_traffic_distribution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTrafficDistribution"
        o.http_method = "PUT"
        o.http_request_uri = "/traffic-distribution/{Id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateTrafficDistributionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTrafficDistributionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_user_hierarchy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUserHierarchy"
        o.http_method = "POST"
        o.http_request_uri = "/users/{InstanceId}/{UserId}/hierarchy"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserHierarchyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_user_hierarchy_group_name, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUserHierarchyGroupName"
        o.http_method = "POST"
        o.http_request_uri = "/user-hierarchy-groups/{InstanceId}/{HierarchyGroupId}/name"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserHierarchyGroupNameRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_user_hierarchy_structure, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUserHierarchyStructure"
        o.http_method = "POST"
        o.http_request_uri = "/user-hierarchy-structure/{InstanceId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserHierarchyStructureRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_user_identity_info, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUserIdentityInfo"
        o.http_method = "POST"
        o.http_request_uri = "/users/{InstanceId}/{UserId}/identity-info"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserIdentityInfoRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_user_phone_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUserPhoneConfig"
        o.http_method = "POST"
        o.http_request_uri = "/users/{InstanceId}/{UserId}/phone-config"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserPhoneConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_user_proficiencies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUserProficiencies"
        o.http_method = "POST"
        o.http_request_uri = "/users/{InstanceId}/{UserId}/proficiencies"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserProficienciesRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_user_routing_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUserRoutingProfile"
        o.http_method = "POST"
        o.http_request_uri = "/users/{InstanceId}/{UserId}/routing-profile"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserRoutingProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_user_security_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUserSecurityProfiles"
        o.http_method = "POST"
        o.http_request_uri = "/users/{InstanceId}/{UserId}/security-profiles"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserSecurityProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_view_content, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateViewContent"
        o.http_method = "POST"
        o.http_request_uri = "/views/{InstanceId}/{ViewId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateViewContentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateViewContentResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:update_view_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateViewMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/views/{InstanceId}/{ViewId}/metadata"
        o.input = Shapes::ShapeRef.new(shape: UpdateViewMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateViewMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)
    end

  end
end
