# frozen_string_literal: true

# This is generated code!

module Aws::Chatbot
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountPreferences = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#AccountPreferences', name: 'AccountPreferences')
    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws:(wheatley|chatbot):[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"})
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 12, "max" => 1224}, "smithy.api#pattern" => "^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"})
    AssociateToConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#AssociateToConfigurationRequest', name: 'AssociateToConfigurationRequest')
    AssociateToConfigurationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#AssociateToConfigurationResult', name: 'AssociateToConfigurationResult')
    AssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chatbot#AssociationList', name: 'AssociationList')
    AssociationListing = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#AssociationListing', name: 'AssociationListing')
    AwsUserIdentity = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#AwsUserIdentity', name: 'AwsUserIdentity', traits: {"smithy.api#length" => {"min" => 15, "max" => 1101}, "smithy.api#pattern" => "^arn:aws:(iam|sts)::[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"})
    BooleanAccountPreference = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.chatbot#BooleanAccountPreference', name: 'BooleanAccountPreference')
    ChatConfigurationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#ChatConfigurationArn', name: 'ChatConfigurationArn', traits: {"smithy.api#length" => {"min" => 19, "max" => 1169}, "smithy.api#pattern" => "^arn:aws:(wheatley|chatbot):[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"})
    ChimeWebhookConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#ChimeWebhookConfiguration', name: 'ChimeWebhookConfiguration')
    ChimeWebhookConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chatbot#ChimeWebhookConfigurationList', name: 'ChimeWebhookConfigurationList')
    ChimeWebhookDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#ChimeWebhookDescription', name: 'ChimeWebhookDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#sensitive" => {}})
    ChimeWebhookUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#ChimeWebhookUrl', name: 'ChimeWebhookUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^https://hooks\\.chime\\.aws/incomingwebhooks/[A-Za-z0-9\\-]+?\\?token=[A-Za-z0-9\\-]+$", "smithy.api#sensitive" => {}})
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 33, "max" => 126}, "smithy.api#pattern" => "^[\\x21-\\x7F]+$"})
    ConfigurationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#ConfigurationName', name: 'ConfigurationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9-_]+$"})
    ConfiguredTeam = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#ConfiguredTeam', name: 'ConfiguredTeam')
    ConfiguredTeamsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chatbot#ConfiguredTeamsList', name: 'ConfiguredTeamsList')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateChimeWebhookConfigurationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#CreateChimeWebhookConfigurationException', name: 'CreateChimeWebhookConfigurationException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    CreateChimeWebhookConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#CreateChimeWebhookConfigurationRequest', name: 'CreateChimeWebhookConfigurationRequest')
    CreateChimeWebhookConfigurationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#CreateChimeWebhookConfigurationResult', name: 'CreateChimeWebhookConfigurationResult')
    CreateCustomActionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#CreateCustomActionRequest', name: 'CreateCustomActionRequest')
    CreateCustomActionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#CreateCustomActionResult', name: 'CreateCustomActionResult')
    CreateSlackChannelConfigurationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#CreateSlackChannelConfigurationException', name: 'CreateSlackChannelConfigurationException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    CreateSlackChannelConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#CreateSlackChannelConfigurationRequest', name: 'CreateSlackChannelConfigurationRequest')
    CreateSlackChannelConfigurationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#CreateSlackChannelConfigurationResult', name: 'CreateSlackChannelConfigurationResult')
    CreateTeamsChannelConfigurationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#CreateTeamsChannelConfigurationException', name: 'CreateTeamsChannelConfigurationException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    CreateTeamsChannelConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#CreateTeamsChannelConfigurationRequest', name: 'CreateTeamsChannelConfigurationRequest')
    CreateTeamsChannelConfigurationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#CreateTeamsChannelConfigurationResult', name: 'CreateTeamsChannelConfigurationResult')
    CustomAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#CustomAction', name: 'CustomAction')
    CustomActionAliasName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#CustomActionAliasName', name: 'CustomActionAliasName', traits: {"smithy.api#length" => {"min" => 1, "max" => 30}, "smithy.api#pattern" => "^[A-Za-z0-9-_]+$"})
    CustomActionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#CustomActionArn', name: 'CustomActionArn', traits: {"aws.api#arnReference" => {"type" => "AWS::Chatbot::CustomAction", "service" => "com.amazonaws.chatbot#WheatleyOrchestration_20171011", "resource" => "com.amazonaws.chatbot#CustomActionResource"}, "smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws:chatbot:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:custom-action/[a-zA-Z0-9_-]{1,64}$"})
    CustomActionArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chatbot#CustomActionArnList', name: 'CustomActionArnList')
    CustomActionAttachment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#CustomActionAttachment', name: 'CustomActionAttachment')
    CustomActionAttachmentCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#CustomActionAttachmentCriteria', name: 'CustomActionAttachmentCriteria')
    CustomActionAttachmentCriteriaList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chatbot#CustomActionAttachmentCriteriaList', name: 'CustomActionAttachmentCriteriaList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    CustomActionAttachmentCriteriaOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chatbot#CustomActionAttachmentCriteriaOperator', name: 'CustomActionAttachmentCriteriaOperator')
    CustomActionAttachmentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chatbot#CustomActionAttachmentList', name: 'CustomActionAttachmentList')
    CustomActionAttachmentNotificationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#CustomActionAttachmentNotificationType', name: 'CustomActionAttachmentNotificationType', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    CustomActionAttachmentVariables = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.chatbot#CustomActionAttachmentVariables', name: 'CustomActionAttachmentVariables', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    CustomActionButtonText = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#CustomActionButtonText', name: 'CustomActionButtonText', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[\\S\\s]+$"})
    CustomActionDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#CustomActionDefinition', name: 'CustomActionDefinition')
    CustomActionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#CustomActionName', name: 'CustomActionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]{1,64}$"})
    CustomerCwLogLevel = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#CustomerCwLogLevel', name: 'CustomerCwLogLevel', traits: {"smithy.api#length" => {"min" => 4, "max" => 5}, "smithy.api#pattern" => "^(ERROR|INFO|NONE)$"})
    DeleteChimeWebhookConfigurationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DeleteChimeWebhookConfigurationException', name: 'DeleteChimeWebhookConfigurationException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    DeleteChimeWebhookConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DeleteChimeWebhookConfigurationRequest', name: 'DeleteChimeWebhookConfigurationRequest')
    DeleteChimeWebhookConfigurationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DeleteChimeWebhookConfigurationResult', name: 'DeleteChimeWebhookConfigurationResult')
    DeleteCustomActionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DeleteCustomActionRequest', name: 'DeleteCustomActionRequest')
    DeleteCustomActionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DeleteCustomActionResult', name: 'DeleteCustomActionResult')
    DeleteMicrosoftTeamsUserIdentityException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DeleteMicrosoftTeamsUserIdentityException', name: 'DeleteMicrosoftTeamsUserIdentityException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    DeleteMicrosoftTeamsUserIdentityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DeleteMicrosoftTeamsUserIdentityRequest', name: 'DeleteMicrosoftTeamsUserIdentityRequest')
    DeleteMicrosoftTeamsUserIdentityResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DeleteMicrosoftTeamsUserIdentityResult', name: 'DeleteMicrosoftTeamsUserIdentityResult')
    DeleteSlackChannelConfigurationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DeleteSlackChannelConfigurationException', name: 'DeleteSlackChannelConfigurationException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    DeleteSlackChannelConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DeleteSlackChannelConfigurationRequest', name: 'DeleteSlackChannelConfigurationRequest')
    DeleteSlackChannelConfigurationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DeleteSlackChannelConfigurationResult', name: 'DeleteSlackChannelConfigurationResult')
    DeleteSlackUserIdentityException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DeleteSlackUserIdentityException', name: 'DeleteSlackUserIdentityException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    DeleteSlackUserIdentityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DeleteSlackUserIdentityRequest', name: 'DeleteSlackUserIdentityRequest')
    DeleteSlackUserIdentityResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DeleteSlackUserIdentityResult', name: 'DeleteSlackUserIdentityResult')
    DeleteSlackWorkspaceAuthorizationFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DeleteSlackWorkspaceAuthorizationFault', name: 'DeleteSlackWorkspaceAuthorizationFault', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    DeleteSlackWorkspaceAuthorizationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DeleteSlackWorkspaceAuthorizationRequest', name: 'DeleteSlackWorkspaceAuthorizationRequest')
    DeleteSlackWorkspaceAuthorizationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DeleteSlackWorkspaceAuthorizationResult', name: 'DeleteSlackWorkspaceAuthorizationResult')
    DeleteTeamsChannelConfigurationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DeleteTeamsChannelConfigurationException', name: 'DeleteTeamsChannelConfigurationException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    DeleteTeamsChannelConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DeleteTeamsChannelConfigurationRequest', name: 'DeleteTeamsChannelConfigurationRequest')
    DeleteTeamsChannelConfigurationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DeleteTeamsChannelConfigurationResult', name: 'DeleteTeamsChannelConfigurationResult')
    DeleteTeamsConfiguredTeamException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DeleteTeamsConfiguredTeamException', name: 'DeleteTeamsConfiguredTeamException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    DeleteTeamsConfiguredTeamRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DeleteTeamsConfiguredTeamRequest', name: 'DeleteTeamsConfiguredTeamRequest')
    DeleteTeamsConfiguredTeamResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DeleteTeamsConfiguredTeamResult', name: 'DeleteTeamsConfiguredTeamResult')
    DescribeChimeWebhookConfigurationsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DescribeChimeWebhookConfigurationsException', name: 'DescribeChimeWebhookConfigurationsException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    DescribeChimeWebhookConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DescribeChimeWebhookConfigurationsRequest', name: 'DescribeChimeWebhookConfigurationsRequest')
    DescribeChimeWebhookConfigurationsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DescribeChimeWebhookConfigurationsResult', name: 'DescribeChimeWebhookConfigurationsResult')
    DescribeSlackChannelConfigurationsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DescribeSlackChannelConfigurationsException', name: 'DescribeSlackChannelConfigurationsException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    DescribeSlackChannelConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DescribeSlackChannelConfigurationsRequest', name: 'DescribeSlackChannelConfigurationsRequest')
    DescribeSlackChannelConfigurationsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DescribeSlackChannelConfigurationsResult', name: 'DescribeSlackChannelConfigurationsResult')
    DescribeSlackUserIdentitiesException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DescribeSlackUserIdentitiesException', name: 'DescribeSlackUserIdentitiesException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    DescribeSlackUserIdentitiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DescribeSlackUserIdentitiesRequest', name: 'DescribeSlackUserIdentitiesRequest')
    DescribeSlackUserIdentitiesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DescribeSlackUserIdentitiesResult', name: 'DescribeSlackUserIdentitiesResult')
    DescribeSlackWorkspacesException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DescribeSlackWorkspacesException', name: 'DescribeSlackWorkspacesException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    DescribeSlackWorkspacesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DescribeSlackWorkspacesRequest', name: 'DescribeSlackWorkspacesRequest')
    DescribeSlackWorkspacesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DescribeSlackWorkspacesResult', name: 'DescribeSlackWorkspacesResult')
    DisassociateFromConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DisassociateFromConfigurationRequest', name: 'DisassociateFromConfigurationRequest')
    DisassociateFromConfigurationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#DisassociateFromConfigurationResult', name: 'DisassociateFromConfigurationResult')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#ErrorMessage', name: 'ErrorMessage')
    GetAccountPreferencesException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#GetAccountPreferencesException', name: 'GetAccountPreferencesException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    GetAccountPreferencesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#GetAccountPreferencesRequest', name: 'GetAccountPreferencesRequest')
    GetAccountPreferencesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#GetAccountPreferencesResult', name: 'GetAccountPreferencesResult')
    GetCustomActionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#GetCustomActionRequest', name: 'GetCustomActionRequest')
    GetCustomActionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#GetCustomActionResult', name: 'GetCustomActionResult')
    GetTeamsChannelConfigurationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#GetTeamsChannelConfigurationException', name: 'GetTeamsChannelConfigurationException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    GetTeamsChannelConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#GetTeamsChannelConfigurationRequest', name: 'GetTeamsChannelConfigurationRequest')
    GetTeamsChannelConfigurationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#GetTeamsChannelConfigurationResult', name: 'GetTeamsChannelConfigurationResult')
    GuardrailPolicyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#GuardrailPolicyArn', name: 'GuardrailPolicyArn', traits: {"smithy.api#length" => {"min" => 11, "max" => 1163}, "smithy.api#pattern" => "^(^$|(?!.*\\/aws-service-role\\/.*)arn:aws:iam:[A-Za-z0-9_\\/.-]{0,63}:[A-Za-z0-9_\\/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_\\/+=,@.-]{0,1023})$"})
    GuardrailPolicyArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chatbot#GuardrailPolicyArnList', name: 'GuardrailPolicyArnList')
    InternalServiceError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#InternalServiceError', name: 'InternalServiceError', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidParameterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ListAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#ListAssociationsRequest', name: 'ListAssociationsRequest')
    ListAssociationsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#ListAssociationsResult', name: 'ListAssociationsResult')
    ListCustomActionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#ListCustomActionsRequest', name: 'ListCustomActionsRequest')
    ListCustomActionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#ListCustomActionsResult', name: 'ListCustomActionsResult')
    ListMicrosoftTeamsConfiguredTeamsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#ListMicrosoftTeamsConfiguredTeamsException', name: 'ListMicrosoftTeamsConfiguredTeamsException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListMicrosoftTeamsConfiguredTeamsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#ListMicrosoftTeamsConfiguredTeamsRequest', name: 'ListMicrosoftTeamsConfiguredTeamsRequest')
    ListMicrosoftTeamsConfiguredTeamsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#ListMicrosoftTeamsConfiguredTeamsResult', name: 'ListMicrosoftTeamsConfiguredTeamsResult')
    ListMicrosoftTeamsUserIdentitiesException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#ListMicrosoftTeamsUserIdentitiesException', name: 'ListMicrosoftTeamsUserIdentitiesException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListMicrosoftTeamsUserIdentitiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#ListMicrosoftTeamsUserIdentitiesRequest', name: 'ListMicrosoftTeamsUserIdentitiesRequest')
    ListMicrosoftTeamsUserIdentitiesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#ListMicrosoftTeamsUserIdentitiesResult', name: 'ListMicrosoftTeamsUserIdentitiesResult')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTeamsChannelConfigurationsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#ListTeamsChannelConfigurationsException', name: 'ListTeamsChannelConfigurationsException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListTeamsChannelConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#ListTeamsChannelConfigurationsRequest', name: 'ListTeamsChannelConfigurationsRequest')
    ListTeamsChannelConfigurationsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#ListTeamsChannelConfigurationsResult', name: 'ListTeamsChannelConfigurationsResult')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chatbot#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1276}, "smithy.api#pattern" => "^[a-zA-Z0-9=\\/+_.\\-,#:\\\\\"{}]{4,1276}$"})
    ResourceIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#ResourceIdentifier', name: 'ResourceIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws:chatbot:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:custom-action/[a-zA-Z0-9_-]{1,64}$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#ResourceState', name: 'ResourceState', traits: {"smithy.api#pattern" => "^(ENABLED|DISABLED)$"})
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    SlackChannelConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#SlackChannelConfiguration', name: 'SlackChannelConfiguration')
    SlackChannelConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chatbot#SlackChannelConfigurationList', name: 'SlackChannelConfigurationList')
    SlackChannelDisplayName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#SlackChannelDisplayName', name: 'SlackChannelDisplayName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#sensitive" => {}})
    SlackChannelId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#SlackChannelId', name: 'SlackChannelId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z0-9]+$"})
    SlackTeamId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#SlackTeamId', name: 'SlackTeamId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[0-9A-Z]{1,255}$"})
    SlackTeamName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#SlackTeamName', name: 'SlackTeamName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    SlackUserId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#SlackUserId', name: 'SlackUserId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.*)$"})
    SlackUserIdentitiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chatbot#SlackUserIdentitiesList', name: 'SlackUserIdentitiesList')
    SlackUserIdentity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#SlackUserIdentity', name: 'SlackUserIdentity')
    SlackWorkspace = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#SlackWorkspace', name: 'SlackWorkspace')
    SlackWorkspacesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chatbot#SlackWorkspacesList', name: 'SlackWorkspacesList')
    SnsTopicArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chatbot#SnsTopicArnList', name: 'SnsTopicArnList')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#String', name: 'String')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chatbot#TagKeyList', name: 'TagKeyList', traits: {"aws.api#data" => "tagging", "smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chatbot#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chatbot#Tags', name: 'Tags')
    TeamChannelConfigurationsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chatbot#TeamChannelConfigurationsList', name: 'TeamChannelConfigurationsList')
    TeamName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#TeamName', name: 'TeamName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.*)$", "smithy.api#sensitive" => {}})
    TeamsChannelConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#TeamsChannelConfiguration', name: 'TeamsChannelConfiguration')
    TeamsChannelId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#TeamsChannelId', name: 'TeamsChannelId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^([a-zA-Z0-9-_=+\\/.,])*%3[aA]([a-zA-Z0-9-_=+\\/.,])*%40([a-zA-Z0-9-_=+\\/.,])*$"})
    TeamsChannelName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#TeamsChannelName', name: 'TeamsChannelName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^(.*)$", "smithy.api#sensitive" => {}})
    TeamsUserIdentitiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chatbot#TeamsUserIdentitiesList', name: 'TeamsUserIdentitiesList')
    TeamsUserIdentity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#TeamsUserIdentity', name: 'TeamsUserIdentity')
    TooManyTagsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UUID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chatbot#UUID', name: 'UUID', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$"})
    UnauthorizedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#UnauthorizedException', name: 'UnauthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateAccountPreferencesException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#UpdateAccountPreferencesException', name: 'UpdateAccountPreferencesException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    UpdateAccountPreferencesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#UpdateAccountPreferencesRequest', name: 'UpdateAccountPreferencesRequest')
    UpdateAccountPreferencesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#UpdateAccountPreferencesResult', name: 'UpdateAccountPreferencesResult')
    UpdateChimeWebhookConfigurationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#UpdateChimeWebhookConfigurationException', name: 'UpdateChimeWebhookConfigurationException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    UpdateChimeWebhookConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#UpdateChimeWebhookConfigurationRequest', name: 'UpdateChimeWebhookConfigurationRequest')
    UpdateChimeWebhookConfigurationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#UpdateChimeWebhookConfigurationResult', name: 'UpdateChimeWebhookConfigurationResult')
    UpdateCustomActionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#UpdateCustomActionRequest', name: 'UpdateCustomActionRequest')
    UpdateCustomActionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#UpdateCustomActionResult', name: 'UpdateCustomActionResult')
    UpdateSlackChannelConfigurationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#UpdateSlackChannelConfigurationException', name: 'UpdateSlackChannelConfigurationException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    UpdateSlackChannelConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#UpdateSlackChannelConfigurationRequest', name: 'UpdateSlackChannelConfigurationRequest')
    UpdateSlackChannelConfigurationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#UpdateSlackChannelConfigurationResult', name: 'UpdateSlackChannelConfigurationResult')
    UpdateTeamsChannelConfigurationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#UpdateTeamsChannelConfigurationException', name: 'UpdateTeamsChannelConfigurationException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    UpdateTeamsChannelConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#UpdateTeamsChannelConfigurationRequest', name: 'UpdateTeamsChannelConfigurationRequest')
    UpdateTeamsChannelConfigurationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chatbot#UpdateTeamsChannelConfigurationResult', name: 'UpdateTeamsChannelConfigurationResult')

    AccountPreferences.add_member(:user_authorization_required, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanAccountPreference, location_name: 'UserAuthorizationRequired', traits: {"smithy.api#documentation" => "<p>Enables use of a user role requirement in your chat configuration.</p>"}))
    AccountPreferences.add_member(:training_data_collection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanAccountPreference, location_name: 'TrainingDataCollectionEnabled', traits: {"smithy.api#documentation" => "<p>Turns on training data collection.</p>\n         <p>This helps improve the AWS Chatbot experience by allowing AWS Chatbot to store and use your customer information, such as AWS Chatbot configurations, notifications, user inputs, AWS Chatbot generated responses, and interaction data. This data helps us to continuously improve and develop Artificial Intelligence (AI) technologies. Your data is not shared with any third parties and is protected using sophisticated controls to prevent unauthorized access and misuse. AWS Chatbot does not store or use interactions in chat channels with Amazon Q for training AI technologies for AWS Chatbot.\n  </p>"}))
    AccountPreferences.type = Types::AccountPreferences
    AssociateToConfigurationRequest.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'Resource', traits: {"smithy.api#documentation" => "<p>The resource Amazon Resource Name (ARN) to link.</p>", "smithy.api#required" => {}}))
    AssociateToConfigurationRequest.add_member(:chat_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatConfigurationArn, location_name: 'ChatConfiguration', traits: {"smithy.api#documentation" => "<p>The channel configuration to associate with the resource.</p>", "smithy.api#required" => {}}))
    AssociateToConfigurationRequest.type = Types::AssociateToConfigurationRequest
    AssociateToConfigurationResult.type = Types::AssociateToConfigurationResult
    AssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationListing)
    AssociationListing.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Resource', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource (for example, a custom action).</p>", "smithy.api#required" => {}}))
    AssociationListing.type = Types::AssociationListing
    ChimeWebhookConfiguration.add_member(:webhook_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeWebhookDescription, location_name: 'WebhookDescription', traits: {"smithy.api#documentation" => "<p>A description of the webhook. We recommend using the convention <code>RoomName/WebhookName</code>.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/chatbot/latest/adminguide/chime-setup.html\">Tutorial: Get started with Amazon Chime</a> in the <i> AWS Chatbot Administrator Guide</i>.\n </p>", "smithy.api#required" => {}}))
    ChimeWebhookConfiguration.add_member(:chat_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatConfigurationArn, location_name: 'ChatConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the ChimeWebhookConfiguration.</p>", "smithy.api#required" => {}}))
    ChimeWebhookConfiguration.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>A user-defined role that AWS Chatbot assumes. This is not the service-linked role.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html\">IAM policies for AWS Chatbot</a> in the <i> AWS Chatbot Administrator Guide</i>.\n  </p>", "smithy.api#required" => {}}))
    ChimeWebhookConfiguration.add_member(:sns_topic_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsTopicArnList, location_name: 'SnsTopicArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) of the SNS topics that deliver notifications to AWS Chatbot.</p>", "smithy.api#required" => {}}))
    ChimeWebhookConfiguration.add_member(:configuration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationName, location_name: 'ConfigurationName', traits: {"smithy.api#documentation" => "<p>The name of the configuration.</p>"}))
    ChimeWebhookConfiguration.add_member(:logging_level, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerCwLogLevel, location_name: 'LoggingLevel', traits: {"smithy.api#documentation" => "<p>Logging levels include <code>ERROR</code>, <code>INFO</code>, or <code>NONE</code>.</p>"}))
    ChimeWebhookConfiguration.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A map of tags assigned to a resource. A tag is a string-to-string map of key-value pairs.</p>"}))
    ChimeWebhookConfiguration.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>Either <code>ENABLED</code> or <code>DISABLED</code>. The resource returns <code>DISABLED</code> if the organization's AWS Chatbot policy has explicitly denied that configuration.\n\t  For example, if Amazon Chime is disabled.</p>"}))
    ChimeWebhookConfiguration.add_member(:state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StateReason', traits: {"smithy.api#documentation" => "<p>Provided if State is <code>DISABLED</code>. Provides context as to why the resource is disabled.</p>"}))
    ChimeWebhookConfiguration.type = Types::ChimeWebhookConfiguration
    ChimeWebhookConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeWebhookConfiguration)
    ConfiguredTeam.add_member(:tenant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'TenantId', traits: {"smithy.api#documentation" => "<p>The ID of the Microsoft Teams tenant.</p>", "smithy.api#required" => {}}))
    ConfiguredTeam.add_member(:team_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'TeamId', traits: {"smithy.api#documentation" => "<p> The ID of the Microsoft Teams authorized with AWS Chatbot.</p>\n         <p>To get the team ID, you must perform the initial authorization flow with Microsoft Teams in the AWS Chatbot console. Then you can copy and paste the team ID from the console. For more information, see <a href=\"https://docs.aws.amazon.com/chatbot/latest/adminguide/teams-setup.html#teams-client-setup\">Step 1: Configure a Microsoft Teams client</a> in the <i> AWS Chatbot Administrator Guide</i>.\n</p>", "smithy.api#required" => {}}))
    ConfiguredTeam.add_member(:team_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'TeamName', traits: {"smithy.api#documentation" => "<p>The name of the Microsoft Teams Team.</p>"}))
    ConfiguredTeam.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>Either <code>ENABLED</code> or <code>DISABLED</code>. The resource returns <code>DISABLED</code> if the organization's AWS Chatbot policy has explicitly denied that configuration.\n\t  For example, if Amazon Chime is disabled.</p>"}))
    ConfiguredTeam.add_member(:state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StateReason', traits: {"smithy.api#documentation" => "<p>Provided if State is <code>DISABLED</code>. Provides context as to why the resource is disabled.</p>"}))
    ConfiguredTeam.type = Types::ConfiguredTeam
    ConfiguredTeamsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTeam)
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    CreateChimeWebhookConfigurationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    CreateChimeWebhookConfigurationException.type = Types::CreateChimeWebhookConfigurationException
    CreateChimeWebhookConfigurationRequest.add_member(:webhook_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeWebhookDescription, location_name: 'WebhookDescription', traits: {"smithy.api#documentation" => "<p>A description of the webhook. We recommend using the convention <code>RoomName/WebhookName</code>.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/chatbot/latest/adminguide/chime-setup.html\">Tutorial: Get started with Amazon Chime</a> in the <i> AWS Chatbot Administrator Guide</i>.\n </p>", "smithy.api#required" => {}}))
    CreateChimeWebhookConfigurationRequest.add_member(:webhook_url, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeWebhookUrl, location_name: 'WebhookUrl', traits: {"smithy.api#documentation" => "<p>The URL for the Amazon Chime webhook.</p>", "smithy.api#required" => {}}))
    CreateChimeWebhookConfigurationRequest.add_member(:sns_topic_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsTopicArnList, location_name: 'SnsTopicArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) of the SNS topics that deliver notifications to AWS Chatbot.</p>", "smithy.api#required" => {}}))
    CreateChimeWebhookConfigurationRequest.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>A user-defined role that AWS Chatbot assumes. This is not the service-linked role.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html\">IAM policies for AWS Chatbot</a> in the <i> AWS Chatbot Administrator Guide</i>.\n  </p>", "smithy.api#required" => {}}))
    CreateChimeWebhookConfigurationRequest.add_member(:configuration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationName, location_name: 'ConfigurationName', traits: {"smithy.api#documentation" => "<p>The name of the configuration.</p>", "smithy.api#required" => {}}))
    CreateChimeWebhookConfigurationRequest.add_member(:logging_level, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerCwLogLevel, location_name: 'LoggingLevel', traits: {"smithy.api#documentation" => "<p>Logging levels include <code>ERROR</code>, <code>INFO</code>, or <code>NONE</code>.</p>"}))
    CreateChimeWebhookConfigurationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A map of tags assigned to a resource. A tag is a string-to-string map of key-value pairs.</p>"}))
    CreateChimeWebhookConfigurationRequest.type = Types::CreateChimeWebhookConfigurationRequest
    CreateChimeWebhookConfigurationResult.add_member(:webhook_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeWebhookConfiguration, location_name: 'WebhookConfiguration', traits: {"smithy.api#documentation" => "<p>An Amazon Chime webhook configuration.</p>"}))
    CreateChimeWebhookConfigurationResult.type = Types::CreateChimeWebhookConfigurationResult
    CreateCustomActionRequest.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActionDefinition, location_name: 'Definition', traits: {"smithy.api#documentation" => "<p>The definition of the command to run when invoked as an alias or as an action button.</p>", "smithy.api#required" => {}}))
    CreateCustomActionRequest.add_member(:alias_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActionAliasName, location_name: 'AliasName', traits: {"smithy.api#documentation" => "<p>The name used to invoke this action in a chat channel. For example, <code>@aws run my-alias</code>.</p>"}))
    CreateCustomActionRequest.add_member(:attachments, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActionAttachmentList, location_name: 'Attachments', traits: {"smithy.api#documentation" => "<p>Defines when this custom action button should be attached to a notification.</p>"}))
    CreateCustomActionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A map of tags assigned to a resource. A tag is a string-to-string map of key-value pairs.</p>"}))
    CreateCustomActionRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, subsequent retries with the same client token returns the result from the original successful request.</p>\n         <p>If you do not specify a client token, one is automatically generated by the SDK.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateCustomActionRequest.add_member(:action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActionName, location_name: 'ActionName', traits: {"smithy.api#documentation" => "<p>The name of the custom action. This name is included in the Amazon Resource Name (ARN).</p>", "smithy.api#required" => {}}))
    CreateCustomActionRequest.type = Types::CreateCustomActionRequest
    CreateCustomActionResult.add_member(:custom_action_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActionArn, location_name: 'CustomActionArn', traits: {"smithy.api#documentation" => "<p>The fully defined ARN of the custom action.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CustomActionArn"}))
    CreateCustomActionResult.type = Types::CreateCustomActionResult
    CreateSlackChannelConfigurationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    CreateSlackChannelConfigurationException.type = Types::CreateSlackChannelConfigurationException
    CreateSlackChannelConfigurationRequest.add_member(:slack_team_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SlackTeamId, location_name: 'SlackTeamId', traits: {"smithy.api#documentation" => "<p>The ID of the Slack workspace authorized with AWS Chatbot.</p>", "smithy.api#required" => {}}))
    CreateSlackChannelConfigurationRequest.add_member(:slack_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SlackChannelId, location_name: 'SlackChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the Slack channel.</p>\n         <p>To get this ID, open Slack, right click on the channel name in the left pane, then choose Copy Link. The channel ID is the 9-character string at the end of the URL. For example, ABCBBLZZZ.\n  </p>", "smithy.api#required" => {}}))
    CreateSlackChannelConfigurationRequest.add_member(:slack_channel_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SlackChannelDisplayName, location_name: 'SlackChannelName', traits: {"smithy.api#documentation" => "<p>The name of the Slack channel.</p>"}))
    CreateSlackChannelConfigurationRequest.add_member(:sns_topic_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsTopicArnList, location_name: 'SnsTopicArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) of the SNS topics that deliver notifications to AWS Chatbot.</p>"}))
    CreateSlackChannelConfigurationRequest.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>A user-defined role that AWS Chatbot assumes. This is not the service-linked role.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html\">IAM policies for AWS Chatbot</a> in the <i> AWS Chatbot Administrator Guide</i>.\n  </p>", "smithy.api#required" => {}}))
    CreateSlackChannelConfigurationRequest.add_member(:configuration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationName, location_name: 'ConfigurationName', traits: {"smithy.api#documentation" => "<p>The name of the configuration.</p>", "smithy.api#required" => {}}))
    CreateSlackChannelConfigurationRequest.add_member(:logging_level, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerCwLogLevel, location_name: 'LoggingLevel', traits: {"smithy.api#documentation" => "<p>Logging levels include <code>ERROR</code>, <code>INFO</code>, or <code>NONE</code>.</p>"}))
    CreateSlackChannelConfigurationRequest.add_member(:guardrail_policy_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailPolicyArnList, location_name: 'GuardrailPolicyArns', traits: {"smithy.api#documentation" => "<p>The list of IAM policy ARNs that are applied as channel guardrails. The AWS managed <code>AdministratorAccess</code> policy is applied by default if this is not set.\n  </p>"}))
    CreateSlackChannelConfigurationRequest.add_member(:user_authorization_required, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanAccountPreference, location_name: 'UserAuthorizationRequired', traits: {"smithy.api#documentation" => "<p>Enables use of a user role requirement in your chat configuration.</p>"}))
    CreateSlackChannelConfigurationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A map of tags assigned to a resource. A tag is a string-to-string map of key-value pairs.</p>"}))
    CreateSlackChannelConfigurationRequest.type = Types::CreateSlackChannelConfigurationRequest
    CreateSlackChannelConfigurationResult.add_member(:channel_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SlackChannelConfiguration, location_name: 'ChannelConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for a Slack channel configured with AWS Chatbot.</p>"}))
    CreateSlackChannelConfigurationResult.type = Types::CreateSlackChannelConfigurationResult
    CreateTeamsChannelConfigurationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    CreateTeamsChannelConfigurationException.type = Types::CreateTeamsChannelConfigurationException
    CreateTeamsChannelConfigurationRequest.add_member(:channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TeamsChannelId, location_name: 'ChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the Microsoft Teams channel.</p>", "smithy.api#required" => {}}))
    CreateTeamsChannelConfigurationRequest.add_member(:channel_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TeamsChannelName, location_name: 'ChannelName', traits: {"smithy.api#documentation" => "<p>The name of the Microsoft Teams channel.</p>"}))
    CreateTeamsChannelConfigurationRequest.add_member(:team_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'TeamId', traits: {"smithy.api#documentation" => "<p> The ID of the Microsoft Teams authorized with AWS Chatbot.</p>\n         <p>To get the team ID, you must perform the initial authorization flow with Microsoft Teams in the AWS Chatbot console. Then you can copy and paste the team ID from the console. For more information, see <a href=\"https://docs.aws.amazon.com/chatbot/latest/adminguide/teams-setup.html#teams-client-setup\">Step 1: Configure a Microsoft Teams client</a> in the <i> AWS Chatbot Administrator Guide</i>.\n</p>", "smithy.api#required" => {}}))
    CreateTeamsChannelConfigurationRequest.add_member(:team_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TeamName, location_name: 'TeamName', traits: {"smithy.api#documentation" => "<p>The name of the Microsoft Teams Team.</p>"}))
    CreateTeamsChannelConfigurationRequest.add_member(:tenant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'TenantId', traits: {"smithy.api#documentation" => "<p>The ID of the Microsoft Teams tenant.</p>", "smithy.api#required" => {}}))
    CreateTeamsChannelConfigurationRequest.add_member(:sns_topic_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsTopicArnList, location_name: 'SnsTopicArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) of the SNS topics that deliver notifications to AWS Chatbot.</p>"}))
    CreateTeamsChannelConfigurationRequest.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>A user-defined role that AWS Chatbot assumes. This is not the service-linked role.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html\">IAM policies for AWS Chatbot</a> in the <i> AWS Chatbot Administrator Guide</i>.\n  </p>", "smithy.api#required" => {}}))
    CreateTeamsChannelConfigurationRequest.add_member(:configuration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationName, location_name: 'ConfigurationName', traits: {"smithy.api#documentation" => "<p>The name of the configuration.</p>", "smithy.api#required" => {}}))
    CreateTeamsChannelConfigurationRequest.add_member(:logging_level, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerCwLogLevel, location_name: 'LoggingLevel', traits: {"smithy.api#documentation" => "<p>Logging levels include <code>ERROR</code>, <code>INFO</code>, or <code>NONE</code>.</p>"}))
    CreateTeamsChannelConfigurationRequest.add_member(:guardrail_policy_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailPolicyArnList, location_name: 'GuardrailPolicyArns', traits: {"smithy.api#documentation" => "<p>The list of IAM policy ARNs that are applied as channel guardrails. The AWS managed <code>AdministratorAccess</code> policy is applied by default if this is not set.\n  </p>"}))
    CreateTeamsChannelConfigurationRequest.add_member(:user_authorization_required, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanAccountPreference, location_name: 'UserAuthorizationRequired', traits: {"smithy.api#documentation" => "<p>Enables use of a user role requirement in your chat configuration.</p>"}))
    CreateTeamsChannelConfigurationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A map of tags assigned to a resource. A tag is a string-to-string map of key-value pairs.</p>"}))
    CreateTeamsChannelConfigurationRequest.type = Types::CreateTeamsChannelConfigurationRequest
    CreateTeamsChannelConfigurationResult.add_member(:channel_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TeamsChannelConfiguration, location_name: 'ChannelConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for a Microsoft Teams channel configured with AWS Chatbot.</p>"}))
    CreateTeamsChannelConfigurationResult.type = Types::CreateTeamsChannelConfigurationResult
    CustomAction.add_member(:custom_action_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActionArn, location_name: 'CustomActionArn', traits: {"smithy.api#documentation" => "<p>The fully defined Amazon Resource Name (ARN) of the custom action.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CustomActionArn"}))
    CustomAction.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActionDefinition, location_name: 'Definition', traits: {"smithy.api#documentation" => "<p>The definition of the command to run when invoked an alias or as an action button.</p>", "smithy.api#required" => {}}))
    CustomAction.add_member(:alias_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActionAliasName, location_name: 'AliasName', traits: {"smithy.api#documentation" => "<p>The name used to invoke this action in the chat channel. For example, <code>@aws run my-alias</code>.</p>"}))
    CustomAction.add_member(:attachments, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActionAttachmentList, location_name: 'Attachments', traits: {"smithy.api#documentation" => "<p>Defines when this custom action button should be attached to a notification.</p>"}))
    CustomAction.add_member(:action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActionName, location_name: 'ActionName', traits: {"smithy.api#documentation" => "<p>The name of the custom action that is included in the ARN.</p>"}))
    CustomAction.type = Types::CustomAction
    CustomActionArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActionArn)
    CustomActionAttachment.add_member(:notification_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActionAttachmentNotificationType, location_name: 'NotificationType', traits: {"smithy.api#documentation" => "<p>The type of notification that the custom action should be attached to.</p>"}))
    CustomActionAttachment.add_member(:button_text, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActionButtonText, location_name: 'ButtonText', traits: {"smithy.api#documentation" => "<p>The text of the button that appears on the notification.</p>"}))
    CustomActionAttachment.add_member(:criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActionAttachmentCriteriaList, location_name: 'Criteria', traits: {"smithy.api#documentation" => "<p>The criteria for when a button should be shown based on values in the notification.</p>"}))
    CustomActionAttachment.add_member(:variables, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActionAttachmentVariables, location_name: 'Variables', traits: {"smithy.api#documentation" => "<p>The variables to extract from the notification.</p>"}))
    CustomActionAttachment.type = Types::CustomActionAttachment
    CustomActionAttachmentCriteria.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActionAttachmentCriteriaOperator, location_name: 'Operator', traits: {"smithy.api#documentation" => "<p>The operation to perform on the named variable.</p>", "smithy.api#required" => {}}))
    CustomActionAttachmentCriteria.add_member(:variable_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'VariableName', traits: {"smithy.api#documentation" => "<p>The name of the variable to operate on.</p>", "smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9-_]+$", "smithy.api#required" => {}}))
    CustomActionAttachmentCriteria.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>A value that is compared with the actual value of the variable based on the behavior of the operator.</p>", "smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\S\\s]+$"}))
    CustomActionAttachmentCriteria.type = Types::CustomActionAttachmentCriteria
    CustomActionAttachmentCriteriaList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActionAttachmentCriteria)
    CustomActionAttachmentCriteriaOperator.add_member(:has_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HAS_VALUE', traits: {"smithy.api#enumValue" => "HAS_VALUE"}))
    CustomActionAttachmentCriteriaOperator.add_member(:equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "EQUALS"}))
    CustomActionAttachmentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActionAttachment)
    CustomActionAttachmentVariables.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9-_]+$"})
    CustomActionAttachmentVariables.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\x21-\\x7F]+$"})
    CustomActionDefinition.add_member(:command_text, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'CommandText', traits: {"smithy.api#documentation" => "<p>The command string to run which may include variables by prefixing with a dollar sign ($).</p>", "smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\S\\s]+$", "smithy.api#required" => {}}))
    CustomActionDefinition.type = Types::CustomActionDefinition
    DeleteChimeWebhookConfigurationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    DeleteChimeWebhookConfigurationException.type = Types::DeleteChimeWebhookConfigurationException
    DeleteChimeWebhookConfigurationRequest.add_member(:chat_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatConfigurationArn, location_name: 'ChatConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the ChimeWebhookConfiguration to delete.</p>", "smithy.api#required" => {}}))
    DeleteChimeWebhookConfigurationRequest.type = Types::DeleteChimeWebhookConfigurationRequest
    DeleteChimeWebhookConfigurationResult.type = Types::DeleteChimeWebhookConfigurationResult
    DeleteCustomActionRequest.add_member(:custom_action_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActionArn, location_name: 'CustomActionArn', traits: {"smithy.api#documentation" => "<p>The fully defined ARN of the custom action.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CustomActionArn"}))
    DeleteCustomActionRequest.type = Types::DeleteCustomActionRequest
    DeleteCustomActionResult.type = Types::DeleteCustomActionResult
    DeleteMicrosoftTeamsUserIdentityException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    DeleteMicrosoftTeamsUserIdentityException.type = Types::DeleteMicrosoftTeamsUserIdentityException
    DeleteMicrosoftTeamsUserIdentityRequest.add_member(:chat_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatConfigurationArn, location_name: 'ChatConfigurationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the MicrosoftTeamsChannelConfiguration associated with the user identity to delete.</p>", "smithy.api#required" => {}}))
    DeleteMicrosoftTeamsUserIdentityRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>The Microsoft Teams user ID.</p>", "smithy.api#required" => {}}))
    DeleteMicrosoftTeamsUserIdentityRequest.type = Types::DeleteMicrosoftTeamsUserIdentityRequest
    DeleteMicrosoftTeamsUserIdentityResult.type = Types::DeleteMicrosoftTeamsUserIdentityResult
    DeleteSlackChannelConfigurationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    DeleteSlackChannelConfigurationException.type = Types::DeleteSlackChannelConfigurationException
    DeleteSlackChannelConfigurationRequest.add_member(:chat_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatConfigurationArn, location_name: 'ChatConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the SlackChannelConfiguration to delete.</p>", "smithy.api#required" => {}}))
    DeleteSlackChannelConfigurationRequest.type = Types::DeleteSlackChannelConfigurationRequest
    DeleteSlackChannelConfigurationResult.type = Types::DeleteSlackChannelConfigurationResult
    DeleteSlackUserIdentityException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    DeleteSlackUserIdentityException.type = Types::DeleteSlackUserIdentityException
    DeleteSlackUserIdentityRequest.add_member(:chat_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatConfigurationArn, location_name: 'ChatConfigurationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the SlackChannelConfiguration associated with the user identity to delete.</p>", "smithy.api#required" => {}}))
    DeleteSlackUserIdentityRequest.add_member(:slack_team_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SlackTeamId, location_name: 'SlackTeamId', traits: {"smithy.api#documentation" => "<p>The ID of the Slack workspace authorized with AWS Chatbot.</p>", "smithy.api#required" => {}}))
    DeleteSlackUserIdentityRequest.add_member(:slack_user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SlackUserId, location_name: 'SlackUserId', traits: {"smithy.api#documentation" => "<p>The ID of the user in Slack</p>", "smithy.api#required" => {}}))
    DeleteSlackUserIdentityRequest.type = Types::DeleteSlackUserIdentityRequest
    DeleteSlackUserIdentityResult.type = Types::DeleteSlackUserIdentityResult
    DeleteSlackWorkspaceAuthorizationFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    DeleteSlackWorkspaceAuthorizationFault.type = Types::DeleteSlackWorkspaceAuthorizationFault
    DeleteSlackWorkspaceAuthorizationRequest.add_member(:slack_team_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SlackTeamId, location_name: 'SlackTeamId', traits: {"smithy.api#documentation" => "<p>The ID of the Slack workspace authorized with AWS Chatbot.</p>", "smithy.api#required" => {}}))
    DeleteSlackWorkspaceAuthorizationRequest.type = Types::DeleteSlackWorkspaceAuthorizationRequest
    DeleteSlackWorkspaceAuthorizationResult.type = Types::DeleteSlackWorkspaceAuthorizationResult
    DeleteTeamsChannelConfigurationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    DeleteTeamsChannelConfigurationException.type = Types::DeleteTeamsChannelConfigurationException
    DeleteTeamsChannelConfigurationRequest.add_member(:chat_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatConfigurationArn, location_name: 'ChatConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the MicrosoftTeamsChannelConfiguration associated with the user identity to delete.</p>", "smithy.api#required" => {}}))
    DeleteTeamsChannelConfigurationRequest.type = Types::DeleteTeamsChannelConfigurationRequest
    DeleteTeamsChannelConfigurationResult.type = Types::DeleteTeamsChannelConfigurationResult
    DeleteTeamsConfiguredTeamException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    DeleteTeamsConfiguredTeamException.type = Types::DeleteTeamsConfiguredTeamException
    DeleteTeamsConfiguredTeamRequest.add_member(:team_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'TeamId', traits: {"smithy.api#documentation" => "<p>The ID of the Microsoft Teams team authorized with AWS Chatbot.</p>\n         <p>To get the team ID, you must perform the initial authorization flow with Microsoft Teams in the AWS Chatbot console. Then you can copy and paste the team ID from the console. For more information, see <a href=\"https://docs.aws.amazon.com/chatbot/latest/adminguide/teams-setup.html#teams-client-setup\">Step 1: Configure a Microsoft Teams client</a> in the <i> AWS Chatbot Administrator Guide</i>.\n</p>", "smithy.api#required" => {}}))
    DeleteTeamsConfiguredTeamRequest.type = Types::DeleteTeamsConfiguredTeamRequest
    DeleteTeamsConfiguredTeamResult.type = Types::DeleteTeamsConfiguredTeamResult
    DescribeChimeWebhookConfigurationsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    DescribeChimeWebhookConfigurationsException.type = Types::DescribeChimeWebhookConfigurationsException
    DescribeChimeWebhookConfigurationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.\n  </p>"}))
    DescribeChimeWebhookConfigurationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.\n  </p>"}))
    DescribeChimeWebhookConfigurationsRequest.add_member(:chat_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatConfigurationArn, location_name: 'ChatConfigurationArn', traits: {"smithy.api#documentation" => "<p>An optional Amazon Resource Name (ARN) of a ChimeWebhookConfiguration to describe.</p>"}))
    DescribeChimeWebhookConfigurationsRequest.type = Types::DescribeChimeWebhookConfigurationsRequest
    DescribeChimeWebhookConfigurationsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.\n </p>"}))
    DescribeChimeWebhookConfigurationsResult.add_member(:webhook_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeWebhookConfigurationList, location_name: 'WebhookConfigurations', traits: {"smithy.api#documentation" => "<p>A list of Amazon Chime webhooks associated with the account.</p>"}))
    DescribeChimeWebhookConfigurationsResult.type = Types::DescribeChimeWebhookConfigurationsResult
    DescribeSlackChannelConfigurationsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    DescribeSlackChannelConfigurationsException.type = Types::DescribeSlackChannelConfigurationsException
    DescribeSlackChannelConfigurationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.\n  </p>"}))
    DescribeSlackChannelConfigurationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.\n  </p>"}))
    DescribeSlackChannelConfigurationsRequest.add_member(:chat_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatConfigurationArn, location_name: 'ChatConfigurationArn', traits: {"smithy.api#documentation" => "<p>An optional Amazon Resource Name (ARN) of a SlackChannelConfiguration to describe.</p>"}))
    DescribeSlackChannelConfigurationsRequest.type = Types::DescribeSlackChannelConfigurationsRequest
    DescribeSlackChannelConfigurationsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.\n  </p>"}))
    DescribeSlackChannelConfigurationsResult.add_member(:slack_channel_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: SlackChannelConfigurationList, location_name: 'SlackChannelConfigurations', traits: {"smithy.api#documentation" => "<p>A list of Slack channel configurations.</p>"}))
    DescribeSlackChannelConfigurationsResult.type = Types::DescribeSlackChannelConfigurationsResult
    DescribeSlackUserIdentitiesException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    DescribeSlackUserIdentitiesException.type = Types::DescribeSlackUserIdentitiesException
    DescribeSlackUserIdentitiesRequest.add_member(:chat_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatConfigurationArn, location_name: 'ChatConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the SlackChannelConfiguration associated with the user identities to describe.</p>"}))
    DescribeSlackUserIdentitiesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.\n  </p>"}))
    DescribeSlackUserIdentitiesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.\n  </p>"}))
    DescribeSlackUserIdentitiesRequest.type = Types::DescribeSlackUserIdentitiesRequest
    DescribeSlackUserIdentitiesResult.add_member(:slack_user_identities, Smithy::Schema::Shapes::ShapeRef.new(shape: SlackUserIdentitiesList, location_name: 'SlackUserIdentities', traits: {"smithy.api#documentation" => "<p>A list of Slack User Identities.</p>"}))
    DescribeSlackUserIdentitiesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.\n  </p>"}))
    DescribeSlackUserIdentitiesResult.type = Types::DescribeSlackUserIdentitiesResult
    DescribeSlackWorkspacesException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    DescribeSlackWorkspacesException.type = Types::DescribeSlackWorkspacesException
    DescribeSlackWorkspacesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.\n  </p>"}))
    DescribeSlackWorkspacesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.\n  </p>"}))
    DescribeSlackWorkspacesRequest.type = Types::DescribeSlackWorkspacesRequest
    DescribeSlackWorkspacesResult.add_member(:slack_workspaces, Smithy::Schema::Shapes::ShapeRef.new(shape: SlackWorkspacesList, location_name: 'SlackWorkspaces', traits: {"smithy.api#documentation" => "<p>A list of Slack workspaces registered with AWS Chatbot.</p>"}))
    DescribeSlackWorkspacesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.\n  </p>"}))
    DescribeSlackWorkspacesResult.type = Types::DescribeSlackWorkspacesResult
    DisassociateFromConfigurationRequest.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'Resource', traits: {"smithy.api#documentation" => "<p>The resource (for example, a custom action) Amazon Resource Name (ARN) to unlink.</p>", "smithy.api#required" => {}}))
    DisassociateFromConfigurationRequest.add_member(:chat_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatConfigurationArn, location_name: 'ChatConfiguration', traits: {"smithy.api#documentation" => "<p>The channel configuration the resource is being disassociated from.</p>", "smithy.api#required" => {}}))
    DisassociateFromConfigurationRequest.type = Types::DisassociateFromConfigurationRequest
    DisassociateFromConfigurationResult.type = Types::DisassociateFromConfigurationResult
    GetAccountPreferencesException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    GetAccountPreferencesException.type = Types::GetAccountPreferencesException
    GetAccountPreferencesRequest.type = Types::GetAccountPreferencesRequest
    GetAccountPreferencesResult.add_member(:account_preferences, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountPreferences, location_name: 'AccountPreferences', traits: {"smithy.api#documentation" => "<p>The preferences related to AWS Chatbot usage in the calling AWS account.</p>"}))
    GetAccountPreferencesResult.type = Types::GetAccountPreferencesResult
    GetCustomActionRequest.add_member(:custom_action_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActionArn, location_name: 'CustomActionArn', traits: {"smithy.api#documentation" => "<p>Returns the fully defined Amazon Resource Name (ARN) of the custom action.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CustomActionArn"}))
    GetCustomActionRequest.type = Types::GetCustomActionRequest
    GetCustomActionResult.add_member(:custom_action, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomAction, location_name: 'CustomAction', traits: {"smithy.api#documentation" => "<p>Returns the custom action.</p>", "smithy.api#nestedProperties" => {}}))
    GetCustomActionResult.type = Types::GetCustomActionResult
    GetTeamsChannelConfigurationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    GetTeamsChannelConfigurationException.type = Types::GetTeamsChannelConfigurationException
    GetTeamsChannelConfigurationRequest.add_member(:chat_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatConfigurationArn, location_name: 'ChatConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the MicrosoftTeamsChannelConfiguration to retrieve.</p>", "smithy.api#required" => {}}))
    GetTeamsChannelConfigurationRequest.type = Types::GetTeamsChannelConfigurationRequest
    GetTeamsChannelConfigurationResult.add_member(:channel_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TeamsChannelConfiguration, location_name: 'ChannelConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for a Microsoft Teams channel configured with AWS Chatbot.</p>"}))
    GetTeamsChannelConfigurationResult.type = Types::GetTeamsChannelConfigurationResult
    GuardrailPolicyArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailPolicyArn)
    InternalServiceError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalServiceError.type = Types::InternalServiceError
    InvalidParameterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidRequestException.type = Types::InvalidRequestException
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListAssociationsRequest.add_member(:chat_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatConfigurationArn, location_name: 'ChatConfiguration', traits: {"smithy.api#documentation" => "<p>The channel configuration to list associations for.</p>", "smithy.api#required" => {}}))
    ListAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.</p>", "smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\x20-\\x7F]+$"}))
    ListAssociationsRequest.type = Types::ListAssociationsRequest
    ListAssociationsResult.add_member(:associations, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationList, location_name: 'Associations', traits: {"smithy.api#documentation" => "<p>The resources associated with this channel configuration.</p>", "smithy.api#required" => {}}))
    ListAssociationsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.</p>", "smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\x20-\\x7F]+$"}))
    ListAssociationsResult.type = Types::ListAssociationsResult
    ListCustomActionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListCustomActionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.</p>", "smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\x20-\\x7F]+$"}))
    ListCustomActionsRequest.type = Types::ListCustomActionsRequest
    ListCustomActionsResult.add_member(:custom_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActionArnList, location_name: 'CustomActions', traits: {"smithy.api#documentation" => "<p>A list of custom actions.</p>", "smithy.api#required" => {}}))
    ListCustomActionsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.</p>", "smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\x20-\\x7F]+$"}))
    ListCustomActionsResult.type = Types::ListCustomActionsResult
    ListMicrosoftTeamsConfiguredTeamsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ListMicrosoftTeamsConfiguredTeamsException.type = Types::ListMicrosoftTeamsConfiguredTeamsException
    ListMicrosoftTeamsConfiguredTeamsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>"}))
    ListMicrosoftTeamsConfiguredTeamsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.</p>"}))
    ListMicrosoftTeamsConfiguredTeamsRequest.type = Types::ListMicrosoftTeamsConfiguredTeamsRequest
    ListMicrosoftTeamsConfiguredTeamsResult.add_member(:configured_teams, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTeamsList, location_name: 'ConfiguredTeams', traits: {"smithy.api#documentation" => "<p>A list of teams in Microsoft Teams that are configured with AWS Chatbot.</p>"}))
    ListMicrosoftTeamsConfiguredTeamsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.</p>"}))
    ListMicrosoftTeamsConfiguredTeamsResult.type = Types::ListMicrosoftTeamsConfiguredTeamsResult
    ListMicrosoftTeamsUserIdentitiesException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ListMicrosoftTeamsUserIdentitiesException.type = Types::ListMicrosoftTeamsUserIdentitiesException
    ListMicrosoftTeamsUserIdentitiesRequest.add_member(:chat_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatConfigurationArn, location_name: 'ChatConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the MicrosoftTeamsChannelConfiguration associated with the user identities to list.</p>"}))
    ListMicrosoftTeamsUserIdentitiesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.\n  </p>"}))
    ListMicrosoftTeamsUserIdentitiesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.\n  </p>"}))
    ListMicrosoftTeamsUserIdentitiesRequest.type = Types::ListMicrosoftTeamsUserIdentitiesRequest
    ListMicrosoftTeamsUserIdentitiesResult.add_member(:teams_user_identities, Smithy::Schema::Shapes::ShapeRef.new(shape: TeamsUserIdentitiesList, location_name: 'TeamsUserIdentities', traits: {"smithy.api#documentation" => "<p>User level permissions associated to a channel configuration.</p>"}))
    ListMicrosoftTeamsUserIdentitiesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.\n  </p>"}))
    ListMicrosoftTeamsUserIdentitiesResult.type = Types::ListMicrosoftTeamsUserIdentitiesResult
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the resource to list tags for.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Key-value pairs that are assigned to a resource, usually for the purpose of grouping and searching for items. Tags are metadata that you define.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTeamsChannelConfigurationsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ListTeamsChannelConfigurationsException.type = Types::ListTeamsChannelConfigurationsException
    ListTeamsChannelConfigurationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>"}))
    ListTeamsChannelConfigurationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.</p>"}))
    ListTeamsChannelConfigurationsRequest.add_member(:team_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'TeamId', traits: {"smithy.api#documentation" => "<p> The ID of the Microsoft Teams authorized with AWS Chatbot.</p>\n         <p>To get the team ID, you must perform the initial authorization flow with Microsoft Teams in the AWS Chatbot console. Then you can copy and paste the team ID from the console. For more information, see <a href=\"https://docs.aws.amazon.com/chatbot/latest/adminguide/teams-setup.html#teams-client-setup\">Step 1: Configure a Microsoft Teams client</a> in the <i> AWS Chatbot Administrator Guide</i>.\n</p>"}))
    ListTeamsChannelConfigurationsRequest.type = Types::ListTeamsChannelConfigurationsRequest
    ListTeamsChannelConfigurationsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.</p>"}))
    ListTeamsChannelConfigurationsResult.add_member(:team_channel_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: TeamChannelConfigurationsList, location_name: 'TeamChannelConfigurations', traits: {"smithy.api#documentation" => "<p>A list of AWS Chatbot channel configurations for Microsoft Teams.</p>"}))
    ListTeamsChannelConfigurationsResult.type = Types::ListTeamsChannelConfigurationsResult
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SlackChannelConfiguration.add_member(:slack_team_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SlackTeamName, location_name: 'SlackTeamName', traits: {"smithy.api#documentation" => "<p>Name of the Slack workspace.</p>", "smithy.api#required" => {}}))
    SlackChannelConfiguration.add_member(:slack_team_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SlackTeamId, location_name: 'SlackTeamId', traits: {"smithy.api#documentation" => "<p>The ID of the Slack workspace authorized with Amazon Chime.</p>", "smithy.api#required" => {}}))
    SlackChannelConfiguration.add_member(:slack_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SlackChannelId, location_name: 'SlackChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the Slack channel.</p>\n         <p>To get this ID, open Slack, right click on the channel name in the left pane, then choose Copy Link. The channel ID is the 9-character string at the end of the URL. For example, ABCBBLZZZ.\n  </p>", "smithy.api#required" => {}}))
    SlackChannelConfiguration.add_member(:slack_channel_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SlackChannelDisplayName, location_name: 'SlackChannelName', traits: {"smithy.api#documentation" => "<p>The name of the Slack channel.</p>", "smithy.api#required" => {}}))
    SlackChannelConfiguration.add_member(:chat_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatConfigurationArn, location_name: 'ChatConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the SlackChannelConfiguration.</p>", "smithy.api#required" => {}}))
    SlackChannelConfiguration.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>A user-defined role that AWS Chatbot assumes. This is not the service-linked role.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html\">IAM policies for AWS Chatbot</a> in the <i> AWS Chatbot Administrator Guide</i>.\n  </p>", "smithy.api#required" => {}}))
    SlackChannelConfiguration.add_member(:sns_topic_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsTopicArnList, location_name: 'SnsTopicArns', traits: {"smithy.api#documentation" => "<p>The ARNs of the SNS topics that deliver notifications to AWS Chatbot.</p>", "smithy.api#required" => {}}))
    SlackChannelConfiguration.add_member(:configuration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationName, location_name: 'ConfigurationName', traits: {"smithy.api#documentation" => "<p>The name of the configuration.</p>"}))
    SlackChannelConfiguration.add_member(:logging_level, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerCwLogLevel, location_name: 'LoggingLevel', traits: {"smithy.api#documentation" => "<p>Logging levels include <code>ERROR</code>, <code>INFO</code>, or <code>NONE</code>.</p>"}))
    SlackChannelConfiguration.add_member(:guardrail_policy_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailPolicyArnList, location_name: 'GuardrailPolicyArns', traits: {"smithy.api#documentation" => "<p>The list of IAM policy ARNs that are applied as channel guardrails. The AWS managed <code>AdministratorAccess</code> policy is applied by default if this is not set.\n  </p>"}))
    SlackChannelConfiguration.add_member(:user_authorization_required, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanAccountPreference, location_name: 'UserAuthorizationRequired', traits: {"smithy.api#documentation" => "<p>Enables use of a user role requirement in your chat configuration.</p>"}))
    SlackChannelConfiguration.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A map of tags assigned to a resource. A tag is a string-to-string map of key-value pairs.</p>"}))
    SlackChannelConfiguration.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>Either <code>ENABLED</code> or <code>DISABLED</code>. The resource returns <code>DISABLED</code> if the organization's AWS Chatbot policy has explicitly denied that configuration.\n\t  For example, if Amazon Chime is disabled.</p>"}))
    SlackChannelConfiguration.add_member(:state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StateReason', traits: {"smithy.api#documentation" => "<p>Provided if State is <code>DISABLED</code>. Provides context as to why the resource is disabled.</p>"}))
    SlackChannelConfiguration.type = Types::SlackChannelConfiguration
    SlackChannelConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SlackChannelConfiguration)
    SlackUserIdentitiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SlackUserIdentity)
    SlackUserIdentity.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>A user-defined role that AWS Chatbot assumes. This is not the service-linked role.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html\">IAM policies for AWS Chatbot</a> in the <i> AWS Chatbot Administrator Guide</i>.\n  </p>", "smithy.api#required" => {}}))
    SlackUserIdentity.add_member(:chat_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatConfigurationArn, location_name: 'ChatConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the SlackChannelConfiguration associated with the user identity to delete.</p>", "smithy.api#required" => {}}))
    SlackUserIdentity.add_member(:slack_team_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SlackTeamId, location_name: 'SlackTeamId', traits: {"smithy.api#documentation" => "<p>The ID of the Slack workspace authorized with AWS Chatbot.</p>", "smithy.api#required" => {}}))
    SlackUserIdentity.add_member(:slack_user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SlackUserId, location_name: 'SlackUserId', traits: {"smithy.api#documentation" => "<p>The ID of the user in Slack</p>", "smithy.api#required" => {}}))
    SlackUserIdentity.add_member(:aws_user_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsUserIdentity, location_name: 'AwsUserIdentity', traits: {"smithy.api#documentation" => "<p>The AWS user identity ARN used to associate a Slack user ID with an IAM Role.</p>"}))
    SlackUserIdentity.type = Types::SlackUserIdentity
    SlackWorkspace.add_member(:slack_team_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SlackTeamId, location_name: 'SlackTeamId', traits: {"smithy.api#documentation" => "<p>The ID of the Slack workspace authorized with AWS Chatbot.</p>", "smithy.api#required" => {}}))
    SlackWorkspace.add_member(:slack_team_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SlackTeamName, location_name: 'SlackTeamName', traits: {"smithy.api#documentation" => "<p>The name of the Slack workspace.</p>", "smithy.api#required" => {}}))
    SlackWorkspace.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>Either <code>ENABLED</code> or <code>DISABLED</code>. The resource returns <code>DISABLED</code> if the organization's AWS Chatbot policy has explicitly denied that configuration.\n\t  For example, if Amazon Chime is disabled.</p>"}))
    SlackWorkspace.add_member(:state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StateReason', traits: {"smithy.api#documentation" => "<p>Provided if State is <code>DISABLED</code>. Provides context as to why the resource is disabled.</p>"}))
    SlackWorkspace.type = Types::SlackWorkspace
    SlackWorkspacesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SlackWorkspace)
    SnsTopicArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    Tag.add_member(:tag_key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'TagKey', traits: {"smithy.api#documentation" => "<p>The key of the tag.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:tag_value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'TagValue', traits: {"smithy.api#documentation" => "<p>The value of the tag.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the configuration.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"aws.api#data" => "tagging", "smithy.api#documentation" => "<p>A list of tags to apply to the configuration.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TeamChannelConfigurationsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TeamsChannelConfiguration)
    TeamsChannelConfiguration.add_member(:channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TeamsChannelId, location_name: 'ChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the Microsoft Teams channel.</p>", "smithy.api#required" => {}}))
    TeamsChannelConfiguration.add_member(:channel_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TeamsChannelName, location_name: 'ChannelName', traits: {"smithy.api#documentation" => "<p>The name of the Microsoft Teams channel.</p>"}))
    TeamsChannelConfiguration.add_member(:team_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'TeamId', traits: {"smithy.api#documentation" => "<p> The ID of the Microsoft Teams authorized with AWS Chatbot.</p>\n         <p>To get the team ID, you must perform the initial authorization flow with Microsoft Teams in the AWS Chatbot console. Then you can copy and paste the team ID from the console. For more information, see <a href=\"https://docs.aws.amazon.com/chatbot/latest/adminguide/teams-setup.html#teams-client-setup\">Step 1: Configure a Microsoft Teams client</a> in the <i> AWS Chatbot Administrator Guide</i>.\n</p>", "smithy.api#required" => {}}))
    TeamsChannelConfiguration.add_member(:team_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TeamName, location_name: 'TeamName', traits: {"smithy.api#documentation" => "<p>The name of the Microsoft Teams Team.</p>"}))
    TeamsChannelConfiguration.add_member(:tenant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'TenantId', traits: {"smithy.api#documentation" => "<p>The ID of the Microsoft Teams tenant.</p>", "smithy.api#required" => {}}))
    TeamsChannelConfiguration.add_member(:chat_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatConfigurationArn, location_name: 'ChatConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the MicrosoftTeamsChannelConfiguration associated with the user identity to delete.</p>", "smithy.api#required" => {}}))
    TeamsChannelConfiguration.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>A user-defined role that AWS Chatbot assumes. This is not the service-linked role.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html\">IAM policies for AWS Chatbot</a> in the <i> AWS Chatbot Administrator Guide</i>.\n  </p>", "smithy.api#required" => {}}))
    TeamsChannelConfiguration.add_member(:sns_topic_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsTopicArnList, location_name: 'SnsTopicArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) of the SNS topics that deliver notifications to AWS Chatbot.</p>", "smithy.api#required" => {}}))
    TeamsChannelConfiguration.add_member(:configuration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationName, location_name: 'ConfigurationName', traits: {"smithy.api#documentation" => "<p>The name of the configuration.</p>"}))
    TeamsChannelConfiguration.add_member(:logging_level, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerCwLogLevel, location_name: 'LoggingLevel', traits: {"smithy.api#documentation" => "<p>Logging levels include <code>ERROR</code>, <code>INFO</code>, or <code>NONE</code>.</p>"}))
    TeamsChannelConfiguration.add_member(:guardrail_policy_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailPolicyArnList, location_name: 'GuardrailPolicyArns', traits: {"smithy.api#documentation" => "<p>The list of IAM policy ARNs that are applied as channel guardrails. The AWS managed <code>AdministratorAccess</code> policy is applied by default if this is not set.\n  </p>"}))
    TeamsChannelConfiguration.add_member(:user_authorization_required, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanAccountPreference, location_name: 'UserAuthorizationRequired', traits: {"smithy.api#documentation" => "<p>Enables use of a user role requirement in your chat configuration.</p>"}))
    TeamsChannelConfiguration.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A map of tags assigned to a resource. A tag is a string-to-string map of key-value pairs.</p>"}))
    TeamsChannelConfiguration.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>Either <code>ENABLED</code> or <code>DISABLED</code>. The resource returns <code>DISABLED</code> if the organization's AWS Chatbot policy has explicitly denied that configuration.\n\t  For example, if Amazon Chime is disabled.</p>"}))
    TeamsChannelConfiguration.add_member(:state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StateReason', traits: {"smithy.api#documentation" => "<p>Provided if State is <code>DISABLED</code>. Provides context as to why the resource is disabled.</p>"}))
    TeamsChannelConfiguration.type = Types::TeamsChannelConfiguration
    TeamsUserIdentitiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TeamsUserIdentity)
    TeamsUserIdentity.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>A user-defined role that AWS Chatbot assumes. This is not the service-linked role.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html\">IAM policies for AWS Chatbot</a> in the <i> AWS Chatbot Administrator Guide</i>.\n  </p>", "smithy.api#required" => {}}))
    TeamsUserIdentity.add_member(:chat_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatConfigurationArn, location_name: 'ChatConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the MicrosoftTeamsChannelConfiguration associated with the user identity to delete.</p>", "smithy.api#required" => {}}))
    TeamsUserIdentity.add_member(:team_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'TeamId', traits: {"smithy.api#documentation" => "<p> The ID of the Microsoft Teams authorized with AWS Chatbot.</p>\n         <p>To get the team ID, you must perform the initial authorization flow with Microsoft Teams in the AWS Chatbot console. Then you can copy and paste the team ID from the console. For more information, see <a href=\"https://docs.aws.amazon.com/chatbot/latest/adminguide/teams-setup.html#teams-client-setup\">Step 1: Configure a Microsoft Teams client</a> in the <i> AWS Chatbot Administrator Guide</i>.\n</p>", "smithy.api#required" => {}}))
    TeamsUserIdentity.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>The Microsoft Teams user ID.</p>"}))
    TeamsUserIdentity.add_member(:aws_user_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsUserIdentity, location_name: 'AwsUserIdentity', traits: {"smithy.api#documentation" => "<p>The AWS user identity ARN used to associate a Microsoft Teams user Identity with an IAM Role.</p>"}))
    TeamsUserIdentity.add_member(:teams_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TeamsChannelId, location_name: 'TeamsChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the Microsoft Teams channel.</p>"}))
    TeamsUserIdentity.add_member(:teams_tenant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'TeamsTenantId', traits: {"smithy.api#documentation" => "<p>The ID of the Microsoft Teams tenant.</p>"}))
    TeamsUserIdentity.type = Types::TeamsUserIdentity
    TooManyTagsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TooManyTagsException.type = Types::TooManyTagsException
    UnauthorizedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    UnauthorizedException.type = Types::UnauthorizedException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The value of the resource that will have the tag removed. An Amazon Resource Name (ARN) is an identifier for a specific AWS resource, such as a server, user, or role.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"aws.api#data" => "tagging", "smithy.api#documentation" => "<p>TagKeys are key-value pairs assigned to ARNs that can be used to group and search for resources by type. This metadata can be attached to resources for any purpose.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAccountPreferencesException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    UpdateAccountPreferencesException.type = Types::UpdateAccountPreferencesException
    UpdateAccountPreferencesRequest.add_member(:user_authorization_required, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanAccountPreference, location_name: 'UserAuthorizationRequired', traits: {"smithy.api#documentation" => "<p>Enables use of a user role requirement in your chat configuration.</p>"}))
    UpdateAccountPreferencesRequest.add_member(:training_data_collection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanAccountPreference, location_name: 'TrainingDataCollectionEnabled', traits: {"smithy.api#documentation" => "<p>Turns on training data collection.</p>\n         <p>This helps improve the AWS Chatbot experience by allowing AWS Chatbot to store and use your customer information, such as AWS Chatbot configurations, notifications, user inputs, AWS Chatbot generated responses, and interaction data. This data helps us to continuously improve and develop Artificial Intelligence (AI) technologies. Your data is not shared with any third parties and is protected using sophisticated controls to prevent unauthorized access and misuse. AWS Chatbot does not store or use interactions in chat channels with Amazon Q for training AI technologies for AWS Chatbot.\n  </p>"}))
    UpdateAccountPreferencesRequest.type = Types::UpdateAccountPreferencesRequest
    UpdateAccountPreferencesResult.add_member(:account_preferences, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountPreferences, location_name: 'AccountPreferences', traits: {"smithy.api#documentation" => "<p>Preferences related to AWS Chatbot usage in the calling AWS account.</p>"}))
    UpdateAccountPreferencesResult.type = Types::UpdateAccountPreferencesResult
    UpdateChimeWebhookConfigurationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    UpdateChimeWebhookConfigurationException.type = Types::UpdateChimeWebhookConfigurationException
    UpdateChimeWebhookConfigurationRequest.add_member(:chat_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatConfigurationArn, location_name: 'ChatConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the ChimeWebhookConfiguration to update.</p>", "smithy.api#required" => {}}))
    UpdateChimeWebhookConfigurationRequest.add_member(:webhook_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeWebhookDescription, location_name: 'WebhookDescription', traits: {"smithy.api#documentation" => "<p>A description of the webhook. We recommend using the convention <code>RoomName/WebhookName</code>.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/chatbot/latest/adminguide/chime-setup.html\">Tutorial: Get started with Amazon Chime</a> in the <i> AWS Chatbot Administrator Guide</i>.\n </p>"}))
    UpdateChimeWebhookConfigurationRequest.add_member(:webhook_url, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeWebhookUrl, location_name: 'WebhookUrl', traits: {"smithy.api#documentation" => "<p>The URL for the Amazon Chime webhook.</p>"}))
    UpdateChimeWebhookConfigurationRequest.add_member(:sns_topic_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsTopicArnList, location_name: 'SnsTopicArns', traits: {"smithy.api#documentation" => "<p>The ARNs of the SNS topics that deliver notifications to AWS Chatbot.</p>"}))
    UpdateChimeWebhookConfigurationRequest.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>A user-defined role that AWS Chatbot assumes. This is not the service-linked role.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html\">IAM policies for AWS Chatbot</a> in the <i> AWS Chatbot Administrator Guide</i>.\n  </p>"}))
    UpdateChimeWebhookConfigurationRequest.add_member(:logging_level, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerCwLogLevel, location_name: 'LoggingLevel', traits: {"smithy.api#documentation" => "<p>Logging levels include <code>ERROR</code>, <code>INFO</code>, or <code>NONE</code>.</p>"}))
    UpdateChimeWebhookConfigurationRequest.type = Types::UpdateChimeWebhookConfigurationRequest
    UpdateChimeWebhookConfigurationResult.add_member(:webhook_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeWebhookConfiguration, location_name: 'WebhookConfiguration', traits: {"smithy.api#documentation" => "<p>A Amazon Chime webhook configuration.</p>"}))
    UpdateChimeWebhookConfigurationResult.type = Types::UpdateChimeWebhookConfigurationResult
    UpdateCustomActionRequest.add_member(:custom_action_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActionArn, location_name: 'CustomActionArn', traits: {"smithy.api#documentation" => "<p>The fully defined Amazon Resource Name (ARN) of the custom action.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CustomActionArn"}))
    UpdateCustomActionRequest.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActionDefinition, location_name: 'Definition', traits: {"smithy.api#documentation" => "<p>The definition of the command to run when invoked as an alias or as an action button.</p>", "smithy.api#required" => {}}))
    UpdateCustomActionRequest.add_member(:alias_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActionAliasName, location_name: 'AliasName', traits: {"smithy.api#documentation" => "<p>The name used to invoke this action in the chat channel. For example, <code>@aws run my-alias</code>.</p>"}))
    UpdateCustomActionRequest.add_member(:attachments, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActionAttachmentList, location_name: 'Attachments', traits: {"smithy.api#documentation" => "<p>Defines when this custom action button should be attached to a notification.</p>"}))
    UpdateCustomActionRequest.type = Types::UpdateCustomActionRequest
    UpdateCustomActionResult.add_member(:custom_action_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActionArn, location_name: 'CustomActionArn', traits: {"smithy.api#documentation" => "<p>The fully defined ARN of the custom action.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CustomActionArn"}))
    UpdateCustomActionResult.type = Types::UpdateCustomActionResult
    UpdateSlackChannelConfigurationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    UpdateSlackChannelConfigurationException.type = Types::UpdateSlackChannelConfigurationException
    UpdateSlackChannelConfigurationRequest.add_member(:chat_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatConfigurationArn, location_name: 'ChatConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the SlackChannelConfiguration to update.</p>", "smithy.api#required" => {}}))
    UpdateSlackChannelConfigurationRequest.add_member(:slack_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SlackChannelId, location_name: 'SlackChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the Slack channel.</p>\n         <p>To get this ID, open Slack, right click on the channel name in the left pane, then choose Copy Link. The channel ID is the 9-character string at the end of the URL. For example, ABCBBLZZZ.\n  </p>", "smithy.api#required" => {}}))
    UpdateSlackChannelConfigurationRequest.add_member(:slack_channel_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SlackChannelDisplayName, location_name: 'SlackChannelName', traits: {"smithy.api#documentation" => "<p>The name of the Slack channel.</p>"}))
    UpdateSlackChannelConfigurationRequest.add_member(:sns_topic_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsTopicArnList, location_name: 'SnsTopicArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) of the SNS topics that deliver notifications to AWS Chatbot.</p>"}))
    UpdateSlackChannelConfigurationRequest.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>A user-defined role that AWS Chatbot assumes. This is not the service-linked role.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html\">IAM policies for AWS Chatbot</a> in the <i> AWS Chatbot Administrator Guide</i>.\n  </p>"}))
    UpdateSlackChannelConfigurationRequest.add_member(:logging_level, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerCwLogLevel, location_name: 'LoggingLevel', traits: {"smithy.api#documentation" => "<p>Logging levels include <code>ERROR</code>, <code>INFO</code>, or <code>NONE</code>.</p>"}))
    UpdateSlackChannelConfigurationRequest.add_member(:guardrail_policy_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailPolicyArnList, location_name: 'GuardrailPolicyArns', traits: {"smithy.api#documentation" => "<p>The list of IAM policy ARNs that are applied as channel guardrails. The AWS managed <code>AdministratorAccess</code> policy is applied by default if this is not set.\n  </p>"}))
    UpdateSlackChannelConfigurationRequest.add_member(:user_authorization_required, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanAccountPreference, location_name: 'UserAuthorizationRequired', traits: {"smithy.api#documentation" => "<p>Enables use of a user role requirement in your chat configuration.</p>"}))
    UpdateSlackChannelConfigurationRequest.type = Types::UpdateSlackChannelConfigurationRequest
    UpdateSlackChannelConfigurationResult.add_member(:channel_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SlackChannelConfiguration, location_name: 'ChannelConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for a Slack channel configured with AWS Chatbot.</p>"}))
    UpdateSlackChannelConfigurationResult.type = Types::UpdateSlackChannelConfigurationResult
    UpdateTeamsChannelConfigurationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    UpdateTeamsChannelConfigurationException.type = Types::UpdateTeamsChannelConfigurationException
    UpdateTeamsChannelConfigurationRequest.add_member(:chat_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatConfigurationArn, location_name: 'ChatConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the TeamsChannelConfiguration to update.</p>", "smithy.api#required" => {}}))
    UpdateTeamsChannelConfigurationRequest.add_member(:channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TeamsChannelId, location_name: 'ChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the Microsoft Teams channel.</p>", "smithy.api#required" => {}}))
    UpdateTeamsChannelConfigurationRequest.add_member(:channel_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TeamsChannelName, location_name: 'ChannelName', traits: {"smithy.api#documentation" => "<p>The name of the Microsoft Teams channel.</p>"}))
    UpdateTeamsChannelConfigurationRequest.add_member(:sns_topic_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsTopicArnList, location_name: 'SnsTopicArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) of the SNS topics that deliver notifications to AWS Chatbot.</p>"}))
    UpdateTeamsChannelConfigurationRequest.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>A user-defined role that AWS Chatbot assumes. This is not the service-linked role.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html\">IAM policies for AWS Chatbot</a> in the <i> AWS Chatbot Administrator Guide</i>.\n  </p>"}))
    UpdateTeamsChannelConfigurationRequest.add_member(:logging_level, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerCwLogLevel, location_name: 'LoggingLevel', traits: {"smithy.api#documentation" => "<p>Logging levels include <code>ERROR</code>, <code>INFO</code>, or <code>NONE</code>.</p>"}))
    UpdateTeamsChannelConfigurationRequest.add_member(:guardrail_policy_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailPolicyArnList, location_name: 'GuardrailPolicyArns', traits: {"smithy.api#documentation" => "<p>The list of IAM policy ARNs that are applied as channel guardrails. The AWS managed <code>AdministratorAccess</code> policy is applied by default if this is not set.\n  </p>"}))
    UpdateTeamsChannelConfigurationRequest.add_member(:user_authorization_required, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanAccountPreference, location_name: 'UserAuthorizationRequired', traits: {"smithy.api#documentation" => "<p>Enables use of a user role requirement in your chat configuration.</p>"}))
    UpdateTeamsChannelConfigurationRequest.type = Types::UpdateTeamsChannelConfigurationRequest
    UpdateTeamsChannelConfigurationResult.add_member(:channel_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TeamsChannelConfiguration, location_name: 'ChannelConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for a Microsoft Teams channel configured with AWS Chatbot.</p>"}))
    UpdateTeamsChannelConfigurationResult.type = Types::UpdateTeamsChannelConfigurationResult

    WheatleyOrchestration20171011 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.chatbot#WheatleyOrchestration_20171011"
      service.name = "WheatleyOrchestration20171011"
      service.version = "2017-10-11"
      service.traits = {"aws.api#service" => {"sdkId" => "chatbot", "arnNamespace" => "chatbot", "cloudFormationName" => "Chatbot", "cloudTrailEventSource" => "chatbot.amazonaws.com", "endpointPrefix" => "chatbot"}, "aws.auth#sigv4" => {"name" => "chatbot"}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"], "maxAge" => 86400}, "smithy.api#title" => "AWS Chatbot", "smithy.api#xmlNamespace" => {"uri" => "http://wheatley.amazonaws.com/orchestration/2017-10-11/"}}
      service.add_operation(:associate_to_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#AssociateToConfiguration"
        operation.name = "AssociateToConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateToConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateToConfigurationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to associate a resource with a configuration", "resources" => {"required" => {"ChatbotConfiguration" => {}, "custom-action" => {}}}}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/associate-to-configuration"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_chime_webhook_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#CreateChimeWebhookConfiguration"
        operation.name = "CreateChimeWebhookConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChimeWebhookConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChimeWebhookConfigurationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChimeWebhookConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create an AWS Chatbot Chime Webhook Configuration", "createsResources" => ["ChatbotConfiguration"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/create-chime-webhook-configuration", "code" => 201}}
      end)
      service.add_operation(:create_custom_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#CreateCustomAction"
        operation.name = "CreateCustomAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomActionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomActionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a custom action"}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/create-custom-action"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_microsoft_teams_channel_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#CreateMicrosoftTeamsChannelConfiguration"
        operation.name = "CreateMicrosoftTeamsChannelConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTeamsChannelConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTeamsChannelConfigurationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTeamsChannelConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create an AWS Chatbot Microsoft Teams Channel Configuration", "createsResources" => ["ChatbotConfiguration"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/create-ms-teams-channel-configuration", "code" => 201}, "smithy.api#suppress" => ["OperationInputOutputName.input", "OperationInputOutputName.output"]}
      end)
      service.add_operation(:create_slack_channel_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#CreateSlackChannelConfiguration"
        operation.name = "CreateSlackChannelConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSlackChannelConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSlackChannelConfigurationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSlackChannelConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create an AWS Chatbot Slack Channel Configuration", "createsResources" => ["ChatbotConfiguration"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/create-slack-channel-configuration", "code" => 201}}
      end)
      service.add_operation(:delete_chime_webhook_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#DeleteChimeWebhookConfiguration"
        operation.name = "DeleteChimeWebhookConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChimeWebhookConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChimeWebhookConfigurationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChimeWebhookConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete an AWS Chatbot Chime Webhook Configuration", "resources" => {"required" => {"ChatbotConfiguration" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/delete-chime-webhook-configuration", "code" => 204}}
      end)
      service.add_operation(:delete_custom_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#DeleteCustomAction"
        operation.name = "DeleteCustomAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomActionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomActionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a custom action"}, "smithy.api#http" => {"code" => 204, "method" => "POST", "uri" => "/delete-custom-action"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_microsoft_teams_channel_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#DeleteMicrosoftTeamsChannelConfiguration"
        operation.name = "DeleteMicrosoftTeamsChannelConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTeamsChannelConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTeamsChannelConfigurationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTeamsChannelConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete an AWS Chatbot Microsoft Teams Channel Configuration", "resources" => {"required" => {"ChatbotConfiguration" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/delete-ms-teams-channel-configuration", "code" => 204}, "smithy.api#suppress" => ["OperationInputOutputName.input", "OperationInputOutputName.output"]}
      end)
      service.add_operation(:delete_microsoft_teams_configured_team, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#DeleteMicrosoftTeamsConfiguredTeam"
        operation.name = "DeleteMicrosoftTeamsConfiguredTeam"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTeamsConfiguredTeamRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTeamsConfiguredTeamResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTeamsConfiguredTeamException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete the Microsoft Teams configured with AWS Chatbot in an AWS account"}, "smithy.api#http" => {"method" => "POST", "uri" => "/delete-ms-teams-configured-teams", "code" => 204}, "smithy.api#suppress" => ["OperationInputOutputName.input", "OperationInputOutputName.output"]}
      end)
      service.add_operation(:delete_microsoft_teams_user_identity, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#DeleteMicrosoftTeamsUserIdentity"
        operation.name = "DeleteMicrosoftTeamsUserIdentity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMicrosoftTeamsUserIdentityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMicrosoftTeamsUserIdentityResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMicrosoftTeamsUserIdentityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete an AWS Chatbot Microsoft Teams User Identity"}, "smithy.api#http" => {"method" => "POST", "uri" => "/delete-ms-teams-user-identity", "code" => 204}}
      end)
      service.add_operation(:delete_slack_channel_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#DeleteSlackChannelConfiguration"
        operation.name = "DeleteSlackChannelConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSlackChannelConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSlackChannelConfigurationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSlackChannelConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete an AWS Chatbot Slack Channel Configuration", "resources" => {"required" => {"ChatbotConfiguration" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/delete-slack-channel-configuration", "code" => 204}}
      end)
      service.add_operation(:delete_slack_user_identity, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#DeleteSlackUserIdentity"
        operation.name = "DeleteSlackUserIdentity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSlackUserIdentityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSlackUserIdentityResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSlackUserIdentityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete an AWS Chatbot Slack User Identity"}, "smithy.api#http" => {"method" => "POST", "uri" => "/delete-slack-user-identity", "code" => 204}}
      end)
      service.add_operation(:delete_slack_workspace_authorization, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#DeleteSlackWorkspaceAuthorization"
        operation.name = "DeleteSlackWorkspaceAuthorization"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSlackWorkspaceAuthorizationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSlackWorkspaceAuthorizationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSlackWorkspaceAuthorizationFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete the Slack workspace authorization with AWS Chatbot, associated with an AWS account"}, "smithy.api#http" => {"method" => "POST", "uri" => "/delete-slack-workspace-authorization", "code" => 204}}
      end)
      service.add_operation(:describe_chime_webhook_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#DescribeChimeWebhookConfigurations"
        operation.name = "DescribeChimeWebhookConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeChimeWebhookConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeChimeWebhookConfigurationsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeChimeWebhookConfigurationsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list all AWS Chatbot Chime Webhook Configurations in an AWS Account"}, "smithy.api#http" => {"method" => "POST", "uri" => "/describe-chime-webhook-configurations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeChimeWebhookConfigurations.new
      end)
      service.add_operation(:describe_slack_channel_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#DescribeSlackChannelConfigurations"
        operation.name = "DescribeSlackChannelConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSlackChannelConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSlackChannelConfigurationsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSlackChannelConfigurationsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list all AWS Chatbot Slack Channel Configurations in an AWS account"}, "smithy.api#http" => {"method" => "POST", "uri" => "/describe-slack-channel-configurations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeSlackChannelConfigurations.new
      end)
      service.add_operation(:describe_slack_user_identities, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#DescribeSlackUserIdentities"
        operation.name = "DescribeSlackUserIdentities"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSlackUserIdentitiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSlackUserIdentitiesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSlackUserIdentitiesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to describe AWS Chatbot Slack User Identities"}, "smithy.api#http" => {"method" => "POST", "uri" => "/describe-slack-user-identities", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeSlackUserIdentities.new
      end)
      service.add_operation(:describe_slack_workspaces, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#DescribeSlackWorkspaces"
        operation.name = "DescribeSlackWorkspaces"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSlackWorkspacesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSlackWorkspacesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSlackWorkspacesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list all authorized Slack workspaces connected to the AWS Account onboarded with AWS Chatbot service"}, "smithy.api#http" => {"method" => "POST", "uri" => "/describe-slack-workspaces", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeSlackWorkspaces.new
      end)
      service.add_operation(:disassociate_from_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#DisassociateFromConfiguration"
        operation.name = "DisassociateFromConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateFromConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateFromConfigurationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to disassociate a resource from a configuration", "resources" => {"required" => {"ChatbotConfiguration" => {}, "custom-action" => {}}}}, "smithy.api#http" => {"code" => 204, "method" => "POST", "uri" => "/disassociate-from-configuration"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_account_preferences, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#GetAccountPreferences"
        operation.name = "GetAccountPreferences"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountPreferencesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountPreferencesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountPreferencesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve AWS Chatbot account preferences"}, "smithy.api#http" => {"method" => "POST", "uri" => "/get-account-preferences", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_custom_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#GetCustomAction"
        operation.name = "GetCustomAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCustomActionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCustomActionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get a custom action"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/get-custom-action"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_microsoft_teams_channel_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#GetMicrosoftTeamsChannelConfiguration"
        operation.name = "GetMicrosoftTeamsChannelConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTeamsChannelConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTeamsChannelConfigurationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GetTeamsChannelConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get a single AWS Chatbot Microsoft Teams Channel Configurations in an AWS account"}, "smithy.api#http" => {"method" => "POST", "uri" => "/get-ms-teams-channel-configuration", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["OperationInputOutputName.input", "OperationInputOutputName.output"]}
      end)
      service.add_operation(:list_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#ListAssociations"
        operation.name = "ListAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssociationsResult)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list resources associated with a configuration", "resources" => {"required" => {"ChatbotConfiguration" => {}}}}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/list-associations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAssociations.new
      end)
      service.add_operation(:list_custom_actions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#ListCustomActions"
        operation.name = "ListCustomActions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomActionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomActionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list custom actions"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/list-custom-actions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCustomActions.new
      end)
      service.add_operation(:list_microsoft_teams_channel_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#ListMicrosoftTeamsChannelConfigurations"
        operation.name = "ListMicrosoftTeamsChannelConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTeamsChannelConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTeamsChannelConfigurationsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ListTeamsChannelConfigurationsException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list all AWS Chatbot Microsoft Teams Channel Configurations in an AWS account"}, "smithy.api#http" => {"method" => "POST", "uri" => "/list-ms-teams-channel-configurations", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["OperationInputOutputName.input", "OperationInputOutputName.output"]}
        operation[:paginator] = Paginators::ListMicrosoftTeamsChannelConfigurations.new
      end)
      service.add_operation(:list_microsoft_teams_configured_teams, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#ListMicrosoftTeamsConfiguredTeams"
        operation.name = "ListMicrosoftTeamsConfiguredTeams"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMicrosoftTeamsConfiguredTeamsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMicrosoftTeamsConfiguredTeamsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ListMicrosoftTeamsConfiguredTeamsException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list all Microsoft Teams connected to the AWS Account onboarded with AWS Chatbot service"}, "smithy.api#http" => {"method" => "POST", "uri" => "/list-ms-teams-configured-teams", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMicrosoftTeamsConfiguredTeams.new
      end)
      service.add_operation(:list_microsoft_teams_user_identities, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#ListMicrosoftTeamsUserIdentities"
        operation.name = "ListMicrosoftTeamsUserIdentities"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMicrosoftTeamsUserIdentitiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMicrosoftTeamsUserIdentitiesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ListMicrosoftTeamsUserIdentitiesException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to describe AWS Chatbot Microsoft Teams User Identities"}, "smithy.api#http" => {"method" => "POST", "uri" => "/list-ms-teams-user-identities", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMicrosoftTeamsUserIdentities.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to List all tags associated with the AWS Chatbot Channel Configuration"}, "smithy.api#http" => {"method" => "POST", "uri" => "/list-tags-for-resource", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create tags on AWS Chatbot Channel Configuration"}, "smithy.api#http" => {"method" => "POST", "uri" => "/tag-resource", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to remove tags on AWS Chatbot Channel Configuration"}, "smithy.api#http" => {"method" => "POST", "uri" => "/untag-resource", "code" => 200}}
      end)
      service.add_operation(:update_account_preferences, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#UpdateAccountPreferences"
        operation.name = "UpdateAccountPreferences"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccountPreferencesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccountPreferencesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccountPreferencesException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update AWS Chatbot account preferences"}, "smithy.api#http" => {"method" => "POST", "uri" => "/update-account-preferences", "code" => 200}}
      end)
      service.add_operation(:update_chime_webhook_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#UpdateChimeWebhookConfiguration"
        operation.name = "UpdateChimeWebhookConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChimeWebhookConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChimeWebhookConfigurationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChimeWebhookConfigurationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update an AWS Chatbot Chime Webhook Configuration", "resources" => {"required" => {"ChatbotConfiguration" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/update-chime-webhook-configuration", "code" => 200}}
      end)
      service.add_operation(:update_custom_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#UpdateCustomAction"
        operation.name = "UpdateCustomAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomActionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomActionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a custom action"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/update-custom-action"}}
      end)
      service.add_operation(:update_microsoft_teams_channel_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#UpdateMicrosoftTeamsChannelConfiguration"
        operation.name = "UpdateMicrosoftTeamsChannelConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTeamsChannelConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTeamsChannelConfigurationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTeamsChannelConfigurationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update an AWS Chatbot Microsoft Teams Channel Configuration", "resources" => {"required" => {"ChatbotConfiguration" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/update-ms-teams-channel-configuration", "code" => 200}, "smithy.api#suppress" => ["OperationInputOutputName.input", "OperationInputOutputName.output"]}
      end)
      service.add_operation(:update_slack_channel_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chatbot#UpdateSlackChannelConfiguration"
        operation.name = "UpdateSlackChannelConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSlackChannelConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSlackChannelConfigurationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSlackChannelConfigurationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update an AWS Chatbot Slack Channel Configuration", "resources" => {"required" => {"ChatbotConfiguration" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/update-slack-channel-configuration", "code" => 200}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
