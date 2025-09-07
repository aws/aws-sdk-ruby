# frozen_string_literal: true

# This is generated code!

module Aws::Notifications
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.notifications#AccessStatus', name: 'AccessStatus')
    AccountContactType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#AccountContactType', name: 'AccountContactType', traits: {"smithy.api#enum" => [{"name" => "ACCOUNT_PRIMARY", "value" => "ACCOUNT_PRIMARY", "documentation" => "    Primary Contact managed by AWS Account Management Service.\n"}, {"name" => "ACCOUNT_ALTERNATE_BILLING", "value" => "ACCOUNT_ALTERNATE_BILLING", "documentation" => "    Alternate Billing Contact managed by AWS Account Management Service.\n"}, {"name" => "ACCOUNT_ALTERNATE_OPERATIONS", "value" => "ACCOUNT_ALTERNATE_OPERATIONS", "documentation" => "    Alternate Operations Contact managed by AWS Account Management Service.\n"}, {"name" => "ACCOUNT_ALTERNATE_SECURITY", "value" => "ACCOUNT_ALTERNATE_SECURITY", "documentation" => "    Alternate Security Contact managed by AWS Account Management Service.\n"}]})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#AccountId', name: 'AccountId', traits: {"smithy.api#pattern" => "^\\d{12}$"})
    AggregatedNotificationRegions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.notifications#AggregatedNotificationRegions', name: 'AggregatedNotificationRegions')
    AggregationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#AggregationDetail', name: 'AggregationDetail')
    AggregationDuration = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#AggregationDuration', name: 'AggregationDuration', traits: {"smithy.api#enum" => [{"name" => "LONG", "value" => "LONG", "documentation" => "Aggregate notifications for long periods of time (12 hours)"}, {"name" => "SHORT", "value" => "SHORT", "documentation" => "Aggregate notifications for short periods of time (5 mins)"}, {"name" => "NONE", "value" => "NONE", "documentation" => "Do not aggregate notifications sourced from a notification configuration"}]})
    AggregationEventType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#AggregationEventType', name: 'AggregationEventType', traits: {"smithy.api#enum" => [{"name" => "AGGREGATE", "value" => "AGGREGATE"}, {"name" => "CHILD", "value" => "CHILD"}, {"name" => "NONE", "value" => "NONE"}]})
    AggregationKey = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#AggregationKey', name: 'AggregationKey')
    AggregationKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.notifications#AggregationKeys', name: 'AggregationKeys')
    AggregationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#AggregationSummary', name: 'AggregationSummary')
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#Arn', name: 'Arn', traits: {"aws.api#arnReference" => {}, "smithy.api#pattern" => "^arn:[^:]*:[^:]*:[^:]*:.*$"})
    AssociateChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#AssociateChannelRequest', name: 'AssociateChannelRequest')
    AssociateChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#AssociateChannelResponse', name: 'AssociateChannelResponse')
    AssociateManagedNotificationAccountContactRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#AssociateManagedNotificationAccountContactRequest', name: 'AssociateManagedNotificationAccountContactRequest')
    AssociateManagedNotificationAccountContactResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#AssociateManagedNotificationAccountContactResponse', name: 'AssociateManagedNotificationAccountContactResponse')
    AssociateManagedNotificationAdditionalChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#AssociateManagedNotificationAdditionalChannelRequest', name: 'AssociateManagedNotificationAdditionalChannelRequest')
    AssociateManagedNotificationAdditionalChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#AssociateManagedNotificationAdditionalChannelResponse', name: 'AssociateManagedNotificationAdditionalChannelResponse')
    AssociateOrganizationalUnitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#AssociateOrganizationalUnitRequest', name: 'AssociateOrganizationalUnitRequest')
    AssociateOrganizationalUnitResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#AssociateOrganizationalUnitResponse', name: 'AssociateOrganizationalUnitResponse')
    ChannelArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#ChannelArn', name: 'ChannelArn', traits: {"aws.api#arnReference" => {}, "smithy.api#pattern" => "^arn:aws:(chatbot|consoleapp|notifications-contacts):[a-zA-Z0-9-]*:[0-9]{12}:[a-zA-Z0-9-_.@]+/[a-zA-Z0-9/_.@:-]+$"})
    ChannelAssociationOverrideOption = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#ChannelAssociationOverrideOption', name: 'ChannelAssociationOverrideOption', traits: {"smithy.api#enum" => [{"name" => "ENABLED", "value" => "ENABLED", "documentation" => "    AWS User Notification service users can associate or disassociate a Channel with a notification configuration.\n"}, {"name" => "DISABLED", "value" => "DISABLED", "documentation" => "    AWS User Notification service users can not associate or disassociate a Channel with a notification configuration.\n"}]})
    ChannelIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#ChannelIdentifier', name: 'ChannelIdentifier', traits: {"smithy.api#pattern" => "^ACCOUNT_PRIMARY|ACCOUNT_ALTERNATE_BILLING|ACCOUNT_ALTERNATE_OPERATIONS|ACCOUNT_ALTERNATE_SECURITY|arn:aws:(chatbot|consoleapp|notifications-contacts):[a-zA-Z0-9-]*:[0-9]{12}:[a-zA-Z0-9-_.@]+/[a-zA-Z0-9/_.@:-]+$"})
    ChannelType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#ChannelType', name: 'ChannelType', traits: {"smithy.api#enum" => [{"name" => "MOBILE", "value" => "MOBILE", "documentation" => "    AWS Console Mobile App sends notifications to mobile devices. Link:https://aws.amazon.com/console/mobile/\n"}, {"name" => "CHATBOT", "value" => "CHATBOT", "documentation" => "    Chatbot sends notifications to group platforms, like Slack or Chime. Link:https://aws.amazon.com/chatbot/\n"}, {"name" => "EMAIL", "value" => "EMAIL", "documentation" => "    Email sends notifications to email addresses.\n"}, {"name" => "ACCOUNT_CONTACT", "value" => "ACCOUNT_CONTACT", "documentation" => "    User Notification Service sends notifications to Account Managed contacts.\n"}]})
    Channels = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.notifications#Channels', name: 'Channels')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateEventRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#CreateEventRuleRequest', name: 'CreateEventRuleRequest')
    CreateEventRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#CreateEventRuleResponse', name: 'CreateEventRuleResponse')
    CreateNotificationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#CreateNotificationConfigurationRequest', name: 'CreateNotificationConfigurationRequest')
    CreateNotificationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#CreateNotificationConfigurationResponse', name: 'CreateNotificationConfigurationResponse')
    CreationTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.notifications#CreationTime', name: 'CreationTime', traits: {"smithy.api#timestampFormat" => "date-time"})
    DeleteEventRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#DeleteEventRuleRequest', name: 'DeleteEventRuleRequest')
    DeleteEventRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#DeleteEventRuleResponse', name: 'DeleteEventRuleResponse')
    DeleteNotificationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#DeleteNotificationConfigurationRequest', name: 'DeleteNotificationConfigurationRequest')
    DeleteNotificationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#DeleteNotificationConfigurationResponse', name: 'DeleteNotificationConfigurationResponse')
    DeregisterNotificationHubRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#DeregisterNotificationHubRequest', name: 'DeregisterNotificationHubRequest')
    DeregisterNotificationHubResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#DeregisterNotificationHubResponse', name: 'DeregisterNotificationHubResponse')
    Dimension = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#Dimension', name: 'Dimension')
    Dimensions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.notifications#Dimensions', name: 'Dimensions', traits: {"smithy.api#length" => {"max" => 10}})
    DisableNotificationsAccessForOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#DisableNotificationsAccessForOrganizationRequest', name: 'DisableNotificationsAccessForOrganizationRequest')
    DisableNotificationsAccessForOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#DisableNotificationsAccessForOrganizationResponse', name: 'DisableNotificationsAccessForOrganizationResponse')
    DisassociateChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#DisassociateChannelRequest', name: 'DisassociateChannelRequest')
    DisassociateChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#DisassociateChannelResponse', name: 'DisassociateChannelResponse')
    DisassociateManagedNotificationAccountContactRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#DisassociateManagedNotificationAccountContactRequest', name: 'DisassociateManagedNotificationAccountContactRequest')
    DisassociateManagedNotificationAccountContactResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#DisassociateManagedNotificationAccountContactResponse', name: 'DisassociateManagedNotificationAccountContactResponse')
    DisassociateManagedNotificationAdditionalChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#DisassociateManagedNotificationAdditionalChannelRequest', name: 'DisassociateManagedNotificationAdditionalChannelRequest')
    DisassociateManagedNotificationAdditionalChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#DisassociateManagedNotificationAdditionalChannelResponse', name: 'DisassociateManagedNotificationAdditionalChannelResponse')
    DisassociateOrganizationalUnitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#DisassociateOrganizationalUnitRequest', name: 'DisassociateOrganizationalUnitRequest')
    DisassociateOrganizationalUnitResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#DisassociateOrganizationalUnitResponse', name: 'DisassociateOrganizationalUnitResponse')
    EnableNotificationsAccessForOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#EnableNotificationsAccessForOrganizationRequest', name: 'EnableNotificationsAccessForOrganizationRequest')
    EnableNotificationsAccessForOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#EnableNotificationsAccessForOrganizationResponse', name: 'EnableNotificationsAccessForOrganizationResponse')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#ErrorMessage', name: 'ErrorMessage')
    EventRuleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#EventRuleArn', name: 'EventRuleArn', traits: {"aws.api#arnReference" => {"service" => "com.amazonaws.notifications#Notifications", "resource" => "com.amazonaws.notifications#EventRule"}, "smithy.api#pattern" => "^arn:aws:notifications::[0-9]{12}:configuration/[a-z0-9]{27}/rule/[a-z0-9]{27}$"})
    EventRuleEventPattern = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#EventRuleEventPattern', name: 'EventRuleEventPattern', traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})
    EventRuleStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#EventRuleStatus', name: 'EventRuleStatus', traits: {"smithy.api#enum" => [{"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "EventRule is processing events. Any call can be executed."}, {"name" => "INACTIVE", "value" => "INACTIVE", "documentation" => "EventRule is in a bad state and may not be processing events. Any call can be executed."}, {"name" => "CREATING", "value" => "CREATING", "documentation" => "This EventRule is being created. Only GET/LIST calls can be executed."}, {"name" => "UPDATING", "value" => "UPDATING", "documentation" => "This EventRule is being updated. Only GET/LIST calls can be executed."}, {"name" => "DELETING", "value" => "DELETING", "documentation" => "This EventRule is being deleted. Only GET/LIST calls can be executed."}]})
    EventRuleStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#EventRuleStatusReason', name: 'EventRuleStatusReason')
    EventRuleStatusSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#EventRuleStatusSummary', name: 'EventRuleStatusSummary')
    EventRuleStructure = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#EventRuleStructure', name: 'EventRuleStructure')
    EventRules = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.notifications#EventRules', name: 'EventRules')
    EventStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#EventStatus', name: 'EventStatus', traits: {"smithy.api#enum" => [{"name" => "HEALTHY", "value" => "HEALTHY"}, {"name" => "UNHEALTHY", "value" => "UNHEALTHY"}]})
    EventType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#EventType', name: 'EventType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([a-zA-Z0-9 \\-\\(\\)])+$"})
    GetEventRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#GetEventRuleRequest', name: 'GetEventRuleRequest')
    GetEventRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#GetEventRuleResponse', name: 'GetEventRuleResponse')
    GetManagedNotificationChildEventRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#GetManagedNotificationChildEventRequest', name: 'GetManagedNotificationChildEventRequest')
    GetManagedNotificationChildEventResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#GetManagedNotificationChildEventResponse', name: 'GetManagedNotificationChildEventResponse')
    GetManagedNotificationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#GetManagedNotificationConfigurationRequest', name: 'GetManagedNotificationConfigurationRequest')
    GetManagedNotificationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#GetManagedNotificationConfigurationResponse', name: 'GetManagedNotificationConfigurationResponse')
    GetManagedNotificationEventRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#GetManagedNotificationEventRequest', name: 'GetManagedNotificationEventRequest')
    GetManagedNotificationEventResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#GetManagedNotificationEventResponse', name: 'GetManagedNotificationEventResponse')
    GetNotificationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#GetNotificationConfigurationRequest', name: 'GetNotificationConfigurationRequest')
    GetNotificationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#GetNotificationConfigurationResponse', name: 'GetNotificationConfigurationResponse')
    GetNotificationEventRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#GetNotificationEventRequest', name: 'GetNotificationEventRequest')
    GetNotificationEventResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#GetNotificationEventResponse', name: 'GetNotificationEventResponse')
    GetNotificationsAccessForOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#GetNotificationsAccessForOrganizationRequest', name: 'GetNotificationsAccessForOrganizationRequest')
    GetNotificationsAccessForOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#GetNotificationsAccessForOrganizationResponse', name: 'GetNotificationsAccessForOrganizationResponse')
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    LastActivationTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.notifications#LastActivationTime', name: 'LastActivationTime', traits: {"smithy.api#timestampFormat" => "date-time"})
    ListChannelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ListChannelsRequest', name: 'ListChannelsRequest')
    ListChannelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ListChannelsResponse', name: 'ListChannelsResponse')
    ListEventRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ListEventRulesRequest', name: 'ListEventRulesRequest')
    ListEventRulesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ListEventRulesResponse', name: 'ListEventRulesResponse')
    ListManagedNotificationChannelAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ListManagedNotificationChannelAssociationsRequest', name: 'ListManagedNotificationChannelAssociationsRequest')
    ListManagedNotificationChannelAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ListManagedNotificationChannelAssociationsResponse', name: 'ListManagedNotificationChannelAssociationsResponse')
    ListManagedNotificationChildEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ListManagedNotificationChildEventsRequest', name: 'ListManagedNotificationChildEventsRequest')
    ListManagedNotificationChildEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ListManagedNotificationChildEventsResponse', name: 'ListManagedNotificationChildEventsResponse')
    ListManagedNotificationConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ListManagedNotificationConfigurationsRequest', name: 'ListManagedNotificationConfigurationsRequest')
    ListManagedNotificationConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ListManagedNotificationConfigurationsResponse', name: 'ListManagedNotificationConfigurationsResponse')
    ListManagedNotificationEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ListManagedNotificationEventsRequest', name: 'ListManagedNotificationEventsRequest')
    ListManagedNotificationEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ListManagedNotificationEventsResponse', name: 'ListManagedNotificationEventsResponse')
    ListMemberAccountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ListMemberAccountsRequest', name: 'ListMemberAccountsRequest')
    ListMemberAccountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ListMemberAccountsResponse', name: 'ListMemberAccountsResponse')
    ListNotificationConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ListNotificationConfigurationsRequest', name: 'ListNotificationConfigurationsRequest')
    ListNotificationConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ListNotificationConfigurationsResponse', name: 'ListNotificationConfigurationsResponse')
    ListNotificationEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ListNotificationEventsRequest', name: 'ListNotificationEventsRequest')
    ListNotificationEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ListNotificationEventsResponse', name: 'ListNotificationEventsResponse')
    ListNotificationHubsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ListNotificationHubsRequest', name: 'ListNotificationHubsRequest')
    ListNotificationHubsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ListNotificationHubsResponse', name: 'ListNotificationHubsResponse')
    ListOrganizationalUnitsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ListOrganizationalUnitsRequest', name: 'ListOrganizationalUnitsRequest')
    ListOrganizationalUnitsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ListOrganizationalUnitsResponse', name: 'ListOrganizationalUnitsResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    LocaleCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#LocaleCode', name: 'LocaleCode', traits: {"smithy.api#enum" => [{"name" => "de_DE", "value" => "de_DE", "documentation" => "German (Germany)"}, {"name" => "en_CA", "value" => "en_CA", "documentation" => "English (Canada)"}, {"name" => "en_US", "value" => "en_US", "documentation" => "English (United States). This is the default locale."}, {"name" => "en_UK", "value" => "en_UK", "documentation" => "English (United Kingdom)"}, {"name" => "es_ES", "value" => "es_ES", "documentation" => "Spanish (Spain)"}, {"name" => "fr_CA", "value" => "fr_CA", "documentation" => "French (Canada)"}, {"name" => "fr_FR", "value" => "fr_FR", "documentation" => "French (France)"}, {"name" => "id_ID", "value" => "id_ID", "documentation" => "Bahasa Indonesian (Indonesia)"}, {"name" => "it_IT", "value" => "it_IT", "documentation" => "Italian (Italy)"}, {"name" => "ja_JP", "value" => "ja_JP", "documentation" => "Japanese (Japan)"}, {"name" => "ko_KR", "value" => "ko_KR", "documentation" => "Korean (Korea)"}, {"name" => "pt_BR", "value" => "pt_BR", "documentation" => "Portuguese (Brazil)"}, {"name" => "tr_TR", "value" => "tr_TR", "documentation" => "Turkish (Turkey)"}, {"name" => "zh_CN", "value" => "zh_CN", "documentation" => "Chinese (China)"}, {"name" => "zh_TW", "value" => "zh_TW", "documentation" => "Chinese (Taiwan)"}], "smithy.api#suppress" => ["EnumTrait"]})
    ManagedNotificationChannelAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ManagedNotificationChannelAssociationSummary', name: 'ManagedNotificationChannelAssociationSummary')
    ManagedNotificationChannelAssociations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.notifications#ManagedNotificationChannelAssociations', name: 'ManagedNotificationChannelAssociations')
    ManagedNotificationChildEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ManagedNotificationChildEvent', name: 'ManagedNotificationChildEvent')
    ManagedNotificationChildEventArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#ManagedNotificationChildEventArn', name: 'ManagedNotificationChildEventArn', traits: {"aws.api#arnReference" => {"service" => "com.amazonaws.notifications#Notifications", "resource" => "com.amazonaws.notifications#ManagedNotificationChildEvent"}, "smithy.api#pattern" => "^arn:[-.a-z0-9]{1,63}:notifications::[0-9]{12}:managed-notification-configuration/category/[a-zA-Z0-9\\-]{3,64}/sub-category/[a-zA-Z0-9\\-]{3,64}/event/[a-z0-9]{27}/child-event/[a-z0-9]{27}$"})
    ManagedNotificationChildEventOverview = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ManagedNotificationChildEventOverview', name: 'ManagedNotificationChildEventOverview')
    ManagedNotificationChildEventSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ManagedNotificationChildEventSummary', name: 'ManagedNotificationChildEventSummary')
    ManagedNotificationChildEvents = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.notifications#ManagedNotificationChildEvents', name: 'ManagedNotificationChildEvents')
    ManagedNotificationConfigurationDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#ManagedNotificationConfigurationDescription', name: 'ManagedNotificationConfigurationDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[^\\u0001-\\u001F\\u007F-\\u009F]*$"})
    ManagedNotificationConfigurationName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#ManagedNotificationConfigurationName', name: 'ManagedNotificationConfigurationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9\\-]+$"})
    ManagedNotificationConfigurationOsArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#ManagedNotificationConfigurationOsArn', name: 'ManagedNotificationConfigurationOsArn', traits: {"smithy.api#pattern" => "^arn:[-.a-z0-9]{1,63}:notifications::[0-9]{12}:managed-notification-configuration/category/[a-zA-Z0-9\\-]{3,64}/sub-category/[a-zA-Z0-9\\-]{3,64}$"})
    ManagedNotificationConfigurationStructure = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ManagedNotificationConfigurationStructure', name: 'ManagedNotificationConfigurationStructure')
    ManagedNotificationConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.notifications#ManagedNotificationConfigurations', name: 'ManagedNotificationConfigurations')
    ManagedNotificationEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ManagedNotificationEvent', name: 'ManagedNotificationEvent')
    ManagedNotificationEventArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#ManagedNotificationEventArn', name: 'ManagedNotificationEventArn', traits: {"aws.api#arnReference" => {"service" => "com.amazonaws.notifications#Notifications", "resource" => "com.amazonaws.notifications#ManagedNotificationEvent"}, "smithy.api#pattern" => "^arn:[-.a-z0-9]{1,63}:notifications::[0-9]{12}:managed-notification-configuration/category/[a-zA-Z0-9\\-]{3,64}/sub-category/[a-zA-Z0-9\\-]{3,64}/event/[a-z0-9]{27}$"})
    ManagedNotificationEventOverview = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ManagedNotificationEventOverview', name: 'ManagedNotificationEventOverview')
    ManagedNotificationEventSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ManagedNotificationEventSummary', name: 'ManagedNotificationEventSummary')
    ManagedNotificationEvents = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.notifications#ManagedNotificationEvents', name: 'ManagedNotificationEvents')
    ManagedRuleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#ManagedRuleArn', name: 'ManagedRuleArn', traits: {"aws.api#arnReference" => {}, "smithy.api#pattern" => "^arn:aws:events:[a-z-\\d]{2,25}:\\d{12}:rule\\/[a-zA-Z-\\d]{1,1024}$"})
    ManagedRuleArns = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.notifications#ManagedRuleArns', name: 'ManagedRuleArns')
    ManagedSourceEventMetadataSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ManagedSourceEventMetadataSummary', name: 'ManagedSourceEventMetadataSummary')
    Media = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.notifications#Media', name: 'Media')
    MediaElement = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#MediaElement', name: 'MediaElement')
    MediaElementType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#MediaElementType', name: 'MediaElementType', traits: {"smithy.api#enum" => [{"name" => "IMAGE", "value" => "IMAGE"}]})
    MediaId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#MediaId', name: 'MediaId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    MemberAccount = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#MemberAccount', name: 'MemberAccount')
    MemberAccountNotificationConfigurationStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#MemberAccountNotificationConfigurationStatus', name: 'MemberAccountNotificationConfigurationStatus', traits: {"smithy.api#enum" => [{"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "The member account Notification Configuration status is ACTIVE."}, {"name" => "PENDING", "value" => "PENDING", "documentation" => "The member account Notification Configuration status is PENDING."}, {"name" => "INACTIVE", "value" => "INACTIVE", "documentation" => "The member account Notification Configuration status is INACTIVE."}, {"name" => "CREATING", "value" => "CREATING", "documentation" => "The member account Notification Configuration status is CREATING."}, {"name" => "DELETING", "value" => "DELETING", "documentation" => "The member account Notification Configuration status is DELETING."}]})
    MemberAccounts = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.notifications#MemberAccounts', name: 'MemberAccounts')
    MessageComponents = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#MessageComponents', name: 'MessageComponents')
    MessageComponentsSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#MessageComponentsSummary', name: 'MessageComponentsSummary')
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^[\\w+-/=]+$"})
    NotificationConfigurationArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#NotificationConfigurationArn', name: 'NotificationConfigurationArn', traits: {"aws.api#arnReference" => {"service" => "com.amazonaws.notifications#Notifications", "resource" => "com.amazonaws.notifications#NotificationConfiguration"}, "smithy.api#pattern" => "^arn:aws:notifications::[0-9]{12}:configuration/[a-z0-9]{27}$"})
    NotificationConfigurationDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#NotificationConfigurationDescription', name: 'NotificationConfigurationDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[^\\u0001-\\u001F\\u007F-\\u009F]*$"})
    NotificationConfigurationName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#NotificationConfigurationName', name: 'NotificationConfigurationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_\\-]+$"})
    NotificationConfigurationStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#NotificationConfigurationStatus', name: 'NotificationConfigurationStatus', traits: {"smithy.api#enum" => [{"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "All of the EventRules are in ACTIVE Status. Any call can be executed."}, {"name" => "PARTIALLY_ACTIVE", "value" => "PARTIALLY_ACTIVE", "documentation" => "Some EventRules are in ACTIVE Status and some are INACTIVE. Any call can be executed."}, {"name" => "INACTIVE", "value" => "INACTIVE", "documentation" => "All of the EventRules are in INACTIVE Status. Any call can be executed."}, {"name" => "DELETING", "value" => "DELETING", "documentation" => "This NotificationConfiguration is being deleted. Only GET/LIST calls can be executed."}]})
    NotificationConfigurationStructure = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#NotificationConfigurationStructure', name: 'NotificationConfigurationStructure')
    NotificationConfigurationSubtype = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#NotificationConfigurationSubtype', name: 'NotificationConfigurationSubtype', traits: {"smithy.api#enum" => [{"name" => "ACCOUNT", "value" => "ACCOUNT", "documentation" => "Notification configuration created by the account"}, {"name" => "ADMIN_MANAGED", "value" => "ADMIN_MANAGED", "documentation" => "Notification configuration managed by an administrator account"}]})
    NotificationConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.notifications#NotificationConfigurations', name: 'NotificationConfigurations')
    NotificationEventArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#NotificationEventArn', name: 'NotificationEventArn', traits: {"aws.api#arnReference" => {"service" => "com.amazonaws.notifications#Notifications", "resource" => "com.amazonaws.notifications#NotificationEventSchema"}, "smithy.api#pattern" => "^arn:[-.a-z0-9]{1,63}:notifications:[-.a-z0-9]{1,63}:[0-9]{12}:configuration/[a-z0-9]{27}/event/[a-z0-9]{27}$"})
    NotificationEventId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#NotificationEventId', name: 'NotificationEventId', traits: {"smithy.api#pattern" => "^[a-z0-9]{27}$"})
    NotificationEventOverview = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#NotificationEventOverview', name: 'NotificationEventOverview')
    NotificationEventSchema = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#NotificationEventSchema', name: 'NotificationEventSchema')
    NotificationEventSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#NotificationEventSummary', name: 'NotificationEventSummary')
    NotificationEvents = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.notifications#NotificationEvents', name: 'NotificationEvents')
    NotificationHubOverview = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#NotificationHubOverview', name: 'NotificationHubOverview')
    NotificationHubStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#NotificationHubStatus', name: 'NotificationHubStatus', traits: {"smithy.api#enum" => [{"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Incoming Notification Events are being replicated to this Notification Hub. A Notification Hub with this status can be deregistered."}, {"name" => "REGISTERING", "value" => "REGISTERING", "documentation" => "Notification Hub is initializing. Cannot deregister a Notification Hub in this status."}, {"name" => "DEREGISTERING", "value" => "DEREGISTERING", "documentation" => "Notification Hub is being deleted. Cannot register a Notification Hub in the same region as one in this status."}, {"name" => "INACTIVE", "value" => "INACTIVE", "documentation" => "Notification Hub is in a failure state. Incoming Notification Events are not being replicated to this Hub."}]})
    NotificationHubStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#NotificationHubStatusReason', name: 'NotificationHubStatusReason')
    NotificationHubStatusSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#NotificationHubStatusSummary', name: 'NotificationHubStatusSummary')
    NotificationHubs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.notifications#NotificationHubs', name: 'NotificationHubs')
    NotificationType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#NotificationType', name: 'NotificationType', traits: {"smithy.api#enum" => [{"name" => "ALERT", "value" => "ALERT"}, {"name" => "WARNING", "value" => "WARNING"}, {"name" => "ANNOUNCEMENT", "value" => "ANNOUNCEMENT"}, {"name" => "INFORMATIONAL", "value" => "INFORMATIONAL"}]})
    NotificationsAccessForOrganization = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#NotificationsAccessForOrganization', name: 'NotificationsAccessForOrganization')
    OrganizationalUnitId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#OrganizationalUnitId', name: 'OrganizationalUnitId', traits: {"smithy.api#pattern" => "^(Root|r-[0-9a-z]{4,32}|ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"})
    OrganizationalUnits = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.notifications#OrganizationalUnits', name: 'OrganizationalUnits')
    QuotaCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#QuotaCode', name: 'QuotaCode')
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#Region', name: 'Region', traits: {"smithy.api#length" => {"min" => 2, "max" => 25}, "smithy.api#pattern" => "^([a-z]{1,2})-([a-z]{1,15}-)+([0-9])$"})
    Regions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.notifications#Regions', name: 'Regions', traits: {"smithy.api#length" => {"min" => 1}})
    RegisterNotificationHubRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#RegisterNotificationHubRequest', name: 'RegisterNotificationHubRequest')
    RegisterNotificationHubResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#RegisterNotificationHubResponse', name: 'RegisterNotificationHubResponse')
    Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#Resource', name: 'Resource')
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#ResourceId', name: 'ResourceId')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#ResourceType', name: 'ResourceType')
    Resources = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.notifications#Resources', name: 'Resources')
    SampleAggregationDimensionValues = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.notifications#SampleAggregationDimensionValues', name: 'SampleAggregationDimensionValues', traits: {"smithy.api#length" => {"max" => 50}})
    SchemaVersion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#SchemaVersion', name: 'SchemaVersion', traits: {"smithy.api#enum" => [{"name" => "SCHEMA_VERSION_1_0", "value" => "v1.0"}]})
    ServiceCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#ServiceCode', name: 'ServiceCode')
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Source = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#Source', name: 'Source', traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^aws.([a-z0-9\\-])+$"})
    SourceEventMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#SourceEventMetadata', name: 'SourceEventMetadata')
    SourceEventMetadataSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#SourceEventMetadataSummary', name: 'SourceEventMetadataSummary')
    StatusSummaryByRegion = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.notifications#StatusSummaryByRegion', name: 'StatusSummaryByRegion')
    SummarizationDimensionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#SummarizationDimensionDetail', name: 'SummarizationDimensionDetail')
    SummarizationDimensionDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.notifications#SummarizationDimensionDetails', name: 'SummarizationDimensionDetails')
    SummarizationDimensionOverview = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#SummarizationDimensionOverview', name: 'SummarizationDimensionOverview')
    SummarizationDimensionOverviews = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.notifications#SummarizationDimensionOverviews', name: 'SummarizationDimensionOverviews')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#TagKey', name: 'TagKey', traits: {"smithy.api#pattern" => "^(?!aws:).{1,128}$"})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.notifications#TagKeys', name: 'TagKeys', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.notifications#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.notifications#Tags', name: 'Tags', traits: {"smithy.api#length" => {"max" => 50}})
    TextByLocale = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.notifications#TextByLocale', name: 'TextByLocale')
    TextPartId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#TextPartId', name: 'TextPartId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_]+$"})
    TextPartReference = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#TextPartReference', name: 'TextPartReference')
    TextPartType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#TextPartType', name: 'TextPartType', traits: {"smithy.api#enum" => [{"name" => "LOCALIZED_TEXT", "value" => "LOCALIZED_TEXT"}, {"name" => "PLAIN_TEXT", "value" => "PLAIN_TEXT"}, {"name" => "URL", "value" => "URL"}]})
    TextPartValue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#TextPartValue', name: 'TextPartValue')
    TextParts = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.notifications#TextParts', name: 'TextParts')
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateEventRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#UpdateEventRuleRequest', name: 'UpdateEventRuleRequest')
    UpdateEventRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#UpdateEventRuleResponse', name: 'UpdateEventRuleResponse')
    UpdateNotificationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#UpdateNotificationConfigurationRequest', name: 'UpdateNotificationConfigurationRequest')
    UpdateNotificationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#UpdateNotificationConfigurationResponse', name: 'UpdateNotificationConfigurationResponse')
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#Url', name: 'Url', traits: {"smithy.api#length" => {"max" => 2000}, "smithy.api#pattern" => "^(https?)://.*$"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notifications#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.notifications#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notifications#ValidationExceptionReason', name: 'ValidationExceptionReason', traits: {"smithy.api#enum" => [{"value" => "fieldValidationFailed", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "other", "name" => "OTHER"}]})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    AccessStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    AccessStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    AccessStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    AggregatedNotificationRegions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region)
    AggregationDetail.add_member(:summarization_dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SummarizationDimensionDetails, location_name: 'summarizationDimensions'))
    AggregationDetail.type = Types::AggregationDetail
    AggregationKey.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    AggregationKey.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'value', traits: {"smithy.api#required" => {}}))
    AggregationKey.type = Types::AggregationKey
    AggregationKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationKey)
    AggregationSummary.add_member(:event_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'eventCount', traits: {"smithy.api#required" => {}}))
    AggregationSummary.add_member(:aggregated_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationKeys, location_name: 'aggregatedBy', traits: {"smithy.api#required" => {}}))
    AggregationSummary.add_member(:aggregated_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SummarizationDimensionOverview, location_name: 'aggregatedAccounts', traits: {"smithy.api#required" => {}}))
    AggregationSummary.add_member(:aggregated_regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SummarizationDimensionOverview, location_name: 'aggregatedRegions', traits: {"smithy.api#required" => {}}))
    AggregationSummary.add_member(:aggregated_organizational_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SummarizationDimensionOverview, location_name: 'aggregatedOrganizationalUnits'))
    AggregationSummary.add_member(:additional_summarization_dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SummarizationDimensionOverviews, location_name: 'additionalSummarizationDimensions'))
    AggregationSummary.type = Types::AggregationSummary
    AssociateChannelRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateChannelRequest.add_member(:notification_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationArn, location_name: 'notificationConfigurationArn', traits: {"smithy.api#required" => {}}))
    AssociateChannelRequest.type = Types::AssociateChannelRequest
    AssociateChannelResponse.type = Types::AssociateChannelResponse
    AssociateManagedNotificationAccountContactRequest.add_member(:contact_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountContactType, location_name: 'contactIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateManagedNotificationAccountContactRequest.add_member(:managed_notification_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationOsArn, location_name: 'managedNotificationConfigurationArn', traits: {"smithy.api#required" => {}}))
    AssociateManagedNotificationAccountContactRequest.type = Types::AssociateManagedNotificationAccountContactRequest
    AssociateManagedNotificationAccountContactResponse.type = Types::AssociateManagedNotificationAccountContactResponse
    AssociateManagedNotificationAdditionalChannelRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'channelArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateManagedNotificationAdditionalChannelRequest.add_member(:managed_notification_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationOsArn, location_name: 'managedNotificationConfigurationArn', traits: {"smithy.api#required" => {}}))
    AssociateManagedNotificationAdditionalChannelRequest.type = Types::AssociateManagedNotificationAdditionalChannelRequest
    AssociateManagedNotificationAdditionalChannelResponse.type = Types::AssociateManagedNotificationAdditionalChannelResponse
    AssociateOrganizationalUnitRequest.add_member(:organizational_unit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: 'organizationalUnitId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateOrganizationalUnitRequest.add_member(:notification_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationArn, location_name: 'notificationConfigurationArn', traits: {"smithy.api#required" => {}}))
    AssociateOrganizationalUnitRequest.type = Types::AssociateOrganizationalUnitRequest
    AssociateOrganizationalUnitResponse.type = Types::AssociateOrganizationalUnitResponse
    Channels.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn)
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateEventRuleRequest.add_member(:notification_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationArn, location_name: 'notificationConfigurationArn', traits: {"smithy.api#required" => {}}))
    CreateEventRuleRequest.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#required" => {}}))
    CreateEventRuleRequest.add_member(:event_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventType, location_name: 'eventType', traits: {"smithy.api#required" => {}}))
    CreateEventRuleRequest.add_member(:event_pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventRuleEventPattern, location_name: 'eventPattern'))
    CreateEventRuleRequest.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Regions, location_name: 'regions', traits: {"smithy.api#required" => {}}))
    CreateEventRuleRequest.type = Types::CreateEventRuleRequest
    CreateEventRuleResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventRuleArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    CreateEventRuleResponse.add_member(:notification_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationArn, location_name: 'notificationConfigurationArn', traits: {"smithy.api#required" => {}}))
    CreateEventRuleResponse.add_member(:status_summary_by_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusSummaryByRegion, location_name: 'statusSummaryByRegion', traits: {"smithy.api#required" => {}}))
    CreateEventRuleResponse.type = Types::CreateEventRuleResponse
    CreateNotificationConfigurationRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateNotificationConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationDescription, location_name: 'description', traits: {"smithy.api#required" => {}}))
    CreateNotificationConfigurationRequest.add_member(:aggregation_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationDuration, location_name: 'aggregationDuration'))
    CreateNotificationConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateNotificationConfigurationRequest.type = Types::CreateNotificationConfigurationRequest
    CreateNotificationConfigurationResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    CreateNotificationConfigurationResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    CreateNotificationConfigurationResponse.type = Types::CreateNotificationConfigurationResponse
    DeleteEventRuleRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventRuleArn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEventRuleRequest.type = Types::DeleteEventRuleRequest
    DeleteEventRuleResponse.type = Types::DeleteEventRuleResponse
    DeleteNotificationConfigurationRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationArn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteNotificationConfigurationRequest.type = Types::DeleteNotificationConfigurationRequest
    DeleteNotificationConfigurationResponse.type = Types::DeleteNotificationConfigurationResponse
    DeregisterNotificationHubRequest.add_member(:notification_hub_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'notificationHubRegion', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeregisterNotificationHubRequest.type = Types::DeregisterNotificationHubRequest
    DeregisterNotificationHubResponse.add_member(:notification_hub_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'notificationHubRegion', traits: {"smithy.api#required" => {}}))
    DeregisterNotificationHubResponse.add_member(:status_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationHubStatusSummary, location_name: 'statusSummary', traits: {"smithy.api#required" => {}}))
    DeregisterNotificationHubResponse.type = Types::DeregisterNotificationHubResponse
    Dimension.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextPartReference, location_name: 'name', traits: {"smithy.api#required" => {}}))
    Dimension.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextPartReference, location_name: 'value', traits: {"smithy.api#required" => {}}))
    Dimension.type = Types::Dimension
    Dimensions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dimension)
    DisableNotificationsAccessForOrganizationRequest.type = Types::DisableNotificationsAccessForOrganizationRequest
    DisableNotificationsAccessForOrganizationResponse.type = Types::DisableNotificationsAccessForOrganizationResponse
    DisassociateChannelRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateChannelRequest.add_member(:notification_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationArn, location_name: 'notificationConfigurationArn', traits: {"smithy.api#required" => {}}))
    DisassociateChannelRequest.type = Types::DisassociateChannelRequest
    DisassociateChannelResponse.type = Types::DisassociateChannelResponse
    DisassociateManagedNotificationAccountContactRequest.add_member(:contact_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountContactType, location_name: 'contactIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateManagedNotificationAccountContactRequest.add_member(:managed_notification_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationOsArn, location_name: 'managedNotificationConfigurationArn', traits: {"smithy.api#required" => {}}))
    DisassociateManagedNotificationAccountContactRequest.type = Types::DisassociateManagedNotificationAccountContactRequest
    DisassociateManagedNotificationAccountContactResponse.type = Types::DisassociateManagedNotificationAccountContactResponse
    DisassociateManagedNotificationAdditionalChannelRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'channelArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateManagedNotificationAdditionalChannelRequest.add_member(:managed_notification_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationOsArn, location_name: 'managedNotificationConfigurationArn', traits: {"smithy.api#required" => {}}))
    DisassociateManagedNotificationAdditionalChannelRequest.type = Types::DisassociateManagedNotificationAdditionalChannelRequest
    DisassociateManagedNotificationAdditionalChannelResponse.type = Types::DisassociateManagedNotificationAdditionalChannelResponse
    DisassociateOrganizationalUnitRequest.add_member(:organizational_unit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: 'organizationalUnitId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateOrganizationalUnitRequest.add_member(:notification_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationArn, location_name: 'notificationConfigurationArn', traits: {"smithy.api#required" => {}}))
    DisassociateOrganizationalUnitRequest.type = Types::DisassociateOrganizationalUnitRequest
    DisassociateOrganizationalUnitResponse.type = Types::DisassociateOrganizationalUnitResponse
    EnableNotificationsAccessForOrganizationRequest.type = Types::EnableNotificationsAccessForOrganizationRequest
    EnableNotificationsAccessForOrganizationResponse.type = Types::EnableNotificationsAccessForOrganizationResponse
    EventRuleStatusSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventRuleStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    EventRuleStatusSummary.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventRuleStatusReason, location_name: 'reason', traits: {"smithy.api#required" => {}}))
    EventRuleStatusSummary.type = Types::EventRuleStatusSummary
    EventRuleStructure.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventRuleArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    EventRuleStructure.add_member(:notification_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationArn, location_name: 'notificationConfigurationArn', traits: {"smithy.api#required" => {}}))
    EventRuleStructure.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#required" => {}}))
    EventRuleStructure.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#required" => {}}))
    EventRuleStructure.add_member(:event_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventType, location_name: 'eventType', traits: {"smithy.api#required" => {}}))
    EventRuleStructure.add_member(:event_pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventRuleEventPattern, location_name: 'eventPattern', traits: {"smithy.api#required" => {}}))
    EventRuleStructure.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Regions, location_name: 'regions', traits: {"smithy.api#required" => {}}))
    EventRuleStructure.add_member(:managed_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedRuleArns, location_name: 'managedRules', traits: {"smithy.api#required" => {}}))
    EventRuleStructure.add_member(:status_summary_by_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusSummaryByRegion, location_name: 'statusSummaryByRegion', traits: {"smithy.api#required" => {}}))
    EventRuleStructure.type = Types::EventRuleStructure
    EventRules.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventRuleStructure)
    GetEventRuleRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventRuleArn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEventRuleRequest.type = Types::GetEventRuleRequest
    GetEventRuleResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventRuleArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    GetEventRuleResponse.add_member(:notification_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationArn, location_name: 'notificationConfigurationArn', traits: {"smithy.api#required" => {}}))
    GetEventRuleResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#required" => {}}))
    GetEventRuleResponse.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#required" => {}}))
    GetEventRuleResponse.add_member(:event_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventType, location_name: 'eventType', traits: {"smithy.api#required" => {}}))
    GetEventRuleResponse.add_member(:event_pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventRuleEventPattern, location_name: 'eventPattern', traits: {"smithy.api#required" => {}}))
    GetEventRuleResponse.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Regions, location_name: 'regions', traits: {"smithy.api#required" => {}}))
    GetEventRuleResponse.add_member(:managed_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedRuleArns, location_name: 'managedRules', traits: {"smithy.api#required" => {}}))
    GetEventRuleResponse.add_member(:status_summary_by_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusSummaryByRegion, location_name: 'statusSummaryByRegion', traits: {"smithy.api#required" => {}}))
    GetEventRuleResponse.type = Types::GetEventRuleResponse
    GetManagedNotificationChildEventRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationChildEventArn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetManagedNotificationChildEventRequest.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocaleCode, location_name: 'locale', traits: {"smithy.api#httpQuery" => "locale"}))
    GetManagedNotificationChildEventRequest.type = Types::GetManagedNotificationChildEventRequest
    GetManagedNotificationChildEventResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationChildEventArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    GetManagedNotificationChildEventResponse.add_member(:managed_notification_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationOsArn, location_name: 'managedNotificationConfigurationArn', traits: {"smithy.api#required" => {}}))
    GetManagedNotificationChildEventResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#required" => {}}))
    GetManagedNotificationChildEventResponse.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationChildEvent, location_name: 'content', traits: {"smithy.api#required" => {}}))
    GetManagedNotificationChildEventResponse.type = Types::GetManagedNotificationChildEventResponse
    GetManagedNotificationConfigurationRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationOsArn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetManagedNotificationConfigurationRequest.type = Types::GetManagedNotificationConfigurationRequest
    GetManagedNotificationConfigurationResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationOsArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    GetManagedNotificationConfigurationResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetManagedNotificationConfigurationResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationDescription, location_name: 'description', traits: {"smithy.api#required" => {}}))
    GetManagedNotificationConfigurationResponse.add_member(:category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'category', traits: {"smithy.api#required" => {}}))
    GetManagedNotificationConfigurationResponse.add_member(:sub_category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'subCategory', traits: {"smithy.api#required" => {}}))
    GetManagedNotificationConfigurationResponse.type = Types::GetManagedNotificationConfigurationResponse
    GetManagedNotificationEventRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationEventArn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetManagedNotificationEventRequest.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocaleCode, location_name: 'locale', traits: {"smithy.api#httpQuery" => "locale"}))
    GetManagedNotificationEventRequest.type = Types::GetManagedNotificationEventRequest
    GetManagedNotificationEventResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationEventArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    GetManagedNotificationEventResponse.add_member(:managed_notification_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationOsArn, location_name: 'managedNotificationConfigurationArn', traits: {"smithy.api#required" => {}}))
    GetManagedNotificationEventResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#required" => {}}))
    GetManagedNotificationEventResponse.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationEvent, location_name: 'content', traits: {"smithy.api#required" => {}}))
    GetManagedNotificationEventResponse.type = Types::GetManagedNotificationEventResponse
    GetNotificationConfigurationRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationArn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNotificationConfigurationRequest.type = Types::GetNotificationConfigurationRequest
    GetNotificationConfigurationResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    GetNotificationConfigurationResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetNotificationConfigurationResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationDescription, location_name: 'description', traits: {"smithy.api#required" => {}}))
    GetNotificationConfigurationResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetNotificationConfigurationResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#required" => {}}))
    GetNotificationConfigurationResponse.add_member(:aggregation_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationDuration, location_name: 'aggregationDuration'))
    GetNotificationConfigurationResponse.add_member(:subtype, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationSubtype, location_name: 'subtype'))
    GetNotificationConfigurationResponse.type = Types::GetNotificationConfigurationResponse
    GetNotificationEventRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationEventArn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNotificationEventRequest.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocaleCode, location_name: 'locale', traits: {"smithy.api#httpQuery" => "locale"}))
    GetNotificationEventRequest.type = Types::GetNotificationEventRequest
    GetNotificationEventResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationEventArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    GetNotificationEventResponse.add_member(:notification_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationArn, location_name: 'notificationConfigurationArn', traits: {"smithy.api#required" => {}}))
    GetNotificationEventResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#required" => {}}))
    GetNotificationEventResponse.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationEventSchema, location_name: 'content', traits: {"smithy.api#required" => {}}))
    GetNotificationEventResponse.type = Types::GetNotificationEventResponse
    GetNotificationsAccessForOrganizationRequest.type = Types::GetNotificationsAccessForOrganizationRequest
    GetNotificationsAccessForOrganizationResponse.add_member(:notifications_access_for_organization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationsAccessForOrganization, location_name: 'notificationsAccessForOrganization', traits: {"smithy.api#required" => {}}))
    GetNotificationsAccessForOrganizationResponse.type = Types::GetNotificationsAccessForOrganizationResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListChannelsRequest.add_member(:notification_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationArn, location_name: 'notificationConfigurationArn', traits: {"smithy.api#httpQuery" => "notificationConfigurationArn", "smithy.api#required" => {}}))
    ListChannelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListChannelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListChannelsRequest.type = Types::ListChannelsRequest
    ListChannelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListChannelsResponse.add_member(:channels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Channels, location_name: 'channels', traits: {"smithy.api#required" => {}}))
    ListChannelsResponse.type = Types::ListChannelsResponse
    ListEventRulesRequest.add_member(:notification_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationArn, location_name: 'notificationConfigurationArn', traits: {"smithy.api#httpQuery" => "notificationConfigurationArn", "smithy.api#required" => {}}))
    ListEventRulesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListEventRulesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListEventRulesRequest.type = Types::ListEventRulesRequest
    ListEventRulesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListEventRulesResponse.add_member(:event_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventRules, location_name: 'eventRules', traits: {"smithy.api#required" => {}}))
    ListEventRulesResponse.type = Types::ListEventRulesResponse
    ListManagedNotificationChannelAssociationsRequest.add_member(:managed_notification_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationOsArn, location_name: 'managedNotificationConfigurationArn', traits: {"smithy.api#httpQuery" => "managedNotificationConfigurationArn", "smithy.api#required" => {}}))
    ListManagedNotificationChannelAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListManagedNotificationChannelAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListManagedNotificationChannelAssociationsRequest.type = Types::ListManagedNotificationChannelAssociationsRequest
    ListManagedNotificationChannelAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListManagedNotificationChannelAssociationsResponse.add_member(:channel_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationChannelAssociations, location_name: 'channelAssociations', traits: {"smithy.api#required" => {}}))
    ListManagedNotificationChannelAssociationsResponse.type = Types::ListManagedNotificationChannelAssociationsResponse
    ListManagedNotificationChildEventsRequest.add_member(:aggregate_managed_notification_event_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationEventArn, location_name: 'aggregateManagedNotificationEventArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListManagedNotificationChildEventsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#httpQuery" => "startTime", "smithy.api#timestampFormat" => "date-time"}))
    ListManagedNotificationChildEventsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endTime', traits: {"smithy.api#httpQuery" => "endTime", "smithy.api#timestampFormat" => "date-time"}))
    ListManagedNotificationChildEventsRequest.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocaleCode, location_name: 'locale', traits: {"smithy.api#httpQuery" => "locale"}))
    ListManagedNotificationChildEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListManagedNotificationChildEventsRequest.add_member(:related_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'relatedAccount', traits: {"smithy.api#httpQuery" => "relatedAccount"}))
    ListManagedNotificationChildEventsRequest.add_member(:organizational_unit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: 'organizationalUnitId', traits: {"smithy.api#httpQuery" => "organizationalUnitId"}))
    ListManagedNotificationChildEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListManagedNotificationChildEventsRequest.type = Types::ListManagedNotificationChildEventsRequest
    ListManagedNotificationChildEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListManagedNotificationChildEventsResponse.add_member(:managed_notification_child_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationChildEvents, location_name: 'managedNotificationChildEvents', traits: {"smithy.api#required" => {}}))
    ListManagedNotificationChildEventsResponse.type = Types::ListManagedNotificationChildEventsResponse
    ListManagedNotificationConfigurationsRequest.add_member(:channel_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelIdentifier, location_name: 'channelIdentifier', traits: {"smithy.api#httpQuery" => "channelIdentifier"}))
    ListManagedNotificationConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListManagedNotificationConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListManagedNotificationConfigurationsRequest.type = Types::ListManagedNotificationConfigurationsRequest
    ListManagedNotificationConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListManagedNotificationConfigurationsResponse.add_member(:managed_notification_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationConfigurations, location_name: 'managedNotificationConfigurations', traits: {"smithy.api#required" => {}}))
    ListManagedNotificationConfigurationsResponse.type = Types::ListManagedNotificationConfigurationsResponse
    ListManagedNotificationEventsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#httpQuery" => "startTime", "smithy.api#timestampFormat" => "date-time"}))
    ListManagedNotificationEventsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endTime', traits: {"smithy.api#httpQuery" => "endTime", "smithy.api#timestampFormat" => "date-time"}))
    ListManagedNotificationEventsRequest.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocaleCode, location_name: 'locale', traits: {"smithy.api#httpQuery" => "locale"}))
    ListManagedNotificationEventsRequest.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#httpQuery" => "source"}))
    ListManagedNotificationEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListManagedNotificationEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListManagedNotificationEventsRequest.add_member(:organizational_unit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: 'organizationalUnitId', traits: {"smithy.api#httpQuery" => "organizationalUnitId"}))
    ListManagedNotificationEventsRequest.add_member(:related_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'relatedAccount', traits: {"smithy.api#httpQuery" => "relatedAccount"}))
    ListManagedNotificationEventsRequest.type = Types::ListManagedNotificationEventsRequest
    ListManagedNotificationEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListManagedNotificationEventsResponse.add_member(:managed_notification_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationEvents, location_name: 'managedNotificationEvents', traits: {"smithy.api#required" => {}}))
    ListManagedNotificationEventsResponse.type = Types::ListManagedNotificationEventsResponse
    ListMemberAccountsRequest.add_member(:notification_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationArn, location_name: 'notificationConfigurationArn', traits: {"smithy.api#httpQuery" => "notificationConfigurationArn", "smithy.api#required" => {}}))
    ListMemberAccountsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListMemberAccountsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMemberAccountsRequest.add_member(:member_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'memberAccount', traits: {"smithy.api#httpQuery" => "memberAccount"}))
    ListMemberAccountsRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberAccountNotificationConfigurationStatus, location_name: 'status', traits: {"smithy.api#httpQuery" => "status"}))
    ListMemberAccountsRequest.add_member(:organizational_unit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: 'organizationalUnitId', traits: {"smithy.api#httpQuery" => "organizationalUnitId"}))
    ListMemberAccountsRequest.type = Types::ListMemberAccountsRequest
    ListMemberAccountsResponse.add_member(:member_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberAccounts, location_name: 'memberAccounts', traits: {"smithy.api#required" => {}}))
    ListMemberAccountsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListMemberAccountsResponse.type = Types::ListMemberAccountsResponse
    ListNotificationConfigurationsRequest.add_member(:event_rule_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'eventRuleSource', traits: {"smithy.api#httpQuery" => "eventRuleSource"}))
    ListNotificationConfigurationsRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'channelArn', traits: {"smithy.api#httpQuery" => "channelArn"}))
    ListNotificationConfigurationsRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationStatus, location_name: 'status', traits: {"smithy.api#httpQuery" => "status"}))
    ListNotificationConfigurationsRequest.add_member(:subtype, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationSubtype, location_name: 'subtype', traits: {"smithy.api#httpQuery" => "subtype"}))
    ListNotificationConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListNotificationConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListNotificationConfigurationsRequest.type = Types::ListNotificationConfigurationsRequest
    ListNotificationConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListNotificationConfigurationsResponse.add_member(:notification_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurations, location_name: 'notificationConfigurations', traits: {"smithy.api#required" => {}}))
    ListNotificationConfigurationsResponse.type = Types::ListNotificationConfigurationsResponse
    ListNotificationEventsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#httpQuery" => "startTime", "smithy.api#timestampFormat" => "date-time"}))
    ListNotificationEventsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endTime', traits: {"smithy.api#httpQuery" => "endTime", "smithy.api#timestampFormat" => "date-time"}))
    ListNotificationEventsRequest.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocaleCode, location_name: 'locale', traits: {"smithy.api#httpQuery" => "locale"}))
    ListNotificationEventsRequest.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#httpQuery" => "source"}))
    ListNotificationEventsRequest.add_member(:include_child_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'includeChildEvents', traits: {"smithy.api#httpQuery" => "includeChildEvents"}))
    ListNotificationEventsRequest.add_member(:aggregate_notification_event_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationEventArn, location_name: 'aggregateNotificationEventArn', traits: {"smithy.api#httpQuery" => "aggregateNotificationEventArn"}))
    ListNotificationEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListNotificationEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListNotificationEventsRequest.add_member(:organizational_unit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: 'organizationalUnitId', traits: {"smithy.api#httpQuery" => "organizationalUnitId"}))
    ListNotificationEventsRequest.type = Types::ListNotificationEventsRequest
    ListNotificationEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListNotificationEventsResponse.add_member(:notification_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationEvents, location_name: 'notificationEvents', traits: {"smithy.api#required" => {}}))
    ListNotificationEventsResponse.type = Types::ListNotificationEventsResponse
    ListNotificationHubsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 3, "max" => 3}}))
    ListNotificationHubsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListNotificationHubsRequest.type = Types::ListNotificationHubsRequest
    ListNotificationHubsResponse.add_member(:notification_hubs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationHubs, location_name: 'notificationHubs', traits: {"smithy.api#required" => {}}))
    ListNotificationHubsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListNotificationHubsResponse.type = Types::ListNotificationHubsResponse
    ListOrganizationalUnitsRequest.add_member(:notification_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationArn, location_name: 'notificationConfigurationArn', traits: {"smithy.api#httpQuery" => "notificationConfigurationArn", "smithy.api#required" => {}}))
    ListOrganizationalUnitsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListOrganizationalUnitsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListOrganizationalUnitsRequest.type = Types::ListOrganizationalUnitsRequest
    ListOrganizationalUnitsResponse.add_member(:organizational_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnits, location_name: 'organizationalUnits', traits: {"smithy.api#required" => {}}))
    ListOrganizationalUnitsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListOrganizationalUnitsResponse.type = Types::ListOrganizationalUnitsResponse
    ListTagsForResourceRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationArn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ManagedNotificationChannelAssociationSummary.add_member(:channel_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'channelIdentifier', traits: {"smithy.api#required" => {}}))
    ManagedNotificationChannelAssociationSummary.add_member(:channel_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: 'channelType', traits: {"smithy.api#required" => {}}))
    ManagedNotificationChannelAssociationSummary.add_member(:override_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelAssociationOverrideOption, location_name: 'overrideOption'))
    ManagedNotificationChannelAssociationSummary.type = Types::ManagedNotificationChannelAssociationSummary
    ManagedNotificationChannelAssociations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationChannelAssociationSummary)
    ManagedNotificationChildEvent.add_member(:schema_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaVersion, location_name: 'schemaVersion', traits: {"smithy.api#required" => {}}))
    ManagedNotificationChildEvent.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationEventId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    ManagedNotificationChildEvent.add_member(:message_components, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageComponents, location_name: 'messageComponents', traits: {"smithy.api#required" => {}}))
    ManagedNotificationChildEvent.add_member(:source_event_detail_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'sourceEventDetailUrl'))
    ManagedNotificationChildEvent.add_member(:source_event_detail_url_display_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'sourceEventDetailUrlDisplayText'))
    ManagedNotificationChildEvent.add_member(:notification_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationType, location_name: 'notificationType', traits: {"smithy.api#required" => {}}))
    ManagedNotificationChildEvent.add_member(:event_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventStatus, location_name: 'eventStatus'))
    ManagedNotificationChildEvent.add_member(:aggregate_managed_notification_event_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationEventArn, location_name: 'aggregateManagedNotificationEventArn', traits: {"smithy.api#required" => {}}))
    ManagedNotificationChildEvent.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#timestampFormat" => "date-time"}))
    ManagedNotificationChildEvent.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endTime', traits: {"smithy.api#timestampFormat" => "date-time"}))
    ManagedNotificationChildEvent.add_member(:text_parts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextParts, location_name: 'textParts', traits: {"smithy.api#required" => {}}))
    ManagedNotificationChildEvent.add_member(:organizational_unit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: 'organizationalUnitId'))
    ManagedNotificationChildEvent.add_member(:aggregation_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationDetail, location_name: 'aggregationDetail'))
    ManagedNotificationChildEvent.type = Types::ManagedNotificationChildEvent
    ManagedNotificationChildEventOverview.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationEventArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ManagedNotificationChildEventOverview.add_member(:managed_notification_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationOsArn, location_name: 'managedNotificationConfigurationArn', traits: {"smithy.api#required" => {}}))
    ManagedNotificationChildEventOverview.add_member(:related_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'relatedAccount', traits: {"smithy.api#required" => {}}))
    ManagedNotificationChildEventOverview.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#required" => {}}))
    ManagedNotificationChildEventOverview.add_member(:child_event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationChildEventSummary, location_name: 'childEvent', traits: {"smithy.api#required" => {}}))
    ManagedNotificationChildEventOverview.add_member(:aggregate_managed_notification_event_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationEventArn, location_name: 'aggregateManagedNotificationEventArn', traits: {"smithy.api#required" => {}}))
    ManagedNotificationChildEventOverview.add_member(:organizational_unit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: 'organizationalUnitId'))
    ManagedNotificationChildEventOverview.type = Types::ManagedNotificationChildEventOverview
    ManagedNotificationChildEventSummary.add_member(:schema_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaVersion, location_name: 'schemaVersion', traits: {"smithy.api#required" => {}}))
    ManagedNotificationChildEventSummary.add_member(:source_event_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedSourceEventMetadataSummary, location_name: 'sourceEventMetadata', traits: {"smithy.api#required" => {}}))
    ManagedNotificationChildEventSummary.add_member(:message_components, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageComponentsSummary, location_name: 'messageComponents', traits: {"smithy.api#required" => {}}))
    ManagedNotificationChildEventSummary.add_member(:aggregation_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationDetail, location_name: 'aggregationDetail', traits: {"smithy.api#required" => {}}))
    ManagedNotificationChildEventSummary.add_member(:event_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventStatus, location_name: 'eventStatus', traits: {"smithy.api#required" => {}}))
    ManagedNotificationChildEventSummary.add_member(:notification_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationType, location_name: 'notificationType', traits: {"smithy.api#required" => {}}))
    ManagedNotificationChildEventSummary.type = Types::ManagedNotificationChildEventSummary
    ManagedNotificationChildEvents.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationChildEventOverview)
    ManagedNotificationConfigurationStructure.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationOsArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ManagedNotificationConfigurationStructure.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ManagedNotificationConfigurationStructure.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationDescription, location_name: 'description', traits: {"smithy.api#required" => {}}))
    ManagedNotificationConfigurationStructure.type = Types::ManagedNotificationConfigurationStructure
    ManagedNotificationConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationStructure)
    ManagedNotificationEvent.add_member(:schema_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaVersion, location_name: 'schemaVersion', traits: {"smithy.api#required" => {}}))
    ManagedNotificationEvent.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationEventId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    ManagedNotificationEvent.add_member(:message_components, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageComponents, location_name: 'messageComponents', traits: {"smithy.api#required" => {}}))
    ManagedNotificationEvent.add_member(:source_event_detail_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'sourceEventDetailUrl'))
    ManagedNotificationEvent.add_member(:source_event_detail_url_display_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'sourceEventDetailUrlDisplayText'))
    ManagedNotificationEvent.add_member(:notification_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationType, location_name: 'notificationType', traits: {"smithy.api#required" => {}}))
    ManagedNotificationEvent.add_member(:event_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventStatus, location_name: 'eventStatus'))
    ManagedNotificationEvent.add_member(:aggregation_event_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationEventType, location_name: 'aggregationEventType'))
    ManagedNotificationEvent.add_member(:aggregation_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationSummary, location_name: 'aggregationSummary'))
    ManagedNotificationEvent.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#timestampFormat" => "date-time"}))
    ManagedNotificationEvent.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endTime', traits: {"smithy.api#timestampFormat" => "date-time"}))
    ManagedNotificationEvent.add_member(:text_parts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextParts, location_name: 'textParts', traits: {"smithy.api#required" => {}}))
    ManagedNotificationEvent.add_member(:organizational_unit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: 'organizationalUnitId'))
    ManagedNotificationEvent.type = Types::ManagedNotificationEvent
    ManagedNotificationEventOverview.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationEventArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ManagedNotificationEventOverview.add_member(:managed_notification_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationConfigurationOsArn, location_name: 'managedNotificationConfigurationArn', traits: {"smithy.api#required" => {}}))
    ManagedNotificationEventOverview.add_member(:related_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'relatedAccount', traits: {"smithy.api#required" => {}}))
    ManagedNotificationEventOverview.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#required" => {}}))
    ManagedNotificationEventOverview.add_member(:notification_event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationEventSummary, location_name: 'notificationEvent', traits: {"smithy.api#required" => {}}))
    ManagedNotificationEventOverview.add_member(:aggregation_event_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationEventType, location_name: 'aggregationEventType'))
    ManagedNotificationEventOverview.add_member(:organizational_unit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: 'organizationalUnitId'))
    ManagedNotificationEventOverview.add_member(:aggregation_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationSummary, location_name: 'aggregationSummary'))
    ManagedNotificationEventOverview.add_member(:aggregated_notification_regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregatedNotificationRegions, location_name: 'aggregatedNotificationRegions'))
    ManagedNotificationEventOverview.type = Types::ManagedNotificationEventOverview
    ManagedNotificationEventSummary.add_member(:schema_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaVersion, location_name: 'schemaVersion', traits: {"smithy.api#required" => {}}))
    ManagedNotificationEventSummary.add_member(:source_event_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedSourceEventMetadataSummary, location_name: 'sourceEventMetadata', traits: {"smithy.api#required" => {}}))
    ManagedNotificationEventSummary.add_member(:message_components, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageComponentsSummary, location_name: 'messageComponents', traits: {"smithy.api#required" => {}}))
    ManagedNotificationEventSummary.add_member(:event_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventStatus, location_name: 'eventStatus', traits: {"smithy.api#required" => {}}))
    ManagedNotificationEventSummary.add_member(:notification_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationType, location_name: 'notificationType', traits: {"smithy.api#required" => {}}))
    ManagedNotificationEventSummary.type = Types::ManagedNotificationEventSummary
    ManagedNotificationEvents.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedNotificationEventOverview)
    ManagedRuleArns.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedRuleArn)
    ManagedSourceEventMetadataSummary.add_member(:event_origin_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'eventOriginRegion', traits: {"smithy.api#length" => {"max" => 32}}))
    ManagedSourceEventMetadataSummary.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#required" => {}}))
    ManagedSourceEventMetadataSummary.add_member(:event_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventType, location_name: 'eventType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#required" => {}}))
    ManagedSourceEventMetadataSummary.type = Types::ManagedSourceEventMetadataSummary
    Media.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaElement)
    MediaElement.add_member(:media_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaId, location_name: 'mediaId', traits: {"smithy.api#required" => {}}))
    MediaElement.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaElementType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    MediaElement.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'url', traits: {"smithy.api#required" => {}}))
    MediaElement.add_member(:caption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextPartReference, location_name: 'caption', traits: {"smithy.api#required" => {}}))
    MediaElement.type = Types::MediaElement
    MemberAccount.add_member(:notification_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationArn, location_name: 'notificationConfigurationArn'))
    MemberAccount.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#required" => {}}))
    MemberAccount.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberAccountNotificationConfigurationStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    MemberAccount.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason', traits: {"smithy.api#required" => {}}))
    MemberAccount.add_member(:organizational_unit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: 'organizationalUnitId', traits: {"smithy.api#required" => {}}))
    MemberAccount.type = Types::MemberAccount
    MemberAccounts.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberAccount)
    MessageComponents.add_member(:headline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextPartReference, location_name: 'headline'))
    MessageComponents.add_member(:paragraph_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextPartReference, location_name: 'paragraphSummary'))
    MessageComponents.add_member(:complete_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextPartReference, location_name: 'completeDescription'))
    MessageComponents.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dimensions, location_name: 'dimensions'))
    MessageComponents.type = Types::MessageComponents
    MessageComponentsSummary.add_member(:headline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'headline', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#required" => {}}))
    MessageComponentsSummary.type = Types::MessageComponentsSummary
    NotificationConfigurationStructure.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    NotificationConfigurationStructure.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    NotificationConfigurationStructure.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationDescription, location_name: 'description', traits: {"smithy.api#required" => {}}))
    NotificationConfigurationStructure.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    NotificationConfigurationStructure.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#required" => {}}))
    NotificationConfigurationStructure.add_member(:aggregation_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationDuration, location_name: 'aggregationDuration'))
    NotificationConfigurationStructure.add_member(:subtype, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationSubtype, location_name: 'subtype'))
    NotificationConfigurationStructure.type = Types::NotificationConfigurationStructure
    NotificationConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationStructure)
    NotificationEventOverview.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationEventArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    NotificationEventOverview.add_member(:notification_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationArn, location_name: 'notificationConfigurationArn', traits: {"smithy.api#required" => {}}))
    NotificationEventOverview.add_member(:related_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'relatedAccount', traits: {"smithy.api#required" => {}}))
    NotificationEventOverview.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#required" => {}}))
    NotificationEventOverview.add_member(:notification_event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationEventSummary, location_name: 'notificationEvent', traits: {"smithy.api#required" => {}}))
    NotificationEventOverview.add_member(:aggregation_event_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationEventType, location_name: 'aggregationEventType'))
    NotificationEventOverview.add_member(:aggregate_notification_event_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationEventArn, location_name: 'aggregateNotificationEventArn'))
    NotificationEventOverview.add_member(:aggregation_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationSummary, location_name: 'aggregationSummary'))
    NotificationEventOverview.add_member(:organizational_unit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: 'organizationalUnitId'))
    NotificationEventOverview.type = Types::NotificationEventOverview
    NotificationEventSchema.add_member(:schema_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaVersion, location_name: 'schemaVersion', traits: {"smithy.api#required" => {}}))
    NotificationEventSchema.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationEventId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    NotificationEventSchema.add_member(:source_event_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceEventMetadata, location_name: 'sourceEventMetadata', traits: {"smithy.api#required" => {}}))
    NotificationEventSchema.add_member(:message_components, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageComponents, location_name: 'messageComponents', traits: {"smithy.api#required" => {}}))
    NotificationEventSchema.add_member(:source_event_detail_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'sourceEventDetailUrl'))
    NotificationEventSchema.add_member(:source_event_detail_url_display_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'sourceEventDetailUrlDisplayText'))
    NotificationEventSchema.add_member(:notification_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationType, location_name: 'notificationType', traits: {"smithy.api#required" => {}}))
    NotificationEventSchema.add_member(:event_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventStatus, location_name: 'eventStatus'))
    NotificationEventSchema.add_member(:aggregation_event_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationEventType, location_name: 'aggregationEventType'))
    NotificationEventSchema.add_member(:aggregate_notification_event_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationEventArn, location_name: 'aggregateNotificationEventArn'))
    NotificationEventSchema.add_member(:aggregation_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationSummary, location_name: 'aggregationSummary'))
    NotificationEventSchema.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#timestampFormat" => "date-time"}))
    NotificationEventSchema.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endTime', traits: {"smithy.api#timestampFormat" => "date-time"}))
    NotificationEventSchema.add_member(:text_parts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextParts, location_name: 'textParts', traits: {"smithy.api#required" => {}}))
    NotificationEventSchema.add_member(:media, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Media, location_name: 'media', traits: {"smithy.api#required" => {}}))
    NotificationEventSchema.add_member(:organizational_unit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: 'organizationalUnitId'))
    NotificationEventSchema.type = Types::NotificationEventSchema
    NotificationEventSummary.add_member(:schema_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaVersion, location_name: 'schemaVersion', traits: {"smithy.api#required" => {}}))
    NotificationEventSummary.add_member(:source_event_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceEventMetadataSummary, location_name: 'sourceEventMetadata', traits: {"smithy.api#required" => {}}))
    NotificationEventSummary.add_member(:message_components, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageComponentsSummary, location_name: 'messageComponents', traits: {"smithy.api#required" => {}}))
    NotificationEventSummary.add_member(:event_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventStatus, location_name: 'eventStatus', traits: {"smithy.api#required" => {}}))
    NotificationEventSummary.add_member(:notification_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationType, location_name: 'notificationType', traits: {"smithy.api#required" => {}}))
    NotificationEventSummary.type = Types::NotificationEventSummary
    NotificationEvents.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationEventOverview)
    NotificationHubOverview.add_member(:notification_hub_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'notificationHubRegion', traits: {"smithy.api#required" => {}}))
    NotificationHubOverview.add_member(:status_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationHubStatusSummary, location_name: 'statusSummary', traits: {"smithy.api#required" => {}}))
    NotificationHubOverview.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#required" => {}}))
    NotificationHubOverview.add_member(:last_activation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastActivationTime, location_name: 'lastActivationTime'))
    NotificationHubOverview.type = Types::NotificationHubOverview
    NotificationHubStatusSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationHubStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    NotificationHubStatusSummary.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationHubStatusReason, location_name: 'reason', traits: {"smithy.api#required" => {}}))
    NotificationHubStatusSummary.type = Types::NotificationHubStatusSummary
    NotificationHubs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationHubOverview)
    NotificationsAccessForOrganization.add_member(:access_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessStatus, location_name: 'accessStatus', traits: {"smithy.api#required" => {}}))
    NotificationsAccessForOrganization.type = Types::NotificationsAccessForOrganization
    OrganizationalUnits.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitId)
    Regions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region)
    RegisterNotificationHubRequest.add_member(:notification_hub_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'notificationHubRegion', traits: {"smithy.api#required" => {}}))
    RegisterNotificationHubRequest.type = Types::RegisterNotificationHubRequest
    RegisterNotificationHubResponse.add_member(:notification_hub_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'notificationHubRegion', traits: {"smithy.api#required" => {}}))
    RegisterNotificationHubResponse.add_member(:status_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationHubStatusSummary, location_name: 'statusSummary', traits: {"smithy.api#required" => {}}))
    RegisterNotificationHubResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#required" => {}}))
    RegisterNotificationHubResponse.add_member(:last_activation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastActivationTime, location_name: 'lastActivationTime'))
    RegisterNotificationHubResponse.type = Types::RegisterNotificationHubResponse
    Resource.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'id'))
    Resource.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    Resource.add_member(:detail_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'detailUrl'))
    Resource.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    Resource.type = Types::Resource
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    Resources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resource)
    SampleAggregationDimensionValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId'))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'serviceCode'))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: 'quotaCode'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SourceEventMetadata.add_member(:event_type_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'eventTypeVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 3}, "smithy.api#pattern" => "^[0-9.]+$", "smithy.api#required" => {}}))
    SourceEventMetadata.add_member(:source_event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'sourceEventId', traits: {"smithy.api#required" => {}}))
    SourceEventMetadata.add_member(:event_origin_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'eventOriginRegion', traits: {"smithy.api#length" => {"max" => 32}}))
    SourceEventMetadata.add_member(:related_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'relatedAccount', traits: {"smithy.api#pattern" => "^[0-9]{12}$", "smithy.api#required" => {}}))
    SourceEventMetadata.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#required" => {}}))
    SourceEventMetadata.add_member(:event_occurrence_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'eventOccurrenceTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    SourceEventMetadata.add_member(:event_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'eventType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#required" => {}}))
    SourceEventMetadata.add_member(:related_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resources, location_name: 'relatedResources', traits: {"smithy.api#required" => {}}))
    SourceEventMetadata.type = Types::SourceEventMetadata
    SourceEventMetadataSummary.add_member(:event_origin_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'eventOriginRegion', traits: {"smithy.api#length" => {"max" => 32}}))
    SourceEventMetadataSummary.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'source', traits: {"smithy.api#required" => {}}))
    SourceEventMetadataSummary.add_member(:event_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'eventType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#required" => {}}))
    SourceEventMetadataSummary.type = Types::SourceEventMetadataSummary
    StatusSummaryByRegion.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region)
    StatusSummaryByRegion.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventRuleStatusSummary)
    SummarizationDimensionDetail.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    SummarizationDimensionDetail.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'value', traits: {"smithy.api#required" => {}}))
    SummarizationDimensionDetail.type = Types::SummarizationDimensionDetail
    SummarizationDimensionDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SummarizationDimensionDetail)
    SummarizationDimensionOverview.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    SummarizationDimensionOverview.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'count', traits: {"smithy.api#required" => {}}))
    SummarizationDimensionOverview.add_member(:sample_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SampleAggregationDimensionValues, location_name: 'sampleValues'))
    SummarizationDimensionOverview.type = Types::SummarizationDimensionOverview
    SummarizationDimensionOverviews.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SummarizationDimensionOverview)
    TagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationArn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    TextByLocale.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocaleCode)
    TextByLocale.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    TextPartValue.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextPartType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    TextPartValue.add_member(:display_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'displayText', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}}))
    TextPartValue.add_member(:text_by_locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextByLocale, location_name: 'textByLocale'))
    TextPartValue.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'url'))
    TextPartValue.type = Types::TextPartValue
    TextParts.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextPartId)
    TextParts.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextPartValue)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'serviceCode'))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: 'quotaCode'))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationArn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'tagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateEventRuleRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventRuleArn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEventRuleRequest.add_member(:event_pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventRuleEventPattern, location_name: 'eventPattern'))
    UpdateEventRuleRequest.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Regions, location_name: 'regions'))
    UpdateEventRuleRequest.type = Types::UpdateEventRuleRequest
    UpdateEventRuleResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventRuleArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    UpdateEventRuleResponse.add_member(:notification_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationArn, location_name: 'notificationConfigurationArn', traits: {"smithy.api#required" => {}}))
    UpdateEventRuleResponse.add_member(:status_summary_by_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusSummaryByRegion, location_name: 'statusSummaryByRegion', traits: {"smithy.api#required" => {}}))
    UpdateEventRuleResponse.type = Types::UpdateEventRuleResponse
    UpdateNotificationConfigurationRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationArn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateNotificationConfigurationRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationName, location_name: 'name'))
    UpdateNotificationConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationDescription, location_name: 'description'))
    UpdateNotificationConfigurationRequest.add_member(:aggregation_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationDuration, location_name: 'aggregationDuration'))
    UpdateNotificationConfigurationRequest.type = Types::UpdateNotificationConfigurationRequest
    UpdateNotificationConfigurationResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfigurationArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    UpdateNotificationConfigurationResponse.type = Types::UpdateNotificationConfigurationResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason'))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList'))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)

    Notifications = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.notifications#Notifications"
      service.name = "Notifications"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "Notifications", "arnNamespace" => "notifications", "endpointPrefix" => "notifications", "cloudTrailEventSource" => "notifications.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "notifications"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"], "maxAge" => 86400}, "smithy.api#title" => "AWS User Notifications"}
      service.add_operation(:associate_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#AssociateChannel"
        operation.name = "AssociateChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to associate a new Channel with a particular NotificationConfiguration"}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/channels/associate/{arn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_managed_notification_account_contact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#AssociateManagedNotificationAccountContact"
        operation.name = "AssociateManagedNotificationAccountContact"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateManagedNotificationAccountContactRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateManagedNotificationAccountContactResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to associate an Account contact\n    to a particular Managed Notification Configuration"}, "smithy.api#http" => {"code" => 201, "method" => "PUT", "uri" => "/contacts/associate-managed-notification/{contactIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_managed_notification_additional_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#AssociateManagedNotificationAdditionalChannel"
        operation.name = "AssociateManagedNotificationAdditionalChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateManagedNotificationAdditionalChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateManagedNotificationAdditionalChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to associate a Channel\n    to a particular Managed Notification Configuration"}, "smithy.api#http" => {"code" => 201, "method" => "PUT", "uri" => "/channels/associate-managed-notification/{channelArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_organizational_unit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#AssociateOrganizationalUnit"
        operation.name = "AssociateOrganizationalUnit"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateOrganizationalUnitRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateOrganizationalUnitResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to associate an Organizational Unit with a particular NotificationConfiguration"}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/organizational-units/associate/{organizationalUnitId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_event_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#CreateEventRule"
        operation.name = "CreateEventRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEventRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEventRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to create a new EventRule, associating it with a NotificationConfiguration"}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/event-rules"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_notification_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#CreateNotificationConfiguration"
        operation.name = "CreateNotificationConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNotificationConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNotificationConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to create a NotificationConfiguration"}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/notification-configurations"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_event_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#DeleteEventRule"
        operation.name = "DeleteEventRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to delete an EventRule"}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/event-rules/{arn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_notification_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#DeleteNotificationConfiguration"
        operation.name = "DeleteNotificationConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNotificationConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNotificationConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to delete a NotificationConfiguration"}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/notification-configurations/{arn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:deregister_notification_hub, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#DeregisterNotificationHub"
        operation.name = "DeregisterNotificationHub"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterNotificationHubRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterNotificationHubResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to deregister a NotificationHub"}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/notification-hubs/{notificationHubRegion}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disable_notifications_access_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#DisableNotificationsAccessForOrganization"
        operation.name = "DisableNotificationsAccessForOrganization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableNotificationsAccessForOrganizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableNotificationsAccessForOrganizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to disable Service Trust for AWS User Notifications", "requiredActions" => ["organizations:DisableAWSServiceAccess"]}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/organization/access"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#DisassociateChannel"
        operation.name = "DisassociateChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to remove a Channel from a NotificationConfiguration"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/channels/disassociate/{arn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_managed_notification_account_contact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#DisassociateManagedNotificationAccountContact"
        operation.name = "DisassociateManagedNotificationAccountContact"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateManagedNotificationAccountContactRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateManagedNotificationAccountContactResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to remove an Account contact from a Managed Notification Configuration"}, "smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/contacts/disassociate-managed-notification/{contactIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_managed_notification_additional_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#DisassociateManagedNotificationAdditionalChannel"
        operation.name = "DisassociateManagedNotificationAdditionalChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateManagedNotificationAdditionalChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateManagedNotificationAdditionalChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to remove a Channel from a Managed Notification Configuration"}, "smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/channels/disassociate-managed-notification/{channelArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_organizational_unit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#DisassociateOrganizationalUnit"
        operation.name = "DisassociateOrganizationalUnit"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateOrganizationalUnitRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateOrganizationalUnitResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to remove an Organizational Unit from a NotificationConfiguration"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/organizational-units/disassociate/{organizationalUnitId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:enable_notifications_access_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#EnableNotificationsAccessForOrganization"
        operation.name = "EnableNotificationsAccessForOrganization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableNotificationsAccessForOrganizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableNotificationsAccessForOrganizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to enable Service Trust for AWS User Notifications", "requiredActions" => ["organizations:EnableAWSServiceAccess", "iam:CreateServiceLinkedRole"]}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/organization/access"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_event_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#GetEventRule"
        operation.name = "GetEventRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEventRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEventRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get an EventRule"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/event-rules/{arn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_managed_notification_child_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#GetManagedNotificationChildEvent"
        operation.name = "GetManagedNotificationChildEvent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetManagedNotificationChildEventRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetManagedNotificationChildEventResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get a Managed Notification Child Event"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/managed-notification-child-events/{arn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_managed_notification_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#GetManagedNotificationConfiguration"
        operation.name = "GetManagedNotificationConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetManagedNotificationConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetManagedNotificationConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get a Managed Notification Configuration"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/managed-notification-configurations/{arn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_managed_notification_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#GetManagedNotificationEvent"
        operation.name = "GetManagedNotificationEvent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetManagedNotificationEventRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetManagedNotificationEventResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get a Managed NotificationEvent"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/managed-notification-events/{arn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_notification_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#GetNotificationConfiguration"
        operation.name = "GetNotificationConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetNotificationConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetNotificationConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get a NotificationConfiguration"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/notification-configurations/{arn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_notification_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#GetNotificationEvent"
        operation.name = "GetNotificationEvent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetNotificationEventRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetNotificationEventResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get a NotificationEvent"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/notification-events/{arn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_notifications_access_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#GetNotificationsAccessForOrganization"
        operation.name = "GetNotificationsAccessForOrganization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetNotificationsAccessForOrganizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetNotificationsAccessForOrganizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to read Service Trust for AWS User Notifications"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/organization/access"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_channels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#ListChannels"
        operation.name = "ListChannels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to list Channels by NotificationConfiguration"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/channels"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListChannels.new
      end)
      service.add_operation(:list_event_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#ListEventRules"
        operation.name = "ListEventRules"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventRulesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventRulesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to list EventRules"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/event-rules"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEventRules.new
      end)
      service.add_operation(:list_managed_notification_channel_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#ListManagedNotificationChannelAssociations"
        operation.name = "ListManagedNotificationChannelAssociations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagedNotificationChannelAssociationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagedNotificationChannelAssociationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to list Account contacts and Channels associated with a Managed Notification Configuration"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/channels/list-managed-notification-channel-associations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListManagedNotificationChannelAssociations.new
      end)
      service.add_operation(:list_managed_notification_child_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#ListManagedNotificationChildEvents"
        operation.name = "ListManagedNotificationChildEvents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagedNotificationChildEventsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagedNotificationChildEventsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to list Managed Notification Child Events"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/list-managed-notification-child-events/{aggregateManagedNotificationEventArn}"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListManagedNotificationChildEvents.new
      end)
      service.add_operation(:list_managed_notification_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#ListManagedNotificationConfigurations"
        operation.name = "ListManagedNotificationConfigurations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagedNotificationConfigurationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagedNotificationConfigurationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to list Managed Notification Configurations"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/managed-notification-configurations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListManagedNotificationConfigurations.new
      end)
      service.add_operation(:list_managed_notification_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#ListManagedNotificationEvents"
        operation.name = "ListManagedNotificationEvents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagedNotificationEventsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagedNotificationEventsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to list Managed Notification Events"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/managed-notification-events"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListManagedNotificationEventsSuccess", "params" => {"maxResults" => 3}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListManagedNotificationEvents.new
      end)
      service.add_operation(:list_member_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#ListMemberAccounts"
        operation.name = "ListMemberAccounts"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMemberAccountsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMemberAccountsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to list MemberAccounts by AdminNotificationConfiguration"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/list-member-accounts"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMemberAccounts.new
      end)
      service.add_operation(:list_notification_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#ListNotificationConfigurations"
        operation.name = "ListNotificationConfigurations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotificationConfigurationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotificationConfigurationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to list NotificationConfigurations"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/notification-configurations"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListNotificationConfigurationsSuccess", "params" => {"status" => "ACTIVE", "maxResults" => 3}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListNotificationConfigurations.new
      end)
      service.add_operation(:list_notification_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#ListNotificationEvents"
        operation.name = "ListNotificationEvents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotificationEventsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotificationEventsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to list NotificationEvents"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/notification-events"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListNotificationEventsSuccess", "params" => {"includeChildEvents" => true, "maxResults" => 3}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListNotificationEvents.new
      end)
      service.add_operation(:list_notification_hubs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#ListNotificationHubs"
        operation.name = "ListNotificationHubs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotificationHubsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotificationHubsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to list NotificationHubs"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/notification-hubs"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListNotificationHubsSuccess", "params" => {"maxResults" => 3}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListNotificationHubs.new
      end)
      service.add_operation(:list_organizational_units, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#ListOrganizationalUnits"
        operation.name = "ListOrganizationalUnits"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOrganizationalUnitsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOrganizationalUnitsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to list Organizational Units by NotificationConfiguration"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/organizational-units"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListOrganizationalUnits.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get tags for a resource"}, "smithy.api#http" => {"method" => "GET", "uri" => "/tags/{arn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:register_notification_hub, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#RegisterNotificationHub"
        operation.name = "RegisterNotificationHub"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterNotificationHubRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterNotificationHubResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to register a NotificationHub"}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/notification-hubs"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to tag a resource"}, "smithy.api#http" => {"method" => "POST", "uri" => "/tags/{arn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to remove tags from a resource"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{arn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_event_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#UpdateEventRule"
        operation.name = "UpdateEventRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEventRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEventRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to update an EventRule"}, "smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/event-rules/{arn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_notification_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notifications#UpdateNotificationConfiguration"
        operation.name = "UpdateNotificationConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNotificationConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNotificationConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to update a NotificationConfiguration"}, "smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/notification-configurations/{arn}"}, "smithy.api#idempotent" => {}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
