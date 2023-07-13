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
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ActionSummaries = Shapes::ListShape.new(name: 'ActionSummaries')
    ActionSummary = Shapes::StructureShape.new(name: 'ActionSummary')
    ActionType = Shapes::StringShape.new(name: 'ActionType')
    ActivateEvaluationFormRequest = Shapes::StructureShape.new(name: 'ActivateEvaluationFormRequest')
    ActivateEvaluationFormResponse = Shapes::StructureShape.new(name: 'ActivateEvaluationFormResponse')
    AfterContactWorkTimeLimit = Shapes::IntegerShape.new(name: 'AfterContactWorkTimeLimit')
    AgentContactReference = Shapes::StructureShape.new(name: 'AgentContactReference')
    AgentContactReferenceList = Shapes::ListShape.new(name: 'AgentContactReferenceList')
    AgentFirstName = Shapes::StringShape.new(name: 'AgentFirstName')
    AgentInfo = Shapes::StructureShape.new(name: 'AgentInfo')
    AgentLastName = Shapes::StringShape.new(name: 'AgentLastName')
    AgentResourceId = Shapes::StringShape.new(name: 'AgentResourceId')
    AgentStatus = Shapes::StructureShape.new(name: 'AgentStatus')
    AgentStatusDescription = Shapes::StringShape.new(name: 'AgentStatusDescription')
    AgentStatusId = Shapes::StringShape.new(name: 'AgentStatusId')
    AgentStatusName = Shapes::StringShape.new(name: 'AgentStatusName')
    AgentStatusOrderNumber = Shapes::IntegerShape.new(name: 'AgentStatusOrderNumber')
    AgentStatusReference = Shapes::StructureShape.new(name: 'AgentStatusReference')
    AgentStatusState = Shapes::StringShape.new(name: 'AgentStatusState')
    AgentStatusSummary = Shapes::StructureShape.new(name: 'AgentStatusSummary')
    AgentStatusSummaryList = Shapes::ListShape.new(name: 'AgentStatusSummaryList')
    AgentStatusType = Shapes::StringShape.new(name: 'AgentStatusType')
    AgentStatusTypes = Shapes::ListShape.new(name: 'AgentStatusTypes')
    AgentUsername = Shapes::StringShape.new(name: 'AgentUsername')
    AgentsMinOneMaxHundred = Shapes::ListShape.new(name: 'AgentsMinOneMaxHundred')
    AliasArn = Shapes::StringShape.new(name: 'AliasArn')
    AllowedAccessControlTags = Shapes::MapShape.new(name: 'AllowedAccessControlTags')
    AllowedMonitorCapabilities = Shapes::ListShape.new(name: 'AllowedMonitorCapabilities')
    AnswerMachineDetectionConfig = Shapes::StructureShape.new(name: 'AnswerMachineDetectionConfig')
    ApproximateTotalCount = Shapes::IntegerShape.new(name: 'ApproximateTotalCount')
    AssignContactCategoryActionDefinition = Shapes::StructureShape.new(name: 'AssignContactCategoryActionDefinition')
    AssociateApprovedOriginRequest = Shapes::StructureShape.new(name: 'AssociateApprovedOriginRequest')
    AssociateBotRequest = Shapes::StructureShape.new(name: 'AssociateBotRequest')
    AssociateDefaultVocabularyRequest = Shapes::StructureShape.new(name: 'AssociateDefaultVocabularyRequest')
    AssociateDefaultVocabularyResponse = Shapes::StructureShape.new(name: 'AssociateDefaultVocabularyResponse')
    AssociateInstanceStorageConfigRequest = Shapes::StructureShape.new(name: 'AssociateInstanceStorageConfigRequest')
    AssociateInstanceStorageConfigResponse = Shapes::StructureShape.new(name: 'AssociateInstanceStorageConfigResponse')
    AssociateLambdaFunctionRequest = Shapes::StructureShape.new(name: 'AssociateLambdaFunctionRequest')
    AssociateLexBotRequest = Shapes::StructureShape.new(name: 'AssociateLexBotRequest')
    AssociatePhoneNumberContactFlowRequest = Shapes::StructureShape.new(name: 'AssociatePhoneNumberContactFlowRequest')
    AssociateQueueQuickConnectsRequest = Shapes::StructureShape.new(name: 'AssociateQueueQuickConnectsRequest')
    AssociateRoutingProfileQueuesRequest = Shapes::StructureShape.new(name: 'AssociateRoutingProfileQueuesRequest')
    AssociateSecurityKeyRequest = Shapes::StructureShape.new(name: 'AssociateSecurityKeyRequest')
    AssociateSecurityKeyResponse = Shapes::StructureShape.new(name: 'AssociateSecurityKeyResponse')
    AssociationId = Shapes::StringShape.new(name: 'AssociationId')
    AttachmentReference = Shapes::StructureShape.new(name: 'AttachmentReference')
    Attribute = Shapes::StructureShape.new(name: 'Attribute')
    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    AttributeValue = Shapes::StringShape.new(name: 'AttributeValue')
    Attributes = Shapes::MapShape.new(name: 'Attributes')
    AttributesList = Shapes::ListShape.new(name: 'AttributesList')
    AutoAccept = Shapes::BooleanShape.new(name: 'AutoAccept')
    AvailableNumberSummary = Shapes::StructureShape.new(name: 'AvailableNumberSummary')
    AvailableNumbersList = Shapes::ListShape.new(name: 'AvailableNumbersList')
    AwsRegion = Shapes::StringShape.new(name: 'AwsRegion')
    BehaviorType = Shapes::StringShape.new(name: 'BehaviorType')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BotName = Shapes::StringShape.new(name: 'BotName')
    BoxedBoolean = Shapes::BooleanShape.new(name: 'BoxedBoolean')
    BucketName = Shapes::StringShape.new(name: 'BucketName')
    CampaignId = Shapes::StringShape.new(name: 'CampaignId')
    Channel = Shapes::StringShape.new(name: 'Channel')
    ChannelToCountMap = Shapes::MapShape.new(name: 'ChannelToCountMap')
    Channels = Shapes::ListShape.new(name: 'Channels')
    ChatContent = Shapes::StringShape.new(name: 'ChatContent')
    ChatContentType = Shapes::StringShape.new(name: 'ChatContentType')
    ChatDurationInMinutes = Shapes::IntegerShape.new(name: 'ChatDurationInMinutes')
    ChatMessage = Shapes::StructureShape.new(name: 'ChatMessage')
    ChatParticipantRoleConfig = Shapes::StructureShape.new(name: 'ChatParticipantRoleConfig')
    ChatStreamingConfiguration = Shapes::StructureShape.new(name: 'ChatStreamingConfiguration')
    ChatStreamingEndpointARN = Shapes::StringShape.new(name: 'ChatStreamingEndpointARN')
    ClaimPhoneNumberRequest = Shapes::StructureShape.new(name: 'ClaimPhoneNumberRequest')
    ClaimPhoneNumberResponse = Shapes::StructureShape.new(name: 'ClaimPhoneNumberResponse')
    ClaimedPhoneNumberSummary = Shapes::StructureShape.new(name: 'ClaimedPhoneNumberSummary')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CommonNameLength127 = Shapes::StringShape.new(name: 'CommonNameLength127')
    Comparison = Shapes::StringShape.new(name: 'Comparison')
    Concurrency = Shapes::IntegerShape.new(name: 'Concurrency')
    Contact = Shapes::StructureShape.new(name: 'Contact')
    ContactFilter = Shapes::StructureShape.new(name: 'ContactFilter')
    ContactFlow = Shapes::StructureShape.new(name: 'ContactFlow')
    ContactFlowContent = Shapes::StringShape.new(name: 'ContactFlowContent')
    ContactFlowDescription = Shapes::StringShape.new(name: 'ContactFlowDescription')
    ContactFlowId = Shapes::StringShape.new(name: 'ContactFlowId')
    ContactFlowModule = Shapes::StructureShape.new(name: 'ContactFlowModule')
    ContactFlowModuleContent = Shapes::StringShape.new(name: 'ContactFlowModuleContent')
    ContactFlowModuleDescription = Shapes::StringShape.new(name: 'ContactFlowModuleDescription')
    ContactFlowModuleId = Shapes::StringShape.new(name: 'ContactFlowModuleId')
    ContactFlowModuleName = Shapes::StringShape.new(name: 'ContactFlowModuleName')
    ContactFlowModuleState = Shapes::StringShape.new(name: 'ContactFlowModuleState')
    ContactFlowModuleStatus = Shapes::StringShape.new(name: 'ContactFlowModuleStatus')
    ContactFlowModuleSummary = Shapes::StructureShape.new(name: 'ContactFlowModuleSummary')
    ContactFlowModulesSummaryList = Shapes::ListShape.new(name: 'ContactFlowModulesSummaryList')
    ContactFlowName = Shapes::StringShape.new(name: 'ContactFlowName')
    ContactFlowNotPublishedException = Shapes::StructureShape.new(name: 'ContactFlowNotPublishedException')
    ContactFlowState = Shapes::StringShape.new(name: 'ContactFlowState')
    ContactFlowSummary = Shapes::StructureShape.new(name: 'ContactFlowSummary')
    ContactFlowSummaryList = Shapes::ListShape.new(name: 'ContactFlowSummaryList')
    ContactFlowType = Shapes::StringShape.new(name: 'ContactFlowType')
    ContactFlowTypes = Shapes::ListShape.new(name: 'ContactFlowTypes')
    ContactId = Shapes::StringShape.new(name: 'ContactId')
    ContactInitiationMethod = Shapes::StringShape.new(name: 'ContactInitiationMethod')
    ContactNotFoundException = Shapes::StructureShape.new(name: 'ContactNotFoundException')
    ContactReferences = Shapes::MapShape.new(name: 'ContactReferences')
    ContactState = Shapes::StringShape.new(name: 'ContactState')
    ContactStates = Shapes::ListShape.new(name: 'ContactStates')
    Content = Shapes::StringShape.new(name: 'Content')
    ControlPlaneTagFilter = Shapes::StructureShape.new(name: 'ControlPlaneTagFilter')
    CreateAgentStatusRequest = Shapes::StructureShape.new(name: 'CreateAgentStatusRequest')
    CreateAgentStatusResponse = Shapes::StructureShape.new(name: 'CreateAgentStatusResponse')
    CreateContactFlowModuleRequest = Shapes::StructureShape.new(name: 'CreateContactFlowModuleRequest')
    CreateContactFlowModuleResponse = Shapes::StructureShape.new(name: 'CreateContactFlowModuleResponse')
    CreateContactFlowRequest = Shapes::StructureShape.new(name: 'CreateContactFlowRequest')
    CreateContactFlowResponse = Shapes::StructureShape.new(name: 'CreateContactFlowResponse')
    CreateEvaluationFormRequest = Shapes::StructureShape.new(name: 'CreateEvaluationFormRequest')
    CreateEvaluationFormResponse = Shapes::StructureShape.new(name: 'CreateEvaluationFormResponse')
    CreateHoursOfOperationRequest = Shapes::StructureShape.new(name: 'CreateHoursOfOperationRequest')
    CreateHoursOfOperationResponse = Shapes::StructureShape.new(name: 'CreateHoursOfOperationResponse')
    CreateInstanceRequest = Shapes::StructureShape.new(name: 'CreateInstanceRequest')
    CreateInstanceResponse = Shapes::StructureShape.new(name: 'CreateInstanceResponse')
    CreateIntegrationAssociationRequest = Shapes::StructureShape.new(name: 'CreateIntegrationAssociationRequest')
    CreateIntegrationAssociationResponse = Shapes::StructureShape.new(name: 'CreateIntegrationAssociationResponse')
    CreateParticipantRequest = Shapes::StructureShape.new(name: 'CreateParticipantRequest')
    CreateParticipantResponse = Shapes::StructureShape.new(name: 'CreateParticipantResponse')
    CreatePromptRequest = Shapes::StructureShape.new(name: 'CreatePromptRequest')
    CreatePromptResponse = Shapes::StructureShape.new(name: 'CreatePromptResponse')
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
    CreateVocabularyRequest = Shapes::StructureShape.new(name: 'CreateVocabularyRequest')
    CreateVocabularyResponse = Shapes::StructureShape.new(name: 'CreateVocabularyResponse')
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
    DateReference = Shapes::StructureShape.new(name: 'DateReference')
    DeactivateEvaluationFormRequest = Shapes::StructureShape.new(name: 'DeactivateEvaluationFormRequest')
    DeactivateEvaluationFormResponse = Shapes::StructureShape.new(name: 'DeactivateEvaluationFormResponse')
    DefaultVocabulary = Shapes::StructureShape.new(name: 'DefaultVocabulary')
    DefaultVocabularyList = Shapes::ListShape.new(name: 'DefaultVocabularyList')
    Delay = Shapes::IntegerShape.new(name: 'Delay')
    DeleteContactEvaluationRequest = Shapes::StructureShape.new(name: 'DeleteContactEvaluationRequest')
    DeleteContactFlowModuleRequest = Shapes::StructureShape.new(name: 'DeleteContactFlowModuleRequest')
    DeleteContactFlowModuleResponse = Shapes::StructureShape.new(name: 'DeleteContactFlowModuleResponse')
    DeleteContactFlowRequest = Shapes::StructureShape.new(name: 'DeleteContactFlowRequest')
    DeleteContactFlowResponse = Shapes::StructureShape.new(name: 'DeleteContactFlowResponse')
    DeleteEvaluationFormRequest = Shapes::StructureShape.new(name: 'DeleteEvaluationFormRequest')
    DeleteHoursOfOperationRequest = Shapes::StructureShape.new(name: 'DeleteHoursOfOperationRequest')
    DeleteInstanceRequest = Shapes::StructureShape.new(name: 'DeleteInstanceRequest')
    DeleteIntegrationAssociationRequest = Shapes::StructureShape.new(name: 'DeleteIntegrationAssociationRequest')
    DeletePromptRequest = Shapes::StructureShape.new(name: 'DeletePromptRequest')
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
    DeleteVocabularyRequest = Shapes::StructureShape.new(name: 'DeleteVocabularyRequest')
    DeleteVocabularyResponse = Shapes::StructureShape.new(name: 'DeleteVocabularyResponse')
    DescribeAgentStatusRequest = Shapes::StructureShape.new(name: 'DescribeAgentStatusRequest')
    DescribeAgentStatusResponse = Shapes::StructureShape.new(name: 'DescribeAgentStatusResponse')
    DescribeContactEvaluationRequest = Shapes::StructureShape.new(name: 'DescribeContactEvaluationRequest')
    DescribeContactEvaluationResponse = Shapes::StructureShape.new(name: 'DescribeContactEvaluationResponse')
    DescribeContactFlowModuleRequest = Shapes::StructureShape.new(name: 'DescribeContactFlowModuleRequest')
    DescribeContactFlowModuleResponse = Shapes::StructureShape.new(name: 'DescribeContactFlowModuleResponse')
    DescribeContactFlowRequest = Shapes::StructureShape.new(name: 'DescribeContactFlowRequest')
    DescribeContactFlowResponse = Shapes::StructureShape.new(name: 'DescribeContactFlowResponse')
    DescribeContactRequest = Shapes::StructureShape.new(name: 'DescribeContactRequest')
    DescribeContactResponse = Shapes::StructureShape.new(name: 'DescribeContactResponse')
    DescribeEvaluationFormRequest = Shapes::StructureShape.new(name: 'DescribeEvaluationFormRequest')
    DescribeEvaluationFormResponse = Shapes::StructureShape.new(name: 'DescribeEvaluationFormResponse')
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
    DescribeVocabularyRequest = Shapes::StructureShape.new(name: 'DescribeVocabularyRequest')
    DescribeVocabularyResponse = Shapes::StructureShape.new(name: 'DescribeVocabularyResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    Description250 = Shapes::StringShape.new(name: 'Description250')
    DestinationNotAllowedException = Shapes::StructureShape.new(name: 'DestinationNotAllowedException')
    Dimensions = Shapes::StructureShape.new(name: 'Dimensions')
    DimensionsV2Key = Shapes::StringShape.new(name: 'DimensionsV2Key')
    DimensionsV2Map = Shapes::MapShape.new(name: 'DimensionsV2Map')
    DimensionsV2Value = Shapes::StringShape.new(name: 'DimensionsV2Value')
    DirectoryAlias = Shapes::StringShape.new(name: 'DirectoryAlias')
    DirectoryId = Shapes::StringShape.new(name: 'DirectoryId')
    DirectoryType = Shapes::StringShape.new(name: 'DirectoryType')
    DirectoryUserId = Shapes::StringShape.new(name: 'DirectoryUserId')
    DisassociateApprovedOriginRequest = Shapes::StructureShape.new(name: 'DisassociateApprovedOriginRequest')
    DisassociateBotRequest = Shapes::StructureShape.new(name: 'DisassociateBotRequest')
    DisassociateInstanceStorageConfigRequest = Shapes::StructureShape.new(name: 'DisassociateInstanceStorageConfigRequest')
    DisassociateLambdaFunctionRequest = Shapes::StructureShape.new(name: 'DisassociateLambdaFunctionRequest')
    DisassociateLexBotRequest = Shapes::StructureShape.new(name: 'DisassociateLexBotRequest')
    DisassociatePhoneNumberContactFlowRequest = Shapes::StructureShape.new(name: 'DisassociatePhoneNumberContactFlowRequest')
    DisassociateQueueQuickConnectsRequest = Shapes::StructureShape.new(name: 'DisassociateQueueQuickConnectsRequest')
    DisassociateRoutingProfileQueuesRequest = Shapes::StructureShape.new(name: 'DisassociateRoutingProfileQueuesRequest')
    DisassociateSecurityKeyRequest = Shapes::StructureShape.new(name: 'DisassociateSecurityKeyRequest')
    DismissUserContactRequest = Shapes::StructureShape.new(name: 'DismissUserContactRequest')
    DismissUserContactResponse = Shapes::StructureShape.new(name: 'DismissUserContactResponse')
    DisplayName = Shapes::StringShape.new(name: 'DisplayName')
    Distribution = Shapes::StructureShape.new(name: 'Distribution')
    DistributionList = Shapes::ListShape.new(name: 'DistributionList')
    DuplicateResourceException = Shapes::StructureShape.new(name: 'DuplicateResourceException')
    Email = Shapes::StringShape.new(name: 'Email')
    EmailReference = Shapes::StructureShape.new(name: 'EmailReference')
    EncryptionConfig = Shapes::StructureShape.new(name: 'EncryptionConfig')
    EncryptionType = Shapes::StringShape.new(name: 'EncryptionType')
    Evaluation = Shapes::StructureShape.new(name: 'Evaluation')
    EvaluationAnswerData = Shapes::UnionShape.new(name: 'EvaluationAnswerData')
    EvaluationAnswerDataNumericValue = Shapes::FloatShape.new(name: 'EvaluationAnswerDataNumericValue')
    EvaluationAnswerDataStringValue = Shapes::StringShape.new(name: 'EvaluationAnswerDataStringValue')
    EvaluationAnswerInput = Shapes::StructureShape.new(name: 'EvaluationAnswerInput')
    EvaluationAnswerOutput = Shapes::StructureShape.new(name: 'EvaluationAnswerOutput')
    EvaluationAnswersInputMap = Shapes::MapShape.new(name: 'EvaluationAnswersInputMap')
    EvaluationAnswersOutputMap = Shapes::MapShape.new(name: 'EvaluationAnswersOutputMap')
    EvaluationForm = Shapes::StructureShape.new(name: 'EvaluationForm')
    EvaluationFormContent = Shapes::StructureShape.new(name: 'EvaluationFormContent')
    EvaluationFormDescription = Shapes::StringShape.new(name: 'EvaluationFormDescription')
    EvaluationFormItem = Shapes::UnionShape.new(name: 'EvaluationFormItem')
    EvaluationFormItemWeight = Shapes::FloatShape.new(name: 'EvaluationFormItemWeight')
    EvaluationFormItemsList = Shapes::ListShape.new(name: 'EvaluationFormItemsList')
    EvaluationFormNumericQuestionAutomation = Shapes::UnionShape.new(name: 'EvaluationFormNumericQuestionAutomation')
    EvaluationFormNumericQuestionOption = Shapes::StructureShape.new(name: 'EvaluationFormNumericQuestionOption')
    EvaluationFormNumericQuestionOptionList = Shapes::ListShape.new(name: 'EvaluationFormNumericQuestionOptionList')
    EvaluationFormNumericQuestionProperties = Shapes::StructureShape.new(name: 'EvaluationFormNumericQuestionProperties')
    EvaluationFormQuestion = Shapes::StructureShape.new(name: 'EvaluationFormQuestion')
    EvaluationFormQuestionAnswerScore = Shapes::IntegerShape.new(name: 'EvaluationFormQuestionAnswerScore')
    EvaluationFormQuestionInstructions = Shapes::StringShape.new(name: 'EvaluationFormQuestionInstructions')
    EvaluationFormQuestionTitle = Shapes::StringShape.new(name: 'EvaluationFormQuestionTitle')
    EvaluationFormQuestionType = Shapes::StringShape.new(name: 'EvaluationFormQuestionType')
    EvaluationFormQuestionTypeProperties = Shapes::UnionShape.new(name: 'EvaluationFormQuestionTypeProperties')
    EvaluationFormScoringMode = Shapes::StringShape.new(name: 'EvaluationFormScoringMode')
    EvaluationFormScoringStatus = Shapes::StringShape.new(name: 'EvaluationFormScoringStatus')
    EvaluationFormScoringStrategy = Shapes::StructureShape.new(name: 'EvaluationFormScoringStrategy')
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
    EvaluationFormTitle = Shapes::StringShape.new(name: 'EvaluationFormTitle')
    EvaluationFormVersionIsLocked = Shapes::BooleanShape.new(name: 'EvaluationFormVersionIsLocked')
    EvaluationFormVersionStatus = Shapes::StringShape.new(name: 'EvaluationFormVersionStatus')
    EvaluationFormVersionSummary = Shapes::StructureShape.new(name: 'EvaluationFormVersionSummary')
    EvaluationFormVersionSummaryList = Shapes::ListShape.new(name: 'EvaluationFormVersionSummaryList')
    EvaluationMetadata = Shapes::StructureShape.new(name: 'EvaluationMetadata')
    EvaluationNote = Shapes::StructureShape.new(name: 'EvaluationNote')
    EvaluationNoteString = Shapes::StringShape.new(name: 'EvaluationNoteString')
    EvaluationNotesMap = Shapes::MapShape.new(name: 'EvaluationNotesMap')
    EvaluationScore = Shapes::StructureShape.new(name: 'EvaluationScore')
    EvaluationScorePercentage = Shapes::FloatShape.new(name: 'EvaluationScorePercentage')
    EvaluationScoresMap = Shapes::MapShape.new(name: 'EvaluationScoresMap')
    EvaluationStatus = Shapes::StringShape.new(name: 'EvaluationStatus')
    EvaluationSummary = Shapes::StructureShape.new(name: 'EvaluationSummary')
    EvaluationSummaryList = Shapes::ListShape.new(name: 'EvaluationSummaryList')
    EventBridgeActionDefinition = Shapes::StructureShape.new(name: 'EventBridgeActionDefinition')
    EventBridgeActionName = Shapes::StringShape.new(name: 'EventBridgeActionName')
    EventSourceName = Shapes::StringShape.new(name: 'EventSourceName')
    FilterV2 = Shapes::StructureShape.new(name: 'FilterV2')
    FilterValueList = Shapes::ListShape.new(name: 'FilterValueList')
    Filters = Shapes::StructureShape.new(name: 'Filters')
    FiltersV2List = Shapes::ListShape.new(name: 'FiltersV2List')
    FunctionArn = Shapes::StringShape.new(name: 'FunctionArn')
    FunctionArnsList = Shapes::ListShape.new(name: 'FunctionArnsList')
    GetContactAttributesRequest = Shapes::StructureShape.new(name: 'GetContactAttributesRequest')
    GetContactAttributesResponse = Shapes::StructureShape.new(name: 'GetContactAttributesResponse')
    GetCurrentMetricDataRequest = Shapes::StructureShape.new(name: 'GetCurrentMetricDataRequest')
    GetCurrentMetricDataResponse = Shapes::StructureShape.new(name: 'GetCurrentMetricDataResponse')
    GetCurrentUserDataRequest = Shapes::StructureShape.new(name: 'GetCurrentUserDataRequest')
    GetCurrentUserDataResponse = Shapes::StructureShape.new(name: 'GetCurrentUserDataResponse')
    GetFederationTokenRequest = Shapes::StructureShape.new(name: 'GetFederationTokenRequest')
    GetFederationTokenResponse = Shapes::StructureShape.new(name: 'GetFederationTokenResponse')
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
    Grouping = Shapes::StringShape.new(name: 'Grouping')
    GroupingV2 = Shapes::StringShape.new(name: 'GroupingV2')
    Groupings = Shapes::ListShape.new(name: 'Groupings')
    GroupingsV2 = Shapes::ListShape.new(name: 'GroupingsV2')
    HierarchyGroup = Shapes::StructureShape.new(name: 'HierarchyGroup')
    HierarchyGroupCondition = Shapes::StructureShape.new(name: 'HierarchyGroupCondition')
    HierarchyGroupId = Shapes::StringShape.new(name: 'HierarchyGroupId')
    HierarchyGroupMatchType = Shapes::StringShape.new(name: 'HierarchyGroupMatchType')
    HierarchyGroupName = Shapes::StringShape.new(name: 'HierarchyGroupName')
    HierarchyGroupSummary = Shapes::StructureShape.new(name: 'HierarchyGroupSummary')
    HierarchyGroupSummaryList = Shapes::ListShape.new(name: 'HierarchyGroupSummaryList')
    HierarchyGroupSummaryReference = Shapes::StructureShape.new(name: 'HierarchyGroupSummaryReference')
    HierarchyLevel = Shapes::StructureShape.new(name: 'HierarchyLevel')
    HierarchyLevelId = Shapes::StringShape.new(name: 'HierarchyLevelId')
    HierarchyLevelName = Shapes::StringShape.new(name: 'HierarchyLevelName')
    HierarchyLevelUpdate = Shapes::StructureShape.new(name: 'HierarchyLevelUpdate')
    HierarchyPath = Shapes::StructureShape.new(name: 'HierarchyPath')
    HierarchyPathReference = Shapes::StructureShape.new(name: 'HierarchyPathReference')
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
    HoursOfOperationSearchConditionList = Shapes::ListShape.new(name: 'HoursOfOperationSearchConditionList')
    HoursOfOperationSearchCriteria = Shapes::StructureShape.new(name: 'HoursOfOperationSearchCriteria')
    HoursOfOperationSearchFilter = Shapes::StructureShape.new(name: 'HoursOfOperationSearchFilter')
    HoursOfOperationSummary = Shapes::StructureShape.new(name: 'HoursOfOperationSummary')
    HoursOfOperationSummaryList = Shapes::ListShape.new(name: 'HoursOfOperationSummaryList')
    HoursOfOperationTimeSlice = Shapes::StructureShape.new(name: 'HoursOfOperationTimeSlice')
    ISO8601Datetime = Shapes::StringShape.new(name: 'ISO8601Datetime')
    IdempotencyException = Shapes::StructureShape.new(name: 'IdempotencyException')
    InboundCallsEnabled = Shapes::BooleanShape.new(name: 'InboundCallsEnabled')
    Instance = Shapes::StructureShape.new(name: 'Instance')
    InstanceArn = Shapes::StringShape.new(name: 'InstanceArn')
    InstanceAttributeType = Shapes::StringShape.new(name: 'InstanceAttributeType')
    InstanceAttributeValue = Shapes::StringShape.new(name: 'InstanceAttributeValue')
    InstanceId = Shapes::StringShape.new(name: 'InstanceId')
    InstanceIdOrArn = Shapes::StringShape.new(name: 'InstanceIdOrArn')
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
    InvalidContactFlowException = Shapes::StructureShape.new(name: 'InvalidContactFlowException')
    InvalidContactFlowModuleException = Shapes::StructureShape.new(name: 'InvalidContactFlowModuleException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    InvisibleFieldInfo = Shapes::StructureShape.new(name: 'InvisibleFieldInfo')
    InvisibleTaskTemplateFields = Shapes::ListShape.new(name: 'InvisibleTaskTemplateFields')
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
    ListApprovedOriginsRequest = Shapes::StructureShape.new(name: 'ListApprovedOriginsRequest')
    ListApprovedOriginsResponse = Shapes::StructureShape.new(name: 'ListApprovedOriginsResponse')
    ListBotsRequest = Shapes::StructureShape.new(name: 'ListBotsRequest')
    ListBotsResponse = Shapes::StructureShape.new(name: 'ListBotsResponse')
    ListContactEvaluationsRequest = Shapes::StructureShape.new(name: 'ListContactEvaluationsRequest')
    ListContactEvaluationsResponse = Shapes::StructureShape.new(name: 'ListContactEvaluationsResponse')
    ListContactFlowModulesRequest = Shapes::StructureShape.new(name: 'ListContactFlowModulesRequest')
    ListContactFlowModulesResponse = Shapes::StructureShape.new(name: 'ListContactFlowModulesResponse')
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
    ListPromptsRequest = Shapes::StructureShape.new(name: 'ListPromptsRequest')
    ListPromptsResponse = Shapes::StructureShape.new(name: 'ListPromptsResponse')
    ListQueueQuickConnectsRequest = Shapes::StructureShape.new(name: 'ListQueueQuickConnectsRequest')
    ListQueueQuickConnectsResponse = Shapes::StructureShape.new(name: 'ListQueueQuickConnectsResponse')
    ListQueuesRequest = Shapes::StructureShape.new(name: 'ListQueuesRequest')
    ListQueuesResponse = Shapes::StructureShape.new(name: 'ListQueuesResponse')
    ListQuickConnectsRequest = Shapes::StructureShape.new(name: 'ListQuickConnectsRequest')
    ListQuickConnectsResponse = Shapes::StructureShape.new(name: 'ListQuickConnectsResponse')
    ListRoutingProfileQueuesRequest = Shapes::StructureShape.new(name: 'ListRoutingProfileQueuesRequest')
    ListRoutingProfileQueuesResponse = Shapes::StructureShape.new(name: 'ListRoutingProfileQueuesResponse')
    ListRoutingProfilesRequest = Shapes::StructureShape.new(name: 'ListRoutingProfilesRequest')
    ListRoutingProfilesResponse = Shapes::StructureShape.new(name: 'ListRoutingProfilesResponse')
    ListRulesRequest = Shapes::StructureShape.new(name: 'ListRulesRequest')
    ListRulesResponse = Shapes::StructureShape.new(name: 'ListRulesResponse')
    ListSecurityKeysRequest = Shapes::StructureShape.new(name: 'ListSecurityKeysRequest')
    ListSecurityKeysResponse = Shapes::StructureShape.new(name: 'ListSecurityKeysResponse')
    ListSecurityProfilePermissionsRequest = Shapes::StructureShape.new(name: 'ListSecurityProfilePermissionsRequest')
    ListSecurityProfilePermissionsResponse = Shapes::StructureShape.new(name: 'ListSecurityProfilePermissionsResponse')
    ListSecurityProfilesRequest = Shapes::StructureShape.new(name: 'ListSecurityProfilesRequest')
    ListSecurityProfilesResponse = Shapes::StructureShape.new(name: 'ListSecurityProfilesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTaskTemplatesRequest = Shapes::StructureShape.new(name: 'ListTaskTemplatesRequest')
    ListTaskTemplatesResponse = Shapes::StructureShape.new(name: 'ListTaskTemplatesResponse')
    ListTrafficDistributionGroupsRequest = Shapes::StructureShape.new(name: 'ListTrafficDistributionGroupsRequest')
    ListTrafficDistributionGroupsResponse = Shapes::StructureShape.new(name: 'ListTrafficDistributionGroupsResponse')
    ListUseCasesRequest = Shapes::StructureShape.new(name: 'ListUseCasesRequest')
    ListUseCasesResponse = Shapes::StructureShape.new(name: 'ListUseCasesResponse')
    ListUserHierarchyGroupsRequest = Shapes::StructureShape.new(name: 'ListUserHierarchyGroupsRequest')
    ListUserHierarchyGroupsResponse = Shapes::StructureShape.new(name: 'ListUserHierarchyGroupsResponse')
    ListUsersRequest = Shapes::StructureShape.new(name: 'ListUsersRequest')
    ListUsersResponse = Shapes::StructureShape.new(name: 'ListUsersResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxResult10 = Shapes::IntegerShape.new(name: 'MaxResult10')
    MaxResult100 = Shapes::IntegerShape.new(name: 'MaxResult100')
    MaxResult1000 = Shapes::IntegerShape.new(name: 'MaxResult1000')
    MaxResult2 = Shapes::IntegerShape.new(name: 'MaxResult2')
    MaxResult200 = Shapes::IntegerShape.new(name: 'MaxResult200')
    MaxResult25 = Shapes::IntegerShape.new(name: 'MaxResult25')
    MaxResult7 = Shapes::IntegerShape.new(name: 'MaxResult7')
    MaximumResultReturnedException = Shapes::StructureShape.new(name: 'MaximumResultReturnedException')
    MediaConcurrencies = Shapes::ListShape.new(name: 'MediaConcurrencies')
    MediaConcurrency = Shapes::StructureShape.new(name: 'MediaConcurrency')
    Message = Shapes::StringShape.new(name: 'Message')
    MetricDataCollectionsV2 = Shapes::ListShape.new(name: 'MetricDataCollectionsV2')
    MetricDataV2 = Shapes::StructureShape.new(name: 'MetricDataV2')
    MetricFilterV2 = Shapes::StructureShape.new(name: 'MetricFilterV2')
    MetricFilterValueList = Shapes::ListShape.new(name: 'MetricFilterValueList')
    MetricFiltersV2List = Shapes::ListShape.new(name: 'MetricFiltersV2List')
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
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NextToken2500 = Shapes::StringShape.new(name: 'NextToken2500')
    NotificationContentType = Shapes::StringShape.new(name: 'NotificationContentType')
    NotificationDeliveryType = Shapes::StringShape.new(name: 'NotificationDeliveryType')
    NotificationRecipientType = Shapes::StructureShape.new(name: 'NotificationRecipientType')
    NumberReference = Shapes::StructureShape.new(name: 'NumberReference')
    NumericQuestionPropertyAutomationLabel = Shapes::StringShape.new(name: 'NumericQuestionPropertyAutomationLabel')
    NumericQuestionPropertyValueAutomation = Shapes::StructureShape.new(name: 'NumericQuestionPropertyValueAutomation')
    Origin = Shapes::StringShape.new(name: 'Origin')
    OriginsList = Shapes::ListShape.new(name: 'OriginsList')
    OutboundCallerConfig = Shapes::StructureShape.new(name: 'OutboundCallerConfig')
    OutboundCallerIdName = Shapes::StringShape.new(name: 'OutboundCallerIdName')
    OutboundCallsEnabled = Shapes::BooleanShape.new(name: 'OutboundCallsEnabled')
    OutboundContactNotPermittedException = Shapes::StructureShape.new(name: 'OutboundContactNotPermittedException')
    PEM = Shapes::StringShape.new(name: 'PEM')
    ParticipantDetails = Shapes::StructureShape.new(name: 'ParticipantDetails')
    ParticipantDetailsToAdd = Shapes::StructureShape.new(name: 'ParticipantDetailsToAdd')
    ParticipantId = Shapes::StringShape.new(name: 'ParticipantId')
    ParticipantRole = Shapes::StringShape.new(name: 'ParticipantRole')
    ParticipantTimerAction = Shapes::StringShape.new(name: 'ParticipantTimerAction')
    ParticipantTimerConfigList = Shapes::ListShape.new(name: 'ParticipantTimerConfigList')
    ParticipantTimerConfiguration = Shapes::StructureShape.new(name: 'ParticipantTimerConfiguration')
    ParticipantTimerDurationInMinutes = Shapes::IntegerShape.new(name: 'ParticipantTimerDurationInMinutes')
    ParticipantTimerType = Shapes::StringShape.new(name: 'ParticipantTimerType')
    ParticipantTimerValue = Shapes::UnionShape.new(name: 'ParticipantTimerValue')
    ParticipantToken = Shapes::StringShape.new(name: 'ParticipantToken')
    ParticipantTokenCredentials = Shapes::StructureShape.new(name: 'ParticipantTokenCredentials')
    Password = Shapes::StringShape.new(name: 'Password')
    Percentage = Shapes::IntegerShape.new(name: 'Percentage')
    PermissionsList = Shapes::ListShape.new(name: 'PermissionsList')
    PersistentChat = Shapes::StructureShape.new(name: 'PersistentChat')
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
    Prefix = Shapes::StringShape.new(name: 'Prefix')
    Priority = Shapes::IntegerShape.new(name: 'Priority')
    ProblemDetail = Shapes::StructureShape.new(name: 'ProblemDetail')
    ProblemMessageString = Shapes::StringShape.new(name: 'ProblemMessageString')
    Problems = Shapes::ListShape.new(name: 'Problems')
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
    Queue = Shapes::StructureShape.new(name: 'Queue')
    QueueDescription = Shapes::StringShape.new(name: 'QueueDescription')
    QueueId = Shapes::StringShape.new(name: 'QueueId')
    QueueInfo = Shapes::StructureShape.new(name: 'QueueInfo')
    QueueMaxContacts = Shapes::IntegerShape.new(name: 'QueueMaxContacts')
    QueueName = Shapes::StringShape.new(name: 'QueueName')
    QueueQuickConnectConfig = Shapes::StructureShape.new(name: 'QueueQuickConnectConfig')
    QueueReference = Shapes::StructureShape.new(name: 'QueueReference')
    QueueSearchConditionList = Shapes::ListShape.new(name: 'QueueSearchConditionList')
    QueueSearchCriteria = Shapes::StructureShape.new(name: 'QueueSearchCriteria')
    QueueSearchFilter = Shapes::StructureShape.new(name: 'QueueSearchFilter')
    QueueSearchSummaryList = Shapes::ListShape.new(name: 'QueueSearchSummaryList')
    QueueStatus = Shapes::StringShape.new(name: 'QueueStatus')
    QueueSummary = Shapes::StructureShape.new(name: 'QueueSummary')
    QueueSummaryList = Shapes::ListShape.new(name: 'QueueSummaryList')
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
    ReadOnlyFieldInfo = Shapes::StructureShape.new(name: 'ReadOnlyFieldInfo')
    ReadOnlyTaskTemplateFields = Shapes::ListShape.new(name: 'ReadOnlyTaskTemplateFields')
    Reference = Shapes::StructureShape.new(name: 'Reference')
    ReferenceId = Shapes::StringShape.new(name: 'ReferenceId')
    ReferenceKey = Shapes::StringShape.new(name: 'ReferenceKey')
    ReferenceStatus = Shapes::StringShape.new(name: 'ReferenceStatus')
    ReferenceSummary = Shapes::UnionShape.new(name: 'ReferenceSummary')
    ReferenceSummaryList = Shapes::ListShape.new(name: 'ReferenceSummaryList')
    ReferenceType = Shapes::StringShape.new(name: 'ReferenceType')
    ReferenceTypes = Shapes::ListShape.new(name: 'ReferenceTypes')
    ReferenceValue = Shapes::StringShape.new(name: 'ReferenceValue')
    RehydrationType = Shapes::StringShape.new(name: 'RehydrationType')
    ReleasePhoneNumberRequest = Shapes::StructureShape.new(name: 'ReleasePhoneNumberRequest')
    ReplicateInstanceRequest = Shapes::StructureShape.new(name: 'ReplicateInstanceRequest')
    ReplicateInstanceResponse = Shapes::StructureShape.new(name: 'ReplicateInstanceResponse')
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
    ResumeContactRecordingRequest = Shapes::StructureShape.new(name: 'ResumeContactRecordingRequest')
    ResumeContactRecordingResponse = Shapes::StructureShape.new(name: 'ResumeContactRecordingResponse')
    RoutingProfile = Shapes::StructureShape.new(name: 'RoutingProfile')
    RoutingProfileDescription = Shapes::StringShape.new(name: 'RoutingProfileDescription')
    RoutingProfileId = Shapes::StringShape.new(name: 'RoutingProfileId')
    RoutingProfileList = Shapes::ListShape.new(name: 'RoutingProfileList')
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
    SearchAvailablePhoneNumbersRequest = Shapes::StructureShape.new(name: 'SearchAvailablePhoneNumbersRequest')
    SearchAvailablePhoneNumbersResponse = Shapes::StructureShape.new(name: 'SearchAvailablePhoneNumbersResponse')
    SearchHoursOfOperationsRequest = Shapes::StructureShape.new(name: 'SearchHoursOfOperationsRequest')
    SearchHoursOfOperationsResponse = Shapes::StructureShape.new(name: 'SearchHoursOfOperationsResponse')
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
    SearchUsersRequest = Shapes::StructureShape.new(name: 'SearchUsersRequest')
    SearchUsersResponse = Shapes::StructureShape.new(name: 'SearchUsersResponse')
    SearchVocabulariesRequest = Shapes::StructureShape.new(name: 'SearchVocabulariesRequest')
    SearchVocabulariesResponse = Shapes::StructureShape.new(name: 'SearchVocabulariesResponse')
    SearchableQueueType = Shapes::StringShape.new(name: 'SearchableQueueType')
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
    SendNotificationActionDefinition = Shapes::StructureShape.new(name: 'SendNotificationActionDefinition')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SingleSelectOptions = Shapes::ListShape.new(name: 'SingleSelectOptions')
    SingleSelectQuestionRuleCategoryAutomation = Shapes::StructureShape.new(name: 'SingleSelectQuestionRuleCategoryAutomation')
    SingleSelectQuestionRuleCategoryAutomationCondition = Shapes::StringShape.new(name: 'SingleSelectQuestionRuleCategoryAutomationCondition')
    SingleSelectQuestionRuleCategoryAutomationLabel = Shapes::StringShape.new(name: 'SingleSelectQuestionRuleCategoryAutomationLabel')
    SnapshotVersion = Shapes::StringShape.new(name: 'SnapshotVersion')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    SourceApplicationName = Shapes::StringShape.new(name: 'SourceApplicationName')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    StartChatContactRequest = Shapes::StructureShape.new(name: 'StartChatContactRequest')
    StartChatContactResponse = Shapes::StructureShape.new(name: 'StartChatContactResponse')
    StartContactEvaluationRequest = Shapes::StructureShape.new(name: 'StartContactEvaluationRequest')
    StartContactEvaluationResponse = Shapes::StructureShape.new(name: 'StartContactEvaluationResponse')
    StartContactRecordingRequest = Shapes::StructureShape.new(name: 'StartContactRecordingRequest')
    StartContactRecordingResponse = Shapes::StructureShape.new(name: 'StartContactRecordingResponse')
    StartContactStreamingRequest = Shapes::StructureShape.new(name: 'StartContactStreamingRequest')
    StartContactStreamingResponse = Shapes::StructureShape.new(name: 'StartContactStreamingResponse')
    StartOutboundVoiceContactRequest = Shapes::StructureShape.new(name: 'StartOutboundVoiceContactRequest')
    StartOutboundVoiceContactResponse = Shapes::StructureShape.new(name: 'StartOutboundVoiceContactResponse')
    StartTaskContactRequest = Shapes::StructureShape.new(name: 'StartTaskContactRequest')
    StartTaskContactResponse = Shapes::StructureShape.new(name: 'StartTaskContactResponse')
    Statistic = Shapes::StringShape.new(name: 'Statistic')
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
    SubmitContactEvaluationRequest = Shapes::StructureShape.new(name: 'SubmitContactEvaluationRequest')
    SubmitContactEvaluationResponse = Shapes::StructureShape.new(name: 'SubmitContactEvaluationResponse')
    SupportedMessagingContentType = Shapes::StringShape.new(name: 'SupportedMessagingContentType')
    SupportedMessagingContentTypes = Shapes::ListShape.new(name: 'SupportedMessagingContentTypes')
    SuspendContactRecordingRequest = Shapes::StructureShape.new(name: 'SuspendContactRecordingRequest')
    SuspendContactRecordingResponse = Shapes::StructureShape.new(name: 'SuspendContactRecordingResponse')
    TagAndConditionList = Shapes::ListShape.new(name: 'TagAndConditionList')
    TagCondition = Shapes::StructureShape.new(name: 'TagCondition')
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
    TaskTemplateList = Shapes::ListShape.new(name: 'TaskTemplateList')
    TaskTemplateMetadata = Shapes::StructureShape.new(name: 'TaskTemplateMetadata')
    TaskTemplateName = Shapes::StringShape.new(name: 'TaskTemplateName')
    TaskTemplateSingleSelectOption = Shapes::StringShape.new(name: 'TaskTemplateSingleSelectOption')
    TaskTemplateStatus = Shapes::StringShape.new(name: 'TaskTemplateStatus')
    TelephonyConfig = Shapes::StructureShape.new(name: 'TelephonyConfig')
    Threshold = Shapes::StructureShape.new(name: 'Threshold')
    ThresholdCollections = Shapes::ListShape.new(name: 'ThresholdCollections')
    ThresholdV2 = Shapes::StructureShape.new(name: 'ThresholdV2')
    ThresholdValue = Shapes::FloatShape.new(name: 'ThresholdValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeZone = Shapes::StringShape.new(name: 'TimeZone')
    TimerEligibleParticipantRoles = Shapes::StringShape.new(name: 'TimerEligibleParticipantRoles')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TrafficDistributionGroup = Shapes::StructureShape.new(name: 'TrafficDistributionGroup')
    TrafficDistributionGroupArn = Shapes::StringShape.new(name: 'TrafficDistributionGroupArn')
    TrafficDistributionGroupId = Shapes::StringShape.new(name: 'TrafficDistributionGroupId')
    TrafficDistributionGroupIdOrArn = Shapes::StringShape.new(name: 'TrafficDistributionGroupIdOrArn')
    TrafficDistributionGroupStatus = Shapes::StringShape.new(name: 'TrafficDistributionGroupStatus')
    TrafficDistributionGroupSummary = Shapes::StructureShape.new(name: 'TrafficDistributionGroupSummary')
    TrafficDistributionGroupSummaryList = Shapes::ListShape.new(name: 'TrafficDistributionGroupSummaryList')
    TrafficType = Shapes::StringShape.new(name: 'TrafficType')
    TransferContactRequest = Shapes::StructureShape.new(name: 'TransferContactRequest')
    TransferContactResponse = Shapes::StructureShape.new(name: 'TransferContactResponse')
    URI = Shapes::StringShape.new(name: 'URI')
    Unit = Shapes::StringShape.new(name: 'Unit')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateAgentStatusDescription = Shapes::StringShape.new(name: 'UpdateAgentStatusDescription')
    UpdateAgentStatusRequest = Shapes::StructureShape.new(name: 'UpdateAgentStatusRequest')
    UpdateContactAttributesRequest = Shapes::StructureShape.new(name: 'UpdateContactAttributesRequest')
    UpdateContactAttributesResponse = Shapes::StructureShape.new(name: 'UpdateContactAttributesResponse')
    UpdateContactEvaluationRequest = Shapes::StructureShape.new(name: 'UpdateContactEvaluationRequest')
    UpdateContactEvaluationResponse = Shapes::StructureShape.new(name: 'UpdateContactEvaluationResponse')
    UpdateContactFlowContentRequest = Shapes::StructureShape.new(name: 'UpdateContactFlowContentRequest')
    UpdateContactFlowContentResponse = Shapes::StructureShape.new(name: 'UpdateContactFlowContentResponse')
    UpdateContactFlowMetadataRequest = Shapes::StructureShape.new(name: 'UpdateContactFlowMetadataRequest')
    UpdateContactFlowMetadataResponse = Shapes::StructureShape.new(name: 'UpdateContactFlowMetadataResponse')
    UpdateContactFlowModuleContentRequest = Shapes::StructureShape.new(name: 'UpdateContactFlowModuleContentRequest')
    UpdateContactFlowModuleContentResponse = Shapes::StructureShape.new(name: 'UpdateContactFlowModuleContentResponse')
    UpdateContactFlowModuleMetadataRequest = Shapes::StructureShape.new(name: 'UpdateContactFlowModuleMetadataRequest')
    UpdateContactFlowModuleMetadataResponse = Shapes::StructureShape.new(name: 'UpdateContactFlowModuleMetadataResponse')
    UpdateContactFlowNameRequest = Shapes::StructureShape.new(name: 'UpdateContactFlowNameRequest')
    UpdateContactFlowNameResponse = Shapes::StructureShape.new(name: 'UpdateContactFlowNameResponse')
    UpdateContactRequest = Shapes::StructureShape.new(name: 'UpdateContactRequest')
    UpdateContactResponse = Shapes::StructureShape.new(name: 'UpdateContactResponse')
    UpdateContactScheduleRequest = Shapes::StructureShape.new(name: 'UpdateContactScheduleRequest')
    UpdateContactScheduleResponse = Shapes::StructureShape.new(name: 'UpdateContactScheduleResponse')
    UpdateEvaluationFormRequest = Shapes::StructureShape.new(name: 'UpdateEvaluationFormRequest')
    UpdateEvaluationFormResponse = Shapes::StructureShape.new(name: 'UpdateEvaluationFormResponse')
    UpdateHoursOfOperationDescription = Shapes::StringShape.new(name: 'UpdateHoursOfOperationDescription')
    UpdateHoursOfOperationRequest = Shapes::StructureShape.new(name: 'UpdateHoursOfOperationRequest')
    UpdateInstanceAttributeRequest = Shapes::StructureShape.new(name: 'UpdateInstanceAttributeRequest')
    UpdateInstanceStorageConfigRequest = Shapes::StructureShape.new(name: 'UpdateInstanceStorageConfigRequest')
    UpdateParticipantRoleConfigChannelInfo = Shapes::UnionShape.new(name: 'UpdateParticipantRoleConfigChannelInfo')
    UpdateParticipantRoleConfigRequest = Shapes::StructureShape.new(name: 'UpdateParticipantRoleConfigRequest')
    UpdateParticipantRoleConfigResponse = Shapes::StructureShape.new(name: 'UpdateParticipantRoleConfigResponse')
    UpdatePhoneNumberRequest = Shapes::StructureShape.new(name: 'UpdatePhoneNumberRequest')
    UpdatePhoneNumberResponse = Shapes::StructureShape.new(name: 'UpdatePhoneNumberResponse')
    UpdatePromptRequest = Shapes::StructureShape.new(name: 'UpdatePromptRequest')
    UpdatePromptResponse = Shapes::StructureShape.new(name: 'UpdatePromptResponse')
    UpdateQueueHoursOfOperationRequest = Shapes::StructureShape.new(name: 'UpdateQueueHoursOfOperationRequest')
    UpdateQueueMaxContactsRequest = Shapes::StructureShape.new(name: 'UpdateQueueMaxContactsRequest')
    UpdateQueueNameRequest = Shapes::StructureShape.new(name: 'UpdateQueueNameRequest')
    UpdateQueueOutboundCallerConfigRequest = Shapes::StructureShape.new(name: 'UpdateQueueOutboundCallerConfigRequest')
    UpdateQueueStatusRequest = Shapes::StructureShape.new(name: 'UpdateQueueStatusRequest')
    UpdateQuickConnectConfigRequest = Shapes::StructureShape.new(name: 'UpdateQuickConnectConfigRequest')
    UpdateQuickConnectDescription = Shapes::StringShape.new(name: 'UpdateQuickConnectDescription')
    UpdateQuickConnectNameRequest = Shapes::StructureShape.new(name: 'UpdateQuickConnectNameRequest')
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
    UpdateUserRoutingProfileRequest = Shapes::StructureShape.new(name: 'UpdateUserRoutingProfileRequest')
    UpdateUserSecurityProfilesRequest = Shapes::StructureShape.new(name: 'UpdateUserSecurityProfilesRequest')
    Url = Shapes::StringShape.new(name: 'Url')
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
    UserId = Shapes::StringShape.new(name: 'UserId')
    UserIdList = Shapes::ListShape.new(name: 'UserIdList')
    UserIdentityInfo = Shapes::StructureShape.new(name: 'UserIdentityInfo')
    UserIdentityInfoLite = Shapes::StructureShape.new(name: 'UserIdentityInfoLite')
    UserNotFoundException = Shapes::StructureShape.new(name: 'UserNotFoundException')
    UserPhoneConfig = Shapes::StructureShape.new(name: 'UserPhoneConfig')
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

    AgentContactReference.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContactId"))
    AgentContactReference.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "Channel"))
    AgentContactReference.add_member(:initiation_method, Shapes::ShapeRef.new(shape: ContactInitiationMethod, location_name: "InitiationMethod"))
    AgentContactReference.add_member(:agent_contact_state, Shapes::ShapeRef.new(shape: ContactState, location_name: "AgentContactState"))
    AgentContactReference.add_member(:state_start_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StateStartTimestamp"))
    AgentContactReference.add_member(:connected_to_agent_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ConnectedToAgentTimestamp"))
    AgentContactReference.add_member(:queue, Shapes::ShapeRef.new(shape: QueueReference, location_name: "Queue"))
    AgentContactReference.struct_class = Types::AgentContactReference

    AgentContactReferenceList.member = Shapes::ShapeRef.new(shape: AgentContactReference)

    AgentInfo.add_member(:id, Shapes::ShapeRef.new(shape: AgentResourceId, location_name: "Id"))
    AgentInfo.add_member(:connected_to_agent_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "ConnectedToAgentTimestamp"))
    AgentInfo.struct_class = Types::AgentInfo

    AgentStatus.add_member(:agent_status_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "AgentStatusARN"))
    AgentStatus.add_member(:agent_status_id, Shapes::ShapeRef.new(shape: AgentStatusId, location_name: "AgentStatusId"))
    AgentStatus.add_member(:name, Shapes::ShapeRef.new(shape: AgentStatusName, location_name: "Name"))
    AgentStatus.add_member(:description, Shapes::ShapeRef.new(shape: AgentStatusDescription, location_name: "Description"))
    AgentStatus.add_member(:type, Shapes::ShapeRef.new(shape: AgentStatusType, location_name: "Type"))
    AgentStatus.add_member(:display_order, Shapes::ShapeRef.new(shape: AgentStatusOrderNumber, location_name: "DisplayOrder"))
    AgentStatus.add_member(:state, Shapes::ShapeRef.new(shape: AgentStatusState, location_name: "State"))
    AgentStatus.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    AgentStatus.struct_class = Types::AgentStatus

    AgentStatusReference.add_member(:status_start_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StatusStartTimestamp"))
    AgentStatusReference.add_member(:status_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "StatusArn"))
    AgentStatusReference.add_member(:status_name, Shapes::ShapeRef.new(shape: AgentStatusName, location_name: "StatusName"))
    AgentStatusReference.struct_class = Types::AgentStatusReference

    AgentStatusSummary.add_member(:id, Shapes::ShapeRef.new(shape: AgentStatusId, location_name: "Id"))
    AgentStatusSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    AgentStatusSummary.add_member(:name, Shapes::ShapeRef.new(shape: AgentStatusName, location_name: "Name"))
    AgentStatusSummary.add_member(:type, Shapes::ShapeRef.new(shape: AgentStatusType, location_name: "Type"))
    AgentStatusSummary.struct_class = Types::AgentStatusSummary

    AgentStatusSummaryList.member = Shapes::ShapeRef.new(shape: AgentStatusSummary)

    AgentStatusTypes.member = Shapes::ShapeRef.new(shape: AgentStatusType)

    AgentsMinOneMaxHundred.member = Shapes::ShapeRef.new(shape: UserId)

    AllowedAccessControlTags.key = Shapes::ShapeRef.new(shape: SecurityProfilePolicyKey)
    AllowedAccessControlTags.value = Shapes::ShapeRef.new(shape: SecurityProfilePolicyValue)

    AllowedMonitorCapabilities.member = Shapes::ShapeRef.new(shape: MonitorCapability)

    AnswerMachineDetectionConfig.add_member(:enable_answer_machine_detection, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableAnswerMachineDetection"))
    AnswerMachineDetectionConfig.add_member(:await_answer_machine_prompt, Shapes::ShapeRef.new(shape: Boolean, location_name: "AwaitAnswerMachinePrompt"))
    AnswerMachineDetectionConfig.struct_class = Types::AnswerMachineDetectionConfig

    AssignContactCategoryActionDefinition.struct_class = Types::AssignContactCategoryActionDefinition

    AssociateApprovedOriginRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    AssociateApprovedOriginRequest.add_member(:origin, Shapes::ShapeRef.new(shape: Origin, required: true, location_name: "Origin"))
    AssociateApprovedOriginRequest.struct_class = Types::AssociateApprovedOriginRequest

    AssociateBotRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    AssociateBotRequest.add_member(:lex_bot, Shapes::ShapeRef.new(shape: LexBot, location_name: "LexBot"))
    AssociateBotRequest.add_member(:lex_v2_bot, Shapes::ShapeRef.new(shape: LexV2Bot, location_name: "LexV2Bot"))
    AssociateBotRequest.struct_class = Types::AssociateBotRequest

    AssociateDefaultVocabularyRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    AssociateDefaultVocabularyRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: VocabularyLanguageCode, required: true, location: "uri", location_name: "LanguageCode"))
    AssociateDefaultVocabularyRequest.add_member(:vocabulary_id, Shapes::ShapeRef.new(shape: VocabularyId, location_name: "VocabularyId"))
    AssociateDefaultVocabularyRequest.struct_class = Types::AssociateDefaultVocabularyRequest

    AssociateDefaultVocabularyResponse.struct_class = Types::AssociateDefaultVocabularyResponse

    AssociateInstanceStorageConfigRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    AssociateInstanceStorageConfigRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: InstanceStorageResourceType, required: true, location_name: "ResourceType"))
    AssociateInstanceStorageConfigRequest.add_member(:storage_config, Shapes::ShapeRef.new(shape: InstanceStorageConfig, required: true, location_name: "StorageConfig"))
    AssociateInstanceStorageConfigRequest.struct_class = Types::AssociateInstanceStorageConfigRequest

    AssociateInstanceStorageConfigResponse.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    AssociateInstanceStorageConfigResponse.struct_class = Types::AssociateInstanceStorageConfigResponse

    AssociateLambdaFunctionRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    AssociateLambdaFunctionRequest.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionArn, required: true, location_name: "FunctionArn"))
    AssociateLambdaFunctionRequest.struct_class = Types::AssociateLambdaFunctionRequest

    AssociateLexBotRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    AssociateLexBotRequest.add_member(:lex_bot, Shapes::ShapeRef.new(shape: LexBot, required: true, location_name: "LexBot"))
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
    AssociateRoutingProfileQueuesRequest.add_member(:queue_configs, Shapes::ShapeRef.new(shape: RoutingProfileQueueConfigList, required: true, location_name: "QueueConfigs"))
    AssociateRoutingProfileQueuesRequest.struct_class = Types::AssociateRoutingProfileQueuesRequest

    AssociateSecurityKeyRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    AssociateSecurityKeyRequest.add_member(:key, Shapes::ShapeRef.new(shape: PEM, required: true, location_name: "Key"))
    AssociateSecurityKeyRequest.struct_class = Types::AssociateSecurityKeyRequest

    AssociateSecurityKeyResponse.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    AssociateSecurityKeyResponse.struct_class = Types::AssociateSecurityKeyResponse

    AttachmentReference.add_member(:name, Shapes::ShapeRef.new(shape: ReferenceKey, location_name: "Name"))
    AttachmentReference.add_member(:value, Shapes::ShapeRef.new(shape: ReferenceValue, location_name: "Value"))
    AttachmentReference.add_member(:status, Shapes::ShapeRef.new(shape: ReferenceStatus, location_name: "Status"))
    AttachmentReference.struct_class = Types::AttachmentReference

    Attribute.add_member(:attribute_type, Shapes::ShapeRef.new(shape: InstanceAttributeType, location_name: "AttributeType"))
    Attribute.add_member(:value, Shapes::ShapeRef.new(shape: InstanceAttributeValue, location_name: "Value"))
    Attribute.struct_class = Types::Attribute

    Attributes.key = Shapes::ShapeRef.new(shape: AttributeName)
    Attributes.value = Shapes::ShapeRef.new(shape: AttributeValue)

    AttributesList.member = Shapes::ShapeRef.new(shape: Attribute)

    AvailableNumberSummary.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "PhoneNumber"))
    AvailableNumberSummary.add_member(:phone_number_country_code, Shapes::ShapeRef.new(shape: PhoneNumberCountryCode, location_name: "PhoneNumberCountryCode"))
    AvailableNumberSummary.add_member(:phone_number_type, Shapes::ShapeRef.new(shape: PhoneNumberType, location_name: "PhoneNumberType"))
    AvailableNumberSummary.struct_class = Types::AvailableNumberSummary

    AvailableNumbersList.member = Shapes::ShapeRef.new(shape: AvailableNumberSummary)

    ChannelToCountMap.key = Shapes::ShapeRef.new(shape: Channel)
    ChannelToCountMap.value = Shapes::ShapeRef.new(shape: IntegerCount)

    Channels.member = Shapes::ShapeRef.new(shape: Channel)

    ChatMessage.add_member(:content_type, Shapes::ShapeRef.new(shape: ChatContentType, required: true, location_name: "ContentType"))
    ChatMessage.add_member(:content, Shapes::ShapeRef.new(shape: ChatContent, required: true, location_name: "Content"))
    ChatMessage.struct_class = Types::ChatMessage

    ChatParticipantRoleConfig.add_member(:participant_timer_config_list, Shapes::ShapeRef.new(shape: ParticipantTimerConfigList, required: true, location_name: "ParticipantTimerConfigList"))
    ChatParticipantRoleConfig.struct_class = Types::ChatParticipantRoleConfig

    ChatStreamingConfiguration.add_member(:streaming_endpoint_arn, Shapes::ShapeRef.new(shape: ChatStreamingEndpointARN, required: true, location_name: "StreamingEndpointArn"))
    ChatStreamingConfiguration.struct_class = Types::ChatStreamingConfiguration

    ClaimPhoneNumberRequest.add_member(:target_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "TargetArn"))
    ClaimPhoneNumberRequest.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "PhoneNumber"))
    ClaimPhoneNumberRequest.add_member(:phone_number_description, Shapes::ShapeRef.new(shape: PhoneNumberDescription, location_name: "PhoneNumberDescription"))
    ClaimPhoneNumberRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ClaimPhoneNumberRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
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
    ClaimedPhoneNumberSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ClaimedPhoneNumberSummary.add_member(:phone_number_status, Shapes::ShapeRef.new(shape: PhoneNumberStatus, location_name: "PhoneNumberStatus"))
    ClaimedPhoneNumberSummary.struct_class = Types::ClaimedPhoneNumberSummary

    Contact.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    Contact.add_member(:id, Shapes::ShapeRef.new(shape: ContactId, location_name: "Id"))
    Contact.add_member(:initial_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "InitialContactId"))
    Contact.add_member(:previous_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "PreviousContactId"))
    Contact.add_member(:initiation_method, Shapes::ShapeRef.new(shape: ContactInitiationMethod, location_name: "InitiationMethod"))
    Contact.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    Contact.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Contact.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "Channel"))
    Contact.add_member(:queue_info, Shapes::ShapeRef.new(shape: QueueInfo, location_name: "QueueInfo"))
    Contact.add_member(:agent_info, Shapes::ShapeRef.new(shape: AgentInfo, location_name: "AgentInfo"))
    Contact.add_member(:initiation_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "InitiationTimestamp"))
    Contact.add_member(:disconnect_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "DisconnectTimestamp"))
    Contact.add_member(:last_update_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastUpdateTimestamp"))
    Contact.add_member(:scheduled_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "ScheduledTimestamp"))
    Contact.add_member(:related_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "RelatedContactId"))
    Contact.add_member(:wisdom_info, Shapes::ShapeRef.new(shape: WisdomInfo, location_name: "WisdomInfo"))
    Contact.struct_class = Types::Contact

    ContactFilter.add_member(:contact_states, Shapes::ShapeRef.new(shape: ContactStates, location_name: "ContactStates"))
    ContactFilter.struct_class = Types::ContactFilter

    ContactFlow.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    ContactFlow.add_member(:id, Shapes::ShapeRef.new(shape: ContactFlowId, location_name: "Id"))
    ContactFlow.add_member(:name, Shapes::ShapeRef.new(shape: ContactFlowName, location_name: "Name"))
    ContactFlow.add_member(:type, Shapes::ShapeRef.new(shape: ContactFlowType, location_name: "Type"))
    ContactFlow.add_member(:state, Shapes::ShapeRef.new(shape: ContactFlowState, location_name: "State"))
    ContactFlow.add_member(:description, Shapes::ShapeRef.new(shape: ContactFlowDescription, location_name: "Description"))
    ContactFlow.add_member(:content, Shapes::ShapeRef.new(shape: ContactFlowContent, location_name: "Content"))
    ContactFlow.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ContactFlow.struct_class = Types::ContactFlow

    ContactFlowModule.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    ContactFlowModule.add_member(:id, Shapes::ShapeRef.new(shape: ContactFlowModuleId, location_name: "Id"))
    ContactFlowModule.add_member(:name, Shapes::ShapeRef.new(shape: ContactFlowModuleName, location_name: "Name"))
    ContactFlowModule.add_member(:content, Shapes::ShapeRef.new(shape: ContactFlowModuleContent, location_name: "Content"))
    ContactFlowModule.add_member(:description, Shapes::ShapeRef.new(shape: ContactFlowModuleDescription, location_name: "Description"))
    ContactFlowModule.add_member(:state, Shapes::ShapeRef.new(shape: ContactFlowModuleState, location_name: "State"))
    ContactFlowModule.add_member(:status, Shapes::ShapeRef.new(shape: ContactFlowModuleStatus, location_name: "Status"))
    ContactFlowModule.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ContactFlowModule.struct_class = Types::ContactFlowModule

    ContactFlowModuleSummary.add_member(:id, Shapes::ShapeRef.new(shape: ContactFlowModuleId, location_name: "Id"))
    ContactFlowModuleSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    ContactFlowModuleSummary.add_member(:name, Shapes::ShapeRef.new(shape: ContactFlowModuleName, location_name: "Name"))
    ContactFlowModuleSummary.add_member(:state, Shapes::ShapeRef.new(shape: ContactFlowModuleState, location_name: "State"))
    ContactFlowModuleSummary.struct_class = Types::ContactFlowModuleSummary

    ContactFlowModulesSummaryList.member = Shapes::ShapeRef.new(shape: ContactFlowModuleSummary)

    ContactFlowNotPublishedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ContactFlowNotPublishedException.struct_class = Types::ContactFlowNotPublishedException

    ContactFlowSummary.add_member(:id, Shapes::ShapeRef.new(shape: ContactFlowId, location_name: "Id"))
    ContactFlowSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    ContactFlowSummary.add_member(:name, Shapes::ShapeRef.new(shape: ContactFlowName, location_name: "Name"))
    ContactFlowSummary.add_member(:contact_flow_type, Shapes::ShapeRef.new(shape: ContactFlowType, location_name: "ContactFlowType"))
    ContactFlowSummary.add_member(:contact_flow_state, Shapes::ShapeRef.new(shape: ContactFlowState, location_name: "ContactFlowState"))
    ContactFlowSummary.struct_class = Types::ContactFlowSummary

    ContactFlowSummaryList.member = Shapes::ShapeRef.new(shape: ContactFlowSummary)

    ContactFlowTypes.member = Shapes::ShapeRef.new(shape: ContactFlowType)

    ContactNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ContactNotFoundException.struct_class = Types::ContactNotFoundException

    ContactReferences.key = Shapes::ShapeRef.new(shape: ReferenceKey)
    ContactReferences.value = Shapes::ShapeRef.new(shape: Reference)

    ContactStates.member = Shapes::ShapeRef.new(shape: ContactState)

    ControlPlaneTagFilter.add_member(:or_conditions, Shapes::ShapeRef.new(shape: TagOrConditionList, location_name: "OrConditions"))
    ControlPlaneTagFilter.add_member(:and_conditions, Shapes::ShapeRef.new(shape: TagAndConditionList, location_name: "AndConditions"))
    ControlPlaneTagFilter.add_member(:tag_condition, Shapes::ShapeRef.new(shape: TagCondition, location_name: "TagCondition"))
    ControlPlaneTagFilter.struct_class = Types::ControlPlaneTagFilter

    CreateAgentStatusRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateAgentStatusRequest.add_member(:name, Shapes::ShapeRef.new(shape: AgentStatusName, required: true, location_name: "Name"))
    CreateAgentStatusRequest.add_member(:description, Shapes::ShapeRef.new(shape: AgentStatusDescription, location_name: "Description"))
    CreateAgentStatusRequest.add_member(:state, Shapes::ShapeRef.new(shape: AgentStatusState, required: true, location_name: "State"))
    CreateAgentStatusRequest.add_member(:display_order, Shapes::ShapeRef.new(shape: AgentStatusOrderNumber, location_name: "DisplayOrder", metadata: {"box"=>true}))
    CreateAgentStatusRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateAgentStatusRequest.struct_class = Types::CreateAgentStatusRequest

    CreateAgentStatusResponse.add_member(:agent_status_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "AgentStatusARN"))
    CreateAgentStatusResponse.add_member(:agent_status_id, Shapes::ShapeRef.new(shape: AgentStatusId, location_name: "AgentStatusId"))
    CreateAgentStatusResponse.struct_class = Types::CreateAgentStatusResponse

    CreateContactFlowModuleRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateContactFlowModuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: ContactFlowModuleName, required: true, location_name: "Name"))
    CreateContactFlowModuleRequest.add_member(:description, Shapes::ShapeRef.new(shape: ContactFlowModuleDescription, location_name: "Description"))
    CreateContactFlowModuleRequest.add_member(:content, Shapes::ShapeRef.new(shape: ContactFlowModuleContent, required: true, location_name: "Content"))
    CreateContactFlowModuleRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateContactFlowModuleRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateContactFlowModuleRequest.struct_class = Types::CreateContactFlowModuleRequest

    CreateContactFlowModuleResponse.add_member(:id, Shapes::ShapeRef.new(shape: ContactFlowModuleId, location_name: "Id"))
    CreateContactFlowModuleResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    CreateContactFlowModuleResponse.struct_class = Types::CreateContactFlowModuleResponse

    CreateContactFlowRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateContactFlowRequest.add_member(:name, Shapes::ShapeRef.new(shape: ContactFlowName, required: true, location_name: "Name"))
    CreateContactFlowRequest.add_member(:type, Shapes::ShapeRef.new(shape: ContactFlowType, required: true, location_name: "Type"))
    CreateContactFlowRequest.add_member(:description, Shapes::ShapeRef.new(shape: ContactFlowDescription, location_name: "Description"))
    CreateContactFlowRequest.add_member(:content, Shapes::ShapeRef.new(shape: ContactFlowContent, required: true, location_name: "Content"))
    CreateContactFlowRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateContactFlowRequest.struct_class = Types::CreateContactFlowRequest

    CreateContactFlowResponse.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, location_name: "ContactFlowId"))
    CreateContactFlowResponse.add_member(:contact_flow_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ContactFlowArn"))
    CreateContactFlowResponse.struct_class = Types::CreateContactFlowResponse

    CreateEvaluationFormRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateEvaluationFormRequest.add_member(:title, Shapes::ShapeRef.new(shape: EvaluationFormTitle, required: true, location_name: "Title"))
    CreateEvaluationFormRequest.add_member(:description, Shapes::ShapeRef.new(shape: EvaluationFormDescription, location_name: "Description"))
    CreateEvaluationFormRequest.add_member(:items, Shapes::ShapeRef.new(shape: EvaluationFormItemsList, required: true, location_name: "Items"))
    CreateEvaluationFormRequest.add_member(:scoring_strategy, Shapes::ShapeRef.new(shape: EvaluationFormScoringStrategy, location_name: "ScoringStrategy"))
    CreateEvaluationFormRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateEvaluationFormRequest.struct_class = Types::CreateEvaluationFormRequest

    CreateEvaluationFormResponse.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "EvaluationFormId"))
    CreateEvaluationFormResponse.add_member(:evaluation_form_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "EvaluationFormArn"))
    CreateEvaluationFormResponse.struct_class = Types::CreateEvaluationFormResponse

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

    CreateInstanceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken"))
    CreateInstanceRequest.add_member(:identity_management_type, Shapes::ShapeRef.new(shape: DirectoryType, required: true, location_name: "IdentityManagementType"))
    CreateInstanceRequest.add_member(:instance_alias, Shapes::ShapeRef.new(shape: DirectoryAlias, location_name: "InstanceAlias"))
    CreateInstanceRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    CreateInstanceRequest.add_member(:inbound_calls_enabled, Shapes::ShapeRef.new(shape: InboundCallsEnabled, required: true, location_name: "InboundCallsEnabled"))
    CreateInstanceRequest.add_member(:outbound_calls_enabled, Shapes::ShapeRef.new(shape: OutboundCallsEnabled, required: true, location_name: "OutboundCallsEnabled"))
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
    CreateParticipantRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateParticipantRequest.add_member(:participant_details, Shapes::ShapeRef.new(shape: ParticipantDetailsToAdd, required: true, location_name: "ParticipantDetails"))
    CreateParticipantRequest.struct_class = Types::CreateParticipantRequest

    CreateParticipantResponse.add_member(:participant_credentials, Shapes::ShapeRef.new(shape: ParticipantTokenCredentials, location_name: "ParticipantCredentials"))
    CreateParticipantResponse.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantId, location_name: "ParticipantId"))
    CreateParticipantResponse.struct_class = Types::CreateParticipantResponse

    CreatePromptRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreatePromptRequest.add_member(:name, Shapes::ShapeRef.new(shape: CommonNameLength127, required: true, location_name: "Name"))
    CreatePromptRequest.add_member(:description, Shapes::ShapeRef.new(shape: PromptDescription, location_name: "Description"))
    CreatePromptRequest.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    CreatePromptRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreatePromptRequest.struct_class = Types::CreatePromptRequest

    CreatePromptResponse.add_member(:prompt_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "PromptARN"))
    CreatePromptResponse.add_member(:prompt_id, Shapes::ShapeRef.new(shape: PromptId, location_name: "PromptId"))
    CreatePromptResponse.struct_class = Types::CreatePromptResponse

    CreateQueueRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateQueueRequest.add_member(:name, Shapes::ShapeRef.new(shape: CommonNameLength127, required: true, location_name: "Name"))
    CreateQueueRequest.add_member(:description, Shapes::ShapeRef.new(shape: QueueDescription, location_name: "Description"))
    CreateQueueRequest.add_member(:outbound_caller_config, Shapes::ShapeRef.new(shape: OutboundCallerConfig, location_name: "OutboundCallerConfig"))
    CreateQueueRequest.add_member(:hours_of_operation_id, Shapes::ShapeRef.new(shape: HoursOfOperationId, required: true, location_name: "HoursOfOperationId"))
    CreateQueueRequest.add_member(:max_contacts, Shapes::ShapeRef.new(shape: QueueMaxContacts, location_name: "MaxContacts", metadata: {"box"=>true}))
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
    CreateRoutingProfileRequest.add_member(:media_concurrencies, Shapes::ShapeRef.new(shape: MediaConcurrencies, required: true, location_name: "MediaConcurrencies"))
    CreateRoutingProfileRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
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
    CreateRuleRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
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
    CreateSecurityProfileRequest.struct_class = Types::CreateSecurityProfileRequest

    CreateSecurityProfileResponse.add_member(:security_profile_id, Shapes::ShapeRef.new(shape: SecurityProfileId, location_name: "SecurityProfileId"))
    CreateSecurityProfileResponse.add_member(:security_profile_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "SecurityProfileArn"))
    CreateSecurityProfileResponse.struct_class = Types::CreateSecurityProfileResponse

    CreateTaskTemplateRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateTaskTemplateRequest.add_member(:name, Shapes::ShapeRef.new(shape: TaskTemplateName, required: true, location_name: "Name"))
    CreateTaskTemplateRequest.add_member(:description, Shapes::ShapeRef.new(shape: TaskTemplateDescription, location_name: "Description"))
    CreateTaskTemplateRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, location_name: "ContactFlowId"))
    CreateTaskTemplateRequest.add_member(:constraints, Shapes::ShapeRef.new(shape: TaskTemplateConstraints, location_name: "Constraints"))
    CreateTaskTemplateRequest.add_member(:defaults, Shapes::ShapeRef.new(shape: TaskTemplateDefaults, location_name: "Defaults"))
    CreateTaskTemplateRequest.add_member(:status, Shapes::ShapeRef.new(shape: TaskTemplateStatus, location_name: "Status"))
    CreateTaskTemplateRequest.add_member(:fields, Shapes::ShapeRef.new(shape: TaskTemplateFields, required: true, location_name: "Fields"))
    CreateTaskTemplateRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateTaskTemplateRequest.struct_class = Types::CreateTaskTemplateRequest

    CreateTaskTemplateResponse.add_member(:id, Shapes::ShapeRef.new(shape: TaskTemplateId, required: true, location_name: "Id"))
    CreateTaskTemplateResponse.add_member(:arn, Shapes::ShapeRef.new(shape: TaskTemplateArn, required: true, location_name: "Arn"))
    CreateTaskTemplateResponse.struct_class = Types::CreateTaskTemplateResponse

    CreateTrafficDistributionGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name128, required: true, location_name: "Name"))
    CreateTrafficDistributionGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description250, location_name: "Description"))
    CreateTrafficDistributionGroupRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceIdOrArn, required: true, location_name: "InstanceId"))
    CreateTrafficDistributionGroupRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
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

    CreateVocabularyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
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
    CurrentMetricData.add_member(:value, Shapes::ShapeRef.new(shape: Value, location_name: "Value", metadata: {"box"=>true}))
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

    DateReference.add_member(:name, Shapes::ShapeRef.new(shape: ReferenceKey, location_name: "Name"))
    DateReference.add_member(:value, Shapes::ShapeRef.new(shape: ReferenceValue, location_name: "Value"))
    DateReference.struct_class = Types::DateReference

    DeactivateEvaluationFormRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeactivateEvaluationFormRequest.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "EvaluationFormId"))
    DeactivateEvaluationFormRequest.add_member(:evaluation_form_version, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "EvaluationFormVersion"))
    DeactivateEvaluationFormRequest.struct_class = Types::DeactivateEvaluationFormRequest

    DeactivateEvaluationFormResponse.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "EvaluationFormId"))
    DeactivateEvaluationFormResponse.add_member(:evaluation_form_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "EvaluationFormArn"))
    DeactivateEvaluationFormResponse.add_member(:evaluation_form_version, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "EvaluationFormVersion"))
    DeactivateEvaluationFormResponse.struct_class = Types::DeactivateEvaluationFormResponse

    DefaultVocabulary.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    DefaultVocabulary.add_member(:language_code, Shapes::ShapeRef.new(shape: VocabularyLanguageCode, required: true, location_name: "LanguageCode"))
    DefaultVocabulary.add_member(:vocabulary_id, Shapes::ShapeRef.new(shape: VocabularyId, required: true, location_name: "VocabularyId"))
    DefaultVocabulary.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, required: true, location_name: "VocabularyName"))
    DefaultVocabulary.struct_class = Types::DefaultVocabulary

    DefaultVocabularyList.member = Shapes::ShapeRef.new(shape: DefaultVocabulary)

    DeleteContactEvaluationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteContactEvaluationRequest.add_member(:evaluation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "EvaluationId"))
    DeleteContactEvaluationRequest.struct_class = Types::DeleteContactEvaluationRequest

    DeleteContactFlowModuleRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteContactFlowModuleRequest.add_member(:contact_flow_module_id, Shapes::ShapeRef.new(shape: ContactFlowModuleId, required: true, location: "uri", location_name: "ContactFlowModuleId"))
    DeleteContactFlowModuleRequest.struct_class = Types::DeleteContactFlowModuleRequest

    DeleteContactFlowModuleResponse.struct_class = Types::DeleteContactFlowModuleResponse

    DeleteContactFlowRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteContactFlowRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, required: true, location: "uri", location_name: "ContactFlowId"))
    DeleteContactFlowRequest.struct_class = Types::DeleteContactFlowRequest

    DeleteContactFlowResponse.struct_class = Types::DeleteContactFlowResponse

    DeleteEvaluationFormRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteEvaluationFormRequest.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "EvaluationFormId"))
    DeleteEvaluationFormRequest.add_member(:evaluation_form_version, Shapes::ShapeRef.new(shape: VersionNumber, location: "querystring", location_name: "version"))
    DeleteEvaluationFormRequest.struct_class = Types::DeleteEvaluationFormRequest

    DeleteHoursOfOperationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteHoursOfOperationRequest.add_member(:hours_of_operation_id, Shapes::ShapeRef.new(shape: HoursOfOperationId, required: true, location: "uri", location_name: "HoursOfOperationId"))
    DeleteHoursOfOperationRequest.struct_class = Types::DeleteHoursOfOperationRequest

    DeleteInstanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteInstanceRequest.struct_class = Types::DeleteInstanceRequest

    DeleteIntegrationAssociationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteIntegrationAssociationRequest.add_member(:integration_association_id, Shapes::ShapeRef.new(shape: IntegrationAssociationId, required: true, location: "uri", location_name: "IntegrationAssociationId"))
    DeleteIntegrationAssociationRequest.struct_class = Types::DeleteIntegrationAssociationRequest

    DeletePromptRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeletePromptRequest.add_member(:prompt_id, Shapes::ShapeRef.new(shape: PromptId, required: true, location: "uri", location_name: "PromptId"))
    DeletePromptRequest.struct_class = Types::DeletePromptRequest

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

    DescribeContactEvaluationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribeContactEvaluationRequest.add_member(:evaluation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "EvaluationId"))
    DescribeContactEvaluationRequest.struct_class = Types::DescribeContactEvaluationRequest

    DescribeContactEvaluationResponse.add_member(:evaluation, Shapes::ShapeRef.new(shape: Evaluation, required: true, location_name: "Evaluation"))
    DescribeContactEvaluationResponse.add_member(:evaluation_form, Shapes::ShapeRef.new(shape: EvaluationFormContent, required: true, location_name: "EvaluationForm"))
    DescribeContactEvaluationResponse.struct_class = Types::DescribeContactEvaluationResponse

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

    DescribeEvaluationFormRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribeEvaluationFormRequest.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "EvaluationFormId"))
    DescribeEvaluationFormRequest.add_member(:evaluation_form_version, Shapes::ShapeRef.new(shape: VersionNumber, location: "querystring", location_name: "version"))
    DescribeEvaluationFormRequest.struct_class = Types::DescribeEvaluationFormRequest

    DescribeEvaluationFormResponse.add_member(:evaluation_form, Shapes::ShapeRef.new(shape: EvaluationForm, required: true, location_name: "EvaluationForm"))
    DescribeEvaluationFormResponse.struct_class = Types::DescribeEvaluationFormResponse

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

    DescribeVocabularyRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribeVocabularyRequest.add_member(:vocabulary_id, Shapes::ShapeRef.new(shape: VocabularyId, required: true, location: "uri", location_name: "VocabularyId"))
    DescribeVocabularyRequest.struct_class = Types::DescribeVocabularyRequest

    DescribeVocabularyResponse.add_member(:vocabulary, Shapes::ShapeRef.new(shape: Vocabulary, required: true, location_name: "Vocabulary"))
    DescribeVocabularyResponse.struct_class = Types::DescribeVocabularyResponse

    DestinationNotAllowedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    DestinationNotAllowedException.struct_class = Types::DestinationNotAllowedException

    Dimensions.add_member(:queue, Shapes::ShapeRef.new(shape: QueueReference, location_name: "Queue"))
    Dimensions.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "Channel"))
    Dimensions.add_member(:routing_profile, Shapes::ShapeRef.new(shape: RoutingProfileReference, location_name: "RoutingProfile"))
    Dimensions.struct_class = Types::Dimensions

    DimensionsV2Map.key = Shapes::ShapeRef.new(shape: DimensionsV2Key)
    DimensionsV2Map.value = Shapes::ShapeRef.new(shape: DimensionsV2Value)

    DisassociateApprovedOriginRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DisassociateApprovedOriginRequest.add_member(:origin, Shapes::ShapeRef.new(shape: Origin, required: true, location: "querystring", location_name: "origin"))
    DisassociateApprovedOriginRequest.struct_class = Types::DisassociateApprovedOriginRequest

    DisassociateBotRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DisassociateBotRequest.add_member(:lex_bot, Shapes::ShapeRef.new(shape: LexBot, location_name: "LexBot"))
    DisassociateBotRequest.add_member(:lex_v2_bot, Shapes::ShapeRef.new(shape: LexV2Bot, location_name: "LexV2Bot"))
    DisassociateBotRequest.struct_class = Types::DisassociateBotRequest

    DisassociateInstanceStorageConfigRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DisassociateInstanceStorageConfigRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, required: true, location: "uri", location_name: "AssociationId"))
    DisassociateInstanceStorageConfigRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: InstanceStorageResourceType, required: true, location: "querystring", location_name: "resourceType"))
    DisassociateInstanceStorageConfigRequest.struct_class = Types::DisassociateInstanceStorageConfigRequest

    DisassociateLambdaFunctionRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DisassociateLambdaFunctionRequest.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionArn, required: true, location: "querystring", location_name: "functionArn"))
    DisassociateLambdaFunctionRequest.struct_class = Types::DisassociateLambdaFunctionRequest

    DisassociateLexBotRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DisassociateLexBotRequest.add_member(:bot_name, Shapes::ShapeRef.new(shape: BotName, required: true, location: "querystring", location_name: "botName"))
    DisassociateLexBotRequest.add_member(:lex_region, Shapes::ShapeRef.new(shape: LexRegion, required: true, location: "querystring", location_name: "lexRegion"))
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
    DisassociateRoutingProfileQueuesRequest.add_member(:queue_references, Shapes::ShapeRef.new(shape: RoutingProfileQueueReferenceList, required: true, location_name: "QueueReferences"))
    DisassociateRoutingProfileQueuesRequest.struct_class = Types::DisassociateRoutingProfileQueuesRequest

    DisassociateSecurityKeyRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DisassociateSecurityKeyRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, required: true, location: "uri", location_name: "AssociationId"))
    DisassociateSecurityKeyRequest.struct_class = Types::DisassociateSecurityKeyRequest

    DismissUserContactRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "UserId"))
    DismissUserContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DismissUserContactRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    DismissUserContactRequest.struct_class = Types::DismissUserContactRequest

    DismissUserContactResponse.struct_class = Types::DismissUserContactResponse

    Distribution.add_member(:region, Shapes::ShapeRef.new(shape: AwsRegion, required: true, location_name: "Region"))
    Distribution.add_member(:percentage, Shapes::ShapeRef.new(shape: Percentage, required: true, location_name: "Percentage"))
    Distribution.struct_class = Types::Distribution

    DistributionList.member = Shapes::ShapeRef.new(shape: Distribution)

    DuplicateResourceException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    DuplicateResourceException.struct_class = Types::DuplicateResourceException

    EmailReference.add_member(:name, Shapes::ShapeRef.new(shape: ReferenceKey, location_name: "Name"))
    EmailReference.add_member(:value, Shapes::ShapeRef.new(shape: ReferenceValue, location_name: "Value"))
    EmailReference.struct_class = Types::EmailReference

    EncryptionConfig.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, required: true, location_name: "EncryptionType"))
    EncryptionConfig.add_member(:key_id, Shapes::ShapeRef.new(shape: KeyId, required: true, location_name: "KeyId"))
    EncryptionConfig.struct_class = Types::EncryptionConfig

    Evaluation.add_member(:evaluation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "EvaluationId"))
    Evaluation.add_member(:evaluation_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "EvaluationArn"))
    Evaluation.add_member(:metadata, Shapes::ShapeRef.new(shape: EvaluationMetadata, required: true, location_name: "Metadata"))
    Evaluation.add_member(:answers, Shapes::ShapeRef.new(shape: EvaluationAnswersOutputMap, required: true, location_name: "Answers"))
    Evaluation.add_member(:notes, Shapes::ShapeRef.new(shape: EvaluationNotesMap, required: true, location_name: "Notes"))
    Evaluation.add_member(:status, Shapes::ShapeRef.new(shape: EvaluationStatus, required: true, location_name: "Status"))
    Evaluation.add_member(:scores, Shapes::ShapeRef.new(shape: EvaluationScoresMap, location_name: "Scores"))
    Evaluation.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTime"))
    Evaluation.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    Evaluation.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    Evaluation.struct_class = Types::Evaluation

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
    EvaluationAnswerOutput.struct_class = Types::EvaluationAnswerOutput

    EvaluationAnswersInputMap.key = Shapes::ShapeRef.new(shape: ResourceId)
    EvaluationAnswersInputMap.value = Shapes::ShapeRef.new(shape: EvaluationAnswerInput)

    EvaluationAnswersOutputMap.key = Shapes::ShapeRef.new(shape: ResourceId)
    EvaluationAnswersOutputMap.value = Shapes::ShapeRef.new(shape: EvaluationAnswerOutput)

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
    EvaluationForm.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    EvaluationForm.struct_class = Types::EvaluationForm

    EvaluationFormContent.add_member(:evaluation_form_version, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "EvaluationFormVersion"))
    EvaluationFormContent.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "EvaluationFormId"))
    EvaluationFormContent.add_member(:evaluation_form_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "EvaluationFormArn"))
    EvaluationFormContent.add_member(:title, Shapes::ShapeRef.new(shape: EvaluationFormTitle, required: true, location_name: "Title"))
    EvaluationFormContent.add_member(:description, Shapes::ShapeRef.new(shape: EvaluationFormDescription, location_name: "Description"))
    EvaluationFormContent.add_member(:items, Shapes::ShapeRef.new(shape: EvaluationFormItemsList, required: true, location_name: "Items"))
    EvaluationFormContent.add_member(:scoring_strategy, Shapes::ShapeRef.new(shape: EvaluationFormScoringStrategy, location_name: "ScoringStrategy"))
    EvaluationFormContent.struct_class = Types::EvaluationFormContent

    EvaluationFormItem.add_member(:section, Shapes::ShapeRef.new(shape: EvaluationFormSection, location_name: "Section"))
    EvaluationFormItem.add_member(:question, Shapes::ShapeRef.new(shape: EvaluationFormQuestion, location_name: "Question"))
    EvaluationFormItem.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluationFormItem.add_member_subclass(:section, Types::EvaluationFormItem::Section)
    EvaluationFormItem.add_member_subclass(:question, Types::EvaluationFormItem::Question)
    EvaluationFormItem.add_member_subclass(:unknown, Types::EvaluationFormItem::Unknown)
    EvaluationFormItem.struct_class = Types::EvaluationFormItem

    EvaluationFormItemsList.member = Shapes::ShapeRef.new(shape: EvaluationFormItem)

    EvaluationFormNumericQuestionAutomation.add_member(:property_value, Shapes::ShapeRef.new(shape: NumericQuestionPropertyValueAutomation, location_name: "PropertyValue"))
    EvaluationFormNumericQuestionAutomation.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluationFormNumericQuestionAutomation.add_member_subclass(:property_value, Types::EvaluationFormNumericQuestionAutomation::PropertyValue)
    EvaluationFormNumericQuestionAutomation.add_member_subclass(:unknown, Types::EvaluationFormNumericQuestionAutomation::Unknown)
    EvaluationFormNumericQuestionAutomation.struct_class = Types::EvaluationFormNumericQuestionAutomation

    EvaluationFormNumericQuestionOption.add_member(:min_value, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "MinValue"))
    EvaluationFormNumericQuestionOption.add_member(:max_value, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "MaxValue"))
    EvaluationFormNumericQuestionOption.add_member(:score, Shapes::ShapeRef.new(shape: EvaluationFormQuestionAnswerScore, location_name: "Score"))
    EvaluationFormNumericQuestionOption.add_member(:automatic_fail, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutomaticFail"))
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
    EvaluationFormQuestion.add_member(:weight, Shapes::ShapeRef.new(shape: EvaluationFormItemWeight, location_name: "Weight"))
    EvaluationFormQuestion.struct_class = Types::EvaluationFormQuestion

    EvaluationFormQuestionTypeProperties.add_member(:numeric, Shapes::ShapeRef.new(shape: EvaluationFormNumericQuestionProperties, location_name: "Numeric"))
    EvaluationFormQuestionTypeProperties.add_member(:single_select, Shapes::ShapeRef.new(shape: EvaluationFormSingleSelectQuestionProperties, location_name: "SingleSelect"))
    EvaluationFormQuestionTypeProperties.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluationFormQuestionTypeProperties.add_member_subclass(:numeric, Types::EvaluationFormQuestionTypeProperties::Numeric)
    EvaluationFormQuestionTypeProperties.add_member_subclass(:single_select, Types::EvaluationFormQuestionTypeProperties::SingleSelect)
    EvaluationFormQuestionTypeProperties.add_member_subclass(:unknown, Types::EvaluationFormQuestionTypeProperties::Unknown)
    EvaluationFormQuestionTypeProperties.struct_class = Types::EvaluationFormQuestionTypeProperties

    EvaluationFormScoringStrategy.add_member(:mode, Shapes::ShapeRef.new(shape: EvaluationFormScoringMode, required: true, location_name: "Mode"))
    EvaluationFormScoringStrategy.add_member(:status, Shapes::ShapeRef.new(shape: EvaluationFormScoringStatus, required: true, location_name: "Status"))
    EvaluationFormScoringStrategy.struct_class = Types::EvaluationFormScoringStrategy

    EvaluationFormSection.add_member(:title, Shapes::ShapeRef.new(shape: EvaluationFormSectionTitle, required: true, location_name: "Title"))
    EvaluationFormSection.add_member(:ref_id, Shapes::ShapeRef.new(shape: ReferenceId, required: true, location_name: "RefId"))
    EvaluationFormSection.add_member(:instructions, Shapes::ShapeRef.new(shape: EvaluationFormQuestionInstructions, location_name: "Instructions"))
    EvaluationFormSection.add_member(:items, Shapes::ShapeRef.new(shape: EvaluationFormItemsList, required: true, location_name: "Items"))
    EvaluationFormSection.add_member(:weight, Shapes::ShapeRef.new(shape: EvaluationFormItemWeight, location_name: "Weight"))
    EvaluationFormSection.struct_class = Types::EvaluationFormSection

    EvaluationFormSingleSelectQuestionAutomation.add_member(:options, Shapes::ShapeRef.new(shape: EvaluationFormSingleSelectQuestionAutomationOptionList, required: true, location_name: "Options"))
    EvaluationFormSingleSelectQuestionAutomation.add_member(:default_option_ref_id, Shapes::ShapeRef.new(shape: ReferenceId, location_name: "DefaultOptionRefId"))
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
    EvaluationFormSummary.add_member(:active_version, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "ActiveVersion"))
    EvaluationFormSummary.struct_class = Types::EvaluationFormSummary

    EvaluationFormSummaryList.member = Shapes::ShapeRef.new(shape: EvaluationFormSummary)

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

    EvaluationMetadata.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    EvaluationMetadata.add_member(:evaluator_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "EvaluatorArn"))
    EvaluationMetadata.add_member(:contact_agent_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ContactAgentId"))
    EvaluationMetadata.add_member(:score, Shapes::ShapeRef.new(shape: EvaluationScore, location_name: "Score"))
    EvaluationMetadata.struct_class = Types::EvaluationMetadata

    EvaluationNote.add_member(:value, Shapes::ShapeRef.new(shape: EvaluationNoteString, location_name: "Value"))
    EvaluationNote.struct_class = Types::EvaluationNote

    EvaluationNotesMap.key = Shapes::ShapeRef.new(shape: ResourceId)
    EvaluationNotesMap.value = Shapes::ShapeRef.new(shape: EvaluationNote)

    EvaluationScore.add_member(:percentage, Shapes::ShapeRef.new(shape: EvaluationScorePercentage, location_name: "Percentage"))
    EvaluationScore.add_member(:not_applicable, Shapes::ShapeRef.new(shape: Boolean, location_name: "NotApplicable"))
    EvaluationScore.add_member(:automatic_fail, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutomaticFail"))
    EvaluationScore.struct_class = Types::EvaluationScore

    EvaluationScoresMap.key = Shapes::ShapeRef.new(shape: ResourceId)
    EvaluationScoresMap.value = Shapes::ShapeRef.new(shape: EvaluationScore)

    EvaluationSummary.add_member(:evaluation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "EvaluationId"))
    EvaluationSummary.add_member(:evaluation_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "EvaluationArn"))
    EvaluationSummary.add_member(:evaluation_form_title, Shapes::ShapeRef.new(shape: EvaluationFormTitle, required: true, location_name: "EvaluationFormTitle"))
    EvaluationSummary.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "EvaluationFormId"))
    EvaluationSummary.add_member(:status, Shapes::ShapeRef.new(shape: EvaluationStatus, required: true, location_name: "Status"))
    EvaluationSummary.add_member(:evaluator_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "EvaluatorArn"))
    EvaluationSummary.add_member(:score, Shapes::ShapeRef.new(shape: EvaluationScore, location_name: "Score"))
    EvaluationSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTime"))
    EvaluationSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    EvaluationSummary.struct_class = Types::EvaluationSummary

    EvaluationSummaryList.member = Shapes::ShapeRef.new(shape: EvaluationSummary)

    EventBridgeActionDefinition.add_member(:name, Shapes::ShapeRef.new(shape: EventBridgeActionName, required: true, location_name: "Name"))
    EventBridgeActionDefinition.struct_class = Types::EventBridgeActionDefinition

    FilterV2.add_member(:filter_key, Shapes::ShapeRef.new(shape: ResourceArnOrId, location_name: "FilterKey"))
    FilterV2.add_member(:filter_values, Shapes::ShapeRef.new(shape: FilterValueList, location_name: "FilterValues"))
    FilterV2.struct_class = Types::FilterV2

    FilterValueList.member = Shapes::ShapeRef.new(shape: ResourceArnOrId)

    Filters.add_member(:queues, Shapes::ShapeRef.new(shape: Queues, location_name: "Queues"))
    Filters.add_member(:channels, Shapes::ShapeRef.new(shape: Channels, location_name: "Channels"))
    Filters.add_member(:routing_profiles, Shapes::ShapeRef.new(shape: RoutingProfiles, location_name: "RoutingProfiles"))
    Filters.struct_class = Types::Filters

    FiltersV2List.member = Shapes::ShapeRef.new(shape: FilterV2)

    FunctionArnsList.member = Shapes::ShapeRef.new(shape: FunctionArn)

    GetContactAttributesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    GetContactAttributesRequest.add_member(:initial_contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location: "uri", location_name: "InitialContactId"))
    GetContactAttributesRequest.struct_class = Types::GetContactAttributesRequest

    GetContactAttributesResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    GetContactAttributesResponse.struct_class = Types::GetContactAttributesResponse

    GetCurrentMetricDataRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    GetCurrentMetricDataRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, required: true, location_name: "Filters"))
    GetCurrentMetricDataRequest.add_member(:groupings, Shapes::ShapeRef.new(shape: Groupings, location_name: "Groupings"))
    GetCurrentMetricDataRequest.add_member(:current_metrics, Shapes::ShapeRef.new(shape: CurrentMetrics, required: true, location_name: "CurrentMetrics"))
    GetCurrentMetricDataRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetCurrentMetricDataRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box"=>true}))
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
    GetCurrentUserDataRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box"=>true}))
    GetCurrentUserDataRequest.struct_class = Types::GetCurrentUserDataRequest

    GetCurrentUserDataResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetCurrentUserDataResponse.add_member(:user_data_list, Shapes::ShapeRef.new(shape: UserDataList, location_name: "UserDataList"))
    GetCurrentUserDataResponse.add_member(:approximate_total_count, Shapes::ShapeRef.new(shape: ApproximateTotalCount, location_name: "ApproximateTotalCount"))
    GetCurrentUserDataResponse.struct_class = Types::GetCurrentUserDataResponse

    GetFederationTokenRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    GetFederationTokenRequest.struct_class = Types::GetFederationTokenRequest

    GetFederationTokenResponse.add_member(:credentials, Shapes::ShapeRef.new(shape: Credentials, location_name: "Credentials"))
    GetFederationTokenResponse.add_member(:sign_in_url, Shapes::ShapeRef.new(shape: Url, location_name: "SignInUrl"))
    GetFederationTokenResponse.add_member(:user_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "UserArn"))
    GetFederationTokenResponse.add_member(:user_id, Shapes::ShapeRef.new(shape: AgentResourceId, location_name: "UserId"))
    GetFederationTokenResponse.struct_class = Types::GetFederationTokenResponse

    GetMetricDataRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    GetMetricDataRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "StartTime"))
    GetMetricDataRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "EndTime"))
    GetMetricDataRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, required: true, location_name: "Filters"))
    GetMetricDataRequest.add_member(:groupings, Shapes::ShapeRef.new(shape: Groupings, location_name: "Groupings"))
    GetMetricDataRequest.add_member(:historical_metrics, Shapes::ShapeRef.new(shape: HistoricalMetrics, required: true, location_name: "HistoricalMetrics"))
    GetMetricDataRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetMetricDataRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box"=>true}))
    GetMetricDataRequest.struct_class = Types::GetMetricDataRequest

    GetMetricDataResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetMetricDataResponse.add_member(:metric_results, Shapes::ShapeRef.new(shape: HistoricalMetricResults, location_name: "MetricResults"))
    GetMetricDataResponse.struct_class = Types::GetMetricDataResponse

    GetMetricDataV2Request.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "ResourceArn"))
    GetMetricDataV2Request.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    GetMetricDataV2Request.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndTime"))
    GetMetricDataV2Request.add_member(:filters, Shapes::ShapeRef.new(shape: FiltersV2List, required: true, location_name: "Filters"))
    GetMetricDataV2Request.add_member(:groupings, Shapes::ShapeRef.new(shape: GroupingsV2, location_name: "Groupings"))
    GetMetricDataV2Request.add_member(:metrics, Shapes::ShapeRef.new(shape: MetricsV2, required: true, location_name: "Metrics"))
    GetMetricDataV2Request.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    GetMetricDataV2Request.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box"=>true}))
    GetMetricDataV2Request.struct_class = Types::GetMetricDataV2Request

    GetMetricDataV2Response.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    GetMetricDataV2Response.add_member(:metric_results, Shapes::ShapeRef.new(shape: MetricResultsV2, location_name: "MetricResults"))
    GetMetricDataV2Response.struct_class = Types::GetMetricDataV2Response

    GetPromptFileRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    GetPromptFileRequest.add_member(:prompt_id, Shapes::ShapeRef.new(shape: PromptId, required: true, location: "uri", location_name: "PromptId"))
    GetPromptFileRequest.struct_class = Types::GetPromptFileRequest

    GetPromptFileResponse.add_member(:prompt_presigned_url, Shapes::ShapeRef.new(shape: PromptPresignedUrl, location_name: "PromptPresignedUrl"))
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
    GetTrafficDistributionResponse.struct_class = Types::GetTrafficDistributionResponse

    Groupings.member = Shapes::ShapeRef.new(shape: Grouping)

    GroupingsV2.member = Shapes::ShapeRef.new(shape: GroupingV2)

    HierarchyGroup.add_member(:id, Shapes::ShapeRef.new(shape: HierarchyGroupId, location_name: "Id"))
    HierarchyGroup.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    HierarchyGroup.add_member(:name, Shapes::ShapeRef.new(shape: HierarchyGroupName, location_name: "Name"))
    HierarchyGroup.add_member(:level_id, Shapes::ShapeRef.new(shape: HierarchyLevelId, location_name: "LevelId"))
    HierarchyGroup.add_member(:hierarchy_path, Shapes::ShapeRef.new(shape: HierarchyPath, location_name: "HierarchyPath"))
    HierarchyGroup.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    HierarchyGroup.struct_class = Types::HierarchyGroup

    HierarchyGroupCondition.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    HierarchyGroupCondition.add_member(:hierarchy_group_match_type, Shapes::ShapeRef.new(shape: HierarchyGroupMatchType, location_name: "HierarchyGroupMatchType"))
    HierarchyGroupCondition.struct_class = Types::HierarchyGroupCondition

    HierarchyGroupSummary.add_member(:id, Shapes::ShapeRef.new(shape: HierarchyGroupId, location_name: "Id"))
    HierarchyGroupSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    HierarchyGroupSummary.add_member(:name, Shapes::ShapeRef.new(shape: HierarchyGroupName, location_name: "Name"))
    HierarchyGroupSummary.struct_class = Types::HierarchyGroupSummary

    HierarchyGroupSummaryList.member = Shapes::ShapeRef.new(shape: HierarchyGroupSummary)

    HierarchyGroupSummaryReference.add_member(:id, Shapes::ShapeRef.new(shape: HierarchyGroupId, location_name: "Id"))
    HierarchyGroupSummaryReference.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    HierarchyGroupSummaryReference.struct_class = Types::HierarchyGroupSummaryReference

    HierarchyLevel.add_member(:id, Shapes::ShapeRef.new(shape: HierarchyLevelId, location_name: "Id"))
    HierarchyLevel.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    HierarchyLevel.add_member(:name, Shapes::ShapeRef.new(shape: HierarchyLevelName, location_name: "Name"))
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
    HistoricalMetric.add_member(:threshold, Shapes::ShapeRef.new(shape: Threshold, location_name: "Threshold", metadata: {"box"=>true}))
    HistoricalMetric.add_member(:statistic, Shapes::ShapeRef.new(shape: Statistic, location_name: "Statistic"))
    HistoricalMetric.add_member(:unit, Shapes::ShapeRef.new(shape: Unit, location_name: "Unit"))
    HistoricalMetric.struct_class = Types::HistoricalMetric

    HistoricalMetricData.add_member(:metric, Shapes::ShapeRef.new(shape: HistoricalMetric, location_name: "Metric"))
    HistoricalMetricData.add_member(:value, Shapes::ShapeRef.new(shape: Value, location_name: "Value", metadata: {"box"=>true}))
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
    HoursOfOperation.struct_class = Types::HoursOfOperation

    HoursOfOperationConfig.add_member(:day, Shapes::ShapeRef.new(shape: HoursOfOperationDays, required: true, location_name: "Day"))
    HoursOfOperationConfig.add_member(:start_time, Shapes::ShapeRef.new(shape: HoursOfOperationTimeSlice, required: true, location_name: "StartTime"))
    HoursOfOperationConfig.add_member(:end_time, Shapes::ShapeRef.new(shape: HoursOfOperationTimeSlice, required: true, location_name: "EndTime"))
    HoursOfOperationConfig.struct_class = Types::HoursOfOperationConfig

    HoursOfOperationConfigList.member = Shapes::ShapeRef.new(shape: HoursOfOperationConfig)

    HoursOfOperationList.member = Shapes::ShapeRef.new(shape: HoursOfOperation)

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
    HoursOfOperationSummary.struct_class = Types::HoursOfOperationSummary

    HoursOfOperationSummaryList.member = Shapes::ShapeRef.new(shape: HoursOfOperationSummary)

    HoursOfOperationTimeSlice.add_member(:hours, Shapes::ShapeRef.new(shape: Hours24Format, required: true, location_name: "Hours", metadata: {"box"=>true}))
    HoursOfOperationTimeSlice.add_member(:minutes, Shapes::ShapeRef.new(shape: MinutesLimit60, required: true, location_name: "Minutes", metadata: {"box"=>true}))
    HoursOfOperationTimeSlice.struct_class = Types::HoursOfOperationTimeSlice

    IdempotencyException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    IdempotencyException.struct_class = Types::IdempotencyException

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

    InvalidContactFlowException.add_member(:problems, Shapes::ShapeRef.new(shape: Problems, location_name: "problems"))
    InvalidContactFlowException.struct_class = Types::InvalidContactFlowException

    InvalidContactFlowModuleException.add_member(:problems, Shapes::ShapeRef.new(shape: Problems, location_name: "Problems"))
    InvalidContactFlowModuleException.struct_class = Types::InvalidContactFlowModuleException

    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    InvisibleFieldInfo.add_member(:id, Shapes::ShapeRef.new(shape: TaskTemplateFieldIdentifier, location_name: "Id"))
    InvisibleFieldInfo.struct_class = Types::InvisibleFieldInfo

    InvisibleTaskTemplateFields.member = Shapes::ShapeRef.new(shape: InvisibleFieldInfo)

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
    ListAgentStatusRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListAgentStatusRequest.add_member(:agent_status_types, Shapes::ShapeRef.new(shape: AgentStatusTypes, location: "querystring", location_name: "AgentStatusTypes"))
    ListAgentStatusRequest.struct_class = Types::ListAgentStatusRequest

    ListAgentStatusResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAgentStatusResponse.add_member(:agent_status_summary_list, Shapes::ShapeRef.new(shape: AgentStatusSummaryList, location_name: "AgentStatusSummaryList"))
    ListAgentStatusResponse.struct_class = Types::ListAgentStatusResponse

    ListApprovedOriginsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListApprovedOriginsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListApprovedOriginsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult25, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListApprovedOriginsRequest.struct_class = Types::ListApprovedOriginsRequest

    ListApprovedOriginsResponse.add_member(:origins, Shapes::ShapeRef.new(shape: OriginsList, location_name: "Origins"))
    ListApprovedOriginsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListApprovedOriginsResponse.struct_class = Types::ListApprovedOriginsResponse

    ListBotsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListBotsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListBotsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult25, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListBotsRequest.add_member(:lex_version, Shapes::ShapeRef.new(shape: LexVersion, required: true, location: "querystring", location_name: "lexVersion"))
    ListBotsRequest.struct_class = Types::ListBotsRequest

    ListBotsResponse.add_member(:lex_bots, Shapes::ShapeRef.new(shape: LexBotConfigList, location_name: "LexBots"))
    ListBotsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListBotsResponse.struct_class = Types::ListBotsResponse

    ListContactEvaluationsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListContactEvaluationsRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location: "querystring", location_name: "contactId"))
    ListContactEvaluationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListContactEvaluationsRequest.struct_class = Types::ListContactEvaluationsRequest

    ListContactEvaluationsResponse.add_member(:evaluation_summary_list, Shapes::ShapeRef.new(shape: EvaluationSummaryList, required: true, location_name: "EvaluationSummaryList"))
    ListContactEvaluationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListContactEvaluationsResponse.struct_class = Types::ListContactEvaluationsResponse

    ListContactFlowModulesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListContactFlowModulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListContactFlowModulesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListContactFlowModulesRequest.add_member(:contact_flow_module_state, Shapes::ShapeRef.new(shape: ContactFlowModuleState, location: "querystring", location_name: "state"))
    ListContactFlowModulesRequest.struct_class = Types::ListContactFlowModulesRequest

    ListContactFlowModulesResponse.add_member(:contact_flow_modules_summary_list, Shapes::ShapeRef.new(shape: ContactFlowModulesSummaryList, location_name: "ContactFlowModulesSummaryList"))
    ListContactFlowModulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListContactFlowModulesResponse.struct_class = Types::ListContactFlowModulesResponse

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
    ListEvaluationFormVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListEvaluationFormVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListEvaluationFormVersionsRequest.struct_class = Types::ListEvaluationFormVersionsRequest

    ListEvaluationFormVersionsResponse.add_member(:evaluation_form_version_summary_list, Shapes::ShapeRef.new(shape: EvaluationFormVersionSummaryList, required: true, location_name: "EvaluationFormVersionSummaryList"))
    ListEvaluationFormVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEvaluationFormVersionsResponse.struct_class = Types::ListEvaluationFormVersionsResponse

    ListEvaluationFormsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListEvaluationFormsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListEvaluationFormsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListEvaluationFormsRequest.struct_class = Types::ListEvaluationFormsRequest

    ListEvaluationFormsResponse.add_member(:evaluation_form_summary_list, Shapes::ShapeRef.new(shape: EvaluationFormSummaryList, required: true, location_name: "EvaluationFormSummaryList"))
    ListEvaluationFormsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEvaluationFormsResponse.struct_class = Types::ListEvaluationFormsResponse

    ListHoursOfOperationsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListHoursOfOperationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListHoursOfOperationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults"))
    ListHoursOfOperationsRequest.struct_class = Types::ListHoursOfOperationsRequest

    ListHoursOfOperationsResponse.add_member(:hours_of_operation_summary_list, Shapes::ShapeRef.new(shape: HoursOfOperationSummaryList, location_name: "HoursOfOperationSummaryList"))
    ListHoursOfOperationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListHoursOfOperationsResponse.struct_class = Types::ListHoursOfOperationsResponse

    ListInstanceAttributesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListInstanceAttributesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListInstanceAttributesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult7, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListInstanceAttributesRequest.struct_class = Types::ListInstanceAttributesRequest

    ListInstanceAttributesResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributesList, location_name: "Attributes"))
    ListInstanceAttributesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListInstanceAttributesResponse.struct_class = Types::ListInstanceAttributesResponse

    ListInstanceStorageConfigsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListInstanceStorageConfigsRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: InstanceStorageResourceType, required: true, location: "querystring", location_name: "resourceType"))
    ListInstanceStorageConfigsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListInstanceStorageConfigsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult10, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListInstanceStorageConfigsRequest.struct_class = Types::ListInstanceStorageConfigsRequest

    ListInstanceStorageConfigsResponse.add_member(:storage_configs, Shapes::ShapeRef.new(shape: InstanceStorageConfigs, location_name: "StorageConfigs"))
    ListInstanceStorageConfigsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListInstanceStorageConfigsResponse.struct_class = Types::ListInstanceStorageConfigsResponse

    ListInstancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListInstancesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult10, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListInstancesRequest.struct_class = Types::ListInstancesRequest

    ListInstancesResponse.add_member(:instance_summary_list, Shapes::ShapeRef.new(shape: InstanceSummaryList, location_name: "InstanceSummaryList"))
    ListInstancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListInstancesResponse.struct_class = Types::ListInstancesResponse

    ListIntegrationAssociationsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListIntegrationAssociationsRequest.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, location: "querystring", location_name: "integrationType"))
    ListIntegrationAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListIntegrationAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListIntegrationAssociationsRequest.struct_class = Types::ListIntegrationAssociationsRequest

    ListIntegrationAssociationsResponse.add_member(:integration_association_summary_list, Shapes::ShapeRef.new(shape: IntegrationAssociationSummaryList, location_name: "IntegrationAssociationSummaryList"))
    ListIntegrationAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListIntegrationAssociationsResponse.struct_class = Types::ListIntegrationAssociationsResponse

    ListLambdaFunctionsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListLambdaFunctionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListLambdaFunctionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult25, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListLambdaFunctionsRequest.struct_class = Types::ListLambdaFunctionsRequest

    ListLambdaFunctionsResponse.add_member(:lambda_functions, Shapes::ShapeRef.new(shape: FunctionArnsList, location_name: "LambdaFunctions"))
    ListLambdaFunctionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLambdaFunctionsResponse.struct_class = Types::ListLambdaFunctionsResponse

    ListLexBotsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListLexBotsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListLexBotsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult25, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
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
    ListPhoneNumbersSummary.struct_class = Types::ListPhoneNumbersSummary

    ListPhoneNumbersSummaryList.member = Shapes::ShapeRef.new(shape: ListPhoneNumbersSummary)

    ListPhoneNumbersV2Request.add_member(:target_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "TargetArn"))
    ListPhoneNumbersV2Request.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location_name: "MaxResults", metadata: {"box"=>true}))
    ListPhoneNumbersV2Request.add_member(:next_token, Shapes::ShapeRef.new(shape: LargeNextToken, location_name: "NextToken"))
    ListPhoneNumbersV2Request.add_member(:phone_number_country_codes, Shapes::ShapeRef.new(shape: PhoneNumberCountryCodes, location_name: "PhoneNumberCountryCodes"))
    ListPhoneNumbersV2Request.add_member(:phone_number_types, Shapes::ShapeRef.new(shape: PhoneNumberTypes, location_name: "PhoneNumberTypes"))
    ListPhoneNumbersV2Request.add_member(:phone_number_prefix, Shapes::ShapeRef.new(shape: PhoneNumberPrefix, location_name: "PhoneNumberPrefix"))
    ListPhoneNumbersV2Request.struct_class = Types::ListPhoneNumbersV2Request

    ListPhoneNumbersV2Response.add_member(:next_token, Shapes::ShapeRef.new(shape: LargeNextToken, location_name: "NextToken"))
    ListPhoneNumbersV2Response.add_member(:list_phone_numbers_summary_list, Shapes::ShapeRef.new(shape: ListPhoneNumbersSummaryList, location_name: "ListPhoneNumbersSummaryList"))
    ListPhoneNumbersV2Response.struct_class = Types::ListPhoneNumbersV2Response

    ListPromptsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListPromptsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPromptsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListPromptsRequest.struct_class = Types::ListPromptsRequest

    ListPromptsResponse.add_member(:prompt_summary_list, Shapes::ShapeRef.new(shape: PromptSummaryList, location_name: "PromptSummaryList"))
    ListPromptsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPromptsResponse.struct_class = Types::ListPromptsResponse

    ListQueueQuickConnectsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListQueueQuickConnectsRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "QueueId"))
    ListQueueQuickConnectsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListQueueQuickConnectsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListQueueQuickConnectsRequest.struct_class = Types::ListQueueQuickConnectsRequest

    ListQueueQuickConnectsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListQueueQuickConnectsResponse.add_member(:quick_connect_summary_list, Shapes::ShapeRef.new(shape: QuickConnectSummaryList, location_name: "QuickConnectSummaryList"))
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
    ListQuickConnectsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListQuickConnectsRequest.add_member(:quick_connect_types, Shapes::ShapeRef.new(shape: QuickConnectTypes, location: "querystring", location_name: "QuickConnectTypes"))
    ListQuickConnectsRequest.struct_class = Types::ListQuickConnectsRequest

    ListQuickConnectsResponse.add_member(:quick_connect_summary_list, Shapes::ShapeRef.new(shape: QuickConnectSummaryList, location_name: "QuickConnectSummaryList"))
    ListQuickConnectsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListQuickConnectsResponse.struct_class = Types::ListQuickConnectsResponse

    ListRoutingProfileQueuesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListRoutingProfileQueuesRequest.add_member(:routing_profile_id, Shapes::ShapeRef.new(shape: RoutingProfileId, required: true, location: "uri", location_name: "RoutingProfileId"))
    ListRoutingProfileQueuesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListRoutingProfileQueuesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListRoutingProfileQueuesRequest.struct_class = Types::ListRoutingProfileQueuesRequest

    ListRoutingProfileQueuesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRoutingProfileQueuesResponse.add_member(:routing_profile_queue_config_summary_list, Shapes::ShapeRef.new(shape: RoutingProfileQueueConfigSummaryList, location_name: "RoutingProfileQueueConfigSummaryList"))
    ListRoutingProfileQueuesResponse.struct_class = Types::ListRoutingProfileQueuesResponse

    ListRoutingProfilesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListRoutingProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListRoutingProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListRoutingProfilesRequest.struct_class = Types::ListRoutingProfilesRequest

    ListRoutingProfilesResponse.add_member(:routing_profile_summary_list, Shapes::ShapeRef.new(shape: RoutingProfileSummaryList, location_name: "RoutingProfileSummaryList"))
    ListRoutingProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRoutingProfilesResponse.struct_class = Types::ListRoutingProfilesResponse

    ListRulesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListRulesRequest.add_member(:publish_status, Shapes::ShapeRef.new(shape: RulePublishStatus, location: "querystring", location_name: "publishStatus"))
    ListRulesRequest.add_member(:event_source_name, Shapes::ShapeRef.new(shape: EventSourceName, location: "querystring", location_name: "eventSourceName"))
    ListRulesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult200, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListRulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListRulesRequest.struct_class = Types::ListRulesRequest

    ListRulesResponse.add_member(:rule_summary_list, Shapes::ShapeRef.new(shape: RuleSummaryList, required: true, location_name: "RuleSummaryList"))
    ListRulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRulesResponse.struct_class = Types::ListRulesResponse

    ListSecurityKeysRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListSecurityKeysRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListSecurityKeysRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult2, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListSecurityKeysRequest.struct_class = Types::ListSecurityKeysRequest

    ListSecurityKeysResponse.add_member(:security_keys, Shapes::ShapeRef.new(shape: SecurityKeysList, location_name: "SecurityKeys"))
    ListSecurityKeysResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSecurityKeysResponse.struct_class = Types::ListSecurityKeysResponse

    ListSecurityProfilePermissionsRequest.add_member(:security_profile_id, Shapes::ShapeRef.new(shape: SecurityProfileId, required: true, location: "uri", location_name: "SecurityProfileId"))
    ListSecurityProfilePermissionsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListSecurityProfilePermissionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListSecurityProfilePermissionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListSecurityProfilePermissionsRequest.struct_class = Types::ListSecurityProfilePermissionsRequest

    ListSecurityProfilePermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: PermissionsList, location_name: "Permissions"))
    ListSecurityProfilePermissionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSecurityProfilePermissionsResponse.struct_class = Types::ListSecurityProfilePermissionsResponse

    ListSecurityProfilesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListSecurityProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListSecurityProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
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
    ListTaskTemplatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListTaskTemplatesRequest.add_member(:status, Shapes::ShapeRef.new(shape: TaskTemplateStatus, location: "querystring", location_name: "status"))
    ListTaskTemplatesRequest.add_member(:name, Shapes::ShapeRef.new(shape: TaskTemplateName, location: "querystring", location_name: "name"))
    ListTaskTemplatesRequest.struct_class = Types::ListTaskTemplatesRequest

    ListTaskTemplatesResponse.add_member(:task_templates, Shapes::ShapeRef.new(shape: TaskTemplateList, location_name: "TaskTemplates"))
    ListTaskTemplatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTaskTemplatesResponse.struct_class = Types::ListTaskTemplatesResponse

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
    ListUseCasesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListUseCasesRequest.struct_class = Types::ListUseCasesRequest

    ListUseCasesResponse.add_member(:use_case_summary_list, Shapes::ShapeRef.new(shape: UseCaseSummaryList, location_name: "UseCaseSummaryList"))
    ListUseCasesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListUseCasesResponse.struct_class = Types::ListUseCasesResponse

    ListUserHierarchyGroupsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListUserHierarchyGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListUserHierarchyGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListUserHierarchyGroupsRequest.struct_class = Types::ListUserHierarchyGroupsRequest

    ListUserHierarchyGroupsResponse.add_member(:user_hierarchy_group_summary_list, Shapes::ShapeRef.new(shape: HierarchyGroupSummaryList, location_name: "UserHierarchyGroupSummaryList"))
    ListUserHierarchyGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListUserHierarchyGroupsResponse.struct_class = Types::ListUserHierarchyGroupsResponse

    ListUsersRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListUsersRequest.struct_class = Types::ListUsersRequest

    ListUsersResponse.add_member(:user_summary_list, Shapes::ShapeRef.new(shape: UserSummaryList, location_name: "UserSummaryList"))
    ListUsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListUsersResponse.struct_class = Types::ListUsersResponse

    MaximumResultReturnedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    MaximumResultReturnedException.struct_class = Types::MaximumResultReturnedException

    MediaConcurrencies.member = Shapes::ShapeRef.new(shape: MediaConcurrency)

    MediaConcurrency.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, required: true, location_name: "Channel"))
    MediaConcurrency.add_member(:concurrency, Shapes::ShapeRef.new(shape: Concurrency, required: true, location_name: "Concurrency"))
    MediaConcurrency.add_member(:cross_channel_behavior, Shapes::ShapeRef.new(shape: CrossChannelBehavior, location_name: "CrossChannelBehavior"))
    MediaConcurrency.struct_class = Types::MediaConcurrency

    MetricDataCollectionsV2.member = Shapes::ShapeRef.new(shape: MetricDataV2)

    MetricDataV2.add_member(:metric, Shapes::ShapeRef.new(shape: MetricV2, location_name: "Metric"))
    MetricDataV2.add_member(:value, Shapes::ShapeRef.new(shape: Value, location_name: "Value", metadata: {"box"=>true}))
    MetricDataV2.struct_class = Types::MetricDataV2

    MetricFilterV2.add_member(:metric_filter_key, Shapes::ShapeRef.new(shape: String, location_name: "MetricFilterKey"))
    MetricFilterV2.add_member(:metric_filter_values, Shapes::ShapeRef.new(shape: MetricFilterValueList, location_name: "MetricFilterValues"))
    MetricFilterV2.struct_class = Types::MetricFilterV2

    MetricFilterValueList.member = Shapes::ShapeRef.new(shape: String)

    MetricFiltersV2List.member = Shapes::ShapeRef.new(shape: MetricFilterV2)

    MetricResultV2.add_member(:dimensions, Shapes::ShapeRef.new(shape: DimensionsV2Map, location_name: "Dimensions"))
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
    MonitorContactRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    MonitorContactRequest.struct_class = Types::MonitorContactRequest

    MonitorContactResponse.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContactId"))
    MonitorContactResponse.add_member(:contact_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ContactArn"))
    MonitorContactResponse.struct_class = Types::MonitorContactResponse

    NotificationRecipientType.add_member(:user_tags, Shapes::ShapeRef.new(shape: UserTagMap, location_name: "UserTags"))
    NotificationRecipientType.add_member(:user_ids, Shapes::ShapeRef.new(shape: UserIdList, location_name: "UserIds"))
    NotificationRecipientType.struct_class = Types::NotificationRecipientType

    NumberReference.add_member(:name, Shapes::ShapeRef.new(shape: ReferenceKey, location_name: "Name"))
    NumberReference.add_member(:value, Shapes::ShapeRef.new(shape: ReferenceValue, location_name: "Value"))
    NumberReference.struct_class = Types::NumberReference

    NumericQuestionPropertyValueAutomation.add_member(:label, Shapes::ShapeRef.new(shape: NumericQuestionPropertyAutomationLabel, required: true, location_name: "Label"))
    NumericQuestionPropertyValueAutomation.struct_class = Types::NumericQuestionPropertyValueAutomation

    OriginsList.member = Shapes::ShapeRef.new(shape: Origin)

    OutboundCallerConfig.add_member(:outbound_caller_id_name, Shapes::ShapeRef.new(shape: OutboundCallerIdName, location_name: "OutboundCallerIdName"))
    OutboundCallerConfig.add_member(:outbound_caller_id_number_id, Shapes::ShapeRef.new(shape: PhoneNumberId, location_name: "OutboundCallerIdNumberId"))
    OutboundCallerConfig.add_member(:outbound_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, location_name: "OutboundFlowId"))
    OutboundCallerConfig.struct_class = Types::OutboundCallerConfig

    OutboundContactNotPermittedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    OutboundContactNotPermittedException.struct_class = Types::OutboundContactNotPermittedException

    ParticipantDetails.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "DisplayName"))
    ParticipantDetails.struct_class = Types::ParticipantDetails

    ParticipantDetailsToAdd.add_member(:participant_role, Shapes::ShapeRef.new(shape: ParticipantRole, location_name: "ParticipantRole"))
    ParticipantDetailsToAdd.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    ParticipantDetailsToAdd.struct_class = Types::ParticipantDetailsToAdd

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

    ProblemDetail.add_member(:message, Shapes::ShapeRef.new(shape: ProblemMessageString, location_name: "message"))
    ProblemDetail.struct_class = Types::ProblemDetail

    Problems.member = Shapes::ShapeRef.new(shape: ProblemDetail)

    Prompt.add_member(:prompt_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "PromptARN"))
    Prompt.add_member(:prompt_id, Shapes::ShapeRef.new(shape: PromptId, location_name: "PromptId"))
    Prompt.add_member(:name, Shapes::ShapeRef.new(shape: CommonNameLength127, location_name: "Name"))
    Prompt.add_member(:description, Shapes::ShapeRef.new(shape: PromptDescription, location_name: "Description"))
    Prompt.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
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

    Queue.add_member(:name, Shapes::ShapeRef.new(shape: CommonNameLength127, location_name: "Name"))
    Queue.add_member(:queue_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "QueueArn"))
    Queue.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, location_name: "QueueId"))
    Queue.add_member(:description, Shapes::ShapeRef.new(shape: QueueDescription, location_name: "Description"))
    Queue.add_member(:outbound_caller_config, Shapes::ShapeRef.new(shape: OutboundCallerConfig, location_name: "OutboundCallerConfig"))
    Queue.add_member(:hours_of_operation_id, Shapes::ShapeRef.new(shape: HoursOfOperationId, location_name: "HoursOfOperationId"))
    Queue.add_member(:max_contacts, Shapes::ShapeRef.new(shape: QueueMaxContacts, location_name: "MaxContacts", metadata: {"box"=>true}))
    Queue.add_member(:status, Shapes::ShapeRef.new(shape: QueueStatus, location_name: "Status"))
    Queue.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    Queue.struct_class = Types::Queue

    QueueInfo.add_member(:id, Shapes::ShapeRef.new(shape: QueueId, location_name: "Id"))
    QueueInfo.add_member(:enqueue_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "EnqueueTimestamp"))
    QueueInfo.struct_class = Types::QueueInfo

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
    QuickConnectSummary.struct_class = Types::QuickConnectSummary

    QuickConnectSummaryList.member = Shapes::ShapeRef.new(shape: QuickConnectSummary)

    QuickConnectTypes.member = Shapes::ShapeRef.new(shape: QuickConnectType)

    QuickConnectsList.member = Shapes::ShapeRef.new(shape: QuickConnectId)

    ReadOnlyFieldInfo.add_member(:id, Shapes::ShapeRef.new(shape: TaskTemplateFieldIdentifier, location_name: "Id"))
    ReadOnlyFieldInfo.struct_class = Types::ReadOnlyFieldInfo

    ReadOnlyTaskTemplateFields.member = Shapes::ShapeRef.new(shape: ReadOnlyFieldInfo)

    Reference.add_member(:value, Shapes::ShapeRef.new(shape: ReferenceValue, required: true, location_name: "Value"))
    Reference.add_member(:type, Shapes::ShapeRef.new(shape: ReferenceType, required: true, location_name: "Type"))
    Reference.struct_class = Types::Reference

    ReferenceSummary.add_member(:url, Shapes::ShapeRef.new(shape: UrlReference, location_name: "Url"))
    ReferenceSummary.add_member(:attachment, Shapes::ShapeRef.new(shape: AttachmentReference, location_name: "Attachment"))
    ReferenceSummary.add_member(:string, Shapes::ShapeRef.new(shape: StringReference, location_name: "String"))
    ReferenceSummary.add_member(:number, Shapes::ShapeRef.new(shape: NumberReference, location_name: "Number"))
    ReferenceSummary.add_member(:date, Shapes::ShapeRef.new(shape: DateReference, location_name: "Date"))
    ReferenceSummary.add_member(:email, Shapes::ShapeRef.new(shape: EmailReference, location_name: "Email"))
    ReferenceSummary.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ReferenceSummary.add_member_subclass(:url, Types::ReferenceSummary::Url)
    ReferenceSummary.add_member_subclass(:attachment, Types::ReferenceSummary::Attachment)
    ReferenceSummary.add_member_subclass(:string, Types::ReferenceSummary::String)
    ReferenceSummary.add_member_subclass(:number, Types::ReferenceSummary::Number)
    ReferenceSummary.add_member_subclass(:date, Types::ReferenceSummary::Date)
    ReferenceSummary.add_member_subclass(:email, Types::ReferenceSummary::Email)
    ReferenceSummary.add_member_subclass(:unknown, Types::ReferenceSummary::Unknown)
    ReferenceSummary.struct_class = Types::ReferenceSummary

    ReferenceSummaryList.member = Shapes::ShapeRef.new(shape: ReferenceSummary)

    ReferenceTypes.member = Shapes::ShapeRef.new(shape: ReferenceType)

    ReleasePhoneNumberRequest.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: PhoneNumberId, required: true, location: "uri", location_name: "PhoneNumberId"))
    ReleasePhoneNumberRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    ReleasePhoneNumberRequest.struct_class = Types::ReleasePhoneNumberRequest

    ReplicateInstanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceIdOrArn, required: true, location: "uri", location_name: "InstanceId"))
    ReplicateInstanceRequest.add_member(:replica_region, Shapes::ShapeRef.new(shape: AwsRegion, required: true, location_name: "ReplicaRegion"))
    ReplicateInstanceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    ReplicateInstanceRequest.add_member(:replica_alias, Shapes::ShapeRef.new(shape: DirectoryAlias, required: true, location_name: "ReplicaAlias"))
    ReplicateInstanceRequest.struct_class = Types::ReplicateInstanceRequest

    ReplicateInstanceResponse.add_member(:id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "Id"))
    ReplicateInstanceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    ReplicateInstanceResponse.struct_class = Types::ReplicateInstanceResponse

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
    ResumeContactRecordingRequest.struct_class = Types::ResumeContactRecordingRequest

    ResumeContactRecordingResponse.struct_class = Types::ResumeContactRecordingResponse

    RoutingProfile.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    RoutingProfile.add_member(:name, Shapes::ShapeRef.new(shape: RoutingProfileName, location_name: "Name"))
    RoutingProfile.add_member(:routing_profile_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "RoutingProfileArn"))
    RoutingProfile.add_member(:routing_profile_id, Shapes::ShapeRef.new(shape: RoutingProfileId, location_name: "RoutingProfileId"))
    RoutingProfile.add_member(:description, Shapes::ShapeRef.new(shape: RoutingProfileDescription, location_name: "Description"))
    RoutingProfile.add_member(:media_concurrencies, Shapes::ShapeRef.new(shape: MediaConcurrencies, location_name: "MediaConcurrencies"))
    RoutingProfile.add_member(:default_outbound_queue_id, Shapes::ShapeRef.new(shape: QueueId, location_name: "DefaultOutboundQueueId"))
    RoutingProfile.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    RoutingProfile.add_member(:number_of_associated_queues, Shapes::ShapeRef.new(shape: Long, location_name: "NumberOfAssociatedQueues"))
    RoutingProfile.add_member(:number_of_associated_users, Shapes::ShapeRef.new(shape: Long, location_name: "NumberOfAssociatedUsers"))
    RoutingProfile.struct_class = Types::RoutingProfile

    RoutingProfileList.member = Shapes::ShapeRef.new(shape: RoutingProfile)

    RoutingProfileQueueConfig.add_member(:queue_reference, Shapes::ShapeRef.new(shape: RoutingProfileQueueReference, required: true, location_name: "QueueReference"))
    RoutingProfileQueueConfig.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, required: true, location_name: "Priority", metadata: {"box"=>true}))
    RoutingProfileQueueConfig.add_member(:delay, Shapes::ShapeRef.new(shape: Delay, required: true, location_name: "Delay", metadata: {"box"=>true}))
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

    SearchAvailablePhoneNumbersRequest.add_member(:target_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "TargetArn"))
    SearchAvailablePhoneNumbersRequest.add_member(:phone_number_country_code, Shapes::ShapeRef.new(shape: PhoneNumberCountryCode, required: true, location_name: "PhoneNumberCountryCode"))
    SearchAvailablePhoneNumbersRequest.add_member(:phone_number_type, Shapes::ShapeRef.new(shape: PhoneNumberType, required: true, location_name: "PhoneNumberType"))
    SearchAvailablePhoneNumbersRequest.add_member(:phone_number_prefix, Shapes::ShapeRef.new(shape: PhoneNumberPrefix, location_name: "PhoneNumberPrefix"))
    SearchAvailablePhoneNumbersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult10, location_name: "MaxResults", metadata: {"box"=>true}))
    SearchAvailablePhoneNumbersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: LargeNextToken, location_name: "NextToken"))
    SearchAvailablePhoneNumbersRequest.struct_class = Types::SearchAvailablePhoneNumbersRequest

    SearchAvailablePhoneNumbersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: LargeNextToken, location_name: "NextToken"))
    SearchAvailablePhoneNumbersResponse.add_member(:available_numbers_list, Shapes::ShapeRef.new(shape: AvailableNumbersList, location_name: "AvailableNumbersList"))
    SearchAvailablePhoneNumbersResponse.struct_class = Types::SearchAvailablePhoneNumbersResponse

    SearchHoursOfOperationsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    SearchHoursOfOperationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchHoursOfOperationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box"=>true}))
    SearchHoursOfOperationsRequest.add_member(:search_filter, Shapes::ShapeRef.new(shape: HoursOfOperationSearchFilter, location_name: "SearchFilter"))
    SearchHoursOfOperationsRequest.add_member(:search_criteria, Shapes::ShapeRef.new(shape: HoursOfOperationSearchCriteria, location_name: "SearchCriteria"))
    SearchHoursOfOperationsRequest.struct_class = Types::SearchHoursOfOperationsRequest

    SearchHoursOfOperationsResponse.add_member(:hours_of_operations, Shapes::ShapeRef.new(shape: HoursOfOperationList, location_name: "HoursOfOperations"))
    SearchHoursOfOperationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchHoursOfOperationsResponse.add_member(:approximate_total_count, Shapes::ShapeRef.new(shape: ApproximateTotalCount, location_name: "ApproximateTotalCount"))
    SearchHoursOfOperationsResponse.struct_class = Types::SearchHoursOfOperationsResponse

    SearchPromptsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    SearchPromptsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchPromptsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box"=>true}))
    SearchPromptsRequest.add_member(:search_filter, Shapes::ShapeRef.new(shape: PromptSearchFilter, location_name: "SearchFilter"))
    SearchPromptsRequest.add_member(:search_criteria, Shapes::ShapeRef.new(shape: PromptSearchCriteria, location_name: "SearchCriteria"))
    SearchPromptsRequest.struct_class = Types::SearchPromptsRequest

    SearchPromptsResponse.add_member(:prompts, Shapes::ShapeRef.new(shape: PromptList, location_name: "Prompts"))
    SearchPromptsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchPromptsResponse.add_member(:approximate_total_count, Shapes::ShapeRef.new(shape: ApproximateTotalCount, location_name: "ApproximateTotalCount"))
    SearchPromptsResponse.struct_class = Types::SearchPromptsResponse

    SearchQueuesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    SearchQueuesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchQueuesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box"=>true}))
    SearchQueuesRequest.add_member(:search_filter, Shapes::ShapeRef.new(shape: QueueSearchFilter, location_name: "SearchFilter"))
    SearchQueuesRequest.add_member(:search_criteria, Shapes::ShapeRef.new(shape: QueueSearchCriteria, location_name: "SearchCriteria"))
    SearchQueuesRequest.struct_class = Types::SearchQueuesRequest

    SearchQueuesResponse.add_member(:queues, Shapes::ShapeRef.new(shape: QueueSearchSummaryList, location_name: "Queues"))
    SearchQueuesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchQueuesResponse.add_member(:approximate_total_count, Shapes::ShapeRef.new(shape: ApproximateTotalCount, location_name: "ApproximateTotalCount"))
    SearchQueuesResponse.struct_class = Types::SearchQueuesResponse

    SearchQuickConnectsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    SearchQuickConnectsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchQuickConnectsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box"=>true}))
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
    SearchResourceTagsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box"=>true}))
    SearchResourceTagsRequest.add_member(:search_criteria, Shapes::ShapeRef.new(shape: ResourceTagsSearchCriteria, location_name: "SearchCriteria"))
    SearchResourceTagsRequest.struct_class = Types::SearchResourceTagsRequest

    SearchResourceTagsResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsList, location_name: "Tags"))
    SearchResourceTagsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchResourceTagsResponse.struct_class = Types::SearchResourceTagsResponse

    SearchRoutingProfilesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    SearchRoutingProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchRoutingProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box"=>true}))
    SearchRoutingProfilesRequest.add_member(:search_filter, Shapes::ShapeRef.new(shape: RoutingProfileSearchFilter, location_name: "SearchFilter"))
    SearchRoutingProfilesRequest.add_member(:search_criteria, Shapes::ShapeRef.new(shape: RoutingProfileSearchCriteria, location_name: "SearchCriteria"))
    SearchRoutingProfilesRequest.struct_class = Types::SearchRoutingProfilesRequest

    SearchRoutingProfilesResponse.add_member(:routing_profiles, Shapes::ShapeRef.new(shape: RoutingProfileList, location_name: "RoutingProfiles"))
    SearchRoutingProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchRoutingProfilesResponse.add_member(:approximate_total_count, Shapes::ShapeRef.new(shape: ApproximateTotalCount, location_name: "ApproximateTotalCount"))
    SearchRoutingProfilesResponse.struct_class = Types::SearchRoutingProfilesResponse

    SearchSecurityProfilesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    SearchSecurityProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchSecurityProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box"=>true}))
    SearchSecurityProfilesRequest.add_member(:search_criteria, Shapes::ShapeRef.new(shape: SecurityProfileSearchCriteria, location_name: "SearchCriteria"))
    SearchSecurityProfilesRequest.add_member(:search_filter, Shapes::ShapeRef.new(shape: SecurityProfilesSearchFilter, location_name: "SearchFilter"))
    SearchSecurityProfilesRequest.struct_class = Types::SearchSecurityProfilesRequest

    SearchSecurityProfilesResponse.add_member(:security_profiles, Shapes::ShapeRef.new(shape: SecurityProfilesSearchSummaryList, location_name: "SecurityProfiles"))
    SearchSecurityProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchSecurityProfilesResponse.add_member(:approximate_total_count, Shapes::ShapeRef.new(shape: ApproximateTotalCount, location_name: "ApproximateTotalCount"))
    SearchSecurityProfilesResponse.struct_class = Types::SearchSecurityProfilesResponse

    SearchUsersRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    SearchUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken2500, location_name: "NextToken"))
    SearchUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult100, location_name: "MaxResults", metadata: {"box"=>true}))
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
    SecurityProfileSummary.struct_class = Types::SecurityProfileSummary

    SecurityProfileSummaryList.member = Shapes::ShapeRef.new(shape: SecurityProfileSummary)

    SecurityProfilesSearchFilter.add_member(:tag_filter, Shapes::ShapeRef.new(shape: ControlPlaneTagFilter, location_name: "TagFilter"))
    SecurityProfilesSearchFilter.struct_class = Types::SecurityProfilesSearchFilter

    SecurityProfilesSearchSummaryList.member = Shapes::ShapeRef.new(shape: SecurityProfileSearchSummary)

    SendNotificationActionDefinition.add_member(:delivery_method, Shapes::ShapeRef.new(shape: NotificationDeliveryType, required: true, location_name: "DeliveryMethod"))
    SendNotificationActionDefinition.add_member(:subject, Shapes::ShapeRef.new(shape: Subject, location_name: "Subject"))
    SendNotificationActionDefinition.add_member(:content, Shapes::ShapeRef.new(shape: Content, required: true, location_name: "Content"))
    SendNotificationActionDefinition.add_member(:content_type, Shapes::ShapeRef.new(shape: NotificationContentType, required: true, location_name: "ContentType"))
    SendNotificationActionDefinition.add_member(:recipient, Shapes::ShapeRef.new(shape: NotificationRecipientType, required: true, location_name: "Recipient"))
    SendNotificationActionDefinition.struct_class = Types::SendNotificationActionDefinition

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SingleSelectOptions.member = Shapes::ShapeRef.new(shape: TaskTemplateSingleSelectOption)

    SingleSelectQuestionRuleCategoryAutomation.add_member(:category, Shapes::ShapeRef.new(shape: SingleSelectQuestionRuleCategoryAutomationLabel, required: true, location_name: "Category"))
    SingleSelectQuestionRuleCategoryAutomation.add_member(:condition, Shapes::ShapeRef.new(shape: SingleSelectQuestionRuleCategoryAutomationCondition, required: true, location_name: "Condition"))
    SingleSelectQuestionRuleCategoryAutomation.add_member(:option_ref_id, Shapes::ShapeRef.new(shape: ReferenceId, required: true, location_name: "OptionRefId"))
    SingleSelectQuestionRuleCategoryAutomation.struct_class = Types::SingleSelectQuestionRuleCategoryAutomation

    StartChatContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    StartChatContactRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, required: true, location_name: "ContactFlowId"))
    StartChatContactRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    StartChatContactRequest.add_member(:participant_details, Shapes::ShapeRef.new(shape: ParticipantDetails, required: true, location_name: "ParticipantDetails"))
    StartChatContactRequest.add_member(:initial_message, Shapes::ShapeRef.new(shape: ChatMessage, location_name: "InitialMessage"))
    StartChatContactRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    StartChatContactRequest.add_member(:chat_duration_in_minutes, Shapes::ShapeRef.new(shape: ChatDurationInMinutes, location_name: "ChatDurationInMinutes"))
    StartChatContactRequest.add_member(:supported_messaging_content_types, Shapes::ShapeRef.new(shape: SupportedMessagingContentTypes, location_name: "SupportedMessagingContentTypes"))
    StartChatContactRequest.add_member(:persistent_chat, Shapes::ShapeRef.new(shape: PersistentChat, location_name: "PersistentChat"))
    StartChatContactRequest.add_member(:related_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "RelatedContactId"))
    StartChatContactRequest.struct_class = Types::StartChatContactRequest

    StartChatContactResponse.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContactId"))
    StartChatContactResponse.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantId, location_name: "ParticipantId"))
    StartChatContactResponse.add_member(:participant_token, Shapes::ShapeRef.new(shape: ParticipantToken, location_name: "ParticipantToken"))
    StartChatContactResponse.add_member(:continued_from_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContinuedFromContactId"))
    StartChatContactResponse.struct_class = Types::StartChatContactResponse

    StartContactEvaluationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    StartContactEvaluationRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    StartContactEvaluationRequest.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "EvaluationFormId"))
    StartContactEvaluationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
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
    StartContactStreamingRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    StartContactStreamingRequest.struct_class = Types::StartContactStreamingRequest

    StartContactStreamingResponse.add_member(:streaming_id, Shapes::ShapeRef.new(shape: StreamingId, required: true, location_name: "StreamingId"))
    StartContactStreamingResponse.struct_class = Types::StartContactStreamingResponse

    StartOutboundVoiceContactRequest.add_member(:destination_phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "DestinationPhoneNumber"))
    StartOutboundVoiceContactRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, required: true, location_name: "ContactFlowId"))
    StartOutboundVoiceContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    StartOutboundVoiceContactRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    StartOutboundVoiceContactRequest.add_member(:source_phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "SourcePhoneNumber"))
    StartOutboundVoiceContactRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, location_name: "QueueId"))
    StartOutboundVoiceContactRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    StartOutboundVoiceContactRequest.add_member(:answer_machine_detection_config, Shapes::ShapeRef.new(shape: AnswerMachineDetectionConfig, location_name: "AnswerMachineDetectionConfig"))
    StartOutboundVoiceContactRequest.add_member(:campaign_id, Shapes::ShapeRef.new(shape: CampaignId, location_name: "CampaignId"))
    StartOutboundVoiceContactRequest.add_member(:traffic_type, Shapes::ShapeRef.new(shape: TrafficType, location_name: "TrafficType"))
    StartOutboundVoiceContactRequest.struct_class = Types::StartOutboundVoiceContactRequest

    StartOutboundVoiceContactResponse.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContactId"))
    StartOutboundVoiceContactResponse.struct_class = Types::StartOutboundVoiceContactResponse

    StartTaskContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    StartTaskContactRequest.add_member(:previous_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "PreviousContactId"))
    StartTaskContactRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, location_name: "ContactFlowId"))
    StartTaskContactRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    StartTaskContactRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    StartTaskContactRequest.add_member(:references, Shapes::ShapeRef.new(shape: ContactReferences, location_name: "References"))
    StartTaskContactRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    StartTaskContactRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    StartTaskContactRequest.add_member(:scheduled_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ScheduledTime"))
    StartTaskContactRequest.add_member(:task_template_id, Shapes::ShapeRef.new(shape: TaskTemplateId, location_name: "TaskTemplateId"))
    StartTaskContactRequest.add_member(:quick_connect_id, Shapes::ShapeRef.new(shape: QuickConnectId, location_name: "QuickConnectId"))
    StartTaskContactRequest.add_member(:related_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "RelatedContactId"))
    StartTaskContactRequest.struct_class = Types::StartTaskContactRequest

    StartTaskContactResponse.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContactId"))
    StartTaskContactResponse.struct_class = Types::StartTaskContactResponse

    StopContactRecordingRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    StopContactRecordingRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    StopContactRecordingRequest.add_member(:initial_contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "InitialContactId"))
    StopContactRecordingRequest.struct_class = Types::StopContactRecordingRequest

    StopContactRecordingResponse.struct_class = Types::StopContactRecordingResponse

    StopContactRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    StopContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
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

    SubmitContactEvaluationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    SubmitContactEvaluationRequest.add_member(:evaluation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "EvaluationId"))
    SubmitContactEvaluationRequest.add_member(:answers, Shapes::ShapeRef.new(shape: EvaluationAnswersInputMap, location_name: "Answers"))
    SubmitContactEvaluationRequest.add_member(:notes, Shapes::ShapeRef.new(shape: EvaluationNotesMap, location_name: "Notes"))
    SubmitContactEvaluationRequest.struct_class = Types::SubmitContactEvaluationRequest

    SubmitContactEvaluationResponse.add_member(:evaluation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "EvaluationId"))
    SubmitContactEvaluationResponse.add_member(:evaluation_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "EvaluationArn"))
    SubmitContactEvaluationResponse.struct_class = Types::SubmitContactEvaluationResponse

    SupportedMessagingContentTypes.member = Shapes::ShapeRef.new(shape: SupportedMessagingContentType)

    SuspendContactRecordingRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    SuspendContactRecordingRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    SuspendContactRecordingRequest.add_member(:initial_contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "InitialContactId"))
    SuspendContactRecordingRequest.struct_class = Types::SuspendContactRecordingRequest

    SuspendContactRecordingResponse.struct_class = Types::SuspendContactRecordingResponse

    TagAndConditionList.member = Shapes::ShapeRef.new(shape: TagCondition)

    TagCondition.add_member(:tag_key, Shapes::ShapeRef.new(shape: String, location_name: "TagKey"))
    TagCondition.add_member(:tag_value, Shapes::ShapeRef.new(shape: String, location_name: "TagValue"))
    TagCondition.struct_class = Types::TagCondition

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

    Threshold.add_member(:comparison, Shapes::ShapeRef.new(shape: Comparison, location_name: "Comparison"))
    Threshold.add_member(:threshold_value, Shapes::ShapeRef.new(shape: ThresholdValue, location_name: "ThresholdValue", metadata: {"box"=>true}))
    Threshold.struct_class = Types::Threshold

    ThresholdCollections.member = Shapes::ShapeRef.new(shape: ThresholdV2)

    ThresholdV2.add_member(:comparison, Shapes::ShapeRef.new(shape: ResourceArnOrId, location_name: "Comparison"))
    ThresholdV2.add_member(:threshold_value, Shapes::ShapeRef.new(shape: ThresholdValue, location_name: "ThresholdValue", metadata: {"box"=>true}))
    ThresholdV2.struct_class = Types::ThresholdV2

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TrafficDistributionGroup.add_member(:id, Shapes::ShapeRef.new(shape: TrafficDistributionGroupId, location_name: "Id"))
    TrafficDistributionGroup.add_member(:arn, Shapes::ShapeRef.new(shape: TrafficDistributionGroupArn, location_name: "Arn"))
    TrafficDistributionGroup.add_member(:name, Shapes::ShapeRef.new(shape: Name128, location_name: "Name"))
    TrafficDistributionGroup.add_member(:description, Shapes::ShapeRef.new(shape: Description250, location_name: "Description"))
    TrafficDistributionGroup.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, location_name: "InstanceArn"))
    TrafficDistributionGroup.add_member(:status, Shapes::ShapeRef.new(shape: TrafficDistributionGroupStatus, location_name: "Status"))
    TrafficDistributionGroup.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    TrafficDistributionGroup.struct_class = Types::TrafficDistributionGroup

    TrafficDistributionGroupSummary.add_member(:id, Shapes::ShapeRef.new(shape: TrafficDistributionGroupId, location_name: "Id"))
    TrafficDistributionGroupSummary.add_member(:arn, Shapes::ShapeRef.new(shape: TrafficDistributionGroupArn, location_name: "Arn"))
    TrafficDistributionGroupSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name128, location_name: "Name"))
    TrafficDistributionGroupSummary.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, location_name: "InstanceArn"))
    TrafficDistributionGroupSummary.add_member(:status, Shapes::ShapeRef.new(shape: TrafficDistributionGroupStatus, location_name: "Status"))
    TrafficDistributionGroupSummary.struct_class = Types::TrafficDistributionGroupSummary

    TrafficDistributionGroupSummaryList.member = Shapes::ShapeRef.new(shape: TrafficDistributionGroupSummary)

    TransferContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    TransferContactRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    TransferContactRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, location_name: "QueueId"))
    TransferContactRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: AgentResourceId, location_name: "UserId"))
    TransferContactRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, required: true, location_name: "ContactFlowId"))
    TransferContactRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    TransferContactRequest.struct_class = Types::TransferContactRequest

    TransferContactResponse.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContactId"))
    TransferContactResponse.add_member(:contact_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ContactArn"))
    TransferContactResponse.struct_class = Types::TransferContactResponse

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateAgentStatusRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateAgentStatusRequest.add_member(:agent_status_id, Shapes::ShapeRef.new(shape: AgentStatusId, required: true, location: "uri", location_name: "AgentStatusId"))
    UpdateAgentStatusRequest.add_member(:name, Shapes::ShapeRef.new(shape: AgentStatusName, location_name: "Name"))
    UpdateAgentStatusRequest.add_member(:description, Shapes::ShapeRef.new(shape: UpdateAgentStatusDescription, location_name: "Description"))
    UpdateAgentStatusRequest.add_member(:state, Shapes::ShapeRef.new(shape: AgentStatusState, location_name: "State"))
    UpdateAgentStatusRequest.add_member(:display_order, Shapes::ShapeRef.new(shape: AgentStatusOrderNumber, location_name: "DisplayOrder", metadata: {"box"=>true}))
    UpdateAgentStatusRequest.add_member(:reset_order_number, Shapes::ShapeRef.new(shape: Boolean, location_name: "ResetOrderNumber"))
    UpdateAgentStatusRequest.struct_class = Types::UpdateAgentStatusRequest

    UpdateContactAttributesRequest.add_member(:initial_contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "InitialContactId"))
    UpdateContactAttributesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    UpdateContactAttributesRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, required: true, location_name: "Attributes"))
    UpdateContactAttributesRequest.struct_class = Types::UpdateContactAttributesRequest

    UpdateContactAttributesResponse.struct_class = Types::UpdateContactAttributesResponse

    UpdateContactEvaluationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateContactEvaluationRequest.add_member(:evaluation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "EvaluationId"))
    UpdateContactEvaluationRequest.add_member(:answers, Shapes::ShapeRef.new(shape: EvaluationAnswersInputMap, location_name: "Answers"))
    UpdateContactEvaluationRequest.add_member(:notes, Shapes::ShapeRef.new(shape: EvaluationNotesMap, location_name: "Notes"))
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

    UpdateContactFlowModuleContentRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateContactFlowModuleContentRequest.add_member(:contact_flow_module_id, Shapes::ShapeRef.new(shape: ContactFlowModuleId, required: true, location: "uri", location_name: "ContactFlowModuleId"))
    UpdateContactFlowModuleContentRequest.add_member(:content, Shapes::ShapeRef.new(shape: ContactFlowModuleContent, required: true, location_name: "Content"))
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
    UpdateContactRequest.struct_class = Types::UpdateContactRequest

    UpdateContactResponse.struct_class = Types::UpdateContactResponse

    UpdateContactScheduleRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    UpdateContactScheduleRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    UpdateContactScheduleRequest.add_member(:scheduled_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ScheduledTime"))
    UpdateContactScheduleRequest.struct_class = Types::UpdateContactScheduleRequest

    UpdateContactScheduleResponse.struct_class = Types::UpdateContactScheduleResponse

    UpdateEvaluationFormRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateEvaluationFormRequest.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "EvaluationFormId"))
    UpdateEvaluationFormRequest.add_member(:evaluation_form_version, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "EvaluationFormVersion"))
    UpdateEvaluationFormRequest.add_member(:create_new_version, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "CreateNewVersion"))
    UpdateEvaluationFormRequest.add_member(:title, Shapes::ShapeRef.new(shape: EvaluationFormTitle, required: true, location_name: "Title"))
    UpdateEvaluationFormRequest.add_member(:description, Shapes::ShapeRef.new(shape: EvaluationFormDescription, location_name: "Description"))
    UpdateEvaluationFormRequest.add_member(:items, Shapes::ShapeRef.new(shape: EvaluationFormItemsList, required: true, location_name: "Items"))
    UpdateEvaluationFormRequest.add_member(:scoring_strategy, Shapes::ShapeRef.new(shape: EvaluationFormScoringStrategy, location_name: "ScoringStrategy"))
    UpdateEvaluationFormRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    UpdateEvaluationFormRequest.struct_class = Types::UpdateEvaluationFormRequest

    UpdateEvaluationFormResponse.add_member(:evaluation_form_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "EvaluationFormId"))
    UpdateEvaluationFormResponse.add_member(:evaluation_form_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "EvaluationFormArn"))
    UpdateEvaluationFormResponse.add_member(:evaluation_form_version, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "EvaluationFormVersion"))
    UpdateEvaluationFormResponse.struct_class = Types::UpdateEvaluationFormResponse

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
    UpdateInstanceAttributeRequest.struct_class = Types::UpdateInstanceAttributeRequest

    UpdateInstanceStorageConfigRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateInstanceStorageConfigRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, required: true, location: "uri", location_name: "AssociationId"))
    UpdateInstanceStorageConfigRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: InstanceStorageResourceType, required: true, location: "querystring", location_name: "resourceType"))
    UpdateInstanceStorageConfigRequest.add_member(:storage_config, Shapes::ShapeRef.new(shape: InstanceStorageConfig, required: true, location_name: "StorageConfig"))
    UpdateInstanceStorageConfigRequest.struct_class = Types::UpdateInstanceStorageConfigRequest

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

    UpdatePhoneNumberRequest.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: PhoneNumberId, required: true, location: "uri", location_name: "PhoneNumberId"))
    UpdatePhoneNumberRequest.add_member(:target_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "TargetArn"))
    UpdatePhoneNumberRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    UpdatePhoneNumberRequest.struct_class = Types::UpdatePhoneNumberRequest

    UpdatePhoneNumberResponse.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: PhoneNumberId, location_name: "PhoneNumberId"))
    UpdatePhoneNumberResponse.add_member(:phone_number_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "PhoneNumberArn"))
    UpdatePhoneNumberResponse.struct_class = Types::UpdatePhoneNumberResponse

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
    UpdateQueueMaxContactsRequest.add_member(:max_contacts, Shapes::ShapeRef.new(shape: QueueMaxContacts, location_name: "MaxContacts", metadata: {"box"=>true}))
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
    UpdateSecurityProfileRequest.struct_class = Types::UpdateSecurityProfileRequest

    UpdateTaskTemplateRequest.add_member(:task_template_id, Shapes::ShapeRef.new(shape: TaskTemplateId, required: true, location: "uri", location_name: "TaskTemplateId"))
    UpdateTaskTemplateRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateTaskTemplateRequest.add_member(:name, Shapes::ShapeRef.new(shape: TaskTemplateName, location_name: "Name"))
    UpdateTaskTemplateRequest.add_member(:description, Shapes::ShapeRef.new(shape: TaskTemplateDescription, location_name: "Description"))
    UpdateTaskTemplateRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, location_name: "ContactFlowId"))
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
    UpdateTaskTemplateResponse.add_member(:constraints, Shapes::ShapeRef.new(shape: TaskTemplateConstraints, location_name: "Constraints"))
    UpdateTaskTemplateResponse.add_member(:defaults, Shapes::ShapeRef.new(shape: TaskTemplateDefaults, location_name: "Defaults"))
    UpdateTaskTemplateResponse.add_member(:fields, Shapes::ShapeRef.new(shape: TaskTemplateFields, location_name: "Fields"))
    UpdateTaskTemplateResponse.add_member(:status, Shapes::ShapeRef.new(shape: TaskTemplateStatus, location_name: "Status"))
    UpdateTaskTemplateResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastModifiedTime"))
    UpdateTaskTemplateResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreatedTime"))
    UpdateTaskTemplateResponse.struct_class = Types::UpdateTaskTemplateResponse

    UpdateTrafficDistributionRequest.add_member(:id, Shapes::ShapeRef.new(shape: TrafficDistributionGroupIdOrArn, required: true, location: "uri", location_name: "Id"))
    UpdateTrafficDistributionRequest.add_member(:telephony_config, Shapes::ShapeRef.new(shape: TelephonyConfig, location_name: "TelephonyConfig"))
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

    UpdateUserRoutingProfileRequest.add_member(:routing_profile_id, Shapes::ShapeRef.new(shape: RoutingProfileId, required: true, location_name: "RoutingProfileId"))
    UpdateUserRoutingProfileRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "UserId"))
    UpdateUserRoutingProfileRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateUserRoutingProfileRequest.struct_class = Types::UpdateUserRoutingProfileRequest

    UpdateUserSecurityProfilesRequest.add_member(:security_profile_ids, Shapes::ShapeRef.new(shape: SecurityProfileIds, required: true, location_name: "SecurityProfileIds"))
    UpdateUserSecurityProfilesRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "UserId"))
    UpdateUserSecurityProfilesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateUserSecurityProfilesRequest.struct_class = Types::UpdateUserSecurityProfilesRequest

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

    UserNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    UserNotFoundException.struct_class = Types::UserNotFoundException

    UserPhoneConfig.add_member(:phone_type, Shapes::ShapeRef.new(shape: PhoneType, required: true, location_name: "PhoneType"))
    UserPhoneConfig.add_member(:auto_accept, Shapes::ShapeRef.new(shape: AutoAccept, location_name: "AutoAccept"))
    UserPhoneConfig.add_member(:after_contact_work_time_limit, Shapes::ShapeRef.new(shape: AfterContactWorkTimeLimit, location_name: "AfterContactWorkTimeLimit"))
    UserPhoneConfig.add_member(:desk_phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "DeskPhoneNumber"))
    UserPhoneConfig.struct_class = Types::UserPhoneConfig

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
    UserSearchCriteria.add_member(:hierarchy_group_condition, Shapes::ShapeRef.new(shape: HierarchyGroupCondition, location_name: "HierarchyGroupCondition"))
    UserSearchCriteria.struct_class = Types::UserSearchCriteria

    UserSearchFilter.add_member(:tag_filter, Shapes::ShapeRef.new(shape: ControlPlaneTagFilter, location_name: "TagFilter"))
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
    UserSummary.struct_class = Types::UserSummary

    UserSummaryList.member = Shapes::ShapeRef.new(shape: UserSummary)

    UserTagMap.key = Shapes::ShapeRef.new(shape: String)
    UserTagMap.value = Shapes::ShapeRef.new(shape: String)

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
    VoiceRecordingConfiguration.struct_class = Types::VoiceRecordingConfiguration

    WisdomInfo.add_member(:session_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "SessionArn"))
    WisdomInfo.struct_class = Types::WisdomInfo


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-08-08"

      api.metadata = {
        "apiVersion" => "2017-08-08",
        "endpointPrefix" => "connect",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
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
    end

  end
end
