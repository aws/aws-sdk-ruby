# frozen_string_literal: true

# This is generated code!

module Aws::SES
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountSendingPausedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#AccountSendingPausedException", name: "AccountSendingPausedException", traits: {"aws.protocols#awsQueryError" => {"code" => "AccountSendingPausedException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AddHeaderAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#AddHeaderAction", name: "AddHeaderAction")
    Address = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#Address", name: "Address")
    AddressList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ses#AddressList", name: "AddressList")
    AlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#AlreadyExistsException", name: "AlreadyExistsException", traits: {"aws.protocols#awsQueryError" => {"code" => "AlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#AmazonResourceName", name: "AmazonResourceName")
    ArrivalDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ses#ArrivalDate", name: "ArrivalDate")
    BehaviorOnMXFailure = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ses#BehaviorOnMXFailure", name: "BehaviorOnMXFailure")
    Body = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#Body", name: "Body")
    BounceAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#BounceAction", name: "BounceAction")
    BounceMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#BounceMessage", name: "BounceMessage")
    BounceSmtpReplyCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#BounceSmtpReplyCode", name: "BounceSmtpReplyCode")
    BounceStatusCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#BounceStatusCode", name: "BounceStatusCode")
    BounceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ses#BounceType", name: "BounceType")
    BouncedRecipientInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#BouncedRecipientInfo", name: "BouncedRecipientInfo")
    BouncedRecipientInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ses#BouncedRecipientInfoList", name: "BouncedRecipientInfoList")
    BulkEmailDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#BulkEmailDestination", name: "BulkEmailDestination")
    BulkEmailDestinationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ses#BulkEmailDestinationList", name: "BulkEmailDestinationList")
    BulkEmailDestinationStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#BulkEmailDestinationStatus", name: "BulkEmailDestinationStatus")
    BulkEmailDestinationStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ses#BulkEmailDestinationStatusList", name: "BulkEmailDestinationStatusList")
    BulkEmailStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ses#BulkEmailStatus", name: "BulkEmailStatus")
    CannotDeleteException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#CannotDeleteException", name: "CannotDeleteException", traits: {"aws.protocols#awsQueryError" => {"code" => "CannotDelete", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Charset = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#Charset", name: "Charset")
    Cidr = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#Cidr", name: "Cidr")
    CloneReceiptRuleSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#CloneReceiptRuleSetRequest", name: "CloneReceiptRuleSetRequest")
    CloneReceiptRuleSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#CloneReceiptRuleSetResponse", name: "CloneReceiptRuleSetResponse")
    CloudWatchDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#CloudWatchDestination", name: "CloudWatchDestination")
    CloudWatchDimensionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#CloudWatchDimensionConfiguration", name: "CloudWatchDimensionConfiguration")
    CloudWatchDimensionConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ses#CloudWatchDimensionConfigurations", name: "CloudWatchDimensionConfigurations")
    ConfigurationSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ConfigurationSet", name: "ConfigurationSet")
    ConfigurationSetAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ConfigurationSetAlreadyExistsException", name: "ConfigurationSetAlreadyExistsException", traits: {"aws.protocols#awsQueryError" => {"code" => "ConfigurationSetAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ConfigurationSetAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ses#ConfigurationSetAttribute", name: "ConfigurationSetAttribute")
    ConfigurationSetAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ses#ConfigurationSetAttributeList", name: "ConfigurationSetAttributeList")
    ConfigurationSetDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ConfigurationSetDoesNotExistException", name: "ConfigurationSetDoesNotExistException", traits: {"aws.protocols#awsQueryError" => {"code" => "ConfigurationSetDoesNotExist", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ConfigurationSetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#ConfigurationSetName", name: "ConfigurationSetName")
    ConfigurationSetSendingPausedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ConfigurationSetSendingPausedException", name: "ConfigurationSetSendingPausedException", traits: {"aws.protocols#awsQueryError" => {"code" => "ConfigurationSetSendingPausedException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ConfigurationSets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ses#ConfigurationSets", name: "ConfigurationSets")
    ConnectAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ConnectAction", name: "ConnectAction")
    ConnectInstanceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#ConnectInstanceArn", name: "ConnectInstanceArn", traits: {"smithy.api#pattern" => "^arn:(aws|aws-us-gov):connect:[a-z]{2}-[a-z]+-[0-9-]{1}:[0-9]{1,20}:instance/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    Content = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#Content", name: "Content")
    Counter = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ses#Counter", name: "Counter", traits: {"smithy.api#default" => 0})
    CreateConfigurationSetEventDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#CreateConfigurationSetEventDestinationRequest", name: "CreateConfigurationSetEventDestinationRequest")
    CreateConfigurationSetEventDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#CreateConfigurationSetEventDestinationResponse", name: "CreateConfigurationSetEventDestinationResponse")
    CreateConfigurationSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#CreateConfigurationSetRequest", name: "CreateConfigurationSetRequest")
    CreateConfigurationSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#CreateConfigurationSetResponse", name: "CreateConfigurationSetResponse")
    CreateConfigurationSetTrackingOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#CreateConfigurationSetTrackingOptionsRequest", name: "CreateConfigurationSetTrackingOptionsRequest")
    CreateConfigurationSetTrackingOptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#CreateConfigurationSetTrackingOptionsResponse", name: "CreateConfigurationSetTrackingOptionsResponse")
    CreateCustomVerificationEmailTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#CreateCustomVerificationEmailTemplateRequest", name: "CreateCustomVerificationEmailTemplateRequest")
    CreateReceiptFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#CreateReceiptFilterRequest", name: "CreateReceiptFilterRequest")
    CreateReceiptFilterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#CreateReceiptFilterResponse", name: "CreateReceiptFilterResponse")
    CreateReceiptRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#CreateReceiptRuleRequest", name: "CreateReceiptRuleRequest")
    CreateReceiptRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#CreateReceiptRuleResponse", name: "CreateReceiptRuleResponse")
    CreateReceiptRuleSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#CreateReceiptRuleSetRequest", name: "CreateReceiptRuleSetRequest")
    CreateReceiptRuleSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#CreateReceiptRuleSetResponse", name: "CreateReceiptRuleSetResponse")
    CreateTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#CreateTemplateRequest", name: "CreateTemplateRequest")
    CreateTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#CreateTemplateResponse", name: "CreateTemplateResponse")
    CustomMailFromStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ses#CustomMailFromStatus", name: "CustomMailFromStatus")
    CustomRedirectDomain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#CustomRedirectDomain", name: "CustomRedirectDomain")
    CustomVerificationEmailInvalidContentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#CustomVerificationEmailInvalidContentException", name: "CustomVerificationEmailInvalidContentException", traits: {"aws.protocols#awsQueryError" => {"code" => "CustomVerificationEmailInvalidContent", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CustomVerificationEmailTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#CustomVerificationEmailTemplate", name: "CustomVerificationEmailTemplate")
    CustomVerificationEmailTemplateAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#CustomVerificationEmailTemplateAlreadyExistsException", name: "CustomVerificationEmailTemplateAlreadyExistsException", traits: {"aws.protocols#awsQueryError" => {"code" => "CustomVerificationEmailTemplateAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CustomVerificationEmailTemplateDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#CustomVerificationEmailTemplateDoesNotExistException", name: "CustomVerificationEmailTemplateDoesNotExistException", traits: {"aws.protocols#awsQueryError" => {"code" => "CustomVerificationEmailTemplateDoesNotExist", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CustomVerificationEmailTemplates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ses#CustomVerificationEmailTemplates", name: "CustomVerificationEmailTemplates")
    DefaultDimensionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#DefaultDimensionValue", name: "DefaultDimensionValue")
    DeleteConfigurationSetEventDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DeleteConfigurationSetEventDestinationRequest", name: "DeleteConfigurationSetEventDestinationRequest")
    DeleteConfigurationSetEventDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DeleteConfigurationSetEventDestinationResponse", name: "DeleteConfigurationSetEventDestinationResponse")
    DeleteConfigurationSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DeleteConfigurationSetRequest", name: "DeleteConfigurationSetRequest")
    DeleteConfigurationSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DeleteConfigurationSetResponse", name: "DeleteConfigurationSetResponse")
    DeleteConfigurationSetTrackingOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DeleteConfigurationSetTrackingOptionsRequest", name: "DeleteConfigurationSetTrackingOptionsRequest")
    DeleteConfigurationSetTrackingOptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DeleteConfigurationSetTrackingOptionsResponse", name: "DeleteConfigurationSetTrackingOptionsResponse")
    DeleteCustomVerificationEmailTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DeleteCustomVerificationEmailTemplateRequest", name: "DeleteCustomVerificationEmailTemplateRequest")
    DeleteIdentityPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DeleteIdentityPolicyRequest", name: "DeleteIdentityPolicyRequest")
    DeleteIdentityPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DeleteIdentityPolicyResponse", name: "DeleteIdentityPolicyResponse")
    DeleteIdentityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DeleteIdentityRequest", name: "DeleteIdentityRequest")
    DeleteIdentityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DeleteIdentityResponse", name: "DeleteIdentityResponse")
    DeleteReceiptFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DeleteReceiptFilterRequest", name: "DeleteReceiptFilterRequest")
    DeleteReceiptFilterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DeleteReceiptFilterResponse", name: "DeleteReceiptFilterResponse")
    DeleteReceiptRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DeleteReceiptRuleRequest", name: "DeleteReceiptRuleRequest")
    DeleteReceiptRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DeleteReceiptRuleResponse", name: "DeleteReceiptRuleResponse")
    DeleteReceiptRuleSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DeleteReceiptRuleSetRequest", name: "DeleteReceiptRuleSetRequest")
    DeleteReceiptRuleSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DeleteReceiptRuleSetResponse", name: "DeleteReceiptRuleSetResponse")
    DeleteTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DeleteTemplateRequest", name: "DeleteTemplateRequest")
    DeleteTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DeleteTemplateResponse", name: "DeleteTemplateResponse")
    DeleteVerifiedEmailAddressRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DeleteVerifiedEmailAddressRequest", name: "DeleteVerifiedEmailAddressRequest")
    DeliveryOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DeliveryOptions", name: "DeliveryOptions")
    DescribeActiveReceiptRuleSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DescribeActiveReceiptRuleSetRequest", name: "DescribeActiveReceiptRuleSetRequest")
    DescribeActiveReceiptRuleSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DescribeActiveReceiptRuleSetResponse", name: "DescribeActiveReceiptRuleSetResponse")
    DescribeConfigurationSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DescribeConfigurationSetRequest", name: "DescribeConfigurationSetRequest")
    DescribeConfigurationSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DescribeConfigurationSetResponse", name: "DescribeConfigurationSetResponse")
    DescribeReceiptRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DescribeReceiptRuleRequest", name: "DescribeReceiptRuleRequest")
    DescribeReceiptRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DescribeReceiptRuleResponse", name: "DescribeReceiptRuleResponse")
    DescribeReceiptRuleSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DescribeReceiptRuleSetRequest", name: "DescribeReceiptRuleSetRequest")
    DescribeReceiptRuleSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#DescribeReceiptRuleSetResponse", name: "DescribeReceiptRuleSetResponse")
    Destination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#Destination", name: "Destination")
    DiagnosticCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#DiagnosticCode", name: "DiagnosticCode")
    DimensionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#DimensionName", name: "DimensionName")
    DimensionValueSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ses#DimensionValueSource", name: "DimensionValueSource")
    DkimAttributes = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ses#DkimAttributes", name: "DkimAttributes")
    Domain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#Domain", name: "Domain")
    DsnAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ses#DsnAction", name: "DsnAction")
    DsnStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#DsnStatus", name: "DsnStatus")
    Enabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ses#Enabled", name: "Enabled", traits: {"smithy.api#default" => false})
    Error = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#Error", name: "Error")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#ErrorMessage", name: "ErrorMessage")
    EventDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#EventDestination", name: "EventDestination")
    EventDestinationAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#EventDestinationAlreadyExistsException", name: "EventDestinationAlreadyExistsException", traits: {"aws.protocols#awsQueryError" => {"code" => "EventDestinationAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EventDestinationDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#EventDestinationDoesNotExistException", name: "EventDestinationDoesNotExistException", traits: {"aws.protocols#awsQueryError" => {"code" => "EventDestinationDoesNotExist", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EventDestinationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#EventDestinationName", name: "EventDestinationName")
    EventDestinations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ses#EventDestinations", name: "EventDestinations")
    EventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ses#EventType", name: "EventType")
    EventTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ses#EventTypes", name: "EventTypes")
    Explanation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#Explanation", name: "Explanation")
    ExtensionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ExtensionField", name: "ExtensionField")
    ExtensionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ses#ExtensionFieldList", name: "ExtensionFieldList")
    ExtensionFieldName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#ExtensionFieldName", name: "ExtensionFieldName")
    ExtensionFieldValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#ExtensionFieldValue", name: "ExtensionFieldValue")
    FailureRedirectionURL = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#FailureRedirectionURL", name: "FailureRedirectionURL")
    FromAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#FromAddress", name: "FromAddress")
    FromEmailAddressNotVerifiedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#FromEmailAddressNotVerifiedException", name: "FromEmailAddressNotVerifiedException", traits: {"aws.protocols#awsQueryError" => {"code" => "FromEmailAddressNotVerified", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GetAccountSendingEnabledResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#GetAccountSendingEnabledResponse", name: "GetAccountSendingEnabledResponse")
    GetCustomVerificationEmailTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#GetCustomVerificationEmailTemplateRequest", name: "GetCustomVerificationEmailTemplateRequest")
    GetCustomVerificationEmailTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#GetCustomVerificationEmailTemplateResponse", name: "GetCustomVerificationEmailTemplateResponse")
    GetIdentityDkimAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#GetIdentityDkimAttributesRequest", name: "GetIdentityDkimAttributesRequest")
    GetIdentityDkimAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#GetIdentityDkimAttributesResponse", name: "GetIdentityDkimAttributesResponse")
    GetIdentityMailFromDomainAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#GetIdentityMailFromDomainAttributesRequest", name: "GetIdentityMailFromDomainAttributesRequest")
    GetIdentityMailFromDomainAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#GetIdentityMailFromDomainAttributesResponse", name: "GetIdentityMailFromDomainAttributesResponse")
    GetIdentityNotificationAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#GetIdentityNotificationAttributesRequest", name: "GetIdentityNotificationAttributesRequest")
    GetIdentityNotificationAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#GetIdentityNotificationAttributesResponse", name: "GetIdentityNotificationAttributesResponse")
    GetIdentityPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#GetIdentityPoliciesRequest", name: "GetIdentityPoliciesRequest")
    GetIdentityPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#GetIdentityPoliciesResponse", name: "GetIdentityPoliciesResponse")
    GetIdentityVerificationAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#GetIdentityVerificationAttributesRequest", name: "GetIdentityVerificationAttributesRequest")
    GetIdentityVerificationAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#GetIdentityVerificationAttributesResponse", name: "GetIdentityVerificationAttributesResponse")
    GetSendQuotaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#GetSendQuotaResponse", name: "GetSendQuotaResponse")
    GetSendStatisticsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#GetSendStatisticsResponse", name: "GetSendStatisticsResponse")
    GetTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#GetTemplateRequest", name: "GetTemplateRequest")
    GetTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#GetTemplateResponse", name: "GetTemplateResponse")
    HeaderName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#HeaderName", name: "HeaderName")
    HeaderValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#HeaderValue", name: "HeaderValue")
    HtmlPart = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#HtmlPart", name: "HtmlPart")
    IAMRoleARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#IAMRoleARN", name: "IAMRoleARN", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w-]+:iam::[0-9]+:role(\\u002F)([\\u0021-\\u007E]+\\u002F)?([\\w+=,.@-]+)$"})
    Identity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#Identity", name: "Identity")
    IdentityDkimAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#IdentityDkimAttributes", name: "IdentityDkimAttributes")
    IdentityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ses#IdentityList", name: "IdentityList")
    IdentityMailFromDomainAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#IdentityMailFromDomainAttributes", name: "IdentityMailFromDomainAttributes")
    IdentityNotificationAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#IdentityNotificationAttributes", name: "IdentityNotificationAttributes")
    IdentityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ses#IdentityType", name: "IdentityType")
    IdentityVerificationAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#IdentityVerificationAttributes", name: "IdentityVerificationAttributes")
    InvalidCloudWatchDestinationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#InvalidCloudWatchDestinationException", name: "InvalidCloudWatchDestinationException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidCloudWatchDestination", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidConfigurationSetException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#InvalidConfigurationSetException", name: "InvalidConfigurationSetException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidConfigurationSet", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDeliveryOptionsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#InvalidDeliveryOptionsException", name: "InvalidDeliveryOptionsException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDeliveryOptions", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidFirehoseDestinationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#InvalidFirehoseDestinationException", name: "InvalidFirehoseDestinationException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidFirehoseDestination", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidLambdaFunctionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#InvalidLambdaFunctionException", name: "InvalidLambdaFunctionException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidLambdaFunction", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#InvalidPolicyException", name: "InvalidPolicyException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidPolicy", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRenderingParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#InvalidRenderingParameterException", name: "InvalidRenderingParameterException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidRenderingParameter", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidS3ConfigurationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#InvalidS3ConfigurationException", name: "InvalidS3ConfigurationException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidS3Configuration", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSNSDestinationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#InvalidSNSDestinationException", name: "InvalidSNSDestinationException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSNSDestination", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSnsTopicException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#InvalidSnsTopicException", name: "InvalidSnsTopicException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSnsTopic", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTemplateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#InvalidTemplateException", name: "InvalidTemplateException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidTemplate", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTrackingOptionsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#InvalidTrackingOptionsException", name: "InvalidTrackingOptionsException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidTrackingOptions", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvocationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ses#InvocationType", name: "InvocationType")
    KinesisFirehoseDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#KinesisFirehoseDestination", name: "KinesisFirehoseDestination")
    LambdaAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#LambdaAction", name: "LambdaAction")
    LastAttemptDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ses#LastAttemptDate", name: "LastAttemptDate")
    LastFreshStart = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ses#LastFreshStart", name: "LastFreshStart")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#LimitExceededException", name: "LimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "LimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListConfigurationSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ListConfigurationSetsRequest", name: "ListConfigurationSetsRequest")
    ListConfigurationSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ListConfigurationSetsResponse", name: "ListConfigurationSetsResponse")
    ListCustomVerificationEmailTemplatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ListCustomVerificationEmailTemplatesRequest", name: "ListCustomVerificationEmailTemplatesRequest")
    ListCustomVerificationEmailTemplatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ListCustomVerificationEmailTemplatesResponse", name: "ListCustomVerificationEmailTemplatesResponse")
    ListIdentitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ListIdentitiesRequest", name: "ListIdentitiesRequest")
    ListIdentitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ListIdentitiesResponse", name: "ListIdentitiesResponse")
    ListIdentityPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ListIdentityPoliciesRequest", name: "ListIdentityPoliciesRequest")
    ListIdentityPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ListIdentityPoliciesResponse", name: "ListIdentityPoliciesResponse")
    ListReceiptFiltersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ListReceiptFiltersRequest", name: "ListReceiptFiltersRequest")
    ListReceiptFiltersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ListReceiptFiltersResponse", name: "ListReceiptFiltersResponse")
    ListReceiptRuleSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ListReceiptRuleSetsRequest", name: "ListReceiptRuleSetsRequest")
    ListReceiptRuleSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ListReceiptRuleSetsResponse", name: "ListReceiptRuleSetsResponse")
    ListTemplatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ListTemplatesRequest", name: "ListTemplatesRequest")
    ListTemplatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ListTemplatesResponse", name: "ListTemplatesResponse")
    ListVerifiedEmailAddressesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ListVerifiedEmailAddressesResponse", name: "ListVerifiedEmailAddressesResponse")
    MailFromDomainAttributes = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ses#MailFromDomainAttributes", name: "MailFromDomainAttributes")
    MailFromDomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#MailFromDomainName", name: "MailFromDomainName")
    MailFromDomainNotVerifiedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#MailFromDomainNotVerifiedException", name: "MailFromDomainNotVerifiedException", traits: {"aws.protocols#awsQueryError" => {"code" => "MailFromDomainNotVerifiedException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Max24HourSend = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.ses#Max24HourSend", name: "Max24HourSend", traits: {"smithy.api#default" => 0})
    MaxItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ses#MaxItems", name: "MaxItems")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ses#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxSendRate = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.ses#MaxSendRate", name: "MaxSendRate", traits: {"smithy.api#default" => 0})
    Message = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#Message", name: "Message")
    MessageData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#MessageData", name: "MessageData")
    MessageDsn = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#MessageDsn", name: "MessageDsn")
    MessageId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#MessageId", name: "MessageId")
    MessageRejected = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#MessageRejected", name: "MessageRejected", traits: {"aws.protocols#awsQueryError" => {"code" => "MessageRejected", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MessageTag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#MessageTag", name: "MessageTag")
    MessageTagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ses#MessageTagList", name: "MessageTagList")
    MessageTagName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#MessageTagName", name: "MessageTagName")
    MessageTagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#MessageTagValue", name: "MessageTagValue")
    MissingRenderingAttributeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#MissingRenderingAttributeException", name: "MissingRenderingAttributeException", traits: {"aws.protocols#awsQueryError" => {"code" => "MissingRenderingAttribute", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#NextToken", name: "NextToken")
    NotificationAttributes = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ses#NotificationAttributes", name: "NotificationAttributes")
    NotificationTopic = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#NotificationTopic", name: "NotificationTopic")
    NotificationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ses#NotificationType", name: "NotificationType")
    Policy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#Policy", name: "Policy", traits: {"smithy.api#length" => {"min" => 1}})
    PolicyMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ses#PolicyMap", name: "PolicyMap")
    PolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#PolicyName", name: "PolicyName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    PolicyNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ses#PolicyNameList", name: "PolicyNameList")
    ProductionAccessNotGrantedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ProductionAccessNotGrantedException", name: "ProductionAccessNotGrantedException", traits: {"aws.protocols#awsQueryError" => {"code" => "ProductionAccessNotGranted", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PutConfigurationSetDeliveryOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#PutConfigurationSetDeliveryOptionsRequest", name: "PutConfigurationSetDeliveryOptionsRequest")
    PutConfigurationSetDeliveryOptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#PutConfigurationSetDeliveryOptionsResponse", name: "PutConfigurationSetDeliveryOptionsResponse")
    PutIdentityPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#PutIdentityPolicyRequest", name: "PutIdentityPolicyRequest")
    PutIdentityPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#PutIdentityPolicyResponse", name: "PutIdentityPolicyResponse")
    RawMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#RawMessage", name: "RawMessage")
    RawMessageData = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.ses#RawMessageData", name: "RawMessageData")
    ReceiptAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ReceiptAction", name: "ReceiptAction")
    ReceiptActionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ses#ReceiptActionsList", name: "ReceiptActionsList")
    ReceiptFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ReceiptFilter", name: "ReceiptFilter")
    ReceiptFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ses#ReceiptFilterList", name: "ReceiptFilterList")
    ReceiptFilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#ReceiptFilterName", name: "ReceiptFilterName")
    ReceiptFilterPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ses#ReceiptFilterPolicy", name: "ReceiptFilterPolicy")
    ReceiptIpFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ReceiptIpFilter", name: "ReceiptIpFilter")
    ReceiptRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ReceiptRule", name: "ReceiptRule")
    ReceiptRuleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#ReceiptRuleName", name: "ReceiptRuleName")
    ReceiptRuleNamesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ses#ReceiptRuleNamesList", name: "ReceiptRuleNamesList")
    ReceiptRuleSetMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ReceiptRuleSetMetadata", name: "ReceiptRuleSetMetadata")
    ReceiptRuleSetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#ReceiptRuleSetName", name: "ReceiptRuleSetName")
    ReceiptRuleSetsLists = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ses#ReceiptRuleSetsLists", name: "ReceiptRuleSetsLists")
    ReceiptRulesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ses#ReceiptRulesList", name: "ReceiptRulesList")
    Recipient = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#Recipient", name: "Recipient")
    RecipientDsnFields = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#RecipientDsnFields", name: "RecipientDsnFields")
    RecipientsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ses#RecipientsList", name: "RecipientsList")
    RemoteMta = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#RemoteMta", name: "RemoteMta")
    RenderedTemplate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#RenderedTemplate", name: "RenderedTemplate")
    ReorderReceiptRuleSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ReorderReceiptRuleSetRequest", name: "ReorderReceiptRuleSetRequest")
    ReorderReceiptRuleSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ReorderReceiptRuleSetResponse", name: "ReorderReceiptRuleSetResponse")
    ReportingMta = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#ReportingMta", name: "ReportingMta")
    ReputationOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#ReputationOptions", name: "ReputationOptions")
    RuleDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#RuleDoesNotExistException", name: "RuleDoesNotExistException", traits: {"aws.protocols#awsQueryError" => {"code" => "RuleDoesNotExist", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RuleOrRuleSetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#RuleOrRuleSetName", name: "RuleOrRuleSetName")
    RuleSetDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#RuleSetDoesNotExistException", name: "RuleSetDoesNotExistException", traits: {"aws.protocols#awsQueryError" => {"code" => "RuleSetDoesNotExist", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    S3Action = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#S3Action", name: "S3Action")
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#S3BucketName", name: "S3BucketName")
    S3KeyPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#S3KeyPrefix", name: "S3KeyPrefix")
    SNSAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SNSAction", name: "SNSAction")
    SNSActionEncoding = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ses#SNSActionEncoding", name: "SNSActionEncoding")
    SNSDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SNSDestination", name: "SNSDestination")
    SendBounceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SendBounceRequest", name: "SendBounceRequest")
    SendBounceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SendBounceResponse", name: "SendBounceResponse")
    SendBulkTemplatedEmailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SendBulkTemplatedEmailRequest", name: "SendBulkTemplatedEmailRequest")
    SendBulkTemplatedEmailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SendBulkTemplatedEmailResponse", name: "SendBulkTemplatedEmailResponse")
    SendCustomVerificationEmailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SendCustomVerificationEmailRequest", name: "SendCustomVerificationEmailRequest")
    SendCustomVerificationEmailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SendCustomVerificationEmailResponse", name: "SendCustomVerificationEmailResponse")
    SendDataPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SendDataPoint", name: "SendDataPoint")
    SendDataPointList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ses#SendDataPointList", name: "SendDataPointList")
    SendEmailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SendEmailRequest", name: "SendEmailRequest")
    SendEmailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SendEmailResponse", name: "SendEmailResponse")
    SendRawEmailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SendRawEmailRequest", name: "SendRawEmailRequest")
    SendRawEmailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SendRawEmailResponse", name: "SendRawEmailResponse")
    SendTemplatedEmailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SendTemplatedEmailRequest", name: "SendTemplatedEmailRequest")
    SendTemplatedEmailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SendTemplatedEmailResponse", name: "SendTemplatedEmailResponse")
    SentLast24Hours = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.ses#SentLast24Hours", name: "SentLast24Hours", traits: {"smithy.api#default" => 0})
    SetActiveReceiptRuleSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SetActiveReceiptRuleSetRequest", name: "SetActiveReceiptRuleSetRequest")
    SetActiveReceiptRuleSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SetActiveReceiptRuleSetResponse", name: "SetActiveReceiptRuleSetResponse")
    SetIdentityDkimEnabledRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SetIdentityDkimEnabledRequest", name: "SetIdentityDkimEnabledRequest")
    SetIdentityDkimEnabledResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SetIdentityDkimEnabledResponse", name: "SetIdentityDkimEnabledResponse")
    SetIdentityFeedbackForwardingEnabledRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SetIdentityFeedbackForwardingEnabledRequest", name: "SetIdentityFeedbackForwardingEnabledRequest")
    SetIdentityFeedbackForwardingEnabledResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SetIdentityFeedbackForwardingEnabledResponse", name: "SetIdentityFeedbackForwardingEnabledResponse")
    SetIdentityHeadersInNotificationsEnabledRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SetIdentityHeadersInNotificationsEnabledRequest", name: "SetIdentityHeadersInNotificationsEnabledRequest")
    SetIdentityHeadersInNotificationsEnabledResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SetIdentityHeadersInNotificationsEnabledResponse", name: "SetIdentityHeadersInNotificationsEnabledResponse")
    SetIdentityMailFromDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SetIdentityMailFromDomainRequest", name: "SetIdentityMailFromDomainRequest")
    SetIdentityMailFromDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SetIdentityMailFromDomainResponse", name: "SetIdentityMailFromDomainResponse")
    SetIdentityNotificationTopicRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SetIdentityNotificationTopicRequest", name: "SetIdentityNotificationTopicRequest")
    SetIdentityNotificationTopicResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SetIdentityNotificationTopicResponse", name: "SetIdentityNotificationTopicResponse")
    SetReceiptRulePositionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SetReceiptRulePositionRequest", name: "SetReceiptRulePositionRequest")
    SetReceiptRulePositionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#SetReceiptRulePositionResponse", name: "SetReceiptRulePositionResponse")
    StopAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#StopAction", name: "StopAction")
    StopScope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ses#StopScope", name: "StopScope")
    Subject = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#Subject", name: "Subject")
    SubjectPart = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#SubjectPart", name: "SubjectPart")
    SuccessRedirectionURL = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#SuccessRedirectionURL", name: "SuccessRedirectionURL")
    Template = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#Template", name: "Template")
    TemplateContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#TemplateContent", name: "TemplateContent")
    TemplateData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#TemplateData", name: "TemplateData", traits: {"smithy.api#length" => {"min" => 0, "max" => 262144}})
    TemplateDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#TemplateDoesNotExistException", name: "TemplateDoesNotExistException", traits: {"aws.protocols#awsQueryError" => {"code" => "TemplateDoesNotExist", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TemplateMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#TemplateMetadata", name: "TemplateMetadata")
    TemplateMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ses#TemplateMetadataList", name: "TemplateMetadataList")
    TemplateName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#TemplateName", name: "TemplateName")
    TestRenderTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#TestRenderTemplateRequest", name: "TestRenderTemplateRequest")
    TestRenderTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#TestRenderTemplateResponse", name: "TestRenderTemplateResponse")
    TextPart = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#TextPart", name: "TextPart")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ses#Timestamp", name: "Timestamp")
    TlsPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ses#TlsPolicy", name: "TlsPolicy")
    TrackingOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#TrackingOptions", name: "TrackingOptions")
    TrackingOptionsAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#TrackingOptionsAlreadyExistsException", name: "TrackingOptionsAlreadyExistsException", traits: {"aws.protocols#awsQueryError" => {"code" => "TrackingOptionsAlreadyExistsException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TrackingOptionsDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#TrackingOptionsDoesNotExistException", name: "TrackingOptionsDoesNotExistException", traits: {"aws.protocols#awsQueryError" => {"code" => "TrackingOptionsDoesNotExistException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UpdateAccountSendingEnabledRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#UpdateAccountSendingEnabledRequest", name: "UpdateAccountSendingEnabledRequest")
    UpdateConfigurationSetEventDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#UpdateConfigurationSetEventDestinationRequest", name: "UpdateConfigurationSetEventDestinationRequest")
    UpdateConfigurationSetEventDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#UpdateConfigurationSetEventDestinationResponse", name: "UpdateConfigurationSetEventDestinationResponse")
    UpdateConfigurationSetReputationMetricsEnabledRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#UpdateConfigurationSetReputationMetricsEnabledRequest", name: "UpdateConfigurationSetReputationMetricsEnabledRequest")
    UpdateConfigurationSetSendingEnabledRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#UpdateConfigurationSetSendingEnabledRequest", name: "UpdateConfigurationSetSendingEnabledRequest")
    UpdateConfigurationSetTrackingOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#UpdateConfigurationSetTrackingOptionsRequest", name: "UpdateConfigurationSetTrackingOptionsRequest")
    UpdateConfigurationSetTrackingOptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#UpdateConfigurationSetTrackingOptionsResponse", name: "UpdateConfigurationSetTrackingOptionsResponse")
    UpdateCustomVerificationEmailTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#UpdateCustomVerificationEmailTemplateRequest", name: "UpdateCustomVerificationEmailTemplateRequest")
    UpdateReceiptRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#UpdateReceiptRuleRequest", name: "UpdateReceiptRuleRequest")
    UpdateReceiptRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#UpdateReceiptRuleResponse", name: "UpdateReceiptRuleResponse")
    UpdateTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#UpdateTemplateRequest", name: "UpdateTemplateRequest")
    UpdateTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#UpdateTemplateResponse", name: "UpdateTemplateResponse")
    VerificationAttributes = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ses#VerificationAttributes", name: "VerificationAttributes")
    VerificationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ses#VerificationStatus", name: "VerificationStatus")
    VerificationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ses#VerificationToken", name: "VerificationToken")
    VerificationTokenList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ses#VerificationTokenList", name: "VerificationTokenList")
    VerifyDomainDkimRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#VerifyDomainDkimRequest", name: "VerifyDomainDkimRequest")
    VerifyDomainDkimResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#VerifyDomainDkimResponse", name: "VerifyDomainDkimResponse")
    VerifyDomainIdentityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#VerifyDomainIdentityRequest", name: "VerifyDomainIdentityRequest")
    VerifyDomainIdentityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#VerifyDomainIdentityResponse", name: "VerifyDomainIdentityResponse")
    VerifyEmailAddressRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#VerifyEmailAddressRequest", name: "VerifyEmailAddressRequest")
    VerifyEmailIdentityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#VerifyEmailIdentityRequest", name: "VerifyEmailIdentityRequest")
    VerifyEmailIdentityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#VerifyEmailIdentityResponse", name: "VerifyEmailIdentityResponse")
    WorkmailAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ses#WorkmailAction", name: "WorkmailAction")

    AccountSendingPausedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    AccountSendingPausedException.type = Types::AccountSendingPausedException
    AddHeaderAction.add_member(:header_name, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderName, location_name: "HeaderName", traits: {"smithy.api#required" => {}}))
    AddHeaderAction.add_member(:header_value, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderValue, location_name: "HeaderValue", traits: {"smithy.api#required" => {}}))
    AddHeaderAction.type = Types::AddHeaderAction
    AddressList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Address)
    AlreadyExistsException.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleOrRuleSetName, location_name: "Name"))
    AlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    AlreadyExistsException.type = Types::AlreadyExistsException
    BehaviorOnMXFailure.add_member(:use_default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UseDefaultValue", traits: {"smithy.api#enumValue" => "UseDefaultValue"}))
    BehaviorOnMXFailure.add_member(:reject_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RejectMessage", traits: {"smithy.api#enumValue" => "RejectMessage"}))
    Body.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: Content, location_name: "Text"))
    Body.add_member(:html, ::Smithy::Schema::Shapes::MemberShape.new(target: Content, location_name: "Html"))
    Body.type = Types::Body
    BounceAction.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "TopicArn"))
    BounceAction.add_member(:smtp_reply_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BounceSmtpReplyCode, location_name: "SmtpReplyCode", traits: {"smithy.api#required" => {}}))
    BounceAction.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BounceStatusCode, location_name: "StatusCode"))
    BounceAction.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: BounceMessage, location_name: "Message", traits: {"smithy.api#required" => {}}))
    BounceAction.add_member(:sender, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, location_name: "Sender", traits: {"smithy.api#required" => {}}))
    BounceAction.type = Types::BounceAction
    BounceType.add_member(:does_not_exist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DoesNotExist", traits: {"smithy.api#enumValue" => "DoesNotExist"}))
    BounceType.add_member(:message_too_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MessageTooLarge", traits: {"smithy.api#enumValue" => "MessageTooLarge"}))
    BounceType.add_member(:exceeded_quota, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ExceededQuota", traits: {"smithy.api#enumValue" => "ExceededQuota"}))
    BounceType.add_member(:content_rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ContentRejected", traits: {"smithy.api#enumValue" => "ContentRejected"}))
    BounceType.add_member(:undefined, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Undefined", traits: {"smithy.api#enumValue" => "Undefined"}))
    BounceType.add_member(:temporary_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TemporaryFailure", traits: {"smithy.api#enumValue" => "TemporaryFailure"}))
    BouncedRecipientInfo.add_member(:recipient, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, location_name: "Recipient", traits: {"smithy.api#required" => {}}))
    BouncedRecipientInfo.add_member(:recipient_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "RecipientArn"))
    BouncedRecipientInfo.add_member(:bounce_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BounceType, location_name: "BounceType"))
    BouncedRecipientInfo.add_member(:recipient_dsn_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipientDsnFields, location_name: "RecipientDsnFields"))
    BouncedRecipientInfo.type = Types::BouncedRecipientInfo
    BouncedRecipientInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BouncedRecipientInfo)
    BulkEmailDestination.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: Destination, location_name: "Destination", traits: {"smithy.api#required" => {}}))
    BulkEmailDestination.add_member(:replacement_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTagList, location_name: "ReplacementTags"))
    BulkEmailDestination.add_member(:replacement_template_data, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateData, location_name: "ReplacementTemplateData"))
    BulkEmailDestination.type = Types::BulkEmailDestination
    BulkEmailDestinationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BulkEmailDestination)
    BulkEmailDestinationStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BulkEmailStatus, location_name: "Status"))
    BulkEmailDestinationStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: Error, location_name: "Error"))
    BulkEmailDestinationStatus.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "MessageId"))
    BulkEmailDestinationStatus.type = Types::BulkEmailDestinationStatus
    BulkEmailDestinationStatusList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BulkEmailDestinationStatus)
    BulkEmailStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Success", traits: {"smithy.api#enumValue" => "Success"}))
    BulkEmailStatus.add_member(:message_rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MessageRejected", traits: {"smithy.api#enumValue" => "MessageRejected"}))
    BulkEmailStatus.add_member(:mail_from_domain_not_verified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MailFromDomainNotVerified", traits: {"smithy.api#enumValue" => "MailFromDomainNotVerified"}))
    BulkEmailStatus.add_member(:configuration_set_does_not_exist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ConfigurationSetDoesNotExist", traits: {"smithy.api#enumValue" => "ConfigurationSetDoesNotExist"}))
    BulkEmailStatus.add_member(:template_does_not_exist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TemplateDoesNotExist", traits: {"smithy.api#enumValue" => "TemplateDoesNotExist"}))
    BulkEmailStatus.add_member(:account_suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AccountSuspended", traits: {"smithy.api#enumValue" => "AccountSuspended"}))
    BulkEmailStatus.add_member(:account_throttled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AccountThrottled", traits: {"smithy.api#enumValue" => "AccountThrottled"}))
    BulkEmailStatus.add_member(:account_daily_quota_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AccountDailyQuotaExceeded", traits: {"smithy.api#enumValue" => "AccountDailyQuotaExceeded"}))
    BulkEmailStatus.add_member(:invalid_sending_pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "InvalidSendingPoolName", traits: {"smithy.api#enumValue" => "InvalidSendingPoolName"}))
    BulkEmailStatus.add_member(:account_sending_paused, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AccountSendingPaused", traits: {"smithy.api#enumValue" => "AccountSendingPaused"}))
    BulkEmailStatus.add_member(:configuration_set_sending_paused, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ConfigurationSetSendingPaused", traits: {"smithy.api#enumValue" => "ConfigurationSetSendingPaused"}))
    BulkEmailStatus.add_member(:invalid_parameter_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "InvalidParameterValue", traits: {"smithy.api#enumValue" => "InvalidParameterValue"}))
    BulkEmailStatus.add_member(:transient_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TransientFailure", traits: {"smithy.api#enumValue" => "TransientFailure"}))
    BulkEmailStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    CannotDeleteException.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleOrRuleSetName, location_name: "Name"))
    CannotDeleteException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    CannotDeleteException.type = Types::CannotDeleteException
    CloneReceiptRuleSetRequest.add_member(:rule_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRuleSetName, location_name: "RuleSetName", traits: {"smithy.api#required" => {}}))
    CloneReceiptRuleSetRequest.add_member(:original_rule_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRuleSetName, location_name: "OriginalRuleSetName", traits: {"smithy.api#required" => {}}))
    CloneReceiptRuleSetRequest.type = Types::CloneReceiptRuleSetRequest
    CloneReceiptRuleSetResponse.type = Types::CloneReceiptRuleSetResponse
    CloudWatchDestination.add_member(:dimension_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchDimensionConfigurations, location_name: "DimensionConfigurations", traits: {"smithy.api#required" => {}}))
    CloudWatchDestination.type = Types::CloudWatchDestination
    CloudWatchDimensionConfiguration.add_member(:dimension_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionName, location_name: "DimensionName", traits: {"smithy.api#required" => {}}))
    CloudWatchDimensionConfiguration.add_member(:dimension_value_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionValueSource, location_name: "DimensionValueSource", traits: {"smithy.api#required" => {}}))
    CloudWatchDimensionConfiguration.add_member(:default_dimension_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultDimensionValue, location_name: "DefaultDimensionValue", traits: {"smithy.api#required" => {}}))
    CloudWatchDimensionConfiguration.type = Types::CloudWatchDimensionConfiguration
    CloudWatchDimensionConfigurations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchDimensionConfiguration)
    ConfigurationSet.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    ConfigurationSet.type = Types::ConfigurationSet
    ConfigurationSetAlreadyExistsException.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName"))
    ConfigurationSetAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ConfigurationSetAlreadyExistsException.type = Types::ConfigurationSetAlreadyExistsException
    ConfigurationSetAttribute.add_member(:event_destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EVENT_DESTINATIONS", traits: {"smithy.api#enumValue" => "eventDestinations"}))
    ConfigurationSetAttribute.add_member(:tracking_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRACKING_OPTIONS", traits: {"smithy.api#enumValue" => "trackingOptions"}))
    ConfigurationSetAttribute.add_member(:delivery_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELIVERY_OPTIONS", traits: {"smithy.api#enumValue" => "deliveryOptions"}))
    ConfigurationSetAttribute.add_member(:reputation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REPUTATION_OPTIONS", traits: {"smithy.api#enumValue" => "reputationOptions"}))
    ConfigurationSetAttributeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetAttribute)
    ConfigurationSetDoesNotExistException.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName"))
    ConfigurationSetDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ConfigurationSetDoesNotExistException.type = Types::ConfigurationSetDoesNotExistException
    ConfigurationSetSendingPausedException.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName"))
    ConfigurationSetSendingPausedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ConfigurationSetSendingPausedException.type = Types::ConfigurationSetSendingPausedException
    ConfigurationSets.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSet)
    ConnectAction.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectInstanceArn, location_name: "InstanceARN", traits: {"smithy.api#required" => {}}))
    ConnectAction.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleARN, location_name: "IAMRoleARN", traits: {"smithy.api#required" => {}}))
    ConnectAction.type = Types::ConnectAction
    Content.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageData, location_name: "Data", traits: {"smithy.api#required" => {}}))
    Content.add_member(:charset, ::Smithy::Schema::Shapes::MemberShape.new(target: Charset, location_name: "Charset"))
    Content.type = Types::Content
    CreateConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    CreateConfigurationSetEventDestinationRequest.add_member(:event_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestination, location_name: "EventDestination", traits: {"smithy.api#required" => {}}))
    CreateConfigurationSetEventDestinationRequest.type = Types::CreateConfigurationSetEventDestinationRequest
    CreateConfigurationSetEventDestinationResponse.type = Types::CreateConfigurationSetEventDestinationResponse
    CreateConfigurationSetRequest.add_member(:configuration_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSet, location_name: "ConfigurationSet", traits: {"smithy.api#required" => {}}))
    CreateConfigurationSetRequest.type = Types::CreateConfigurationSetRequest
    CreateConfigurationSetResponse.type = Types::CreateConfigurationSetResponse
    CreateConfigurationSetTrackingOptionsRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    CreateConfigurationSetTrackingOptionsRequest.add_member(:tracking_options, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackingOptions, location_name: "TrackingOptions", traits: {"smithy.api#required" => {}}))
    CreateConfigurationSetTrackingOptionsRequest.type = Types::CreateConfigurationSetTrackingOptionsRequest
    CreateConfigurationSetTrackingOptionsResponse.type = Types::CreateConfigurationSetTrackingOptionsResponse
    CreateCustomVerificationEmailTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, location_name: "TemplateName", traits: {"smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.add_member(:from_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: FromAddress, location_name: "FromEmailAddress", traits: {"smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.add_member(:template_subject, ::Smithy::Schema::Shapes::MemberShape.new(target: Subject, location_name: "TemplateSubject", traits: {"smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.add_member(:template_content, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateContent, location_name: "TemplateContent", traits: {"smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.add_member(:success_redirection_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessRedirectionURL, location_name: "SuccessRedirectionURL", traits: {"smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.add_member(:failure_redirection_url, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureRedirectionURL, location_name: "FailureRedirectionURL", traits: {"smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.type = Types::CreateCustomVerificationEmailTemplateRequest
    CreateReceiptFilterRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptFilter, location_name: "Filter", traits: {"smithy.api#required" => {}}))
    CreateReceiptFilterRequest.type = Types::CreateReceiptFilterRequest
    CreateReceiptFilterResponse.type = Types::CreateReceiptFilterResponse
    CreateReceiptRuleRequest.add_member(:rule_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRuleSetName, location_name: "RuleSetName", traits: {"smithy.api#required" => {}}))
    CreateReceiptRuleRequest.add_member(:after, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRuleName, location_name: "After"))
    CreateReceiptRuleRequest.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRule, location_name: "Rule", traits: {"smithy.api#required" => {}}))
    CreateReceiptRuleRequest.type = Types::CreateReceiptRuleRequest
    CreateReceiptRuleResponse.type = Types::CreateReceiptRuleResponse
    CreateReceiptRuleSetRequest.add_member(:rule_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRuleSetName, location_name: "RuleSetName", traits: {"smithy.api#required" => {}}))
    CreateReceiptRuleSetRequest.type = Types::CreateReceiptRuleSetRequest
    CreateReceiptRuleSetResponse.type = Types::CreateReceiptRuleSetResponse
    CreateTemplateRequest.add_member(:template, ::Smithy::Schema::Shapes::MemberShape.new(target: Template, location_name: "Template", traits: {"smithy.api#required" => {}}))
    CreateTemplateRequest.type = Types::CreateTemplateRequest
    CreateTemplateResponse.type = Types::CreateTemplateResponse
    CustomMailFromStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Pending", traits: {"smithy.api#enumValue" => "Pending"}))
    CustomMailFromStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Success", traits: {"smithy.api#enumValue" => "Success"}))
    CustomMailFromStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    CustomMailFromStatus.add_member(:temporary_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TemporaryFailure", traits: {"smithy.api#enumValue" => "TemporaryFailure"}))
    CustomVerificationEmailInvalidContentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    CustomVerificationEmailInvalidContentException.type = Types::CustomVerificationEmailInvalidContentException
    CustomVerificationEmailTemplate.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, location_name: "TemplateName"))
    CustomVerificationEmailTemplate.add_member(:from_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: FromAddress, location_name: "FromEmailAddress"))
    CustomVerificationEmailTemplate.add_member(:template_subject, ::Smithy::Schema::Shapes::MemberShape.new(target: Subject, location_name: "TemplateSubject"))
    CustomVerificationEmailTemplate.add_member(:success_redirection_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessRedirectionURL, location_name: "SuccessRedirectionURL"))
    CustomVerificationEmailTemplate.add_member(:failure_redirection_url, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureRedirectionURL, location_name: "FailureRedirectionURL"))
    CustomVerificationEmailTemplate.type = Types::CustomVerificationEmailTemplate
    CustomVerificationEmailTemplateAlreadyExistsException.add_member(:custom_verification_email_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, location_name: "CustomVerificationEmailTemplateName"))
    CustomVerificationEmailTemplateAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    CustomVerificationEmailTemplateAlreadyExistsException.type = Types::CustomVerificationEmailTemplateAlreadyExistsException
    CustomVerificationEmailTemplateDoesNotExistException.add_member(:custom_verification_email_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, location_name: "CustomVerificationEmailTemplateName"))
    CustomVerificationEmailTemplateDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    CustomVerificationEmailTemplateDoesNotExistException.type = Types::CustomVerificationEmailTemplateDoesNotExistException
    CustomVerificationEmailTemplates.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CustomVerificationEmailTemplate)
    DeleteConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    DeleteConfigurationSetEventDestinationRequest.add_member(:event_destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationName, location_name: "EventDestinationName", traits: {"smithy.api#required" => {}}))
    DeleteConfigurationSetEventDestinationRequest.type = Types::DeleteConfigurationSetEventDestinationRequest
    DeleteConfigurationSetEventDestinationResponse.type = Types::DeleteConfigurationSetEventDestinationResponse
    DeleteConfigurationSetRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    DeleteConfigurationSetRequest.type = Types::DeleteConfigurationSetRequest
    DeleteConfigurationSetResponse.type = Types::DeleteConfigurationSetResponse
    DeleteConfigurationSetTrackingOptionsRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    DeleteConfigurationSetTrackingOptionsRequest.type = Types::DeleteConfigurationSetTrackingOptionsRequest
    DeleteConfigurationSetTrackingOptionsResponse.type = Types::DeleteConfigurationSetTrackingOptionsResponse
    DeleteCustomVerificationEmailTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, location_name: "TemplateName", traits: {"smithy.api#required" => {}}))
    DeleteCustomVerificationEmailTemplateRequest.type = Types::DeleteCustomVerificationEmailTemplateRequest
    DeleteIdentityPolicyRequest.add_member(:identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "Identity", traits: {"smithy.api#required" => {}}))
    DeleteIdentityPolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, location_name: "PolicyName", traits: {"smithy.api#required" => {}}))
    DeleteIdentityPolicyRequest.type = Types::DeleteIdentityPolicyRequest
    DeleteIdentityPolicyResponse.type = Types::DeleteIdentityPolicyResponse
    DeleteIdentityRequest.add_member(:identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "Identity", traits: {"smithy.api#required" => {}}))
    DeleteIdentityRequest.type = Types::DeleteIdentityRequest
    DeleteIdentityResponse.type = Types::DeleteIdentityResponse
    DeleteReceiptFilterRequest.add_member(:filter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptFilterName, location_name: "FilterName", traits: {"smithy.api#required" => {}}))
    DeleteReceiptFilterRequest.type = Types::DeleteReceiptFilterRequest
    DeleteReceiptFilterResponse.type = Types::DeleteReceiptFilterResponse
    DeleteReceiptRuleRequest.add_member(:rule_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRuleSetName, location_name: "RuleSetName", traits: {"smithy.api#required" => {}}))
    DeleteReceiptRuleRequest.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRuleName, location_name: "RuleName", traits: {"smithy.api#required" => {}}))
    DeleteReceiptRuleRequest.type = Types::DeleteReceiptRuleRequest
    DeleteReceiptRuleResponse.type = Types::DeleteReceiptRuleResponse
    DeleteReceiptRuleSetRequest.add_member(:rule_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRuleSetName, location_name: "RuleSetName", traits: {"smithy.api#required" => {}}))
    DeleteReceiptRuleSetRequest.type = Types::DeleteReceiptRuleSetRequest
    DeleteReceiptRuleSetResponse.type = Types::DeleteReceiptRuleSetResponse
    DeleteTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, location_name: "TemplateName", traits: {"smithy.api#required" => {}}))
    DeleteTemplateRequest.type = Types::DeleteTemplateRequest
    DeleteTemplateResponse.type = Types::DeleteTemplateResponse
    DeleteVerifiedEmailAddressRequest.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, location_name: "EmailAddress", traits: {"smithy.api#required" => {}}))
    DeleteVerifiedEmailAddressRequest.type = Types::DeleteVerifiedEmailAddressRequest
    DeliveryOptions.add_member(:tls_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsPolicy, location_name: "TlsPolicy"))
    DeliveryOptions.type = Types::DeliveryOptions
    DescribeActiveReceiptRuleSetRequest.type = Types::DescribeActiveReceiptRuleSetRequest
    DescribeActiveReceiptRuleSetResponse.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRuleSetMetadata, location_name: "Metadata"))
    DescribeActiveReceiptRuleSetResponse.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRulesList, location_name: "Rules"))
    DescribeActiveReceiptRuleSetResponse.type = Types::DescribeActiveReceiptRuleSetResponse
    DescribeConfigurationSetRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    DescribeConfigurationSetRequest.add_member(:configuration_set_attribute_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetAttributeList, location_name: "ConfigurationSetAttributeNames"))
    DescribeConfigurationSetRequest.type = Types::DescribeConfigurationSetRequest
    DescribeConfigurationSetResponse.add_member(:configuration_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSet, location_name: "ConfigurationSet"))
    DescribeConfigurationSetResponse.add_member(:event_destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinations, location_name: "EventDestinations"))
    DescribeConfigurationSetResponse.add_member(:tracking_options, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackingOptions, location_name: "TrackingOptions"))
    DescribeConfigurationSetResponse.add_member(:delivery_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryOptions, location_name: "DeliveryOptions"))
    DescribeConfigurationSetResponse.add_member(:reputation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationOptions, location_name: "ReputationOptions"))
    DescribeConfigurationSetResponse.type = Types::DescribeConfigurationSetResponse
    DescribeReceiptRuleRequest.add_member(:rule_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRuleSetName, location_name: "RuleSetName", traits: {"smithy.api#required" => {}}))
    DescribeReceiptRuleRequest.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRuleName, location_name: "RuleName", traits: {"smithy.api#required" => {}}))
    DescribeReceiptRuleRequest.type = Types::DescribeReceiptRuleRequest
    DescribeReceiptRuleResponse.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRule, location_name: "Rule"))
    DescribeReceiptRuleResponse.type = Types::DescribeReceiptRuleResponse
    DescribeReceiptRuleSetRequest.add_member(:rule_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRuleSetName, location_name: "RuleSetName", traits: {"smithy.api#required" => {}}))
    DescribeReceiptRuleSetRequest.type = Types::DescribeReceiptRuleSetRequest
    DescribeReceiptRuleSetResponse.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRuleSetMetadata, location_name: "Metadata"))
    DescribeReceiptRuleSetResponse.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRulesList, location_name: "Rules"))
    DescribeReceiptRuleSetResponse.type = Types::DescribeReceiptRuleSetResponse
    Destination.add_member(:to_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressList, location_name: "ToAddresses"))
    Destination.add_member(:cc_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressList, location_name: "CcAddresses"))
    Destination.add_member(:bcc_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressList, location_name: "BccAddresses"))
    Destination.type = Types::Destination
    DimensionValueSource.add_member(:message_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MESSAGE_TAG", traits: {"smithy.api#enumValue" => "messageTag"}))
    DimensionValueSource.add_member(:email_header, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EMAIL_HEADER", traits: {"smithy.api#enumValue" => "emailHeader"}))
    DimensionValueSource.add_member(:link_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LINK_TAG", traits: {"smithy.api#enumValue" => "linkTag"}))
    DkimAttributes.key = ::Smithy::Schema::Shapes::MemberShape.new(target: Identity)
    DkimAttributes.value = ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityDkimAttributes)
    DsnAction.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "failed"}))
    DsnAction.add_member(:delayed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELAYED", traits: {"smithy.api#enumValue" => "delayed"}))
    DsnAction.add_member(:delivered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELIVERED", traits: {"smithy.api#enumValue" => "delivered"}))
    DsnAction.add_member(:relayed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RELAYED", traits: {"smithy.api#enumValue" => "relayed"}))
    DsnAction.add_member(:expanded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXPANDED", traits: {"smithy.api#enumValue" => "expanded"}))
    EventDestination.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    EventDestination.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "Enabled", traits: {"smithy.api#default" => false}))
    EventDestination.add_member(:matching_event_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypes, location_name: "MatchingEventTypes", traits: {"smithy.api#required" => {}}))
    EventDestination.add_member(:kinesis_firehose_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisFirehoseDestination, location_name: "KinesisFirehoseDestination"))
    EventDestination.add_member(:cloud_watch_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchDestination, location_name: "CloudWatchDestination"))
    EventDestination.add_member(:sns_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: SNSDestination, location_name: "SNSDestination"))
    EventDestination.type = Types::EventDestination
    EventDestinationAlreadyExistsException.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName"))
    EventDestinationAlreadyExistsException.add_member(:event_destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationName, location_name: "EventDestinationName"))
    EventDestinationAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    EventDestinationAlreadyExistsException.type = Types::EventDestinationAlreadyExistsException
    EventDestinationDoesNotExistException.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName"))
    EventDestinationDoesNotExistException.add_member(:event_destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationName, location_name: "EventDestinationName"))
    EventDestinationDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    EventDestinationDoesNotExistException.type = Types::EventDestinationDoesNotExistException
    EventDestinations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestination)
    EventType.add_member(:send, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SEND", traits: {"smithy.api#enumValue" => "send"}))
    EventType.add_member(:reject, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REJECT", traits: {"smithy.api#enumValue" => "reject"}))
    EventType.add_member(:bounce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BOUNCE", traits: {"smithy.api#enumValue" => "bounce"}))
    EventType.add_member(:complaint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLAINT", traits: {"smithy.api#enumValue" => "complaint"}))
    EventType.add_member(:delivery, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELIVERY", traits: {"smithy.api#enumValue" => "delivery"}))
    EventType.add_member(:open, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OPEN", traits: {"smithy.api#enumValue" => "open"}))
    EventType.add_member(:click, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLICK", traits: {"smithy.api#enumValue" => "click"}))
    EventType.add_member(:rendering_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RENDERING_FAILURE", traits: {"smithy.api#enumValue" => "renderingFailure"}))
    EventTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EventType)
    ExtensionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtensionFieldName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    ExtensionField.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtensionFieldValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    ExtensionField.type = Types::ExtensionField
    ExtensionFieldList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExtensionField)
    FromEmailAddressNotVerifiedException.add_member(:from_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: FromAddress, location_name: "FromEmailAddress"))
    FromEmailAddressNotVerifiedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    FromEmailAddressNotVerifiedException.type = Types::FromEmailAddressNotVerifiedException
    GetAccountSendingEnabledResponse.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "Enabled", traits: {"smithy.api#default" => false}))
    GetAccountSendingEnabledResponse.type = Types::GetAccountSendingEnabledResponse
    GetCustomVerificationEmailTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, location_name: "TemplateName", traits: {"smithy.api#required" => {}}))
    GetCustomVerificationEmailTemplateRequest.type = Types::GetCustomVerificationEmailTemplateRequest
    GetCustomVerificationEmailTemplateResponse.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, location_name: "TemplateName"))
    GetCustomVerificationEmailTemplateResponse.add_member(:from_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: FromAddress, location_name: "FromEmailAddress"))
    GetCustomVerificationEmailTemplateResponse.add_member(:template_subject, ::Smithy::Schema::Shapes::MemberShape.new(target: Subject, location_name: "TemplateSubject"))
    GetCustomVerificationEmailTemplateResponse.add_member(:template_content, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateContent, location_name: "TemplateContent"))
    GetCustomVerificationEmailTemplateResponse.add_member(:success_redirection_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessRedirectionURL, location_name: "SuccessRedirectionURL"))
    GetCustomVerificationEmailTemplateResponse.add_member(:failure_redirection_url, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureRedirectionURL, location_name: "FailureRedirectionURL"))
    GetCustomVerificationEmailTemplateResponse.type = Types::GetCustomVerificationEmailTemplateResponse
    GetIdentityDkimAttributesRequest.add_member(:identities, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityList, location_name: "Identities", traits: {"smithy.api#required" => {}}))
    GetIdentityDkimAttributesRequest.type = Types::GetIdentityDkimAttributesRequest
    GetIdentityDkimAttributesResponse.add_member(:dkim_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DkimAttributes, location_name: "DkimAttributes", traits: {"smithy.api#required" => {}}))
    GetIdentityDkimAttributesResponse.type = Types::GetIdentityDkimAttributesResponse
    GetIdentityMailFromDomainAttributesRequest.add_member(:identities, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityList, location_name: "Identities", traits: {"smithy.api#required" => {}}))
    GetIdentityMailFromDomainAttributesRequest.type = Types::GetIdentityMailFromDomainAttributesRequest
    GetIdentityMailFromDomainAttributesResponse.add_member(:mail_from_domain_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MailFromDomainAttributes, location_name: "MailFromDomainAttributes", traits: {"smithy.api#required" => {}}))
    GetIdentityMailFromDomainAttributesResponse.type = Types::GetIdentityMailFromDomainAttributesResponse
    GetIdentityNotificationAttributesRequest.add_member(:identities, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityList, location_name: "Identities", traits: {"smithy.api#required" => {}}))
    GetIdentityNotificationAttributesRequest.type = Types::GetIdentityNotificationAttributesRequest
    GetIdentityNotificationAttributesResponse.add_member(:notification_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationAttributes, location_name: "NotificationAttributes", traits: {"smithy.api#required" => {}}))
    GetIdentityNotificationAttributesResponse.type = Types::GetIdentityNotificationAttributesResponse
    GetIdentityPoliciesRequest.add_member(:identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "Identity", traits: {"smithy.api#required" => {}}))
    GetIdentityPoliciesRequest.add_member(:policy_names, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNameList, location_name: "PolicyNames", traits: {"smithy.api#required" => {}}))
    GetIdentityPoliciesRequest.type = Types::GetIdentityPoliciesRequest
    GetIdentityPoliciesResponse.add_member(:policies, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyMap, location_name: "Policies", traits: {"smithy.api#required" => {}}))
    GetIdentityPoliciesResponse.type = Types::GetIdentityPoliciesResponse
    GetIdentityVerificationAttributesRequest.add_member(:identities, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityList, location_name: "Identities", traits: {"smithy.api#required" => {}}))
    GetIdentityVerificationAttributesRequest.type = Types::GetIdentityVerificationAttributesRequest
    GetIdentityVerificationAttributesResponse.add_member(:verification_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationAttributes, location_name: "VerificationAttributes", traits: {"smithy.api#required" => {}}))
    GetIdentityVerificationAttributesResponse.type = Types::GetIdentityVerificationAttributesResponse
    GetSendQuotaResponse.add_member(:max24_hour_send, ::Smithy::Schema::Shapes::MemberShape.new(target: Max24HourSend, location_name: "Max24HourSend", traits: {"smithy.api#default" => 0}))
    GetSendQuotaResponse.add_member(:max_send_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSendRate, location_name: "MaxSendRate", traits: {"smithy.api#default" => 0}))
    GetSendQuotaResponse.add_member(:sent_last24_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: SentLast24Hours, location_name: "SentLast24Hours", traits: {"smithy.api#default" => 0}))
    GetSendQuotaResponse.type = Types::GetSendQuotaResponse
    GetSendStatisticsResponse.add_member(:send_data_points, ::Smithy::Schema::Shapes::MemberShape.new(target: SendDataPointList, location_name: "SendDataPoints"))
    GetSendStatisticsResponse.type = Types::GetSendStatisticsResponse
    GetTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, location_name: "TemplateName", traits: {"smithy.api#required" => {}}))
    GetTemplateRequest.type = Types::GetTemplateRequest
    GetTemplateResponse.add_member(:template, ::Smithy::Schema::Shapes::MemberShape.new(target: Template, location_name: "Template"))
    GetTemplateResponse.type = Types::GetTemplateResponse
    IdentityDkimAttributes.add_member(:dkim_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "DkimEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    IdentityDkimAttributes.add_member(:dkim_verification_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationStatus, location_name: "DkimVerificationStatus", traits: {"smithy.api#required" => {}}))
    IdentityDkimAttributes.add_member(:dkim_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationTokenList, location_name: "DkimTokens"))
    IdentityDkimAttributes.type = Types::IdentityDkimAttributes
    IdentityList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Identity)
    IdentityMailFromDomainAttributes.add_member(:mail_from_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: MailFromDomainName, location_name: "MailFromDomain", traits: {"smithy.api#required" => {}}))
    IdentityMailFromDomainAttributes.add_member(:mail_from_domain_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomMailFromStatus, location_name: "MailFromDomainStatus", traits: {"smithy.api#required" => {}}))
    IdentityMailFromDomainAttributes.add_member(:behavior_on_mx_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: BehaviorOnMXFailure, location_name: "BehaviorOnMXFailure", traits: {"smithy.api#required" => {}}))
    IdentityMailFromDomainAttributes.type = Types::IdentityMailFromDomainAttributes
    IdentityNotificationAttributes.add_member(:bounce_topic, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationTopic, location_name: "BounceTopic", traits: {"smithy.api#required" => {}}))
    IdentityNotificationAttributes.add_member(:complaint_topic, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationTopic, location_name: "ComplaintTopic", traits: {"smithy.api#required" => {}}))
    IdentityNotificationAttributes.add_member(:delivery_topic, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationTopic, location_name: "DeliveryTopic", traits: {"smithy.api#required" => {}}))
    IdentityNotificationAttributes.add_member(:forwarding_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "ForwardingEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    IdentityNotificationAttributes.add_member(:headers_in_bounce_notifications_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "HeadersInBounceNotificationsEnabled", traits: {"smithy.api#default" => false}))
    IdentityNotificationAttributes.add_member(:headers_in_complaint_notifications_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "HeadersInComplaintNotificationsEnabled", traits: {"smithy.api#default" => false}))
    IdentityNotificationAttributes.add_member(:headers_in_delivery_notifications_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "HeadersInDeliveryNotificationsEnabled", traits: {"smithy.api#default" => false}))
    IdentityNotificationAttributes.type = Types::IdentityNotificationAttributes
    IdentityType.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EmailAddress", traits: {"smithy.api#enumValue" => "EmailAddress"}))
    IdentityType.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Domain", traits: {"smithy.api#enumValue" => "Domain"}))
    IdentityVerificationAttributes.add_member(:verification_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationStatus, location_name: "VerificationStatus", traits: {"smithy.api#required" => {}}))
    IdentityVerificationAttributes.add_member(:verification_token, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationToken, location_name: "VerificationToken"))
    IdentityVerificationAttributes.type = Types::IdentityVerificationAttributes
    InvalidCloudWatchDestinationException.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName"))
    InvalidCloudWatchDestinationException.add_member(:event_destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationName, location_name: "EventDestinationName"))
    InvalidCloudWatchDestinationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InvalidCloudWatchDestinationException.type = Types::InvalidCloudWatchDestinationException
    InvalidConfigurationSetException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InvalidConfigurationSetException.type = Types::InvalidConfigurationSetException
    InvalidDeliveryOptionsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InvalidDeliveryOptionsException.type = Types::InvalidDeliveryOptionsException
    InvalidFirehoseDestinationException.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName"))
    InvalidFirehoseDestinationException.add_member(:event_destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationName, location_name: "EventDestinationName"))
    InvalidFirehoseDestinationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InvalidFirehoseDestinationException.type = Types::InvalidFirehoseDestinationException
    InvalidLambdaFunctionException.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "FunctionArn"))
    InvalidLambdaFunctionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InvalidLambdaFunctionException.type = Types::InvalidLambdaFunctionException
    InvalidPolicyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InvalidPolicyException.type = Types::InvalidPolicyException
    InvalidRenderingParameterException.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, location_name: "TemplateName"))
    InvalidRenderingParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InvalidRenderingParameterException.type = Types::InvalidRenderingParameterException
    InvalidS3ConfigurationException.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, location_name: "Bucket"))
    InvalidS3ConfigurationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InvalidS3ConfigurationException.type = Types::InvalidS3ConfigurationException
    InvalidSNSDestinationException.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName"))
    InvalidSNSDestinationException.add_member(:event_destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationName, location_name: "EventDestinationName"))
    InvalidSNSDestinationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InvalidSNSDestinationException.type = Types::InvalidSNSDestinationException
    InvalidSnsTopicException.add_member(:topic, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "Topic"))
    InvalidSnsTopicException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InvalidSnsTopicException.type = Types::InvalidSnsTopicException
    InvalidTemplateException.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, location_name: "TemplateName"))
    InvalidTemplateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InvalidTemplateException.type = Types::InvalidTemplateException
    InvalidTrackingOptionsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InvalidTrackingOptionsException.type = Types::InvalidTrackingOptionsException
    InvocationType.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Event", traits: {"smithy.api#enumValue" => "Event"}))
    InvocationType.add_member(:request_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RequestResponse", traits: {"smithy.api#enumValue" => "RequestResponse"}))
    KinesisFirehoseDestination.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "IAMRoleARN", traits: {"smithy.api#required" => {}}))
    KinesisFirehoseDestination.add_member(:delivery_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "DeliveryStreamARN", traits: {"smithy.api#required" => {}}))
    KinesisFirehoseDestination.type = Types::KinesisFirehoseDestination
    LambdaAction.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "TopicArn"))
    LambdaAction.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "FunctionArn", traits: {"smithy.api#required" => {}}))
    LambdaAction.add_member(:invocation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationType, location_name: "InvocationType"))
    LambdaAction.type = Types::LambdaAction
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListConfigurationSetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListConfigurationSetsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, location_name: "MaxItems"))
    ListConfigurationSetsRequest.type = Types::ListConfigurationSetsRequest
    ListConfigurationSetsResponse.add_member(:configuration_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSets, location_name: "ConfigurationSets"))
    ListConfigurationSetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListConfigurationSetsResponse.type = Types::ListConfigurationSetsResponse
    ListCustomVerificationEmailTemplatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListCustomVerificationEmailTemplatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults"))
    ListCustomVerificationEmailTemplatesRequest.type = Types::ListCustomVerificationEmailTemplatesRequest
    ListCustomVerificationEmailTemplatesResponse.add_member(:custom_verification_email_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomVerificationEmailTemplates, location_name: "CustomVerificationEmailTemplates"))
    ListCustomVerificationEmailTemplatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListCustomVerificationEmailTemplatesResponse.type = Types::ListCustomVerificationEmailTemplatesResponse
    ListIdentitiesRequest.add_member(:identity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityType, location_name: "IdentityType"))
    ListIdentitiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListIdentitiesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, location_name: "MaxItems"))
    ListIdentitiesRequest.type = Types::ListIdentitiesRequest
    ListIdentitiesResponse.add_member(:identities, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityList, location_name: "Identities", traits: {"smithy.api#required" => {}}))
    ListIdentitiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListIdentitiesResponse.type = Types::ListIdentitiesResponse
    ListIdentityPoliciesRequest.add_member(:identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "Identity", traits: {"smithy.api#required" => {}}))
    ListIdentityPoliciesRequest.type = Types::ListIdentityPoliciesRequest
    ListIdentityPoliciesResponse.add_member(:policy_names, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNameList, location_name: "PolicyNames", traits: {"smithy.api#required" => {}}))
    ListIdentityPoliciesResponse.type = Types::ListIdentityPoliciesResponse
    ListReceiptFiltersRequest.type = Types::ListReceiptFiltersRequest
    ListReceiptFiltersResponse.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptFilterList, location_name: "Filters"))
    ListReceiptFiltersResponse.type = Types::ListReceiptFiltersResponse
    ListReceiptRuleSetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListReceiptRuleSetsRequest.type = Types::ListReceiptRuleSetsRequest
    ListReceiptRuleSetsResponse.add_member(:rule_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRuleSetsLists, location_name: "RuleSets"))
    ListReceiptRuleSetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListReceiptRuleSetsResponse.type = Types::ListReceiptRuleSetsResponse
    ListTemplatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListTemplatesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, location_name: "MaxItems"))
    ListTemplatesRequest.type = Types::ListTemplatesRequest
    ListTemplatesResponse.add_member(:templates_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateMetadataList, location_name: "TemplatesMetadata"))
    ListTemplatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListTemplatesResponse.type = Types::ListTemplatesResponse
    ListVerifiedEmailAddressesResponse.add_member(:verified_email_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressList, location_name: "VerifiedEmailAddresses"))
    ListVerifiedEmailAddressesResponse.type = Types::ListVerifiedEmailAddressesResponse
    MailFromDomainAttributes.key = ::Smithy::Schema::Shapes::MemberShape.new(target: Identity)
    MailFromDomainAttributes.value = ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityMailFromDomainAttributes)
    MailFromDomainNotVerifiedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    MailFromDomainNotVerifiedException.type = Types::MailFromDomainNotVerifiedException
    Message.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: Content, location_name: "Subject", traits: {"smithy.api#required" => {}}))
    Message.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: Body, location_name: "Body", traits: {"smithy.api#required" => {}}))
    Message.type = Types::Message
    MessageDsn.add_member(:reporting_mta, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportingMta, location_name: "ReportingMta", traits: {"smithy.api#required" => {}}))
    MessageDsn.add_member(:arrival_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ArrivalDate, location_name: "ArrivalDate"))
    MessageDsn.add_member(:extension_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtensionFieldList, location_name: "ExtensionFields"))
    MessageDsn.type = Types::MessageDsn
    MessageRejected.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    MessageRejected.type = Types::MessageRejected
    MessageTag.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTagName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    MessageTag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTagValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    MessageTag.type = Types::MessageTag
    MessageTagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTag)
    MissingRenderingAttributeException.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, location_name: "TemplateName"))
    MissingRenderingAttributeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    MissingRenderingAttributeException.type = Types::MissingRenderingAttributeException
    NotificationAttributes.key = ::Smithy::Schema::Shapes::MemberShape.new(target: Identity)
    NotificationAttributes.value = ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityNotificationAttributes)
    NotificationType.add_member(:bounce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Bounce", traits: {"smithy.api#enumValue" => "Bounce"}))
    NotificationType.add_member(:complaint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Complaint", traits: {"smithy.api#enumValue" => "Complaint"}))
    NotificationType.add_member(:delivery, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Delivery", traits: {"smithy.api#enumValue" => "Delivery"}))
    PolicyMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName)
    PolicyMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: Policy)
    PolicyNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName)
    ProductionAccessNotGrantedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ProductionAccessNotGrantedException.type = Types::ProductionAccessNotGrantedException
    PutConfigurationSetDeliveryOptionsRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    PutConfigurationSetDeliveryOptionsRequest.add_member(:delivery_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryOptions, location_name: "DeliveryOptions"))
    PutConfigurationSetDeliveryOptionsRequest.type = Types::PutConfigurationSetDeliveryOptionsRequest
    PutConfigurationSetDeliveryOptionsResponse.type = Types::PutConfigurationSetDeliveryOptionsResponse
    PutIdentityPolicyRequest.add_member(:identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "Identity", traits: {"smithy.api#required" => {}}))
    PutIdentityPolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, location_name: "PolicyName", traits: {"smithy.api#required" => {}}))
    PutIdentityPolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, location_name: "Policy", traits: {"smithy.api#required" => {}}))
    PutIdentityPolicyRequest.type = Types::PutIdentityPolicyRequest
    PutIdentityPolicyResponse.type = Types::PutIdentityPolicyResponse
    RawMessage.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: RawMessageData, location_name: "Data", traits: {"smithy.api#required" => {}}))
    RawMessage.type = Types::RawMessage
    ReceiptAction.add_member(:s3_action, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Action, location_name: "S3Action"))
    ReceiptAction.add_member(:bounce_action, ::Smithy::Schema::Shapes::MemberShape.new(target: BounceAction, location_name: "BounceAction"))
    ReceiptAction.add_member(:workmail_action, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkmailAction, location_name: "WorkmailAction"))
    ReceiptAction.add_member(:lambda_action, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaAction, location_name: "LambdaAction"))
    ReceiptAction.add_member(:stop_action, ::Smithy::Schema::Shapes::MemberShape.new(target: StopAction, location_name: "StopAction"))
    ReceiptAction.add_member(:add_header_action, ::Smithy::Schema::Shapes::MemberShape.new(target: AddHeaderAction, location_name: "AddHeaderAction"))
    ReceiptAction.add_member(:sns_action, ::Smithy::Schema::Shapes::MemberShape.new(target: SNSAction, location_name: "SNSAction"))
    ReceiptAction.add_member(:connect_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectAction, location_name: "ConnectAction"))
    ReceiptAction.type = Types::ReceiptAction
    ReceiptActionsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptAction)
    ReceiptFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptFilterName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    ReceiptFilter.add_member(:ip_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptIpFilter, location_name: "IpFilter", traits: {"smithy.api#required" => {}}))
    ReceiptFilter.type = Types::ReceiptFilter
    ReceiptFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptFilter)
    ReceiptFilterPolicy.add_member(:block, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Block", traits: {"smithy.api#enumValue" => "Block"}))
    ReceiptFilterPolicy.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Allow", traits: {"smithy.api#enumValue" => "Allow"}))
    ReceiptIpFilter.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptFilterPolicy, location_name: "Policy", traits: {"smithy.api#required" => {}}))
    ReceiptIpFilter.add_member(:cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: Cidr, location_name: "Cidr", traits: {"smithy.api#required" => {}}))
    ReceiptIpFilter.type = Types::ReceiptIpFilter
    ReceiptRule.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRuleName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    ReceiptRule.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "Enabled", traits: {"smithy.api#default" => false}))
    ReceiptRule.add_member(:tls_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsPolicy, location_name: "TlsPolicy"))
    ReceiptRule.add_member(:recipients, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipientsList, location_name: "Recipients"))
    ReceiptRule.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptActionsList, location_name: "Actions"))
    ReceiptRule.add_member(:scan_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "ScanEnabled", traits: {"smithy.api#default" => false}))
    ReceiptRule.type = Types::ReceiptRule
    ReceiptRuleNamesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRuleName)
    ReceiptRuleSetMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRuleSetName, location_name: "Name"))
    ReceiptRuleSetMetadata.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedTimestamp"))
    ReceiptRuleSetMetadata.type = Types::ReceiptRuleSetMetadata
    ReceiptRuleSetsLists.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRuleSetMetadata)
    ReceiptRulesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRule)
    RecipientDsnFields.add_member(:final_recipient, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, location_name: "FinalRecipient"))
    RecipientDsnFields.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: DsnAction, location_name: "Action", traits: {"smithy.api#required" => {}}))
    RecipientDsnFields.add_member(:remote_mta, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteMta, location_name: "RemoteMta"))
    RecipientDsnFields.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DsnStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    RecipientDsnFields.add_member(:diagnostic_code, ::Smithy::Schema::Shapes::MemberShape.new(target: DiagnosticCode, location_name: "DiagnosticCode"))
    RecipientDsnFields.add_member(:last_attempt_date, ::Smithy::Schema::Shapes::MemberShape.new(target: LastAttemptDate, location_name: "LastAttemptDate"))
    RecipientDsnFields.add_member(:extension_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtensionFieldList, location_name: "ExtensionFields"))
    RecipientDsnFields.type = Types::RecipientDsnFields
    RecipientsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Recipient)
    ReorderReceiptRuleSetRequest.add_member(:rule_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRuleSetName, location_name: "RuleSetName", traits: {"smithy.api#required" => {}}))
    ReorderReceiptRuleSetRequest.add_member(:rule_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRuleNamesList, location_name: "RuleNames", traits: {"smithy.api#required" => {}}))
    ReorderReceiptRuleSetRequest.type = Types::ReorderReceiptRuleSetRequest
    ReorderReceiptRuleSetResponse.type = Types::ReorderReceiptRuleSetResponse
    ReputationOptions.add_member(:sending_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "SendingEnabled", traits: {"smithy.api#default" => false}))
    ReputationOptions.add_member(:reputation_metrics_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "ReputationMetricsEnabled", traits: {"smithy.api#default" => false}))
    ReputationOptions.add_member(:last_fresh_start, ::Smithy::Schema::Shapes::MemberShape.new(target: LastFreshStart, location_name: "LastFreshStart"))
    ReputationOptions.type = Types::ReputationOptions
    RuleDoesNotExistException.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleOrRuleSetName, location_name: "Name"))
    RuleDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    RuleDoesNotExistException.type = Types::RuleDoesNotExistException
    RuleSetDoesNotExistException.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleOrRuleSetName, location_name: "Name"))
    RuleSetDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    RuleSetDoesNotExistException.type = Types::RuleSetDoesNotExistException
    S3Action.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "TopicArn"))
    S3Action.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, location_name: "BucketName", traits: {"smithy.api#required" => {}}))
    S3Action.add_member(:object_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyPrefix, location_name: "ObjectKeyPrefix"))
    S3Action.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "KmsKeyArn"))
    S3Action.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleARN, location_name: "IamRoleArn"))
    S3Action.type = Types::S3Action
    SNSAction.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "TopicArn", traits: {"smithy.api#required" => {}}))
    SNSAction.add_member(:encoding, ::Smithy::Schema::Shapes::MemberShape.new(target: SNSActionEncoding, location_name: "Encoding"))
    SNSAction.type = Types::SNSAction
    SNSActionEncoding.add_member(:utf8, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UTF8", traits: {"smithy.api#enumValue" => "UTF-8"}))
    SNSActionEncoding.add_member(:base64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Base64", traits: {"smithy.api#enumValue" => "Base64"}))
    SNSDestination.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "TopicARN", traits: {"smithy.api#required" => {}}))
    SNSDestination.type = Types::SNSDestination
    SendBounceRequest.add_member(:original_message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "OriginalMessageId", traits: {"smithy.api#required" => {}}))
    SendBounceRequest.add_member(:bounce_sender, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, location_name: "BounceSender", traits: {"smithy.api#required" => {}}))
    SendBounceRequest.add_member(:explanation, ::Smithy::Schema::Shapes::MemberShape.new(target: Explanation, location_name: "Explanation"))
    SendBounceRequest.add_member(:message_dsn, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageDsn, location_name: "MessageDsn"))
    SendBounceRequest.add_member(:bounced_recipient_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: BouncedRecipientInfoList, location_name: "BouncedRecipientInfoList", traits: {"smithy.api#required" => {}}))
    SendBounceRequest.add_member(:bounce_sender_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "BounceSenderArn"))
    SendBounceRequest.type = Types::SendBounceRequest
    SendBounceResponse.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "MessageId"))
    SendBounceResponse.type = Types::SendBounceResponse
    SendBulkTemplatedEmailRequest.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, location_name: "Source", traits: {"smithy.api#required" => {}}))
    SendBulkTemplatedEmailRequest.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "SourceArn"))
    SendBulkTemplatedEmailRequest.add_member(:reply_to_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressList, location_name: "ReplyToAddresses"))
    SendBulkTemplatedEmailRequest.add_member(:return_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, location_name: "ReturnPath"))
    SendBulkTemplatedEmailRequest.add_member(:return_path_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "ReturnPathArn"))
    SendBulkTemplatedEmailRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName"))
    SendBulkTemplatedEmailRequest.add_member(:default_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTagList, location_name: "DefaultTags"))
    SendBulkTemplatedEmailRequest.add_member(:template, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, location_name: "Template", traits: {"smithy.api#required" => {}}))
    SendBulkTemplatedEmailRequest.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "TemplateArn"))
    SendBulkTemplatedEmailRequest.add_member(:default_template_data, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateData, location_name: "DefaultTemplateData", traits: {"smithy.api#required" => {}}))
    SendBulkTemplatedEmailRequest.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: BulkEmailDestinationList, location_name: "Destinations", traits: {"smithy.api#required" => {}}))
    SendBulkTemplatedEmailRequest.type = Types::SendBulkTemplatedEmailRequest
    SendBulkTemplatedEmailResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BulkEmailDestinationStatusList, location_name: "Status", traits: {"smithy.api#required" => {}}))
    SendBulkTemplatedEmailResponse.type = Types::SendBulkTemplatedEmailResponse
    SendCustomVerificationEmailRequest.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, location_name: "EmailAddress", traits: {"smithy.api#required" => {}}))
    SendCustomVerificationEmailRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, location_name: "TemplateName", traits: {"smithy.api#required" => {}}))
    SendCustomVerificationEmailRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName"))
    SendCustomVerificationEmailRequest.type = Types::SendCustomVerificationEmailRequest
    SendCustomVerificationEmailResponse.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "MessageId"))
    SendCustomVerificationEmailResponse.type = Types::SendCustomVerificationEmailResponse
    SendDataPoint.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "Timestamp"))
    SendDataPoint.add_member(:delivery_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: Counter, location_name: "DeliveryAttempts", traits: {"smithy.api#default" => 0}))
    SendDataPoint.add_member(:bounces, ::Smithy::Schema::Shapes::MemberShape.new(target: Counter, location_name: "Bounces", traits: {"smithy.api#default" => 0}))
    SendDataPoint.add_member(:complaints, ::Smithy::Schema::Shapes::MemberShape.new(target: Counter, location_name: "Complaints", traits: {"smithy.api#default" => 0}))
    SendDataPoint.add_member(:rejects, ::Smithy::Schema::Shapes::MemberShape.new(target: Counter, location_name: "Rejects", traits: {"smithy.api#default" => 0}))
    SendDataPoint.type = Types::SendDataPoint
    SendDataPointList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SendDataPoint)
    SendEmailRequest.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, location_name: "Source", traits: {"smithy.api#required" => {}}))
    SendEmailRequest.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: Destination, location_name: "Destination", traits: {"smithy.api#required" => {}}))
    SendEmailRequest.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "Message", traits: {"smithy.api#required" => {}}))
    SendEmailRequest.add_member(:reply_to_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressList, location_name: "ReplyToAddresses"))
    SendEmailRequest.add_member(:return_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, location_name: "ReturnPath"))
    SendEmailRequest.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "SourceArn"))
    SendEmailRequest.add_member(:return_path_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "ReturnPathArn"))
    SendEmailRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTagList, location_name: "Tags"))
    SendEmailRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName"))
    SendEmailRequest.type = Types::SendEmailRequest
    SendEmailResponse.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "MessageId", traits: {"smithy.api#required" => {}}))
    SendEmailResponse.type = Types::SendEmailResponse
    SendRawEmailRequest.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, location_name: "Source"))
    SendRawEmailRequest.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressList, location_name: "Destinations"))
    SendRawEmailRequest.add_member(:raw_message, ::Smithy::Schema::Shapes::MemberShape.new(target: RawMessage, location_name: "RawMessage", traits: {"smithy.api#required" => {}}))
    SendRawEmailRequest.add_member(:from_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "FromArn"))
    SendRawEmailRequest.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "SourceArn"))
    SendRawEmailRequest.add_member(:return_path_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "ReturnPathArn"))
    SendRawEmailRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTagList, location_name: "Tags"))
    SendRawEmailRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName"))
    SendRawEmailRequest.type = Types::SendRawEmailRequest
    SendRawEmailResponse.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "MessageId", traits: {"smithy.api#required" => {}}))
    SendRawEmailResponse.type = Types::SendRawEmailResponse
    SendTemplatedEmailRequest.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, location_name: "Source", traits: {"smithy.api#required" => {}}))
    SendTemplatedEmailRequest.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: Destination, location_name: "Destination", traits: {"smithy.api#required" => {}}))
    SendTemplatedEmailRequest.add_member(:reply_to_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressList, location_name: "ReplyToAddresses"))
    SendTemplatedEmailRequest.add_member(:return_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, location_name: "ReturnPath"))
    SendTemplatedEmailRequest.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "SourceArn"))
    SendTemplatedEmailRequest.add_member(:return_path_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "ReturnPathArn"))
    SendTemplatedEmailRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTagList, location_name: "Tags"))
    SendTemplatedEmailRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName"))
    SendTemplatedEmailRequest.add_member(:template, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, location_name: "Template", traits: {"smithy.api#required" => {}}))
    SendTemplatedEmailRequest.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "TemplateArn"))
    SendTemplatedEmailRequest.add_member(:template_data, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateData, location_name: "TemplateData", traits: {"smithy.api#required" => {}}))
    SendTemplatedEmailRequest.type = Types::SendTemplatedEmailRequest
    SendTemplatedEmailResponse.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "MessageId", traits: {"smithy.api#required" => {}}))
    SendTemplatedEmailResponse.type = Types::SendTemplatedEmailResponse
    SetActiveReceiptRuleSetRequest.add_member(:rule_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRuleSetName, location_name: "RuleSetName"))
    SetActiveReceiptRuleSetRequest.type = Types::SetActiveReceiptRuleSetRequest
    SetActiveReceiptRuleSetResponse.type = Types::SetActiveReceiptRuleSetResponse
    SetIdentityDkimEnabledRequest.add_member(:identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "Identity", traits: {"smithy.api#required" => {}}))
    SetIdentityDkimEnabledRequest.add_member(:dkim_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "DkimEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    SetIdentityDkimEnabledRequest.type = Types::SetIdentityDkimEnabledRequest
    SetIdentityDkimEnabledResponse.type = Types::SetIdentityDkimEnabledResponse
    SetIdentityFeedbackForwardingEnabledRequest.add_member(:identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "Identity", traits: {"smithy.api#required" => {}}))
    SetIdentityFeedbackForwardingEnabledRequest.add_member(:forwarding_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "ForwardingEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    SetIdentityFeedbackForwardingEnabledRequest.type = Types::SetIdentityFeedbackForwardingEnabledRequest
    SetIdentityFeedbackForwardingEnabledResponse.type = Types::SetIdentityFeedbackForwardingEnabledResponse
    SetIdentityHeadersInNotificationsEnabledRequest.add_member(:identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "Identity", traits: {"smithy.api#required" => {}}))
    SetIdentityHeadersInNotificationsEnabledRequest.add_member(:notification_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationType, location_name: "NotificationType", traits: {"smithy.api#required" => {}}))
    SetIdentityHeadersInNotificationsEnabledRequest.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "Enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    SetIdentityHeadersInNotificationsEnabledRequest.type = Types::SetIdentityHeadersInNotificationsEnabledRequest
    SetIdentityHeadersInNotificationsEnabledResponse.type = Types::SetIdentityHeadersInNotificationsEnabledResponse
    SetIdentityMailFromDomainRequest.add_member(:identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "Identity", traits: {"smithy.api#required" => {}}))
    SetIdentityMailFromDomainRequest.add_member(:mail_from_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: MailFromDomainName, location_name: "MailFromDomain"))
    SetIdentityMailFromDomainRequest.add_member(:behavior_on_mx_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: BehaviorOnMXFailure, location_name: "BehaviorOnMXFailure"))
    SetIdentityMailFromDomainRequest.type = Types::SetIdentityMailFromDomainRequest
    SetIdentityMailFromDomainResponse.type = Types::SetIdentityMailFromDomainResponse
    SetIdentityNotificationTopicRequest.add_member(:identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "Identity", traits: {"smithy.api#required" => {}}))
    SetIdentityNotificationTopicRequest.add_member(:notification_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationType, location_name: "NotificationType", traits: {"smithy.api#required" => {}}))
    SetIdentityNotificationTopicRequest.add_member(:sns_topic, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationTopic, location_name: "SnsTopic"))
    SetIdentityNotificationTopicRequest.type = Types::SetIdentityNotificationTopicRequest
    SetIdentityNotificationTopicResponse.type = Types::SetIdentityNotificationTopicResponse
    SetReceiptRulePositionRequest.add_member(:rule_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRuleSetName, location_name: "RuleSetName", traits: {"smithy.api#required" => {}}))
    SetReceiptRulePositionRequest.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRuleName, location_name: "RuleName", traits: {"smithy.api#required" => {}}))
    SetReceiptRulePositionRequest.add_member(:after, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRuleName, location_name: "After"))
    SetReceiptRulePositionRequest.type = Types::SetReceiptRulePositionRequest
    SetReceiptRulePositionResponse.type = Types::SetReceiptRulePositionResponse
    StopAction.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: StopScope, location_name: "Scope", traits: {"smithy.api#required" => {}}))
    StopAction.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "TopicArn"))
    StopAction.type = Types::StopAction
    StopScope.add_member(:rule_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RULE_SET", traits: {"smithy.api#enumValue" => "RuleSet"}))
    Template.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, location_name: "TemplateName", traits: {"smithy.api#required" => {}}))
    Template.add_member(:subject_part, ::Smithy::Schema::Shapes::MemberShape.new(target: SubjectPart, location_name: "SubjectPart"))
    Template.add_member(:text_part, ::Smithy::Schema::Shapes::MemberShape.new(target: TextPart, location_name: "TextPart"))
    Template.add_member(:html_part, ::Smithy::Schema::Shapes::MemberShape.new(target: HtmlPart, location_name: "HtmlPart"))
    Template.type = Types::Template
    TemplateDoesNotExistException.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, location_name: "TemplateName"))
    TemplateDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    TemplateDoesNotExistException.type = Types::TemplateDoesNotExistException
    TemplateMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, location_name: "Name"))
    TemplateMetadata.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedTimestamp"))
    TemplateMetadata.type = Types::TemplateMetadata
    TemplateMetadataList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateMetadata)
    TestRenderTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, location_name: "TemplateName", traits: {"smithy.api#required" => {}}))
    TestRenderTemplateRequest.add_member(:template_data, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateData, location_name: "TemplateData", traits: {"smithy.api#required" => {}}))
    TestRenderTemplateRequest.type = Types::TestRenderTemplateRequest
    TestRenderTemplateResponse.add_member(:rendered_template, ::Smithy::Schema::Shapes::MemberShape.new(target: RenderedTemplate, location_name: "RenderedTemplate"))
    TestRenderTemplateResponse.type = Types::TestRenderTemplateResponse
    TlsPolicy.add_member(:require, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Require", traits: {"smithy.api#enumValue" => "Require"}))
    TlsPolicy.add_member(:optional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Optional", traits: {"smithy.api#enumValue" => "Optional"}))
    TrackingOptions.add_member(:custom_redirect_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomRedirectDomain, location_name: "CustomRedirectDomain"))
    TrackingOptions.type = Types::TrackingOptions
    TrackingOptionsAlreadyExistsException.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName"))
    TrackingOptionsAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    TrackingOptionsAlreadyExistsException.type = Types::TrackingOptionsAlreadyExistsException
    TrackingOptionsDoesNotExistException.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName"))
    TrackingOptionsDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    TrackingOptionsDoesNotExistException.type = Types::TrackingOptionsDoesNotExistException
    UpdateAccountSendingEnabledRequest.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "Enabled", traits: {"smithy.api#default" => false}))
    UpdateAccountSendingEnabledRequest.type = Types::UpdateAccountSendingEnabledRequest
    UpdateConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    UpdateConfigurationSetEventDestinationRequest.add_member(:event_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestination, location_name: "EventDestination", traits: {"smithy.api#required" => {}}))
    UpdateConfigurationSetEventDestinationRequest.type = Types::UpdateConfigurationSetEventDestinationRequest
    UpdateConfigurationSetEventDestinationResponse.type = Types::UpdateConfigurationSetEventDestinationResponse
    UpdateConfigurationSetReputationMetricsEnabledRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    UpdateConfigurationSetReputationMetricsEnabledRequest.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "Enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    UpdateConfigurationSetReputationMetricsEnabledRequest.type = Types::UpdateConfigurationSetReputationMetricsEnabledRequest
    UpdateConfigurationSetSendingEnabledRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    UpdateConfigurationSetSendingEnabledRequest.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "Enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    UpdateConfigurationSetSendingEnabledRequest.type = Types::UpdateConfigurationSetSendingEnabledRequest
    UpdateConfigurationSetTrackingOptionsRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    UpdateConfigurationSetTrackingOptionsRequest.add_member(:tracking_options, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackingOptions, location_name: "TrackingOptions", traits: {"smithy.api#required" => {}}))
    UpdateConfigurationSetTrackingOptionsRequest.type = Types::UpdateConfigurationSetTrackingOptionsRequest
    UpdateConfigurationSetTrackingOptionsResponse.type = Types::UpdateConfigurationSetTrackingOptionsResponse
    UpdateCustomVerificationEmailTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, location_name: "TemplateName", traits: {"smithy.api#required" => {}}))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:from_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: FromAddress, location_name: "FromEmailAddress"))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:template_subject, ::Smithy::Schema::Shapes::MemberShape.new(target: Subject, location_name: "TemplateSubject"))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:template_content, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateContent, location_name: "TemplateContent"))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:success_redirection_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessRedirectionURL, location_name: "SuccessRedirectionURL"))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:failure_redirection_url, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureRedirectionURL, location_name: "FailureRedirectionURL"))
    UpdateCustomVerificationEmailTemplateRequest.type = Types::UpdateCustomVerificationEmailTemplateRequest
    UpdateReceiptRuleRequest.add_member(:rule_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRuleSetName, location_name: "RuleSetName", traits: {"smithy.api#required" => {}}))
    UpdateReceiptRuleRequest.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiptRule, location_name: "Rule", traits: {"smithy.api#required" => {}}))
    UpdateReceiptRuleRequest.type = Types::UpdateReceiptRuleRequest
    UpdateReceiptRuleResponse.type = Types::UpdateReceiptRuleResponse
    UpdateTemplateRequest.add_member(:template, ::Smithy::Schema::Shapes::MemberShape.new(target: Template, location_name: "Template", traits: {"smithy.api#required" => {}}))
    UpdateTemplateRequest.type = Types::UpdateTemplateRequest
    UpdateTemplateResponse.type = Types::UpdateTemplateResponse
    VerificationAttributes.key = ::Smithy::Schema::Shapes::MemberShape.new(target: Identity)
    VerificationAttributes.value = ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityVerificationAttributes)
    VerificationStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Pending", traits: {"smithy.api#enumValue" => "Pending"}))
    VerificationStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Success", traits: {"smithy.api#enumValue" => "Success"}))
    VerificationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    VerificationStatus.add_member(:temporary_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TemporaryFailure", traits: {"smithy.api#enumValue" => "TemporaryFailure"}))
    VerificationStatus.add_member(:not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NotStarted", traits: {"smithy.api#enumValue" => "NotStarted"}))
    VerificationTokenList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationToken)
    VerifyDomainDkimRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, location_name: "Domain", traits: {"smithy.api#required" => {}}))
    VerifyDomainDkimRequest.type = Types::VerifyDomainDkimRequest
    VerifyDomainDkimResponse.add_member(:dkim_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationTokenList, location_name: "DkimTokens", traits: {"smithy.api#required" => {}}))
    VerifyDomainDkimResponse.type = Types::VerifyDomainDkimResponse
    VerifyDomainIdentityRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, location_name: "Domain", traits: {"smithy.api#required" => {}}))
    VerifyDomainIdentityRequest.type = Types::VerifyDomainIdentityRequest
    VerifyDomainIdentityResponse.add_member(:verification_token, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationToken, location_name: "VerificationToken", traits: {"smithy.api#required" => {}}))
    VerifyDomainIdentityResponse.type = Types::VerifyDomainIdentityResponse
    VerifyEmailAddressRequest.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, location_name: "EmailAddress", traits: {"smithy.api#required" => {}}))
    VerifyEmailAddressRequest.type = Types::VerifyEmailAddressRequest
    VerifyEmailIdentityRequest.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, location_name: "EmailAddress", traits: {"smithy.api#required" => {}}))
    VerifyEmailIdentityRequest.type = Types::VerifyEmailIdentityRequest
    VerifyEmailIdentityResponse.type = Types::VerifyEmailIdentityResponse
    WorkmailAction.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "TopicArn"))
    WorkmailAction.add_member(:organization_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "OrganizationArn", traits: {"smithy.api#required" => {}}))
    WorkmailAction.type = Types::WorkmailAction

    SimpleEmailService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ses#SimpleEmailService"
      service.name = "SimpleEmailService"
      service.version = "2010-12-01"
      service.traits = {"aws.api#service" => {"sdkId" => "SES", "arnNamespace" => "ses", "cloudFormationName" => "SES", "cloudTrailEventSource" => "ses.amazonaws.com", "docId" => "email-2010-12-01", "endpointPrefix" => "email"}, "aws.auth#sigv4" => {"name" => "ses"}, "aws.protocols#awsQuery" => {}, "smithy.api#title" => "Amazon Simple Email Service", "smithy.api#xmlNamespace" => {"uri" => "http://ses.amazonaws.com/doc/2010-12-01/"}}
      service.add_operation(:clone_receipt_rule_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#CloneReceiptRuleSet"
        operation.name = "CloneReceiptRuleSet"
        operation.input = CloneReceiptRuleSetRequest
        operation.output = CloneReceiptRuleSetResponse
        operation.errors << AlreadyExistsException
        operation.errors << LimitExceededException
        operation.errors << RuleSetDoesNotExistException
        operation.traits = {}
      end)
      service.add_operation(:create_configuration_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#CreateConfigurationSet"
        operation.name = "CreateConfigurationSet"
        operation.input = CreateConfigurationSetRequest
        operation.output = CreateConfigurationSetResponse
        operation.errors << ConfigurationSetAlreadyExistsException
        operation.errors << InvalidConfigurationSetException
        operation.errors << LimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:create_configuration_set_event_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#CreateConfigurationSetEventDestination"
        operation.name = "CreateConfigurationSetEventDestination"
        operation.input = CreateConfigurationSetEventDestinationRequest
        operation.output = CreateConfigurationSetEventDestinationResponse
        operation.errors << ConfigurationSetDoesNotExistException
        operation.errors << EventDestinationAlreadyExistsException
        operation.errors << InvalidCloudWatchDestinationException
        operation.errors << InvalidFirehoseDestinationException
        operation.errors << InvalidSNSDestinationException
        operation.errors << LimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:create_configuration_set_tracking_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#CreateConfigurationSetTrackingOptions"
        operation.name = "CreateConfigurationSetTrackingOptions"
        operation.input = CreateConfigurationSetTrackingOptionsRequest
        operation.output = CreateConfigurationSetTrackingOptionsResponse
        operation.errors << ConfigurationSetDoesNotExistException
        operation.errors << InvalidTrackingOptionsException
        operation.errors << TrackingOptionsAlreadyExistsException
        operation.traits = {}
      end)
      service.add_operation(:create_custom_verification_email_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#CreateCustomVerificationEmailTemplate"
        operation.name = "CreateCustomVerificationEmailTemplate"
        operation.input = CreateCustomVerificationEmailTemplateRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << CustomVerificationEmailInvalidContentException
        operation.errors << CustomVerificationEmailTemplateAlreadyExistsException
        operation.errors << FromEmailAddressNotVerifiedException
        operation.errors << LimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:create_receipt_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#CreateReceiptFilter"
        operation.name = "CreateReceiptFilter"
        operation.input = CreateReceiptFilterRequest
        operation.output = CreateReceiptFilterResponse
        operation.errors << AlreadyExistsException
        operation.errors << LimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:create_receipt_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#CreateReceiptRule"
        operation.name = "CreateReceiptRule"
        operation.input = CreateReceiptRuleRequest
        operation.output = CreateReceiptRuleResponse
        operation.errors << AlreadyExistsException
        operation.errors << InvalidLambdaFunctionException
        operation.errors << InvalidS3ConfigurationException
        operation.errors << InvalidSnsTopicException
        operation.errors << LimitExceededException
        operation.errors << RuleDoesNotExistException
        operation.errors << RuleSetDoesNotExistException
        operation.traits = {}
      end)
      service.add_operation(:create_receipt_rule_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#CreateReceiptRuleSet"
        operation.name = "CreateReceiptRuleSet"
        operation.input = CreateReceiptRuleSetRequest
        operation.output = CreateReceiptRuleSetResponse
        operation.errors << AlreadyExistsException
        operation.errors << LimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:create_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#CreateTemplate"
        operation.name = "CreateTemplate"
        operation.input = CreateTemplateRequest
        operation.output = CreateTemplateResponse
        operation.errors << AlreadyExistsException
        operation.errors << InvalidTemplateException
        operation.errors << LimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:delete_configuration_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DeleteConfigurationSet"
        operation.name = "DeleteConfigurationSet"
        operation.input = DeleteConfigurationSetRequest
        operation.output = DeleteConfigurationSetResponse
        operation.errors << ConfigurationSetDoesNotExistException
        operation.traits = {}
      end)
      service.add_operation(:delete_configuration_set_event_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DeleteConfigurationSetEventDestination"
        operation.name = "DeleteConfigurationSetEventDestination"
        operation.input = DeleteConfigurationSetEventDestinationRequest
        operation.output = DeleteConfigurationSetEventDestinationResponse
        operation.errors << ConfigurationSetDoesNotExistException
        operation.errors << EventDestinationDoesNotExistException
        operation.traits = {}
      end)
      service.add_operation(:delete_configuration_set_tracking_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DeleteConfigurationSetTrackingOptions"
        operation.name = "DeleteConfigurationSetTrackingOptions"
        operation.input = DeleteConfigurationSetTrackingOptionsRequest
        operation.output = DeleteConfigurationSetTrackingOptionsResponse
        operation.errors << ConfigurationSetDoesNotExistException
        operation.errors << TrackingOptionsDoesNotExistException
        operation.traits = {}
      end)
      service.add_operation(:delete_custom_verification_email_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DeleteCustomVerificationEmailTemplate"
        operation.name = "DeleteCustomVerificationEmailTemplate"
        operation.input = DeleteCustomVerificationEmailTemplateRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {}
      end)
      service.add_operation(:delete_identity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DeleteIdentity"
        operation.name = "DeleteIdentity"
        operation.input = DeleteIdentityRequest
        operation.output = DeleteIdentityResponse
        operation.traits = {}
      end)
      service.add_operation(:delete_identity_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DeleteIdentityPolicy"
        operation.name = "DeleteIdentityPolicy"
        operation.input = DeleteIdentityPolicyRequest
        operation.output = DeleteIdentityPolicyResponse
        operation.traits = {}
      end)
      service.add_operation(:delete_receipt_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DeleteReceiptFilter"
        operation.name = "DeleteReceiptFilter"
        operation.input = DeleteReceiptFilterRequest
        operation.output = DeleteReceiptFilterResponse
        operation.traits = {}
      end)
      service.add_operation(:delete_receipt_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DeleteReceiptRule"
        operation.name = "DeleteReceiptRule"
        operation.input = DeleteReceiptRuleRequest
        operation.output = DeleteReceiptRuleResponse
        operation.errors << RuleSetDoesNotExistException
        operation.traits = {}
      end)
      service.add_operation(:delete_receipt_rule_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DeleteReceiptRuleSet"
        operation.name = "DeleteReceiptRuleSet"
        operation.input = DeleteReceiptRuleSetRequest
        operation.output = DeleteReceiptRuleSetResponse
        operation.errors << CannotDeleteException
        operation.traits = {}
      end)
      service.add_operation(:delete_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DeleteTemplate"
        operation.name = "DeleteTemplate"
        operation.input = DeleteTemplateRequest
        operation.output = DeleteTemplateResponse
        operation.traits = {}
      end)
      service.add_operation(:delete_verified_email_address, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DeleteVerifiedEmailAddress"
        operation.name = "DeleteVerifiedEmailAddress"
        operation.input = DeleteVerifiedEmailAddressRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {}
      end)
      service.add_operation(:describe_active_receipt_rule_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DescribeActiveReceiptRuleSet"
        operation.name = "DescribeActiveReceiptRuleSet"
        operation.input = DescribeActiveReceiptRuleSetRequest
        operation.output = DescribeActiveReceiptRuleSetResponse
        operation.traits = {}
      end)
      service.add_operation(:describe_configuration_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DescribeConfigurationSet"
        operation.name = "DescribeConfigurationSet"
        operation.input = DescribeConfigurationSetRequest
        operation.output = DescribeConfigurationSetResponse
        operation.errors << ConfigurationSetDoesNotExistException
        operation.traits = {}
      end)
      service.add_operation(:describe_receipt_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DescribeReceiptRule"
        operation.name = "DescribeReceiptRule"
        operation.input = DescribeReceiptRuleRequest
        operation.output = DescribeReceiptRuleResponse
        operation.errors << RuleDoesNotExistException
        operation.errors << RuleSetDoesNotExistException
        operation.traits = {}
      end)
      service.add_operation(:describe_receipt_rule_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#DescribeReceiptRuleSet"
        operation.name = "DescribeReceiptRuleSet"
        operation.input = DescribeReceiptRuleSetRequest
        operation.output = DescribeReceiptRuleSetResponse
        operation.errors << RuleSetDoesNotExistException
        operation.traits = {}
      end)
      service.add_operation(:get_account_sending_enabled, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#GetAccountSendingEnabled"
        operation.name = "GetAccountSendingEnabled"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetAccountSendingEnabledResponse
        operation.traits = {}
      end)
      service.add_operation(:get_custom_verification_email_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#GetCustomVerificationEmailTemplate"
        operation.name = "GetCustomVerificationEmailTemplate"
        operation.input = GetCustomVerificationEmailTemplateRequest
        operation.output = GetCustomVerificationEmailTemplateResponse
        operation.errors << CustomVerificationEmailTemplateDoesNotExistException
        operation.traits = {}
      end)
      service.add_operation(:get_identity_dkim_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#GetIdentityDkimAttributes"
        operation.name = "GetIdentityDkimAttributes"
        operation.input = GetIdentityDkimAttributesRequest
        operation.output = GetIdentityDkimAttributesResponse
        operation.traits = {}
      end)
      service.add_operation(:get_identity_mail_from_domain_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#GetIdentityMailFromDomainAttributes"
        operation.name = "GetIdentityMailFromDomainAttributes"
        operation.input = GetIdentityMailFromDomainAttributesRequest
        operation.output = GetIdentityMailFromDomainAttributesResponse
        operation.traits = {}
      end)
      service.add_operation(:get_identity_notification_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#GetIdentityNotificationAttributes"
        operation.name = "GetIdentityNotificationAttributes"
        operation.input = GetIdentityNotificationAttributesRequest
        operation.output = GetIdentityNotificationAttributesResponse
        operation.traits = {}
      end)
      service.add_operation(:get_identity_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#GetIdentityPolicies"
        operation.name = "GetIdentityPolicies"
        operation.input = GetIdentityPoliciesRequest
        operation.output = GetIdentityPoliciesResponse
        operation.traits = {}
      end)
      service.add_operation(:get_identity_verification_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#GetIdentityVerificationAttributes"
        operation.name = "GetIdentityVerificationAttributes"
        operation.input = GetIdentityVerificationAttributesRequest
        operation.output = GetIdentityVerificationAttributesResponse
        operation.traits = {}
      end)
      service.add_operation(:get_send_quota, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#GetSendQuota"
        operation.name = "GetSendQuota"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetSendQuotaResponse
        operation.traits = {}
      end)
      service.add_operation(:get_send_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#GetSendStatistics"
        operation.name = "GetSendStatistics"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetSendStatisticsResponse
        operation.traits = {}
      end)
      service.add_operation(:get_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#GetTemplate"
        operation.name = "GetTemplate"
        operation.input = GetTemplateRequest
        operation.output = GetTemplateResponse
        operation.errors << TemplateDoesNotExistException
        operation.traits = {}
      end)
      service.add_operation(:list_configuration_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#ListConfigurationSets"
        operation.name = "ListConfigurationSets"
        operation.input = ListConfigurationSetsRequest
        operation.output = ListConfigurationSetsResponse
        operation.traits = {}
      end)
      service.add_operation(:list_custom_verification_email_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#ListCustomVerificationEmailTemplates"
        operation.name = "ListCustomVerificationEmailTemplates"
        operation.input = ListCustomVerificationEmailTemplatesRequest
        operation.output = ListCustomVerificationEmailTemplatesResponse
        operation.traits = {}
        operation[:paginator] = Paginators::ListCustomVerificationEmailTemplates.new
      end)
      service.add_operation(:list_identities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#ListIdentities"
        operation.name = "ListIdentities"
        operation.input = ListIdentitiesRequest
        operation.output = ListIdentitiesResponse
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListIdentitiesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListIdentities.new
      end)
      service.add_operation(:list_identity_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#ListIdentityPolicies"
        operation.name = "ListIdentityPolicies"
        operation.input = ListIdentityPoliciesRequest
        operation.output = ListIdentityPoliciesResponse
        operation.traits = {}
      end)
      service.add_operation(:list_receipt_filters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#ListReceiptFilters"
        operation.name = "ListReceiptFilters"
        operation.input = ListReceiptFiltersRequest
        operation.output = ListReceiptFiltersResponse
        operation.traits = {}
      end)
      service.add_operation(:list_receipt_rule_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#ListReceiptRuleSets"
        operation.name = "ListReceiptRuleSets"
        operation.input = ListReceiptRuleSetsRequest
        operation.output = ListReceiptRuleSetsResponse
        operation.traits = {}
      end)
      service.add_operation(:list_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#ListTemplates"
        operation.name = "ListTemplates"
        operation.input = ListTemplatesRequest
        operation.output = ListTemplatesResponse
        operation.traits = {}
      end)
      service.add_operation(:list_verified_email_addresses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#ListVerifiedEmailAddresses"
        operation.name = "ListVerifiedEmailAddresses"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = ListVerifiedEmailAddressesResponse
        operation.traits = {}
      end)
      service.add_operation(:put_configuration_set_delivery_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#PutConfigurationSetDeliveryOptions"
        operation.name = "PutConfigurationSetDeliveryOptions"
        operation.input = PutConfigurationSetDeliveryOptionsRequest
        operation.output = PutConfigurationSetDeliveryOptionsResponse
        operation.errors << ConfigurationSetDoesNotExistException
        operation.errors << InvalidDeliveryOptionsException
        operation.traits = {}
      end)
      service.add_operation(:put_identity_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#PutIdentityPolicy"
        operation.name = "PutIdentityPolicy"
        operation.input = PutIdentityPolicyRequest
        operation.output = PutIdentityPolicyResponse
        operation.errors << InvalidPolicyException
        operation.traits = {}
      end)
      service.add_operation(:reorder_receipt_rule_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#ReorderReceiptRuleSet"
        operation.name = "ReorderReceiptRuleSet"
        operation.input = ReorderReceiptRuleSetRequest
        operation.output = ReorderReceiptRuleSetResponse
        operation.errors << RuleDoesNotExistException
        operation.errors << RuleSetDoesNotExistException
        operation.traits = {}
      end)
      service.add_operation(:send_bounce, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#SendBounce"
        operation.name = "SendBounce"
        operation.input = SendBounceRequest
        operation.output = SendBounceResponse
        operation.errors << MessageRejected
        operation.traits = {}
      end)
      service.add_operation(:send_bulk_templated_email, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#SendBulkTemplatedEmail"
        operation.name = "SendBulkTemplatedEmail"
        operation.input = SendBulkTemplatedEmailRequest
        operation.output = SendBulkTemplatedEmailResponse
        operation.errors << AccountSendingPausedException
        operation.errors << ConfigurationSetDoesNotExistException
        operation.errors << ConfigurationSetSendingPausedException
        operation.errors << MailFromDomainNotVerifiedException
        operation.errors << MessageRejected
        operation.errors << TemplateDoesNotExistException
        operation.traits = {}
      end)
      service.add_operation(:send_custom_verification_email, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#SendCustomVerificationEmail"
        operation.name = "SendCustomVerificationEmail"
        operation.input = SendCustomVerificationEmailRequest
        operation.output = SendCustomVerificationEmailResponse
        operation.errors << ConfigurationSetDoesNotExistException
        operation.errors << CustomVerificationEmailTemplateDoesNotExistException
        operation.errors << FromEmailAddressNotVerifiedException
        operation.errors << MessageRejected
        operation.errors << ProductionAccessNotGrantedException
        operation.traits = {}
      end)
      service.add_operation(:send_email, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#SendEmail"
        operation.name = "SendEmail"
        operation.input = SendEmailRequest
        operation.output = SendEmailResponse
        operation.errors << AccountSendingPausedException
        operation.errors << ConfigurationSetDoesNotExistException
        operation.errors << ConfigurationSetSendingPausedException
        operation.errors << MailFromDomainNotVerifiedException
        operation.errors << MessageRejected
        operation.traits = {}
      end)
      service.add_operation(:send_raw_email, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#SendRawEmail"
        operation.name = "SendRawEmail"
        operation.input = SendRawEmailRequest
        operation.output = SendRawEmailResponse
        operation.errors << AccountSendingPausedException
        operation.errors << ConfigurationSetDoesNotExistException
        operation.errors << ConfigurationSetSendingPausedException
        operation.errors << MailFromDomainNotVerifiedException
        operation.errors << MessageRejected
        operation.traits = {}
      end)
      service.add_operation(:send_templated_email, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#SendTemplatedEmail"
        operation.name = "SendTemplatedEmail"
        operation.input = SendTemplatedEmailRequest
        operation.output = SendTemplatedEmailResponse
        operation.errors << AccountSendingPausedException
        operation.errors << ConfigurationSetDoesNotExistException
        operation.errors << ConfigurationSetSendingPausedException
        operation.errors << MailFromDomainNotVerifiedException
        operation.errors << MessageRejected
        operation.errors << TemplateDoesNotExistException
        operation.traits = {}
      end)
      service.add_operation(:set_active_receipt_rule_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#SetActiveReceiptRuleSet"
        operation.name = "SetActiveReceiptRuleSet"
        operation.input = SetActiveReceiptRuleSetRequest
        operation.output = SetActiveReceiptRuleSetResponse
        operation.errors << RuleSetDoesNotExistException
        operation.traits = {}
      end)
      service.add_operation(:set_identity_dkim_enabled, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#SetIdentityDkimEnabled"
        operation.name = "SetIdentityDkimEnabled"
        operation.input = SetIdentityDkimEnabledRequest
        operation.output = SetIdentityDkimEnabledResponse
        operation.traits = {}
      end)
      service.add_operation(:set_identity_feedback_forwarding_enabled, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#SetIdentityFeedbackForwardingEnabled"
        operation.name = "SetIdentityFeedbackForwardingEnabled"
        operation.input = SetIdentityFeedbackForwardingEnabledRequest
        operation.output = SetIdentityFeedbackForwardingEnabledResponse
        operation.traits = {}
      end)
      service.add_operation(:set_identity_headers_in_notifications_enabled, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#SetIdentityHeadersInNotificationsEnabled"
        operation.name = "SetIdentityHeadersInNotificationsEnabled"
        operation.input = SetIdentityHeadersInNotificationsEnabledRequest
        operation.output = SetIdentityHeadersInNotificationsEnabledResponse
        operation.traits = {}
      end)
      service.add_operation(:set_identity_mail_from_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#SetIdentityMailFromDomain"
        operation.name = "SetIdentityMailFromDomain"
        operation.input = SetIdentityMailFromDomainRequest
        operation.output = SetIdentityMailFromDomainResponse
        operation.traits = {}
      end)
      service.add_operation(:set_identity_notification_topic, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#SetIdentityNotificationTopic"
        operation.name = "SetIdentityNotificationTopic"
        operation.input = SetIdentityNotificationTopicRequest
        operation.output = SetIdentityNotificationTopicResponse
        operation.traits = {}
      end)
      service.add_operation(:set_receipt_rule_position, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#SetReceiptRulePosition"
        operation.name = "SetReceiptRulePosition"
        operation.input = SetReceiptRulePositionRequest
        operation.output = SetReceiptRulePositionResponse
        operation.errors << RuleDoesNotExistException
        operation.errors << RuleSetDoesNotExistException
        operation.traits = {}
      end)
      service.add_operation(:test_render_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#TestRenderTemplate"
        operation.name = "TestRenderTemplate"
        operation.input = TestRenderTemplateRequest
        operation.output = TestRenderTemplateResponse
        operation.errors << InvalidRenderingParameterException
        operation.errors << MissingRenderingAttributeException
        operation.errors << TemplateDoesNotExistException
        operation.traits = {}
      end)
      service.add_operation(:update_account_sending_enabled, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#UpdateAccountSendingEnabled"
        operation.name = "UpdateAccountSendingEnabled"
        operation.input = UpdateAccountSendingEnabledRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {}
      end)
      service.add_operation(:update_configuration_set_event_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#UpdateConfigurationSetEventDestination"
        operation.name = "UpdateConfigurationSetEventDestination"
        operation.input = UpdateConfigurationSetEventDestinationRequest
        operation.output = UpdateConfigurationSetEventDestinationResponse
        operation.errors << ConfigurationSetDoesNotExistException
        operation.errors << EventDestinationDoesNotExistException
        operation.errors << InvalidCloudWatchDestinationException
        operation.errors << InvalidFirehoseDestinationException
        operation.errors << InvalidSNSDestinationException
        operation.traits = {}
      end)
      service.add_operation(:update_configuration_set_reputation_metrics_enabled, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#UpdateConfigurationSetReputationMetricsEnabled"
        operation.name = "UpdateConfigurationSetReputationMetricsEnabled"
        operation.input = UpdateConfigurationSetReputationMetricsEnabledRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConfigurationSetDoesNotExistException
        operation.traits = {}
      end)
      service.add_operation(:update_configuration_set_sending_enabled, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#UpdateConfigurationSetSendingEnabled"
        operation.name = "UpdateConfigurationSetSendingEnabled"
        operation.input = UpdateConfigurationSetSendingEnabledRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConfigurationSetDoesNotExistException
        operation.traits = {}
      end)
      service.add_operation(:update_configuration_set_tracking_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#UpdateConfigurationSetTrackingOptions"
        operation.name = "UpdateConfigurationSetTrackingOptions"
        operation.input = UpdateConfigurationSetTrackingOptionsRequest
        operation.output = UpdateConfigurationSetTrackingOptionsResponse
        operation.errors << ConfigurationSetDoesNotExistException
        operation.errors << InvalidTrackingOptionsException
        operation.errors << TrackingOptionsDoesNotExistException
        operation.traits = {}
      end)
      service.add_operation(:update_custom_verification_email_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#UpdateCustomVerificationEmailTemplate"
        operation.name = "UpdateCustomVerificationEmailTemplate"
        operation.input = UpdateCustomVerificationEmailTemplateRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << CustomVerificationEmailInvalidContentException
        operation.errors << CustomVerificationEmailTemplateDoesNotExistException
        operation.errors << FromEmailAddressNotVerifiedException
        operation.traits = {}
      end)
      service.add_operation(:update_receipt_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#UpdateReceiptRule"
        operation.name = "UpdateReceiptRule"
        operation.input = UpdateReceiptRuleRequest
        operation.output = UpdateReceiptRuleResponse
        operation.errors << InvalidLambdaFunctionException
        operation.errors << InvalidS3ConfigurationException
        operation.errors << InvalidSnsTopicException
        operation.errors << LimitExceededException
        operation.errors << RuleDoesNotExistException
        operation.errors << RuleSetDoesNotExistException
        operation.traits = {}
      end)
      service.add_operation(:update_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#UpdateTemplate"
        operation.name = "UpdateTemplate"
        operation.input = UpdateTemplateRequest
        operation.output = UpdateTemplateResponse
        operation.errors << InvalidTemplateException
        operation.errors << TemplateDoesNotExistException
        operation.traits = {}
      end)
      service.add_operation(:verify_domain_dkim, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#VerifyDomainDkim"
        operation.name = "VerifyDomainDkim"
        operation.input = VerifyDomainDkimRequest
        operation.output = VerifyDomainDkimResponse
        operation.traits = {}
      end)
      service.add_operation(:verify_domain_identity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#VerifyDomainIdentity"
        operation.name = "VerifyDomainIdentity"
        operation.input = VerifyDomainIdentityRequest
        operation.output = VerifyDomainIdentityResponse
        operation.traits = {}
      end)
      service.add_operation(:verify_email_address, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#VerifyEmailAddress"
        operation.name = "VerifyEmailAddress"
        operation.input = VerifyEmailAddressRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {}
      end)
      service.add_operation(:verify_email_identity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ses#VerifyEmailIdentity"
        operation.name = "VerifyEmailIdentity"
        operation.input = VerifyEmailIdentityRequest
        operation.output = VerifyEmailIdentityResponse
        operation.traits = {}
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
