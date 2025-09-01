# frozen_string_literal: true

# This is generated code!

module Aws::SES
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountSendingPausedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#AccountSendingPausedException', name: 'AccountSendingPausedException', traits: {"aws.protocols#awsQueryError" => {"code" => "AccountSendingPausedException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AddHeaderAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#AddHeaderAction', name: 'AddHeaderAction')
    Address = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#Address', name: 'Address')
    AddressList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ses#AddressList', name: 'AddressList')
    AlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#AlreadyExistsException', name: 'AlreadyExistsException', traits: {"aws.protocols#awsQueryError" => {"code" => "AlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#AmazonResourceName', name: 'AmazonResourceName')
    ArrivalDate = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.ses#ArrivalDate', name: 'ArrivalDate')
    BehaviorOnMXFailure = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ses#BehaviorOnMXFailure', name: 'BehaviorOnMXFailure')
    Body = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#Body', name: 'Body')
    BounceAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#BounceAction', name: 'BounceAction')
    BounceMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#BounceMessage', name: 'BounceMessage')
    BounceSmtpReplyCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#BounceSmtpReplyCode', name: 'BounceSmtpReplyCode')
    BounceStatusCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#BounceStatusCode', name: 'BounceStatusCode')
    BounceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ses#BounceType', name: 'BounceType')
    BouncedRecipientInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#BouncedRecipientInfo', name: 'BouncedRecipientInfo')
    BouncedRecipientInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ses#BouncedRecipientInfoList', name: 'BouncedRecipientInfoList')
    BulkEmailDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#BulkEmailDestination', name: 'BulkEmailDestination')
    BulkEmailDestinationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ses#BulkEmailDestinationList', name: 'BulkEmailDestinationList')
    BulkEmailDestinationStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#BulkEmailDestinationStatus', name: 'BulkEmailDestinationStatus')
    BulkEmailDestinationStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ses#BulkEmailDestinationStatusList', name: 'BulkEmailDestinationStatusList')
    BulkEmailStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ses#BulkEmailStatus', name: 'BulkEmailStatus')
    CannotDeleteException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#CannotDeleteException', name: 'CannotDeleteException', traits: {"aws.protocols#awsQueryError" => {"code" => "CannotDelete", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Charset = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#Charset', name: 'Charset')
    Cidr = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#Cidr', name: 'Cidr')
    CloneReceiptRuleSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#CloneReceiptRuleSetRequest', name: 'CloneReceiptRuleSetRequest')
    CloneReceiptRuleSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#CloneReceiptRuleSetResponse', name: 'CloneReceiptRuleSetResponse')
    CloudWatchDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#CloudWatchDestination', name: 'CloudWatchDestination')
    CloudWatchDimensionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#CloudWatchDimensionConfiguration', name: 'CloudWatchDimensionConfiguration')
    CloudWatchDimensionConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ses#CloudWatchDimensionConfigurations', name: 'CloudWatchDimensionConfigurations')
    ConfigurationSet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ConfigurationSet', name: 'ConfigurationSet')
    ConfigurationSetAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ConfigurationSetAlreadyExistsException', name: 'ConfigurationSetAlreadyExistsException', traits: {"aws.protocols#awsQueryError" => {"code" => "ConfigurationSetAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ConfigurationSetAttribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ses#ConfigurationSetAttribute', name: 'ConfigurationSetAttribute')
    ConfigurationSetAttributeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ses#ConfigurationSetAttributeList', name: 'ConfigurationSetAttributeList')
    ConfigurationSetDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ConfigurationSetDoesNotExistException', name: 'ConfigurationSetDoesNotExistException', traits: {"aws.protocols#awsQueryError" => {"code" => "ConfigurationSetDoesNotExist", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ConfigurationSetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#ConfigurationSetName', name: 'ConfigurationSetName')
    ConfigurationSetSendingPausedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ConfigurationSetSendingPausedException', name: 'ConfigurationSetSendingPausedException', traits: {"aws.protocols#awsQueryError" => {"code" => "ConfigurationSetSendingPausedException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ConfigurationSets = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ses#ConfigurationSets', name: 'ConfigurationSets')
    ConnectAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ConnectAction', name: 'ConnectAction')
    ConnectInstanceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#ConnectInstanceArn', name: 'ConnectInstanceArn', traits: {"smithy.api#pattern" => "^arn:(aws|aws-us-gov):connect:[a-z]{2}-[a-z]+-[0-9-]{1}:[0-9]{1,20}:instance/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    Content = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#Content', name: 'Content')
    Counter = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ses#Counter', name: 'Counter', traits: {"smithy.api#default" => 0})
    CreateConfigurationSetEventDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#CreateConfigurationSetEventDestinationRequest', name: 'CreateConfigurationSetEventDestinationRequest')
    CreateConfigurationSetEventDestinationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#CreateConfigurationSetEventDestinationResponse', name: 'CreateConfigurationSetEventDestinationResponse')
    CreateConfigurationSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#CreateConfigurationSetRequest', name: 'CreateConfigurationSetRequest')
    CreateConfigurationSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#CreateConfigurationSetResponse', name: 'CreateConfigurationSetResponse')
    CreateConfigurationSetTrackingOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#CreateConfigurationSetTrackingOptionsRequest', name: 'CreateConfigurationSetTrackingOptionsRequest')
    CreateConfigurationSetTrackingOptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#CreateConfigurationSetTrackingOptionsResponse', name: 'CreateConfigurationSetTrackingOptionsResponse')
    CreateCustomVerificationEmailTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#CreateCustomVerificationEmailTemplateRequest', name: 'CreateCustomVerificationEmailTemplateRequest')
    CreateReceiptFilterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#CreateReceiptFilterRequest', name: 'CreateReceiptFilterRequest')
    CreateReceiptFilterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#CreateReceiptFilterResponse', name: 'CreateReceiptFilterResponse')
    CreateReceiptRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#CreateReceiptRuleRequest', name: 'CreateReceiptRuleRequest')
    CreateReceiptRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#CreateReceiptRuleResponse', name: 'CreateReceiptRuleResponse')
    CreateReceiptRuleSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#CreateReceiptRuleSetRequest', name: 'CreateReceiptRuleSetRequest')
    CreateReceiptRuleSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#CreateReceiptRuleSetResponse', name: 'CreateReceiptRuleSetResponse')
    CreateTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#CreateTemplateRequest', name: 'CreateTemplateRequest')
    CreateTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#CreateTemplateResponse', name: 'CreateTemplateResponse')
    CustomMailFromStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ses#CustomMailFromStatus', name: 'CustomMailFromStatus')
    CustomRedirectDomain = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#CustomRedirectDomain', name: 'CustomRedirectDomain')
    CustomVerificationEmailInvalidContentException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#CustomVerificationEmailInvalidContentException', name: 'CustomVerificationEmailInvalidContentException', traits: {"aws.protocols#awsQueryError" => {"code" => "CustomVerificationEmailInvalidContent", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CustomVerificationEmailTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#CustomVerificationEmailTemplate', name: 'CustomVerificationEmailTemplate')
    CustomVerificationEmailTemplateAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#CustomVerificationEmailTemplateAlreadyExistsException', name: 'CustomVerificationEmailTemplateAlreadyExistsException', traits: {"aws.protocols#awsQueryError" => {"code" => "CustomVerificationEmailTemplateAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CustomVerificationEmailTemplateDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#CustomVerificationEmailTemplateDoesNotExistException', name: 'CustomVerificationEmailTemplateDoesNotExistException', traits: {"aws.protocols#awsQueryError" => {"code" => "CustomVerificationEmailTemplateDoesNotExist", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CustomVerificationEmailTemplates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ses#CustomVerificationEmailTemplates', name: 'CustomVerificationEmailTemplates')
    DefaultDimensionValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#DefaultDimensionValue', name: 'DefaultDimensionValue')
    DeleteConfigurationSetEventDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DeleteConfigurationSetEventDestinationRequest', name: 'DeleteConfigurationSetEventDestinationRequest')
    DeleteConfigurationSetEventDestinationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DeleteConfigurationSetEventDestinationResponse', name: 'DeleteConfigurationSetEventDestinationResponse')
    DeleteConfigurationSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DeleteConfigurationSetRequest', name: 'DeleteConfigurationSetRequest')
    DeleteConfigurationSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DeleteConfigurationSetResponse', name: 'DeleteConfigurationSetResponse')
    DeleteConfigurationSetTrackingOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DeleteConfigurationSetTrackingOptionsRequest', name: 'DeleteConfigurationSetTrackingOptionsRequest')
    DeleteConfigurationSetTrackingOptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DeleteConfigurationSetTrackingOptionsResponse', name: 'DeleteConfigurationSetTrackingOptionsResponse')
    DeleteCustomVerificationEmailTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DeleteCustomVerificationEmailTemplateRequest', name: 'DeleteCustomVerificationEmailTemplateRequest')
    DeleteIdentityPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DeleteIdentityPolicyRequest', name: 'DeleteIdentityPolicyRequest')
    DeleteIdentityPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DeleteIdentityPolicyResponse', name: 'DeleteIdentityPolicyResponse')
    DeleteIdentityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DeleteIdentityRequest', name: 'DeleteIdentityRequest')
    DeleteIdentityResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DeleteIdentityResponse', name: 'DeleteIdentityResponse')
    DeleteReceiptFilterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DeleteReceiptFilterRequest', name: 'DeleteReceiptFilterRequest')
    DeleteReceiptFilterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DeleteReceiptFilterResponse', name: 'DeleteReceiptFilterResponse')
    DeleteReceiptRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DeleteReceiptRuleRequest', name: 'DeleteReceiptRuleRequest')
    DeleteReceiptRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DeleteReceiptRuleResponse', name: 'DeleteReceiptRuleResponse')
    DeleteReceiptRuleSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DeleteReceiptRuleSetRequest', name: 'DeleteReceiptRuleSetRequest')
    DeleteReceiptRuleSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DeleteReceiptRuleSetResponse', name: 'DeleteReceiptRuleSetResponse')
    DeleteTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DeleteTemplateRequest', name: 'DeleteTemplateRequest')
    DeleteTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DeleteTemplateResponse', name: 'DeleteTemplateResponse')
    DeleteVerifiedEmailAddressRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DeleteVerifiedEmailAddressRequest', name: 'DeleteVerifiedEmailAddressRequest')
    DeliveryOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DeliveryOptions', name: 'DeliveryOptions')
    DescribeActiveReceiptRuleSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DescribeActiveReceiptRuleSetRequest', name: 'DescribeActiveReceiptRuleSetRequest')
    DescribeActiveReceiptRuleSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DescribeActiveReceiptRuleSetResponse', name: 'DescribeActiveReceiptRuleSetResponse')
    DescribeConfigurationSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DescribeConfigurationSetRequest', name: 'DescribeConfigurationSetRequest')
    DescribeConfigurationSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DescribeConfigurationSetResponse', name: 'DescribeConfigurationSetResponse')
    DescribeReceiptRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DescribeReceiptRuleRequest', name: 'DescribeReceiptRuleRequest')
    DescribeReceiptRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DescribeReceiptRuleResponse', name: 'DescribeReceiptRuleResponse')
    DescribeReceiptRuleSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DescribeReceiptRuleSetRequest', name: 'DescribeReceiptRuleSetRequest')
    DescribeReceiptRuleSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#DescribeReceiptRuleSetResponse', name: 'DescribeReceiptRuleSetResponse')
    Destination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#Destination', name: 'Destination')
    DiagnosticCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#DiagnosticCode', name: 'DiagnosticCode')
    DimensionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#DimensionName', name: 'DimensionName')
    DimensionValueSource = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ses#DimensionValueSource', name: 'DimensionValueSource')
    DkimAttributes = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.ses#DkimAttributes', name: 'DkimAttributes')
    Domain = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#Domain', name: 'Domain')
    DsnAction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ses#DsnAction', name: 'DsnAction')
    DsnStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#DsnStatus', name: 'DsnStatus')
    Enabled = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.ses#Enabled', name: 'Enabled', traits: {"smithy.api#default" => false})
    Error = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#Error', name: 'Error')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#ErrorMessage', name: 'ErrorMessage')
    EventDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#EventDestination', name: 'EventDestination')
    EventDestinationAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#EventDestinationAlreadyExistsException', name: 'EventDestinationAlreadyExistsException', traits: {"aws.protocols#awsQueryError" => {"code" => "EventDestinationAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EventDestinationDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#EventDestinationDoesNotExistException', name: 'EventDestinationDoesNotExistException', traits: {"aws.protocols#awsQueryError" => {"code" => "EventDestinationDoesNotExist", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EventDestinationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#EventDestinationName', name: 'EventDestinationName')
    EventDestinations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ses#EventDestinations', name: 'EventDestinations')
    EventType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ses#EventType', name: 'EventType')
    EventTypes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ses#EventTypes', name: 'EventTypes')
    Explanation = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#Explanation', name: 'Explanation')
    ExtensionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ExtensionField', name: 'ExtensionField')
    ExtensionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ses#ExtensionFieldList', name: 'ExtensionFieldList')
    ExtensionFieldName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#ExtensionFieldName', name: 'ExtensionFieldName')
    ExtensionFieldValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#ExtensionFieldValue', name: 'ExtensionFieldValue')
    FailureRedirectionURL = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#FailureRedirectionURL', name: 'FailureRedirectionURL')
    FromAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#FromAddress', name: 'FromAddress')
    FromEmailAddressNotVerifiedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#FromEmailAddressNotVerifiedException', name: 'FromEmailAddressNotVerifiedException', traits: {"aws.protocols#awsQueryError" => {"code" => "FromEmailAddressNotVerified", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GetAccountSendingEnabledResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#GetAccountSendingEnabledResponse', name: 'GetAccountSendingEnabledResponse')
    GetCustomVerificationEmailTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#GetCustomVerificationEmailTemplateRequest', name: 'GetCustomVerificationEmailTemplateRequest')
    GetCustomVerificationEmailTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#GetCustomVerificationEmailTemplateResponse', name: 'GetCustomVerificationEmailTemplateResponse')
    GetIdentityDkimAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#GetIdentityDkimAttributesRequest', name: 'GetIdentityDkimAttributesRequest')
    GetIdentityDkimAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#GetIdentityDkimAttributesResponse', name: 'GetIdentityDkimAttributesResponse')
    GetIdentityMailFromDomainAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#GetIdentityMailFromDomainAttributesRequest', name: 'GetIdentityMailFromDomainAttributesRequest')
    GetIdentityMailFromDomainAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#GetIdentityMailFromDomainAttributesResponse', name: 'GetIdentityMailFromDomainAttributesResponse')
    GetIdentityNotificationAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#GetIdentityNotificationAttributesRequest', name: 'GetIdentityNotificationAttributesRequest')
    GetIdentityNotificationAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#GetIdentityNotificationAttributesResponse', name: 'GetIdentityNotificationAttributesResponse')
    GetIdentityPoliciesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#GetIdentityPoliciesRequest', name: 'GetIdentityPoliciesRequest')
    GetIdentityPoliciesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#GetIdentityPoliciesResponse', name: 'GetIdentityPoliciesResponse')
    GetIdentityVerificationAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#GetIdentityVerificationAttributesRequest', name: 'GetIdentityVerificationAttributesRequest')
    GetIdentityVerificationAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#GetIdentityVerificationAttributesResponse', name: 'GetIdentityVerificationAttributesResponse')
    GetSendQuotaResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#GetSendQuotaResponse', name: 'GetSendQuotaResponse')
    GetSendStatisticsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#GetSendStatisticsResponse', name: 'GetSendStatisticsResponse')
    GetTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#GetTemplateRequest', name: 'GetTemplateRequest')
    GetTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#GetTemplateResponse', name: 'GetTemplateResponse')
    HeaderName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#HeaderName', name: 'HeaderName')
    HeaderValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#HeaderValue', name: 'HeaderValue')
    HtmlPart = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#HtmlPart', name: 'HtmlPart')
    IAMRoleARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#IAMRoleARN', name: 'IAMRoleARN', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w-]+:iam::[0-9]+:role(\\u002F)([\\u0021-\\u007E]+\\u002F)?([\\w+=,.@-]+)$"})
    Identity = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#Identity', name: 'Identity')
    IdentityDkimAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#IdentityDkimAttributes', name: 'IdentityDkimAttributes')
    IdentityList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ses#IdentityList', name: 'IdentityList')
    IdentityMailFromDomainAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#IdentityMailFromDomainAttributes', name: 'IdentityMailFromDomainAttributes')
    IdentityNotificationAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#IdentityNotificationAttributes', name: 'IdentityNotificationAttributes')
    IdentityType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ses#IdentityType', name: 'IdentityType')
    IdentityVerificationAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#IdentityVerificationAttributes', name: 'IdentityVerificationAttributes')
    InvalidCloudWatchDestinationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#InvalidCloudWatchDestinationException', name: 'InvalidCloudWatchDestinationException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidCloudWatchDestination", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidConfigurationSetException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#InvalidConfigurationSetException', name: 'InvalidConfigurationSetException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidConfigurationSet", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDeliveryOptionsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#InvalidDeliveryOptionsException', name: 'InvalidDeliveryOptionsException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDeliveryOptions", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidFirehoseDestinationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#InvalidFirehoseDestinationException', name: 'InvalidFirehoseDestinationException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidFirehoseDestination", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidLambdaFunctionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#InvalidLambdaFunctionException', name: 'InvalidLambdaFunctionException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidLambdaFunction", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidPolicyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#InvalidPolicyException', name: 'InvalidPolicyException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidPolicy", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRenderingParameterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#InvalidRenderingParameterException', name: 'InvalidRenderingParameterException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidRenderingParameter", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidS3ConfigurationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#InvalidS3ConfigurationException', name: 'InvalidS3ConfigurationException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidS3Configuration", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSNSDestinationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#InvalidSNSDestinationException', name: 'InvalidSNSDestinationException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSNSDestination", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSnsTopicException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#InvalidSnsTopicException', name: 'InvalidSnsTopicException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSnsTopic", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTemplateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#InvalidTemplateException', name: 'InvalidTemplateException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidTemplate", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTrackingOptionsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#InvalidTrackingOptionsException', name: 'InvalidTrackingOptionsException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidTrackingOptions", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvocationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ses#InvocationType', name: 'InvocationType')
    KinesisFirehoseDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#KinesisFirehoseDestination', name: 'KinesisFirehoseDestination')
    LambdaAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#LambdaAction', name: 'LambdaAction')
    LastAttemptDate = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.ses#LastAttemptDate', name: 'LastAttemptDate')
    LastFreshStart = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.ses#LastFreshStart', name: 'LastFreshStart')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#LimitExceededException', name: 'LimitExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "LimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListConfigurationSetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ListConfigurationSetsRequest', name: 'ListConfigurationSetsRequest')
    ListConfigurationSetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ListConfigurationSetsResponse', name: 'ListConfigurationSetsResponse')
    ListCustomVerificationEmailTemplatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ListCustomVerificationEmailTemplatesRequest', name: 'ListCustomVerificationEmailTemplatesRequest')
    ListCustomVerificationEmailTemplatesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ListCustomVerificationEmailTemplatesResponse', name: 'ListCustomVerificationEmailTemplatesResponse')
    ListIdentitiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ListIdentitiesRequest', name: 'ListIdentitiesRequest')
    ListIdentitiesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ListIdentitiesResponse', name: 'ListIdentitiesResponse')
    ListIdentityPoliciesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ListIdentityPoliciesRequest', name: 'ListIdentityPoliciesRequest')
    ListIdentityPoliciesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ListIdentityPoliciesResponse', name: 'ListIdentityPoliciesResponse')
    ListReceiptFiltersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ListReceiptFiltersRequest', name: 'ListReceiptFiltersRequest')
    ListReceiptFiltersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ListReceiptFiltersResponse', name: 'ListReceiptFiltersResponse')
    ListReceiptRuleSetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ListReceiptRuleSetsRequest', name: 'ListReceiptRuleSetsRequest')
    ListReceiptRuleSetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ListReceiptRuleSetsResponse', name: 'ListReceiptRuleSetsResponse')
    ListTemplatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ListTemplatesRequest', name: 'ListTemplatesRequest')
    ListTemplatesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ListTemplatesResponse', name: 'ListTemplatesResponse')
    ListVerifiedEmailAddressesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ListVerifiedEmailAddressesResponse', name: 'ListVerifiedEmailAddressesResponse')
    MailFromDomainAttributes = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.ses#MailFromDomainAttributes', name: 'MailFromDomainAttributes')
    MailFromDomainName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#MailFromDomainName', name: 'MailFromDomainName')
    MailFromDomainNotVerifiedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#MailFromDomainNotVerifiedException', name: 'MailFromDomainNotVerifiedException', traits: {"aws.protocols#awsQueryError" => {"code" => "MailFromDomainNotVerifiedException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Max24HourSend = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.ses#Max24HourSend', name: 'Max24HourSend', traits: {"smithy.api#default" => 0})
    MaxItems = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ses#MaxItems', name: 'MaxItems')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ses#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxSendRate = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.ses#MaxSendRate', name: 'MaxSendRate', traits: {"smithy.api#default" => 0})
    Message = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#Message', name: 'Message')
    MessageData = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#MessageData', name: 'MessageData')
    MessageDsn = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#MessageDsn', name: 'MessageDsn')
    MessageId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#MessageId', name: 'MessageId')
    MessageRejected = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#MessageRejected', name: 'MessageRejected', traits: {"aws.protocols#awsQueryError" => {"code" => "MessageRejected", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MessageTag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#MessageTag', name: 'MessageTag')
    MessageTagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ses#MessageTagList', name: 'MessageTagList')
    MessageTagName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#MessageTagName', name: 'MessageTagName')
    MessageTagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#MessageTagValue', name: 'MessageTagValue')
    MissingRenderingAttributeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#MissingRenderingAttributeException', name: 'MissingRenderingAttributeException', traits: {"aws.protocols#awsQueryError" => {"code" => "MissingRenderingAttribute", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#NextToken', name: 'NextToken')
    NotificationAttributes = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.ses#NotificationAttributes', name: 'NotificationAttributes')
    NotificationTopic = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#NotificationTopic', name: 'NotificationTopic')
    NotificationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ses#NotificationType', name: 'NotificationType')
    Policy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#Policy', name: 'Policy', traits: {"smithy.api#length" => {"min" => 1}})
    PolicyMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.ses#PolicyMap', name: 'PolicyMap')
    PolicyName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#PolicyName', name: 'PolicyName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    PolicyNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ses#PolicyNameList', name: 'PolicyNameList')
    ProductionAccessNotGrantedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ProductionAccessNotGrantedException', name: 'ProductionAccessNotGrantedException', traits: {"aws.protocols#awsQueryError" => {"code" => "ProductionAccessNotGranted", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PutConfigurationSetDeliveryOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#PutConfigurationSetDeliveryOptionsRequest', name: 'PutConfigurationSetDeliveryOptionsRequest')
    PutConfigurationSetDeliveryOptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#PutConfigurationSetDeliveryOptionsResponse', name: 'PutConfigurationSetDeliveryOptionsResponse')
    PutIdentityPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#PutIdentityPolicyRequest', name: 'PutIdentityPolicyRequest')
    PutIdentityPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#PutIdentityPolicyResponse', name: 'PutIdentityPolicyResponse')
    RawMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#RawMessage', name: 'RawMessage')
    RawMessageData = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.ses#RawMessageData', name: 'RawMessageData')
    ReceiptAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ReceiptAction', name: 'ReceiptAction')
    ReceiptActionsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ses#ReceiptActionsList', name: 'ReceiptActionsList')
    ReceiptFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ReceiptFilter', name: 'ReceiptFilter')
    ReceiptFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ses#ReceiptFilterList', name: 'ReceiptFilterList')
    ReceiptFilterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#ReceiptFilterName', name: 'ReceiptFilterName')
    ReceiptFilterPolicy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ses#ReceiptFilterPolicy', name: 'ReceiptFilterPolicy')
    ReceiptIpFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ReceiptIpFilter', name: 'ReceiptIpFilter')
    ReceiptRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ReceiptRule', name: 'ReceiptRule')
    ReceiptRuleName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#ReceiptRuleName', name: 'ReceiptRuleName')
    ReceiptRuleNamesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ses#ReceiptRuleNamesList', name: 'ReceiptRuleNamesList')
    ReceiptRuleSetMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ReceiptRuleSetMetadata', name: 'ReceiptRuleSetMetadata')
    ReceiptRuleSetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#ReceiptRuleSetName', name: 'ReceiptRuleSetName')
    ReceiptRuleSetsLists = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ses#ReceiptRuleSetsLists', name: 'ReceiptRuleSetsLists')
    ReceiptRulesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ses#ReceiptRulesList', name: 'ReceiptRulesList')
    Recipient = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#Recipient', name: 'Recipient')
    RecipientDsnFields = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#RecipientDsnFields', name: 'RecipientDsnFields')
    RecipientsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ses#RecipientsList', name: 'RecipientsList')
    RemoteMta = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#RemoteMta', name: 'RemoteMta')
    RenderedTemplate = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#RenderedTemplate', name: 'RenderedTemplate')
    ReorderReceiptRuleSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ReorderReceiptRuleSetRequest', name: 'ReorderReceiptRuleSetRequest')
    ReorderReceiptRuleSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ReorderReceiptRuleSetResponse', name: 'ReorderReceiptRuleSetResponse')
    ReportingMta = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#ReportingMta', name: 'ReportingMta')
    ReputationOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#ReputationOptions', name: 'ReputationOptions')
    RuleDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#RuleDoesNotExistException', name: 'RuleDoesNotExistException', traits: {"aws.protocols#awsQueryError" => {"code" => "RuleDoesNotExist", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RuleOrRuleSetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#RuleOrRuleSetName', name: 'RuleOrRuleSetName')
    RuleSetDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#RuleSetDoesNotExistException', name: 'RuleSetDoesNotExistException', traits: {"aws.protocols#awsQueryError" => {"code" => "RuleSetDoesNotExist", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    S3Action = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#S3Action', name: 'S3Action')
    S3BucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#S3BucketName', name: 'S3BucketName')
    S3KeyPrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#S3KeyPrefix', name: 'S3KeyPrefix')
    SNSAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SNSAction', name: 'SNSAction')
    SNSActionEncoding = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ses#SNSActionEncoding', name: 'SNSActionEncoding')
    SNSDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SNSDestination', name: 'SNSDestination')
    SendBounceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SendBounceRequest', name: 'SendBounceRequest')
    SendBounceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SendBounceResponse', name: 'SendBounceResponse')
    SendBulkTemplatedEmailRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SendBulkTemplatedEmailRequest', name: 'SendBulkTemplatedEmailRequest')
    SendBulkTemplatedEmailResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SendBulkTemplatedEmailResponse', name: 'SendBulkTemplatedEmailResponse')
    SendCustomVerificationEmailRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SendCustomVerificationEmailRequest', name: 'SendCustomVerificationEmailRequest')
    SendCustomVerificationEmailResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SendCustomVerificationEmailResponse', name: 'SendCustomVerificationEmailResponse')
    SendDataPoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SendDataPoint', name: 'SendDataPoint')
    SendDataPointList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ses#SendDataPointList', name: 'SendDataPointList')
    SendEmailRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SendEmailRequest', name: 'SendEmailRequest')
    SendEmailResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SendEmailResponse', name: 'SendEmailResponse')
    SendRawEmailRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SendRawEmailRequest', name: 'SendRawEmailRequest')
    SendRawEmailResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SendRawEmailResponse', name: 'SendRawEmailResponse')
    SendTemplatedEmailRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SendTemplatedEmailRequest', name: 'SendTemplatedEmailRequest')
    SendTemplatedEmailResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SendTemplatedEmailResponse', name: 'SendTemplatedEmailResponse')
    SentLast24Hours = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.ses#SentLast24Hours', name: 'SentLast24Hours', traits: {"smithy.api#default" => 0})
    SetActiveReceiptRuleSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SetActiveReceiptRuleSetRequest', name: 'SetActiveReceiptRuleSetRequest')
    SetActiveReceiptRuleSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SetActiveReceiptRuleSetResponse', name: 'SetActiveReceiptRuleSetResponse')
    SetIdentityDkimEnabledRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SetIdentityDkimEnabledRequest', name: 'SetIdentityDkimEnabledRequest')
    SetIdentityDkimEnabledResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SetIdentityDkimEnabledResponse', name: 'SetIdentityDkimEnabledResponse')
    SetIdentityFeedbackForwardingEnabledRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SetIdentityFeedbackForwardingEnabledRequest', name: 'SetIdentityFeedbackForwardingEnabledRequest')
    SetIdentityFeedbackForwardingEnabledResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SetIdentityFeedbackForwardingEnabledResponse', name: 'SetIdentityFeedbackForwardingEnabledResponse')
    SetIdentityHeadersInNotificationsEnabledRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SetIdentityHeadersInNotificationsEnabledRequest', name: 'SetIdentityHeadersInNotificationsEnabledRequest')
    SetIdentityHeadersInNotificationsEnabledResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SetIdentityHeadersInNotificationsEnabledResponse', name: 'SetIdentityHeadersInNotificationsEnabledResponse')
    SetIdentityMailFromDomainRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SetIdentityMailFromDomainRequest', name: 'SetIdentityMailFromDomainRequest')
    SetIdentityMailFromDomainResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SetIdentityMailFromDomainResponse', name: 'SetIdentityMailFromDomainResponse')
    SetIdentityNotificationTopicRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SetIdentityNotificationTopicRequest', name: 'SetIdentityNotificationTopicRequest')
    SetIdentityNotificationTopicResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SetIdentityNotificationTopicResponse', name: 'SetIdentityNotificationTopicResponse')
    SetReceiptRulePositionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SetReceiptRulePositionRequest', name: 'SetReceiptRulePositionRequest')
    SetReceiptRulePositionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#SetReceiptRulePositionResponse', name: 'SetReceiptRulePositionResponse')
    StopAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#StopAction', name: 'StopAction')
    StopScope = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ses#StopScope', name: 'StopScope')
    Subject = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#Subject', name: 'Subject')
    SubjectPart = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#SubjectPart', name: 'SubjectPart')
    SuccessRedirectionURL = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#SuccessRedirectionURL', name: 'SuccessRedirectionURL')
    Template = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#Template', name: 'Template')
    TemplateContent = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#TemplateContent', name: 'TemplateContent')
    TemplateData = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#TemplateData', name: 'TemplateData', traits: {"smithy.api#length" => {"min" => 0, "max" => 262144}})
    TemplateDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#TemplateDoesNotExistException', name: 'TemplateDoesNotExistException', traits: {"aws.protocols#awsQueryError" => {"code" => "TemplateDoesNotExist", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TemplateMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#TemplateMetadata', name: 'TemplateMetadata')
    TemplateMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ses#TemplateMetadataList', name: 'TemplateMetadataList')
    TemplateName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#TemplateName', name: 'TemplateName')
    TestRenderTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#TestRenderTemplateRequest', name: 'TestRenderTemplateRequest')
    TestRenderTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#TestRenderTemplateResponse', name: 'TestRenderTemplateResponse')
    TextPart = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#TextPart', name: 'TextPart')
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.ses#Timestamp', name: 'Timestamp')
    TlsPolicy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ses#TlsPolicy', name: 'TlsPolicy')
    TrackingOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#TrackingOptions', name: 'TrackingOptions')
    TrackingOptionsAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#TrackingOptionsAlreadyExistsException', name: 'TrackingOptionsAlreadyExistsException', traits: {"aws.protocols#awsQueryError" => {"code" => "TrackingOptionsAlreadyExistsException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TrackingOptionsDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#TrackingOptionsDoesNotExistException', name: 'TrackingOptionsDoesNotExistException', traits: {"aws.protocols#awsQueryError" => {"code" => "TrackingOptionsDoesNotExistException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UpdateAccountSendingEnabledRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#UpdateAccountSendingEnabledRequest', name: 'UpdateAccountSendingEnabledRequest')
    UpdateConfigurationSetEventDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#UpdateConfigurationSetEventDestinationRequest', name: 'UpdateConfigurationSetEventDestinationRequest')
    UpdateConfigurationSetEventDestinationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#UpdateConfigurationSetEventDestinationResponse', name: 'UpdateConfigurationSetEventDestinationResponse')
    UpdateConfigurationSetReputationMetricsEnabledRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#UpdateConfigurationSetReputationMetricsEnabledRequest', name: 'UpdateConfigurationSetReputationMetricsEnabledRequest')
    UpdateConfigurationSetSendingEnabledRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#UpdateConfigurationSetSendingEnabledRequest', name: 'UpdateConfigurationSetSendingEnabledRequest')
    UpdateConfigurationSetTrackingOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#UpdateConfigurationSetTrackingOptionsRequest', name: 'UpdateConfigurationSetTrackingOptionsRequest')
    UpdateConfigurationSetTrackingOptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#UpdateConfigurationSetTrackingOptionsResponse', name: 'UpdateConfigurationSetTrackingOptionsResponse')
    UpdateCustomVerificationEmailTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#UpdateCustomVerificationEmailTemplateRequest', name: 'UpdateCustomVerificationEmailTemplateRequest')
    UpdateReceiptRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#UpdateReceiptRuleRequest', name: 'UpdateReceiptRuleRequest')
    UpdateReceiptRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#UpdateReceiptRuleResponse', name: 'UpdateReceiptRuleResponse')
    UpdateTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#UpdateTemplateRequest', name: 'UpdateTemplateRequest')
    UpdateTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#UpdateTemplateResponse', name: 'UpdateTemplateResponse')
    VerificationAttributes = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.ses#VerificationAttributes', name: 'VerificationAttributes')
    VerificationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ses#VerificationStatus', name: 'VerificationStatus')
    VerificationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ses#VerificationToken', name: 'VerificationToken')
    VerificationTokenList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ses#VerificationTokenList', name: 'VerificationTokenList')
    VerifyDomainDkimRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#VerifyDomainDkimRequest', name: 'VerifyDomainDkimRequest')
    VerifyDomainDkimResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#VerifyDomainDkimResponse', name: 'VerifyDomainDkimResponse')
    VerifyDomainIdentityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#VerifyDomainIdentityRequest', name: 'VerifyDomainIdentityRequest')
    VerifyDomainIdentityResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#VerifyDomainIdentityResponse', name: 'VerifyDomainIdentityResponse')
    VerifyEmailAddressRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#VerifyEmailAddressRequest', name: 'VerifyEmailAddressRequest')
    VerifyEmailIdentityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#VerifyEmailIdentityRequest', name: 'VerifyEmailIdentityRequest')
    VerifyEmailIdentityResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#VerifyEmailIdentityResponse', name: 'VerifyEmailIdentityResponse')
    WorkmailAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ses#WorkmailAction', name: 'WorkmailAction')

    AccountSendingPausedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    AccountSendingPausedException.type = Types::AccountSendingPausedException
    AddHeaderAction.add_member(:header_name, Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderName, location_name: 'HeaderName', traits: {"smithy.api#documentation" => "<p>The name of the header to add to the incoming message. The name must contain at least\n            one character, and can contain up to 50 characters. It consists of alphanumeric (a–z,\n            A–Z, 0–9) characters and dashes.</p>", "smithy.api#required" => {}}))
    AddHeaderAction.add_member(:header_value, Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderValue, location_name: 'HeaderValue', traits: {"smithy.api#documentation" => "<p>The content to include in the header. This value can contain up to 2048 characters. It\n            can't contain newline (<code>\\n</code>) or carriage return (<code>\\r</code>)\n            characters.</p>", "smithy.api#required" => {}}))
    AddHeaderAction.type = Types::AddHeaderAction
    AddressList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Address)
    AlreadyExistsException.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleOrRuleSetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Indicates that a resource could not be created because the resource name already\n            exists.</p>"}))
    AlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    AlreadyExistsException.type = Types::AlreadyExistsException
    BehaviorOnMXFailure.add_member(:use_default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UseDefaultValue', traits: {"smithy.api#enumValue" => "UseDefaultValue"}))
    BehaviorOnMXFailure.add_member(:reject_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RejectMessage', traits: {"smithy.api#enumValue" => "RejectMessage"}))
    Body.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: Content, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>The content of the message, in text format. Use this for text-based email clients, or\n            clients on high-latency networks (such as mobile devices).</p>"}))
    Body.add_member(:html, Smithy::Schema::Shapes::ShapeRef.new(shape: Content, location_name: 'Html', traits: {"smithy.api#documentation" => "<p>The content of the message, in HTML format. Use this for email clients that can\n            process HTML. You can include clickable links, formatted text, and much more in an HTML\n            message.</p>"}))
    Body.type = Types::Body
    BounceAction.add_member(:topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'TopicArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when the bounce action is\n            taken. You can find the ARN of a topic by using the <a href=\"https://docs.aws.amazon.com/sns/latest/api/API_ListTopics.html\">ListTopics</a> operation in\n            Amazon SNS.</p>\n         <p>For more information about Amazon SNS topics, see the <a href=\"https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html\">Amazon SNS Developer Guide</a>.</p>"}))
    BounceAction.add_member(:smtp_reply_code, Smithy::Schema::Shapes::ShapeRef.new(shape: BounceSmtpReplyCode, location_name: 'SmtpReplyCode', traits: {"smithy.api#documentation" => "<p>The SMTP reply code, as defined by <a href=\"https://tools.ietf.org/html/rfc5321\">RFC 5321</a>.</p>", "smithy.api#required" => {}}))
    BounceAction.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: BounceStatusCode, location_name: 'StatusCode', traits: {"smithy.api#documentation" => "<p>The SMTP enhanced status code, as defined by <a href=\"https://tools.ietf.org/html/rfc3463\">RFC 3463</a>.</p>"}))
    BounceAction.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: BounceMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Human-readable text to include in the bounce message.</p>", "smithy.api#required" => {}}))
    BounceAction.add_member(:sender, Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'Sender', traits: {"smithy.api#documentation" => "<p>The email address of the sender of the bounced email. This is the address from which\n            the bounce message is sent.</p>", "smithy.api#required" => {}}))
    BounceAction.type = Types::BounceAction
    BounceType.add_member(:does_not_exist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DoesNotExist', traits: {"smithy.api#enumValue" => "DoesNotExist"}))
    BounceType.add_member(:message_too_large, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MessageTooLarge', traits: {"smithy.api#enumValue" => "MessageTooLarge"}))
    BounceType.add_member(:exceeded_quota, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ExceededQuota', traits: {"smithy.api#enumValue" => "ExceededQuota"}))
    BounceType.add_member(:content_rejected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ContentRejected', traits: {"smithy.api#enumValue" => "ContentRejected"}))
    BounceType.add_member(:undefined, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Undefined', traits: {"smithy.api#enumValue" => "Undefined"}))
    BounceType.add_member(:temporary_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TemporaryFailure', traits: {"smithy.api#enumValue" => "TemporaryFailure"}))
    BouncedRecipientInfo.add_member(:recipient, Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'Recipient', traits: {"smithy.api#documentation" => "<p>The email address of the recipient of the bounced email.</p>", "smithy.api#required" => {}}))
    BouncedRecipientInfo.add_member(:recipient_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'RecipientArn', traits: {"smithy.api#documentation" => "<p>This parameter is used only for sending authorization. It is the ARN of the identity\n            that is associated with the sending authorization policy that permits you to receive\n            email for the recipient of the bounced email. For more information about sending\n            authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html\">Amazon SES Developer Guide</a>.</p>"}))
    BouncedRecipientInfo.add_member(:bounce_type, Smithy::Schema::Shapes::ShapeRef.new(shape: BounceType, location_name: 'BounceType', traits: {"smithy.api#documentation" => "<p>The reason for the bounce. You must provide either this parameter or\n                <code>RecipientDsnFields</code>.</p>"}))
    BouncedRecipientInfo.add_member(:recipient_dsn_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipientDsnFields, location_name: 'RecipientDsnFields', traits: {"smithy.api#documentation" => "<p>Recipient-related DSN fields, most of which would normally be filled in automatically\n            when provided with a <code>BounceType</code>. You must provide either this parameter or\n                <code>BounceType</code>.</p>"}))
    BouncedRecipientInfo.type = Types::BouncedRecipientInfo
    BouncedRecipientInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BouncedRecipientInfo)
    BulkEmailDestination.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 'Destination', traits: {"smithy.api#required" => {}}))
    BulkEmailDestination.add_member(:replacement_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTagList, location_name: 'ReplacementTags', traits: {"smithy.api#documentation" => "<p>A list of tags, in the form of name/value pairs, to apply to an email that you send\n            using <code>SendBulkTemplatedEmail</code>. Tags correspond to characteristics of the\n            email that you define, so that you can publish email sending events.</p>"}))
    BulkEmailDestination.add_member(:replacement_template_data, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateData, location_name: 'ReplacementTemplateData', traits: {"smithy.api#documentation" => "<p>A list of replacement values to apply to the template. This parameter is a JSON\n            object, typically consisting of key-value pairs in which the keys correspond to\n            replacement tags in the email template.</p>"}))
    BulkEmailDestination.type = Types::BulkEmailDestination
    BulkEmailDestinationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BulkEmailDestination)
    BulkEmailDestinationStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: BulkEmailStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of a message sent using the <code>SendBulkTemplatedEmail</code>\n            operation.</p>\n         <p>Possible values for this parameter include:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Success</code>: Amazon SES accepted the message, and attempts to deliver it\n                    to the recipients.</p>\n            </li>\n            <li>\n               <p>\n                  <code>MessageRejected</code>: The message was rejected because it contained a\n                    virus.</p>\n            </li>\n            <li>\n               <p>\n                  <code>MailFromDomainNotVerified</code>: The sender's email address or domain\n                    was not verified.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ConfigurationSetDoesNotExist</code>: The configuration set you specified\n                    does not exist.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TemplateDoesNotExist</code>: The template you specified does not\n                    exist.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AccountSuspended</code>: Your account has been shut down because of\n                    issues related to your email sending practices.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AccountThrottled</code>: The number of emails you can send has been\n                    reduced because your account has exceeded its allocated sending limit.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AccountDailyQuotaExceeded</code>: You have reached or exceeded the\n                    maximum number of emails you can send from your account in a 24-hour\n                    period.</p>\n            </li>\n            <li>\n               <p>\n                  <code>InvalidSendingPoolName</code>: The configuration set you specified\n                    refers to an IP pool that does not exist.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AccountSendingPaused</code>: Email sending for the Amazon SES account was\n                    disabled using the <a>UpdateAccountSendingEnabled</a>\n                    operation.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ConfigurationSetSendingPaused</code>: Email sending for this\n                    configuration set was disabled using the <a>UpdateConfigurationSetSendingEnabled</a> operation.</p>\n            </li>\n            <li>\n               <p>\n                  <code>InvalidParameterValue</code>: One or more of the parameters you\n                    specified when calling this operation was invalid. See the error message for\n                    additional information.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TransientFailure</code>: Amazon SES was unable to process your request\n                    because of a temporary issue.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Failed</code>: Amazon SES was unable to process your request. See the error\n                    message for additional information.</p>\n            </li>\n         </ul>"}))
    BulkEmailDestinationStatus.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>A description of an error that prevented a message being sent using the\n                <code>SendBulkTemplatedEmail</code> operation.</p>"}))
    BulkEmailDestinationStatus.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The unique message identifier returned from the <code>SendBulkTemplatedEmail</code>\n            operation.</p>"}))
    BulkEmailDestinationStatus.type = Types::BulkEmailDestinationStatus
    BulkEmailDestinationStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BulkEmailDestinationStatus)
    BulkEmailStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Success', traits: {"smithy.api#enumValue" => "Success"}))
    BulkEmailStatus.add_member(:message_rejected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MessageRejected', traits: {"smithy.api#enumValue" => "MessageRejected"}))
    BulkEmailStatus.add_member(:mail_from_domain_not_verified, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MailFromDomainNotVerified', traits: {"smithy.api#enumValue" => "MailFromDomainNotVerified"}))
    BulkEmailStatus.add_member(:configuration_set_does_not_exist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ConfigurationSetDoesNotExist', traits: {"smithy.api#enumValue" => "ConfigurationSetDoesNotExist"}))
    BulkEmailStatus.add_member(:template_does_not_exist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TemplateDoesNotExist', traits: {"smithy.api#enumValue" => "TemplateDoesNotExist"}))
    BulkEmailStatus.add_member(:account_suspended, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AccountSuspended', traits: {"smithy.api#enumValue" => "AccountSuspended"}))
    BulkEmailStatus.add_member(:account_throttled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AccountThrottled', traits: {"smithy.api#enumValue" => "AccountThrottled"}))
    BulkEmailStatus.add_member(:account_daily_quota_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AccountDailyQuotaExceeded', traits: {"smithy.api#enumValue" => "AccountDailyQuotaExceeded"}))
    BulkEmailStatus.add_member(:invalid_sending_pool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidSendingPoolName', traits: {"smithy.api#enumValue" => "InvalidSendingPoolName"}))
    BulkEmailStatus.add_member(:account_sending_paused, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AccountSendingPaused', traits: {"smithy.api#enumValue" => "AccountSendingPaused"}))
    BulkEmailStatus.add_member(:configuration_set_sending_paused, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ConfigurationSetSendingPaused', traits: {"smithy.api#enumValue" => "ConfigurationSetSendingPaused"}))
    BulkEmailStatus.add_member(:invalid_parameter_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidParameterValue', traits: {"smithy.api#enumValue" => "InvalidParameterValue"}))
    BulkEmailStatus.add_member(:transient_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TransientFailure', traits: {"smithy.api#enumValue" => "TransientFailure"}))
    BulkEmailStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    CannotDeleteException.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleOrRuleSetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Indicates that a resource could not be deleted because no resource with the specified\n            name exists.</p>"}))
    CannotDeleteException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    CannotDeleteException.type = Types::CannotDeleteException
    CloneReceiptRuleSetRequest.add_member(:rule_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRuleSetName, location_name: 'RuleSetName', traits: {"smithy.api#documentation" => "<p>The name of the rule set to create. The name must meet the following\n            requirements:</p>\n         <ul>\n            <li>\n               <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or\n                    dashes (-).</p>\n            </li>\n            <li>\n               <p>Start and end with a letter or number.</p>\n            </li>\n            <li>\n               <p>Contain 64 characters or fewer.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CloneReceiptRuleSetRequest.add_member(:original_rule_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRuleSetName, location_name: 'OriginalRuleSetName', traits: {"smithy.api#documentation" => "<p>The name of the rule set to clone.</p>", "smithy.api#required" => {}}))
    CloneReceiptRuleSetRequest.type = Types::CloneReceiptRuleSetRequest
    CloneReceiptRuleSetResponse.type = Types::CloneReceiptRuleSetResponse
    CloudWatchDestination.add_member(:dimension_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchDimensionConfigurations, location_name: 'DimensionConfigurations', traits: {"smithy.api#documentation" => "<p>A list of dimensions upon which to categorize your emails when you publish email\n            sending events to Amazon CloudWatch.</p>", "smithy.api#required" => {}}))
    CloudWatchDestination.type = Types::CloudWatchDestination
    CloudWatchDimensionConfiguration.add_member(:dimension_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionName, location_name: 'DimensionName', traits: {"smithy.api#documentation" => "<p>The name of an Amazon CloudWatch dimension associated with an email sending metric. The name\n            must meet the following requirements:</p>\n         <ul>\n            <li>\n               <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), dashes\n                    (-), or colons (:).</p>\n            </li>\n            <li>\n               <p>Contain 256 characters or fewer.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CloudWatchDimensionConfiguration.add_member(:dimension_value_source, Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionValueSource, location_name: 'DimensionValueSource', traits: {"smithy.api#documentation" => "<p>The place where Amazon SES finds the value of a dimension to publish to Amazon CloudWatch. To use\n            the message tags that you specify using an <code>X-SES-MESSAGE-TAGS</code> header or a\n            parameter to the <code>SendEmail</code>/<code>SendRawEmail</code> API, specify\n                <code>messageTag</code>. To use your own email headers, specify\n                <code>emailHeader</code>. To put a custom tag on any link included in your email,\n            specify <code>linkTag</code>.</p>", "smithy.api#required" => {}}))
    CloudWatchDimensionConfiguration.add_member(:default_dimension_value, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultDimensionValue, location_name: 'DefaultDimensionValue', traits: {"smithy.api#documentation" => "<p>The default value of the dimension that is published to Amazon CloudWatch if you do not provide\n            the value of the dimension when you send an email. The default value must meet the\n            following requirements:</p>\n         <ul>\n            <li>\n               <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), dashes\n                    (-), at signs (@), or periods (.).</p>\n            </li>\n            <li>\n               <p>Contain 256 characters or fewer.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CloudWatchDimensionConfiguration.type = Types::CloudWatchDimensionConfiguration
    CloudWatchDimensionConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchDimensionConfiguration)
    ConfigurationSet.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the configuration set. The name must meet the following\n            requirements:</p>\n         <ul>\n            <li>\n               <p>Contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes\n                    (-).</p>\n            </li>\n            <li>\n               <p>Contain 64 characters or fewer.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    ConfigurationSet.type = Types::ConfigurationSet
    ConfigurationSetAlreadyExistsException.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>Indicates that the configuration set does not exist.</p>"}))
    ConfigurationSetAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ConfigurationSetAlreadyExistsException.type = Types::ConfigurationSetAlreadyExistsException
    ConfigurationSetAttribute.add_member(:event_destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EVENT_DESTINATIONS', traits: {"smithy.api#enumValue" => "eventDestinations"}))
    ConfigurationSetAttribute.add_member(:tracking_options, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRACKING_OPTIONS', traits: {"smithy.api#enumValue" => "trackingOptions"}))
    ConfigurationSetAttribute.add_member(:delivery_options, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELIVERY_OPTIONS', traits: {"smithy.api#enumValue" => "deliveryOptions"}))
    ConfigurationSetAttribute.add_member(:reputation_options, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPUTATION_OPTIONS', traits: {"smithy.api#enumValue" => "reputationOptions"}))
    ConfigurationSetAttributeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetAttribute)
    ConfigurationSetDoesNotExistException.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>Indicates that the configuration set does not exist.</p>"}))
    ConfigurationSetDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ConfigurationSetDoesNotExistException.type = Types::ConfigurationSetDoesNotExistException
    ConfigurationSetSendingPausedException.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set for which email sending is disabled.</p>"}))
    ConfigurationSetSendingPausedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ConfigurationSetSendingPausedException.type = Types::ConfigurationSetSendingPausedException
    ConfigurationSets.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSet)
    ConnectAction.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectInstanceArn, location_name: 'InstanceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the Amazon Connect instance that Amazon SES integrates with for starting\n            email contacts.</p>\n         <p>For more information about Amazon Connect instances, see the <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-instances.html\">Amazon Connect Administrator Guide</a>\n         </p>", "smithy.api#required" => {}}))
    ConnectAction.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleARN, location_name: 'IAMRoleARN', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the IAM role to be used by Amazon Simple Email Service while starting email contacts\n            to the Amazon Connect instance. This role should have permission to invoke <code>connect:StartEmailContact</code>\n            for the given Amazon Connect instance.</p>", "smithy.api#required" => {}}))
    ConnectAction.type = Types::ConnectAction
    Content.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageData, location_name: 'Data', traits: {"smithy.api#documentation" => "<p>The textual data of the content.</p>", "smithy.api#required" => {}}))
    Content.add_member(:charset, Smithy::Schema::Shapes::ShapeRef.new(shape: Charset, location_name: 'Charset', traits: {"smithy.api#documentation" => "<p>The character set of the content.</p>"}))
    Content.type = Types::Content
    CreateConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set that the event destination should be associated\n            with.</p>", "smithy.api#required" => {}}))
    CreateConfigurationSetEventDestinationRequest.add_member(:event_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestination, location_name: 'EventDestination', traits: {"smithy.api#documentation" => "<p>An object that describes the Amazon Web Services service that email sending event where information\n            is published.</p>", "smithy.api#required" => {}}))
    CreateConfigurationSetEventDestinationRequest.type = Types::CreateConfigurationSetEventDestinationRequest
    CreateConfigurationSetEventDestinationResponse.type = Types::CreateConfigurationSetEventDestinationResponse
    CreateConfigurationSetRequest.add_member(:configuration_set, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSet, location_name: 'ConfigurationSet', traits: {"smithy.api#documentation" => "<p>A data structure that contains the name of the configuration set.</p>", "smithy.api#required" => {}}))
    CreateConfigurationSetRequest.type = Types::CreateConfigurationSetRequest
    CreateConfigurationSetResponse.type = Types::CreateConfigurationSetResponse
    CreateConfigurationSetTrackingOptionsRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set that the tracking options should be associated\n            with.</p>", "smithy.api#required" => {}}))
    CreateConfigurationSetTrackingOptionsRequest.add_member(:tracking_options, Smithy::Schema::Shapes::ShapeRef.new(shape: TrackingOptions, location_name: 'TrackingOptions', traits: {"smithy.api#required" => {}}))
    CreateConfigurationSetTrackingOptionsRequest.type = Types::CreateConfigurationSetTrackingOptionsRequest
    CreateConfigurationSetTrackingOptionsResponse.type = Types::CreateConfigurationSetTrackingOptionsResponse
    CreateCustomVerificationEmailTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the custom verification email template.</p>", "smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.add_member(:from_email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: FromAddress, location_name: 'FromEmailAddress', traits: {"smithy.api#documentation" => "<p>The email address that the custom verification email is sent from.</p>", "smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.add_member(:template_subject, Smithy::Schema::Shapes::ShapeRef.new(shape: Subject, location_name: 'TemplateSubject', traits: {"smithy.api#documentation" => "<p>The subject line of the custom verification email.</p>", "smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.add_member(:template_content, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateContent, location_name: 'TemplateContent', traits: {"smithy.api#documentation" => "<p>The content of the custom verification email. The total size of the email must be less\n            than 10 MB. The message body may contain HTML, with some limitations. For more\n            information, see <a href=\"https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom\">Custom\n                Verification Email Frequently Asked Questions</a> in the <i>Amazon SES\n                Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.add_member(:success_redirection_url, Smithy::Schema::Shapes::ShapeRef.new(shape: SuccessRedirectionURL, location_name: 'SuccessRedirectionURL', traits: {"smithy.api#documentation" => "<p>The URL that the recipient of the verification email is sent to if his or her address\n            is successfully verified.</p>", "smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.add_member(:failure_redirection_url, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureRedirectionURL, location_name: 'FailureRedirectionURL', traits: {"smithy.api#documentation" => "<p>The URL that the recipient of the verification email is sent to if his or her address\n            is not successfully verified.</p>", "smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.type = Types::CreateCustomVerificationEmailTemplateRequest
    CreateReceiptFilterRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>A data structure that describes the IP address filter to create, which consists of a\n            name, an IP address range, and whether to allow or block mail from it.</p>", "smithy.api#required" => {}}))
    CreateReceiptFilterRequest.type = Types::CreateReceiptFilterRequest
    CreateReceiptFilterResponse.type = Types::CreateReceiptFilterResponse
    CreateReceiptRuleRequest.add_member(:rule_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRuleSetName, location_name: 'RuleSetName', traits: {"smithy.api#documentation" => "<p>The name of the rule set where the receipt rule is added.</p>", "smithy.api#required" => {}}))
    CreateReceiptRuleRequest.add_member(:after, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRuleName, location_name: 'After', traits: {"smithy.api#documentation" => "<p>The name of an existing rule after which the new rule is placed. If this parameter is\n            null, the new rule is inserted at the beginning of the rule list.</p>"}))
    CreateReceiptRuleRequest.add_member(:rule, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRule, location_name: 'Rule', traits: {"smithy.api#documentation" => "<p>A data structure that contains the specified rule's name, actions, recipients,\n            domains, enabled status, scan status, and TLS policy.</p>", "smithy.api#required" => {}}))
    CreateReceiptRuleRequest.type = Types::CreateReceiptRuleRequest
    CreateReceiptRuleResponse.type = Types::CreateReceiptRuleResponse
    CreateReceiptRuleSetRequest.add_member(:rule_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRuleSetName, location_name: 'RuleSetName', traits: {"smithy.api#documentation" => "<p>The name of the rule set to create. The name must meet the following\n            requirements:</p>\n         <ul>\n            <li>\n               <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or\n                    dashes (-).</p>\n            </li>\n            <li>\n               <p>Start and end with a letter or number.</p>\n            </li>\n            <li>\n               <p>Contain 64 characters or fewer.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateReceiptRuleSetRequest.type = Types::CreateReceiptRuleSetRequest
    CreateReceiptRuleSetResponse.type = Types::CreateReceiptRuleSetResponse
    CreateTemplateRequest.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: Template, location_name: 'Template', traits: {"smithy.api#documentation" => "<p>The content of the email, composed of a subject line and either an HTML part or a\n            text-only part.</p>", "smithy.api#required" => {}}))
    CreateTemplateRequest.type = Types::CreateTemplateRequest
    CreateTemplateResponse.type = Types::CreateTemplateResponse
    CustomMailFromStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pending', traits: {"smithy.api#enumValue" => "Pending"}))
    CustomMailFromStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Success', traits: {"smithy.api#enumValue" => "Success"}))
    CustomMailFromStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    CustomMailFromStatus.add_member(:temporary_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TemporaryFailure', traits: {"smithy.api#enumValue" => "TemporaryFailure"}))
    CustomVerificationEmailInvalidContentException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    CustomVerificationEmailInvalidContentException.type = Types::CustomVerificationEmailInvalidContentException
    CustomVerificationEmailTemplate.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the custom verification email template.</p>"}))
    CustomVerificationEmailTemplate.add_member(:from_email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: FromAddress, location_name: 'FromEmailAddress', traits: {"smithy.api#documentation" => "<p>The email address that the custom verification email is sent from.</p>"}))
    CustomVerificationEmailTemplate.add_member(:template_subject, Smithy::Schema::Shapes::ShapeRef.new(shape: Subject, location_name: 'TemplateSubject', traits: {"smithy.api#documentation" => "<p>The subject line of the custom verification email.</p>"}))
    CustomVerificationEmailTemplate.add_member(:success_redirection_url, Smithy::Schema::Shapes::ShapeRef.new(shape: SuccessRedirectionURL, location_name: 'SuccessRedirectionURL', traits: {"smithy.api#documentation" => "<p>The URL that the recipient of the verification email is sent to if his or her address\n            is successfully verified.</p>"}))
    CustomVerificationEmailTemplate.add_member(:failure_redirection_url, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureRedirectionURL, location_name: 'FailureRedirectionURL', traits: {"smithy.api#documentation" => "<p>The URL that the recipient of the verification email is sent to if his or her address\n            is not successfully verified.</p>"}))
    CustomVerificationEmailTemplate.type = Types::CustomVerificationEmailTemplate
    CustomVerificationEmailTemplateAlreadyExistsException.add_member(:custom_verification_email_template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'CustomVerificationEmailTemplateName', traits: {"smithy.api#documentation" => "<p>Indicates that the provided custom verification email template with the specified\n            template name already exists.</p>"}))
    CustomVerificationEmailTemplateAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    CustomVerificationEmailTemplateAlreadyExistsException.type = Types::CustomVerificationEmailTemplateAlreadyExistsException
    CustomVerificationEmailTemplateDoesNotExistException.add_member(:custom_verification_email_template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'CustomVerificationEmailTemplateName', traits: {"smithy.api#documentation" => "<p>Indicates that the provided custom verification email template does not exist.</p>"}))
    CustomVerificationEmailTemplateDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    CustomVerificationEmailTemplateDoesNotExistException.type = Types::CustomVerificationEmailTemplateDoesNotExistException
    CustomVerificationEmailTemplates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomVerificationEmailTemplate)
    DeleteConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set from which to delete the event destination.</p>", "smithy.api#required" => {}}))
    DeleteConfigurationSetEventDestinationRequest.add_member(:event_destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationName, location_name: 'EventDestinationName', traits: {"smithy.api#documentation" => "<p>The name of the event destination to delete.</p>", "smithy.api#required" => {}}))
    DeleteConfigurationSetEventDestinationRequest.type = Types::DeleteConfigurationSetEventDestinationRequest
    DeleteConfigurationSetEventDestinationResponse.type = Types::DeleteConfigurationSetEventDestinationResponse
    DeleteConfigurationSetRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set to delete.</p>", "smithy.api#required" => {}}))
    DeleteConfigurationSetRequest.type = Types::DeleteConfigurationSetRequest
    DeleteConfigurationSetResponse.type = Types::DeleteConfigurationSetResponse
    DeleteConfigurationSetTrackingOptionsRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set.</p>", "smithy.api#required" => {}}))
    DeleteConfigurationSetTrackingOptionsRequest.type = Types::DeleteConfigurationSetTrackingOptionsRequest
    DeleteConfigurationSetTrackingOptionsResponse.type = Types::DeleteConfigurationSetTrackingOptionsResponse
    DeleteCustomVerificationEmailTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the custom verification email template to delete.</p>", "smithy.api#required" => {}}))
    DeleteCustomVerificationEmailTemplateRequest.type = Types::DeleteCustomVerificationEmailTemplateRequest
    DeleteIdentityPolicyRequest.add_member(:identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'Identity', traits: {"smithy.api#documentation" => "<p>The identity that is associated with the policy to delete. You can specify the\n            identity by using its name or by using its Amazon Resource Name (ARN). Examples:\n                <code>user@example.com</code>, <code>example.com</code>,\n                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>\n         <p>To successfully call this operation, you must own the identity.</p>", "smithy.api#required" => {}}))
    DeleteIdentityPolicyRequest.add_member(:policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'PolicyName', traits: {"smithy.api#documentation" => "<p>The name of the policy to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteIdentityPolicyRequest.type = Types::DeleteIdentityPolicyRequest
    DeleteIdentityPolicyResponse.type = Types::DeleteIdentityPolicyResponse
    DeleteIdentityRequest.add_member(:identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'Identity', traits: {"smithy.api#documentation" => "<p>The identity to be removed from the list of identities for the Amazon Web Services account.</p>", "smithy.api#required" => {}}))
    DeleteIdentityRequest.type = Types::DeleteIdentityRequest
    DeleteIdentityResponse.type = Types::DeleteIdentityResponse
    DeleteReceiptFilterRequest.add_member(:filter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptFilterName, location_name: 'FilterName', traits: {"smithy.api#documentation" => "<p>The name of the IP address filter to delete.</p>", "smithy.api#required" => {}}))
    DeleteReceiptFilterRequest.type = Types::DeleteReceiptFilterRequest
    DeleteReceiptFilterResponse.type = Types::DeleteReceiptFilterResponse
    DeleteReceiptRuleRequest.add_member(:rule_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRuleSetName, location_name: 'RuleSetName', traits: {"smithy.api#documentation" => "<p>The name of the receipt rule set that contains the receipt rule to delete.</p>", "smithy.api#required" => {}}))
    DeleteReceiptRuleRequest.add_member(:rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRuleName, location_name: 'RuleName', traits: {"smithy.api#documentation" => "<p>The name of the receipt rule to delete.</p>", "smithy.api#required" => {}}))
    DeleteReceiptRuleRequest.type = Types::DeleteReceiptRuleRequest
    DeleteReceiptRuleResponse.type = Types::DeleteReceiptRuleResponse
    DeleteReceiptRuleSetRequest.add_member(:rule_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRuleSetName, location_name: 'RuleSetName', traits: {"smithy.api#documentation" => "<p>The name of the receipt rule set to delete.</p>", "smithy.api#required" => {}}))
    DeleteReceiptRuleSetRequest.type = Types::DeleteReceiptRuleSetRequest
    DeleteReceiptRuleSetResponse.type = Types::DeleteReceiptRuleSetResponse
    DeleteTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the template to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteTemplateRequest.type = Types::DeleteTemplateRequest
    DeleteTemplateResponse.type = Types::DeleteTemplateResponse
    DeleteVerifiedEmailAddressRequest.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'EmailAddress', traits: {"smithy.api#documentation" => "<p>An email address to be removed from the list of verified addresses.</p>", "smithy.api#required" => {}}))
    DeleteVerifiedEmailAddressRequest.type = Types::DeleteVerifiedEmailAddressRequest
    DeliveryOptions.add_member(:tls_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: TlsPolicy, location_name: 'TlsPolicy', traits: {"smithy.api#documentation" => "<p>Specifies whether messages that use the configuration set are required to use\n            Transport Layer Security (TLS). If the value is <code>Require</code>, messages are only\n            delivered if a TLS connection can be established. If the value is <code>Optional</code>,\n            messages can be delivered in plain text if a TLS connection can't be established.</p>"}))
    DeliveryOptions.type = Types::DeliveryOptions
    DescribeActiveReceiptRuleSetRequest.type = Types::DescribeActiveReceiptRuleSetRequest
    DescribeActiveReceiptRuleSetResponse.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRuleSetMetadata, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>The metadata for the currently active receipt rule set. The metadata consists of the\n            rule set name and a timestamp of when the rule set was created.</p>"}))
    DescribeActiveReceiptRuleSetResponse.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRulesList, location_name: 'Rules', traits: {"smithy.api#documentation" => "<p>The receipt rules that belong to the active rule set.</p>"}))
    DescribeActiveReceiptRuleSetResponse.type = Types::DescribeActiveReceiptRuleSetResponse
    DescribeConfigurationSetRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set to describe.</p>", "smithy.api#required" => {}}))
    DescribeConfigurationSetRequest.add_member(:configuration_set_attribute_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetAttributeList, location_name: 'ConfigurationSetAttributeNames', traits: {"smithy.api#documentation" => "<p>A list of configuration set attributes to return.</p>"}))
    DescribeConfigurationSetRequest.type = Types::DescribeConfigurationSetRequest
    DescribeConfigurationSetResponse.add_member(:configuration_set, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSet, location_name: 'ConfigurationSet', traits: {"smithy.api#documentation" => "<p>The configuration set object associated with the specified configuration set.</p>"}))
    DescribeConfigurationSetResponse.add_member(:event_destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinations, location_name: 'EventDestinations', traits: {"smithy.api#documentation" => "<p>A list of event destinations associated with the configuration set. </p>"}))
    DescribeConfigurationSetResponse.add_member(:tracking_options, Smithy::Schema::Shapes::ShapeRef.new(shape: TrackingOptions, location_name: 'TrackingOptions', traits: {"smithy.api#documentation" => "<p>The name of the custom open and click tracking domain associated with the\n            configuration set.</p>"}))
    DescribeConfigurationSetResponse.add_member(:delivery_options, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryOptions, location_name: 'DeliveryOptions'))
    DescribeConfigurationSetResponse.add_member(:reputation_options, Smithy::Schema::Shapes::ShapeRef.new(shape: ReputationOptions, location_name: 'ReputationOptions', traits: {"smithy.api#documentation" => "<p>An object that represents the reputation settings for the configuration set. </p>"}))
    DescribeConfigurationSetResponse.type = Types::DescribeConfigurationSetResponse
    DescribeReceiptRuleRequest.add_member(:rule_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRuleSetName, location_name: 'RuleSetName', traits: {"smithy.api#documentation" => "<p>The name of the receipt rule set that the receipt rule belongs to.</p>", "smithy.api#required" => {}}))
    DescribeReceiptRuleRequest.add_member(:rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRuleName, location_name: 'RuleName', traits: {"smithy.api#documentation" => "<p>The name of the receipt rule.</p>", "smithy.api#required" => {}}))
    DescribeReceiptRuleRequest.type = Types::DescribeReceiptRuleRequest
    DescribeReceiptRuleResponse.add_member(:rule, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRule, location_name: 'Rule', traits: {"smithy.api#documentation" => "<p>A data structure that contains the specified receipt rule's name, actions, recipients,\n            domains, enabled status, scan status, and Transport Layer Security (TLS) policy.</p>"}))
    DescribeReceiptRuleResponse.type = Types::DescribeReceiptRuleResponse
    DescribeReceiptRuleSetRequest.add_member(:rule_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRuleSetName, location_name: 'RuleSetName', traits: {"smithy.api#documentation" => "<p>The name of the receipt rule set to describe.</p>", "smithy.api#required" => {}}))
    DescribeReceiptRuleSetRequest.type = Types::DescribeReceiptRuleSetRequest
    DescribeReceiptRuleSetResponse.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRuleSetMetadata, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>The metadata for the receipt rule set, which consists of the rule set name and the\n            timestamp of when the rule set was created.</p>"}))
    DescribeReceiptRuleSetResponse.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRulesList, location_name: 'Rules', traits: {"smithy.api#documentation" => "<p>A list of the receipt rules that belong to the specified receipt rule set.</p>"}))
    DescribeReceiptRuleSetResponse.type = Types::DescribeReceiptRuleSetResponse
    Destination.add_member(:to_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressList, location_name: 'ToAddresses', traits: {"smithy.api#documentation" => "<p>The recipients to place on the To: line of the message.</p>"}))
    Destination.add_member(:cc_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressList, location_name: 'CcAddresses', traits: {"smithy.api#documentation" => "<p>The recipients to place on the CC: line of the message.</p>"}))
    Destination.add_member(:bcc_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressList, location_name: 'BccAddresses', traits: {"smithy.api#documentation" => "<p>The recipients to place on the BCC: line of the message.</p>"}))
    Destination.type = Types::Destination
    DimensionValueSource.add_member(:message_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MESSAGE_TAG', traits: {"smithy.api#enumValue" => "messageTag"}))
    DimensionValueSource.add_member(:email_header, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL_HEADER', traits: {"smithy.api#enumValue" => "emailHeader"}))
    DimensionValueSource.add_member(:link_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINK_TAG', traits: {"smithy.api#enumValue" => "linkTag"}))
    DkimAttributes.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Identity)
    DkimAttributes.value = Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityDkimAttributes)
    DsnAction.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "failed"}))
    DsnAction.add_member(:delayed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELAYED', traits: {"smithy.api#enumValue" => "delayed"}))
    DsnAction.add_member(:delivered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELIVERED', traits: {"smithy.api#enumValue" => "delivered"}))
    DsnAction.add_member(:relayed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RELAYED', traits: {"smithy.api#enumValue" => "relayed"}))
    DsnAction.add_member(:expanded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPANDED', traits: {"smithy.api#enumValue" => "expanded"}))
    EventDestination.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the event destination. The name must meet the following\n            requirements:</p>\n         <ul>\n            <li>\n               <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or\n                    dashes (-).</p>\n            </li>\n            <li>\n               <p>Contain 64 characters or fewer.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    EventDestination.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'Enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Sets whether Amazon SES publishes events to this destination when you send an email with\n            the associated configuration set. Set to <code>true</code> to enable publishing to this\n            destination; set to <code>false</code> to prevent publishing to this destination. The\n            default value is <code>false</code>.</p>"}))
    EventDestination.add_member(:matching_event_types, Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypes, location_name: 'MatchingEventTypes', traits: {"smithy.api#documentation" => "<p>The type of email sending events to publish to the event destination.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>send</code> - The call was successful and Amazon SES is attempting to deliver\n                    the email.</p>\n            </li>\n            <li>\n               <p>\n                  <code>reject</code> - Amazon SES determined that the email contained a virus and\n                    rejected it.</p>\n            </li>\n            <li>\n               <p>\n                  <code>bounce</code> - The recipient's mail server permanently rejected the\n                    email. This corresponds to a hard bounce.</p>\n            </li>\n            <li>\n               <p>\n                  <code>complaint</code> - The recipient marked the email as spam.</p>\n            </li>\n            <li>\n               <p>\n                  <code>delivery</code> - Amazon SES successfully delivered the email to the\n                    recipient's mail server.</p>\n            </li>\n            <li>\n               <p>\n                  <code>open</code> - The recipient received the email and opened it in their\n                    email client.</p>\n            </li>\n            <li>\n               <p>\n                  <code>click</code> - The recipient clicked one or more links in the\n                    email.</p>\n            </li>\n            <li>\n               <p>\n                  <code>renderingFailure</code> - Amazon SES did not send the email because of a\n                    template rendering issue.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    EventDestination.add_member(:kinesis_firehose_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseDestination, location_name: 'KinesisFirehoseDestination', traits: {"smithy.api#documentation" => "<p>An object that contains the delivery stream ARN and the IAM role ARN associated with\n            an Amazon Kinesis Firehose event destination.</p>"}))
    EventDestination.add_member(:cloud_watch_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchDestination, location_name: 'CloudWatchDestination', traits: {"smithy.api#documentation" => "<p>An object that contains the names, default values, and sources of the dimensions\n            associated with an Amazon CloudWatch event destination.</p>"}))
    EventDestination.add_member(:sns_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: SNSDestination, location_name: 'SNSDestination', traits: {"smithy.api#documentation" => "<p>An object that contains the topic ARN associated with an Amazon Simple Notification Service (Amazon SNS) event\n            destination.</p>"}))
    EventDestination.type = Types::EventDestination
    EventDestinationAlreadyExistsException.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>Indicates that the configuration set does not exist.</p>"}))
    EventDestinationAlreadyExistsException.add_member(:event_destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationName, location_name: 'EventDestinationName', traits: {"smithy.api#documentation" => "<p>Indicates that the event destination does not exist.</p>"}))
    EventDestinationAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    EventDestinationAlreadyExistsException.type = Types::EventDestinationAlreadyExistsException
    EventDestinationDoesNotExistException.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>Indicates that the configuration set does not exist.</p>"}))
    EventDestinationDoesNotExistException.add_member(:event_destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationName, location_name: 'EventDestinationName', traits: {"smithy.api#documentation" => "<p>Indicates that the event destination does not exist.</p>"}))
    EventDestinationDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    EventDestinationDoesNotExistException.type = Types::EventDestinationDoesNotExistException
    EventDestinations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestination)
    EventType.add_member(:send, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEND', traits: {"smithy.api#enumValue" => "send"}))
    EventType.add_member(:reject, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECT', traits: {"smithy.api#enumValue" => "reject"}))
    EventType.add_member(:bounce, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOUNCE', traits: {"smithy.api#enumValue" => "bounce"}))
    EventType.add_member(:complaint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLAINT', traits: {"smithy.api#enumValue" => "complaint"}))
    EventType.add_member(:delivery, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELIVERY', traits: {"smithy.api#enumValue" => "delivery"}))
    EventType.add_member(:open, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPEN', traits: {"smithy.api#enumValue" => "open"}))
    EventType.add_member(:click, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLICK', traits: {"smithy.api#enumValue" => "click"}))
    EventType.add_member(:rendering_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RENDERING_FAILURE', traits: {"smithy.api#enumValue" => "renderingFailure"}))
    EventTypes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventType)
    ExtensionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtensionFieldName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the header to add. Must be between 1 and 50 characters, inclusive, and\n            consist of alphanumeric (a-z, A-Z, 0-9) characters and dashes only.</p>", "smithy.api#required" => {}}))
    ExtensionField.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtensionFieldValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the header to add. Must contain 2048 characters or fewer, and must not\n            contain newline characters (\"\\r\" or \"\\n\").</p>", "smithy.api#required" => {}}))
    ExtensionField.type = Types::ExtensionField
    ExtensionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExtensionField)
    FromEmailAddressNotVerifiedException.add_member(:from_email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: FromAddress, location_name: 'FromEmailAddress', traits: {"smithy.api#documentation" => "<p>Indicates that the from email address associated with the custom verification email\n            template is not verified.</p>"}))
    FromEmailAddressNotVerifiedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    FromEmailAddressNotVerifiedException.type = Types::FromEmailAddressNotVerifiedException
    GetAccountSendingEnabledResponse.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'Enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Describes whether email sending is enabled or disabled for your Amazon SES account in the\n            current Amazon Web Services Region.</p>"}))
    GetAccountSendingEnabledResponse.type = Types::GetAccountSendingEnabledResponse
    GetCustomVerificationEmailTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the custom verification email template to retrieve.</p>", "smithy.api#required" => {}}))
    GetCustomVerificationEmailTemplateRequest.type = Types::GetCustomVerificationEmailTemplateRequest
    GetCustomVerificationEmailTemplateResponse.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the custom verification email template.</p>"}))
    GetCustomVerificationEmailTemplateResponse.add_member(:from_email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: FromAddress, location_name: 'FromEmailAddress', traits: {"smithy.api#documentation" => "<p>The email address that the custom verification email is sent from.</p>"}))
    GetCustomVerificationEmailTemplateResponse.add_member(:template_subject, Smithy::Schema::Shapes::ShapeRef.new(shape: Subject, location_name: 'TemplateSubject', traits: {"smithy.api#documentation" => "<p>The subject line of the custom verification email.</p>"}))
    GetCustomVerificationEmailTemplateResponse.add_member(:template_content, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateContent, location_name: 'TemplateContent', traits: {"smithy.api#documentation" => "<p>The content of the custom verification email.</p>"}))
    GetCustomVerificationEmailTemplateResponse.add_member(:success_redirection_url, Smithy::Schema::Shapes::ShapeRef.new(shape: SuccessRedirectionURL, location_name: 'SuccessRedirectionURL', traits: {"smithy.api#documentation" => "<p>The URL that the recipient of the verification email is sent to if his or her address\n            is successfully verified.</p>"}))
    GetCustomVerificationEmailTemplateResponse.add_member(:failure_redirection_url, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureRedirectionURL, location_name: 'FailureRedirectionURL', traits: {"smithy.api#documentation" => "<p>The URL that the recipient of the verification email is sent to if his or her address\n            is not successfully verified.</p>"}))
    GetCustomVerificationEmailTemplateResponse.type = Types::GetCustomVerificationEmailTemplateResponse
    GetIdentityDkimAttributesRequest.add_member(:identities, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityList, location_name: 'Identities', traits: {"smithy.api#documentation" => "<p>A list of one or more verified identities - email addresses, domains, or both.</p>", "smithy.api#required" => {}}))
    GetIdentityDkimAttributesRequest.type = Types::GetIdentityDkimAttributesRequest
    GetIdentityDkimAttributesResponse.add_member(:dkim_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: DkimAttributes, location_name: 'DkimAttributes', traits: {"smithy.api#documentation" => "<p>The DKIM attributes for an email address or a domain.</p>", "smithy.api#required" => {}}))
    GetIdentityDkimAttributesResponse.type = Types::GetIdentityDkimAttributesResponse
    GetIdentityMailFromDomainAttributesRequest.add_member(:identities, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityList, location_name: 'Identities', traits: {"smithy.api#documentation" => "<p>A list of one or more identities.</p>", "smithy.api#required" => {}}))
    GetIdentityMailFromDomainAttributesRequest.type = Types::GetIdentityMailFromDomainAttributesRequest
    GetIdentityMailFromDomainAttributesResponse.add_member(:mail_from_domain_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: MailFromDomainAttributes, location_name: 'MailFromDomainAttributes', traits: {"smithy.api#documentation" => "<p>A map of identities to custom MAIL FROM attributes.</p>", "smithy.api#required" => {}}))
    GetIdentityMailFromDomainAttributesResponse.type = Types::GetIdentityMailFromDomainAttributesResponse
    GetIdentityNotificationAttributesRequest.add_member(:identities, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityList, location_name: 'Identities', traits: {"smithy.api#documentation" => "<p>A list of one or more identities. You can specify an identity by using its name or by\n            using its Amazon Resource Name (ARN). Examples: <code>user@example.com</code>,\n                <code>example.com</code>,\n                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>", "smithy.api#required" => {}}))
    GetIdentityNotificationAttributesRequest.type = Types::GetIdentityNotificationAttributesRequest
    GetIdentityNotificationAttributesResponse.add_member(:notification_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationAttributes, location_name: 'NotificationAttributes', traits: {"smithy.api#documentation" => "<p>A map of Identity to IdentityNotificationAttributes.</p>", "smithy.api#required" => {}}))
    GetIdentityNotificationAttributesResponse.type = Types::GetIdentityNotificationAttributesResponse
    GetIdentityPoliciesRequest.add_member(:identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'Identity', traits: {"smithy.api#documentation" => "<p>The identity for which the policies are retrieved. You can specify an identity by\n            using its name or by using its Amazon Resource Name (ARN). Examples:\n                <code>user@example.com</code>, <code>example.com</code>,\n                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>\n         <p>To successfully call this operation, you must own the identity.</p>", "smithy.api#required" => {}}))
    GetIdentityPoliciesRequest.add_member(:policy_names, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNameList, location_name: 'PolicyNames', traits: {"smithy.api#documentation" => "<p>A list of the names of policies to be retrieved. You can retrieve a maximum of 20\n            policies at a time. If you do not know the names of the policies that are attached to\n            the identity, you can use <code>ListIdentityPolicies</code>.</p>", "smithy.api#required" => {}}))
    GetIdentityPoliciesRequest.type = Types::GetIdentityPoliciesRequest
    GetIdentityPoliciesResponse.add_member(:policies, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyMap, location_name: 'Policies', traits: {"smithy.api#documentation" => "<p>A map of policy names to policies.</p>", "smithy.api#required" => {}}))
    GetIdentityPoliciesResponse.type = Types::GetIdentityPoliciesResponse
    GetIdentityVerificationAttributesRequest.add_member(:identities, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityList, location_name: 'Identities', traits: {"smithy.api#documentation" => "<p>A list of identities.</p>", "smithy.api#required" => {}}))
    GetIdentityVerificationAttributesRequest.type = Types::GetIdentityVerificationAttributesRequest
    GetIdentityVerificationAttributesResponse.add_member(:verification_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: VerificationAttributes, location_name: 'VerificationAttributes', traits: {"smithy.api#documentation" => "<p>A map of Identities to IdentityVerificationAttributes objects.</p>", "smithy.api#required" => {}}))
    GetIdentityVerificationAttributesResponse.type = Types::GetIdentityVerificationAttributesResponse
    GetSendQuotaResponse.add_member(:max24_hour_send, Smithy::Schema::Shapes::ShapeRef.new(shape: Max24HourSend, location_name: 'Max24HourSend', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of emails the user is allowed to send in a 24-hour interval. A\n            value of -1 signifies an unlimited quota.</p>"}))
    GetSendQuotaResponse.add_member(:max_send_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSendRate, location_name: 'MaxSendRate', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of emails that Amazon SES can accept from the user's account per\n            second.</p>\n         <note>\n            <p>The rate at which Amazon SES accepts the user's messages might be less than the maximum\n                send rate.</p>\n         </note>"}))
    GetSendQuotaResponse.add_member(:sent_last24_hours, Smithy::Schema::Shapes::ShapeRef.new(shape: SentLast24Hours, location_name: 'SentLast24Hours', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of emails sent during the previous 24 hours.</p>"}))
    GetSendQuotaResponse.type = Types::GetSendQuotaResponse
    GetSendStatisticsResponse.add_member(:send_data_points, Smithy::Schema::Shapes::ShapeRef.new(shape: SendDataPointList, location_name: 'SendDataPoints', traits: {"smithy.api#documentation" => "<p>A list of data points, each of which represents 15 minutes of activity.</p>"}))
    GetSendStatisticsResponse.type = Types::GetSendStatisticsResponse
    GetTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the template to retrieve.</p>", "smithy.api#required" => {}}))
    GetTemplateRequest.type = Types::GetTemplateRequest
    GetTemplateResponse.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: Template, location_name: 'Template'))
    GetTemplateResponse.type = Types::GetTemplateResponse
    IdentityDkimAttributes.add_member(:dkim_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'DkimEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Is true if DKIM signing is enabled for email sent from the identity. It's false\n            otherwise. The default value is true.</p>", "smithy.api#required" => {}}))
    IdentityDkimAttributes.add_member(:dkim_verification_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VerificationStatus, location_name: 'DkimVerificationStatus', traits: {"smithy.api#documentation" => "<p>Describes whether Amazon SES has successfully verified the DKIM DNS records (tokens)\n            published in the domain name's DNS. (This only applies to domain identities, not email\n            address identities.)</p>", "smithy.api#required" => {}}))
    IdentityDkimAttributes.add_member(:dkim_tokens, Smithy::Schema::Shapes::ShapeRef.new(shape: VerificationTokenList, location_name: 'DkimTokens', traits: {"smithy.api#documentation" => "<p>A set of character strings that represent the domain's identity. Using these tokens,\n            you need to create DNS CNAME records that point to DKIM public keys that are hosted by\n            Amazon SES. Amazon Web Services eventually detects that you've updated your DNS records. This detection\n            process might take up to 72 hours. After successful detection, Amazon SES is able to\n            DKIM-sign email originating from that domain. (This only applies to domain identities,\n            not email address identities.)</p>\n         <p>For more information about creating DNS records using DKIM tokens, see the <a href=\"https://docs.aws.amazon.com/ses/latest/dg/send-email-authentication-dkim-easy.html\">Amazon SES Developer Guide</a>.</p>"}))
    IdentityDkimAttributes.type = Types::IdentityDkimAttributes
    IdentityList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Identity)
    IdentityMailFromDomainAttributes.add_member(:mail_from_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: MailFromDomainName, location_name: 'MailFromDomain', traits: {"smithy.api#documentation" => "<p>The custom MAIL FROM domain that the identity is configured to use.</p>", "smithy.api#required" => {}}))
    IdentityMailFromDomainAttributes.add_member(:mail_from_domain_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomMailFromStatus, location_name: 'MailFromDomainStatus', traits: {"smithy.api#documentation" => "<p>The state that indicates whether Amazon SES has successfully read the MX record required\n            for custom MAIL FROM domain setup. If the state is <code>Success</code>, Amazon SES uses the\n            specified custom MAIL FROM domain when the verified identity sends an email. All other\n            states indicate that Amazon SES takes the action described by\n                <code>BehaviorOnMXFailure</code>.</p>", "smithy.api#required" => {}}))
    IdentityMailFromDomainAttributes.add_member(:behavior_on_mx_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: BehaviorOnMXFailure, location_name: 'BehaviorOnMXFailure', traits: {"smithy.api#documentation" => "<p>The action that Amazon SES takes if it cannot successfully read the required MX record when\n            you send an email. A value of <code>UseDefaultValue</code> indicates that if Amazon SES\n            cannot read the required MX record, it uses amazonses.com (or a subdomain of that) as\n            the MAIL FROM domain. A value of <code>RejectMessage</code> indicates that if Amazon SES\n            cannot read the required MX record, Amazon SES returns a\n                <code>MailFromDomainNotVerified</code> error and does not send the email.</p>\n         <p>The custom MAIL FROM setup states that result in this behavior are\n                <code>Pending</code>, <code>Failed</code>, and <code>TemporaryFailure</code>.</p>", "smithy.api#required" => {}}))
    IdentityMailFromDomainAttributes.type = Types::IdentityMailFromDomainAttributes
    IdentityNotificationAttributes.add_member(:bounce_topic, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationTopic, location_name: 'BounceTopic', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon SNS topic where Amazon SES publishes bounce\n            notifications.</p>", "smithy.api#required" => {}}))
    IdentityNotificationAttributes.add_member(:complaint_topic, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationTopic, location_name: 'ComplaintTopic', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon SNS topic where Amazon SES publishes complaint\n            notifications.</p>", "smithy.api#required" => {}}))
    IdentityNotificationAttributes.add_member(:delivery_topic, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationTopic, location_name: 'DeliveryTopic', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon SNS topic where Amazon SES publishes delivery\n            notifications.</p>", "smithy.api#required" => {}}))
    IdentityNotificationAttributes.add_member(:forwarding_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'ForwardingEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Describes whether Amazon SES forwards bounce and complaint notifications as email.\n                <code>true</code> indicates that Amazon SES forwards bounce and complaint notifications\n            as email, while <code>false</code> indicates that bounce and complaint notifications are\n            published only to the specified bounce and complaint Amazon SNS topics.</p>", "smithy.api#required" => {}}))
    IdentityNotificationAttributes.add_member(:headers_in_bounce_notifications_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'HeadersInBounceNotificationsEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Describes whether Amazon SES includes the original email headers in Amazon SNS notifications of\n            type <code>Bounce</code>. A value of <code>true</code> specifies that Amazon SES includes\n            headers in bounce notifications, and a value of <code>false</code> specifies that Amazon SES\n            does not include headers in bounce notifications.</p>"}))
    IdentityNotificationAttributes.add_member(:headers_in_complaint_notifications_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'HeadersInComplaintNotificationsEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Describes whether Amazon SES includes the original email headers in Amazon SNS notifications of\n            type <code>Complaint</code>. A value of <code>true</code> specifies that Amazon SES includes\n            headers in complaint notifications, and a value of <code>false</code> specifies that\n            Amazon SES does not include headers in complaint notifications.</p>"}))
    IdentityNotificationAttributes.add_member(:headers_in_delivery_notifications_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'HeadersInDeliveryNotificationsEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Describes whether Amazon SES includes the original email headers in Amazon SNS notifications of\n            type <code>Delivery</code>. A value of <code>true</code> specifies that Amazon SES includes\n            headers in delivery notifications, and a value of <code>false</code> specifies that\n            Amazon SES does not include headers in delivery notifications.</p>"}))
    IdentityNotificationAttributes.type = Types::IdentityNotificationAttributes
    IdentityType.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EmailAddress', traits: {"smithy.api#enumValue" => "EmailAddress"}))
    IdentityType.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Domain', traits: {"smithy.api#enumValue" => "Domain"}))
    IdentityVerificationAttributes.add_member(:verification_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VerificationStatus, location_name: 'VerificationStatus', traits: {"smithy.api#documentation" => "<p>The verification status of the identity: \"Pending\", \"Success\", \"Failed\", or\n            \"TemporaryFailure\".</p>", "smithy.api#required" => {}}))
    IdentityVerificationAttributes.add_member(:verification_token, Smithy::Schema::Shapes::ShapeRef.new(shape: VerificationToken, location_name: 'VerificationToken', traits: {"smithy.api#documentation" => "<p>The verification token for a domain identity. Null for email address\n            identities.</p>"}))
    IdentityVerificationAttributes.type = Types::IdentityVerificationAttributes
    InvalidCloudWatchDestinationException.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>Indicates that the configuration set does not exist.</p>"}))
    InvalidCloudWatchDestinationException.add_member(:event_destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationName, location_name: 'EventDestinationName', traits: {"smithy.api#documentation" => "<p>Indicates that the event destination does not exist.</p>"}))
    InvalidCloudWatchDestinationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidCloudWatchDestinationException.type = Types::InvalidCloudWatchDestinationException
    InvalidConfigurationSetException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidConfigurationSetException.type = Types::InvalidConfigurationSetException
    InvalidDeliveryOptionsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidDeliveryOptionsException.type = Types::InvalidDeliveryOptionsException
    InvalidFirehoseDestinationException.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>Indicates that the configuration set does not exist.</p>"}))
    InvalidFirehoseDestinationException.add_member(:event_destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationName, location_name: 'EventDestinationName', traits: {"smithy.api#documentation" => "<p>Indicates that the event destination does not exist.</p>"}))
    InvalidFirehoseDestinationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidFirehoseDestinationException.type = Types::InvalidFirehoseDestinationException
    InvalidLambdaFunctionException.add_member(:function_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'FunctionArn', traits: {"smithy.api#documentation" => "<p>Indicates that the ARN of the function was not found.</p>"}))
    InvalidLambdaFunctionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidLambdaFunctionException.type = Types::InvalidLambdaFunctionException
    InvalidPolicyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidPolicyException.type = Types::InvalidPolicyException
    InvalidRenderingParameterException.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'TemplateName'))
    InvalidRenderingParameterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidRenderingParameterException.type = Types::InvalidRenderingParameterException
    InvalidS3ConfigurationException.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'Bucket', traits: {"smithy.api#documentation" => "<p>Indicated that the S3 Bucket was not found.</p>"}))
    InvalidS3ConfigurationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidS3ConfigurationException.type = Types::InvalidS3ConfigurationException
    InvalidSNSDestinationException.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>Indicates that the configuration set does not exist.</p>"}))
    InvalidSNSDestinationException.add_member(:event_destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationName, location_name: 'EventDestinationName', traits: {"smithy.api#documentation" => "<p>Indicates that the event destination does not exist.</p>"}))
    InvalidSNSDestinationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidSNSDestinationException.type = Types::InvalidSNSDestinationException
    InvalidSnsTopicException.add_member(:topic, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'Topic', traits: {"smithy.api#documentation" => "<p>Indicates that the topic does not exist.</p>"}))
    InvalidSnsTopicException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidSnsTopicException.type = Types::InvalidSnsTopicException
    InvalidTemplateException.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'TemplateName'))
    InvalidTemplateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidTemplateException.type = Types::InvalidTemplateException
    InvalidTrackingOptionsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidTrackingOptionsException.type = Types::InvalidTrackingOptionsException
    InvocationType.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Event', traits: {"smithy.api#enumValue" => "Event"}))
    InvocationType.add_member(:request_response, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RequestResponse', traits: {"smithy.api#enumValue" => "RequestResponse"}))
    KinesisFirehoseDestination.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'IAMRoleARN', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role under which Amazon SES publishes email sending events to the Amazon Kinesis Firehose\n            stream.</p>", "smithy.api#required" => {}}))
    KinesisFirehoseDestination.add_member(:delivery_stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'DeliveryStreamARN', traits: {"smithy.api#documentation" => "<p>The ARN of the Amazon Kinesis Firehose stream that email sending events should be published to.</p>", "smithy.api#required" => {}}))
    KinesisFirehoseDestination.type = Types::KinesisFirehoseDestination
    LambdaAction.add_member(:topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'TopicArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when the Lambda action is\n            executed. You can find the ARN of a topic by using the <a href=\"https://docs.aws.amazon.com/sns/latest/api/API_ListTopics.html\">ListTopics</a> operation in\n            Amazon SNS.</p>\n         <p>For more information about Amazon SNS topics, see the <a href=\"https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html\">Amazon SNS Developer Guide</a>.</p>"}))
    LambdaAction.add_member(:function_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'FunctionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Web Services Lambda function. An example of an Amazon Web Services Lambda\n            function ARN is <code>arn:aws:lambda:us-west-2:account-id:function:MyFunction</code>.\n            For more information about Amazon Web Services Lambda, see the <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/welcome.html\">Amazon Web Services Lambda Developer Guide</a>.</p>", "smithy.api#required" => {}}))
    LambdaAction.add_member(:invocation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InvocationType, location_name: 'InvocationType', traits: {"smithy.api#documentation" => "<p>The invocation type of the Amazon Web Services Lambda function. An invocation type of\n                <code>RequestResponse</code> means that the execution of the function immediately\n            results in a response, and a value of <code>Event</code> means that the function is\n            invoked asynchronously. The default value is <code>Event</code>. For information about\n            Amazon Web Services Lambda invocation types, see the <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/API_Invoke.html\">Amazon Web Services Lambda Developer Guide</a>.</p>\n         <important>\n            <p>There is a 30-second timeout on <code>RequestResponse</code> invocations. You\n                should use <code>Event</code> invocation in most cases. Use\n                    <code>RequestResponse</code> only to make a mail flow decision, such as whether\n                to stop the receipt rule or the receipt rule set.</p>\n         </important>"}))
    LambdaAction.type = Types::LambdaAction
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListConfigurationSetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a previous call to <code>ListConfigurationSets</code> to\n            indicate the position of the configuration set in the configuration set list.</p>"}))
    ListConfigurationSetsRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The number of configuration sets to return.</p>"}))
    ListConfigurationSetsRequest.type = Types::ListConfigurationSetsRequest
    ListConfigurationSetsResponse.add_member(:configuration_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSets, location_name: 'ConfigurationSets', traits: {"smithy.api#documentation" => "<p>A list of configuration sets.</p>"}))
    ListConfigurationSetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token indicating that there are additional configuration sets available to be\n            listed. Pass this token to successive calls of <code>ListConfigurationSets</code>.\n        </p>"}))
    ListConfigurationSetsResponse.type = Types::ListConfigurationSetsResponse
    ListCustomVerificationEmailTemplatesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An array the contains the name and creation time stamp for each template in your Amazon SES\n            account.</p>"}))
    ListCustomVerificationEmailTemplatesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of custom verification email templates to return. This value must\n            be at least 1 and less than or equal to 50. If you do not specify a value, or if you\n            specify a value less than 1 or greater than 50, the operation returns up to 50\n            results.</p>"}))
    ListCustomVerificationEmailTemplatesRequest.type = Types::ListCustomVerificationEmailTemplatesRequest
    ListCustomVerificationEmailTemplatesResponse.add_member(:custom_verification_email_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomVerificationEmailTemplates, location_name: 'CustomVerificationEmailTemplates', traits: {"smithy.api#documentation" => "<p>A list of the custom verification email templates that exist in your account.</p>"}))
    ListCustomVerificationEmailTemplatesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token indicating that there are additional custom verification email templates\n            available to be listed. Pass this token to a subsequent call to\n                <code>ListTemplates</code> to retrieve the next 50 custom verification email\n            templates.</p>"}))
    ListCustomVerificationEmailTemplatesResponse.type = Types::ListCustomVerificationEmailTemplatesResponse
    ListIdentitiesRequest.add_member(:identity_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityType, location_name: 'IdentityType', traits: {"smithy.api#documentation" => "<p>The type of the identities to list. Possible values are \"EmailAddress\" and \"Domain\".\n            If this parameter is omitted, then all identities are listed.</p>"}))
    ListIdentitiesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use for pagination.</p>"}))
    ListIdentitiesRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of identities per page. Possible values are 1-1000\n            inclusive.</p>"}))
    ListIdentitiesRequest.type = Types::ListIdentitiesRequest
    ListIdentitiesResponse.add_member(:identities, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityList, location_name: 'Identities', traits: {"smithy.api#documentation" => "<p>A list of identities.</p>", "smithy.api#required" => {}}))
    ListIdentitiesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used for pagination.</p>"}))
    ListIdentitiesResponse.type = Types::ListIdentitiesResponse
    ListIdentityPoliciesRequest.add_member(:identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'Identity', traits: {"smithy.api#documentation" => "<p>The identity that is associated with the policy for which the policies are listed. You\n            can specify an identity by using its name or by using its Amazon Resource Name (ARN).\n            Examples: <code>user@example.com</code>, <code>example.com</code>,\n                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>\n         <p>To successfully call this operation, you must own the identity.</p>", "smithy.api#required" => {}}))
    ListIdentityPoliciesRequest.type = Types::ListIdentityPoliciesRequest
    ListIdentityPoliciesResponse.add_member(:policy_names, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNameList, location_name: 'PolicyNames', traits: {"smithy.api#documentation" => "<p>A list of names of policies that apply to the specified identity.</p>", "smithy.api#required" => {}}))
    ListIdentityPoliciesResponse.type = Types::ListIdentityPoliciesResponse
    ListReceiptFiltersRequest.type = Types::ListReceiptFiltersRequest
    ListReceiptFiltersResponse.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptFilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>A list of IP address filter data structures, which each consist of a name, an IP\n            address range, and whether to allow or block mail from it.</p>"}))
    ListReceiptFiltersResponse.type = Types::ListReceiptFiltersResponse
    ListReceiptRuleSetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a previous call to <code>ListReceiptRuleSets</code> to indicate\n            the position in the receipt rule set list.</p>"}))
    ListReceiptRuleSetsRequest.type = Types::ListReceiptRuleSetsRequest
    ListReceiptRuleSetsResponse.add_member(:rule_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRuleSetsLists, location_name: 'RuleSets', traits: {"smithy.api#documentation" => "<p>The metadata for the currently active receipt rule set. The metadata consists of the\n            rule set name and the timestamp of when the rule set was created.</p>"}))
    ListReceiptRuleSetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token indicating that there are additional receipt rule sets available to be listed.\n            Pass this token to successive calls of <code>ListReceiptRuleSets</code> to retrieve up\n            to 100 receipt rule sets at a time.</p>"}))
    ListReceiptRuleSetsResponse.type = Types::ListReceiptRuleSetsResponse
    ListTemplatesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a previous call to <code>ListTemplates</code> to indicate the\n            position in the list of email templates.</p>"}))
    ListTemplatesRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of templates to return. This value must be at least 1 and less than\n            or equal to 100. If more than 100 items are requested, the page size will automatically\n            set to 100. If you do not specify a value, 10 is the default page size. </p>"}))
    ListTemplatesRequest.type = Types::ListTemplatesRequest
    ListTemplatesResponse.add_member(:templates_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateMetadataList, location_name: 'TemplatesMetadata', traits: {"smithy.api#documentation" => "<p>An array the contains the name and creation time stamp for each template in your Amazon SES\n            account.</p>"}))
    ListTemplatesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token indicating that there are additional email templates available to be listed.\n            Pass this token to a subsequent call to <code>ListTemplates</code> to retrieve the next\n            set of email templates within your page size.</p>"}))
    ListTemplatesResponse.type = Types::ListTemplatesResponse
    ListVerifiedEmailAddressesResponse.add_member(:verified_email_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressList, location_name: 'VerifiedEmailAddresses', traits: {"smithy.api#documentation" => "<p>A list of email addresses that have been verified.</p>"}))
    ListVerifiedEmailAddressesResponse.type = Types::ListVerifiedEmailAddressesResponse
    MailFromDomainAttributes.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Identity)
    MailFromDomainAttributes.value = Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityMailFromDomainAttributes)
    MailFromDomainNotVerifiedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    MailFromDomainNotVerifiedException.type = Types::MailFromDomainNotVerifiedException
    Message.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: Content, location_name: 'Subject', traits: {"smithy.api#documentation" => "<p>The subject of the message: A short summary of the content, which appears in the\n            recipient's inbox.</p>", "smithy.api#required" => {}}))
    Message.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: Body, location_name: 'Body', traits: {"smithy.api#documentation" => "<p>The message body.</p>", "smithy.api#required" => {}}))
    Message.type = Types::Message
    MessageDsn.add_member(:reporting_mta, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportingMta, location_name: 'ReportingMta', traits: {"smithy.api#documentation" => "<p>The reporting MTA that attempted to deliver the message, formatted as specified in\n                <a href=\"https://tools.ietf.org/html/rfc3464\">RFC 3464</a>\n                (<code>mta-name-type; mta-name</code>). The default value is <code>dns;\n                inbound-smtp.[region].amazonaws.com</code>.</p>", "smithy.api#required" => {}}))
    MessageDsn.add_member(:arrival_date, Smithy::Schema::Shapes::ShapeRef.new(shape: ArrivalDate, location_name: 'ArrivalDate', traits: {"smithy.api#documentation" => "<p>When the message was received by the reporting mail transfer agent (MTA), in <a href=\"https://www.ietf.org/rfc/rfc0822.txt\">RFC 822</a> date-time format.</p>"}))
    MessageDsn.add_member(:extension_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtensionFieldList, location_name: 'ExtensionFields', traits: {"smithy.api#documentation" => "<p>Additional X-headers to include in the DSN.</p>"}))
    MessageDsn.type = Types::MessageDsn
    MessageRejected.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    MessageRejected.type = Types::MessageRejected
    MessageTag.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTagName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the tag. The name must meet the following requirements:</p>\n         <ul>\n            <li>\n               <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or\n                    dashes (-).</p>\n            </li>\n            <li>\n               <p>Contain 256 characters or fewer.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    MessageTag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the tag. The value must meet the following requirements:</p>\n         <ul>\n            <li>\n               <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or\n                    dashes (-).</p>\n            </li>\n            <li>\n               <p>Contain 256 characters or fewer.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    MessageTag.type = Types::MessageTag
    MessageTagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTag)
    MissingRenderingAttributeException.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'TemplateName'))
    MissingRenderingAttributeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    MissingRenderingAttributeException.type = Types::MissingRenderingAttributeException
    NotificationAttributes.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Identity)
    NotificationAttributes.value = Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityNotificationAttributes)
    NotificationType.add_member(:bounce, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Bounce', traits: {"smithy.api#enumValue" => "Bounce"}))
    NotificationType.add_member(:complaint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Complaint', traits: {"smithy.api#enumValue" => "Complaint"}))
    NotificationType.add_member(:delivery, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Delivery', traits: {"smithy.api#enumValue" => "Delivery"}))
    PolicyMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName)
    PolicyMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Policy)
    PolicyNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName)
    ProductionAccessNotGrantedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ProductionAccessNotGrantedException.type = Types::ProductionAccessNotGrantedException
    PutConfigurationSetDeliveryOptionsRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set.</p>", "smithy.api#required" => {}}))
    PutConfigurationSetDeliveryOptionsRequest.add_member(:delivery_options, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryOptions, location_name: 'DeliveryOptions', traits: {"smithy.api#documentation" => "<p>Specifies whether messages that use the configuration set are required to use\n            Transport Layer Security (TLS).</p>"}))
    PutConfigurationSetDeliveryOptionsRequest.type = Types::PutConfigurationSetDeliveryOptionsRequest
    PutConfigurationSetDeliveryOptionsResponse.type = Types::PutConfigurationSetDeliveryOptionsResponse
    PutIdentityPolicyRequest.add_member(:identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'Identity', traits: {"smithy.api#documentation" => "<p>The identity to which that the policy applies. You can specify an identity by using\n            its name or by using its Amazon Resource Name (ARN). Examples:\n                <code>user@example.com</code>, <code>example.com</code>,\n                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>\n         <p>To successfully call this operation, you must own the identity.</p>", "smithy.api#required" => {}}))
    PutIdentityPolicyRequest.add_member(:policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'PolicyName', traits: {"smithy.api#documentation" => "<p>The name of the policy.</p>\n         <p>The policy name cannot exceed 64 characters and can only include alphanumeric\n            characters, dashes, and underscores.</p>", "smithy.api#required" => {}}))
    PutIdentityPolicyRequest.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The text of the policy in JSON format. The policy cannot exceed 4 KB.</p>\n         <p>For information about the syntax of sending authorization policies, see the <a href=\"https://docs.aws.amazon.com/ses/latest/dg/sending-authorization-policies.html\">Amazon SES\n                Developer Guide</a>. </p>", "smithy.api#required" => {}}))
    PutIdentityPolicyRequest.type = Types::PutIdentityPolicyRequest
    PutIdentityPolicyResponse.type = Types::PutIdentityPolicyResponse
    RawMessage.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: RawMessageData, location_name: 'Data', traits: {"smithy.api#documentation" => "<p>The raw data of the message. This data needs to base64-encoded if you are accessing\n            Amazon SES directly through the HTTPS interface. If you are accessing Amazon SES using an Amazon Web Services\n            SDK, the SDK takes care of the base 64-encoding for you. In all cases, the client must\n            ensure that the message format complies with Internet email standards regarding email\n            header fields, MIME types, and MIME encoding.</p>\n         <p>The To:, CC:, and BCC: headers in the raw message can contain a group list.</p>\n         <p>If you are using <code>SendRawEmail</code> with sending authorization, you can include\n            X-headers in the raw message to specify the \"Source,\" \"From,\" and \"Return-Path\"\n            addresses. For more information, see the documentation for <code>SendRawEmail</code>. </p>\n         <important>\n            <p>Do not include these X-headers in the DKIM signature, because they are removed by\n                Amazon SES before sending the email.</p>\n         </important>\n         <p>For more information, go to the <a href=\"https://docs.aws.amazon.com/ses/latest/dg/send-email-raw.html\">Amazon SES Developer Guide</a>.</p>", "smithy.api#required" => {}}))
    RawMessage.type = Types::RawMessage
    ReceiptAction.add_member(:s3_action, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Action, location_name: 'S3Action', traits: {"smithy.api#documentation" => "<p>Saves the received message to an Amazon Simple Storage Service (Amazon S3) bucket and, optionally, publishes a\n            notification to Amazon SNS.</p>"}))
    ReceiptAction.add_member(:bounce_action, Smithy::Schema::Shapes::ShapeRef.new(shape: BounceAction, location_name: 'BounceAction', traits: {"smithy.api#documentation" => "<p>Rejects the received email by returning a bounce response to the sender and,\n            optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p>"}))
    ReceiptAction.add_member(:workmail_action, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkmailAction, location_name: 'WorkmailAction', traits: {"smithy.api#documentation" => "<p>Calls Amazon WorkMail and, optionally, publishes a notification to Amazon\n            Amazon SNS.</p>"}))
    ReceiptAction.add_member(:lambda_action, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaAction, location_name: 'LambdaAction', traits: {"smithy.api#documentation" => "<p>Calls an Amazon Web Services Lambda function, and optionally, publishes a notification to Amazon SNS.</p>"}))
    ReceiptAction.add_member(:stop_action, Smithy::Schema::Shapes::ShapeRef.new(shape: StopAction, location_name: 'StopAction', traits: {"smithy.api#documentation" => "<p>Terminates the evaluation of the receipt rule set and optionally publishes a\n            notification to Amazon SNS.</p>"}))
    ReceiptAction.add_member(:add_header_action, Smithy::Schema::Shapes::ShapeRef.new(shape: AddHeaderAction, location_name: 'AddHeaderAction', traits: {"smithy.api#documentation" => "<p>Adds a header to the received email.</p>"}))
    ReceiptAction.add_member(:sns_action, Smithy::Schema::Shapes::ShapeRef.new(shape: SNSAction, location_name: 'SNSAction', traits: {"smithy.api#documentation" => "<p>Publishes the email content within a notification to Amazon SNS.</p>"}))
    ReceiptAction.add_member(:connect_action, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectAction, location_name: 'ConnectAction', traits: {"smithy.api#documentation" => "<p>Parses the received message and starts an email contact in Amazon Connect on your behalf.</p>"}))
    ReceiptAction.type = Types::ReceiptAction
    ReceiptActionsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptAction)
    ReceiptFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptFilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the IP address filter. The name must meet the following\n            requirements:</p>\n         <ul>\n            <li>\n               <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or\n                    dashes (-).</p>\n            </li>\n            <li>\n               <p>Start and end with a letter or number.</p>\n            </li>\n            <li>\n               <p>Contain 64 characters or fewer.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    ReceiptFilter.add_member(:ip_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptIpFilter, location_name: 'IpFilter', traits: {"smithy.api#documentation" => "<p>A structure that provides the IP addresses to block or allow, and whether to block or\n            allow incoming mail from them.</p>", "smithy.api#required" => {}}))
    ReceiptFilter.type = Types::ReceiptFilter
    ReceiptFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptFilter)
    ReceiptFilterPolicy.add_member(:block, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Block', traits: {"smithy.api#enumValue" => "Block"}))
    ReceiptFilterPolicy.add_member(:allow, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Allow', traits: {"smithy.api#enumValue" => "Allow"}))
    ReceiptIpFilter.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptFilterPolicy, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>Indicates whether to block or allow incoming mail from the specified IP\n            addresses.</p>", "smithy.api#required" => {}}))
    ReceiptIpFilter.add_member(:cidr, Smithy::Schema::Shapes::ShapeRef.new(shape: Cidr, location_name: 'Cidr', traits: {"smithy.api#documentation" => "<p>A single IP address or a range of IP addresses to block or allow, specified in\n            Classless Inter-Domain Routing (CIDR) notation. An example of a single email address is\n            10.0.0.1. An example of a range of IP addresses is 10.0.0.1/24. For more information\n            about CIDR notation, see <a href=\"https://tools.ietf.org/html/rfc2317\">RFC\n                2317</a>.</p>", "smithy.api#required" => {}}))
    ReceiptIpFilter.type = Types::ReceiptIpFilter
    ReceiptRule.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRuleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the receipt rule. The name must meet the following requirements:</p>\n         <ul>\n            <li>\n               <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), dashes\n                    (-), or periods (.). </p>\n            </li>\n            <li>\n               <p>Start and end with a letter or number.</p>\n            </li>\n            <li>\n               <p>Contain 64 characters or fewer.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    ReceiptRule.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'Enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If <code>true</code>, the receipt rule is active. The default value is\n                <code>false</code>.</p>"}))
    ReceiptRule.add_member(:tls_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: TlsPolicy, location_name: 'TlsPolicy', traits: {"smithy.api#documentation" => "<p>Specifies whether Amazon SES should require that incoming email is delivered over a\n            connection encrypted with Transport Layer Security (TLS). If this parameter is set to\n                <code>Require</code>, Amazon SES bounces emails that are not received over TLS. The\n            default is <code>Optional</code>.</p>"}))
    ReceiptRule.add_member(:recipients, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipientsList, location_name: 'Recipients', traits: {"smithy.api#documentation" => "<p>The recipient domains and email addresses that the receipt rule applies to. If this\n            field is not specified, this rule matches all recipients on all verified domains.</p>"}))
    ReceiptRule.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptActionsList, location_name: 'Actions', traits: {"smithy.api#documentation" => "<p>An ordered list of actions to perform on messages that match at least one of the\n            recipient email addresses or domains specified in the receipt rule.</p>"}))
    ReceiptRule.add_member(:scan_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'ScanEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If <code>true</code>, then messages that this receipt rule applies to are scanned for\n            spam and viruses. The default value is <code>false</code>.</p>"}))
    ReceiptRule.type = Types::ReceiptRule
    ReceiptRuleNamesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRuleName)
    ReceiptRuleSetMetadata.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRuleSetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the receipt rule set. The name must meet the following\n            requirements:</p>\n         <ul>\n            <li>\n               <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or\n                    dashes (-).</p>\n            </li>\n            <li>\n               <p>Start and end with a letter or number.</p>\n            </li>\n            <li>\n               <p>Contain 64 characters or fewer.</p>\n            </li>\n         </ul>"}))
    ReceiptRuleSetMetadata.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The date and time the receipt rule set was created.</p>"}))
    ReceiptRuleSetMetadata.type = Types::ReceiptRuleSetMetadata
    ReceiptRuleSetsLists.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRuleSetMetadata)
    ReceiptRulesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRule)
    RecipientDsnFields.add_member(:final_recipient, Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'FinalRecipient', traits: {"smithy.api#documentation" => "<p>The email address that the message was ultimately delivered to. This corresponds to\n            the <code>Final-Recipient</code> in the DSN. If not specified,\n                <code>FinalRecipient</code> is set to the <code>Recipient</code> specified in the\n                <code>BouncedRecipientInfo</code> structure. Either <code>FinalRecipient</code> or\n            the recipient in <code>BouncedRecipientInfo</code> must be a recipient of the original\n            bounced message.</p>\n         <note>\n            <p>Do not prepend the <code>FinalRecipient</code> email address with <code>rfc\n                    822;</code>, as described in <a href=\"https://tools.ietf.org/html/rfc3798\">RFC 3798</a>.</p>\n         </note>"}))
    RecipientDsnFields.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: DsnAction, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The action performed by the reporting mail transfer agent (MTA) as a result of its\n            attempt to deliver the message to the recipient address. This is required by <a href=\"https://tools.ietf.org/html/rfc3464\">RFC 3464</a>.</p>", "smithy.api#required" => {}}))
    RecipientDsnFields.add_member(:remote_mta, Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteMta, location_name: 'RemoteMta', traits: {"smithy.api#documentation" => "<p>The MTA to which the remote MTA attempted to deliver the message, formatted as\n            specified in <a href=\"https://tools.ietf.org/html/rfc3464\">RFC 3464</a>\n                (<code>mta-name-type; mta-name</code>). This parameter typically applies only to\n            propagating synchronous bounces.</p>"}))
    RecipientDsnFields.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DsnStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status code that indicates what went wrong. This is required by <a href=\"https://tools.ietf.org/html/rfc3464\">RFC 3464</a>.</p>", "smithy.api#required" => {}}))
    RecipientDsnFields.add_member(:diagnostic_code, Smithy::Schema::Shapes::ShapeRef.new(shape: DiagnosticCode, location_name: 'DiagnosticCode', traits: {"smithy.api#documentation" => "<p>An extended explanation of what went wrong; this is usually an SMTP response. See\n                <a href=\"https://tools.ietf.org/html/rfc3463\">RFC 3463</a> for the correct\n            formatting of this parameter.</p>"}))
    RecipientDsnFields.add_member(:last_attempt_date, Smithy::Schema::Shapes::ShapeRef.new(shape: LastAttemptDate, location_name: 'LastAttemptDate', traits: {"smithy.api#documentation" => "<p>The time the final delivery attempt was made, in <a href=\"https://www.ietf.org/rfc/rfc0822.txt\">RFC 822</a> date-time format.</p>"}))
    RecipientDsnFields.add_member(:extension_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtensionFieldList, location_name: 'ExtensionFields', traits: {"smithy.api#documentation" => "<p>Additional X-headers to include in the DSN.</p>"}))
    RecipientDsnFields.type = Types::RecipientDsnFields
    RecipientsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Recipient)
    ReorderReceiptRuleSetRequest.add_member(:rule_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRuleSetName, location_name: 'RuleSetName', traits: {"smithy.api#documentation" => "<p>The name of the receipt rule set to reorder.</p>", "smithy.api#required" => {}}))
    ReorderReceiptRuleSetRequest.add_member(:rule_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRuleNamesList, location_name: 'RuleNames', traits: {"smithy.api#documentation" => "<p>The specified receipt rule set's receipt rules, in order.</p>", "smithy.api#required" => {}}))
    ReorderReceiptRuleSetRequest.type = Types::ReorderReceiptRuleSetRequest
    ReorderReceiptRuleSetResponse.type = Types::ReorderReceiptRuleSetResponse
    ReputationOptions.add_member(:sending_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'SendingEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Describes whether email sending is enabled or disabled for the configuration set. If\n            the value is <code>true</code>, then Amazon SES sends emails that use the configuration set.\n            If the value is <code>false</code>, Amazon SES does not send emails that use the\n            configuration set. The default value is <code>true</code>. You can change this setting\n            using <a>UpdateConfigurationSetSendingEnabled</a>.</p>"}))
    ReputationOptions.add_member(:reputation_metrics_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'ReputationMetricsEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Describes whether or not Amazon SES publishes reputation metrics for the configuration set,\n            such as bounce and complaint rates, to Amazon CloudWatch.</p>\n         <p>If the value is <code>true</code>, reputation metrics are published. If the value is\n                <code>false</code>, reputation metrics are not published. The default value is\n                <code>false</code>.</p>"}))
    ReputationOptions.add_member(:last_fresh_start, Smithy::Schema::Shapes::ShapeRef.new(shape: LastFreshStart, location_name: 'LastFreshStart', traits: {"smithy.api#documentation" => "<p>The date and time at which the reputation metrics for the configuration set were last\n            reset. Resetting these metrics is known as a <i>fresh start</i>.</p>\n         <p>When you disable email sending for a configuration set using <a>UpdateConfigurationSetSendingEnabled</a> and later re-enable it, the\n            reputation metrics for the configuration set (but not for the entire Amazon SES account) are\n            reset.</p>\n         <p>If email sending for the configuration set has never been disabled and later\n            re-enabled, the value of this attribute is <code>null</code>.</p>"}))
    ReputationOptions.type = Types::ReputationOptions
    RuleDoesNotExistException.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleOrRuleSetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Indicates that the named receipt rule does not exist.</p>"}))
    RuleDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    RuleDoesNotExistException.type = Types::RuleDoesNotExistException
    RuleSetDoesNotExistException.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleOrRuleSetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Indicates that the named receipt rule set does not exist.</p>"}))
    RuleSetDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    RuleSetDoesNotExistException.type = Types::RuleSetDoesNotExistException
    S3Action.add_member(:topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'TopicArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Amazon SNS topic to notify when the message is saved to the Amazon S3 bucket. You\n            can find the ARN of a topic by using the <a href=\"https://docs.aws.amazon.com/sns/latest/api/API_ListTopics.html\">ListTopics</a> operation in\n            Amazon SNS.</p>\n         <p>For more information about Amazon SNS topics, see the <a href=\"https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html\">Amazon SNS Developer Guide</a>.</p>"}))
    S3Action.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'BucketName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon S3 bucket for incoming email.</p>", "smithy.api#required" => {}}))
    S3Action.add_member(:object_key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: 'ObjectKeyPrefix', traits: {"smithy.api#documentation" => "<p>The key prefix of the Amazon S3 bucket. The key prefix is similar to a directory name that\n            enables you to store similar data under the same directory in a bucket.</p>"}))
    S3Action.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The customer managed key that Amazon SES should use to encrypt your emails before saving\n            them to the Amazon S3 bucket. You can use the Amazon Web Services managed key or a customer managed key\n            that you created in Amazon Web Services KMS as follows:</p>\n         <ul>\n            <li>\n               <p>To use the Amazon Web Services managed key, provide an ARN in the form of\n                        <code>arn:aws:kms:REGION:ACCOUNT-ID-WITHOUT-HYPHENS:alias/aws/ses</code>.\n                    For example, if your Amazon Web Services account ID is 123456789012 and you want to use the\n                    Amazon Web Services managed key in the US West (Oregon) Region, the ARN of the Amazon Web Services managed\n                    key would be <code>arn:aws:kms:us-west-2:123456789012:alias/aws/ses</code>. If\n                    you use the Amazon Web Services managed key, you don't need to perform any extra steps to give\n                    Amazon SES permission to use the key.</p>\n            </li>\n            <li>\n               <p>To use a customer managed key that you created in Amazon Web Services KMS, provide the ARN\n                    of the customer managed key and ensure that you add a statement to your key's\n                    policy to give Amazon SES permission to use it. For more information about giving\n                    permissions, see the <a href=\"https://docs.aws.amazon.com/ses/latest/dg/receiving-email-permissions.html\">Amazon SES Developer\n                        Guide</a>.</p>\n            </li>\n         </ul>\n         <p>For more information about key policies, see the <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html\">Amazon Web Services KMS Developer Guide</a>. If\n            you do not specify an Amazon Web Services KMS key, Amazon SES does not encrypt your emails.</p>\n         <important>\n            <p>Your mail is encrypted by Amazon SES using the Amazon S3 encryption client before the mail\n                is submitted to Amazon S3 for storage. It is not encrypted using Amazon S3 server-side\n                encryption. This means that you must use the Amazon S3 encryption client to decrypt the\n                email after retrieving it from Amazon S3, as the service has no access to use your\n                Amazon Web Services KMS keys for decryption. This encryption client is currently available with\n                the <a href=\"http://aws.amazon.com/sdk-for-java/\">Amazon Web Services SDK for Java</a> and\n                    <a href=\"http://aws.amazon.com/sdk-for-ruby/\">Amazon Web Services SDK for Ruby</a> only. For\n                more information about client-side encryption using Amazon Web Services KMS managed keys, see the\n                    <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html\">Amazon S3 Developer Guide</a>.</p>\n         </important>"}))
    S3Action.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleARN, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p> The ARN of the IAM role to be used by Amazon Simple Email Service while writing to the Amazon S3 bucket,\n            optionally encrypting your mail via the provided customer managed key, and publishing to\n            the Amazon SNS topic. This role should have access to the following APIs: </p>\n         <ul>\n            <li>\n               <p>\n                  <code>s3:PutObject</code>, <code>kms:Encrypt</code> and\n                        <code>kms:GenerateDataKey</code> for the given Amazon S3 bucket.</p>\n            </li>\n            <li>\n               <p>\n                  <code>kms:GenerateDataKey</code> for the given Amazon Web Services KMS customer managed key.\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>sns:Publish</code> for the given Amazon SNS topic.</p>\n            </li>\n         </ul>\n         <note>\n            <p>If an IAM role ARN is provided, the role (and only the role) is used to access all\n                the given resources (Amazon S3 bucket, Amazon Web Services KMS customer managed key and Amazon SNS topic).\n                Therefore, setting up individual resource access permissions is not required.</p>\n         </note>"}))
    S3Action.type = Types::S3Action
    SNSAction.add_member(:topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'TopicArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon SNS topic to notify. You can find the ARN of a\n            topic by using the <a href=\"https://docs.aws.amazon.com/sns/latest/api/API_ListTopics.html\">ListTopics</a> operation in Amazon SNS.</p>\n         <p>For more information about Amazon SNS topics, see the <a href=\"https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html\">Amazon SNS Developer Guide</a>.</p>", "smithy.api#required" => {}}))
    SNSAction.add_member(:encoding, Smithy::Schema::Shapes::ShapeRef.new(shape: SNSActionEncoding, location_name: 'Encoding', traits: {"smithy.api#documentation" => "<p>The encoding to use for the email within the Amazon SNS notification. UTF-8 is easier to\n            use, but may not preserve all special characters when a message was encoded with a\n            different encoding format. Base64 preserves all special characters. The default value is\n            UTF-8.</p>"}))
    SNSAction.type = Types::SNSAction
    SNSActionEncoding.add_member(:utf8, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UTF8', traits: {"smithy.api#enumValue" => "UTF-8"}))
    SNSActionEncoding.add_member(:base64, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Base64', traits: {"smithy.api#enumValue" => "Base64"}))
    SNSDestination.add_member(:topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'TopicARN', traits: {"smithy.api#documentation" => "<p>The ARN of the Amazon SNS topic for email sending events. You can find the ARN of a topic\n            by using the <a href=\"https://docs.aws.amazon.com/sns/latest/api/API_ListTopics.html\">ListTopics</a> Amazon SNS operation.</p>\n         <p>For more information about Amazon SNS topics, see the <a href=\"https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html\">Amazon SNS Developer Guide</a>.</p>", "smithy.api#required" => {}}))
    SNSDestination.type = Types::SNSDestination
    SendBounceRequest.add_member(:original_message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'OriginalMessageId', traits: {"smithy.api#documentation" => "<p>The message ID of the message to be bounced.</p>", "smithy.api#required" => {}}))
    SendBounceRequest.add_member(:bounce_sender, Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'BounceSender', traits: {"smithy.api#documentation" => "<p>The address to use in the \"From\" header of the bounce message. This must be an\n            identity that you have verified with Amazon SES.</p>", "smithy.api#required" => {}}))
    SendBounceRequest.add_member(:explanation, Smithy::Schema::Shapes::ShapeRef.new(shape: Explanation, location_name: 'Explanation', traits: {"smithy.api#documentation" => "<p>Human-readable text for the bounce message to explain the failure. If not specified,\n            the text is auto-generated based on the bounced recipient information.</p>"}))
    SendBounceRequest.add_member(:message_dsn, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageDsn, location_name: 'MessageDsn', traits: {"smithy.api#documentation" => "<p>Message-related DSN fields. If not specified, Amazon SES chooses the values.</p>"}))
    SendBounceRequest.add_member(:bounced_recipient_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: BouncedRecipientInfoList, location_name: 'BouncedRecipientInfoList', traits: {"smithy.api#documentation" => "<p>A list of recipients of the bounced message, including the information required to\n            create the Delivery Status Notifications (DSNs) for the recipients. You must specify at\n            least one <code>BouncedRecipientInfo</code> in the list.</p>", "smithy.api#required" => {}}))
    SendBounceRequest.add_member(:bounce_sender_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'BounceSenderArn', traits: {"smithy.api#documentation" => "<p>This parameter is used only for sending authorization. It is the ARN of the identity\n            that is associated with the sending authorization policy that permits you to use the\n            address in the \"From\" header of the bounce. For more information about sending\n            authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html\">Amazon SES Developer Guide</a>.</p>"}))
    SendBounceRequest.type = Types::SendBounceRequest
    SendBounceResponse.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The message ID of the bounce message.</p>"}))
    SendBounceResponse.type = Types::SendBounceResponse
    SendBulkTemplatedEmailRequest.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'Source', traits: {"smithy.api#documentation" => "<p>The email address that is sending the email. This email address must be either\n            individually verified with Amazon SES, or from a domain that has been verified with Amazon SES.\n            For information about verifying identities, see the <a href=\"https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html\">Amazon SES Developer Guide</a>.</p>\n         <p>If you are sending on behalf of another user and have been permitted to do so by a\n            sending authorization policy, then you must also specify the <code>SourceArn</code>\n            parameter. For more information about sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html\">Amazon SES Developer\n                Guide</a>.</p>\n         <note>\n            <p>Amazon SES does not support the SMTPUTF8 extension, as described in <a href=\"https://tools.ietf.org/html/rfc6531\">RFC6531</a>. For this reason, the\n                email address string must be 7-bit ASCII. If you want to send to or from email\n                addresses that contain Unicode characters in the domain part of an address, you must\n                encode the domain using Punycode. Punycode is not permitted in the local part of the\n                email address (the part before the @ sign) nor in the \"friendly from\" name. If you\n                want to use Unicode characters in the \"friendly from\" name, you must encode the\n                \"friendly from\" name using MIME encoded-word syntax, as described in <a href=\"https://docs.aws.amazon.com/ses/latest/dg/send-email-raw.html\">Sending raw email\n                    using the Amazon SES API</a>. For more information about Punycode, see <a href=\"http://tools.ietf.org/html/rfc3492\">RFC 3492</a>.</p>\n         </note>", "smithy.api#required" => {}}))
    SendBulkTemplatedEmailRequest.add_member(:source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'SourceArn', traits: {"smithy.api#documentation" => "<p>This parameter is used only for sending authorization. It is the ARN of the identity\n            that is associated with the sending authorization policy that permits you to send for\n            the email address specified in the <code>Source</code> parameter.</p>\n         <p>For example, if the owner of <code>example.com</code> (which has ARN\n                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a\n            policy to it that authorizes you to send from <code>user@example.com</code>, then you\n            would specify the <code>SourceArn</code> to be\n                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the\n                <code>Source</code> to be <code>user@example.com</code>.</p>\n         <p>For more information about sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html\">Amazon SES Developer Guide</a>.</p>"}))
    SendBulkTemplatedEmailRequest.add_member(:reply_to_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressList, location_name: 'ReplyToAddresses', traits: {"smithy.api#documentation" => "<p>The reply-to email address(es) for the message. If the recipient replies to the\n            message, each reply-to address receives the reply.</p>"}))
    SendBulkTemplatedEmailRequest.add_member(:return_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'ReturnPath', traits: {"smithy.api#documentation" => "<p>The email address that bounces and complaints are forwarded to when feedback\n            forwarding is enabled. If the message cannot be delivered to the recipient, then an\n            error message is returned from the recipient's ISP; this message is forwarded to the\n            email address specified by the <code>ReturnPath</code> parameter. The\n                <code>ReturnPath</code> parameter is never overwritten. This email address must be\n            either individually verified with Amazon SES, or from a domain that has been verified with\n            Amazon SES. </p>"}))
    SendBulkTemplatedEmailRequest.add_member(:return_path_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ReturnPathArn', traits: {"smithy.api#documentation" => "<p>This parameter is used only for sending authorization. It is the ARN of the identity\n            that is associated with the sending authorization policy that permits you to use the\n            email address specified in the <code>ReturnPath</code> parameter.</p>\n         <p>For example, if the owner of <code>example.com</code> (which has ARN\n                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a\n            policy to it that authorizes you to use <code>feedback@example.com</code>, then you\n            would specify the <code>ReturnPathArn</code> to be\n                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the\n                <code>ReturnPath</code> to be <code>feedback@example.com</code>.</p>\n         <p>For more information about sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html\">Amazon SES Developer Guide</a>.</p>"}))
    SendBulkTemplatedEmailRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set to use when you send an email using\n                <code>SendBulkTemplatedEmail</code>.</p>"}))
    SendBulkTemplatedEmailRequest.add_member(:default_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTagList, location_name: 'DefaultTags', traits: {"smithy.api#documentation" => "<p>A list of tags, in the form of name/value pairs, to apply to an email that you send to\n            a destination using <code>SendBulkTemplatedEmail</code>.</p>"}))
    SendBulkTemplatedEmailRequest.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'Template', traits: {"smithy.api#documentation" => "<p>The template to use when sending this email.</p>", "smithy.api#required" => {}}))
    SendBulkTemplatedEmailRequest.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The ARN of the template to use when sending this email.</p>"}))
    SendBulkTemplatedEmailRequest.add_member(:default_template_data, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateData, location_name: 'DefaultTemplateData', traits: {"smithy.api#documentation" => "<p>A list of replacement values to apply to the template when replacement data is not\n            specified in a Destination object. These values act as a default or fallback option when\n            no other data is available.</p>\n         <p>The template data is a JSON object, typically consisting of key-value pairs in which\n            the keys correspond to replacement tags in the email template.</p>", "smithy.api#required" => {}}))
    SendBulkTemplatedEmailRequest.add_member(:destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: BulkEmailDestinationList, location_name: 'Destinations', traits: {"smithy.api#documentation" => "<p>One or more <code>Destination</code> objects. All of the recipients in a\n                <code>Destination</code> receive the same version of the email. You can specify up\n            to 50 <code>Destination</code> objects within a <code>Destinations</code> array.</p>", "smithy.api#required" => {}}))
    SendBulkTemplatedEmailRequest.type = Types::SendBulkTemplatedEmailRequest
    SendBulkTemplatedEmailResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: BulkEmailDestinationStatusList, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>One object per intended recipient. Check each response object and retry any messages\n            with a failure status. (Note that order of responses will be respective to order of\n            destinations in the request.)Receipt rules enable you to specify which actions </p>", "smithy.api#required" => {}}))
    SendBulkTemplatedEmailResponse.type = Types::SendBulkTemplatedEmailResponse
    SendCustomVerificationEmailRequest.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'EmailAddress', traits: {"smithy.api#documentation" => "<p>The email address to verify.</p>", "smithy.api#required" => {}}))
    SendCustomVerificationEmailRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the custom verification email template to use when sending the\n            verification email.</p>", "smithy.api#required" => {}}))
    SendCustomVerificationEmailRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>Name of a configuration set to use when sending the verification email.</p>"}))
    SendCustomVerificationEmailRequest.type = Types::SendCustomVerificationEmailRequest
    SendCustomVerificationEmailResponse.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The unique message identifier returned from the\n                <code>SendCustomVerificationEmail</code> operation.</p>"}))
    SendCustomVerificationEmailResponse.type = Types::SendCustomVerificationEmailResponse
    SendDataPoint.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp', traits: {"smithy.api#documentation" => "<p>Time of the data point.</p>"}))
    SendDataPoint.add_member(:delivery_attempts, Smithy::Schema::Shapes::ShapeRef.new(shape: Counter, location_name: 'DeliveryAttempts', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Number of emails that have been sent.</p>"}))
    SendDataPoint.add_member(:bounces, Smithy::Schema::Shapes::ShapeRef.new(shape: Counter, location_name: 'Bounces', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Number of emails that have bounced.</p>"}))
    SendDataPoint.add_member(:complaints, Smithy::Schema::Shapes::ShapeRef.new(shape: Counter, location_name: 'Complaints', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Number of unwanted emails that were rejected by recipients.</p>"}))
    SendDataPoint.add_member(:rejects, Smithy::Schema::Shapes::ShapeRef.new(shape: Counter, location_name: 'Rejects', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Number of emails rejected by Amazon SES.</p>"}))
    SendDataPoint.type = Types::SendDataPoint
    SendDataPointList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SendDataPoint)
    SendEmailRequest.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'Source', traits: {"smithy.api#documentation" => "<p>The email address that is sending the email. This email address must be either\n            individually verified with Amazon SES, or from a domain that has been verified with Amazon SES.\n            For information about verifying identities, see the <a href=\"https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html\">Amazon SES Developer Guide</a>.</p>\n         <p>If you are sending on behalf of another user and have been permitted to do so by a\n            sending authorization policy, then you must also specify the <code>SourceArn</code>\n            parameter. For more information about sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html\">Amazon SES Developer\n                Guide</a>.</p>\n         <note>\n            <p>Amazon SES does not support the SMTPUTF8 extension, as described in <a href=\"https://tools.ietf.org/html/rfc6531\">RFC6531</a>. For this reason, the\n                email address string must be 7-bit ASCII. If you want to send to or from email\n                addresses that contain Unicode characters in the domain part of an address, you must\n                encode the domain using Punycode. Punycode is not permitted in the local part of the\n                email address (the part before the @ sign) nor in the \"friendly from\" name. If you\n                want to use Unicode characters in the \"friendly from\" name, you must encode the\n                \"friendly from\" name using MIME encoded-word syntax, as described in <a href=\"https://docs.aws.amazon.com/ses/latest/dg/send-email-raw.html\">Sending raw email\n                    using the Amazon SES API</a>. For more information about Punycode, see <a href=\"http://tools.ietf.org/html/rfc3492\">RFC 3492</a>.</p>\n         </note>", "smithy.api#required" => {}}))
    SendEmailRequest.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 'Destination', traits: {"smithy.api#documentation" => "<p>The destination for this email, composed of To:, CC:, and BCC: fields.</p>", "smithy.api#required" => {}}))
    SendEmailRequest.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The message to be sent.</p>", "smithy.api#required" => {}}))
    SendEmailRequest.add_member(:reply_to_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressList, location_name: 'ReplyToAddresses', traits: {"smithy.api#documentation" => "<p>The reply-to email address(es) for the message. If the recipient replies to the\n            message, each reply-to address receives the reply.</p>"}))
    SendEmailRequest.add_member(:return_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'ReturnPath', traits: {"smithy.api#documentation" => "<p>The email address that bounces and complaints are forwarded to when feedback\n            forwarding is enabled. If the message cannot be delivered to the recipient, then an\n            error message is returned from the recipient's ISP; this message is forwarded to the\n            email address specified by the <code>ReturnPath</code> parameter. The\n                <code>ReturnPath</code> parameter is never overwritten. This email address must be\n            either individually verified with Amazon SES, or from a domain that has been verified with\n            Amazon SES. </p>"}))
    SendEmailRequest.add_member(:source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'SourceArn', traits: {"smithy.api#documentation" => "<p>This parameter is used only for sending authorization. It is the ARN of the identity\n            that is associated with the sending authorization policy that permits you to send for\n            the email address specified in the <code>Source</code> parameter.</p>\n         <p>For example, if the owner of <code>example.com</code> (which has ARN\n                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a\n            policy to it that authorizes you to send from <code>user@example.com</code>, then you\n            would specify the <code>SourceArn</code> to be\n                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the\n                <code>Source</code> to be <code>user@example.com</code>.</p>\n         <p>For more information about sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html\">Amazon SES Developer Guide</a>.</p>"}))
    SendEmailRequest.add_member(:return_path_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ReturnPathArn', traits: {"smithy.api#documentation" => "<p>This parameter is used only for sending authorization. It is the ARN of the identity\n            that is associated with the sending authorization policy that permits you to use the\n            email address specified in the <code>ReturnPath</code> parameter.</p>\n         <p>For example, if the owner of <code>example.com</code> (which has ARN\n                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a\n            policy to it that authorizes you to use <code>feedback@example.com</code>, then you\n            would specify the <code>ReturnPathArn</code> to be\n                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the\n                <code>ReturnPath</code> to be <code>feedback@example.com</code>.</p>\n         <p>For more information about sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html\">Amazon SES Developer Guide</a>.</p>"}))
    SendEmailRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags, in the form of name/value pairs, to apply to an email that you send\n            using <code>SendEmail</code>. Tags correspond to characteristics of the email that you\n            define, so that you can publish email sending events.</p>"}))
    SendEmailRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set to use when you send an email using\n                <code>SendEmail</code>.</p>"}))
    SendEmailRequest.type = Types::SendEmailRequest
    SendEmailResponse.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The unique message identifier returned from the <code>SendEmail</code> action. </p>", "smithy.api#required" => {}}))
    SendEmailResponse.type = Types::SendEmailResponse
    SendRawEmailRequest.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'Source', traits: {"smithy.api#documentation" => "<p>The identity's email address. If you do not provide a value for this parameter, you\n            must specify a \"From\" address in the raw text of the message. (You can also specify\n            both.)</p>\n         <note>\n            <p>Amazon SES does not support the SMTPUTF8 extension, as described in<a href=\"https://tools.ietf.org/html/rfc6531\">RFC6531</a>. For this reason, the\n                email address string must be 7-bit ASCII. If you want to send to or from email\n                addresses that contain Unicode characters in the domain part of an address, you must\n                encode the domain using Punycode. Punycode is not permitted in the local part of the\n                email address (the part before the @ sign) nor in the \"friendly from\" name. If you\n                want to use Unicode characters in the \"friendly from\" name, you must encode the\n                \"friendly from\" name using MIME encoded-word syntax, as described in <a href=\"https://docs.aws.amazon.com/ses/latest/dg/send-email-raw.html\">Sending raw email\n                    using the Amazon SES API</a>. For more information about Punycode, see <a href=\"http://tools.ietf.org/html/rfc3492\">RFC 3492</a>.</p>\n         </note>\n         <p>If you specify the <code>Source</code> parameter and have feedback forwarding enabled,\n            then bounces and complaints are sent to this email address. This takes precedence over\n            any Return-Path header that you might include in the raw text of the message.</p>"}))
    SendRawEmailRequest.add_member(:destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressList, location_name: 'Destinations', traits: {"smithy.api#documentation" => "<p>A list of destinations for the message, consisting of To:, CC:, and BCC:\n            addresses.</p>"}))
    SendRawEmailRequest.add_member(:raw_message, Smithy::Schema::Shapes::ShapeRef.new(shape: RawMessage, location_name: 'RawMessage', traits: {"smithy.api#documentation" => "<p>The raw email message itself. The message has to meet the following criteria:</p>\n         <ul>\n            <li>\n               <p>The message has to contain a header and a body, separated by a blank\n                    line.</p>\n            </li>\n            <li>\n               <p>All of the required header fields must be present in the message.</p>\n            </li>\n            <li>\n               <p>Each part of a multipart MIME message must be formatted properly.</p>\n            </li>\n            <li>\n               <p>Attachments must be of a content type that Amazon SES supports. For a list on\n                    unsupported content types, see <a href=\"https://docs.aws.amazon.com/ses/latest/dg/mime-types.html\">Unsupported Attachment Types</a> in\n                    the <i>Amazon SES Developer Guide</i>.</p>\n            </li>\n            <li>\n               <p>The entire message must be base64-encoded.</p>\n            </li>\n            <li>\n               <p>If any of the MIME parts in your message contain content that is outside of\n                    the 7-bit ASCII character range, we highly recommend that you encode that\n                    content. For more information, see <a href=\"https://docs.aws.amazon.com/ses/latest/dg/send-email-raw.html\">Sending Raw\n                        Email</a> in the <i>Amazon SES Developer Guide</i>.</p>\n            </li>\n            <li>\n               <p>Per <a href=\"https://tools.ietf.org/html/rfc5321#section-4.5.3.1.6\">RFC\n                        5321</a>, the maximum length of each line of text, including the\n                    <CRLF>, must not exceed 1,000 characters.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    SendRawEmailRequest.add_member(:from_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'FromArn', traits: {"smithy.api#documentation" => "<p>This parameter is used only for sending authorization. It is the ARN of the identity\n            that is associated with the sending authorization policy that permits you to specify a\n            particular \"From\" address in the header of the raw email.</p>\n         <p>Instead of using this parameter, you can use the X-header <code>X-SES-FROM-ARN</code>\n            in the raw message of the email. If you use both the <code>FromArn</code> parameter and\n            the corresponding X-header, Amazon SES uses the value of the <code>FromArn</code>\n            parameter.</p>\n         <note>\n            <p>For information about when to use this parameter, see the description of\n                    <code>SendRawEmail</code> in this guide, or see the <a href=\"https://docs.aws.amazon.com/ses/latest/dg/sending-authorization-delegate-sender-tasks-email.html\">Amazon SES\n                    Developer Guide</a>.</p>\n         </note>"}))
    SendRawEmailRequest.add_member(:source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'SourceArn', traits: {"smithy.api#documentation" => "<p>This parameter is used only for sending authorization. It is the ARN of the identity\n            that is associated with the sending authorization policy that permits you to send for\n            the email address specified in the <code>Source</code> parameter.</p>\n         <p>For example, if the owner of <code>example.com</code> (which has ARN\n                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a\n            policy to it that authorizes you to send from <code>user@example.com</code>, then you\n            would specify the <code>SourceArn</code> to be\n                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the\n                <code>Source</code> to be <code>user@example.com</code>.</p>\n         <p>Instead of using this parameter, you can use the X-header\n                <code>X-SES-SOURCE-ARN</code> in the raw message of the email. If you use both the\n                <code>SourceArn</code> parameter and the corresponding X-header, Amazon SES uses the\n            value of the <code>SourceArn</code> parameter.</p>\n         <note>\n            <p>For information about when to use this parameter, see the description of\n                    <code>SendRawEmail</code> in this guide, or see the <a href=\"https://docs.aws.amazon.com/ses/latest/dg/sending-authorization-delegate-sender-tasks-email.html\">Amazon SES\n                    Developer Guide</a>.</p>\n         </note>"}))
    SendRawEmailRequest.add_member(:return_path_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ReturnPathArn', traits: {"smithy.api#documentation" => "<p>This parameter is used only for sending authorization. It is the ARN of the identity\n            that is associated with the sending authorization policy that permits you to use the\n            email address specified in the <code>ReturnPath</code> parameter.</p>\n         <p>For example, if the owner of <code>example.com</code> (which has ARN\n                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a\n            policy to it that authorizes you to use <code>feedback@example.com</code>, then you\n            would specify the <code>ReturnPathArn</code> to be\n                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the\n                <code>ReturnPath</code> to be <code>feedback@example.com</code>.</p>\n         <p>Instead of using this parameter, you can use the X-header\n                <code>X-SES-RETURN-PATH-ARN</code> in the raw message of the email. If you use both\n            the <code>ReturnPathArn</code> parameter and the corresponding X-header, Amazon SES uses the\n            value of the <code>ReturnPathArn</code> parameter.</p>\n         <note>\n            <p>For information about when to use this parameter, see the description of\n                    <code>SendRawEmail</code> in this guide, or see the <a href=\"https://docs.aws.amazon.com/ses/latest/dg/sending-authorization-delegate-sender-tasks-email.html\">Amazon SES\n                    Developer Guide</a>.</p>\n         </note>"}))
    SendRawEmailRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags, in the form of name/value pairs, to apply to an email that you send\n            using <code>SendRawEmail</code>. Tags correspond to characteristics of the email that\n            you define, so that you can publish email sending events.</p>"}))
    SendRawEmailRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set to use when you send an email using\n                <code>SendRawEmail</code>.</p>"}))
    SendRawEmailRequest.type = Types::SendRawEmailRequest
    SendRawEmailResponse.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The unique message identifier returned from the <code>SendRawEmail</code> action.\n        </p>", "smithy.api#required" => {}}))
    SendRawEmailResponse.type = Types::SendRawEmailResponse
    SendTemplatedEmailRequest.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'Source', traits: {"smithy.api#documentation" => "<p>The email address that is sending the email. This email address must be either\n            individually verified with Amazon SES, or from a domain that has been verified with Amazon SES.\n            For information about verifying identities, see the <a href=\"https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html\">Amazon SES Developer Guide</a>.</p>\n         <p>If you are sending on behalf of another user and have been permitted to do so by a\n            sending authorization policy, then you must also specify the <code>SourceArn</code>\n            parameter. For more information about sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html\">Amazon SES Developer\n                Guide</a>.</p>\n         <note>\n            <p>Amazon SES does not support the SMTPUTF8 extension, as described in <a href=\"https://tools.ietf.org/html/rfc6531\">RFC6531</a>. for this reason, The\n                email address string must be 7-bit ASCII. If you want to send to or from email\n                addresses that contain Unicode characters in the domain part of an address, you must\n                encode the domain using Punycode. Punycode is not permitted in the local part of the\n                email address (the part before the @ sign) nor in the \"friendly from\" name. If you\n                want to use Unicode characters in the \"friendly from\" name, you must encode the\n                \"friendly from\" name using MIME encoded-word syntax, as described in <a href=\"https://docs.aws.amazon.com/ses/latest/dg/send-email-raw.html\">Sending raw email\n                    using the Amazon SES API</a>. For more information about Punycode, see <a href=\"http://tools.ietf.org/html/rfc3492\">RFC 3492</a>.</p>\n         </note>", "smithy.api#required" => {}}))
    SendTemplatedEmailRequest.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 'Destination', traits: {"smithy.api#documentation" => "<p>The destination for this email, composed of To:, CC:, and BCC: fields. A Destination\n            can include up to 50 recipients across these three fields.</p>", "smithy.api#required" => {}}))
    SendTemplatedEmailRequest.add_member(:reply_to_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressList, location_name: 'ReplyToAddresses', traits: {"smithy.api#documentation" => "<p>The reply-to email address(es) for the message. If the recipient replies to the\n            message, each reply-to address receives the reply.</p>"}))
    SendTemplatedEmailRequest.add_member(:return_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'ReturnPath', traits: {"smithy.api#documentation" => "<p>The email address that bounces and complaints are forwarded to when feedback\n            forwarding is enabled. If the message cannot be delivered to the recipient, then an\n            error message is returned from the recipient's ISP; this message is forwarded to the\n            email address specified by the <code>ReturnPath</code> parameter. The\n                <code>ReturnPath</code> parameter is never overwritten. This email address must be\n            either individually verified with Amazon SES, or from a domain that has been verified with\n            Amazon SES. </p>"}))
    SendTemplatedEmailRequest.add_member(:source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'SourceArn', traits: {"smithy.api#documentation" => "<p>This parameter is used only for sending authorization. It is the ARN of the identity\n            that is associated with the sending authorization policy that permits you to send for\n            the email address specified in the <code>Source</code> parameter.</p>\n         <p>For example, if the owner of <code>example.com</code> (which has ARN\n                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a\n            policy to it that authorizes you to send from <code>user@example.com</code>, then you\n            would specify the <code>SourceArn</code> to be\n                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the\n                <code>Source</code> to be <code>user@example.com</code>.</p>\n         <p>For more information about sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html\">Amazon SES Developer Guide</a>.</p>"}))
    SendTemplatedEmailRequest.add_member(:return_path_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ReturnPathArn', traits: {"smithy.api#documentation" => "<p>This parameter is used only for sending authorization. It is the ARN of the identity\n            that is associated with the sending authorization policy that permits you to use the\n            email address specified in the <code>ReturnPath</code> parameter.</p>\n         <p>For example, if the owner of <code>example.com</code> (which has ARN\n                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a\n            policy to it that authorizes you to use <code>feedback@example.com</code>, then you\n            would specify the <code>ReturnPathArn</code> to be\n                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the\n                <code>ReturnPath</code> to be <code>feedback@example.com</code>.</p>\n         <p>For more information about sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html\">Amazon SES Developer Guide</a>.</p>"}))
    SendTemplatedEmailRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags, in the form of name/value pairs, to apply to an email that you send\n            using <code>SendTemplatedEmail</code>. Tags correspond to characteristics of the email\n            that you define, so that you can publish email sending events.</p>"}))
    SendTemplatedEmailRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set to use when you send an email using\n                <code>SendTemplatedEmail</code>.</p>"}))
    SendTemplatedEmailRequest.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'Template', traits: {"smithy.api#documentation" => "<p>The template to use when sending this email.</p>", "smithy.api#required" => {}}))
    SendTemplatedEmailRequest.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The ARN of the template to use when sending this email.</p>"}))
    SendTemplatedEmailRequest.add_member(:template_data, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateData, location_name: 'TemplateData', traits: {"smithy.api#documentation" => "<p>A list of replacement values to apply to the template. This parameter is a JSON\n            object, typically consisting of key-value pairs in which the keys correspond to\n            replacement tags in the email template.</p>", "smithy.api#required" => {}}))
    SendTemplatedEmailRequest.type = Types::SendTemplatedEmailRequest
    SendTemplatedEmailResponse.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The unique message identifier returned from the <code>SendTemplatedEmail</code>\n            action. </p>", "smithy.api#required" => {}}))
    SendTemplatedEmailResponse.type = Types::SendTemplatedEmailResponse
    SetActiveReceiptRuleSetRequest.add_member(:rule_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRuleSetName, location_name: 'RuleSetName', traits: {"smithy.api#documentation" => "<p>The name of the receipt rule set to make active. Setting this value to null disables\n            all email receiving.</p>"}))
    SetActiveReceiptRuleSetRequest.type = Types::SetActiveReceiptRuleSetRequest
    SetActiveReceiptRuleSetResponse.type = Types::SetActiveReceiptRuleSetResponse
    SetIdentityDkimEnabledRequest.add_member(:identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'Identity', traits: {"smithy.api#documentation" => "<p>The identity for which DKIM signing should be enabled or disabled.</p>", "smithy.api#required" => {}}))
    SetIdentityDkimEnabledRequest.add_member(:dkim_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'DkimEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Sets whether DKIM signing is enabled for an identity. Set to <code>true</code> to\n            enable DKIM signing for this identity; <code>false</code> to disable it. </p>", "smithy.api#required" => {}}))
    SetIdentityDkimEnabledRequest.type = Types::SetIdentityDkimEnabledRequest
    SetIdentityDkimEnabledResponse.type = Types::SetIdentityDkimEnabledResponse
    SetIdentityFeedbackForwardingEnabledRequest.add_member(:identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'Identity', traits: {"smithy.api#documentation" => "<p>The identity for which to set bounce and complaint notification forwarding. Examples:\n                <code>user@example.com</code>, <code>example.com</code>.</p>", "smithy.api#required" => {}}))
    SetIdentityFeedbackForwardingEnabledRequest.add_member(:forwarding_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'ForwardingEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Sets whether Amazon SES forwards bounce and complaint notifications as email.\n                <code>true</code> specifies that Amazon SES forwards bounce and complaint notifications\n            as email, in addition to any Amazon SNS topic publishing otherwise specified.\n                <code>false</code> specifies that Amazon SES publishes bounce and complaint notifications\n            only through Amazon SNS. This value can only be set to <code>false</code> when Amazon SNS topics\n            are set for both <code>Bounce</code> and <code>Complaint</code> notification\n            types.</p>", "smithy.api#required" => {}}))
    SetIdentityFeedbackForwardingEnabledRequest.type = Types::SetIdentityFeedbackForwardingEnabledRequest
    SetIdentityFeedbackForwardingEnabledResponse.type = Types::SetIdentityFeedbackForwardingEnabledResponse
    SetIdentityHeadersInNotificationsEnabledRequest.add_member(:identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'Identity', traits: {"smithy.api#documentation" => "<p>The identity for which to enable or disable headers in notifications. Examples:\n                <code>user@example.com</code>, <code>example.com</code>.</p>", "smithy.api#required" => {}}))
    SetIdentityHeadersInNotificationsEnabledRequest.add_member(:notification_type, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationType, location_name: 'NotificationType', traits: {"smithy.api#documentation" => "<p>The notification type for which to enable or disable headers in notifications. </p>", "smithy.api#required" => {}}))
    SetIdentityHeadersInNotificationsEnabledRequest.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'Enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Sets whether Amazon SES includes the original email headers in Amazon SNS notifications of the\n            specified notification type. A value of <code>true</code> specifies that Amazon SES includes\n            headers in notifications, and a value of <code>false</code> specifies that Amazon SES does\n            not include headers in notifications.</p>\n         <p>This value can only be set when <code>NotificationType</code> is already set to use a\n            particular Amazon SNS topic.</p>", "smithy.api#required" => {}}))
    SetIdentityHeadersInNotificationsEnabledRequest.type = Types::SetIdentityHeadersInNotificationsEnabledRequest
    SetIdentityHeadersInNotificationsEnabledResponse.type = Types::SetIdentityHeadersInNotificationsEnabledResponse
    SetIdentityMailFromDomainRequest.add_member(:identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'Identity', traits: {"smithy.api#documentation" => "<p>The verified identity.</p>", "smithy.api#required" => {}}))
    SetIdentityMailFromDomainRequest.add_member(:mail_from_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: MailFromDomainName, location_name: 'MailFromDomain', traits: {"smithy.api#documentation" => "<p>The custom MAIL FROM domain for the verified identity to use. The MAIL FROM domain\n            must 1) be a subdomain of the verified identity, 2) not be used in a \"From\" address if\n            the MAIL FROM domain is the destination of email feedback forwarding (for more\n            information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/dg/mail-from.html\">Amazon SES Developer Guide</a>), and 3) not be used to receive emails. A value of\n                <code>null</code> disables the custom MAIL FROM setting for the identity.</p>"}))
    SetIdentityMailFromDomainRequest.add_member(:behavior_on_mx_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: BehaviorOnMXFailure, location_name: 'BehaviorOnMXFailure', traits: {"smithy.api#documentation" => "<p>The action for Amazon SES to take if it cannot successfully read the required MX record\n            when you send an email. If you choose <code>UseDefaultValue</code>, Amazon SES uses\n            amazonses.com (or a subdomain of that) as the MAIL FROM domain. If you choose\n                <code>RejectMessage</code>, Amazon SES returns a <code>MailFromDomainNotVerified</code>\n            error and not send the email.</p>\n         <p>The action specified in <code>BehaviorOnMXFailure</code> is taken when the custom MAIL\n            FROM domain setup is in the <code>Pending</code>, <code>Failed</code>, and\n                <code>TemporaryFailure</code> states.</p>"}))
    SetIdentityMailFromDomainRequest.type = Types::SetIdentityMailFromDomainRequest
    SetIdentityMailFromDomainResponse.type = Types::SetIdentityMailFromDomainResponse
    SetIdentityNotificationTopicRequest.add_member(:identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'Identity', traits: {"smithy.api#documentation" => "<p>The identity (email address or domain) for the Amazon SNS topic.</p>\n         <important>\n            <p>You can only specify a verified identity for this parameter.</p>\n         </important>\n         <p>You can specify an identity by using its name or by using its Amazon Resource Name\n            (ARN). The following examples are all valid identities: <code>sender@example.com</code>,\n                <code>example.com</code>,\n                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>", "smithy.api#required" => {}}))
    SetIdentityNotificationTopicRequest.add_member(:notification_type, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationType, location_name: 'NotificationType', traits: {"smithy.api#documentation" => "<p>The type of notifications that are published to the specified Amazon SNS topic.</p>", "smithy.api#required" => {}}))
    SetIdentityNotificationTopicRequest.add_member(:sns_topic, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationTopic, location_name: 'SnsTopic', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon SNS topic. If the parameter is omitted from\n            the request or a null value is passed, <code>SnsTopic</code> is cleared and publishing\n            is disabled.</p>"}))
    SetIdentityNotificationTopicRequest.type = Types::SetIdentityNotificationTopicRequest
    SetIdentityNotificationTopicResponse.type = Types::SetIdentityNotificationTopicResponse
    SetReceiptRulePositionRequest.add_member(:rule_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRuleSetName, location_name: 'RuleSetName', traits: {"smithy.api#documentation" => "<p>The name of the receipt rule set that contains the receipt rule to reposition.</p>", "smithy.api#required" => {}}))
    SetReceiptRulePositionRequest.add_member(:rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRuleName, location_name: 'RuleName', traits: {"smithy.api#documentation" => "<p>The name of the receipt rule to reposition.</p>", "smithy.api#required" => {}}))
    SetReceiptRulePositionRequest.add_member(:after, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRuleName, location_name: 'After', traits: {"smithy.api#documentation" => "<p>The name of the receipt rule after which to place the specified receipt rule.</p>"}))
    SetReceiptRulePositionRequest.type = Types::SetReceiptRulePositionRequest
    SetReceiptRulePositionResponse.type = Types::SetReceiptRulePositionResponse
    StopAction.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: StopScope, location_name: 'Scope', traits: {"smithy.api#documentation" => "<p>The scope of the StopAction. The only acceptable value is <code>RuleSet</code>.</p>", "smithy.api#required" => {}}))
    StopAction.add_member(:topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'TopicArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when the stop action is\n            taken. You can find the ARN of a topic by using the <a href=\"https://docs.aws.amazon.com/sns/latest/api/API_ListTopics.html\">ListTopics</a> Amazon SNS operation.</p>\n         <p>For more information about Amazon SNS topics, see the <a href=\"https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html\">Amazon SNS Developer Guide</a>.</p>"}))
    StopAction.type = Types::StopAction
    StopScope.add_member(:rule_set, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RULE_SET', traits: {"smithy.api#enumValue" => "RuleSet"}))
    Template.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the template. You use this name when you send email using the\n                <code>SendTemplatedEmail</code> or <code>SendBulkTemplatedEmail</code>\n            operations.</p>", "smithy.api#required" => {}}))
    Template.add_member(:subject_part, Smithy::Schema::Shapes::ShapeRef.new(shape: SubjectPart, location_name: 'SubjectPart', traits: {"smithy.api#documentation" => "<p>The subject line of the email.</p>"}))
    Template.add_member(:text_part, Smithy::Schema::Shapes::ShapeRef.new(shape: TextPart, location_name: 'TextPart', traits: {"smithy.api#documentation" => "<p>The email body that is visible to recipients whose email clients do not display HTML\n            content.</p>"}))
    Template.add_member(:html_part, Smithy::Schema::Shapes::ShapeRef.new(shape: HtmlPart, location_name: 'HtmlPart', traits: {"smithy.api#documentation" => "<p>The HTML body of the email.</p>"}))
    Template.type = Types::Template
    TemplateDoesNotExistException.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'TemplateName'))
    TemplateDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TemplateDoesNotExistException.type = Types::TemplateDoesNotExistException
    TemplateMetadata.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the template.</p>"}))
    TemplateMetadata.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time and date the template was created.</p>"}))
    TemplateMetadata.type = Types::TemplateMetadata
    TemplateMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateMetadata)
    TestRenderTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the template to render.</p>", "smithy.api#required" => {}}))
    TestRenderTemplateRequest.add_member(:template_data, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateData, location_name: 'TemplateData', traits: {"smithy.api#documentation" => "<p>A list of replacement values to apply to the template. This parameter is a JSON\n            object, typically consisting of key-value pairs in which the keys correspond to\n            replacement tags in the email template.</p>", "smithy.api#required" => {}}))
    TestRenderTemplateRequest.type = Types::TestRenderTemplateRequest
    TestRenderTemplateResponse.add_member(:rendered_template, Smithy::Schema::Shapes::ShapeRef.new(shape: RenderedTemplate, location_name: 'RenderedTemplate', traits: {"smithy.api#documentation" => "<p>The complete MIME message rendered by applying the data in the TemplateData parameter\n            to the template specified in the TemplateName parameter.</p>"}))
    TestRenderTemplateResponse.type = Types::TestRenderTemplateResponse
    TlsPolicy.add_member(:require, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Require', traits: {"smithy.api#enumValue" => "Require"}))
    TlsPolicy.add_member(:optional, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Optional', traits: {"smithy.api#enumValue" => "Optional"}))
    TrackingOptions.add_member(:custom_redirect_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRedirectDomain, location_name: 'CustomRedirectDomain', traits: {"smithy.api#documentation" => "<p>The custom subdomain that is used to redirect email recipients to the Amazon SES event\n            tracking domain.</p>"}))
    TrackingOptions.type = Types::TrackingOptions
    TrackingOptionsAlreadyExistsException.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>Indicates that a TrackingOptions object already exists in the specified configuration\n            set.</p>"}))
    TrackingOptionsAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TrackingOptionsAlreadyExistsException.type = Types::TrackingOptionsAlreadyExistsException
    TrackingOptionsDoesNotExistException.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>Indicates that a TrackingOptions object does not exist in the specified configuration\n            set.</p>"}))
    TrackingOptionsDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TrackingOptionsDoesNotExistException.type = Types::TrackingOptionsDoesNotExistException
    UpdateAccountSendingEnabledRequest.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'Enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Describes whether email sending is enabled or disabled for your Amazon SES account in the\n            current Amazon Web Services Region.</p>"}))
    UpdateAccountSendingEnabledRequest.type = Types::UpdateAccountSendingEnabledRequest
    UpdateConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set that contains the event destination.</p>", "smithy.api#required" => {}}))
    UpdateConfigurationSetEventDestinationRequest.add_member(:event_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestination, location_name: 'EventDestination', traits: {"smithy.api#documentation" => "<p>The event destination object.</p>", "smithy.api#required" => {}}))
    UpdateConfigurationSetEventDestinationRequest.type = Types::UpdateConfigurationSetEventDestinationRequest
    UpdateConfigurationSetEventDestinationResponse.type = Types::UpdateConfigurationSetEventDestinationResponse
    UpdateConfigurationSetReputationMetricsEnabledRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set to update.</p>", "smithy.api#required" => {}}))
    UpdateConfigurationSetReputationMetricsEnabledRequest.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'Enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Describes whether or not Amazon SES publishes reputation metrics for the configuration set,\n            such as bounce and complaint rates, to Amazon CloudWatch.</p>", "smithy.api#required" => {}}))
    UpdateConfigurationSetReputationMetricsEnabledRequest.type = Types::UpdateConfigurationSetReputationMetricsEnabledRequest
    UpdateConfigurationSetSendingEnabledRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set to update.</p>", "smithy.api#required" => {}}))
    UpdateConfigurationSetSendingEnabledRequest.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'Enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Describes whether email sending is enabled or disabled for the configuration set.\n        </p>", "smithy.api#required" => {}}))
    UpdateConfigurationSetSendingEnabledRequest.type = Types::UpdateConfigurationSetSendingEnabledRequest
    UpdateConfigurationSetTrackingOptionsRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set.</p>", "smithy.api#required" => {}}))
    UpdateConfigurationSetTrackingOptionsRequest.add_member(:tracking_options, Smithy::Schema::Shapes::ShapeRef.new(shape: TrackingOptions, location_name: 'TrackingOptions', traits: {"smithy.api#required" => {}}))
    UpdateConfigurationSetTrackingOptionsRequest.type = Types::UpdateConfigurationSetTrackingOptionsRequest
    UpdateConfigurationSetTrackingOptionsResponse.type = Types::UpdateConfigurationSetTrackingOptionsResponse
    UpdateCustomVerificationEmailTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the custom verification email template to update.</p>", "smithy.api#required" => {}}))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:from_email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: FromAddress, location_name: 'FromEmailAddress', traits: {"smithy.api#documentation" => "<p>The email address that the custom verification email is sent from.</p>"}))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:template_subject, Smithy::Schema::Shapes::ShapeRef.new(shape: Subject, location_name: 'TemplateSubject', traits: {"smithy.api#documentation" => "<p>The subject line of the custom verification email.</p>"}))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:template_content, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateContent, location_name: 'TemplateContent', traits: {"smithy.api#documentation" => "<p>The content of the custom verification email. The total size of the email must be less\n            than 10 MB. The message body may contain HTML, with some limitations. For more\n            information, see <a href=\"https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom\">Custom\n                Verification Email Frequently Asked Questions</a> in the <i>Amazon SES\n                Developer Guide</i>.</p>"}))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:success_redirection_url, Smithy::Schema::Shapes::ShapeRef.new(shape: SuccessRedirectionURL, location_name: 'SuccessRedirectionURL', traits: {"smithy.api#documentation" => "<p>The URL that the recipient of the verification email is sent to if his or her address\n            is successfully verified.</p>"}))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:failure_redirection_url, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureRedirectionURL, location_name: 'FailureRedirectionURL', traits: {"smithy.api#documentation" => "<p>The URL that the recipient of the verification email is sent to if his or her address\n            is not successfully verified.</p>"}))
    UpdateCustomVerificationEmailTemplateRequest.type = Types::UpdateCustomVerificationEmailTemplateRequest
    UpdateReceiptRuleRequest.add_member(:rule_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRuleSetName, location_name: 'RuleSetName', traits: {"smithy.api#documentation" => "<p>The name of the receipt rule set that the receipt rule belongs to.</p>", "smithy.api#required" => {}}))
    UpdateReceiptRuleRequest.add_member(:rule, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptRule, location_name: 'Rule', traits: {"smithy.api#documentation" => "<p>A data structure that contains the updated receipt rule information.</p>", "smithy.api#required" => {}}))
    UpdateReceiptRuleRequest.type = Types::UpdateReceiptRuleRequest
    UpdateReceiptRuleResponse.type = Types::UpdateReceiptRuleResponse
    UpdateTemplateRequest.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: Template, location_name: 'Template', traits: {"smithy.api#required" => {}}))
    UpdateTemplateRequest.type = Types::UpdateTemplateRequest
    UpdateTemplateResponse.type = Types::UpdateTemplateResponse
    VerificationAttributes.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Identity)
    VerificationAttributes.value = Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityVerificationAttributes)
    VerificationStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pending', traits: {"smithy.api#enumValue" => "Pending"}))
    VerificationStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Success', traits: {"smithy.api#enumValue" => "Success"}))
    VerificationStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    VerificationStatus.add_member(:temporary_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TemporaryFailure', traits: {"smithy.api#enumValue" => "TemporaryFailure"}))
    VerificationStatus.add_member(:not_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotStarted', traits: {"smithy.api#enumValue" => "NotStarted"}))
    VerificationTokenList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VerificationToken)
    VerifyDomainDkimRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Domain, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>The name of the domain to be verified for Easy DKIM signing.</p>", "smithy.api#required" => {}}))
    VerifyDomainDkimRequest.type = Types::VerifyDomainDkimRequest
    VerifyDomainDkimResponse.add_member(:dkim_tokens, Smithy::Schema::Shapes::ShapeRef.new(shape: VerificationTokenList, location_name: 'DkimTokens', traits: {"smithy.api#documentation" => "<p>A set of character strings that represent the domain's identity. If the identity is an\n            email address, the tokens represent the domain of that address.</p>\n         <p>Using these tokens, you need to create DNS CNAME records that point to DKIM public\n            keys that are hosted by Amazon SES. Amazon Web Services eventually detects that you've updated your DNS\n            records. This detection process might take up to 72 hours. After successful detection,\n            Amazon SES is able to DKIM-sign email originating from that domain. (This only applies to\n            domain identities, not email address identities.)</p>\n         <p>For more information about creating DNS records using DKIM tokens, see the <a href=\"https://docs.aws.amazon.com/ses/latest/dg/send-email-authentication-dkim-easy.html\">Amazon SES Developer Guide</a>.</p>", "smithy.api#required" => {}}))
    VerifyDomainDkimResponse.type = Types::VerifyDomainDkimResponse
    VerifyDomainIdentityRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Domain, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>The domain to be verified.</p>", "smithy.api#required" => {}}))
    VerifyDomainIdentityRequest.type = Types::VerifyDomainIdentityRequest
    VerifyDomainIdentityResponse.add_member(:verification_token, Smithy::Schema::Shapes::ShapeRef.new(shape: VerificationToken, location_name: 'VerificationToken', traits: {"smithy.api#documentation" => "<p>A TXT record that you must place in the DNS settings of the domain to complete domain\n            verification with Amazon SES.</p>\n         <p>As Amazon SES searches for the TXT record, the domain's verification status is \"Pending\".\n            When Amazon SES detects the record, the domain's verification status changes to \"Success\". If\n            Amazon SES is unable to detect the record within 72 hours, the domain's verification status\n            changes to \"Failed.\" In that case, to verify the domain, you must restart the\n            verification process from the beginning. The domain's verification status also changes\n            to \"Success\" when it is DKIM verified.</p>", "smithy.api#required" => {}}))
    VerifyDomainIdentityResponse.type = Types::VerifyDomainIdentityResponse
    VerifyEmailAddressRequest.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'EmailAddress', traits: {"smithy.api#documentation" => "<p>The email address to be verified.</p>", "smithy.api#required" => {}}))
    VerifyEmailAddressRequest.type = Types::VerifyEmailAddressRequest
    VerifyEmailIdentityRequest.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'EmailAddress', traits: {"smithy.api#documentation" => "<p>The email address to be verified.</p>", "smithy.api#required" => {}}))
    VerifyEmailIdentityRequest.type = Types::VerifyEmailIdentityRequest
    VerifyEmailIdentityResponse.type = Types::VerifyEmailIdentityResponse
    WorkmailAction.add_member(:topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'TopicArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when the WorkMail action\n            is called. You can find the ARN of a topic by using the <a href=\"https://docs.aws.amazon.com/sns/latest/api/API_ListTopics.html\">ListTopics</a> operation in\n            Amazon SNS.</p>\n         <p>For more information about Amazon SNS topics, see the <a href=\"https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html\">Amazon SNS Developer Guide</a>.</p>"}))
    WorkmailAction.add_member(:organization_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'OrganizationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon WorkMail organization. Amazon WorkMail\n            ARNs use the following format:</p>\n         <p>\n            <code>arn:aws:workmail:<region>:<awsAccountId>:organization/<workmailOrganizationId></code>\n         </p>\n         <p>You can find the ID of your organization by using the <a href=\"https://docs.aws.amazon.com/workmail/latest/APIReference/API_ListOrganizations.html\">ListOrganizations</a> operation in Amazon WorkMail. Amazon WorkMail\n            organization IDs begin with \"<code>m-</code>\", followed by a string of alphanumeric\n            characters.</p>\n         <p>For information about Amazon WorkMail organizations, see the <a href=\"https://docs.aws.amazon.com/workmail/latest/adminguide/organizations_overview.html\">Amazon WorkMail Administrator Guide</a>.</p>", "smithy.api#required" => {}}))
    WorkmailAction.type = Types::WorkmailAction

    SimpleEmailService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ses#SimpleEmailService"
      service.name = "SimpleEmailService"
      service.version = "2010-12-01"
      service.traits = {"aws.api#service" => {"sdkId" => "SES", "arnNamespace" => "ses", "cloudFormationName" => "SES", "cloudTrailEventSource" => "ses.amazonaws.com", "docId" => "email-2010-12-01", "endpointPrefix" => "email"}, "aws.auth#sigv4" => {"name" => "ses"}, "aws.protocols#awsQuery" => {}, "smithy.api#title" => "Amazon Simple Email Service", "smithy.api#xmlNamespace" => {"uri" => "http://ses.amazonaws.com/doc/2010-12-01/"}}
      service.add_operation(:clone_receipt_rule_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#CloneReceiptRuleSet"
        operation.name = "CloneReceiptRuleSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CloneReceiptRuleSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CloneReceiptRuleSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetDoesNotExistException)
        operation.traits = {}
      end)
      service.add_operation(:create_configuration_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#CreateConfigurationSet"
        operation.name = "CreateConfigurationSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigurationSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigurationSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConfigurationSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:create_configuration_set_event_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#CreateConfigurationSetEventDestination"
        operation.name = "CreateConfigurationSetEventDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigurationSetEventDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigurationSetEventDestinationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCloudWatchDestinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFirehoseDestinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSNSDestinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:create_configuration_set_tracking_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#CreateConfigurationSetTrackingOptions"
        operation.name = "CreateConfigurationSetTrackingOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigurationSetTrackingOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigurationSetTrackingOptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTrackingOptionsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrackingOptionsAlreadyExistsException)
        operation.traits = {}
      end)
      service.add_operation(:create_custom_verification_email_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#CreateCustomVerificationEmailTemplate"
        operation.name = "CreateCustomVerificationEmailTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomVerificationEmailTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CustomVerificationEmailInvalidContentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CustomVerificationEmailTemplateAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FromEmailAddressNotVerifiedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:create_receipt_filter, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#CreateReceiptFilter"
        operation.name = "CreateReceiptFilter"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReceiptFilterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReceiptFilterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:create_receipt_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#CreateReceiptRule"
        operation.name = "CreateReceiptRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReceiptRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReceiptRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLambdaFunctionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSnsTopicException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RuleDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetDoesNotExistException)
        operation.traits = {}
      end)
      service.add_operation(:create_receipt_rule_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#CreateReceiptRuleSet"
        operation.name = "CreateReceiptRuleSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReceiptRuleSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReceiptRuleSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:create_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#CreateTemplate"
        operation.name = "CreateTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTemplateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:delete_configuration_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DeleteConfigurationSet"
        operation.name = "DeleteConfigurationSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfigurationSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfigurationSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetDoesNotExistException)
        operation.traits = {}
      end)
      service.add_operation(:delete_configuration_set_event_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DeleteConfigurationSetEventDestination"
        operation.name = "DeleteConfigurationSetEventDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfigurationSetEventDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfigurationSetEventDestinationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationDoesNotExistException)
        operation.traits = {}
      end)
      service.add_operation(:delete_configuration_set_tracking_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DeleteConfigurationSetTrackingOptions"
        operation.name = "DeleteConfigurationSetTrackingOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfigurationSetTrackingOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfigurationSetTrackingOptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrackingOptionsDoesNotExistException)
        operation.traits = {}
      end)
      service.add_operation(:delete_custom_verification_email_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DeleteCustomVerificationEmailTemplate"
        operation.name = "DeleteCustomVerificationEmailTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomVerificationEmailTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {}
      end)
      service.add_operation(:delete_identity, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DeleteIdentity"
        operation.name = "DeleteIdentity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIdentityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIdentityResponse)
        operation.traits = {}
      end)
      service.add_operation(:delete_identity_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DeleteIdentityPolicy"
        operation.name = "DeleteIdentityPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIdentityPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIdentityPolicyResponse)
        operation.traits = {}
      end)
      service.add_operation(:delete_receipt_filter, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DeleteReceiptFilter"
        operation.name = "DeleteReceiptFilter"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReceiptFilterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReceiptFilterResponse)
        operation.traits = {}
      end)
      service.add_operation(:delete_receipt_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DeleteReceiptRule"
        operation.name = "DeleteReceiptRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReceiptRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReceiptRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetDoesNotExistException)
        operation.traits = {}
      end)
      service.add_operation(:delete_receipt_rule_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DeleteReceiptRuleSet"
        operation.name = "DeleteReceiptRuleSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReceiptRuleSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReceiptRuleSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CannotDeleteException)
        operation.traits = {}
      end)
      service.add_operation(:delete_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DeleteTemplate"
        operation.name = "DeleteTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTemplateResponse)
        operation.traits = {}
      end)
      service.add_operation(:delete_verified_email_address, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DeleteVerifiedEmailAddress"
        operation.name = "DeleteVerifiedEmailAddress"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVerifiedEmailAddressRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {}
      end)
      service.add_operation(:describe_active_receipt_rule_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DescribeActiveReceiptRuleSet"
        operation.name = "DescribeActiveReceiptRuleSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeActiveReceiptRuleSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeActiveReceiptRuleSetResponse)
        operation.traits = {}
      end)
      service.add_operation(:describe_configuration_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DescribeConfigurationSet"
        operation.name = "DescribeConfigurationSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConfigurationSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConfigurationSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetDoesNotExistException)
        operation.traits = {}
      end)
      service.add_operation(:describe_receipt_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DescribeReceiptRule"
        operation.name = "DescribeReceiptRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReceiptRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReceiptRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RuleDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetDoesNotExistException)
        operation.traits = {}
      end)
      service.add_operation(:describe_receipt_rule_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DescribeReceiptRuleSet"
        operation.name = "DescribeReceiptRuleSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReceiptRuleSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReceiptRuleSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetDoesNotExistException)
        operation.traits = {}
      end)
      service.add_operation(:get_account_sending_enabled, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#GetAccountSendingEnabled"
        operation.name = "GetAccountSendingEnabled"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountSendingEnabledResponse)
        operation.traits = {}
      end)
      service.add_operation(:get_custom_verification_email_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#GetCustomVerificationEmailTemplate"
        operation.name = "GetCustomVerificationEmailTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCustomVerificationEmailTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCustomVerificationEmailTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CustomVerificationEmailTemplateDoesNotExistException)
        operation.traits = {}
      end)
      service.add_operation(:get_identity_dkim_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#GetIdentityDkimAttributes"
        operation.name = "GetIdentityDkimAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdentityDkimAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdentityDkimAttributesResponse)
        operation.traits = {}
      end)
      service.add_operation(:get_identity_mail_from_domain_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#GetIdentityMailFromDomainAttributes"
        operation.name = "GetIdentityMailFromDomainAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdentityMailFromDomainAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdentityMailFromDomainAttributesResponse)
        operation.traits = {}
      end)
      service.add_operation(:get_identity_notification_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#GetIdentityNotificationAttributes"
        operation.name = "GetIdentityNotificationAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdentityNotificationAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdentityNotificationAttributesResponse)
        operation.traits = {}
      end)
      service.add_operation(:get_identity_policies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#GetIdentityPolicies"
        operation.name = "GetIdentityPolicies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdentityPoliciesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdentityPoliciesResponse)
        operation.traits = {}
      end)
      service.add_operation(:get_identity_verification_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#GetIdentityVerificationAttributes"
        operation.name = "GetIdentityVerificationAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdentityVerificationAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdentityVerificationAttributesResponse)
        operation.traits = {}
      end)
      service.add_operation(:get_send_quota, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#GetSendQuota"
        operation.name = "GetSendQuota"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSendQuotaResponse)
        operation.traits = {}
      end)
      service.add_operation(:get_send_statistics, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#GetSendStatistics"
        operation.name = "GetSendStatistics"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSendStatisticsResponse)
        operation.traits = {}
      end)
      service.add_operation(:get_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#GetTemplate"
        operation.name = "GetTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateDoesNotExistException)
        operation.traits = {}
      end)
      service.add_operation(:list_configuration_sets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#ListConfigurationSets"
        operation.name = "ListConfigurationSets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfigurationSetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfigurationSetsResponse)
        operation.traits = {}
      end)
      service.add_operation(:list_custom_verification_email_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#ListCustomVerificationEmailTemplates"
        operation.name = "ListCustomVerificationEmailTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomVerificationEmailTemplatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomVerificationEmailTemplatesResponse)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCustomVerificationEmailTemplates.new
      end)
      service.add_operation(:list_identities, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#ListIdentities"
        operation.name = "ListIdentities"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdentitiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdentitiesResponse)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListIdentitiesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListIdentities.new
      end)
      service.add_operation(:list_identity_policies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#ListIdentityPolicies"
        operation.name = "ListIdentityPolicies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdentityPoliciesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdentityPoliciesResponse)
        operation.traits = {}
      end)
      service.add_operation(:list_receipt_filters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#ListReceiptFilters"
        operation.name = "ListReceiptFilters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReceiptFiltersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReceiptFiltersResponse)
        operation.traits = {}
      end)
      service.add_operation(:list_receipt_rule_sets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#ListReceiptRuleSets"
        operation.name = "ListReceiptRuleSets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReceiptRuleSetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReceiptRuleSetsResponse)
        operation.traits = {}
      end)
      service.add_operation(:list_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#ListTemplates"
        operation.name = "ListTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTemplatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTemplatesResponse)
        operation.traits = {}
      end)
      service.add_operation(:list_verified_email_addresses, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#ListVerifiedEmailAddresses"
        operation.name = "ListVerifiedEmailAddresses"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVerifiedEmailAddressesResponse)
        operation.traits = {}
      end)
      service.add_operation(:put_configuration_set_delivery_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#PutConfigurationSetDeliveryOptions"
        operation.name = "PutConfigurationSetDeliveryOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutConfigurationSetDeliveryOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutConfigurationSetDeliveryOptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeliveryOptionsException)
        operation.traits = {}
      end)
      service.add_operation(:put_identity_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#PutIdentityPolicy"
        operation.name = "PutIdentityPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutIdentityPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutIdentityPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyException)
        operation.traits = {}
      end)
      service.add_operation(:reorder_receipt_rule_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#ReorderReceiptRuleSet"
        operation.name = "ReorderReceiptRuleSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ReorderReceiptRuleSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ReorderReceiptRuleSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RuleDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetDoesNotExistException)
        operation.traits = {}
      end)
      service.add_operation(:send_bounce, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#SendBounce"
        operation.name = "SendBounce"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendBounceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendBounceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MessageRejected)
        operation.traits = {}
      end)
      service.add_operation(:send_bulk_templated_email, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#SendBulkTemplatedEmail"
        operation.name = "SendBulkTemplatedEmail"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendBulkTemplatedEmailRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendBulkTemplatedEmailResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSendingPausedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetSendingPausedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MailFromDomainNotVerifiedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MessageRejected)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateDoesNotExistException)
        operation.traits = {}
      end)
      service.add_operation(:send_custom_verification_email, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#SendCustomVerificationEmail"
        operation.name = "SendCustomVerificationEmail"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendCustomVerificationEmailRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendCustomVerificationEmailResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CustomVerificationEmailTemplateDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FromEmailAddressNotVerifiedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MessageRejected)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProductionAccessNotGrantedException)
        operation.traits = {}
      end)
      service.add_operation(:send_email, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#SendEmail"
        operation.name = "SendEmail"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendEmailRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendEmailResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSendingPausedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetSendingPausedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MailFromDomainNotVerifiedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MessageRejected)
        operation.traits = {}
      end)
      service.add_operation(:send_raw_email, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#SendRawEmail"
        operation.name = "SendRawEmail"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendRawEmailRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendRawEmailResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSendingPausedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetSendingPausedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MailFromDomainNotVerifiedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MessageRejected)
        operation.traits = {}
      end)
      service.add_operation(:send_templated_email, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#SendTemplatedEmail"
        operation.name = "SendTemplatedEmail"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendTemplatedEmailRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendTemplatedEmailResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSendingPausedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetSendingPausedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MailFromDomainNotVerifiedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MessageRejected)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateDoesNotExistException)
        operation.traits = {}
      end)
      service.add_operation(:set_active_receipt_rule_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#SetActiveReceiptRuleSet"
        operation.name = "SetActiveReceiptRuleSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetActiveReceiptRuleSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SetActiveReceiptRuleSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetDoesNotExistException)
        operation.traits = {}
      end)
      service.add_operation(:set_identity_dkim_enabled, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#SetIdentityDkimEnabled"
        operation.name = "SetIdentityDkimEnabled"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetIdentityDkimEnabledRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SetIdentityDkimEnabledResponse)
        operation.traits = {}
      end)
      service.add_operation(:set_identity_feedback_forwarding_enabled, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#SetIdentityFeedbackForwardingEnabled"
        operation.name = "SetIdentityFeedbackForwardingEnabled"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetIdentityFeedbackForwardingEnabledRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SetIdentityFeedbackForwardingEnabledResponse)
        operation.traits = {}
      end)
      service.add_operation(:set_identity_headers_in_notifications_enabled, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#SetIdentityHeadersInNotificationsEnabled"
        operation.name = "SetIdentityHeadersInNotificationsEnabled"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetIdentityHeadersInNotificationsEnabledRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SetIdentityHeadersInNotificationsEnabledResponse)
        operation.traits = {}
      end)
      service.add_operation(:set_identity_mail_from_domain, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#SetIdentityMailFromDomain"
        operation.name = "SetIdentityMailFromDomain"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetIdentityMailFromDomainRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SetIdentityMailFromDomainResponse)
        operation.traits = {}
      end)
      service.add_operation(:set_identity_notification_topic, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#SetIdentityNotificationTopic"
        operation.name = "SetIdentityNotificationTopic"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetIdentityNotificationTopicRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SetIdentityNotificationTopicResponse)
        operation.traits = {}
      end)
      service.add_operation(:set_receipt_rule_position, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#SetReceiptRulePosition"
        operation.name = "SetReceiptRulePosition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetReceiptRulePositionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SetReceiptRulePositionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RuleDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetDoesNotExistException)
        operation.traits = {}
      end)
      service.add_operation(:test_render_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#TestRenderTemplate"
        operation.name = "TestRenderTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TestRenderTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TestRenderTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRenderingParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRenderingAttributeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateDoesNotExistException)
        operation.traits = {}
      end)
      service.add_operation(:update_account_sending_enabled, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#UpdateAccountSendingEnabled"
        operation.name = "UpdateAccountSendingEnabled"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccountSendingEnabledRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {}
      end)
      service.add_operation(:update_configuration_set_event_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#UpdateConfigurationSetEventDestination"
        operation.name = "UpdateConfigurationSetEventDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfigurationSetEventDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfigurationSetEventDestinationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCloudWatchDestinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFirehoseDestinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSNSDestinationException)
        operation.traits = {}
      end)
      service.add_operation(:update_configuration_set_reputation_metrics_enabled, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#UpdateConfigurationSetReputationMetricsEnabled"
        operation.name = "UpdateConfigurationSetReputationMetricsEnabled"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfigurationSetReputationMetricsEnabledRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetDoesNotExistException)
        operation.traits = {}
      end)
      service.add_operation(:update_configuration_set_sending_enabled, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#UpdateConfigurationSetSendingEnabled"
        operation.name = "UpdateConfigurationSetSendingEnabled"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfigurationSetSendingEnabledRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetDoesNotExistException)
        operation.traits = {}
      end)
      service.add_operation(:update_configuration_set_tracking_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#UpdateConfigurationSetTrackingOptions"
        operation.name = "UpdateConfigurationSetTrackingOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfigurationSetTrackingOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfigurationSetTrackingOptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTrackingOptionsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrackingOptionsDoesNotExistException)
        operation.traits = {}
      end)
      service.add_operation(:update_custom_verification_email_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#UpdateCustomVerificationEmailTemplate"
        operation.name = "UpdateCustomVerificationEmailTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomVerificationEmailTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CustomVerificationEmailInvalidContentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CustomVerificationEmailTemplateDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FromEmailAddressNotVerifiedException)
        operation.traits = {}
      end)
      service.add_operation(:update_receipt_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#UpdateReceiptRule"
        operation.name = "UpdateReceiptRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReceiptRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReceiptRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLambdaFunctionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSnsTopicException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RuleDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetDoesNotExistException)
        operation.traits = {}
      end)
      service.add_operation(:update_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#UpdateTemplate"
        operation.name = "UpdateTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTemplateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateDoesNotExistException)
        operation.traits = {}
      end)
      service.add_operation(:verify_domain_dkim, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#VerifyDomainDkim"
        operation.name = "VerifyDomainDkim"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: VerifyDomainDkimRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: VerifyDomainDkimResponse)
        operation.traits = {}
      end)
      service.add_operation(:verify_domain_identity, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#VerifyDomainIdentity"
        operation.name = "VerifyDomainIdentity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: VerifyDomainIdentityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: VerifyDomainIdentityResponse)
        operation.traits = {}
      end)
      service.add_operation(:verify_email_address, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#VerifyEmailAddress"
        operation.name = "VerifyEmailAddress"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: VerifyEmailAddressRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {}
      end)
      service.add_operation(:verify_email_identity, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#VerifyEmailIdentity"
        operation.name = "VerifyEmailIdentity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: VerifyEmailIdentityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: VerifyEmailIdentityResponse)
        operation.traits = {}
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
