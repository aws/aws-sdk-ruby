# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Connect
  # @api private
  module ClientApi

    include Seahorse::Model

    ARN = Shapes::StringShape.new(name: 'ARN')
    AfterContactWorkTimeLimit = Shapes::IntegerShape.new(name: 'AfterContactWorkTimeLimit')
    AgentFirstName = Shapes::StringShape.new(name: 'AgentFirstName')
    AgentLastName = Shapes::StringShape.new(name: 'AgentLastName')
    AgentUsername = Shapes::StringShape.new(name: 'AgentUsername')
    AssociateApprovedOriginRequest = Shapes::StructureShape.new(name: 'AssociateApprovedOriginRequest')
    AssociateInstanceStorageConfigRequest = Shapes::StructureShape.new(name: 'AssociateInstanceStorageConfigRequest')
    AssociateInstanceStorageConfigResponse = Shapes::StructureShape.new(name: 'AssociateInstanceStorageConfigResponse')
    AssociateLambdaFunctionRequest = Shapes::StructureShape.new(name: 'AssociateLambdaFunctionRequest')
    AssociateLexBotRequest = Shapes::StructureShape.new(name: 'AssociateLexBotRequest')
    AssociateRoutingProfileQueuesRequest = Shapes::StructureShape.new(name: 'AssociateRoutingProfileQueuesRequest')
    AssociateSecurityKeyRequest = Shapes::StructureShape.new(name: 'AssociateSecurityKeyRequest')
    AssociateSecurityKeyResponse = Shapes::StructureShape.new(name: 'AssociateSecurityKeyResponse')
    AssociationId = Shapes::StringShape.new(name: 'AssociationId')
    Attribute = Shapes::StructureShape.new(name: 'Attribute')
    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    AttributeValue = Shapes::StringShape.new(name: 'AttributeValue')
    Attributes = Shapes::MapShape.new(name: 'Attributes')
    AttributesList = Shapes::ListShape.new(name: 'AttributesList')
    AutoAccept = Shapes::BooleanShape.new(name: 'AutoAccept')
    BotName = Shapes::StringShape.new(name: 'BotName')
    BucketName = Shapes::StringShape.new(name: 'BucketName')
    Channel = Shapes::StringShape.new(name: 'Channel')
    Channels = Shapes::ListShape.new(name: 'Channels')
    ChatContent = Shapes::StringShape.new(name: 'ChatContent')
    ChatContentType = Shapes::StringShape.new(name: 'ChatContentType')
    ChatMessage = Shapes::StructureShape.new(name: 'ChatMessage')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    Comparison = Shapes::StringShape.new(name: 'Comparison')
    Concurrency = Shapes::IntegerShape.new(name: 'Concurrency')
    ContactFlow = Shapes::StructureShape.new(name: 'ContactFlow')
    ContactFlowContent = Shapes::StringShape.new(name: 'ContactFlowContent')
    ContactFlowDescription = Shapes::StringShape.new(name: 'ContactFlowDescription')
    ContactFlowId = Shapes::StringShape.new(name: 'ContactFlowId')
    ContactFlowName = Shapes::StringShape.new(name: 'ContactFlowName')
    ContactFlowNotPublishedException = Shapes::StructureShape.new(name: 'ContactFlowNotPublishedException')
    ContactFlowSummary = Shapes::StructureShape.new(name: 'ContactFlowSummary')
    ContactFlowSummaryList = Shapes::ListShape.new(name: 'ContactFlowSummaryList')
    ContactFlowType = Shapes::StringShape.new(name: 'ContactFlowType')
    ContactFlowTypes = Shapes::ListShape.new(name: 'ContactFlowTypes')
    ContactId = Shapes::StringShape.new(name: 'ContactId')
    ContactNotFoundException = Shapes::StructureShape.new(name: 'ContactNotFoundException')
    ContactReferences = Shapes::MapShape.new(name: 'ContactReferences')
    CreateContactFlowRequest = Shapes::StructureShape.new(name: 'CreateContactFlowRequest')
    CreateContactFlowResponse = Shapes::StructureShape.new(name: 'CreateContactFlowResponse')
    CreateInstanceRequest = Shapes::StructureShape.new(name: 'CreateInstanceRequest')
    CreateInstanceResponse = Shapes::StructureShape.new(name: 'CreateInstanceResponse')
    CreateIntegrationAssociationRequest = Shapes::StructureShape.new(name: 'CreateIntegrationAssociationRequest')
    CreateIntegrationAssociationResponse = Shapes::StructureShape.new(name: 'CreateIntegrationAssociationResponse')
    CreateRoutingProfileRequest = Shapes::StructureShape.new(name: 'CreateRoutingProfileRequest')
    CreateRoutingProfileResponse = Shapes::StructureShape.new(name: 'CreateRoutingProfileResponse')
    CreateUseCaseRequest = Shapes::StructureShape.new(name: 'CreateUseCaseRequest')
    CreateUseCaseResponse = Shapes::StructureShape.new(name: 'CreateUseCaseResponse')
    CreateUserHierarchyGroupRequest = Shapes::StructureShape.new(name: 'CreateUserHierarchyGroupRequest')
    CreateUserHierarchyGroupResponse = Shapes::StructureShape.new(name: 'CreateUserHierarchyGroupResponse')
    CreateUserRequest = Shapes::StructureShape.new(name: 'CreateUserRequest')
    CreateUserResponse = Shapes::StructureShape.new(name: 'CreateUserResponse')
    Credentials = Shapes::StructureShape.new(name: 'Credentials')
    CurrentMetric = Shapes::StructureShape.new(name: 'CurrentMetric')
    CurrentMetricData = Shapes::StructureShape.new(name: 'CurrentMetricData')
    CurrentMetricDataCollections = Shapes::ListShape.new(name: 'CurrentMetricDataCollections')
    CurrentMetricName = Shapes::StringShape.new(name: 'CurrentMetricName')
    CurrentMetricResult = Shapes::StructureShape.new(name: 'CurrentMetricResult')
    CurrentMetricResults = Shapes::ListShape.new(name: 'CurrentMetricResults')
    CurrentMetrics = Shapes::ListShape.new(name: 'CurrentMetrics')
    Delay = Shapes::IntegerShape.new(name: 'Delay')
    DeleteInstanceRequest = Shapes::StructureShape.new(name: 'DeleteInstanceRequest')
    DeleteIntegrationAssociationRequest = Shapes::StructureShape.new(name: 'DeleteIntegrationAssociationRequest')
    DeleteUseCaseRequest = Shapes::StructureShape.new(name: 'DeleteUseCaseRequest')
    DeleteUserHierarchyGroupRequest = Shapes::StructureShape.new(name: 'DeleteUserHierarchyGroupRequest')
    DeleteUserRequest = Shapes::StructureShape.new(name: 'DeleteUserRequest')
    DescribeContactFlowRequest = Shapes::StructureShape.new(name: 'DescribeContactFlowRequest')
    DescribeContactFlowResponse = Shapes::StructureShape.new(name: 'DescribeContactFlowResponse')
    DescribeInstanceAttributeRequest = Shapes::StructureShape.new(name: 'DescribeInstanceAttributeRequest')
    DescribeInstanceAttributeResponse = Shapes::StructureShape.new(name: 'DescribeInstanceAttributeResponse')
    DescribeInstanceRequest = Shapes::StructureShape.new(name: 'DescribeInstanceRequest')
    DescribeInstanceResponse = Shapes::StructureShape.new(name: 'DescribeInstanceResponse')
    DescribeInstanceStorageConfigRequest = Shapes::StructureShape.new(name: 'DescribeInstanceStorageConfigRequest')
    DescribeInstanceStorageConfigResponse = Shapes::StructureShape.new(name: 'DescribeInstanceStorageConfigResponse')
    DescribeRoutingProfileRequest = Shapes::StructureShape.new(name: 'DescribeRoutingProfileRequest')
    DescribeRoutingProfileResponse = Shapes::StructureShape.new(name: 'DescribeRoutingProfileResponse')
    DescribeUserHierarchyGroupRequest = Shapes::StructureShape.new(name: 'DescribeUserHierarchyGroupRequest')
    DescribeUserHierarchyGroupResponse = Shapes::StructureShape.new(name: 'DescribeUserHierarchyGroupResponse')
    DescribeUserHierarchyStructureRequest = Shapes::StructureShape.new(name: 'DescribeUserHierarchyStructureRequest')
    DescribeUserHierarchyStructureResponse = Shapes::StructureShape.new(name: 'DescribeUserHierarchyStructureResponse')
    DescribeUserRequest = Shapes::StructureShape.new(name: 'DescribeUserRequest')
    DescribeUserResponse = Shapes::StructureShape.new(name: 'DescribeUserResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DestinationNotAllowedException = Shapes::StructureShape.new(name: 'DestinationNotAllowedException')
    Dimensions = Shapes::StructureShape.new(name: 'Dimensions')
    DirectoryAlias = Shapes::StringShape.new(name: 'DirectoryAlias')
    DirectoryId = Shapes::StringShape.new(name: 'DirectoryId')
    DirectoryType = Shapes::StringShape.new(name: 'DirectoryType')
    DirectoryUserId = Shapes::StringShape.new(name: 'DirectoryUserId')
    DisassociateApprovedOriginRequest = Shapes::StructureShape.new(name: 'DisassociateApprovedOriginRequest')
    DisassociateInstanceStorageConfigRequest = Shapes::StructureShape.new(name: 'DisassociateInstanceStorageConfigRequest')
    DisassociateLambdaFunctionRequest = Shapes::StructureShape.new(name: 'DisassociateLambdaFunctionRequest')
    DisassociateLexBotRequest = Shapes::StructureShape.new(name: 'DisassociateLexBotRequest')
    DisassociateRoutingProfileQueuesRequest = Shapes::StructureShape.new(name: 'DisassociateRoutingProfileQueuesRequest')
    DisassociateSecurityKeyRequest = Shapes::StructureShape.new(name: 'DisassociateSecurityKeyRequest')
    DisplayName = Shapes::StringShape.new(name: 'DisplayName')
    DuplicateResourceException = Shapes::StructureShape.new(name: 'DuplicateResourceException')
    Email = Shapes::StringShape.new(name: 'Email')
    EncryptionConfig = Shapes::StructureShape.new(name: 'EncryptionConfig')
    EncryptionType = Shapes::StringShape.new(name: 'EncryptionType')
    Filters = Shapes::StructureShape.new(name: 'Filters')
    FunctionArn = Shapes::StringShape.new(name: 'FunctionArn')
    FunctionArnsList = Shapes::ListShape.new(name: 'FunctionArnsList')
    GetContactAttributesRequest = Shapes::StructureShape.new(name: 'GetContactAttributesRequest')
    GetContactAttributesResponse = Shapes::StructureShape.new(name: 'GetContactAttributesResponse')
    GetCurrentMetricDataRequest = Shapes::StructureShape.new(name: 'GetCurrentMetricDataRequest')
    GetCurrentMetricDataResponse = Shapes::StructureShape.new(name: 'GetCurrentMetricDataResponse')
    GetFederationTokenRequest = Shapes::StructureShape.new(name: 'GetFederationTokenRequest')
    GetFederationTokenResponse = Shapes::StructureShape.new(name: 'GetFederationTokenResponse')
    GetMetricDataRequest = Shapes::StructureShape.new(name: 'GetMetricDataRequest')
    GetMetricDataResponse = Shapes::StructureShape.new(name: 'GetMetricDataResponse')
    Grouping = Shapes::StringShape.new(name: 'Grouping')
    Groupings = Shapes::ListShape.new(name: 'Groupings')
    HierarchyGroup = Shapes::StructureShape.new(name: 'HierarchyGroup')
    HierarchyGroupId = Shapes::StringShape.new(name: 'HierarchyGroupId')
    HierarchyGroupName = Shapes::StringShape.new(name: 'HierarchyGroupName')
    HierarchyGroupSummary = Shapes::StructureShape.new(name: 'HierarchyGroupSummary')
    HierarchyGroupSummaryList = Shapes::ListShape.new(name: 'HierarchyGroupSummaryList')
    HierarchyLevel = Shapes::StructureShape.new(name: 'HierarchyLevel')
    HierarchyLevelId = Shapes::StringShape.new(name: 'HierarchyLevelId')
    HierarchyLevelName = Shapes::StringShape.new(name: 'HierarchyLevelName')
    HierarchyLevelUpdate = Shapes::StructureShape.new(name: 'HierarchyLevelUpdate')
    HierarchyPath = Shapes::StructureShape.new(name: 'HierarchyPath')
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
    HoursOfOperationId = Shapes::StringShape.new(name: 'HoursOfOperationId')
    HoursOfOperationName = Shapes::StringShape.new(name: 'HoursOfOperationName')
    HoursOfOperationSummary = Shapes::StructureShape.new(name: 'HoursOfOperationSummary')
    HoursOfOperationSummaryList = Shapes::ListShape.new(name: 'HoursOfOperationSummaryList')
    InboundCallsEnabled = Shapes::BooleanShape.new(name: 'InboundCallsEnabled')
    Instance = Shapes::StructureShape.new(name: 'Instance')
    InstanceAttributeType = Shapes::StringShape.new(name: 'InstanceAttributeType')
    InstanceAttributeValue = Shapes::StringShape.new(name: 'InstanceAttributeValue')
    InstanceId = Shapes::StringShape.new(name: 'InstanceId')
    InstanceStatus = Shapes::StringShape.new(name: 'InstanceStatus')
    InstanceStatusReason = Shapes::StructureShape.new(name: 'InstanceStatusReason')
    InstanceStorageConfig = Shapes::StructureShape.new(name: 'InstanceStorageConfig')
    InstanceStorageConfigs = Shapes::ListShape.new(name: 'InstanceStorageConfigs')
    InstanceStorageResourceType = Shapes::StringShape.new(name: 'InstanceStorageResourceType')
    InstanceSummary = Shapes::StructureShape.new(name: 'InstanceSummary')
    InstanceSummaryList = Shapes::ListShape.new(name: 'InstanceSummaryList')
    IntegrationAssociationId = Shapes::StringShape.new(name: 'IntegrationAssociationId')
    IntegrationAssociationSummary = Shapes::StructureShape.new(name: 'IntegrationAssociationSummary')
    IntegrationAssociationSummaryList = Shapes::ListShape.new(name: 'IntegrationAssociationSummaryList')
    IntegrationType = Shapes::StringShape.new(name: 'IntegrationType')
    InternalServiceException = Shapes::StructureShape.new(name: 'InternalServiceException')
    InvalidContactFlowException = Shapes::StructureShape.new(name: 'InvalidContactFlowException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    KeyId = Shapes::StringShape.new(name: 'KeyId')
    KinesisFirehoseConfig = Shapes::StructureShape.new(name: 'KinesisFirehoseConfig')
    KinesisStreamConfig = Shapes::StructureShape.new(name: 'KinesisStreamConfig')
    KinesisVideoStreamConfig = Shapes::StructureShape.new(name: 'KinesisVideoStreamConfig')
    LexBot = Shapes::StructureShape.new(name: 'LexBot')
    LexBotsList = Shapes::ListShape.new(name: 'LexBotsList')
    LexRegion = Shapes::StringShape.new(name: 'LexRegion')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListApprovedOriginsRequest = Shapes::StructureShape.new(name: 'ListApprovedOriginsRequest')
    ListApprovedOriginsResponse = Shapes::StructureShape.new(name: 'ListApprovedOriginsResponse')
    ListContactFlowsRequest = Shapes::StructureShape.new(name: 'ListContactFlowsRequest')
    ListContactFlowsResponse = Shapes::StructureShape.new(name: 'ListContactFlowsResponse')
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
    ListPromptsRequest = Shapes::StructureShape.new(name: 'ListPromptsRequest')
    ListPromptsResponse = Shapes::StructureShape.new(name: 'ListPromptsResponse')
    ListQueuesRequest = Shapes::StructureShape.new(name: 'ListQueuesRequest')
    ListQueuesResponse = Shapes::StructureShape.new(name: 'ListQueuesResponse')
    ListRoutingProfileQueuesRequest = Shapes::StructureShape.new(name: 'ListRoutingProfileQueuesRequest')
    ListRoutingProfileQueuesResponse = Shapes::StructureShape.new(name: 'ListRoutingProfileQueuesResponse')
    ListRoutingProfilesRequest = Shapes::StructureShape.new(name: 'ListRoutingProfilesRequest')
    ListRoutingProfilesResponse = Shapes::StructureShape.new(name: 'ListRoutingProfilesResponse')
    ListSecurityKeysRequest = Shapes::StructureShape.new(name: 'ListSecurityKeysRequest')
    ListSecurityKeysResponse = Shapes::StructureShape.new(name: 'ListSecurityKeysResponse')
    ListSecurityProfilesRequest = Shapes::StructureShape.new(name: 'ListSecurityProfilesRequest')
    ListSecurityProfilesResponse = Shapes::StructureShape.new(name: 'ListSecurityProfilesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListUseCasesRequest = Shapes::StructureShape.new(name: 'ListUseCasesRequest')
    ListUseCasesResponse = Shapes::StructureShape.new(name: 'ListUseCasesResponse')
    ListUserHierarchyGroupsRequest = Shapes::StructureShape.new(name: 'ListUserHierarchyGroupsRequest')
    ListUserHierarchyGroupsResponse = Shapes::StructureShape.new(name: 'ListUserHierarchyGroupsResponse')
    ListUsersRequest = Shapes::StructureShape.new(name: 'ListUsersRequest')
    ListUsersResponse = Shapes::StructureShape.new(name: 'ListUsersResponse')
    MaxResult10 = Shapes::IntegerShape.new(name: 'MaxResult10')
    MaxResult100 = Shapes::IntegerShape.new(name: 'MaxResult100')
    MaxResult1000 = Shapes::IntegerShape.new(name: 'MaxResult1000')
    MaxResult2 = Shapes::IntegerShape.new(name: 'MaxResult2')
    MaxResult25 = Shapes::IntegerShape.new(name: 'MaxResult25')
    MaxResult7 = Shapes::IntegerShape.new(name: 'MaxResult7')
    MediaConcurrencies = Shapes::ListShape.new(name: 'MediaConcurrencies')
    MediaConcurrency = Shapes::StructureShape.new(name: 'MediaConcurrency')
    Message = Shapes::StringShape.new(name: 'Message')
    Name = Shapes::StringShape.new(name: 'Name')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Origin = Shapes::StringShape.new(name: 'Origin')
    OriginsList = Shapes::ListShape.new(name: 'OriginsList')
    OutboundCallsEnabled = Shapes::BooleanShape.new(name: 'OutboundCallsEnabled')
    OutboundContactNotPermittedException = Shapes::StructureShape.new(name: 'OutboundContactNotPermittedException')
    PEM = Shapes::StringShape.new(name: 'PEM')
    ParticipantDetails = Shapes::StructureShape.new(name: 'ParticipantDetails')
    ParticipantId = Shapes::StringShape.new(name: 'ParticipantId')
    ParticipantToken = Shapes::StringShape.new(name: 'ParticipantToken')
    Password = Shapes::StringShape.new(name: 'Password')
    PhoneNumber = Shapes::StringShape.new(name: 'PhoneNumber')
    PhoneNumberCountryCode = Shapes::StringShape.new(name: 'PhoneNumberCountryCode')
    PhoneNumberCountryCodes = Shapes::ListShape.new(name: 'PhoneNumberCountryCodes')
    PhoneNumberId = Shapes::StringShape.new(name: 'PhoneNumberId')
    PhoneNumberSummary = Shapes::StructureShape.new(name: 'PhoneNumberSummary')
    PhoneNumberSummaryList = Shapes::ListShape.new(name: 'PhoneNumberSummaryList')
    PhoneNumberType = Shapes::StringShape.new(name: 'PhoneNumberType')
    PhoneNumberTypes = Shapes::ListShape.new(name: 'PhoneNumberTypes')
    PhoneType = Shapes::StringShape.new(name: 'PhoneType')
    Prefix = Shapes::StringShape.new(name: 'Prefix')
    Priority = Shapes::IntegerShape.new(name: 'Priority')
    ProblemDetail = Shapes::StructureShape.new(name: 'ProblemDetail')
    ProblemMessageString = Shapes::StringShape.new(name: 'ProblemMessageString')
    Problems = Shapes::ListShape.new(name: 'Problems')
    PromptId = Shapes::StringShape.new(name: 'PromptId')
    PromptName = Shapes::StringShape.new(name: 'PromptName')
    PromptSummary = Shapes::StructureShape.new(name: 'PromptSummary')
    PromptSummaryList = Shapes::ListShape.new(name: 'PromptSummaryList')
    QueueId = Shapes::StringShape.new(name: 'QueueId')
    QueueName = Shapes::StringShape.new(name: 'QueueName')
    QueueReference = Shapes::StructureShape.new(name: 'QueueReference')
    QueueSummary = Shapes::StructureShape.new(name: 'QueueSummary')
    QueueSummaryList = Shapes::ListShape.new(name: 'QueueSummaryList')
    QueueType = Shapes::StringShape.new(name: 'QueueType')
    QueueTypes = Shapes::ListShape.new(name: 'QueueTypes')
    Queues = Shapes::ListShape.new(name: 'Queues')
    Reference = Shapes::StructureShape.new(name: 'Reference')
    ReferenceKey = Shapes::StringShape.new(name: 'ReferenceKey')
    ReferenceType = Shapes::StringShape.new(name: 'ReferenceType')
    ReferenceValue = Shapes::StringShape.new(name: 'ReferenceValue')
    ResourceConflictException = Shapes::StructureShape.new(name: 'ResourceConflictException')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResumeContactRecordingRequest = Shapes::StructureShape.new(name: 'ResumeContactRecordingRequest')
    ResumeContactRecordingResponse = Shapes::StructureShape.new(name: 'ResumeContactRecordingResponse')
    RoutingProfile = Shapes::StructureShape.new(name: 'RoutingProfile')
    RoutingProfileDescription = Shapes::StringShape.new(name: 'RoutingProfileDescription')
    RoutingProfileId = Shapes::StringShape.new(name: 'RoutingProfileId')
    RoutingProfileName = Shapes::StringShape.new(name: 'RoutingProfileName')
    RoutingProfileQueueConfig = Shapes::StructureShape.new(name: 'RoutingProfileQueueConfig')
    RoutingProfileQueueConfigList = Shapes::ListShape.new(name: 'RoutingProfileQueueConfigList')
    RoutingProfileQueueConfigSummary = Shapes::StructureShape.new(name: 'RoutingProfileQueueConfigSummary')
    RoutingProfileQueueConfigSummaryList = Shapes::ListShape.new(name: 'RoutingProfileQueueConfigSummaryList')
    RoutingProfileQueueReference = Shapes::StructureShape.new(name: 'RoutingProfileQueueReference')
    RoutingProfileQueueReferenceList = Shapes::ListShape.new(name: 'RoutingProfileQueueReferenceList')
    RoutingProfileSummary = Shapes::StructureShape.new(name: 'RoutingProfileSummary')
    RoutingProfileSummaryList = Shapes::ListShape.new(name: 'RoutingProfileSummaryList')
    S3Config = Shapes::StructureShape.new(name: 'S3Config')
    SecurityKey = Shapes::StructureShape.new(name: 'SecurityKey')
    SecurityKeysList = Shapes::ListShape.new(name: 'SecurityKeysList')
    SecurityProfileId = Shapes::StringShape.new(name: 'SecurityProfileId')
    SecurityProfileIds = Shapes::ListShape.new(name: 'SecurityProfileIds')
    SecurityProfileName = Shapes::StringShape.new(name: 'SecurityProfileName')
    SecurityProfileSummary = Shapes::StructureShape.new(name: 'SecurityProfileSummary')
    SecurityProfileSummaryList = Shapes::ListShape.new(name: 'SecurityProfileSummaryList')
    SecurityToken = Shapes::StringShape.new(name: 'SecurityToken')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SourceApplicationName = Shapes::StringShape.new(name: 'SourceApplicationName')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    StartChatContactRequest = Shapes::StructureShape.new(name: 'StartChatContactRequest')
    StartChatContactResponse = Shapes::StructureShape.new(name: 'StartChatContactResponse')
    StartContactRecordingRequest = Shapes::StructureShape.new(name: 'StartContactRecordingRequest')
    StartContactRecordingResponse = Shapes::StructureShape.new(name: 'StartContactRecordingResponse')
    StartOutboundVoiceContactRequest = Shapes::StructureShape.new(name: 'StartOutboundVoiceContactRequest')
    StartOutboundVoiceContactResponse = Shapes::StructureShape.new(name: 'StartOutboundVoiceContactResponse')
    StartTaskContactRequest = Shapes::StructureShape.new(name: 'StartTaskContactRequest')
    StartTaskContactResponse = Shapes::StructureShape.new(name: 'StartTaskContactResponse')
    Statistic = Shapes::StringShape.new(name: 'Statistic')
    StopContactRecordingRequest = Shapes::StructureShape.new(name: 'StopContactRecordingRequest')
    StopContactRecordingResponse = Shapes::StructureShape.new(name: 'StopContactRecordingResponse')
    StopContactRequest = Shapes::StructureShape.new(name: 'StopContactRequest')
    StopContactResponse = Shapes::StructureShape.new(name: 'StopContactResponse')
    StorageType = Shapes::StringShape.new(name: 'StorageType')
    String = Shapes::StringShape.new(name: 'String')
    SuspendContactRecordingRequest = Shapes::StructureShape.new(name: 'SuspendContactRecordingRequest')
    SuspendContactRecordingResponse = Shapes::StructureShape.new(name: 'SuspendContactRecordingResponse')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Threshold = Shapes::StructureShape.new(name: 'Threshold')
    ThresholdValue = Shapes::FloatShape.new(name: 'ThresholdValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    URI = Shapes::StringShape.new(name: 'URI')
    Unit = Shapes::StringShape.new(name: 'Unit')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateContactAttributesRequest = Shapes::StructureShape.new(name: 'UpdateContactAttributesRequest')
    UpdateContactAttributesResponse = Shapes::StructureShape.new(name: 'UpdateContactAttributesResponse')
    UpdateContactFlowContentRequest = Shapes::StructureShape.new(name: 'UpdateContactFlowContentRequest')
    UpdateContactFlowNameRequest = Shapes::StructureShape.new(name: 'UpdateContactFlowNameRequest')
    UpdateInstanceAttributeRequest = Shapes::StructureShape.new(name: 'UpdateInstanceAttributeRequest')
    UpdateInstanceStorageConfigRequest = Shapes::StructureShape.new(name: 'UpdateInstanceStorageConfigRequest')
    UpdateRoutingProfileConcurrencyRequest = Shapes::StructureShape.new(name: 'UpdateRoutingProfileConcurrencyRequest')
    UpdateRoutingProfileDefaultOutboundQueueRequest = Shapes::StructureShape.new(name: 'UpdateRoutingProfileDefaultOutboundQueueRequest')
    UpdateRoutingProfileNameRequest = Shapes::StructureShape.new(name: 'UpdateRoutingProfileNameRequest')
    UpdateRoutingProfileQueuesRequest = Shapes::StructureShape.new(name: 'UpdateRoutingProfileQueuesRequest')
    UpdateUserHierarchyGroupNameRequest = Shapes::StructureShape.new(name: 'UpdateUserHierarchyGroupNameRequest')
    UpdateUserHierarchyRequest = Shapes::StructureShape.new(name: 'UpdateUserHierarchyRequest')
    UpdateUserHierarchyStructureRequest = Shapes::StructureShape.new(name: 'UpdateUserHierarchyStructureRequest')
    UpdateUserIdentityInfoRequest = Shapes::StructureShape.new(name: 'UpdateUserIdentityInfoRequest')
    UpdateUserPhoneConfigRequest = Shapes::StructureShape.new(name: 'UpdateUserPhoneConfigRequest')
    UpdateUserRoutingProfileRequest = Shapes::StructureShape.new(name: 'UpdateUserRoutingProfileRequest')
    UpdateUserSecurityProfilesRequest = Shapes::StructureShape.new(name: 'UpdateUserSecurityProfilesRequest')
    UseCase = Shapes::StructureShape.new(name: 'UseCase')
    UseCaseId = Shapes::StringShape.new(name: 'UseCaseId')
    UseCaseSummaryList = Shapes::ListShape.new(name: 'UseCaseSummaryList')
    UseCaseType = Shapes::StringShape.new(name: 'UseCaseType')
    User = Shapes::StructureShape.new(name: 'User')
    UserId = Shapes::StringShape.new(name: 'UserId')
    UserIdentityInfo = Shapes::StructureShape.new(name: 'UserIdentityInfo')
    UserNotFoundException = Shapes::StructureShape.new(name: 'UserNotFoundException')
    UserPhoneConfig = Shapes::StructureShape.new(name: 'UserPhoneConfig')
    UserSummary = Shapes::StructureShape.new(name: 'UserSummary')
    UserSummaryList = Shapes::ListShape.new(name: 'UserSummaryList')
    Value = Shapes::FloatShape.new(name: 'Value')
    VoiceRecordingConfiguration = Shapes::StructureShape.new(name: 'VoiceRecordingConfiguration')
    VoiceRecordingTrack = Shapes::StringShape.new(name: 'VoiceRecordingTrack')
    timestamp = Shapes::TimestampShape.new(name: 'timestamp')

    AssociateApprovedOriginRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    AssociateApprovedOriginRequest.add_member(:origin, Shapes::ShapeRef.new(shape: Origin, required: true, location_name: "Origin"))
    AssociateApprovedOriginRequest.struct_class = Types::AssociateApprovedOriginRequest

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

    AssociateRoutingProfileQueuesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    AssociateRoutingProfileQueuesRequest.add_member(:routing_profile_id, Shapes::ShapeRef.new(shape: RoutingProfileId, required: true, location: "uri", location_name: "RoutingProfileId"))
    AssociateRoutingProfileQueuesRequest.add_member(:queue_configs, Shapes::ShapeRef.new(shape: RoutingProfileQueueConfigList, required: true, location_name: "QueueConfigs"))
    AssociateRoutingProfileQueuesRequest.struct_class = Types::AssociateRoutingProfileQueuesRequest

    AssociateSecurityKeyRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    AssociateSecurityKeyRequest.add_member(:key, Shapes::ShapeRef.new(shape: PEM, required: true, location_name: "Key"))
    AssociateSecurityKeyRequest.struct_class = Types::AssociateSecurityKeyRequest

    AssociateSecurityKeyResponse.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    AssociateSecurityKeyResponse.struct_class = Types::AssociateSecurityKeyResponse

    Attribute.add_member(:attribute_type, Shapes::ShapeRef.new(shape: InstanceAttributeType, location_name: "AttributeType"))
    Attribute.add_member(:value, Shapes::ShapeRef.new(shape: InstanceAttributeValue, location_name: "Value"))
    Attribute.struct_class = Types::Attribute

    Attributes.key = Shapes::ShapeRef.new(shape: AttributeName)
    Attributes.value = Shapes::ShapeRef.new(shape: AttributeValue)

    AttributesList.member = Shapes::ShapeRef.new(shape: Attribute)

    Channels.member = Shapes::ShapeRef.new(shape: Channel)

    ChatMessage.add_member(:content_type, Shapes::ShapeRef.new(shape: ChatContentType, required: true, location_name: "ContentType"))
    ChatMessage.add_member(:content, Shapes::ShapeRef.new(shape: ChatContent, required: true, location_name: "Content"))
    ChatMessage.struct_class = Types::ChatMessage

    ContactFlow.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    ContactFlow.add_member(:id, Shapes::ShapeRef.new(shape: ContactFlowId, location_name: "Id"))
    ContactFlow.add_member(:name, Shapes::ShapeRef.new(shape: ContactFlowName, location_name: "Name"))
    ContactFlow.add_member(:type, Shapes::ShapeRef.new(shape: ContactFlowType, location_name: "Type"))
    ContactFlow.add_member(:description, Shapes::ShapeRef.new(shape: ContactFlowDescription, location_name: "Description"))
    ContactFlow.add_member(:content, Shapes::ShapeRef.new(shape: ContactFlowContent, location_name: "Content"))
    ContactFlow.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ContactFlow.struct_class = Types::ContactFlow

    ContactFlowNotPublishedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ContactFlowNotPublishedException.struct_class = Types::ContactFlowNotPublishedException

    ContactFlowSummary.add_member(:id, Shapes::ShapeRef.new(shape: ContactFlowId, location_name: "Id"))
    ContactFlowSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    ContactFlowSummary.add_member(:name, Shapes::ShapeRef.new(shape: ContactFlowName, location_name: "Name"))
    ContactFlowSummary.add_member(:contact_flow_type, Shapes::ShapeRef.new(shape: ContactFlowType, location_name: "ContactFlowType"))
    ContactFlowSummary.struct_class = Types::ContactFlowSummary

    ContactFlowSummaryList.member = Shapes::ShapeRef.new(shape: ContactFlowSummary)

    ContactFlowTypes.member = Shapes::ShapeRef.new(shape: ContactFlowType)

    ContactNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ContactNotFoundException.struct_class = Types::ContactNotFoundException

    ContactReferences.key = Shapes::ShapeRef.new(shape: ReferenceKey)
    ContactReferences.value = Shapes::ShapeRef.new(shape: Reference)

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
    CreateIntegrationAssociationRequest.add_member(:source_application_url, Shapes::ShapeRef.new(shape: URI, required: true, location_name: "SourceApplicationUrl"))
    CreateIntegrationAssociationRequest.add_member(:source_application_name, Shapes::ShapeRef.new(shape: SourceApplicationName, required: true, location_name: "SourceApplicationName"))
    CreateIntegrationAssociationRequest.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, required: true, location_name: "SourceType"))
    CreateIntegrationAssociationRequest.struct_class = Types::CreateIntegrationAssociationRequest

    CreateIntegrationAssociationResponse.add_member(:integration_association_id, Shapes::ShapeRef.new(shape: IntegrationAssociationId, location_name: "IntegrationAssociationId"))
    CreateIntegrationAssociationResponse.add_member(:integration_association_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "IntegrationAssociationArn"))
    CreateIntegrationAssociationResponse.struct_class = Types::CreateIntegrationAssociationResponse

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

    CreateUseCaseRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    CreateUseCaseRequest.add_member(:integration_association_id, Shapes::ShapeRef.new(shape: IntegrationAssociationId, required: true, location: "uri", location_name: "IntegrationAssociationId"))
    CreateUseCaseRequest.add_member(:use_case_type, Shapes::ShapeRef.new(shape: UseCaseType, required: true, location_name: "UseCaseType"))
    CreateUseCaseRequest.struct_class = Types::CreateUseCaseRequest

    CreateUseCaseResponse.add_member(:use_case_id, Shapes::ShapeRef.new(shape: UseCaseId, location_name: "UseCaseId"))
    CreateUseCaseResponse.add_member(:use_case_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "UseCaseArn"))
    CreateUseCaseResponse.struct_class = Types::CreateUseCaseResponse

    CreateUserHierarchyGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: HierarchyGroupName, required: true, location_name: "Name"))
    CreateUserHierarchyGroupRequest.add_member(:parent_group_id, Shapes::ShapeRef.new(shape: HierarchyGroupId, location_name: "ParentGroupId"))
    CreateUserHierarchyGroupRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
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

    Credentials.add_member(:access_token, Shapes::ShapeRef.new(shape: SecurityToken, location_name: "AccessToken"))
    Credentials.add_member(:access_token_expiration, Shapes::ShapeRef.new(shape: timestamp, location_name: "AccessTokenExpiration"))
    Credentials.add_member(:refresh_token, Shapes::ShapeRef.new(shape: SecurityToken, location_name: "RefreshToken"))
    Credentials.add_member(:refresh_token_expiration, Shapes::ShapeRef.new(shape: timestamp, location_name: "RefreshTokenExpiration"))
    Credentials.struct_class = Types::Credentials

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

    CurrentMetrics.member = Shapes::ShapeRef.new(shape: CurrentMetric)

    DeleteInstanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteInstanceRequest.struct_class = Types::DeleteInstanceRequest

    DeleteIntegrationAssociationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DeleteIntegrationAssociationRequest.add_member(:integration_association_id, Shapes::ShapeRef.new(shape: IntegrationAssociationId, required: true, location: "uri", location_name: "IntegrationAssociationId"))
    DeleteIntegrationAssociationRequest.struct_class = Types::DeleteIntegrationAssociationRequest

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

    DescribeContactFlowRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribeContactFlowRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, required: true, location: "uri", location_name: "ContactFlowId"))
    DescribeContactFlowRequest.struct_class = Types::DescribeContactFlowRequest

    DescribeContactFlowResponse.add_member(:contact_flow, Shapes::ShapeRef.new(shape: ContactFlow, location_name: "ContactFlow"))
    DescribeContactFlowResponse.struct_class = Types::DescribeContactFlowResponse

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

    DescribeRoutingProfileRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DescribeRoutingProfileRequest.add_member(:routing_profile_id, Shapes::ShapeRef.new(shape: RoutingProfileId, required: true, location: "uri", location_name: "RoutingProfileId"))
    DescribeRoutingProfileRequest.struct_class = Types::DescribeRoutingProfileRequest

    DescribeRoutingProfileResponse.add_member(:routing_profile, Shapes::ShapeRef.new(shape: RoutingProfile, location_name: "RoutingProfile"))
    DescribeRoutingProfileResponse.struct_class = Types::DescribeRoutingProfileResponse

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

    DestinationNotAllowedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    DestinationNotAllowedException.struct_class = Types::DestinationNotAllowedException

    Dimensions.add_member(:queue, Shapes::ShapeRef.new(shape: QueueReference, location_name: "Queue"))
    Dimensions.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "Channel"))
    Dimensions.struct_class = Types::Dimensions

    DisassociateApprovedOriginRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DisassociateApprovedOriginRequest.add_member(:origin, Shapes::ShapeRef.new(shape: Origin, required: true, location: "querystring", location_name: "origin"))
    DisassociateApprovedOriginRequest.struct_class = Types::DisassociateApprovedOriginRequest

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

    DisassociateRoutingProfileQueuesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DisassociateRoutingProfileQueuesRequest.add_member(:routing_profile_id, Shapes::ShapeRef.new(shape: RoutingProfileId, required: true, location: "uri", location_name: "RoutingProfileId"))
    DisassociateRoutingProfileQueuesRequest.add_member(:queue_references, Shapes::ShapeRef.new(shape: RoutingProfileQueueReferenceList, required: true, location_name: "QueueReferences"))
    DisassociateRoutingProfileQueuesRequest.struct_class = Types::DisassociateRoutingProfileQueuesRequest

    DisassociateSecurityKeyRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    DisassociateSecurityKeyRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, required: true, location: "uri", location_name: "AssociationId"))
    DisassociateSecurityKeyRequest.struct_class = Types::DisassociateSecurityKeyRequest

    DuplicateResourceException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    DuplicateResourceException.struct_class = Types::DuplicateResourceException

    EncryptionConfig.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, required: true, location_name: "EncryptionType"))
    EncryptionConfig.add_member(:key_id, Shapes::ShapeRef.new(shape: KeyId, required: true, location_name: "KeyId"))
    EncryptionConfig.struct_class = Types::EncryptionConfig

    Filters.add_member(:queues, Shapes::ShapeRef.new(shape: Queues, location_name: "Queues"))
    Filters.add_member(:channels, Shapes::ShapeRef.new(shape: Channels, location_name: "Channels"))
    Filters.struct_class = Types::Filters

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
    GetCurrentMetricDataRequest.struct_class = Types::GetCurrentMetricDataRequest

    GetCurrentMetricDataResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetCurrentMetricDataResponse.add_member(:metric_results, Shapes::ShapeRef.new(shape: CurrentMetricResults, location_name: "MetricResults"))
    GetCurrentMetricDataResponse.add_member(:data_snapshot_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "DataSnapshotTime"))
    GetCurrentMetricDataResponse.struct_class = Types::GetCurrentMetricDataResponse

    GetFederationTokenRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    GetFederationTokenRequest.struct_class = Types::GetFederationTokenRequest

    GetFederationTokenResponse.add_member(:credentials, Shapes::ShapeRef.new(shape: Credentials, location_name: "Credentials"))
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

    Groupings.member = Shapes::ShapeRef.new(shape: Grouping)

    HierarchyGroup.add_member(:id, Shapes::ShapeRef.new(shape: HierarchyGroupId, location_name: "Id"))
    HierarchyGroup.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    HierarchyGroup.add_member(:name, Shapes::ShapeRef.new(shape: HierarchyGroupName, location_name: "Name"))
    HierarchyGroup.add_member(:level_id, Shapes::ShapeRef.new(shape: HierarchyLevelId, location_name: "LevelId"))
    HierarchyGroup.add_member(:hierarchy_path, Shapes::ShapeRef.new(shape: HierarchyPath, location_name: "HierarchyPath"))
    HierarchyGroup.struct_class = Types::HierarchyGroup

    HierarchyGroupSummary.add_member(:id, Shapes::ShapeRef.new(shape: HierarchyGroupId, location_name: "Id"))
    HierarchyGroupSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    HierarchyGroupSummary.add_member(:name, Shapes::ShapeRef.new(shape: HierarchyGroupName, location_name: "Name"))
    HierarchyGroupSummary.struct_class = Types::HierarchyGroupSummary

    HierarchyGroupSummaryList.member = Shapes::ShapeRef.new(shape: HierarchyGroupSummary)

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

    HoursOfOperationSummary.add_member(:id, Shapes::ShapeRef.new(shape: HoursOfOperationId, location_name: "Id"))
    HoursOfOperationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    HoursOfOperationSummary.add_member(:name, Shapes::ShapeRef.new(shape: HoursOfOperationName, location_name: "Name"))
    HoursOfOperationSummary.struct_class = Types::HoursOfOperationSummary

    HoursOfOperationSummaryList.member = Shapes::ShapeRef.new(shape: HoursOfOperationSummary)

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

    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    KinesisFirehoseConfig.add_member(:firehose_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "FirehoseArn"))
    KinesisFirehoseConfig.struct_class = Types::KinesisFirehoseConfig

    KinesisStreamConfig.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "StreamArn"))
    KinesisStreamConfig.struct_class = Types::KinesisStreamConfig

    KinesisVideoStreamConfig.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, required: true, location_name: "Prefix"))
    KinesisVideoStreamConfig.add_member(:retention_period_hours, Shapes::ShapeRef.new(shape: Hours, required: true, location_name: "RetentionPeriodHours"))
    KinesisVideoStreamConfig.add_member(:encryption_config, Shapes::ShapeRef.new(shape: EncryptionConfig, required: true, location_name: "EncryptionConfig"))
    KinesisVideoStreamConfig.struct_class = Types::KinesisVideoStreamConfig

    LexBot.add_member(:name, Shapes::ShapeRef.new(shape: BotName, location_name: "Name"))
    LexBot.add_member(:lex_region, Shapes::ShapeRef.new(shape: LexRegion, location_name: "LexRegion"))
    LexBot.struct_class = Types::LexBot

    LexBotsList.member = Shapes::ShapeRef.new(shape: LexBot)

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListApprovedOriginsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListApprovedOriginsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListApprovedOriginsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult25, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListApprovedOriginsRequest.struct_class = Types::ListApprovedOriginsRequest

    ListApprovedOriginsResponse.add_member(:origins, Shapes::ShapeRef.new(shape: OriginsList, location_name: "Origins"))
    ListApprovedOriginsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListApprovedOriginsResponse.struct_class = Types::ListApprovedOriginsResponse

    ListContactFlowsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListContactFlowsRequest.add_member(:contact_flow_types, Shapes::ShapeRef.new(shape: ContactFlowTypes, location: "querystring", location_name: "contactFlowTypes"))
    ListContactFlowsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListContactFlowsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults"))
    ListContactFlowsRequest.struct_class = Types::ListContactFlowsRequest

    ListContactFlowsResponse.add_member(:contact_flow_summary_list, Shapes::ShapeRef.new(shape: ContactFlowSummaryList, location_name: "ContactFlowSummaryList"))
    ListContactFlowsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListContactFlowsResponse.struct_class = Types::ListContactFlowsResponse

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

    ListPromptsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListPromptsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPromptsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListPromptsRequest.struct_class = Types::ListPromptsRequest

    ListPromptsResponse.add_member(:prompt_summary_list, Shapes::ShapeRef.new(shape: PromptSummaryList, location_name: "PromptSummaryList"))
    ListPromptsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPromptsResponse.struct_class = Types::ListPromptsResponse

    ListQueuesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListQueuesRequest.add_member(:queue_types, Shapes::ShapeRef.new(shape: QueueTypes, location: "querystring", location_name: "queueTypes"))
    ListQueuesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListQueuesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult1000, location: "querystring", location_name: "maxResults"))
    ListQueuesRequest.struct_class = Types::ListQueuesRequest

    ListQueuesResponse.add_member(:queue_summary_list, Shapes::ShapeRef.new(shape: QueueSummaryList, location_name: "QueueSummaryList"))
    ListQueuesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListQueuesResponse.struct_class = Types::ListQueuesResponse

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

    ListSecurityKeysRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    ListSecurityKeysRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListSecurityKeysRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult2, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListSecurityKeysRequest.struct_class = Types::ListSecurityKeysRequest

    ListSecurityKeysResponse.add_member(:security_keys, Shapes::ShapeRef.new(shape: SecurityKeysList, location_name: "SecurityKeys"))
    ListSecurityKeysResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSecurityKeysResponse.struct_class = Types::ListSecurityKeysResponse

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

    MediaConcurrencies.member = Shapes::ShapeRef.new(shape: MediaConcurrency)

    MediaConcurrency.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, required: true, location_name: "Channel"))
    MediaConcurrency.add_member(:concurrency, Shapes::ShapeRef.new(shape: Concurrency, required: true, location_name: "Concurrency"))
    MediaConcurrency.struct_class = Types::MediaConcurrency

    OriginsList.member = Shapes::ShapeRef.new(shape: Origin)

    OutboundContactNotPermittedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    OutboundContactNotPermittedException.struct_class = Types::OutboundContactNotPermittedException

    ParticipantDetails.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "DisplayName"))
    ParticipantDetails.struct_class = Types::ParticipantDetails

    PhoneNumberCountryCodes.member = Shapes::ShapeRef.new(shape: PhoneNumberCountryCode)

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

    PromptSummary.add_member(:id, Shapes::ShapeRef.new(shape: PromptId, location_name: "Id"))
    PromptSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    PromptSummary.add_member(:name, Shapes::ShapeRef.new(shape: PromptName, location_name: "Name"))
    PromptSummary.struct_class = Types::PromptSummary

    PromptSummaryList.member = Shapes::ShapeRef.new(shape: PromptSummary)

    QueueReference.add_member(:id, Shapes::ShapeRef.new(shape: QueueId, location_name: "Id"))
    QueueReference.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    QueueReference.struct_class = Types::QueueReference

    QueueSummary.add_member(:id, Shapes::ShapeRef.new(shape: QueueId, location_name: "Id"))
    QueueSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    QueueSummary.add_member(:name, Shapes::ShapeRef.new(shape: QueueName, location_name: "Name"))
    QueueSummary.add_member(:queue_type, Shapes::ShapeRef.new(shape: QueueType, location_name: "QueueType"))
    QueueSummary.struct_class = Types::QueueSummary

    QueueSummaryList.member = Shapes::ShapeRef.new(shape: QueueSummary)

    QueueTypes.member = Shapes::ShapeRef.new(shape: QueueType)

    Queues.member = Shapes::ShapeRef.new(shape: QueueId)

    Reference.add_member(:value, Shapes::ShapeRef.new(shape: ReferenceValue, required: true, location_name: "Value"))
    Reference.add_member(:type, Shapes::ShapeRef.new(shape: ReferenceType, required: true, location_name: "Type"))
    Reference.struct_class = Types::Reference

    ResourceConflictException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ResourceConflictException.struct_class = Types::ResourceConflictException

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ResourceInUseException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceInUseException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ARN, location_name: "ResourceId"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

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
    RoutingProfile.struct_class = Types::RoutingProfile

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

    RoutingProfileSummary.add_member(:id, Shapes::ShapeRef.new(shape: RoutingProfileId, location_name: "Id"))
    RoutingProfileSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    RoutingProfileSummary.add_member(:name, Shapes::ShapeRef.new(shape: RoutingProfileName, location_name: "Name"))
    RoutingProfileSummary.struct_class = Types::RoutingProfileSummary

    RoutingProfileSummaryList.member = Shapes::ShapeRef.new(shape: RoutingProfileSummary)

    S3Config.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "BucketName"))
    S3Config.add_member(:bucket_prefix, Shapes::ShapeRef.new(shape: Prefix, required: true, location_name: "BucketPrefix"))
    S3Config.add_member(:encryption_config, Shapes::ShapeRef.new(shape: EncryptionConfig, location_name: "EncryptionConfig"))
    S3Config.struct_class = Types::S3Config

    SecurityKey.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    SecurityKey.add_member(:key, Shapes::ShapeRef.new(shape: PEM, location_name: "Key"))
    SecurityKey.add_member(:creation_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreationTime"))
    SecurityKey.struct_class = Types::SecurityKey

    SecurityKeysList.member = Shapes::ShapeRef.new(shape: SecurityKey)

    SecurityProfileIds.member = Shapes::ShapeRef.new(shape: SecurityProfileId)

    SecurityProfileSummary.add_member(:id, Shapes::ShapeRef.new(shape: SecurityProfileId, location_name: "Id"))
    SecurityProfileSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    SecurityProfileSummary.add_member(:name, Shapes::ShapeRef.new(shape: SecurityProfileName, location_name: "Name"))
    SecurityProfileSummary.struct_class = Types::SecurityProfileSummary

    SecurityProfileSummaryList.member = Shapes::ShapeRef.new(shape: SecurityProfileSummary)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartChatContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    StartChatContactRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, required: true, location_name: "ContactFlowId"))
    StartChatContactRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    StartChatContactRequest.add_member(:participant_details, Shapes::ShapeRef.new(shape: ParticipantDetails, required: true, location_name: "ParticipantDetails"))
    StartChatContactRequest.add_member(:initial_message, Shapes::ShapeRef.new(shape: ChatMessage, location_name: "InitialMessage"))
    StartChatContactRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    StartChatContactRequest.struct_class = Types::StartChatContactRequest

    StartChatContactResponse.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContactId"))
    StartChatContactResponse.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantId, location_name: "ParticipantId"))
    StartChatContactResponse.add_member(:participant_token, Shapes::ShapeRef.new(shape: ParticipantToken, location_name: "ParticipantToken"))
    StartChatContactResponse.struct_class = Types::StartChatContactResponse

    StartContactRecordingRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    StartContactRecordingRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    StartContactRecordingRequest.add_member(:initial_contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "InitialContactId"))
    StartContactRecordingRequest.add_member(:voice_recording_configuration, Shapes::ShapeRef.new(shape: VoiceRecordingConfiguration, required: true, location_name: "VoiceRecordingConfiguration"))
    StartContactRecordingRequest.struct_class = Types::StartContactRecordingRequest

    StartContactRecordingResponse.struct_class = Types::StartContactRecordingResponse

    StartOutboundVoiceContactRequest.add_member(:destination_phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "DestinationPhoneNumber"))
    StartOutboundVoiceContactRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, required: true, location_name: "ContactFlowId"))
    StartOutboundVoiceContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    StartOutboundVoiceContactRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    StartOutboundVoiceContactRequest.add_member(:source_phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "SourcePhoneNumber"))
    StartOutboundVoiceContactRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, location_name: "QueueId"))
    StartOutboundVoiceContactRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    StartOutboundVoiceContactRequest.struct_class = Types::StartOutboundVoiceContactRequest

    StartOutboundVoiceContactResponse.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContactId"))
    StartOutboundVoiceContactResponse.struct_class = Types::StartOutboundVoiceContactResponse

    StartTaskContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    StartTaskContactRequest.add_member(:previous_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "PreviousContactId"))
    StartTaskContactRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, required: true, location_name: "ContactFlowId"))
    StartTaskContactRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    StartTaskContactRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    StartTaskContactRequest.add_member(:references, Shapes::ShapeRef.new(shape: ContactReferences, location_name: "References"))
    StartTaskContactRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    StartTaskContactRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
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

    SuspendContactRecordingRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    SuspendContactRecordingRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    SuspendContactRecordingRequest.add_member(:initial_contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "InitialContactId"))
    SuspendContactRecordingRequest.struct_class = Types::SuspendContactRecordingRequest

    SuspendContactRecordingResponse.struct_class = Types::SuspendContactRecordingResponse

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    Threshold.add_member(:comparison, Shapes::ShapeRef.new(shape: Comparison, location_name: "Comparison"))
    Threshold.add_member(:threshold_value, Shapes::ShapeRef.new(shape: ThresholdValue, location_name: "ThresholdValue", metadata: {"box"=>true}))
    Threshold.struct_class = Types::Threshold

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateContactAttributesRequest.add_member(:initial_contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "InitialContactId"))
    UpdateContactAttributesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    UpdateContactAttributesRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, required: true, location_name: "Attributes"))
    UpdateContactAttributesRequest.struct_class = Types::UpdateContactAttributesRequest

    UpdateContactAttributesResponse.struct_class = Types::UpdateContactAttributesResponse

    UpdateContactFlowContentRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateContactFlowContentRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, required: true, location: "uri", location_name: "ContactFlowId"))
    UpdateContactFlowContentRequest.add_member(:content, Shapes::ShapeRef.new(shape: ContactFlowContent, required: true, location_name: "Content"))
    UpdateContactFlowContentRequest.struct_class = Types::UpdateContactFlowContentRequest

    UpdateContactFlowNameRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateContactFlowNameRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, required: true, location: "uri", location_name: "ContactFlowId"))
    UpdateContactFlowNameRequest.add_member(:name, Shapes::ShapeRef.new(shape: ContactFlowName, location_name: "Name"))
    UpdateContactFlowNameRequest.add_member(:description, Shapes::ShapeRef.new(shape: ContactFlowDescription, location_name: "Description"))
    UpdateContactFlowNameRequest.struct_class = Types::UpdateContactFlowNameRequest

    UpdateInstanceAttributeRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateInstanceAttributeRequest.add_member(:attribute_type, Shapes::ShapeRef.new(shape: InstanceAttributeType, required: true, location: "uri", location_name: "AttributeType"))
    UpdateInstanceAttributeRequest.add_member(:value, Shapes::ShapeRef.new(shape: InstanceAttributeValue, required: true, location_name: "Value"))
    UpdateInstanceAttributeRequest.struct_class = Types::UpdateInstanceAttributeRequest

    UpdateInstanceStorageConfigRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "InstanceId"))
    UpdateInstanceStorageConfigRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, required: true, location: "uri", location_name: "AssociationId"))
    UpdateInstanceStorageConfigRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: InstanceStorageResourceType, required: true, location: "querystring", location_name: "resourceType"))
    UpdateInstanceStorageConfigRequest.add_member(:storage_config, Shapes::ShapeRef.new(shape: InstanceStorageConfig, required: true, location_name: "StorageConfig"))
    UpdateInstanceStorageConfigRequest.struct_class = Types::UpdateInstanceStorageConfigRequest

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

    UserIdentityInfo.add_member(:first_name, Shapes::ShapeRef.new(shape: AgentFirstName, location_name: "FirstName"))
    UserIdentityInfo.add_member(:last_name, Shapes::ShapeRef.new(shape: AgentLastName, location_name: "LastName"))
    UserIdentityInfo.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "Email"))
    UserIdentityInfo.struct_class = Types::UserIdentityInfo

    UserNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    UserNotFoundException.struct_class = Types::UserNotFoundException

    UserPhoneConfig.add_member(:phone_type, Shapes::ShapeRef.new(shape: PhoneType, required: true, location_name: "PhoneType"))
    UserPhoneConfig.add_member(:auto_accept, Shapes::ShapeRef.new(shape: AutoAccept, location_name: "AutoAccept"))
    UserPhoneConfig.add_member(:after_contact_work_time_limit, Shapes::ShapeRef.new(shape: AfterContactWorkTimeLimit, location_name: "AfterContactWorkTimeLimit"))
    UserPhoneConfig.add_member(:desk_phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "DeskPhoneNumber"))
    UserPhoneConfig.struct_class = Types::UserPhoneConfig

    UserSummary.add_member(:id, Shapes::ShapeRef.new(shape: UserId, location_name: "Id"))
    UserSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    UserSummary.add_member(:username, Shapes::ShapeRef.new(shape: AgentUsername, location_name: "Username"))
    UserSummary.struct_class = Types::UserSummary

    UserSummaryList.member = Shapes::ShapeRef.new(shape: UserSummary)

    VoiceRecordingConfiguration.add_member(:voice_recording_track, Shapes::ShapeRef.new(shape: VoiceRecordingTrack, location_name: "VoiceRecordingTrack"))
    VoiceRecordingConfiguration.struct_class = Types::VoiceRecordingConfiguration


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

      api.add_operation(:update_contact_flow_content, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateContactFlowContent"
        o.http_method = "POST"
        o.http_request_uri = "/contact-flows/{InstanceId}/{ContactFlowId}/content"
        o.input = Shapes::ShapeRef.new(shape: UpdateContactFlowContentRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidContactFlowException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_contact_flow_name, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateContactFlowName"
        o.http_method = "POST"
        o.http_request_uri = "/contact-flows/{InstanceId}/{ContactFlowId}/name"
        o.input = Shapes::ShapeRef.new(shape: UpdateContactFlowNameRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
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
