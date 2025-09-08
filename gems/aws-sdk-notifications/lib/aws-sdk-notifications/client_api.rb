# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Notifications
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessStatus = Shapes::StringShape.new(name: 'AccessStatus')
    AccountContactType = Shapes::StringShape.new(name: 'AccountContactType')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AggregatedNotificationRegions = Shapes::ListShape.new(name: 'AggregatedNotificationRegions')
    AggregationDetail = Shapes::StructureShape.new(name: 'AggregationDetail')
    AggregationDuration = Shapes::StringShape.new(name: 'AggregationDuration')
    AggregationEventType = Shapes::StringShape.new(name: 'AggregationEventType')
    AggregationKey = Shapes::StructureShape.new(name: 'AggregationKey')
    AggregationKeys = Shapes::ListShape.new(name: 'AggregationKeys')
    AggregationSummary = Shapes::StructureShape.new(name: 'AggregationSummary')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssociateChannelRequest = Shapes::StructureShape.new(name: 'AssociateChannelRequest')
    AssociateChannelResponse = Shapes::StructureShape.new(name: 'AssociateChannelResponse')
    AssociateManagedNotificationAccountContactRequest = Shapes::StructureShape.new(name: 'AssociateManagedNotificationAccountContactRequest')
    AssociateManagedNotificationAccountContactResponse = Shapes::StructureShape.new(name: 'AssociateManagedNotificationAccountContactResponse')
    AssociateManagedNotificationAdditionalChannelRequest = Shapes::StructureShape.new(name: 'AssociateManagedNotificationAdditionalChannelRequest')
    AssociateManagedNotificationAdditionalChannelResponse = Shapes::StructureShape.new(name: 'AssociateManagedNotificationAdditionalChannelResponse')
    AssociateOrganizationalUnitRequest = Shapes::StructureShape.new(name: 'AssociateOrganizationalUnitRequest')
    AssociateOrganizationalUnitResponse = Shapes::StructureShape.new(name: 'AssociateOrganizationalUnitResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ChannelArn = Shapes::StringShape.new(name: 'ChannelArn')
    ChannelAssociationOverrideOption = Shapes::StringShape.new(name: 'ChannelAssociationOverrideOption')
    ChannelIdentifier = Shapes::StringShape.new(name: 'ChannelIdentifier')
    ChannelType = Shapes::StringShape.new(name: 'ChannelType')
    Channels = Shapes::ListShape.new(name: 'Channels')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateEventRuleRequest = Shapes::StructureShape.new(name: 'CreateEventRuleRequest')
    CreateEventRuleResponse = Shapes::StructureShape.new(name: 'CreateEventRuleResponse')
    CreateNotificationConfigurationRequest = Shapes::StructureShape.new(name: 'CreateNotificationConfigurationRequest')
    CreateNotificationConfigurationResponse = Shapes::StructureShape.new(name: 'CreateNotificationConfigurationResponse')
    CreationTime = Shapes::TimestampShape.new(name: 'CreationTime', timestampFormat: "iso8601")
    DeleteEventRuleRequest = Shapes::StructureShape.new(name: 'DeleteEventRuleRequest')
    DeleteEventRuleResponse = Shapes::StructureShape.new(name: 'DeleteEventRuleResponse')
    DeleteNotificationConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteNotificationConfigurationRequest')
    DeleteNotificationConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteNotificationConfigurationResponse')
    DeregisterNotificationHubRequest = Shapes::StructureShape.new(name: 'DeregisterNotificationHubRequest')
    DeregisterNotificationHubResponse = Shapes::StructureShape.new(name: 'DeregisterNotificationHubResponse')
    Dimension = Shapes::StructureShape.new(name: 'Dimension')
    Dimensions = Shapes::ListShape.new(name: 'Dimensions')
    DisableNotificationsAccessForOrganizationRequest = Shapes::StructureShape.new(name: 'DisableNotificationsAccessForOrganizationRequest')
    DisableNotificationsAccessForOrganizationResponse = Shapes::StructureShape.new(name: 'DisableNotificationsAccessForOrganizationResponse')
    DisassociateChannelRequest = Shapes::StructureShape.new(name: 'DisassociateChannelRequest')
    DisassociateChannelResponse = Shapes::StructureShape.new(name: 'DisassociateChannelResponse')
    DisassociateManagedNotificationAccountContactRequest = Shapes::StructureShape.new(name: 'DisassociateManagedNotificationAccountContactRequest')
    DisassociateManagedNotificationAccountContactResponse = Shapes::StructureShape.new(name: 'DisassociateManagedNotificationAccountContactResponse')
    DisassociateManagedNotificationAdditionalChannelRequest = Shapes::StructureShape.new(name: 'DisassociateManagedNotificationAdditionalChannelRequest')
    DisassociateManagedNotificationAdditionalChannelResponse = Shapes::StructureShape.new(name: 'DisassociateManagedNotificationAdditionalChannelResponse')
    DisassociateOrganizationalUnitRequest = Shapes::StructureShape.new(name: 'DisassociateOrganizationalUnitRequest')
    DisassociateOrganizationalUnitResponse = Shapes::StructureShape.new(name: 'DisassociateOrganizationalUnitResponse')
    EnableNotificationsAccessForOrganizationRequest = Shapes::StructureShape.new(name: 'EnableNotificationsAccessForOrganizationRequest')
    EnableNotificationsAccessForOrganizationResponse = Shapes::StructureShape.new(name: 'EnableNotificationsAccessForOrganizationResponse')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EventRuleArn = Shapes::StringShape.new(name: 'EventRuleArn')
    EventRuleEventPattern = Shapes::StringShape.new(name: 'EventRuleEventPattern')
    EventRuleStatus = Shapes::StringShape.new(name: 'EventRuleStatus')
    EventRuleStatusReason = Shapes::StringShape.new(name: 'EventRuleStatusReason')
    EventRuleStatusSummary = Shapes::StructureShape.new(name: 'EventRuleStatusSummary')
    EventRuleStructure = Shapes::StructureShape.new(name: 'EventRuleStructure')
    EventRules = Shapes::ListShape.new(name: 'EventRules')
    EventStatus = Shapes::StringShape.new(name: 'EventStatus')
    EventType = Shapes::StringShape.new(name: 'EventType')
    GetEventRuleRequest = Shapes::StructureShape.new(name: 'GetEventRuleRequest')
    GetEventRuleResponse = Shapes::StructureShape.new(name: 'GetEventRuleResponse')
    GetManagedNotificationChildEventRequest = Shapes::StructureShape.new(name: 'GetManagedNotificationChildEventRequest')
    GetManagedNotificationChildEventResponse = Shapes::StructureShape.new(name: 'GetManagedNotificationChildEventResponse')
    GetManagedNotificationConfigurationRequest = Shapes::StructureShape.new(name: 'GetManagedNotificationConfigurationRequest')
    GetManagedNotificationConfigurationResponse = Shapes::StructureShape.new(name: 'GetManagedNotificationConfigurationResponse')
    GetManagedNotificationEventRequest = Shapes::StructureShape.new(name: 'GetManagedNotificationEventRequest')
    GetManagedNotificationEventResponse = Shapes::StructureShape.new(name: 'GetManagedNotificationEventResponse')
    GetNotificationConfigurationRequest = Shapes::StructureShape.new(name: 'GetNotificationConfigurationRequest')
    GetNotificationConfigurationResponse = Shapes::StructureShape.new(name: 'GetNotificationConfigurationResponse')
    GetNotificationEventRequest = Shapes::StructureShape.new(name: 'GetNotificationEventRequest')
    GetNotificationEventResponse = Shapes::StructureShape.new(name: 'GetNotificationEventResponse')
    GetNotificationsAccessForOrganizationRequest = Shapes::StructureShape.new(name: 'GetNotificationsAccessForOrganizationRequest')
    GetNotificationsAccessForOrganizationResponse = Shapes::StructureShape.new(name: 'GetNotificationsAccessForOrganizationResponse')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LastActivationTime = Shapes::TimestampShape.new(name: 'LastActivationTime', timestampFormat: "iso8601")
    ListChannelsRequest = Shapes::StructureShape.new(name: 'ListChannelsRequest')
    ListChannelsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListChannelsRequestMaxResultsInteger')
    ListChannelsResponse = Shapes::StructureShape.new(name: 'ListChannelsResponse')
    ListEventRulesRequest = Shapes::StructureShape.new(name: 'ListEventRulesRequest')
    ListEventRulesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListEventRulesRequestMaxResultsInteger')
    ListEventRulesResponse = Shapes::StructureShape.new(name: 'ListEventRulesResponse')
    ListManagedNotificationChannelAssociationsRequest = Shapes::StructureShape.new(name: 'ListManagedNotificationChannelAssociationsRequest')
    ListManagedNotificationChannelAssociationsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListManagedNotificationChannelAssociationsRequestMaxResultsInteger')
    ListManagedNotificationChannelAssociationsResponse = Shapes::StructureShape.new(name: 'ListManagedNotificationChannelAssociationsResponse')
    ListManagedNotificationChildEventsRequest = Shapes::StructureShape.new(name: 'ListManagedNotificationChildEventsRequest')
    ListManagedNotificationChildEventsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListManagedNotificationChildEventsRequestMaxResultsInteger')
    ListManagedNotificationChildEventsResponse = Shapes::StructureShape.new(name: 'ListManagedNotificationChildEventsResponse')
    ListManagedNotificationConfigurationsRequest = Shapes::StructureShape.new(name: 'ListManagedNotificationConfigurationsRequest')
    ListManagedNotificationConfigurationsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListManagedNotificationConfigurationsRequestMaxResultsInteger')
    ListManagedNotificationConfigurationsResponse = Shapes::StructureShape.new(name: 'ListManagedNotificationConfigurationsResponse')
    ListManagedNotificationEventsRequest = Shapes::StructureShape.new(name: 'ListManagedNotificationEventsRequest')
    ListManagedNotificationEventsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListManagedNotificationEventsRequestMaxResultsInteger')
    ListManagedNotificationEventsResponse = Shapes::StructureShape.new(name: 'ListManagedNotificationEventsResponse')
    ListMemberAccountsRequest = Shapes::StructureShape.new(name: 'ListMemberAccountsRequest')
    ListMemberAccountsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListMemberAccountsRequestMaxResultsInteger')
    ListMemberAccountsResponse = Shapes::StructureShape.new(name: 'ListMemberAccountsResponse')
    ListNotificationConfigurationsRequest = Shapes::StructureShape.new(name: 'ListNotificationConfigurationsRequest')
    ListNotificationConfigurationsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListNotificationConfigurationsRequestMaxResultsInteger')
    ListNotificationConfigurationsResponse = Shapes::StructureShape.new(name: 'ListNotificationConfigurationsResponse')
    ListNotificationEventsRequest = Shapes::StructureShape.new(name: 'ListNotificationEventsRequest')
    ListNotificationEventsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListNotificationEventsRequestMaxResultsInteger')
    ListNotificationEventsResponse = Shapes::StructureShape.new(name: 'ListNotificationEventsResponse')
    ListNotificationHubsRequest = Shapes::StructureShape.new(name: 'ListNotificationHubsRequest')
    ListNotificationHubsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListNotificationHubsRequestMaxResultsInteger')
    ListNotificationHubsResponse = Shapes::StructureShape.new(name: 'ListNotificationHubsResponse')
    ListOrganizationalUnitsRequest = Shapes::StructureShape.new(name: 'ListOrganizationalUnitsRequest')
    ListOrganizationalUnitsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListOrganizationalUnitsRequestMaxResultsInteger')
    ListOrganizationalUnitsResponse = Shapes::StructureShape.new(name: 'ListOrganizationalUnitsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LocaleCode = Shapes::StringShape.new(name: 'LocaleCode')
    ManagedNotificationChannelAssociationSummary = Shapes::StructureShape.new(name: 'ManagedNotificationChannelAssociationSummary')
    ManagedNotificationChannelAssociations = Shapes::ListShape.new(name: 'ManagedNotificationChannelAssociations')
    ManagedNotificationChildEvent = Shapes::StructureShape.new(name: 'ManagedNotificationChildEvent')
    ManagedNotificationChildEventArn = Shapes::StringShape.new(name: 'ManagedNotificationChildEventArn')
    ManagedNotificationChildEventOverview = Shapes::StructureShape.new(name: 'ManagedNotificationChildEventOverview')
    ManagedNotificationChildEventSummary = Shapes::StructureShape.new(name: 'ManagedNotificationChildEventSummary')
    ManagedNotificationChildEvents = Shapes::ListShape.new(name: 'ManagedNotificationChildEvents')
    ManagedNotificationConfigurationDescription = Shapes::StringShape.new(name: 'ManagedNotificationConfigurationDescription')
    ManagedNotificationConfigurationName = Shapes::StringShape.new(name: 'ManagedNotificationConfigurationName')
    ManagedNotificationConfigurationOsArn = Shapes::StringShape.new(name: 'ManagedNotificationConfigurationOsArn')
    ManagedNotificationConfigurationStructure = Shapes::StructureShape.new(name: 'ManagedNotificationConfigurationStructure')
    ManagedNotificationConfigurations = Shapes::ListShape.new(name: 'ManagedNotificationConfigurations')
    ManagedNotificationEvent = Shapes::StructureShape.new(name: 'ManagedNotificationEvent')
    ManagedNotificationEventArn = Shapes::StringShape.new(name: 'ManagedNotificationEventArn')
    ManagedNotificationEventOverview = Shapes::StructureShape.new(name: 'ManagedNotificationEventOverview')
    ManagedNotificationEventSummary = Shapes::StructureShape.new(name: 'ManagedNotificationEventSummary')
    ManagedNotificationEvents = Shapes::ListShape.new(name: 'ManagedNotificationEvents')
    ManagedRuleArn = Shapes::StringShape.new(name: 'ManagedRuleArn')
    ManagedRuleArns = Shapes::ListShape.new(name: 'ManagedRuleArns')
    ManagedSourceEventMetadataSummary = Shapes::StructureShape.new(name: 'ManagedSourceEventMetadataSummary')
    ManagedSourceEventMetadataSummaryEventOriginRegionString = Shapes::StringShape.new(name: 'ManagedSourceEventMetadataSummaryEventOriginRegionString')
    ManagedSourceEventMetadataSummaryEventTypeString = Shapes::StringShape.new(name: 'ManagedSourceEventMetadataSummaryEventTypeString')
    Media = Shapes::ListShape.new(name: 'Media')
    MediaElement = Shapes::StructureShape.new(name: 'MediaElement')
    MediaElementType = Shapes::StringShape.new(name: 'MediaElementType')
    MediaId = Shapes::StringShape.new(name: 'MediaId')
    MemberAccount = Shapes::StructureShape.new(name: 'MemberAccount')
    MemberAccountNotificationConfigurationStatus = Shapes::StringShape.new(name: 'MemberAccountNotificationConfigurationStatus')
    MemberAccounts = Shapes::ListShape.new(name: 'MemberAccounts')
    MessageComponents = Shapes::StructureShape.new(name: 'MessageComponents')
    MessageComponentsSummary = Shapes::StructureShape.new(name: 'MessageComponentsSummary')
    MessageComponentsSummaryHeadlineString = Shapes::StringShape.new(name: 'MessageComponentsSummaryHeadlineString')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotificationConfigurationArn = Shapes::StringShape.new(name: 'NotificationConfigurationArn')
    NotificationConfigurationDescription = Shapes::StringShape.new(name: 'NotificationConfigurationDescription')
    NotificationConfigurationName = Shapes::StringShape.new(name: 'NotificationConfigurationName')
    NotificationConfigurationStatus = Shapes::StringShape.new(name: 'NotificationConfigurationStatus')
    NotificationConfigurationStructure = Shapes::StructureShape.new(name: 'NotificationConfigurationStructure')
    NotificationConfigurationSubtype = Shapes::StringShape.new(name: 'NotificationConfigurationSubtype')
    NotificationConfigurations = Shapes::ListShape.new(name: 'NotificationConfigurations')
    NotificationEvent = Shapes::StructureShape.new(name: 'NotificationEvent')
    NotificationEventArn = Shapes::StringShape.new(name: 'NotificationEventArn')
    NotificationEventId = Shapes::StringShape.new(name: 'NotificationEventId')
    NotificationEventOverview = Shapes::StructureShape.new(name: 'NotificationEventOverview')
    NotificationEventSummary = Shapes::StructureShape.new(name: 'NotificationEventSummary')
    NotificationEvents = Shapes::ListShape.new(name: 'NotificationEvents')
    NotificationHubOverview = Shapes::StructureShape.new(name: 'NotificationHubOverview')
    NotificationHubStatus = Shapes::StringShape.new(name: 'NotificationHubStatus')
    NotificationHubStatusReason = Shapes::StringShape.new(name: 'NotificationHubStatusReason')
    NotificationHubStatusSummary = Shapes::StructureShape.new(name: 'NotificationHubStatusSummary')
    NotificationHubs = Shapes::ListShape.new(name: 'NotificationHubs')
    NotificationType = Shapes::StringShape.new(name: 'NotificationType')
    NotificationsAccessForOrganization = Shapes::StructureShape.new(name: 'NotificationsAccessForOrganization')
    OrganizationalUnitId = Shapes::StringShape.new(name: 'OrganizationalUnitId')
    OrganizationalUnits = Shapes::ListShape.new(name: 'OrganizationalUnits')
    QuotaCode = Shapes::StringShape.new(name: 'QuotaCode')
    Region = Shapes::StringShape.new(name: 'Region')
    Regions = Shapes::ListShape.new(name: 'Regions')
    RegisterNotificationHubRequest = Shapes::StructureShape.new(name: 'RegisterNotificationHubRequest')
    RegisterNotificationHubResponse = Shapes::StructureShape.new(name: 'RegisterNotificationHubResponse')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    Resources = Shapes::ListShape.new(name: 'Resources')
    SampleAggregationDimensionValues = Shapes::ListShape.new(name: 'SampleAggregationDimensionValues')
    SampleAggregationDimensionValuesMemberString = Shapes::StringShape.new(name: 'SampleAggregationDimensionValuesMemberString')
    SchemaVersion = Shapes::StringShape.new(name: 'SchemaVersion')
    ServiceCode = Shapes::StringShape.new(name: 'ServiceCode')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Source = Shapes::StringShape.new(name: 'Source')
    SourceEventMetadata = Shapes::StructureShape.new(name: 'SourceEventMetadata')
    SourceEventMetadataEventOriginRegionString = Shapes::StringShape.new(name: 'SourceEventMetadataEventOriginRegionString')
    SourceEventMetadataEventTypeString = Shapes::StringShape.new(name: 'SourceEventMetadataEventTypeString')
    SourceEventMetadataEventTypeVersionString = Shapes::StringShape.new(name: 'SourceEventMetadataEventTypeVersionString')
    SourceEventMetadataRelatedAccountString = Shapes::StringShape.new(name: 'SourceEventMetadataRelatedAccountString')
    SourceEventMetadataSummary = Shapes::StructureShape.new(name: 'SourceEventMetadataSummary')
    SourceEventMetadataSummaryEventOriginRegionString = Shapes::StringShape.new(name: 'SourceEventMetadataSummaryEventOriginRegionString')
    SourceEventMetadataSummaryEventTypeString = Shapes::StringShape.new(name: 'SourceEventMetadataSummaryEventTypeString')
    StatusSummaryByRegion = Shapes::MapShape.new(name: 'StatusSummaryByRegion')
    String = Shapes::StringShape.new(name: 'String')
    SummarizationDimensionDetail = Shapes::StructureShape.new(name: 'SummarizationDimensionDetail')
    SummarizationDimensionDetails = Shapes::ListShape.new(name: 'SummarizationDimensionDetails')
    SummarizationDimensionOverview = Shapes::StructureShape.new(name: 'SummarizationDimensionOverview')
    SummarizationDimensionOverviews = Shapes::ListShape.new(name: 'SummarizationDimensionOverviews')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    TagsMemberString = Shapes::StringShape.new(name: 'TagsMemberString')
    TextByLocale = Shapes::MapShape.new(name: 'TextByLocale')
    TextPartId = Shapes::StringShape.new(name: 'TextPartId')
    TextPartReference = Shapes::StringShape.new(name: 'TextPartReference')
    TextPartType = Shapes::StringShape.new(name: 'TextPartType')
    TextPartValue = Shapes::StructureShape.new(name: 'TextPartValue')
    TextPartValueDisplayTextString = Shapes::StringShape.new(name: 'TextPartValueDisplayTextString')
    TextParts = Shapes::MapShape.new(name: 'TextParts')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateEventRuleRequest = Shapes::StructureShape.new(name: 'UpdateEventRuleRequest')
    UpdateEventRuleResponse = Shapes::StructureShape.new(name: 'UpdateEventRuleResponse')
    UpdateNotificationConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateNotificationConfigurationRequest')
    UpdateNotificationConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateNotificationConfigurationResponse')
    Url = Shapes::StringShape.new(name: 'Url')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AggregatedNotificationRegions.member = Shapes::ShapeRef.new(shape: Region)

    AggregationDetail.add_member(:summarization_dimensions, Shapes::ShapeRef.new(shape: SummarizationDimensionDetails, location_name: "summarizationDimensions"))
    AggregationDetail.struct_class = Types::AggregationDetail

    AggregationKey.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    AggregationKey.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "value"))
    AggregationKey.struct_class = Types::AggregationKey

    AggregationKeys.member = Shapes::ShapeRef.new(shape: AggregationKey)

    AggregationSummary.add_member(:event_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "eventCount"))
    AggregationSummary.add_member(:aggregated_by, Shapes::ShapeRef.new(shape: AggregationKeys, required: true, location_name: "aggregatedBy"))
    AggregationSummary.add_member(:aggregated_accounts, Shapes::ShapeRef.new(shape: SummarizationDimensionOverview, required: true, location_name: "aggregatedAccounts"))
    AggregationSummary.add_member(:aggregated_regions, Shapes::ShapeRef.new(shape: SummarizationDimensionOverview, required: true, location_name: "aggregatedRegions"))
    AggregationSummary.add_member(:aggregated_organizational_units, Shapes::ShapeRef.new(shape: SummarizationDimensionOverview, location_name: "aggregatedOrganizationalUnits"))
    AggregationSummary.add_member(:additional_summarization_dimensions, Shapes::ShapeRef.new(shape: SummarizationDimensionOverviews, location_name: "additionalSummarizationDimensions"))
    AggregationSummary.struct_class = Types::AggregationSummary

    AssociateChannelRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location: "uri", location_name: "arn"))
    AssociateChannelRequest.add_member(:notification_configuration_arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location_name: "notificationConfigurationArn"))
    AssociateChannelRequest.struct_class = Types::AssociateChannelRequest

    AssociateChannelResponse.struct_class = Types::AssociateChannelResponse

    AssociateManagedNotificationAccountContactRequest.add_member(:contact_identifier, Shapes::ShapeRef.new(shape: AccountContactType, required: true, location: "uri", location_name: "contactIdentifier"))
    AssociateManagedNotificationAccountContactRequest.add_member(:managed_notification_configuration_arn, Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationOsArn, required: true, location_name: "managedNotificationConfigurationArn"))
    AssociateManagedNotificationAccountContactRequest.struct_class = Types::AssociateManagedNotificationAccountContactRequest

    AssociateManagedNotificationAccountContactResponse.struct_class = Types::AssociateManagedNotificationAccountContactResponse

    AssociateManagedNotificationAdditionalChannelRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location: "uri", location_name: "channelArn"))
    AssociateManagedNotificationAdditionalChannelRequest.add_member(:managed_notification_configuration_arn, Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationOsArn, required: true, location_name: "managedNotificationConfigurationArn"))
    AssociateManagedNotificationAdditionalChannelRequest.struct_class = Types::AssociateManagedNotificationAdditionalChannelRequest

    AssociateManagedNotificationAdditionalChannelResponse.struct_class = Types::AssociateManagedNotificationAdditionalChannelResponse

    AssociateOrganizationalUnitRequest.add_member(:organizational_unit_id, Shapes::ShapeRef.new(shape: OrganizationalUnitId, required: true, location: "uri", location_name: "organizationalUnitId"))
    AssociateOrganizationalUnitRequest.add_member(:notification_configuration_arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location_name: "notificationConfigurationArn"))
    AssociateOrganizationalUnitRequest.struct_class = Types::AssociateOrganizationalUnitRequest

    AssociateOrganizationalUnitResponse.struct_class = Types::AssociateOrganizationalUnitResponse

    Channels.member = Shapes::ShapeRef.new(shape: ChannelArn)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    ConflictException.struct_class = Types::ConflictException

    CreateEventRuleRequest.add_member(:notification_configuration_arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location_name: "notificationConfigurationArn"))
    CreateEventRuleRequest.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "source"))
    CreateEventRuleRequest.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, required: true, location_name: "eventType"))
    CreateEventRuleRequest.add_member(:event_pattern, Shapes::ShapeRef.new(shape: EventRuleEventPattern, location_name: "eventPattern"))
    CreateEventRuleRequest.add_member(:regions, Shapes::ShapeRef.new(shape: Regions, required: true, location_name: "regions"))
    CreateEventRuleRequest.struct_class = Types::CreateEventRuleRequest

    CreateEventRuleResponse.add_member(:arn, Shapes::ShapeRef.new(shape: EventRuleArn, required: true, location_name: "arn"))
    CreateEventRuleResponse.add_member(:notification_configuration_arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location_name: "notificationConfigurationArn"))
    CreateEventRuleResponse.add_member(:status_summary_by_region, Shapes::ShapeRef.new(shape: StatusSummaryByRegion, required: true, location_name: "statusSummaryByRegion"))
    CreateEventRuleResponse.struct_class = Types::CreateEventRuleResponse

    CreateNotificationConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: NotificationConfigurationName, required: true, location_name: "name"))
    CreateNotificationConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: NotificationConfigurationDescription, required: true, location_name: "description"))
    CreateNotificationConfigurationRequest.add_member(:aggregation_duration, Shapes::ShapeRef.new(shape: AggregationDuration, location_name: "aggregationDuration"))
    CreateNotificationConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateNotificationConfigurationRequest.struct_class = Types::CreateNotificationConfigurationRequest

    CreateNotificationConfigurationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location_name: "arn"))
    CreateNotificationConfigurationResponse.add_member(:status, Shapes::ShapeRef.new(shape: NotificationConfigurationStatus, required: true, location_name: "status"))
    CreateNotificationConfigurationResponse.struct_class = Types::CreateNotificationConfigurationResponse

    DeleteEventRuleRequest.add_member(:arn, Shapes::ShapeRef.new(shape: EventRuleArn, required: true, location: "uri", location_name: "arn"))
    DeleteEventRuleRequest.struct_class = Types::DeleteEventRuleRequest

    DeleteEventRuleResponse.struct_class = Types::DeleteEventRuleResponse

    DeleteNotificationConfigurationRequest.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location: "uri", location_name: "arn"))
    DeleteNotificationConfigurationRequest.struct_class = Types::DeleteNotificationConfigurationRequest

    DeleteNotificationConfigurationResponse.struct_class = Types::DeleteNotificationConfigurationResponse

    DeregisterNotificationHubRequest.add_member(:notification_hub_region, Shapes::ShapeRef.new(shape: Region, required: true, location: "uri", location_name: "notificationHubRegion"))
    DeregisterNotificationHubRequest.struct_class = Types::DeregisterNotificationHubRequest

    DeregisterNotificationHubResponse.add_member(:notification_hub_region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "notificationHubRegion"))
    DeregisterNotificationHubResponse.add_member(:status_summary, Shapes::ShapeRef.new(shape: NotificationHubStatusSummary, required: true, location_name: "statusSummary"))
    DeregisterNotificationHubResponse.struct_class = Types::DeregisterNotificationHubResponse

    Dimension.add_member(:name, Shapes::ShapeRef.new(shape: TextPartReference, required: true, location_name: "name"))
    Dimension.add_member(:value, Shapes::ShapeRef.new(shape: TextPartReference, required: true, location_name: "value"))
    Dimension.struct_class = Types::Dimension

    Dimensions.member = Shapes::ShapeRef.new(shape: Dimension)

    DisableNotificationsAccessForOrganizationRequest.struct_class = Types::DisableNotificationsAccessForOrganizationRequest

    DisableNotificationsAccessForOrganizationResponse.struct_class = Types::DisableNotificationsAccessForOrganizationResponse

    DisassociateChannelRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location: "uri", location_name: "arn"))
    DisassociateChannelRequest.add_member(:notification_configuration_arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location_name: "notificationConfigurationArn"))
    DisassociateChannelRequest.struct_class = Types::DisassociateChannelRequest

    DisassociateChannelResponse.struct_class = Types::DisassociateChannelResponse

    DisassociateManagedNotificationAccountContactRequest.add_member(:contact_identifier, Shapes::ShapeRef.new(shape: AccountContactType, required: true, location: "uri", location_name: "contactIdentifier"))
    DisassociateManagedNotificationAccountContactRequest.add_member(:managed_notification_configuration_arn, Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationOsArn, required: true, location_name: "managedNotificationConfigurationArn"))
    DisassociateManagedNotificationAccountContactRequest.struct_class = Types::DisassociateManagedNotificationAccountContactRequest

    DisassociateManagedNotificationAccountContactResponse.struct_class = Types::DisassociateManagedNotificationAccountContactResponse

    DisassociateManagedNotificationAdditionalChannelRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location: "uri", location_name: "channelArn"))
    DisassociateManagedNotificationAdditionalChannelRequest.add_member(:managed_notification_configuration_arn, Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationOsArn, required: true, location_name: "managedNotificationConfigurationArn"))
    DisassociateManagedNotificationAdditionalChannelRequest.struct_class = Types::DisassociateManagedNotificationAdditionalChannelRequest

    DisassociateManagedNotificationAdditionalChannelResponse.struct_class = Types::DisassociateManagedNotificationAdditionalChannelResponse

    DisassociateOrganizationalUnitRequest.add_member(:organizational_unit_id, Shapes::ShapeRef.new(shape: OrganizationalUnitId, required: true, location: "uri", location_name: "organizationalUnitId"))
    DisassociateOrganizationalUnitRequest.add_member(:notification_configuration_arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location_name: "notificationConfigurationArn"))
    DisassociateOrganizationalUnitRequest.struct_class = Types::DisassociateOrganizationalUnitRequest

    DisassociateOrganizationalUnitResponse.struct_class = Types::DisassociateOrganizationalUnitResponse

    EnableNotificationsAccessForOrganizationRequest.struct_class = Types::EnableNotificationsAccessForOrganizationRequest

    EnableNotificationsAccessForOrganizationResponse.struct_class = Types::EnableNotificationsAccessForOrganizationResponse

    EventRuleStatusSummary.add_member(:status, Shapes::ShapeRef.new(shape: EventRuleStatus, required: true, location_name: "status"))
    EventRuleStatusSummary.add_member(:reason, Shapes::ShapeRef.new(shape: EventRuleStatusReason, required: true, location_name: "reason"))
    EventRuleStatusSummary.struct_class = Types::EventRuleStatusSummary

    EventRuleStructure.add_member(:arn, Shapes::ShapeRef.new(shape: EventRuleArn, required: true, location_name: "arn"))
    EventRuleStructure.add_member(:notification_configuration_arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location_name: "notificationConfigurationArn"))
    EventRuleStructure.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    EventRuleStructure.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "source"))
    EventRuleStructure.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, required: true, location_name: "eventType"))
    EventRuleStructure.add_member(:event_pattern, Shapes::ShapeRef.new(shape: EventRuleEventPattern, required: true, location_name: "eventPattern"))
    EventRuleStructure.add_member(:regions, Shapes::ShapeRef.new(shape: Regions, required: true, location_name: "regions"))
    EventRuleStructure.add_member(:managed_rules, Shapes::ShapeRef.new(shape: ManagedRuleArns, required: true, location_name: "managedRules"))
    EventRuleStructure.add_member(:status_summary_by_region, Shapes::ShapeRef.new(shape: StatusSummaryByRegion, required: true, location_name: "statusSummaryByRegion"))
    EventRuleStructure.struct_class = Types::EventRuleStructure

    EventRules.member = Shapes::ShapeRef.new(shape: EventRuleStructure)

    GetEventRuleRequest.add_member(:arn, Shapes::ShapeRef.new(shape: EventRuleArn, required: true, location: "uri", location_name: "arn"))
    GetEventRuleRequest.struct_class = Types::GetEventRuleRequest

    GetEventRuleResponse.add_member(:arn, Shapes::ShapeRef.new(shape: EventRuleArn, required: true, location_name: "arn"))
    GetEventRuleResponse.add_member(:notification_configuration_arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location_name: "notificationConfigurationArn"))
    GetEventRuleResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    GetEventRuleResponse.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "source"))
    GetEventRuleResponse.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, required: true, location_name: "eventType"))
    GetEventRuleResponse.add_member(:event_pattern, Shapes::ShapeRef.new(shape: EventRuleEventPattern, required: true, location_name: "eventPattern"))
    GetEventRuleResponse.add_member(:regions, Shapes::ShapeRef.new(shape: Regions, required: true, location_name: "regions"))
    GetEventRuleResponse.add_member(:managed_rules, Shapes::ShapeRef.new(shape: ManagedRuleArns, required: true, location_name: "managedRules"))
    GetEventRuleResponse.add_member(:status_summary_by_region, Shapes::ShapeRef.new(shape: StatusSummaryByRegion, required: true, location_name: "statusSummaryByRegion"))
    GetEventRuleResponse.struct_class = Types::GetEventRuleResponse

    GetManagedNotificationChildEventRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ManagedNotificationChildEventArn, required: true, location: "uri", location_name: "arn"))
    GetManagedNotificationChildEventRequest.add_member(:locale, Shapes::ShapeRef.new(shape: LocaleCode, location: "querystring", location_name: "locale"))
    GetManagedNotificationChildEventRequest.struct_class = Types::GetManagedNotificationChildEventRequest

    GetManagedNotificationChildEventResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ManagedNotificationChildEventArn, required: true, location_name: "arn"))
    GetManagedNotificationChildEventResponse.add_member(:managed_notification_configuration_arn, Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationOsArn, required: true, location_name: "managedNotificationConfigurationArn"))
    GetManagedNotificationChildEventResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    GetManagedNotificationChildEventResponse.add_member(:content, Shapes::ShapeRef.new(shape: ManagedNotificationChildEvent, required: true, location_name: "content"))
    GetManagedNotificationChildEventResponse.struct_class = Types::GetManagedNotificationChildEventResponse

    GetManagedNotificationConfigurationRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationOsArn, required: true, location: "uri", location_name: "arn"))
    GetManagedNotificationConfigurationRequest.struct_class = Types::GetManagedNotificationConfigurationRequest

    GetManagedNotificationConfigurationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationOsArn, required: true, location_name: "arn"))
    GetManagedNotificationConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationName, required: true, location_name: "name"))
    GetManagedNotificationConfigurationResponse.add_member(:description, Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationDescription, required: true, location_name: "description"))
    GetManagedNotificationConfigurationResponse.add_member(:category, Shapes::ShapeRef.new(shape: String, required: true, location_name: "category"))
    GetManagedNotificationConfigurationResponse.add_member(:sub_category, Shapes::ShapeRef.new(shape: String, required: true, location_name: "subCategory"))
    GetManagedNotificationConfigurationResponse.struct_class = Types::GetManagedNotificationConfigurationResponse

    GetManagedNotificationEventRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ManagedNotificationEventArn, required: true, location: "uri", location_name: "arn"))
    GetManagedNotificationEventRequest.add_member(:locale, Shapes::ShapeRef.new(shape: LocaleCode, location: "querystring", location_name: "locale"))
    GetManagedNotificationEventRequest.struct_class = Types::GetManagedNotificationEventRequest

    GetManagedNotificationEventResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ManagedNotificationEventArn, required: true, location_name: "arn"))
    GetManagedNotificationEventResponse.add_member(:managed_notification_configuration_arn, Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationOsArn, required: true, location_name: "managedNotificationConfigurationArn"))
    GetManagedNotificationEventResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    GetManagedNotificationEventResponse.add_member(:content, Shapes::ShapeRef.new(shape: ManagedNotificationEvent, required: true, location_name: "content"))
    GetManagedNotificationEventResponse.struct_class = Types::GetManagedNotificationEventResponse

    GetNotificationConfigurationRequest.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location: "uri", location_name: "arn"))
    GetNotificationConfigurationRequest.struct_class = Types::GetNotificationConfigurationRequest

    GetNotificationConfigurationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location_name: "arn"))
    GetNotificationConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: NotificationConfigurationName, required: true, location_name: "name"))
    GetNotificationConfigurationResponse.add_member(:description, Shapes::ShapeRef.new(shape: NotificationConfigurationDescription, required: true, location_name: "description"))
    GetNotificationConfigurationResponse.add_member(:status, Shapes::ShapeRef.new(shape: NotificationConfigurationStatus, required: true, location_name: "status"))
    GetNotificationConfigurationResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    GetNotificationConfigurationResponse.add_member(:aggregation_duration, Shapes::ShapeRef.new(shape: AggregationDuration, location_name: "aggregationDuration"))
    GetNotificationConfigurationResponse.add_member(:subtype, Shapes::ShapeRef.new(shape: NotificationConfigurationSubtype, location_name: "subtype"))
    GetNotificationConfigurationResponse.struct_class = Types::GetNotificationConfigurationResponse

    GetNotificationEventRequest.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationEventArn, required: true, location: "uri", location_name: "arn"))
    GetNotificationEventRequest.add_member(:locale, Shapes::ShapeRef.new(shape: LocaleCode, location: "querystring", location_name: "locale"))
    GetNotificationEventRequest.struct_class = Types::GetNotificationEventRequest

    GetNotificationEventResponse.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationEventArn, required: true, location_name: "arn"))
    GetNotificationEventResponse.add_member(:notification_configuration_arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location_name: "notificationConfigurationArn"))
    GetNotificationEventResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    GetNotificationEventResponse.add_member(:content, Shapes::ShapeRef.new(shape: NotificationEvent, required: true, location_name: "content"))
    GetNotificationEventResponse.struct_class = Types::GetNotificationEventResponse

    GetNotificationsAccessForOrganizationRequest.struct_class = Types::GetNotificationsAccessForOrganizationRequest

    GetNotificationsAccessForOrganizationResponse.add_member(:notifications_access_for_organization, Shapes::ShapeRef.new(shape: NotificationsAccessForOrganization, required: true, location_name: "notificationsAccessForOrganization"))
    GetNotificationsAccessForOrganizationResponse.struct_class = Types::GetNotificationsAccessForOrganizationResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListChannelsRequest.add_member(:notification_configuration_arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location: "querystring", location_name: "notificationConfigurationArn"))
    ListChannelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListChannelsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListChannelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListChannelsRequest.struct_class = Types::ListChannelsRequest

    ListChannelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListChannelsResponse.add_member(:channels, Shapes::ShapeRef.new(shape: Channels, required: true, location_name: "channels"))
    ListChannelsResponse.struct_class = Types::ListChannelsResponse

    ListEventRulesRequest.add_member(:notification_configuration_arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location: "querystring", location_name: "notificationConfigurationArn"))
    ListEventRulesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListEventRulesRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListEventRulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListEventRulesRequest.struct_class = Types::ListEventRulesRequest

    ListEventRulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListEventRulesResponse.add_member(:event_rules, Shapes::ShapeRef.new(shape: EventRules, required: true, location_name: "eventRules"))
    ListEventRulesResponse.struct_class = Types::ListEventRulesResponse

    ListManagedNotificationChannelAssociationsRequest.add_member(:managed_notification_configuration_arn, Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationOsArn, required: true, location: "querystring", location_name: "managedNotificationConfigurationArn"))
    ListManagedNotificationChannelAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListManagedNotificationChannelAssociationsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListManagedNotificationChannelAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListManagedNotificationChannelAssociationsRequest.struct_class = Types::ListManagedNotificationChannelAssociationsRequest

    ListManagedNotificationChannelAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListManagedNotificationChannelAssociationsResponse.add_member(:channel_associations, Shapes::ShapeRef.new(shape: ManagedNotificationChannelAssociations, required: true, location_name: "channelAssociations"))
    ListManagedNotificationChannelAssociationsResponse.struct_class = Types::ListManagedNotificationChannelAssociationsResponse

    ListManagedNotificationChildEventsRequest.add_member(:aggregate_managed_notification_event_arn, Shapes::ShapeRef.new(shape: ManagedNotificationEventArn, required: true, location: "uri", location_name: "aggregateManagedNotificationEventArn"))
    ListManagedNotificationChildEventsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location: "querystring", location_name: "startTime"))
    ListManagedNotificationChildEventsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location: "querystring", location_name: "endTime"))
    ListManagedNotificationChildEventsRequest.add_member(:locale, Shapes::ShapeRef.new(shape: LocaleCode, location: "querystring", location_name: "locale"))
    ListManagedNotificationChildEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListManagedNotificationChildEventsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListManagedNotificationChildEventsRequest.add_member(:related_account, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "relatedAccount"))
    ListManagedNotificationChildEventsRequest.add_member(:organizational_unit_id, Shapes::ShapeRef.new(shape: OrganizationalUnitId, location: "querystring", location_name: "organizationalUnitId"))
    ListManagedNotificationChildEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListManagedNotificationChildEventsRequest.struct_class = Types::ListManagedNotificationChildEventsRequest

    ListManagedNotificationChildEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListManagedNotificationChildEventsResponse.add_member(:managed_notification_child_events, Shapes::ShapeRef.new(shape: ManagedNotificationChildEvents, required: true, location_name: "managedNotificationChildEvents"))
    ListManagedNotificationChildEventsResponse.struct_class = Types::ListManagedNotificationChildEventsResponse

    ListManagedNotificationConfigurationsRequest.add_member(:channel_identifier, Shapes::ShapeRef.new(shape: ChannelIdentifier, location: "querystring", location_name: "channelIdentifier"))
    ListManagedNotificationConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListManagedNotificationConfigurationsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListManagedNotificationConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListManagedNotificationConfigurationsRequest.struct_class = Types::ListManagedNotificationConfigurationsRequest

    ListManagedNotificationConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListManagedNotificationConfigurationsResponse.add_member(:managed_notification_configurations, Shapes::ShapeRef.new(shape: ManagedNotificationConfigurations, required: true, location_name: "managedNotificationConfigurations"))
    ListManagedNotificationConfigurationsResponse.struct_class = Types::ListManagedNotificationConfigurationsResponse

    ListManagedNotificationEventsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location: "querystring", location_name: "startTime"))
    ListManagedNotificationEventsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location: "querystring", location_name: "endTime"))
    ListManagedNotificationEventsRequest.add_member(:locale, Shapes::ShapeRef.new(shape: LocaleCode, location: "querystring", location_name: "locale"))
    ListManagedNotificationEventsRequest.add_member(:source, Shapes::ShapeRef.new(shape: Source, location: "querystring", location_name: "source"))
    ListManagedNotificationEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListManagedNotificationEventsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListManagedNotificationEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListManagedNotificationEventsRequest.add_member(:organizational_unit_id, Shapes::ShapeRef.new(shape: OrganizationalUnitId, location: "querystring", location_name: "organizationalUnitId"))
    ListManagedNotificationEventsRequest.add_member(:related_account, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "relatedAccount"))
    ListManagedNotificationEventsRequest.struct_class = Types::ListManagedNotificationEventsRequest

    ListManagedNotificationEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListManagedNotificationEventsResponse.add_member(:managed_notification_events, Shapes::ShapeRef.new(shape: ManagedNotificationEvents, required: true, location_name: "managedNotificationEvents"))
    ListManagedNotificationEventsResponse.struct_class = Types::ListManagedNotificationEventsResponse

    ListMemberAccountsRequest.add_member(:notification_configuration_arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location: "querystring", location_name: "notificationConfigurationArn"))
    ListMemberAccountsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMemberAccountsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListMemberAccountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListMemberAccountsRequest.add_member(:member_account, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "memberAccount"))
    ListMemberAccountsRequest.add_member(:status, Shapes::ShapeRef.new(shape: MemberAccountNotificationConfigurationStatus, location: "querystring", location_name: "status"))
    ListMemberAccountsRequest.add_member(:organizational_unit_id, Shapes::ShapeRef.new(shape: OrganizationalUnitId, location: "querystring", location_name: "organizationalUnitId"))
    ListMemberAccountsRequest.struct_class = Types::ListMemberAccountsRequest

    ListMemberAccountsResponse.add_member(:member_accounts, Shapes::ShapeRef.new(shape: MemberAccounts, required: true, location_name: "memberAccounts"))
    ListMemberAccountsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListMemberAccountsResponse.struct_class = Types::ListMemberAccountsResponse

    ListNotificationConfigurationsRequest.add_member(:event_rule_source, Shapes::ShapeRef.new(shape: Source, location: "querystring", location_name: "eventRuleSource"))
    ListNotificationConfigurationsRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, location: "querystring", location_name: "channelArn"))
    ListNotificationConfigurationsRequest.add_member(:status, Shapes::ShapeRef.new(shape: NotificationConfigurationStatus, location: "querystring", location_name: "status"))
    ListNotificationConfigurationsRequest.add_member(:subtype, Shapes::ShapeRef.new(shape: NotificationConfigurationSubtype, location: "querystring", location_name: "subtype"))
    ListNotificationConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListNotificationConfigurationsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListNotificationConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListNotificationConfigurationsRequest.struct_class = Types::ListNotificationConfigurationsRequest

    ListNotificationConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListNotificationConfigurationsResponse.add_member(:notification_configurations, Shapes::ShapeRef.new(shape: NotificationConfigurations, required: true, location_name: "notificationConfigurations"))
    ListNotificationConfigurationsResponse.struct_class = Types::ListNotificationConfigurationsResponse

    ListNotificationEventsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location: "querystring", location_name: "startTime"))
    ListNotificationEventsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location: "querystring", location_name: "endTime"))
    ListNotificationEventsRequest.add_member(:locale, Shapes::ShapeRef.new(shape: LocaleCode, location: "querystring", location_name: "locale"))
    ListNotificationEventsRequest.add_member(:source, Shapes::ShapeRef.new(shape: Source, location: "querystring", location_name: "source"))
    ListNotificationEventsRequest.add_member(:include_child_events, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "includeChildEvents"))
    ListNotificationEventsRequest.add_member(:aggregate_notification_event_arn, Shapes::ShapeRef.new(shape: NotificationEventArn, location: "querystring", location_name: "aggregateNotificationEventArn"))
    ListNotificationEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListNotificationEventsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListNotificationEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListNotificationEventsRequest.add_member(:organizational_unit_id, Shapes::ShapeRef.new(shape: OrganizationalUnitId, location: "querystring", location_name: "organizationalUnitId"))
    ListNotificationEventsRequest.struct_class = Types::ListNotificationEventsRequest

    ListNotificationEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListNotificationEventsResponse.add_member(:notification_events, Shapes::ShapeRef.new(shape: NotificationEvents, required: true, location_name: "notificationEvents"))
    ListNotificationEventsResponse.struct_class = Types::ListNotificationEventsResponse

    ListNotificationHubsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListNotificationHubsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListNotificationHubsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListNotificationHubsRequest.struct_class = Types::ListNotificationHubsRequest

    ListNotificationHubsResponse.add_member(:notification_hubs, Shapes::ShapeRef.new(shape: NotificationHubs, required: true, location_name: "notificationHubs"))
    ListNotificationHubsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListNotificationHubsResponse.struct_class = Types::ListNotificationHubsResponse

    ListOrganizationalUnitsRequest.add_member(:notification_configuration_arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location: "querystring", location_name: "notificationConfigurationArn"))
    ListOrganizationalUnitsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListOrganizationalUnitsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListOrganizationalUnitsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListOrganizationalUnitsRequest.struct_class = Types::ListOrganizationalUnitsRequest

    ListOrganizationalUnitsResponse.add_member(:organizational_units, Shapes::ShapeRef.new(shape: OrganizationalUnits, required: true, location_name: "organizationalUnits"))
    ListOrganizationalUnitsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListOrganizationalUnitsResponse.struct_class = Types::ListOrganizationalUnitsResponse

    ListTagsForResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location: "uri", location_name: "arn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ManagedNotificationChannelAssociationSummary.add_member(:channel_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "channelIdentifier"))
    ManagedNotificationChannelAssociationSummary.add_member(:channel_type, Shapes::ShapeRef.new(shape: ChannelType, required: true, location_name: "channelType"))
    ManagedNotificationChannelAssociationSummary.add_member(:override_option, Shapes::ShapeRef.new(shape: ChannelAssociationOverrideOption, location_name: "overrideOption"))
    ManagedNotificationChannelAssociationSummary.struct_class = Types::ManagedNotificationChannelAssociationSummary

    ManagedNotificationChannelAssociations.member = Shapes::ShapeRef.new(shape: ManagedNotificationChannelAssociationSummary)

    ManagedNotificationChildEvent.add_member(:schema_version, Shapes::ShapeRef.new(shape: SchemaVersion, required: true, location_name: "schemaVersion"))
    ManagedNotificationChildEvent.add_member(:id, Shapes::ShapeRef.new(shape: NotificationEventId, required: true, location_name: "id"))
    ManagedNotificationChildEvent.add_member(:message_components, Shapes::ShapeRef.new(shape: MessageComponents, required: true, location_name: "messageComponents"))
    ManagedNotificationChildEvent.add_member(:source_event_detail_url, Shapes::ShapeRef.new(shape: Url, location_name: "sourceEventDetailUrl"))
    ManagedNotificationChildEvent.add_member(:source_event_detail_url_display_text, Shapes::ShapeRef.new(shape: String, location_name: "sourceEventDetailUrlDisplayText"))
    ManagedNotificationChildEvent.add_member(:notification_type, Shapes::ShapeRef.new(shape: NotificationType, required: true, location_name: "notificationType"))
    ManagedNotificationChildEvent.add_member(:event_status, Shapes::ShapeRef.new(shape: EventStatus, location_name: "eventStatus"))
    ManagedNotificationChildEvent.add_member(:aggregate_managed_notification_event_arn, Shapes::ShapeRef.new(shape: ManagedNotificationEventArn, required: true, location_name: "aggregateManagedNotificationEventArn"))
    ManagedNotificationChildEvent.add_member(:start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "startTime"))
    ManagedNotificationChildEvent.add_member(:end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "endTime"))
    ManagedNotificationChildEvent.add_member(:text_parts, Shapes::ShapeRef.new(shape: TextParts, required: true, location_name: "textParts"))
    ManagedNotificationChildEvent.add_member(:organizational_unit_id, Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: "organizationalUnitId"))
    ManagedNotificationChildEvent.add_member(:aggregation_detail, Shapes::ShapeRef.new(shape: AggregationDetail, location_name: "aggregationDetail"))
    ManagedNotificationChildEvent.struct_class = Types::ManagedNotificationChildEvent

    ManagedNotificationChildEventOverview.add_member(:arn, Shapes::ShapeRef.new(shape: ManagedNotificationEventArn, required: true, location_name: "arn"))
    ManagedNotificationChildEventOverview.add_member(:managed_notification_configuration_arn, Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationOsArn, required: true, location_name: "managedNotificationConfigurationArn"))
    ManagedNotificationChildEventOverview.add_member(:related_account, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "relatedAccount"))
    ManagedNotificationChildEventOverview.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    ManagedNotificationChildEventOverview.add_member(:child_event, Shapes::ShapeRef.new(shape: ManagedNotificationChildEventSummary, required: true, location_name: "childEvent"))
    ManagedNotificationChildEventOverview.add_member(:aggregate_managed_notification_event_arn, Shapes::ShapeRef.new(shape: ManagedNotificationEventArn, required: true, location_name: "aggregateManagedNotificationEventArn"))
    ManagedNotificationChildEventOverview.add_member(:organizational_unit_id, Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: "organizationalUnitId"))
    ManagedNotificationChildEventOverview.struct_class = Types::ManagedNotificationChildEventOverview

    ManagedNotificationChildEventSummary.add_member(:schema_version, Shapes::ShapeRef.new(shape: SchemaVersion, required: true, location_name: "schemaVersion"))
    ManagedNotificationChildEventSummary.add_member(:source_event_metadata, Shapes::ShapeRef.new(shape: ManagedSourceEventMetadataSummary, required: true, location_name: "sourceEventMetadata"))
    ManagedNotificationChildEventSummary.add_member(:message_components, Shapes::ShapeRef.new(shape: MessageComponentsSummary, required: true, location_name: "messageComponents"))
    ManagedNotificationChildEventSummary.add_member(:aggregation_detail, Shapes::ShapeRef.new(shape: AggregationDetail, required: true, location_name: "aggregationDetail"))
    ManagedNotificationChildEventSummary.add_member(:event_status, Shapes::ShapeRef.new(shape: EventStatus, required: true, location_name: "eventStatus"))
    ManagedNotificationChildEventSummary.add_member(:notification_type, Shapes::ShapeRef.new(shape: NotificationType, required: true, location_name: "notificationType"))
    ManagedNotificationChildEventSummary.struct_class = Types::ManagedNotificationChildEventSummary

    ManagedNotificationChildEvents.member = Shapes::ShapeRef.new(shape: ManagedNotificationChildEventOverview)

    ManagedNotificationConfigurationStructure.add_member(:arn, Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationOsArn, required: true, location_name: "arn"))
    ManagedNotificationConfigurationStructure.add_member(:name, Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationName, required: true, location_name: "name"))
    ManagedNotificationConfigurationStructure.add_member(:description, Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationDescription, required: true, location_name: "description"))
    ManagedNotificationConfigurationStructure.struct_class = Types::ManagedNotificationConfigurationStructure

    ManagedNotificationConfigurations.member = Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationStructure)

    ManagedNotificationEvent.add_member(:schema_version, Shapes::ShapeRef.new(shape: SchemaVersion, required: true, location_name: "schemaVersion"))
    ManagedNotificationEvent.add_member(:id, Shapes::ShapeRef.new(shape: NotificationEventId, required: true, location_name: "id"))
    ManagedNotificationEvent.add_member(:message_components, Shapes::ShapeRef.new(shape: MessageComponents, required: true, location_name: "messageComponents"))
    ManagedNotificationEvent.add_member(:source_event_detail_url, Shapes::ShapeRef.new(shape: Url, location_name: "sourceEventDetailUrl"))
    ManagedNotificationEvent.add_member(:source_event_detail_url_display_text, Shapes::ShapeRef.new(shape: String, location_name: "sourceEventDetailUrlDisplayText"))
    ManagedNotificationEvent.add_member(:notification_type, Shapes::ShapeRef.new(shape: NotificationType, required: true, location_name: "notificationType"))
    ManagedNotificationEvent.add_member(:event_status, Shapes::ShapeRef.new(shape: EventStatus, location_name: "eventStatus"))
    ManagedNotificationEvent.add_member(:aggregation_event_type, Shapes::ShapeRef.new(shape: AggregationEventType, location_name: "aggregationEventType"))
    ManagedNotificationEvent.add_member(:aggregation_summary, Shapes::ShapeRef.new(shape: AggregationSummary, location_name: "aggregationSummary"))
    ManagedNotificationEvent.add_member(:start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "startTime"))
    ManagedNotificationEvent.add_member(:end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "endTime"))
    ManagedNotificationEvent.add_member(:text_parts, Shapes::ShapeRef.new(shape: TextParts, required: true, location_name: "textParts"))
    ManagedNotificationEvent.add_member(:organizational_unit_id, Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: "organizationalUnitId"))
    ManagedNotificationEvent.struct_class = Types::ManagedNotificationEvent

    ManagedNotificationEventOverview.add_member(:arn, Shapes::ShapeRef.new(shape: ManagedNotificationEventArn, required: true, location_name: "arn"))
    ManagedNotificationEventOverview.add_member(:managed_notification_configuration_arn, Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationOsArn, required: true, location_name: "managedNotificationConfigurationArn"))
    ManagedNotificationEventOverview.add_member(:related_account, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "relatedAccount"))
    ManagedNotificationEventOverview.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    ManagedNotificationEventOverview.add_member(:notification_event, Shapes::ShapeRef.new(shape: ManagedNotificationEventSummary, required: true, location_name: "notificationEvent"))
    ManagedNotificationEventOverview.add_member(:aggregation_event_type, Shapes::ShapeRef.new(shape: AggregationEventType, location_name: "aggregationEventType"))
    ManagedNotificationEventOverview.add_member(:organizational_unit_id, Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: "organizationalUnitId"))
    ManagedNotificationEventOverview.add_member(:aggregation_summary, Shapes::ShapeRef.new(shape: AggregationSummary, location_name: "aggregationSummary"))
    ManagedNotificationEventOverview.add_member(:aggregated_notification_regions, Shapes::ShapeRef.new(shape: AggregatedNotificationRegions, location_name: "aggregatedNotificationRegions"))
    ManagedNotificationEventOverview.struct_class = Types::ManagedNotificationEventOverview

    ManagedNotificationEventSummary.add_member(:schema_version, Shapes::ShapeRef.new(shape: SchemaVersion, required: true, location_name: "schemaVersion"))
    ManagedNotificationEventSummary.add_member(:source_event_metadata, Shapes::ShapeRef.new(shape: ManagedSourceEventMetadataSummary, required: true, location_name: "sourceEventMetadata"))
    ManagedNotificationEventSummary.add_member(:message_components, Shapes::ShapeRef.new(shape: MessageComponentsSummary, required: true, location_name: "messageComponents"))
    ManagedNotificationEventSummary.add_member(:event_status, Shapes::ShapeRef.new(shape: EventStatus, required: true, location_name: "eventStatus"))
    ManagedNotificationEventSummary.add_member(:notification_type, Shapes::ShapeRef.new(shape: NotificationType, required: true, location_name: "notificationType"))
    ManagedNotificationEventSummary.struct_class = Types::ManagedNotificationEventSummary

    ManagedNotificationEvents.member = Shapes::ShapeRef.new(shape: ManagedNotificationEventOverview)

    ManagedRuleArns.member = Shapes::ShapeRef.new(shape: ManagedRuleArn)

    ManagedSourceEventMetadataSummary.add_member(:event_origin_region, Shapes::ShapeRef.new(shape: ManagedSourceEventMetadataSummaryEventOriginRegionString, location_name: "eventOriginRegion"))
    ManagedSourceEventMetadataSummary.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "source"))
    ManagedSourceEventMetadataSummary.add_member(:event_type, Shapes::ShapeRef.new(shape: ManagedSourceEventMetadataSummaryEventTypeString, required: true, location_name: "eventType"))
    ManagedSourceEventMetadataSummary.struct_class = Types::ManagedSourceEventMetadataSummary

    Media.member = Shapes::ShapeRef.new(shape: MediaElement)

    MediaElement.add_member(:media_id, Shapes::ShapeRef.new(shape: MediaId, required: true, location_name: "mediaId"))
    MediaElement.add_member(:type, Shapes::ShapeRef.new(shape: MediaElementType, required: true, location_name: "type"))
    MediaElement.add_member(:url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "url"))
    MediaElement.add_member(:caption, Shapes::ShapeRef.new(shape: TextPartReference, required: true, location_name: "caption"))
    MediaElement.struct_class = Types::MediaElement

    MemberAccount.add_member(:notification_configuration_arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, location_name: "notificationConfigurationArn"))
    MemberAccount.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    MemberAccount.add_member(:status, Shapes::ShapeRef.new(shape: MemberAccountNotificationConfigurationStatus, required: true, location_name: "status"))
    MemberAccount.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "statusReason"))
    MemberAccount.add_member(:organizational_unit_id, Shapes::ShapeRef.new(shape: OrganizationalUnitId, required: true, location_name: "organizationalUnitId"))
    MemberAccount.struct_class = Types::MemberAccount

    MemberAccounts.member = Shapes::ShapeRef.new(shape: MemberAccount)

    MessageComponents.add_member(:headline, Shapes::ShapeRef.new(shape: TextPartReference, location_name: "headline"))
    MessageComponents.add_member(:paragraph_summary, Shapes::ShapeRef.new(shape: TextPartReference, location_name: "paragraphSummary"))
    MessageComponents.add_member(:complete_description, Shapes::ShapeRef.new(shape: TextPartReference, location_name: "completeDescription"))
    MessageComponents.add_member(:dimensions, Shapes::ShapeRef.new(shape: Dimensions, location_name: "dimensions"))
    MessageComponents.struct_class = Types::MessageComponents

    MessageComponentsSummary.add_member(:headline, Shapes::ShapeRef.new(shape: MessageComponentsSummaryHeadlineString, required: true, location_name: "headline"))
    MessageComponentsSummary.struct_class = Types::MessageComponentsSummary

    NotificationConfigurationStructure.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location_name: "arn"))
    NotificationConfigurationStructure.add_member(:name, Shapes::ShapeRef.new(shape: NotificationConfigurationName, required: true, location_name: "name"))
    NotificationConfigurationStructure.add_member(:description, Shapes::ShapeRef.new(shape: NotificationConfigurationDescription, required: true, location_name: "description"))
    NotificationConfigurationStructure.add_member(:status, Shapes::ShapeRef.new(shape: NotificationConfigurationStatus, required: true, location_name: "status"))
    NotificationConfigurationStructure.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    NotificationConfigurationStructure.add_member(:aggregation_duration, Shapes::ShapeRef.new(shape: AggregationDuration, location_name: "aggregationDuration"))
    NotificationConfigurationStructure.add_member(:subtype, Shapes::ShapeRef.new(shape: NotificationConfigurationSubtype, location_name: "subtype"))
    NotificationConfigurationStructure.struct_class = Types::NotificationConfigurationStructure

    NotificationConfigurations.member = Shapes::ShapeRef.new(shape: NotificationConfigurationStructure)

    NotificationEvent.add_member(:schema_version, Shapes::ShapeRef.new(shape: SchemaVersion, required: true, location_name: "schemaVersion"))
    NotificationEvent.add_member(:id, Shapes::ShapeRef.new(shape: NotificationEventId, required: true, location_name: "id"))
    NotificationEvent.add_member(:source_event_metadata, Shapes::ShapeRef.new(shape: SourceEventMetadata, required: true, location_name: "sourceEventMetadata"))
    NotificationEvent.add_member(:message_components, Shapes::ShapeRef.new(shape: MessageComponents, required: true, location_name: "messageComponents"))
    NotificationEvent.add_member(:source_event_detail_url, Shapes::ShapeRef.new(shape: Url, location_name: "sourceEventDetailUrl"))
    NotificationEvent.add_member(:source_event_detail_url_display_text, Shapes::ShapeRef.new(shape: String, location_name: "sourceEventDetailUrlDisplayText"))
    NotificationEvent.add_member(:notification_type, Shapes::ShapeRef.new(shape: NotificationType, required: true, location_name: "notificationType"))
    NotificationEvent.add_member(:event_status, Shapes::ShapeRef.new(shape: EventStatus, location_name: "eventStatus"))
    NotificationEvent.add_member(:aggregation_event_type, Shapes::ShapeRef.new(shape: AggregationEventType, location_name: "aggregationEventType"))
    NotificationEvent.add_member(:aggregate_notification_event_arn, Shapes::ShapeRef.new(shape: NotificationEventArn, location_name: "aggregateNotificationEventArn"))
    NotificationEvent.add_member(:aggregation_summary, Shapes::ShapeRef.new(shape: AggregationSummary, location_name: "aggregationSummary"))
    NotificationEvent.add_member(:start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "startTime"))
    NotificationEvent.add_member(:end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "endTime"))
    NotificationEvent.add_member(:text_parts, Shapes::ShapeRef.new(shape: TextParts, required: true, location_name: "textParts"))
    NotificationEvent.add_member(:media, Shapes::ShapeRef.new(shape: Media, required: true, location_name: "media"))
    NotificationEvent.add_member(:organizational_unit_id, Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: "organizationalUnitId"))
    NotificationEvent.struct_class = Types::NotificationEvent

    NotificationEventOverview.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationEventArn, required: true, location_name: "arn"))
    NotificationEventOverview.add_member(:notification_configuration_arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location_name: "notificationConfigurationArn"))
    NotificationEventOverview.add_member(:related_account, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "relatedAccount"))
    NotificationEventOverview.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    NotificationEventOverview.add_member(:notification_event, Shapes::ShapeRef.new(shape: NotificationEventSummary, required: true, location_name: "notificationEvent"))
    NotificationEventOverview.add_member(:aggregation_event_type, Shapes::ShapeRef.new(shape: AggregationEventType, location_name: "aggregationEventType"))
    NotificationEventOverview.add_member(:aggregate_notification_event_arn, Shapes::ShapeRef.new(shape: NotificationEventArn, location_name: "aggregateNotificationEventArn"))
    NotificationEventOverview.add_member(:aggregation_summary, Shapes::ShapeRef.new(shape: AggregationSummary, location_name: "aggregationSummary"))
    NotificationEventOverview.add_member(:organizational_unit_id, Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: "organizationalUnitId"))
    NotificationEventOverview.struct_class = Types::NotificationEventOverview

    NotificationEventSummary.add_member(:schema_version, Shapes::ShapeRef.new(shape: SchemaVersion, required: true, location_name: "schemaVersion"))
    NotificationEventSummary.add_member(:source_event_metadata, Shapes::ShapeRef.new(shape: SourceEventMetadataSummary, required: true, location_name: "sourceEventMetadata"))
    NotificationEventSummary.add_member(:message_components, Shapes::ShapeRef.new(shape: MessageComponentsSummary, required: true, location_name: "messageComponents"))
    NotificationEventSummary.add_member(:event_status, Shapes::ShapeRef.new(shape: EventStatus, required: true, location_name: "eventStatus"))
    NotificationEventSummary.add_member(:notification_type, Shapes::ShapeRef.new(shape: NotificationType, required: true, location_name: "notificationType"))
    NotificationEventSummary.struct_class = Types::NotificationEventSummary

    NotificationEvents.member = Shapes::ShapeRef.new(shape: NotificationEventOverview)

    NotificationHubOverview.add_member(:notification_hub_region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "notificationHubRegion"))
    NotificationHubOverview.add_member(:status_summary, Shapes::ShapeRef.new(shape: NotificationHubStatusSummary, required: true, location_name: "statusSummary"))
    NotificationHubOverview.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    NotificationHubOverview.add_member(:last_activation_time, Shapes::ShapeRef.new(shape: LastActivationTime, location_name: "lastActivationTime"))
    NotificationHubOverview.struct_class = Types::NotificationHubOverview

    NotificationHubStatusSummary.add_member(:status, Shapes::ShapeRef.new(shape: NotificationHubStatus, required: true, location_name: "status"))
    NotificationHubStatusSummary.add_member(:reason, Shapes::ShapeRef.new(shape: NotificationHubStatusReason, required: true, location_name: "reason"))
    NotificationHubStatusSummary.struct_class = Types::NotificationHubStatusSummary

    NotificationHubs.member = Shapes::ShapeRef.new(shape: NotificationHubOverview)

    NotificationsAccessForOrganization.add_member(:access_status, Shapes::ShapeRef.new(shape: AccessStatus, required: true, location_name: "accessStatus"))
    NotificationsAccessForOrganization.struct_class = Types::NotificationsAccessForOrganization

    OrganizationalUnits.member = Shapes::ShapeRef.new(shape: OrganizationalUnitId)

    Regions.member = Shapes::ShapeRef.new(shape: Region)

    RegisterNotificationHubRequest.add_member(:notification_hub_region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "notificationHubRegion"))
    RegisterNotificationHubRequest.struct_class = Types::RegisterNotificationHubRequest

    RegisterNotificationHubResponse.add_member(:notification_hub_region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "notificationHubRegion"))
    RegisterNotificationHubResponse.add_member(:status_summary, Shapes::ShapeRef.new(shape: NotificationHubStatusSummary, required: true, location_name: "statusSummary"))
    RegisterNotificationHubResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    RegisterNotificationHubResponse.add_member(:last_activation_time, Shapes::ShapeRef.new(shape: LastActivationTime, location_name: "lastActivationTime"))
    RegisterNotificationHubResponse.struct_class = Types::RegisterNotificationHubResponse

    Resource.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    Resource.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    Resource.add_member(:detail_url, Shapes::ShapeRef.new(shape: Url, location_name: "detailUrl"))
    Resource.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Resource.struct_class = Types::Resource

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    Resources.member = Shapes::ShapeRef.new(shape: Resource)

    SampleAggregationDimensionValues.member = Shapes::ShapeRef.new(shape: SampleAggregationDimensionValuesMemberString)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: QuotaCode, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SourceEventMetadata.add_member(:event_type_version, Shapes::ShapeRef.new(shape: SourceEventMetadataEventTypeVersionString, required: true, location_name: "eventTypeVersion"))
    SourceEventMetadata.add_member(:source_event_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "sourceEventId"))
    SourceEventMetadata.add_member(:event_origin_region, Shapes::ShapeRef.new(shape: SourceEventMetadataEventOriginRegionString, location_name: "eventOriginRegion"))
    SourceEventMetadata.add_member(:related_account, Shapes::ShapeRef.new(shape: SourceEventMetadataRelatedAccountString, required: true, location_name: "relatedAccount"))
    SourceEventMetadata.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "source"))
    SourceEventMetadata.add_member(:event_occurrence_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "eventOccurrenceTime"))
    SourceEventMetadata.add_member(:event_type, Shapes::ShapeRef.new(shape: SourceEventMetadataEventTypeString, required: true, location_name: "eventType"))
    SourceEventMetadata.add_member(:related_resources, Shapes::ShapeRef.new(shape: Resources, required: true, location_name: "relatedResources"))
    SourceEventMetadata.struct_class = Types::SourceEventMetadata

    SourceEventMetadataSummary.add_member(:event_origin_region, Shapes::ShapeRef.new(shape: SourceEventMetadataSummaryEventOriginRegionString, location_name: "eventOriginRegion"))
    SourceEventMetadataSummary.add_member(:source, Shapes::ShapeRef.new(shape: String, required: true, location_name: "source"))
    SourceEventMetadataSummary.add_member(:event_type, Shapes::ShapeRef.new(shape: SourceEventMetadataSummaryEventTypeString, required: true, location_name: "eventType"))
    SourceEventMetadataSummary.struct_class = Types::SourceEventMetadataSummary

    StatusSummaryByRegion.key = Shapes::ShapeRef.new(shape: Region)
    StatusSummaryByRegion.value = Shapes::ShapeRef.new(shape: EventRuleStatusSummary)

    SummarizationDimensionDetail.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    SummarizationDimensionDetail.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "value"))
    SummarizationDimensionDetail.struct_class = Types::SummarizationDimensionDetail

    SummarizationDimensionDetails.member = Shapes::ShapeRef.new(shape: SummarizationDimensionDetail)

    SummarizationDimensionOverview.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    SummarizationDimensionOverview.add_member(:count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "count"))
    SummarizationDimensionOverview.add_member(:sample_values, Shapes::ShapeRef.new(shape: SampleAggregationDimensionValues, location_name: "sampleValues"))
    SummarizationDimensionOverview.struct_class = Types::SummarizationDimensionOverview

    SummarizationDimensionOverviews.member = Shapes::ShapeRef.new(shape: SummarizationDimensionOverview)

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location: "uri", location_name: "arn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.member = Shapes::ShapeRef.new(shape: TagsMemberString)

    TextByLocale.key = Shapes::ShapeRef.new(shape: LocaleCode)
    TextByLocale.value = Shapes::ShapeRef.new(shape: String)

    TextPartValue.add_member(:type, Shapes::ShapeRef.new(shape: TextPartType, required: true, location_name: "type"))
    TextPartValue.add_member(:display_text, Shapes::ShapeRef.new(shape: TextPartValueDisplayTextString, location_name: "displayText"))
    TextPartValue.add_member(:text_by_locale, Shapes::ShapeRef.new(shape: TextByLocale, location_name: "textByLocale"))
    TextPartValue.add_member(:url, Shapes::ShapeRef.new(shape: Url, location_name: "url"))
    TextPartValue.struct_class = Types::TextPartValue

    TextParts.key = Shapes::ShapeRef.new(shape: TextPartId)
    TextParts.value = Shapes::ShapeRef.new(shape: TextPartValue)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: QuotaCode, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location: "uri", location_name: "arn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateEventRuleRequest.add_member(:arn, Shapes::ShapeRef.new(shape: EventRuleArn, required: true, location: "uri", location_name: "arn"))
    UpdateEventRuleRequest.add_member(:event_pattern, Shapes::ShapeRef.new(shape: EventRuleEventPattern, location_name: "eventPattern"))
    UpdateEventRuleRequest.add_member(:regions, Shapes::ShapeRef.new(shape: Regions, location_name: "regions"))
    UpdateEventRuleRequest.struct_class = Types::UpdateEventRuleRequest

    UpdateEventRuleResponse.add_member(:arn, Shapes::ShapeRef.new(shape: EventRuleArn, required: true, location_name: "arn"))
    UpdateEventRuleResponse.add_member(:notification_configuration_arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location_name: "notificationConfigurationArn"))
    UpdateEventRuleResponse.add_member(:status_summary_by_region, Shapes::ShapeRef.new(shape: StatusSummaryByRegion, required: true, location_name: "statusSummaryByRegion"))
    UpdateEventRuleResponse.struct_class = Types::UpdateEventRuleResponse

    UpdateNotificationConfigurationRequest.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location: "uri", location_name: "arn"))
    UpdateNotificationConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: NotificationConfigurationName, location_name: "name"))
    UpdateNotificationConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: NotificationConfigurationDescription, location_name: "description"))
    UpdateNotificationConfigurationRequest.add_member(:aggregation_duration, Shapes::ShapeRef.new(shape: AggregationDuration, location_name: "aggregationDuration"))
    UpdateNotificationConfigurationRequest.struct_class = Types::UpdateNotificationConfigurationRequest

    UpdateNotificationConfigurationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location_name: "arn"))
    UpdateNotificationConfigurationResponse.struct_class = Types::UpdateNotificationConfigurationResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "notifications",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS User Notifications",
        "serviceId" => "Notifications",
        "signatureVersion" => "v4",
        "signingName" => "notifications",
        "uid" => "notifications-2018-05-10",
      }

      api.add_operation(:associate_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateChannel"
        o.http_method = "POST"
        o.http_request_uri = "/channels/associate/{arn}"
        o.input = Shapes::ShapeRef.new(shape: AssociateChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:associate_managed_notification_account_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateManagedNotificationAccountContact"
        o.http_method = "PUT"
        o.http_request_uri = "/contacts/associate-managed-notification/{contactIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: AssociateManagedNotificationAccountContactRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateManagedNotificationAccountContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:associate_managed_notification_additional_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateManagedNotificationAdditionalChannel"
        o.http_method = "PUT"
        o.http_request_uri = "/channels/associate-managed-notification/{channelArn}"
        o.input = Shapes::ShapeRef.new(shape: AssociateManagedNotificationAdditionalChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateManagedNotificationAdditionalChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:associate_organizational_unit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateOrganizationalUnit"
        o.http_method = "POST"
        o.http_request_uri = "/organizational-units/associate/{organizationalUnitId}"
        o.input = Shapes::ShapeRef.new(shape: AssociateOrganizationalUnitRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateOrganizationalUnitResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_event_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEventRule"
        o.http_method = "POST"
        o.http_request_uri = "/event-rules"
        o.input = Shapes::ShapeRef.new(shape: CreateEventRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEventRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_notification_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNotificationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/notification-configurations"
        o.input = Shapes::ShapeRef.new(shape: CreateNotificationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateNotificationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_event_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventRule"
        o.http_method = "DELETE"
        o.http_request_uri = "/event-rules/{arn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEventRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_notification_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNotificationConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/notification-configurations/{arn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteNotificationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteNotificationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:deregister_notification_hub, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterNotificationHub"
        o.http_method = "DELETE"
        o.http_request_uri = "/notification-hubs/{notificationHubRegion}"
        o.input = Shapes::ShapeRef.new(shape: DeregisterNotificationHubRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterNotificationHubResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disable_notifications_access_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableNotificationsAccessForOrganization"
        o.http_method = "DELETE"
        o.http_request_uri = "/organization/access"
        o.input = Shapes::ShapeRef.new(shape: DisableNotificationsAccessForOrganizationRequest)
        o.output = Shapes::ShapeRef.new(shape: DisableNotificationsAccessForOrganizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disassociate_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateChannel"
        o.http_method = "POST"
        o.http_request_uri = "/channels/disassociate/{arn}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disassociate_managed_notification_account_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateManagedNotificationAccountContact"
        o.http_method = "PUT"
        o.http_request_uri = "/contacts/disassociate-managed-notification/{contactIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateManagedNotificationAccountContactRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateManagedNotificationAccountContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disassociate_managed_notification_additional_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateManagedNotificationAdditionalChannel"
        o.http_method = "PUT"
        o.http_request_uri = "/channels/disassociate-managed-notification/{channelArn}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateManagedNotificationAdditionalChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateManagedNotificationAdditionalChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disassociate_organizational_unit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateOrganizationalUnit"
        o.http_method = "POST"
        o.http_request_uri = "/organizational-units/disassociate/{organizationalUnitId}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateOrganizationalUnitRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateOrganizationalUnitResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:enable_notifications_access_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableNotificationsAccessForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/organization/access"
        o.input = Shapes::ShapeRef.new(shape: EnableNotificationsAccessForOrganizationRequest)
        o.output = Shapes::ShapeRef.new(shape: EnableNotificationsAccessForOrganizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_event_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEventRule"
        o.http_method = "GET"
        o.http_request_uri = "/event-rules/{arn}"
        o.input = Shapes::ShapeRef.new(shape: GetEventRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEventRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_managed_notification_child_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetManagedNotificationChildEvent"
        o.http_method = "GET"
        o.http_request_uri = "/managed-notification-child-events/{arn}"
        o.input = Shapes::ShapeRef.new(shape: GetManagedNotificationChildEventRequest)
        o.output = Shapes::ShapeRef.new(shape: GetManagedNotificationChildEventResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_managed_notification_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetManagedNotificationConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/managed-notification-configurations/{arn}"
        o.input = Shapes::ShapeRef.new(shape: GetManagedNotificationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetManagedNotificationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_managed_notification_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetManagedNotificationEvent"
        o.http_method = "GET"
        o.http_request_uri = "/managed-notification-events/{arn}"
        o.input = Shapes::ShapeRef.new(shape: GetManagedNotificationEventRequest)
        o.output = Shapes::ShapeRef.new(shape: GetManagedNotificationEventResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_notification_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNotificationConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/notification-configurations/{arn}"
        o.input = Shapes::ShapeRef.new(shape: GetNotificationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNotificationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_notification_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNotificationEvent"
        o.http_method = "GET"
        o.http_request_uri = "/notification-events/{arn}"
        o.input = Shapes::ShapeRef.new(shape: GetNotificationEventRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNotificationEventResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_notifications_access_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNotificationsAccessForOrganization"
        o.http_method = "GET"
        o.http_request_uri = "/organization/access"
        o.input = Shapes::ShapeRef.new(shape: GetNotificationsAccessForOrganizationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNotificationsAccessForOrganizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_channels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannels"
        o.http_method = "GET"
        o.http_request_uri = "/channels"
        o.input = Shapes::ShapeRef.new(shape: ListChannelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_event_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEventRules"
        o.http_method = "GET"
        o.http_request_uri = "/event-rules"
        o.input = Shapes::ShapeRef.new(shape: ListEventRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEventRulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_managed_notification_channel_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListManagedNotificationChannelAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/channels/list-managed-notification-channel-associations"
        o.input = Shapes::ShapeRef.new(shape: ListManagedNotificationChannelAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListManagedNotificationChannelAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_managed_notification_child_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListManagedNotificationChildEvents"
        o.http_method = "GET"
        o.http_request_uri = "/list-managed-notification-child-events/{aggregateManagedNotificationEventArn}"
        o.input = Shapes::ShapeRef.new(shape: ListManagedNotificationChildEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListManagedNotificationChildEventsResponse)
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

      api.add_operation(:list_managed_notification_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListManagedNotificationConfigurations"
        o.http_method = "GET"
        o.http_request_uri = "/managed-notification-configurations"
        o.input = Shapes::ShapeRef.new(shape: ListManagedNotificationConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListManagedNotificationConfigurationsResponse)
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

      api.add_operation(:list_managed_notification_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListManagedNotificationEvents"
        o.http_method = "GET"
        o.http_request_uri = "/managed-notification-events"
        o.input = Shapes::ShapeRef.new(shape: ListManagedNotificationEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListManagedNotificationEventsResponse)
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

      api.add_operation(:list_member_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMemberAccounts"
        o.http_method = "GET"
        o.http_request_uri = "/list-member-accounts"
        o.input = Shapes::ShapeRef.new(shape: ListMemberAccountsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMemberAccountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_notification_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNotificationConfigurations"
        o.http_method = "GET"
        o.http_request_uri = "/notification-configurations"
        o.input = Shapes::ShapeRef.new(shape: ListNotificationConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNotificationConfigurationsResponse)
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

      api.add_operation(:list_notification_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNotificationEvents"
        o.http_method = "GET"
        o.http_request_uri = "/notification-events"
        o.input = Shapes::ShapeRef.new(shape: ListNotificationEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNotificationEventsResponse)
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

      api.add_operation(:list_notification_hubs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNotificationHubs"
        o.http_method = "GET"
        o.http_request_uri = "/notification-hubs"
        o.input = Shapes::ShapeRef.new(shape: ListNotificationHubsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNotificationHubsResponse)
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

      api.add_operation(:list_organizational_units, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOrganizationalUnits"
        o.http_method = "GET"
        o.http_request_uri = "/organizational-units"
        o.input = Shapes::ShapeRef.new(shape: ListOrganizationalUnitsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOrganizationalUnitsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.http_request_uri = "/tags/{arn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:register_notification_hub, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterNotificationHub"
        o.http_method = "POST"
        o.http_request_uri = "/notification-hubs"
        o.input = Shapes::ShapeRef.new(shape: RegisterNotificationHubRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterNotificationHubResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{arn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{arn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_event_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEventRule"
        o.http_method = "PUT"
        o.http_request_uri = "/event-rules/{arn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateEventRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEventRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_notification_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNotificationConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/notification-configurations/{arn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateNotificationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateNotificationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
