# frozen_string_literal: true

# This is generated code!

module Aws::WAFV2
  # This module contains a schema composed of shapes used by the client.
  module Schema

    APIKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#APIKey", name: "APIKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "\\S"})
    APIKeySummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#APIKeySummaries", name: "APIKeySummaries")
    APIKeySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#APIKeySummary", name: "APIKeySummary")
    APIKeyTokenDomains = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#APIKeyTokenDomains", name: "APIKeyTokenDomains", traits: {"smithy.api#length" => {"min" => 1}})
    APIKeyVersion = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wafv2#APIKeyVersion", name: "APIKeyVersion", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    ASN = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wafv2#ASN", name: "ASN", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 4294967295}})
    AWSManagedRulesACFPRuleSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#AWSManagedRulesACFPRuleSet", name: "AWSManagedRulesACFPRuleSet")
    AWSManagedRulesATPRuleSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#AWSManagedRulesATPRuleSet", name: "AWSManagedRulesATPRuleSet")
    AWSManagedRulesAntiDDoSRuleSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#AWSManagedRulesAntiDDoSRuleSet", name: "AWSManagedRulesAntiDDoSRuleSet")
    AWSManagedRulesBotControlRuleSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#AWSManagedRulesBotControlRuleSet", name: "AWSManagedRulesBotControlRuleSet")
    Action = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#Action", name: "Action")
    ActionCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ActionCondition", name: "ActionCondition")
    ActionValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#ActionValue", name: "ActionValue")
    AddressField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#AddressField", name: "AddressField")
    AddressFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#AddressFields", name: "AddressFields")
    All = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#All", name: "All")
    AllQueryArguments = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#AllQueryArguments", name: "AllQueryArguments")
    AllowAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#AllowAction", name: "AllowAction")
    AndStatement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#AndStatement", name: "AndStatement")
    ApplicationAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ApplicationAttribute", name: "ApplicationAttribute")
    ApplicationAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#ApplicationAttributes", name: "ApplicationAttributes", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ApplicationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ApplicationConfig", name: "ApplicationConfig")
    AsnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#AsnList", name: "AsnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    AsnMatchStatement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#AsnMatchStatement", name: "AsnMatchStatement")
    AssociateWebACLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#AssociateWebACLRequest", name: "AssociateWebACLRequest")
    AssociateWebACLResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#AssociateWebACLResponse", name: "AssociateWebACLResponse")
    AssociatedResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#AssociatedResourceType", name: "AssociatedResourceType")
    AssociationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#AssociationConfig", name: "AssociationConfig")
    AttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#AttributeName", name: "AttributeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\w\\-]+$"})
    AttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#AttributeValue", name: "AttributeValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    AttributeValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#AttributeValues", name: "AttributeValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    BlockAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#BlockAction", name: "BlockAction")
    Body = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#Body", name: "Body")
    BodyParsingFallbackBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#BodyParsingFallbackBehavior", name: "BodyParsingFallbackBehavior")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.wafv2#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    ByteMatchStatement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ByteMatchStatement", name: "ByteMatchStatement")
    CapacityUnit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wafv2#CapacityUnit", name: "CapacityUnit", traits: {"smithy.api#range" => {"min" => 1}})
    CaptchaAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#CaptchaAction", name: "CaptchaAction")
    CaptchaConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#CaptchaConfig", name: "CaptchaConfig")
    CaptchaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#CaptchaResponse", name: "CaptchaResponse")
    ChallengeAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ChallengeAction", name: "ChallengeAction")
    ChallengeConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ChallengeConfig", name: "ChallengeConfig")
    ChallengeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ChallengeResponse", name: "ChallengeResponse")
    CheckCapacityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#CheckCapacityRequest", name: "CheckCapacityRequest")
    CheckCapacityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#CheckCapacityResponse", name: "CheckCapacityResponse")
    ClientSideAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ClientSideAction", name: "ClientSideAction")
    ClientSideActionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ClientSideActionConfig", name: "ClientSideActionConfig")
    ComparisonOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#ComparisonOperator", name: "ComparisonOperator")
    Condition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#Condition", name: "Condition")
    Conditions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#Conditions", name: "Conditions", traits: {"smithy.api#length" => {"min" => 1}})
    ConsumedCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wafv2#ConsumedCapacity", name: "ConsumedCapacity", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    CookieMatchPattern = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#CookieMatchPattern", name: "CookieMatchPattern")
    CookieNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#CookieNames", name: "CookieNames", traits: {"smithy.api#length" => {"min" => 1, "max" => 199}})
    Cookies = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#Cookies", name: "Cookies")
    CountAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#CountAction", name: "CountAction")
    Country = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#Country", name: "Country")
    CountryCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#CountryCode", name: "CountryCode")
    CountryCodes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#CountryCodes", name: "CountryCodes", traits: {"smithy.api#length" => {"min" => 1}})
    CreateAPIKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#CreateAPIKeyRequest", name: "CreateAPIKeyRequest")
    CreateAPIKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#CreateAPIKeyResponse", name: "CreateAPIKeyResponse")
    CreateIPSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#CreateIPSetRequest", name: "CreateIPSetRequest")
    CreateIPSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#CreateIPSetResponse", name: "CreateIPSetResponse")
    CreateRegexPatternSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#CreateRegexPatternSetRequest", name: "CreateRegexPatternSetRequest")
    CreateRegexPatternSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#CreateRegexPatternSetResponse", name: "CreateRegexPatternSetResponse")
    CreateRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#CreateRuleGroupRequest", name: "CreateRuleGroupRequest")
    CreateRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#CreateRuleGroupResponse", name: "CreateRuleGroupResponse")
    CreateWebACLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#CreateWebACLRequest", name: "CreateWebACLRequest")
    CreateWebACLResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#CreateWebACLResponse", name: "CreateWebACLResponse")
    CreationPathString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#CreationPathString", name: "CreationPathString", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "\\S"})
    CustomHTTPHeader = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#CustomHTTPHeader", name: "CustomHTTPHeader")
    CustomHTTPHeaderName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#CustomHTTPHeaderName", name: "CustomHTTPHeaderName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9._$-]+$"})
    CustomHTTPHeaderValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#CustomHTTPHeaderValue", name: "CustomHTTPHeaderValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => ".*"})
    CustomHTTPHeaders = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#CustomHTTPHeaders", name: "CustomHTTPHeaders", traits: {"smithy.api#length" => {"min" => 1}})
    CustomRequestHandling = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#CustomRequestHandling", name: "CustomRequestHandling")
    CustomResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#CustomResponse", name: "CustomResponse")
    CustomResponseBodies = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.wafv2#CustomResponseBodies", name: "CustomResponseBodies", traits: {"smithy.api#length" => {"min" => 1}})
    CustomResponseBody = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#CustomResponseBody", name: "CustomResponseBody")
    DataProtection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#DataProtection", name: "DataProtection")
    DataProtectionAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#DataProtectionAction", name: "DataProtectionAction")
    DataProtectionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#DataProtectionConfig", name: "DataProtectionConfig")
    DataProtections = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#DataProtections", name: "DataProtections", traits: {"smithy.api#length" => {"min" => 1, "max" => 26}})
    DefaultAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#DefaultAction", name: "DefaultAction")
    DeleteAPIKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#DeleteAPIKeyRequest", name: "DeleteAPIKeyRequest")
    DeleteAPIKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#DeleteAPIKeyResponse", name: "DeleteAPIKeyResponse")
    DeleteFirewallManagerRuleGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#DeleteFirewallManagerRuleGroupsRequest", name: "DeleteFirewallManagerRuleGroupsRequest")
    DeleteFirewallManagerRuleGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#DeleteFirewallManagerRuleGroupsResponse", name: "DeleteFirewallManagerRuleGroupsResponse")
    DeleteIPSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#DeleteIPSetRequest", name: "DeleteIPSetRequest")
    DeleteIPSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#DeleteIPSetResponse", name: "DeleteIPSetResponse")
    DeleteLoggingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#DeleteLoggingConfigurationRequest", name: "DeleteLoggingConfigurationRequest")
    DeleteLoggingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#DeleteLoggingConfigurationResponse", name: "DeleteLoggingConfigurationResponse")
    DeletePermissionPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#DeletePermissionPolicyRequest", name: "DeletePermissionPolicyRequest")
    DeletePermissionPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#DeletePermissionPolicyResponse", name: "DeletePermissionPolicyResponse")
    DeleteRegexPatternSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#DeleteRegexPatternSetRequest", name: "DeleteRegexPatternSetRequest")
    DeleteRegexPatternSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#DeleteRegexPatternSetResponse", name: "DeleteRegexPatternSetResponse")
    DeleteRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#DeleteRuleGroupRequest", name: "DeleteRuleGroupRequest")
    DeleteRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#DeleteRuleGroupResponse", name: "DeleteRuleGroupResponse")
    DeleteWebACLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#DeleteWebACLRequest", name: "DeleteWebACLRequest")
    DeleteWebACLResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#DeleteWebACLResponse", name: "DeleteWebACLResponse")
    DescribeAllManagedProductsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#DescribeAllManagedProductsRequest", name: "DescribeAllManagedProductsRequest")
    DescribeAllManagedProductsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#DescribeAllManagedProductsResponse", name: "DescribeAllManagedProductsResponse")
    DescribeManagedProductsByVendorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#DescribeManagedProductsByVendorRequest", name: "DescribeManagedProductsByVendorRequest")
    DescribeManagedProductsByVendorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#DescribeManagedProductsByVendorResponse", name: "DescribeManagedProductsByVendorResponse")
    DescribeManagedRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#DescribeManagedRuleGroupRequest", name: "DescribeManagedRuleGroupRequest")
    DescribeManagedRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#DescribeManagedRuleGroupResponse", name: "DescribeManagedRuleGroupResponse")
    DisassociateWebACLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#DisassociateWebACLRequest", name: "DisassociateWebACLRequest")
    DisassociateWebACLResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#DisassociateWebACLResponse", name: "DisassociateWebACLResponse")
    DownloadUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#DownloadUrl", name: "DownloadUrl")
    EmailField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#EmailField", name: "EmailField")
    EnableMachineLearning = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.wafv2#EnableMachineLearning", name: "EnableMachineLearning")
    EntityDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#EntityDescription", name: "EntityDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\w+=:\#@/\\-,\\.][\\w+=:\#@/\\-,\\.\\s]+[\\w+=:\#@/\\-,\\.]$"})
    EntityId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#EntityId", name: "EntityId", traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-(?:[0-9a-f]{4}-){3}[0-9a-f]{12}$"})
    EntityName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#EntityName", name: "EntityName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w\\-]+$"})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#ErrorMessage", name: "ErrorMessage")
    ErrorReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#ErrorReason", name: "ErrorReason")
    EvaluationWindowSec = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wafv2#EvaluationWindowSec", name: "EvaluationWindowSec", traits: {"smithy.api#default" => 0})
    ExcludedRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ExcludedRule", name: "ExcludedRule")
    ExcludedRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#ExcludedRules", name: "ExcludedRules", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    FailureCode = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wafv2#FailureCode", name: "FailureCode", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 999}})
    FailureReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#FailureReason", name: "FailureReason")
    FailureValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#FailureValue", name: "FailureValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "\\S"})
    FallbackBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#FallbackBehavior", name: "FallbackBehavior")
    FieldIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#FieldIdentifier", name: "FieldIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "\\S"})
    FieldToMatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#FieldToMatch", name: "FieldToMatch")
    FieldToMatchData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#FieldToMatchData", name: "FieldToMatchData", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "\\S"})
    FieldToProtect = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#FieldToProtect", name: "FieldToProtect")
    FieldToProtectKeyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#FieldToProtectKeyName", name: "FieldToProtectKeyName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "\\S"})
    FieldToProtectKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#FieldToProtectKeys", name: "FieldToProtectKeys", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    FieldToProtectType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#FieldToProtectType", name: "FieldToProtectType")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#Filter", name: "Filter")
    FilterBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#FilterBehavior", name: "FilterBehavior")
    FilterRequirement = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#FilterRequirement", name: "FilterRequirement")
    Filters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#Filters", name: "Filters", traits: {"smithy.api#length" => {"min" => 1}})
    FirewallManagerRuleGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#FirewallManagerRuleGroup", name: "FirewallManagerRuleGroup")
    FirewallManagerRuleGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#FirewallManagerRuleGroups", name: "FirewallManagerRuleGroups")
    FirewallManagerStatement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#FirewallManagerStatement", name: "FirewallManagerStatement")
    ForwardedIPConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ForwardedIPConfig", name: "ForwardedIPConfig")
    ForwardedIPHeaderName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#ForwardedIPHeaderName", name: "ForwardedIPHeaderName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    ForwardedIPPosition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#ForwardedIPPosition", name: "ForwardedIPPosition")
    GenerateMobileSdkReleaseUrlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#GenerateMobileSdkReleaseUrlRequest", name: "GenerateMobileSdkReleaseUrlRequest")
    GenerateMobileSdkReleaseUrlResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#GenerateMobileSdkReleaseUrlResponse", name: "GenerateMobileSdkReleaseUrlResponse")
    GeoMatchStatement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#GeoMatchStatement", name: "GeoMatchStatement")
    GetDecryptedAPIKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#GetDecryptedAPIKeyRequest", name: "GetDecryptedAPIKeyRequest")
    GetDecryptedAPIKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#GetDecryptedAPIKeyResponse", name: "GetDecryptedAPIKeyResponse")
    GetIPSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#GetIPSetRequest", name: "GetIPSetRequest")
    GetIPSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#GetIPSetResponse", name: "GetIPSetResponse")
    GetLoggingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#GetLoggingConfigurationRequest", name: "GetLoggingConfigurationRequest")
    GetLoggingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#GetLoggingConfigurationResponse", name: "GetLoggingConfigurationResponse")
    GetManagedRuleSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#GetManagedRuleSetRequest", name: "GetManagedRuleSetRequest")
    GetManagedRuleSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#GetManagedRuleSetResponse", name: "GetManagedRuleSetResponse")
    GetMobileSdkReleaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#GetMobileSdkReleaseRequest", name: "GetMobileSdkReleaseRequest")
    GetMobileSdkReleaseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#GetMobileSdkReleaseResponse", name: "GetMobileSdkReleaseResponse")
    GetPermissionPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#GetPermissionPolicyRequest", name: "GetPermissionPolicyRequest")
    GetPermissionPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#GetPermissionPolicyResponse", name: "GetPermissionPolicyResponse")
    GetRateBasedStatementManagedKeysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#GetRateBasedStatementManagedKeysRequest", name: "GetRateBasedStatementManagedKeysRequest")
    GetRateBasedStatementManagedKeysResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#GetRateBasedStatementManagedKeysResponse", name: "GetRateBasedStatementManagedKeysResponse")
    GetRegexPatternSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#GetRegexPatternSetRequest", name: "GetRegexPatternSetRequest")
    GetRegexPatternSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#GetRegexPatternSetResponse", name: "GetRegexPatternSetResponse")
    GetRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#GetRuleGroupRequest", name: "GetRuleGroupRequest")
    GetRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#GetRuleGroupResponse", name: "GetRuleGroupResponse")
    GetSampledRequestsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#GetSampledRequestsRequest", name: "GetSampledRequestsRequest")
    GetSampledRequestsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#GetSampledRequestsResponse", name: "GetSampledRequestsResponse")
    GetWebACLForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#GetWebACLForResourceRequest", name: "GetWebACLForResourceRequest")
    GetWebACLForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#GetWebACLForResourceResponse", name: "GetWebACLForResourceResponse")
    GetWebACLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#GetWebACLRequest", name: "GetWebACLRequest")
    GetWebACLResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#GetWebACLResponse", name: "GetWebACLResponse")
    HTTPHeader = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#HTTPHeader", name: "HTTPHeader")
    HTTPHeaders = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#HTTPHeaders", name: "HTTPHeaders")
    HTTPMethod = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#HTTPMethod", name: "HTTPMethod")
    HTTPRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#HTTPRequest", name: "HTTPRequest")
    HTTPVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#HTTPVersion", name: "HTTPVersion")
    HeaderMatchPattern = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#HeaderMatchPattern", name: "HeaderMatchPattern")
    HeaderName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#HeaderName", name: "HeaderName")
    HeaderNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#HeaderNames", name: "HeaderNames", traits: {"smithy.api#length" => {"min" => 1, "max" => 199}})
    HeaderOrder = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#HeaderOrder", name: "HeaderOrder")
    HeaderValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#HeaderValue", name: "HeaderValue")
    Headers = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#Headers", name: "Headers")
    IPAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#IPAddress", name: "IPAddress", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "\\S"})
    IPAddressVersion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#IPAddressVersion", name: "IPAddressVersion")
    IPAddresses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#IPAddresses", name: "IPAddresses")
    IPSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#IPSet", name: "IPSet")
    IPSetForwardedIPConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#IPSetForwardedIPConfig", name: "IPSetForwardedIPConfig")
    IPSetReferenceStatement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#IPSetReferenceStatement", name: "IPSetReferenceStatement")
    IPSetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#IPSetSummaries", name: "IPSetSummaries")
    IPSetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#IPSetSummary", name: "IPSetSummary")
    IPString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#IPString", name: "IPString")
    ImmunityTimeProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ImmunityTimeProperty", name: "ImmunityTimeProperty")
    InspectionLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#InspectionLevel", name: "InspectionLevel")
    JA3Fingerprint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#JA3Fingerprint", name: "JA3Fingerprint")
    JA4Fingerprint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#JA4Fingerprint", name: "JA4Fingerprint")
    JsonBody = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#JsonBody", name: "JsonBody")
    JsonMatchPattern = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#JsonMatchPattern", name: "JsonMatchPattern")
    JsonMatchScope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#JsonMatchScope", name: "JsonMatchScope")
    JsonPointerPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#JsonPointerPath", name: "JsonPointerPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^([/])|([/](([^~])|(~[01]))+)$"})
    JsonPointerPaths = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#JsonPointerPaths", name: "JsonPointerPaths", traits: {"smithy.api#length" => {"min" => 1}})
    Label = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#Label", name: "Label")
    LabelMatchKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#LabelMatchKey", name: "LabelMatchKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[0-9A-Za-z_\\-:]+$"})
    LabelMatchScope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#LabelMatchScope", name: "LabelMatchScope")
    LabelMatchStatement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#LabelMatchStatement", name: "LabelMatchStatement")
    LabelName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#LabelName", name: "LabelName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[0-9A-Za-z_\\-:]+$"})
    LabelNameCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#LabelNameCondition", name: "LabelNameCondition")
    LabelNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#LabelNamespace", name: "LabelNamespace", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[0-9A-Za-z_\\-:]+:$"})
    LabelSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#LabelSummaries", name: "LabelSummaries")
    LabelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#LabelSummary", name: "LabelSummary")
    Labels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#Labels", name: "Labels")
    ListAPIKeysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ListAPIKeysRequest", name: "ListAPIKeysRequest")
    ListAPIKeysResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ListAPIKeysResponse", name: "ListAPIKeysResponse")
    ListAvailableManagedRuleGroupVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ListAvailableManagedRuleGroupVersionsRequest", name: "ListAvailableManagedRuleGroupVersionsRequest")
    ListAvailableManagedRuleGroupVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ListAvailableManagedRuleGroupVersionsResponse", name: "ListAvailableManagedRuleGroupVersionsResponse")
    ListAvailableManagedRuleGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ListAvailableManagedRuleGroupsRequest", name: "ListAvailableManagedRuleGroupsRequest")
    ListAvailableManagedRuleGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ListAvailableManagedRuleGroupsResponse", name: "ListAvailableManagedRuleGroupsResponse")
    ListIPSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ListIPSetsRequest", name: "ListIPSetsRequest")
    ListIPSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ListIPSetsResponse", name: "ListIPSetsResponse")
    ListLoggingConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ListLoggingConfigurationsRequest", name: "ListLoggingConfigurationsRequest")
    ListLoggingConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ListLoggingConfigurationsResponse", name: "ListLoggingConfigurationsResponse")
    ListManagedRuleSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ListManagedRuleSetsRequest", name: "ListManagedRuleSetsRequest")
    ListManagedRuleSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ListManagedRuleSetsResponse", name: "ListManagedRuleSetsResponse")
    ListMaxItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wafv2#ListMaxItems", name: "ListMaxItems", traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    ListMobileSdkReleasesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ListMobileSdkReleasesRequest", name: "ListMobileSdkReleasesRequest")
    ListMobileSdkReleasesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ListMobileSdkReleasesResponse", name: "ListMobileSdkReleasesResponse")
    ListRegexPatternSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ListRegexPatternSetsRequest", name: "ListRegexPatternSetsRequest")
    ListRegexPatternSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ListRegexPatternSetsResponse", name: "ListRegexPatternSetsResponse")
    ListResourcesForWebACLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ListResourcesForWebACLRequest", name: "ListResourcesForWebACLRequest")
    ListResourcesForWebACLResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ListResourcesForWebACLResponse", name: "ListResourcesForWebACLResponse")
    ListRuleGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ListRuleGroupsRequest", name: "ListRuleGroupsRequest")
    ListRuleGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ListRuleGroupsResponse", name: "ListRuleGroupsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListWebACLsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ListWebACLsRequest", name: "ListWebACLsRequest")
    ListWebACLsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ListWebACLsResponse", name: "ListWebACLsResponse")
    LockToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#LockToken", name: "LockToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-(?:[0-9a-f]{4}-){3}[0-9a-f]{12}$"})
    LogDestinationConfigs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#LogDestinationConfigs", name: "LogDestinationConfigs", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    LogScope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#LogScope", name: "LogScope")
    LogType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#LogType", name: "LogType")
    LoggingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#LoggingConfiguration", name: "LoggingConfiguration")
    LoggingConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#LoggingConfigurations", name: "LoggingConfigurations")
    LoggingFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#LoggingFilter", name: "LoggingFilter")
    LoginPathString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#LoginPathString", name: "LoginPathString", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "\\S"})
    LowReputationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#LowReputationMode", name: "LowReputationMode")
    ManagedProductDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ManagedProductDescriptor", name: "ManagedProductDescriptor")
    ManagedProductDescriptors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#ManagedProductDescriptors", name: "ManagedProductDescriptors")
    ManagedRuleGroupConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ManagedRuleGroupConfig", name: "ManagedRuleGroupConfig")
    ManagedRuleGroupConfigs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#ManagedRuleGroupConfigs", name: "ManagedRuleGroupConfigs")
    ManagedRuleGroupStatement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ManagedRuleGroupStatement", name: "ManagedRuleGroupStatement")
    ManagedRuleGroupSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#ManagedRuleGroupSummaries", name: "ManagedRuleGroupSummaries")
    ManagedRuleGroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ManagedRuleGroupSummary", name: "ManagedRuleGroupSummary")
    ManagedRuleGroupVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ManagedRuleGroupVersion", name: "ManagedRuleGroupVersion")
    ManagedRuleGroupVersions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#ManagedRuleGroupVersions", name: "ManagedRuleGroupVersions")
    ManagedRuleSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ManagedRuleSet", name: "ManagedRuleSet")
    ManagedRuleSetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#ManagedRuleSetSummaries", name: "ManagedRuleSetSummaries")
    ManagedRuleSetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ManagedRuleSetSummary", name: "ManagedRuleSetSummary")
    ManagedRuleSetVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ManagedRuleSetVersion", name: "ManagedRuleSetVersion")
    MapMatchScope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#MapMatchScope", name: "MapMatchScope")
    Method = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#Method", name: "Method")
    MetricName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#MetricName", name: "MetricName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\w#:\\.\\-/]+$"})
    MobileSdkRelease = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#MobileSdkRelease", name: "MobileSdkRelease")
    NextMarker = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#NextMarker", name: "NextMarker", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "\\S"})
    NoneAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#NoneAction", name: "NoneAction")
    NotStatement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#NotStatement", name: "NotStatement")
    OnSourceDDoSProtectionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#OnSourceDDoSProtectionConfig", name: "OnSourceDDoSProtectionConfig")
    OrStatement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#OrStatement", name: "OrStatement")
    OutputUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#OutputUrl", name: "OutputUrl")
    OverrideAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#OverrideAction", name: "OverrideAction")
    OversizeHandling = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#OversizeHandling", name: "OversizeHandling")
    PaginationLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wafv2#PaginationLimit", name: "PaginationLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ParameterExceptionField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#ParameterExceptionField", name: "ParameterExceptionField")
    ParameterExceptionParameter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#ParameterExceptionParameter", name: "ParameterExceptionParameter", traits: {"smithy.api#length" => {"min" => 1}})
    PasswordField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#PasswordField", name: "PasswordField")
    PayloadType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#PayloadType", name: "PayloadType")
    PhoneNumberField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#PhoneNumberField", name: "PhoneNumberField")
    PhoneNumberFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#PhoneNumberFields", name: "PhoneNumberFields")
    Platform = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#Platform", name: "Platform")
    PolicyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#PolicyString", name: "PolicyString", traits: {"smithy.api#length" => {"min" => 1, "max" => 395000}, "smithy.api#pattern" => "\\S"})
    PopulationSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wafv2#PopulationSize", name: "PopulationSize", traits: {"smithy.api#default" => 0})
    PositionalConstraint = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#PositionalConstraint", name: "PositionalConstraint")
    ProductDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#ProductDescription", name: "ProductDescription", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "\\S"})
    ProductId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#ProductId", name: "ProductId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    ProductLink = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#ProductLink", name: "ProductLink", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "\\S"})
    ProductTitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#ProductTitle", name: "ProductTitle", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "\\S"})
    PublishedVersions = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.wafv2#PublishedVersions", name: "PublishedVersions")
    PutLoggingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#PutLoggingConfigurationRequest", name: "PutLoggingConfigurationRequest")
    PutLoggingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#PutLoggingConfigurationResponse", name: "PutLoggingConfigurationResponse")
    PutManagedRuleSetVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#PutManagedRuleSetVersionsRequest", name: "PutManagedRuleSetVersionsRequest")
    PutManagedRuleSetVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#PutManagedRuleSetVersionsResponse", name: "PutManagedRuleSetVersionsResponse")
    PutPermissionPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#PutPermissionPolicyRequest", name: "PutPermissionPolicyRequest")
    PutPermissionPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#PutPermissionPolicyResponse", name: "PutPermissionPolicyResponse")
    QueryString = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#QueryString", name: "QueryString")
    RateBasedStatement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#RateBasedStatement", name: "RateBasedStatement")
    RateBasedStatementAggregateKeyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#RateBasedStatementAggregateKeyType", name: "RateBasedStatementAggregateKeyType")
    RateBasedStatementCustomKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#RateBasedStatementCustomKey", name: "RateBasedStatementCustomKey")
    RateBasedStatementCustomKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#RateBasedStatementCustomKeys", name: "RateBasedStatementCustomKeys", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    RateBasedStatementManagedKeysIPSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#RateBasedStatementManagedKeysIPSet", name: "RateBasedStatementManagedKeysIPSet")
    RateLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wafv2#RateLimit", name: "RateLimit", traits: {"smithy.api#range" => {"min" => 10, "max" => 2000000000}})
    RateLimitAsn = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#RateLimitAsn", name: "RateLimitAsn")
    RateLimitCookie = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#RateLimitCookie", name: "RateLimitCookie")
    RateLimitForwardedIP = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#RateLimitForwardedIP", name: "RateLimitForwardedIP")
    RateLimitHTTPMethod = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#RateLimitHTTPMethod", name: "RateLimitHTTPMethod")
    RateLimitHeader = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#RateLimitHeader", name: "RateLimitHeader")
    RateLimitIP = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#RateLimitIP", name: "RateLimitIP")
    RateLimitJA3Fingerprint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#RateLimitJA3Fingerprint", name: "RateLimitJA3Fingerprint")
    RateLimitJA4Fingerprint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#RateLimitJA4Fingerprint", name: "RateLimitJA4Fingerprint")
    RateLimitLabelNamespace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#RateLimitLabelNamespace", name: "RateLimitLabelNamespace")
    RateLimitQueryArgument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#RateLimitQueryArgument", name: "RateLimitQueryArgument")
    RateLimitQueryString = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#RateLimitQueryString", name: "RateLimitQueryString")
    RateLimitUriPath = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#RateLimitUriPath", name: "RateLimitUriPath")
    RedactedFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#RedactedFields", name: "RedactedFields", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    Regex = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#Regex", name: "Regex")
    RegexMatchStatement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#RegexMatchStatement", name: "RegexMatchStatement")
    RegexPatternSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#RegexPatternSet", name: "RegexPatternSet")
    RegexPatternSetReferenceStatement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#RegexPatternSetReferenceStatement", name: "RegexPatternSetReferenceStatement")
    RegexPatternSetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#RegexPatternSetSummaries", name: "RegexPatternSetSummaries")
    RegexPatternSetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#RegexPatternSetSummary", name: "RegexPatternSetSummary")
    RegexPatternString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#RegexPatternString", name: "RegexPatternString", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => ".*"})
    RegistrationPagePathString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#RegistrationPagePathString", name: "RegistrationPagePathString", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "\\S"})
    RegularExpressionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#RegularExpressionList", name: "RegularExpressionList")
    ReleaseNotes = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#ReleaseNotes", name: "ReleaseNotes")
    ReleaseSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#ReleaseSummaries", name: "ReleaseSummaries")
    ReleaseSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ReleaseSummary", name: "ReleaseSummary")
    RequestBody = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.wafv2#RequestBody", name: "RequestBody")
    RequestBodyAssociatedResourceTypeConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#RequestBodyAssociatedResourceTypeConfig", name: "RequestBodyAssociatedResourceTypeConfig")
    RequestInspection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#RequestInspection", name: "RequestInspection")
    RequestInspectionACFP = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#RequestInspectionACFP", name: "RequestInspectionACFP")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "\\S"})
    ResourceArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#ResourceArns", name: "ResourceArns")
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#ResourceType", name: "ResourceType")
    ResponseCode = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wafv2#ResponseCode", name: "ResponseCode")
    ResponseContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#ResponseContent", name: "ResponseContent", traits: {"smithy.api#length" => {"min" => 1, "max" => 10240}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ResponseContentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#ResponseContentType", name: "ResponseContentType")
    ResponseInspection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ResponseInspection", name: "ResponseInspection")
    ResponseInspectionBodyContains = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ResponseInspectionBodyContains", name: "ResponseInspectionBodyContains")
    ResponseInspectionBodyContainsFailureStrings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#ResponseInspectionBodyContainsFailureStrings", name: "ResponseInspectionBodyContainsFailureStrings", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ResponseInspectionBodyContainsSuccessStrings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#ResponseInspectionBodyContainsSuccessStrings", name: "ResponseInspectionBodyContainsSuccessStrings", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ResponseInspectionHeader = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ResponseInspectionHeader", name: "ResponseInspectionHeader")
    ResponseInspectionHeaderFailureValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#ResponseInspectionHeaderFailureValues", name: "ResponseInspectionHeaderFailureValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    ResponseInspectionHeaderName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#ResponseInspectionHeaderName", name: "ResponseInspectionHeaderName", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "\\S"})
    ResponseInspectionHeaderSuccessValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#ResponseInspectionHeaderSuccessValues", name: "ResponseInspectionHeaderSuccessValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    ResponseInspectionJson = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ResponseInspectionJson", name: "ResponseInspectionJson")
    ResponseInspectionJsonFailureValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#ResponseInspectionJsonFailureValues", name: "ResponseInspectionJsonFailureValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ResponseInspectionJsonSuccessValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#ResponseInspectionJsonSuccessValues", name: "ResponseInspectionJsonSuccessValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ResponseInspectionStatusCode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#ResponseInspectionStatusCode", name: "ResponseInspectionStatusCode")
    ResponseInspectionStatusCodeFailureCodes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#ResponseInspectionStatusCodeFailureCodes", name: "ResponseInspectionStatusCodeFailureCodes", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResponseInspectionStatusCodeSuccessCodes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#ResponseInspectionStatusCodeSuccessCodes", name: "ResponseInspectionStatusCodeSuccessCodes", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResponseStatusCode = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wafv2#ResponseStatusCode", name: "ResponseStatusCode", traits: {"smithy.api#range" => {"min" => 200, "max" => 599}})
    Rule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#Rule", name: "Rule")
    RuleAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#RuleAction", name: "RuleAction")
    RuleActionOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#RuleActionOverride", name: "RuleActionOverride")
    RuleActionOverrides = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#RuleActionOverrides", name: "RuleActionOverrides", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    RuleGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#RuleGroup", name: "RuleGroup")
    RuleGroupReferenceStatement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#RuleGroupReferenceStatement", name: "RuleGroupReferenceStatement")
    RuleGroupSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#RuleGroupSummaries", name: "RuleGroupSummaries")
    RuleGroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#RuleGroupSummary", name: "RuleGroupSummary")
    RulePriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wafv2#RulePriority", name: "RulePriority", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    RuleSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#RuleSummaries", name: "RuleSummaries")
    RuleSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#RuleSummary", name: "RuleSummary")
    Rules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#Rules", name: "Rules")
    SampleWeight = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wafv2#SampleWeight", name: "SampleWeight", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    SampledHTTPRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#SampledHTTPRequest", name: "SampledHTTPRequest")
    SampledHTTPRequests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#SampledHTTPRequests", name: "SampledHTTPRequests")
    Scope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#Scope", name: "Scope")
    SearchString = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.wafv2#SearchString", name: "SearchString")
    SensitivityLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#SensitivityLevel", name: "SensitivityLevel")
    SensitivityToAct = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#SensitivityToAct", name: "SensitivityToAct")
    SingleCookieName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#SingleCookieName", name: "SingleCookieName", traits: {"smithy.api#length" => {"min" => 1, "max" => 60}, "smithy.api#pattern" => "\\S"})
    SingleHeader = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#SingleHeader", name: "SingleHeader")
    SingleQueryArgument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#SingleQueryArgument", name: "SingleQueryArgument")
    Size = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wafv2#Size", name: "Size", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 21474836480}})
    SizeConstraintStatement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#SizeConstraintStatement", name: "SizeConstraintStatement")
    SizeInspectionLimit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#SizeInspectionLimit", name: "SizeInspectionLimit")
    SolveTimestamp = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wafv2#SolveTimestamp", name: "SolveTimestamp")
    SourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#SourceType", name: "SourceType")
    SqliMatchStatement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#SqliMatchStatement", name: "SqliMatchStatement")
    Statement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#Statement", name: "Statement")
    Statements = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#Statements", name: "Statements")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#String", name: "String")
    SuccessCode = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wafv2#SuccessCode", name: "SuccessCode", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 999}})
    SuccessValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#SuccessValue", name: "SuccessValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "\\S"})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#Tag", name: "Tag")
    TagInfoForResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#TagInfoForResource", name: "TagInfoForResource")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 1}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TextTransformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#TextTransformation", name: "TextTransformation")
    TextTransformationPriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wafv2#TextTransformationPriority", name: "TextTransformationPriority", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    TextTransformationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#TextTransformationType", name: "TextTransformationType")
    TextTransformations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#TextTransformations", name: "TextTransformations", traits: {"smithy.api#length" => {"min" => 1}})
    TimeWindow = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#TimeWindow", name: "TimeWindow")
    TimeWindowDay = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wafv2#TimeWindowDay", name: "TimeWindowDay", traits: {"smithy.api#range" => {"min" => 1}})
    TimeWindowSecond = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wafv2#TimeWindowSecond", name: "TimeWindowSecond", traits: {"smithy.api#range" => {"min" => 60, "max" => 259200}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.wafv2#Timestamp", name: "Timestamp")
    TokenDomain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#TokenDomain", name: "TokenDomain", traits: {"smithy.api#length" => {"min" => 1, "max" => 253}, "smithy.api#pattern" => "^[\\w\\.\\-/]+$"})
    TokenDomains = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#TokenDomains", name: "TokenDomains")
    URIString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#URIString", name: "URIString")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateIPSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#UpdateIPSetRequest", name: "UpdateIPSetRequest")
    UpdateIPSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#UpdateIPSetResponse", name: "UpdateIPSetResponse")
    UpdateManagedRuleSetVersionExpiryDateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#UpdateManagedRuleSetVersionExpiryDateRequest", name: "UpdateManagedRuleSetVersionExpiryDateRequest")
    UpdateManagedRuleSetVersionExpiryDateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#UpdateManagedRuleSetVersionExpiryDateResponse", name: "UpdateManagedRuleSetVersionExpiryDateResponse")
    UpdateRegexPatternSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#UpdateRegexPatternSetRequest", name: "UpdateRegexPatternSetRequest")
    UpdateRegexPatternSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#UpdateRegexPatternSetResponse", name: "UpdateRegexPatternSetResponse")
    UpdateRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#UpdateRuleGroupRequest", name: "UpdateRuleGroupRequest")
    UpdateRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#UpdateRuleGroupResponse", name: "UpdateRuleGroupResponse")
    UpdateWebACLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#UpdateWebACLRequest", name: "UpdateWebACLRequest")
    UpdateWebACLResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#UpdateWebACLResponse", name: "UpdateWebACLResponse")
    UriFragment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#UriFragment", name: "UriFragment")
    UriPath = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#UriPath", name: "UriPath")
    UsageOfAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafv2#UsageOfAction", name: "UsageOfAction")
    UsernameField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#UsernameField", name: "UsernameField")
    VendorName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#VendorName", name: "VendorName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    VersionKeyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafv2#VersionKeyString", name: "VersionKeyString", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\w#:\\.\\-/]+$"})
    VersionToPublish = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#VersionToPublish", name: "VersionToPublish")
    VersionsToPublish = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.wafv2#VersionsToPublish", name: "VersionsToPublish")
    VisibilityConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#VisibilityConfig", name: "VisibilityConfig")
    WAFAssociatedItemException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#WAFAssociatedItemException", name: "WAFAssociatedItemException", traits: {"smithy.api#error" => "client"})
    WAFConfigurationWarningException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#WAFConfigurationWarningException", name: "WAFConfigurationWarningException", traits: {"smithy.api#error" => "client"})
    WAFDuplicateItemException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#WAFDuplicateItemException", name: "WAFDuplicateItemException", traits: {"smithy.api#error" => "client"})
    WAFExpiredManagedRuleGroupVersionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#WAFExpiredManagedRuleGroupVersionException", name: "WAFExpiredManagedRuleGroupVersionException", traits: {"smithy.api#error" => "client"})
    WAFInternalErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#WAFInternalErrorException", name: "WAFInternalErrorException", traits: {"smithy.api#error" => "server"})
    WAFInvalidOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#WAFInvalidOperationException", name: "WAFInvalidOperationException", traits: {"smithy.api#error" => "client"})
    WAFInvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#WAFInvalidParameterException", name: "WAFInvalidParameterException", traits: {"smithy.api#error" => "client"})
    WAFInvalidPermissionPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#WAFInvalidPermissionPolicyException", name: "WAFInvalidPermissionPolicyException", traits: {"smithy.api#error" => "client"})
    WAFInvalidResourceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#WAFInvalidResourceException", name: "WAFInvalidResourceException", traits: {"smithy.api#error" => "client"})
    WAFLimitsExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#WAFLimitsExceededException", name: "WAFLimitsExceededException", traits: {"smithy.api#error" => "client"})
    WAFLogDestinationPermissionIssueException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#WAFLogDestinationPermissionIssueException", name: "WAFLogDestinationPermissionIssueException", traits: {"smithy.api#error" => "client"})
    WAFNonexistentItemException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#WAFNonexistentItemException", name: "WAFNonexistentItemException", traits: {"smithy.api#error" => "client"})
    WAFOptimisticLockException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#WAFOptimisticLockException", name: "WAFOptimisticLockException", traits: {"smithy.api#error" => "client"})
    WAFServiceLinkedRoleErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#WAFServiceLinkedRoleErrorException", name: "WAFServiceLinkedRoleErrorException", traits: {"smithy.api#error" => "client"})
    WAFSubscriptionNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#WAFSubscriptionNotFoundException", name: "WAFSubscriptionNotFoundException", traits: {"smithy.api#error" => "client"})
    WAFTagOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#WAFTagOperationException", name: "WAFTagOperationException", traits: {"smithy.api#error" => "client"})
    WAFTagOperationInternalErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#WAFTagOperationInternalErrorException", name: "WAFTagOperationInternalErrorException", traits: {"smithy.api#error" => "server"})
    WAFUnavailableEntityException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#WAFUnavailableEntityException", name: "WAFUnavailableEntityException", traits: {"smithy.api#error" => "client"})
    WAFUnsupportedAggregateKeyTypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#WAFUnsupportedAggregateKeyTypeException", name: "WAFUnsupportedAggregateKeyTypeException", traits: {"smithy.api#error" => "client"})
    WebACL = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#WebACL", name: "WebACL")
    WebACLSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafv2#WebACLSummaries", name: "WebACLSummaries")
    WebACLSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#WebACLSummary", name: "WebACLSummary")
    XssMatchStatement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafv2#XssMatchStatement", name: "XssMatchStatement")

    APIKeySummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: APIKeySummary, name: "member"))
    APIKeySummary.add_member(:token_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenDomains, name: "TokenDomains"))
    APIKeySummary.add_member(:api_key, ::Smithy::Schema::Shapes::MemberShape.new(target: APIKey, name: "APIKey"))
    APIKeySummary.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTimestamp"))
    APIKeySummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: APIKeyVersion, name: "Version", traits: {"smithy.api#default" => 0}))
    APIKeySummary.type = Types::APIKeySummary
    APIKeyTokenDomains.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenDomain, name: "member"))
    AWSManagedRulesACFPRuleSet.add_member(:creation_path, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationPathString, name: "CreationPath", traits: {"smithy.api#required" => {}}))
    AWSManagedRulesACFPRuleSet.add_member(:registration_page_path, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationPagePathString, name: "RegistrationPagePath", traits: {"smithy.api#required" => {}}))
    AWSManagedRulesACFPRuleSet.add_member(:request_inspection, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestInspectionACFP, name: "RequestInspection", traits: {"smithy.api#required" => {}}))
    AWSManagedRulesACFPRuleSet.add_member(:response_inspection, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseInspection, name: "ResponseInspection"))
    AWSManagedRulesACFPRuleSet.add_member(:enable_regex_in_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnableRegexInPath", traits: {"smithy.api#default" => false}))
    AWSManagedRulesACFPRuleSet.type = Types::AWSManagedRulesACFPRuleSet
    AWSManagedRulesATPRuleSet.add_member(:login_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LoginPath", traits: {"smithy.api#required" => {}}))
    AWSManagedRulesATPRuleSet.add_member(:request_inspection, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestInspection, name: "RequestInspection"))
    AWSManagedRulesATPRuleSet.add_member(:response_inspection, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseInspection, name: "ResponseInspection"))
    AWSManagedRulesATPRuleSet.add_member(:enable_regex_in_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnableRegexInPath", traits: {"smithy.api#default" => false}))
    AWSManagedRulesATPRuleSet.type = Types::AWSManagedRulesATPRuleSet
    AWSManagedRulesAntiDDoSRuleSet.add_member(:client_side_action_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientSideActionConfig, name: "ClientSideActionConfig", traits: {"smithy.api#required" => {}}))
    AWSManagedRulesAntiDDoSRuleSet.add_member(:sensitivity_to_block, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitivityToAct, name: "SensitivityToBlock"))
    AWSManagedRulesAntiDDoSRuleSet.type = Types::AWSManagedRulesAntiDDoSRuleSet
    AWSManagedRulesBotControlRuleSet.add_member(:inspection_level, ::Smithy::Schema::Shapes::MemberShape.new(target: InspectionLevel, name: "InspectionLevel", traits: {"smithy.api#required" => {}}))
    AWSManagedRulesBotControlRuleSet.add_member(:enable_machine_learning, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableMachineLearning, name: "EnableMachineLearning", traits: {"smithy.api#default" => true}))
    AWSManagedRulesBotControlRuleSet.type = Types::AWSManagedRulesBotControlRuleSet
    ActionCondition.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionValue, name: "Action", traits: {"smithy.api#required" => {}}))
    ActionCondition.type = Types::ActionCondition
    ActionValue.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    ActionValue.add_member(:block, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOCK", traits: {"smithy.api#enumValue" => "BLOCK"}))
    ActionValue.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COUNT", traits: {"smithy.api#enumValue" => "COUNT"}))
    ActionValue.add_member(:captcha, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAPTCHA", traits: {"smithy.api#enumValue" => "CAPTCHA"}))
    ActionValue.add_member(:challenge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHALLENGE", traits: {"smithy.api#enumValue" => "CHALLENGE"}))
    ActionValue.add_member(:excluded_as_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXCLUDED_AS_COUNT", traits: {"smithy.api#enumValue" => "EXCLUDED_AS_COUNT"}))
    AddressField.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    AddressField.type = Types::AddressField
    AddressFields.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressField, name: "member"))
    All.type = Types::All
    AllQueryArguments.type = Types::AllQueryArguments
    AllowAction.add_member(:custom_request_handling, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomRequestHandling, name: "CustomRequestHandling"))
    AllowAction.type = Types::AllowAction
    AndStatement.add_member(:statements, ::Smithy::Schema::Shapes::MemberShape.new(target: Statements, name: "Statements", traits: {"smithy.api#required" => {}}))
    AndStatement.type = Types::AndStatement
    ApplicationAttribute.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "Name"))
    ApplicationAttribute.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValues, name: "Values"))
    ApplicationAttribute.type = Types::ApplicationAttribute
    ApplicationAttributes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationAttribute, name: "member"))
    ApplicationConfig.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationAttributes, name: "Attributes"))
    ApplicationConfig.type = Types::ApplicationConfig
    AsnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ASN, name: "member"))
    AsnMatchStatement.add_member(:asn_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AsnList, name: "AsnList", traits: {"smithy.api#required" => {}}))
    AsnMatchStatement.add_member(:forwarded_ip_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ForwardedIPConfig, name: "ForwardedIPConfig"))
    AsnMatchStatement.type = Types::AsnMatchStatement
    AssociateWebACLRequest.add_member(:web_acl_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "WebACLArn", traits: {"smithy.api#required" => {}}))
    AssociateWebACLRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    AssociateWebACLRequest.type = Types::AssociateWebACLRequest
    AssociateWebACLResponse.type = Types::AssociateWebACLResponse
    AssociatedResourceType.add_member(:cloudfront, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUDFRONT", traits: {"smithy.api#enumValue" => "CLOUDFRONT"}))
    AssociatedResourceType.add_member(:api_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "API_GATEWAY", traits: {"smithy.api#enumValue" => "API_GATEWAY"}))
    AssociatedResourceType.add_member(:cognito_user_pool, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COGNITO_USER_POOL", traits: {"smithy.api#enumValue" => "COGNITO_USER_POOL"}))
    AssociatedResourceType.add_member(:app_runner_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APP_RUNNER_SERVICE", traits: {"smithy.api#enumValue" => "APP_RUNNER_SERVICE"}))
    AssociatedResourceType.add_member(:verified_access_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERIFIED_ACCESS_INSTANCE", traits: {"smithy.api#enumValue" => "VERIFIED_ACCESS_INSTANCE"}))
    AssociationConfig.add_member(:request_body, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestBody, name: "RequestBody"))
    AssociationConfig.type = Types::AssociationConfig
    AttributeValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "member"))
    BlockAction.add_member(:custom_response, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomResponse, name: "CustomResponse"))
    BlockAction.type = Types::BlockAction
    Body.add_member(:oversize_handling, ::Smithy::Schema::Shapes::MemberShape.new(target: OversizeHandling, name: "OversizeHandling"))
    Body.type = Types::Body
    BodyParsingFallbackBehavior.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MATCH", traits: {"smithy.api#enumValue" => "MATCH"}))
    BodyParsingFallbackBehavior.add_member(:no_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_MATCH", traits: {"smithy.api#enumValue" => "NO_MATCH"}))
    BodyParsingFallbackBehavior.add_member(:evaluate_as_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EVALUATE_AS_STRING", traits: {"smithy.api#enumValue" => "EVALUATE_AS_STRING"}))
    ByteMatchStatement.add_member(:search_string, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchString, name: "SearchString", traits: {"smithy.api#required" => {}}))
    ByteMatchStatement.add_member(:field_to_match, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldToMatch, name: "FieldToMatch", traits: {"smithy.api#required" => {}}))
    ByteMatchStatement.add_member(:text_transformations, ::Smithy::Schema::Shapes::MemberShape.new(target: TextTransformations, name: "TextTransformations", traits: {"smithy.api#required" => {}}))
    ByteMatchStatement.add_member(:positional_constraint, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionalConstraint, name: "PositionalConstraint", traits: {"smithy.api#required" => {}}))
    ByteMatchStatement.type = Types::ByteMatchStatement
    CaptchaAction.add_member(:custom_request_handling, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomRequestHandling, name: "CustomRequestHandling"))
    CaptchaAction.type = Types::CaptchaAction
    CaptchaConfig.add_member(:immunity_time_property, ::Smithy::Schema::Shapes::MemberShape.new(target: ImmunityTimeProperty, name: "ImmunityTimeProperty"))
    CaptchaConfig.type = Types::CaptchaConfig
    CaptchaResponse.add_member(:response_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseCode, name: "ResponseCode"))
    CaptchaResponse.add_member(:solve_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: SolveTimestamp, name: "SolveTimestamp"))
    CaptchaResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, name: "FailureReason"))
    CaptchaResponse.type = Types::CaptchaResponse
    ChallengeAction.add_member(:custom_request_handling, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomRequestHandling, name: "CustomRequestHandling"))
    ChallengeAction.type = Types::ChallengeAction
    ChallengeConfig.add_member(:immunity_time_property, ::Smithy::Schema::Shapes::MemberShape.new(target: ImmunityTimeProperty, name: "ImmunityTimeProperty"))
    ChallengeConfig.type = Types::ChallengeConfig
    ChallengeResponse.add_member(:response_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseCode, name: "ResponseCode"))
    ChallengeResponse.add_member(:solve_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: SolveTimestamp, name: "SolveTimestamp"))
    ChallengeResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, name: "FailureReason"))
    ChallengeResponse.type = Types::ChallengeResponse
    CheckCapacityRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    CheckCapacityRequest.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: Rules, name: "Rules", traits: {"smithy.api#required" => {}}))
    CheckCapacityRequest.type = Types::CheckCapacityRequest
    CheckCapacityResponse.add_member(:capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedCapacity, name: "Capacity", traits: {"smithy.api#default" => 0}))
    CheckCapacityResponse.type = Types::CheckCapacityResponse
    ClientSideAction.add_member(:usage_of_action, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageOfAction, name: "UsageOfAction", traits: {"smithy.api#required" => {}}))
    ClientSideAction.add_member(:sensitivity, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitivityToAct, name: "Sensitivity"))
    ClientSideAction.add_member(:exempt_uri_regular_expressions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegularExpressionList, name: "ExemptUriRegularExpressions"))
    ClientSideAction.type = Types::ClientSideAction
    ClientSideActionConfig.add_member(:challenge, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientSideAction, name: "Challenge", traits: {"smithy.api#required" => {}}))
    ClientSideActionConfig.type = Types::ClientSideActionConfig
    ComparisonOperator.add_member(:eq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQ", traits: {"smithy.api#enumValue" => "EQ"}))
    ComparisonOperator.add_member(:ne, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NE", traits: {"smithy.api#enumValue" => "NE"}))
    ComparisonOperator.add_member(:le, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LE", traits: {"smithy.api#enumValue" => "LE"}))
    ComparisonOperator.add_member(:lt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LT", traits: {"smithy.api#enumValue" => "LT"}))
    ComparisonOperator.add_member(:ge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GE", traits: {"smithy.api#enumValue" => "GE"}))
    ComparisonOperator.add_member(:gt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GT", traits: {"smithy.api#enumValue" => "GT"}))
    Condition.add_member(:action_condition, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionCondition, name: "ActionCondition"))
    Condition.add_member(:label_name_condition, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelNameCondition, name: "LabelNameCondition"))
    Condition.type = Types::Condition
    Conditions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Condition, name: "member"))
    CookieMatchPattern.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: All, name: "All"))
    CookieMatchPattern.add_member(:included_cookies, ::Smithy::Schema::Shapes::MemberShape.new(target: CookieNames, name: "IncludedCookies"))
    CookieMatchPattern.add_member(:excluded_cookies, ::Smithy::Schema::Shapes::MemberShape.new(target: CookieNames, name: "ExcludedCookies"))
    CookieMatchPattern.type = Types::CookieMatchPattern
    CookieNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SingleCookieName, name: "member"))
    Cookies.add_member(:match_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: CookieMatchPattern, name: "MatchPattern", traits: {"smithy.api#required" => {}}))
    Cookies.add_member(:match_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: MapMatchScope, name: "MatchScope", traits: {"smithy.api#required" => {}}))
    Cookies.add_member(:oversize_handling, ::Smithy::Schema::Shapes::MemberShape.new(target: OversizeHandling, name: "OversizeHandling", traits: {"smithy.api#required" => {}}))
    Cookies.type = Types::Cookies
    CountAction.add_member(:custom_request_handling, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomRequestHandling, name: "CustomRequestHandling"))
    CountAction.type = Types::CountAction
    CountryCode.add_member(:af, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AF", traits: {"smithy.api#enumValue" => "AF"}))
    CountryCode.add_member(:ax, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AX", traits: {"smithy.api#enumValue" => "AX"}))
    CountryCode.add_member(:al, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AL", traits: {"smithy.api#enumValue" => "AL"}))
    CountryCode.add_member(:dz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DZ", traits: {"smithy.api#enumValue" => "DZ"}))
    CountryCode.add_member(:as, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AS", traits: {"smithy.api#enumValue" => "AS"}))
    CountryCode.add_member(:ad, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AD", traits: {"smithy.api#enumValue" => "AD"}))
    CountryCode.add_member(:ao, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AO", traits: {"smithy.api#enumValue" => "AO"}))
    CountryCode.add_member(:ai, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AI", traits: {"smithy.api#enumValue" => "AI"}))
    CountryCode.add_member(:aq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AQ", traits: {"smithy.api#enumValue" => "AQ"}))
    CountryCode.add_member(:ag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AG", traits: {"smithy.api#enumValue" => "AG"}))
    CountryCode.add_member(:ar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AR", traits: {"smithy.api#enumValue" => "AR"}))
    CountryCode.add_member(:am, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AM", traits: {"smithy.api#enumValue" => "AM"}))
    CountryCode.add_member(:aw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AW", traits: {"smithy.api#enumValue" => "AW"}))
    CountryCode.add_member(:au, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AU", traits: {"smithy.api#enumValue" => "AU"}))
    CountryCode.add_member(:at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AT", traits: {"smithy.api#enumValue" => "AT"}))
    CountryCode.add_member(:az, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZ", traits: {"smithy.api#enumValue" => "AZ"}))
    CountryCode.add_member(:bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BS", traits: {"smithy.api#enumValue" => "BS"}))
    CountryCode.add_member(:bh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BH", traits: {"smithy.api#enumValue" => "BH"}))
    CountryCode.add_member(:bd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BD", traits: {"smithy.api#enumValue" => "BD"}))
    CountryCode.add_member(:bb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BB", traits: {"smithy.api#enumValue" => "BB"}))
    CountryCode.add_member(:by, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BY", traits: {"smithy.api#enumValue" => "BY"}))
    CountryCode.add_member(:be, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BE", traits: {"smithy.api#enumValue" => "BE"}))
    CountryCode.add_member(:bz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BZ", traits: {"smithy.api#enumValue" => "BZ"}))
    CountryCode.add_member(:bj, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BJ", traits: {"smithy.api#enumValue" => "BJ"}))
    CountryCode.add_member(:bm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BM", traits: {"smithy.api#enumValue" => "BM"}))
    CountryCode.add_member(:bt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT", traits: {"smithy.api#enumValue" => "BT"}))
    CountryCode.add_member(:bo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BO", traits: {"smithy.api#enumValue" => "BO"}))
    CountryCode.add_member(:bq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BQ", traits: {"smithy.api#enumValue" => "BQ"}))
    CountryCode.add_member(:ba, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BA", traits: {"smithy.api#enumValue" => "BA"}))
    CountryCode.add_member(:bw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BW", traits: {"smithy.api#enumValue" => "BW"}))
    CountryCode.add_member(:bv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BV", traits: {"smithy.api#enumValue" => "BV"}))
    CountryCode.add_member(:br, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BR", traits: {"smithy.api#enumValue" => "BR"}))
    CountryCode.add_member(:io, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IO", traits: {"smithy.api#enumValue" => "IO"}))
    CountryCode.add_member(:bn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BN", traits: {"smithy.api#enumValue" => "BN"}))
    CountryCode.add_member(:bg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BG", traits: {"smithy.api#enumValue" => "BG"}))
    CountryCode.add_member(:bf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BF", traits: {"smithy.api#enumValue" => "BF"}))
    CountryCode.add_member(:bi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BI", traits: {"smithy.api#enumValue" => "BI"}))
    CountryCode.add_member(:kh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KH", traits: {"smithy.api#enumValue" => "KH"}))
    CountryCode.add_member(:cm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CM", traits: {"smithy.api#enumValue" => "CM"}))
    CountryCode.add_member(:ca, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CA", traits: {"smithy.api#enumValue" => "CA"}))
    CountryCode.add_member(:cv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CV", traits: {"smithy.api#enumValue" => "CV"}))
    CountryCode.add_member(:ky, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KY", traits: {"smithy.api#enumValue" => "KY"}))
    CountryCode.add_member(:cf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CF", traits: {"smithy.api#enumValue" => "CF"}))
    CountryCode.add_member(:td, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TD", traits: {"smithy.api#enumValue" => "TD"}))
    CountryCode.add_member(:cl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CL", traits: {"smithy.api#enumValue" => "CL"}))
    CountryCode.add_member(:cn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CN", traits: {"smithy.api#enumValue" => "CN"}))
    CountryCode.add_member(:cx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CX", traits: {"smithy.api#enumValue" => "CX"}))
    CountryCode.add_member(:cc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CC", traits: {"smithy.api#enumValue" => "CC"}))
    CountryCode.add_member(:co, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CO", traits: {"smithy.api#enumValue" => "CO"}))
    CountryCode.add_member(:km, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KM", traits: {"smithy.api#enumValue" => "KM"}))
    CountryCode.add_member(:cg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CG", traits: {"smithy.api#enumValue" => "CG"}))
    CountryCode.add_member(:cd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CD", traits: {"smithy.api#enumValue" => "CD"}))
    CountryCode.add_member(:ck, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CK", traits: {"smithy.api#enumValue" => "CK"}))
    CountryCode.add_member(:cr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CR", traits: {"smithy.api#enumValue" => "CR"}))
    CountryCode.add_member(:ci, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CI", traits: {"smithy.api#enumValue" => "CI"}))
    CountryCode.add_member(:hr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HR", traits: {"smithy.api#enumValue" => "HR"}))
    CountryCode.add_member(:cu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CU", traits: {"smithy.api#enumValue" => "CU"}))
    CountryCode.add_member(:cw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CW", traits: {"smithy.api#enumValue" => "CW"}))
    CountryCode.add_member(:cy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CY", traits: {"smithy.api#enumValue" => "CY"}))
    CountryCode.add_member(:cz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CZ", traits: {"smithy.api#enumValue" => "CZ"}))
    CountryCode.add_member(:dk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DK", traits: {"smithy.api#enumValue" => "DK"}))
    CountryCode.add_member(:dj, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DJ", traits: {"smithy.api#enumValue" => "DJ"}))
    CountryCode.add_member(:dm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DM", traits: {"smithy.api#enumValue" => "DM"}))
    CountryCode.add_member(:do, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DO", traits: {"smithy.api#enumValue" => "DO"}))
    CountryCode.add_member(:ec, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC", traits: {"smithy.api#enumValue" => "EC"}))
    CountryCode.add_member(:eg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EG", traits: {"smithy.api#enumValue" => "EG"}))
    CountryCode.add_member(:sv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SV", traits: {"smithy.api#enumValue" => "SV"}))
    CountryCode.add_member(:gq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GQ", traits: {"smithy.api#enumValue" => "GQ"}))
    CountryCode.add_member(:er, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ER", traits: {"smithy.api#enumValue" => "ER"}))
    CountryCode.add_member(:ee, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EE", traits: {"smithy.api#enumValue" => "EE"}))
    CountryCode.add_member(:et, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ET", traits: {"smithy.api#enumValue" => "ET"}))
    CountryCode.add_member(:fk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FK", traits: {"smithy.api#enumValue" => "FK"}))
    CountryCode.add_member(:fo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FO", traits: {"smithy.api#enumValue" => "FO"}))
    CountryCode.add_member(:fj, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FJ", traits: {"smithy.api#enumValue" => "FJ"}))
    CountryCode.add_member(:fi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FI", traits: {"smithy.api#enumValue" => "FI"}))
    CountryCode.add_member(:fr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FR", traits: {"smithy.api#enumValue" => "FR"}))
    CountryCode.add_member(:gf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GF", traits: {"smithy.api#enumValue" => "GF"}))
    CountryCode.add_member(:pf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PF", traits: {"smithy.api#enumValue" => "PF"}))
    CountryCode.add_member(:tf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TF", traits: {"smithy.api#enumValue" => "TF"}))
    CountryCode.add_member(:ga, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GA", traits: {"smithy.api#enumValue" => "GA"}))
    CountryCode.add_member(:gm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GM", traits: {"smithy.api#enumValue" => "GM"}))
    CountryCode.add_member(:ge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GE", traits: {"smithy.api#enumValue" => "GE"}))
    CountryCode.add_member(:de, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DE", traits: {"smithy.api#enumValue" => "DE"}))
    CountryCode.add_member(:gh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GH", traits: {"smithy.api#enumValue" => "GH"}))
    CountryCode.add_member(:gi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GI", traits: {"smithy.api#enumValue" => "GI"}))
    CountryCode.add_member(:gr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GR", traits: {"smithy.api#enumValue" => "GR"}))
    CountryCode.add_member(:gl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GL", traits: {"smithy.api#enumValue" => "GL"}))
    CountryCode.add_member(:gd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GD", traits: {"smithy.api#enumValue" => "GD"}))
    CountryCode.add_member(:gp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GP", traits: {"smithy.api#enumValue" => "GP"}))
    CountryCode.add_member(:gu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GU", traits: {"smithy.api#enumValue" => "GU"}))
    CountryCode.add_member(:gt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GT", traits: {"smithy.api#enumValue" => "GT"}))
    CountryCode.add_member(:gg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GG", traits: {"smithy.api#enumValue" => "GG"}))
    CountryCode.add_member(:gn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GN", traits: {"smithy.api#enumValue" => "GN"}))
    CountryCode.add_member(:gw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GW", traits: {"smithy.api#enumValue" => "GW"}))
    CountryCode.add_member(:gy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GY", traits: {"smithy.api#enumValue" => "GY"}))
    CountryCode.add_member(:ht, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HT", traits: {"smithy.api#enumValue" => "HT"}))
    CountryCode.add_member(:hm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HM", traits: {"smithy.api#enumValue" => "HM"}))
    CountryCode.add_member(:va, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VA", traits: {"smithy.api#enumValue" => "VA"}))
    CountryCode.add_member(:hn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HN", traits: {"smithy.api#enumValue" => "HN"}))
    CountryCode.add_member(:hk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HK", traits: {"smithy.api#enumValue" => "HK"}))
    CountryCode.add_member(:hu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HU", traits: {"smithy.api#enumValue" => "HU"}))
    CountryCode.add_member(:is, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IS", traits: {"smithy.api#enumValue" => "IS"}))
    CountryCode.add_member(:in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN", traits: {"smithy.api#enumValue" => "IN"}))
    CountryCode.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ID", traits: {"smithy.api#enumValue" => "ID"}))
    CountryCode.add_member(:ir, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IR", traits: {"smithy.api#enumValue" => "IR"}))
    CountryCode.add_member(:iq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IQ", traits: {"smithy.api#enumValue" => "IQ"}))
    CountryCode.add_member(:ie, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IE", traits: {"smithy.api#enumValue" => "IE"}))
    CountryCode.add_member(:im, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IM", traits: {"smithy.api#enumValue" => "IM"}))
    CountryCode.add_member(:il, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IL", traits: {"smithy.api#enumValue" => "IL"}))
    CountryCode.add_member(:it, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IT", traits: {"smithy.api#enumValue" => "IT"}))
    CountryCode.add_member(:jm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JM", traits: {"smithy.api#enumValue" => "JM"}))
    CountryCode.add_member(:jp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JP", traits: {"smithy.api#enumValue" => "JP"}))
    CountryCode.add_member(:je, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JE", traits: {"smithy.api#enumValue" => "JE"}))
    CountryCode.add_member(:jo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JO", traits: {"smithy.api#enumValue" => "JO"}))
    CountryCode.add_member(:kz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KZ", traits: {"smithy.api#enumValue" => "KZ"}))
    CountryCode.add_member(:ke, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KE", traits: {"smithy.api#enumValue" => "KE"}))
    CountryCode.add_member(:ki, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KI", traits: {"smithy.api#enumValue" => "KI"}))
    CountryCode.add_member(:kp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KP", traits: {"smithy.api#enumValue" => "KP"}))
    CountryCode.add_member(:kr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KR", traits: {"smithy.api#enumValue" => "KR"}))
    CountryCode.add_member(:kw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KW", traits: {"smithy.api#enumValue" => "KW"}))
    CountryCode.add_member(:kg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KG", traits: {"smithy.api#enumValue" => "KG"}))
    CountryCode.add_member(:la, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LA", traits: {"smithy.api#enumValue" => "LA"}))
    CountryCode.add_member(:lv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LV", traits: {"smithy.api#enumValue" => "LV"}))
    CountryCode.add_member(:lb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LB", traits: {"smithy.api#enumValue" => "LB"}))
    CountryCode.add_member(:ls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LS", traits: {"smithy.api#enumValue" => "LS"}))
    CountryCode.add_member(:lr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LR", traits: {"smithy.api#enumValue" => "LR"}))
    CountryCode.add_member(:ly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LY", traits: {"smithy.api#enumValue" => "LY"}))
    CountryCode.add_member(:li, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LI", traits: {"smithy.api#enumValue" => "LI"}))
    CountryCode.add_member(:lt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LT", traits: {"smithy.api#enumValue" => "LT"}))
    CountryCode.add_member(:lu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LU", traits: {"smithy.api#enumValue" => "LU"}))
    CountryCode.add_member(:mo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MO", traits: {"smithy.api#enumValue" => "MO"}))
    CountryCode.add_member(:mk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MK", traits: {"smithy.api#enumValue" => "MK"}))
    CountryCode.add_member(:mg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MG", traits: {"smithy.api#enumValue" => "MG"}))
    CountryCode.add_member(:mw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MW", traits: {"smithy.api#enumValue" => "MW"}))
    CountryCode.add_member(:my, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MY", traits: {"smithy.api#enumValue" => "MY"}))
    CountryCode.add_member(:mv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MV", traits: {"smithy.api#enumValue" => "MV"}))
    CountryCode.add_member(:ml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ML", traits: {"smithy.api#enumValue" => "ML"}))
    CountryCode.add_member(:mt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MT", traits: {"smithy.api#enumValue" => "MT"}))
    CountryCode.add_member(:mh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MH", traits: {"smithy.api#enumValue" => "MH"}))
    CountryCode.add_member(:mq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MQ", traits: {"smithy.api#enumValue" => "MQ"}))
    CountryCode.add_member(:mr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MR", traits: {"smithy.api#enumValue" => "MR"}))
    CountryCode.add_member(:mu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MU", traits: {"smithy.api#enumValue" => "MU"}))
    CountryCode.add_member(:yt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YT", traits: {"smithy.api#enumValue" => "YT"}))
    CountryCode.add_member(:mx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MX", traits: {"smithy.api#enumValue" => "MX"}))
    CountryCode.add_member(:fm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FM", traits: {"smithy.api#enumValue" => "FM"}))
    CountryCode.add_member(:md, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MD", traits: {"smithy.api#enumValue" => "MD"}))
    CountryCode.add_member(:mc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MC", traits: {"smithy.api#enumValue" => "MC"}))
    CountryCode.add_member(:mn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MN", traits: {"smithy.api#enumValue" => "MN"}))
    CountryCode.add_member(:me, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ME", traits: {"smithy.api#enumValue" => "ME"}))
    CountryCode.add_member(:ms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MS", traits: {"smithy.api#enumValue" => "MS"}))
    CountryCode.add_member(:ma, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MA", traits: {"smithy.api#enumValue" => "MA"}))
    CountryCode.add_member(:mz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MZ", traits: {"smithy.api#enumValue" => "MZ"}))
    CountryCode.add_member(:mm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MM", traits: {"smithy.api#enumValue" => "MM"}))
    CountryCode.add_member(:na, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NA", traits: {"smithy.api#enumValue" => "NA"}))
    CountryCode.add_member(:nr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NR", traits: {"smithy.api#enumValue" => "NR"}))
    CountryCode.add_member(:np, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NP", traits: {"smithy.api#enumValue" => "NP"}))
    CountryCode.add_member(:nl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NL", traits: {"smithy.api#enumValue" => "NL"}))
    CountryCode.add_member(:nc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NC", traits: {"smithy.api#enumValue" => "NC"}))
    CountryCode.add_member(:nz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NZ", traits: {"smithy.api#enumValue" => "NZ"}))
    CountryCode.add_member(:ni, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NI", traits: {"smithy.api#enumValue" => "NI"}))
    CountryCode.add_member(:ne, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NE", traits: {"smithy.api#enumValue" => "NE"}))
    CountryCode.add_member(:ng, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NG", traits: {"smithy.api#enumValue" => "NG"}))
    CountryCode.add_member(:nu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NU", traits: {"smithy.api#enumValue" => "NU"}))
    CountryCode.add_member(:nf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NF", traits: {"smithy.api#enumValue" => "NF"}))
    CountryCode.add_member(:mp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MP", traits: {"smithy.api#enumValue" => "MP"}))
    CountryCode.add_member(:no, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO", traits: {"smithy.api#enumValue" => "NO"}))
    CountryCode.add_member(:om, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OM", traits: {"smithy.api#enumValue" => "OM"}))
    CountryCode.add_member(:pk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PK", traits: {"smithy.api#enumValue" => "PK"}))
    CountryCode.add_member(:pw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PW", traits: {"smithy.api#enumValue" => "PW"}))
    CountryCode.add_member(:ps, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PS", traits: {"smithy.api#enumValue" => "PS"}))
    CountryCode.add_member(:pa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PA", traits: {"smithy.api#enumValue" => "PA"}))
    CountryCode.add_member(:pg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PG", traits: {"smithy.api#enumValue" => "PG"}))
    CountryCode.add_member(:py, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PY", traits: {"smithy.api#enumValue" => "PY"}))
    CountryCode.add_member(:pe, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PE", traits: {"smithy.api#enumValue" => "PE"}))
    CountryCode.add_member(:ph, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PH", traits: {"smithy.api#enumValue" => "PH"}))
    CountryCode.add_member(:pn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PN", traits: {"smithy.api#enumValue" => "PN"}))
    CountryCode.add_member(:pl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PL", traits: {"smithy.api#enumValue" => "PL"}))
    CountryCode.add_member(:pt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PT", traits: {"smithy.api#enumValue" => "PT"}))
    CountryCode.add_member(:pr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PR", traits: {"smithy.api#enumValue" => "PR"}))
    CountryCode.add_member(:qa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QA", traits: {"smithy.api#enumValue" => "QA"}))
    CountryCode.add_member(:re, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RE", traits: {"smithy.api#enumValue" => "RE"}))
    CountryCode.add_member(:ro, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RO", traits: {"smithy.api#enumValue" => "RO"}))
    CountryCode.add_member(:ru, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RU", traits: {"smithy.api#enumValue" => "RU"}))
    CountryCode.add_member(:rw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RW", traits: {"smithy.api#enumValue" => "RW"}))
    CountryCode.add_member(:bl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BL", traits: {"smithy.api#enumValue" => "BL"}))
    CountryCode.add_member(:sh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SH", traits: {"smithy.api#enumValue" => "SH"}))
    CountryCode.add_member(:kn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KN", traits: {"smithy.api#enumValue" => "KN"}))
    CountryCode.add_member(:lc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LC", traits: {"smithy.api#enumValue" => "LC"}))
    CountryCode.add_member(:mf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MF", traits: {"smithy.api#enumValue" => "MF"}))
    CountryCode.add_member(:pm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PM", traits: {"smithy.api#enumValue" => "PM"}))
    CountryCode.add_member(:vc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VC", traits: {"smithy.api#enumValue" => "VC"}))
    CountryCode.add_member(:ws, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WS", traits: {"smithy.api#enumValue" => "WS"}))
    CountryCode.add_member(:sm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SM", traits: {"smithy.api#enumValue" => "SM"}))
    CountryCode.add_member(:st, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ST", traits: {"smithy.api#enumValue" => "ST"}))
    CountryCode.add_member(:sa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SA", traits: {"smithy.api#enumValue" => "SA"}))
    CountryCode.add_member(:sn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SN", traits: {"smithy.api#enumValue" => "SN"}))
    CountryCode.add_member(:rs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RS", traits: {"smithy.api#enumValue" => "RS"}))
    CountryCode.add_member(:sc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SC", traits: {"smithy.api#enumValue" => "SC"}))
    CountryCode.add_member(:sl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SL", traits: {"smithy.api#enumValue" => "SL"}))
    CountryCode.add_member(:sg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SG", traits: {"smithy.api#enumValue" => "SG"}))
    CountryCode.add_member(:sx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SX", traits: {"smithy.api#enumValue" => "SX"}))
    CountryCode.add_member(:sk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SK", traits: {"smithy.api#enumValue" => "SK"}))
    CountryCode.add_member(:si, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SI", traits: {"smithy.api#enumValue" => "SI"}))
    CountryCode.add_member(:sb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SB", traits: {"smithy.api#enumValue" => "SB"}))
    CountryCode.add_member(:so, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SO", traits: {"smithy.api#enumValue" => "SO"}))
    CountryCode.add_member(:za, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZA", traits: {"smithy.api#enumValue" => "ZA"}))
    CountryCode.add_member(:gs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GS", traits: {"smithy.api#enumValue" => "GS"}))
    CountryCode.add_member(:ss, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SS", traits: {"smithy.api#enumValue" => "SS"}))
    CountryCode.add_member(:es, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ES", traits: {"smithy.api#enumValue" => "ES"}))
    CountryCode.add_member(:lk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LK", traits: {"smithy.api#enumValue" => "LK"}))
    CountryCode.add_member(:sd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SD", traits: {"smithy.api#enumValue" => "SD"}))
    CountryCode.add_member(:sr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SR", traits: {"smithy.api#enumValue" => "SR"}))
    CountryCode.add_member(:sj, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SJ", traits: {"smithy.api#enumValue" => "SJ"}))
    CountryCode.add_member(:sz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SZ", traits: {"smithy.api#enumValue" => "SZ"}))
    CountryCode.add_member(:se, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SE", traits: {"smithy.api#enumValue" => "SE"}))
    CountryCode.add_member(:ch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CH", traits: {"smithy.api#enumValue" => "CH"}))
    CountryCode.add_member(:sy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SY", traits: {"smithy.api#enumValue" => "SY"}))
    CountryCode.add_member(:tw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TW", traits: {"smithy.api#enumValue" => "TW"}))
    CountryCode.add_member(:tj, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TJ", traits: {"smithy.api#enumValue" => "TJ"}))
    CountryCode.add_member(:tz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TZ", traits: {"smithy.api#enumValue" => "TZ"}))
    CountryCode.add_member(:th, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TH", traits: {"smithy.api#enumValue" => "TH"}))
    CountryCode.add_member(:tl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TL", traits: {"smithy.api#enumValue" => "TL"}))
    CountryCode.add_member(:tg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TG", traits: {"smithy.api#enumValue" => "TG"}))
    CountryCode.add_member(:tk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TK", traits: {"smithy.api#enumValue" => "TK"}))
    CountryCode.add_member(:to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TO", traits: {"smithy.api#enumValue" => "TO"}))
    CountryCode.add_member(:tt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TT", traits: {"smithy.api#enumValue" => "TT"}))
    CountryCode.add_member(:tn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TN", traits: {"smithy.api#enumValue" => "TN"}))
    CountryCode.add_member(:tr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TR", traits: {"smithy.api#enumValue" => "TR"}))
    CountryCode.add_member(:tm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TM", traits: {"smithy.api#enumValue" => "TM"}))
    CountryCode.add_member(:tc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TC", traits: {"smithy.api#enumValue" => "TC"}))
    CountryCode.add_member(:tv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TV", traits: {"smithy.api#enumValue" => "TV"}))
    CountryCode.add_member(:ug, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UG", traits: {"smithy.api#enumValue" => "UG"}))
    CountryCode.add_member(:ua, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UA", traits: {"smithy.api#enumValue" => "UA"}))
    CountryCode.add_member(:ae, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AE", traits: {"smithy.api#enumValue" => "AE"}))
    CountryCode.add_member(:gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GB", traits: {"smithy.api#enumValue" => "GB"}))
    CountryCode.add_member(:us, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US", traits: {"smithy.api#enumValue" => "US"}))
    CountryCode.add_member(:um, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UM", traits: {"smithy.api#enumValue" => "UM"}))
    CountryCode.add_member(:uy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UY", traits: {"smithy.api#enumValue" => "UY"}))
    CountryCode.add_member(:uz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UZ", traits: {"smithy.api#enumValue" => "UZ"}))
    CountryCode.add_member(:vu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VU", traits: {"smithy.api#enumValue" => "VU"}))
    CountryCode.add_member(:ve, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VE", traits: {"smithy.api#enumValue" => "VE"}))
    CountryCode.add_member(:vn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VN", traits: {"smithy.api#enumValue" => "VN"}))
    CountryCode.add_member(:vg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VG", traits: {"smithy.api#enumValue" => "VG"}))
    CountryCode.add_member(:vi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VI", traits: {"smithy.api#enumValue" => "VI"}))
    CountryCode.add_member(:wf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WF", traits: {"smithy.api#enumValue" => "WF"}))
    CountryCode.add_member(:eh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EH", traits: {"smithy.api#enumValue" => "EH"}))
    CountryCode.add_member(:ye, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YE", traits: {"smithy.api#enumValue" => "YE"}))
    CountryCode.add_member(:zm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZM", traits: {"smithy.api#enumValue" => "ZM"}))
    CountryCode.add_member(:zw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZW", traits: {"smithy.api#enumValue" => "ZW"}))
    CountryCode.add_member(:xk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "XK", traits: {"smithy.api#enumValue" => "XK"}))
    CountryCodes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode, name: "member"))
    CreateAPIKeyRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    CreateAPIKeyRequest.add_member(:token_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: APIKeyTokenDomains, name: "TokenDomains", traits: {"smithy.api#required" => {}}))
    CreateAPIKeyRequest.type = Types::CreateAPIKeyRequest
    CreateAPIKeyResponse.add_member(:api_key, ::Smithy::Schema::Shapes::MemberShape.new(target: APIKey, name: "APIKey"))
    CreateAPIKeyResponse.type = Types::CreateAPIKeyResponse
    CreateIPSetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateIPSetRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    CreateIPSetRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "Description"))
    CreateIPSetRequest.add_member(:ip_address_version, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddressVersion, name: "IPAddressVersion", traits: {"smithy.api#required" => {}}))
    CreateIPSetRequest.add_member(:addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddresses, name: "Addresses", traits: {"smithy.api#required" => {}}))
    CreateIPSetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateIPSetRequest.type = Types::CreateIPSetRequest
    CreateIPSetResponse.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: IPSetSummary, name: "Summary"))
    CreateIPSetResponse.type = Types::CreateIPSetResponse
    CreateRegexPatternSetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateRegexPatternSetRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    CreateRegexPatternSetRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "Description"))
    CreateRegexPatternSetRequest.add_member(:regular_expression_list, ::Smithy::Schema::Shapes::MemberShape.new(target: RegularExpressionList, name: "RegularExpressionList", traits: {"smithy.api#required" => {}}))
    CreateRegexPatternSetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateRegexPatternSetRequest.type = Types::CreateRegexPatternSetRequest
    CreateRegexPatternSetResponse.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: RegexPatternSetSummary, name: "Summary"))
    CreateRegexPatternSetResponse.type = Types::CreateRegexPatternSetResponse
    CreateRuleGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateRuleGroupRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    CreateRuleGroupRequest.add_member(:capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityUnit, name: "Capacity", traits: {"smithy.api#required" => {}}))
    CreateRuleGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "Description"))
    CreateRuleGroupRequest.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: Rules, name: "Rules"))
    CreateRuleGroupRequest.add_member(:visibility_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VisibilityConfig, name: "VisibilityConfig", traits: {"smithy.api#required" => {}}))
    CreateRuleGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateRuleGroupRequest.add_member(:custom_response_bodies, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomResponseBodies, name: "CustomResponseBodies"))
    CreateRuleGroupRequest.type = Types::CreateRuleGroupRequest
    CreateRuleGroupResponse.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroupSummary, name: "Summary"))
    CreateRuleGroupResponse.type = Types::CreateRuleGroupResponse
    CreateWebACLRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateWebACLRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    CreateWebACLRequest.add_member(:default_action, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultAction, name: "DefaultAction", traits: {"smithy.api#required" => {}}))
    CreateWebACLRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "Description"))
    CreateWebACLRequest.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: Rules, name: "Rules"))
    CreateWebACLRequest.add_member(:visibility_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VisibilityConfig, name: "VisibilityConfig", traits: {"smithy.api#required" => {}}))
    CreateWebACLRequest.add_member(:data_protection_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProtectionConfig, name: "DataProtectionConfig"))
    CreateWebACLRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateWebACLRequest.add_member(:custom_response_bodies, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomResponseBodies, name: "CustomResponseBodies"))
    CreateWebACLRequest.add_member(:captcha_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CaptchaConfig, name: "CaptchaConfig"))
    CreateWebACLRequest.add_member(:challenge_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ChallengeConfig, name: "ChallengeConfig"))
    CreateWebACLRequest.add_member(:token_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenDomains, name: "TokenDomains"))
    CreateWebACLRequest.add_member(:association_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationConfig, name: "AssociationConfig"))
    CreateWebACLRequest.add_member(:on_source_d_do_s_protection_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OnSourceDDoSProtectionConfig, name: "OnSourceDDoSProtectionConfig"))
    CreateWebACLRequest.add_member(:application_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationConfig, name: "ApplicationConfig"))
    CreateWebACLRequest.type = Types::CreateWebACLRequest
    CreateWebACLResponse.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: WebACLSummary, name: "Summary"))
    CreateWebACLResponse.type = Types::CreateWebACLResponse
    CustomHTTPHeader.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomHTTPHeaderName, name: "Name", traits: {"smithy.api#required" => {}}))
    CustomHTTPHeader.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomHTTPHeaderValue, name: "Value", traits: {"smithy.api#required" => {}}))
    CustomHTTPHeader.type = Types::CustomHTTPHeader
    CustomHTTPHeaders.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomHTTPHeader, name: "member"))
    CustomRequestHandling.add_member(:insert_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomHTTPHeaders, name: "InsertHeaders", traits: {"smithy.api#required" => {}}))
    CustomRequestHandling.type = Types::CustomRequestHandling
    CustomResponse.add_member(:response_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseStatusCode, name: "ResponseCode", traits: {"smithy.api#required" => {}}))
    CustomResponse.add_member(:custom_response_body_key, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "CustomResponseBodyKey"))
    CustomResponse.add_member(:response_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomHTTPHeaders, name: "ResponseHeaders"))
    CustomResponse.type = Types::CustomResponse
    CustomResponseBodies.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "key"))
    CustomResponseBodies.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomResponseBody, name: "value"))
    CustomResponseBody.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseContentType, name: "ContentType", traits: {"smithy.api#required" => {}}))
    CustomResponseBody.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseContent, name: "Content", traits: {"smithy.api#required" => {}}))
    CustomResponseBody.type = Types::CustomResponseBody
    DataProtection.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldToProtect, name: "Field", traits: {"smithy.api#required" => {}}))
    DataProtection.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProtectionAction, name: "Action", traits: {"smithy.api#required" => {}}))
    DataProtection.add_member(:exclude_rule_match_details, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ExcludeRuleMatchDetails", traits: {"smithy.api#default" => false}))
    DataProtection.add_member(:exclude_rate_based_details, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ExcludeRateBasedDetails", traits: {"smithy.api#default" => false}))
    DataProtection.type = Types::DataProtection
    DataProtectionAction.add_member(:substitution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBSTITUTION", traits: {"smithy.api#enumValue" => "SUBSTITUTION"}))
    DataProtectionAction.add_member(:hash, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HASH", traits: {"smithy.api#enumValue" => "HASH"}))
    DataProtectionConfig.add_member(:data_protections, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProtections, name: "DataProtections", traits: {"smithy.api#required" => {}}))
    DataProtectionConfig.type = Types::DataProtectionConfig
    DataProtections.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProtection, name: "member"))
    DefaultAction.add_member(:block, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockAction, name: "Block"))
    DefaultAction.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowAction, name: "Allow"))
    DefaultAction.type = Types::DefaultAction
    DeleteAPIKeyRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    DeleteAPIKeyRequest.add_member(:api_key, ::Smithy::Schema::Shapes::MemberShape.new(target: APIKey, name: "APIKey", traits: {"smithy.api#required" => {}}))
    DeleteAPIKeyRequest.type = Types::DeleteAPIKeyRequest
    DeleteAPIKeyResponse.type = Types::DeleteAPIKeyResponse
    DeleteFirewallManagerRuleGroupsRequest.add_member(:web_acl_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "WebACLArn", traits: {"smithy.api#required" => {}}))
    DeleteFirewallManagerRuleGroupsRequest.add_member(:web_acl_lock_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LockToken, name: "WebACLLockToken", traits: {"smithy.api#required" => {}}))
    DeleteFirewallManagerRuleGroupsRequest.type = Types::DeleteFirewallManagerRuleGroupsRequest
    DeleteFirewallManagerRuleGroupsResponse.add_member(:next_web_acl_lock_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LockToken, name: "NextWebACLLockToken"))
    DeleteFirewallManagerRuleGroupsResponse.type = Types::DeleteFirewallManagerRuleGroupsResponse
    DeleteIPSetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name", traits: {"smithy.api#required" => {}}))
    DeleteIPSetRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    DeleteIPSetRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "Id", traits: {"smithy.api#required" => {}}))
    DeleteIPSetRequest.add_member(:lock_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LockToken, name: "LockToken", traits: {"smithy.api#required" => {}}))
    DeleteIPSetRequest.type = Types::DeleteIPSetRequest
    DeleteIPSetResponse.type = Types::DeleteIPSetResponse
    DeleteLoggingConfigurationRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DeleteLoggingConfigurationRequest.add_member(:log_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LogType, name: "LogType"))
    DeleteLoggingConfigurationRequest.add_member(:log_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: LogScope, name: "LogScope"))
    DeleteLoggingConfigurationRequest.type = Types::DeleteLoggingConfigurationRequest
    DeleteLoggingConfigurationResponse.type = Types::DeleteLoggingConfigurationResponse
    DeletePermissionPolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DeletePermissionPolicyRequest.type = Types::DeletePermissionPolicyRequest
    DeletePermissionPolicyResponse.type = Types::DeletePermissionPolicyResponse
    DeleteRegexPatternSetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name", traits: {"smithy.api#required" => {}}))
    DeleteRegexPatternSetRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    DeleteRegexPatternSetRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "Id", traits: {"smithy.api#required" => {}}))
    DeleteRegexPatternSetRequest.add_member(:lock_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LockToken, name: "LockToken", traits: {"smithy.api#required" => {}}))
    DeleteRegexPatternSetRequest.type = Types::DeleteRegexPatternSetRequest
    DeleteRegexPatternSetResponse.type = Types::DeleteRegexPatternSetResponse
    DeleteRuleGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name", traits: {"smithy.api#required" => {}}))
    DeleteRuleGroupRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    DeleteRuleGroupRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "Id", traits: {"smithy.api#required" => {}}))
    DeleteRuleGroupRequest.add_member(:lock_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LockToken, name: "LockToken", traits: {"smithy.api#required" => {}}))
    DeleteRuleGroupRequest.type = Types::DeleteRuleGroupRequest
    DeleteRuleGroupResponse.type = Types::DeleteRuleGroupResponse
    DeleteWebACLRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name", traits: {"smithy.api#required" => {}}))
    DeleteWebACLRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    DeleteWebACLRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "Id", traits: {"smithy.api#required" => {}}))
    DeleteWebACLRequest.add_member(:lock_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LockToken, name: "LockToken", traits: {"smithy.api#required" => {}}))
    DeleteWebACLRequest.type = Types::DeleteWebACLRequest
    DeleteWebACLResponse.type = Types::DeleteWebACLResponse
    DescribeAllManagedProductsRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    DescribeAllManagedProductsRequest.type = Types::DescribeAllManagedProductsRequest
    DescribeAllManagedProductsResponse.add_member(:managed_products, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedProductDescriptors, name: "ManagedProducts"))
    DescribeAllManagedProductsResponse.type = Types::DescribeAllManagedProductsResponse
    DescribeManagedProductsByVendorRequest.add_member(:vendor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VendorName, name: "VendorName", traits: {"smithy.api#required" => {}}))
    DescribeManagedProductsByVendorRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    DescribeManagedProductsByVendorRequest.type = Types::DescribeManagedProductsByVendorRequest
    DescribeManagedProductsByVendorResponse.add_member(:managed_products, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedProductDescriptors, name: "ManagedProducts"))
    DescribeManagedProductsByVendorResponse.type = Types::DescribeManagedProductsByVendorResponse
    DescribeManagedRuleGroupRequest.add_member(:vendor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VendorName, name: "VendorName", traits: {"smithy.api#required" => {}}))
    DescribeManagedRuleGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name", traits: {"smithy.api#required" => {}}))
    DescribeManagedRuleGroupRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    DescribeManagedRuleGroupRequest.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionKeyString, name: "VersionName"))
    DescribeManagedRuleGroupRequest.type = Types::DescribeManagedRuleGroupRequest
    DescribeManagedRuleGroupResponse.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionKeyString, name: "VersionName"))
    DescribeManagedRuleGroupResponse.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "SnsTopicArn"))
    DescribeManagedRuleGroupResponse.add_member(:capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityUnit, name: "Capacity"))
    DescribeManagedRuleGroupResponse.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSummaries, name: "Rules"))
    DescribeManagedRuleGroupResponse.add_member(:label_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelName, name: "LabelNamespace"))
    DescribeManagedRuleGroupResponse.add_member(:available_labels, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelSummaries, name: "AvailableLabels"))
    DescribeManagedRuleGroupResponse.add_member(:consumed_labels, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelSummaries, name: "ConsumedLabels"))
    DescribeManagedRuleGroupResponse.type = Types::DescribeManagedRuleGroupResponse
    DisassociateWebACLRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DisassociateWebACLRequest.type = Types::DisassociateWebACLRequest
    DisassociateWebACLResponse.type = Types::DisassociateWebACLResponse
    EmailField.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    EmailField.type = Types::EmailField
    ExcludedRule.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name", traits: {"smithy.api#required" => {}}))
    ExcludedRule.type = Types::ExcludedRule
    ExcludedRules.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludedRule, name: "member"))
    FailureReason.add_member(:token_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOKEN_MISSING", traits: {"smithy.api#enumValue" => "TOKEN_MISSING"}))
    FailureReason.add_member(:token_expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOKEN_EXPIRED", traits: {"smithy.api#enumValue" => "TOKEN_EXPIRED"}))
    FailureReason.add_member(:token_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOKEN_INVALID", traits: {"smithy.api#enumValue" => "TOKEN_INVALID"}))
    FailureReason.add_member(:token_domain_mismatch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOKEN_DOMAIN_MISMATCH", traits: {"smithy.api#enumValue" => "TOKEN_DOMAIN_MISMATCH"}))
    FallbackBehavior.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MATCH", traits: {"smithy.api#enumValue" => "MATCH"}))
    FallbackBehavior.add_member(:no_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_MATCH", traits: {"smithy.api#enumValue" => "NO_MATCH"}))
    FieldToMatch.add_member(:single_header, ::Smithy::Schema::Shapes::MemberShape.new(target: SingleHeader, name: "SingleHeader"))
    FieldToMatch.add_member(:single_query_argument, ::Smithy::Schema::Shapes::MemberShape.new(target: SingleQueryArgument, name: "SingleQueryArgument"))
    FieldToMatch.add_member(:all_query_arguments, ::Smithy::Schema::Shapes::MemberShape.new(target: AllQueryArguments, name: "AllQueryArguments"))
    FieldToMatch.add_member(:uri_path, ::Smithy::Schema::Shapes::MemberShape.new(target: UriPath, name: "UriPath"))
    FieldToMatch.add_member(:query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryString, name: "QueryString"))
    FieldToMatch.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: Body, name: "Body"))
    FieldToMatch.add_member(:method, ::Smithy::Schema::Shapes::MemberShape.new(target: Method, name: "Method"))
    FieldToMatch.add_member(:json_body, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonBody, name: "JsonBody"))
    FieldToMatch.add_member(:headers, ::Smithy::Schema::Shapes::MemberShape.new(target: Headers, name: "Headers"))
    FieldToMatch.add_member(:cookies, ::Smithy::Schema::Shapes::MemberShape.new(target: Cookies, name: "Cookies"))
    FieldToMatch.add_member(:header_order, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderOrder, name: "HeaderOrder"))
    FieldToMatch.add_member(:ja3_fingerprint, ::Smithy::Schema::Shapes::MemberShape.new(target: JA3Fingerprint, name: "JA3Fingerprint"))
    FieldToMatch.add_member(:ja4_fingerprint, ::Smithy::Schema::Shapes::MemberShape.new(target: JA4Fingerprint, name: "JA4Fingerprint"))
    FieldToMatch.add_member(:uri_fragment, ::Smithy::Schema::Shapes::MemberShape.new(target: UriFragment, name: "UriFragment"))
    FieldToMatch.type = Types::FieldToMatch
    FieldToProtect.add_member(:field_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldToProtectType, name: "FieldType", traits: {"smithy.api#required" => {}}))
    FieldToProtect.add_member(:field_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldToProtectKeys, name: "FieldKeys"))
    FieldToProtect.type = Types::FieldToProtect
    FieldToProtectKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldToProtectKeyName, name: "member"))
    FieldToProtectType.add_member(:single_header, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_HEADER", traits: {"smithy.api#enumValue" => "SINGLE_HEADER"}))
    FieldToProtectType.add_member(:single_cookie, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_COOKIE", traits: {"smithy.api#enumValue" => "SINGLE_COOKIE"}))
    FieldToProtectType.add_member(:single_query_argument, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_QUERY_ARGUMENT", traits: {"smithy.api#enumValue" => "SINGLE_QUERY_ARGUMENT"}))
    FieldToProtectType.add_member(:query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUERY_STRING", traits: {"smithy.api#enumValue" => "QUERY_STRING"}))
    FieldToProtectType.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BODY", traits: {"smithy.api#enumValue" => "BODY"}))
    Filter.add_member(:behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterBehavior, name: "Behavior", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:requirement, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterRequirement, name: "Requirement", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: Conditions, name: "Conditions", traits: {"smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterBehavior.add_member(:keep, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KEEP", traits: {"smithy.api#enumValue" => "KEEP"}))
    FilterBehavior.add_member(:drop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DROP", traits: {"smithy.api#enumValue" => "DROP"}))
    FilterRequirement.add_member(:meets_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEETS_ALL", traits: {"smithy.api#enumValue" => "MEETS_ALL"}))
    FilterRequirement.add_member(:meets_any, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEETS_ANY", traits: {"smithy.api#enumValue" => "MEETS_ANY"}))
    Filters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member"))
    FirewallManagerRuleGroup.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name", traits: {"smithy.api#required" => {}}))
    FirewallManagerRuleGroup.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: RulePriority, name: "Priority", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    FirewallManagerRuleGroup.add_member(:firewall_manager_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallManagerStatement, name: "FirewallManagerStatement", traits: {"smithy.api#required" => {}}))
    FirewallManagerRuleGroup.add_member(:override_action, ::Smithy::Schema::Shapes::MemberShape.new(target: OverrideAction, name: "OverrideAction", traits: {"smithy.api#required" => {}}))
    FirewallManagerRuleGroup.add_member(:visibility_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VisibilityConfig, name: "VisibilityConfig", traits: {"smithy.api#required" => {}}))
    FirewallManagerRuleGroup.type = Types::FirewallManagerRuleGroup
    FirewallManagerRuleGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallManagerRuleGroup, name: "member"))
    FirewallManagerStatement.add_member(:managed_rule_group_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedRuleGroupStatement, name: "ManagedRuleGroupStatement"))
    FirewallManagerStatement.add_member(:rule_group_reference_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroupReferenceStatement, name: "RuleGroupReferenceStatement"))
    FirewallManagerStatement.type = Types::FirewallManagerStatement
    ForwardedIPConfig.add_member(:header_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ForwardedIPHeaderName, name: "HeaderName", traits: {"smithy.api#required" => {}}))
    ForwardedIPConfig.add_member(:fallback_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: FallbackBehavior, name: "FallbackBehavior", traits: {"smithy.api#required" => {}}))
    ForwardedIPConfig.type = Types::ForwardedIPConfig
    ForwardedIPPosition.add_member(:first, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIRST", traits: {"smithy.api#enumValue" => "FIRST"}))
    ForwardedIPPosition.add_member(:last, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST", traits: {"smithy.api#enumValue" => "LAST"}))
    ForwardedIPPosition.add_member(:any, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANY", traits: {"smithy.api#enumValue" => "ANY"}))
    GenerateMobileSdkReleaseUrlRequest.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, name: "Platform", traits: {"smithy.api#required" => {}}))
    GenerateMobileSdkReleaseUrlRequest.add_member(:release_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionKeyString, name: "ReleaseVersion", traits: {"smithy.api#required" => {}}))
    GenerateMobileSdkReleaseUrlRequest.type = Types::GenerateMobileSdkReleaseUrlRequest
    GenerateMobileSdkReleaseUrlResponse.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: DownloadUrl, name: "Url"))
    GenerateMobileSdkReleaseUrlResponse.type = Types::GenerateMobileSdkReleaseUrlResponse
    GeoMatchStatement.add_member(:country_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCodes, name: "CountryCodes"))
    GeoMatchStatement.add_member(:forwarded_ip_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ForwardedIPConfig, name: "ForwardedIPConfig"))
    GeoMatchStatement.type = Types::GeoMatchStatement
    GetDecryptedAPIKeyRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    GetDecryptedAPIKeyRequest.add_member(:api_key, ::Smithy::Schema::Shapes::MemberShape.new(target: APIKey, name: "APIKey", traits: {"smithy.api#required" => {}}))
    GetDecryptedAPIKeyRequest.type = Types::GetDecryptedAPIKeyRequest
    GetDecryptedAPIKeyResponse.add_member(:token_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenDomains, name: "TokenDomains"))
    GetDecryptedAPIKeyResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTimestamp"))
    GetDecryptedAPIKeyResponse.type = Types::GetDecryptedAPIKeyResponse
    GetIPSetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name", traits: {"smithy.api#required" => {}}))
    GetIPSetRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    GetIPSetRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "Id", traits: {"smithy.api#required" => {}}))
    GetIPSetRequest.type = Types::GetIPSetRequest
    GetIPSetResponse.add_member(:ip_set, ::Smithy::Schema::Shapes::MemberShape.new(target: IPSet, name: "IPSet"))
    GetIPSetResponse.add_member(:lock_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LockToken, name: "LockToken"))
    GetIPSetResponse.type = Types::GetIPSetResponse
    GetLoggingConfigurationRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    GetLoggingConfigurationRequest.add_member(:log_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LogType, name: "LogType"))
    GetLoggingConfigurationRequest.add_member(:log_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: LogScope, name: "LogScope"))
    GetLoggingConfigurationRequest.type = Types::GetLoggingConfigurationRequest
    GetLoggingConfigurationResponse.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfiguration, name: "LoggingConfiguration"))
    GetLoggingConfigurationResponse.type = Types::GetLoggingConfigurationResponse
    GetManagedRuleSetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name", traits: {"smithy.api#required" => {}}))
    GetManagedRuleSetRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    GetManagedRuleSetRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "Id", traits: {"smithy.api#required" => {}}))
    GetManagedRuleSetRequest.type = Types::GetManagedRuleSetRequest
    GetManagedRuleSetResponse.add_member(:managed_rule_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedRuleSet, name: "ManagedRuleSet"))
    GetManagedRuleSetResponse.add_member(:lock_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LockToken, name: "LockToken"))
    GetManagedRuleSetResponse.type = Types::GetManagedRuleSetResponse
    GetMobileSdkReleaseRequest.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, name: "Platform", traits: {"smithy.api#required" => {}}))
    GetMobileSdkReleaseRequest.add_member(:release_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionKeyString, name: "ReleaseVersion", traits: {"smithy.api#required" => {}}))
    GetMobileSdkReleaseRequest.type = Types::GetMobileSdkReleaseRequest
    GetMobileSdkReleaseResponse.add_member(:mobile_sdk_release, ::Smithy::Schema::Shapes::MemberShape.new(target: MobileSdkRelease, name: "MobileSdkRelease"))
    GetMobileSdkReleaseResponse.type = Types::GetMobileSdkReleaseResponse
    GetPermissionPolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    GetPermissionPolicyRequest.type = Types::GetPermissionPolicyRequest
    GetPermissionPolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyString, name: "Policy"))
    GetPermissionPolicyResponse.type = Types::GetPermissionPolicyResponse
    GetRateBasedStatementManagedKeysRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    GetRateBasedStatementManagedKeysRequest.add_member(:web_acl_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "WebACLName", traits: {"smithy.api#required" => {}}))
    GetRateBasedStatementManagedKeysRequest.add_member(:web_acl_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "WebACLId", traits: {"smithy.api#required" => {}}))
    GetRateBasedStatementManagedKeysRequest.add_member(:rule_group_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "RuleGroupRuleName"))
    GetRateBasedStatementManagedKeysRequest.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "RuleName", traits: {"smithy.api#required" => {}}))
    GetRateBasedStatementManagedKeysRequest.type = Types::GetRateBasedStatementManagedKeysRequest
    GetRateBasedStatementManagedKeysResponse.add_member(:managed_keys_ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: RateBasedStatementManagedKeysIPSet, name: "ManagedKeysIPV4"))
    GetRateBasedStatementManagedKeysResponse.add_member(:managed_keys_ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: RateBasedStatementManagedKeysIPSet, name: "ManagedKeysIPV6"))
    GetRateBasedStatementManagedKeysResponse.type = Types::GetRateBasedStatementManagedKeysResponse
    GetRegexPatternSetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name", traits: {"smithy.api#required" => {}}))
    GetRegexPatternSetRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    GetRegexPatternSetRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "Id", traits: {"smithy.api#required" => {}}))
    GetRegexPatternSetRequest.type = Types::GetRegexPatternSetRequest
    GetRegexPatternSetResponse.add_member(:regex_pattern_set, ::Smithy::Schema::Shapes::MemberShape.new(target: RegexPatternSet, name: "RegexPatternSet"))
    GetRegexPatternSetResponse.add_member(:lock_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LockToken, name: "LockToken"))
    GetRegexPatternSetResponse.type = Types::GetRegexPatternSetResponse
    GetRuleGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name"))
    GetRuleGroupRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope"))
    GetRuleGroupRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "Id"))
    GetRuleGroupRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ARN"))
    GetRuleGroupRequest.type = Types::GetRuleGroupRequest
    GetRuleGroupResponse.add_member(:rule_group, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroup, name: "RuleGroup"))
    GetRuleGroupResponse.add_member(:lock_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LockToken, name: "LockToken"))
    GetRuleGroupResponse.type = Types::GetRuleGroupResponse
    GetSampledRequestsRequest.add_member(:web_acl_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "WebAclArn", traits: {"smithy.api#required" => {}}))
    GetSampledRequestsRequest.add_member(:rule_metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "RuleMetricName", traits: {"smithy.api#required" => {}}))
    GetSampledRequestsRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    GetSampledRequestsRequest.add_member(:time_window, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeWindow, name: "TimeWindow", traits: {"smithy.api#required" => {}}))
    GetSampledRequestsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: ListMaxItems, name: "MaxItems", traits: {"smithy.api#required" => {}}))
    GetSampledRequestsRequest.type = Types::GetSampledRequestsRequest
    GetSampledRequestsResponse.add_member(:sampled_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: SampledHTTPRequests, name: "SampledRequests"))
    GetSampledRequestsResponse.add_member(:population_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PopulationSize, name: "PopulationSize", traits: {"smithy.api#default" => 0}))
    GetSampledRequestsResponse.add_member(:time_window, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeWindow, name: "TimeWindow"))
    GetSampledRequestsResponse.type = Types::GetSampledRequestsResponse
    GetWebACLForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    GetWebACLForResourceRequest.type = Types::GetWebACLForResourceRequest
    GetWebACLForResourceResponse.add_member(:web_acl, ::Smithy::Schema::Shapes::MemberShape.new(target: WebACL, name: "WebACL"))
    GetWebACLForResourceResponse.type = Types::GetWebACLForResourceResponse
    GetWebACLRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name"))
    GetWebACLRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope"))
    GetWebACLRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "Id"))
    GetWebACLRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ARN"))
    GetWebACLRequest.type = Types::GetWebACLRequest
    GetWebACLResponse.add_member(:web_acl, ::Smithy::Schema::Shapes::MemberShape.new(target: WebACL, name: "WebACL"))
    GetWebACLResponse.add_member(:lock_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LockToken, name: "LockToken"))
    GetWebACLResponse.add_member(:application_integration_url, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputUrl, name: "ApplicationIntegrationURL"))
    GetWebACLResponse.type = Types::GetWebACLResponse
    HTTPHeader.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderName, name: "Name"))
    HTTPHeader.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderValue, name: "Value"))
    HTTPHeader.type = Types::HTTPHeader
    HTTPHeaders.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HTTPHeader, name: "member"))
    HTTPRequest.add_member(:client_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: IPString, name: "ClientIP"))
    HTTPRequest.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: Country, name: "Country"))
    HTTPRequest.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: URIString, name: "URI"))
    HTTPRequest.add_member(:method, ::Smithy::Schema::Shapes::MemberShape.new(target: HTTPMethod, name: "Method"))
    HTTPRequest.add_member(:http_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HTTPVersion, name: "HTTPVersion"))
    HTTPRequest.add_member(:headers, ::Smithy::Schema::Shapes::MemberShape.new(target: HTTPHeaders, name: "Headers"))
    HTTPRequest.type = Types::HTTPRequest
    HeaderMatchPattern.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: All, name: "All"))
    HeaderMatchPattern.add_member(:included_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderNames, name: "IncludedHeaders"))
    HeaderMatchPattern.add_member(:excluded_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderNames, name: "ExcludedHeaders"))
    HeaderMatchPattern.type = Types::HeaderMatchPattern
    HeaderNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldToMatchData, name: "member"))
    HeaderOrder.add_member(:oversize_handling, ::Smithy::Schema::Shapes::MemberShape.new(target: OversizeHandling, name: "OversizeHandling", traits: {"smithy.api#required" => {}}))
    HeaderOrder.type = Types::HeaderOrder
    Headers.add_member(:match_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderMatchPattern, name: "MatchPattern", traits: {"smithy.api#required" => {}}))
    Headers.add_member(:match_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: MapMatchScope, name: "MatchScope", traits: {"smithy.api#required" => {}}))
    Headers.add_member(:oversize_handling, ::Smithy::Schema::Shapes::MemberShape.new(target: OversizeHandling, name: "OversizeHandling", traits: {"smithy.api#required" => {}}))
    Headers.type = Types::Headers
    IPAddressVersion.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4", traits: {"smithy.api#enumValue" => "IPV4"}))
    IPAddressVersion.add_member(:ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV6", traits: {"smithy.api#enumValue" => "IPV6"}))
    IPAddresses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddress, name: "member"))
    IPSet.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name", traits: {"smithy.api#required" => {}}))
    IPSet.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "Id", traits: {"smithy.api#required" => {}}))
    IPSet.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ARN", traits: {"smithy.api#required" => {}}))
    IPSet.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "Description"))
    IPSet.add_member(:ip_address_version, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddressVersion, name: "IPAddressVersion", traits: {"smithy.api#required" => {}}))
    IPSet.add_member(:addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddresses, name: "Addresses", traits: {"smithy.api#required" => {}}))
    IPSet.type = Types::IPSet
    IPSetForwardedIPConfig.add_member(:header_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ForwardedIPHeaderName, name: "HeaderName", traits: {"smithy.api#required" => {}}))
    IPSetForwardedIPConfig.add_member(:fallback_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: FallbackBehavior, name: "FallbackBehavior", traits: {"smithy.api#required" => {}}))
    IPSetForwardedIPConfig.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: ForwardedIPPosition, name: "Position", traits: {"smithy.api#required" => {}}))
    IPSetForwardedIPConfig.type = Types::IPSetForwardedIPConfig
    IPSetReferenceStatement.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ARN", traits: {"smithy.api#required" => {}}))
    IPSetReferenceStatement.add_member(:ip_set_forwarded_ip_config, ::Smithy::Schema::Shapes::MemberShape.new(target: IPSetForwardedIPConfig, name: "IPSetForwardedIPConfig"))
    IPSetReferenceStatement.type = Types::IPSetReferenceStatement
    IPSetSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IPSetSummary, name: "member"))
    IPSetSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name"))
    IPSetSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "Id"))
    IPSetSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "Description"))
    IPSetSummary.add_member(:lock_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LockToken, name: "LockToken"))
    IPSetSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ARN"))
    IPSetSummary.type = Types::IPSetSummary
    ImmunityTimeProperty.add_member(:immunity_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeWindowSecond, name: "ImmunityTime", traits: {"smithy.api#required" => {}}))
    ImmunityTimeProperty.type = Types::ImmunityTimeProperty
    InspectionLevel.add_member(:common, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMMON", traits: {"smithy.api#enumValue" => "COMMON"}))
    InspectionLevel.add_member(:targeted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TARGETED", traits: {"smithy.api#enumValue" => "TARGETED"}))
    JA3Fingerprint.add_member(:fallback_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: FallbackBehavior, name: "FallbackBehavior", traits: {"smithy.api#required" => {}}))
    JA3Fingerprint.type = Types::JA3Fingerprint
    JA4Fingerprint.add_member(:fallback_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: FallbackBehavior, name: "FallbackBehavior", traits: {"smithy.api#required" => {}}))
    JA4Fingerprint.type = Types::JA4Fingerprint
    JsonBody.add_member(:match_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonMatchPattern, name: "MatchPattern", traits: {"smithy.api#required" => {}}))
    JsonBody.add_member(:match_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonMatchScope, name: "MatchScope", traits: {"smithy.api#required" => {}}))
    JsonBody.add_member(:invalid_fallback_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: BodyParsingFallbackBehavior, name: "InvalidFallbackBehavior"))
    JsonBody.add_member(:oversize_handling, ::Smithy::Schema::Shapes::MemberShape.new(target: OversizeHandling, name: "OversizeHandling"))
    JsonBody.type = Types::JsonBody
    JsonMatchPattern.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: All, name: "All"))
    JsonMatchPattern.add_member(:included_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonPointerPaths, name: "IncludedPaths"))
    JsonMatchPattern.type = Types::JsonMatchPattern
    JsonMatchScope.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    JsonMatchScope.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KEY", traits: {"smithy.api#enumValue" => "KEY"}))
    JsonMatchScope.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALUE", traits: {"smithy.api#enumValue" => "VALUE"}))
    JsonPointerPaths.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonPointerPath, name: "member"))
    Label.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelName, name: "Name", traits: {"smithy.api#required" => {}}))
    Label.type = Types::Label
    LabelMatchScope.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LABEL", traits: {"smithy.api#enumValue" => "LABEL"}))
    LabelMatchScope.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAMESPACE", traits: {"smithy.api#enumValue" => "NAMESPACE"}))
    LabelMatchStatement.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelMatchScope, name: "Scope", traits: {"smithy.api#required" => {}}))
    LabelMatchStatement.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelMatchKey, name: "Key", traits: {"smithy.api#required" => {}}))
    LabelMatchStatement.type = Types::LabelMatchStatement
    LabelNameCondition.add_member(:label_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelName, name: "LabelName", traits: {"smithy.api#required" => {}}))
    LabelNameCondition.type = Types::LabelNameCondition
    LabelSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelSummary, name: "member"))
    LabelSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelName, name: "Name"))
    LabelSummary.type = Types::LabelSummary
    Labels.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Label, name: "member"))
    ListAPIKeysRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    ListAPIKeysRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListAPIKeysRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "Limit"))
    ListAPIKeysRequest.type = Types::ListAPIKeysRequest
    ListAPIKeysResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListAPIKeysResponse.add_member(:api_key_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: APIKeySummaries, name: "APIKeySummaries"))
    ListAPIKeysResponse.add_member(:application_integration_url, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputUrl, name: "ApplicationIntegrationURL"))
    ListAPIKeysResponse.type = Types::ListAPIKeysResponse
    ListAvailableManagedRuleGroupVersionsRequest.add_member(:vendor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VendorName, name: "VendorName", traits: {"smithy.api#required" => {}}))
    ListAvailableManagedRuleGroupVersionsRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name", traits: {"smithy.api#required" => {}}))
    ListAvailableManagedRuleGroupVersionsRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    ListAvailableManagedRuleGroupVersionsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListAvailableManagedRuleGroupVersionsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "Limit"))
    ListAvailableManagedRuleGroupVersionsRequest.type = Types::ListAvailableManagedRuleGroupVersionsRequest
    ListAvailableManagedRuleGroupVersionsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListAvailableManagedRuleGroupVersionsResponse.add_member(:versions, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedRuleGroupVersions, name: "Versions"))
    ListAvailableManagedRuleGroupVersionsResponse.add_member(:current_default_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionKeyString, name: "CurrentDefaultVersion"))
    ListAvailableManagedRuleGroupVersionsResponse.type = Types::ListAvailableManagedRuleGroupVersionsResponse
    ListAvailableManagedRuleGroupsRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    ListAvailableManagedRuleGroupsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListAvailableManagedRuleGroupsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "Limit"))
    ListAvailableManagedRuleGroupsRequest.type = Types::ListAvailableManagedRuleGroupsRequest
    ListAvailableManagedRuleGroupsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListAvailableManagedRuleGroupsResponse.add_member(:managed_rule_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedRuleGroupSummaries, name: "ManagedRuleGroups"))
    ListAvailableManagedRuleGroupsResponse.type = Types::ListAvailableManagedRuleGroupsResponse
    ListIPSetsRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    ListIPSetsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListIPSetsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "Limit"))
    ListIPSetsRequest.type = Types::ListIPSetsRequest
    ListIPSetsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListIPSetsResponse.add_member(:ip_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: IPSetSummaries, name: "IPSets"))
    ListIPSetsResponse.type = Types::ListIPSetsResponse
    ListLoggingConfigurationsRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    ListLoggingConfigurationsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListLoggingConfigurationsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "Limit"))
    ListLoggingConfigurationsRequest.add_member(:log_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: LogScope, name: "LogScope"))
    ListLoggingConfigurationsRequest.type = Types::ListLoggingConfigurationsRequest
    ListLoggingConfigurationsResponse.add_member(:logging_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurations, name: "LoggingConfigurations"))
    ListLoggingConfigurationsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListLoggingConfigurationsResponse.type = Types::ListLoggingConfigurationsResponse
    ListManagedRuleSetsRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    ListManagedRuleSetsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListManagedRuleSetsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "Limit"))
    ListManagedRuleSetsRequest.type = Types::ListManagedRuleSetsRequest
    ListManagedRuleSetsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListManagedRuleSetsResponse.add_member(:managed_rule_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedRuleSetSummaries, name: "ManagedRuleSets"))
    ListManagedRuleSetsResponse.type = Types::ListManagedRuleSetsResponse
    ListMobileSdkReleasesRequest.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, name: "Platform", traits: {"smithy.api#required" => {}}))
    ListMobileSdkReleasesRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListMobileSdkReleasesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "Limit"))
    ListMobileSdkReleasesRequest.type = Types::ListMobileSdkReleasesRequest
    ListMobileSdkReleasesResponse.add_member(:release_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ReleaseSummaries, name: "ReleaseSummaries"))
    ListMobileSdkReleasesResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListMobileSdkReleasesResponse.type = Types::ListMobileSdkReleasesResponse
    ListRegexPatternSetsRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    ListRegexPatternSetsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListRegexPatternSetsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "Limit"))
    ListRegexPatternSetsRequest.type = Types::ListRegexPatternSetsRequest
    ListRegexPatternSetsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListRegexPatternSetsResponse.add_member(:regex_pattern_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: RegexPatternSetSummaries, name: "RegexPatternSets"))
    ListRegexPatternSetsResponse.type = Types::ListRegexPatternSetsResponse
    ListResourcesForWebACLRequest.add_member(:web_acl_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "WebACLArn", traits: {"smithy.api#required" => {}}))
    ListResourcesForWebACLRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ListResourcesForWebACLRequest.type = Types::ListResourcesForWebACLRequest
    ListResourcesForWebACLResponse.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArns, name: "ResourceArns"))
    ListResourcesForWebACLResponse.type = Types::ListResourcesForWebACLResponse
    ListRuleGroupsRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    ListRuleGroupsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListRuleGroupsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "Limit"))
    ListRuleGroupsRequest.type = Types::ListRuleGroupsRequest
    ListRuleGroupsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListRuleGroupsResponse.add_member(:rule_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroupSummaries, name: "RuleGroups"))
    ListRuleGroupsResponse.type = Types::ListRuleGroupsResponse
    ListTagsForResourceRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListTagsForResourceRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "Limit"))
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListTagsForResourceResponse.add_member(:tag_info_for_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: TagInfoForResource, name: "TagInfoForResource"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListWebACLsRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    ListWebACLsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListWebACLsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "Limit"))
    ListWebACLsRequest.type = Types::ListWebACLsRequest
    ListWebACLsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListWebACLsResponse.add_member(:web_ac_ls, ::Smithy::Schema::Shapes::MemberShape.new(target: WebACLSummaries, name: "WebACLs"))
    ListWebACLsResponse.type = Types::ListWebACLsResponse
    LogDestinationConfigs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "member"))
    LogScope.add_member(:customer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER", traits: {"smithy.api#enumValue" => "CUSTOMER"}))
    LogScope.add_member(:security_lake, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECURITY_LAKE", traits: {"smithy.api#enumValue" => "SECURITY_LAKE"}))
    LogType.add_member(:waf_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WAF_LOGS", traits: {"smithy.api#enumValue" => "WAF_LOGS"}))
    LoggingConfiguration.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    LoggingConfiguration.add_member(:log_destination_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDestinationConfigs, name: "LogDestinationConfigs", traits: {"smithy.api#required" => {}}))
    LoggingConfiguration.add_member(:redacted_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: RedactedFields, name: "RedactedFields"))
    LoggingConfiguration.add_member(:managed_by_firewall_manager, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ManagedByFirewallManager", traits: {"smithy.api#default" => false}))
    LoggingConfiguration.add_member(:logging_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingFilter, name: "LoggingFilter"))
    LoggingConfiguration.add_member(:log_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LogType, name: "LogType"))
    LoggingConfiguration.add_member(:log_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: LogScope, name: "LogScope"))
    LoggingConfiguration.type = Types::LoggingConfiguration
    LoggingConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfiguration, name: "member"))
    LoggingFilter.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters", traits: {"smithy.api#required" => {}}))
    LoggingFilter.add_member(:default_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterBehavior, name: "DefaultBehavior", traits: {"smithy.api#required" => {}}))
    LoggingFilter.type = Types::LoggingFilter
    LowReputationMode.add_member(:active_under_ddos, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE_UNDER_DDOS", traits: {"smithy.api#enumValue" => "ACTIVE_UNDER_DDOS"}))
    LowReputationMode.add_member(:always_on, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALWAYS_ON", traits: {"smithy.api#enumValue" => "ALWAYS_ON"}))
    ManagedProductDescriptor.add_member(:vendor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VendorName, name: "VendorName"))
    ManagedProductDescriptor.add_member(:managed_rule_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "ManagedRuleSetName"))
    ManagedProductDescriptor.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductId, name: "ProductId"))
    ManagedProductDescriptor.add_member(:product_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductLink, name: "ProductLink"))
    ManagedProductDescriptor.add_member(:product_title, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductTitle, name: "ProductTitle"))
    ManagedProductDescriptor.add_member(:product_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductDescription, name: "ProductDescription"))
    ManagedProductDescriptor.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "SnsTopicArn"))
    ManagedProductDescriptor.add_member(:is_versioning_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsVersioningSupported", traits: {"smithy.api#default" => false}))
    ManagedProductDescriptor.add_member(:is_advanced_managed_rule_set, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsAdvancedManagedRuleSet", traits: {"smithy.api#default" => false}))
    ManagedProductDescriptor.type = Types::ManagedProductDescriptor
    ManagedProductDescriptors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedProductDescriptor, name: "member"))
    ManagedRuleGroupConfig.add_member(:login_path, ::Smithy::Schema::Shapes::MemberShape.new(target: LoginPathString, name: "LoginPath", traits: {"smithy.api#deprecated" => {"message" => "Deprecated. Use AWSManagedRulesATPRuleSet LoginPath"}}))
    ManagedRuleGroupConfig.add_member(:payload_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PayloadType, name: "PayloadType", traits: {"smithy.api#deprecated" => {"message" => "Deprecated. Use AWSManagedRulesATPRuleSet RequestInspection PayloadType"}}))
    ManagedRuleGroupConfig.add_member(:username_field, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameField, name: "UsernameField", traits: {"smithy.api#deprecated" => {"message" => "Deprecated. Use AWSManagedRulesATPRuleSet RequestInspection UsernameField"}}))
    ManagedRuleGroupConfig.add_member(:password_field, ::Smithy::Schema::Shapes::MemberShape.new(target: PasswordField, name: "PasswordField", traits: {"smithy.api#deprecated" => {"message" => "Deprecated. Use AWSManagedRulesATPRuleSet RequestInspection PasswordField"}}))
    ManagedRuleGroupConfig.add_member(:aws_managed_rules_bot_control_rule_set, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSManagedRulesBotControlRuleSet, name: "AWSManagedRulesBotControlRuleSet"))
    ManagedRuleGroupConfig.add_member(:aws_managed_rules_atp_rule_set, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSManagedRulesATPRuleSet, name: "AWSManagedRulesATPRuleSet"))
    ManagedRuleGroupConfig.add_member(:aws_managed_rules_acfp_rule_set, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSManagedRulesACFPRuleSet, name: "AWSManagedRulesACFPRuleSet"))
    ManagedRuleGroupConfig.add_member(:aws_managed_rules_anti_d_do_s_rule_set, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSManagedRulesAntiDDoSRuleSet, name: "AWSManagedRulesAntiDDoSRuleSet"))
    ManagedRuleGroupConfig.type = Types::ManagedRuleGroupConfig
    ManagedRuleGroupConfigs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedRuleGroupConfig, name: "member"))
    ManagedRuleGroupStatement.add_member(:vendor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VendorName, name: "VendorName", traits: {"smithy.api#required" => {}}))
    ManagedRuleGroupStatement.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name", traits: {"smithy.api#required" => {}}))
    ManagedRuleGroupStatement.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionKeyString, name: "Version"))
    ManagedRuleGroupStatement.add_member(:excluded_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludedRules, name: "ExcludedRules"))
    ManagedRuleGroupStatement.add_member(:scope_down_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: Statement, name: "ScopeDownStatement"))
    ManagedRuleGroupStatement.add_member(:managed_rule_group_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedRuleGroupConfigs, name: "ManagedRuleGroupConfigs"))
    ManagedRuleGroupStatement.add_member(:rule_action_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleActionOverrides, name: "RuleActionOverrides"))
    ManagedRuleGroupStatement.type = Types::ManagedRuleGroupStatement
    ManagedRuleGroupSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedRuleGroupSummary, name: "member"))
    ManagedRuleGroupSummary.add_member(:vendor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VendorName, name: "VendorName"))
    ManagedRuleGroupSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name"))
    ManagedRuleGroupSummary.add_member(:versioning_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "VersioningSupported", traits: {"smithy.api#default" => false}))
    ManagedRuleGroupSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "Description"))
    ManagedRuleGroupSummary.type = Types::ManagedRuleGroupSummary
    ManagedRuleGroupVersion.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionKeyString, name: "Name"))
    ManagedRuleGroupVersion.add_member(:last_update_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdateTimestamp"))
    ManagedRuleGroupVersion.type = Types::ManagedRuleGroupVersion
    ManagedRuleGroupVersions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedRuleGroupVersion, name: "member"))
    ManagedRuleSet.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name", traits: {"smithy.api#required" => {}}))
    ManagedRuleSet.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "Id", traits: {"smithy.api#required" => {}}))
    ManagedRuleSet.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ARN", traits: {"smithy.api#required" => {}}))
    ManagedRuleSet.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "Description"))
    ManagedRuleSet.add_member(:published_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: PublishedVersions, name: "PublishedVersions"))
    ManagedRuleSet.add_member(:recommended_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionKeyString, name: "RecommendedVersion"))
    ManagedRuleSet.add_member(:label_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelName, name: "LabelNamespace"))
    ManagedRuleSet.type = Types::ManagedRuleSet
    ManagedRuleSetSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedRuleSetSummary, name: "member"))
    ManagedRuleSetSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name"))
    ManagedRuleSetSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "Id"))
    ManagedRuleSetSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "Description"))
    ManagedRuleSetSummary.add_member(:lock_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LockToken, name: "LockToken"))
    ManagedRuleSetSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ARN"))
    ManagedRuleSetSummary.add_member(:label_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelName, name: "LabelNamespace"))
    ManagedRuleSetSummary.type = Types::ManagedRuleSetSummary
    ManagedRuleSetVersion.add_member(:associated_rule_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "AssociatedRuleGroupArn"))
    ManagedRuleSetVersion.add_member(:capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityUnit, name: "Capacity"))
    ManagedRuleSetVersion.add_member(:forecasted_lifetime, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeWindowDay, name: "ForecastedLifetime"))
    ManagedRuleSetVersion.add_member(:publish_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "PublishTimestamp"))
    ManagedRuleSetVersion.add_member(:last_update_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdateTimestamp"))
    ManagedRuleSetVersion.add_member(:expiry_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ExpiryTimestamp"))
    ManagedRuleSetVersion.type = Types::ManagedRuleSetVersion
    MapMatchScope.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    MapMatchScope.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KEY", traits: {"smithy.api#enumValue" => "KEY"}))
    MapMatchScope.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALUE", traits: {"smithy.api#enumValue" => "VALUE"}))
    Method.type = Types::Method
    MobileSdkRelease.add_member(:release_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionKeyString, name: "ReleaseVersion"))
    MobileSdkRelease.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp"))
    MobileSdkRelease.add_member(:release_notes, ::Smithy::Schema::Shapes::MemberShape.new(target: ReleaseNotes, name: "ReleaseNotes"))
    MobileSdkRelease.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    MobileSdkRelease.type = Types::MobileSdkRelease
    NoneAction.type = Types::NoneAction
    NotStatement.add_member(:statement, ::Smithy::Schema::Shapes::MemberShape.new(target: Statement, name: "Statement", traits: {"smithy.api#required" => {}}))
    NotStatement.type = Types::NotStatement
    OnSourceDDoSProtectionConfig.add_member(:alb_low_reputation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: LowReputationMode, name: "ALBLowReputationMode", traits: {"smithy.api#required" => {}}))
    OnSourceDDoSProtectionConfig.type = Types::OnSourceDDoSProtectionConfig
    OrStatement.add_member(:statements, ::Smithy::Schema::Shapes::MemberShape.new(target: Statements, name: "Statements", traits: {"smithy.api#required" => {}}))
    OrStatement.type = Types::OrStatement
    OverrideAction.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: CountAction, name: "Count"))
    OverrideAction.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: NoneAction, name: "None"))
    OverrideAction.type = Types::OverrideAction
    OversizeHandling.add_member(:continue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTINUE", traits: {"smithy.api#enumValue" => "CONTINUE"}))
    OversizeHandling.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MATCH", traits: {"smithy.api#enumValue" => "MATCH"}))
    OversizeHandling.add_member(:no_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_MATCH", traits: {"smithy.api#enumValue" => "NO_MATCH"}))
    ParameterExceptionField.add_member(:web_acl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEB_ACL", traits: {"smithy.api#enumValue" => "WEB_ACL"}))
    ParameterExceptionField.add_member(:rule_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RULE_GROUP", traits: {"smithy.api#enumValue" => "RULE_GROUP"}))
    ParameterExceptionField.add_member(:regex_pattern_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGEX_PATTERN_SET", traits: {"smithy.api#enumValue" => "REGEX_PATTERN_SET"}))
    ParameterExceptionField.add_member(:ip_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IP_SET", traits: {"smithy.api#enumValue" => "IP_SET"}))
    ParameterExceptionField.add_member(:managed_rule_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED_RULE_SET", traits: {"smithy.api#enumValue" => "MANAGED_RULE_SET"}))
    ParameterExceptionField.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RULE", traits: {"smithy.api#enumValue" => "RULE"}))
    ParameterExceptionField.add_member(:excluded_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXCLUDED_RULE", traits: {"smithy.api#enumValue" => "EXCLUDED_RULE"}))
    ParameterExceptionField.add_member(:statement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATEMENT", traits: {"smithy.api#enumValue" => "STATEMENT"}))
    ParameterExceptionField.add_member(:byte_match_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BYTE_MATCH_STATEMENT", traits: {"smithy.api#enumValue" => "BYTE_MATCH_STATEMENT"}))
    ParameterExceptionField.add_member(:sqli_match_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SQLI_MATCH_STATEMENT", traits: {"smithy.api#enumValue" => "SQLI_MATCH_STATEMENT"}))
    ParameterExceptionField.add_member(:xss_match_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "XSS_MATCH_STATEMENT", traits: {"smithy.api#enumValue" => "XSS_MATCH_STATEMENT"}))
    ParameterExceptionField.add_member(:size_constraint_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIZE_CONSTRAINT_STATEMENT", traits: {"smithy.api#enumValue" => "SIZE_CONSTRAINT_STATEMENT"}))
    ParameterExceptionField.add_member(:geo_match_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GEO_MATCH_STATEMENT", traits: {"smithy.api#enumValue" => "GEO_MATCH_STATEMENT"}))
    ParameterExceptionField.add_member(:rate_based_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RATE_BASED_STATEMENT", traits: {"smithy.api#enumValue" => "RATE_BASED_STATEMENT"}))
    ParameterExceptionField.add_member(:rule_group_reference_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RULE_GROUP_REFERENCE_STATEMENT", traits: {"smithy.api#enumValue" => "RULE_GROUP_REFERENCE_STATEMENT"}))
    ParameterExceptionField.add_member(:regex_pattern_reference_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGEX_PATTERN_REFERENCE_STATEMENT", traits: {"smithy.api#enumValue" => "REGEX_PATTERN_REFERENCE_STATEMENT"}))
    ParameterExceptionField.add_member(:ip_set_reference_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IP_SET_REFERENCE_STATEMENT", traits: {"smithy.api#enumValue" => "IP_SET_REFERENCE_STATEMENT"}))
    ParameterExceptionField.add_member(:managed_rule_set_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED_RULE_SET_STATEMENT", traits: {"smithy.api#enumValue" => "MANAGED_RULE_SET_STATEMENT"}))
    ParameterExceptionField.add_member(:label_match_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LABEL_MATCH_STATEMENT", traits: {"smithy.api#enumValue" => "LABEL_MATCH_STATEMENT"}))
    ParameterExceptionField.add_member(:and_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AND_STATEMENT", traits: {"smithy.api#enumValue" => "AND_STATEMENT"}))
    ParameterExceptionField.add_member(:or_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OR_STATEMENT", traits: {"smithy.api#enumValue" => "OR_STATEMENT"}))
    ParameterExceptionField.add_member(:not_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_STATEMENT", traits: {"smithy.api#enumValue" => "NOT_STATEMENT"}))
    ParameterExceptionField.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IP_ADDRESS", traits: {"smithy.api#enumValue" => "IP_ADDRESS"}))
    ParameterExceptionField.add_member(:ip_address_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IP_ADDRESS_VERSION", traits: {"smithy.api#enumValue" => "IP_ADDRESS_VERSION"}))
    ParameterExceptionField.add_member(:field_to_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_TO_MATCH", traits: {"smithy.api#enumValue" => "FIELD_TO_MATCH"}))
    ParameterExceptionField.add_member(:text_transformation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXT_TRANSFORMATION", traits: {"smithy.api#enumValue" => "TEXT_TRANSFORMATION"}))
    ParameterExceptionField.add_member(:single_query_argument, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_QUERY_ARGUMENT", traits: {"smithy.api#enumValue" => "SINGLE_QUERY_ARGUMENT"}))
    ParameterExceptionField.add_member(:single_header, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_HEADER", traits: {"smithy.api#enumValue" => "SINGLE_HEADER"}))
    ParameterExceptionField.add_member(:default_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT_ACTION", traits: {"smithy.api#enumValue" => "DEFAULT_ACTION"}))
    ParameterExceptionField.add_member(:rule_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RULE_ACTION", traits: {"smithy.api#enumValue" => "RULE_ACTION"}))
    ParameterExceptionField.add_member(:entity_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENTITY_LIMIT", traits: {"smithy.api#enumValue" => "ENTITY_LIMIT"}))
    ParameterExceptionField.add_member(:override_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OVERRIDE_ACTION", traits: {"smithy.api#enumValue" => "OVERRIDE_ACTION"}))
    ParameterExceptionField.add_member(:scope_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCOPE_VALUE", traits: {"smithy.api#enumValue" => "SCOPE_VALUE"}))
    ParameterExceptionField.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_ARN", traits: {"smithy.api#enumValue" => "RESOURCE_ARN"}))
    ParameterExceptionField.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_TYPE", traits: {"smithy.api#enumValue" => "RESOURCE_TYPE"}))
    ParameterExceptionField.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAGS", traits: {"smithy.api#enumValue" => "TAGS"}))
    ParameterExceptionField.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAG_KEYS", traits: {"smithy.api#enumValue" => "TAG_KEYS"}))
    ParameterExceptionField.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "METRIC_NAME", traits: {"smithy.api#enumValue" => "METRIC_NAME"}))
    ParameterExceptionField.add_member(:firewall_manager_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIREWALL_MANAGER_STATEMENT", traits: {"smithy.api#enumValue" => "FIREWALL_MANAGER_STATEMENT"}))
    ParameterExceptionField.add_member(:fallback_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FALLBACK_BEHAVIOR", traits: {"smithy.api#enumValue" => "FALLBACK_BEHAVIOR"}))
    ParameterExceptionField.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POSITION", traits: {"smithy.api#enumValue" => "POSITION"}))
    ParameterExceptionField.add_member(:forwarded_ip_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FORWARDED_IP_CONFIG", traits: {"smithy.api#enumValue" => "FORWARDED_IP_CONFIG"}))
    ParameterExceptionField.add_member(:ip_set_forwarded_ip_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IP_SET_FORWARDED_IP_CONFIG", traits: {"smithy.api#enumValue" => "IP_SET_FORWARDED_IP_CONFIG"}))
    ParameterExceptionField.add_member(:header_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEADER_NAME", traits: {"smithy.api#enumValue" => "HEADER_NAME"}))
    ParameterExceptionField.add_member(:custom_request_handling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_REQUEST_HANDLING", traits: {"smithy.api#enumValue" => "CUSTOM_REQUEST_HANDLING"}))
    ParameterExceptionField.add_member(:response_content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESPONSE_CONTENT_TYPE", traits: {"smithy.api#enumValue" => "RESPONSE_CONTENT_TYPE"}))
    ParameterExceptionField.add_member(:custom_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_RESPONSE", traits: {"smithy.api#enumValue" => "CUSTOM_RESPONSE"}))
    ParameterExceptionField.add_member(:custom_response_body, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_RESPONSE_BODY", traits: {"smithy.api#enumValue" => "CUSTOM_RESPONSE_BODY"}))
    ParameterExceptionField.add_member(:json_match_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON_MATCH_PATTERN", traits: {"smithy.api#enumValue" => "JSON_MATCH_PATTERN"}))
    ParameterExceptionField.add_member(:json_match_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON_MATCH_SCOPE", traits: {"smithy.api#enumValue" => "JSON_MATCH_SCOPE"}))
    ParameterExceptionField.add_member(:body_parsing_fallback_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BODY_PARSING_FALLBACK_BEHAVIOR", traits: {"smithy.api#enumValue" => "BODY_PARSING_FALLBACK_BEHAVIOR"}))
    ParameterExceptionField.add_member(:logging_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOGGING_FILTER", traits: {"smithy.api#enumValue" => "LOGGING_FILTER"}))
    ParameterExceptionField.add_member(:filter_condition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILTER_CONDITION", traits: {"smithy.api#enumValue" => "FILTER_CONDITION"}))
    ParameterExceptionField.add_member(:expire_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRE_TIMESTAMP", traits: {"smithy.api#enumValue" => "EXPIRE_TIMESTAMP"}))
    ParameterExceptionField.add_member(:change_propagation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHANGE_PROPAGATION_STATUS", traits: {"smithy.api#enumValue" => "CHANGE_PROPAGATION_STATUS"}))
    ParameterExceptionField.add_member(:associable_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSOCIABLE_RESOURCE", traits: {"smithy.api#enumValue" => "ASSOCIABLE_RESOURCE"}))
    ParameterExceptionField.add_member(:log_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOG_DESTINATION", traits: {"smithy.api#enumValue" => "LOG_DESTINATION"}))
    ParameterExceptionField.add_member(:managed_rule_group_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED_RULE_GROUP_CONFIG", traits: {"smithy.api#enumValue" => "MANAGED_RULE_GROUP_CONFIG"}))
    ParameterExceptionField.add_member(:payload_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAYLOAD_TYPE", traits: {"smithy.api#enumValue" => "PAYLOAD_TYPE"}))
    ParameterExceptionField.add_member(:header_match_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEADER_MATCH_PATTERN", traits: {"smithy.api#enumValue" => "HEADER_MATCH_PATTERN"}))
    ParameterExceptionField.add_member(:cookie_match_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COOKIE_MATCH_PATTERN", traits: {"smithy.api#enumValue" => "COOKIE_MATCH_PATTERN"}))
    ParameterExceptionField.add_member(:map_match_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAP_MATCH_SCOPE", traits: {"smithy.api#enumValue" => "MAP_MATCH_SCOPE"}))
    ParameterExceptionField.add_member(:oversize_handling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OVERSIZE_HANDLING", traits: {"smithy.api#enumValue" => "OVERSIZE_HANDLING"}))
    ParameterExceptionField.add_member(:challenge_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHALLENGE_CONFIG", traits: {"smithy.api#enumValue" => "CHALLENGE_CONFIG"}))
    ParameterExceptionField.add_member(:token_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOKEN_DOMAIN", traits: {"smithy.api#enumValue" => "TOKEN_DOMAIN"}))
    ParameterExceptionField.add_member(:atp_rule_set_response_inspection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ATP_RULE_SET_RESPONSE_INSPECTION", traits: {"smithy.api#enumValue" => "ATP_RULE_SET_RESPONSE_INSPECTION"}))
    ParameterExceptionField.add_member(:associated_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSOCIATED_RESOURCE_TYPE", traits: {"smithy.api#enumValue" => "ASSOCIATED_RESOURCE_TYPE"}))
    ParameterExceptionField.add_member(:scope_down, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCOPE_DOWN", traits: {"smithy.api#enumValue" => "SCOPE_DOWN"}))
    ParameterExceptionField.add_member(:custom_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_KEYS", traits: {"smithy.api#enumValue" => "CUSTOM_KEYS"}))
    ParameterExceptionField.add_member(:acp_rule_set_response_inspection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACP_RULE_SET_RESPONSE_INSPECTION", traits: {"smithy.api#enumValue" => "ACP_RULE_SET_RESPONSE_INSPECTION"}))
    ParameterExceptionField.add_member(:data_protection_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA_PROTECTION_CONFIG", traits: {"smithy.api#enumValue" => "DATA_PROTECTION_CONFIG"}))
    ParameterExceptionField.add_member(:low_reputation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW_REPUTATION_MODE", traits: {"smithy.api#enumValue" => "LOW_REPUTATION_MODE"}))
    PasswordField.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    PasswordField.type = Types::PasswordField
    PayloadType.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    PayloadType.add_member(:form_encoded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FORM_ENCODED", traits: {"smithy.api#enumValue" => "FORM_ENCODED"}))
    PhoneNumberField.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    PhoneNumberField.type = Types::PhoneNumberField
    PhoneNumberFields.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberField, name: "member"))
    Platform.add_member(:ios, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IOS", traits: {"smithy.api#enumValue" => "IOS"}))
    Platform.add_member(:android, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANDROID", traits: {"smithy.api#enumValue" => "ANDROID"}))
    PositionalConstraint.add_member(:exactly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXACTLY", traits: {"smithy.api#enumValue" => "EXACTLY"}))
    PositionalConstraint.add_member(:starts_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTS_WITH", traits: {"smithy.api#enumValue" => "STARTS_WITH"}))
    PositionalConstraint.add_member(:ends_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENDS_WITH", traits: {"smithy.api#enumValue" => "ENDS_WITH"}))
    PositionalConstraint.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    PositionalConstraint.add_member(:contains_word, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS_WORD", traits: {"smithy.api#enumValue" => "CONTAINS_WORD"}))
    PublishedVersions.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionKeyString, name: "key"))
    PublishedVersions.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedRuleSetVersion, name: "value"))
    PutLoggingConfigurationRequest.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfiguration, name: "LoggingConfiguration", traits: {"smithy.api#required" => {}}))
    PutLoggingConfigurationRequest.type = Types::PutLoggingConfigurationRequest
    PutLoggingConfigurationResponse.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfiguration, name: "LoggingConfiguration"))
    PutLoggingConfigurationResponse.type = Types::PutLoggingConfigurationResponse
    PutManagedRuleSetVersionsRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name", traits: {"smithy.api#required" => {}}))
    PutManagedRuleSetVersionsRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    PutManagedRuleSetVersionsRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "Id", traits: {"smithy.api#required" => {}}))
    PutManagedRuleSetVersionsRequest.add_member(:lock_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LockToken, name: "LockToken", traits: {"smithy.api#required" => {}}))
    PutManagedRuleSetVersionsRequest.add_member(:recommended_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionKeyString, name: "RecommendedVersion"))
    PutManagedRuleSetVersionsRequest.add_member(:versions_to_publish, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionsToPublish, name: "VersionsToPublish"))
    PutManagedRuleSetVersionsRequest.type = Types::PutManagedRuleSetVersionsRequest
    PutManagedRuleSetVersionsResponse.add_member(:next_lock_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LockToken, name: "NextLockToken"))
    PutManagedRuleSetVersionsResponse.type = Types::PutManagedRuleSetVersionsResponse
    PutPermissionPolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    PutPermissionPolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyString, name: "Policy", traits: {"smithy.api#required" => {}}))
    PutPermissionPolicyRequest.type = Types::PutPermissionPolicyRequest
    PutPermissionPolicyResponse.type = Types::PutPermissionPolicyResponse
    QueryString.type = Types::QueryString
    RateBasedStatement.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: RateLimit, name: "Limit", traits: {"smithy.api#required" => {}}))
    RateBasedStatement.add_member(:evaluation_window_sec, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationWindowSec, name: "EvaluationWindowSec", traits: {"smithy.api#default" => 0}))
    RateBasedStatement.add_member(:aggregate_key_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RateBasedStatementAggregateKeyType, name: "AggregateKeyType", traits: {"smithy.api#required" => {}}))
    RateBasedStatement.add_member(:scope_down_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: Statement, name: "ScopeDownStatement"))
    RateBasedStatement.add_member(:forwarded_ip_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ForwardedIPConfig, name: "ForwardedIPConfig"))
    RateBasedStatement.add_member(:custom_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: RateBasedStatementCustomKeys, name: "CustomKeys"))
    RateBasedStatement.type = Types::RateBasedStatement
    RateBasedStatementAggregateKeyType.add_member(:ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IP", traits: {"smithy.api#enumValue" => "IP"}))
    RateBasedStatementAggregateKeyType.add_member(:forwarded_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FORWARDED_IP", traits: {"smithy.api#enumValue" => "FORWARDED_IP"}))
    RateBasedStatementAggregateKeyType.add_member(:custom_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_KEYS", traits: {"smithy.api#enumValue" => "CUSTOM_KEYS"}))
    RateBasedStatementAggregateKeyType.add_member(:constant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONSTANT", traits: {"smithy.api#enumValue" => "CONSTANT"}))
    RateBasedStatementCustomKey.add_member(:header, ::Smithy::Schema::Shapes::MemberShape.new(target: RateLimitHeader, name: "Header"))
    RateBasedStatementCustomKey.add_member(:cookie, ::Smithy::Schema::Shapes::MemberShape.new(target: RateLimitCookie, name: "Cookie"))
    RateBasedStatementCustomKey.add_member(:query_argument, ::Smithy::Schema::Shapes::MemberShape.new(target: RateLimitQueryArgument, name: "QueryArgument"))
    RateBasedStatementCustomKey.add_member(:query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: RateLimitQueryString, name: "QueryString"))
    RateBasedStatementCustomKey.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: RateLimitHTTPMethod, name: "HTTPMethod"))
    RateBasedStatementCustomKey.add_member(:forwarded_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: RateLimitForwardedIP, name: "ForwardedIP"))
    RateBasedStatementCustomKey.add_member(:ip, ::Smithy::Schema::Shapes::MemberShape.new(target: RateLimitIP, name: "IP"))
    RateBasedStatementCustomKey.add_member(:label_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: RateLimitLabelNamespace, name: "LabelNamespace"))
    RateBasedStatementCustomKey.add_member(:uri_path, ::Smithy::Schema::Shapes::MemberShape.new(target: RateLimitUriPath, name: "UriPath"))
    RateBasedStatementCustomKey.add_member(:ja3_fingerprint, ::Smithy::Schema::Shapes::MemberShape.new(target: RateLimitJA3Fingerprint, name: "JA3Fingerprint"))
    RateBasedStatementCustomKey.add_member(:ja4_fingerprint, ::Smithy::Schema::Shapes::MemberShape.new(target: RateLimitJA4Fingerprint, name: "JA4Fingerprint"))
    RateBasedStatementCustomKey.add_member(:asn, ::Smithy::Schema::Shapes::MemberShape.new(target: RateLimitAsn, name: "ASN"))
    RateBasedStatementCustomKey.type = Types::RateBasedStatementCustomKey
    RateBasedStatementCustomKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RateBasedStatementCustomKey, name: "member"))
    RateBasedStatementManagedKeysIPSet.add_member(:ip_address_version, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddressVersion, name: "IPAddressVersion"))
    RateBasedStatementManagedKeysIPSet.add_member(:addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddresses, name: "Addresses"))
    RateBasedStatementManagedKeysIPSet.type = Types::RateBasedStatementManagedKeysIPSet
    RateLimitAsn.type = Types::RateLimitAsn
    RateLimitCookie.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldToMatchData, name: "Name", traits: {"smithy.api#required" => {}}))
    RateLimitCookie.add_member(:text_transformations, ::Smithy::Schema::Shapes::MemberShape.new(target: TextTransformations, name: "TextTransformations", traits: {"smithy.api#required" => {}}))
    RateLimitCookie.type = Types::RateLimitCookie
    RateLimitForwardedIP.type = Types::RateLimitForwardedIP
    RateLimitHTTPMethod.type = Types::RateLimitHTTPMethod
    RateLimitHeader.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldToMatchData, name: "Name", traits: {"smithy.api#required" => {}}))
    RateLimitHeader.add_member(:text_transformations, ::Smithy::Schema::Shapes::MemberShape.new(target: TextTransformations, name: "TextTransformations", traits: {"smithy.api#required" => {}}))
    RateLimitHeader.type = Types::RateLimitHeader
    RateLimitIP.type = Types::RateLimitIP
    RateLimitJA3Fingerprint.add_member(:fallback_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: FallbackBehavior, name: "FallbackBehavior", traits: {"smithy.api#required" => {}}))
    RateLimitJA3Fingerprint.type = Types::RateLimitJA3Fingerprint
    RateLimitJA4Fingerprint.add_member(:fallback_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: FallbackBehavior, name: "FallbackBehavior", traits: {"smithy.api#required" => {}}))
    RateLimitJA4Fingerprint.type = Types::RateLimitJA4Fingerprint
    RateLimitLabelNamespace.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelNamespace, name: "Namespace", traits: {"smithy.api#required" => {}}))
    RateLimitLabelNamespace.type = Types::RateLimitLabelNamespace
    RateLimitQueryArgument.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldToMatchData, name: "Name", traits: {"smithy.api#required" => {}}))
    RateLimitQueryArgument.add_member(:text_transformations, ::Smithy::Schema::Shapes::MemberShape.new(target: TextTransformations, name: "TextTransformations", traits: {"smithy.api#required" => {}}))
    RateLimitQueryArgument.type = Types::RateLimitQueryArgument
    RateLimitQueryString.add_member(:text_transformations, ::Smithy::Schema::Shapes::MemberShape.new(target: TextTransformations, name: "TextTransformations", traits: {"smithy.api#required" => {}}))
    RateLimitQueryString.type = Types::RateLimitQueryString
    RateLimitUriPath.add_member(:text_transformations, ::Smithy::Schema::Shapes::MemberShape.new(target: TextTransformations, name: "TextTransformations", traits: {"smithy.api#required" => {}}))
    RateLimitUriPath.type = Types::RateLimitUriPath
    RedactedFields.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldToMatch, name: "member"))
    Regex.add_member(:regex_string, ::Smithy::Schema::Shapes::MemberShape.new(target: RegexPatternString, name: "RegexString"))
    Regex.type = Types::Regex
    RegexMatchStatement.add_member(:regex_string, ::Smithy::Schema::Shapes::MemberShape.new(target: RegexPatternString, name: "RegexString", traits: {"smithy.api#required" => {}}))
    RegexMatchStatement.add_member(:field_to_match, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldToMatch, name: "FieldToMatch", traits: {"smithy.api#required" => {}}))
    RegexMatchStatement.add_member(:text_transformations, ::Smithy::Schema::Shapes::MemberShape.new(target: TextTransformations, name: "TextTransformations", traits: {"smithy.api#required" => {}}))
    RegexMatchStatement.type = Types::RegexMatchStatement
    RegexPatternSet.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name"))
    RegexPatternSet.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "Id"))
    RegexPatternSet.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ARN"))
    RegexPatternSet.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "Description"))
    RegexPatternSet.add_member(:regular_expression_list, ::Smithy::Schema::Shapes::MemberShape.new(target: RegularExpressionList, name: "RegularExpressionList"))
    RegexPatternSet.type = Types::RegexPatternSet
    RegexPatternSetReferenceStatement.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ARN", traits: {"smithy.api#required" => {}}))
    RegexPatternSetReferenceStatement.add_member(:field_to_match, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldToMatch, name: "FieldToMatch", traits: {"smithy.api#required" => {}}))
    RegexPatternSetReferenceStatement.add_member(:text_transformations, ::Smithy::Schema::Shapes::MemberShape.new(target: TextTransformations, name: "TextTransformations", traits: {"smithy.api#required" => {}}))
    RegexPatternSetReferenceStatement.type = Types::RegexPatternSetReferenceStatement
    RegexPatternSetSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegexPatternSetSummary, name: "member"))
    RegexPatternSetSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name"))
    RegexPatternSetSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "Id"))
    RegexPatternSetSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "Description"))
    RegexPatternSetSummary.add_member(:lock_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LockToken, name: "LockToken"))
    RegexPatternSetSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ARN"))
    RegexPatternSetSummary.type = Types::RegexPatternSetSummary
    RegularExpressionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Regex, name: "member"))
    ReleaseSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReleaseSummary, name: "member"))
    ReleaseSummary.add_member(:release_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionKeyString, name: "ReleaseVersion"))
    ReleaseSummary.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp"))
    ReleaseSummary.type = Types::ReleaseSummary
    RequestBody.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedResourceType, name: "key"))
    RequestBody.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestBodyAssociatedResourceTypeConfig, name: "value"))
    RequestBodyAssociatedResourceTypeConfig.add_member(:default_size_inspection_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: SizeInspectionLimit, name: "DefaultSizeInspectionLimit", traits: {"smithy.api#required" => {}}))
    RequestBodyAssociatedResourceTypeConfig.type = Types::RequestBodyAssociatedResourceTypeConfig
    RequestInspection.add_member(:payload_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PayloadType, name: "PayloadType", traits: {"smithy.api#required" => {}}))
    RequestInspection.add_member(:username_field, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameField, name: "UsernameField", traits: {"smithy.api#required" => {}}))
    RequestInspection.add_member(:password_field, ::Smithy::Schema::Shapes::MemberShape.new(target: PasswordField, name: "PasswordField", traits: {"smithy.api#required" => {}}))
    RequestInspection.type = Types::RequestInspection
    RequestInspectionACFP.add_member(:payload_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PayloadType, name: "PayloadType", traits: {"smithy.api#required" => {}}))
    RequestInspectionACFP.add_member(:username_field, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameField, name: "UsernameField"))
    RequestInspectionACFP.add_member(:password_field, ::Smithy::Schema::Shapes::MemberShape.new(target: PasswordField, name: "PasswordField"))
    RequestInspectionACFP.add_member(:email_field, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailField, name: "EmailField"))
    RequestInspectionACFP.add_member(:phone_number_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberFields, name: "PhoneNumberFields"))
    RequestInspectionACFP.add_member(:address_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressFields, name: "AddressFields"))
    RequestInspectionACFP.type = Types::RequestInspectionACFP
    ResourceArns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "member"))
    ResourceType.add_member(:application_load_balancer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPLICATION_LOAD_BALANCER", traits: {"smithy.api#enumValue" => "APPLICATION_LOAD_BALANCER"}))
    ResourceType.add_member(:api_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "API_GATEWAY", traits: {"smithy.api#enumValue" => "API_GATEWAY"}))
    ResourceType.add_member(:appsync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPSYNC", traits: {"smithy.api#enumValue" => "APPSYNC"}))
    ResourceType.add_member(:cognitio_user_pool, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COGNITIO_USER_POOL", traits: {"smithy.api#enumValue" => "COGNITO_USER_POOL"}))
    ResourceType.add_member(:app_runner_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APP_RUNNER_SERVICE", traits: {"smithy.api#enumValue" => "APP_RUNNER_SERVICE"}))
    ResourceType.add_member(:verified_access_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERIFIED_ACCESS_INSTANCE", traits: {"smithy.api#enumValue" => "VERIFIED_ACCESS_INSTANCE"}))
    ResourceType.add_member(:amplify, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMPLIFY", traits: {"smithy.api#enumValue" => "AMPLIFY"}))
    ResponseContentType.add_member(:text_plain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXT_PLAIN", traits: {"smithy.api#enumValue" => "TEXT_PLAIN"}))
    ResponseContentType.add_member(:text_html, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXT_HTML", traits: {"smithy.api#enumValue" => "TEXT_HTML"}))
    ResponseContentType.add_member(:application_json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPLICATION_JSON", traits: {"smithy.api#enumValue" => "APPLICATION_JSON"}))
    ResponseInspection.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseInspectionStatusCode, name: "StatusCode"))
    ResponseInspection.add_member(:header, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseInspectionHeader, name: "Header"))
    ResponseInspection.add_member(:body_contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseInspectionBodyContains, name: "BodyContains"))
    ResponseInspection.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseInspectionJson, name: "Json"))
    ResponseInspection.type = Types::ResponseInspection
    ResponseInspectionBodyContains.add_member(:success_strings, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseInspectionBodyContainsSuccessStrings, name: "SuccessStrings", traits: {"smithy.api#required" => {}}))
    ResponseInspectionBodyContains.add_member(:failure_strings, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseInspectionBodyContainsFailureStrings, name: "FailureStrings", traits: {"smithy.api#required" => {}}))
    ResponseInspectionBodyContains.type = Types::ResponseInspectionBodyContains
    ResponseInspectionBodyContainsFailureStrings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureValue, name: "member"))
    ResponseInspectionBodyContainsSuccessStrings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessValue, name: "member"))
    ResponseInspectionHeader.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseInspectionHeaderName, name: "Name", traits: {"smithy.api#required" => {}}))
    ResponseInspectionHeader.add_member(:success_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseInspectionHeaderSuccessValues, name: "SuccessValues", traits: {"smithy.api#required" => {}}))
    ResponseInspectionHeader.add_member(:failure_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseInspectionHeaderFailureValues, name: "FailureValues", traits: {"smithy.api#required" => {}}))
    ResponseInspectionHeader.type = Types::ResponseInspectionHeader
    ResponseInspectionHeaderFailureValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureValue, name: "member"))
    ResponseInspectionHeaderSuccessValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessValue, name: "member"))
    ResponseInspectionJson.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    ResponseInspectionJson.add_member(:success_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseInspectionJsonSuccessValues, name: "SuccessValues", traits: {"smithy.api#required" => {}}))
    ResponseInspectionJson.add_member(:failure_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseInspectionJsonFailureValues, name: "FailureValues", traits: {"smithy.api#required" => {}}))
    ResponseInspectionJson.type = Types::ResponseInspectionJson
    ResponseInspectionJsonFailureValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureValue, name: "member"))
    ResponseInspectionJsonSuccessValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessValue, name: "member"))
    ResponseInspectionStatusCode.add_member(:success_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseInspectionStatusCodeSuccessCodes, name: "SuccessCodes", traits: {"smithy.api#required" => {}}))
    ResponseInspectionStatusCode.add_member(:failure_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseInspectionStatusCodeFailureCodes, name: "FailureCodes", traits: {"smithy.api#required" => {}}))
    ResponseInspectionStatusCode.type = Types::ResponseInspectionStatusCode
    ResponseInspectionStatusCodeFailureCodes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureCode, name: "member"))
    ResponseInspectionStatusCodeSuccessCodes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessCode, name: "member"))
    Rule.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name", traits: {"smithy.api#required" => {}}))
    Rule.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: RulePriority, name: "Priority", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    Rule.add_member(:statement, ::Smithy::Schema::Shapes::MemberShape.new(target: Statement, name: "Statement", traits: {"smithy.api#required" => {}}))
    Rule.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleAction, name: "Action"))
    Rule.add_member(:override_action, ::Smithy::Schema::Shapes::MemberShape.new(target: OverrideAction, name: "OverrideAction"))
    Rule.add_member(:rule_labels, ::Smithy::Schema::Shapes::MemberShape.new(target: Labels, name: "RuleLabels"))
    Rule.add_member(:visibility_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VisibilityConfig, name: "VisibilityConfig", traits: {"smithy.api#required" => {}}))
    Rule.add_member(:captcha_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CaptchaConfig, name: "CaptchaConfig"))
    Rule.add_member(:challenge_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ChallengeConfig, name: "ChallengeConfig"))
    Rule.type = Types::Rule
    RuleAction.add_member(:block, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockAction, name: "Block"))
    RuleAction.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowAction, name: "Allow"))
    RuleAction.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: CountAction, name: "Count"))
    RuleAction.add_member(:captcha, ::Smithy::Schema::Shapes::MemberShape.new(target: CaptchaAction, name: "Captcha"))
    RuleAction.add_member(:challenge, ::Smithy::Schema::Shapes::MemberShape.new(target: ChallengeAction, name: "Challenge"))
    RuleAction.type = Types::RuleAction
    RuleActionOverride.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name", traits: {"smithy.api#required" => {}}))
    RuleActionOverride.add_member(:action_to_use, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleAction, name: "ActionToUse", traits: {"smithy.api#required" => {}}))
    RuleActionOverride.type = Types::RuleActionOverride
    RuleActionOverrides.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleActionOverride, name: "member"))
    RuleGroup.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name", traits: {"smithy.api#required" => {}}))
    RuleGroup.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "Id", traits: {"smithy.api#required" => {}}))
    RuleGroup.add_member(:capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityUnit, name: "Capacity", traits: {"smithy.api#required" => {}}))
    RuleGroup.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ARN", traits: {"smithy.api#required" => {}}))
    RuleGroup.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "Description"))
    RuleGroup.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: Rules, name: "Rules"))
    RuleGroup.add_member(:visibility_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VisibilityConfig, name: "VisibilityConfig", traits: {"smithy.api#required" => {}}))
    RuleGroup.add_member(:label_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelName, name: "LabelNamespace"))
    RuleGroup.add_member(:custom_response_bodies, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomResponseBodies, name: "CustomResponseBodies"))
    RuleGroup.add_member(:available_labels, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelSummaries, name: "AvailableLabels"))
    RuleGroup.add_member(:consumed_labels, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelSummaries, name: "ConsumedLabels"))
    RuleGroup.type = Types::RuleGroup
    RuleGroupReferenceStatement.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ARN", traits: {"smithy.api#required" => {}}))
    RuleGroupReferenceStatement.add_member(:excluded_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludedRules, name: "ExcludedRules"))
    RuleGroupReferenceStatement.add_member(:rule_action_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleActionOverrides, name: "RuleActionOverrides"))
    RuleGroupReferenceStatement.type = Types::RuleGroupReferenceStatement
    RuleGroupSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroupSummary, name: "member"))
    RuleGroupSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name"))
    RuleGroupSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "Id"))
    RuleGroupSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "Description"))
    RuleGroupSummary.add_member(:lock_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LockToken, name: "LockToken"))
    RuleGroupSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ARN"))
    RuleGroupSummary.type = Types::RuleGroupSummary
    RuleSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSummary, name: "member"))
    RuleSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name"))
    RuleSummary.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleAction, name: "Action"))
    RuleSummary.type = Types::RuleSummary
    Rules.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Rule, name: "member"))
    SampledHTTPRequest.add_member(:request, ::Smithy::Schema::Shapes::MemberShape.new(target: HTTPRequest, name: "Request", traits: {"smithy.api#required" => {}}))
    SampledHTTPRequest.add_member(:weight, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleWeight, name: "Weight", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SampledHTTPRequest.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp"))
    SampledHTTPRequest.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "Action"))
    SampledHTTPRequest.add_member(:rule_name_within_rule_group, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "RuleNameWithinRuleGroup"))
    SampledHTTPRequest.add_member(:request_headers_inserted, ::Smithy::Schema::Shapes::MemberShape.new(target: HTTPHeaders, name: "RequestHeadersInserted"))
    SampledHTTPRequest.add_member(:response_code_sent, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseStatusCode, name: "ResponseCodeSent"))
    SampledHTTPRequest.add_member(:labels, ::Smithy::Schema::Shapes::MemberShape.new(target: Labels, name: "Labels"))
    SampledHTTPRequest.add_member(:captcha_response, ::Smithy::Schema::Shapes::MemberShape.new(target: CaptchaResponse, name: "CaptchaResponse"))
    SampledHTTPRequest.add_member(:challenge_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ChallengeResponse, name: "ChallengeResponse"))
    SampledHTTPRequest.add_member(:overridden_action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "OverriddenAction"))
    SampledHTTPRequest.type = Types::SampledHTTPRequest
    SampledHTTPRequests.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SampledHTTPRequest, name: "member"))
    Scope.add_member(:cloudfront, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUDFRONT", traits: {"smithy.api#enumValue" => "CLOUDFRONT"}))
    Scope.add_member(:regional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGIONAL", traits: {"smithy.api#enumValue" => "REGIONAL"}))
    SensitivityLevel.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    SensitivityLevel.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    SensitivityToAct.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    SensitivityToAct.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    SensitivityToAct.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    SingleHeader.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldToMatchData, name: "Name", traits: {"smithy.api#required" => {}}))
    SingleHeader.type = Types::SingleHeader
    SingleQueryArgument.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldToMatchData, name: "Name", traits: {"smithy.api#required" => {}}))
    SingleQueryArgument.type = Types::SingleQueryArgument
    SizeConstraintStatement.add_member(:field_to_match, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldToMatch, name: "FieldToMatch", traits: {"smithy.api#required" => {}}))
    SizeConstraintStatement.add_member(:comparison_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparisonOperator, name: "ComparisonOperator", traits: {"smithy.api#required" => {}}))
    SizeConstraintStatement.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: Size, name: "Size", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SizeConstraintStatement.add_member(:text_transformations, ::Smithy::Schema::Shapes::MemberShape.new(target: TextTransformations, name: "TextTransformations", traits: {"smithy.api#required" => {}}))
    SizeConstraintStatement.type = Types::SizeConstraintStatement
    SizeInspectionLimit.add_member(:kb_16, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KB_16", traits: {"smithy.api#enumValue" => "KB_16"}))
    SizeInspectionLimit.add_member(:kb_32, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KB_32", traits: {"smithy.api#enumValue" => "KB_32"}))
    SizeInspectionLimit.add_member(:kb_48, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KB_48", traits: {"smithy.api#enumValue" => "KB_48"}))
    SizeInspectionLimit.add_member(:kb_64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KB_64", traits: {"smithy.api#enumValue" => "KB_64"}))
    SqliMatchStatement.add_member(:field_to_match, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldToMatch, name: "FieldToMatch", traits: {"smithy.api#required" => {}}))
    SqliMatchStatement.add_member(:text_transformations, ::Smithy::Schema::Shapes::MemberShape.new(target: TextTransformations, name: "TextTransformations", traits: {"smithy.api#required" => {}}))
    SqliMatchStatement.add_member(:sensitivity_level, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitivityLevel, name: "SensitivityLevel"))
    SqliMatchStatement.type = Types::SqliMatchStatement
    Statement.add_member(:byte_match_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: ByteMatchStatement, name: "ByteMatchStatement"))
    Statement.add_member(:sqli_match_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: SqliMatchStatement, name: "SqliMatchStatement"))
    Statement.add_member(:xss_match_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: XssMatchStatement, name: "XssMatchStatement"))
    Statement.add_member(:size_constraint_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: SizeConstraintStatement, name: "SizeConstraintStatement"))
    Statement.add_member(:geo_match_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: GeoMatchStatement, name: "GeoMatchStatement"))
    Statement.add_member(:rule_group_reference_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroupReferenceStatement, name: "RuleGroupReferenceStatement"))
    Statement.add_member(:ip_set_reference_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: IPSetReferenceStatement, name: "IPSetReferenceStatement"))
    Statement.add_member(:regex_pattern_set_reference_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: RegexPatternSetReferenceStatement, name: "RegexPatternSetReferenceStatement"))
    Statement.add_member(:rate_based_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: RateBasedStatement, name: "RateBasedStatement"))
    Statement.add_member(:and_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: AndStatement, name: "AndStatement"))
    Statement.add_member(:or_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: OrStatement, name: "OrStatement"))
    Statement.add_member(:not_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: NotStatement, name: "NotStatement"))
    Statement.add_member(:managed_rule_group_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedRuleGroupStatement, name: "ManagedRuleGroupStatement"))
    Statement.add_member(:label_match_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelMatchStatement, name: "LabelMatchStatement"))
    Statement.add_member(:regex_match_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: RegexMatchStatement, name: "RegexMatchStatement"))
    Statement.add_member(:asn_match_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: AsnMatchStatement, name: "AsnMatchStatement"))
    Statement.type = Types::Statement
    Statements.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Statement, name: "member"))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagInfoForResource.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceARN"))
    TagInfoForResource.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    TagInfoForResource.type = Types::TagInfoForResource
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TextTransformation.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: TextTransformationPriority, name: "Priority", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    TextTransformation.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TextTransformationType, name: "Type", traits: {"smithy.api#required" => {}}))
    TextTransformation.type = Types::TextTransformation
    TextTransformationType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    TextTransformationType.add_member(:compress_white_space, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPRESS_WHITE_SPACE", traits: {"smithy.api#enumValue" => "COMPRESS_WHITE_SPACE"}))
    TextTransformationType.add_member(:html_entity_decode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTML_ENTITY_DECODE", traits: {"smithy.api#enumValue" => "HTML_ENTITY_DECODE"}))
    TextTransformationType.add_member(:lowercase, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOWERCASE", traits: {"smithy.api#enumValue" => "LOWERCASE"}))
    TextTransformationType.add_member(:cmd_line, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CMD_LINE", traits: {"smithy.api#enumValue" => "CMD_LINE"}))
    TextTransformationType.add_member(:url_decode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "URL_DECODE", traits: {"smithy.api#enumValue" => "URL_DECODE"}))
    TextTransformationType.add_member(:base64_decode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASE64_DECODE", traits: {"smithy.api#enumValue" => "BASE64_DECODE"}))
    TextTransformationType.add_member(:hex_decode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEX_DECODE", traits: {"smithy.api#enumValue" => "HEX_DECODE"}))
    TextTransformationType.add_member(:md5, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MD5", traits: {"smithy.api#enumValue" => "MD5"}))
    TextTransformationType.add_member(:replace_comments, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLACE_COMMENTS", traits: {"smithy.api#enumValue" => "REPLACE_COMMENTS"}))
    TextTransformationType.add_member(:escape_seq_decode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ESCAPE_SEQ_DECODE", traits: {"smithy.api#enumValue" => "ESCAPE_SEQ_DECODE"}))
    TextTransformationType.add_member(:sql_hex_decode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SQL_HEX_DECODE", traits: {"smithy.api#enumValue" => "SQL_HEX_DECODE"}))
    TextTransformationType.add_member(:css_decode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CSS_DECODE", traits: {"smithy.api#enumValue" => "CSS_DECODE"}))
    TextTransformationType.add_member(:js_decode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JS_DECODE", traits: {"smithy.api#enumValue" => "JS_DECODE"}))
    TextTransformationType.add_member(:normalize_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NORMALIZE_PATH", traits: {"smithy.api#enumValue" => "NORMALIZE_PATH"}))
    TextTransformationType.add_member(:normalize_path_win, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NORMALIZE_PATH_WIN", traits: {"smithy.api#enumValue" => "NORMALIZE_PATH_WIN"}))
    TextTransformationType.add_member(:remove_nulls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOVE_NULLS", traits: {"smithy.api#enumValue" => "REMOVE_NULLS"}))
    TextTransformationType.add_member(:replace_nulls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLACE_NULLS", traits: {"smithy.api#enumValue" => "REPLACE_NULLS"}))
    TextTransformationType.add_member(:base64_decode_ext, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASE64_DECODE_EXT", traits: {"smithy.api#enumValue" => "BASE64_DECODE_EXT"}))
    TextTransformationType.add_member(:url_decode_uni, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "URL_DECODE_UNI", traits: {"smithy.api#enumValue" => "URL_DECODE_UNI"}))
    TextTransformationType.add_member(:utf8_to_unicode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTF8_TO_UNICODE", traits: {"smithy.api#enumValue" => "UTF8_TO_UNICODE"}))
    TextTransformations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TextTransformation, name: "member"))
    TimeWindow.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime", traits: {"smithy.api#required" => {}}))
    TimeWindow.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime", traits: {"smithy.api#required" => {}}))
    TimeWindow.type = Types::TimeWindow
    TokenDomains.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenDomain, name: "member"))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateIPSetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateIPSetRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    UpdateIPSetRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "Id", traits: {"smithy.api#required" => {}}))
    UpdateIPSetRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "Description"))
    UpdateIPSetRequest.add_member(:addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddresses, name: "Addresses", traits: {"smithy.api#required" => {}}))
    UpdateIPSetRequest.add_member(:lock_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LockToken, name: "LockToken", traits: {"smithy.api#required" => {}}))
    UpdateIPSetRequest.type = Types::UpdateIPSetRequest
    UpdateIPSetResponse.add_member(:next_lock_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LockToken, name: "NextLockToken"))
    UpdateIPSetResponse.type = Types::UpdateIPSetResponse
    UpdateManagedRuleSetVersionExpiryDateRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateManagedRuleSetVersionExpiryDateRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    UpdateManagedRuleSetVersionExpiryDateRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "Id", traits: {"smithy.api#required" => {}}))
    UpdateManagedRuleSetVersionExpiryDateRequest.add_member(:lock_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LockToken, name: "LockToken", traits: {"smithy.api#required" => {}}))
    UpdateManagedRuleSetVersionExpiryDateRequest.add_member(:version_to_expire, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionKeyString, name: "VersionToExpire", traits: {"smithy.api#required" => {}}))
    UpdateManagedRuleSetVersionExpiryDateRequest.add_member(:expiry_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ExpiryTimestamp", traits: {"smithy.api#required" => {}}))
    UpdateManagedRuleSetVersionExpiryDateRequest.type = Types::UpdateManagedRuleSetVersionExpiryDateRequest
    UpdateManagedRuleSetVersionExpiryDateResponse.add_member(:expiring_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionKeyString, name: "ExpiringVersion"))
    UpdateManagedRuleSetVersionExpiryDateResponse.add_member(:expiry_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ExpiryTimestamp"))
    UpdateManagedRuleSetVersionExpiryDateResponse.add_member(:next_lock_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LockToken, name: "NextLockToken"))
    UpdateManagedRuleSetVersionExpiryDateResponse.type = Types::UpdateManagedRuleSetVersionExpiryDateResponse
    UpdateRegexPatternSetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateRegexPatternSetRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    UpdateRegexPatternSetRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "Id", traits: {"smithy.api#required" => {}}))
    UpdateRegexPatternSetRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "Description"))
    UpdateRegexPatternSetRequest.add_member(:regular_expression_list, ::Smithy::Schema::Shapes::MemberShape.new(target: RegularExpressionList, name: "RegularExpressionList", traits: {"smithy.api#required" => {}}))
    UpdateRegexPatternSetRequest.add_member(:lock_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LockToken, name: "LockToken", traits: {"smithy.api#required" => {}}))
    UpdateRegexPatternSetRequest.type = Types::UpdateRegexPatternSetRequest
    UpdateRegexPatternSetResponse.add_member(:next_lock_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LockToken, name: "NextLockToken"))
    UpdateRegexPatternSetResponse.type = Types::UpdateRegexPatternSetResponse
    UpdateRuleGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateRuleGroupRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    UpdateRuleGroupRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "Id", traits: {"smithy.api#required" => {}}))
    UpdateRuleGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "Description"))
    UpdateRuleGroupRequest.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: Rules, name: "Rules"))
    UpdateRuleGroupRequest.add_member(:visibility_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VisibilityConfig, name: "VisibilityConfig", traits: {"smithy.api#required" => {}}))
    UpdateRuleGroupRequest.add_member(:lock_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LockToken, name: "LockToken", traits: {"smithy.api#required" => {}}))
    UpdateRuleGroupRequest.add_member(:custom_response_bodies, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomResponseBodies, name: "CustomResponseBodies"))
    UpdateRuleGroupRequest.type = Types::UpdateRuleGroupRequest
    UpdateRuleGroupResponse.add_member(:next_lock_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LockToken, name: "NextLockToken"))
    UpdateRuleGroupResponse.type = Types::UpdateRuleGroupResponse
    UpdateWebACLRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateWebACLRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    UpdateWebACLRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "Id", traits: {"smithy.api#required" => {}}))
    UpdateWebACLRequest.add_member(:default_action, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultAction, name: "DefaultAction", traits: {"smithy.api#required" => {}}))
    UpdateWebACLRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "Description"))
    UpdateWebACLRequest.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: Rules, name: "Rules"))
    UpdateWebACLRequest.add_member(:visibility_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VisibilityConfig, name: "VisibilityConfig", traits: {"smithy.api#required" => {}}))
    UpdateWebACLRequest.add_member(:data_protection_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProtectionConfig, name: "DataProtectionConfig"))
    UpdateWebACLRequest.add_member(:lock_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LockToken, name: "LockToken", traits: {"smithy.api#required" => {}}))
    UpdateWebACLRequest.add_member(:custom_response_bodies, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomResponseBodies, name: "CustomResponseBodies"))
    UpdateWebACLRequest.add_member(:captcha_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CaptchaConfig, name: "CaptchaConfig"))
    UpdateWebACLRequest.add_member(:challenge_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ChallengeConfig, name: "ChallengeConfig"))
    UpdateWebACLRequest.add_member(:token_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenDomains, name: "TokenDomains"))
    UpdateWebACLRequest.add_member(:association_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationConfig, name: "AssociationConfig"))
    UpdateWebACLRequest.add_member(:on_source_d_do_s_protection_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OnSourceDDoSProtectionConfig, name: "OnSourceDDoSProtectionConfig"))
    UpdateWebACLRequest.add_member(:application_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationConfig, name: "ApplicationConfig"))
    UpdateWebACLRequest.type = Types::UpdateWebACLRequest
    UpdateWebACLResponse.add_member(:next_lock_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LockToken, name: "NextLockToken"))
    UpdateWebACLResponse.type = Types::UpdateWebACLResponse
    UriFragment.add_member(:fallback_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: FallbackBehavior, name: "FallbackBehavior"))
    UriFragment.type = Types::UriFragment
    UriPath.type = Types::UriPath
    UsageOfAction.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    UsageOfAction.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    UsernameField.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    UsernameField.type = Types::UsernameField
    VersionToPublish.add_member(:associated_rule_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "AssociatedRuleGroupArn"))
    VersionToPublish.add_member(:forecasted_lifetime, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeWindowDay, name: "ForecastedLifetime"))
    VersionToPublish.type = Types::VersionToPublish
    VersionsToPublish.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionKeyString, name: "key"))
    VersionsToPublish.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionToPublish, name: "value"))
    VisibilityConfig.add_member(:sampled_requests_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SampledRequestsEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    VisibilityConfig.add_member(:cloud_watch_metrics_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CloudWatchMetricsEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    VisibilityConfig.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName", traits: {"smithy.api#required" => {}}))
    VisibilityConfig.type = Types::VisibilityConfig
    WAFAssociatedItemException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    WAFAssociatedItemException.type = Types::WAFAssociatedItemException
    WAFConfigurationWarningException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    WAFConfigurationWarningException.type = Types::WAFConfigurationWarningException
    WAFDuplicateItemException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    WAFDuplicateItemException.type = Types::WAFDuplicateItemException
    WAFExpiredManagedRuleGroupVersionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    WAFExpiredManagedRuleGroupVersionException.type = Types::WAFExpiredManagedRuleGroupVersionException
    WAFInternalErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    WAFInternalErrorException.type = Types::WAFInternalErrorException
    WAFInvalidOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    WAFInvalidOperationException.type = Types::WAFInvalidOperationException
    WAFInvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    WAFInvalidParameterException.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterExceptionField, name: "Field"))
    WAFInvalidParameterException.add_member(:parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterExceptionParameter, name: "Parameter"))
    WAFInvalidParameterException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorReason, name: "Reason"))
    WAFInvalidParameterException.type = Types::WAFInvalidParameterException
    WAFInvalidPermissionPolicyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    WAFInvalidPermissionPolicyException.type = Types::WAFInvalidPermissionPolicyException
    WAFInvalidResourceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    WAFInvalidResourceException.type = Types::WAFInvalidResourceException
    WAFLimitsExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    WAFLimitsExceededException.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, name: "SourceType"))
    WAFLimitsExceededException.type = Types::WAFLimitsExceededException
    WAFLogDestinationPermissionIssueException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    WAFLogDestinationPermissionIssueException.type = Types::WAFLogDestinationPermissionIssueException
    WAFNonexistentItemException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    WAFNonexistentItemException.type = Types::WAFNonexistentItemException
    WAFOptimisticLockException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    WAFOptimisticLockException.type = Types::WAFOptimisticLockException
    WAFServiceLinkedRoleErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    WAFServiceLinkedRoleErrorException.type = Types::WAFServiceLinkedRoleErrorException
    WAFSubscriptionNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    WAFSubscriptionNotFoundException.type = Types::WAFSubscriptionNotFoundException
    WAFTagOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    WAFTagOperationException.type = Types::WAFTagOperationException
    WAFTagOperationInternalErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    WAFTagOperationInternalErrorException.type = Types::WAFTagOperationInternalErrorException
    WAFUnavailableEntityException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    WAFUnavailableEntityException.type = Types::WAFUnavailableEntityException
    WAFUnsupportedAggregateKeyTypeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    WAFUnsupportedAggregateKeyTypeException.type = Types::WAFUnsupportedAggregateKeyTypeException
    WebACL.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name", traits: {"smithy.api#required" => {}}))
    WebACL.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "Id", traits: {"smithy.api#required" => {}}))
    WebACL.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ARN", traits: {"smithy.api#required" => {}}))
    WebACL.add_member(:default_action, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultAction, name: "DefaultAction", traits: {"smithy.api#required" => {}}))
    WebACL.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "Description"))
    WebACL.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: Rules, name: "Rules"))
    WebACL.add_member(:visibility_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VisibilityConfig, name: "VisibilityConfig", traits: {"smithy.api#required" => {}}))
    WebACL.add_member(:data_protection_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProtectionConfig, name: "DataProtectionConfig"))
    WebACL.add_member(:capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedCapacity, name: "Capacity", traits: {"smithy.api#default" => 0}))
    WebACL.add_member(:pre_process_firewall_manager_rule_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallManagerRuleGroups, name: "PreProcessFirewallManagerRuleGroups"))
    WebACL.add_member(:post_process_firewall_manager_rule_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallManagerRuleGroups, name: "PostProcessFirewallManagerRuleGroups"))
    WebACL.add_member(:managed_by_firewall_manager, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ManagedByFirewallManager", traits: {"smithy.api#default" => false}))
    WebACL.add_member(:label_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelName, name: "LabelNamespace"))
    WebACL.add_member(:custom_response_bodies, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomResponseBodies, name: "CustomResponseBodies"))
    WebACL.add_member(:captcha_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CaptchaConfig, name: "CaptchaConfig"))
    WebACL.add_member(:challenge_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ChallengeConfig, name: "ChallengeConfig"))
    WebACL.add_member(:token_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenDomains, name: "TokenDomains"))
    WebACL.add_member(:association_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationConfig, name: "AssociationConfig"))
    WebACL.add_member(:retrofitted_by_firewall_manager, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "RetrofittedByFirewallManager", traits: {"smithy.api#default" => false}))
    WebACL.add_member(:on_source_d_do_s_protection_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OnSourceDDoSProtectionConfig, name: "OnSourceDDoSProtectionConfig"))
    WebACL.add_member(:application_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationConfig, name: "ApplicationConfig"))
    WebACL.type = Types::WebACL
    WebACLSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WebACLSummary, name: "member"))
    WebACLSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "Name"))
    WebACLSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "Id"))
    WebACLSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "Description"))
    WebACLSummary.add_member(:lock_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LockToken, name: "LockToken"))
    WebACLSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ARN"))
    WebACLSummary.type = Types::WebACLSummary
    XssMatchStatement.add_member(:field_to_match, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldToMatch, name: "FieldToMatch", traits: {"smithy.api#required" => {}}))
    XssMatchStatement.add_member(:text_transformations, ::Smithy::Schema::Shapes::MemberShape.new(target: TextTransformations, name: "TextTransformations", traits: {"smithy.api#required" => {}}))
    XssMatchStatement.type = Types::XssMatchStatement

    AWSWAF20190729 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.wafv2#AWSWAF_20190729"
      service.name = "AWSWAF20190729"
      service.version = "2019-07-29"
      service.traits = {"aws.api#service" => {"sdkId" => "WAFV2", "arnNamespace" => "wafv2", "cloudFormationName" => "WAFv2", "cloudTrailEventSource" => "wafv2.amazonaws.com", "endpointPrefix" => "wafv2"}, "aws.auth#sigv4" => {"name" => "wafv2"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS WAFV2", "smithy.api#xmlNamespace" => {"uri" => "http://waf.amazonaws.com/doc/2019-07-29/"}}
      service.add_operation(:associate_web_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#AssociateWebACL"
        operation.name = "AssociateWebACL"
        operation.input = AssociateWebACLRequest
        operation.output = AssociateWebACLResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFUnavailableEntityException
        operation.traits = {}
      end)
      service.add_operation(:check_capacity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#CheckCapacity"
        operation.name = "CheckCapacity"
        operation.input = CheckCapacityRequest
        operation.output = CheckCapacityResponse
        operation.errors << WAFExpiredManagedRuleGroupVersionException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFInvalidResourceException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFSubscriptionNotFoundException
        operation.errors << WAFUnavailableEntityException
        operation.traits = {}
      end)
      service.add_operation(:create_api_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#CreateAPIKey"
        operation.name = "CreateAPIKey"
        operation.input = CreateAPIKeyRequest
        operation.output = CreateAPIKeyResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.traits = {}
      end)
      service.add_operation(:create_ip_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#CreateIPSet"
        operation.name = "CreateIPSet"
        operation.input = CreateIPSetRequest
        operation.output = CreateIPSetResponse
        operation.errors << WAFDuplicateItemException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFOptimisticLockException
        operation.errors << WAFTagOperationException
        operation.errors << WAFTagOperationInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:create_regex_pattern_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#CreateRegexPatternSet"
        operation.name = "CreateRegexPatternSet"
        operation.input = CreateRegexPatternSetRequest
        operation.output = CreateRegexPatternSetResponse
        operation.errors << WAFDuplicateItemException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFOptimisticLockException
        operation.errors << WAFTagOperationException
        operation.errors << WAFTagOperationInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:create_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#CreateRuleGroup"
        operation.name = "CreateRuleGroup"
        operation.input = CreateRuleGroupRequest
        operation.output = CreateRuleGroupResponse
        operation.errors << WAFDuplicateItemException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFOptimisticLockException
        operation.errors << WAFSubscriptionNotFoundException
        operation.errors << WAFTagOperationException
        operation.errors << WAFTagOperationInternalErrorException
        operation.errors << WAFUnavailableEntityException
        operation.traits = {}
      end)
      service.add_operation(:create_web_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#CreateWebACL"
        operation.name = "CreateWebACL"
        operation.input = CreateWebACLRequest
        operation.output = CreateWebACLResponse
        operation.errors << WAFConfigurationWarningException
        operation.errors << WAFDuplicateItemException
        operation.errors << WAFExpiredManagedRuleGroupVersionException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFInvalidResourceException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFOptimisticLockException
        operation.errors << WAFSubscriptionNotFoundException
        operation.errors << WAFTagOperationException
        operation.errors << WAFTagOperationInternalErrorException
        operation.errors << WAFUnavailableEntityException
        operation.traits = {}
      end)
      service.add_operation(:delete_api_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#DeleteAPIKey"
        operation.name = "DeleteAPIKey"
        operation.input = DeleteAPIKeyRequest
        operation.output = DeleteAPIKeyResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFOptimisticLockException
        operation.traits = {}
      end)
      service.add_operation(:delete_firewall_manager_rule_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#DeleteFirewallManagerRuleGroups"
        operation.name = "DeleteFirewallManagerRuleGroups"
        operation.input = DeleteFirewallManagerRuleGroupsRequest
        operation.output = DeleteFirewallManagerRuleGroupsResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFOptimisticLockException
        operation.traits = {}
      end)
      service.add_operation(:delete_ip_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#DeleteIPSet"
        operation.name = "DeleteIPSet"
        operation.input = DeleteIPSetRequest
        operation.output = DeleteIPSetResponse
        operation.errors << WAFAssociatedItemException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFOptimisticLockException
        operation.errors << WAFTagOperationException
        operation.errors << WAFTagOperationInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:delete_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#DeleteLoggingConfiguration"
        operation.name = "DeleteLoggingConfiguration"
        operation.input = DeleteLoggingConfigurationRequest
        operation.output = DeleteLoggingConfigurationResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFOptimisticLockException
        operation.traits = {}
      end)
      service.add_operation(:delete_permission_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#DeletePermissionPolicy"
        operation.name = "DeletePermissionPolicy"
        operation.input = DeletePermissionPolicyRequest
        operation.output = DeletePermissionPolicyResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:delete_regex_pattern_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#DeleteRegexPatternSet"
        operation.name = "DeleteRegexPatternSet"
        operation.input = DeleteRegexPatternSetRequest
        operation.output = DeleteRegexPatternSetResponse
        operation.errors << WAFAssociatedItemException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFOptimisticLockException
        operation.errors << WAFTagOperationException
        operation.errors << WAFTagOperationInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:delete_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#DeleteRuleGroup"
        operation.name = "DeleteRuleGroup"
        operation.input = DeleteRuleGroupRequest
        operation.output = DeleteRuleGroupResponse
        operation.errors << WAFAssociatedItemException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFOptimisticLockException
        operation.errors << WAFTagOperationException
        operation.errors << WAFTagOperationInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:delete_web_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#DeleteWebACL"
        operation.name = "DeleteWebACL"
        operation.input = DeleteWebACLRequest
        operation.output = DeleteWebACLResponse
        operation.errors << WAFAssociatedItemException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFOptimisticLockException
        operation.errors << WAFTagOperationException
        operation.errors << WAFTagOperationInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:describe_all_managed_products, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#DescribeAllManagedProducts"
        operation.name = "DescribeAllManagedProducts"
        operation.input = DescribeAllManagedProductsRequest
        operation.output = DescribeAllManagedProductsResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.traits = {}
      end)
      service.add_operation(:describe_managed_products_by_vendor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#DescribeManagedProductsByVendor"
        operation.name = "DescribeManagedProductsByVendor"
        operation.input = DescribeManagedProductsByVendorRequest
        operation.output = DescribeManagedProductsByVendorResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.traits = {}
      end)
      service.add_operation(:describe_managed_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#DescribeManagedRuleGroup"
        operation.name = "DescribeManagedRuleGroup"
        operation.input = DescribeManagedRuleGroupRequest
        operation.output = DescribeManagedRuleGroupResponse
        operation.errors << WAFExpiredManagedRuleGroupVersionException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFInvalidResourceException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_web_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#DisassociateWebACL"
        operation.name = "DisassociateWebACL"
        operation.input = DisassociateWebACLRequest
        operation.output = DisassociateWebACLResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:generate_mobile_sdk_release_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#GenerateMobileSdkReleaseUrl"
        operation.name = "GenerateMobileSdkReleaseUrl"
        operation.input = GenerateMobileSdkReleaseUrlRequest
        operation.output = GenerateMobileSdkReleaseUrlResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:get_decrypted_api_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#GetDecryptedAPIKey"
        operation.name = "GetDecryptedAPIKey"
        operation.input = GetDecryptedAPIKeyRequest
        operation.output = GetDecryptedAPIKeyResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFInvalidResourceException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:get_ip_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#GetIPSet"
        operation.name = "GetIPSet"
        operation.input = GetIPSetRequest
        operation.output = GetIPSetResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:get_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#GetLoggingConfiguration"
        operation.name = "GetLoggingConfiguration"
        operation.input = GetLoggingConfigurationRequest
        operation.output = GetLoggingConfigurationResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:get_managed_rule_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#GetManagedRuleSet"
        operation.name = "GetManagedRuleSet"
        operation.input = GetManagedRuleSetRequest
        operation.output = GetManagedRuleSetResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:get_mobile_sdk_release, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#GetMobileSdkRelease"
        operation.name = "GetMobileSdkRelease"
        operation.input = GetMobileSdkReleaseRequest
        operation.output = GetMobileSdkReleaseResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:get_permission_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#GetPermissionPolicy"
        operation.name = "GetPermissionPolicy"
        operation.input = GetPermissionPolicyRequest
        operation.output = GetPermissionPolicyResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:get_rate_based_statement_managed_keys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#GetRateBasedStatementManagedKeys"
        operation.name = "GetRateBasedStatementManagedKeys"
        operation.input = GetRateBasedStatementManagedKeysRequest
        operation.output = GetRateBasedStatementManagedKeysResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFUnsupportedAggregateKeyTypeException
        operation.traits = {}
      end)
      service.add_operation(:get_regex_pattern_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#GetRegexPatternSet"
        operation.name = "GetRegexPatternSet"
        operation.input = GetRegexPatternSetRequest
        operation.output = GetRegexPatternSetResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:get_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#GetRuleGroup"
        operation.name = "GetRuleGroup"
        operation.input = GetRuleGroupRequest
        operation.output = GetRuleGroupResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:get_sampled_requests, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#GetSampledRequests"
        operation.name = "GetSampledRequests"
        operation.input = GetSampledRequestsRequest
        operation.output = GetSampledRequestsResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:get_web_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#GetWebACL"
        operation.name = "GetWebACL"
        operation.input = GetWebACLRequest
        operation.output = GetWebACLResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:get_web_acl_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#GetWebACLForResource"
        operation.name = "GetWebACLForResource"
        operation.input = GetWebACLForResourceRequest
        operation.output = GetWebACLForResourceResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFUnavailableEntityException
        operation.traits = {}
      end)
      service.add_operation(:list_api_keys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#ListAPIKeys"
        operation.name = "ListAPIKeys"
        operation.input = ListAPIKeysRequest
        operation.output = ListAPIKeysResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFInvalidResourceException
        operation.traits = {}
      end)
      service.add_operation(:list_available_managed_rule_group_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#ListAvailableManagedRuleGroupVersions"
        operation.name = "ListAvailableManagedRuleGroupVersions"
        operation.input = ListAvailableManagedRuleGroupVersionsRequest
        operation.output = ListAvailableManagedRuleGroupVersionsResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:list_available_managed_rule_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#ListAvailableManagedRuleGroups"
        operation.name = "ListAvailableManagedRuleGroups"
        operation.input = ListAvailableManagedRuleGroupsRequest
        operation.output = ListAvailableManagedRuleGroupsResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.traits = {}
      end)
      service.add_operation(:list_ip_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#ListIPSets"
        operation.name = "ListIPSets"
        operation.input = ListIPSetsRequest
        operation.output = ListIPSetsResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.traits = {}
      end)
      service.add_operation(:list_logging_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#ListLoggingConfigurations"
        operation.name = "ListLoggingConfigurations"
        operation.input = ListLoggingConfigurationsRequest
        operation.output = ListLoggingConfigurationsResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.traits = {}
      end)
      service.add_operation(:list_managed_rule_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#ListManagedRuleSets"
        operation.name = "ListManagedRuleSets"
        operation.input = ListManagedRuleSetsRequest
        operation.output = ListManagedRuleSetsResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.traits = {}
      end)
      service.add_operation(:list_mobile_sdk_releases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#ListMobileSdkReleases"
        operation.name = "ListMobileSdkReleases"
        operation.input = ListMobileSdkReleasesRequest
        operation.output = ListMobileSdkReleasesResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.traits = {}
      end)
      service.add_operation(:list_regex_pattern_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#ListRegexPatternSets"
        operation.name = "ListRegexPatternSets"
        operation.input = ListRegexPatternSetsRequest
        operation.output = ListRegexPatternSetsResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.traits = {}
      end)
      service.add_operation(:list_resources_for_web_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#ListResourcesForWebACL"
        operation.name = "ListResourcesForWebACL"
        operation.input = ListResourcesForWebACLRequest
        operation.output = ListResourcesForWebACLResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:list_rule_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#ListRuleGroups"
        operation.name = "ListRuleGroups"
        operation.input = ListRuleGroupsRequest
        operation.output = ListRuleGroupsResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFTagOperationException
        operation.errors << WAFTagOperationInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:list_web_ac_ls, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#ListWebACLs"
        operation.name = "ListWebACLs"
        operation.input = ListWebACLsRequest
        operation.output = ListWebACLsResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListWebACLsSuccess", "params" => {"Scope" => "REGIONAL", "Limit" => 20}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:put_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#PutLoggingConfiguration"
        operation.name = "PutLoggingConfiguration"
        operation.input = PutLoggingConfigurationRequest
        operation.output = PutLoggingConfigurationResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFLogDestinationPermissionIssueException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFOptimisticLockException
        operation.errors << WAFServiceLinkedRoleErrorException
        operation.traits = {}
      end)
      service.add_operation(:put_managed_rule_set_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#PutManagedRuleSetVersions"
        operation.name = "PutManagedRuleSetVersions"
        operation.input = PutManagedRuleSetVersionsRequest
        operation.output = PutManagedRuleSetVersionsResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFOptimisticLockException
        operation.traits = {}
      end)
      service.add_operation(:put_permission_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#PutPermissionPolicy"
        operation.name = "PutPermissionPolicy"
        operation.input = PutPermissionPolicyRequest
        operation.output = PutPermissionPolicyResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFInvalidPermissionPolicyException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFTagOperationException
        operation.errors << WAFTagOperationInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFTagOperationException
        operation.errors << WAFTagOperationInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:update_ip_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#UpdateIPSet"
        operation.name = "UpdateIPSet"
        operation.input = UpdateIPSetRequest
        operation.output = UpdateIPSetResponse
        operation.errors << WAFDuplicateItemException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFOptimisticLockException
        operation.traits = {}
      end)
      service.add_operation(:update_managed_rule_set_version_expiry_date, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#UpdateManagedRuleSetVersionExpiryDate"
        operation.name = "UpdateManagedRuleSetVersionExpiryDate"
        operation.input = UpdateManagedRuleSetVersionExpiryDateRequest
        operation.output = UpdateManagedRuleSetVersionExpiryDateResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFOptimisticLockException
        operation.traits = {}
      end)
      service.add_operation(:update_regex_pattern_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#UpdateRegexPatternSet"
        operation.name = "UpdateRegexPatternSet"
        operation.input = UpdateRegexPatternSetRequest
        operation.output = UpdateRegexPatternSetResponse
        operation.errors << WAFDuplicateItemException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFOptimisticLockException
        operation.traits = {}
      end)
      service.add_operation(:update_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#UpdateRuleGroup"
        operation.name = "UpdateRuleGroup"
        operation.input = UpdateRuleGroupRequest
        operation.output = UpdateRuleGroupResponse
        operation.errors << WAFConfigurationWarningException
        operation.errors << WAFDuplicateItemException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFOptimisticLockException
        operation.errors << WAFSubscriptionNotFoundException
        operation.errors << WAFUnavailableEntityException
        operation.traits = {}
      end)
      service.add_operation(:update_web_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafv2#UpdateWebACL"
        operation.name = "UpdateWebACL"
        operation.input = UpdateWebACLRequest
        operation.output = UpdateWebACLResponse
        operation.errors << WAFConfigurationWarningException
        operation.errors << WAFDuplicateItemException
        operation.errors << WAFExpiredManagedRuleGroupVersionException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFInvalidResourceException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFOptimisticLockException
        operation.errors << WAFSubscriptionNotFoundException
        operation.errors << WAFUnavailableEntityException
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
