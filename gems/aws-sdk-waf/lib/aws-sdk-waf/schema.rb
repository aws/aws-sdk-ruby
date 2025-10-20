# frozen_string_literal: true

# This is generated code!

module Aws::WAF
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Action = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.waf#Action", name: "Action")
    ActivatedRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ActivatedRule", name: "ActivatedRule")
    ActivatedRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#ActivatedRules", name: "ActivatedRules")
    ByteMatchSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ByteMatchSet", name: "ByteMatchSet")
    ByteMatchSetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#ByteMatchSetSummaries", name: "ByteMatchSetSummaries")
    ByteMatchSetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ByteMatchSetSummary", name: "ByteMatchSetSummary")
    ByteMatchSetUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ByteMatchSetUpdate", name: "ByteMatchSetUpdate")
    ByteMatchSetUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#ByteMatchSetUpdates", name: "ByteMatchSetUpdates", traits: {"smithy.api#length" => {"min" => 1}})
    ByteMatchTargetString = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.waf#ByteMatchTargetString", name: "ByteMatchTargetString")
    ByteMatchTuple = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ByteMatchTuple", name: "ByteMatchTuple")
    ByteMatchTuples = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#ByteMatchTuples", name: "ByteMatchTuples")
    ChangeAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.waf#ChangeAction", name: "ChangeAction")
    ChangeToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.waf#ChangeToken", name: "ChangeToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    ChangeTokenStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.waf#ChangeTokenStatus", name: "ChangeTokenStatus")
    ComparisonOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.waf#ComparisonOperator", name: "ComparisonOperator")
    Country = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.waf#Country", name: "Country")
    CreateByteMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#CreateByteMatchSetRequest", name: "CreateByteMatchSetRequest")
    CreateByteMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#CreateByteMatchSetResponse", name: "CreateByteMatchSetResponse")
    CreateGeoMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#CreateGeoMatchSetRequest", name: "CreateGeoMatchSetRequest")
    CreateGeoMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#CreateGeoMatchSetResponse", name: "CreateGeoMatchSetResponse")
    CreateIPSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#CreateIPSetRequest", name: "CreateIPSetRequest")
    CreateIPSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#CreateIPSetResponse", name: "CreateIPSetResponse")
    CreateRateBasedRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#CreateRateBasedRuleRequest", name: "CreateRateBasedRuleRequest")
    CreateRateBasedRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#CreateRateBasedRuleResponse", name: "CreateRateBasedRuleResponse")
    CreateRegexMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#CreateRegexMatchSetRequest", name: "CreateRegexMatchSetRequest")
    CreateRegexMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#CreateRegexMatchSetResponse", name: "CreateRegexMatchSetResponse")
    CreateRegexPatternSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#CreateRegexPatternSetRequest", name: "CreateRegexPatternSetRequest")
    CreateRegexPatternSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#CreateRegexPatternSetResponse", name: "CreateRegexPatternSetResponse")
    CreateRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#CreateRuleGroupRequest", name: "CreateRuleGroupRequest")
    CreateRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#CreateRuleGroupResponse", name: "CreateRuleGroupResponse")
    CreateRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#CreateRuleRequest", name: "CreateRuleRequest")
    CreateRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#CreateRuleResponse", name: "CreateRuleResponse")
    CreateSizeConstraintSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#CreateSizeConstraintSetRequest", name: "CreateSizeConstraintSetRequest")
    CreateSizeConstraintSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#CreateSizeConstraintSetResponse", name: "CreateSizeConstraintSetResponse")
    CreateSqlInjectionMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#CreateSqlInjectionMatchSetRequest", name: "CreateSqlInjectionMatchSetRequest")
    CreateSqlInjectionMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#CreateSqlInjectionMatchSetResponse", name: "CreateSqlInjectionMatchSetResponse")
    CreateWebACLMigrationStackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#CreateWebACLMigrationStackRequest", name: "CreateWebACLMigrationStackRequest")
    CreateWebACLMigrationStackResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#CreateWebACLMigrationStackResponse", name: "CreateWebACLMigrationStackResponse")
    CreateWebACLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#CreateWebACLRequest", name: "CreateWebACLRequest")
    CreateWebACLResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#CreateWebACLResponse", name: "CreateWebACLResponse")
    CreateXssMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#CreateXssMatchSetRequest", name: "CreateXssMatchSetRequest")
    CreateXssMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#CreateXssMatchSetResponse", name: "CreateXssMatchSetResponse")
    DeleteByteMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#DeleteByteMatchSetRequest", name: "DeleteByteMatchSetRequest")
    DeleteByteMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#DeleteByteMatchSetResponse", name: "DeleteByteMatchSetResponse")
    DeleteGeoMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#DeleteGeoMatchSetRequest", name: "DeleteGeoMatchSetRequest")
    DeleteGeoMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#DeleteGeoMatchSetResponse", name: "DeleteGeoMatchSetResponse")
    DeleteIPSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#DeleteIPSetRequest", name: "DeleteIPSetRequest")
    DeleteIPSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#DeleteIPSetResponse", name: "DeleteIPSetResponse")
    DeleteLoggingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#DeleteLoggingConfigurationRequest", name: "DeleteLoggingConfigurationRequest")
    DeleteLoggingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#DeleteLoggingConfigurationResponse", name: "DeleteLoggingConfigurationResponse")
    DeletePermissionPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#DeletePermissionPolicyRequest", name: "DeletePermissionPolicyRequest")
    DeletePermissionPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#DeletePermissionPolicyResponse", name: "DeletePermissionPolicyResponse")
    DeleteRateBasedRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#DeleteRateBasedRuleRequest", name: "DeleteRateBasedRuleRequest")
    DeleteRateBasedRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#DeleteRateBasedRuleResponse", name: "DeleteRateBasedRuleResponse")
    DeleteRegexMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#DeleteRegexMatchSetRequest", name: "DeleteRegexMatchSetRequest")
    DeleteRegexMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#DeleteRegexMatchSetResponse", name: "DeleteRegexMatchSetResponse")
    DeleteRegexPatternSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#DeleteRegexPatternSetRequest", name: "DeleteRegexPatternSetRequest")
    DeleteRegexPatternSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#DeleteRegexPatternSetResponse", name: "DeleteRegexPatternSetResponse")
    DeleteRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#DeleteRuleGroupRequest", name: "DeleteRuleGroupRequest")
    DeleteRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#DeleteRuleGroupResponse", name: "DeleteRuleGroupResponse")
    DeleteRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#DeleteRuleRequest", name: "DeleteRuleRequest")
    DeleteRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#DeleteRuleResponse", name: "DeleteRuleResponse")
    DeleteSizeConstraintSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#DeleteSizeConstraintSetRequest", name: "DeleteSizeConstraintSetRequest")
    DeleteSizeConstraintSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#DeleteSizeConstraintSetResponse", name: "DeleteSizeConstraintSetResponse")
    DeleteSqlInjectionMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#DeleteSqlInjectionMatchSetRequest", name: "DeleteSqlInjectionMatchSetRequest")
    DeleteSqlInjectionMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#DeleteSqlInjectionMatchSetResponse", name: "DeleteSqlInjectionMatchSetResponse")
    DeleteWebACLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#DeleteWebACLRequest", name: "DeleteWebACLRequest")
    DeleteWebACLResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#DeleteWebACLResponse", name: "DeleteWebACLResponse")
    DeleteXssMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#DeleteXssMatchSetRequest", name: "DeleteXssMatchSetRequest")
    DeleteXssMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#DeleteXssMatchSetResponse", name: "DeleteXssMatchSetResponse")
    ErrorReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.waf#ErrorReason", name: "ErrorReason")
    ExcludedRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ExcludedRule", name: "ExcludedRule")
    ExcludedRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#ExcludedRules", name: "ExcludedRules")
    FieldToMatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#FieldToMatch", name: "FieldToMatch")
    GeoMatchConstraint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GeoMatchConstraint", name: "GeoMatchConstraint")
    GeoMatchConstraintType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.waf#GeoMatchConstraintType", name: "GeoMatchConstraintType")
    GeoMatchConstraintValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.waf#GeoMatchConstraintValue", name: "GeoMatchConstraintValue")
    GeoMatchConstraints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#GeoMatchConstraints", name: "GeoMatchConstraints")
    GeoMatchSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GeoMatchSet", name: "GeoMatchSet")
    GeoMatchSetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#GeoMatchSetSummaries", name: "GeoMatchSetSummaries")
    GeoMatchSetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GeoMatchSetSummary", name: "GeoMatchSetSummary")
    GeoMatchSetUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GeoMatchSetUpdate", name: "GeoMatchSetUpdate")
    GeoMatchSetUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#GeoMatchSetUpdates", name: "GeoMatchSetUpdates", traits: {"smithy.api#length" => {"min" => 1}})
    GetByteMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetByteMatchSetRequest", name: "GetByteMatchSetRequest")
    GetByteMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetByteMatchSetResponse", name: "GetByteMatchSetResponse")
    GetChangeTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetChangeTokenRequest", name: "GetChangeTokenRequest")
    GetChangeTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetChangeTokenResponse", name: "GetChangeTokenResponse")
    GetChangeTokenStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetChangeTokenStatusRequest", name: "GetChangeTokenStatusRequest")
    GetChangeTokenStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetChangeTokenStatusResponse", name: "GetChangeTokenStatusResponse")
    GetGeoMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetGeoMatchSetRequest", name: "GetGeoMatchSetRequest")
    GetGeoMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetGeoMatchSetResponse", name: "GetGeoMatchSetResponse")
    GetIPSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetIPSetRequest", name: "GetIPSetRequest")
    GetIPSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetIPSetResponse", name: "GetIPSetResponse")
    GetLoggingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetLoggingConfigurationRequest", name: "GetLoggingConfigurationRequest")
    GetLoggingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetLoggingConfigurationResponse", name: "GetLoggingConfigurationResponse")
    GetPermissionPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetPermissionPolicyRequest", name: "GetPermissionPolicyRequest")
    GetPermissionPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetPermissionPolicyResponse", name: "GetPermissionPolicyResponse")
    GetRateBasedRuleManagedKeysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetRateBasedRuleManagedKeysRequest", name: "GetRateBasedRuleManagedKeysRequest")
    GetRateBasedRuleManagedKeysResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetRateBasedRuleManagedKeysResponse", name: "GetRateBasedRuleManagedKeysResponse")
    GetRateBasedRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetRateBasedRuleRequest", name: "GetRateBasedRuleRequest")
    GetRateBasedRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetRateBasedRuleResponse", name: "GetRateBasedRuleResponse")
    GetRegexMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetRegexMatchSetRequest", name: "GetRegexMatchSetRequest")
    GetRegexMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetRegexMatchSetResponse", name: "GetRegexMatchSetResponse")
    GetRegexPatternSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetRegexPatternSetRequest", name: "GetRegexPatternSetRequest")
    GetRegexPatternSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetRegexPatternSetResponse", name: "GetRegexPatternSetResponse")
    GetRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetRuleGroupRequest", name: "GetRuleGroupRequest")
    GetRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetRuleGroupResponse", name: "GetRuleGroupResponse")
    GetRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetRuleRequest", name: "GetRuleRequest")
    GetRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetRuleResponse", name: "GetRuleResponse")
    GetSampledRequestsMaxItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.waf#GetSampledRequestsMaxItems", name: "GetSampledRequestsMaxItems", traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    GetSampledRequestsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetSampledRequestsRequest", name: "GetSampledRequestsRequest")
    GetSampledRequestsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetSampledRequestsResponse", name: "GetSampledRequestsResponse")
    GetSizeConstraintSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetSizeConstraintSetRequest", name: "GetSizeConstraintSetRequest")
    GetSizeConstraintSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetSizeConstraintSetResponse", name: "GetSizeConstraintSetResponse")
    GetSqlInjectionMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetSqlInjectionMatchSetRequest", name: "GetSqlInjectionMatchSetRequest")
    GetSqlInjectionMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetSqlInjectionMatchSetResponse", name: "GetSqlInjectionMatchSetResponse")
    GetWebACLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetWebACLRequest", name: "GetWebACLRequest")
    GetWebACLResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetWebACLResponse", name: "GetWebACLResponse")
    GetXssMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetXssMatchSetRequest", name: "GetXssMatchSetRequest")
    GetXssMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#GetXssMatchSetResponse", name: "GetXssMatchSetResponse")
    HTTPHeader = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#HTTPHeader", name: "HTTPHeader")
    HTTPHeaders = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#HTTPHeaders", name: "HTTPHeaders")
    HTTPMethod = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.waf#HTTPMethod", name: "HTTPMethod")
    HTTPRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#HTTPRequest", name: "HTTPRequest")
    HTTPVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.waf#HTTPVersion", name: "HTTPVersion")
    HeaderName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.waf#HeaderName", name: "HeaderName")
    HeaderValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.waf#HeaderValue", name: "HeaderValue")
    IPSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#IPSet", name: "IPSet")
    IPSetDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#IPSetDescriptor", name: "IPSetDescriptor")
    IPSetDescriptorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.waf#IPSetDescriptorType", name: "IPSetDescriptorType")
    IPSetDescriptorValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.waf#IPSetDescriptorValue", name: "IPSetDescriptorValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "\\S"})
    IPSetDescriptors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#IPSetDescriptors", name: "IPSetDescriptors")
    IPSetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#IPSetSummaries", name: "IPSetSummaries")
    IPSetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#IPSetSummary", name: "IPSetSummary")
    IPSetUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#IPSetUpdate", name: "IPSetUpdate")
    IPSetUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#IPSetUpdates", name: "IPSetUpdates", traits: {"smithy.api#length" => {"min" => 1}})
    IPString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.waf#IPString", name: "IPString")
    IgnoreUnsupportedType = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.waf#IgnoreUnsupportedType", name: "IgnoreUnsupportedType")
    ListActivatedRulesInRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListActivatedRulesInRuleGroupRequest", name: "ListActivatedRulesInRuleGroupRequest")
    ListActivatedRulesInRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListActivatedRulesInRuleGroupResponse", name: "ListActivatedRulesInRuleGroupResponse")
    ListByteMatchSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListByteMatchSetsRequest", name: "ListByteMatchSetsRequest")
    ListByteMatchSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListByteMatchSetsResponse", name: "ListByteMatchSetsResponse")
    ListGeoMatchSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListGeoMatchSetsRequest", name: "ListGeoMatchSetsRequest")
    ListGeoMatchSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListGeoMatchSetsResponse", name: "ListGeoMatchSetsResponse")
    ListIPSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListIPSetsRequest", name: "ListIPSetsRequest")
    ListIPSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListIPSetsResponse", name: "ListIPSetsResponse")
    ListLoggingConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListLoggingConfigurationsRequest", name: "ListLoggingConfigurationsRequest")
    ListLoggingConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListLoggingConfigurationsResponse", name: "ListLoggingConfigurationsResponse")
    ListRateBasedRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListRateBasedRulesRequest", name: "ListRateBasedRulesRequest")
    ListRateBasedRulesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListRateBasedRulesResponse", name: "ListRateBasedRulesResponse")
    ListRegexMatchSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListRegexMatchSetsRequest", name: "ListRegexMatchSetsRequest")
    ListRegexMatchSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListRegexMatchSetsResponse", name: "ListRegexMatchSetsResponse")
    ListRegexPatternSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListRegexPatternSetsRequest", name: "ListRegexPatternSetsRequest")
    ListRegexPatternSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListRegexPatternSetsResponse", name: "ListRegexPatternSetsResponse")
    ListRuleGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListRuleGroupsRequest", name: "ListRuleGroupsRequest")
    ListRuleGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListRuleGroupsResponse", name: "ListRuleGroupsResponse")
    ListRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListRulesRequest", name: "ListRulesRequest")
    ListRulesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListRulesResponse", name: "ListRulesResponse")
    ListSizeConstraintSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListSizeConstraintSetsRequest", name: "ListSizeConstraintSetsRequest")
    ListSizeConstraintSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListSizeConstraintSetsResponse", name: "ListSizeConstraintSetsResponse")
    ListSqlInjectionMatchSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListSqlInjectionMatchSetsRequest", name: "ListSqlInjectionMatchSetsRequest")
    ListSqlInjectionMatchSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListSqlInjectionMatchSetsResponse", name: "ListSqlInjectionMatchSetsResponse")
    ListSubscribedRuleGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListSubscribedRuleGroupsRequest", name: "ListSubscribedRuleGroupsRequest")
    ListSubscribedRuleGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListSubscribedRuleGroupsResponse", name: "ListSubscribedRuleGroupsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListWebACLsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListWebACLsRequest", name: "ListWebACLsRequest")
    ListWebACLsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListWebACLsResponse", name: "ListWebACLsResponse")
    ListXssMatchSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListXssMatchSetsRequest", name: "ListXssMatchSetsRequest")
    ListXssMatchSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#ListXssMatchSetsResponse", name: "ListXssMatchSetsResponse")
    LogDestinationConfigs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#LogDestinationConfigs", name: "LogDestinationConfigs", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    LoggingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#LoggingConfiguration", name: "LoggingConfiguration")
    LoggingConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#LoggingConfigurations", name: "LoggingConfigurations")
    ManagedKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.waf#ManagedKey", name: "ManagedKey")
    ManagedKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#ManagedKeys", name: "ManagedKeys")
    MatchFieldData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.waf#MatchFieldData", name: "MatchFieldData", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    MatchFieldType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.waf#MatchFieldType", name: "MatchFieldType")
    MetricName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.waf#MetricName", name: "MetricName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    MigrationErrorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.waf#MigrationErrorType", name: "MigrationErrorType")
    Negated = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.waf#Negated", name: "Negated")
    NextMarker = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.waf#NextMarker", name: "NextMarker", traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => "\\S"})
    PaginationLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.waf#PaginationLimit", name: "PaginationLimit", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    ParameterExceptionField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.waf#ParameterExceptionField", name: "ParameterExceptionField")
    ParameterExceptionParameter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.waf#ParameterExceptionParameter", name: "ParameterExceptionParameter", traits: {"smithy.api#length" => {"min" => 1}})
    ParameterExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.waf#ParameterExceptionReason", name: "ParameterExceptionReason")
    PolicyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.waf#PolicyString", name: "PolicyString", traits: {"smithy.api#length" => {"min" => 1, "max" => 395000}, "smithy.api#pattern" => "\\S"})
    PopulationSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.waf#PopulationSize", name: "PopulationSize", traits: {"smithy.api#default" => 0})
    PositionalConstraint = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.waf#PositionalConstraint", name: "PositionalConstraint")
    Predicate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#Predicate", name: "Predicate")
    PredicateType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.waf#PredicateType", name: "PredicateType")
    Predicates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#Predicates", name: "Predicates")
    PutLoggingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#PutLoggingConfigurationRequest", name: "PutLoggingConfigurationRequest")
    PutLoggingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#PutLoggingConfigurationResponse", name: "PutLoggingConfigurationResponse")
    PutPermissionPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#PutPermissionPolicyRequest", name: "PutPermissionPolicyRequest")
    PutPermissionPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#PutPermissionPolicyResponse", name: "PutPermissionPolicyResponse")
    RateBasedRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#RateBasedRule", name: "RateBasedRule")
    RateKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.waf#RateKey", name: "RateKey")
    RateLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.waf#RateLimit", name: "RateLimit", traits: {"smithy.api#range" => {"min" => 100, "max" => 2000000000}})
    RedactedFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#RedactedFields", name: "RedactedFields")
    RegexMatchSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#RegexMatchSet", name: "RegexMatchSet")
    RegexMatchSetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#RegexMatchSetSummaries", name: "RegexMatchSetSummaries")
    RegexMatchSetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#RegexMatchSetSummary", name: "RegexMatchSetSummary")
    RegexMatchSetUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#RegexMatchSetUpdate", name: "RegexMatchSetUpdate")
    RegexMatchSetUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#RegexMatchSetUpdates", name: "RegexMatchSetUpdates", traits: {"smithy.api#length" => {"min" => 1}})
    RegexMatchTuple = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#RegexMatchTuple", name: "RegexMatchTuple")
    RegexMatchTuples = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#RegexMatchTuples", name: "RegexMatchTuples")
    RegexPatternSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#RegexPatternSet", name: "RegexPatternSet")
    RegexPatternSetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#RegexPatternSetSummaries", name: "RegexPatternSetSummaries")
    RegexPatternSetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#RegexPatternSetSummary", name: "RegexPatternSetSummary")
    RegexPatternSetUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#RegexPatternSetUpdate", name: "RegexPatternSetUpdate")
    RegexPatternSetUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#RegexPatternSetUpdates", name: "RegexPatternSetUpdates", traits: {"smithy.api#length" => {"min" => 1}})
    RegexPatternString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.waf#RegexPatternString", name: "RegexPatternString", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => ".*"})
    RegexPatternStrings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#RegexPatternStrings", name: "RegexPatternStrings", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.waf#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => "\\S"})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.waf#ResourceId", name: "ResourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.waf#ResourceName", name: "ResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    Rule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#Rule", name: "Rule")
    RuleGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#RuleGroup", name: "RuleGroup")
    RuleGroupSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#RuleGroupSummaries", name: "RuleGroupSummaries")
    RuleGroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#RuleGroupSummary", name: "RuleGroupSummary")
    RuleGroupUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#RuleGroupUpdate", name: "RuleGroupUpdate")
    RuleGroupUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#RuleGroupUpdates", name: "RuleGroupUpdates", traits: {"smithy.api#length" => {"min" => 1}})
    RulePriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.waf#RulePriority", name: "RulePriority")
    RuleSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#RuleSummaries", name: "RuleSummaries")
    RuleSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#RuleSummary", name: "RuleSummary")
    RuleUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#RuleUpdate", name: "RuleUpdate")
    RuleUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#RuleUpdates", name: "RuleUpdates")
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.waf#S3BucketName", name: "S3BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^aws-waf-migration-[0-9A-Za-z\\.\\-_]*$"})
    S3ObjectUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.waf#S3ObjectUrl", name: "S3ObjectUrl", traits: {"smithy.api#length" => {"min" => 1}})
    SampleWeight = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.waf#SampleWeight", name: "SampleWeight", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    SampledHTTPRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#SampledHTTPRequest", name: "SampledHTTPRequest")
    SampledHTTPRequests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#SampledHTTPRequests", name: "SampledHTTPRequests")
    Size = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.waf#Size", name: "Size", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 21474836480}})
    SizeConstraint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#SizeConstraint", name: "SizeConstraint")
    SizeConstraintSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#SizeConstraintSet", name: "SizeConstraintSet")
    SizeConstraintSetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#SizeConstraintSetSummaries", name: "SizeConstraintSetSummaries")
    SizeConstraintSetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#SizeConstraintSetSummary", name: "SizeConstraintSetSummary")
    SizeConstraintSetUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#SizeConstraintSetUpdate", name: "SizeConstraintSetUpdate")
    SizeConstraintSetUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#SizeConstraintSetUpdates", name: "SizeConstraintSetUpdates", traits: {"smithy.api#length" => {"min" => 1}})
    SizeConstraints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#SizeConstraints", name: "SizeConstraints")
    SqlInjectionMatchSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#SqlInjectionMatchSet", name: "SqlInjectionMatchSet")
    SqlInjectionMatchSetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#SqlInjectionMatchSetSummaries", name: "SqlInjectionMatchSetSummaries")
    SqlInjectionMatchSetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#SqlInjectionMatchSetSummary", name: "SqlInjectionMatchSetSummary")
    SqlInjectionMatchSetUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#SqlInjectionMatchSetUpdate", name: "SqlInjectionMatchSetUpdate")
    SqlInjectionMatchSetUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#SqlInjectionMatchSetUpdates", name: "SqlInjectionMatchSetUpdates", traits: {"smithy.api#length" => {"min" => 1}})
    SqlInjectionMatchTuple = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#SqlInjectionMatchTuple", name: "SqlInjectionMatchTuple")
    SqlInjectionMatchTuples = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#SqlInjectionMatchTuples", name: "SqlInjectionMatchTuples")
    SubscribedRuleGroupSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#SubscribedRuleGroupSummaries", name: "SubscribedRuleGroupSummaries")
    SubscribedRuleGroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#SubscribedRuleGroupSummary", name: "SubscribedRuleGroupSummary")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#Tag", name: "Tag")
    TagInfoForResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#TagInfoForResource", name: "TagInfoForResource")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.waf#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 1}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.waf#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => ".*"})
    TextTransformation = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.waf#TextTransformation", name: "TextTransformation")
    TimeWindow = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#TimeWindow", name: "TimeWindow")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.waf#Timestamp", name: "Timestamp")
    URIString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.waf#URIString", name: "URIString")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateByteMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#UpdateByteMatchSetRequest", name: "UpdateByteMatchSetRequest")
    UpdateByteMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#UpdateByteMatchSetResponse", name: "UpdateByteMatchSetResponse")
    UpdateGeoMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#UpdateGeoMatchSetRequest", name: "UpdateGeoMatchSetRequest")
    UpdateGeoMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#UpdateGeoMatchSetResponse", name: "UpdateGeoMatchSetResponse")
    UpdateIPSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#UpdateIPSetRequest", name: "UpdateIPSetRequest")
    UpdateIPSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#UpdateIPSetResponse", name: "UpdateIPSetResponse")
    UpdateRateBasedRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#UpdateRateBasedRuleRequest", name: "UpdateRateBasedRuleRequest")
    UpdateRateBasedRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#UpdateRateBasedRuleResponse", name: "UpdateRateBasedRuleResponse")
    UpdateRegexMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#UpdateRegexMatchSetRequest", name: "UpdateRegexMatchSetRequest")
    UpdateRegexMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#UpdateRegexMatchSetResponse", name: "UpdateRegexMatchSetResponse")
    UpdateRegexPatternSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#UpdateRegexPatternSetRequest", name: "UpdateRegexPatternSetRequest")
    UpdateRegexPatternSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#UpdateRegexPatternSetResponse", name: "UpdateRegexPatternSetResponse")
    UpdateRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#UpdateRuleGroupRequest", name: "UpdateRuleGroupRequest")
    UpdateRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#UpdateRuleGroupResponse", name: "UpdateRuleGroupResponse")
    UpdateRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#UpdateRuleRequest", name: "UpdateRuleRequest")
    UpdateRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#UpdateRuleResponse", name: "UpdateRuleResponse")
    UpdateSizeConstraintSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#UpdateSizeConstraintSetRequest", name: "UpdateSizeConstraintSetRequest")
    UpdateSizeConstraintSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#UpdateSizeConstraintSetResponse", name: "UpdateSizeConstraintSetResponse")
    UpdateSqlInjectionMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#UpdateSqlInjectionMatchSetRequest", name: "UpdateSqlInjectionMatchSetRequest")
    UpdateSqlInjectionMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#UpdateSqlInjectionMatchSetResponse", name: "UpdateSqlInjectionMatchSetResponse")
    UpdateWebACLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#UpdateWebACLRequest", name: "UpdateWebACLRequest")
    UpdateWebACLResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#UpdateWebACLResponse", name: "UpdateWebACLResponse")
    UpdateXssMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#UpdateXssMatchSetRequest", name: "UpdateXssMatchSetRequest")
    UpdateXssMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#UpdateXssMatchSetResponse", name: "UpdateXssMatchSetResponse")
    WAFBadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#WAFBadRequestException", name: "WAFBadRequestException", traits: {"smithy.api#error" => "client"})
    WAFDisallowedNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#WAFDisallowedNameException", name: "WAFDisallowedNameException", traits: {"smithy.api#error" => "client"})
    WAFEntityMigrationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#WAFEntityMigrationException", name: "WAFEntityMigrationException", traits: {"smithy.api#error" => "client"})
    WAFInternalErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#WAFInternalErrorException", name: "WAFInternalErrorException", traits: {"smithy.api#error" => "server"})
    WAFInvalidAccountException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#WAFInvalidAccountException", name: "WAFInvalidAccountException", traits: {"smithy.api#error" => "client"})
    WAFInvalidOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#WAFInvalidOperationException", name: "WAFInvalidOperationException", traits: {"smithy.api#error" => "client"})
    WAFInvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#WAFInvalidParameterException", name: "WAFInvalidParameterException", traits: {"smithy.api#error" => "client"})
    WAFInvalidPermissionPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#WAFInvalidPermissionPolicyException", name: "WAFInvalidPermissionPolicyException", traits: {"smithy.api#error" => "client"})
    WAFInvalidRegexPatternException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#WAFInvalidRegexPatternException", name: "WAFInvalidRegexPatternException", traits: {"smithy.api#error" => "client"})
    WAFLimitsExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#WAFLimitsExceededException", name: "WAFLimitsExceededException", traits: {"smithy.api#error" => "client"})
    WAFNonEmptyEntityException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#WAFNonEmptyEntityException", name: "WAFNonEmptyEntityException", traits: {"smithy.api#error" => "client"})
    WAFNonexistentContainerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#WAFNonexistentContainerException", name: "WAFNonexistentContainerException", traits: {"smithy.api#error" => "client"})
    WAFNonexistentItemException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#WAFNonexistentItemException", name: "WAFNonexistentItemException", traits: {"smithy.api#error" => "client"})
    WAFReferencedItemException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#WAFReferencedItemException", name: "WAFReferencedItemException", traits: {"smithy.api#error" => "client"})
    WAFServiceLinkedRoleErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#WAFServiceLinkedRoleErrorException", name: "WAFServiceLinkedRoleErrorException", traits: {"smithy.api#error" => "client"})
    WAFStaleDataException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#WAFStaleDataException", name: "WAFStaleDataException", traits: {"smithy.api#error" => "client"})
    WAFSubscriptionNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#WAFSubscriptionNotFoundException", name: "WAFSubscriptionNotFoundException", traits: {"smithy.api#error" => "client"})
    WAFTagOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#WAFTagOperationException", name: "WAFTagOperationException", traits: {"smithy.api#error" => "client"})
    WAFTagOperationInternalErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#WAFTagOperationInternalErrorException", name: "WAFTagOperationInternalErrorException", traits: {"smithy.api#error" => "server"})
    WafAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#WafAction", name: "WafAction")
    WafActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.waf#WafActionType", name: "WafActionType")
    WafOverrideAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#WafOverrideAction", name: "WafOverrideAction")
    WafOverrideActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.waf#WafOverrideActionType", name: "WafOverrideActionType")
    WafRuleType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.waf#WafRuleType", name: "WafRuleType")
    WebACL = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#WebACL", name: "WebACL")
    WebACLSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#WebACLSummaries", name: "WebACLSummaries")
    WebACLSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#WebACLSummary", name: "WebACLSummary")
    WebACLUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#WebACLUpdate", name: "WebACLUpdate")
    WebACLUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#WebACLUpdates", name: "WebACLUpdates")
    XssMatchSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#XssMatchSet", name: "XssMatchSet")
    XssMatchSetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#XssMatchSetSummaries", name: "XssMatchSetSummaries")
    XssMatchSetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#XssMatchSetSummary", name: "XssMatchSetSummary")
    XssMatchSetUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#XssMatchSetUpdate", name: "XssMatchSetUpdate")
    XssMatchSetUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#XssMatchSetUpdates", name: "XssMatchSetUpdates", traits: {"smithy.api#length" => {"min" => 1}})
    XssMatchTuple = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.waf#XssMatchTuple", name: "XssMatchTuple")
    XssMatchTuples = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.waf#XssMatchTuples", name: "XssMatchTuples")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.waf#errorMessage", name: "ErrorMessage")

    ActivatedRule.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RulePriority, location_name: "Priority", traits: {"smithy.api#required" => {}}))
    ActivatedRule.add_member(:rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RuleId", traits: {"smithy.api#required" => {}}))
    ActivatedRule.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WafAction, location_name: "Action"))
    ActivatedRule.add_member(:override_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WafOverrideAction, location_name: "OverrideAction"))
    ActivatedRule.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WafRuleType, location_name: "Type"))
    ActivatedRule.add_member(:excluded_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExcludedRules, location_name: "ExcludedRules"))
    ActivatedRule.type = Types::ActivatedRule
    ActivatedRules.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivatedRule)
    ByteMatchSet.add_member(:byte_match_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ByteMatchSetId", traits: {"smithy.api#required" => {}}))
    ByteMatchSet.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    ByteMatchSet.add_member(:byte_match_tuples, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ByteMatchTuples, location_name: "ByteMatchTuples", traits: {"smithy.api#required" => {}}))
    ByteMatchSet.type = Types::ByteMatchSet
    ByteMatchSetSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ByteMatchSetSummary)
    ByteMatchSetSummary.add_member(:byte_match_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ByteMatchSetId", traits: {"smithy.api#required" => {}}))
    ByteMatchSetSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    ByteMatchSetSummary.type = Types::ByteMatchSetSummary
    ByteMatchSetUpdate.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeAction, location_name: "Action", traits: {"smithy.api#required" => {}}))
    ByteMatchSetUpdate.add_member(:byte_match_tuple, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ByteMatchTuple, location_name: "ByteMatchTuple", traits: {"smithy.api#required" => {}}))
    ByteMatchSetUpdate.type = Types::ByteMatchSetUpdate
    ByteMatchSetUpdates.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ByteMatchSetUpdate)
    ByteMatchTuple.add_member(:field_to_match, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldToMatch, location_name: "FieldToMatch", traits: {"smithy.api#required" => {}}))
    ByteMatchTuple.add_member(:target_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ByteMatchTargetString, location_name: "TargetString", traits: {"smithy.api#required" => {}}))
    ByteMatchTuple.add_member(:text_transformation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextTransformation, location_name: "TextTransformation", traits: {"smithy.api#required" => {}}))
    ByteMatchTuple.add_member(:positional_constraint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositionalConstraint, location_name: "PositionalConstraint", traits: {"smithy.api#required" => {}}))
    ByteMatchTuple.type = Types::ByteMatchTuple
    ByteMatchTuples.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ByteMatchTuple)
    ChangeAction.add_member(:insert, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSERT", traits: {"smithy.api#enumValue" => "INSERT"}))
    ChangeAction.add_member(:delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    ChangeTokenStatus.add_member(:provisioned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROVISIONED", traits: {"smithy.api#enumValue" => "PROVISIONED"}))
    ChangeTokenStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ChangeTokenStatus.add_member(:insync, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSYNC", traits: {"smithy.api#enumValue" => "INSYNC"}))
    ComparisonOperator.add_member(:eq, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EQ", traits: {"smithy.api#enumValue" => "EQ"}))
    ComparisonOperator.add_member(:ne, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NE", traits: {"smithy.api#enumValue" => "NE"}))
    ComparisonOperator.add_member(:le, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LE", traits: {"smithy.api#enumValue" => "LE"}))
    ComparisonOperator.add_member(:lt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LT", traits: {"smithy.api#enumValue" => "LT"}))
    ComparisonOperator.add_member(:ge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GE", traits: {"smithy.api#enumValue" => "GE"}))
    ComparisonOperator.add_member(:gt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GT", traits: {"smithy.api#enumValue" => "GT"}))
    CreateByteMatchSetRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateByteMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    CreateByteMatchSetRequest.type = Types::CreateByteMatchSetRequest
    CreateByteMatchSetResponse.add_member(:byte_match_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ByteMatchSet, location_name: "ByteMatchSet"))
    CreateByteMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    CreateByteMatchSetResponse.type = Types::CreateByteMatchSetResponse
    CreateGeoMatchSetRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateGeoMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    CreateGeoMatchSetRequest.type = Types::CreateGeoMatchSetRequest
    CreateGeoMatchSetResponse.add_member(:geo_match_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoMatchSet, location_name: "GeoMatchSet"))
    CreateGeoMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    CreateGeoMatchSetResponse.type = Types::CreateGeoMatchSetResponse
    CreateIPSetRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateIPSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    CreateIPSetRequest.type = Types::CreateIPSetRequest
    CreateIPSetResponse.add_member(:ip_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPSet, location_name: "IPSet"))
    CreateIPSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    CreateIPSetResponse.type = Types::CreateIPSetResponse
    CreateRateBasedRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateRateBasedRuleRequest.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName", traits: {"smithy.api#required" => {}}))
    CreateRateBasedRuleRequest.add_member(:rate_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RateKey, location_name: "RateKey", traits: {"smithy.api#required" => {}}))
    CreateRateBasedRuleRequest.add_member(:rate_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimit, location_name: "RateLimit", traits: {"smithy.api#required" => {}}))
    CreateRateBasedRuleRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    CreateRateBasedRuleRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateRateBasedRuleRequest.type = Types::CreateRateBasedRuleRequest
    CreateRateBasedRuleResponse.add_member(:rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RateBasedRule, location_name: "Rule"))
    CreateRateBasedRuleResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    CreateRateBasedRuleResponse.type = Types::CreateRateBasedRuleResponse
    CreateRegexMatchSetRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateRegexMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    CreateRegexMatchSetRequest.type = Types::CreateRegexMatchSetRequest
    CreateRegexMatchSetResponse.add_member(:regex_match_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegexMatchSet, location_name: "RegexMatchSet"))
    CreateRegexMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    CreateRegexMatchSetResponse.type = Types::CreateRegexMatchSetResponse
    CreateRegexPatternSetRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateRegexPatternSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    CreateRegexPatternSetRequest.type = Types::CreateRegexPatternSetRequest
    CreateRegexPatternSetResponse.add_member(:regex_pattern_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegexPatternSet, location_name: "RegexPatternSet"))
    CreateRegexPatternSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    CreateRegexPatternSetResponse.type = Types::CreateRegexPatternSetResponse
    CreateRuleGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateRuleGroupRequest.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName", traits: {"smithy.api#required" => {}}))
    CreateRuleGroupRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    CreateRuleGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateRuleGroupRequest.type = Types::CreateRuleGroupRequest
    CreateRuleGroupResponse.add_member(:rule_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroup, location_name: "RuleGroup"))
    CreateRuleGroupResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    CreateRuleGroupResponse.type = Types::CreateRuleGroupResponse
    CreateRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateRuleRequest.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName", traits: {"smithy.api#required" => {}}))
    CreateRuleRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    CreateRuleRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateRuleRequest.type = Types::CreateRuleRequest
    CreateRuleResponse.add_member(:rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rule, location_name: "Rule"))
    CreateRuleResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    CreateRuleResponse.type = Types::CreateRuleResponse
    CreateSizeConstraintSetRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateSizeConstraintSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    CreateSizeConstraintSetRequest.type = Types::CreateSizeConstraintSetRequest
    CreateSizeConstraintSetResponse.add_member(:size_constraint_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SizeConstraintSet, location_name: "SizeConstraintSet"))
    CreateSizeConstraintSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    CreateSizeConstraintSetResponse.type = Types::CreateSizeConstraintSetResponse
    CreateSqlInjectionMatchSetRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateSqlInjectionMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    CreateSqlInjectionMatchSetRequest.type = Types::CreateSqlInjectionMatchSetRequest
    CreateSqlInjectionMatchSetResponse.add_member(:sql_injection_match_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqlInjectionMatchSet, location_name: "SqlInjectionMatchSet"))
    CreateSqlInjectionMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    CreateSqlInjectionMatchSetResponse.type = Types::CreateSqlInjectionMatchSetResponse
    CreateWebACLMigrationStackRequest.add_member(:web_acl_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "WebACLId", traits: {"smithy.api#required" => {}}))
    CreateWebACLMigrationStackRequest.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: "S3BucketName", traits: {"smithy.api#required" => {}}))
    CreateWebACLMigrationStackRequest.add_member(:ignore_unsupported_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IgnoreUnsupportedType, location_name: "IgnoreUnsupportedType", traits: {"smithy.api#required" => {}}))
    CreateWebACLMigrationStackRequest.type = Types::CreateWebACLMigrationStackRequest
    CreateWebACLMigrationStackResponse.add_member(:s3_object_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectUrl, location_name: "S3ObjectUrl", traits: {"smithy.api#required" => {}}))
    CreateWebACLMigrationStackResponse.type = Types::CreateWebACLMigrationStackResponse
    CreateWebACLRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateWebACLRequest.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName", traits: {"smithy.api#required" => {}}))
    CreateWebACLRequest.add_member(:default_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WafAction, location_name: "DefaultAction", traits: {"smithy.api#required" => {}}))
    CreateWebACLRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    CreateWebACLRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateWebACLRequest.type = Types::CreateWebACLRequest
    CreateWebACLResponse.add_member(:web_acl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebACL, location_name: "WebACL"))
    CreateWebACLResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    CreateWebACLResponse.type = Types::CreateWebACLResponse
    CreateXssMatchSetRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateXssMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    CreateXssMatchSetRequest.type = Types::CreateXssMatchSetRequest
    CreateXssMatchSetResponse.add_member(:xss_match_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XssMatchSet, location_name: "XssMatchSet"))
    CreateXssMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    CreateXssMatchSetResponse.type = Types::CreateXssMatchSetResponse
    DeleteByteMatchSetRequest.add_member(:byte_match_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ByteMatchSetId", traits: {"smithy.api#required" => {}}))
    DeleteByteMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    DeleteByteMatchSetRequest.type = Types::DeleteByteMatchSetRequest
    DeleteByteMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    DeleteByteMatchSetResponse.type = Types::DeleteByteMatchSetResponse
    DeleteGeoMatchSetRequest.add_member(:geo_match_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "GeoMatchSetId", traits: {"smithy.api#required" => {}}))
    DeleteGeoMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    DeleteGeoMatchSetRequest.type = Types::DeleteGeoMatchSetRequest
    DeleteGeoMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    DeleteGeoMatchSetResponse.type = Types::DeleteGeoMatchSetResponse
    DeleteIPSetRequest.add_member(:ip_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "IPSetId", traits: {"smithy.api#required" => {}}))
    DeleteIPSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    DeleteIPSetRequest.type = Types::DeleteIPSetRequest
    DeleteIPSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    DeleteIPSetResponse.type = Types::DeleteIPSetResponse
    DeleteLoggingConfigurationRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DeleteLoggingConfigurationRequest.type = Types::DeleteLoggingConfigurationRequest
    DeleteLoggingConfigurationResponse.type = Types::DeleteLoggingConfigurationResponse
    DeletePermissionPolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DeletePermissionPolicyRequest.type = Types::DeletePermissionPolicyRequest
    DeletePermissionPolicyResponse.type = Types::DeletePermissionPolicyResponse
    DeleteRateBasedRuleRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RuleId", traits: {"smithy.api#required" => {}}))
    DeleteRateBasedRuleRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    DeleteRateBasedRuleRequest.type = Types::DeleteRateBasedRuleRequest
    DeleteRateBasedRuleResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    DeleteRateBasedRuleResponse.type = Types::DeleteRateBasedRuleResponse
    DeleteRegexMatchSetRequest.add_member(:regex_match_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RegexMatchSetId", traits: {"smithy.api#required" => {}}))
    DeleteRegexMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    DeleteRegexMatchSetRequest.type = Types::DeleteRegexMatchSetRequest
    DeleteRegexMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    DeleteRegexMatchSetResponse.type = Types::DeleteRegexMatchSetResponse
    DeleteRegexPatternSetRequest.add_member(:regex_pattern_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RegexPatternSetId", traits: {"smithy.api#required" => {}}))
    DeleteRegexPatternSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    DeleteRegexPatternSetRequest.type = Types::DeleteRegexPatternSetRequest
    DeleteRegexPatternSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    DeleteRegexPatternSetResponse.type = Types::DeleteRegexPatternSetResponse
    DeleteRuleGroupRequest.add_member(:rule_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RuleGroupId", traits: {"smithy.api#required" => {}}))
    DeleteRuleGroupRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    DeleteRuleGroupRequest.type = Types::DeleteRuleGroupRequest
    DeleteRuleGroupResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    DeleteRuleGroupResponse.type = Types::DeleteRuleGroupResponse
    DeleteRuleRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RuleId", traits: {"smithy.api#required" => {}}))
    DeleteRuleRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    DeleteRuleRequest.type = Types::DeleteRuleRequest
    DeleteRuleResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    DeleteRuleResponse.type = Types::DeleteRuleResponse
    DeleteSizeConstraintSetRequest.add_member(:size_constraint_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "SizeConstraintSetId", traits: {"smithy.api#required" => {}}))
    DeleteSizeConstraintSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    DeleteSizeConstraintSetRequest.type = Types::DeleteSizeConstraintSetRequest
    DeleteSizeConstraintSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    DeleteSizeConstraintSetResponse.type = Types::DeleteSizeConstraintSetResponse
    DeleteSqlInjectionMatchSetRequest.add_member(:sql_injection_match_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "SqlInjectionMatchSetId", traits: {"smithy.api#required" => {}}))
    DeleteSqlInjectionMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    DeleteSqlInjectionMatchSetRequest.type = Types::DeleteSqlInjectionMatchSetRequest
    DeleteSqlInjectionMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    DeleteSqlInjectionMatchSetResponse.type = Types::DeleteSqlInjectionMatchSetResponse
    DeleteWebACLRequest.add_member(:web_acl_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "WebACLId", traits: {"smithy.api#required" => {}}))
    DeleteWebACLRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    DeleteWebACLRequest.type = Types::DeleteWebACLRequest
    DeleteWebACLResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    DeleteWebACLResponse.type = Types::DeleteWebACLResponse
    DeleteXssMatchSetRequest.add_member(:xss_match_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "XssMatchSetId", traits: {"smithy.api#required" => {}}))
    DeleteXssMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    DeleteXssMatchSetRequest.type = Types::DeleteXssMatchSetRequest
    DeleteXssMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    DeleteXssMatchSetResponse.type = Types::DeleteXssMatchSetResponse
    ExcludedRule.add_member(:rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RuleId", traits: {"smithy.api#required" => {}}))
    ExcludedRule.type = Types::ExcludedRule
    ExcludedRules.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExcludedRule)
    FieldToMatch.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchFieldType, location_name: "Type", traits: {"smithy.api#required" => {}}))
    FieldToMatch.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchFieldData, location_name: "Data"))
    FieldToMatch.type = Types::FieldToMatch
    GeoMatchConstraint.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoMatchConstraintType, location_name: "Type", traits: {"smithy.api#required" => {}}))
    GeoMatchConstraint.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoMatchConstraintValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    GeoMatchConstraint.type = Types::GeoMatchConstraint
    GeoMatchConstraintType.add_member(:country, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Country", traits: {"smithy.api#enumValue" => "Country"}))
    GeoMatchConstraintValue.add_member(:af, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AF", traits: {"smithy.api#enumValue" => "AF"}))
    GeoMatchConstraintValue.add_member(:ax, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AX", traits: {"smithy.api#enumValue" => "AX"}))
    GeoMatchConstraintValue.add_member(:al, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AL", traits: {"smithy.api#enumValue" => "AL"}))
    GeoMatchConstraintValue.add_member(:dz, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DZ", traits: {"smithy.api#enumValue" => "DZ"}))
    GeoMatchConstraintValue.add_member(:as, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AS", traits: {"smithy.api#enumValue" => "AS"}))
    GeoMatchConstraintValue.add_member(:ad, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AD", traits: {"smithy.api#enumValue" => "AD"}))
    GeoMatchConstraintValue.add_member(:ao, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AO", traits: {"smithy.api#enumValue" => "AO"}))
    GeoMatchConstraintValue.add_member(:ai, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AI", traits: {"smithy.api#enumValue" => "AI"}))
    GeoMatchConstraintValue.add_member(:aq, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AQ", traits: {"smithy.api#enumValue" => "AQ"}))
    GeoMatchConstraintValue.add_member(:ag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AG", traits: {"smithy.api#enumValue" => "AG"}))
    GeoMatchConstraintValue.add_member(:ar, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AR", traits: {"smithy.api#enumValue" => "AR"}))
    GeoMatchConstraintValue.add_member(:am, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AM", traits: {"smithy.api#enumValue" => "AM"}))
    GeoMatchConstraintValue.add_member(:aw, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AW", traits: {"smithy.api#enumValue" => "AW"}))
    GeoMatchConstraintValue.add_member(:au, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AU", traits: {"smithy.api#enumValue" => "AU"}))
    GeoMatchConstraintValue.add_member(:at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AT", traits: {"smithy.api#enumValue" => "AT"}))
    GeoMatchConstraintValue.add_member(:az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AZ", traits: {"smithy.api#enumValue" => "AZ"}))
    GeoMatchConstraintValue.add_member(:bs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BS", traits: {"smithy.api#enumValue" => "BS"}))
    GeoMatchConstraintValue.add_member(:bh, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BH", traits: {"smithy.api#enumValue" => "BH"}))
    GeoMatchConstraintValue.add_member(:bd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BD", traits: {"smithy.api#enumValue" => "BD"}))
    GeoMatchConstraintValue.add_member(:bb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BB", traits: {"smithy.api#enumValue" => "BB"}))
    GeoMatchConstraintValue.add_member(:by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BY", traits: {"smithy.api#enumValue" => "BY"}))
    GeoMatchConstraintValue.add_member(:be, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BE", traits: {"smithy.api#enumValue" => "BE"}))
    GeoMatchConstraintValue.add_member(:bz, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BZ", traits: {"smithy.api#enumValue" => "BZ"}))
    GeoMatchConstraintValue.add_member(:bj, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BJ", traits: {"smithy.api#enumValue" => "BJ"}))
    GeoMatchConstraintValue.add_member(:bm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BM", traits: {"smithy.api#enumValue" => "BM"}))
    GeoMatchConstraintValue.add_member(:bt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BT", traits: {"smithy.api#enumValue" => "BT"}))
    GeoMatchConstraintValue.add_member(:bo, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BO", traits: {"smithy.api#enumValue" => "BO"}))
    GeoMatchConstraintValue.add_member(:bq, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BQ", traits: {"smithy.api#enumValue" => "BQ"}))
    GeoMatchConstraintValue.add_member(:ba, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BA", traits: {"smithy.api#enumValue" => "BA"}))
    GeoMatchConstraintValue.add_member(:bw, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BW", traits: {"smithy.api#enumValue" => "BW"}))
    GeoMatchConstraintValue.add_member(:bv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BV", traits: {"smithy.api#enumValue" => "BV"}))
    GeoMatchConstraintValue.add_member(:br, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BR", traits: {"smithy.api#enumValue" => "BR"}))
    GeoMatchConstraintValue.add_member(:io, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IO", traits: {"smithy.api#enumValue" => "IO"}))
    GeoMatchConstraintValue.add_member(:bn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BN", traits: {"smithy.api#enumValue" => "BN"}))
    GeoMatchConstraintValue.add_member(:bg, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BG", traits: {"smithy.api#enumValue" => "BG"}))
    GeoMatchConstraintValue.add_member(:bf, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BF", traits: {"smithy.api#enumValue" => "BF"}))
    GeoMatchConstraintValue.add_member(:bi, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BI", traits: {"smithy.api#enumValue" => "BI"}))
    GeoMatchConstraintValue.add_member(:kh, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KH", traits: {"smithy.api#enumValue" => "KH"}))
    GeoMatchConstraintValue.add_member(:cm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CM", traits: {"smithy.api#enumValue" => "CM"}))
    GeoMatchConstraintValue.add_member(:ca, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CA", traits: {"smithy.api#enumValue" => "CA"}))
    GeoMatchConstraintValue.add_member(:cv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CV", traits: {"smithy.api#enumValue" => "CV"}))
    GeoMatchConstraintValue.add_member(:ky, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KY", traits: {"smithy.api#enumValue" => "KY"}))
    GeoMatchConstraintValue.add_member(:cf, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CF", traits: {"smithy.api#enumValue" => "CF"}))
    GeoMatchConstraintValue.add_member(:td, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TD", traits: {"smithy.api#enumValue" => "TD"}))
    GeoMatchConstraintValue.add_member(:cl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CL", traits: {"smithy.api#enumValue" => "CL"}))
    GeoMatchConstraintValue.add_member(:cn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CN", traits: {"smithy.api#enumValue" => "CN"}))
    GeoMatchConstraintValue.add_member(:cx, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CX", traits: {"smithy.api#enumValue" => "CX"}))
    GeoMatchConstraintValue.add_member(:cc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CC", traits: {"smithy.api#enumValue" => "CC"}))
    GeoMatchConstraintValue.add_member(:co, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CO", traits: {"smithy.api#enumValue" => "CO"}))
    GeoMatchConstraintValue.add_member(:km, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KM", traits: {"smithy.api#enumValue" => "KM"}))
    GeoMatchConstraintValue.add_member(:cg, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CG", traits: {"smithy.api#enumValue" => "CG"}))
    GeoMatchConstraintValue.add_member(:cd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CD", traits: {"smithy.api#enumValue" => "CD"}))
    GeoMatchConstraintValue.add_member(:ck, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CK", traits: {"smithy.api#enumValue" => "CK"}))
    GeoMatchConstraintValue.add_member(:cr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CR", traits: {"smithy.api#enumValue" => "CR"}))
    GeoMatchConstraintValue.add_member(:ci, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CI", traits: {"smithy.api#enumValue" => "CI"}))
    GeoMatchConstraintValue.add_member(:hr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HR", traits: {"smithy.api#enumValue" => "HR"}))
    GeoMatchConstraintValue.add_member(:cu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CU", traits: {"smithy.api#enumValue" => "CU"}))
    GeoMatchConstraintValue.add_member(:cw, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CW", traits: {"smithy.api#enumValue" => "CW"}))
    GeoMatchConstraintValue.add_member(:cy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CY", traits: {"smithy.api#enumValue" => "CY"}))
    GeoMatchConstraintValue.add_member(:cz, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CZ", traits: {"smithy.api#enumValue" => "CZ"}))
    GeoMatchConstraintValue.add_member(:dk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DK", traits: {"smithy.api#enumValue" => "DK"}))
    GeoMatchConstraintValue.add_member(:dj, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DJ", traits: {"smithy.api#enumValue" => "DJ"}))
    GeoMatchConstraintValue.add_member(:dm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DM", traits: {"smithy.api#enumValue" => "DM"}))
    GeoMatchConstraintValue.add_member(:do, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DO", traits: {"smithy.api#enumValue" => "DO"}))
    GeoMatchConstraintValue.add_member(:ec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EC", traits: {"smithy.api#enumValue" => "EC"}))
    GeoMatchConstraintValue.add_member(:eg, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EG", traits: {"smithy.api#enumValue" => "EG"}))
    GeoMatchConstraintValue.add_member(:sv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SV", traits: {"smithy.api#enumValue" => "SV"}))
    GeoMatchConstraintValue.add_member(:gq, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GQ", traits: {"smithy.api#enumValue" => "GQ"}))
    GeoMatchConstraintValue.add_member(:er, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ER", traits: {"smithy.api#enumValue" => "ER"}))
    GeoMatchConstraintValue.add_member(:ee, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EE", traits: {"smithy.api#enumValue" => "EE"}))
    GeoMatchConstraintValue.add_member(:et, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ET", traits: {"smithy.api#enumValue" => "ET"}))
    GeoMatchConstraintValue.add_member(:fk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FK", traits: {"smithy.api#enumValue" => "FK"}))
    GeoMatchConstraintValue.add_member(:fo, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FO", traits: {"smithy.api#enumValue" => "FO"}))
    GeoMatchConstraintValue.add_member(:fj, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FJ", traits: {"smithy.api#enumValue" => "FJ"}))
    GeoMatchConstraintValue.add_member(:fi, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FI", traits: {"smithy.api#enumValue" => "FI"}))
    GeoMatchConstraintValue.add_member(:fr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FR", traits: {"smithy.api#enumValue" => "FR"}))
    GeoMatchConstraintValue.add_member(:gf, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GF", traits: {"smithy.api#enumValue" => "GF"}))
    GeoMatchConstraintValue.add_member(:pf, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PF", traits: {"smithy.api#enumValue" => "PF"}))
    GeoMatchConstraintValue.add_member(:tf, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TF", traits: {"smithy.api#enumValue" => "TF"}))
    GeoMatchConstraintValue.add_member(:ga, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GA", traits: {"smithy.api#enumValue" => "GA"}))
    GeoMatchConstraintValue.add_member(:gm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GM", traits: {"smithy.api#enumValue" => "GM"}))
    GeoMatchConstraintValue.add_member(:ge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GE", traits: {"smithy.api#enumValue" => "GE"}))
    GeoMatchConstraintValue.add_member(:de, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DE", traits: {"smithy.api#enumValue" => "DE"}))
    GeoMatchConstraintValue.add_member(:gh, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GH", traits: {"smithy.api#enumValue" => "GH"}))
    GeoMatchConstraintValue.add_member(:gi, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GI", traits: {"smithy.api#enumValue" => "GI"}))
    GeoMatchConstraintValue.add_member(:gr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GR", traits: {"smithy.api#enumValue" => "GR"}))
    GeoMatchConstraintValue.add_member(:gl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GL", traits: {"smithy.api#enumValue" => "GL"}))
    GeoMatchConstraintValue.add_member(:gd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GD", traits: {"smithy.api#enumValue" => "GD"}))
    GeoMatchConstraintValue.add_member(:gp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GP", traits: {"smithy.api#enumValue" => "GP"}))
    GeoMatchConstraintValue.add_member(:gu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GU", traits: {"smithy.api#enumValue" => "GU"}))
    GeoMatchConstraintValue.add_member(:gt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GT", traits: {"smithy.api#enumValue" => "GT"}))
    GeoMatchConstraintValue.add_member(:gg, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GG", traits: {"smithy.api#enumValue" => "GG"}))
    GeoMatchConstraintValue.add_member(:gn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GN", traits: {"smithy.api#enumValue" => "GN"}))
    GeoMatchConstraintValue.add_member(:gw, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GW", traits: {"smithy.api#enumValue" => "GW"}))
    GeoMatchConstraintValue.add_member(:gy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GY", traits: {"smithy.api#enumValue" => "GY"}))
    GeoMatchConstraintValue.add_member(:ht, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HT", traits: {"smithy.api#enumValue" => "HT"}))
    GeoMatchConstraintValue.add_member(:hm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HM", traits: {"smithy.api#enumValue" => "HM"}))
    GeoMatchConstraintValue.add_member(:va, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VA", traits: {"smithy.api#enumValue" => "VA"}))
    GeoMatchConstraintValue.add_member(:hn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HN", traits: {"smithy.api#enumValue" => "HN"}))
    GeoMatchConstraintValue.add_member(:hk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HK", traits: {"smithy.api#enumValue" => "HK"}))
    GeoMatchConstraintValue.add_member(:hu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HU", traits: {"smithy.api#enumValue" => "HU"}))
    GeoMatchConstraintValue.add_member(:is, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IS", traits: {"smithy.api#enumValue" => "IS"}))
    GeoMatchConstraintValue.add_member(:in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN", traits: {"smithy.api#enumValue" => "IN"}))
    GeoMatchConstraintValue.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ID", traits: {"smithy.api#enumValue" => "ID"}))
    GeoMatchConstraintValue.add_member(:ir, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IR", traits: {"smithy.api#enumValue" => "IR"}))
    GeoMatchConstraintValue.add_member(:iq, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IQ", traits: {"smithy.api#enumValue" => "IQ"}))
    GeoMatchConstraintValue.add_member(:ie, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IE", traits: {"smithy.api#enumValue" => "IE"}))
    GeoMatchConstraintValue.add_member(:im, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IM", traits: {"smithy.api#enumValue" => "IM"}))
    GeoMatchConstraintValue.add_member(:il, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IL", traits: {"smithy.api#enumValue" => "IL"}))
    GeoMatchConstraintValue.add_member(:it, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IT", traits: {"smithy.api#enumValue" => "IT"}))
    GeoMatchConstraintValue.add_member(:jm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JM", traits: {"smithy.api#enumValue" => "JM"}))
    GeoMatchConstraintValue.add_member(:jp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JP", traits: {"smithy.api#enumValue" => "JP"}))
    GeoMatchConstraintValue.add_member(:je, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JE", traits: {"smithy.api#enumValue" => "JE"}))
    GeoMatchConstraintValue.add_member(:jo, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JO", traits: {"smithy.api#enumValue" => "JO"}))
    GeoMatchConstraintValue.add_member(:kz, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KZ", traits: {"smithy.api#enumValue" => "KZ"}))
    GeoMatchConstraintValue.add_member(:ke, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KE", traits: {"smithy.api#enumValue" => "KE"}))
    GeoMatchConstraintValue.add_member(:ki, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KI", traits: {"smithy.api#enumValue" => "KI"}))
    GeoMatchConstraintValue.add_member(:kp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KP", traits: {"smithy.api#enumValue" => "KP"}))
    GeoMatchConstraintValue.add_member(:kr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KR", traits: {"smithy.api#enumValue" => "KR"}))
    GeoMatchConstraintValue.add_member(:kw, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KW", traits: {"smithy.api#enumValue" => "KW"}))
    GeoMatchConstraintValue.add_member(:kg, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KG", traits: {"smithy.api#enumValue" => "KG"}))
    GeoMatchConstraintValue.add_member(:la, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LA", traits: {"smithy.api#enumValue" => "LA"}))
    GeoMatchConstraintValue.add_member(:lv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LV", traits: {"smithy.api#enumValue" => "LV"}))
    GeoMatchConstraintValue.add_member(:lb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LB", traits: {"smithy.api#enumValue" => "LB"}))
    GeoMatchConstraintValue.add_member(:ls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LS", traits: {"smithy.api#enumValue" => "LS"}))
    GeoMatchConstraintValue.add_member(:lr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LR", traits: {"smithy.api#enumValue" => "LR"}))
    GeoMatchConstraintValue.add_member(:ly, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LY", traits: {"smithy.api#enumValue" => "LY"}))
    GeoMatchConstraintValue.add_member(:li, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LI", traits: {"smithy.api#enumValue" => "LI"}))
    GeoMatchConstraintValue.add_member(:lt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LT", traits: {"smithy.api#enumValue" => "LT"}))
    GeoMatchConstraintValue.add_member(:lu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LU", traits: {"smithy.api#enumValue" => "LU"}))
    GeoMatchConstraintValue.add_member(:mo, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MO", traits: {"smithy.api#enumValue" => "MO"}))
    GeoMatchConstraintValue.add_member(:mk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MK", traits: {"smithy.api#enumValue" => "MK"}))
    GeoMatchConstraintValue.add_member(:mg, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MG", traits: {"smithy.api#enumValue" => "MG"}))
    GeoMatchConstraintValue.add_member(:mw, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MW", traits: {"smithy.api#enumValue" => "MW"}))
    GeoMatchConstraintValue.add_member(:my, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MY", traits: {"smithy.api#enumValue" => "MY"}))
    GeoMatchConstraintValue.add_member(:mv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MV", traits: {"smithy.api#enumValue" => "MV"}))
    GeoMatchConstraintValue.add_member(:ml, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ML", traits: {"smithy.api#enumValue" => "ML"}))
    GeoMatchConstraintValue.add_member(:mt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MT", traits: {"smithy.api#enumValue" => "MT"}))
    GeoMatchConstraintValue.add_member(:mh, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MH", traits: {"smithy.api#enumValue" => "MH"}))
    GeoMatchConstraintValue.add_member(:mq, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MQ", traits: {"smithy.api#enumValue" => "MQ"}))
    GeoMatchConstraintValue.add_member(:mr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MR", traits: {"smithy.api#enumValue" => "MR"}))
    GeoMatchConstraintValue.add_member(:mu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MU", traits: {"smithy.api#enumValue" => "MU"}))
    GeoMatchConstraintValue.add_member(:yt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "YT", traits: {"smithy.api#enumValue" => "YT"}))
    GeoMatchConstraintValue.add_member(:mx, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MX", traits: {"smithy.api#enumValue" => "MX"}))
    GeoMatchConstraintValue.add_member(:fm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FM", traits: {"smithy.api#enumValue" => "FM"}))
    GeoMatchConstraintValue.add_member(:md, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MD", traits: {"smithy.api#enumValue" => "MD"}))
    GeoMatchConstraintValue.add_member(:mc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MC", traits: {"smithy.api#enumValue" => "MC"}))
    GeoMatchConstraintValue.add_member(:mn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MN", traits: {"smithy.api#enumValue" => "MN"}))
    GeoMatchConstraintValue.add_member(:me, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ME", traits: {"smithy.api#enumValue" => "ME"}))
    GeoMatchConstraintValue.add_member(:ms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MS", traits: {"smithy.api#enumValue" => "MS"}))
    GeoMatchConstraintValue.add_member(:ma, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MA", traits: {"smithy.api#enumValue" => "MA"}))
    GeoMatchConstraintValue.add_member(:mz, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MZ", traits: {"smithy.api#enumValue" => "MZ"}))
    GeoMatchConstraintValue.add_member(:mm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MM", traits: {"smithy.api#enumValue" => "MM"}))
    GeoMatchConstraintValue.add_member(:na, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NA", traits: {"smithy.api#enumValue" => "NA"}))
    GeoMatchConstraintValue.add_member(:nr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NR", traits: {"smithy.api#enumValue" => "NR"}))
    GeoMatchConstraintValue.add_member(:np, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NP", traits: {"smithy.api#enumValue" => "NP"}))
    GeoMatchConstraintValue.add_member(:nl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NL", traits: {"smithy.api#enumValue" => "NL"}))
    GeoMatchConstraintValue.add_member(:nc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NC", traits: {"smithy.api#enumValue" => "NC"}))
    GeoMatchConstraintValue.add_member(:nz, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NZ", traits: {"smithy.api#enumValue" => "NZ"}))
    GeoMatchConstraintValue.add_member(:ni, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NI", traits: {"smithy.api#enumValue" => "NI"}))
    GeoMatchConstraintValue.add_member(:ne, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NE", traits: {"smithy.api#enumValue" => "NE"}))
    GeoMatchConstraintValue.add_member(:ng, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NG", traits: {"smithy.api#enumValue" => "NG"}))
    GeoMatchConstraintValue.add_member(:nu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NU", traits: {"smithy.api#enumValue" => "NU"}))
    GeoMatchConstraintValue.add_member(:nf, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NF", traits: {"smithy.api#enumValue" => "NF"}))
    GeoMatchConstraintValue.add_member(:mp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MP", traits: {"smithy.api#enumValue" => "MP"}))
    GeoMatchConstraintValue.add_member(:no, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO", traits: {"smithy.api#enumValue" => "NO"}))
    GeoMatchConstraintValue.add_member(:om, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OM", traits: {"smithy.api#enumValue" => "OM"}))
    GeoMatchConstraintValue.add_member(:pk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PK", traits: {"smithy.api#enumValue" => "PK"}))
    GeoMatchConstraintValue.add_member(:pw, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PW", traits: {"smithy.api#enumValue" => "PW"}))
    GeoMatchConstraintValue.add_member(:ps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PS", traits: {"smithy.api#enumValue" => "PS"}))
    GeoMatchConstraintValue.add_member(:pa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PA", traits: {"smithy.api#enumValue" => "PA"}))
    GeoMatchConstraintValue.add_member(:pg, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PG", traits: {"smithy.api#enumValue" => "PG"}))
    GeoMatchConstraintValue.add_member(:py, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PY", traits: {"smithy.api#enumValue" => "PY"}))
    GeoMatchConstraintValue.add_member(:pe, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PE", traits: {"smithy.api#enumValue" => "PE"}))
    GeoMatchConstraintValue.add_member(:ph, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PH", traits: {"smithy.api#enumValue" => "PH"}))
    GeoMatchConstraintValue.add_member(:pn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PN", traits: {"smithy.api#enumValue" => "PN"}))
    GeoMatchConstraintValue.add_member(:pl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PL", traits: {"smithy.api#enumValue" => "PL"}))
    GeoMatchConstraintValue.add_member(:pt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PT", traits: {"smithy.api#enumValue" => "PT"}))
    GeoMatchConstraintValue.add_member(:pr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PR", traits: {"smithy.api#enumValue" => "PR"}))
    GeoMatchConstraintValue.add_member(:qa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QA", traits: {"smithy.api#enumValue" => "QA"}))
    GeoMatchConstraintValue.add_member(:re, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RE", traits: {"smithy.api#enumValue" => "RE"}))
    GeoMatchConstraintValue.add_member(:ro, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RO", traits: {"smithy.api#enumValue" => "RO"}))
    GeoMatchConstraintValue.add_member(:ru, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RU", traits: {"smithy.api#enumValue" => "RU"}))
    GeoMatchConstraintValue.add_member(:rw, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RW", traits: {"smithy.api#enumValue" => "RW"}))
    GeoMatchConstraintValue.add_member(:bl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BL", traits: {"smithy.api#enumValue" => "BL"}))
    GeoMatchConstraintValue.add_member(:sh, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SH", traits: {"smithy.api#enumValue" => "SH"}))
    GeoMatchConstraintValue.add_member(:kn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KN", traits: {"smithy.api#enumValue" => "KN"}))
    GeoMatchConstraintValue.add_member(:lc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LC", traits: {"smithy.api#enumValue" => "LC"}))
    GeoMatchConstraintValue.add_member(:mf, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MF", traits: {"smithy.api#enumValue" => "MF"}))
    GeoMatchConstraintValue.add_member(:pm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PM", traits: {"smithy.api#enumValue" => "PM"}))
    GeoMatchConstraintValue.add_member(:vc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VC", traits: {"smithy.api#enumValue" => "VC"}))
    GeoMatchConstraintValue.add_member(:ws, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WS", traits: {"smithy.api#enumValue" => "WS"}))
    GeoMatchConstraintValue.add_member(:sm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SM", traits: {"smithy.api#enumValue" => "SM"}))
    GeoMatchConstraintValue.add_member(:st, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ST", traits: {"smithy.api#enumValue" => "ST"}))
    GeoMatchConstraintValue.add_member(:sa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SA", traits: {"smithy.api#enumValue" => "SA"}))
    GeoMatchConstraintValue.add_member(:sn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SN", traits: {"smithy.api#enumValue" => "SN"}))
    GeoMatchConstraintValue.add_member(:rs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RS", traits: {"smithy.api#enumValue" => "RS"}))
    GeoMatchConstraintValue.add_member(:sc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SC", traits: {"smithy.api#enumValue" => "SC"}))
    GeoMatchConstraintValue.add_member(:sl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SL", traits: {"smithy.api#enumValue" => "SL"}))
    GeoMatchConstraintValue.add_member(:sg, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SG", traits: {"smithy.api#enumValue" => "SG"}))
    GeoMatchConstraintValue.add_member(:sx, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SX", traits: {"smithy.api#enumValue" => "SX"}))
    GeoMatchConstraintValue.add_member(:sk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SK", traits: {"smithy.api#enumValue" => "SK"}))
    GeoMatchConstraintValue.add_member(:si, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SI", traits: {"smithy.api#enumValue" => "SI"}))
    GeoMatchConstraintValue.add_member(:sb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SB", traits: {"smithy.api#enumValue" => "SB"}))
    GeoMatchConstraintValue.add_member(:so, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SO", traits: {"smithy.api#enumValue" => "SO"}))
    GeoMatchConstraintValue.add_member(:za, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZA", traits: {"smithy.api#enumValue" => "ZA"}))
    GeoMatchConstraintValue.add_member(:gs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GS", traits: {"smithy.api#enumValue" => "GS"}))
    GeoMatchConstraintValue.add_member(:ss, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SS", traits: {"smithy.api#enumValue" => "SS"}))
    GeoMatchConstraintValue.add_member(:es, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ES", traits: {"smithy.api#enumValue" => "ES"}))
    GeoMatchConstraintValue.add_member(:lk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LK", traits: {"smithy.api#enumValue" => "LK"}))
    GeoMatchConstraintValue.add_member(:sd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SD", traits: {"smithy.api#enumValue" => "SD"}))
    GeoMatchConstraintValue.add_member(:sr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SR", traits: {"smithy.api#enumValue" => "SR"}))
    GeoMatchConstraintValue.add_member(:sj, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SJ", traits: {"smithy.api#enumValue" => "SJ"}))
    GeoMatchConstraintValue.add_member(:sz, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SZ", traits: {"smithy.api#enumValue" => "SZ"}))
    GeoMatchConstraintValue.add_member(:se, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SE", traits: {"smithy.api#enumValue" => "SE"}))
    GeoMatchConstraintValue.add_member(:ch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CH", traits: {"smithy.api#enumValue" => "CH"}))
    GeoMatchConstraintValue.add_member(:sy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SY", traits: {"smithy.api#enumValue" => "SY"}))
    GeoMatchConstraintValue.add_member(:tw, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TW", traits: {"smithy.api#enumValue" => "TW"}))
    GeoMatchConstraintValue.add_member(:tj, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TJ", traits: {"smithy.api#enumValue" => "TJ"}))
    GeoMatchConstraintValue.add_member(:tz, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TZ", traits: {"smithy.api#enumValue" => "TZ"}))
    GeoMatchConstraintValue.add_member(:th, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TH", traits: {"smithy.api#enumValue" => "TH"}))
    GeoMatchConstraintValue.add_member(:tl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TL", traits: {"smithy.api#enumValue" => "TL"}))
    GeoMatchConstraintValue.add_member(:tg, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TG", traits: {"smithy.api#enumValue" => "TG"}))
    GeoMatchConstraintValue.add_member(:tk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TK", traits: {"smithy.api#enumValue" => "TK"}))
    GeoMatchConstraintValue.add_member(:to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TO", traits: {"smithy.api#enumValue" => "TO"}))
    GeoMatchConstraintValue.add_member(:tt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TT", traits: {"smithy.api#enumValue" => "TT"}))
    GeoMatchConstraintValue.add_member(:tn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TN", traits: {"smithy.api#enumValue" => "TN"}))
    GeoMatchConstraintValue.add_member(:tr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TR", traits: {"smithy.api#enumValue" => "TR"}))
    GeoMatchConstraintValue.add_member(:tm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TM", traits: {"smithy.api#enumValue" => "TM"}))
    GeoMatchConstraintValue.add_member(:tc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TC", traits: {"smithy.api#enumValue" => "TC"}))
    GeoMatchConstraintValue.add_member(:tv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TV", traits: {"smithy.api#enumValue" => "TV"}))
    GeoMatchConstraintValue.add_member(:ug, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UG", traits: {"smithy.api#enumValue" => "UG"}))
    GeoMatchConstraintValue.add_member(:ua, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UA", traits: {"smithy.api#enumValue" => "UA"}))
    GeoMatchConstraintValue.add_member(:ae, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AE", traits: {"smithy.api#enumValue" => "AE"}))
    GeoMatchConstraintValue.add_member(:gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GB", traits: {"smithy.api#enumValue" => "GB"}))
    GeoMatchConstraintValue.add_member(:us, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "US", traits: {"smithy.api#enumValue" => "US"}))
    GeoMatchConstraintValue.add_member(:um, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UM", traits: {"smithy.api#enumValue" => "UM"}))
    GeoMatchConstraintValue.add_member(:uy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UY", traits: {"smithy.api#enumValue" => "UY"}))
    GeoMatchConstraintValue.add_member(:uz, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UZ", traits: {"smithy.api#enumValue" => "UZ"}))
    GeoMatchConstraintValue.add_member(:vu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VU", traits: {"smithy.api#enumValue" => "VU"}))
    GeoMatchConstraintValue.add_member(:ve, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VE", traits: {"smithy.api#enumValue" => "VE"}))
    GeoMatchConstraintValue.add_member(:vn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VN", traits: {"smithy.api#enumValue" => "VN"}))
    GeoMatchConstraintValue.add_member(:vg, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VG", traits: {"smithy.api#enumValue" => "VG"}))
    GeoMatchConstraintValue.add_member(:vi, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VI", traits: {"smithy.api#enumValue" => "VI"}))
    GeoMatchConstraintValue.add_member(:wf, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WF", traits: {"smithy.api#enumValue" => "WF"}))
    GeoMatchConstraintValue.add_member(:eh, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EH", traits: {"smithy.api#enumValue" => "EH"}))
    GeoMatchConstraintValue.add_member(:ye, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "YE", traits: {"smithy.api#enumValue" => "YE"}))
    GeoMatchConstraintValue.add_member(:zm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZM", traits: {"smithy.api#enumValue" => "ZM"}))
    GeoMatchConstraintValue.add_member(:zw, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZW", traits: {"smithy.api#enumValue" => "ZW"}))
    GeoMatchConstraints.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoMatchConstraint)
    GeoMatchSet.add_member(:geo_match_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "GeoMatchSetId", traits: {"smithy.api#required" => {}}))
    GeoMatchSet.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    GeoMatchSet.add_member(:geo_match_constraints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoMatchConstraints, location_name: "GeoMatchConstraints", traits: {"smithy.api#required" => {}}))
    GeoMatchSet.type = Types::GeoMatchSet
    GeoMatchSetSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoMatchSetSummary)
    GeoMatchSetSummary.add_member(:geo_match_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "GeoMatchSetId", traits: {"smithy.api#required" => {}}))
    GeoMatchSetSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    GeoMatchSetSummary.type = Types::GeoMatchSetSummary
    GeoMatchSetUpdate.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeAction, location_name: "Action", traits: {"smithy.api#required" => {}}))
    GeoMatchSetUpdate.add_member(:geo_match_constraint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoMatchConstraint, location_name: "GeoMatchConstraint", traits: {"smithy.api#required" => {}}))
    GeoMatchSetUpdate.type = Types::GeoMatchSetUpdate
    GeoMatchSetUpdates.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoMatchSetUpdate)
    GetByteMatchSetRequest.add_member(:byte_match_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ByteMatchSetId", traits: {"smithy.api#required" => {}}))
    GetByteMatchSetRequest.type = Types::GetByteMatchSetRequest
    GetByteMatchSetResponse.add_member(:byte_match_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ByteMatchSet, location_name: "ByteMatchSet"))
    GetByteMatchSetResponse.type = Types::GetByteMatchSetResponse
    GetChangeTokenRequest.type = Types::GetChangeTokenRequest
    GetChangeTokenResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    GetChangeTokenResponse.type = Types::GetChangeTokenResponse
    GetChangeTokenStatusRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    GetChangeTokenStatusRequest.type = Types::GetChangeTokenStatusRequest
    GetChangeTokenStatusResponse.add_member(:change_token_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeTokenStatus, location_name: "ChangeTokenStatus"))
    GetChangeTokenStatusResponse.type = Types::GetChangeTokenStatusResponse
    GetGeoMatchSetRequest.add_member(:geo_match_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "GeoMatchSetId", traits: {"smithy.api#required" => {}}))
    GetGeoMatchSetRequest.type = Types::GetGeoMatchSetRequest
    GetGeoMatchSetResponse.add_member(:geo_match_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoMatchSet, location_name: "GeoMatchSet"))
    GetGeoMatchSetResponse.type = Types::GetGeoMatchSetResponse
    GetIPSetRequest.add_member(:ip_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "IPSetId", traits: {"smithy.api#required" => {}}))
    GetIPSetRequest.type = Types::GetIPSetRequest
    GetIPSetResponse.add_member(:ip_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPSet, location_name: "IPSet"))
    GetIPSetResponse.type = Types::GetIPSetResponse
    GetLoggingConfigurationRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    GetLoggingConfigurationRequest.type = Types::GetLoggingConfigurationRequest
    GetLoggingConfigurationResponse.add_member(:logging_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "LoggingConfiguration"))
    GetLoggingConfigurationResponse.type = Types::GetLoggingConfigurationResponse
    GetPermissionPolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    GetPermissionPolicyRequest.type = Types::GetPermissionPolicyRequest
    GetPermissionPolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyString, location_name: "Policy"))
    GetPermissionPolicyResponse.type = Types::GetPermissionPolicyResponse
    GetRateBasedRuleManagedKeysRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RuleId", traits: {"smithy.api#required" => {}}))
    GetRateBasedRuleManagedKeysRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    GetRateBasedRuleManagedKeysRequest.type = Types::GetRateBasedRuleManagedKeysRequest
    GetRateBasedRuleManagedKeysResponse.add_member(:managed_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedKeys, location_name: "ManagedKeys"))
    GetRateBasedRuleManagedKeysResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    GetRateBasedRuleManagedKeysResponse.type = Types::GetRateBasedRuleManagedKeysResponse
    GetRateBasedRuleRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RuleId", traits: {"smithy.api#required" => {}}))
    GetRateBasedRuleRequest.type = Types::GetRateBasedRuleRequest
    GetRateBasedRuleResponse.add_member(:rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RateBasedRule, location_name: "Rule"))
    GetRateBasedRuleResponse.type = Types::GetRateBasedRuleResponse
    GetRegexMatchSetRequest.add_member(:regex_match_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RegexMatchSetId", traits: {"smithy.api#required" => {}}))
    GetRegexMatchSetRequest.type = Types::GetRegexMatchSetRequest
    GetRegexMatchSetResponse.add_member(:regex_match_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegexMatchSet, location_name: "RegexMatchSet"))
    GetRegexMatchSetResponse.type = Types::GetRegexMatchSetResponse
    GetRegexPatternSetRequest.add_member(:regex_pattern_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RegexPatternSetId", traits: {"smithy.api#required" => {}}))
    GetRegexPatternSetRequest.type = Types::GetRegexPatternSetRequest
    GetRegexPatternSetResponse.add_member(:regex_pattern_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegexPatternSet, location_name: "RegexPatternSet"))
    GetRegexPatternSetResponse.type = Types::GetRegexPatternSetResponse
    GetRuleGroupRequest.add_member(:rule_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RuleGroupId", traits: {"smithy.api#required" => {}}))
    GetRuleGroupRequest.type = Types::GetRuleGroupRequest
    GetRuleGroupResponse.add_member(:rule_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroup, location_name: "RuleGroup"))
    GetRuleGroupResponse.type = Types::GetRuleGroupResponse
    GetRuleRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RuleId", traits: {"smithy.api#required" => {}}))
    GetRuleRequest.type = Types::GetRuleRequest
    GetRuleResponse.add_member(:rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rule, location_name: "Rule"))
    GetRuleResponse.type = Types::GetRuleResponse
    GetSampledRequestsRequest.add_member(:web_acl_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "WebAclId", traits: {"smithy.api#required" => {}}))
    GetSampledRequestsRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RuleId", traits: {"smithy.api#required" => {}}))
    GetSampledRequestsRequest.add_member(:time_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeWindow, location_name: "TimeWindow", traits: {"smithy.api#required" => {}}))
    GetSampledRequestsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSampledRequestsMaxItems, location_name: "MaxItems", traits: {"smithy.api#required" => {}}))
    GetSampledRequestsRequest.type = Types::GetSampledRequestsRequest
    GetSampledRequestsResponse.add_member(:sampled_requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SampledHTTPRequests, location_name: "SampledRequests"))
    GetSampledRequestsResponse.add_member(:population_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PopulationSize, location_name: "PopulationSize", traits: {"smithy.api#default" => 0}))
    GetSampledRequestsResponse.add_member(:time_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeWindow, location_name: "TimeWindow"))
    GetSampledRequestsResponse.type = Types::GetSampledRequestsResponse
    GetSizeConstraintSetRequest.add_member(:size_constraint_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "SizeConstraintSetId", traits: {"smithy.api#required" => {}}))
    GetSizeConstraintSetRequest.type = Types::GetSizeConstraintSetRequest
    GetSizeConstraintSetResponse.add_member(:size_constraint_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SizeConstraintSet, location_name: "SizeConstraintSet"))
    GetSizeConstraintSetResponse.type = Types::GetSizeConstraintSetResponse
    GetSqlInjectionMatchSetRequest.add_member(:sql_injection_match_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "SqlInjectionMatchSetId", traits: {"smithy.api#required" => {}}))
    GetSqlInjectionMatchSetRequest.type = Types::GetSqlInjectionMatchSetRequest
    GetSqlInjectionMatchSetResponse.add_member(:sql_injection_match_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqlInjectionMatchSet, location_name: "SqlInjectionMatchSet"))
    GetSqlInjectionMatchSetResponse.type = Types::GetSqlInjectionMatchSetResponse
    GetWebACLRequest.add_member(:web_acl_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "WebACLId", traits: {"smithy.api#required" => {}}))
    GetWebACLRequest.type = Types::GetWebACLRequest
    GetWebACLResponse.add_member(:web_acl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebACL, location_name: "WebACL"))
    GetWebACLResponse.type = Types::GetWebACLResponse
    GetXssMatchSetRequest.add_member(:xss_match_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "XssMatchSetId", traits: {"smithy.api#required" => {}}))
    GetXssMatchSetRequest.type = Types::GetXssMatchSetRequest
    GetXssMatchSetResponse.add_member(:xss_match_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XssMatchSet, location_name: "XssMatchSet"))
    GetXssMatchSetResponse.type = Types::GetXssMatchSetResponse
    HTTPHeader.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderName, location_name: "Name"))
    HTTPHeader.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderValue, location_name: "Value"))
    HTTPHeader.type = Types::HTTPHeader
    HTTPHeaders.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HTTPHeader)
    HTTPRequest.add_member(:client_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPString, location_name: "ClientIP"))
    HTTPRequest.add_member(:country, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Country, location_name: "Country"))
    HTTPRequest.add_member(:uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: URIString, location_name: "URI"))
    HTTPRequest.add_member(:method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HTTPMethod, location_name: "Method"))
    HTTPRequest.add_member(:http_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HTTPVersion, location_name: "HTTPVersion"))
    HTTPRequest.add_member(:headers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HTTPHeaders, location_name: "Headers"))
    HTTPRequest.type = Types::HTTPRequest
    IPSet.add_member(:ip_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "IPSetId", traits: {"smithy.api#required" => {}}))
    IPSet.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    IPSet.add_member(:ip_set_descriptors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPSetDescriptors, location_name: "IPSetDescriptors", traits: {"smithy.api#required" => {}}))
    IPSet.type = Types::IPSet
    IPSetDescriptor.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPSetDescriptorType, location_name: "Type", traits: {"smithy.api#required" => {}}))
    IPSetDescriptor.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPSetDescriptorValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    IPSetDescriptor.type = Types::IPSetDescriptor
    IPSetDescriptorType.add_member(:ipv4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IPV4", traits: {"smithy.api#enumValue" => "IPV4"}))
    IPSetDescriptorType.add_member(:ipv6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IPV6", traits: {"smithy.api#enumValue" => "IPV6"}))
    IPSetDescriptors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPSetDescriptor)
    IPSetSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPSetSummary)
    IPSetSummary.add_member(:ip_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "IPSetId", traits: {"smithy.api#required" => {}}))
    IPSetSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    IPSetSummary.type = Types::IPSetSummary
    IPSetUpdate.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeAction, location_name: "Action", traits: {"smithy.api#required" => {}}))
    IPSetUpdate.add_member(:ip_set_descriptor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPSetDescriptor, location_name: "IPSetDescriptor", traits: {"smithy.api#required" => {}}))
    IPSetUpdate.type = Types::IPSetUpdate
    IPSetUpdates.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPSetUpdate)
    ListActivatedRulesInRuleGroupRequest.add_member(:rule_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RuleGroupId"))
    ListActivatedRulesInRuleGroupRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListActivatedRulesInRuleGroupRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit", traits: {"smithy.api#default" => 0}))
    ListActivatedRulesInRuleGroupRequest.type = Types::ListActivatedRulesInRuleGroupRequest
    ListActivatedRulesInRuleGroupResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListActivatedRulesInRuleGroupResponse.add_member(:activated_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivatedRules, location_name: "ActivatedRules"))
    ListActivatedRulesInRuleGroupResponse.type = Types::ListActivatedRulesInRuleGroupResponse
    ListByteMatchSetsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListByteMatchSetsRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit", traits: {"smithy.api#default" => 0}))
    ListByteMatchSetsRequest.type = Types::ListByteMatchSetsRequest
    ListByteMatchSetsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListByteMatchSetsResponse.add_member(:byte_match_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ByteMatchSetSummaries, location_name: "ByteMatchSets"))
    ListByteMatchSetsResponse.type = Types::ListByteMatchSetsResponse
    ListGeoMatchSetsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListGeoMatchSetsRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit", traits: {"smithy.api#default" => 0}))
    ListGeoMatchSetsRequest.type = Types::ListGeoMatchSetsRequest
    ListGeoMatchSetsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListGeoMatchSetsResponse.add_member(:geo_match_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoMatchSetSummaries, location_name: "GeoMatchSets"))
    ListGeoMatchSetsResponse.type = Types::ListGeoMatchSetsResponse
    ListIPSetsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListIPSetsRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit", traits: {"smithy.api#default" => 0}))
    ListIPSetsRequest.type = Types::ListIPSetsRequest
    ListIPSetsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListIPSetsResponse.add_member(:ip_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPSetSummaries, location_name: "IPSets"))
    ListIPSetsResponse.type = Types::ListIPSetsResponse
    ListLoggingConfigurationsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListLoggingConfigurationsRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit", traits: {"smithy.api#default" => 0}))
    ListLoggingConfigurationsRequest.type = Types::ListLoggingConfigurationsRequest
    ListLoggingConfigurationsResponse.add_member(:logging_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurations, location_name: "LoggingConfigurations"))
    ListLoggingConfigurationsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListLoggingConfigurationsResponse.type = Types::ListLoggingConfigurationsResponse
    ListRateBasedRulesRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListRateBasedRulesRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit", traits: {"smithy.api#default" => 0}))
    ListRateBasedRulesRequest.type = Types::ListRateBasedRulesRequest
    ListRateBasedRulesResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListRateBasedRulesResponse.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSummaries, location_name: "Rules"))
    ListRateBasedRulesResponse.type = Types::ListRateBasedRulesResponse
    ListRegexMatchSetsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListRegexMatchSetsRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit", traits: {"smithy.api#default" => 0}))
    ListRegexMatchSetsRequest.type = Types::ListRegexMatchSetsRequest
    ListRegexMatchSetsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListRegexMatchSetsResponse.add_member(:regex_match_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegexMatchSetSummaries, location_name: "RegexMatchSets"))
    ListRegexMatchSetsResponse.type = Types::ListRegexMatchSetsResponse
    ListRegexPatternSetsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListRegexPatternSetsRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit", traits: {"smithy.api#default" => 0}))
    ListRegexPatternSetsRequest.type = Types::ListRegexPatternSetsRequest
    ListRegexPatternSetsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListRegexPatternSetsResponse.add_member(:regex_pattern_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegexPatternSetSummaries, location_name: "RegexPatternSets"))
    ListRegexPatternSetsResponse.type = Types::ListRegexPatternSetsResponse
    ListRuleGroupsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListRuleGroupsRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit", traits: {"smithy.api#default" => 0}))
    ListRuleGroupsRequest.type = Types::ListRuleGroupsRequest
    ListRuleGroupsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListRuleGroupsResponse.add_member(:rule_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupSummaries, location_name: "RuleGroups"))
    ListRuleGroupsResponse.type = Types::ListRuleGroupsResponse
    ListRulesRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListRulesRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit", traits: {"smithy.api#default" => 0}))
    ListRulesRequest.type = Types::ListRulesRequest
    ListRulesResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListRulesResponse.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSummaries, location_name: "Rules"))
    ListRulesResponse.type = Types::ListRulesResponse
    ListSizeConstraintSetsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListSizeConstraintSetsRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit", traits: {"smithy.api#default" => 0}))
    ListSizeConstraintSetsRequest.type = Types::ListSizeConstraintSetsRequest
    ListSizeConstraintSetsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListSizeConstraintSetsResponse.add_member(:size_constraint_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SizeConstraintSetSummaries, location_name: "SizeConstraintSets"))
    ListSizeConstraintSetsResponse.type = Types::ListSizeConstraintSetsResponse
    ListSqlInjectionMatchSetsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListSqlInjectionMatchSetsRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit", traits: {"smithy.api#default" => 0}))
    ListSqlInjectionMatchSetsRequest.type = Types::ListSqlInjectionMatchSetsRequest
    ListSqlInjectionMatchSetsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListSqlInjectionMatchSetsResponse.add_member(:sql_injection_match_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqlInjectionMatchSetSummaries, location_name: "SqlInjectionMatchSets"))
    ListSqlInjectionMatchSetsResponse.type = Types::ListSqlInjectionMatchSetsResponse
    ListSubscribedRuleGroupsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListSubscribedRuleGroupsRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit", traits: {"smithy.api#default" => 0}))
    ListSubscribedRuleGroupsRequest.type = Types::ListSubscribedRuleGroupsRequest
    ListSubscribedRuleGroupsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListSubscribedRuleGroupsResponse.add_member(:rule_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscribedRuleGroupSummaries, location_name: "RuleGroups"))
    ListSubscribedRuleGroupsResponse.type = Types::ListSubscribedRuleGroupsResponse
    ListTagsForResourceRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListTagsForResourceRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit", traits: {"smithy.api#default" => 0}))
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListTagsForResourceResponse.add_member(:tag_info_for_resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagInfoForResource, location_name: "TagInfoForResource"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListWebACLsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListWebACLsRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit", traits: {"smithy.api#default" => 0}))
    ListWebACLsRequest.type = Types::ListWebACLsRequest
    ListWebACLsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListWebACLsResponse.add_member(:web_ac_ls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebACLSummaries, location_name: "WebACLs"))
    ListWebACLsResponse.type = Types::ListWebACLsResponse
    ListXssMatchSetsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListXssMatchSetsRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit", traits: {"smithy.api#default" => 0}))
    ListXssMatchSetsRequest.type = Types::ListXssMatchSetsRequest
    ListXssMatchSetsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListXssMatchSetsResponse.add_member(:xss_match_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XssMatchSetSummaries, location_name: "XssMatchSets"))
    ListXssMatchSetsResponse.type = Types::ListXssMatchSetsResponse
    LogDestinationConfigs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn)
    LoggingConfiguration.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    LoggingConfiguration.add_member(:log_destination_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogDestinationConfigs, location_name: "LogDestinationConfigs", traits: {"smithy.api#required" => {}}))
    LoggingConfiguration.add_member(:redacted_fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedactedFields, location_name: "RedactedFields"))
    LoggingConfiguration.type = Types::LoggingConfiguration
    LoggingConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfiguration)
    ManagedKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedKey)
    MatchFieldType.add_member(:uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "URI", traits: {"smithy.api#enumValue" => "URI"}))
    MatchFieldType.add_member(:query_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUERY_STRING", traits: {"smithy.api#enumValue" => "QUERY_STRING"}))
    MatchFieldType.add_member(:header, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HEADER", traits: {"smithy.api#enumValue" => "HEADER"}))
    MatchFieldType.add_member(:method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "METHOD", traits: {"smithy.api#enumValue" => "METHOD"}))
    MatchFieldType.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BODY", traits: {"smithy.api#enumValue" => "BODY"}))
    MatchFieldType.add_member(:single_query_arg, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SINGLE_QUERY_ARG", traits: {"smithy.api#enumValue" => "SINGLE_QUERY_ARG"}))
    MatchFieldType.add_member(:all_query_args, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL_QUERY_ARGS", traits: {"smithy.api#enumValue" => "ALL_QUERY_ARGS"}))
    MigrationErrorType.add_member(:entity_not_supported, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENTITY_NOT_SUPPORTED", traits: {"smithy.api#enumValue" => "ENTITY_NOT_SUPPORTED"}))
    MigrationErrorType.add_member(:entity_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENTITY_NOT_FOUND", traits: {"smithy.api#enumValue" => "ENTITY_NOT_FOUND"}))
    MigrationErrorType.add_member(:s3_bucket_no_permission, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3_BUCKET_NO_PERMISSION", traits: {"smithy.api#enumValue" => "S3_BUCKET_NO_PERMISSION"}))
    MigrationErrorType.add_member(:s3_bucket_not_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3_BUCKET_NOT_ACCESSIBLE", traits: {"smithy.api#enumValue" => "S3_BUCKET_NOT_ACCESSIBLE"}))
    MigrationErrorType.add_member(:s3_bucket_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3_BUCKET_NOT_FOUND", traits: {"smithy.api#enumValue" => "S3_BUCKET_NOT_FOUND"}))
    MigrationErrorType.add_member(:s3_bucket_invalid_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3_BUCKET_INVALID_REGION", traits: {"smithy.api#enumValue" => "S3_BUCKET_INVALID_REGION"}))
    MigrationErrorType.add_member(:s3_internal_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3_INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "S3_INTERNAL_ERROR"}))
    ParameterExceptionField.add_member(:change_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CHANGE_ACTION", traits: {"smithy.api#enumValue" => "CHANGE_ACTION"}))
    ParameterExceptionField.add_member(:waf_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WAF_ACTION", traits: {"smithy.api#enumValue" => "WAF_ACTION"}))
    ParameterExceptionField.add_member(:waf_override_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WAF_OVERRIDE_ACTION", traits: {"smithy.api#enumValue" => "WAF_OVERRIDE_ACTION"}))
    ParameterExceptionField.add_member(:predicate_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PREDICATE_TYPE", traits: {"smithy.api#enumValue" => "PREDICATE_TYPE"}))
    ParameterExceptionField.add_member(:ipset_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IPSET_TYPE", traits: {"smithy.api#enumValue" => "IPSET_TYPE"}))
    ParameterExceptionField.add_member(:byte_match_field_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BYTE_MATCH_FIELD_TYPE", traits: {"smithy.api#enumValue" => "BYTE_MATCH_FIELD_TYPE"}))
    ParameterExceptionField.add_member(:sql_injection_match_field_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SQL_INJECTION_MATCH_FIELD_TYPE", traits: {"smithy.api#enumValue" => "SQL_INJECTION_MATCH_FIELD_TYPE"}))
    ParameterExceptionField.add_member(:byte_match_text_transformation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BYTE_MATCH_TEXT_TRANSFORMATION", traits: {"smithy.api#enumValue" => "BYTE_MATCH_TEXT_TRANSFORMATION"}))
    ParameterExceptionField.add_member(:byte_match_positional_constraint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BYTE_MATCH_POSITIONAL_CONSTRAINT", traits: {"smithy.api#enumValue" => "BYTE_MATCH_POSITIONAL_CONSTRAINT"}))
    ParameterExceptionField.add_member(:size_constraint_comparison_operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SIZE_CONSTRAINT_COMPARISON_OPERATOR", traits: {"smithy.api#enumValue" => "SIZE_CONSTRAINT_COMPARISON_OPERATOR"}))
    ParameterExceptionField.add_member(:geo_match_location_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GEO_MATCH_LOCATION_TYPE", traits: {"smithy.api#enumValue" => "GEO_MATCH_LOCATION_TYPE"}))
    ParameterExceptionField.add_member(:geo_match_location_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GEO_MATCH_LOCATION_VALUE", traits: {"smithy.api#enumValue" => "GEO_MATCH_LOCATION_VALUE"}))
    ParameterExceptionField.add_member(:rate_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RATE_KEY", traits: {"smithy.api#enumValue" => "RATE_KEY"}))
    ParameterExceptionField.add_member(:rule_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RULE_TYPE", traits: {"smithy.api#enumValue" => "RULE_TYPE"}))
    ParameterExceptionField.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NEXT_MARKER", traits: {"smithy.api#enumValue" => "NEXT_MARKER"}))
    ParameterExceptionField.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESOURCE_ARN", traits: {"smithy.api#enumValue" => "RESOURCE_ARN"}))
    ParameterExceptionField.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TAGS", traits: {"smithy.api#enumValue" => "TAGS"}))
    ParameterExceptionField.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TAG_KEYS", traits: {"smithy.api#enumValue" => "TAG_KEYS"}))
    ParameterExceptionReason.add_member(:invalid_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID_OPTION", traits: {"smithy.api#enumValue" => "INVALID_OPTION"}))
    ParameterExceptionReason.add_member(:illegal_combination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ILLEGAL_COMBINATION", traits: {"smithy.api#enumValue" => "ILLEGAL_COMBINATION"}))
    ParameterExceptionReason.add_member(:illegal_argument, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ILLEGAL_ARGUMENT", traits: {"smithy.api#enumValue" => "ILLEGAL_ARGUMENT"}))
    ParameterExceptionReason.add_member(:invalid_tag_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID_TAG_KEY", traits: {"smithy.api#enumValue" => "INVALID_TAG_KEY"}))
    PositionalConstraint.add_member(:exactly, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXACTLY", traits: {"smithy.api#enumValue" => "EXACTLY"}))
    PositionalConstraint.add_member(:starts_with, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STARTS_WITH", traits: {"smithy.api#enumValue" => "STARTS_WITH"}))
    PositionalConstraint.add_member(:ends_with, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENDS_WITH", traits: {"smithy.api#enumValue" => "ENDS_WITH"}))
    PositionalConstraint.add_member(:contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    PositionalConstraint.add_member(:contains_word, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTAINS_WORD", traits: {"smithy.api#enumValue" => "CONTAINS_WORD"}))
    Predicate.add_member(:negated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Negated, location_name: "Negated", traits: {"smithy.api#required" => {}}))
    Predicate.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PredicateType, location_name: "Type", traits: {"smithy.api#required" => {}}))
    Predicate.add_member(:data_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "DataId", traits: {"smithy.api#required" => {}}))
    Predicate.type = Types::Predicate
    PredicateType.add_member(:ip_match, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IP_MATCH", traits: {"smithy.api#enumValue" => "IPMatch"}))
    PredicateType.add_member(:byte_match, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BYTE_MATCH", traits: {"smithy.api#enumValue" => "ByteMatch"}))
    PredicateType.add_member(:sql_injection_match, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SQL_INJECTION_MATCH", traits: {"smithy.api#enumValue" => "SqlInjectionMatch"}))
    PredicateType.add_member(:geo_match, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GEO_MATCH", traits: {"smithy.api#enumValue" => "GeoMatch"}))
    PredicateType.add_member(:size_constraint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SIZE_CONSTRAINT", traits: {"smithy.api#enumValue" => "SizeConstraint"}))
    PredicateType.add_member(:xss_match, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "XSS_MATCH", traits: {"smithy.api#enumValue" => "XssMatch"}))
    PredicateType.add_member(:regex_match, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REGEX_MATCH", traits: {"smithy.api#enumValue" => "RegexMatch"}))
    Predicates.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Predicate)
    PutLoggingConfigurationRequest.add_member(:logging_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "LoggingConfiguration", traits: {"smithy.api#required" => {}}))
    PutLoggingConfigurationRequest.type = Types::PutLoggingConfigurationRequest
    PutLoggingConfigurationResponse.add_member(:logging_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "LoggingConfiguration"))
    PutLoggingConfigurationResponse.type = Types::PutLoggingConfigurationResponse
    PutPermissionPolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    PutPermissionPolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyString, location_name: "Policy", traits: {"smithy.api#required" => {}}))
    PutPermissionPolicyRequest.type = Types::PutPermissionPolicyRequest
    PutPermissionPolicyResponse.type = Types::PutPermissionPolicyResponse
    RateBasedRule.add_member(:rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RuleId", traits: {"smithy.api#required" => {}}))
    RateBasedRule.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    RateBasedRule.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    RateBasedRule.add_member(:match_predicates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Predicates, location_name: "MatchPredicates", traits: {"smithy.api#required" => {}}))
    RateBasedRule.add_member(:rate_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RateKey, location_name: "RateKey", traits: {"smithy.api#required" => {}}))
    RateBasedRule.add_member(:rate_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimit, location_name: "RateLimit", traits: {"smithy.api#required" => {}}))
    RateBasedRule.type = Types::RateBasedRule
    RateKey.add_member(:ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IP", traits: {"smithy.api#enumValue" => "IP"}))
    RedactedFields.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldToMatch)
    RegexMatchSet.add_member(:regex_match_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RegexMatchSetId"))
    RegexMatchSet.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    RegexMatchSet.add_member(:regex_match_tuples, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegexMatchTuples, location_name: "RegexMatchTuples"))
    RegexMatchSet.type = Types::RegexMatchSet
    RegexMatchSetSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegexMatchSetSummary)
    RegexMatchSetSummary.add_member(:regex_match_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RegexMatchSetId", traits: {"smithy.api#required" => {}}))
    RegexMatchSetSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    RegexMatchSetSummary.type = Types::RegexMatchSetSummary
    RegexMatchSetUpdate.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeAction, location_name: "Action", traits: {"smithy.api#required" => {}}))
    RegexMatchSetUpdate.add_member(:regex_match_tuple, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegexMatchTuple, location_name: "RegexMatchTuple", traits: {"smithy.api#required" => {}}))
    RegexMatchSetUpdate.type = Types::RegexMatchSetUpdate
    RegexMatchSetUpdates.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegexMatchSetUpdate)
    RegexMatchTuple.add_member(:field_to_match, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldToMatch, location_name: "FieldToMatch", traits: {"smithy.api#required" => {}}))
    RegexMatchTuple.add_member(:text_transformation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextTransformation, location_name: "TextTransformation", traits: {"smithy.api#required" => {}}))
    RegexMatchTuple.add_member(:regex_pattern_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RegexPatternSetId", traits: {"smithy.api#required" => {}}))
    RegexMatchTuple.type = Types::RegexMatchTuple
    RegexMatchTuples.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegexMatchTuple)
    RegexPatternSet.add_member(:regex_pattern_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RegexPatternSetId", traits: {"smithy.api#required" => {}}))
    RegexPatternSet.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    RegexPatternSet.add_member(:regex_pattern_strings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegexPatternStrings, location_name: "RegexPatternStrings", traits: {"smithy.api#required" => {}}))
    RegexPatternSet.type = Types::RegexPatternSet
    RegexPatternSetSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegexPatternSetSummary)
    RegexPatternSetSummary.add_member(:regex_pattern_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RegexPatternSetId", traits: {"smithy.api#required" => {}}))
    RegexPatternSetSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    RegexPatternSetSummary.type = Types::RegexPatternSetSummary
    RegexPatternSetUpdate.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeAction, location_name: "Action", traits: {"smithy.api#required" => {}}))
    RegexPatternSetUpdate.add_member(:regex_pattern_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegexPatternString, location_name: "RegexPatternString", traits: {"smithy.api#required" => {}}))
    RegexPatternSetUpdate.type = Types::RegexPatternSetUpdate
    RegexPatternSetUpdates.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegexPatternSetUpdate)
    RegexPatternStrings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegexPatternString)
    Rule.add_member(:rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RuleId", traits: {"smithy.api#required" => {}}))
    Rule.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    Rule.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    Rule.add_member(:predicates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Predicates, location_name: "Predicates", traits: {"smithy.api#required" => {}}))
    Rule.type = Types::Rule
    RuleGroup.add_member(:rule_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RuleGroupId", traits: {"smithy.api#required" => {}}))
    RuleGroup.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    RuleGroup.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    RuleGroup.type = Types::RuleGroup
    RuleGroupSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupSummary)
    RuleGroupSummary.add_member(:rule_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RuleGroupId", traits: {"smithy.api#required" => {}}))
    RuleGroupSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    RuleGroupSummary.type = Types::RuleGroupSummary
    RuleGroupUpdate.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeAction, location_name: "Action", traits: {"smithy.api#required" => {}}))
    RuleGroupUpdate.add_member(:activated_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivatedRule, location_name: "ActivatedRule", traits: {"smithy.api#required" => {}}))
    RuleGroupUpdate.type = Types::RuleGroupUpdate
    RuleGroupUpdates.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupUpdate)
    RuleSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSummary)
    RuleSummary.add_member(:rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RuleId", traits: {"smithy.api#required" => {}}))
    RuleSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    RuleSummary.type = Types::RuleSummary
    RuleUpdate.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeAction, location_name: "Action", traits: {"smithy.api#required" => {}}))
    RuleUpdate.add_member(:predicate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Predicate, location_name: "Predicate", traits: {"smithy.api#required" => {}}))
    RuleUpdate.type = Types::RuleUpdate
    RuleUpdates.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleUpdate)
    SampledHTTPRequest.add_member(:request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HTTPRequest, location_name: "Request", traits: {"smithy.api#required" => {}}))
    SampledHTTPRequest.add_member(:weight, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SampleWeight, location_name: "Weight", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SampledHTTPRequest.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    SampledHTTPRequest.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: "Action"))
    SampledHTTPRequest.add_member(:rule_within_rule_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RuleWithinRuleGroup"))
    SampledHTTPRequest.type = Types::SampledHTTPRequest
    SampledHTTPRequests.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SampledHTTPRequest)
    SizeConstraint.add_member(:field_to_match, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldToMatch, location_name: "FieldToMatch", traits: {"smithy.api#required" => {}}))
    SizeConstraint.add_member(:text_transformation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextTransformation, location_name: "TextTransformation", traits: {"smithy.api#required" => {}}))
    SizeConstraint.add_member(:comparison_operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: "ComparisonOperator", traits: {"smithy.api#required" => {}}))
    SizeConstraint.add_member(:size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Size, location_name: "Size", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SizeConstraint.type = Types::SizeConstraint
    SizeConstraintSet.add_member(:size_constraint_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "SizeConstraintSetId", traits: {"smithy.api#required" => {}}))
    SizeConstraintSet.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    SizeConstraintSet.add_member(:size_constraints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SizeConstraints, location_name: "SizeConstraints", traits: {"smithy.api#required" => {}}))
    SizeConstraintSet.type = Types::SizeConstraintSet
    SizeConstraintSetSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SizeConstraintSetSummary)
    SizeConstraintSetSummary.add_member(:size_constraint_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "SizeConstraintSetId", traits: {"smithy.api#required" => {}}))
    SizeConstraintSetSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    SizeConstraintSetSummary.type = Types::SizeConstraintSetSummary
    SizeConstraintSetUpdate.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeAction, location_name: "Action", traits: {"smithy.api#required" => {}}))
    SizeConstraintSetUpdate.add_member(:size_constraint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SizeConstraint, location_name: "SizeConstraint", traits: {"smithy.api#required" => {}}))
    SizeConstraintSetUpdate.type = Types::SizeConstraintSetUpdate
    SizeConstraintSetUpdates.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SizeConstraintSetUpdate)
    SizeConstraints.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SizeConstraint)
    SqlInjectionMatchSet.add_member(:sql_injection_match_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "SqlInjectionMatchSetId", traits: {"smithy.api#required" => {}}))
    SqlInjectionMatchSet.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    SqlInjectionMatchSet.add_member(:sql_injection_match_tuples, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqlInjectionMatchTuples, location_name: "SqlInjectionMatchTuples", traits: {"smithy.api#required" => {}}))
    SqlInjectionMatchSet.type = Types::SqlInjectionMatchSet
    SqlInjectionMatchSetSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqlInjectionMatchSetSummary)
    SqlInjectionMatchSetSummary.add_member(:sql_injection_match_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "SqlInjectionMatchSetId", traits: {"smithy.api#required" => {}}))
    SqlInjectionMatchSetSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    SqlInjectionMatchSetSummary.type = Types::SqlInjectionMatchSetSummary
    SqlInjectionMatchSetUpdate.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeAction, location_name: "Action", traits: {"smithy.api#required" => {}}))
    SqlInjectionMatchSetUpdate.add_member(:sql_injection_match_tuple, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqlInjectionMatchTuple, location_name: "SqlInjectionMatchTuple", traits: {"smithy.api#required" => {}}))
    SqlInjectionMatchSetUpdate.type = Types::SqlInjectionMatchSetUpdate
    SqlInjectionMatchSetUpdates.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqlInjectionMatchSetUpdate)
    SqlInjectionMatchTuple.add_member(:field_to_match, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldToMatch, location_name: "FieldToMatch", traits: {"smithy.api#required" => {}}))
    SqlInjectionMatchTuple.add_member(:text_transformation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextTransformation, location_name: "TextTransformation", traits: {"smithy.api#required" => {}}))
    SqlInjectionMatchTuple.type = Types::SqlInjectionMatchTuple
    SqlInjectionMatchTuples.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqlInjectionMatchTuple)
    SubscribedRuleGroupSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscribedRuleGroupSummary)
    SubscribedRuleGroupSummary.add_member(:rule_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RuleGroupId", traits: {"smithy.api#required" => {}}))
    SubscribedRuleGroupSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    SubscribedRuleGroupSummary.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName", traits: {"smithy.api#required" => {}}))
    SubscribedRuleGroupSummary.type = Types::SubscribedRuleGroupSummary
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagInfoForResource.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceARN"))
    TagInfoForResource.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    TagInfoForResource.type = Types::TagInfoForResource
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TextTransformation.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    TextTransformation.add_member(:compress_white_space, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPRESS_WHITE_SPACE", traits: {"smithy.api#enumValue" => "COMPRESS_WHITE_SPACE"}))
    TextTransformation.add_member(:html_entity_decode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTML_ENTITY_DECODE", traits: {"smithy.api#enumValue" => "HTML_ENTITY_DECODE"}))
    TextTransformation.add_member(:lowercase, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOWERCASE", traits: {"smithy.api#enumValue" => "LOWERCASE"}))
    TextTransformation.add_member(:cmd_line, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CMD_LINE", traits: {"smithy.api#enumValue" => "CMD_LINE"}))
    TextTransformation.add_member(:url_decode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "URL_DECODE", traits: {"smithy.api#enumValue" => "URL_DECODE"}))
    TimeWindow.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime", traits: {"smithy.api#required" => {}}))
    TimeWindow.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime", traits: {"smithy.api#required" => {}}))
    TimeWindow.type = Types::TimeWindow
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateByteMatchSetRequest.add_member(:byte_match_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ByteMatchSetId", traits: {"smithy.api#required" => {}}))
    UpdateByteMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    UpdateByteMatchSetRequest.add_member(:updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ByteMatchSetUpdates, location_name: "Updates", traits: {"smithy.api#required" => {}}))
    UpdateByteMatchSetRequest.type = Types::UpdateByteMatchSetRequest
    UpdateByteMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    UpdateByteMatchSetResponse.type = Types::UpdateByteMatchSetResponse
    UpdateGeoMatchSetRequest.add_member(:geo_match_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "GeoMatchSetId", traits: {"smithy.api#required" => {}}))
    UpdateGeoMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    UpdateGeoMatchSetRequest.add_member(:updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoMatchSetUpdates, location_name: "Updates", traits: {"smithy.api#required" => {}}))
    UpdateGeoMatchSetRequest.type = Types::UpdateGeoMatchSetRequest
    UpdateGeoMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    UpdateGeoMatchSetResponse.type = Types::UpdateGeoMatchSetResponse
    UpdateIPSetRequest.add_member(:ip_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "IPSetId", traits: {"smithy.api#required" => {}}))
    UpdateIPSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    UpdateIPSetRequest.add_member(:updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPSetUpdates, location_name: "Updates", traits: {"smithy.api#required" => {}}))
    UpdateIPSetRequest.type = Types::UpdateIPSetRequest
    UpdateIPSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    UpdateIPSetResponse.type = Types::UpdateIPSetResponse
    UpdateRateBasedRuleRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RuleId", traits: {"smithy.api#required" => {}}))
    UpdateRateBasedRuleRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    UpdateRateBasedRuleRequest.add_member(:updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleUpdates, location_name: "Updates", traits: {"smithy.api#required" => {}}))
    UpdateRateBasedRuleRequest.add_member(:rate_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimit, location_name: "RateLimit", traits: {"smithy.api#required" => {}}))
    UpdateRateBasedRuleRequest.type = Types::UpdateRateBasedRuleRequest
    UpdateRateBasedRuleResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    UpdateRateBasedRuleResponse.type = Types::UpdateRateBasedRuleResponse
    UpdateRegexMatchSetRequest.add_member(:regex_match_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RegexMatchSetId", traits: {"smithy.api#required" => {}}))
    UpdateRegexMatchSetRequest.add_member(:updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegexMatchSetUpdates, location_name: "Updates", traits: {"smithy.api#required" => {}}))
    UpdateRegexMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    UpdateRegexMatchSetRequest.type = Types::UpdateRegexMatchSetRequest
    UpdateRegexMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    UpdateRegexMatchSetResponse.type = Types::UpdateRegexMatchSetResponse
    UpdateRegexPatternSetRequest.add_member(:regex_pattern_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RegexPatternSetId", traits: {"smithy.api#required" => {}}))
    UpdateRegexPatternSetRequest.add_member(:updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegexPatternSetUpdates, location_name: "Updates", traits: {"smithy.api#required" => {}}))
    UpdateRegexPatternSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    UpdateRegexPatternSetRequest.type = Types::UpdateRegexPatternSetRequest
    UpdateRegexPatternSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    UpdateRegexPatternSetResponse.type = Types::UpdateRegexPatternSetResponse
    UpdateRuleGroupRequest.add_member(:rule_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RuleGroupId", traits: {"smithy.api#required" => {}}))
    UpdateRuleGroupRequest.add_member(:updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupUpdates, location_name: "Updates", traits: {"smithy.api#required" => {}}))
    UpdateRuleGroupRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    UpdateRuleGroupRequest.type = Types::UpdateRuleGroupRequest
    UpdateRuleGroupResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    UpdateRuleGroupResponse.type = Types::UpdateRuleGroupResponse
    UpdateRuleRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RuleId", traits: {"smithy.api#required" => {}}))
    UpdateRuleRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    UpdateRuleRequest.add_member(:updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleUpdates, location_name: "Updates", traits: {"smithy.api#required" => {}}))
    UpdateRuleRequest.type = Types::UpdateRuleRequest
    UpdateRuleResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    UpdateRuleResponse.type = Types::UpdateRuleResponse
    UpdateSizeConstraintSetRequest.add_member(:size_constraint_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "SizeConstraintSetId", traits: {"smithy.api#required" => {}}))
    UpdateSizeConstraintSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    UpdateSizeConstraintSetRequest.add_member(:updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SizeConstraintSetUpdates, location_name: "Updates", traits: {"smithy.api#required" => {}}))
    UpdateSizeConstraintSetRequest.type = Types::UpdateSizeConstraintSetRequest
    UpdateSizeConstraintSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    UpdateSizeConstraintSetResponse.type = Types::UpdateSizeConstraintSetResponse
    UpdateSqlInjectionMatchSetRequest.add_member(:sql_injection_match_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "SqlInjectionMatchSetId", traits: {"smithy.api#required" => {}}))
    UpdateSqlInjectionMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    UpdateSqlInjectionMatchSetRequest.add_member(:updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqlInjectionMatchSetUpdates, location_name: "Updates", traits: {"smithy.api#required" => {}}))
    UpdateSqlInjectionMatchSetRequest.type = Types::UpdateSqlInjectionMatchSetRequest
    UpdateSqlInjectionMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    UpdateSqlInjectionMatchSetResponse.type = Types::UpdateSqlInjectionMatchSetResponse
    UpdateWebACLRequest.add_member(:web_acl_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "WebACLId", traits: {"smithy.api#required" => {}}))
    UpdateWebACLRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    UpdateWebACLRequest.add_member(:updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebACLUpdates, location_name: "Updates"))
    UpdateWebACLRequest.add_member(:default_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WafAction, location_name: "DefaultAction"))
    UpdateWebACLRequest.type = Types::UpdateWebACLRequest
    UpdateWebACLResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    UpdateWebACLResponse.type = Types::UpdateWebACLResponse
    UpdateXssMatchSetRequest.add_member(:xss_match_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "XssMatchSetId", traits: {"smithy.api#required" => {}}))
    UpdateXssMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    UpdateXssMatchSetRequest.add_member(:updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XssMatchSetUpdates, location_name: "Updates", traits: {"smithy.api#required" => {}}))
    UpdateXssMatchSetRequest.type = Types::UpdateXssMatchSetRequest
    UpdateXssMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    UpdateXssMatchSetResponse.type = Types::UpdateXssMatchSetResponse
    WAFBadRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    WAFBadRequestException.type = Types::WAFBadRequestException
    WAFDisallowedNameException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    WAFDisallowedNameException.type = Types::WAFDisallowedNameException
    WAFEntityMigrationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    WAFEntityMigrationException.add_member(:migration_error_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationErrorType, location_name: "MigrationErrorType"))
    WAFEntityMigrationException.add_member(:migration_error_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorReason, location_name: "MigrationErrorReason"))
    WAFEntityMigrationException.type = Types::WAFEntityMigrationException
    WAFInternalErrorException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    WAFInternalErrorException.type = Types::WAFInternalErrorException
    WAFInvalidAccountException.type = Types::WAFInvalidAccountException
    WAFInvalidOperationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    WAFInvalidOperationException.type = Types::WAFInvalidOperationException
    WAFInvalidParameterException.add_member(:field, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterExceptionField, location_name: "field"))
    WAFInvalidParameterException.add_member(:parameter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterExceptionParameter, location_name: "parameter"))
    WAFInvalidParameterException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterExceptionReason, location_name: "reason"))
    WAFInvalidParameterException.type = Types::WAFInvalidParameterException
    WAFInvalidPermissionPolicyException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    WAFInvalidPermissionPolicyException.type = Types::WAFInvalidPermissionPolicyException
    WAFInvalidRegexPatternException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    WAFInvalidRegexPatternException.type = Types::WAFInvalidRegexPatternException
    WAFLimitsExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    WAFLimitsExceededException.type = Types::WAFLimitsExceededException
    WAFNonEmptyEntityException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    WAFNonEmptyEntityException.type = Types::WAFNonEmptyEntityException
    WAFNonexistentContainerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    WAFNonexistentContainerException.type = Types::WAFNonexistentContainerException
    WAFNonexistentItemException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    WAFNonexistentItemException.type = Types::WAFNonexistentItemException
    WAFReferencedItemException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    WAFReferencedItemException.type = Types::WAFReferencedItemException
    WAFServiceLinkedRoleErrorException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    WAFServiceLinkedRoleErrorException.type = Types::WAFServiceLinkedRoleErrorException
    WAFStaleDataException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    WAFStaleDataException.type = Types::WAFStaleDataException
    WAFSubscriptionNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    WAFSubscriptionNotFoundException.type = Types::WAFSubscriptionNotFoundException
    WAFTagOperationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    WAFTagOperationException.type = Types::WAFTagOperationException
    WAFTagOperationInternalErrorException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    WAFTagOperationInternalErrorException.type = Types::WAFTagOperationInternalErrorException
    WafAction.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WafActionType, location_name: "Type", traits: {"smithy.api#required" => {}}))
    WafAction.type = Types::WafAction
    WafActionType.add_member(:block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BLOCK", traits: {"smithy.api#enumValue" => "BLOCK"}))
    WafActionType.add_member(:allow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    WafActionType.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COUNT", traits: {"smithy.api#enumValue" => "COUNT"}))
    WafOverrideAction.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WafOverrideActionType, location_name: "Type", traits: {"smithy.api#required" => {}}))
    WafOverrideAction.type = Types::WafOverrideAction
    WafOverrideActionType.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    WafOverrideActionType.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COUNT", traits: {"smithy.api#enumValue" => "COUNT"}))
    WafRuleType.add_member(:regular, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REGULAR", traits: {"smithy.api#enumValue" => "REGULAR"}))
    WafRuleType.add_member(:rate_based, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RATE_BASED", traits: {"smithy.api#enumValue" => "RATE_BASED"}))
    WafRuleType.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GROUP", traits: {"smithy.api#enumValue" => "GROUP"}))
    WebACL.add_member(:web_acl_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "WebACLId", traits: {"smithy.api#required" => {}}))
    WebACL.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    WebACL.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    WebACL.add_member(:default_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WafAction, location_name: "DefaultAction", traits: {"smithy.api#required" => {}}))
    WebACL.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivatedRules, location_name: "Rules", traits: {"smithy.api#required" => {}}))
    WebACL.add_member(:web_acl_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "WebACLArn"))
    WebACL.type = Types::WebACL
    WebACLSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebACLSummary)
    WebACLSummary.add_member(:web_acl_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "WebACLId", traits: {"smithy.api#required" => {}}))
    WebACLSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    WebACLSummary.type = Types::WebACLSummary
    WebACLUpdate.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeAction, location_name: "Action", traits: {"smithy.api#required" => {}}))
    WebACLUpdate.add_member(:activated_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivatedRule, location_name: "ActivatedRule", traits: {"smithy.api#required" => {}}))
    WebACLUpdate.type = Types::WebACLUpdate
    WebACLUpdates.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebACLUpdate)
    XssMatchSet.add_member(:xss_match_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "XssMatchSetId", traits: {"smithy.api#required" => {}}))
    XssMatchSet.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    XssMatchSet.add_member(:xss_match_tuples, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XssMatchTuples, location_name: "XssMatchTuples", traits: {"smithy.api#required" => {}}))
    XssMatchSet.type = Types::XssMatchSet
    XssMatchSetSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: XssMatchSetSummary)
    XssMatchSetSummary.add_member(:xss_match_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "XssMatchSetId", traits: {"smithy.api#required" => {}}))
    XssMatchSetSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    XssMatchSetSummary.type = Types::XssMatchSetSummary
    XssMatchSetUpdate.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeAction, location_name: "Action", traits: {"smithy.api#required" => {}}))
    XssMatchSetUpdate.add_member(:xss_match_tuple, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XssMatchTuple, location_name: "XssMatchTuple", traits: {"smithy.api#required" => {}}))
    XssMatchSetUpdate.type = Types::XssMatchSetUpdate
    XssMatchSetUpdates.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: XssMatchSetUpdate)
    XssMatchTuple.add_member(:field_to_match, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldToMatch, location_name: "FieldToMatch", traits: {"smithy.api#required" => {}}))
    XssMatchTuple.add_member(:text_transformation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextTransformation, location_name: "TextTransformation", traits: {"smithy.api#required" => {}}))
    XssMatchTuple.type = Types::XssMatchTuple
    XssMatchTuples.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: XssMatchTuple)

    AWSWAF20150824 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.waf#AWSWAF_20150824"
      service.name = "AWSWAF20150824"
      service.version = "2015-08-24"
      service.traits = {"aws.api#service" => {"sdkId" => "WAF", "arnNamespace" => "waf", "cloudFormationName" => "WAF", "cloudTrailEventSource" => "waf.amazonaws.com", "endpointPrefix" => "waf"}, "aws.auth#sigv4" => {"name" => "waf"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS WAF", "smithy.api#xmlNamespace" => {"uri" => "http://waf.amazonaws.com/doc/2015-08-24/"}}
      service.add_operation(:create_byte_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#CreateByteMatchSet"
        operation.name = "CreateByteMatchSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateByteMatchSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateByteMatchSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:create_geo_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#CreateGeoMatchSet"
        operation.name = "CreateGeoMatchSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGeoMatchSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGeoMatchSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:create_ip_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#CreateIPSet"
        operation.name = "CreateIPSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIPSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIPSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:create_rate_based_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#CreateRateBasedRule"
        operation.name = "CreateRateBasedRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRateBasedRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRateBasedRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFBadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:create_regex_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#CreateRegexMatchSet"
        operation.name = "CreateRegexMatchSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRegexMatchSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRegexMatchSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:create_regex_pattern_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#CreateRegexPatternSet"
        operation.name = "CreateRegexPatternSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRegexPatternSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRegexPatternSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:create_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#CreateRule"
        operation.name = "CreateRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFBadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:create_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#CreateRuleGroup"
        operation.name = "CreateRuleGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRuleGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRuleGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFBadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:create_size_constraint_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#CreateSizeConstraintSet"
        operation.name = "CreateSizeConstraintSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSizeConstraintSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSizeConstraintSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:create_sql_injection_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#CreateSqlInjectionMatchSet"
        operation.name = "CreateSqlInjectionMatchSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSqlInjectionMatchSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSqlInjectionMatchSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:create_web_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#CreateWebACL"
        operation.name = "CreateWebACL"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWebACLRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWebACLResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFBadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:create_web_acl_migration_stack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#CreateWebACLMigrationStack"
        operation.name = "CreateWebACLMigrationStack"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWebACLMigrationStackRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWebACLMigrationStackResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFEntityMigrationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:create_xss_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#CreateXssMatchSet"
        operation.name = "CreateXssMatchSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateXssMatchSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateXssMatchSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:delete_byte_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#DeleteByteMatchSet"
        operation.name = "DeleteByteMatchSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteByteMatchSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteByteMatchSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:delete_geo_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#DeleteGeoMatchSet"
        operation.name = "DeleteGeoMatchSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGeoMatchSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGeoMatchSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:delete_ip_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#DeleteIPSet"
        operation.name = "DeleteIPSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIPSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIPSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:delete_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#DeleteLoggingConfiguration"
        operation.name = "DeleteLoggingConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLoggingConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLoggingConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:delete_permission_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#DeletePermissionPolicy"
        operation.name = "DeletePermissionPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePermissionPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePermissionPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:delete_rate_based_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#DeleteRateBasedRule"
        operation.name = "DeleteRateBasedRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRateBasedRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRateBasedRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:delete_regex_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#DeleteRegexMatchSet"
        operation.name = "DeleteRegexMatchSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRegexMatchSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRegexMatchSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:delete_regex_pattern_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#DeleteRegexPatternSet"
        operation.name = "DeleteRegexPatternSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRegexPatternSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRegexPatternSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:delete_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#DeleteRule"
        operation.name = "DeleteRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:delete_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#DeleteRuleGroup"
        operation.name = "DeleteRuleGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRuleGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRuleGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:delete_size_constraint_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#DeleteSizeConstraintSet"
        operation.name = "DeleteSizeConstraintSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSizeConstraintSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSizeConstraintSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:delete_sql_injection_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#DeleteSqlInjectionMatchSet"
        operation.name = "DeleteSqlInjectionMatchSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSqlInjectionMatchSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSqlInjectionMatchSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:delete_web_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#DeleteWebACL"
        operation.name = "DeleteWebACL"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWebACLRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWebACLResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:delete_xss_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#DeleteXssMatchSet"
        operation.name = "DeleteXssMatchSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteXssMatchSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteXssMatchSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:get_byte_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#GetByteMatchSet"
        operation.name = "GetByteMatchSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetByteMatchSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetByteMatchSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_change_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#GetChangeToken"
        operation.name = "GetChangeToken"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetChangeTokenRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetChangeTokenResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:get_change_token_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#GetChangeTokenStatus"
        operation.name = "GetChangeTokenStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetChangeTokenStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetChangeTokenStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_geo_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#GetGeoMatchSet"
        operation.name = "GetGeoMatchSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGeoMatchSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGeoMatchSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_ip_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#GetIPSet"
        operation.name = "GetIPSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIPSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIPSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#GetLoggingConfiguration"
        operation.name = "GetLoggingConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLoggingConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLoggingConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_permission_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#GetPermissionPolicy"
        operation.name = "GetPermissionPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPermissionPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPermissionPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_rate_based_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#GetRateBasedRule"
        operation.name = "GetRateBasedRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRateBasedRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRateBasedRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_rate_based_rule_managed_keys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#GetRateBasedRuleManagedKeys"
        operation.name = "GetRateBasedRuleManagedKeys"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRateBasedRuleManagedKeysRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRateBasedRuleManagedKeysResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_regex_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#GetRegexMatchSet"
        operation.name = "GetRegexMatchSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRegexMatchSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRegexMatchSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_regex_pattern_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#GetRegexPatternSet"
        operation.name = "GetRegexPatternSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRegexPatternSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRegexPatternSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#GetRule"
        operation.name = "GetRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#GetRuleGroup"
        operation.name = "GetRuleGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRuleGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRuleGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_sampled_requests, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#GetSampledRequests"
        operation.name = "GetSampledRequests"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSampledRequestsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSampledRequestsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_size_constraint_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#GetSizeConstraintSet"
        operation.name = "GetSizeConstraintSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSizeConstraintSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSizeConstraintSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_sql_injection_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#GetSqlInjectionMatchSet"
        operation.name = "GetSqlInjectionMatchSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSqlInjectionMatchSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSqlInjectionMatchSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_web_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#GetWebACL"
        operation.name = "GetWebACL"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWebACLRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWebACLResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_xss_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#GetXssMatchSet"
        operation.name = "GetXssMatchSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetXssMatchSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetXssMatchSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:list_activated_rules_in_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#ListActivatedRulesInRuleGroup"
        operation.name = "ListActivatedRulesInRuleGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListActivatedRulesInRuleGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListActivatedRulesInRuleGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:list_byte_match_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#ListByteMatchSets"
        operation.name = "ListByteMatchSets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListByteMatchSetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListByteMatchSetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_geo_match_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#ListGeoMatchSets"
        operation.name = "ListGeoMatchSets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGeoMatchSetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGeoMatchSetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_ip_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#ListIPSets"
        operation.name = "ListIPSets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIPSetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIPSetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_logging_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#ListLoggingConfigurations"
        operation.name = "ListLoggingConfigurations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLoggingConfigurationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLoggingConfigurationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:list_rate_based_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#ListRateBasedRules"
        operation.name = "ListRateBasedRules"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRateBasedRulesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRateBasedRulesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_regex_match_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#ListRegexMatchSets"
        operation.name = "ListRegexMatchSets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRegexMatchSetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRegexMatchSetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_regex_pattern_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#ListRegexPatternSets"
        operation.name = "ListRegexPatternSets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRegexPatternSetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRegexPatternSetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_rule_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#ListRuleGroups"
        operation.name = "ListRuleGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRuleGroupsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRuleGroupsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:list_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#ListRules"
        operation.name = "ListRules"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRulesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRulesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListRulesSuccess", "params" => {"Limit" => 20}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:list_size_constraint_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#ListSizeConstraintSets"
        operation.name = "ListSizeConstraintSets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSizeConstraintSetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSizeConstraintSetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_sql_injection_match_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#ListSqlInjectionMatchSets"
        operation.name = "ListSqlInjectionMatchSets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSqlInjectionMatchSetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSqlInjectionMatchSetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_subscribed_rule_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#ListSubscribedRuleGroups"
        operation.name = "ListSubscribedRuleGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSubscribedRuleGroupsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSubscribedRuleGroupsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFBadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:list_web_ac_ls, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#ListWebACLs"
        operation.name = "ListWebACLs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWebACLsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWebACLsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_xss_match_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#ListXssMatchSets"
        operation.name = "ListXssMatchSets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListXssMatchSetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListXssMatchSetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.traits = {}
      end)
      service.add_operation(:put_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#PutLoggingConfiguration"
        operation.name = "PutLoggingConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutLoggingConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutLoggingConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFServiceLinkedRoleErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:put_permission_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#PutPermissionPolicy"
        operation.name = "PutPermissionPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutPermissionPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutPermissionPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidPermissionPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFBadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFBadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:update_byte_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#UpdateByteMatchSet"
        operation.name = "UpdateByteMatchSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateByteMatchSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateByteMatchSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:update_geo_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#UpdateGeoMatchSet"
        operation.name = "UpdateGeoMatchSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGeoMatchSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGeoMatchSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:update_ip_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#UpdateIPSet"
        operation.name = "UpdateIPSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIPSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIPSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:update_rate_based_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#UpdateRateBasedRule"
        operation.name = "UpdateRateBasedRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRateBasedRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRateBasedRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:update_regex_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#UpdateRegexMatchSet"
        operation.name = "UpdateRegexMatchSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRegexMatchSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRegexMatchSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:update_regex_pattern_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#UpdateRegexPatternSet"
        operation.name = "UpdateRegexPatternSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRegexPatternSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRegexPatternSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidRegexPatternException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:update_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#UpdateRule"
        operation.name = "UpdateRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:update_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#UpdateRuleGroup"
        operation.name = "UpdateRuleGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRuleGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRuleGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:update_size_constraint_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#UpdateSizeConstraintSet"
        operation.name = "UpdateSizeConstraintSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSizeConstraintSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSizeConstraintSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:update_sql_injection_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#UpdateSqlInjectionMatchSet"
        operation.name = "UpdateSqlInjectionMatchSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSqlInjectionMatchSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSqlInjectionMatchSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:update_web_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#UpdateWebACL"
        operation.name = "UpdateWebACL"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWebACLRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWebACLResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFSubscriptionNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_xss_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.waf#UpdateXssMatchSet"
        operation.name = "UpdateXssMatchSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateXssMatchSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateXssMatchSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
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
