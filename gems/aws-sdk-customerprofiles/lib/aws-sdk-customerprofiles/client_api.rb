# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CustomerProfiles
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AddProfileKeyRequest = Shapes::StructureShape.new(name: 'AddProfileKeyRequest')
    AddProfileKeyResponse = Shapes::StructureShape.new(name: 'AddProfileKeyResponse')
    AdditionalSearchKey = Shapes::StructureShape.new(name: 'AdditionalSearchKey')
    Address = Shapes::StructureShape.new(name: 'Address')
    AddressDimension = Shapes::StructureShape.new(name: 'AddressDimension')
    AddressList = Shapes::ListShape.new(name: 'AddressList')
    AppflowIntegration = Shapes::StructureShape.new(name: 'AppflowIntegration')
    AppflowIntegrationWorkflowAttributes = Shapes::StructureShape.new(name: 'AppflowIntegrationWorkflowAttributes')
    AppflowIntegrationWorkflowMetrics = Shapes::StructureShape.new(name: 'AppflowIntegrationWorkflowMetrics')
    AppflowIntegrationWorkflowStep = Shapes::StructureShape.new(name: 'AppflowIntegrationWorkflowStep')
    AttributeDetails = Shapes::StructureShape.new(name: 'AttributeDetails')
    AttributeDimension = Shapes::StructureShape.new(name: 'AttributeDimension')
    AttributeDimensionType = Shapes::StringShape.new(name: 'AttributeDimensionType')
    AttributeItem = Shapes::StructureShape.new(name: 'AttributeItem')
    AttributeList = Shapes::ListShape.new(name: 'AttributeList')
    AttributeMap = Shapes::MapShape.new(name: 'AttributeMap')
    AttributeMatchingModel = Shapes::StringShape.new(name: 'AttributeMatchingModel')
    AttributeSourceIdMap = Shapes::MapShape.new(name: 'AttributeSourceIdMap')
    AttributeTypesSelector = Shapes::StructureShape.new(name: 'AttributeTypesSelector')
    AttributeValueItem = Shapes::StructureShape.new(name: 'AttributeValueItem')
    AttributeValueItemList = Shapes::ListShape.new(name: 'AttributeValueItemList')
    Attributes = Shapes::MapShape.new(name: 'Attributes')
    AutoMerging = Shapes::StructureShape.new(name: 'AutoMerging')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    Batch = Shapes::StructureShape.new(name: 'Batch')
    BatchGetCalculatedAttributeForProfileError = Shapes::StructureShape.new(name: 'BatchGetCalculatedAttributeForProfileError')
    BatchGetCalculatedAttributeForProfileErrorList = Shapes::ListShape.new(name: 'BatchGetCalculatedAttributeForProfileErrorList')
    BatchGetCalculatedAttributeForProfileIdList = Shapes::ListShape.new(name: 'BatchGetCalculatedAttributeForProfileIdList')
    BatchGetCalculatedAttributeForProfileRequest = Shapes::StructureShape.new(name: 'BatchGetCalculatedAttributeForProfileRequest')
    BatchGetCalculatedAttributeForProfileResponse = Shapes::StructureShape.new(name: 'BatchGetCalculatedAttributeForProfileResponse')
    BatchGetProfileError = Shapes::StructureShape.new(name: 'BatchGetProfileError')
    BatchGetProfileErrorList = Shapes::ListShape.new(name: 'BatchGetProfileErrorList')
    BatchGetProfileIdList = Shapes::ListShape.new(name: 'BatchGetProfileIdList')
    BatchGetProfileRequest = Shapes::StructureShape.new(name: 'BatchGetProfileRequest')
    BatchGetProfileResponse = Shapes::StructureShape.new(name: 'BatchGetProfileResponse')
    Batches = Shapes::ListShape.new(name: 'Batches')
    BucketName = Shapes::StringShape.new(name: 'BucketName')
    BucketPrefix = Shapes::StringShape.new(name: 'BucketPrefix')
    CalculatedAttributeDefinitionsList = Shapes::ListShape.new(name: 'CalculatedAttributeDefinitionsList')
    CalculatedAttributeDimension = Shapes::StructureShape.new(name: 'CalculatedAttributeDimension')
    CalculatedAttributeValue = Shapes::StructureShape.new(name: 'CalculatedAttributeValue')
    CalculatedAttributeValueList = Shapes::ListShape.new(name: 'CalculatedAttributeValueList')
    CalculatedAttributesForProfileList = Shapes::ListShape.new(name: 'CalculatedAttributesForProfileList')
    CalculatedCustomAttributes = Shapes::MapShape.new(name: 'CalculatedCustomAttributes')
    ComparisonOperator = Shapes::StringShape.new(name: 'ComparisonOperator')
    ConditionOverrides = Shapes::StructureShape.new(name: 'ConditionOverrides')
    Conditions = Shapes::StructureShape.new(name: 'Conditions')
    ConflictResolution = Shapes::StructureShape.new(name: 'ConflictResolution')
    ConflictResolvingModel = Shapes::StringShape.new(name: 'ConflictResolvingModel')
    ConnectorOperator = Shapes::StructureShape.new(name: 'ConnectorOperator')
    ConnectorProfileName = Shapes::StringShape.new(name: 'ConnectorProfileName')
    Consolidation = Shapes::StructureShape.new(name: 'Consolidation')
    ContactPreference = Shapes::StructureShape.new(name: 'ContactPreference')
    ContactType = Shapes::StringShape.new(name: 'ContactType')
    CreateCalculatedAttributeDefinitionRequest = Shapes::StructureShape.new(name: 'CreateCalculatedAttributeDefinitionRequest')
    CreateCalculatedAttributeDefinitionResponse = Shapes::StructureShape.new(name: 'CreateCalculatedAttributeDefinitionResponse')
    CreateDomainLayoutRequest = Shapes::StructureShape.new(name: 'CreateDomainLayoutRequest')
    CreateDomainLayoutResponse = Shapes::StructureShape.new(name: 'CreateDomainLayoutResponse')
    CreateDomainRequest = Shapes::StructureShape.new(name: 'CreateDomainRequest')
    CreateDomainResponse = Shapes::StructureShape.new(name: 'CreateDomainResponse')
    CreateEventStreamRequest = Shapes::StructureShape.new(name: 'CreateEventStreamRequest')
    CreateEventStreamResponse = Shapes::StructureShape.new(name: 'CreateEventStreamResponse')
    CreateEventTriggerRequest = Shapes::StructureShape.new(name: 'CreateEventTriggerRequest')
    CreateEventTriggerResponse = Shapes::StructureShape.new(name: 'CreateEventTriggerResponse')
    CreateIntegrationWorkflowRequest = Shapes::StructureShape.new(name: 'CreateIntegrationWorkflowRequest')
    CreateIntegrationWorkflowResponse = Shapes::StructureShape.new(name: 'CreateIntegrationWorkflowResponse')
    CreateProfileRequest = Shapes::StructureShape.new(name: 'CreateProfileRequest')
    CreateProfileResponse = Shapes::StructureShape.new(name: 'CreateProfileResponse')
    CreateSegmentDefinitionRequest = Shapes::StructureShape.new(name: 'CreateSegmentDefinitionRequest')
    CreateSegmentDefinitionResponse = Shapes::StructureShape.new(name: 'CreateSegmentDefinitionResponse')
    CreateSegmentEstimateRequest = Shapes::StructureShape.new(name: 'CreateSegmentEstimateRequest')
    CreateSegmentEstimateResponse = Shapes::StructureShape.new(name: 'CreateSegmentEstimateResponse')
    CreateSegmentSnapshotRequest = Shapes::StructureShape.new(name: 'CreateSegmentSnapshotRequest')
    CreateSegmentSnapshotResponse = Shapes::StructureShape.new(name: 'CreateSegmentSnapshotResponse')
    CreateUploadJobRequest = Shapes::StructureShape.new(name: 'CreateUploadJobRequest')
    CreateUploadJobResponse = Shapes::StructureShape.new(name: 'CreateUploadJobResponse')
    CustomAttributes = Shapes::MapShape.new(name: 'CustomAttributes')
    DataFormat = Shapes::StringShape.new(name: 'DataFormat')
    DataPullMode = Shapes::StringShape.new(name: 'DataPullMode')
    Date = Shapes::TimestampShape.new(name: 'Date')
    DateDimension = Shapes::StructureShape.new(name: 'DateDimension')
    DateDimensionType = Shapes::StringShape.new(name: 'DateDimensionType')
    DateValues = Shapes::ListShape.new(name: 'DateValues')
    DatetimeTypeFieldName = Shapes::StringShape.new(name: 'DatetimeTypeFieldName')
    DeleteCalculatedAttributeDefinitionRequest = Shapes::StructureShape.new(name: 'DeleteCalculatedAttributeDefinitionRequest')
    DeleteCalculatedAttributeDefinitionResponse = Shapes::StructureShape.new(name: 'DeleteCalculatedAttributeDefinitionResponse')
    DeleteDomainLayoutRequest = Shapes::StructureShape.new(name: 'DeleteDomainLayoutRequest')
    DeleteDomainLayoutResponse = Shapes::StructureShape.new(name: 'DeleteDomainLayoutResponse')
    DeleteDomainRequest = Shapes::StructureShape.new(name: 'DeleteDomainRequest')
    DeleteDomainResponse = Shapes::StructureShape.new(name: 'DeleteDomainResponse')
    DeleteEventStreamRequest = Shapes::StructureShape.new(name: 'DeleteEventStreamRequest')
    DeleteEventStreamResponse = Shapes::StructureShape.new(name: 'DeleteEventStreamResponse')
    DeleteEventTriggerRequest = Shapes::StructureShape.new(name: 'DeleteEventTriggerRequest')
    DeleteEventTriggerResponse = Shapes::StructureShape.new(name: 'DeleteEventTriggerResponse')
    DeleteIntegrationRequest = Shapes::StructureShape.new(name: 'DeleteIntegrationRequest')
    DeleteIntegrationResponse = Shapes::StructureShape.new(name: 'DeleteIntegrationResponse')
    DeleteProfileKeyRequest = Shapes::StructureShape.new(name: 'DeleteProfileKeyRequest')
    DeleteProfileKeyResponse = Shapes::StructureShape.new(name: 'DeleteProfileKeyResponse')
    DeleteProfileObjectRequest = Shapes::StructureShape.new(name: 'DeleteProfileObjectRequest')
    DeleteProfileObjectResponse = Shapes::StructureShape.new(name: 'DeleteProfileObjectResponse')
    DeleteProfileObjectTypeRequest = Shapes::StructureShape.new(name: 'DeleteProfileObjectTypeRequest')
    DeleteProfileObjectTypeResponse = Shapes::StructureShape.new(name: 'DeleteProfileObjectTypeResponse')
    DeleteProfileRequest = Shapes::StructureShape.new(name: 'DeleteProfileRequest')
    DeleteProfileResponse = Shapes::StructureShape.new(name: 'DeleteProfileResponse')
    DeleteSegmentDefinitionRequest = Shapes::StructureShape.new(name: 'DeleteSegmentDefinitionRequest')
    DeleteSegmentDefinitionResponse = Shapes::StructureShape.new(name: 'DeleteSegmentDefinitionResponse')
    DeleteWorkflowRequest = Shapes::StructureShape.new(name: 'DeleteWorkflowRequest')
    DeleteWorkflowResponse = Shapes::StructureShape.new(name: 'DeleteWorkflowResponse')
    DestinationField = Shapes::StringShape.new(name: 'DestinationField')
    DestinationSummary = Shapes::StructureShape.new(name: 'DestinationSummary')
    DetectProfileObjectTypeRequest = Shapes::StructureShape.new(name: 'DetectProfileObjectTypeRequest')
    DetectProfileObjectTypeResponse = Shapes::StructureShape.new(name: 'DetectProfileObjectTypeResponse')
    DetectedProfileObjectType = Shapes::StructureShape.new(name: 'DetectedProfileObjectType')
    DetectedProfileObjectTypes = Shapes::ListShape.new(name: 'DetectedProfileObjectTypes')
    Dimension = Shapes::UnionShape.new(name: 'Dimension')
    DimensionList = Shapes::ListShape.new(name: 'DimensionList')
    DomainList = Shapes::ListShape.new(name: 'DomainList')
    DomainStats = Shapes::StructureShape.new(name: 'DomainStats')
    Double = Shapes::FloatShape.new(name: 'Double')
    Double0To1 = Shapes::FloatShape.new(name: 'Double0To1')
    EmailList = Shapes::ListShape.new(name: 'EmailList')
    EmailPreferenceList = Shapes::ListShape.new(name: 'EmailPreferenceList')
    End = Shapes::IntegerShape.new(name: 'End')
    EngagementPreferences = Shapes::StructureShape.new(name: 'EngagementPreferences')
    EstimateStatus = Shapes::StringShape.new(name: 'EstimateStatus')
    EventStreamDestinationDetails = Shapes::StructureShape.new(name: 'EventStreamDestinationDetails')
    EventStreamDestinationStatus = Shapes::StringShape.new(name: 'EventStreamDestinationStatus')
    EventStreamState = Shapes::StringShape.new(name: 'EventStreamState')
    EventStreamSummary = Shapes::StructureShape.new(name: 'EventStreamSummary')
    EventStreamSummaryList = Shapes::ListShape.new(name: 'EventStreamSummaryList')
    EventTriggerCondition = Shapes::StructureShape.new(name: 'EventTriggerCondition')
    EventTriggerConditions = Shapes::ListShape.new(name: 'EventTriggerConditions')
    EventTriggerDimension = Shapes::StructureShape.new(name: 'EventTriggerDimension')
    EventTriggerDimensions = Shapes::ListShape.new(name: 'EventTriggerDimensions')
    EventTriggerLimits = Shapes::StructureShape.new(name: 'EventTriggerLimits')
    EventTriggerLogicalOperator = Shapes::StringShape.new(name: 'EventTriggerLogicalOperator')
    EventTriggerNames = Shapes::ListShape.new(name: 'EventTriggerNames')
    EventTriggerSummaryItem = Shapes::StructureShape.new(name: 'EventTriggerSummaryItem')
    EventTriggerSummaryList = Shapes::ListShape.new(name: 'EventTriggerSummaryList')
    EventTriggerValues = Shapes::ListShape.new(name: 'EventTriggerValues')
    ExportingConfig = Shapes::StructureShape.new(name: 'ExportingConfig')
    ExportingLocation = Shapes::StructureShape.new(name: 'ExportingLocation')
    ExtraLengthValueProfileDimension = Shapes::StructureShape.new(name: 'ExtraLengthValueProfileDimension')
    ExtraLengthValues = Shapes::ListShape.new(name: 'ExtraLengthValues')
    Failures = Shapes::ListShape.new(name: 'Failures')
    FieldContentType = Shapes::StringShape.new(name: 'FieldContentType')
    FieldMap = Shapes::MapShape.new(name: 'FieldMap')
    FieldNameList = Shapes::ListShape.new(name: 'FieldNameList')
    FieldSourceProfileIds = Shapes::StructureShape.new(name: 'FieldSourceProfileIds')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterAttributeDimension = Shapes::StructureShape.new(name: 'FilterAttributeDimension')
    FilterDimension = Shapes::StructureShape.new(name: 'FilterDimension')
    FilterDimensionList = Shapes::ListShape.new(name: 'FilterDimensionList')
    FilterDimensionType = Shapes::StringShape.new(name: 'FilterDimensionType')
    FilterGroup = Shapes::StructureShape.new(name: 'FilterGroup')
    FlowDefinition = Shapes::StructureShape.new(name: 'FlowDefinition')
    FlowDescription = Shapes::StringShape.new(name: 'FlowDescription')
    FlowName = Shapes::StringShape.new(name: 'FlowName')
    FoundByKeyValue = Shapes::StructureShape.new(name: 'FoundByKeyValue')
    Gender = Shapes::StringShape.new(name: 'Gender')
    GetAutoMergingPreviewRequest = Shapes::StructureShape.new(name: 'GetAutoMergingPreviewRequest')
    GetAutoMergingPreviewResponse = Shapes::StructureShape.new(name: 'GetAutoMergingPreviewResponse')
    GetCalculatedAttributeDefinitionRequest = Shapes::StructureShape.new(name: 'GetCalculatedAttributeDefinitionRequest')
    GetCalculatedAttributeDefinitionResponse = Shapes::StructureShape.new(name: 'GetCalculatedAttributeDefinitionResponse')
    GetCalculatedAttributeForProfileRequest = Shapes::StructureShape.new(name: 'GetCalculatedAttributeForProfileRequest')
    GetCalculatedAttributeForProfileResponse = Shapes::StructureShape.new(name: 'GetCalculatedAttributeForProfileResponse')
    GetDomainLayoutRequest = Shapes::StructureShape.new(name: 'GetDomainLayoutRequest')
    GetDomainLayoutResponse = Shapes::StructureShape.new(name: 'GetDomainLayoutResponse')
    GetDomainRequest = Shapes::StructureShape.new(name: 'GetDomainRequest')
    GetDomainResponse = Shapes::StructureShape.new(name: 'GetDomainResponse')
    GetEventStreamRequest = Shapes::StructureShape.new(name: 'GetEventStreamRequest')
    GetEventStreamResponse = Shapes::StructureShape.new(name: 'GetEventStreamResponse')
    GetEventTriggerRequest = Shapes::StructureShape.new(name: 'GetEventTriggerRequest')
    GetEventTriggerResponse = Shapes::StructureShape.new(name: 'GetEventTriggerResponse')
    GetIdentityResolutionJobRequest = Shapes::StructureShape.new(name: 'GetIdentityResolutionJobRequest')
    GetIdentityResolutionJobResponse = Shapes::StructureShape.new(name: 'GetIdentityResolutionJobResponse')
    GetIntegrationRequest = Shapes::StructureShape.new(name: 'GetIntegrationRequest')
    GetIntegrationResponse = Shapes::StructureShape.new(name: 'GetIntegrationResponse')
    GetMatchesRequest = Shapes::StructureShape.new(name: 'GetMatchesRequest')
    GetMatchesResponse = Shapes::StructureShape.new(name: 'GetMatchesResponse')
    GetProfileObjectTypeRequest = Shapes::StructureShape.new(name: 'GetProfileObjectTypeRequest')
    GetProfileObjectTypeResponse = Shapes::StructureShape.new(name: 'GetProfileObjectTypeResponse')
    GetProfileObjectTypeTemplateRequest = Shapes::StructureShape.new(name: 'GetProfileObjectTypeTemplateRequest')
    GetProfileObjectTypeTemplateResponse = Shapes::StructureShape.new(name: 'GetProfileObjectTypeTemplateResponse')
    GetSegmentDefinitionRequest = Shapes::StructureShape.new(name: 'GetSegmentDefinitionRequest')
    GetSegmentDefinitionResponse = Shapes::StructureShape.new(name: 'GetSegmentDefinitionResponse')
    GetSegmentEstimateRequest = Shapes::StructureShape.new(name: 'GetSegmentEstimateRequest')
    GetSegmentEstimateResponse = Shapes::StructureShape.new(name: 'GetSegmentEstimateResponse')
    GetSegmentMembershipMessage = Shapes::StringShape.new(name: 'GetSegmentMembershipMessage')
    GetSegmentMembershipRequest = Shapes::StructureShape.new(name: 'GetSegmentMembershipRequest')
    GetSegmentMembershipResponse = Shapes::StructureShape.new(name: 'GetSegmentMembershipResponse')
    GetSegmentMembershipStatus = Shapes::IntegerShape.new(name: 'GetSegmentMembershipStatus')
    GetSegmentSnapshotRequest = Shapes::StructureShape.new(name: 'GetSegmentSnapshotRequest')
    GetSegmentSnapshotResponse = Shapes::StructureShape.new(name: 'GetSegmentSnapshotResponse')
    GetSimilarProfilesRequest = Shapes::StructureShape.new(name: 'GetSimilarProfilesRequest')
    GetSimilarProfilesResponse = Shapes::StructureShape.new(name: 'GetSimilarProfilesResponse')
    GetUploadJobPathRequest = Shapes::StructureShape.new(name: 'GetUploadJobPathRequest')
    GetUploadJobPathResponse = Shapes::StructureShape.new(name: 'GetUploadJobPathResponse')
    GetUploadJobRequest = Shapes::StructureShape.new(name: 'GetUploadJobRequest')
    GetUploadJobResponse = Shapes::StructureShape.new(name: 'GetUploadJobResponse')
    GetWorkflowRequest = Shapes::StructureShape.new(name: 'GetWorkflowRequest')
    GetWorkflowResponse = Shapes::StructureShape.new(name: 'GetWorkflowResponse')
    GetWorkflowStepsRequest = Shapes::StructureShape.new(name: 'GetWorkflowStepsRequest')
    GetWorkflowStepsResponse = Shapes::StructureShape.new(name: 'GetWorkflowStepsResponse')
    Group = Shapes::StructureShape.new(name: 'Group')
    GroupList = Shapes::ListShape.new(name: 'GroupList')
    IdentityResolutionJob = Shapes::StructureShape.new(name: 'IdentityResolutionJob')
    IdentityResolutionJobStatus = Shapes::StringShape.new(name: 'IdentityResolutionJobStatus')
    IdentityResolutionJobsList = Shapes::ListShape.new(name: 'IdentityResolutionJobsList')
    Include = Shapes::StringShape.new(name: 'Include')
    IncludeOptions = Shapes::StringShape.new(name: 'IncludeOptions')
    IncrementalPullConfig = Shapes::StructureShape.new(name: 'IncrementalPullConfig')
    IntegrationConfig = Shapes::StructureShape.new(name: 'IntegrationConfig')
    IntegrationList = Shapes::ListShape.new(name: 'IntegrationList')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    JobSchedule = Shapes::StructureShape.new(name: 'JobSchedule')
    JobScheduleDayOfTheWeek = Shapes::StringShape.new(name: 'JobScheduleDayOfTheWeek')
    JobScheduleTime = Shapes::StringShape.new(name: 'JobScheduleTime')
    JobStats = Shapes::StructureShape.new(name: 'JobStats')
    KeyMap = Shapes::MapShape.new(name: 'KeyMap')
    KmsArn = Shapes::StringShape.new(name: 'KmsArn')
    LayoutItem = Shapes::StructureShape.new(name: 'LayoutItem')
    LayoutList = Shapes::ListShape.new(name: 'LayoutList')
    LayoutType = Shapes::StringShape.new(name: 'LayoutType')
    ListAccountIntegrationsRequest = Shapes::StructureShape.new(name: 'ListAccountIntegrationsRequest')
    ListAccountIntegrationsResponse = Shapes::StructureShape.new(name: 'ListAccountIntegrationsResponse')
    ListCalculatedAttributeDefinitionItem = Shapes::StructureShape.new(name: 'ListCalculatedAttributeDefinitionItem')
    ListCalculatedAttributeDefinitionsRequest = Shapes::StructureShape.new(name: 'ListCalculatedAttributeDefinitionsRequest')
    ListCalculatedAttributeDefinitionsResponse = Shapes::StructureShape.new(name: 'ListCalculatedAttributeDefinitionsResponse')
    ListCalculatedAttributeForProfileItem = Shapes::StructureShape.new(name: 'ListCalculatedAttributeForProfileItem')
    ListCalculatedAttributesForProfileRequest = Shapes::StructureShape.new(name: 'ListCalculatedAttributesForProfileRequest')
    ListCalculatedAttributesForProfileResponse = Shapes::StructureShape.new(name: 'ListCalculatedAttributesForProfileResponse')
    ListDomainItem = Shapes::StructureShape.new(name: 'ListDomainItem')
    ListDomainLayoutsRequest = Shapes::StructureShape.new(name: 'ListDomainLayoutsRequest')
    ListDomainLayoutsResponse = Shapes::StructureShape.new(name: 'ListDomainLayoutsResponse')
    ListDomainsRequest = Shapes::StructureShape.new(name: 'ListDomainsRequest')
    ListDomainsResponse = Shapes::StructureShape.new(name: 'ListDomainsResponse')
    ListEventStreamsRequest = Shapes::StructureShape.new(name: 'ListEventStreamsRequest')
    ListEventStreamsResponse = Shapes::StructureShape.new(name: 'ListEventStreamsResponse')
    ListEventTriggersRequest = Shapes::StructureShape.new(name: 'ListEventTriggersRequest')
    ListEventTriggersResponse = Shapes::StructureShape.new(name: 'ListEventTriggersResponse')
    ListIdentityResolutionJobsRequest = Shapes::StructureShape.new(name: 'ListIdentityResolutionJobsRequest')
    ListIdentityResolutionJobsResponse = Shapes::StructureShape.new(name: 'ListIdentityResolutionJobsResponse')
    ListIntegrationItem = Shapes::StructureShape.new(name: 'ListIntegrationItem')
    ListIntegrationsRequest = Shapes::StructureShape.new(name: 'ListIntegrationsRequest')
    ListIntegrationsResponse = Shapes::StructureShape.new(name: 'ListIntegrationsResponse')
    ListObjectTypeAttributeItem = Shapes::StructureShape.new(name: 'ListObjectTypeAttributeItem')
    ListObjectTypeAttributesList = Shapes::ListShape.new(name: 'ListObjectTypeAttributesList')
    ListObjectTypeAttributesRequest = Shapes::StructureShape.new(name: 'ListObjectTypeAttributesRequest')
    ListObjectTypeAttributesResponse = Shapes::StructureShape.new(name: 'ListObjectTypeAttributesResponse')
    ListProfileObjectTypeItem = Shapes::StructureShape.new(name: 'ListProfileObjectTypeItem')
    ListProfileObjectTypeTemplateItem = Shapes::StructureShape.new(name: 'ListProfileObjectTypeTemplateItem')
    ListProfileObjectTypeTemplatesRequest = Shapes::StructureShape.new(name: 'ListProfileObjectTypeTemplatesRequest')
    ListProfileObjectTypeTemplatesResponse = Shapes::StructureShape.new(name: 'ListProfileObjectTypeTemplatesResponse')
    ListProfileObjectTypesRequest = Shapes::StructureShape.new(name: 'ListProfileObjectTypesRequest')
    ListProfileObjectTypesResponse = Shapes::StructureShape.new(name: 'ListProfileObjectTypesResponse')
    ListProfileObjectsItem = Shapes::StructureShape.new(name: 'ListProfileObjectsItem')
    ListProfileObjectsRequest = Shapes::StructureShape.new(name: 'ListProfileObjectsRequest')
    ListProfileObjectsResponse = Shapes::StructureShape.new(name: 'ListProfileObjectsResponse')
    ListRuleBasedMatchesRequest = Shapes::StructureShape.new(name: 'ListRuleBasedMatchesRequest')
    ListRuleBasedMatchesResponse = Shapes::StructureShape.new(name: 'ListRuleBasedMatchesResponse')
    ListSegmentDefinitionsRequest = Shapes::StructureShape.new(name: 'ListSegmentDefinitionsRequest')
    ListSegmentDefinitionsResponse = Shapes::StructureShape.new(name: 'ListSegmentDefinitionsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListUploadJobsRequest = Shapes::StructureShape.new(name: 'ListUploadJobsRequest')
    ListUploadJobsResponse = Shapes::StructureShape.new(name: 'ListUploadJobsResponse')
    ListWorkflowsItem = Shapes::StructureShape.new(name: 'ListWorkflowsItem')
    ListWorkflowsRequest = Shapes::StructureShape.new(name: 'ListWorkflowsRequest')
    ListWorkflowsResponse = Shapes::StructureShape.new(name: 'ListWorkflowsResponse')
    MarketoConnectorOperator = Shapes::StringShape.new(name: 'MarketoConnectorOperator')
    MarketoSourceProperties = Shapes::StructureShape.new(name: 'MarketoSourceProperties')
    MatchIdList = Shapes::ListShape.new(name: 'MatchIdList')
    MatchItem = Shapes::StructureShape.new(name: 'MatchItem')
    MatchType = Shapes::StringShape.new(name: 'MatchType')
    MatchesList = Shapes::ListShape.new(name: 'MatchesList')
    MatchingAttributes = Shapes::ListShape.new(name: 'MatchingAttributes')
    MatchingAttributesList = Shapes::ListShape.new(name: 'MatchingAttributesList')
    MatchingRequest = Shapes::StructureShape.new(name: 'MatchingRequest')
    MatchingResponse = Shapes::StructureShape.new(name: 'MatchingResponse')
    MatchingRule = Shapes::StructureShape.new(name: 'MatchingRule')
    MatchingRuleAttributeList = Shapes::ListShape.new(name: 'MatchingRuleAttributeList')
    MatchingRules = Shapes::ListShape.new(name: 'MatchingRules')
    MaxAllowedRuleLevelForMatching = Shapes::IntegerShape.new(name: 'MaxAllowedRuleLevelForMatching')
    MaxAllowedRuleLevelForMerging = Shapes::IntegerShape.new(name: 'MaxAllowedRuleLevelForMerging')
    MaxSize500 = Shapes::IntegerShape.new(name: 'MaxSize500')
    MergeProfilesRequest = Shapes::StructureShape.new(name: 'MergeProfilesRequest')
    MergeProfilesResponse = Shapes::StructureShape.new(name: 'MergeProfilesResponse')
    Object = Shapes::StringShape.new(name: 'Object')
    ObjectAttribute = Shapes::StructureShape.new(name: 'ObjectAttribute')
    ObjectAttributes = Shapes::ListShape.new(name: 'ObjectAttributes')
    ObjectCount = Shapes::IntegerShape.new(name: 'ObjectCount')
    ObjectFilter = Shapes::StructureShape.new(name: 'ObjectFilter')
    ObjectTypeField = Shapes::StructureShape.new(name: 'ObjectTypeField')
    ObjectTypeKey = Shapes::StructureShape.new(name: 'ObjectTypeKey')
    ObjectTypeKeyList = Shapes::ListShape.new(name: 'ObjectTypeKeyList')
    ObjectTypeNames = Shapes::MapShape.new(name: 'ObjectTypeNames')
    Objects = Shapes::ListShape.new(name: 'Objects')
    Operator = Shapes::StringShape.new(name: 'Operator')
    OperatorPropertiesKeys = Shapes::StringShape.new(name: 'OperatorPropertiesKeys')
    PartyType = Shapes::StringShape.new(name: 'PartyType')
    Period = Shapes::StructureShape.new(name: 'Period')
    PeriodUnit = Shapes::StringShape.new(name: 'PeriodUnit')
    Periods = Shapes::ListShape.new(name: 'Periods')
    PhoneNumberList = Shapes::ListShape.new(name: 'PhoneNumberList')
    PhonePreferenceList = Shapes::ListShape.new(name: 'PhonePreferenceList')
    Profile = Shapes::StructureShape.new(name: 'Profile')
    ProfileAttributeValuesRequest = Shapes::StructureShape.new(name: 'ProfileAttributeValuesRequest')
    ProfileAttributeValuesResponse = Shapes::StructureShape.new(name: 'ProfileAttributeValuesResponse')
    ProfileAttributes = Shapes::StructureShape.new(name: 'ProfileAttributes')
    ProfileDimension = Shapes::StructureShape.new(name: 'ProfileDimension')
    ProfileId = Shapes::StringShape.new(name: 'ProfileId')
    ProfileIdList = Shapes::ListShape.new(name: 'ProfileIdList')
    ProfileIdToBeMergedList = Shapes::ListShape.new(name: 'ProfileIdToBeMergedList')
    ProfileIds = Shapes::ListShape.new(name: 'ProfileIds')
    ProfileList = Shapes::ListShape.new(name: 'ProfileList')
    ProfileObjectList = Shapes::ListShape.new(name: 'ProfileObjectList')
    ProfileObjectTypeList = Shapes::ListShape.new(name: 'ProfileObjectTypeList')
    ProfileObjectTypeTemplateList = Shapes::ListShape.new(name: 'ProfileObjectTypeTemplateList')
    ProfileQueryFailures = Shapes::StructureShape.new(name: 'ProfileQueryFailures')
    ProfileQueryResult = Shapes::StructureShape.new(name: 'ProfileQueryResult')
    ProfileType = Shapes::StringShape.new(name: 'ProfileType')
    ProfileTypeDimension = Shapes::StructureShape.new(name: 'ProfileTypeDimension')
    ProfileTypeDimensionType = Shapes::StringShape.new(name: 'ProfileTypeDimensionType')
    ProfileTypeValues = Shapes::ListShape.new(name: 'ProfileTypeValues')
    Profiles = Shapes::ListShape.new(name: 'Profiles')
    Property = Shapes::StringShape.new(name: 'Property')
    PutIntegrationRequest = Shapes::StructureShape.new(name: 'PutIntegrationRequest')
    PutIntegrationResponse = Shapes::StructureShape.new(name: 'PutIntegrationResponse')
    PutProfileObjectRequest = Shapes::StructureShape.new(name: 'PutProfileObjectRequest')
    PutProfileObjectResponse = Shapes::StructureShape.new(name: 'PutProfileObjectResponse')
    PutProfileObjectTypeRequest = Shapes::StructureShape.new(name: 'PutProfileObjectTypeRequest')
    PutProfileObjectTypeResponse = Shapes::StructureShape.new(name: 'PutProfileObjectTypeResponse')
    QueryResult = Shapes::StringShape.new(name: 'QueryResult')
    Range = Shapes::StructureShape.new(name: 'Range')
    RangeOverride = Shapes::StructureShape.new(name: 'RangeOverride')
    RangeUnit = Shapes::StringShape.new(name: 'RangeUnit')
    Readiness = Shapes::StructureShape.new(name: 'Readiness')
    ReadinessStatus = Shapes::StringShape.new(name: 'ReadinessStatus')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResultsSummary = Shapes::StructureShape.new(name: 'ResultsSummary')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RuleBasedMatchingRequest = Shapes::StructureShape.new(name: 'RuleBasedMatchingRequest')
    RuleBasedMatchingResponse = Shapes::StructureShape.new(name: 'RuleBasedMatchingResponse')
    RuleBasedMatchingStatus = Shapes::StringShape.new(name: 'RuleBasedMatchingStatus')
    RuleLevel = Shapes::IntegerShape.new(name: 'RuleLevel')
    S3ConnectorOperator = Shapes::StringShape.new(name: 'S3ConnectorOperator')
    S3ExportingConfig = Shapes::StructureShape.new(name: 'S3ExportingConfig')
    S3ExportingLocation = Shapes::StructureShape.new(name: 'S3ExportingLocation')
    S3SourceProperties = Shapes::StructureShape.new(name: 'S3SourceProperties')
    SalesforceConnectorOperator = Shapes::StringShape.new(name: 'SalesforceConnectorOperator')
    SalesforceSourceProperties = Shapes::StructureShape.new(name: 'SalesforceSourceProperties')
    ScheduleExpression = Shapes::StringShape.new(name: 'ScheduleExpression')
    ScheduleOffset = Shapes::IntegerShape.new(name: 'ScheduleOffset')
    ScheduledTriggerProperties = Shapes::StructureShape.new(name: 'ScheduledTriggerProperties')
    SearchProfilesRequest = Shapes::StructureShape.new(name: 'SearchProfilesRequest')
    SearchProfilesResponse = Shapes::StructureShape.new(name: 'SearchProfilesResponse')
    SegmentDefinitionArn = Shapes::StringShape.new(name: 'SegmentDefinitionArn')
    SegmentDefinitionItem = Shapes::StructureShape.new(name: 'SegmentDefinitionItem')
    SegmentDefinitionsList = Shapes::ListShape.new(name: 'SegmentDefinitionsList')
    SegmentGroup = Shapes::StructureShape.new(name: 'SegmentGroup')
    SegmentGroupList = Shapes::ListShape.new(name: 'SegmentGroupList')
    SegmentGroupStructure = Shapes::StructureShape.new(name: 'SegmentGroupStructure')
    SegmentSnapshotStatus = Shapes::StringShape.new(name: 'SegmentSnapshotStatus')
    ServiceNowConnectorOperator = Shapes::StringShape.new(name: 'ServiceNowConnectorOperator')
    ServiceNowSourceProperties = Shapes::StructureShape.new(name: 'ServiceNowSourceProperties')
    SourceConnectorProperties = Shapes::StructureShape.new(name: 'SourceConnectorProperties')
    SourceConnectorType = Shapes::StringShape.new(name: 'SourceConnectorType')
    SourceFields = Shapes::ListShape.new(name: 'SourceFields')
    SourceFlowConfig = Shapes::StructureShape.new(name: 'SourceFlowConfig')
    SourceSegment = Shapes::StructureShape.new(name: 'SourceSegment')
    SourceSegmentList = Shapes::ListShape.new(name: 'SourceSegmentList')
    StandardIdentifier = Shapes::StringShape.new(name: 'StandardIdentifier')
    StandardIdentifierList = Shapes::ListShape.new(name: 'StandardIdentifierList')
    Start = Shapes::IntegerShape.new(name: 'Start')
    StartUploadJobRequest = Shapes::StructureShape.new(name: 'StartUploadJobRequest')
    StartUploadJobResponse = Shapes::StructureShape.new(name: 'StartUploadJobResponse')
    Statistic = Shapes::StringShape.new(name: 'Statistic')
    Status = Shapes::StringShape.new(name: 'Status')
    StatusCode = Shapes::IntegerShape.new(name: 'StatusCode')
    StatusReason = Shapes::StringShape.new(name: 'StatusReason')
    StopUploadJobRequest = Shapes::StructureShape.new(name: 'StopUploadJobRequest')
    StopUploadJobResponse = Shapes::StructureShape.new(name: 'StopUploadJobResponse')
    String = Shapes::StringShape.new(name: 'String')
    StringDimensionType = Shapes::StringShape.new(name: 'StringDimensionType')
    TagArn = Shapes::StringShape.new(name: 'TagArn')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Task = Shapes::StructureShape.new(name: 'Task')
    TaskPropertiesMap = Shapes::MapShape.new(name: 'TaskPropertiesMap')
    TaskType = Shapes::StringShape.new(name: 'TaskType')
    Tasks = Shapes::ListShape.new(name: 'Tasks')
    Threshold = Shapes::StructureShape.new(name: 'Threshold')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timezone = Shapes::StringShape.new(name: 'Timezone')
    TriggerConfig = Shapes::StructureShape.new(name: 'TriggerConfig')
    TriggerProperties = Shapes::StructureShape.new(name: 'TriggerProperties')
    TriggerType = Shapes::StringShape.new(name: 'TriggerType')
    Type = Shapes::StringShape.new(name: 'Type')
    Unit = Shapes::StringShape.new(name: 'Unit')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAddress = Shapes::StructureShape.new(name: 'UpdateAddress')
    UpdateAttributes = Shapes::MapShape.new(name: 'UpdateAttributes')
    UpdateCalculatedAttributeDefinitionRequest = Shapes::StructureShape.new(name: 'UpdateCalculatedAttributeDefinitionRequest')
    UpdateCalculatedAttributeDefinitionResponse = Shapes::StructureShape.new(name: 'UpdateCalculatedAttributeDefinitionResponse')
    UpdateDomainLayoutRequest = Shapes::StructureShape.new(name: 'UpdateDomainLayoutRequest')
    UpdateDomainLayoutResponse = Shapes::StructureShape.new(name: 'UpdateDomainLayoutResponse')
    UpdateDomainRequest = Shapes::StructureShape.new(name: 'UpdateDomainRequest')
    UpdateDomainResponse = Shapes::StructureShape.new(name: 'UpdateDomainResponse')
    UpdateEventTriggerRequest = Shapes::StructureShape.new(name: 'UpdateEventTriggerRequest')
    UpdateEventTriggerResponse = Shapes::StructureShape.new(name: 'UpdateEventTriggerResponse')
    UpdateProfileRequest = Shapes::StructureShape.new(name: 'UpdateProfileRequest')
    UpdateProfileResponse = Shapes::StructureShape.new(name: 'UpdateProfileResponse')
    UploadJobItem = Shapes::StructureShape.new(name: 'UploadJobItem')
    UploadJobStatus = Shapes::StringShape.new(name: 'UploadJobStatus')
    UploadJobsList = Shapes::ListShape.new(name: 'UploadJobsList')
    Value = Shapes::IntegerShape.new(name: 'Value')
    ValueList = Shapes::ListShape.new(name: 'ValueList')
    ValueRange = Shapes::StructureShape.new(name: 'ValueRange')
    ValueRangeEnd = Shapes::IntegerShape.new(name: 'ValueRangeEnd')
    ValueRangeStart = Shapes::IntegerShape.new(name: 'ValueRangeStart')
    Values = Shapes::ListShape.new(name: 'Values')
    WorkflowAttributes = Shapes::StructureShape.new(name: 'WorkflowAttributes')
    WorkflowList = Shapes::ListShape.new(name: 'WorkflowList')
    WorkflowMetrics = Shapes::StructureShape.new(name: 'WorkflowMetrics')
    WorkflowStepItem = Shapes::StructureShape.new(name: 'WorkflowStepItem')
    WorkflowStepsList = Shapes::ListShape.new(name: 'WorkflowStepsList')
    WorkflowType = Shapes::StringShape.new(name: 'WorkflowType')
    ZendeskConnectorOperator = Shapes::StringShape.new(name: 'ZendeskConnectorOperator')
    ZendeskSourceProperties = Shapes::StructureShape.new(name: 'ZendeskSourceProperties')
    additionalSearchKeysList = Shapes::ListShape.new(name: 'additionalSearchKeysList')
    attributeName = Shapes::StringShape.new(name: 'attributeName')
    boolean = Shapes::BooleanShape.new(name: 'boolean')
    displayName = Shapes::StringShape.new(name: 'displayName')
    encryptionKey = Shapes::StringShape.new(name: 'encryptionKey')
    expirationDaysInteger = Shapes::IntegerShape.new(name: 'expirationDaysInteger')
    fieldName = Shapes::StringShape.new(name: 'fieldName')
    foundByList = Shapes::ListShape.new(name: 'foundByList')
    logicalOperator = Shapes::StringShape.new(name: 'logicalOperator')
    long = Shapes::IntegerShape.new(name: 'long')
    matchesNumber = Shapes::IntegerShape.new(name: 'matchesNumber')
    maxSize100 = Shapes::IntegerShape.new(name: 'maxSize100')
    maxSize1000 = Shapes::IntegerShape.new(name: 'maxSize1000')
    maxSize24 = Shapes::IntegerShape.new(name: 'maxSize24')
    message = Shapes::StringShape.new(name: 'message')
    minSize0 = Shapes::IntegerShape.new(name: 'minSize0')
    minSize1 = Shapes::IntegerShape.new(name: 'minSize1')
    name = Shapes::StringShape.new(name: 'name')
    optionalBoolean = Shapes::BooleanShape.new(name: 'optionalBoolean')
    optionalLong = Shapes::IntegerShape.new(name: 'optionalLong')
    percentageInteger = Shapes::IntegerShape.new(name: 'percentageInteger')
    requestValueList = Shapes::ListShape.new(name: 'requestValueList')
    s3BucketName = Shapes::StringShape.new(name: 's3BucketName')
    s3KeyName = Shapes::StringShape.new(name: 's3KeyName')
    s3KeyNameCustomerOutputConfig = Shapes::StringShape.new(name: 's3KeyNameCustomerOutputConfig')
    sensitiveString0To1000 = Shapes::StringShape.new(name: 'sensitiveString0To1000')
    sensitiveString0To255 = Shapes::StringShape.new(name: 'sensitiveString0To255')
    sensitiveString1To1000 = Shapes::StringShape.new(name: 'sensitiveString1To1000')
    sensitiveString1To2000000 = Shapes::StringShape.new(name: 'sensitiveString1To2000000')
    sensitiveString1To255 = Shapes::StringShape.new(name: 'sensitiveString1To255')
    sensitiveText = Shapes::StringShape.new(name: 'sensitiveText')
    sqsQueueUrl = Shapes::StringShape.new(name: 'sqsQueueUrl')
    string0To255 = Shapes::StringShape.new(name: 'string0To255')
    string1To1000 = Shapes::StringShape.new(name: 'string1To1000')
    string1To255 = Shapes::StringShape.new(name: 'string1To255')
    stringTo2048 = Shapes::StringShape.new(name: 'stringTo2048')
    stringifiedJson = Shapes::StringShape.new(name: 'stringifiedJson')
    text = Shapes::StringShape.new(name: 'text')
    timestamp = Shapes::TimestampShape.new(name: 'timestamp')
    token = Shapes::StringShape.new(name: 'token')
    typeName = Shapes::StringShape.new(name: 'typeName')
    uuid = Shapes::StringShape.new(name: 'uuid')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: message, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AddProfileKeyRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: uuid, required: true, location_name: "ProfileId"))
    AddProfileKeyRequest.add_member(:key_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "KeyName"))
    AddProfileKeyRequest.add_member(:values, Shapes::ShapeRef.new(shape: requestValueList, required: true, location_name: "Values"))
    AddProfileKeyRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    AddProfileKeyRequest.struct_class = Types::AddProfileKeyRequest

    AddProfileKeyResponse.add_member(:key_name, Shapes::ShapeRef.new(shape: name, location_name: "KeyName"))
    AddProfileKeyResponse.add_member(:values, Shapes::ShapeRef.new(shape: requestValueList, location_name: "Values"))
    AddProfileKeyResponse.struct_class = Types::AddProfileKeyResponse

    AdditionalSearchKey.add_member(:key_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "KeyName"))
    AdditionalSearchKey.add_member(:values, Shapes::ShapeRef.new(shape: requestValueList, required: true, location_name: "Values"))
    AdditionalSearchKey.struct_class = Types::AdditionalSearchKey

    Address.add_member(:address_1, Shapes::ShapeRef.new(shape: string1To255, location_name: "Address1"))
    Address.add_member(:address_2, Shapes::ShapeRef.new(shape: string1To255, location_name: "Address2"))
    Address.add_member(:address_3, Shapes::ShapeRef.new(shape: string1To255, location_name: "Address3"))
    Address.add_member(:address_4, Shapes::ShapeRef.new(shape: string1To255, location_name: "Address4"))
    Address.add_member(:city, Shapes::ShapeRef.new(shape: string1To255, location_name: "City"))
    Address.add_member(:county, Shapes::ShapeRef.new(shape: string1To255, location_name: "County"))
    Address.add_member(:state, Shapes::ShapeRef.new(shape: string1To255, location_name: "State"))
    Address.add_member(:province, Shapes::ShapeRef.new(shape: string1To255, location_name: "Province"))
    Address.add_member(:country, Shapes::ShapeRef.new(shape: string1To255, location_name: "Country"))
    Address.add_member(:postal_code, Shapes::ShapeRef.new(shape: string1To255, location_name: "PostalCode"))
    Address.struct_class = Types::Address

    AddressDimension.add_member(:city, Shapes::ShapeRef.new(shape: ProfileDimension, location_name: "City"))
    AddressDimension.add_member(:country, Shapes::ShapeRef.new(shape: ProfileDimension, location_name: "Country"))
    AddressDimension.add_member(:county, Shapes::ShapeRef.new(shape: ProfileDimension, location_name: "County"))
    AddressDimension.add_member(:postal_code, Shapes::ShapeRef.new(shape: ProfileDimension, location_name: "PostalCode"))
    AddressDimension.add_member(:province, Shapes::ShapeRef.new(shape: ProfileDimension, location_name: "Province"))
    AddressDimension.add_member(:state, Shapes::ShapeRef.new(shape: ProfileDimension, location_name: "State"))
    AddressDimension.struct_class = Types::AddressDimension

    AddressList.member = Shapes::ShapeRef.new(shape: string1To255)

    AppflowIntegration.add_member(:flow_definition, Shapes::ShapeRef.new(shape: FlowDefinition, required: true, location_name: "FlowDefinition"))
    AppflowIntegration.add_member(:batches, Shapes::ShapeRef.new(shape: Batches, location_name: "Batches"))
    AppflowIntegration.struct_class = Types::AppflowIntegration

    AppflowIntegrationWorkflowAttributes.add_member(:source_connector_type, Shapes::ShapeRef.new(shape: SourceConnectorType, required: true, location_name: "SourceConnectorType"))
    AppflowIntegrationWorkflowAttributes.add_member(:connector_profile_name, Shapes::ShapeRef.new(shape: ConnectorProfileName, required: true, location_name: "ConnectorProfileName"))
    AppflowIntegrationWorkflowAttributes.add_member(:role_arn, Shapes::ShapeRef.new(shape: string1To255, location_name: "RoleArn"))
    AppflowIntegrationWorkflowAttributes.struct_class = Types::AppflowIntegrationWorkflowAttributes

    AppflowIntegrationWorkflowMetrics.add_member(:records_processed, Shapes::ShapeRef.new(shape: long, required: true, location_name: "RecordsProcessed"))
    AppflowIntegrationWorkflowMetrics.add_member(:steps_completed, Shapes::ShapeRef.new(shape: long, required: true, location_name: "StepsCompleted"))
    AppflowIntegrationWorkflowMetrics.add_member(:total_steps, Shapes::ShapeRef.new(shape: long, required: true, location_name: "TotalSteps"))
    AppflowIntegrationWorkflowMetrics.struct_class = Types::AppflowIntegrationWorkflowMetrics

    AppflowIntegrationWorkflowStep.add_member(:flow_name, Shapes::ShapeRef.new(shape: FlowName, required: true, location_name: "FlowName"))
    AppflowIntegrationWorkflowStep.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "Status"))
    AppflowIntegrationWorkflowStep.add_member(:execution_message, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "ExecutionMessage"))
    AppflowIntegrationWorkflowStep.add_member(:records_processed, Shapes::ShapeRef.new(shape: long, required: true, location_name: "RecordsProcessed"))
    AppflowIntegrationWorkflowStep.add_member(:batch_records_start_time, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "BatchRecordsStartTime"))
    AppflowIntegrationWorkflowStep.add_member(:batch_records_end_time, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "BatchRecordsEndTime"))
    AppflowIntegrationWorkflowStep.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "CreatedAt"))
    AppflowIntegrationWorkflowStep.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastUpdatedAt"))
    AppflowIntegrationWorkflowStep.struct_class = Types::AppflowIntegrationWorkflowStep

    AttributeDetails.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeList, required: true, location_name: "Attributes"))
    AttributeDetails.add_member(:expression, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "Expression"))
    AttributeDetails.struct_class = Types::AttributeDetails

    AttributeDimension.add_member(:dimension_type, Shapes::ShapeRef.new(shape: AttributeDimensionType, required: true, location_name: "DimensionType"))
    AttributeDimension.add_member(:values, Shapes::ShapeRef.new(shape: Values, required: true, location_name: "Values"))
    AttributeDimension.struct_class = Types::AttributeDimension

    AttributeItem.add_member(:name, Shapes::ShapeRef.new(shape: attributeName, required: true, location_name: "Name"))
    AttributeItem.struct_class = Types::AttributeItem

    AttributeList.member = Shapes::ShapeRef.new(shape: AttributeItem)

    AttributeMap.key = Shapes::ShapeRef.new(shape: attributeName)
    AttributeMap.value = Shapes::ShapeRef.new(shape: FilterAttributeDimension)

    AttributeSourceIdMap.key = Shapes::ShapeRef.new(shape: string1To255)
    AttributeSourceIdMap.value = Shapes::ShapeRef.new(shape: uuid)

    AttributeTypesSelector.add_member(:attribute_matching_model, Shapes::ShapeRef.new(shape: AttributeMatchingModel, required: true, location_name: "AttributeMatchingModel"))
    AttributeTypesSelector.add_member(:address, Shapes::ShapeRef.new(shape: AddressList, location_name: "Address"))
    AttributeTypesSelector.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumberList, location_name: "PhoneNumber"))
    AttributeTypesSelector.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailList, location_name: "EmailAddress"))
    AttributeTypesSelector.struct_class = Types::AttributeTypesSelector

    AttributeValueItem.add_member(:value, Shapes::ShapeRef.new(shape: string1To255, location_name: "Value"))
    AttributeValueItem.struct_class = Types::AttributeValueItem

    AttributeValueItemList.member = Shapes::ShapeRef.new(shape: AttributeValueItem)

    Attributes.key = Shapes::ShapeRef.new(shape: string1To255)
    Attributes.value = Shapes::ShapeRef.new(shape: string1To255)

    AutoMerging.add_member(:enabled, Shapes::ShapeRef.new(shape: optionalBoolean, required: true, location_name: "Enabled"))
    AutoMerging.add_member(:consolidation, Shapes::ShapeRef.new(shape: Consolidation, location_name: "Consolidation"))
    AutoMerging.add_member(:conflict_resolution, Shapes::ShapeRef.new(shape: ConflictResolution, location_name: "ConflictResolution"))
    AutoMerging.add_member(:min_allowed_confidence_score_for_merging, Shapes::ShapeRef.new(shape: Double0To1, location_name: "MinAllowedConfidenceScoreForMerging"))
    AutoMerging.struct_class = Types::AutoMerging

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: message, location_name: "Message"))
    BadRequestException.struct_class = Types::BadRequestException

    Batch.add_member(:start_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "StartTime"))
    Batch.add_member(:end_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "EndTime"))
    Batch.struct_class = Types::Batch

    BatchGetCalculatedAttributeForProfileError.add_member(:code, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "Code"))
    BatchGetCalculatedAttributeForProfileError.add_member(:message, Shapes::ShapeRef.new(shape: string1To1000, required: true, location_name: "Message"))
    BatchGetCalculatedAttributeForProfileError.add_member(:profile_id, Shapes::ShapeRef.new(shape: uuid, required: true, location_name: "ProfileId"))
    BatchGetCalculatedAttributeForProfileError.struct_class = Types::BatchGetCalculatedAttributeForProfileError

    BatchGetCalculatedAttributeForProfileErrorList.member = Shapes::ShapeRef.new(shape: BatchGetCalculatedAttributeForProfileError)

    BatchGetCalculatedAttributeForProfileIdList.member = Shapes::ShapeRef.new(shape: uuid)

    BatchGetCalculatedAttributeForProfileRequest.add_member(:calculated_attribute_name, Shapes::ShapeRef.new(shape: typeName, required: true, location: "uri", location_name: "CalculatedAttributeName"))
    BatchGetCalculatedAttributeForProfileRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    BatchGetCalculatedAttributeForProfileRequest.add_member(:profile_ids, Shapes::ShapeRef.new(shape: BatchGetCalculatedAttributeForProfileIdList, required: true, location_name: "ProfileIds"))
    BatchGetCalculatedAttributeForProfileRequest.add_member(:condition_overrides, Shapes::ShapeRef.new(shape: ConditionOverrides, location_name: "ConditionOverrides"))
    BatchGetCalculatedAttributeForProfileRequest.struct_class = Types::BatchGetCalculatedAttributeForProfileRequest

    BatchGetCalculatedAttributeForProfileResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchGetCalculatedAttributeForProfileErrorList, location_name: "Errors"))
    BatchGetCalculatedAttributeForProfileResponse.add_member(:calculated_attribute_values, Shapes::ShapeRef.new(shape: CalculatedAttributeValueList, location_name: "CalculatedAttributeValues"))
    BatchGetCalculatedAttributeForProfileResponse.add_member(:condition_overrides, Shapes::ShapeRef.new(shape: ConditionOverrides, location_name: "ConditionOverrides"))
    BatchGetCalculatedAttributeForProfileResponse.struct_class = Types::BatchGetCalculatedAttributeForProfileResponse

    BatchGetProfileError.add_member(:code, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "Code"))
    BatchGetProfileError.add_member(:message, Shapes::ShapeRef.new(shape: string1To1000, required: true, location_name: "Message"))
    BatchGetProfileError.add_member(:profile_id, Shapes::ShapeRef.new(shape: uuid, required: true, location_name: "ProfileId"))
    BatchGetProfileError.struct_class = Types::BatchGetProfileError

    BatchGetProfileErrorList.member = Shapes::ShapeRef.new(shape: BatchGetProfileError)

    BatchGetProfileIdList.member = Shapes::ShapeRef.new(shape: uuid)

    BatchGetProfileRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    BatchGetProfileRequest.add_member(:profile_ids, Shapes::ShapeRef.new(shape: BatchGetProfileIdList, required: true, location_name: "ProfileIds"))
    BatchGetProfileRequest.struct_class = Types::BatchGetProfileRequest

    BatchGetProfileResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchGetProfileErrorList, location_name: "Errors"))
    BatchGetProfileResponse.add_member(:profiles, Shapes::ShapeRef.new(shape: ProfileList, location_name: "Profiles"))
    BatchGetProfileResponse.struct_class = Types::BatchGetProfileResponse

    Batches.member = Shapes::ShapeRef.new(shape: Batch)

    CalculatedAttributeDefinitionsList.member = Shapes::ShapeRef.new(shape: ListCalculatedAttributeDefinitionItem)

    CalculatedAttributeDimension.add_member(:dimension_type, Shapes::ShapeRef.new(shape: AttributeDimensionType, required: true, location_name: "DimensionType"))
    CalculatedAttributeDimension.add_member(:values, Shapes::ShapeRef.new(shape: Values, required: true, location_name: "Values"))
    CalculatedAttributeDimension.add_member(:condition_overrides, Shapes::ShapeRef.new(shape: ConditionOverrides, location_name: "ConditionOverrides"))
    CalculatedAttributeDimension.struct_class = Types::CalculatedAttributeDimension

    CalculatedAttributeValue.add_member(:calculated_attribute_name, Shapes::ShapeRef.new(shape: typeName, location_name: "CalculatedAttributeName"))
    CalculatedAttributeValue.add_member(:display_name, Shapes::ShapeRef.new(shape: displayName, location_name: "DisplayName"))
    CalculatedAttributeValue.add_member(:is_data_partial, Shapes::ShapeRef.new(shape: string1To255, location_name: "IsDataPartial"))
    CalculatedAttributeValue.add_member(:profile_id, Shapes::ShapeRef.new(shape: uuid, location_name: "ProfileId"))
    CalculatedAttributeValue.add_member(:value, Shapes::ShapeRef.new(shape: string1To255, location_name: "Value"))
    CalculatedAttributeValue.add_member(:last_object_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastObjectTimestamp"))
    CalculatedAttributeValue.struct_class = Types::CalculatedAttributeValue

    CalculatedAttributeValueList.member = Shapes::ShapeRef.new(shape: CalculatedAttributeValue)

    CalculatedAttributesForProfileList.member = Shapes::ShapeRef.new(shape: ListCalculatedAttributeForProfileItem)

    CalculatedCustomAttributes.key = Shapes::ShapeRef.new(shape: typeName)
    CalculatedCustomAttributes.value = Shapes::ShapeRef.new(shape: CalculatedAttributeDimension)

    ConditionOverrides.add_member(:range, Shapes::ShapeRef.new(shape: RangeOverride, location_name: "Range"))
    ConditionOverrides.struct_class = Types::ConditionOverrides

    Conditions.add_member(:range, Shapes::ShapeRef.new(shape: Range, location_name: "Range"))
    Conditions.add_member(:object_count, Shapes::ShapeRef.new(shape: ObjectCount, location_name: "ObjectCount"))
    Conditions.add_member(:threshold, Shapes::ShapeRef.new(shape: Threshold, location_name: "Threshold"))
    Conditions.struct_class = Types::Conditions

    ConflictResolution.add_member(:conflict_resolving_model, Shapes::ShapeRef.new(shape: ConflictResolvingModel, required: true, location_name: "ConflictResolvingModel"))
    ConflictResolution.add_member(:source_name, Shapes::ShapeRef.new(shape: string1To255, location_name: "SourceName"))
    ConflictResolution.struct_class = Types::ConflictResolution

    ConnectorOperator.add_member(:marketo, Shapes::ShapeRef.new(shape: MarketoConnectorOperator, location_name: "Marketo"))
    ConnectorOperator.add_member(:s3, Shapes::ShapeRef.new(shape: S3ConnectorOperator, location_name: "S3"))
    ConnectorOperator.add_member(:salesforce, Shapes::ShapeRef.new(shape: SalesforceConnectorOperator, location_name: "Salesforce"))
    ConnectorOperator.add_member(:service_now, Shapes::ShapeRef.new(shape: ServiceNowConnectorOperator, location_name: "ServiceNow"))
    ConnectorOperator.add_member(:zendesk, Shapes::ShapeRef.new(shape: ZendeskConnectorOperator, location_name: "Zendesk"))
    ConnectorOperator.struct_class = Types::ConnectorOperator

    Consolidation.add_member(:matching_attributes_list, Shapes::ShapeRef.new(shape: MatchingAttributesList, required: true, location_name: "MatchingAttributesList"))
    Consolidation.struct_class = Types::Consolidation

    ContactPreference.add_member(:key_name, Shapes::ShapeRef.new(shape: name, location_name: "KeyName"))
    ContactPreference.add_member(:key_value, Shapes::ShapeRef.new(shape: string1To255, location_name: "KeyValue"))
    ContactPreference.add_member(:profile_id, Shapes::ShapeRef.new(shape: uuid, location_name: "ProfileId"))
    ContactPreference.add_member(:contact_type, Shapes::ShapeRef.new(shape: ContactType, location_name: "ContactType"))
    ContactPreference.struct_class = Types::ContactPreference

    CreateCalculatedAttributeDefinitionRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    CreateCalculatedAttributeDefinitionRequest.add_member(:calculated_attribute_name, Shapes::ShapeRef.new(shape: typeName, required: true, location: "uri", location_name: "CalculatedAttributeName"))
    CreateCalculatedAttributeDefinitionRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: displayName, location_name: "DisplayName"))
    CreateCalculatedAttributeDefinitionRequest.add_member(:description, Shapes::ShapeRef.new(shape: sensitiveText, location_name: "Description"))
    CreateCalculatedAttributeDefinitionRequest.add_member(:attribute_details, Shapes::ShapeRef.new(shape: AttributeDetails, required: true, location_name: "AttributeDetails"))
    CreateCalculatedAttributeDefinitionRequest.add_member(:conditions, Shapes::ShapeRef.new(shape: Conditions, location_name: "Conditions"))
    CreateCalculatedAttributeDefinitionRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Filter, location_name: "Filter"))
    CreateCalculatedAttributeDefinitionRequest.add_member(:statistic, Shapes::ShapeRef.new(shape: Statistic, required: true, location_name: "Statistic"))
    CreateCalculatedAttributeDefinitionRequest.add_member(:use_historical_data, Shapes::ShapeRef.new(shape: optionalBoolean, location_name: "UseHistoricalData"))
    CreateCalculatedAttributeDefinitionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateCalculatedAttributeDefinitionRequest.struct_class = Types::CreateCalculatedAttributeDefinitionRequest

    CreateCalculatedAttributeDefinitionResponse.add_member(:calculated_attribute_name, Shapes::ShapeRef.new(shape: typeName, location_name: "CalculatedAttributeName"))
    CreateCalculatedAttributeDefinitionResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: displayName, location_name: "DisplayName"))
    CreateCalculatedAttributeDefinitionResponse.add_member(:description, Shapes::ShapeRef.new(shape: sensitiveText, location_name: "Description"))
    CreateCalculatedAttributeDefinitionResponse.add_member(:attribute_details, Shapes::ShapeRef.new(shape: AttributeDetails, location_name: "AttributeDetails"))
    CreateCalculatedAttributeDefinitionResponse.add_member(:conditions, Shapes::ShapeRef.new(shape: Conditions, location_name: "Conditions"))
    CreateCalculatedAttributeDefinitionResponse.add_member(:filter, Shapes::ShapeRef.new(shape: Filter, location_name: "Filter"))
    CreateCalculatedAttributeDefinitionResponse.add_member(:statistic, Shapes::ShapeRef.new(shape: Statistic, location_name: "Statistic"))
    CreateCalculatedAttributeDefinitionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreatedAt"))
    CreateCalculatedAttributeDefinitionResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastUpdatedAt"))
    CreateCalculatedAttributeDefinitionResponse.add_member(:use_historical_data, Shapes::ShapeRef.new(shape: optionalBoolean, location_name: "UseHistoricalData"))
    CreateCalculatedAttributeDefinitionResponse.add_member(:status, Shapes::ShapeRef.new(shape: ReadinessStatus, location_name: "Status"))
    CreateCalculatedAttributeDefinitionResponse.add_member(:readiness, Shapes::ShapeRef.new(shape: Readiness, location_name: "Readiness"))
    CreateCalculatedAttributeDefinitionResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateCalculatedAttributeDefinitionResponse.struct_class = Types::CreateCalculatedAttributeDefinitionResponse

    CreateDomainLayoutRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    CreateDomainLayoutRequest.add_member(:layout_definition_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "LayoutDefinitionName"))
    CreateDomainLayoutRequest.add_member(:description, Shapes::ShapeRef.new(shape: sensitiveText, required: true, location_name: "Description"))
    CreateDomainLayoutRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: displayName, required: true, location_name: "DisplayName"))
    CreateDomainLayoutRequest.add_member(:is_default, Shapes::ShapeRef.new(shape: boolean, location_name: "IsDefault"))
    CreateDomainLayoutRequest.add_member(:layout_type, Shapes::ShapeRef.new(shape: LayoutType, required: true, location_name: "LayoutType"))
    CreateDomainLayoutRequest.add_member(:layout, Shapes::ShapeRef.new(shape: sensitiveString1To2000000, required: true, location_name: "Layout"))
    CreateDomainLayoutRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateDomainLayoutRequest.struct_class = Types::CreateDomainLayoutRequest

    CreateDomainLayoutResponse.add_member(:layout_definition_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "LayoutDefinitionName"))
    CreateDomainLayoutResponse.add_member(:description, Shapes::ShapeRef.new(shape: sensitiveText, required: true, location_name: "Description"))
    CreateDomainLayoutResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: displayName, required: true, location_name: "DisplayName"))
    CreateDomainLayoutResponse.add_member(:is_default, Shapes::ShapeRef.new(shape: boolean, location_name: "IsDefault"))
    CreateDomainLayoutResponse.add_member(:layout_type, Shapes::ShapeRef.new(shape: LayoutType, required: true, location_name: "LayoutType"))
    CreateDomainLayoutResponse.add_member(:layout, Shapes::ShapeRef.new(shape: sensitiveString1To2000000, required: true, location_name: "Layout"))
    CreateDomainLayoutResponse.add_member(:version, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "Version"))
    CreateDomainLayoutResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateDomainLayoutResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "CreatedAt"))
    CreateDomainLayoutResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastUpdatedAt"))
    CreateDomainLayoutResponse.struct_class = Types::CreateDomainLayoutResponse

    CreateDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    CreateDomainRequest.add_member(:default_expiration_days, Shapes::ShapeRef.new(shape: expirationDaysInteger, required: true, location_name: "DefaultExpirationDays"))
    CreateDomainRequest.add_member(:default_encryption_key, Shapes::ShapeRef.new(shape: encryptionKey, location_name: "DefaultEncryptionKey"))
    CreateDomainRequest.add_member(:dead_letter_queue_url, Shapes::ShapeRef.new(shape: sqsQueueUrl, location_name: "DeadLetterQueueUrl"))
    CreateDomainRequest.add_member(:matching, Shapes::ShapeRef.new(shape: MatchingRequest, location_name: "Matching"))
    CreateDomainRequest.add_member(:rule_based_matching, Shapes::ShapeRef.new(shape: RuleBasedMatchingRequest, location_name: "RuleBasedMatching"))
    CreateDomainRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateDomainRequest.struct_class = Types::CreateDomainRequest

    CreateDomainResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "DomainName"))
    CreateDomainResponse.add_member(:default_expiration_days, Shapes::ShapeRef.new(shape: expirationDaysInteger, required: true, location_name: "DefaultExpirationDays"))
    CreateDomainResponse.add_member(:default_encryption_key, Shapes::ShapeRef.new(shape: encryptionKey, location_name: "DefaultEncryptionKey"))
    CreateDomainResponse.add_member(:dead_letter_queue_url, Shapes::ShapeRef.new(shape: sqsQueueUrl, location_name: "DeadLetterQueueUrl"))
    CreateDomainResponse.add_member(:matching, Shapes::ShapeRef.new(shape: MatchingResponse, location_name: "Matching"))
    CreateDomainResponse.add_member(:rule_based_matching, Shapes::ShapeRef.new(shape: RuleBasedMatchingResponse, location_name: "RuleBasedMatching"))
    CreateDomainResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "CreatedAt"))
    CreateDomainResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastUpdatedAt"))
    CreateDomainResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateDomainResponse.struct_class = Types::CreateDomainResponse

    CreateEventStreamRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    CreateEventStreamRequest.add_member(:uri, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "Uri"))
    CreateEventStreamRequest.add_member(:event_stream_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "EventStreamName"))
    CreateEventStreamRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateEventStreamRequest.struct_class = Types::CreateEventStreamRequest

    CreateEventStreamResponse.add_member(:event_stream_arn, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "EventStreamArn"))
    CreateEventStreamResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateEventStreamResponse.struct_class = Types::CreateEventStreamResponse

    CreateEventTriggerRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    CreateEventTriggerRequest.add_member(:event_trigger_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "EventTriggerName"))
    CreateEventTriggerRequest.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, required: true, location_name: "ObjectTypeName"))
    CreateEventTriggerRequest.add_member(:description, Shapes::ShapeRef.new(shape: sensitiveText, location_name: "Description"))
    CreateEventTriggerRequest.add_member(:event_trigger_conditions, Shapes::ShapeRef.new(shape: EventTriggerConditions, required: true, location_name: "EventTriggerConditions"))
    CreateEventTriggerRequest.add_member(:segment_filter, Shapes::ShapeRef.new(shape: name, location_name: "SegmentFilter"))
    CreateEventTriggerRequest.add_member(:event_trigger_limits, Shapes::ShapeRef.new(shape: EventTriggerLimits, location_name: "EventTriggerLimits"))
    CreateEventTriggerRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateEventTriggerRequest.struct_class = Types::CreateEventTriggerRequest

    CreateEventTriggerResponse.add_member(:event_trigger_name, Shapes::ShapeRef.new(shape: name, location_name: "EventTriggerName"))
    CreateEventTriggerResponse.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, location_name: "ObjectTypeName"))
    CreateEventTriggerResponse.add_member(:description, Shapes::ShapeRef.new(shape: sensitiveText, location_name: "Description"))
    CreateEventTriggerResponse.add_member(:event_trigger_conditions, Shapes::ShapeRef.new(shape: EventTriggerConditions, location_name: "EventTriggerConditions"))
    CreateEventTriggerResponse.add_member(:segment_filter, Shapes::ShapeRef.new(shape: name, location_name: "SegmentFilter"))
    CreateEventTriggerResponse.add_member(:event_trigger_limits, Shapes::ShapeRef.new(shape: EventTriggerLimits, location_name: "EventTriggerLimits"))
    CreateEventTriggerResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreatedAt"))
    CreateEventTriggerResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastUpdatedAt"))
    CreateEventTriggerResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateEventTriggerResponse.struct_class = Types::CreateEventTriggerResponse

    CreateIntegrationWorkflowRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    CreateIntegrationWorkflowRequest.add_member(:workflow_type, Shapes::ShapeRef.new(shape: WorkflowType, required: true, location_name: "WorkflowType"))
    CreateIntegrationWorkflowRequest.add_member(:integration_config, Shapes::ShapeRef.new(shape: IntegrationConfig, required: true, location_name: "IntegrationConfig"))
    CreateIntegrationWorkflowRequest.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, required: true, location_name: "ObjectTypeName"))
    CreateIntegrationWorkflowRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateIntegrationWorkflowRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateIntegrationWorkflowRequest.struct_class = Types::CreateIntegrationWorkflowRequest

    CreateIntegrationWorkflowResponse.add_member(:workflow_id, Shapes::ShapeRef.new(shape: uuid, required: true, location_name: "WorkflowId"))
    CreateIntegrationWorkflowResponse.add_member(:message, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "Message"))
    CreateIntegrationWorkflowResponse.struct_class = Types::CreateIntegrationWorkflowResponse

    CreateProfileRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    CreateProfileRequest.add_member(:account_number, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "AccountNumber"))
    CreateProfileRequest.add_member(:additional_information, Shapes::ShapeRef.new(shape: sensitiveString1To1000, location_name: "AdditionalInformation"))
    CreateProfileRequest.add_member(:party_type, Shapes::ShapeRef.new(shape: PartyType, deprecated: true, location_name: "PartyType"))
    CreateProfileRequest.add_member(:business_name, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "BusinessName"))
    CreateProfileRequest.add_member(:first_name, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "FirstName"))
    CreateProfileRequest.add_member(:middle_name, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "MiddleName"))
    CreateProfileRequest.add_member(:last_name, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "LastName"))
    CreateProfileRequest.add_member(:birth_date, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "BirthDate"))
    CreateProfileRequest.add_member(:gender, Shapes::ShapeRef.new(shape: Gender, deprecated: true, location_name: "Gender"))
    CreateProfileRequest.add_member(:phone_number, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "PhoneNumber"))
    CreateProfileRequest.add_member(:mobile_phone_number, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "MobilePhoneNumber"))
    CreateProfileRequest.add_member(:home_phone_number, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "HomePhoneNumber"))
    CreateProfileRequest.add_member(:business_phone_number, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "BusinessPhoneNumber"))
    CreateProfileRequest.add_member(:email_address, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "EmailAddress"))
    CreateProfileRequest.add_member(:personal_email_address, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "PersonalEmailAddress"))
    CreateProfileRequest.add_member(:business_email_address, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "BusinessEmailAddress"))
    CreateProfileRequest.add_member(:address, Shapes::ShapeRef.new(shape: Address, location_name: "Address"))
    CreateProfileRequest.add_member(:shipping_address, Shapes::ShapeRef.new(shape: Address, location_name: "ShippingAddress"))
    CreateProfileRequest.add_member(:mailing_address, Shapes::ShapeRef.new(shape: Address, location_name: "MailingAddress"))
    CreateProfileRequest.add_member(:billing_address, Shapes::ShapeRef.new(shape: Address, location_name: "BillingAddress"))
    CreateProfileRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    CreateProfileRequest.add_member(:party_type_string, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "PartyTypeString"))
    CreateProfileRequest.add_member(:gender_string, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "GenderString"))
    CreateProfileRequest.add_member(:profile_type, Shapes::ShapeRef.new(shape: ProfileType, location_name: "ProfileType"))
    CreateProfileRequest.add_member(:engagement_preferences, Shapes::ShapeRef.new(shape: EngagementPreferences, location_name: "EngagementPreferences"))
    CreateProfileRequest.struct_class = Types::CreateProfileRequest

    CreateProfileResponse.add_member(:profile_id, Shapes::ShapeRef.new(shape: uuid, required: true, location_name: "ProfileId"))
    CreateProfileResponse.struct_class = Types::CreateProfileResponse

    CreateSegmentDefinitionRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    CreateSegmentDefinitionRequest.add_member(:segment_definition_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "SegmentDefinitionName"))
    CreateSegmentDefinitionRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "DisplayName"))
    CreateSegmentDefinitionRequest.add_member(:description, Shapes::ShapeRef.new(shape: sensitiveText, location_name: "Description"))
    CreateSegmentDefinitionRequest.add_member(:segment_groups, Shapes::ShapeRef.new(shape: SegmentGroup, required: true, location_name: "SegmentGroups"))
    CreateSegmentDefinitionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateSegmentDefinitionRequest.struct_class = Types::CreateSegmentDefinitionRequest

    CreateSegmentDefinitionResponse.add_member(:segment_definition_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "SegmentDefinitionName"))
    CreateSegmentDefinitionResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: string1To255, location_name: "DisplayName"))
    CreateSegmentDefinitionResponse.add_member(:description, Shapes::ShapeRef.new(shape: sensitiveText, location_name: "Description"))
    CreateSegmentDefinitionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreatedAt"))
    CreateSegmentDefinitionResponse.add_member(:segment_definition_arn, Shapes::ShapeRef.new(shape: SegmentDefinitionArn, location_name: "SegmentDefinitionArn"))
    CreateSegmentDefinitionResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateSegmentDefinitionResponse.struct_class = Types::CreateSegmentDefinitionResponse

    CreateSegmentEstimateRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    CreateSegmentEstimateRequest.add_member(:segment_query, Shapes::ShapeRef.new(shape: SegmentGroupStructure, required: true, location_name: "SegmentQuery"))
    CreateSegmentEstimateRequest.struct_class = Types::CreateSegmentEstimateRequest

    CreateSegmentEstimateResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, location_name: "DomainName"))
    CreateSegmentEstimateResponse.add_member(:estimate_id, Shapes::ShapeRef.new(shape: string1To255, location_name: "EstimateId"))
    CreateSegmentEstimateResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "StatusCode"))
    CreateSegmentEstimateResponse.struct_class = Types::CreateSegmentEstimateResponse

    CreateSegmentSnapshotRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    CreateSegmentSnapshotRequest.add_member(:segment_definition_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "SegmentDefinitionName"))
    CreateSegmentSnapshotRequest.add_member(:data_format, Shapes::ShapeRef.new(shape: DataFormat, required: true, location_name: "DataFormat"))
    CreateSegmentSnapshotRequest.add_member(:encryption_key, Shapes::ShapeRef.new(shape: encryptionKey, location_name: "EncryptionKey"))
    CreateSegmentSnapshotRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    CreateSegmentSnapshotRequest.add_member(:destination_uri, Shapes::ShapeRef.new(shape: string1To255, location_name: "DestinationUri"))
    CreateSegmentSnapshotRequest.struct_class = Types::CreateSegmentSnapshotRequest

    CreateSegmentSnapshotResponse.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: uuid, required: true, location_name: "SnapshotId"))
    CreateSegmentSnapshotResponse.struct_class = Types::CreateSegmentSnapshotResponse

    CreateUploadJobRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    CreateUploadJobRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "DisplayName"))
    CreateUploadJobRequest.add_member(:fields, Shapes::ShapeRef.new(shape: FieldMap, required: true, location_name: "Fields"))
    CreateUploadJobRequest.add_member(:unique_key, Shapes::ShapeRef.new(shape: text, required: true, location_name: "UniqueKey"))
    CreateUploadJobRequest.add_member(:data_expiry, Shapes::ShapeRef.new(shape: expirationDaysInteger, location_name: "DataExpiry"))
    CreateUploadJobRequest.struct_class = Types::CreateUploadJobRequest

    CreateUploadJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: uuid, required: true, location_name: "JobId"))
    CreateUploadJobResponse.struct_class = Types::CreateUploadJobResponse

    CustomAttributes.key = Shapes::ShapeRef.new(shape: typeName)
    CustomAttributes.value = Shapes::ShapeRef.new(shape: AttributeDimension)

    DateDimension.add_member(:dimension_type, Shapes::ShapeRef.new(shape: DateDimensionType, required: true, location_name: "DimensionType"))
    DateDimension.add_member(:values, Shapes::ShapeRef.new(shape: DateValues, required: true, location_name: "Values"))
    DateDimension.struct_class = Types::DateDimension

    DateValues.member = Shapes::ShapeRef.new(shape: String)

    DeleteCalculatedAttributeDefinitionRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    DeleteCalculatedAttributeDefinitionRequest.add_member(:calculated_attribute_name, Shapes::ShapeRef.new(shape: typeName, required: true, location: "uri", location_name: "CalculatedAttributeName"))
    DeleteCalculatedAttributeDefinitionRequest.struct_class = Types::DeleteCalculatedAttributeDefinitionRequest

    DeleteCalculatedAttributeDefinitionResponse.struct_class = Types::DeleteCalculatedAttributeDefinitionResponse

    DeleteDomainLayoutRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    DeleteDomainLayoutRequest.add_member(:layout_definition_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "LayoutDefinitionName"))
    DeleteDomainLayoutRequest.struct_class = Types::DeleteDomainLayoutRequest

    DeleteDomainLayoutResponse.add_member(:message, Shapes::ShapeRef.new(shape: message, required: true, location_name: "Message"))
    DeleteDomainLayoutResponse.struct_class = Types::DeleteDomainLayoutResponse

    DeleteDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    DeleteDomainRequest.struct_class = Types::DeleteDomainRequest

    DeleteDomainResponse.add_member(:message, Shapes::ShapeRef.new(shape: message, required: true, location_name: "Message"))
    DeleteDomainResponse.struct_class = Types::DeleteDomainResponse

    DeleteEventStreamRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    DeleteEventStreamRequest.add_member(:event_stream_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "EventStreamName"))
    DeleteEventStreamRequest.struct_class = Types::DeleteEventStreamRequest

    DeleteEventStreamResponse.struct_class = Types::DeleteEventStreamResponse

    DeleteEventTriggerRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    DeleteEventTriggerRequest.add_member(:event_trigger_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "EventTriggerName"))
    DeleteEventTriggerRequest.struct_class = Types::DeleteEventTriggerRequest

    DeleteEventTriggerResponse.add_member(:message, Shapes::ShapeRef.new(shape: message, required: true, location_name: "Message"))
    DeleteEventTriggerResponse.struct_class = Types::DeleteEventTriggerResponse

    DeleteIntegrationRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    DeleteIntegrationRequest.add_member(:uri, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "Uri"))
    DeleteIntegrationRequest.struct_class = Types::DeleteIntegrationRequest

    DeleteIntegrationResponse.add_member(:message, Shapes::ShapeRef.new(shape: message, required: true, location_name: "Message"))
    DeleteIntegrationResponse.struct_class = Types::DeleteIntegrationResponse

    DeleteProfileKeyRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: uuid, required: true, location_name: "ProfileId"))
    DeleteProfileKeyRequest.add_member(:key_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "KeyName"))
    DeleteProfileKeyRequest.add_member(:values, Shapes::ShapeRef.new(shape: requestValueList, required: true, location_name: "Values"))
    DeleteProfileKeyRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    DeleteProfileKeyRequest.struct_class = Types::DeleteProfileKeyRequest

    DeleteProfileKeyResponse.add_member(:message, Shapes::ShapeRef.new(shape: message, location_name: "Message"))
    DeleteProfileKeyResponse.struct_class = Types::DeleteProfileKeyResponse

    DeleteProfileObjectRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: uuid, required: true, location_name: "ProfileId"))
    DeleteProfileObjectRequest.add_member(:profile_object_unique_key, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "ProfileObjectUniqueKey"))
    DeleteProfileObjectRequest.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, required: true, location_name: "ObjectTypeName"))
    DeleteProfileObjectRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    DeleteProfileObjectRequest.struct_class = Types::DeleteProfileObjectRequest

    DeleteProfileObjectResponse.add_member(:message, Shapes::ShapeRef.new(shape: message, location_name: "Message"))
    DeleteProfileObjectResponse.struct_class = Types::DeleteProfileObjectResponse

    DeleteProfileObjectTypeRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    DeleteProfileObjectTypeRequest.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, required: true, location: "uri", location_name: "ObjectTypeName"))
    DeleteProfileObjectTypeRequest.struct_class = Types::DeleteProfileObjectTypeRequest

    DeleteProfileObjectTypeResponse.add_member(:message, Shapes::ShapeRef.new(shape: message, required: true, location_name: "Message"))
    DeleteProfileObjectTypeResponse.struct_class = Types::DeleteProfileObjectTypeResponse

    DeleteProfileRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: uuid, required: true, location_name: "ProfileId"))
    DeleteProfileRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    DeleteProfileRequest.struct_class = Types::DeleteProfileRequest

    DeleteProfileResponse.add_member(:message, Shapes::ShapeRef.new(shape: message, location_name: "Message"))
    DeleteProfileResponse.struct_class = Types::DeleteProfileResponse

    DeleteSegmentDefinitionRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    DeleteSegmentDefinitionRequest.add_member(:segment_definition_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "SegmentDefinitionName"))
    DeleteSegmentDefinitionRequest.struct_class = Types::DeleteSegmentDefinitionRequest

    DeleteSegmentDefinitionResponse.add_member(:message, Shapes::ShapeRef.new(shape: string1To1000, location_name: "Message"))
    DeleteSegmentDefinitionResponse.struct_class = Types::DeleteSegmentDefinitionResponse

    DeleteWorkflowRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    DeleteWorkflowRequest.add_member(:workflow_id, Shapes::ShapeRef.new(shape: string1To255, required: true, location: "uri", location_name: "WorkflowId"))
    DeleteWorkflowRequest.struct_class = Types::DeleteWorkflowRequest

    DeleteWorkflowResponse.struct_class = Types::DeleteWorkflowResponse

    DestinationSummary.add_member(:uri, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "Uri"))
    DestinationSummary.add_member(:status, Shapes::ShapeRef.new(shape: EventStreamDestinationStatus, required: true, location_name: "Status"))
    DestinationSummary.add_member(:unhealthy_since, Shapes::ShapeRef.new(shape: timestamp, location_name: "UnhealthySince"))
    DestinationSummary.struct_class = Types::DestinationSummary

    DetectProfileObjectTypeRequest.add_member(:objects, Shapes::ShapeRef.new(shape: Objects, required: true, location_name: "Objects"))
    DetectProfileObjectTypeRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    DetectProfileObjectTypeRequest.struct_class = Types::DetectProfileObjectTypeRequest

    DetectProfileObjectTypeResponse.add_member(:detected_profile_object_types, Shapes::ShapeRef.new(shape: DetectedProfileObjectTypes, location_name: "DetectedProfileObjectTypes"))
    DetectProfileObjectTypeResponse.struct_class = Types::DetectProfileObjectTypeResponse

    DetectedProfileObjectType.add_member(:source_last_updated_timestamp_format, Shapes::ShapeRef.new(shape: string1To255, location_name: "SourceLastUpdatedTimestampFormat"))
    DetectedProfileObjectType.add_member(:fields, Shapes::ShapeRef.new(shape: FieldMap, location_name: "Fields"))
    DetectedProfileObjectType.add_member(:keys, Shapes::ShapeRef.new(shape: KeyMap, location_name: "Keys"))
    DetectedProfileObjectType.struct_class = Types::DetectedProfileObjectType

    DetectedProfileObjectTypes.member = Shapes::ShapeRef.new(shape: DetectedProfileObjectType)

    Dimension.add_member(:profile_attributes, Shapes::ShapeRef.new(shape: ProfileAttributes, location_name: "ProfileAttributes"))
    Dimension.add_member(:calculated_attributes, Shapes::ShapeRef.new(shape: CalculatedCustomAttributes, location_name: "CalculatedAttributes"))
    Dimension.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Dimension.add_member_subclass(:profile_attributes, Types::Dimension::ProfileAttributes)
    Dimension.add_member_subclass(:calculated_attributes, Types::Dimension::CalculatedAttributes)
    Dimension.add_member_subclass(:unknown, Types::Dimension::Unknown)
    Dimension.struct_class = Types::Dimension

    DimensionList.member = Shapes::ShapeRef.new(shape: Dimension)

    DomainList.member = Shapes::ShapeRef.new(shape: ListDomainItem)

    DomainStats.add_member(:profile_count, Shapes::ShapeRef.new(shape: long, location_name: "ProfileCount"))
    DomainStats.add_member(:metering_profile_count, Shapes::ShapeRef.new(shape: long, location_name: "MeteringProfileCount"))
    DomainStats.add_member(:object_count, Shapes::ShapeRef.new(shape: long, location_name: "ObjectCount"))
    DomainStats.add_member(:total_size, Shapes::ShapeRef.new(shape: long, location_name: "TotalSize"))
    DomainStats.struct_class = Types::DomainStats

    EmailList.member = Shapes::ShapeRef.new(shape: string1To255)

    EmailPreferenceList.member = Shapes::ShapeRef.new(shape: ContactPreference)

    EngagementPreferences.add_member(:phone, Shapes::ShapeRef.new(shape: PhonePreferenceList, location_name: "Phone"))
    EngagementPreferences.add_member(:email, Shapes::ShapeRef.new(shape: EmailPreferenceList, location_name: "Email"))
    EngagementPreferences.struct_class = Types::EngagementPreferences

    EventStreamDestinationDetails.add_member(:uri, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "Uri"))
    EventStreamDestinationDetails.add_member(:status, Shapes::ShapeRef.new(shape: EventStreamDestinationStatus, required: true, location_name: "Status"))
    EventStreamDestinationDetails.add_member(:unhealthy_since, Shapes::ShapeRef.new(shape: timestamp, location_name: "UnhealthySince"))
    EventStreamDestinationDetails.add_member(:message, Shapes::ShapeRef.new(shape: string1To1000, location_name: "Message"))
    EventStreamDestinationDetails.struct_class = Types::EventStreamDestinationDetails

    EventStreamSummary.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "DomainName"))
    EventStreamSummary.add_member(:event_stream_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "EventStreamName"))
    EventStreamSummary.add_member(:event_stream_arn, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "EventStreamArn"))
    EventStreamSummary.add_member(:state, Shapes::ShapeRef.new(shape: EventStreamState, required: true, location_name: "State"))
    EventStreamSummary.add_member(:stopped_since, Shapes::ShapeRef.new(shape: timestamp, location_name: "StoppedSince"))
    EventStreamSummary.add_member(:destination_summary, Shapes::ShapeRef.new(shape: DestinationSummary, location_name: "DestinationSummary"))
    EventStreamSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    EventStreamSummary.struct_class = Types::EventStreamSummary

    EventStreamSummaryList.member = Shapes::ShapeRef.new(shape: EventStreamSummary)

    EventTriggerCondition.add_member(:event_trigger_dimensions, Shapes::ShapeRef.new(shape: EventTriggerDimensions, required: true, location_name: "EventTriggerDimensions"))
    EventTriggerCondition.add_member(:logical_operator, Shapes::ShapeRef.new(shape: EventTriggerLogicalOperator, required: true, location_name: "LogicalOperator"))
    EventTriggerCondition.struct_class = Types::EventTriggerCondition

    EventTriggerConditions.member = Shapes::ShapeRef.new(shape: EventTriggerCondition)

    EventTriggerDimension.add_member(:object_attributes, Shapes::ShapeRef.new(shape: ObjectAttributes, required: true, location_name: "ObjectAttributes"))
    EventTriggerDimension.struct_class = Types::EventTriggerDimension

    EventTriggerDimensions.member = Shapes::ShapeRef.new(shape: EventTriggerDimension)

    EventTriggerLimits.add_member(:event_expiration, Shapes::ShapeRef.new(shape: optionalLong, location_name: "EventExpiration"))
    EventTriggerLimits.add_member(:periods, Shapes::ShapeRef.new(shape: Periods, location_name: "Periods"))
    EventTriggerLimits.struct_class = Types::EventTriggerLimits

    EventTriggerNames.member = Shapes::ShapeRef.new(shape: name)

    EventTriggerSummaryItem.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, location_name: "ObjectTypeName"))
    EventTriggerSummaryItem.add_member(:event_trigger_name, Shapes::ShapeRef.new(shape: name, location_name: "EventTriggerName"))
    EventTriggerSummaryItem.add_member(:description, Shapes::ShapeRef.new(shape: text, location_name: "Description"))
    EventTriggerSummaryItem.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreatedAt"))
    EventTriggerSummaryItem.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastUpdatedAt"))
    EventTriggerSummaryItem.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    EventTriggerSummaryItem.struct_class = Types::EventTriggerSummaryItem

    EventTriggerSummaryList.member = Shapes::ShapeRef.new(shape: EventTriggerSummaryItem)

    EventTriggerValues.member = Shapes::ShapeRef.new(shape: string1To255)

    ExportingConfig.add_member(:s3_exporting, Shapes::ShapeRef.new(shape: S3ExportingConfig, location_name: "S3Exporting"))
    ExportingConfig.struct_class = Types::ExportingConfig

    ExportingLocation.add_member(:s3_exporting, Shapes::ShapeRef.new(shape: S3ExportingLocation, location_name: "S3Exporting"))
    ExportingLocation.struct_class = Types::ExportingLocation

    ExtraLengthValueProfileDimension.add_member(:dimension_type, Shapes::ShapeRef.new(shape: StringDimensionType, required: true, location_name: "DimensionType"))
    ExtraLengthValueProfileDimension.add_member(:values, Shapes::ShapeRef.new(shape: ExtraLengthValues, required: true, location_name: "Values"))
    ExtraLengthValueProfileDimension.struct_class = Types::ExtraLengthValueProfileDimension

    ExtraLengthValues.member = Shapes::ShapeRef.new(shape: string1To1000)

    Failures.member = Shapes::ShapeRef.new(shape: ProfileQueryFailures)

    FieldMap.key = Shapes::ShapeRef.new(shape: fieldName)
    FieldMap.value = Shapes::ShapeRef.new(shape: ObjectTypeField)

    FieldNameList.member = Shapes::ShapeRef.new(shape: name)

    FieldSourceProfileIds.add_member(:account_number, Shapes::ShapeRef.new(shape: uuid, location_name: "AccountNumber"))
    FieldSourceProfileIds.add_member(:additional_information, Shapes::ShapeRef.new(shape: uuid, location_name: "AdditionalInformation"))
    FieldSourceProfileIds.add_member(:party_type, Shapes::ShapeRef.new(shape: uuid, location_name: "PartyType"))
    FieldSourceProfileIds.add_member(:business_name, Shapes::ShapeRef.new(shape: uuid, location_name: "BusinessName"))
    FieldSourceProfileIds.add_member(:first_name, Shapes::ShapeRef.new(shape: uuid, location_name: "FirstName"))
    FieldSourceProfileIds.add_member(:middle_name, Shapes::ShapeRef.new(shape: uuid, location_name: "MiddleName"))
    FieldSourceProfileIds.add_member(:last_name, Shapes::ShapeRef.new(shape: uuid, location_name: "LastName"))
    FieldSourceProfileIds.add_member(:birth_date, Shapes::ShapeRef.new(shape: uuid, location_name: "BirthDate"))
    FieldSourceProfileIds.add_member(:gender, Shapes::ShapeRef.new(shape: uuid, location_name: "Gender"))
    FieldSourceProfileIds.add_member(:phone_number, Shapes::ShapeRef.new(shape: uuid, location_name: "PhoneNumber"))
    FieldSourceProfileIds.add_member(:mobile_phone_number, Shapes::ShapeRef.new(shape: uuid, location_name: "MobilePhoneNumber"))
    FieldSourceProfileIds.add_member(:home_phone_number, Shapes::ShapeRef.new(shape: uuid, location_name: "HomePhoneNumber"))
    FieldSourceProfileIds.add_member(:business_phone_number, Shapes::ShapeRef.new(shape: uuid, location_name: "BusinessPhoneNumber"))
    FieldSourceProfileIds.add_member(:email_address, Shapes::ShapeRef.new(shape: uuid, location_name: "EmailAddress"))
    FieldSourceProfileIds.add_member(:personal_email_address, Shapes::ShapeRef.new(shape: uuid, location_name: "PersonalEmailAddress"))
    FieldSourceProfileIds.add_member(:business_email_address, Shapes::ShapeRef.new(shape: uuid, location_name: "BusinessEmailAddress"))
    FieldSourceProfileIds.add_member(:address, Shapes::ShapeRef.new(shape: uuid, location_name: "Address"))
    FieldSourceProfileIds.add_member(:shipping_address, Shapes::ShapeRef.new(shape: uuid, location_name: "ShippingAddress"))
    FieldSourceProfileIds.add_member(:mailing_address, Shapes::ShapeRef.new(shape: uuid, location_name: "MailingAddress"))
    FieldSourceProfileIds.add_member(:billing_address, Shapes::ShapeRef.new(shape: uuid, location_name: "BillingAddress"))
    FieldSourceProfileIds.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeSourceIdMap, location_name: "Attributes"))
    FieldSourceProfileIds.add_member(:profile_type, Shapes::ShapeRef.new(shape: uuid, location_name: "ProfileType"))
    FieldSourceProfileIds.add_member(:engagement_preferences, Shapes::ShapeRef.new(shape: uuid, location_name: "EngagementPreferences"))
    FieldSourceProfileIds.struct_class = Types::FieldSourceProfileIds

    Filter.add_member(:include, Shapes::ShapeRef.new(shape: Include, required: true, location_name: "Include"))
    Filter.add_member(:groups, Shapes::ShapeRef.new(shape: GroupList, required: true, location_name: "Groups"))
    Filter.struct_class = Types::Filter

    FilterAttributeDimension.add_member(:dimension_type, Shapes::ShapeRef.new(shape: FilterDimensionType, required: true, location_name: "DimensionType"))
    FilterAttributeDimension.add_member(:values, Shapes::ShapeRef.new(shape: ValueList, required: true, location_name: "Values"))
    FilterAttributeDimension.struct_class = Types::FilterAttributeDimension

    FilterDimension.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeMap, required: true, location_name: "Attributes"))
    FilterDimension.struct_class = Types::FilterDimension

    FilterDimensionList.member = Shapes::ShapeRef.new(shape: FilterDimension)

    FilterGroup.add_member(:type, Shapes::ShapeRef.new(shape: Type, required: true, location_name: "Type"))
    FilterGroup.add_member(:dimensions, Shapes::ShapeRef.new(shape: FilterDimensionList, required: true, location_name: "Dimensions"))
    FilterGroup.struct_class = Types::FilterGroup

    FlowDefinition.add_member(:description, Shapes::ShapeRef.new(shape: FlowDescription, location_name: "Description"))
    FlowDefinition.add_member(:flow_name, Shapes::ShapeRef.new(shape: FlowName, required: true, location_name: "FlowName"))
    FlowDefinition.add_member(:kms_arn, Shapes::ShapeRef.new(shape: KmsArn, required: true, location_name: "KmsArn"))
    FlowDefinition.add_member(:source_flow_config, Shapes::ShapeRef.new(shape: SourceFlowConfig, required: true, location_name: "SourceFlowConfig"))
    FlowDefinition.add_member(:tasks, Shapes::ShapeRef.new(shape: Tasks, required: true, location_name: "Tasks"))
    FlowDefinition.add_member(:trigger_config, Shapes::ShapeRef.new(shape: TriggerConfig, required: true, location_name: "TriggerConfig"))
    FlowDefinition.struct_class = Types::FlowDefinition

    FoundByKeyValue.add_member(:key_name, Shapes::ShapeRef.new(shape: name, location_name: "KeyName"))
    FoundByKeyValue.add_member(:values, Shapes::ShapeRef.new(shape: requestValueList, location_name: "Values"))
    FoundByKeyValue.struct_class = Types::FoundByKeyValue

    GetAutoMergingPreviewRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    GetAutoMergingPreviewRequest.add_member(:consolidation, Shapes::ShapeRef.new(shape: Consolidation, required: true, location_name: "Consolidation"))
    GetAutoMergingPreviewRequest.add_member(:conflict_resolution, Shapes::ShapeRef.new(shape: ConflictResolution, required: true, location_name: "ConflictResolution"))
    GetAutoMergingPreviewRequest.add_member(:min_allowed_confidence_score_for_merging, Shapes::ShapeRef.new(shape: Double0To1, location_name: "MinAllowedConfidenceScoreForMerging"))
    GetAutoMergingPreviewRequest.struct_class = Types::GetAutoMergingPreviewRequest

    GetAutoMergingPreviewResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "DomainName"))
    GetAutoMergingPreviewResponse.add_member(:number_of_matches_in_sample, Shapes::ShapeRef.new(shape: long, location_name: "NumberOfMatchesInSample"))
    GetAutoMergingPreviewResponse.add_member(:number_of_profiles_in_sample, Shapes::ShapeRef.new(shape: long, location_name: "NumberOfProfilesInSample"))
    GetAutoMergingPreviewResponse.add_member(:number_of_profiles_will_be_merged, Shapes::ShapeRef.new(shape: long, location_name: "NumberOfProfilesWillBeMerged"))
    GetAutoMergingPreviewResponse.struct_class = Types::GetAutoMergingPreviewResponse

    GetCalculatedAttributeDefinitionRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    GetCalculatedAttributeDefinitionRequest.add_member(:calculated_attribute_name, Shapes::ShapeRef.new(shape: typeName, required: true, location: "uri", location_name: "CalculatedAttributeName"))
    GetCalculatedAttributeDefinitionRequest.struct_class = Types::GetCalculatedAttributeDefinitionRequest

    GetCalculatedAttributeDefinitionResponse.add_member(:calculated_attribute_name, Shapes::ShapeRef.new(shape: typeName, location_name: "CalculatedAttributeName"))
    GetCalculatedAttributeDefinitionResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: displayName, location_name: "DisplayName"))
    GetCalculatedAttributeDefinitionResponse.add_member(:description, Shapes::ShapeRef.new(shape: sensitiveText, location_name: "Description"))
    GetCalculatedAttributeDefinitionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreatedAt"))
    GetCalculatedAttributeDefinitionResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastUpdatedAt"))
    GetCalculatedAttributeDefinitionResponse.add_member(:statistic, Shapes::ShapeRef.new(shape: Statistic, location_name: "Statistic"))
    GetCalculatedAttributeDefinitionResponse.add_member(:filter, Shapes::ShapeRef.new(shape: Filter, location_name: "Filter"))
    GetCalculatedAttributeDefinitionResponse.add_member(:conditions, Shapes::ShapeRef.new(shape: Conditions, location_name: "Conditions"))
    GetCalculatedAttributeDefinitionResponse.add_member(:attribute_details, Shapes::ShapeRef.new(shape: AttributeDetails, location_name: "AttributeDetails"))
    GetCalculatedAttributeDefinitionResponse.add_member(:use_historical_data, Shapes::ShapeRef.new(shape: optionalBoolean, location_name: "UseHistoricalData"))
    GetCalculatedAttributeDefinitionResponse.add_member(:status, Shapes::ShapeRef.new(shape: ReadinessStatus, location_name: "Status"))
    GetCalculatedAttributeDefinitionResponse.add_member(:readiness, Shapes::ShapeRef.new(shape: Readiness, location_name: "Readiness"))
    GetCalculatedAttributeDefinitionResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetCalculatedAttributeDefinitionResponse.struct_class = Types::GetCalculatedAttributeDefinitionResponse

    GetCalculatedAttributeForProfileRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    GetCalculatedAttributeForProfileRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: uuid, required: true, location: "uri", location_name: "ProfileId"))
    GetCalculatedAttributeForProfileRequest.add_member(:calculated_attribute_name, Shapes::ShapeRef.new(shape: typeName, required: true, location: "uri", location_name: "CalculatedAttributeName"))
    GetCalculatedAttributeForProfileRequest.struct_class = Types::GetCalculatedAttributeForProfileRequest

    GetCalculatedAttributeForProfileResponse.add_member(:calculated_attribute_name, Shapes::ShapeRef.new(shape: typeName, location_name: "CalculatedAttributeName"))
    GetCalculatedAttributeForProfileResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: displayName, location_name: "DisplayName"))
    GetCalculatedAttributeForProfileResponse.add_member(:is_data_partial, Shapes::ShapeRef.new(shape: string1To255, location_name: "IsDataPartial"))
    GetCalculatedAttributeForProfileResponse.add_member(:value, Shapes::ShapeRef.new(shape: string1To255, location_name: "Value"))
    GetCalculatedAttributeForProfileResponse.add_member(:last_object_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastObjectTimestamp"))
    GetCalculatedAttributeForProfileResponse.struct_class = Types::GetCalculatedAttributeForProfileResponse

    GetDomainLayoutRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    GetDomainLayoutRequest.add_member(:layout_definition_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "LayoutDefinitionName"))
    GetDomainLayoutRequest.struct_class = Types::GetDomainLayoutRequest

    GetDomainLayoutResponse.add_member(:layout_definition_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "LayoutDefinitionName"))
    GetDomainLayoutResponse.add_member(:description, Shapes::ShapeRef.new(shape: sensitiveText, required: true, location_name: "Description"))
    GetDomainLayoutResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: displayName, required: true, location_name: "DisplayName"))
    GetDomainLayoutResponse.add_member(:is_default, Shapes::ShapeRef.new(shape: boolean, location_name: "IsDefault"))
    GetDomainLayoutResponse.add_member(:layout_type, Shapes::ShapeRef.new(shape: LayoutType, required: true, location_name: "LayoutType"))
    GetDomainLayoutResponse.add_member(:layout, Shapes::ShapeRef.new(shape: sensitiveString1To2000000, required: true, location_name: "Layout"))
    GetDomainLayoutResponse.add_member(:version, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "Version"))
    GetDomainLayoutResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "CreatedAt"))
    GetDomainLayoutResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastUpdatedAt"))
    GetDomainLayoutResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetDomainLayoutResponse.struct_class = Types::GetDomainLayoutResponse

    GetDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    GetDomainRequest.struct_class = Types::GetDomainRequest

    GetDomainResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "DomainName"))
    GetDomainResponse.add_member(:default_expiration_days, Shapes::ShapeRef.new(shape: expirationDaysInteger, location_name: "DefaultExpirationDays"))
    GetDomainResponse.add_member(:default_encryption_key, Shapes::ShapeRef.new(shape: encryptionKey, location_name: "DefaultEncryptionKey"))
    GetDomainResponse.add_member(:dead_letter_queue_url, Shapes::ShapeRef.new(shape: sqsQueueUrl, location_name: "DeadLetterQueueUrl"))
    GetDomainResponse.add_member(:stats, Shapes::ShapeRef.new(shape: DomainStats, location_name: "Stats"))
    GetDomainResponse.add_member(:matching, Shapes::ShapeRef.new(shape: MatchingResponse, location_name: "Matching"))
    GetDomainResponse.add_member(:rule_based_matching, Shapes::ShapeRef.new(shape: RuleBasedMatchingResponse, location_name: "RuleBasedMatching"))
    GetDomainResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "CreatedAt"))
    GetDomainResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastUpdatedAt"))
    GetDomainResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetDomainResponse.struct_class = Types::GetDomainResponse

    GetEventStreamRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    GetEventStreamRequest.add_member(:event_stream_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "EventStreamName"))
    GetEventStreamRequest.struct_class = Types::GetEventStreamRequest

    GetEventStreamResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "DomainName"))
    GetEventStreamResponse.add_member(:event_stream_arn, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "EventStreamArn"))
    GetEventStreamResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "CreatedAt"))
    GetEventStreamResponse.add_member(:state, Shapes::ShapeRef.new(shape: EventStreamState, required: true, location_name: "State"))
    GetEventStreamResponse.add_member(:stopped_since, Shapes::ShapeRef.new(shape: timestamp, location_name: "StoppedSince"))
    GetEventStreamResponse.add_member(:destination_details, Shapes::ShapeRef.new(shape: EventStreamDestinationDetails, required: true, location_name: "DestinationDetails"))
    GetEventStreamResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetEventStreamResponse.struct_class = Types::GetEventStreamResponse

    GetEventTriggerRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    GetEventTriggerRequest.add_member(:event_trigger_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "EventTriggerName"))
    GetEventTriggerRequest.struct_class = Types::GetEventTriggerRequest

    GetEventTriggerResponse.add_member(:event_trigger_name, Shapes::ShapeRef.new(shape: name, location_name: "EventTriggerName"))
    GetEventTriggerResponse.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, location_name: "ObjectTypeName"))
    GetEventTriggerResponse.add_member(:description, Shapes::ShapeRef.new(shape: sensitiveText, location_name: "Description"))
    GetEventTriggerResponse.add_member(:event_trigger_conditions, Shapes::ShapeRef.new(shape: EventTriggerConditions, location_name: "EventTriggerConditions"))
    GetEventTriggerResponse.add_member(:segment_filter, Shapes::ShapeRef.new(shape: name, location_name: "SegmentFilter"))
    GetEventTriggerResponse.add_member(:event_trigger_limits, Shapes::ShapeRef.new(shape: EventTriggerLimits, location_name: "EventTriggerLimits"))
    GetEventTriggerResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreatedAt"))
    GetEventTriggerResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastUpdatedAt"))
    GetEventTriggerResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetEventTriggerResponse.struct_class = Types::GetEventTriggerResponse

    GetIdentityResolutionJobRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    GetIdentityResolutionJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: uuid, required: true, location: "uri", location_name: "JobId"))
    GetIdentityResolutionJobRequest.struct_class = Types::GetIdentityResolutionJobRequest

    GetIdentityResolutionJobResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, location_name: "DomainName"))
    GetIdentityResolutionJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: uuid, location_name: "JobId"))
    GetIdentityResolutionJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: IdentityResolutionJobStatus, location_name: "Status"))
    GetIdentityResolutionJobResponse.add_member(:message, Shapes::ShapeRef.new(shape: stringTo2048, location_name: "Message"))
    GetIdentityResolutionJobResponse.add_member(:job_start_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "JobStartTime"))
    GetIdentityResolutionJobResponse.add_member(:job_end_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "JobEndTime"))
    GetIdentityResolutionJobResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastUpdatedAt"))
    GetIdentityResolutionJobResponse.add_member(:job_expiration_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "JobExpirationTime"))
    GetIdentityResolutionJobResponse.add_member(:auto_merging, Shapes::ShapeRef.new(shape: AutoMerging, location_name: "AutoMerging"))
    GetIdentityResolutionJobResponse.add_member(:exporting_location, Shapes::ShapeRef.new(shape: ExportingLocation, location_name: "ExportingLocation"))
    GetIdentityResolutionJobResponse.add_member(:job_stats, Shapes::ShapeRef.new(shape: JobStats, location_name: "JobStats"))
    GetIdentityResolutionJobResponse.struct_class = Types::GetIdentityResolutionJobResponse

    GetIntegrationRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    GetIntegrationRequest.add_member(:uri, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "Uri"))
    GetIntegrationRequest.struct_class = Types::GetIntegrationRequest

    GetIntegrationResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "DomainName"))
    GetIntegrationResponse.add_member(:uri, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "Uri"))
    GetIntegrationResponse.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, location_name: "ObjectTypeName"))
    GetIntegrationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "CreatedAt"))
    GetIntegrationResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastUpdatedAt"))
    GetIntegrationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetIntegrationResponse.add_member(:object_type_names, Shapes::ShapeRef.new(shape: ObjectTypeNames, location_name: "ObjectTypeNames"))
    GetIntegrationResponse.add_member(:workflow_id, Shapes::ShapeRef.new(shape: string1To255, location_name: "WorkflowId"))
    GetIntegrationResponse.add_member(:is_unstructured, Shapes::ShapeRef.new(shape: optionalBoolean, location_name: "IsUnstructured"))
    GetIntegrationResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    GetIntegrationResponse.add_member(:event_trigger_names, Shapes::ShapeRef.new(shape: EventTriggerNames, location_name: "EventTriggerNames"))
    GetIntegrationResponse.struct_class = Types::GetIntegrationResponse

    GetMatchesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    GetMatchesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxSize100, location: "querystring", location_name: "max-results"))
    GetMatchesRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    GetMatchesRequest.struct_class = Types::GetMatchesRequest

    GetMatchesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    GetMatchesResponse.add_member(:match_generation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "MatchGenerationDate"))
    GetMatchesResponse.add_member(:potential_matches, Shapes::ShapeRef.new(shape: matchesNumber, location_name: "PotentialMatches"))
    GetMatchesResponse.add_member(:matches, Shapes::ShapeRef.new(shape: MatchesList, location_name: "Matches"))
    GetMatchesResponse.struct_class = Types::GetMatchesResponse

    GetProfileObjectTypeRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    GetProfileObjectTypeRequest.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, required: true, location: "uri", location_name: "ObjectTypeName"))
    GetProfileObjectTypeRequest.struct_class = Types::GetProfileObjectTypeRequest

    GetProfileObjectTypeResponse.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, required: true, location_name: "ObjectTypeName"))
    GetProfileObjectTypeResponse.add_member(:description, Shapes::ShapeRef.new(shape: sensitiveText, required: true, location_name: "Description"))
    GetProfileObjectTypeResponse.add_member(:template_id, Shapes::ShapeRef.new(shape: name, location_name: "TemplateId"))
    GetProfileObjectTypeResponse.add_member(:expiration_days, Shapes::ShapeRef.new(shape: expirationDaysInteger, location_name: "ExpirationDays"))
    GetProfileObjectTypeResponse.add_member(:encryption_key, Shapes::ShapeRef.new(shape: encryptionKey, location_name: "EncryptionKey"))
    GetProfileObjectTypeResponse.add_member(:allow_profile_creation, Shapes::ShapeRef.new(shape: boolean, location_name: "AllowProfileCreation"))
    GetProfileObjectTypeResponse.add_member(:source_last_updated_timestamp_format, Shapes::ShapeRef.new(shape: string1To255, location_name: "SourceLastUpdatedTimestampFormat"))
    GetProfileObjectTypeResponse.add_member(:max_available_profile_object_count, Shapes::ShapeRef.new(shape: minSize0, location_name: "MaxAvailableProfileObjectCount"))
    GetProfileObjectTypeResponse.add_member(:max_profile_object_count, Shapes::ShapeRef.new(shape: minSize1, location_name: "MaxProfileObjectCount"))
    GetProfileObjectTypeResponse.add_member(:fields, Shapes::ShapeRef.new(shape: FieldMap, location_name: "Fields"))
    GetProfileObjectTypeResponse.add_member(:keys, Shapes::ShapeRef.new(shape: KeyMap, location_name: "Keys"))
    GetProfileObjectTypeResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreatedAt"))
    GetProfileObjectTypeResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastUpdatedAt"))
    GetProfileObjectTypeResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetProfileObjectTypeResponse.struct_class = Types::GetProfileObjectTypeResponse

    GetProfileObjectTypeTemplateRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "TemplateId"))
    GetProfileObjectTypeTemplateRequest.struct_class = Types::GetProfileObjectTypeTemplateRequest

    GetProfileObjectTypeTemplateResponse.add_member(:template_id, Shapes::ShapeRef.new(shape: name, location_name: "TemplateId"))
    GetProfileObjectTypeTemplateResponse.add_member(:source_name, Shapes::ShapeRef.new(shape: name, location_name: "SourceName"))
    GetProfileObjectTypeTemplateResponse.add_member(:source_object, Shapes::ShapeRef.new(shape: name, location_name: "SourceObject"))
    GetProfileObjectTypeTemplateResponse.add_member(:allow_profile_creation, Shapes::ShapeRef.new(shape: boolean, location_name: "AllowProfileCreation"))
    GetProfileObjectTypeTemplateResponse.add_member(:source_last_updated_timestamp_format, Shapes::ShapeRef.new(shape: string1To255, location_name: "SourceLastUpdatedTimestampFormat"))
    GetProfileObjectTypeTemplateResponse.add_member(:fields, Shapes::ShapeRef.new(shape: FieldMap, location_name: "Fields"))
    GetProfileObjectTypeTemplateResponse.add_member(:keys, Shapes::ShapeRef.new(shape: KeyMap, location_name: "Keys"))
    GetProfileObjectTypeTemplateResponse.struct_class = Types::GetProfileObjectTypeTemplateResponse

    GetSegmentDefinitionRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    GetSegmentDefinitionRequest.add_member(:segment_definition_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "SegmentDefinitionName"))
    GetSegmentDefinitionRequest.struct_class = Types::GetSegmentDefinitionRequest

    GetSegmentDefinitionResponse.add_member(:segment_definition_name, Shapes::ShapeRef.new(shape: name, location_name: "SegmentDefinitionName"))
    GetSegmentDefinitionResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: string1To255, location_name: "DisplayName"))
    GetSegmentDefinitionResponse.add_member(:description, Shapes::ShapeRef.new(shape: sensitiveText, location_name: "Description"))
    GetSegmentDefinitionResponse.add_member(:segment_groups, Shapes::ShapeRef.new(shape: SegmentGroup, location_name: "SegmentGroups"))
    GetSegmentDefinitionResponse.add_member(:segment_definition_arn, Shapes::ShapeRef.new(shape: SegmentDefinitionArn, required: true, location_name: "SegmentDefinitionArn"))
    GetSegmentDefinitionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreatedAt"))
    GetSegmentDefinitionResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetSegmentDefinitionResponse.struct_class = Types::GetSegmentDefinitionResponse

    GetSegmentEstimateRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    GetSegmentEstimateRequest.add_member(:estimate_id, Shapes::ShapeRef.new(shape: string1To255, required: true, location: "uri", location_name: "EstimateId"))
    GetSegmentEstimateRequest.struct_class = Types::GetSegmentEstimateRequest

    GetSegmentEstimateResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, location_name: "DomainName"))
    GetSegmentEstimateResponse.add_member(:estimate_id, Shapes::ShapeRef.new(shape: string1To255, location_name: "EstimateId"))
    GetSegmentEstimateResponse.add_member(:status, Shapes::ShapeRef.new(shape: EstimateStatus, location_name: "Status"))
    GetSegmentEstimateResponse.add_member(:estimate, Shapes::ShapeRef.new(shape: string1To255, location_name: "Estimate"))
    GetSegmentEstimateResponse.add_member(:message, Shapes::ShapeRef.new(shape: string1To255, location_name: "Message"))
    GetSegmentEstimateResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "StatusCode"))
    GetSegmentEstimateResponse.struct_class = Types::GetSegmentEstimateResponse

    GetSegmentMembershipRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    GetSegmentMembershipRequest.add_member(:segment_definition_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "SegmentDefinitionName"))
    GetSegmentMembershipRequest.add_member(:profile_ids, Shapes::ShapeRef.new(shape: ProfileIds, required: true, location_name: "ProfileIds"))
    GetSegmentMembershipRequest.struct_class = Types::GetSegmentMembershipRequest

    GetSegmentMembershipResponse.add_member(:segment_definition_name, Shapes::ShapeRef.new(shape: name, location_name: "SegmentDefinitionName"))
    GetSegmentMembershipResponse.add_member(:profiles, Shapes::ShapeRef.new(shape: Profiles, location_name: "Profiles"))
    GetSegmentMembershipResponse.add_member(:failures, Shapes::ShapeRef.new(shape: Failures, location_name: "Failures"))
    GetSegmentMembershipResponse.struct_class = Types::GetSegmentMembershipResponse

    GetSegmentSnapshotRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    GetSegmentSnapshotRequest.add_member(:segment_definition_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "SegmentDefinitionName"))
    GetSegmentSnapshotRequest.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: uuid, required: true, location: "uri", location_name: "SnapshotId"))
    GetSegmentSnapshotRequest.struct_class = Types::GetSegmentSnapshotRequest

    GetSegmentSnapshotResponse.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: uuid, required: true, location_name: "SnapshotId"))
    GetSegmentSnapshotResponse.add_member(:status, Shapes::ShapeRef.new(shape: SegmentSnapshotStatus, required: true, location_name: "Status"))
    GetSegmentSnapshotResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: string1To1000, location_name: "StatusMessage"))
    GetSegmentSnapshotResponse.add_member(:data_format, Shapes::ShapeRef.new(shape: DataFormat, required: true, location_name: "DataFormat"))
    GetSegmentSnapshotResponse.add_member(:encryption_key, Shapes::ShapeRef.new(shape: encryptionKey, location_name: "EncryptionKey"))
    GetSegmentSnapshotResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    GetSegmentSnapshotResponse.add_member(:destination_uri, Shapes::ShapeRef.new(shape: string1To255, location_name: "DestinationUri"))
    GetSegmentSnapshotResponse.struct_class = Types::GetSegmentSnapshotResponse

    GetSimilarProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    GetSimilarProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxSize100, location: "querystring", location_name: "max-results"))
    GetSimilarProfilesRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    GetSimilarProfilesRequest.add_member(:match_type, Shapes::ShapeRef.new(shape: MatchType, required: true, location_name: "MatchType"))
    GetSimilarProfilesRequest.add_member(:search_key, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "SearchKey"))
    GetSimilarProfilesRequest.add_member(:search_value, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "SearchValue"))
    GetSimilarProfilesRequest.struct_class = Types::GetSimilarProfilesRequest

    GetSimilarProfilesResponse.add_member(:profile_ids, Shapes::ShapeRef.new(shape: ProfileIdList, location_name: "ProfileIds"))
    GetSimilarProfilesResponse.add_member(:match_id, Shapes::ShapeRef.new(shape: string1To255, location_name: "MatchId"))
    GetSimilarProfilesResponse.add_member(:match_type, Shapes::ShapeRef.new(shape: MatchType, location_name: "MatchType"))
    GetSimilarProfilesResponse.add_member(:rule_level, Shapes::ShapeRef.new(shape: RuleLevel, location_name: "RuleLevel"))
    GetSimilarProfilesResponse.add_member(:confidence_score, Shapes::ShapeRef.new(shape: Double, location_name: "ConfidenceScore"))
    GetSimilarProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    GetSimilarProfilesResponse.struct_class = Types::GetSimilarProfilesResponse

    GetUploadJobPathRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    GetUploadJobPathRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "JobId"))
    GetUploadJobPathRequest.struct_class = Types::GetUploadJobPathRequest

    GetUploadJobPathResponse.add_member(:url, Shapes::ShapeRef.new(shape: stringTo2048, required: true, location_name: "Url"))
    GetUploadJobPathResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: text, location_name: "ClientToken"))
    GetUploadJobPathResponse.add_member(:valid_until, Shapes::ShapeRef.new(shape: timestamp, location_name: "ValidUntil"))
    GetUploadJobPathResponse.struct_class = Types::GetUploadJobPathResponse

    GetUploadJobRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    GetUploadJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: uuid, required: true, location: "uri", location_name: "JobId"))
    GetUploadJobRequest.struct_class = Types::GetUploadJobRequest

    GetUploadJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: uuid, location_name: "JobId"))
    GetUploadJobResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: string1To255, location_name: "DisplayName"))
    GetUploadJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: UploadJobStatus, location_name: "Status"))
    GetUploadJobResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReason, location_name: "StatusReason"))
    GetUploadJobResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreatedAt"))
    GetUploadJobResponse.add_member(:completed_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "CompletedAt"))
    GetUploadJobResponse.add_member(:fields, Shapes::ShapeRef.new(shape: FieldMap, location_name: "Fields"))
    GetUploadJobResponse.add_member(:unique_key, Shapes::ShapeRef.new(shape: text, location_name: "UniqueKey"))
    GetUploadJobResponse.add_member(:results_summary, Shapes::ShapeRef.new(shape: ResultsSummary, location_name: "ResultsSummary"))
    GetUploadJobResponse.add_member(:data_expiry, Shapes::ShapeRef.new(shape: expirationDaysInteger, location_name: "DataExpiry"))
    GetUploadJobResponse.struct_class = Types::GetUploadJobResponse

    GetWorkflowRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    GetWorkflowRequest.add_member(:workflow_id, Shapes::ShapeRef.new(shape: uuid, required: true, location: "uri", location_name: "WorkflowId"))
    GetWorkflowRequest.struct_class = Types::GetWorkflowRequest

    GetWorkflowResponse.add_member(:workflow_id, Shapes::ShapeRef.new(shape: uuid, location_name: "WorkflowId"))
    GetWorkflowResponse.add_member(:workflow_type, Shapes::ShapeRef.new(shape: WorkflowType, location_name: "WorkflowType"))
    GetWorkflowResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    GetWorkflowResponse.add_member(:error_description, Shapes::ShapeRef.new(shape: string1To255, location_name: "ErrorDescription"))
    GetWorkflowResponse.add_member(:start_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "StartDate"))
    GetWorkflowResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastUpdatedAt"))
    GetWorkflowResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: WorkflowAttributes, location_name: "Attributes"))
    GetWorkflowResponse.add_member(:metrics, Shapes::ShapeRef.new(shape: WorkflowMetrics, location_name: "Metrics"))
    GetWorkflowResponse.struct_class = Types::GetWorkflowResponse

    GetWorkflowStepsRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    GetWorkflowStepsRequest.add_member(:workflow_id, Shapes::ShapeRef.new(shape: uuid, required: true, location: "uri", location_name: "WorkflowId"))
    GetWorkflowStepsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    GetWorkflowStepsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxSize100, location: "querystring", location_name: "max-results"))
    GetWorkflowStepsRequest.struct_class = Types::GetWorkflowStepsRequest

    GetWorkflowStepsResponse.add_member(:workflow_id, Shapes::ShapeRef.new(shape: uuid, location_name: "WorkflowId"))
    GetWorkflowStepsResponse.add_member(:workflow_type, Shapes::ShapeRef.new(shape: WorkflowType, location_name: "WorkflowType"))
    GetWorkflowStepsResponse.add_member(:items, Shapes::ShapeRef.new(shape: WorkflowStepsList, location_name: "Items"))
    GetWorkflowStepsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    GetWorkflowStepsResponse.struct_class = Types::GetWorkflowStepsResponse

    Group.add_member(:dimensions, Shapes::ShapeRef.new(shape: DimensionList, location_name: "Dimensions"))
    Group.add_member(:source_segments, Shapes::ShapeRef.new(shape: SourceSegmentList, location_name: "SourceSegments"))
    Group.add_member(:source_type, Shapes::ShapeRef.new(shape: IncludeOptions, location_name: "SourceType"))
    Group.add_member(:type, Shapes::ShapeRef.new(shape: IncludeOptions, location_name: "Type"))
    Group.struct_class = Types::Group

    GroupList.member = Shapes::ShapeRef.new(shape: FilterGroup)

    IdentityResolutionJob.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, location_name: "DomainName"))
    IdentityResolutionJob.add_member(:job_id, Shapes::ShapeRef.new(shape: uuid, location_name: "JobId"))
    IdentityResolutionJob.add_member(:status, Shapes::ShapeRef.new(shape: IdentityResolutionJobStatus, location_name: "Status"))
    IdentityResolutionJob.add_member(:job_start_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "JobStartTime"))
    IdentityResolutionJob.add_member(:job_end_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "JobEndTime"))
    IdentityResolutionJob.add_member(:job_stats, Shapes::ShapeRef.new(shape: JobStats, location_name: "JobStats"))
    IdentityResolutionJob.add_member(:exporting_location, Shapes::ShapeRef.new(shape: ExportingLocation, location_name: "ExportingLocation"))
    IdentityResolutionJob.add_member(:message, Shapes::ShapeRef.new(shape: stringTo2048, location_name: "Message"))
    IdentityResolutionJob.struct_class = Types::IdentityResolutionJob

    IdentityResolutionJobsList.member = Shapes::ShapeRef.new(shape: IdentityResolutionJob)

    IncrementalPullConfig.add_member(:datetime_type_field_name, Shapes::ShapeRef.new(shape: DatetimeTypeFieldName, location_name: "DatetimeTypeFieldName"))
    IncrementalPullConfig.struct_class = Types::IncrementalPullConfig

    IntegrationConfig.add_member(:appflow_integration, Shapes::ShapeRef.new(shape: AppflowIntegration, location_name: "AppflowIntegration"))
    IntegrationConfig.struct_class = Types::IntegrationConfig

    IntegrationList.member = Shapes::ShapeRef.new(shape: ListIntegrationItem)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: message, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    JobSchedule.add_member(:day_of_the_week, Shapes::ShapeRef.new(shape: JobScheduleDayOfTheWeek, required: true, location_name: "DayOfTheWeek"))
    JobSchedule.add_member(:time, Shapes::ShapeRef.new(shape: JobScheduleTime, required: true, location_name: "Time"))
    JobSchedule.struct_class = Types::JobSchedule

    JobStats.add_member(:number_of_profiles_reviewed, Shapes::ShapeRef.new(shape: long, location_name: "NumberOfProfilesReviewed"))
    JobStats.add_member(:number_of_matches_found, Shapes::ShapeRef.new(shape: long, location_name: "NumberOfMatchesFound"))
    JobStats.add_member(:number_of_merges_done, Shapes::ShapeRef.new(shape: long, location_name: "NumberOfMergesDone"))
    JobStats.struct_class = Types::JobStats

    KeyMap.key = Shapes::ShapeRef.new(shape: name)
    KeyMap.value = Shapes::ShapeRef.new(shape: ObjectTypeKeyList)

    LayoutItem.add_member(:layout_definition_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "LayoutDefinitionName"))
    LayoutItem.add_member(:description, Shapes::ShapeRef.new(shape: sensitiveText, required: true, location_name: "Description"))
    LayoutItem.add_member(:display_name, Shapes::ShapeRef.new(shape: displayName, required: true, location_name: "DisplayName"))
    LayoutItem.add_member(:is_default, Shapes::ShapeRef.new(shape: boolean, location_name: "IsDefault"))
    LayoutItem.add_member(:layout_type, Shapes::ShapeRef.new(shape: LayoutType, required: true, location_name: "LayoutType"))
    LayoutItem.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    LayoutItem.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "CreatedAt"))
    LayoutItem.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastUpdatedAt"))
    LayoutItem.struct_class = Types::LayoutItem

    LayoutList.member = Shapes::ShapeRef.new(shape: LayoutItem)

    ListAccountIntegrationsRequest.add_member(:uri, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "Uri"))
    ListAccountIntegrationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    ListAccountIntegrationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxSize100, location: "querystring", location_name: "max-results"))
    ListAccountIntegrationsRequest.add_member(:include_hidden, Shapes::ShapeRef.new(shape: optionalBoolean, location: "querystring", location_name: "include-hidden"))
    ListAccountIntegrationsRequest.struct_class = Types::ListAccountIntegrationsRequest

    ListAccountIntegrationsResponse.add_member(:items, Shapes::ShapeRef.new(shape: IntegrationList, location_name: "Items"))
    ListAccountIntegrationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    ListAccountIntegrationsResponse.struct_class = Types::ListAccountIntegrationsResponse

    ListCalculatedAttributeDefinitionItem.add_member(:calculated_attribute_name, Shapes::ShapeRef.new(shape: typeName, location_name: "CalculatedAttributeName"))
    ListCalculatedAttributeDefinitionItem.add_member(:display_name, Shapes::ShapeRef.new(shape: displayName, location_name: "DisplayName"))
    ListCalculatedAttributeDefinitionItem.add_member(:description, Shapes::ShapeRef.new(shape: sensitiveText, location_name: "Description"))
    ListCalculatedAttributeDefinitionItem.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreatedAt"))
    ListCalculatedAttributeDefinitionItem.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastUpdatedAt"))
    ListCalculatedAttributeDefinitionItem.add_member(:use_historical_data, Shapes::ShapeRef.new(shape: optionalBoolean, location_name: "UseHistoricalData"))
    ListCalculatedAttributeDefinitionItem.add_member(:status, Shapes::ShapeRef.new(shape: ReadinessStatus, location_name: "Status"))
    ListCalculatedAttributeDefinitionItem.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListCalculatedAttributeDefinitionItem.struct_class = Types::ListCalculatedAttributeDefinitionItem

    ListCalculatedAttributeDefinitionsRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    ListCalculatedAttributeDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    ListCalculatedAttributeDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxSize100, location: "querystring", location_name: "max-results"))
    ListCalculatedAttributeDefinitionsRequest.struct_class = Types::ListCalculatedAttributeDefinitionsRequest

    ListCalculatedAttributeDefinitionsResponse.add_member(:items, Shapes::ShapeRef.new(shape: CalculatedAttributeDefinitionsList, location_name: "Items"))
    ListCalculatedAttributeDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    ListCalculatedAttributeDefinitionsResponse.struct_class = Types::ListCalculatedAttributeDefinitionsResponse

    ListCalculatedAttributeForProfileItem.add_member(:calculated_attribute_name, Shapes::ShapeRef.new(shape: typeName, location_name: "CalculatedAttributeName"))
    ListCalculatedAttributeForProfileItem.add_member(:display_name, Shapes::ShapeRef.new(shape: displayName, location_name: "DisplayName"))
    ListCalculatedAttributeForProfileItem.add_member(:is_data_partial, Shapes::ShapeRef.new(shape: string1To255, location_name: "IsDataPartial"))
    ListCalculatedAttributeForProfileItem.add_member(:value, Shapes::ShapeRef.new(shape: string1To255, location_name: "Value"))
    ListCalculatedAttributeForProfileItem.add_member(:last_object_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastObjectTimestamp"))
    ListCalculatedAttributeForProfileItem.struct_class = Types::ListCalculatedAttributeForProfileItem

    ListCalculatedAttributesForProfileRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    ListCalculatedAttributesForProfileRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxSize100, location: "querystring", location_name: "max-results"))
    ListCalculatedAttributesForProfileRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    ListCalculatedAttributesForProfileRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: uuid, required: true, location: "uri", location_name: "ProfileId"))
    ListCalculatedAttributesForProfileRequest.struct_class = Types::ListCalculatedAttributesForProfileRequest

    ListCalculatedAttributesForProfileResponse.add_member(:items, Shapes::ShapeRef.new(shape: CalculatedAttributesForProfileList, location_name: "Items"))
    ListCalculatedAttributesForProfileResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    ListCalculatedAttributesForProfileResponse.struct_class = Types::ListCalculatedAttributesForProfileResponse

    ListDomainItem.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "DomainName"))
    ListDomainItem.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "CreatedAt"))
    ListDomainItem.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastUpdatedAt"))
    ListDomainItem.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListDomainItem.struct_class = Types::ListDomainItem

    ListDomainLayoutsRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    ListDomainLayoutsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    ListDomainLayoutsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxSize100, location: "querystring", location_name: "max-results"))
    ListDomainLayoutsRequest.struct_class = Types::ListDomainLayoutsRequest

    ListDomainLayoutsResponse.add_member(:items, Shapes::ShapeRef.new(shape: LayoutList, location_name: "Items"))
    ListDomainLayoutsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    ListDomainLayoutsResponse.struct_class = Types::ListDomainLayoutsResponse

    ListDomainsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    ListDomainsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxSize100, location: "querystring", location_name: "max-results"))
    ListDomainsRequest.struct_class = Types::ListDomainsRequest

    ListDomainsResponse.add_member(:items, Shapes::ShapeRef.new(shape: DomainList, location_name: "Items"))
    ListDomainsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    ListDomainsResponse.struct_class = Types::ListDomainsResponse

    ListEventStreamsRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    ListEventStreamsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    ListEventStreamsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxSize100, location: "querystring", location_name: "max-results"))
    ListEventStreamsRequest.struct_class = Types::ListEventStreamsRequest

    ListEventStreamsResponse.add_member(:items, Shapes::ShapeRef.new(shape: EventStreamSummaryList, location_name: "Items"))
    ListEventStreamsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    ListEventStreamsResponse.struct_class = Types::ListEventStreamsResponse

    ListEventTriggersRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    ListEventTriggersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    ListEventTriggersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxSize100, location: "querystring", location_name: "max-results"))
    ListEventTriggersRequest.struct_class = Types::ListEventTriggersRequest

    ListEventTriggersResponse.add_member(:items, Shapes::ShapeRef.new(shape: EventTriggerSummaryList, location_name: "Items"))
    ListEventTriggersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    ListEventTriggersResponse.struct_class = Types::ListEventTriggersResponse

    ListIdentityResolutionJobsRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    ListIdentityResolutionJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    ListIdentityResolutionJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxSize100, location: "querystring", location_name: "max-results"))
    ListIdentityResolutionJobsRequest.struct_class = Types::ListIdentityResolutionJobsRequest

    ListIdentityResolutionJobsResponse.add_member(:identity_resolution_jobs_list, Shapes::ShapeRef.new(shape: IdentityResolutionJobsList, location_name: "IdentityResolutionJobsList"))
    ListIdentityResolutionJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    ListIdentityResolutionJobsResponse.struct_class = Types::ListIdentityResolutionJobsResponse

    ListIntegrationItem.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "DomainName"))
    ListIntegrationItem.add_member(:uri, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "Uri"))
    ListIntegrationItem.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, location_name: "ObjectTypeName"))
    ListIntegrationItem.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "CreatedAt"))
    ListIntegrationItem.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastUpdatedAt"))
    ListIntegrationItem.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListIntegrationItem.add_member(:object_type_names, Shapes::ShapeRef.new(shape: ObjectTypeNames, location_name: "ObjectTypeNames"))
    ListIntegrationItem.add_member(:workflow_id, Shapes::ShapeRef.new(shape: string1To255, location_name: "WorkflowId"))
    ListIntegrationItem.add_member(:is_unstructured, Shapes::ShapeRef.new(shape: optionalBoolean, location_name: "IsUnstructured"))
    ListIntegrationItem.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    ListIntegrationItem.add_member(:event_trigger_names, Shapes::ShapeRef.new(shape: EventTriggerNames, location_name: "EventTriggerNames"))
    ListIntegrationItem.struct_class = Types::ListIntegrationItem

    ListIntegrationsRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    ListIntegrationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    ListIntegrationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxSize100, location: "querystring", location_name: "max-results"))
    ListIntegrationsRequest.add_member(:include_hidden, Shapes::ShapeRef.new(shape: optionalBoolean, location: "querystring", location_name: "include-hidden"))
    ListIntegrationsRequest.struct_class = Types::ListIntegrationsRequest

    ListIntegrationsResponse.add_member(:items, Shapes::ShapeRef.new(shape: IntegrationList, location_name: "Items"))
    ListIntegrationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    ListIntegrationsResponse.struct_class = Types::ListIntegrationsResponse

    ListObjectTypeAttributeItem.add_member(:attribute_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "AttributeName"))
    ListObjectTypeAttributeItem.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastUpdatedAt"))
    ListObjectTypeAttributeItem.struct_class = Types::ListObjectTypeAttributeItem

    ListObjectTypeAttributesList.member = Shapes::ShapeRef.new(shape: ListObjectTypeAttributeItem)

    ListObjectTypeAttributesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    ListObjectTypeAttributesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxSize100, location: "querystring", location_name: "max-results"))
    ListObjectTypeAttributesRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    ListObjectTypeAttributesRequest.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, required: true, location: "uri", location_name: "ObjectTypeName"))
    ListObjectTypeAttributesRequest.struct_class = Types::ListObjectTypeAttributesRequest

    ListObjectTypeAttributesResponse.add_member(:items, Shapes::ShapeRef.new(shape: ListObjectTypeAttributesList, location_name: "Items"))
    ListObjectTypeAttributesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    ListObjectTypeAttributesResponse.struct_class = Types::ListObjectTypeAttributesResponse

    ListProfileObjectTypeItem.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, required: true, location_name: "ObjectTypeName"))
    ListProfileObjectTypeItem.add_member(:description, Shapes::ShapeRef.new(shape: text, required: true, location_name: "Description"))
    ListProfileObjectTypeItem.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreatedAt"))
    ListProfileObjectTypeItem.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastUpdatedAt"))
    ListProfileObjectTypeItem.add_member(:max_profile_object_count, Shapes::ShapeRef.new(shape: minSize1, location_name: "MaxProfileObjectCount"))
    ListProfileObjectTypeItem.add_member(:max_available_profile_object_count, Shapes::ShapeRef.new(shape: minSize0, location_name: "MaxAvailableProfileObjectCount"))
    ListProfileObjectTypeItem.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListProfileObjectTypeItem.struct_class = Types::ListProfileObjectTypeItem

    ListProfileObjectTypeTemplateItem.add_member(:template_id, Shapes::ShapeRef.new(shape: name, location_name: "TemplateId"))
    ListProfileObjectTypeTemplateItem.add_member(:source_name, Shapes::ShapeRef.new(shape: name, location_name: "SourceName"))
    ListProfileObjectTypeTemplateItem.add_member(:source_object, Shapes::ShapeRef.new(shape: name, location_name: "SourceObject"))
    ListProfileObjectTypeTemplateItem.struct_class = Types::ListProfileObjectTypeTemplateItem

    ListProfileObjectTypeTemplatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    ListProfileObjectTypeTemplatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxSize100, location: "querystring", location_name: "max-results"))
    ListProfileObjectTypeTemplatesRequest.struct_class = Types::ListProfileObjectTypeTemplatesRequest

    ListProfileObjectTypeTemplatesResponse.add_member(:items, Shapes::ShapeRef.new(shape: ProfileObjectTypeTemplateList, location_name: "Items"))
    ListProfileObjectTypeTemplatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    ListProfileObjectTypeTemplatesResponse.struct_class = Types::ListProfileObjectTypeTemplatesResponse

    ListProfileObjectTypesRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    ListProfileObjectTypesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    ListProfileObjectTypesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxSize100, location: "querystring", location_name: "max-results"))
    ListProfileObjectTypesRequest.struct_class = Types::ListProfileObjectTypesRequest

    ListProfileObjectTypesResponse.add_member(:items, Shapes::ShapeRef.new(shape: ProfileObjectTypeList, location_name: "Items"))
    ListProfileObjectTypesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    ListProfileObjectTypesResponse.struct_class = Types::ListProfileObjectTypesResponse

    ListProfileObjectsItem.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, location_name: "ObjectTypeName"))
    ListProfileObjectsItem.add_member(:profile_object_unique_key, Shapes::ShapeRef.new(shape: string1To255, location_name: "ProfileObjectUniqueKey"))
    ListProfileObjectsItem.add_member(:object, Shapes::ShapeRef.new(shape: stringifiedJson, location_name: "Object"))
    ListProfileObjectsItem.struct_class = Types::ListProfileObjectsItem

    ListProfileObjectsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    ListProfileObjectsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxSize100, location: "querystring", location_name: "max-results"))
    ListProfileObjectsRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    ListProfileObjectsRequest.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, required: true, location_name: "ObjectTypeName"))
    ListProfileObjectsRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: uuid, required: true, location_name: "ProfileId"))
    ListProfileObjectsRequest.add_member(:object_filter, Shapes::ShapeRef.new(shape: ObjectFilter, location_name: "ObjectFilter"))
    ListProfileObjectsRequest.struct_class = Types::ListProfileObjectsRequest

    ListProfileObjectsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ProfileObjectList, location_name: "Items"))
    ListProfileObjectsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    ListProfileObjectsResponse.struct_class = Types::ListProfileObjectsResponse

    ListRuleBasedMatchesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    ListRuleBasedMatchesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxSize100, location: "querystring", location_name: "max-results"))
    ListRuleBasedMatchesRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    ListRuleBasedMatchesRequest.struct_class = Types::ListRuleBasedMatchesRequest

    ListRuleBasedMatchesResponse.add_member(:match_ids, Shapes::ShapeRef.new(shape: MatchIdList, location_name: "MatchIds"))
    ListRuleBasedMatchesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    ListRuleBasedMatchesResponse.struct_class = Types::ListRuleBasedMatchesResponse

    ListSegmentDefinitionsRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    ListSegmentDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSize500, location: "querystring", location_name: "max-results"))
    ListSegmentDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    ListSegmentDefinitionsRequest.struct_class = Types::ListSegmentDefinitionsRequest

    ListSegmentDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    ListSegmentDefinitionsResponse.add_member(:items, Shapes::ShapeRef.new(shape: SegmentDefinitionsList, location_name: "Items"))
    ListSegmentDefinitionsResponse.struct_class = Types::ListSegmentDefinitionsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TagArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListUploadJobsRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    ListUploadJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSize500, location: "querystring", location_name: "max-results"))
    ListUploadJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    ListUploadJobsRequest.struct_class = Types::ListUploadJobsRequest

    ListUploadJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    ListUploadJobsResponse.add_member(:items, Shapes::ShapeRef.new(shape: UploadJobsList, location_name: "Items"))
    ListUploadJobsResponse.struct_class = Types::ListUploadJobsResponse

    ListWorkflowsItem.add_member(:workflow_type, Shapes::ShapeRef.new(shape: WorkflowType, required: true, location_name: "WorkflowType"))
    ListWorkflowsItem.add_member(:workflow_id, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "WorkflowId"))
    ListWorkflowsItem.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "Status"))
    ListWorkflowsItem.add_member(:status_description, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "StatusDescription"))
    ListWorkflowsItem.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "CreatedAt"))
    ListWorkflowsItem.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastUpdatedAt"))
    ListWorkflowsItem.struct_class = Types::ListWorkflowsItem

    ListWorkflowsRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    ListWorkflowsRequest.add_member(:workflow_type, Shapes::ShapeRef.new(shape: WorkflowType, location_name: "WorkflowType"))
    ListWorkflowsRequest.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    ListWorkflowsRequest.add_member(:query_start_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "QueryStartDate"))
    ListWorkflowsRequest.add_member(:query_end_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "QueryEndDate"))
    ListWorkflowsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    ListWorkflowsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxSize100, location: "querystring", location_name: "max-results"))
    ListWorkflowsRequest.struct_class = Types::ListWorkflowsRequest

    ListWorkflowsResponse.add_member(:items, Shapes::ShapeRef.new(shape: WorkflowList, location_name: "Items"))
    ListWorkflowsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    ListWorkflowsResponse.struct_class = Types::ListWorkflowsResponse

    MarketoSourceProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "Object"))
    MarketoSourceProperties.struct_class = Types::MarketoSourceProperties

    MatchIdList.member = Shapes::ShapeRef.new(shape: string1To255)

    MatchItem.add_member(:match_id, Shapes::ShapeRef.new(shape: string1To255, location_name: "MatchId"))
    MatchItem.add_member(:profile_ids, Shapes::ShapeRef.new(shape: ProfileIdList, location_name: "ProfileIds"))
    MatchItem.add_member(:confidence_score, Shapes::ShapeRef.new(shape: Double, location_name: "ConfidenceScore"))
    MatchItem.struct_class = Types::MatchItem

    MatchesList.member = Shapes::ShapeRef.new(shape: MatchItem)

    MatchingAttributes.member = Shapes::ShapeRef.new(shape: string1To255)

    MatchingAttributesList.member = Shapes::ShapeRef.new(shape: MatchingAttributes)

    MatchingRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: optionalBoolean, required: true, location_name: "Enabled"))
    MatchingRequest.add_member(:job_schedule, Shapes::ShapeRef.new(shape: JobSchedule, location_name: "JobSchedule"))
    MatchingRequest.add_member(:auto_merging, Shapes::ShapeRef.new(shape: AutoMerging, location_name: "AutoMerging"))
    MatchingRequest.add_member(:exporting_config, Shapes::ShapeRef.new(shape: ExportingConfig, location_name: "ExportingConfig"))
    MatchingRequest.struct_class = Types::MatchingRequest

    MatchingResponse.add_member(:enabled, Shapes::ShapeRef.new(shape: optionalBoolean, location_name: "Enabled"))
    MatchingResponse.add_member(:job_schedule, Shapes::ShapeRef.new(shape: JobSchedule, location_name: "JobSchedule"))
    MatchingResponse.add_member(:auto_merging, Shapes::ShapeRef.new(shape: AutoMerging, location_name: "AutoMerging"))
    MatchingResponse.add_member(:exporting_config, Shapes::ShapeRef.new(shape: ExportingConfig, location_name: "ExportingConfig"))
    MatchingResponse.struct_class = Types::MatchingResponse

    MatchingRule.add_member(:rule, Shapes::ShapeRef.new(shape: MatchingRuleAttributeList, required: true, location_name: "Rule"))
    MatchingRule.struct_class = Types::MatchingRule

    MatchingRuleAttributeList.member = Shapes::ShapeRef.new(shape: string1To255)

    MatchingRules.member = Shapes::ShapeRef.new(shape: MatchingRule)

    MergeProfilesRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    MergeProfilesRequest.add_member(:main_profile_id, Shapes::ShapeRef.new(shape: uuid, required: true, location_name: "MainProfileId"))
    MergeProfilesRequest.add_member(:profile_ids_to_be_merged, Shapes::ShapeRef.new(shape: ProfileIdToBeMergedList, required: true, location_name: "ProfileIdsToBeMerged"))
    MergeProfilesRequest.add_member(:field_source_profile_ids, Shapes::ShapeRef.new(shape: FieldSourceProfileIds, location_name: "FieldSourceProfileIds"))
    MergeProfilesRequest.struct_class = Types::MergeProfilesRequest

    MergeProfilesResponse.add_member(:message, Shapes::ShapeRef.new(shape: message, location_name: "Message"))
    MergeProfilesResponse.struct_class = Types::MergeProfilesResponse

    ObjectAttribute.add_member(:source, Shapes::ShapeRef.new(shape: text, location_name: "Source"))
    ObjectAttribute.add_member(:field_name, Shapes::ShapeRef.new(shape: fieldName, location_name: "FieldName"))
    ObjectAttribute.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperator, required: true, location_name: "ComparisonOperator"))
    ObjectAttribute.add_member(:values, Shapes::ShapeRef.new(shape: EventTriggerValues, required: true, location_name: "Values"))
    ObjectAttribute.struct_class = Types::ObjectAttribute

    ObjectAttributes.member = Shapes::ShapeRef.new(shape: ObjectAttribute)

    ObjectFilter.add_member(:key_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "KeyName"))
    ObjectFilter.add_member(:values, Shapes::ShapeRef.new(shape: requestValueList, required: true, location_name: "Values"))
    ObjectFilter.struct_class = Types::ObjectFilter

    ObjectTypeField.add_member(:source, Shapes::ShapeRef.new(shape: text, location_name: "Source"))
    ObjectTypeField.add_member(:target, Shapes::ShapeRef.new(shape: text, location_name: "Target"))
    ObjectTypeField.add_member(:content_type, Shapes::ShapeRef.new(shape: FieldContentType, location_name: "ContentType"))
    ObjectTypeField.struct_class = Types::ObjectTypeField

    ObjectTypeKey.add_member(:standard_identifiers, Shapes::ShapeRef.new(shape: StandardIdentifierList, location_name: "StandardIdentifiers"))
    ObjectTypeKey.add_member(:field_names, Shapes::ShapeRef.new(shape: FieldNameList, location_name: "FieldNames"))
    ObjectTypeKey.struct_class = Types::ObjectTypeKey

    ObjectTypeKeyList.member = Shapes::ShapeRef.new(shape: ObjectTypeKey)

    ObjectTypeNames.key = Shapes::ShapeRef.new(shape: string1To255)
    ObjectTypeNames.value = Shapes::ShapeRef.new(shape: typeName)

    Objects.member = Shapes::ShapeRef.new(shape: stringifiedJson)

    Period.add_member(:unit, Shapes::ShapeRef.new(shape: PeriodUnit, required: true, location_name: "Unit"))
    Period.add_member(:value, Shapes::ShapeRef.new(shape: maxSize24, required: true, location_name: "Value"))
    Period.add_member(:max_invocations_per_profile, Shapes::ShapeRef.new(shape: maxSize1000, location_name: "MaxInvocationsPerProfile"))
    Period.add_member(:unlimited, Shapes::ShapeRef.new(shape: boolean, location_name: "Unlimited"))
    Period.struct_class = Types::Period

    Periods.member = Shapes::ShapeRef.new(shape: Period)

    PhoneNumberList.member = Shapes::ShapeRef.new(shape: string1To255)

    PhonePreferenceList.member = Shapes::ShapeRef.new(shape: ContactPreference)

    Profile.add_member(:profile_id, Shapes::ShapeRef.new(shape: uuid, location_name: "ProfileId"))
    Profile.add_member(:account_number, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "AccountNumber"))
    Profile.add_member(:additional_information, Shapes::ShapeRef.new(shape: sensitiveString1To1000, location_name: "AdditionalInformation"))
    Profile.add_member(:party_type, Shapes::ShapeRef.new(shape: PartyType, deprecated: true, location_name: "PartyType"))
    Profile.add_member(:business_name, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "BusinessName"))
    Profile.add_member(:first_name, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "FirstName"))
    Profile.add_member(:middle_name, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "MiddleName"))
    Profile.add_member(:last_name, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "LastName"))
    Profile.add_member(:birth_date, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "BirthDate"))
    Profile.add_member(:gender, Shapes::ShapeRef.new(shape: Gender, deprecated: true, location_name: "Gender"))
    Profile.add_member(:phone_number, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "PhoneNumber"))
    Profile.add_member(:mobile_phone_number, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "MobilePhoneNumber"))
    Profile.add_member(:home_phone_number, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "HomePhoneNumber"))
    Profile.add_member(:business_phone_number, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "BusinessPhoneNumber"))
    Profile.add_member(:email_address, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "EmailAddress"))
    Profile.add_member(:personal_email_address, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "PersonalEmailAddress"))
    Profile.add_member(:business_email_address, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "BusinessEmailAddress"))
    Profile.add_member(:address, Shapes::ShapeRef.new(shape: Address, location_name: "Address"))
    Profile.add_member(:shipping_address, Shapes::ShapeRef.new(shape: Address, location_name: "ShippingAddress"))
    Profile.add_member(:mailing_address, Shapes::ShapeRef.new(shape: Address, location_name: "MailingAddress"))
    Profile.add_member(:billing_address, Shapes::ShapeRef.new(shape: Address, location_name: "BillingAddress"))
    Profile.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    Profile.add_member(:found_by_items, Shapes::ShapeRef.new(shape: foundByList, location_name: "FoundByItems"))
    Profile.add_member(:party_type_string, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "PartyTypeString"))
    Profile.add_member(:gender_string, Shapes::ShapeRef.new(shape: sensitiveString1To255, location_name: "GenderString"))
    Profile.add_member(:profile_type, Shapes::ShapeRef.new(shape: ProfileType, location_name: "ProfileType"))
    Profile.add_member(:engagement_preferences, Shapes::ShapeRef.new(shape: EngagementPreferences, location_name: "EngagementPreferences"))
    Profile.struct_class = Types::Profile

    ProfileAttributeValuesRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    ProfileAttributeValuesRequest.add_member(:attribute_name, Shapes::ShapeRef.new(shape: string1To255, required: true, location: "uri", location_name: "AttributeName"))
    ProfileAttributeValuesRequest.struct_class = Types::ProfileAttributeValuesRequest

    ProfileAttributeValuesResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, location_name: "DomainName"))
    ProfileAttributeValuesResponse.add_member(:attribute_name, Shapes::ShapeRef.new(shape: string1To255, location_name: "AttributeName"))
    ProfileAttributeValuesResponse.add_member(:items, Shapes::ShapeRef.new(shape: AttributeValueItemList, location_name: "Items"))
    ProfileAttributeValuesResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "StatusCode"))
    ProfileAttributeValuesResponse.struct_class = Types::ProfileAttributeValuesResponse

    ProfileAttributes.add_member(:account_number, Shapes::ShapeRef.new(shape: ProfileDimension, location_name: "AccountNumber"))
    ProfileAttributes.add_member(:additional_information, Shapes::ShapeRef.new(shape: ExtraLengthValueProfileDimension, location_name: "AdditionalInformation"))
    ProfileAttributes.add_member(:first_name, Shapes::ShapeRef.new(shape: ProfileDimension, location_name: "FirstName"))
    ProfileAttributes.add_member(:last_name, Shapes::ShapeRef.new(shape: ProfileDimension, location_name: "LastName"))
    ProfileAttributes.add_member(:middle_name, Shapes::ShapeRef.new(shape: ProfileDimension, location_name: "MiddleName"))
    ProfileAttributes.add_member(:gender_string, Shapes::ShapeRef.new(shape: ProfileDimension, location_name: "GenderString"))
    ProfileAttributes.add_member(:party_type_string, Shapes::ShapeRef.new(shape: ProfileDimension, location_name: "PartyTypeString"))
    ProfileAttributes.add_member(:birth_date, Shapes::ShapeRef.new(shape: DateDimension, location_name: "BirthDate"))
    ProfileAttributes.add_member(:phone_number, Shapes::ShapeRef.new(shape: ProfileDimension, location_name: "PhoneNumber"))
    ProfileAttributes.add_member(:business_name, Shapes::ShapeRef.new(shape: ProfileDimension, location_name: "BusinessName"))
    ProfileAttributes.add_member(:business_phone_number, Shapes::ShapeRef.new(shape: ProfileDimension, location_name: "BusinessPhoneNumber"))
    ProfileAttributes.add_member(:home_phone_number, Shapes::ShapeRef.new(shape: ProfileDimension, location_name: "HomePhoneNumber"))
    ProfileAttributes.add_member(:mobile_phone_number, Shapes::ShapeRef.new(shape: ProfileDimension, location_name: "MobilePhoneNumber"))
    ProfileAttributes.add_member(:email_address, Shapes::ShapeRef.new(shape: ProfileDimension, location_name: "EmailAddress"))
    ProfileAttributes.add_member(:personal_email_address, Shapes::ShapeRef.new(shape: ProfileDimension, location_name: "PersonalEmailAddress"))
    ProfileAttributes.add_member(:business_email_address, Shapes::ShapeRef.new(shape: ProfileDimension, location_name: "BusinessEmailAddress"))
    ProfileAttributes.add_member(:address, Shapes::ShapeRef.new(shape: AddressDimension, location_name: "Address"))
    ProfileAttributes.add_member(:shipping_address, Shapes::ShapeRef.new(shape: AddressDimension, location_name: "ShippingAddress"))
    ProfileAttributes.add_member(:mailing_address, Shapes::ShapeRef.new(shape: AddressDimension, location_name: "MailingAddress"))
    ProfileAttributes.add_member(:billing_address, Shapes::ShapeRef.new(shape: AddressDimension, location_name: "BillingAddress"))
    ProfileAttributes.add_member(:attributes, Shapes::ShapeRef.new(shape: CustomAttributes, location_name: "Attributes"))
    ProfileAttributes.add_member(:profile_type, Shapes::ShapeRef.new(shape: ProfileTypeDimension, location_name: "ProfileType"))
    ProfileAttributes.struct_class = Types::ProfileAttributes

    ProfileDimension.add_member(:dimension_type, Shapes::ShapeRef.new(shape: StringDimensionType, required: true, location_name: "DimensionType"))
    ProfileDimension.add_member(:values, Shapes::ShapeRef.new(shape: Values, required: true, location_name: "Values"))
    ProfileDimension.struct_class = Types::ProfileDimension

    ProfileIdList.member = Shapes::ShapeRef.new(shape: uuid)

    ProfileIdToBeMergedList.member = Shapes::ShapeRef.new(shape: uuid)

    ProfileIds.member = Shapes::ShapeRef.new(shape: uuid)

    ProfileList.member = Shapes::ShapeRef.new(shape: Profile)

    ProfileObjectList.member = Shapes::ShapeRef.new(shape: ListProfileObjectsItem)

    ProfileObjectTypeList.member = Shapes::ShapeRef.new(shape: ListProfileObjectTypeItem)

    ProfileObjectTypeTemplateList.member = Shapes::ShapeRef.new(shape: ListProfileObjectTypeTemplateItem)

    ProfileQueryFailures.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileId, required: true, location_name: "ProfileId"))
    ProfileQueryFailures.add_member(:message, Shapes::ShapeRef.new(shape: GetSegmentMembershipMessage, required: true, location_name: "Message"))
    ProfileQueryFailures.add_member(:status, Shapes::ShapeRef.new(shape: GetSegmentMembershipStatus, location_name: "Status"))
    ProfileQueryFailures.struct_class = Types::ProfileQueryFailures

    ProfileQueryResult.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileId, required: true, location_name: "ProfileId"))
    ProfileQueryResult.add_member(:query_result, Shapes::ShapeRef.new(shape: QueryResult, required: true, location_name: "QueryResult"))
    ProfileQueryResult.add_member(:profile, Shapes::ShapeRef.new(shape: Profile, location_name: "Profile"))
    ProfileQueryResult.struct_class = Types::ProfileQueryResult

    ProfileTypeDimension.add_member(:dimension_type, Shapes::ShapeRef.new(shape: ProfileTypeDimensionType, required: true, location_name: "DimensionType"))
    ProfileTypeDimension.add_member(:values, Shapes::ShapeRef.new(shape: ProfileTypeValues, required: true, location_name: "Values"))
    ProfileTypeDimension.struct_class = Types::ProfileTypeDimension

    ProfileTypeValues.member = Shapes::ShapeRef.new(shape: ProfileType)

    Profiles.member = Shapes::ShapeRef.new(shape: ProfileQueryResult)

    PutIntegrationRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    PutIntegrationRequest.add_member(:uri, Shapes::ShapeRef.new(shape: string1To255, location_name: "Uri"))
    PutIntegrationRequest.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, location_name: "ObjectTypeName"))
    PutIntegrationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    PutIntegrationRequest.add_member(:flow_definition, Shapes::ShapeRef.new(shape: FlowDefinition, location_name: "FlowDefinition"))
    PutIntegrationRequest.add_member(:object_type_names, Shapes::ShapeRef.new(shape: ObjectTypeNames, location_name: "ObjectTypeNames"))
    PutIntegrationRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    PutIntegrationRequest.add_member(:event_trigger_names, Shapes::ShapeRef.new(shape: EventTriggerNames, location_name: "EventTriggerNames"))
    PutIntegrationRequest.struct_class = Types::PutIntegrationRequest

    PutIntegrationResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "DomainName"))
    PutIntegrationResponse.add_member(:uri, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "Uri"))
    PutIntegrationResponse.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, location_name: "ObjectTypeName"))
    PutIntegrationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "CreatedAt"))
    PutIntegrationResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastUpdatedAt"))
    PutIntegrationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    PutIntegrationResponse.add_member(:object_type_names, Shapes::ShapeRef.new(shape: ObjectTypeNames, location_name: "ObjectTypeNames"))
    PutIntegrationResponse.add_member(:workflow_id, Shapes::ShapeRef.new(shape: string1To255, location_name: "WorkflowId"))
    PutIntegrationResponse.add_member(:is_unstructured, Shapes::ShapeRef.new(shape: optionalBoolean, location_name: "IsUnstructured"))
    PutIntegrationResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    PutIntegrationResponse.add_member(:event_trigger_names, Shapes::ShapeRef.new(shape: EventTriggerNames, location_name: "EventTriggerNames"))
    PutIntegrationResponse.struct_class = Types::PutIntegrationResponse

    PutProfileObjectRequest.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, required: true, location_name: "ObjectTypeName"))
    PutProfileObjectRequest.add_member(:object, Shapes::ShapeRef.new(shape: stringifiedJson, required: true, location_name: "Object"))
    PutProfileObjectRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    PutProfileObjectRequest.struct_class = Types::PutProfileObjectRequest

    PutProfileObjectResponse.add_member(:profile_object_unique_key, Shapes::ShapeRef.new(shape: string1To255, location_name: "ProfileObjectUniqueKey"))
    PutProfileObjectResponse.struct_class = Types::PutProfileObjectResponse

    PutProfileObjectTypeRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    PutProfileObjectTypeRequest.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, required: true, location: "uri", location_name: "ObjectTypeName"))
    PutProfileObjectTypeRequest.add_member(:description, Shapes::ShapeRef.new(shape: sensitiveText, required: true, location_name: "Description"))
    PutProfileObjectTypeRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: name, location_name: "TemplateId"))
    PutProfileObjectTypeRequest.add_member(:expiration_days, Shapes::ShapeRef.new(shape: expirationDaysInteger, location_name: "ExpirationDays"))
    PutProfileObjectTypeRequest.add_member(:encryption_key, Shapes::ShapeRef.new(shape: encryptionKey, location_name: "EncryptionKey"))
    PutProfileObjectTypeRequest.add_member(:allow_profile_creation, Shapes::ShapeRef.new(shape: boolean, location_name: "AllowProfileCreation"))
    PutProfileObjectTypeRequest.add_member(:source_last_updated_timestamp_format, Shapes::ShapeRef.new(shape: string1To255, location_name: "SourceLastUpdatedTimestampFormat"))
    PutProfileObjectTypeRequest.add_member(:max_profile_object_count, Shapes::ShapeRef.new(shape: minSize1, location_name: "MaxProfileObjectCount"))
    PutProfileObjectTypeRequest.add_member(:fields, Shapes::ShapeRef.new(shape: FieldMap, location_name: "Fields"))
    PutProfileObjectTypeRequest.add_member(:keys, Shapes::ShapeRef.new(shape: KeyMap, location_name: "Keys"))
    PutProfileObjectTypeRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    PutProfileObjectTypeRequest.struct_class = Types::PutProfileObjectTypeRequest

    PutProfileObjectTypeResponse.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, required: true, location_name: "ObjectTypeName"))
    PutProfileObjectTypeResponse.add_member(:description, Shapes::ShapeRef.new(shape: sensitiveText, required: true, location_name: "Description"))
    PutProfileObjectTypeResponse.add_member(:template_id, Shapes::ShapeRef.new(shape: name, location_name: "TemplateId"))
    PutProfileObjectTypeResponse.add_member(:expiration_days, Shapes::ShapeRef.new(shape: expirationDaysInteger, location_name: "ExpirationDays"))
    PutProfileObjectTypeResponse.add_member(:encryption_key, Shapes::ShapeRef.new(shape: encryptionKey, location_name: "EncryptionKey"))
    PutProfileObjectTypeResponse.add_member(:allow_profile_creation, Shapes::ShapeRef.new(shape: boolean, location_name: "AllowProfileCreation"))
    PutProfileObjectTypeResponse.add_member(:source_last_updated_timestamp_format, Shapes::ShapeRef.new(shape: string1To255, location_name: "SourceLastUpdatedTimestampFormat"))
    PutProfileObjectTypeResponse.add_member(:max_profile_object_count, Shapes::ShapeRef.new(shape: minSize1, location_name: "MaxProfileObjectCount"))
    PutProfileObjectTypeResponse.add_member(:max_available_profile_object_count, Shapes::ShapeRef.new(shape: minSize0, location_name: "MaxAvailableProfileObjectCount"))
    PutProfileObjectTypeResponse.add_member(:fields, Shapes::ShapeRef.new(shape: FieldMap, location_name: "Fields"))
    PutProfileObjectTypeResponse.add_member(:keys, Shapes::ShapeRef.new(shape: KeyMap, location_name: "Keys"))
    PutProfileObjectTypeResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreatedAt"))
    PutProfileObjectTypeResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastUpdatedAt"))
    PutProfileObjectTypeResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    PutProfileObjectTypeResponse.struct_class = Types::PutProfileObjectTypeResponse

    Range.add_member(:value, Shapes::ShapeRef.new(shape: Value, location_name: "Value"))
    Range.add_member(:unit, Shapes::ShapeRef.new(shape: Unit, location_name: "Unit"))
    Range.add_member(:value_range, Shapes::ShapeRef.new(shape: ValueRange, location_name: "ValueRange"))
    Range.add_member(:timestamp_source, Shapes::ShapeRef.new(shape: string1To255, location_name: "TimestampSource"))
    Range.add_member(:timestamp_format, Shapes::ShapeRef.new(shape: string1To255, location_name: "TimestampFormat"))
    Range.struct_class = Types::Range

    RangeOverride.add_member(:start, Shapes::ShapeRef.new(shape: Start, required: true, location_name: "Start"))
    RangeOverride.add_member(:end, Shapes::ShapeRef.new(shape: End, location_name: "End"))
    RangeOverride.add_member(:unit, Shapes::ShapeRef.new(shape: RangeUnit, required: true, location_name: "Unit"))
    RangeOverride.struct_class = Types::RangeOverride

    Readiness.add_member(:progress_percentage, Shapes::ShapeRef.new(shape: percentageInteger, location_name: "ProgressPercentage"))
    Readiness.add_member(:message, Shapes::ShapeRef.new(shape: text, location_name: "Message"))
    Readiness.struct_class = Types::Readiness

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: message, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResultsSummary.add_member(:updated_records, Shapes::ShapeRef.new(shape: optionalLong, location_name: "UpdatedRecords"))
    ResultsSummary.add_member(:created_records, Shapes::ShapeRef.new(shape: optionalLong, location_name: "CreatedRecords"))
    ResultsSummary.add_member(:failed_records, Shapes::ShapeRef.new(shape: optionalLong, location_name: "FailedRecords"))
    ResultsSummary.struct_class = Types::ResultsSummary

    RuleBasedMatchingRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: optionalBoolean, required: true, location_name: "Enabled"))
    RuleBasedMatchingRequest.add_member(:matching_rules, Shapes::ShapeRef.new(shape: MatchingRules, location_name: "MatchingRules"))
    RuleBasedMatchingRequest.add_member(:max_allowed_rule_level_for_merging, Shapes::ShapeRef.new(shape: MaxAllowedRuleLevelForMerging, location_name: "MaxAllowedRuleLevelForMerging"))
    RuleBasedMatchingRequest.add_member(:max_allowed_rule_level_for_matching, Shapes::ShapeRef.new(shape: MaxAllowedRuleLevelForMatching, location_name: "MaxAllowedRuleLevelForMatching"))
    RuleBasedMatchingRequest.add_member(:attribute_types_selector, Shapes::ShapeRef.new(shape: AttributeTypesSelector, location_name: "AttributeTypesSelector"))
    RuleBasedMatchingRequest.add_member(:conflict_resolution, Shapes::ShapeRef.new(shape: ConflictResolution, location_name: "ConflictResolution"))
    RuleBasedMatchingRequest.add_member(:exporting_config, Shapes::ShapeRef.new(shape: ExportingConfig, location_name: "ExportingConfig"))
    RuleBasedMatchingRequest.struct_class = Types::RuleBasedMatchingRequest

    RuleBasedMatchingResponse.add_member(:enabled, Shapes::ShapeRef.new(shape: optionalBoolean, location_name: "Enabled"))
    RuleBasedMatchingResponse.add_member(:matching_rules, Shapes::ShapeRef.new(shape: MatchingRules, location_name: "MatchingRules"))
    RuleBasedMatchingResponse.add_member(:status, Shapes::ShapeRef.new(shape: RuleBasedMatchingStatus, location_name: "Status"))
    RuleBasedMatchingResponse.add_member(:max_allowed_rule_level_for_merging, Shapes::ShapeRef.new(shape: MaxAllowedRuleLevelForMerging, location_name: "MaxAllowedRuleLevelForMerging"))
    RuleBasedMatchingResponse.add_member(:max_allowed_rule_level_for_matching, Shapes::ShapeRef.new(shape: MaxAllowedRuleLevelForMatching, location_name: "MaxAllowedRuleLevelForMatching"))
    RuleBasedMatchingResponse.add_member(:attribute_types_selector, Shapes::ShapeRef.new(shape: AttributeTypesSelector, location_name: "AttributeTypesSelector"))
    RuleBasedMatchingResponse.add_member(:conflict_resolution, Shapes::ShapeRef.new(shape: ConflictResolution, location_name: "ConflictResolution"))
    RuleBasedMatchingResponse.add_member(:exporting_config, Shapes::ShapeRef.new(shape: ExportingConfig, location_name: "ExportingConfig"))
    RuleBasedMatchingResponse.struct_class = Types::RuleBasedMatchingResponse

    S3ExportingConfig.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: s3BucketName, required: true, location_name: "S3BucketName"))
    S3ExportingConfig.add_member(:s3_key_name, Shapes::ShapeRef.new(shape: s3KeyNameCustomerOutputConfig, location_name: "S3KeyName"))
    S3ExportingConfig.struct_class = Types::S3ExportingConfig

    S3ExportingLocation.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: s3BucketName, location_name: "S3BucketName"))
    S3ExportingLocation.add_member(:s3_key_name, Shapes::ShapeRef.new(shape: s3KeyName, location_name: "S3KeyName"))
    S3ExportingLocation.struct_class = Types::S3ExportingLocation

    S3SourceProperties.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "BucketName"))
    S3SourceProperties.add_member(:bucket_prefix, Shapes::ShapeRef.new(shape: BucketPrefix, location_name: "BucketPrefix"))
    S3SourceProperties.struct_class = Types::S3SourceProperties

    SalesforceSourceProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "Object"))
    SalesforceSourceProperties.add_member(:enable_dynamic_field_update, Shapes::ShapeRef.new(shape: boolean, location_name: "EnableDynamicFieldUpdate"))
    SalesforceSourceProperties.add_member(:include_deleted_records, Shapes::ShapeRef.new(shape: boolean, location_name: "IncludeDeletedRecords"))
    SalesforceSourceProperties.struct_class = Types::SalesforceSourceProperties

    ScheduledTriggerProperties.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, required: true, location_name: "ScheduleExpression"))
    ScheduledTriggerProperties.add_member(:data_pull_mode, Shapes::ShapeRef.new(shape: DataPullMode, location_name: "DataPullMode"))
    ScheduledTriggerProperties.add_member(:schedule_start_time, Shapes::ShapeRef.new(shape: Date, location_name: "ScheduleStartTime"))
    ScheduledTriggerProperties.add_member(:schedule_end_time, Shapes::ShapeRef.new(shape: Date, location_name: "ScheduleEndTime"))
    ScheduledTriggerProperties.add_member(:timezone, Shapes::ShapeRef.new(shape: Timezone, location_name: "Timezone"))
    ScheduledTriggerProperties.add_member(:schedule_offset, Shapes::ShapeRef.new(shape: ScheduleOffset, location_name: "ScheduleOffset", metadata: {"box" => true}))
    ScheduledTriggerProperties.add_member(:first_execution_from, Shapes::ShapeRef.new(shape: Date, location_name: "FirstExecutionFrom"))
    ScheduledTriggerProperties.struct_class = Types::ScheduledTriggerProperties

    SearchProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    SearchProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxSize100, location: "querystring", location_name: "max-results"))
    SearchProfilesRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    SearchProfilesRequest.add_member(:key_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "KeyName"))
    SearchProfilesRequest.add_member(:values, Shapes::ShapeRef.new(shape: requestValueList, required: true, location_name: "Values"))
    SearchProfilesRequest.add_member(:additional_search_keys, Shapes::ShapeRef.new(shape: additionalSearchKeysList, location_name: "AdditionalSearchKeys"))
    SearchProfilesRequest.add_member(:logical_operator, Shapes::ShapeRef.new(shape: logicalOperator, location_name: "LogicalOperator"))
    SearchProfilesRequest.struct_class = Types::SearchProfilesRequest

    SearchProfilesResponse.add_member(:items, Shapes::ShapeRef.new(shape: ProfileList, location_name: "Items"))
    SearchProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    SearchProfilesResponse.struct_class = Types::SearchProfilesResponse

    SegmentDefinitionItem.add_member(:segment_definition_name, Shapes::ShapeRef.new(shape: name, location_name: "SegmentDefinitionName"))
    SegmentDefinitionItem.add_member(:display_name, Shapes::ShapeRef.new(shape: string1To255, location_name: "DisplayName"))
    SegmentDefinitionItem.add_member(:description, Shapes::ShapeRef.new(shape: sensitiveText, location_name: "Description"))
    SegmentDefinitionItem.add_member(:segment_definition_arn, Shapes::ShapeRef.new(shape: SegmentDefinitionArn, location_name: "SegmentDefinitionArn"))
    SegmentDefinitionItem.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreatedAt"))
    SegmentDefinitionItem.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    SegmentDefinitionItem.struct_class = Types::SegmentDefinitionItem

    SegmentDefinitionsList.member = Shapes::ShapeRef.new(shape: SegmentDefinitionItem)

    SegmentGroup.add_member(:groups, Shapes::ShapeRef.new(shape: SegmentGroupList, location_name: "Groups"))
    SegmentGroup.add_member(:include, Shapes::ShapeRef.new(shape: IncludeOptions, location_name: "Include"))
    SegmentGroup.struct_class = Types::SegmentGroup

    SegmentGroupList.member = Shapes::ShapeRef.new(shape: Group)

    SegmentGroupStructure.add_member(:groups, Shapes::ShapeRef.new(shape: SegmentGroupList, location_name: "Groups"))
    SegmentGroupStructure.add_member(:include, Shapes::ShapeRef.new(shape: IncludeOptions, location_name: "Include"))
    SegmentGroupStructure.struct_class = Types::SegmentGroupStructure

    ServiceNowSourceProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "Object"))
    ServiceNowSourceProperties.struct_class = Types::ServiceNowSourceProperties

    SourceConnectorProperties.add_member(:marketo, Shapes::ShapeRef.new(shape: MarketoSourceProperties, location_name: "Marketo"))
    SourceConnectorProperties.add_member(:s3, Shapes::ShapeRef.new(shape: S3SourceProperties, location_name: "S3"))
    SourceConnectorProperties.add_member(:salesforce, Shapes::ShapeRef.new(shape: SalesforceSourceProperties, location_name: "Salesforce"))
    SourceConnectorProperties.add_member(:service_now, Shapes::ShapeRef.new(shape: ServiceNowSourceProperties, location_name: "ServiceNow"))
    SourceConnectorProperties.add_member(:zendesk, Shapes::ShapeRef.new(shape: ZendeskSourceProperties, location_name: "Zendesk"))
    SourceConnectorProperties.struct_class = Types::SourceConnectorProperties

    SourceFields.member = Shapes::ShapeRef.new(shape: stringTo2048)

    SourceFlowConfig.add_member(:connector_profile_name, Shapes::ShapeRef.new(shape: ConnectorProfileName, location_name: "ConnectorProfileName"))
    SourceFlowConfig.add_member(:connector_type, Shapes::ShapeRef.new(shape: SourceConnectorType, required: true, location_name: "ConnectorType"))
    SourceFlowConfig.add_member(:incremental_pull_config, Shapes::ShapeRef.new(shape: IncrementalPullConfig, location_name: "IncrementalPullConfig"))
    SourceFlowConfig.add_member(:source_connector_properties, Shapes::ShapeRef.new(shape: SourceConnectorProperties, required: true, location_name: "SourceConnectorProperties"))
    SourceFlowConfig.struct_class = Types::SourceFlowConfig

    SourceSegment.add_member(:segment_definition_name, Shapes::ShapeRef.new(shape: name, location_name: "SegmentDefinitionName"))
    SourceSegment.struct_class = Types::SourceSegment

    SourceSegmentList.member = Shapes::ShapeRef.new(shape: SourceSegment)

    StandardIdentifierList.member = Shapes::ShapeRef.new(shape: StandardIdentifier)

    StartUploadJobRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    StartUploadJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "JobId"))
    StartUploadJobRequest.struct_class = Types::StartUploadJobRequest

    StartUploadJobResponse.struct_class = Types::StartUploadJobResponse

    StopUploadJobRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    StopUploadJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "JobId"))
    StopUploadJobRequest.struct_class = Types::StopUploadJobRequest

    StopUploadJobResponse.struct_class = Types::StopUploadJobResponse

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TagArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Task.add_member(:connector_operator, Shapes::ShapeRef.new(shape: ConnectorOperator, location_name: "ConnectorOperator"))
    Task.add_member(:destination_field, Shapes::ShapeRef.new(shape: DestinationField, location_name: "DestinationField"))
    Task.add_member(:source_fields, Shapes::ShapeRef.new(shape: SourceFields, required: true, location_name: "SourceFields"))
    Task.add_member(:task_properties, Shapes::ShapeRef.new(shape: TaskPropertiesMap, location_name: "TaskProperties"))
    Task.add_member(:task_type, Shapes::ShapeRef.new(shape: TaskType, required: true, location_name: "TaskType"))
    Task.struct_class = Types::Task

    TaskPropertiesMap.key = Shapes::ShapeRef.new(shape: OperatorPropertiesKeys)
    TaskPropertiesMap.value = Shapes::ShapeRef.new(shape: Property)

    Tasks.member = Shapes::ShapeRef.new(shape: Task)

    Threshold.add_member(:value, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "Value"))
    Threshold.add_member(:operator, Shapes::ShapeRef.new(shape: Operator, required: true, location_name: "Operator"))
    Threshold.struct_class = Types::Threshold

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: message, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TriggerConfig.add_member(:trigger_type, Shapes::ShapeRef.new(shape: TriggerType, required: true, location_name: "TriggerType"))
    TriggerConfig.add_member(:trigger_properties, Shapes::ShapeRef.new(shape: TriggerProperties, location_name: "TriggerProperties"))
    TriggerConfig.struct_class = Types::TriggerConfig

    TriggerProperties.add_member(:scheduled, Shapes::ShapeRef.new(shape: ScheduledTriggerProperties, location_name: "Scheduled"))
    TriggerProperties.struct_class = Types::TriggerProperties

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TagArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAddress.add_member(:address_1, Shapes::ShapeRef.new(shape: string0To255, location_name: "Address1"))
    UpdateAddress.add_member(:address_2, Shapes::ShapeRef.new(shape: string0To255, location_name: "Address2"))
    UpdateAddress.add_member(:address_3, Shapes::ShapeRef.new(shape: string0To255, location_name: "Address3"))
    UpdateAddress.add_member(:address_4, Shapes::ShapeRef.new(shape: string0To255, location_name: "Address4"))
    UpdateAddress.add_member(:city, Shapes::ShapeRef.new(shape: string0To255, location_name: "City"))
    UpdateAddress.add_member(:county, Shapes::ShapeRef.new(shape: string0To255, location_name: "County"))
    UpdateAddress.add_member(:state, Shapes::ShapeRef.new(shape: string0To255, location_name: "State"))
    UpdateAddress.add_member(:province, Shapes::ShapeRef.new(shape: string0To255, location_name: "Province"))
    UpdateAddress.add_member(:country, Shapes::ShapeRef.new(shape: string0To255, location_name: "Country"))
    UpdateAddress.add_member(:postal_code, Shapes::ShapeRef.new(shape: string0To255, location_name: "PostalCode"))
    UpdateAddress.struct_class = Types::UpdateAddress

    UpdateAttributes.key = Shapes::ShapeRef.new(shape: string1To255)
    UpdateAttributes.value = Shapes::ShapeRef.new(shape: string0To255)

    UpdateCalculatedAttributeDefinitionRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    UpdateCalculatedAttributeDefinitionRequest.add_member(:calculated_attribute_name, Shapes::ShapeRef.new(shape: typeName, required: true, location: "uri", location_name: "CalculatedAttributeName"))
    UpdateCalculatedAttributeDefinitionRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: displayName, location_name: "DisplayName"))
    UpdateCalculatedAttributeDefinitionRequest.add_member(:description, Shapes::ShapeRef.new(shape: sensitiveText, location_name: "Description"))
    UpdateCalculatedAttributeDefinitionRequest.add_member(:conditions, Shapes::ShapeRef.new(shape: Conditions, location_name: "Conditions"))
    UpdateCalculatedAttributeDefinitionRequest.struct_class = Types::UpdateCalculatedAttributeDefinitionRequest

    UpdateCalculatedAttributeDefinitionResponse.add_member(:calculated_attribute_name, Shapes::ShapeRef.new(shape: typeName, location_name: "CalculatedAttributeName"))
    UpdateCalculatedAttributeDefinitionResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: displayName, location_name: "DisplayName"))
    UpdateCalculatedAttributeDefinitionResponse.add_member(:description, Shapes::ShapeRef.new(shape: sensitiveText, location_name: "Description"))
    UpdateCalculatedAttributeDefinitionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreatedAt"))
    UpdateCalculatedAttributeDefinitionResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastUpdatedAt"))
    UpdateCalculatedAttributeDefinitionResponse.add_member(:statistic, Shapes::ShapeRef.new(shape: Statistic, location_name: "Statistic"))
    UpdateCalculatedAttributeDefinitionResponse.add_member(:conditions, Shapes::ShapeRef.new(shape: Conditions, location_name: "Conditions"))
    UpdateCalculatedAttributeDefinitionResponse.add_member(:attribute_details, Shapes::ShapeRef.new(shape: AttributeDetails, location_name: "AttributeDetails"))
    UpdateCalculatedAttributeDefinitionResponse.add_member(:use_historical_data, Shapes::ShapeRef.new(shape: optionalBoolean, location_name: "UseHistoricalData"))
    UpdateCalculatedAttributeDefinitionResponse.add_member(:status, Shapes::ShapeRef.new(shape: ReadinessStatus, location_name: "Status"))
    UpdateCalculatedAttributeDefinitionResponse.add_member(:readiness, Shapes::ShapeRef.new(shape: Readiness, location_name: "Readiness"))
    UpdateCalculatedAttributeDefinitionResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    UpdateCalculatedAttributeDefinitionResponse.struct_class = Types::UpdateCalculatedAttributeDefinitionResponse

    UpdateDomainLayoutRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    UpdateDomainLayoutRequest.add_member(:layout_definition_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "LayoutDefinitionName"))
    UpdateDomainLayoutRequest.add_member(:description, Shapes::ShapeRef.new(shape: sensitiveText, location_name: "Description"))
    UpdateDomainLayoutRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: displayName, location_name: "DisplayName"))
    UpdateDomainLayoutRequest.add_member(:is_default, Shapes::ShapeRef.new(shape: boolean, location_name: "IsDefault"))
    UpdateDomainLayoutRequest.add_member(:layout_type, Shapes::ShapeRef.new(shape: LayoutType, location_name: "LayoutType"))
    UpdateDomainLayoutRequest.add_member(:layout, Shapes::ShapeRef.new(shape: sensitiveString1To2000000, location_name: "Layout"))
    UpdateDomainLayoutRequest.struct_class = Types::UpdateDomainLayoutRequest

    UpdateDomainLayoutResponse.add_member(:layout_definition_name, Shapes::ShapeRef.new(shape: name, location_name: "LayoutDefinitionName"))
    UpdateDomainLayoutResponse.add_member(:description, Shapes::ShapeRef.new(shape: sensitiveText, location_name: "Description"))
    UpdateDomainLayoutResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: displayName, location_name: "DisplayName"))
    UpdateDomainLayoutResponse.add_member(:is_default, Shapes::ShapeRef.new(shape: boolean, location_name: "IsDefault"))
    UpdateDomainLayoutResponse.add_member(:layout_type, Shapes::ShapeRef.new(shape: LayoutType, location_name: "LayoutType"))
    UpdateDomainLayoutResponse.add_member(:layout, Shapes::ShapeRef.new(shape: sensitiveString1To2000000, location_name: "Layout"))
    UpdateDomainLayoutResponse.add_member(:version, Shapes::ShapeRef.new(shape: string1To255, location_name: "Version"))
    UpdateDomainLayoutResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreatedAt"))
    UpdateDomainLayoutResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastUpdatedAt"))
    UpdateDomainLayoutResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    UpdateDomainLayoutResponse.struct_class = Types::UpdateDomainLayoutResponse

    UpdateDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    UpdateDomainRequest.add_member(:default_expiration_days, Shapes::ShapeRef.new(shape: expirationDaysInteger, location_name: "DefaultExpirationDays"))
    UpdateDomainRequest.add_member(:default_encryption_key, Shapes::ShapeRef.new(shape: encryptionKey, location_name: "DefaultEncryptionKey"))
    UpdateDomainRequest.add_member(:dead_letter_queue_url, Shapes::ShapeRef.new(shape: sqsQueueUrl, location_name: "DeadLetterQueueUrl"))
    UpdateDomainRequest.add_member(:matching, Shapes::ShapeRef.new(shape: MatchingRequest, location_name: "Matching"))
    UpdateDomainRequest.add_member(:rule_based_matching, Shapes::ShapeRef.new(shape: RuleBasedMatchingRequest, location_name: "RuleBasedMatching"))
    UpdateDomainRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    UpdateDomainRequest.struct_class = Types::UpdateDomainRequest

    UpdateDomainResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "DomainName"))
    UpdateDomainResponse.add_member(:default_expiration_days, Shapes::ShapeRef.new(shape: expirationDaysInteger, location_name: "DefaultExpirationDays"))
    UpdateDomainResponse.add_member(:default_encryption_key, Shapes::ShapeRef.new(shape: encryptionKey, location_name: "DefaultEncryptionKey"))
    UpdateDomainResponse.add_member(:dead_letter_queue_url, Shapes::ShapeRef.new(shape: sqsQueueUrl, location_name: "DeadLetterQueueUrl"))
    UpdateDomainResponse.add_member(:matching, Shapes::ShapeRef.new(shape: MatchingResponse, location_name: "Matching"))
    UpdateDomainResponse.add_member(:rule_based_matching, Shapes::ShapeRef.new(shape: RuleBasedMatchingResponse, location_name: "RuleBasedMatching"))
    UpdateDomainResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "CreatedAt"))
    UpdateDomainResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastUpdatedAt"))
    UpdateDomainResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    UpdateDomainResponse.struct_class = Types::UpdateDomainResponse

    UpdateEventTriggerRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    UpdateEventTriggerRequest.add_member(:event_trigger_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "EventTriggerName"))
    UpdateEventTriggerRequest.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, location_name: "ObjectTypeName"))
    UpdateEventTriggerRequest.add_member(:description, Shapes::ShapeRef.new(shape: sensitiveText, location_name: "Description"))
    UpdateEventTriggerRequest.add_member(:event_trigger_conditions, Shapes::ShapeRef.new(shape: EventTriggerConditions, location_name: "EventTriggerConditions"))
    UpdateEventTriggerRequest.add_member(:segment_filter, Shapes::ShapeRef.new(shape: name, location_name: "SegmentFilter"))
    UpdateEventTriggerRequest.add_member(:event_trigger_limits, Shapes::ShapeRef.new(shape: EventTriggerLimits, location_name: "EventTriggerLimits"))
    UpdateEventTriggerRequest.struct_class = Types::UpdateEventTriggerRequest

    UpdateEventTriggerResponse.add_member(:event_trigger_name, Shapes::ShapeRef.new(shape: name, location_name: "EventTriggerName"))
    UpdateEventTriggerResponse.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, location_name: "ObjectTypeName"))
    UpdateEventTriggerResponse.add_member(:description, Shapes::ShapeRef.new(shape: sensitiveText, location_name: "Description"))
    UpdateEventTriggerResponse.add_member(:event_trigger_conditions, Shapes::ShapeRef.new(shape: EventTriggerConditions, location_name: "EventTriggerConditions"))
    UpdateEventTriggerResponse.add_member(:segment_filter, Shapes::ShapeRef.new(shape: name, location_name: "SegmentFilter"))
    UpdateEventTriggerResponse.add_member(:event_trigger_limits, Shapes::ShapeRef.new(shape: EventTriggerLimits, location_name: "EventTriggerLimits"))
    UpdateEventTriggerResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreatedAt"))
    UpdateEventTriggerResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastUpdatedAt"))
    UpdateEventTriggerResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    UpdateEventTriggerResponse.struct_class = Types::UpdateEventTriggerResponse

    UpdateProfileRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    UpdateProfileRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: uuid, required: true, location_name: "ProfileId"))
    UpdateProfileRequest.add_member(:additional_information, Shapes::ShapeRef.new(shape: sensitiveString0To1000, location_name: "AdditionalInformation"))
    UpdateProfileRequest.add_member(:account_number, Shapes::ShapeRef.new(shape: sensitiveString0To255, location_name: "AccountNumber"))
    UpdateProfileRequest.add_member(:party_type, Shapes::ShapeRef.new(shape: PartyType, deprecated: true, location_name: "PartyType"))
    UpdateProfileRequest.add_member(:business_name, Shapes::ShapeRef.new(shape: sensitiveString0To255, location_name: "BusinessName"))
    UpdateProfileRequest.add_member(:first_name, Shapes::ShapeRef.new(shape: sensitiveString0To255, location_name: "FirstName"))
    UpdateProfileRequest.add_member(:middle_name, Shapes::ShapeRef.new(shape: sensitiveString0To255, location_name: "MiddleName"))
    UpdateProfileRequest.add_member(:last_name, Shapes::ShapeRef.new(shape: sensitiveString0To255, location_name: "LastName"))
    UpdateProfileRequest.add_member(:birth_date, Shapes::ShapeRef.new(shape: sensitiveString0To255, location_name: "BirthDate"))
    UpdateProfileRequest.add_member(:gender, Shapes::ShapeRef.new(shape: Gender, deprecated: true, location_name: "Gender"))
    UpdateProfileRequest.add_member(:phone_number, Shapes::ShapeRef.new(shape: sensitiveString0To255, location_name: "PhoneNumber"))
    UpdateProfileRequest.add_member(:mobile_phone_number, Shapes::ShapeRef.new(shape: sensitiveString0To255, location_name: "MobilePhoneNumber"))
    UpdateProfileRequest.add_member(:home_phone_number, Shapes::ShapeRef.new(shape: sensitiveString0To255, location_name: "HomePhoneNumber"))
    UpdateProfileRequest.add_member(:business_phone_number, Shapes::ShapeRef.new(shape: sensitiveString0To255, location_name: "BusinessPhoneNumber"))
    UpdateProfileRequest.add_member(:email_address, Shapes::ShapeRef.new(shape: sensitiveString0To255, location_name: "EmailAddress"))
    UpdateProfileRequest.add_member(:personal_email_address, Shapes::ShapeRef.new(shape: sensitiveString0To255, location_name: "PersonalEmailAddress"))
    UpdateProfileRequest.add_member(:business_email_address, Shapes::ShapeRef.new(shape: sensitiveString0To255, location_name: "BusinessEmailAddress"))
    UpdateProfileRequest.add_member(:address, Shapes::ShapeRef.new(shape: UpdateAddress, location_name: "Address"))
    UpdateProfileRequest.add_member(:shipping_address, Shapes::ShapeRef.new(shape: UpdateAddress, location_name: "ShippingAddress"))
    UpdateProfileRequest.add_member(:mailing_address, Shapes::ShapeRef.new(shape: UpdateAddress, location_name: "MailingAddress"))
    UpdateProfileRequest.add_member(:billing_address, Shapes::ShapeRef.new(shape: UpdateAddress, location_name: "BillingAddress"))
    UpdateProfileRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: UpdateAttributes, location_name: "Attributes"))
    UpdateProfileRequest.add_member(:party_type_string, Shapes::ShapeRef.new(shape: sensitiveString0To255, location_name: "PartyTypeString"))
    UpdateProfileRequest.add_member(:gender_string, Shapes::ShapeRef.new(shape: sensitiveString0To255, location_name: "GenderString"))
    UpdateProfileRequest.add_member(:profile_type, Shapes::ShapeRef.new(shape: ProfileType, location_name: "ProfileType"))
    UpdateProfileRequest.add_member(:engagement_preferences, Shapes::ShapeRef.new(shape: EngagementPreferences, location_name: "EngagementPreferences"))
    UpdateProfileRequest.struct_class = Types::UpdateProfileRequest

    UpdateProfileResponse.add_member(:profile_id, Shapes::ShapeRef.new(shape: uuid, required: true, location_name: "ProfileId"))
    UpdateProfileResponse.struct_class = Types::UpdateProfileResponse

    UploadJobItem.add_member(:job_id, Shapes::ShapeRef.new(shape: uuid, location_name: "JobId"))
    UploadJobItem.add_member(:display_name, Shapes::ShapeRef.new(shape: string1To255, location_name: "DisplayName"))
    UploadJobItem.add_member(:status, Shapes::ShapeRef.new(shape: UploadJobStatus, location_name: "Status"))
    UploadJobItem.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReason, location_name: "StatusReason"))
    UploadJobItem.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreatedAt"))
    UploadJobItem.add_member(:completed_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "CompletedAt"))
    UploadJobItem.add_member(:data_expiry, Shapes::ShapeRef.new(shape: expirationDaysInteger, location_name: "DataExpiry"))
    UploadJobItem.struct_class = Types::UploadJobItem

    UploadJobsList.member = Shapes::ShapeRef.new(shape: UploadJobItem)

    ValueList.member = Shapes::ShapeRef.new(shape: string1To255)

    ValueRange.add_member(:start, Shapes::ShapeRef.new(shape: ValueRangeStart, required: true, location_name: "Start"))
    ValueRange.add_member(:end, Shapes::ShapeRef.new(shape: ValueRangeEnd, required: true, location_name: "End"))
    ValueRange.struct_class = Types::ValueRange

    Values.member = Shapes::ShapeRef.new(shape: string1To255)

    WorkflowAttributes.add_member(:appflow_integration, Shapes::ShapeRef.new(shape: AppflowIntegrationWorkflowAttributes, location_name: "AppflowIntegration"))
    WorkflowAttributes.struct_class = Types::WorkflowAttributes

    WorkflowList.member = Shapes::ShapeRef.new(shape: ListWorkflowsItem)

    WorkflowMetrics.add_member(:appflow_integration, Shapes::ShapeRef.new(shape: AppflowIntegrationWorkflowMetrics, location_name: "AppflowIntegration"))
    WorkflowMetrics.struct_class = Types::WorkflowMetrics

    WorkflowStepItem.add_member(:appflow_integration, Shapes::ShapeRef.new(shape: AppflowIntegrationWorkflowStep, location_name: "AppflowIntegration"))
    WorkflowStepItem.struct_class = Types::WorkflowStepItem

    WorkflowStepsList.member = Shapes::ShapeRef.new(shape: WorkflowStepItem)

    ZendeskSourceProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "Object"))
    ZendeskSourceProperties.struct_class = Types::ZendeskSourceProperties

    additionalSearchKeysList.member = Shapes::ShapeRef.new(shape: AdditionalSearchKey)

    foundByList.member = Shapes::ShapeRef.new(shape: FoundByKeyValue)

    requestValueList.member = Shapes::ShapeRef.new(shape: string1To255)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-08-15"

      api.metadata = {
        "apiVersion" => "2020-08-15",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "profile",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceAbbreviation" => "Customer Profiles",
        "serviceFullName" => "Amazon Connect Customer Profiles",
        "serviceId" => "Customer Profiles",
        "signatureVersion" => "v4",
        "signingName" => "profile",
        "uid" => "customer-profiles-2020-08-15",
      }

      api.add_operation(:add_profile_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddProfileKey"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/profiles/keys"
        o.input = Shapes::ShapeRef.new(shape: AddProfileKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: AddProfileKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:batch_get_calculated_attribute_for_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetCalculatedAttributeForProfile"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/calculated-attributes/{CalculatedAttributeName}/batch-get-for-profiles"
        o.input = Shapes::ShapeRef.new(shape: BatchGetCalculatedAttributeForProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetCalculatedAttributeForProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:batch_get_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetProfile"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/batch-get-profiles"
        o.input = Shapes::ShapeRef.new(shape: BatchGetProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_calculated_attribute_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCalculatedAttributeDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/calculated-attributes/{CalculatedAttributeName}"
        o.input = Shapes::ShapeRef.new(shape: CreateCalculatedAttributeDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCalculatedAttributeDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDomain"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}"
        o.input = Shapes::ShapeRef.new(shape: CreateDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_domain_layout, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDomainLayout"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/layouts/{LayoutDefinitionName}"
        o.input = Shapes::ShapeRef.new(shape: CreateDomainLayoutRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDomainLayoutResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_event_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEventStream"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/event-streams/{EventStreamName}"
        o.input = Shapes::ShapeRef.new(shape: CreateEventStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEventStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_event_trigger, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEventTrigger"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/event-triggers/{EventTriggerName}"
        o.input = Shapes::ShapeRef.new(shape: CreateEventTriggerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEventTriggerResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_integration_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIntegrationWorkflow"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/workflows/integrations"
        o.input = Shapes::ShapeRef.new(shape: CreateIntegrationWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateIntegrationWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProfile"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/profiles"
        o.input = Shapes::ShapeRef.new(shape: CreateProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_segment_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSegmentDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/segment-definitions/{SegmentDefinitionName}"
        o.input = Shapes::ShapeRef.new(shape: CreateSegmentDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSegmentDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_segment_estimate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSegmentEstimate"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/segment-estimates"
        o.input = Shapes::ShapeRef.new(shape: CreateSegmentEstimateRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSegmentEstimateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_segment_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSegmentSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/segments/{SegmentDefinitionName}/snapshots"
        o.input = Shapes::ShapeRef.new(shape: CreateSegmentSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSegmentSnapshotResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_upload_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUploadJob"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/upload-jobs"
        o.input = Shapes::ShapeRef.new(shape: CreateUploadJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUploadJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_calculated_attribute_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCalculatedAttributeDefinition"
        o.http_method = "DELETE"
        o.http_request_uri = "/domains/{DomainName}/calculated-attributes/{CalculatedAttributeName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCalculatedAttributeDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCalculatedAttributeDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDomain"
        o.http_method = "DELETE"
        o.http_request_uri = "/domains/{DomainName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_domain_layout, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDomainLayout"
        o.http_method = "DELETE"
        o.http_request_uri = "/domains/{DomainName}/layouts/{LayoutDefinitionName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDomainLayoutRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDomainLayoutResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_event_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventStream"
        o.http_method = "DELETE"
        o.http_request_uri = "/domains/{DomainName}/event-streams/{EventStreamName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEventStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_event_trigger, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventTrigger"
        o.http_method = "DELETE"
        o.http_request_uri = "/domains/{DomainName}/event-triggers/{EventTriggerName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventTriggerRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEventTriggerResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/integrations/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProfile"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/profiles/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_profile_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProfileKey"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/profiles/keys/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteProfileKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProfileKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_profile_object, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProfileObject"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/profiles/objects/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteProfileObjectRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProfileObjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_profile_object_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProfileObjectType"
        o.http_method = "DELETE"
        o.http_request_uri = "/domains/{DomainName}/object-types/{ObjectTypeName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteProfileObjectTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProfileObjectTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_segment_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSegmentDefinition"
        o.http_method = "DELETE"
        o.http_request_uri = "/domains/{DomainName}/segment-definitions/{SegmentDefinitionName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSegmentDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSegmentDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkflow"
        o.http_method = "DELETE"
        o.http_request_uri = "/domains/{DomainName}/workflows/{WorkflowId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:detect_profile_object_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetectProfileObjectType"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/detect/object-types"
        o.input = Shapes::ShapeRef.new(shape: DetectProfileObjectTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: DetectProfileObjectTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_auto_merging_preview, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAutoMergingPreview"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/identity-resolution-jobs/auto-merging-preview"
        o.input = Shapes::ShapeRef.new(shape: GetAutoMergingPreviewRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAutoMergingPreviewResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_calculated_attribute_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCalculatedAttributeDefinition"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/calculated-attributes/{CalculatedAttributeName}"
        o.input = Shapes::ShapeRef.new(shape: GetCalculatedAttributeDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCalculatedAttributeDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_calculated_attribute_for_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCalculatedAttributeForProfile"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/profile/{ProfileId}/calculated-attributes/{CalculatedAttributeName}"
        o.input = Shapes::ShapeRef.new(shape: GetCalculatedAttributeForProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCalculatedAttributeForProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDomain"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}"
        o.input = Shapes::ShapeRef.new(shape: GetDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_domain_layout, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDomainLayout"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/layouts/{LayoutDefinitionName}"
        o.input = Shapes::ShapeRef.new(shape: GetDomainLayoutRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDomainLayoutResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_event_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEventStream"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/event-streams/{EventStreamName}"
        o.input = Shapes::ShapeRef.new(shape: GetEventStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEventStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_event_trigger, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEventTrigger"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/event-triggers/{EventTriggerName}"
        o.input = Shapes::ShapeRef.new(shape: GetEventTriggerRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEventTriggerResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_identity_resolution_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIdentityResolutionJob"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/identity-resolution-jobs/{JobId}"
        o.input = Shapes::ShapeRef.new(shape: GetIdentityResolutionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIdentityResolutionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/integrations"
        o.input = Shapes::ShapeRef.new(shape: GetIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_matches, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMatches"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/matches"
        o.input = Shapes::ShapeRef.new(shape: GetMatchesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMatchesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_profile_object_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProfileObjectType"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/object-types/{ObjectTypeName}"
        o.input = Shapes::ShapeRef.new(shape: GetProfileObjectTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProfileObjectTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_profile_object_type_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProfileObjectTypeTemplate"
        o.http_method = "GET"
        o.http_request_uri = "/templates/{TemplateId}"
        o.input = Shapes::ShapeRef.new(shape: GetProfileObjectTypeTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProfileObjectTypeTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_segment_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSegmentDefinition"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/segment-definitions/{SegmentDefinitionName}"
        o.input = Shapes::ShapeRef.new(shape: GetSegmentDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSegmentDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_segment_estimate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSegmentEstimate"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/segment-estimates/{EstimateId}"
        o.input = Shapes::ShapeRef.new(shape: GetSegmentEstimateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSegmentEstimateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_segment_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSegmentMembership"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/segments/{SegmentDefinitionName}/membership"
        o.input = Shapes::ShapeRef.new(shape: GetSegmentMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSegmentMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_segment_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSegmentSnapshot"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/segments/{SegmentDefinitionName}/snapshots/{SnapshotId}"
        o.input = Shapes::ShapeRef.new(shape: GetSegmentSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSegmentSnapshotResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_similar_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSimilarProfiles"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/matches"
        o.input = Shapes::ShapeRef.new(shape: GetSimilarProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSimilarProfilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_upload_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUploadJob"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/upload-jobs/{JobId}"
        o.input = Shapes::ShapeRef.new(shape: GetUploadJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUploadJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_upload_job_path, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUploadJobPath"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/upload-jobs/{JobId}/path"
        o.input = Shapes::ShapeRef.new(shape: GetUploadJobPathRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUploadJobPathResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkflow"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/workflows/{WorkflowId}"
        o.input = Shapes::ShapeRef.new(shape: GetWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_workflow_steps, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkflowSteps"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/workflows/{WorkflowId}/steps"
        o.input = Shapes::ShapeRef.new(shape: GetWorkflowStepsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkflowStepsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_account_integrations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccountIntegrations"
        o.http_method = "POST"
        o.http_request_uri = "/integrations"
        o.input = Shapes::ShapeRef.new(shape: ListAccountIntegrationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccountIntegrationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_calculated_attribute_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCalculatedAttributeDefinitions"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/calculated-attributes"
        o.input = Shapes::ShapeRef.new(shape: ListCalculatedAttributeDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCalculatedAttributeDefinitionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_calculated_attributes_for_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCalculatedAttributesForProfile"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/profile/{ProfileId}/calculated-attributes"
        o.input = Shapes::ShapeRef.new(shape: ListCalculatedAttributesForProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCalculatedAttributesForProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_domain_layouts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDomainLayouts"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/layouts"
        o.input = Shapes::ShapeRef.new(shape: ListDomainLayoutsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDomainLayoutsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDomains"
        o.http_method = "GET"
        o.http_request_uri = "/domains"
        o.input = Shapes::ShapeRef.new(shape: ListDomainsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDomainsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_event_streams, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEventStreams"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/event-streams"
        o.input = Shapes::ShapeRef.new(shape: ListEventStreamsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEventStreamsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_event_triggers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEventTriggers"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/event-triggers"
        o.input = Shapes::ShapeRef.new(shape: ListEventTriggersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEventTriggersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_identity_resolution_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIdentityResolutionJobs"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/identity-resolution-jobs"
        o.input = Shapes::ShapeRef.new(shape: ListIdentityResolutionJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIdentityResolutionJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_integrations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIntegrations"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/integrations"
        o.input = Shapes::ShapeRef.new(shape: ListIntegrationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIntegrationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_object_type_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListObjectTypeAttributes"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/object-types/{ObjectTypeName}/attributes"
        o.input = Shapes::ShapeRef.new(shape: ListObjectTypeAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListObjectTypeAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_profile_attribute_values, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProfileAttributeValues"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/profile-attributes/{AttributeName}/values"
        o.input = Shapes::ShapeRef.new(shape: ProfileAttributeValuesRequest)
        o.output = Shapes::ShapeRef.new(shape: ProfileAttributeValuesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_profile_object_type_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProfileObjectTypeTemplates"
        o.http_method = "GET"
        o.http_request_uri = "/templates"
        o.input = Shapes::ShapeRef.new(shape: ListProfileObjectTypeTemplatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProfileObjectTypeTemplatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_profile_object_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProfileObjectTypes"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/object-types"
        o.input = Shapes::ShapeRef.new(shape: ListProfileObjectTypesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProfileObjectTypesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_profile_objects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProfileObjects"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/profiles/objects"
        o.input = Shapes::ShapeRef.new(shape: ListProfileObjectsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProfileObjectsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_rule_based_matches, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRuleBasedMatches"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/profiles/ruleBasedMatches"
        o.input = Shapes::ShapeRef.new(shape: ListRuleBasedMatchesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRuleBasedMatchesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_segment_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSegmentDefinitions"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/segment-definitions"
        o.input = Shapes::ShapeRef.new(shape: ListSegmentDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSegmentDefinitionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_upload_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUploadJobs"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/upload-jobs"
        o.input = Shapes::ShapeRef.new(shape: ListUploadJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUploadJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_workflows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkflows"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/workflows"
        o.input = Shapes::ShapeRef.new(shape: ListWorkflowsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkflowsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:merge_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "MergeProfiles"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/profiles/objects/merge"
        o.input = Shapes::ShapeRef.new(shape: MergeProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: MergeProfilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutIntegration"
        o.http_method = "PUT"
        o.http_request_uri = "/domains/{DomainName}/integrations"
        o.input = Shapes::ShapeRef.new(shape: PutIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_profile_object, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutProfileObject"
        o.http_method = "PUT"
        o.http_request_uri = "/domains/{DomainName}/profiles/objects"
        o.input = Shapes::ShapeRef.new(shape: PutProfileObjectRequest)
        o.output = Shapes::ShapeRef.new(shape: PutProfileObjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_profile_object_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutProfileObjectType"
        o.http_method = "PUT"
        o.http_request_uri = "/domains/{DomainName}/object-types/{ObjectTypeName}"
        o.input = Shapes::ShapeRef.new(shape: PutProfileObjectTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: PutProfileObjectTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:search_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchProfiles"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/profiles/search"
        o.input = Shapes::ShapeRef.new(shape: SearchProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchProfilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_upload_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartUploadJob"
        o.http_method = "PUT"
        o.http_request_uri = "/domains/{DomainName}/upload-jobs/{JobId}"
        o.input = Shapes::ShapeRef.new(shape: StartUploadJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartUploadJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:stop_upload_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopUploadJob"
        o.http_method = "PUT"
        o.http_request_uri = "/domains/{DomainName}/upload-jobs/{JobId}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopUploadJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StopUploadJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_calculated_attribute_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCalculatedAttributeDefinition"
        o.http_method = "PUT"
        o.http_request_uri = "/domains/{DomainName}/calculated-attributes/{CalculatedAttributeName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateCalculatedAttributeDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCalculatedAttributeDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDomain"
        o.http_method = "PUT"
        o.http_request_uri = "/domains/{DomainName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_domain_layout, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDomainLayout"
        o.http_method = "PUT"
        o.http_request_uri = "/domains/{DomainName}/layouts/{LayoutDefinitionName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDomainLayoutRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDomainLayoutResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_event_trigger, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEventTrigger"
        o.http_method = "PUT"
        o.http_request_uri = "/domains/{DomainName}/event-triggers/{EventTriggerName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateEventTriggerRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEventTriggerResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProfile"
        o.http_method = "PUT"
        o.http_request_uri = "/domains/{DomainName}/profiles"
        o.input = Shapes::ShapeRef.new(shape: UpdateProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
