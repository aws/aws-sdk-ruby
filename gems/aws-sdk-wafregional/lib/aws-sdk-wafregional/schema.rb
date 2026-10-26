# frozen_string_literal: true

# This is generated code!

module Aws::WAFRegional
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Action = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafregional#Action", name: "Action")
    ActivatedRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ActivatedRule", name: "ActivatedRule")
    ActivatedRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#ActivatedRules", name: "ActivatedRules")
    AssociateWebACLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#AssociateWebACLRequest", name: "AssociateWebACLRequest")
    AssociateWebACLResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#AssociateWebACLResponse", name: "AssociateWebACLResponse")
    ByteMatchSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ByteMatchSet", name: "ByteMatchSet")
    ByteMatchSetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#ByteMatchSetSummaries", name: "ByteMatchSetSummaries")
    ByteMatchSetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ByteMatchSetSummary", name: "ByteMatchSetSummary")
    ByteMatchSetUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ByteMatchSetUpdate", name: "ByteMatchSetUpdate")
    ByteMatchSetUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#ByteMatchSetUpdates", name: "ByteMatchSetUpdates", traits: {"smithy.api#length" => {"min" => 1}})
    ByteMatchTargetString = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.wafregional#ByteMatchTargetString", name: "ByteMatchTargetString")
    ByteMatchTuple = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ByteMatchTuple", name: "ByteMatchTuple")
    ByteMatchTuples = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#ByteMatchTuples", name: "ByteMatchTuples")
    ChangeAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafregional#ChangeAction", name: "ChangeAction")
    ChangeToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafregional#ChangeToken", name: "ChangeToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    ChangeTokenStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafregional#ChangeTokenStatus", name: "ChangeTokenStatus")
    ComparisonOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafregional#ComparisonOperator", name: "ComparisonOperator")
    Country = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafregional#Country", name: "Country")
    CreateByteMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#CreateByteMatchSetRequest", name: "CreateByteMatchSetRequest")
    CreateByteMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#CreateByteMatchSetResponse", name: "CreateByteMatchSetResponse")
    CreateGeoMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#CreateGeoMatchSetRequest", name: "CreateGeoMatchSetRequest")
    CreateGeoMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#CreateGeoMatchSetResponse", name: "CreateGeoMatchSetResponse")
    CreateIPSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#CreateIPSetRequest", name: "CreateIPSetRequest")
    CreateIPSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#CreateIPSetResponse", name: "CreateIPSetResponse")
    CreateRateBasedRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#CreateRateBasedRuleRequest", name: "CreateRateBasedRuleRequest")
    CreateRateBasedRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#CreateRateBasedRuleResponse", name: "CreateRateBasedRuleResponse")
    CreateRegexMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#CreateRegexMatchSetRequest", name: "CreateRegexMatchSetRequest")
    CreateRegexMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#CreateRegexMatchSetResponse", name: "CreateRegexMatchSetResponse")
    CreateRegexPatternSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#CreateRegexPatternSetRequest", name: "CreateRegexPatternSetRequest")
    CreateRegexPatternSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#CreateRegexPatternSetResponse", name: "CreateRegexPatternSetResponse")
    CreateRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#CreateRuleGroupRequest", name: "CreateRuleGroupRequest")
    CreateRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#CreateRuleGroupResponse", name: "CreateRuleGroupResponse")
    CreateRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#CreateRuleRequest", name: "CreateRuleRequest")
    CreateRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#CreateRuleResponse", name: "CreateRuleResponse")
    CreateSizeConstraintSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#CreateSizeConstraintSetRequest", name: "CreateSizeConstraintSetRequest")
    CreateSizeConstraintSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#CreateSizeConstraintSetResponse", name: "CreateSizeConstraintSetResponse")
    CreateSqlInjectionMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#CreateSqlInjectionMatchSetRequest", name: "CreateSqlInjectionMatchSetRequest")
    CreateSqlInjectionMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#CreateSqlInjectionMatchSetResponse", name: "CreateSqlInjectionMatchSetResponse")
    CreateWebACLMigrationStackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#CreateWebACLMigrationStackRequest", name: "CreateWebACLMigrationStackRequest")
    CreateWebACLMigrationStackResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#CreateWebACLMigrationStackResponse", name: "CreateWebACLMigrationStackResponse")
    CreateWebACLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#CreateWebACLRequest", name: "CreateWebACLRequest")
    CreateWebACLResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#CreateWebACLResponse", name: "CreateWebACLResponse")
    CreateXssMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#CreateXssMatchSetRequest", name: "CreateXssMatchSetRequest")
    CreateXssMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#CreateXssMatchSetResponse", name: "CreateXssMatchSetResponse")
    DeleteByteMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DeleteByteMatchSetRequest", name: "DeleteByteMatchSetRequest")
    DeleteByteMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DeleteByteMatchSetResponse", name: "DeleteByteMatchSetResponse")
    DeleteGeoMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DeleteGeoMatchSetRequest", name: "DeleteGeoMatchSetRequest")
    DeleteGeoMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DeleteGeoMatchSetResponse", name: "DeleteGeoMatchSetResponse")
    DeleteIPSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DeleteIPSetRequest", name: "DeleteIPSetRequest")
    DeleteIPSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DeleteIPSetResponse", name: "DeleteIPSetResponse")
    DeleteLoggingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DeleteLoggingConfigurationRequest", name: "DeleteLoggingConfigurationRequest")
    DeleteLoggingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DeleteLoggingConfigurationResponse", name: "DeleteLoggingConfigurationResponse")
    DeletePermissionPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DeletePermissionPolicyRequest", name: "DeletePermissionPolicyRequest")
    DeletePermissionPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DeletePermissionPolicyResponse", name: "DeletePermissionPolicyResponse")
    DeleteRateBasedRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DeleteRateBasedRuleRequest", name: "DeleteRateBasedRuleRequest")
    DeleteRateBasedRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DeleteRateBasedRuleResponse", name: "DeleteRateBasedRuleResponse")
    DeleteRegexMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DeleteRegexMatchSetRequest", name: "DeleteRegexMatchSetRequest")
    DeleteRegexMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DeleteRegexMatchSetResponse", name: "DeleteRegexMatchSetResponse")
    DeleteRegexPatternSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DeleteRegexPatternSetRequest", name: "DeleteRegexPatternSetRequest")
    DeleteRegexPatternSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DeleteRegexPatternSetResponse", name: "DeleteRegexPatternSetResponse")
    DeleteRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DeleteRuleGroupRequest", name: "DeleteRuleGroupRequest")
    DeleteRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DeleteRuleGroupResponse", name: "DeleteRuleGroupResponse")
    DeleteRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DeleteRuleRequest", name: "DeleteRuleRequest")
    DeleteRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DeleteRuleResponse", name: "DeleteRuleResponse")
    DeleteSizeConstraintSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DeleteSizeConstraintSetRequest", name: "DeleteSizeConstraintSetRequest")
    DeleteSizeConstraintSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DeleteSizeConstraintSetResponse", name: "DeleteSizeConstraintSetResponse")
    DeleteSqlInjectionMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DeleteSqlInjectionMatchSetRequest", name: "DeleteSqlInjectionMatchSetRequest")
    DeleteSqlInjectionMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DeleteSqlInjectionMatchSetResponse", name: "DeleteSqlInjectionMatchSetResponse")
    DeleteWebACLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DeleteWebACLRequest", name: "DeleteWebACLRequest")
    DeleteWebACLResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DeleteWebACLResponse", name: "DeleteWebACLResponse")
    DeleteXssMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DeleteXssMatchSetRequest", name: "DeleteXssMatchSetRequest")
    DeleteXssMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DeleteXssMatchSetResponse", name: "DeleteXssMatchSetResponse")
    DisassociateWebACLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DisassociateWebACLRequest", name: "DisassociateWebACLRequest")
    DisassociateWebACLResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#DisassociateWebACLResponse", name: "DisassociateWebACLResponse")
    ErrorReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafregional#ErrorReason", name: "ErrorReason")
    ExcludedRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ExcludedRule", name: "ExcludedRule")
    ExcludedRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#ExcludedRules", name: "ExcludedRules")
    FieldToMatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#FieldToMatch", name: "FieldToMatch")
    GeoMatchConstraint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GeoMatchConstraint", name: "GeoMatchConstraint")
    GeoMatchConstraintType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafregional#GeoMatchConstraintType", name: "GeoMatchConstraintType")
    GeoMatchConstraintValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafregional#GeoMatchConstraintValue", name: "GeoMatchConstraintValue")
    GeoMatchConstraints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#GeoMatchConstraints", name: "GeoMatchConstraints")
    GeoMatchSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GeoMatchSet", name: "GeoMatchSet")
    GeoMatchSetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#GeoMatchSetSummaries", name: "GeoMatchSetSummaries")
    GeoMatchSetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GeoMatchSetSummary", name: "GeoMatchSetSummary")
    GeoMatchSetUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GeoMatchSetUpdate", name: "GeoMatchSetUpdate")
    GeoMatchSetUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#GeoMatchSetUpdates", name: "GeoMatchSetUpdates", traits: {"smithy.api#length" => {"min" => 1}})
    GetByteMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetByteMatchSetRequest", name: "GetByteMatchSetRequest")
    GetByteMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetByteMatchSetResponse", name: "GetByteMatchSetResponse")
    GetChangeTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetChangeTokenRequest", name: "GetChangeTokenRequest")
    GetChangeTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetChangeTokenResponse", name: "GetChangeTokenResponse")
    GetChangeTokenStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetChangeTokenStatusRequest", name: "GetChangeTokenStatusRequest")
    GetChangeTokenStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetChangeTokenStatusResponse", name: "GetChangeTokenStatusResponse")
    GetGeoMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetGeoMatchSetRequest", name: "GetGeoMatchSetRequest")
    GetGeoMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetGeoMatchSetResponse", name: "GetGeoMatchSetResponse")
    GetIPSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetIPSetRequest", name: "GetIPSetRequest")
    GetIPSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetIPSetResponse", name: "GetIPSetResponse")
    GetLoggingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetLoggingConfigurationRequest", name: "GetLoggingConfigurationRequest")
    GetLoggingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetLoggingConfigurationResponse", name: "GetLoggingConfigurationResponse")
    GetPermissionPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetPermissionPolicyRequest", name: "GetPermissionPolicyRequest")
    GetPermissionPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetPermissionPolicyResponse", name: "GetPermissionPolicyResponse")
    GetRateBasedRuleManagedKeysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetRateBasedRuleManagedKeysRequest", name: "GetRateBasedRuleManagedKeysRequest")
    GetRateBasedRuleManagedKeysResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetRateBasedRuleManagedKeysResponse", name: "GetRateBasedRuleManagedKeysResponse")
    GetRateBasedRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetRateBasedRuleRequest", name: "GetRateBasedRuleRequest")
    GetRateBasedRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetRateBasedRuleResponse", name: "GetRateBasedRuleResponse")
    GetRegexMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetRegexMatchSetRequest", name: "GetRegexMatchSetRequest")
    GetRegexMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetRegexMatchSetResponse", name: "GetRegexMatchSetResponse")
    GetRegexPatternSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetRegexPatternSetRequest", name: "GetRegexPatternSetRequest")
    GetRegexPatternSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetRegexPatternSetResponse", name: "GetRegexPatternSetResponse")
    GetRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetRuleGroupRequest", name: "GetRuleGroupRequest")
    GetRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetRuleGroupResponse", name: "GetRuleGroupResponse")
    GetRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetRuleRequest", name: "GetRuleRequest")
    GetRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetRuleResponse", name: "GetRuleResponse")
    GetSampledRequestsMaxItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wafregional#GetSampledRequestsMaxItems", name: "GetSampledRequestsMaxItems", traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    GetSampledRequestsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetSampledRequestsRequest", name: "GetSampledRequestsRequest")
    GetSampledRequestsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetSampledRequestsResponse", name: "GetSampledRequestsResponse")
    GetSizeConstraintSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetSizeConstraintSetRequest", name: "GetSizeConstraintSetRequest")
    GetSizeConstraintSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetSizeConstraintSetResponse", name: "GetSizeConstraintSetResponse")
    GetSqlInjectionMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetSqlInjectionMatchSetRequest", name: "GetSqlInjectionMatchSetRequest")
    GetSqlInjectionMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetSqlInjectionMatchSetResponse", name: "GetSqlInjectionMatchSetResponse")
    GetWebACLForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetWebACLForResourceRequest", name: "GetWebACLForResourceRequest")
    GetWebACLForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetWebACLForResourceResponse", name: "GetWebACLForResourceResponse")
    GetWebACLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetWebACLRequest", name: "GetWebACLRequest")
    GetWebACLResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetWebACLResponse", name: "GetWebACLResponse")
    GetXssMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetXssMatchSetRequest", name: "GetXssMatchSetRequest")
    GetXssMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#GetXssMatchSetResponse", name: "GetXssMatchSetResponse")
    HTTPHeader = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#HTTPHeader", name: "HTTPHeader")
    HTTPHeaders = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#HTTPHeaders", name: "HTTPHeaders")
    HTTPMethod = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafregional#HTTPMethod", name: "HTTPMethod")
    HTTPRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#HTTPRequest", name: "HTTPRequest")
    HTTPVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafregional#HTTPVersion", name: "HTTPVersion")
    HeaderName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafregional#HeaderName", name: "HeaderName")
    HeaderValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafregional#HeaderValue", name: "HeaderValue")
    IPSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#IPSet", name: "IPSet")
    IPSetDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#IPSetDescriptor", name: "IPSetDescriptor")
    IPSetDescriptorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafregional#IPSetDescriptorType", name: "IPSetDescriptorType")
    IPSetDescriptorValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafregional#IPSetDescriptorValue", name: "IPSetDescriptorValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "\\S"})
    IPSetDescriptors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#IPSetDescriptors", name: "IPSetDescriptors")
    IPSetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#IPSetSummaries", name: "IPSetSummaries")
    IPSetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#IPSetSummary", name: "IPSetSummary")
    IPSetUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#IPSetUpdate", name: "IPSetUpdate")
    IPSetUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#IPSetUpdates", name: "IPSetUpdates", traits: {"smithy.api#length" => {"min" => 1}})
    IPString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafregional#IPString", name: "IPString")
    IgnoreUnsupportedType = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.wafregional#IgnoreUnsupportedType", name: "IgnoreUnsupportedType")
    ListActivatedRulesInRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListActivatedRulesInRuleGroupRequest", name: "ListActivatedRulesInRuleGroupRequest")
    ListActivatedRulesInRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListActivatedRulesInRuleGroupResponse", name: "ListActivatedRulesInRuleGroupResponse")
    ListByteMatchSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListByteMatchSetsRequest", name: "ListByteMatchSetsRequest")
    ListByteMatchSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListByteMatchSetsResponse", name: "ListByteMatchSetsResponse")
    ListGeoMatchSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListGeoMatchSetsRequest", name: "ListGeoMatchSetsRequest")
    ListGeoMatchSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListGeoMatchSetsResponse", name: "ListGeoMatchSetsResponse")
    ListIPSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListIPSetsRequest", name: "ListIPSetsRequest")
    ListIPSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListIPSetsResponse", name: "ListIPSetsResponse")
    ListLoggingConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListLoggingConfigurationsRequest", name: "ListLoggingConfigurationsRequest")
    ListLoggingConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListLoggingConfigurationsResponse", name: "ListLoggingConfigurationsResponse")
    ListRateBasedRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListRateBasedRulesRequest", name: "ListRateBasedRulesRequest")
    ListRateBasedRulesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListRateBasedRulesResponse", name: "ListRateBasedRulesResponse")
    ListRegexMatchSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListRegexMatchSetsRequest", name: "ListRegexMatchSetsRequest")
    ListRegexMatchSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListRegexMatchSetsResponse", name: "ListRegexMatchSetsResponse")
    ListRegexPatternSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListRegexPatternSetsRequest", name: "ListRegexPatternSetsRequest")
    ListRegexPatternSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListRegexPatternSetsResponse", name: "ListRegexPatternSetsResponse")
    ListResourcesForWebACLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListResourcesForWebACLRequest", name: "ListResourcesForWebACLRequest")
    ListResourcesForWebACLResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListResourcesForWebACLResponse", name: "ListResourcesForWebACLResponse")
    ListRuleGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListRuleGroupsRequest", name: "ListRuleGroupsRequest")
    ListRuleGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListRuleGroupsResponse", name: "ListRuleGroupsResponse")
    ListRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListRulesRequest", name: "ListRulesRequest")
    ListRulesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListRulesResponse", name: "ListRulesResponse")
    ListSizeConstraintSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListSizeConstraintSetsRequest", name: "ListSizeConstraintSetsRequest")
    ListSizeConstraintSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListSizeConstraintSetsResponse", name: "ListSizeConstraintSetsResponse")
    ListSqlInjectionMatchSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListSqlInjectionMatchSetsRequest", name: "ListSqlInjectionMatchSetsRequest")
    ListSqlInjectionMatchSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListSqlInjectionMatchSetsResponse", name: "ListSqlInjectionMatchSetsResponse")
    ListSubscribedRuleGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListSubscribedRuleGroupsRequest", name: "ListSubscribedRuleGroupsRequest")
    ListSubscribedRuleGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListSubscribedRuleGroupsResponse", name: "ListSubscribedRuleGroupsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListWebACLsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListWebACLsRequest", name: "ListWebACLsRequest")
    ListWebACLsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListWebACLsResponse", name: "ListWebACLsResponse")
    ListXssMatchSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListXssMatchSetsRequest", name: "ListXssMatchSetsRequest")
    ListXssMatchSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#ListXssMatchSetsResponse", name: "ListXssMatchSetsResponse")
    LogDestinationConfigs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#LogDestinationConfigs", name: "LogDestinationConfigs", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    LoggingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#LoggingConfiguration", name: "LoggingConfiguration")
    LoggingConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#LoggingConfigurations", name: "LoggingConfigurations")
    ManagedKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafregional#ManagedKey", name: "ManagedKey")
    ManagedKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#ManagedKeys", name: "ManagedKeys")
    MatchFieldData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafregional#MatchFieldData", name: "MatchFieldData", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    MatchFieldType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafregional#MatchFieldType", name: "MatchFieldType")
    MetricName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafregional#MetricName", name: "MetricName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    MigrationErrorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafregional#MigrationErrorType", name: "MigrationErrorType")
    Negated = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.wafregional#Negated", name: "Negated")
    NextMarker = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafregional#NextMarker", name: "NextMarker", traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => "\\S"})
    PaginationLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wafregional#PaginationLimit", name: "PaginationLimit", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    ParameterExceptionField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafregional#ParameterExceptionField", name: "ParameterExceptionField")
    ParameterExceptionParameter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafregional#ParameterExceptionParameter", name: "ParameterExceptionParameter", traits: {"smithy.api#length" => {"min" => 1}})
    ParameterExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafregional#ParameterExceptionReason", name: "ParameterExceptionReason")
    PolicyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafregional#PolicyString", name: "PolicyString", traits: {"smithy.api#length" => {"min" => 1, "max" => 395000}, "smithy.api#pattern" => "\\S"})
    PopulationSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wafregional#PopulationSize", name: "PopulationSize", traits: {"smithy.api#default" => 0})
    PositionalConstraint = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafregional#PositionalConstraint", name: "PositionalConstraint")
    Predicate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#Predicate", name: "Predicate")
    PredicateType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafregional#PredicateType", name: "PredicateType")
    Predicates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#Predicates", name: "Predicates")
    PutLoggingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#PutLoggingConfigurationRequest", name: "PutLoggingConfigurationRequest")
    PutLoggingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#PutLoggingConfigurationResponse", name: "PutLoggingConfigurationResponse")
    PutPermissionPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#PutPermissionPolicyRequest", name: "PutPermissionPolicyRequest")
    PutPermissionPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#PutPermissionPolicyResponse", name: "PutPermissionPolicyResponse")
    RateBasedRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#RateBasedRule", name: "RateBasedRule")
    RateKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafregional#RateKey", name: "RateKey")
    RateLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wafregional#RateLimit", name: "RateLimit", traits: {"smithy.api#range" => {"min" => 100, "max" => 2000000000}})
    RedactedFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#RedactedFields", name: "RedactedFields")
    RegexMatchSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#RegexMatchSet", name: "RegexMatchSet")
    RegexMatchSetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#RegexMatchSetSummaries", name: "RegexMatchSetSummaries")
    RegexMatchSetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#RegexMatchSetSummary", name: "RegexMatchSetSummary")
    RegexMatchSetUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#RegexMatchSetUpdate", name: "RegexMatchSetUpdate")
    RegexMatchSetUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#RegexMatchSetUpdates", name: "RegexMatchSetUpdates", traits: {"smithy.api#length" => {"min" => 1}})
    RegexMatchTuple = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#RegexMatchTuple", name: "RegexMatchTuple")
    RegexMatchTuples = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#RegexMatchTuples", name: "RegexMatchTuples")
    RegexPatternSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#RegexPatternSet", name: "RegexPatternSet")
    RegexPatternSetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#RegexPatternSetSummaries", name: "RegexPatternSetSummaries")
    RegexPatternSetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#RegexPatternSetSummary", name: "RegexPatternSetSummary")
    RegexPatternSetUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#RegexPatternSetUpdate", name: "RegexPatternSetUpdate")
    RegexPatternSetUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#RegexPatternSetUpdates", name: "RegexPatternSetUpdates", traits: {"smithy.api#length" => {"min" => 1}})
    RegexPatternString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafregional#RegexPatternString", name: "RegexPatternString", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => ".*"})
    RegexPatternStrings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#RegexPatternStrings", name: "RegexPatternStrings", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafregional#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => "\\S"})
    ResourceArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#ResourceArns", name: "ResourceArns")
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafregional#ResourceId", name: "ResourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafregional#ResourceName", name: "ResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafregional#ResourceType", name: "ResourceType")
    Rule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#Rule", name: "Rule")
    RuleGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#RuleGroup", name: "RuleGroup")
    RuleGroupSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#RuleGroupSummaries", name: "RuleGroupSummaries")
    RuleGroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#RuleGroupSummary", name: "RuleGroupSummary")
    RuleGroupUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#RuleGroupUpdate", name: "RuleGroupUpdate")
    RuleGroupUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#RuleGroupUpdates", name: "RuleGroupUpdates", traits: {"smithy.api#length" => {"min" => 1}})
    RulePriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wafregional#RulePriority", name: "RulePriority")
    RuleSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#RuleSummaries", name: "RuleSummaries")
    RuleSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#RuleSummary", name: "RuleSummary")
    RuleUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#RuleUpdate", name: "RuleUpdate")
    RuleUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#RuleUpdates", name: "RuleUpdates")
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafregional#S3BucketName", name: "S3BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^aws-waf-migration-[0-9A-Za-z\\.\\-_]*$"})
    S3ObjectUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafregional#S3ObjectUrl", name: "S3ObjectUrl", traits: {"smithy.api#length" => {"min" => 1}})
    SampleWeight = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wafregional#SampleWeight", name: "SampleWeight", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    SampledHTTPRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#SampledHTTPRequest", name: "SampledHTTPRequest")
    SampledHTTPRequests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#SampledHTTPRequests", name: "SampledHTTPRequests")
    Size = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wafregional#Size", name: "Size", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 21474836480}})
    SizeConstraint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#SizeConstraint", name: "SizeConstraint")
    SizeConstraintSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#SizeConstraintSet", name: "SizeConstraintSet")
    SizeConstraintSetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#SizeConstraintSetSummaries", name: "SizeConstraintSetSummaries")
    SizeConstraintSetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#SizeConstraintSetSummary", name: "SizeConstraintSetSummary")
    SizeConstraintSetUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#SizeConstraintSetUpdate", name: "SizeConstraintSetUpdate")
    SizeConstraintSetUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#SizeConstraintSetUpdates", name: "SizeConstraintSetUpdates", traits: {"smithy.api#length" => {"min" => 1}})
    SizeConstraints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#SizeConstraints", name: "SizeConstraints")
    SqlInjectionMatchSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#SqlInjectionMatchSet", name: "SqlInjectionMatchSet")
    SqlInjectionMatchSetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#SqlInjectionMatchSetSummaries", name: "SqlInjectionMatchSetSummaries")
    SqlInjectionMatchSetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#SqlInjectionMatchSetSummary", name: "SqlInjectionMatchSetSummary")
    SqlInjectionMatchSetUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#SqlInjectionMatchSetUpdate", name: "SqlInjectionMatchSetUpdate")
    SqlInjectionMatchSetUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#SqlInjectionMatchSetUpdates", name: "SqlInjectionMatchSetUpdates", traits: {"smithy.api#length" => {"min" => 1}})
    SqlInjectionMatchTuple = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#SqlInjectionMatchTuple", name: "SqlInjectionMatchTuple")
    SqlInjectionMatchTuples = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#SqlInjectionMatchTuples", name: "SqlInjectionMatchTuples")
    SubscribedRuleGroupSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#SubscribedRuleGroupSummaries", name: "SubscribedRuleGroupSummaries")
    SubscribedRuleGroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#SubscribedRuleGroupSummary", name: "SubscribedRuleGroupSummary")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#Tag", name: "Tag")
    TagInfoForResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#TagInfoForResource", name: "TagInfoForResource")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafregional#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 1}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafregional#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => ".*"})
    TextTransformation = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafregional#TextTransformation", name: "TextTransformation")
    TimeWindow = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#TimeWindow", name: "TimeWindow")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.wafregional#Timestamp", name: "Timestamp")
    URIString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafregional#URIString", name: "URIString")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateByteMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#UpdateByteMatchSetRequest", name: "UpdateByteMatchSetRequest")
    UpdateByteMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#UpdateByteMatchSetResponse", name: "UpdateByteMatchSetResponse")
    UpdateGeoMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#UpdateGeoMatchSetRequest", name: "UpdateGeoMatchSetRequest")
    UpdateGeoMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#UpdateGeoMatchSetResponse", name: "UpdateGeoMatchSetResponse")
    UpdateIPSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#UpdateIPSetRequest", name: "UpdateIPSetRequest")
    UpdateIPSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#UpdateIPSetResponse", name: "UpdateIPSetResponse")
    UpdateRateBasedRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#UpdateRateBasedRuleRequest", name: "UpdateRateBasedRuleRequest")
    UpdateRateBasedRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#UpdateRateBasedRuleResponse", name: "UpdateRateBasedRuleResponse")
    UpdateRegexMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#UpdateRegexMatchSetRequest", name: "UpdateRegexMatchSetRequest")
    UpdateRegexMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#UpdateRegexMatchSetResponse", name: "UpdateRegexMatchSetResponse")
    UpdateRegexPatternSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#UpdateRegexPatternSetRequest", name: "UpdateRegexPatternSetRequest")
    UpdateRegexPatternSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#UpdateRegexPatternSetResponse", name: "UpdateRegexPatternSetResponse")
    UpdateRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#UpdateRuleGroupRequest", name: "UpdateRuleGroupRequest")
    UpdateRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#UpdateRuleGroupResponse", name: "UpdateRuleGroupResponse")
    UpdateRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#UpdateRuleRequest", name: "UpdateRuleRequest")
    UpdateRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#UpdateRuleResponse", name: "UpdateRuleResponse")
    UpdateSizeConstraintSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#UpdateSizeConstraintSetRequest", name: "UpdateSizeConstraintSetRequest")
    UpdateSizeConstraintSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#UpdateSizeConstraintSetResponse", name: "UpdateSizeConstraintSetResponse")
    UpdateSqlInjectionMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#UpdateSqlInjectionMatchSetRequest", name: "UpdateSqlInjectionMatchSetRequest")
    UpdateSqlInjectionMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#UpdateSqlInjectionMatchSetResponse", name: "UpdateSqlInjectionMatchSetResponse")
    UpdateWebACLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#UpdateWebACLRequest", name: "UpdateWebACLRequest")
    UpdateWebACLResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#UpdateWebACLResponse", name: "UpdateWebACLResponse")
    UpdateXssMatchSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#UpdateXssMatchSetRequest", name: "UpdateXssMatchSetRequest")
    UpdateXssMatchSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#UpdateXssMatchSetResponse", name: "UpdateXssMatchSetResponse")
    WAFBadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#WAFBadRequestException", name: "WAFBadRequestException", traits: {"smithy.api#error" => "client"})
    WAFDisallowedNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#WAFDisallowedNameException", name: "WAFDisallowedNameException", traits: {"smithy.api#error" => "client"})
    WAFEntityMigrationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#WAFEntityMigrationException", name: "WAFEntityMigrationException", traits: {"smithy.api#error" => "client"})
    WAFInternalErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#WAFInternalErrorException", name: "WAFInternalErrorException", traits: {"smithy.api#error" => "server"})
    WAFInvalidAccountException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#WAFInvalidAccountException", name: "WAFInvalidAccountException", traits: {"smithy.api#error" => "client"})
    WAFInvalidOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#WAFInvalidOperationException", name: "WAFInvalidOperationException", traits: {"smithy.api#error" => "client"})
    WAFInvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#WAFInvalidParameterException", name: "WAFInvalidParameterException", traits: {"smithy.api#error" => "client"})
    WAFInvalidPermissionPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#WAFInvalidPermissionPolicyException", name: "WAFInvalidPermissionPolicyException", traits: {"smithy.api#error" => "client"})
    WAFInvalidRegexPatternException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#WAFInvalidRegexPatternException", name: "WAFInvalidRegexPatternException", traits: {"smithy.api#error" => "client"})
    WAFLimitsExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#WAFLimitsExceededException", name: "WAFLimitsExceededException", traits: {"smithy.api#error" => "client"})
    WAFNonEmptyEntityException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#WAFNonEmptyEntityException", name: "WAFNonEmptyEntityException", traits: {"smithy.api#error" => "client"})
    WAFNonexistentContainerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#WAFNonexistentContainerException", name: "WAFNonexistentContainerException", traits: {"smithy.api#error" => "client"})
    WAFNonexistentItemException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#WAFNonexistentItemException", name: "WAFNonexistentItemException", traits: {"smithy.api#error" => "client"})
    WAFReferencedItemException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#WAFReferencedItemException", name: "WAFReferencedItemException", traits: {"smithy.api#error" => "client"})
    WAFServiceLinkedRoleErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#WAFServiceLinkedRoleErrorException", name: "WAFServiceLinkedRoleErrorException", traits: {"smithy.api#error" => "client"})
    WAFStaleDataException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#WAFStaleDataException", name: "WAFStaleDataException", traits: {"smithy.api#error" => "client"})
    WAFSubscriptionNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#WAFSubscriptionNotFoundException", name: "WAFSubscriptionNotFoundException", traits: {"smithy.api#error" => "client"})
    WAFTagOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#WAFTagOperationException", name: "WAFTagOperationException", traits: {"smithy.api#error" => "client"})
    WAFTagOperationInternalErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#WAFTagOperationInternalErrorException", name: "WAFTagOperationInternalErrorException", traits: {"smithy.api#error" => "server"})
    WAFUnavailableEntityException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#WAFUnavailableEntityException", name: "WAFUnavailableEntityException", traits: {"smithy.api#error" => "client"})
    WafAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#WafAction", name: "WafAction")
    WafActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafregional#WafActionType", name: "WafActionType")
    WafOverrideAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#WafOverrideAction", name: "WafOverrideAction")
    WafOverrideActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafregional#WafOverrideActionType", name: "WafOverrideActionType")
    WafRuleType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wafregional#WafRuleType", name: "WafRuleType")
    WebACL = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#WebACL", name: "WebACL")
    WebACLSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#WebACLSummaries", name: "WebACLSummaries")
    WebACLSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#WebACLSummary", name: "WebACLSummary")
    WebACLUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#WebACLUpdate", name: "WebACLUpdate")
    WebACLUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#WebACLUpdates", name: "WebACLUpdates")
    XssMatchSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#XssMatchSet", name: "XssMatchSet")
    XssMatchSetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#XssMatchSetSummaries", name: "XssMatchSetSummaries")
    XssMatchSetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#XssMatchSetSummary", name: "XssMatchSetSummary")
    XssMatchSetUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#XssMatchSetUpdate", name: "XssMatchSetUpdate")
    XssMatchSetUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#XssMatchSetUpdates", name: "XssMatchSetUpdates", traits: {"smithy.api#length" => {"min" => 1}})
    XssMatchTuple = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wafregional#XssMatchTuple", name: "XssMatchTuple")
    XssMatchTuples = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wafregional#XssMatchTuples", name: "XssMatchTuples")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wafregional#errorMessage", name: "ErrorMessage")

    ActivatedRule.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: RulePriority, name: "Priority", traits: {"smithy.api#required" => {}}))
    ActivatedRule.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RuleId", traits: {"smithy.api#required" => {}}))
    ActivatedRule.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: WafAction, name: "Action"))
    ActivatedRule.add_member(:override_action, ::Smithy::Schema::Shapes::MemberShape.new(target: WafOverrideAction, name: "OverrideAction"))
    ActivatedRule.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WafRuleType, name: "Type"))
    ActivatedRule.add_member(:excluded_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludedRules, name: "ExcludedRules"))
    ActivatedRule.type = Types::ActivatedRule
    ActivatedRules.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivatedRule, name: "member"))
    AssociateWebACLRequest.add_member(:web_acl_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "WebACLId", traits: {"smithy.api#required" => {}}))
    AssociateWebACLRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    AssociateWebACLRequest.type = Types::AssociateWebACLRequest
    AssociateWebACLResponse.type = Types::AssociateWebACLResponse
    ByteMatchSet.add_member(:byte_match_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ByteMatchSetId", traits: {"smithy.api#required" => {}}))
    ByteMatchSet.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name"))
    ByteMatchSet.add_member(:byte_match_tuples, ::Smithy::Schema::Shapes::MemberShape.new(target: ByteMatchTuples, name: "ByteMatchTuples", traits: {"smithy.api#required" => {}}))
    ByteMatchSet.type = Types::ByteMatchSet
    ByteMatchSetSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ByteMatchSetSummary, name: "member"))
    ByteMatchSetSummary.add_member(:byte_match_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ByteMatchSetId", traits: {"smithy.api#required" => {}}))
    ByteMatchSetSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    ByteMatchSetSummary.type = Types::ByteMatchSetSummary
    ByteMatchSetUpdate.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeAction, name: "Action", traits: {"smithy.api#required" => {}}))
    ByteMatchSetUpdate.add_member(:byte_match_tuple, ::Smithy::Schema::Shapes::MemberShape.new(target: ByteMatchTuple, name: "ByteMatchTuple", traits: {"smithy.api#required" => {}}))
    ByteMatchSetUpdate.type = Types::ByteMatchSetUpdate
    ByteMatchSetUpdates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ByteMatchSetUpdate, name: "member"))
    ByteMatchTuple.add_member(:field_to_match, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldToMatch, name: "FieldToMatch", traits: {"smithy.api#required" => {}}))
    ByteMatchTuple.add_member(:target_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ByteMatchTargetString, name: "TargetString", traits: {"smithy.api#required" => {}}))
    ByteMatchTuple.add_member(:text_transformation, ::Smithy::Schema::Shapes::MemberShape.new(target: TextTransformation, name: "TextTransformation", traits: {"smithy.api#required" => {}}))
    ByteMatchTuple.add_member(:positional_constraint, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionalConstraint, name: "PositionalConstraint", traits: {"smithy.api#required" => {}}))
    ByteMatchTuple.type = Types::ByteMatchTuple
    ByteMatchTuples.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ByteMatchTuple, name: "member"))
    ChangeAction.add_member(:insert, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSERT", traits: {"smithy.api#enumValue" => "INSERT"}))
    ChangeAction.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    ChangeTokenStatus.add_member(:provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONED", traits: {"smithy.api#enumValue" => "PROVISIONED"}))
    ChangeTokenStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ChangeTokenStatus.add_member(:insync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSYNC", traits: {"smithy.api#enumValue" => "INSYNC"}))
    ComparisonOperator.add_member(:eq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQ", traits: {"smithy.api#enumValue" => "EQ"}))
    ComparisonOperator.add_member(:ne, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NE", traits: {"smithy.api#enumValue" => "NE"}))
    ComparisonOperator.add_member(:le, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LE", traits: {"smithy.api#enumValue" => "LE"}))
    ComparisonOperator.add_member(:lt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LT", traits: {"smithy.api#enumValue" => "LT"}))
    ComparisonOperator.add_member(:ge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GE", traits: {"smithy.api#enumValue" => "GE"}))
    ComparisonOperator.add_member(:gt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GT", traits: {"smithy.api#enumValue" => "GT"}))
    CreateByteMatchSetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateByteMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    CreateByteMatchSetRequest.type = Types::CreateByteMatchSetRequest
    CreateByteMatchSetResponse.add_member(:byte_match_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ByteMatchSet, name: "ByteMatchSet"))
    CreateByteMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    CreateByteMatchSetResponse.type = Types::CreateByteMatchSetResponse
    CreateGeoMatchSetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateGeoMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    CreateGeoMatchSetRequest.type = Types::CreateGeoMatchSetRequest
    CreateGeoMatchSetResponse.add_member(:geo_match_set, ::Smithy::Schema::Shapes::MemberShape.new(target: GeoMatchSet, name: "GeoMatchSet"))
    CreateGeoMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    CreateGeoMatchSetResponse.type = Types::CreateGeoMatchSetResponse
    CreateIPSetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateIPSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    CreateIPSetRequest.type = Types::CreateIPSetRequest
    CreateIPSetResponse.add_member(:ip_set, ::Smithy::Schema::Shapes::MemberShape.new(target: IPSet, name: "IPSet"))
    CreateIPSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    CreateIPSetResponse.type = Types::CreateIPSetResponse
    CreateRateBasedRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateRateBasedRuleRequest.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName", traits: {"smithy.api#required" => {}}))
    CreateRateBasedRuleRequest.add_member(:rate_key, ::Smithy::Schema::Shapes::MemberShape.new(target: RateKey, name: "RateKey", traits: {"smithy.api#required" => {}}))
    CreateRateBasedRuleRequest.add_member(:rate_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: RateLimit, name: "RateLimit", traits: {"smithy.api#required" => {}}))
    CreateRateBasedRuleRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    CreateRateBasedRuleRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateRateBasedRuleRequest.type = Types::CreateRateBasedRuleRequest
    CreateRateBasedRuleResponse.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: RateBasedRule, name: "Rule"))
    CreateRateBasedRuleResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    CreateRateBasedRuleResponse.type = Types::CreateRateBasedRuleResponse
    CreateRegexMatchSetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateRegexMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    CreateRegexMatchSetRequest.type = Types::CreateRegexMatchSetRequest
    CreateRegexMatchSetResponse.add_member(:regex_match_set, ::Smithy::Schema::Shapes::MemberShape.new(target: RegexMatchSet, name: "RegexMatchSet"))
    CreateRegexMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    CreateRegexMatchSetResponse.type = Types::CreateRegexMatchSetResponse
    CreateRegexPatternSetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateRegexPatternSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    CreateRegexPatternSetRequest.type = Types::CreateRegexPatternSetRequest
    CreateRegexPatternSetResponse.add_member(:regex_pattern_set, ::Smithy::Schema::Shapes::MemberShape.new(target: RegexPatternSet, name: "RegexPatternSet"))
    CreateRegexPatternSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    CreateRegexPatternSetResponse.type = Types::CreateRegexPatternSetResponse
    CreateRuleGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateRuleGroupRequest.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName", traits: {"smithy.api#required" => {}}))
    CreateRuleGroupRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    CreateRuleGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateRuleGroupRequest.type = Types::CreateRuleGroupRequest
    CreateRuleGroupResponse.add_member(:rule_group, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroup, name: "RuleGroup"))
    CreateRuleGroupResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    CreateRuleGroupResponse.type = Types::CreateRuleGroupResponse
    CreateRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateRuleRequest.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName", traits: {"smithy.api#required" => {}}))
    CreateRuleRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    CreateRuleRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateRuleRequest.type = Types::CreateRuleRequest
    CreateRuleResponse.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: Rule, name: "Rule"))
    CreateRuleResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    CreateRuleResponse.type = Types::CreateRuleResponse
    CreateSizeConstraintSetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateSizeConstraintSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    CreateSizeConstraintSetRequest.type = Types::CreateSizeConstraintSetRequest
    CreateSizeConstraintSetResponse.add_member(:size_constraint_set, ::Smithy::Schema::Shapes::MemberShape.new(target: SizeConstraintSet, name: "SizeConstraintSet"))
    CreateSizeConstraintSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    CreateSizeConstraintSetResponse.type = Types::CreateSizeConstraintSetResponse
    CreateSqlInjectionMatchSetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateSqlInjectionMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    CreateSqlInjectionMatchSetRequest.type = Types::CreateSqlInjectionMatchSetRequest
    CreateSqlInjectionMatchSetResponse.add_member(:sql_injection_match_set, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlInjectionMatchSet, name: "SqlInjectionMatchSet"))
    CreateSqlInjectionMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    CreateSqlInjectionMatchSetResponse.type = Types::CreateSqlInjectionMatchSetResponse
    CreateWebACLMigrationStackRequest.add_member(:web_acl_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "WebACLId", traits: {"smithy.api#required" => {}}))
    CreateWebACLMigrationStackRequest.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "S3BucketName", traits: {"smithy.api#required" => {}}))
    CreateWebACLMigrationStackRequest.add_member(:ignore_unsupported_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IgnoreUnsupportedType, name: "IgnoreUnsupportedType", traits: {"smithy.api#required" => {}}))
    CreateWebACLMigrationStackRequest.type = Types::CreateWebACLMigrationStackRequest
    CreateWebACLMigrationStackResponse.add_member(:s3_object_url, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectUrl, name: "S3ObjectUrl", traits: {"smithy.api#required" => {}}))
    CreateWebACLMigrationStackResponse.type = Types::CreateWebACLMigrationStackResponse
    CreateWebACLRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateWebACLRequest.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName", traits: {"smithy.api#required" => {}}))
    CreateWebACLRequest.add_member(:default_action, ::Smithy::Schema::Shapes::MemberShape.new(target: WafAction, name: "DefaultAction", traits: {"smithy.api#required" => {}}))
    CreateWebACLRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    CreateWebACLRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateWebACLRequest.type = Types::CreateWebACLRequest
    CreateWebACLResponse.add_member(:web_acl, ::Smithy::Schema::Shapes::MemberShape.new(target: WebACL, name: "WebACL"))
    CreateWebACLResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    CreateWebACLResponse.type = Types::CreateWebACLResponse
    CreateXssMatchSetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateXssMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    CreateXssMatchSetRequest.type = Types::CreateXssMatchSetRequest
    CreateXssMatchSetResponse.add_member(:xss_match_set, ::Smithy::Schema::Shapes::MemberShape.new(target: XssMatchSet, name: "XssMatchSet"))
    CreateXssMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    CreateXssMatchSetResponse.type = Types::CreateXssMatchSetResponse
    DeleteByteMatchSetRequest.add_member(:byte_match_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ByteMatchSetId", traits: {"smithy.api#required" => {}}))
    DeleteByteMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    DeleteByteMatchSetRequest.type = Types::DeleteByteMatchSetRequest
    DeleteByteMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    DeleteByteMatchSetResponse.type = Types::DeleteByteMatchSetResponse
    DeleteGeoMatchSetRequest.add_member(:geo_match_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "GeoMatchSetId", traits: {"smithy.api#required" => {}}))
    DeleteGeoMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    DeleteGeoMatchSetRequest.type = Types::DeleteGeoMatchSetRequest
    DeleteGeoMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    DeleteGeoMatchSetResponse.type = Types::DeleteGeoMatchSetResponse
    DeleteIPSetRequest.add_member(:ip_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "IPSetId", traits: {"smithy.api#required" => {}}))
    DeleteIPSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    DeleteIPSetRequest.type = Types::DeleteIPSetRequest
    DeleteIPSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    DeleteIPSetResponse.type = Types::DeleteIPSetResponse
    DeleteLoggingConfigurationRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DeleteLoggingConfigurationRequest.type = Types::DeleteLoggingConfigurationRequest
    DeleteLoggingConfigurationResponse.type = Types::DeleteLoggingConfigurationResponse
    DeletePermissionPolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DeletePermissionPolicyRequest.type = Types::DeletePermissionPolicyRequest
    DeletePermissionPolicyResponse.type = Types::DeletePermissionPolicyResponse
    DeleteRateBasedRuleRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RuleId", traits: {"smithy.api#required" => {}}))
    DeleteRateBasedRuleRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    DeleteRateBasedRuleRequest.type = Types::DeleteRateBasedRuleRequest
    DeleteRateBasedRuleResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    DeleteRateBasedRuleResponse.type = Types::DeleteRateBasedRuleResponse
    DeleteRegexMatchSetRequest.add_member(:regex_match_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RegexMatchSetId", traits: {"smithy.api#required" => {}}))
    DeleteRegexMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    DeleteRegexMatchSetRequest.type = Types::DeleteRegexMatchSetRequest
    DeleteRegexMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    DeleteRegexMatchSetResponse.type = Types::DeleteRegexMatchSetResponse
    DeleteRegexPatternSetRequest.add_member(:regex_pattern_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RegexPatternSetId", traits: {"smithy.api#required" => {}}))
    DeleteRegexPatternSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    DeleteRegexPatternSetRequest.type = Types::DeleteRegexPatternSetRequest
    DeleteRegexPatternSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    DeleteRegexPatternSetResponse.type = Types::DeleteRegexPatternSetResponse
    DeleteRuleGroupRequest.add_member(:rule_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RuleGroupId", traits: {"smithy.api#required" => {}}))
    DeleteRuleGroupRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    DeleteRuleGroupRequest.type = Types::DeleteRuleGroupRequest
    DeleteRuleGroupResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    DeleteRuleGroupResponse.type = Types::DeleteRuleGroupResponse
    DeleteRuleRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RuleId", traits: {"smithy.api#required" => {}}))
    DeleteRuleRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    DeleteRuleRequest.type = Types::DeleteRuleRequest
    DeleteRuleResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    DeleteRuleResponse.type = Types::DeleteRuleResponse
    DeleteSizeConstraintSetRequest.add_member(:size_constraint_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "SizeConstraintSetId", traits: {"smithy.api#required" => {}}))
    DeleteSizeConstraintSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    DeleteSizeConstraintSetRequest.type = Types::DeleteSizeConstraintSetRequest
    DeleteSizeConstraintSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    DeleteSizeConstraintSetResponse.type = Types::DeleteSizeConstraintSetResponse
    DeleteSqlInjectionMatchSetRequest.add_member(:sql_injection_match_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "SqlInjectionMatchSetId", traits: {"smithy.api#required" => {}}))
    DeleteSqlInjectionMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    DeleteSqlInjectionMatchSetRequest.type = Types::DeleteSqlInjectionMatchSetRequest
    DeleteSqlInjectionMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    DeleteSqlInjectionMatchSetResponse.type = Types::DeleteSqlInjectionMatchSetResponse
    DeleteWebACLRequest.add_member(:web_acl_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "WebACLId", traits: {"smithy.api#required" => {}}))
    DeleteWebACLRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    DeleteWebACLRequest.type = Types::DeleteWebACLRequest
    DeleteWebACLResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    DeleteWebACLResponse.type = Types::DeleteWebACLResponse
    DeleteXssMatchSetRequest.add_member(:xss_match_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "XssMatchSetId", traits: {"smithy.api#required" => {}}))
    DeleteXssMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    DeleteXssMatchSetRequest.type = Types::DeleteXssMatchSetRequest
    DeleteXssMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    DeleteXssMatchSetResponse.type = Types::DeleteXssMatchSetResponse
    DisassociateWebACLRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DisassociateWebACLRequest.type = Types::DisassociateWebACLRequest
    DisassociateWebACLResponse.type = Types::DisassociateWebACLResponse
    ExcludedRule.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RuleId", traits: {"smithy.api#required" => {}}))
    ExcludedRule.type = Types::ExcludedRule
    ExcludedRules.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludedRule, name: "member"))
    FieldToMatch.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchFieldType, name: "Type", traits: {"smithy.api#required" => {}}))
    FieldToMatch.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchFieldData, name: "Data"))
    FieldToMatch.type = Types::FieldToMatch
    GeoMatchConstraint.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: GeoMatchConstraintType, name: "Type", traits: {"smithy.api#required" => {}}))
    GeoMatchConstraint.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: GeoMatchConstraintValue, name: "Value", traits: {"smithy.api#required" => {}}))
    GeoMatchConstraint.type = Types::GeoMatchConstraint
    GeoMatchConstraintType.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Country", traits: {"smithy.api#enumValue" => "Country"}))
    GeoMatchConstraintValue.add_member(:af, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AF", traits: {"smithy.api#enumValue" => "AF"}))
    GeoMatchConstraintValue.add_member(:ax, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AX", traits: {"smithy.api#enumValue" => "AX"}))
    GeoMatchConstraintValue.add_member(:al, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AL", traits: {"smithy.api#enumValue" => "AL"}))
    GeoMatchConstraintValue.add_member(:dz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DZ", traits: {"smithy.api#enumValue" => "DZ"}))
    GeoMatchConstraintValue.add_member(:as, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AS", traits: {"smithy.api#enumValue" => "AS"}))
    GeoMatchConstraintValue.add_member(:ad, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AD", traits: {"smithy.api#enumValue" => "AD"}))
    GeoMatchConstraintValue.add_member(:ao, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AO", traits: {"smithy.api#enumValue" => "AO"}))
    GeoMatchConstraintValue.add_member(:ai, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AI", traits: {"smithy.api#enumValue" => "AI"}))
    GeoMatchConstraintValue.add_member(:aq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AQ", traits: {"smithy.api#enumValue" => "AQ"}))
    GeoMatchConstraintValue.add_member(:ag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AG", traits: {"smithy.api#enumValue" => "AG"}))
    GeoMatchConstraintValue.add_member(:ar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AR", traits: {"smithy.api#enumValue" => "AR"}))
    GeoMatchConstraintValue.add_member(:am, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AM", traits: {"smithy.api#enumValue" => "AM"}))
    GeoMatchConstraintValue.add_member(:aw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AW", traits: {"smithy.api#enumValue" => "AW"}))
    GeoMatchConstraintValue.add_member(:au, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AU", traits: {"smithy.api#enumValue" => "AU"}))
    GeoMatchConstraintValue.add_member(:at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AT", traits: {"smithy.api#enumValue" => "AT"}))
    GeoMatchConstraintValue.add_member(:az, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZ", traits: {"smithy.api#enumValue" => "AZ"}))
    GeoMatchConstraintValue.add_member(:bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BS", traits: {"smithy.api#enumValue" => "BS"}))
    GeoMatchConstraintValue.add_member(:bh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BH", traits: {"smithy.api#enumValue" => "BH"}))
    GeoMatchConstraintValue.add_member(:bd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BD", traits: {"smithy.api#enumValue" => "BD"}))
    GeoMatchConstraintValue.add_member(:bb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BB", traits: {"smithy.api#enumValue" => "BB"}))
    GeoMatchConstraintValue.add_member(:by, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BY", traits: {"smithy.api#enumValue" => "BY"}))
    GeoMatchConstraintValue.add_member(:be, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BE", traits: {"smithy.api#enumValue" => "BE"}))
    GeoMatchConstraintValue.add_member(:bz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BZ", traits: {"smithy.api#enumValue" => "BZ"}))
    GeoMatchConstraintValue.add_member(:bj, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BJ", traits: {"smithy.api#enumValue" => "BJ"}))
    GeoMatchConstraintValue.add_member(:bm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BM", traits: {"smithy.api#enumValue" => "BM"}))
    GeoMatchConstraintValue.add_member(:bt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT", traits: {"smithy.api#enumValue" => "BT"}))
    GeoMatchConstraintValue.add_member(:bo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BO", traits: {"smithy.api#enumValue" => "BO"}))
    GeoMatchConstraintValue.add_member(:bq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BQ", traits: {"smithy.api#enumValue" => "BQ"}))
    GeoMatchConstraintValue.add_member(:ba, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BA", traits: {"smithy.api#enumValue" => "BA"}))
    GeoMatchConstraintValue.add_member(:bw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BW", traits: {"smithy.api#enumValue" => "BW"}))
    GeoMatchConstraintValue.add_member(:bv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BV", traits: {"smithy.api#enumValue" => "BV"}))
    GeoMatchConstraintValue.add_member(:br, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BR", traits: {"smithy.api#enumValue" => "BR"}))
    GeoMatchConstraintValue.add_member(:io, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IO", traits: {"smithy.api#enumValue" => "IO"}))
    GeoMatchConstraintValue.add_member(:bn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BN", traits: {"smithy.api#enumValue" => "BN"}))
    GeoMatchConstraintValue.add_member(:bg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BG", traits: {"smithy.api#enumValue" => "BG"}))
    GeoMatchConstraintValue.add_member(:bf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BF", traits: {"smithy.api#enumValue" => "BF"}))
    GeoMatchConstraintValue.add_member(:bi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BI", traits: {"smithy.api#enumValue" => "BI"}))
    GeoMatchConstraintValue.add_member(:kh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KH", traits: {"smithy.api#enumValue" => "KH"}))
    GeoMatchConstraintValue.add_member(:cm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CM", traits: {"smithy.api#enumValue" => "CM"}))
    GeoMatchConstraintValue.add_member(:ca, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CA", traits: {"smithy.api#enumValue" => "CA"}))
    GeoMatchConstraintValue.add_member(:cv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CV", traits: {"smithy.api#enumValue" => "CV"}))
    GeoMatchConstraintValue.add_member(:ky, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KY", traits: {"smithy.api#enumValue" => "KY"}))
    GeoMatchConstraintValue.add_member(:cf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CF", traits: {"smithy.api#enumValue" => "CF"}))
    GeoMatchConstraintValue.add_member(:td, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TD", traits: {"smithy.api#enumValue" => "TD"}))
    GeoMatchConstraintValue.add_member(:cl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CL", traits: {"smithy.api#enumValue" => "CL"}))
    GeoMatchConstraintValue.add_member(:cn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CN", traits: {"smithy.api#enumValue" => "CN"}))
    GeoMatchConstraintValue.add_member(:cx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CX", traits: {"smithy.api#enumValue" => "CX"}))
    GeoMatchConstraintValue.add_member(:cc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CC", traits: {"smithy.api#enumValue" => "CC"}))
    GeoMatchConstraintValue.add_member(:co, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CO", traits: {"smithy.api#enumValue" => "CO"}))
    GeoMatchConstraintValue.add_member(:km, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KM", traits: {"smithy.api#enumValue" => "KM"}))
    GeoMatchConstraintValue.add_member(:cg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CG", traits: {"smithy.api#enumValue" => "CG"}))
    GeoMatchConstraintValue.add_member(:cd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CD", traits: {"smithy.api#enumValue" => "CD"}))
    GeoMatchConstraintValue.add_member(:ck, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CK", traits: {"smithy.api#enumValue" => "CK"}))
    GeoMatchConstraintValue.add_member(:cr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CR", traits: {"smithy.api#enumValue" => "CR"}))
    GeoMatchConstraintValue.add_member(:ci, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CI", traits: {"smithy.api#enumValue" => "CI"}))
    GeoMatchConstraintValue.add_member(:hr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HR", traits: {"smithy.api#enumValue" => "HR"}))
    GeoMatchConstraintValue.add_member(:cu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CU", traits: {"smithy.api#enumValue" => "CU"}))
    GeoMatchConstraintValue.add_member(:cw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CW", traits: {"smithy.api#enumValue" => "CW"}))
    GeoMatchConstraintValue.add_member(:cy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CY", traits: {"smithy.api#enumValue" => "CY"}))
    GeoMatchConstraintValue.add_member(:cz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CZ", traits: {"smithy.api#enumValue" => "CZ"}))
    GeoMatchConstraintValue.add_member(:dk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DK", traits: {"smithy.api#enumValue" => "DK"}))
    GeoMatchConstraintValue.add_member(:dj, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DJ", traits: {"smithy.api#enumValue" => "DJ"}))
    GeoMatchConstraintValue.add_member(:dm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DM", traits: {"smithy.api#enumValue" => "DM"}))
    GeoMatchConstraintValue.add_member(:do, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DO", traits: {"smithy.api#enumValue" => "DO"}))
    GeoMatchConstraintValue.add_member(:ec, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC", traits: {"smithy.api#enumValue" => "EC"}))
    GeoMatchConstraintValue.add_member(:eg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EG", traits: {"smithy.api#enumValue" => "EG"}))
    GeoMatchConstraintValue.add_member(:sv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SV", traits: {"smithy.api#enumValue" => "SV"}))
    GeoMatchConstraintValue.add_member(:gq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GQ", traits: {"smithy.api#enumValue" => "GQ"}))
    GeoMatchConstraintValue.add_member(:er, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ER", traits: {"smithy.api#enumValue" => "ER"}))
    GeoMatchConstraintValue.add_member(:ee, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EE", traits: {"smithy.api#enumValue" => "EE"}))
    GeoMatchConstraintValue.add_member(:et, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ET", traits: {"smithy.api#enumValue" => "ET"}))
    GeoMatchConstraintValue.add_member(:fk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FK", traits: {"smithy.api#enumValue" => "FK"}))
    GeoMatchConstraintValue.add_member(:fo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FO", traits: {"smithy.api#enumValue" => "FO"}))
    GeoMatchConstraintValue.add_member(:fj, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FJ", traits: {"smithy.api#enumValue" => "FJ"}))
    GeoMatchConstraintValue.add_member(:fi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FI", traits: {"smithy.api#enumValue" => "FI"}))
    GeoMatchConstraintValue.add_member(:fr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FR", traits: {"smithy.api#enumValue" => "FR"}))
    GeoMatchConstraintValue.add_member(:gf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GF", traits: {"smithy.api#enumValue" => "GF"}))
    GeoMatchConstraintValue.add_member(:pf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PF", traits: {"smithy.api#enumValue" => "PF"}))
    GeoMatchConstraintValue.add_member(:tf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TF", traits: {"smithy.api#enumValue" => "TF"}))
    GeoMatchConstraintValue.add_member(:ga, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GA", traits: {"smithy.api#enumValue" => "GA"}))
    GeoMatchConstraintValue.add_member(:gm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GM", traits: {"smithy.api#enumValue" => "GM"}))
    GeoMatchConstraintValue.add_member(:ge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GE", traits: {"smithy.api#enumValue" => "GE"}))
    GeoMatchConstraintValue.add_member(:de, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DE", traits: {"smithy.api#enumValue" => "DE"}))
    GeoMatchConstraintValue.add_member(:gh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GH", traits: {"smithy.api#enumValue" => "GH"}))
    GeoMatchConstraintValue.add_member(:gi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GI", traits: {"smithy.api#enumValue" => "GI"}))
    GeoMatchConstraintValue.add_member(:gr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GR", traits: {"smithy.api#enumValue" => "GR"}))
    GeoMatchConstraintValue.add_member(:gl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GL", traits: {"smithy.api#enumValue" => "GL"}))
    GeoMatchConstraintValue.add_member(:gd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GD", traits: {"smithy.api#enumValue" => "GD"}))
    GeoMatchConstraintValue.add_member(:gp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GP", traits: {"smithy.api#enumValue" => "GP"}))
    GeoMatchConstraintValue.add_member(:gu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GU", traits: {"smithy.api#enumValue" => "GU"}))
    GeoMatchConstraintValue.add_member(:gt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GT", traits: {"smithy.api#enumValue" => "GT"}))
    GeoMatchConstraintValue.add_member(:gg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GG", traits: {"smithy.api#enumValue" => "GG"}))
    GeoMatchConstraintValue.add_member(:gn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GN", traits: {"smithy.api#enumValue" => "GN"}))
    GeoMatchConstraintValue.add_member(:gw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GW", traits: {"smithy.api#enumValue" => "GW"}))
    GeoMatchConstraintValue.add_member(:gy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GY", traits: {"smithy.api#enumValue" => "GY"}))
    GeoMatchConstraintValue.add_member(:ht, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HT", traits: {"smithy.api#enumValue" => "HT"}))
    GeoMatchConstraintValue.add_member(:hm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HM", traits: {"smithy.api#enumValue" => "HM"}))
    GeoMatchConstraintValue.add_member(:va, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VA", traits: {"smithy.api#enumValue" => "VA"}))
    GeoMatchConstraintValue.add_member(:hn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HN", traits: {"smithy.api#enumValue" => "HN"}))
    GeoMatchConstraintValue.add_member(:hk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HK", traits: {"smithy.api#enumValue" => "HK"}))
    GeoMatchConstraintValue.add_member(:hu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HU", traits: {"smithy.api#enumValue" => "HU"}))
    GeoMatchConstraintValue.add_member(:is, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IS", traits: {"smithy.api#enumValue" => "IS"}))
    GeoMatchConstraintValue.add_member(:in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN", traits: {"smithy.api#enumValue" => "IN"}))
    GeoMatchConstraintValue.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ID", traits: {"smithy.api#enumValue" => "ID"}))
    GeoMatchConstraintValue.add_member(:ir, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IR", traits: {"smithy.api#enumValue" => "IR"}))
    GeoMatchConstraintValue.add_member(:iq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IQ", traits: {"smithy.api#enumValue" => "IQ"}))
    GeoMatchConstraintValue.add_member(:ie, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IE", traits: {"smithy.api#enumValue" => "IE"}))
    GeoMatchConstraintValue.add_member(:im, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IM", traits: {"smithy.api#enumValue" => "IM"}))
    GeoMatchConstraintValue.add_member(:il, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IL", traits: {"smithy.api#enumValue" => "IL"}))
    GeoMatchConstraintValue.add_member(:it, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IT", traits: {"smithy.api#enumValue" => "IT"}))
    GeoMatchConstraintValue.add_member(:jm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JM", traits: {"smithy.api#enumValue" => "JM"}))
    GeoMatchConstraintValue.add_member(:jp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JP", traits: {"smithy.api#enumValue" => "JP"}))
    GeoMatchConstraintValue.add_member(:je, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JE", traits: {"smithy.api#enumValue" => "JE"}))
    GeoMatchConstraintValue.add_member(:jo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JO", traits: {"smithy.api#enumValue" => "JO"}))
    GeoMatchConstraintValue.add_member(:kz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KZ", traits: {"smithy.api#enumValue" => "KZ"}))
    GeoMatchConstraintValue.add_member(:ke, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KE", traits: {"smithy.api#enumValue" => "KE"}))
    GeoMatchConstraintValue.add_member(:ki, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KI", traits: {"smithy.api#enumValue" => "KI"}))
    GeoMatchConstraintValue.add_member(:kp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KP", traits: {"smithy.api#enumValue" => "KP"}))
    GeoMatchConstraintValue.add_member(:kr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KR", traits: {"smithy.api#enumValue" => "KR"}))
    GeoMatchConstraintValue.add_member(:kw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KW", traits: {"smithy.api#enumValue" => "KW"}))
    GeoMatchConstraintValue.add_member(:kg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KG", traits: {"smithy.api#enumValue" => "KG"}))
    GeoMatchConstraintValue.add_member(:la, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LA", traits: {"smithy.api#enumValue" => "LA"}))
    GeoMatchConstraintValue.add_member(:lv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LV", traits: {"smithy.api#enumValue" => "LV"}))
    GeoMatchConstraintValue.add_member(:lb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LB", traits: {"smithy.api#enumValue" => "LB"}))
    GeoMatchConstraintValue.add_member(:ls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LS", traits: {"smithy.api#enumValue" => "LS"}))
    GeoMatchConstraintValue.add_member(:lr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LR", traits: {"smithy.api#enumValue" => "LR"}))
    GeoMatchConstraintValue.add_member(:ly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LY", traits: {"smithy.api#enumValue" => "LY"}))
    GeoMatchConstraintValue.add_member(:li, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LI", traits: {"smithy.api#enumValue" => "LI"}))
    GeoMatchConstraintValue.add_member(:lt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LT", traits: {"smithy.api#enumValue" => "LT"}))
    GeoMatchConstraintValue.add_member(:lu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LU", traits: {"smithy.api#enumValue" => "LU"}))
    GeoMatchConstraintValue.add_member(:mo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MO", traits: {"smithy.api#enumValue" => "MO"}))
    GeoMatchConstraintValue.add_member(:mk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MK", traits: {"smithy.api#enumValue" => "MK"}))
    GeoMatchConstraintValue.add_member(:mg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MG", traits: {"smithy.api#enumValue" => "MG"}))
    GeoMatchConstraintValue.add_member(:mw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MW", traits: {"smithy.api#enumValue" => "MW"}))
    GeoMatchConstraintValue.add_member(:my, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MY", traits: {"smithy.api#enumValue" => "MY"}))
    GeoMatchConstraintValue.add_member(:mv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MV", traits: {"smithy.api#enumValue" => "MV"}))
    GeoMatchConstraintValue.add_member(:ml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ML", traits: {"smithy.api#enumValue" => "ML"}))
    GeoMatchConstraintValue.add_member(:mt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MT", traits: {"smithy.api#enumValue" => "MT"}))
    GeoMatchConstraintValue.add_member(:mh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MH", traits: {"smithy.api#enumValue" => "MH"}))
    GeoMatchConstraintValue.add_member(:mq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MQ", traits: {"smithy.api#enumValue" => "MQ"}))
    GeoMatchConstraintValue.add_member(:mr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MR", traits: {"smithy.api#enumValue" => "MR"}))
    GeoMatchConstraintValue.add_member(:mu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MU", traits: {"smithy.api#enumValue" => "MU"}))
    GeoMatchConstraintValue.add_member(:yt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YT", traits: {"smithy.api#enumValue" => "YT"}))
    GeoMatchConstraintValue.add_member(:mx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MX", traits: {"smithy.api#enumValue" => "MX"}))
    GeoMatchConstraintValue.add_member(:fm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FM", traits: {"smithy.api#enumValue" => "FM"}))
    GeoMatchConstraintValue.add_member(:md, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MD", traits: {"smithy.api#enumValue" => "MD"}))
    GeoMatchConstraintValue.add_member(:mc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MC", traits: {"smithy.api#enumValue" => "MC"}))
    GeoMatchConstraintValue.add_member(:mn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MN", traits: {"smithy.api#enumValue" => "MN"}))
    GeoMatchConstraintValue.add_member(:me, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ME", traits: {"smithy.api#enumValue" => "ME"}))
    GeoMatchConstraintValue.add_member(:ms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MS", traits: {"smithy.api#enumValue" => "MS"}))
    GeoMatchConstraintValue.add_member(:ma, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MA", traits: {"smithy.api#enumValue" => "MA"}))
    GeoMatchConstraintValue.add_member(:mz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MZ", traits: {"smithy.api#enumValue" => "MZ"}))
    GeoMatchConstraintValue.add_member(:mm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MM", traits: {"smithy.api#enumValue" => "MM"}))
    GeoMatchConstraintValue.add_member(:na, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NA", traits: {"smithy.api#enumValue" => "NA"}))
    GeoMatchConstraintValue.add_member(:nr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NR", traits: {"smithy.api#enumValue" => "NR"}))
    GeoMatchConstraintValue.add_member(:np, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NP", traits: {"smithy.api#enumValue" => "NP"}))
    GeoMatchConstraintValue.add_member(:nl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NL", traits: {"smithy.api#enumValue" => "NL"}))
    GeoMatchConstraintValue.add_member(:nc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NC", traits: {"smithy.api#enumValue" => "NC"}))
    GeoMatchConstraintValue.add_member(:nz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NZ", traits: {"smithy.api#enumValue" => "NZ"}))
    GeoMatchConstraintValue.add_member(:ni, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NI", traits: {"smithy.api#enumValue" => "NI"}))
    GeoMatchConstraintValue.add_member(:ne, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NE", traits: {"smithy.api#enumValue" => "NE"}))
    GeoMatchConstraintValue.add_member(:ng, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NG", traits: {"smithy.api#enumValue" => "NG"}))
    GeoMatchConstraintValue.add_member(:nu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NU", traits: {"smithy.api#enumValue" => "NU"}))
    GeoMatchConstraintValue.add_member(:nf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NF", traits: {"smithy.api#enumValue" => "NF"}))
    GeoMatchConstraintValue.add_member(:mp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MP", traits: {"smithy.api#enumValue" => "MP"}))
    GeoMatchConstraintValue.add_member(:no, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO", traits: {"smithy.api#enumValue" => "NO"}))
    GeoMatchConstraintValue.add_member(:om, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OM", traits: {"smithy.api#enumValue" => "OM"}))
    GeoMatchConstraintValue.add_member(:pk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PK", traits: {"smithy.api#enumValue" => "PK"}))
    GeoMatchConstraintValue.add_member(:pw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PW", traits: {"smithy.api#enumValue" => "PW"}))
    GeoMatchConstraintValue.add_member(:ps, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PS", traits: {"smithy.api#enumValue" => "PS"}))
    GeoMatchConstraintValue.add_member(:pa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PA", traits: {"smithy.api#enumValue" => "PA"}))
    GeoMatchConstraintValue.add_member(:pg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PG", traits: {"smithy.api#enumValue" => "PG"}))
    GeoMatchConstraintValue.add_member(:py, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PY", traits: {"smithy.api#enumValue" => "PY"}))
    GeoMatchConstraintValue.add_member(:pe, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PE", traits: {"smithy.api#enumValue" => "PE"}))
    GeoMatchConstraintValue.add_member(:ph, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PH", traits: {"smithy.api#enumValue" => "PH"}))
    GeoMatchConstraintValue.add_member(:pn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PN", traits: {"smithy.api#enumValue" => "PN"}))
    GeoMatchConstraintValue.add_member(:pl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PL", traits: {"smithy.api#enumValue" => "PL"}))
    GeoMatchConstraintValue.add_member(:pt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PT", traits: {"smithy.api#enumValue" => "PT"}))
    GeoMatchConstraintValue.add_member(:pr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PR", traits: {"smithy.api#enumValue" => "PR"}))
    GeoMatchConstraintValue.add_member(:qa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QA", traits: {"smithy.api#enumValue" => "QA"}))
    GeoMatchConstraintValue.add_member(:re, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RE", traits: {"smithy.api#enumValue" => "RE"}))
    GeoMatchConstraintValue.add_member(:ro, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RO", traits: {"smithy.api#enumValue" => "RO"}))
    GeoMatchConstraintValue.add_member(:ru, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RU", traits: {"smithy.api#enumValue" => "RU"}))
    GeoMatchConstraintValue.add_member(:rw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RW", traits: {"smithy.api#enumValue" => "RW"}))
    GeoMatchConstraintValue.add_member(:bl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BL", traits: {"smithy.api#enumValue" => "BL"}))
    GeoMatchConstraintValue.add_member(:sh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SH", traits: {"smithy.api#enumValue" => "SH"}))
    GeoMatchConstraintValue.add_member(:kn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KN", traits: {"smithy.api#enumValue" => "KN"}))
    GeoMatchConstraintValue.add_member(:lc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LC", traits: {"smithy.api#enumValue" => "LC"}))
    GeoMatchConstraintValue.add_member(:mf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MF", traits: {"smithy.api#enumValue" => "MF"}))
    GeoMatchConstraintValue.add_member(:pm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PM", traits: {"smithy.api#enumValue" => "PM"}))
    GeoMatchConstraintValue.add_member(:vc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VC", traits: {"smithy.api#enumValue" => "VC"}))
    GeoMatchConstraintValue.add_member(:ws, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WS", traits: {"smithy.api#enumValue" => "WS"}))
    GeoMatchConstraintValue.add_member(:sm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SM", traits: {"smithy.api#enumValue" => "SM"}))
    GeoMatchConstraintValue.add_member(:st, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ST", traits: {"smithy.api#enumValue" => "ST"}))
    GeoMatchConstraintValue.add_member(:sa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SA", traits: {"smithy.api#enumValue" => "SA"}))
    GeoMatchConstraintValue.add_member(:sn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SN", traits: {"smithy.api#enumValue" => "SN"}))
    GeoMatchConstraintValue.add_member(:rs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RS", traits: {"smithy.api#enumValue" => "RS"}))
    GeoMatchConstraintValue.add_member(:sc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SC", traits: {"smithy.api#enumValue" => "SC"}))
    GeoMatchConstraintValue.add_member(:sl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SL", traits: {"smithy.api#enumValue" => "SL"}))
    GeoMatchConstraintValue.add_member(:sg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SG", traits: {"smithy.api#enumValue" => "SG"}))
    GeoMatchConstraintValue.add_member(:sx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SX", traits: {"smithy.api#enumValue" => "SX"}))
    GeoMatchConstraintValue.add_member(:sk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SK", traits: {"smithy.api#enumValue" => "SK"}))
    GeoMatchConstraintValue.add_member(:si, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SI", traits: {"smithy.api#enumValue" => "SI"}))
    GeoMatchConstraintValue.add_member(:sb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SB", traits: {"smithy.api#enumValue" => "SB"}))
    GeoMatchConstraintValue.add_member(:so, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SO", traits: {"smithy.api#enumValue" => "SO"}))
    GeoMatchConstraintValue.add_member(:za, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZA", traits: {"smithy.api#enumValue" => "ZA"}))
    GeoMatchConstraintValue.add_member(:gs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GS", traits: {"smithy.api#enumValue" => "GS"}))
    GeoMatchConstraintValue.add_member(:ss, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SS", traits: {"smithy.api#enumValue" => "SS"}))
    GeoMatchConstraintValue.add_member(:es, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ES", traits: {"smithy.api#enumValue" => "ES"}))
    GeoMatchConstraintValue.add_member(:lk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LK", traits: {"smithy.api#enumValue" => "LK"}))
    GeoMatchConstraintValue.add_member(:sd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SD", traits: {"smithy.api#enumValue" => "SD"}))
    GeoMatchConstraintValue.add_member(:sr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SR", traits: {"smithy.api#enumValue" => "SR"}))
    GeoMatchConstraintValue.add_member(:sj, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SJ", traits: {"smithy.api#enumValue" => "SJ"}))
    GeoMatchConstraintValue.add_member(:sz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SZ", traits: {"smithy.api#enumValue" => "SZ"}))
    GeoMatchConstraintValue.add_member(:se, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SE", traits: {"smithy.api#enumValue" => "SE"}))
    GeoMatchConstraintValue.add_member(:ch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CH", traits: {"smithy.api#enumValue" => "CH"}))
    GeoMatchConstraintValue.add_member(:sy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SY", traits: {"smithy.api#enumValue" => "SY"}))
    GeoMatchConstraintValue.add_member(:tw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TW", traits: {"smithy.api#enumValue" => "TW"}))
    GeoMatchConstraintValue.add_member(:tj, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TJ", traits: {"smithy.api#enumValue" => "TJ"}))
    GeoMatchConstraintValue.add_member(:tz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TZ", traits: {"smithy.api#enumValue" => "TZ"}))
    GeoMatchConstraintValue.add_member(:th, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TH", traits: {"smithy.api#enumValue" => "TH"}))
    GeoMatchConstraintValue.add_member(:tl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TL", traits: {"smithy.api#enumValue" => "TL"}))
    GeoMatchConstraintValue.add_member(:tg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TG", traits: {"smithy.api#enumValue" => "TG"}))
    GeoMatchConstraintValue.add_member(:tk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TK", traits: {"smithy.api#enumValue" => "TK"}))
    GeoMatchConstraintValue.add_member(:to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TO", traits: {"smithy.api#enumValue" => "TO"}))
    GeoMatchConstraintValue.add_member(:tt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TT", traits: {"smithy.api#enumValue" => "TT"}))
    GeoMatchConstraintValue.add_member(:tn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TN", traits: {"smithy.api#enumValue" => "TN"}))
    GeoMatchConstraintValue.add_member(:tr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TR", traits: {"smithy.api#enumValue" => "TR"}))
    GeoMatchConstraintValue.add_member(:tm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TM", traits: {"smithy.api#enumValue" => "TM"}))
    GeoMatchConstraintValue.add_member(:tc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TC", traits: {"smithy.api#enumValue" => "TC"}))
    GeoMatchConstraintValue.add_member(:tv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TV", traits: {"smithy.api#enumValue" => "TV"}))
    GeoMatchConstraintValue.add_member(:ug, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UG", traits: {"smithy.api#enumValue" => "UG"}))
    GeoMatchConstraintValue.add_member(:ua, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UA", traits: {"smithy.api#enumValue" => "UA"}))
    GeoMatchConstraintValue.add_member(:ae, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AE", traits: {"smithy.api#enumValue" => "AE"}))
    GeoMatchConstraintValue.add_member(:gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GB", traits: {"smithy.api#enumValue" => "GB"}))
    GeoMatchConstraintValue.add_member(:us, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US", traits: {"smithy.api#enumValue" => "US"}))
    GeoMatchConstraintValue.add_member(:um, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UM", traits: {"smithy.api#enumValue" => "UM"}))
    GeoMatchConstraintValue.add_member(:uy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UY", traits: {"smithy.api#enumValue" => "UY"}))
    GeoMatchConstraintValue.add_member(:uz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UZ", traits: {"smithy.api#enumValue" => "UZ"}))
    GeoMatchConstraintValue.add_member(:vu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VU", traits: {"smithy.api#enumValue" => "VU"}))
    GeoMatchConstraintValue.add_member(:ve, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VE", traits: {"smithy.api#enumValue" => "VE"}))
    GeoMatchConstraintValue.add_member(:vn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VN", traits: {"smithy.api#enumValue" => "VN"}))
    GeoMatchConstraintValue.add_member(:vg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VG", traits: {"smithy.api#enumValue" => "VG"}))
    GeoMatchConstraintValue.add_member(:vi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VI", traits: {"smithy.api#enumValue" => "VI"}))
    GeoMatchConstraintValue.add_member(:wf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WF", traits: {"smithy.api#enumValue" => "WF"}))
    GeoMatchConstraintValue.add_member(:eh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EH", traits: {"smithy.api#enumValue" => "EH"}))
    GeoMatchConstraintValue.add_member(:ye, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YE", traits: {"smithy.api#enumValue" => "YE"}))
    GeoMatchConstraintValue.add_member(:zm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZM", traits: {"smithy.api#enumValue" => "ZM"}))
    GeoMatchConstraintValue.add_member(:zw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZW", traits: {"smithy.api#enumValue" => "ZW"}))
    GeoMatchConstraints.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GeoMatchConstraint, name: "member"))
    GeoMatchSet.add_member(:geo_match_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "GeoMatchSetId", traits: {"smithy.api#required" => {}}))
    GeoMatchSet.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name"))
    GeoMatchSet.add_member(:geo_match_constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: GeoMatchConstraints, name: "GeoMatchConstraints", traits: {"smithy.api#required" => {}}))
    GeoMatchSet.type = Types::GeoMatchSet
    GeoMatchSetSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GeoMatchSetSummary, name: "member"))
    GeoMatchSetSummary.add_member(:geo_match_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "GeoMatchSetId", traits: {"smithy.api#required" => {}}))
    GeoMatchSetSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    GeoMatchSetSummary.type = Types::GeoMatchSetSummary
    GeoMatchSetUpdate.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeAction, name: "Action", traits: {"smithy.api#required" => {}}))
    GeoMatchSetUpdate.add_member(:geo_match_constraint, ::Smithy::Schema::Shapes::MemberShape.new(target: GeoMatchConstraint, name: "GeoMatchConstraint", traits: {"smithy.api#required" => {}}))
    GeoMatchSetUpdate.type = Types::GeoMatchSetUpdate
    GeoMatchSetUpdates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GeoMatchSetUpdate, name: "member"))
    GetByteMatchSetRequest.add_member(:byte_match_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ByteMatchSetId", traits: {"smithy.api#required" => {}}))
    GetByteMatchSetRequest.type = Types::GetByteMatchSetRequest
    GetByteMatchSetResponse.add_member(:byte_match_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ByteMatchSet, name: "ByteMatchSet"))
    GetByteMatchSetResponse.type = Types::GetByteMatchSetResponse
    GetChangeTokenRequest.type = Types::GetChangeTokenRequest
    GetChangeTokenResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    GetChangeTokenResponse.type = Types::GetChangeTokenResponse
    GetChangeTokenStatusRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    GetChangeTokenStatusRequest.type = Types::GetChangeTokenStatusRequest
    GetChangeTokenStatusResponse.add_member(:change_token_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeTokenStatus, name: "ChangeTokenStatus"))
    GetChangeTokenStatusResponse.type = Types::GetChangeTokenStatusResponse
    GetGeoMatchSetRequest.add_member(:geo_match_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "GeoMatchSetId", traits: {"smithy.api#required" => {}}))
    GetGeoMatchSetRequest.type = Types::GetGeoMatchSetRequest
    GetGeoMatchSetResponse.add_member(:geo_match_set, ::Smithy::Schema::Shapes::MemberShape.new(target: GeoMatchSet, name: "GeoMatchSet"))
    GetGeoMatchSetResponse.type = Types::GetGeoMatchSetResponse
    GetIPSetRequest.add_member(:ip_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "IPSetId", traits: {"smithy.api#required" => {}}))
    GetIPSetRequest.type = Types::GetIPSetRequest
    GetIPSetResponse.add_member(:ip_set, ::Smithy::Schema::Shapes::MemberShape.new(target: IPSet, name: "IPSet"))
    GetIPSetResponse.type = Types::GetIPSetResponse
    GetLoggingConfigurationRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    GetLoggingConfigurationRequest.type = Types::GetLoggingConfigurationRequest
    GetLoggingConfigurationResponse.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfiguration, name: "LoggingConfiguration"))
    GetLoggingConfigurationResponse.type = Types::GetLoggingConfigurationResponse
    GetPermissionPolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    GetPermissionPolicyRequest.type = Types::GetPermissionPolicyRequest
    GetPermissionPolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyString, name: "Policy"))
    GetPermissionPolicyResponse.type = Types::GetPermissionPolicyResponse
    GetRateBasedRuleManagedKeysRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RuleId", traits: {"smithy.api#required" => {}}))
    GetRateBasedRuleManagedKeysRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    GetRateBasedRuleManagedKeysRequest.type = Types::GetRateBasedRuleManagedKeysRequest
    GetRateBasedRuleManagedKeysResponse.add_member(:managed_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedKeys, name: "ManagedKeys"))
    GetRateBasedRuleManagedKeysResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    GetRateBasedRuleManagedKeysResponse.type = Types::GetRateBasedRuleManagedKeysResponse
    GetRateBasedRuleRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RuleId", traits: {"smithy.api#required" => {}}))
    GetRateBasedRuleRequest.type = Types::GetRateBasedRuleRequest
    GetRateBasedRuleResponse.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: RateBasedRule, name: "Rule"))
    GetRateBasedRuleResponse.type = Types::GetRateBasedRuleResponse
    GetRegexMatchSetRequest.add_member(:regex_match_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RegexMatchSetId", traits: {"smithy.api#required" => {}}))
    GetRegexMatchSetRequest.type = Types::GetRegexMatchSetRequest
    GetRegexMatchSetResponse.add_member(:regex_match_set, ::Smithy::Schema::Shapes::MemberShape.new(target: RegexMatchSet, name: "RegexMatchSet"))
    GetRegexMatchSetResponse.type = Types::GetRegexMatchSetResponse
    GetRegexPatternSetRequest.add_member(:regex_pattern_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RegexPatternSetId", traits: {"smithy.api#required" => {}}))
    GetRegexPatternSetRequest.type = Types::GetRegexPatternSetRequest
    GetRegexPatternSetResponse.add_member(:regex_pattern_set, ::Smithy::Schema::Shapes::MemberShape.new(target: RegexPatternSet, name: "RegexPatternSet"))
    GetRegexPatternSetResponse.type = Types::GetRegexPatternSetResponse
    GetRuleGroupRequest.add_member(:rule_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RuleGroupId", traits: {"smithy.api#required" => {}}))
    GetRuleGroupRequest.type = Types::GetRuleGroupRequest
    GetRuleGroupResponse.add_member(:rule_group, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroup, name: "RuleGroup"))
    GetRuleGroupResponse.type = Types::GetRuleGroupResponse
    GetRuleRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RuleId", traits: {"smithy.api#required" => {}}))
    GetRuleRequest.type = Types::GetRuleRequest
    GetRuleResponse.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: Rule, name: "Rule"))
    GetRuleResponse.type = Types::GetRuleResponse
    GetSampledRequestsRequest.add_member(:web_acl_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "WebAclId", traits: {"smithy.api#required" => {}}))
    GetSampledRequestsRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RuleId", traits: {"smithy.api#required" => {}}))
    GetSampledRequestsRequest.add_member(:time_window, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeWindow, name: "TimeWindow", traits: {"smithy.api#required" => {}}))
    GetSampledRequestsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: GetSampledRequestsMaxItems, name: "MaxItems", traits: {"smithy.api#required" => {}}))
    GetSampledRequestsRequest.type = Types::GetSampledRequestsRequest
    GetSampledRequestsResponse.add_member(:sampled_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: SampledHTTPRequests, name: "SampledRequests"))
    GetSampledRequestsResponse.add_member(:population_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PopulationSize, name: "PopulationSize", traits: {"smithy.api#default" => 0}))
    GetSampledRequestsResponse.add_member(:time_window, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeWindow, name: "TimeWindow"))
    GetSampledRequestsResponse.type = Types::GetSampledRequestsResponse
    GetSizeConstraintSetRequest.add_member(:size_constraint_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "SizeConstraintSetId", traits: {"smithy.api#required" => {}}))
    GetSizeConstraintSetRequest.type = Types::GetSizeConstraintSetRequest
    GetSizeConstraintSetResponse.add_member(:size_constraint_set, ::Smithy::Schema::Shapes::MemberShape.new(target: SizeConstraintSet, name: "SizeConstraintSet"))
    GetSizeConstraintSetResponse.type = Types::GetSizeConstraintSetResponse
    GetSqlInjectionMatchSetRequest.add_member(:sql_injection_match_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "SqlInjectionMatchSetId", traits: {"smithy.api#required" => {}}))
    GetSqlInjectionMatchSetRequest.type = Types::GetSqlInjectionMatchSetRequest
    GetSqlInjectionMatchSetResponse.add_member(:sql_injection_match_set, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlInjectionMatchSet, name: "SqlInjectionMatchSet"))
    GetSqlInjectionMatchSetResponse.type = Types::GetSqlInjectionMatchSetResponse
    GetWebACLForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    GetWebACLForResourceRequest.type = Types::GetWebACLForResourceRequest
    GetWebACLForResourceResponse.add_member(:web_acl_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: WebACLSummary, name: "WebACLSummary"))
    GetWebACLForResourceResponse.type = Types::GetWebACLForResourceResponse
    GetWebACLRequest.add_member(:web_acl_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "WebACLId", traits: {"smithy.api#required" => {}}))
    GetWebACLRequest.type = Types::GetWebACLRequest
    GetWebACLResponse.add_member(:web_acl, ::Smithy::Schema::Shapes::MemberShape.new(target: WebACL, name: "WebACL"))
    GetWebACLResponse.type = Types::GetWebACLResponse
    GetXssMatchSetRequest.add_member(:xss_match_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "XssMatchSetId", traits: {"smithy.api#required" => {}}))
    GetXssMatchSetRequest.type = Types::GetXssMatchSetRequest
    GetXssMatchSetResponse.add_member(:xss_match_set, ::Smithy::Schema::Shapes::MemberShape.new(target: XssMatchSet, name: "XssMatchSet"))
    GetXssMatchSetResponse.type = Types::GetXssMatchSetResponse
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
    IPSet.add_member(:ip_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "IPSetId", traits: {"smithy.api#required" => {}}))
    IPSet.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name"))
    IPSet.add_member(:ip_set_descriptors, ::Smithy::Schema::Shapes::MemberShape.new(target: IPSetDescriptors, name: "IPSetDescriptors", traits: {"smithy.api#required" => {}}))
    IPSet.type = Types::IPSet
    IPSetDescriptor.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: IPSetDescriptorType, name: "Type", traits: {"smithy.api#required" => {}}))
    IPSetDescriptor.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: IPSetDescriptorValue, name: "Value", traits: {"smithy.api#required" => {}}))
    IPSetDescriptor.type = Types::IPSetDescriptor
    IPSetDescriptorType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4", traits: {"smithy.api#enumValue" => "IPV4"}))
    IPSetDescriptorType.add_member(:ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV6", traits: {"smithy.api#enumValue" => "IPV6"}))
    IPSetDescriptors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IPSetDescriptor, name: "member"))
    IPSetSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IPSetSummary, name: "member"))
    IPSetSummary.add_member(:ip_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "IPSetId", traits: {"smithy.api#required" => {}}))
    IPSetSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    IPSetSummary.type = Types::IPSetSummary
    IPSetUpdate.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeAction, name: "Action", traits: {"smithy.api#required" => {}}))
    IPSetUpdate.add_member(:ip_set_descriptor, ::Smithy::Schema::Shapes::MemberShape.new(target: IPSetDescriptor, name: "IPSetDescriptor", traits: {"smithy.api#required" => {}}))
    IPSetUpdate.type = Types::IPSetUpdate
    IPSetUpdates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IPSetUpdate, name: "member"))
    ListActivatedRulesInRuleGroupRequest.add_member(:rule_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RuleGroupId"))
    ListActivatedRulesInRuleGroupRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListActivatedRulesInRuleGroupRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    ListActivatedRulesInRuleGroupRequest.type = Types::ListActivatedRulesInRuleGroupRequest
    ListActivatedRulesInRuleGroupResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListActivatedRulesInRuleGroupResponse.add_member(:activated_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivatedRules, name: "ActivatedRules"))
    ListActivatedRulesInRuleGroupResponse.type = Types::ListActivatedRulesInRuleGroupResponse
    ListByteMatchSetsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListByteMatchSetsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    ListByteMatchSetsRequest.type = Types::ListByteMatchSetsRequest
    ListByteMatchSetsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListByteMatchSetsResponse.add_member(:byte_match_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: ByteMatchSetSummaries, name: "ByteMatchSets"))
    ListByteMatchSetsResponse.type = Types::ListByteMatchSetsResponse
    ListGeoMatchSetsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListGeoMatchSetsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    ListGeoMatchSetsRequest.type = Types::ListGeoMatchSetsRequest
    ListGeoMatchSetsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListGeoMatchSetsResponse.add_member(:geo_match_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: GeoMatchSetSummaries, name: "GeoMatchSets"))
    ListGeoMatchSetsResponse.type = Types::ListGeoMatchSetsResponse
    ListIPSetsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListIPSetsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    ListIPSetsRequest.type = Types::ListIPSetsRequest
    ListIPSetsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListIPSetsResponse.add_member(:ip_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: IPSetSummaries, name: "IPSets"))
    ListIPSetsResponse.type = Types::ListIPSetsResponse
    ListLoggingConfigurationsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListLoggingConfigurationsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    ListLoggingConfigurationsRequest.type = Types::ListLoggingConfigurationsRequest
    ListLoggingConfigurationsResponse.add_member(:logging_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurations, name: "LoggingConfigurations"))
    ListLoggingConfigurationsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListLoggingConfigurationsResponse.type = Types::ListLoggingConfigurationsResponse
    ListRateBasedRulesRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListRateBasedRulesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    ListRateBasedRulesRequest.type = Types::ListRateBasedRulesRequest
    ListRateBasedRulesResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListRateBasedRulesResponse.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSummaries, name: "Rules"))
    ListRateBasedRulesResponse.type = Types::ListRateBasedRulesResponse
    ListRegexMatchSetsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListRegexMatchSetsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    ListRegexMatchSetsRequest.type = Types::ListRegexMatchSetsRequest
    ListRegexMatchSetsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListRegexMatchSetsResponse.add_member(:regex_match_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: RegexMatchSetSummaries, name: "RegexMatchSets"))
    ListRegexMatchSetsResponse.type = Types::ListRegexMatchSetsResponse
    ListRegexPatternSetsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListRegexPatternSetsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    ListRegexPatternSetsRequest.type = Types::ListRegexPatternSetsRequest
    ListRegexPatternSetsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListRegexPatternSetsResponse.add_member(:regex_pattern_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: RegexPatternSetSummaries, name: "RegexPatternSets"))
    ListRegexPatternSetsResponse.type = Types::ListRegexPatternSetsResponse
    ListResourcesForWebACLRequest.add_member(:web_acl_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "WebACLId", traits: {"smithy.api#required" => {}}))
    ListResourcesForWebACLRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ListResourcesForWebACLRequest.type = Types::ListResourcesForWebACLRequest
    ListResourcesForWebACLResponse.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArns, name: "ResourceArns"))
    ListResourcesForWebACLResponse.type = Types::ListResourcesForWebACLResponse
    ListRuleGroupsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListRuleGroupsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    ListRuleGroupsRequest.type = Types::ListRuleGroupsRequest
    ListRuleGroupsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListRuleGroupsResponse.add_member(:rule_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroupSummaries, name: "RuleGroups"))
    ListRuleGroupsResponse.type = Types::ListRuleGroupsResponse
    ListRulesRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListRulesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    ListRulesRequest.type = Types::ListRulesRequest
    ListRulesResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListRulesResponse.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSummaries, name: "Rules"))
    ListRulesResponse.type = Types::ListRulesResponse
    ListSizeConstraintSetsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListSizeConstraintSetsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    ListSizeConstraintSetsRequest.type = Types::ListSizeConstraintSetsRequest
    ListSizeConstraintSetsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListSizeConstraintSetsResponse.add_member(:size_constraint_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: SizeConstraintSetSummaries, name: "SizeConstraintSets"))
    ListSizeConstraintSetsResponse.type = Types::ListSizeConstraintSetsResponse
    ListSqlInjectionMatchSetsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListSqlInjectionMatchSetsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    ListSqlInjectionMatchSetsRequest.type = Types::ListSqlInjectionMatchSetsRequest
    ListSqlInjectionMatchSetsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListSqlInjectionMatchSetsResponse.add_member(:sql_injection_match_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlInjectionMatchSetSummaries, name: "SqlInjectionMatchSets"))
    ListSqlInjectionMatchSetsResponse.type = Types::ListSqlInjectionMatchSetsResponse
    ListSubscribedRuleGroupsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListSubscribedRuleGroupsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    ListSubscribedRuleGroupsRequest.type = Types::ListSubscribedRuleGroupsRequest
    ListSubscribedRuleGroupsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListSubscribedRuleGroupsResponse.add_member(:rule_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscribedRuleGroupSummaries, name: "RuleGroups"))
    ListSubscribedRuleGroupsResponse.type = Types::ListSubscribedRuleGroupsResponse
    ListTagsForResourceRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListTagsForResourceRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListTagsForResourceResponse.add_member(:tag_info_for_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: TagInfoForResource, name: "TagInfoForResource"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListWebACLsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListWebACLsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    ListWebACLsRequest.type = Types::ListWebACLsRequest
    ListWebACLsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListWebACLsResponse.add_member(:web_ac_ls, ::Smithy::Schema::Shapes::MemberShape.new(target: WebACLSummaries, name: "WebACLs"))
    ListWebACLsResponse.type = Types::ListWebACLsResponse
    ListXssMatchSetsRequest.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListXssMatchSetsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    ListXssMatchSetsRequest.type = Types::ListXssMatchSetsRequest
    ListXssMatchSetsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListXssMatchSetsResponse.add_member(:xss_match_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: XssMatchSetSummaries, name: "XssMatchSets"))
    ListXssMatchSetsResponse.type = Types::ListXssMatchSetsResponse
    LogDestinationConfigs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "member"))
    LoggingConfiguration.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    LoggingConfiguration.add_member(:log_destination_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDestinationConfigs, name: "LogDestinationConfigs", traits: {"smithy.api#required" => {}}))
    LoggingConfiguration.add_member(:redacted_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: RedactedFields, name: "RedactedFields"))
    LoggingConfiguration.type = Types::LoggingConfiguration
    LoggingConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfiguration, name: "member"))
    ManagedKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedKey, name: "member"))
    MatchFieldType.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "URI", traits: {"smithy.api#enumValue" => "URI"}))
    MatchFieldType.add_member(:query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUERY_STRING", traits: {"smithy.api#enumValue" => "QUERY_STRING"}))
    MatchFieldType.add_member(:header, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEADER", traits: {"smithy.api#enumValue" => "HEADER"}))
    MatchFieldType.add_member(:method, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "METHOD", traits: {"smithy.api#enumValue" => "METHOD"}))
    MatchFieldType.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BODY", traits: {"smithy.api#enumValue" => "BODY"}))
    MatchFieldType.add_member(:single_query_arg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_QUERY_ARG", traits: {"smithy.api#enumValue" => "SINGLE_QUERY_ARG"}))
    MatchFieldType.add_member(:all_query_args, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL_QUERY_ARGS", traits: {"smithy.api#enumValue" => "ALL_QUERY_ARGS"}))
    MigrationErrorType.add_member(:entity_not_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENTITY_NOT_SUPPORTED", traits: {"smithy.api#enumValue" => "ENTITY_NOT_SUPPORTED"}))
    MigrationErrorType.add_member(:entity_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENTITY_NOT_FOUND", traits: {"smithy.api#enumValue" => "ENTITY_NOT_FOUND"}))
    MigrationErrorType.add_member(:s3_bucket_no_permission, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_BUCKET_NO_PERMISSION", traits: {"smithy.api#enumValue" => "S3_BUCKET_NO_PERMISSION"}))
    MigrationErrorType.add_member(:s3_bucket_not_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_BUCKET_NOT_ACCESSIBLE", traits: {"smithy.api#enumValue" => "S3_BUCKET_NOT_ACCESSIBLE"}))
    MigrationErrorType.add_member(:s3_bucket_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_BUCKET_NOT_FOUND", traits: {"smithy.api#enumValue" => "S3_BUCKET_NOT_FOUND"}))
    MigrationErrorType.add_member(:s3_bucket_invalid_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_BUCKET_INVALID_REGION", traits: {"smithy.api#enumValue" => "S3_BUCKET_INVALID_REGION"}))
    MigrationErrorType.add_member(:s3_internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "S3_INTERNAL_ERROR"}))
    ParameterExceptionField.add_member(:change_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHANGE_ACTION", traits: {"smithy.api#enumValue" => "CHANGE_ACTION"}))
    ParameterExceptionField.add_member(:waf_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WAF_ACTION", traits: {"smithy.api#enumValue" => "WAF_ACTION"}))
    ParameterExceptionField.add_member(:waf_override_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WAF_OVERRIDE_ACTION", traits: {"smithy.api#enumValue" => "WAF_OVERRIDE_ACTION"}))
    ParameterExceptionField.add_member(:predicate_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREDICATE_TYPE", traits: {"smithy.api#enumValue" => "PREDICATE_TYPE"}))
    ParameterExceptionField.add_member(:ipset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPSET_TYPE", traits: {"smithy.api#enumValue" => "IPSET_TYPE"}))
    ParameterExceptionField.add_member(:byte_match_field_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BYTE_MATCH_FIELD_TYPE", traits: {"smithy.api#enumValue" => "BYTE_MATCH_FIELD_TYPE"}))
    ParameterExceptionField.add_member(:sql_injection_match_field_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SQL_INJECTION_MATCH_FIELD_TYPE", traits: {"smithy.api#enumValue" => "SQL_INJECTION_MATCH_FIELD_TYPE"}))
    ParameterExceptionField.add_member(:byte_match_text_transformation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BYTE_MATCH_TEXT_TRANSFORMATION", traits: {"smithy.api#enumValue" => "BYTE_MATCH_TEXT_TRANSFORMATION"}))
    ParameterExceptionField.add_member(:byte_match_positional_constraint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BYTE_MATCH_POSITIONAL_CONSTRAINT", traits: {"smithy.api#enumValue" => "BYTE_MATCH_POSITIONAL_CONSTRAINT"}))
    ParameterExceptionField.add_member(:size_constraint_comparison_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIZE_CONSTRAINT_COMPARISON_OPERATOR", traits: {"smithy.api#enumValue" => "SIZE_CONSTRAINT_COMPARISON_OPERATOR"}))
    ParameterExceptionField.add_member(:geo_match_location_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GEO_MATCH_LOCATION_TYPE", traits: {"smithy.api#enumValue" => "GEO_MATCH_LOCATION_TYPE"}))
    ParameterExceptionField.add_member(:geo_match_location_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GEO_MATCH_LOCATION_VALUE", traits: {"smithy.api#enumValue" => "GEO_MATCH_LOCATION_VALUE"}))
    ParameterExceptionField.add_member(:rate_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RATE_KEY", traits: {"smithy.api#enumValue" => "RATE_KEY"}))
    ParameterExceptionField.add_member(:rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RULE_TYPE", traits: {"smithy.api#enumValue" => "RULE_TYPE"}))
    ParameterExceptionField.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEXT_MARKER", traits: {"smithy.api#enumValue" => "NEXT_MARKER"}))
    ParameterExceptionField.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_ARN", traits: {"smithy.api#enumValue" => "RESOURCE_ARN"}))
    ParameterExceptionField.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAGS", traits: {"smithy.api#enumValue" => "TAGS"}))
    ParameterExceptionField.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAG_KEYS", traits: {"smithy.api#enumValue" => "TAG_KEYS"}))
    ParameterExceptionReason.add_member(:invalid_option, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_OPTION", traits: {"smithy.api#enumValue" => "INVALID_OPTION"}))
    ParameterExceptionReason.add_member(:illegal_combination, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_COMBINATION", traits: {"smithy.api#enumValue" => "ILLEGAL_COMBINATION"}))
    ParameterExceptionReason.add_member(:illegal_argument, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_ARGUMENT", traits: {"smithy.api#enumValue" => "ILLEGAL_ARGUMENT"}))
    ParameterExceptionReason.add_member(:invalid_tag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_TAG_KEY", traits: {"smithy.api#enumValue" => "INVALID_TAG_KEY"}))
    PositionalConstraint.add_member(:exactly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXACTLY", traits: {"smithy.api#enumValue" => "EXACTLY"}))
    PositionalConstraint.add_member(:starts_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTS_WITH", traits: {"smithy.api#enumValue" => "STARTS_WITH"}))
    PositionalConstraint.add_member(:ends_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENDS_WITH", traits: {"smithy.api#enumValue" => "ENDS_WITH"}))
    PositionalConstraint.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    PositionalConstraint.add_member(:contains_word, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS_WORD", traits: {"smithy.api#enumValue" => "CONTAINS_WORD"}))
    Predicate.add_member(:negated, ::Smithy::Schema::Shapes::MemberShape.new(target: Negated, name: "Negated", traits: {"smithy.api#required" => {}}))
    Predicate.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PredicateType, name: "Type", traits: {"smithy.api#required" => {}}))
    Predicate.add_member(:data_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "DataId", traits: {"smithy.api#required" => {}}))
    Predicate.type = Types::Predicate
    PredicateType.add_member(:ip_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IP_MATCH", traits: {"smithy.api#enumValue" => "IPMatch"}))
    PredicateType.add_member(:byte_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BYTE_MATCH", traits: {"smithy.api#enumValue" => "ByteMatch"}))
    PredicateType.add_member(:sql_injection_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SQL_INJECTION_MATCH", traits: {"smithy.api#enumValue" => "SqlInjectionMatch"}))
    PredicateType.add_member(:geo_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GEO_MATCH", traits: {"smithy.api#enumValue" => "GeoMatch"}))
    PredicateType.add_member(:size_constraint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIZE_CONSTRAINT", traits: {"smithy.api#enumValue" => "SizeConstraint"}))
    PredicateType.add_member(:xss_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "XSS_MATCH", traits: {"smithy.api#enumValue" => "XssMatch"}))
    PredicateType.add_member(:regex_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGEX_MATCH", traits: {"smithy.api#enumValue" => "RegexMatch"}))
    Predicates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Predicate, name: "member"))
    PutLoggingConfigurationRequest.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfiguration, name: "LoggingConfiguration", traits: {"smithy.api#required" => {}}))
    PutLoggingConfigurationRequest.type = Types::PutLoggingConfigurationRequest
    PutLoggingConfigurationResponse.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfiguration, name: "LoggingConfiguration"))
    PutLoggingConfigurationResponse.type = Types::PutLoggingConfigurationResponse
    PutPermissionPolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    PutPermissionPolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyString, name: "Policy", traits: {"smithy.api#required" => {}}))
    PutPermissionPolicyRequest.type = Types::PutPermissionPolicyRequest
    PutPermissionPolicyResponse.type = Types::PutPermissionPolicyResponse
    RateBasedRule.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RuleId", traits: {"smithy.api#required" => {}}))
    RateBasedRule.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name"))
    RateBasedRule.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName"))
    RateBasedRule.add_member(:match_predicates, ::Smithy::Schema::Shapes::MemberShape.new(target: Predicates, name: "MatchPredicates", traits: {"smithy.api#required" => {}}))
    RateBasedRule.add_member(:rate_key, ::Smithy::Schema::Shapes::MemberShape.new(target: RateKey, name: "RateKey", traits: {"smithy.api#required" => {}}))
    RateBasedRule.add_member(:rate_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: RateLimit, name: "RateLimit", traits: {"smithy.api#required" => {}}))
    RateBasedRule.type = Types::RateBasedRule
    RateKey.add_member(:ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IP", traits: {"smithy.api#enumValue" => "IP"}))
    RedactedFields.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldToMatch, name: "member"))
    RegexMatchSet.add_member(:regex_match_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RegexMatchSetId"))
    RegexMatchSet.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name"))
    RegexMatchSet.add_member(:regex_match_tuples, ::Smithy::Schema::Shapes::MemberShape.new(target: RegexMatchTuples, name: "RegexMatchTuples"))
    RegexMatchSet.type = Types::RegexMatchSet
    RegexMatchSetSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegexMatchSetSummary, name: "member"))
    RegexMatchSetSummary.add_member(:regex_match_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RegexMatchSetId", traits: {"smithy.api#required" => {}}))
    RegexMatchSetSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    RegexMatchSetSummary.type = Types::RegexMatchSetSummary
    RegexMatchSetUpdate.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeAction, name: "Action", traits: {"smithy.api#required" => {}}))
    RegexMatchSetUpdate.add_member(:regex_match_tuple, ::Smithy::Schema::Shapes::MemberShape.new(target: RegexMatchTuple, name: "RegexMatchTuple", traits: {"smithy.api#required" => {}}))
    RegexMatchSetUpdate.type = Types::RegexMatchSetUpdate
    RegexMatchSetUpdates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegexMatchSetUpdate, name: "member"))
    RegexMatchTuple.add_member(:field_to_match, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldToMatch, name: "FieldToMatch", traits: {"smithy.api#required" => {}}))
    RegexMatchTuple.add_member(:text_transformation, ::Smithy::Schema::Shapes::MemberShape.new(target: TextTransformation, name: "TextTransformation", traits: {"smithy.api#required" => {}}))
    RegexMatchTuple.add_member(:regex_pattern_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RegexPatternSetId", traits: {"smithy.api#required" => {}}))
    RegexMatchTuple.type = Types::RegexMatchTuple
    RegexMatchTuples.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegexMatchTuple, name: "member"))
    RegexPatternSet.add_member(:regex_pattern_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RegexPatternSetId", traits: {"smithy.api#required" => {}}))
    RegexPatternSet.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name"))
    RegexPatternSet.add_member(:regex_pattern_strings, ::Smithy::Schema::Shapes::MemberShape.new(target: RegexPatternStrings, name: "RegexPatternStrings", traits: {"smithy.api#required" => {}}))
    RegexPatternSet.type = Types::RegexPatternSet
    RegexPatternSetSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegexPatternSetSummary, name: "member"))
    RegexPatternSetSummary.add_member(:regex_pattern_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RegexPatternSetId", traits: {"smithy.api#required" => {}}))
    RegexPatternSetSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    RegexPatternSetSummary.type = Types::RegexPatternSetSummary
    RegexPatternSetUpdate.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeAction, name: "Action", traits: {"smithy.api#required" => {}}))
    RegexPatternSetUpdate.add_member(:regex_pattern_string, ::Smithy::Schema::Shapes::MemberShape.new(target: RegexPatternString, name: "RegexPatternString", traits: {"smithy.api#required" => {}}))
    RegexPatternSetUpdate.type = Types::RegexPatternSetUpdate
    RegexPatternSetUpdates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegexPatternSetUpdate, name: "member"))
    RegexPatternStrings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegexPatternString, name: "member"))
    ResourceArns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "member"))
    ResourceType.add_member(:application_load_balancer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPLICATION_LOAD_BALANCER", traits: {"smithy.api#enumValue" => "APPLICATION_LOAD_BALANCER"}))
    ResourceType.add_member(:api_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "API_GATEWAY", traits: {"smithy.api#enumValue" => "API_GATEWAY"}))
    Rule.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RuleId", traits: {"smithy.api#required" => {}}))
    Rule.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name"))
    Rule.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName"))
    Rule.add_member(:predicates, ::Smithy::Schema::Shapes::MemberShape.new(target: Predicates, name: "Predicates", traits: {"smithy.api#required" => {}}))
    Rule.type = Types::Rule
    RuleGroup.add_member(:rule_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RuleGroupId", traits: {"smithy.api#required" => {}}))
    RuleGroup.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name"))
    RuleGroup.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName"))
    RuleGroup.type = Types::RuleGroup
    RuleGroupSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroupSummary, name: "member"))
    RuleGroupSummary.add_member(:rule_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RuleGroupId", traits: {"smithy.api#required" => {}}))
    RuleGroupSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    RuleGroupSummary.type = Types::RuleGroupSummary
    RuleGroupUpdate.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeAction, name: "Action", traits: {"smithy.api#required" => {}}))
    RuleGroupUpdate.add_member(:activated_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivatedRule, name: "ActivatedRule", traits: {"smithy.api#required" => {}}))
    RuleGroupUpdate.type = Types::RuleGroupUpdate
    RuleGroupUpdates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroupUpdate, name: "member"))
    RuleSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSummary, name: "member"))
    RuleSummary.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RuleId", traits: {"smithy.api#required" => {}}))
    RuleSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    RuleSummary.type = Types::RuleSummary
    RuleUpdate.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeAction, name: "Action", traits: {"smithy.api#required" => {}}))
    RuleUpdate.add_member(:predicate, ::Smithy::Schema::Shapes::MemberShape.new(target: Predicate, name: "Predicate", traits: {"smithy.api#required" => {}}))
    RuleUpdate.type = Types::RuleUpdate
    RuleUpdates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleUpdate, name: "member"))
    SampledHTTPRequest.add_member(:request, ::Smithy::Schema::Shapes::MemberShape.new(target: HTTPRequest, name: "Request", traits: {"smithy.api#required" => {}}))
    SampledHTTPRequest.add_member(:weight, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleWeight, name: "Weight", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SampledHTTPRequest.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp"))
    SampledHTTPRequest.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "Action"))
    SampledHTTPRequest.add_member(:rule_within_rule_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RuleWithinRuleGroup"))
    SampledHTTPRequest.type = Types::SampledHTTPRequest
    SampledHTTPRequests.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SampledHTTPRequest, name: "member"))
    SizeConstraint.add_member(:field_to_match, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldToMatch, name: "FieldToMatch", traits: {"smithy.api#required" => {}}))
    SizeConstraint.add_member(:text_transformation, ::Smithy::Schema::Shapes::MemberShape.new(target: TextTransformation, name: "TextTransformation", traits: {"smithy.api#required" => {}}))
    SizeConstraint.add_member(:comparison_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparisonOperator, name: "ComparisonOperator", traits: {"smithy.api#required" => {}}))
    SizeConstraint.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: Size, name: "Size", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SizeConstraint.type = Types::SizeConstraint
    SizeConstraintSet.add_member(:size_constraint_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "SizeConstraintSetId", traits: {"smithy.api#required" => {}}))
    SizeConstraintSet.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name"))
    SizeConstraintSet.add_member(:size_constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: SizeConstraints, name: "SizeConstraints", traits: {"smithy.api#required" => {}}))
    SizeConstraintSet.type = Types::SizeConstraintSet
    SizeConstraintSetSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SizeConstraintSetSummary, name: "member"))
    SizeConstraintSetSummary.add_member(:size_constraint_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "SizeConstraintSetId", traits: {"smithy.api#required" => {}}))
    SizeConstraintSetSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    SizeConstraintSetSummary.type = Types::SizeConstraintSetSummary
    SizeConstraintSetUpdate.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeAction, name: "Action", traits: {"smithy.api#required" => {}}))
    SizeConstraintSetUpdate.add_member(:size_constraint, ::Smithy::Schema::Shapes::MemberShape.new(target: SizeConstraint, name: "SizeConstraint", traits: {"smithy.api#required" => {}}))
    SizeConstraintSetUpdate.type = Types::SizeConstraintSetUpdate
    SizeConstraintSetUpdates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SizeConstraintSetUpdate, name: "member"))
    SizeConstraints.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SizeConstraint, name: "member"))
    SqlInjectionMatchSet.add_member(:sql_injection_match_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "SqlInjectionMatchSetId", traits: {"smithy.api#required" => {}}))
    SqlInjectionMatchSet.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name"))
    SqlInjectionMatchSet.add_member(:sql_injection_match_tuples, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlInjectionMatchTuples, name: "SqlInjectionMatchTuples", traits: {"smithy.api#required" => {}}))
    SqlInjectionMatchSet.type = Types::SqlInjectionMatchSet
    SqlInjectionMatchSetSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlInjectionMatchSetSummary, name: "member"))
    SqlInjectionMatchSetSummary.add_member(:sql_injection_match_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "SqlInjectionMatchSetId", traits: {"smithy.api#required" => {}}))
    SqlInjectionMatchSetSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    SqlInjectionMatchSetSummary.type = Types::SqlInjectionMatchSetSummary
    SqlInjectionMatchSetUpdate.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeAction, name: "Action", traits: {"smithy.api#required" => {}}))
    SqlInjectionMatchSetUpdate.add_member(:sql_injection_match_tuple, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlInjectionMatchTuple, name: "SqlInjectionMatchTuple", traits: {"smithy.api#required" => {}}))
    SqlInjectionMatchSetUpdate.type = Types::SqlInjectionMatchSetUpdate
    SqlInjectionMatchSetUpdates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlInjectionMatchSetUpdate, name: "member"))
    SqlInjectionMatchTuple.add_member(:field_to_match, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldToMatch, name: "FieldToMatch", traits: {"smithy.api#required" => {}}))
    SqlInjectionMatchTuple.add_member(:text_transformation, ::Smithy::Schema::Shapes::MemberShape.new(target: TextTransformation, name: "TextTransformation", traits: {"smithy.api#required" => {}}))
    SqlInjectionMatchTuple.type = Types::SqlInjectionMatchTuple
    SqlInjectionMatchTuples.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlInjectionMatchTuple, name: "member"))
    SubscribedRuleGroupSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscribedRuleGroupSummary, name: "member"))
    SubscribedRuleGroupSummary.add_member(:rule_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RuleGroupId", traits: {"smithy.api#required" => {}}))
    SubscribedRuleGroupSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    SubscribedRuleGroupSummary.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName", traits: {"smithy.api#required" => {}}))
    SubscribedRuleGroupSummary.type = Types::SubscribedRuleGroupSummary
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
    TextTransformation.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    TextTransformation.add_member(:compress_white_space, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPRESS_WHITE_SPACE", traits: {"smithy.api#enumValue" => "COMPRESS_WHITE_SPACE"}))
    TextTransformation.add_member(:html_entity_decode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTML_ENTITY_DECODE", traits: {"smithy.api#enumValue" => "HTML_ENTITY_DECODE"}))
    TextTransformation.add_member(:lowercase, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOWERCASE", traits: {"smithy.api#enumValue" => "LOWERCASE"}))
    TextTransformation.add_member(:cmd_line, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CMD_LINE", traits: {"smithy.api#enumValue" => "CMD_LINE"}))
    TextTransformation.add_member(:url_decode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "URL_DECODE", traits: {"smithy.api#enumValue" => "URL_DECODE"}))
    TimeWindow.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime", traits: {"smithy.api#required" => {}}))
    TimeWindow.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime", traits: {"smithy.api#required" => {}}))
    TimeWindow.type = Types::TimeWindow
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateByteMatchSetRequest.add_member(:byte_match_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ByteMatchSetId", traits: {"smithy.api#required" => {}}))
    UpdateByteMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    UpdateByteMatchSetRequest.add_member(:updates, ::Smithy::Schema::Shapes::MemberShape.new(target: ByteMatchSetUpdates, name: "Updates", traits: {"smithy.api#required" => {}}))
    UpdateByteMatchSetRequest.type = Types::UpdateByteMatchSetRequest
    UpdateByteMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    UpdateByteMatchSetResponse.type = Types::UpdateByteMatchSetResponse
    UpdateGeoMatchSetRequest.add_member(:geo_match_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "GeoMatchSetId", traits: {"smithy.api#required" => {}}))
    UpdateGeoMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    UpdateGeoMatchSetRequest.add_member(:updates, ::Smithy::Schema::Shapes::MemberShape.new(target: GeoMatchSetUpdates, name: "Updates", traits: {"smithy.api#required" => {}}))
    UpdateGeoMatchSetRequest.type = Types::UpdateGeoMatchSetRequest
    UpdateGeoMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    UpdateGeoMatchSetResponse.type = Types::UpdateGeoMatchSetResponse
    UpdateIPSetRequest.add_member(:ip_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "IPSetId", traits: {"smithy.api#required" => {}}))
    UpdateIPSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    UpdateIPSetRequest.add_member(:updates, ::Smithy::Schema::Shapes::MemberShape.new(target: IPSetUpdates, name: "Updates", traits: {"smithy.api#required" => {}}))
    UpdateIPSetRequest.type = Types::UpdateIPSetRequest
    UpdateIPSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    UpdateIPSetResponse.type = Types::UpdateIPSetResponse
    UpdateRateBasedRuleRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RuleId", traits: {"smithy.api#required" => {}}))
    UpdateRateBasedRuleRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    UpdateRateBasedRuleRequest.add_member(:updates, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleUpdates, name: "Updates", traits: {"smithy.api#required" => {}}))
    UpdateRateBasedRuleRequest.add_member(:rate_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: RateLimit, name: "RateLimit", traits: {"smithy.api#required" => {}}))
    UpdateRateBasedRuleRequest.type = Types::UpdateRateBasedRuleRequest
    UpdateRateBasedRuleResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    UpdateRateBasedRuleResponse.type = Types::UpdateRateBasedRuleResponse
    UpdateRegexMatchSetRequest.add_member(:regex_match_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RegexMatchSetId", traits: {"smithy.api#required" => {}}))
    UpdateRegexMatchSetRequest.add_member(:updates, ::Smithy::Schema::Shapes::MemberShape.new(target: RegexMatchSetUpdates, name: "Updates", traits: {"smithy.api#required" => {}}))
    UpdateRegexMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    UpdateRegexMatchSetRequest.type = Types::UpdateRegexMatchSetRequest
    UpdateRegexMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    UpdateRegexMatchSetResponse.type = Types::UpdateRegexMatchSetResponse
    UpdateRegexPatternSetRequest.add_member(:regex_pattern_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RegexPatternSetId", traits: {"smithy.api#required" => {}}))
    UpdateRegexPatternSetRequest.add_member(:updates, ::Smithy::Schema::Shapes::MemberShape.new(target: RegexPatternSetUpdates, name: "Updates", traits: {"smithy.api#required" => {}}))
    UpdateRegexPatternSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    UpdateRegexPatternSetRequest.type = Types::UpdateRegexPatternSetRequest
    UpdateRegexPatternSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    UpdateRegexPatternSetResponse.type = Types::UpdateRegexPatternSetResponse
    UpdateRuleGroupRequest.add_member(:rule_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RuleGroupId", traits: {"smithy.api#required" => {}}))
    UpdateRuleGroupRequest.add_member(:updates, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroupUpdates, name: "Updates", traits: {"smithy.api#required" => {}}))
    UpdateRuleGroupRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    UpdateRuleGroupRequest.type = Types::UpdateRuleGroupRequest
    UpdateRuleGroupResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    UpdateRuleGroupResponse.type = Types::UpdateRuleGroupResponse
    UpdateRuleRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RuleId", traits: {"smithy.api#required" => {}}))
    UpdateRuleRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    UpdateRuleRequest.add_member(:updates, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleUpdates, name: "Updates", traits: {"smithy.api#required" => {}}))
    UpdateRuleRequest.type = Types::UpdateRuleRequest
    UpdateRuleResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    UpdateRuleResponse.type = Types::UpdateRuleResponse
    UpdateSizeConstraintSetRequest.add_member(:size_constraint_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "SizeConstraintSetId", traits: {"smithy.api#required" => {}}))
    UpdateSizeConstraintSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    UpdateSizeConstraintSetRequest.add_member(:updates, ::Smithy::Schema::Shapes::MemberShape.new(target: SizeConstraintSetUpdates, name: "Updates", traits: {"smithy.api#required" => {}}))
    UpdateSizeConstraintSetRequest.type = Types::UpdateSizeConstraintSetRequest
    UpdateSizeConstraintSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    UpdateSizeConstraintSetResponse.type = Types::UpdateSizeConstraintSetResponse
    UpdateSqlInjectionMatchSetRequest.add_member(:sql_injection_match_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "SqlInjectionMatchSetId", traits: {"smithy.api#required" => {}}))
    UpdateSqlInjectionMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    UpdateSqlInjectionMatchSetRequest.add_member(:updates, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlInjectionMatchSetUpdates, name: "Updates", traits: {"smithy.api#required" => {}}))
    UpdateSqlInjectionMatchSetRequest.type = Types::UpdateSqlInjectionMatchSetRequest
    UpdateSqlInjectionMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    UpdateSqlInjectionMatchSetResponse.type = Types::UpdateSqlInjectionMatchSetResponse
    UpdateWebACLRequest.add_member(:web_acl_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "WebACLId", traits: {"smithy.api#required" => {}}))
    UpdateWebACLRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    UpdateWebACLRequest.add_member(:updates, ::Smithy::Schema::Shapes::MemberShape.new(target: WebACLUpdates, name: "Updates"))
    UpdateWebACLRequest.add_member(:default_action, ::Smithy::Schema::Shapes::MemberShape.new(target: WafAction, name: "DefaultAction"))
    UpdateWebACLRequest.type = Types::UpdateWebACLRequest
    UpdateWebACLResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    UpdateWebACLResponse.type = Types::UpdateWebACLResponse
    UpdateXssMatchSetRequest.add_member(:xss_match_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "XssMatchSetId", traits: {"smithy.api#required" => {}}))
    UpdateXssMatchSetRequest.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken", traits: {"smithy.api#required" => {}}))
    UpdateXssMatchSetRequest.add_member(:updates, ::Smithy::Schema::Shapes::MemberShape.new(target: XssMatchSetUpdates, name: "Updates", traits: {"smithy.api#required" => {}}))
    UpdateXssMatchSetRequest.type = Types::UpdateXssMatchSetRequest
    UpdateXssMatchSetResponse.add_member(:change_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeToken, name: "ChangeToken"))
    UpdateXssMatchSetResponse.type = Types::UpdateXssMatchSetResponse
    WAFBadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    WAFBadRequestException.type = Types::WAFBadRequestException
    WAFDisallowedNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    WAFDisallowedNameException.type = Types::WAFDisallowedNameException
    WAFEntityMigrationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    WAFEntityMigrationException.add_member(:migration_error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationErrorType, name: "MigrationErrorType"))
    WAFEntityMigrationException.add_member(:migration_error_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorReason, name: "MigrationErrorReason"))
    WAFEntityMigrationException.type = Types::WAFEntityMigrationException
    WAFInternalErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    WAFInternalErrorException.type = Types::WAFInternalErrorException
    WAFInvalidAccountException.type = Types::WAFInvalidAccountException
    WAFInvalidOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    WAFInvalidOperationException.type = Types::WAFInvalidOperationException
    WAFInvalidParameterException.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterExceptionField, name: "field"))
    WAFInvalidParameterException.add_member(:parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterExceptionParameter, name: "parameter"))
    WAFInvalidParameterException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterExceptionReason, name: "reason"))
    WAFInvalidParameterException.type = Types::WAFInvalidParameterException
    WAFInvalidPermissionPolicyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    WAFInvalidPermissionPolicyException.type = Types::WAFInvalidPermissionPolicyException
    WAFInvalidRegexPatternException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    WAFInvalidRegexPatternException.type = Types::WAFInvalidRegexPatternException
    WAFLimitsExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    WAFLimitsExceededException.type = Types::WAFLimitsExceededException
    WAFNonEmptyEntityException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    WAFNonEmptyEntityException.type = Types::WAFNonEmptyEntityException
    WAFNonexistentContainerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    WAFNonexistentContainerException.type = Types::WAFNonexistentContainerException
    WAFNonexistentItemException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    WAFNonexistentItemException.type = Types::WAFNonexistentItemException
    WAFReferencedItemException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    WAFReferencedItemException.type = Types::WAFReferencedItemException
    WAFServiceLinkedRoleErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    WAFServiceLinkedRoleErrorException.type = Types::WAFServiceLinkedRoleErrorException
    WAFStaleDataException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    WAFStaleDataException.type = Types::WAFStaleDataException
    WAFSubscriptionNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    WAFSubscriptionNotFoundException.type = Types::WAFSubscriptionNotFoundException
    WAFTagOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    WAFTagOperationException.type = Types::WAFTagOperationException
    WAFTagOperationInternalErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    WAFTagOperationInternalErrorException.type = Types::WAFTagOperationInternalErrorException
    WAFUnavailableEntityException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    WAFUnavailableEntityException.type = Types::WAFUnavailableEntityException
    WafAction.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WafActionType, name: "Type", traits: {"smithy.api#required" => {}}))
    WafAction.type = Types::WafAction
    WafActionType.add_member(:block, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOCK", traits: {"smithy.api#enumValue" => "BLOCK"}))
    WafActionType.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    WafActionType.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COUNT", traits: {"smithy.api#enumValue" => "COUNT"}))
    WafOverrideAction.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WafOverrideActionType, name: "Type", traits: {"smithy.api#required" => {}}))
    WafOverrideAction.type = Types::WafOverrideAction
    WafOverrideActionType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    WafOverrideActionType.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COUNT", traits: {"smithy.api#enumValue" => "COUNT"}))
    WafRuleType.add_member(:regular, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGULAR", traits: {"smithy.api#enumValue" => "REGULAR"}))
    WafRuleType.add_member(:rate_based, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RATE_BASED", traits: {"smithy.api#enumValue" => "RATE_BASED"}))
    WafRuleType.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GROUP", traits: {"smithy.api#enumValue" => "GROUP"}))
    WebACL.add_member(:web_acl_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "WebACLId", traits: {"smithy.api#required" => {}}))
    WebACL.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name"))
    WebACL.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName"))
    WebACL.add_member(:default_action, ::Smithy::Schema::Shapes::MemberShape.new(target: WafAction, name: "DefaultAction", traits: {"smithy.api#required" => {}}))
    WebACL.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivatedRules, name: "Rules", traits: {"smithy.api#required" => {}}))
    WebACL.add_member(:web_acl_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "WebACLArn"))
    WebACL.type = Types::WebACL
    WebACLSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WebACLSummary, name: "member"))
    WebACLSummary.add_member(:web_acl_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "WebACLId", traits: {"smithy.api#required" => {}}))
    WebACLSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    WebACLSummary.type = Types::WebACLSummary
    WebACLUpdate.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeAction, name: "Action", traits: {"smithy.api#required" => {}}))
    WebACLUpdate.add_member(:activated_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivatedRule, name: "ActivatedRule", traits: {"smithy.api#required" => {}}))
    WebACLUpdate.type = Types::WebACLUpdate
    WebACLUpdates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WebACLUpdate, name: "member"))
    XssMatchSet.add_member(:xss_match_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "XssMatchSetId", traits: {"smithy.api#required" => {}}))
    XssMatchSet.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name"))
    XssMatchSet.add_member(:xss_match_tuples, ::Smithy::Schema::Shapes::MemberShape.new(target: XssMatchTuples, name: "XssMatchTuples", traits: {"smithy.api#required" => {}}))
    XssMatchSet.type = Types::XssMatchSet
    XssMatchSetSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: XssMatchSetSummary, name: "member"))
    XssMatchSetSummary.add_member(:xss_match_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "XssMatchSetId", traits: {"smithy.api#required" => {}}))
    XssMatchSetSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    XssMatchSetSummary.type = Types::XssMatchSetSummary
    XssMatchSetUpdate.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeAction, name: "Action", traits: {"smithy.api#required" => {}}))
    XssMatchSetUpdate.add_member(:xss_match_tuple, ::Smithy::Schema::Shapes::MemberShape.new(target: XssMatchTuple, name: "XssMatchTuple", traits: {"smithy.api#required" => {}}))
    XssMatchSetUpdate.type = Types::XssMatchSetUpdate
    XssMatchSetUpdates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: XssMatchSetUpdate, name: "member"))
    XssMatchTuple.add_member(:field_to_match, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldToMatch, name: "FieldToMatch", traits: {"smithy.api#required" => {}}))
    XssMatchTuple.add_member(:text_transformation, ::Smithy::Schema::Shapes::MemberShape.new(target: TextTransformation, name: "TextTransformation", traits: {"smithy.api#required" => {}}))
    XssMatchTuple.type = Types::XssMatchTuple
    XssMatchTuples.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: XssMatchTuple, name: "member"))

    AWSWAFRegional20161128 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.wafregional#AWSWAF_Regional_20161128"
      service.name = "AWSWAFRegional20161128"
      service.version = "2016-11-28"
      service.traits = {"aws.api#service" => {"sdkId" => "WAF Regional", "arnNamespace" => "waf-regional", "cloudFormationName" => "WAFRegional", "cloudTrailEventSource" => "wafregional.amazonaws.com", "endpointPrefix" => "waf-regional"}, "aws.auth#sigv4" => {"name" => "waf-regional"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS WAF Regional", "smithy.api#xmlNamespace" => {"uri" => "http://waf.amazonaws.com/doc/2015-08-24/"}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://waf-regional-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://waf-regional-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://waf-regional.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://waf-regional.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:associate_web_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#AssociateWebACL"
        operation.name = "AssociateWebACL"
        operation.input = AssociateWebACLRequest
        operation.output = AssociateWebACLResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFUnavailableEntityException
        operation.traits = {}
      end)
      service.add_operation(:create_byte_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#CreateByteMatchSet"
        operation.name = "CreateByteMatchSet"
        operation.input = CreateByteMatchSetRequest
        operation.output = CreateByteMatchSetResponse
        operation.errors << WAFDisallowedNameException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:create_geo_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#CreateGeoMatchSet"
        operation.name = "CreateGeoMatchSet"
        operation.input = CreateGeoMatchSetRequest
        operation.output = CreateGeoMatchSetResponse
        operation.errors << WAFDisallowedNameException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:create_ip_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#CreateIPSet"
        operation.name = "CreateIPSet"
        operation.input = CreateIPSetRequest
        operation.output = CreateIPSetResponse
        operation.errors << WAFDisallowedNameException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:create_rate_based_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#CreateRateBasedRule"
        operation.name = "CreateRateBasedRule"
        operation.input = CreateRateBasedRuleRequest
        operation.output = CreateRateBasedRuleResponse
        operation.errors << WAFBadRequestException
        operation.errors << WAFDisallowedNameException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFStaleDataException
        operation.errors << WAFTagOperationException
        operation.errors << WAFTagOperationInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:create_regex_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#CreateRegexMatchSet"
        operation.name = "CreateRegexMatchSet"
        operation.input = CreateRegexMatchSetRequest
        operation.output = CreateRegexMatchSetResponse
        operation.errors << WAFDisallowedNameException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:create_regex_pattern_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#CreateRegexPatternSet"
        operation.name = "CreateRegexPatternSet"
        operation.input = CreateRegexPatternSetRequest
        operation.output = CreateRegexPatternSetResponse
        operation.errors << WAFDisallowedNameException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:create_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#CreateRule"
        operation.name = "CreateRule"
        operation.input = CreateRuleRequest
        operation.output = CreateRuleResponse
        operation.errors << WAFBadRequestException
        operation.errors << WAFDisallowedNameException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFStaleDataException
        operation.errors << WAFTagOperationException
        operation.errors << WAFTagOperationInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:create_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#CreateRuleGroup"
        operation.name = "CreateRuleGroup"
        operation.input = CreateRuleGroupRequest
        operation.output = CreateRuleGroupResponse
        operation.errors << WAFBadRequestException
        operation.errors << WAFDisallowedNameException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFStaleDataException
        operation.errors << WAFTagOperationException
        operation.errors << WAFTagOperationInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:create_size_constraint_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#CreateSizeConstraintSet"
        operation.name = "CreateSizeConstraintSet"
        operation.input = CreateSizeConstraintSetRequest
        operation.output = CreateSizeConstraintSetResponse
        operation.errors << WAFDisallowedNameException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:create_sql_injection_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#CreateSqlInjectionMatchSet"
        operation.name = "CreateSqlInjectionMatchSet"
        operation.input = CreateSqlInjectionMatchSetRequest
        operation.output = CreateSqlInjectionMatchSetResponse
        operation.errors << WAFDisallowedNameException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:create_web_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#CreateWebACL"
        operation.name = "CreateWebACL"
        operation.input = CreateWebACLRequest
        operation.output = CreateWebACLResponse
        operation.errors << WAFBadRequestException
        operation.errors << WAFDisallowedNameException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFStaleDataException
        operation.errors << WAFTagOperationException
        operation.errors << WAFTagOperationInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:create_web_acl_migration_stack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#CreateWebACLMigrationStack"
        operation.name = "CreateWebACLMigrationStack"
        operation.input = CreateWebACLMigrationStackRequest
        operation.output = CreateWebACLMigrationStackResponse
        operation.errors << WAFEntityMigrationException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:create_xss_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#CreateXssMatchSet"
        operation.name = "CreateXssMatchSet"
        operation.input = CreateXssMatchSetRequest
        operation.output = CreateXssMatchSetResponse
        operation.errors << WAFDisallowedNameException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:delete_byte_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DeleteByteMatchSet"
        operation.name = "DeleteByteMatchSet"
        operation.input = DeleteByteMatchSetRequest
        operation.output = DeleteByteMatchSetResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFNonEmptyEntityException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFReferencedItemException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:delete_geo_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DeleteGeoMatchSet"
        operation.name = "DeleteGeoMatchSet"
        operation.input = DeleteGeoMatchSetRequest
        operation.output = DeleteGeoMatchSetResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFNonEmptyEntityException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFReferencedItemException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:delete_ip_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DeleteIPSet"
        operation.name = "DeleteIPSet"
        operation.input = DeleteIPSetRequest
        operation.output = DeleteIPSetResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFNonEmptyEntityException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFReferencedItemException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:delete_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DeleteLoggingConfiguration"
        operation.name = "DeleteLoggingConfiguration"
        operation.input = DeleteLoggingConfigurationRequest
        operation.output = DeleteLoggingConfigurationResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:delete_permission_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DeletePermissionPolicy"
        operation.name = "DeletePermissionPolicy"
        operation.input = DeletePermissionPolicyRequest
        operation.output = DeletePermissionPolicyResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:delete_rate_based_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DeleteRateBasedRule"
        operation.name = "DeleteRateBasedRule"
        operation.input = DeleteRateBasedRuleRequest
        operation.output = DeleteRateBasedRuleResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFNonEmptyEntityException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFReferencedItemException
        operation.errors << WAFStaleDataException
        operation.errors << WAFTagOperationException
        operation.errors << WAFTagOperationInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:delete_regex_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DeleteRegexMatchSet"
        operation.name = "DeleteRegexMatchSet"
        operation.input = DeleteRegexMatchSetRequest
        operation.output = DeleteRegexMatchSetResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFNonEmptyEntityException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFReferencedItemException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:delete_regex_pattern_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DeleteRegexPatternSet"
        operation.name = "DeleteRegexPatternSet"
        operation.input = DeleteRegexPatternSetRequest
        operation.output = DeleteRegexPatternSetResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFNonEmptyEntityException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFReferencedItemException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:delete_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DeleteRule"
        operation.name = "DeleteRule"
        operation.input = DeleteRuleRequest
        operation.output = DeleteRuleResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFNonEmptyEntityException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFReferencedItemException
        operation.errors << WAFStaleDataException
        operation.errors << WAFTagOperationException
        operation.errors << WAFTagOperationInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:delete_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DeleteRuleGroup"
        operation.name = "DeleteRuleGroup"
        operation.input = DeleteRuleGroupRequest
        operation.output = DeleteRuleGroupResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFNonEmptyEntityException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFReferencedItemException
        operation.errors << WAFStaleDataException
        operation.errors << WAFTagOperationException
        operation.errors << WAFTagOperationInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:delete_size_constraint_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DeleteSizeConstraintSet"
        operation.name = "DeleteSizeConstraintSet"
        operation.input = DeleteSizeConstraintSetRequest
        operation.output = DeleteSizeConstraintSetResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFNonEmptyEntityException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFReferencedItemException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:delete_sql_injection_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DeleteSqlInjectionMatchSet"
        operation.name = "DeleteSqlInjectionMatchSet"
        operation.input = DeleteSqlInjectionMatchSetRequest
        operation.output = DeleteSqlInjectionMatchSetResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFNonEmptyEntityException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFReferencedItemException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:delete_web_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DeleteWebACL"
        operation.name = "DeleteWebACL"
        operation.input = DeleteWebACLRequest
        operation.output = DeleteWebACLResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFNonEmptyEntityException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFReferencedItemException
        operation.errors << WAFStaleDataException
        operation.errors << WAFTagOperationException
        operation.errors << WAFTagOperationInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:delete_xss_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DeleteXssMatchSet"
        operation.name = "DeleteXssMatchSet"
        operation.input = DeleteXssMatchSetRequest
        operation.output = DeleteXssMatchSetResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFNonEmptyEntityException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFReferencedItemException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_web_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DisassociateWebACL"
        operation.name = "DisassociateWebACL"
        operation.input = DisassociateWebACLRequest
        operation.output = DisassociateWebACLResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:get_byte_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetByteMatchSet"
        operation.name = "GetByteMatchSet"
        operation.input = GetByteMatchSetRequest
        operation.output = GetByteMatchSetResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:get_change_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetChangeToken"
        operation.name = "GetChangeToken"
        operation.input = GetChangeTokenRequest
        operation.output = GetChangeTokenResponse
        operation.errors << WAFInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:get_change_token_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetChangeTokenStatus"
        operation.name = "GetChangeTokenStatus"
        operation.input = GetChangeTokenStatusRequest
        operation.output = GetChangeTokenStatusResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:get_geo_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetGeoMatchSet"
        operation.name = "GetGeoMatchSet"
        operation.input = GetGeoMatchSetRequest
        operation.output = GetGeoMatchSetResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:get_ip_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetIPSet"
        operation.name = "GetIPSet"
        operation.input = GetIPSetRequest
        operation.output = GetIPSetResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:get_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetLoggingConfiguration"
        operation.name = "GetLoggingConfiguration"
        operation.input = GetLoggingConfigurationRequest
        operation.output = GetLoggingConfigurationResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:get_permission_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetPermissionPolicy"
        operation.name = "GetPermissionPolicy"
        operation.input = GetPermissionPolicyRequest
        operation.output = GetPermissionPolicyResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:get_rate_based_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetRateBasedRule"
        operation.name = "GetRateBasedRule"
        operation.input = GetRateBasedRuleRequest
        operation.output = GetRateBasedRuleResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:get_rate_based_rule_managed_keys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetRateBasedRuleManagedKeys"
        operation.name = "GetRateBasedRuleManagedKeys"
        operation.input = GetRateBasedRuleManagedKeysRequest
        operation.output = GetRateBasedRuleManagedKeysResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:get_regex_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetRegexMatchSet"
        operation.name = "GetRegexMatchSet"
        operation.input = GetRegexMatchSetRequest
        operation.output = GetRegexMatchSetResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:get_regex_pattern_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetRegexPatternSet"
        operation.name = "GetRegexPatternSet"
        operation.input = GetRegexPatternSetRequest
        operation.output = GetRegexPatternSetResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:get_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetRule"
        operation.name = "GetRule"
        operation.input = GetRuleRequest
        operation.output = GetRuleResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:get_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetRuleGroup"
        operation.name = "GetRuleGroup"
        operation.input = GetRuleGroupRequest
        operation.output = GetRuleGroupResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:get_sampled_requests, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetSampledRequests"
        operation.name = "GetSampledRequests"
        operation.input = GetSampledRequestsRequest
        operation.output = GetSampledRequestsResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:get_size_constraint_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetSizeConstraintSet"
        operation.name = "GetSizeConstraintSet"
        operation.input = GetSizeConstraintSetRequest
        operation.output = GetSizeConstraintSetResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:get_sql_injection_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetSqlInjectionMatchSet"
        operation.name = "GetSqlInjectionMatchSet"
        operation.input = GetSqlInjectionMatchSetRequest
        operation.output = GetSqlInjectionMatchSetResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:get_web_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetWebACL"
        operation.name = "GetWebACL"
        operation.input = GetWebACLRequest
        operation.output = GetWebACLResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:get_web_acl_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetWebACLForResource"
        operation.name = "GetWebACLForResource"
        operation.input = GetWebACLForResourceRequest
        operation.output = GetWebACLForResourceResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFUnavailableEntityException
        operation.traits = {}
      end)
      service.add_operation(:get_xss_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetXssMatchSet"
        operation.name = "GetXssMatchSet"
        operation.input = GetXssMatchSetRequest
        operation.output = GetXssMatchSetResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:list_activated_rules_in_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListActivatedRulesInRuleGroup"
        operation.name = "ListActivatedRulesInRuleGroup"
        operation.input = ListActivatedRulesInRuleGroupRequest
        operation.output = ListActivatedRulesInRuleGroupResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:list_byte_match_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListByteMatchSets"
        operation.name = "ListByteMatchSets"
        operation.input = ListByteMatchSetsRequest
        operation.output = ListByteMatchSetsResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.traits = {}
      end)
      service.add_operation(:list_geo_match_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListGeoMatchSets"
        operation.name = "ListGeoMatchSets"
        operation.input = ListGeoMatchSetsRequest
        operation.output = ListGeoMatchSetsResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.traits = {}
      end)
      service.add_operation(:list_ip_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListIPSets"
        operation.name = "ListIPSets"
        operation.input = ListIPSetsRequest
        operation.output = ListIPSetsResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.traits = {}
      end)
      service.add_operation(:list_logging_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListLoggingConfigurations"
        operation.name = "ListLoggingConfigurations"
        operation.input = ListLoggingConfigurationsRequest
        operation.output = ListLoggingConfigurationsResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:list_rate_based_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListRateBasedRules"
        operation.name = "ListRateBasedRules"
        operation.input = ListRateBasedRulesRequest
        operation.output = ListRateBasedRulesResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.traits = {}
      end)
      service.add_operation(:list_regex_match_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListRegexMatchSets"
        operation.name = "ListRegexMatchSets"
        operation.input = ListRegexMatchSetsRequest
        operation.output = ListRegexMatchSetsResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.traits = {}
      end)
      service.add_operation(:list_regex_pattern_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListRegexPatternSets"
        operation.name = "ListRegexPatternSets"
        operation.input = ListRegexPatternSetsRequest
        operation.output = ListRegexPatternSetsResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.traits = {}
      end)
      service.add_operation(:list_resources_for_web_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListResourcesForWebACL"
        operation.name = "ListResourcesForWebACL"
        operation.input = ListResourcesForWebACLRequest
        operation.output = ListResourcesForWebACLResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:list_rule_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListRuleGroups"
        operation.name = "ListRuleGroups"
        operation.input = ListRuleGroupsRequest
        operation.output = ListRuleGroupsResponse
        operation.errors << WAFInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:list_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListRules"
        operation.name = "ListRules"
        operation.input = ListRulesRequest
        operation.output = ListRulesResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListRulesSuccess", "params" => {"Limit" => 20}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:list_size_constraint_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListSizeConstraintSets"
        operation.name = "ListSizeConstraintSets"
        operation.input = ListSizeConstraintSetsRequest
        operation.output = ListSizeConstraintSetsResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.traits = {}
      end)
      service.add_operation(:list_sql_injection_match_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListSqlInjectionMatchSets"
        operation.name = "ListSqlInjectionMatchSets"
        operation.input = ListSqlInjectionMatchSetsRequest
        operation.output = ListSqlInjectionMatchSetsResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.traits = {}
      end)
      service.add_operation(:list_subscribed_rule_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListSubscribedRuleGroups"
        operation.name = "ListSubscribedRuleGroups"
        operation.input = ListSubscribedRuleGroupsRequest
        operation.output = ListSubscribedRuleGroupsResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFNonexistentItemException
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << WAFBadRequestException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFTagOperationException
        operation.errors << WAFTagOperationInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:list_web_ac_ls, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListWebACLs"
        operation.name = "ListWebACLs"
        operation.input = ListWebACLsRequest
        operation.output = ListWebACLsResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.traits = {}
      end)
      service.add_operation(:list_xss_match_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListXssMatchSets"
        operation.name = "ListXssMatchSets"
        operation.input = ListXssMatchSetsRequest
        operation.output = ListXssMatchSetsResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.traits = {}
      end)
      service.add_operation(:put_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#PutLoggingConfiguration"
        operation.name = "PutLoggingConfiguration"
        operation.input = PutLoggingConfigurationRequest
        operation.output = PutLoggingConfigurationResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFServiceLinkedRoleErrorException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:put_permission_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#PutPermissionPolicy"
        operation.name = "PutPermissionPolicy"
        operation.input = PutPermissionPolicyRequest
        operation.output = PutPermissionPolicyResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidPermissionPolicyException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << WAFBadRequestException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFTagOperationException
        operation.errors << WAFTagOperationInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << WAFBadRequestException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFTagOperationException
        operation.errors << WAFTagOperationInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:update_byte_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#UpdateByteMatchSet"
        operation.name = "UpdateByteMatchSet"
        operation.input = UpdateByteMatchSetRequest
        operation.output = UpdateByteMatchSetResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFNonexistentContainerException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:update_geo_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#UpdateGeoMatchSet"
        operation.name = "UpdateGeoMatchSet"
        operation.input = UpdateGeoMatchSetRequest
        operation.output = UpdateGeoMatchSetResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFNonexistentContainerException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFReferencedItemException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:update_ip_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#UpdateIPSet"
        operation.name = "UpdateIPSet"
        operation.input = UpdateIPSetRequest
        operation.output = UpdateIPSetResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFNonexistentContainerException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFReferencedItemException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:update_rate_based_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#UpdateRateBasedRule"
        operation.name = "UpdateRateBasedRule"
        operation.input = UpdateRateBasedRuleRequest
        operation.output = UpdateRateBasedRuleResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFNonexistentContainerException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFReferencedItemException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:update_regex_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#UpdateRegexMatchSet"
        operation.name = "UpdateRegexMatchSet"
        operation.input = UpdateRegexMatchSetRequest
        operation.output = UpdateRegexMatchSetResponse
        operation.errors << WAFDisallowedNameException
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFNonexistentContainerException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:update_regex_pattern_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#UpdateRegexPatternSet"
        operation.name = "UpdateRegexPatternSet"
        operation.input = UpdateRegexPatternSetRequest
        operation.output = UpdateRegexPatternSetResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidRegexPatternException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFNonexistentContainerException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:update_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#UpdateRule"
        operation.name = "UpdateRule"
        operation.input = UpdateRuleRequest
        operation.output = UpdateRuleResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFNonexistentContainerException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFReferencedItemException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:update_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#UpdateRuleGroup"
        operation.name = "UpdateRuleGroup"
        operation.input = UpdateRuleGroupRequest
        operation.output = UpdateRuleGroupResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFNonexistentContainerException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:update_size_constraint_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#UpdateSizeConstraintSet"
        operation.name = "UpdateSizeConstraintSet"
        operation.input = UpdateSizeConstraintSetRequest
        operation.output = UpdateSizeConstraintSetResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFNonexistentContainerException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFReferencedItemException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:update_sql_injection_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#UpdateSqlInjectionMatchSet"
        operation.name = "UpdateSqlInjectionMatchSet"
        operation.input = UpdateSqlInjectionMatchSetRequest
        operation.output = UpdateSqlInjectionMatchSetResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFNonexistentContainerException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFStaleDataException
        operation.traits = {}
      end)
      service.add_operation(:update_web_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#UpdateWebACL"
        operation.name = "UpdateWebACL"
        operation.input = UpdateWebACLRequest
        operation.output = UpdateWebACLResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFNonexistentContainerException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFReferencedItemException
        operation.errors << WAFStaleDataException
        operation.errors << WAFSubscriptionNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_xss_match_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#UpdateXssMatchSet"
        operation.name = "UpdateXssMatchSet"
        operation.input = UpdateXssMatchSetRequest
        operation.output = UpdateXssMatchSetResponse
        operation.errors << WAFInternalErrorException
        operation.errors << WAFInvalidAccountException
        operation.errors << WAFInvalidOperationException
        operation.errors << WAFInvalidParameterException
        operation.errors << WAFLimitsExceededException
        operation.errors << WAFNonexistentContainerException
        operation.errors << WAFNonexistentItemException
        operation.errors << WAFStaleDataException
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
