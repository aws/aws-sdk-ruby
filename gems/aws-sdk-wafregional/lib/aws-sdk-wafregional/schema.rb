# frozen_string_literal: true

# This is generated code!

module Aws::WAFRegional
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Action = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wafregional#Action', name: 'Action')
    ActivatedRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ActivatedRule', name: 'ActivatedRule')
    ActivatedRules = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#ActivatedRules', name: 'ActivatedRules')
    AssociateWebACLRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#AssociateWebACLRequest', name: 'AssociateWebACLRequest')
    AssociateWebACLResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#AssociateWebACLResponse', name: 'AssociateWebACLResponse')
    ByteMatchSet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ByteMatchSet', name: 'ByteMatchSet')
    ByteMatchSetSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#ByteMatchSetSummaries', name: 'ByteMatchSetSummaries')
    ByteMatchSetSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ByteMatchSetSummary', name: 'ByteMatchSetSummary')
    ByteMatchSetUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ByteMatchSetUpdate', name: 'ByteMatchSetUpdate')
    ByteMatchSetUpdates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#ByteMatchSetUpdates', name: 'ByteMatchSetUpdates', traits: {"smithy.api#length" => {"min" => 1}})
    ByteMatchTargetString = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.wafregional#ByteMatchTargetString', name: 'ByteMatchTargetString')
    ByteMatchTuple = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ByteMatchTuple', name: 'ByteMatchTuple')
    ByteMatchTuples = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#ByteMatchTuples', name: 'ByteMatchTuples')
    ChangeAction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wafregional#ChangeAction', name: 'ChangeAction')
    ChangeToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wafregional#ChangeToken', name: 'ChangeToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    ChangeTokenStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wafregional#ChangeTokenStatus', name: 'ChangeTokenStatus')
    ComparisonOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wafregional#ComparisonOperator', name: 'ComparisonOperator')
    Country = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wafregional#Country', name: 'Country')
    CreateByteMatchSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#CreateByteMatchSetRequest', name: 'CreateByteMatchSetRequest')
    CreateByteMatchSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#CreateByteMatchSetResponse', name: 'CreateByteMatchSetResponse')
    CreateGeoMatchSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#CreateGeoMatchSetRequest', name: 'CreateGeoMatchSetRequest')
    CreateGeoMatchSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#CreateGeoMatchSetResponse', name: 'CreateGeoMatchSetResponse')
    CreateIPSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#CreateIPSetRequest', name: 'CreateIPSetRequest')
    CreateIPSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#CreateIPSetResponse', name: 'CreateIPSetResponse')
    CreateRateBasedRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#CreateRateBasedRuleRequest', name: 'CreateRateBasedRuleRequest')
    CreateRateBasedRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#CreateRateBasedRuleResponse', name: 'CreateRateBasedRuleResponse')
    CreateRegexMatchSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#CreateRegexMatchSetRequest', name: 'CreateRegexMatchSetRequest')
    CreateRegexMatchSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#CreateRegexMatchSetResponse', name: 'CreateRegexMatchSetResponse')
    CreateRegexPatternSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#CreateRegexPatternSetRequest', name: 'CreateRegexPatternSetRequest')
    CreateRegexPatternSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#CreateRegexPatternSetResponse', name: 'CreateRegexPatternSetResponse')
    CreateRuleGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#CreateRuleGroupRequest', name: 'CreateRuleGroupRequest')
    CreateRuleGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#CreateRuleGroupResponse', name: 'CreateRuleGroupResponse')
    CreateRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#CreateRuleRequest', name: 'CreateRuleRequest')
    CreateRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#CreateRuleResponse', name: 'CreateRuleResponse')
    CreateSizeConstraintSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#CreateSizeConstraintSetRequest', name: 'CreateSizeConstraintSetRequest')
    CreateSizeConstraintSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#CreateSizeConstraintSetResponse', name: 'CreateSizeConstraintSetResponse')
    CreateSqlInjectionMatchSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#CreateSqlInjectionMatchSetRequest', name: 'CreateSqlInjectionMatchSetRequest')
    CreateSqlInjectionMatchSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#CreateSqlInjectionMatchSetResponse', name: 'CreateSqlInjectionMatchSetResponse')
    CreateWebACLMigrationStackRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#CreateWebACLMigrationStackRequest', name: 'CreateWebACLMigrationStackRequest')
    CreateWebACLMigrationStackResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#CreateWebACLMigrationStackResponse', name: 'CreateWebACLMigrationStackResponse')
    CreateWebACLRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#CreateWebACLRequest', name: 'CreateWebACLRequest')
    CreateWebACLResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#CreateWebACLResponse', name: 'CreateWebACLResponse')
    CreateXssMatchSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#CreateXssMatchSetRequest', name: 'CreateXssMatchSetRequest')
    CreateXssMatchSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#CreateXssMatchSetResponse', name: 'CreateXssMatchSetResponse')
    DeleteByteMatchSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DeleteByteMatchSetRequest', name: 'DeleteByteMatchSetRequest')
    DeleteByteMatchSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DeleteByteMatchSetResponse', name: 'DeleteByteMatchSetResponse')
    DeleteGeoMatchSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DeleteGeoMatchSetRequest', name: 'DeleteGeoMatchSetRequest')
    DeleteGeoMatchSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DeleteGeoMatchSetResponse', name: 'DeleteGeoMatchSetResponse')
    DeleteIPSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DeleteIPSetRequest', name: 'DeleteIPSetRequest')
    DeleteIPSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DeleteIPSetResponse', name: 'DeleteIPSetResponse')
    DeleteLoggingConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DeleteLoggingConfigurationRequest', name: 'DeleteLoggingConfigurationRequest')
    DeleteLoggingConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DeleteLoggingConfigurationResponse', name: 'DeleteLoggingConfigurationResponse')
    DeletePermissionPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DeletePermissionPolicyRequest', name: 'DeletePermissionPolicyRequest')
    DeletePermissionPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DeletePermissionPolicyResponse', name: 'DeletePermissionPolicyResponse')
    DeleteRateBasedRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DeleteRateBasedRuleRequest', name: 'DeleteRateBasedRuleRequest')
    DeleteRateBasedRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DeleteRateBasedRuleResponse', name: 'DeleteRateBasedRuleResponse')
    DeleteRegexMatchSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DeleteRegexMatchSetRequest', name: 'DeleteRegexMatchSetRequest')
    DeleteRegexMatchSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DeleteRegexMatchSetResponse', name: 'DeleteRegexMatchSetResponse')
    DeleteRegexPatternSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DeleteRegexPatternSetRequest', name: 'DeleteRegexPatternSetRequest')
    DeleteRegexPatternSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DeleteRegexPatternSetResponse', name: 'DeleteRegexPatternSetResponse')
    DeleteRuleGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DeleteRuleGroupRequest', name: 'DeleteRuleGroupRequest')
    DeleteRuleGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DeleteRuleGroupResponse', name: 'DeleteRuleGroupResponse')
    DeleteRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DeleteRuleRequest', name: 'DeleteRuleRequest')
    DeleteRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DeleteRuleResponse', name: 'DeleteRuleResponse')
    DeleteSizeConstraintSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DeleteSizeConstraintSetRequest', name: 'DeleteSizeConstraintSetRequest')
    DeleteSizeConstraintSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DeleteSizeConstraintSetResponse', name: 'DeleteSizeConstraintSetResponse')
    DeleteSqlInjectionMatchSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DeleteSqlInjectionMatchSetRequest', name: 'DeleteSqlInjectionMatchSetRequest')
    DeleteSqlInjectionMatchSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DeleteSqlInjectionMatchSetResponse', name: 'DeleteSqlInjectionMatchSetResponse')
    DeleteWebACLRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DeleteWebACLRequest', name: 'DeleteWebACLRequest')
    DeleteWebACLResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DeleteWebACLResponse', name: 'DeleteWebACLResponse')
    DeleteXssMatchSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DeleteXssMatchSetRequest', name: 'DeleteXssMatchSetRequest')
    DeleteXssMatchSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DeleteXssMatchSetResponse', name: 'DeleteXssMatchSetResponse')
    DisassociateWebACLRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DisassociateWebACLRequest', name: 'DisassociateWebACLRequest')
    DisassociateWebACLResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#DisassociateWebACLResponse', name: 'DisassociateWebACLResponse')
    ErrorReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wafregional#ErrorReason', name: 'ErrorReason')
    ExcludedRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ExcludedRule', name: 'ExcludedRule')
    ExcludedRules = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#ExcludedRules', name: 'ExcludedRules')
    FieldToMatch = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#FieldToMatch', name: 'FieldToMatch')
    GeoMatchConstraint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GeoMatchConstraint', name: 'GeoMatchConstraint')
    GeoMatchConstraintType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wafregional#GeoMatchConstraintType', name: 'GeoMatchConstraintType')
    GeoMatchConstraintValue = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wafregional#GeoMatchConstraintValue', name: 'GeoMatchConstraintValue')
    GeoMatchConstraints = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#GeoMatchConstraints', name: 'GeoMatchConstraints')
    GeoMatchSet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GeoMatchSet', name: 'GeoMatchSet')
    GeoMatchSetSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#GeoMatchSetSummaries', name: 'GeoMatchSetSummaries')
    GeoMatchSetSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GeoMatchSetSummary', name: 'GeoMatchSetSummary')
    GeoMatchSetUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GeoMatchSetUpdate', name: 'GeoMatchSetUpdate')
    GeoMatchSetUpdates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#GeoMatchSetUpdates', name: 'GeoMatchSetUpdates', traits: {"smithy.api#length" => {"min" => 1}})
    GetByteMatchSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetByteMatchSetRequest', name: 'GetByteMatchSetRequest')
    GetByteMatchSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetByteMatchSetResponse', name: 'GetByteMatchSetResponse')
    GetChangeTokenRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetChangeTokenRequest', name: 'GetChangeTokenRequest')
    GetChangeTokenResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetChangeTokenResponse', name: 'GetChangeTokenResponse')
    GetChangeTokenStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetChangeTokenStatusRequest', name: 'GetChangeTokenStatusRequest')
    GetChangeTokenStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetChangeTokenStatusResponse', name: 'GetChangeTokenStatusResponse')
    GetGeoMatchSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetGeoMatchSetRequest', name: 'GetGeoMatchSetRequest')
    GetGeoMatchSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetGeoMatchSetResponse', name: 'GetGeoMatchSetResponse')
    GetIPSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetIPSetRequest', name: 'GetIPSetRequest')
    GetIPSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetIPSetResponse', name: 'GetIPSetResponse')
    GetLoggingConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetLoggingConfigurationRequest', name: 'GetLoggingConfigurationRequest')
    GetLoggingConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetLoggingConfigurationResponse', name: 'GetLoggingConfigurationResponse')
    GetPermissionPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetPermissionPolicyRequest', name: 'GetPermissionPolicyRequest')
    GetPermissionPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetPermissionPolicyResponse', name: 'GetPermissionPolicyResponse')
    GetRateBasedRuleManagedKeysRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetRateBasedRuleManagedKeysRequest', name: 'GetRateBasedRuleManagedKeysRequest')
    GetRateBasedRuleManagedKeysResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetRateBasedRuleManagedKeysResponse', name: 'GetRateBasedRuleManagedKeysResponse')
    GetRateBasedRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetRateBasedRuleRequest', name: 'GetRateBasedRuleRequest')
    GetRateBasedRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetRateBasedRuleResponse', name: 'GetRateBasedRuleResponse')
    GetRegexMatchSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetRegexMatchSetRequest', name: 'GetRegexMatchSetRequest')
    GetRegexMatchSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetRegexMatchSetResponse', name: 'GetRegexMatchSetResponse')
    GetRegexPatternSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetRegexPatternSetRequest', name: 'GetRegexPatternSetRequest')
    GetRegexPatternSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetRegexPatternSetResponse', name: 'GetRegexPatternSetResponse')
    GetRuleGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetRuleGroupRequest', name: 'GetRuleGroupRequest')
    GetRuleGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetRuleGroupResponse', name: 'GetRuleGroupResponse')
    GetRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetRuleRequest', name: 'GetRuleRequest')
    GetRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetRuleResponse', name: 'GetRuleResponse')
    GetSampledRequestsMaxItems = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wafregional#GetSampledRequestsMaxItems', name: 'GetSampledRequestsMaxItems', traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    GetSampledRequestsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetSampledRequestsRequest', name: 'GetSampledRequestsRequest')
    GetSampledRequestsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetSampledRequestsResponse', name: 'GetSampledRequestsResponse')
    GetSizeConstraintSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetSizeConstraintSetRequest', name: 'GetSizeConstraintSetRequest')
    GetSizeConstraintSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetSizeConstraintSetResponse', name: 'GetSizeConstraintSetResponse')
    GetSqlInjectionMatchSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetSqlInjectionMatchSetRequest', name: 'GetSqlInjectionMatchSetRequest')
    GetSqlInjectionMatchSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetSqlInjectionMatchSetResponse', name: 'GetSqlInjectionMatchSetResponse')
    GetWebACLForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetWebACLForResourceRequest', name: 'GetWebACLForResourceRequest')
    GetWebACLForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetWebACLForResourceResponse', name: 'GetWebACLForResourceResponse')
    GetWebACLRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetWebACLRequest', name: 'GetWebACLRequest')
    GetWebACLResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetWebACLResponse', name: 'GetWebACLResponse')
    GetXssMatchSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetXssMatchSetRequest', name: 'GetXssMatchSetRequest')
    GetXssMatchSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#GetXssMatchSetResponse', name: 'GetXssMatchSetResponse')
    HTTPHeader = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#HTTPHeader', name: 'HTTPHeader')
    HTTPHeaders = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#HTTPHeaders', name: 'HTTPHeaders')
    HTTPMethod = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wafregional#HTTPMethod', name: 'HTTPMethod')
    HTTPRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#HTTPRequest', name: 'HTTPRequest')
    HTTPVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wafregional#HTTPVersion', name: 'HTTPVersion')
    HeaderName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wafregional#HeaderName', name: 'HeaderName')
    HeaderValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wafregional#HeaderValue', name: 'HeaderValue')
    IPSet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#IPSet', name: 'IPSet')
    IPSetDescriptor = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#IPSetDescriptor', name: 'IPSetDescriptor')
    IPSetDescriptorType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wafregional#IPSetDescriptorType', name: 'IPSetDescriptorType')
    IPSetDescriptorValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wafregional#IPSetDescriptorValue', name: 'IPSetDescriptorValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "\\S"})
    IPSetDescriptors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#IPSetDescriptors', name: 'IPSetDescriptors')
    IPSetSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#IPSetSummaries', name: 'IPSetSummaries')
    IPSetSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#IPSetSummary', name: 'IPSetSummary')
    IPSetUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#IPSetUpdate', name: 'IPSetUpdate')
    IPSetUpdates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#IPSetUpdates', name: 'IPSetUpdates', traits: {"smithy.api#length" => {"min" => 1}})
    IPString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wafregional#IPString', name: 'IPString')
    IgnoreUnsupportedType = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.wafregional#IgnoreUnsupportedType', name: 'IgnoreUnsupportedType')
    ListActivatedRulesInRuleGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListActivatedRulesInRuleGroupRequest', name: 'ListActivatedRulesInRuleGroupRequest')
    ListActivatedRulesInRuleGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListActivatedRulesInRuleGroupResponse', name: 'ListActivatedRulesInRuleGroupResponse')
    ListByteMatchSetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListByteMatchSetsRequest', name: 'ListByteMatchSetsRequest')
    ListByteMatchSetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListByteMatchSetsResponse', name: 'ListByteMatchSetsResponse')
    ListGeoMatchSetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListGeoMatchSetsRequest', name: 'ListGeoMatchSetsRequest')
    ListGeoMatchSetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListGeoMatchSetsResponse', name: 'ListGeoMatchSetsResponse')
    ListIPSetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListIPSetsRequest', name: 'ListIPSetsRequest')
    ListIPSetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListIPSetsResponse', name: 'ListIPSetsResponse')
    ListLoggingConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListLoggingConfigurationsRequest', name: 'ListLoggingConfigurationsRequest')
    ListLoggingConfigurationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListLoggingConfigurationsResponse', name: 'ListLoggingConfigurationsResponse')
    ListRateBasedRulesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListRateBasedRulesRequest', name: 'ListRateBasedRulesRequest')
    ListRateBasedRulesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListRateBasedRulesResponse', name: 'ListRateBasedRulesResponse')
    ListRegexMatchSetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListRegexMatchSetsRequest', name: 'ListRegexMatchSetsRequest')
    ListRegexMatchSetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListRegexMatchSetsResponse', name: 'ListRegexMatchSetsResponse')
    ListRegexPatternSetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListRegexPatternSetsRequest', name: 'ListRegexPatternSetsRequest')
    ListRegexPatternSetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListRegexPatternSetsResponse', name: 'ListRegexPatternSetsResponse')
    ListResourcesForWebACLRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListResourcesForWebACLRequest', name: 'ListResourcesForWebACLRequest')
    ListResourcesForWebACLResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListResourcesForWebACLResponse', name: 'ListResourcesForWebACLResponse')
    ListRuleGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListRuleGroupsRequest', name: 'ListRuleGroupsRequest')
    ListRuleGroupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListRuleGroupsResponse', name: 'ListRuleGroupsResponse')
    ListRulesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListRulesRequest', name: 'ListRulesRequest')
    ListRulesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListRulesResponse', name: 'ListRulesResponse')
    ListSizeConstraintSetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListSizeConstraintSetsRequest', name: 'ListSizeConstraintSetsRequest')
    ListSizeConstraintSetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListSizeConstraintSetsResponse', name: 'ListSizeConstraintSetsResponse')
    ListSqlInjectionMatchSetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListSqlInjectionMatchSetsRequest', name: 'ListSqlInjectionMatchSetsRequest')
    ListSqlInjectionMatchSetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListSqlInjectionMatchSetsResponse', name: 'ListSqlInjectionMatchSetsResponse')
    ListSubscribedRuleGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListSubscribedRuleGroupsRequest', name: 'ListSubscribedRuleGroupsRequest')
    ListSubscribedRuleGroupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListSubscribedRuleGroupsResponse', name: 'ListSubscribedRuleGroupsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListWebACLsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListWebACLsRequest', name: 'ListWebACLsRequest')
    ListWebACLsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListWebACLsResponse', name: 'ListWebACLsResponse')
    ListXssMatchSetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListXssMatchSetsRequest', name: 'ListXssMatchSetsRequest')
    ListXssMatchSetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#ListXssMatchSetsResponse', name: 'ListXssMatchSetsResponse')
    LogDestinationConfigs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#LogDestinationConfigs', name: 'LogDestinationConfigs', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    LoggingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#LoggingConfiguration', name: 'LoggingConfiguration')
    LoggingConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#LoggingConfigurations', name: 'LoggingConfigurations')
    ManagedKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wafregional#ManagedKey', name: 'ManagedKey')
    ManagedKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#ManagedKeys', name: 'ManagedKeys')
    MatchFieldData = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wafregional#MatchFieldData', name: 'MatchFieldData', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    MatchFieldType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wafregional#MatchFieldType', name: 'MatchFieldType')
    MetricName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wafregional#MetricName', name: 'MetricName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    MigrationErrorType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wafregional#MigrationErrorType', name: 'MigrationErrorType')
    Negated = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.wafregional#Negated', name: 'Negated')
    NextMarker = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wafregional#NextMarker', name: 'NextMarker', traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => "\\S"})
    PaginationLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wafregional#PaginationLimit', name: 'PaginationLimit', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    ParameterExceptionField = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wafregional#ParameterExceptionField', name: 'ParameterExceptionField')
    ParameterExceptionParameter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wafregional#ParameterExceptionParameter', name: 'ParameterExceptionParameter', traits: {"smithy.api#length" => {"min" => 1}})
    ParameterExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wafregional#ParameterExceptionReason', name: 'ParameterExceptionReason')
    PolicyString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wafregional#PolicyString', name: 'PolicyString', traits: {"smithy.api#length" => {"min" => 1, "max" => 395000}, "smithy.api#pattern" => "\\S"})
    PopulationSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wafregional#PopulationSize', name: 'PopulationSize', traits: {"smithy.api#default" => 0})
    PositionalConstraint = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wafregional#PositionalConstraint', name: 'PositionalConstraint')
    Predicate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#Predicate', name: 'Predicate')
    PredicateType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wafregional#PredicateType', name: 'PredicateType')
    Predicates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#Predicates', name: 'Predicates')
    PutLoggingConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#PutLoggingConfigurationRequest', name: 'PutLoggingConfigurationRequest')
    PutLoggingConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#PutLoggingConfigurationResponse', name: 'PutLoggingConfigurationResponse')
    PutPermissionPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#PutPermissionPolicyRequest', name: 'PutPermissionPolicyRequest')
    PutPermissionPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#PutPermissionPolicyResponse', name: 'PutPermissionPolicyResponse')
    RateBasedRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#RateBasedRule', name: 'RateBasedRule')
    RateKey = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wafregional#RateKey', name: 'RateKey')
    RateLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wafregional#RateLimit', name: 'RateLimit', traits: {"smithy.api#range" => {"min" => 100, "max" => 2000000000}})
    RedactedFields = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#RedactedFields', name: 'RedactedFields')
    RegexMatchSet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#RegexMatchSet', name: 'RegexMatchSet')
    RegexMatchSetSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#RegexMatchSetSummaries', name: 'RegexMatchSetSummaries')
    RegexMatchSetSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#RegexMatchSetSummary', name: 'RegexMatchSetSummary')
    RegexMatchSetUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#RegexMatchSetUpdate', name: 'RegexMatchSetUpdate')
    RegexMatchSetUpdates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#RegexMatchSetUpdates', name: 'RegexMatchSetUpdates', traits: {"smithy.api#length" => {"min" => 1}})
    RegexMatchTuple = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#RegexMatchTuple', name: 'RegexMatchTuple')
    RegexMatchTuples = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#RegexMatchTuples', name: 'RegexMatchTuples')
    RegexPatternSet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#RegexPatternSet', name: 'RegexPatternSet')
    RegexPatternSetSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#RegexPatternSetSummaries', name: 'RegexPatternSetSummaries')
    RegexPatternSetSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#RegexPatternSetSummary', name: 'RegexPatternSetSummary')
    RegexPatternSetUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#RegexPatternSetUpdate', name: 'RegexPatternSetUpdate')
    RegexPatternSetUpdates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#RegexPatternSetUpdates', name: 'RegexPatternSetUpdates', traits: {"smithy.api#length" => {"min" => 1}})
    RegexPatternString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wafregional#RegexPatternString', name: 'RegexPatternString', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => ".*"})
    RegexPatternStrings = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#RegexPatternStrings', name: 'RegexPatternStrings', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wafregional#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => "\\S"})
    ResourceArns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#ResourceArns', name: 'ResourceArns')
    ResourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wafregional#ResourceId', name: 'ResourceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    ResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wafregional#ResourceName', name: 'ResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    ResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wafregional#ResourceType', name: 'ResourceType')
    Rule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#Rule', name: 'Rule')
    RuleGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#RuleGroup', name: 'RuleGroup')
    RuleGroupSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#RuleGroupSummaries', name: 'RuleGroupSummaries')
    RuleGroupSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#RuleGroupSummary', name: 'RuleGroupSummary')
    RuleGroupUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#RuleGroupUpdate', name: 'RuleGroupUpdate')
    RuleGroupUpdates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#RuleGroupUpdates', name: 'RuleGroupUpdates', traits: {"smithy.api#length" => {"min" => 1}})
    RulePriority = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wafregional#RulePriority', name: 'RulePriority')
    RuleSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#RuleSummaries', name: 'RuleSummaries')
    RuleSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#RuleSummary', name: 'RuleSummary')
    RuleUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#RuleUpdate', name: 'RuleUpdate')
    RuleUpdates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#RuleUpdates', name: 'RuleUpdates')
    S3BucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wafregional#S3BucketName', name: 'S3BucketName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^aws-waf-migration-[0-9A-Za-z\\.\\-_]*$"})
    S3ObjectUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wafregional#S3ObjectUrl', name: 'S3ObjectUrl', traits: {"smithy.api#length" => {"min" => 1}})
    SampleWeight = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wafregional#SampleWeight', name: 'SampleWeight', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    SampledHTTPRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#SampledHTTPRequest', name: 'SampledHTTPRequest')
    SampledHTTPRequests = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#SampledHTTPRequests', name: 'SampledHTTPRequests')
    Size = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wafregional#Size', name: 'Size', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 21474836480}})
    SizeConstraint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#SizeConstraint', name: 'SizeConstraint')
    SizeConstraintSet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#SizeConstraintSet', name: 'SizeConstraintSet')
    SizeConstraintSetSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#SizeConstraintSetSummaries', name: 'SizeConstraintSetSummaries')
    SizeConstraintSetSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#SizeConstraintSetSummary', name: 'SizeConstraintSetSummary')
    SizeConstraintSetUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#SizeConstraintSetUpdate', name: 'SizeConstraintSetUpdate')
    SizeConstraintSetUpdates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#SizeConstraintSetUpdates', name: 'SizeConstraintSetUpdates', traits: {"smithy.api#length" => {"min" => 1}})
    SizeConstraints = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#SizeConstraints', name: 'SizeConstraints')
    SqlInjectionMatchSet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#SqlInjectionMatchSet', name: 'SqlInjectionMatchSet')
    SqlInjectionMatchSetSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#SqlInjectionMatchSetSummaries', name: 'SqlInjectionMatchSetSummaries')
    SqlInjectionMatchSetSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#SqlInjectionMatchSetSummary', name: 'SqlInjectionMatchSetSummary')
    SqlInjectionMatchSetUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#SqlInjectionMatchSetUpdate', name: 'SqlInjectionMatchSetUpdate')
    SqlInjectionMatchSetUpdates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#SqlInjectionMatchSetUpdates', name: 'SqlInjectionMatchSetUpdates', traits: {"smithy.api#length" => {"min" => 1}})
    SqlInjectionMatchTuple = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#SqlInjectionMatchTuple', name: 'SqlInjectionMatchTuple')
    SqlInjectionMatchTuples = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#SqlInjectionMatchTuples', name: 'SqlInjectionMatchTuples')
    SubscribedRuleGroupSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#SubscribedRuleGroupSummaries', name: 'SubscribedRuleGroupSummaries')
    SubscribedRuleGroupSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#SubscribedRuleGroupSummary', name: 'SubscribedRuleGroupSummary')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#Tag', name: 'Tag')
    TagInfoForResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#TagInfoForResource', name: 'TagInfoForResource')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wafregional#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 1}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wafregional#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => ".*"})
    TextTransformation = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wafregional#TextTransformation', name: 'TextTransformation')
    TimeWindow = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#TimeWindow', name: 'TimeWindow')
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.wafregional#Timestamp', name: 'Timestamp')
    URIString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wafregional#URIString', name: 'URIString')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateByteMatchSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#UpdateByteMatchSetRequest', name: 'UpdateByteMatchSetRequest')
    UpdateByteMatchSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#UpdateByteMatchSetResponse', name: 'UpdateByteMatchSetResponse')
    UpdateGeoMatchSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#UpdateGeoMatchSetRequest', name: 'UpdateGeoMatchSetRequest')
    UpdateGeoMatchSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#UpdateGeoMatchSetResponse', name: 'UpdateGeoMatchSetResponse')
    UpdateIPSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#UpdateIPSetRequest', name: 'UpdateIPSetRequest')
    UpdateIPSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#UpdateIPSetResponse', name: 'UpdateIPSetResponse')
    UpdateRateBasedRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#UpdateRateBasedRuleRequest', name: 'UpdateRateBasedRuleRequest')
    UpdateRateBasedRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#UpdateRateBasedRuleResponse', name: 'UpdateRateBasedRuleResponse')
    UpdateRegexMatchSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#UpdateRegexMatchSetRequest', name: 'UpdateRegexMatchSetRequest')
    UpdateRegexMatchSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#UpdateRegexMatchSetResponse', name: 'UpdateRegexMatchSetResponse')
    UpdateRegexPatternSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#UpdateRegexPatternSetRequest', name: 'UpdateRegexPatternSetRequest')
    UpdateRegexPatternSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#UpdateRegexPatternSetResponse', name: 'UpdateRegexPatternSetResponse')
    UpdateRuleGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#UpdateRuleGroupRequest', name: 'UpdateRuleGroupRequest')
    UpdateRuleGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#UpdateRuleGroupResponse', name: 'UpdateRuleGroupResponse')
    UpdateRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#UpdateRuleRequest', name: 'UpdateRuleRequest')
    UpdateRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#UpdateRuleResponse', name: 'UpdateRuleResponse')
    UpdateSizeConstraintSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#UpdateSizeConstraintSetRequest', name: 'UpdateSizeConstraintSetRequest')
    UpdateSizeConstraintSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#UpdateSizeConstraintSetResponse', name: 'UpdateSizeConstraintSetResponse')
    UpdateSqlInjectionMatchSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#UpdateSqlInjectionMatchSetRequest', name: 'UpdateSqlInjectionMatchSetRequest')
    UpdateSqlInjectionMatchSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#UpdateSqlInjectionMatchSetResponse', name: 'UpdateSqlInjectionMatchSetResponse')
    UpdateWebACLRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#UpdateWebACLRequest', name: 'UpdateWebACLRequest')
    UpdateWebACLResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#UpdateWebACLResponse', name: 'UpdateWebACLResponse')
    UpdateXssMatchSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#UpdateXssMatchSetRequest', name: 'UpdateXssMatchSetRequest')
    UpdateXssMatchSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#UpdateXssMatchSetResponse', name: 'UpdateXssMatchSetResponse')
    WAFBadRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#WAFBadRequestException', name: 'WAFBadRequestException', traits: {"smithy.api#error" => "client"})
    WAFDisallowedNameException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#WAFDisallowedNameException', name: 'WAFDisallowedNameException', traits: {"smithy.api#error" => "client"})
    WAFEntityMigrationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#WAFEntityMigrationException', name: 'WAFEntityMigrationException', traits: {"smithy.api#error" => "client"})
    WAFInternalErrorException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#WAFInternalErrorException', name: 'WAFInternalErrorException', traits: {"smithy.api#error" => "server"})
    WAFInvalidAccountException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#WAFInvalidAccountException', name: 'WAFInvalidAccountException', traits: {"smithy.api#error" => "client"})
    WAFInvalidOperationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#WAFInvalidOperationException', name: 'WAFInvalidOperationException', traits: {"smithy.api#error" => "client"})
    WAFInvalidParameterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#WAFInvalidParameterException', name: 'WAFInvalidParameterException', traits: {"smithy.api#error" => "client"})
    WAFInvalidPermissionPolicyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#WAFInvalidPermissionPolicyException', name: 'WAFInvalidPermissionPolicyException', traits: {"smithy.api#error" => "client"})
    WAFInvalidRegexPatternException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#WAFInvalidRegexPatternException', name: 'WAFInvalidRegexPatternException', traits: {"smithy.api#error" => "client"})
    WAFLimitsExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#WAFLimitsExceededException', name: 'WAFLimitsExceededException', traits: {"smithy.api#error" => "client"})
    WAFNonEmptyEntityException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#WAFNonEmptyEntityException', name: 'WAFNonEmptyEntityException', traits: {"smithy.api#error" => "client"})
    WAFNonexistentContainerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#WAFNonexistentContainerException', name: 'WAFNonexistentContainerException', traits: {"smithy.api#error" => "client"})
    WAFNonexistentItemException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#WAFNonexistentItemException', name: 'WAFNonexistentItemException', traits: {"smithy.api#error" => "client"})
    WAFReferencedItemException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#WAFReferencedItemException', name: 'WAFReferencedItemException', traits: {"smithy.api#error" => "client"})
    WAFServiceLinkedRoleErrorException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#WAFServiceLinkedRoleErrorException', name: 'WAFServiceLinkedRoleErrorException', traits: {"smithy.api#error" => "client"})
    WAFStaleDataException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#WAFStaleDataException', name: 'WAFStaleDataException', traits: {"smithy.api#error" => "client"})
    WAFSubscriptionNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#WAFSubscriptionNotFoundException', name: 'WAFSubscriptionNotFoundException', traits: {"smithy.api#error" => "client"})
    WAFTagOperationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#WAFTagOperationException', name: 'WAFTagOperationException', traits: {"smithy.api#error" => "client"})
    WAFTagOperationInternalErrorException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#WAFTagOperationInternalErrorException', name: 'WAFTagOperationInternalErrorException', traits: {"smithy.api#error" => "server"})
    WAFUnavailableEntityException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#WAFUnavailableEntityException', name: 'WAFUnavailableEntityException', traits: {"smithy.api#error" => "client"})
    WafAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#WafAction', name: 'WafAction')
    WafActionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wafregional#WafActionType', name: 'WafActionType')
    WafOverrideAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#WafOverrideAction', name: 'WafOverrideAction')
    WafOverrideActionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wafregional#WafOverrideActionType', name: 'WafOverrideActionType')
    WafRuleType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wafregional#WafRuleType', name: 'WafRuleType')
    WebACL = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#WebACL', name: 'WebACL')
    WebACLSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#WebACLSummaries', name: 'WebACLSummaries')
    WebACLSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#WebACLSummary', name: 'WebACLSummary')
    WebACLUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#WebACLUpdate', name: 'WebACLUpdate')
    WebACLUpdates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#WebACLUpdates', name: 'WebACLUpdates')
    XssMatchSet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#XssMatchSet', name: 'XssMatchSet')
    XssMatchSetSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#XssMatchSetSummaries', name: 'XssMatchSetSummaries')
    XssMatchSetSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#XssMatchSetSummary', name: 'XssMatchSetSummary')
    XssMatchSetUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#XssMatchSetUpdate', name: 'XssMatchSetUpdate')
    XssMatchSetUpdates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#XssMatchSetUpdates', name: 'XssMatchSetUpdates', traits: {"smithy.api#length" => {"min" => 1}})
    XssMatchTuple = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wafregional#XssMatchTuple', name: 'XssMatchTuple')
    XssMatchTuples = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wafregional#XssMatchTuples', name: 'XssMatchTuples')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wafregional#errorMessage', name: 'ErrorMessage')

    ActivatedRule.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: RulePriority, location_name: 'Priority', traits: {"smithy.api#documentation" => "<p>Specifies the order in which the <code>Rules</code> in a <code>WebACL</code> are evaluated. Rules with a lower value for \n\t\t\t<code>Priority</code> are evaluated before <code>Rules</code> with a higher value. The value must be a unique integer. If you add multiple \n\t\t\t<code>Rules</code> to a <code>WebACL</code>, the values don't need to be consecutive.</p>", "smithy.api#required" => {}}))
    ActivatedRule.add_member(:rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RuleId', traits: {"smithy.api#documentation" => "<p>The <code>RuleId</code> for a <code>Rule</code>. You use <code>RuleId</code> to get more information about a <code>Rule</code> (see <a>GetRule</a>), \n\t\t\tupdate a <code>Rule</code> (see <a>UpdateRule</a>), insert a <code>Rule</code> into a <code>WebACL</code> or delete a \n\t\t\tone from a <code>WebACL</code> (see <a>UpdateWebACL</a>), or delete a <code>Rule</code> from AWS WAF (see <a>DeleteRule</a>).</p>\n\t\t       <p>\n            <code>RuleId</code> is returned by <a>CreateRule</a> and by <a>ListRules</a>.</p>", "smithy.api#required" => {}}))
    ActivatedRule.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: WafAction, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>Specifies the action that CloudFront or AWS WAF takes when a web request matches the conditions in the <code>Rule</code>.   \n\t\t\tValid values for <code>Action</code> include the following:</p>\n\t\t\t      <ul>\n            <li>\n               <p>\n                  <code>ALLOW</code>: CloudFront responds with the requested object.</p>\n            </li>\n            <li>\n               <p>\n                  <code>BLOCK</code>: CloudFront responds with an HTTP 403 (Forbidden) status code.</p>\n            </li>\n            <li>\n               <p>\n                  <code>COUNT</code>: AWS WAF increments a counter of requests that match the conditions in the rule and then continues to \n\t\t\t\t\tinspect the web request based on the remaining rules in the web ACL. </p>\n            </li>\n         </ul>\n\t        <p>\n            <code>ActivatedRule|OverrideAction</code> applies only when updating or adding a\n            <code>RuleGroup</code> to a <code>WebACL</code>. In this\n         case,\n         you do not use <code>ActivatedRule|Action</code>. For all other update requests,\n            <code>ActivatedRule|Action</code> is used instead of\n            <code>ActivatedRule|OverrideAction</code>.</p>"}))
    ActivatedRule.add_member(:override_action, Smithy::Schema::Shapes::ShapeRef.new(shape: WafOverrideAction, location_name: 'OverrideAction', traits: {"smithy.api#documentation" => "<p>Use the <code>OverrideAction</code> to test your <code>RuleGroup</code>.</p>\n         <p>Any rule in a <code>RuleGroup</code> can potentially block a request. If you set the <code>OverrideAction</code> to <code>None</code>, the <code>RuleGroup</code> will block a request if any individual rule in the <code>RuleGroup</code> matches the request and is configured to block that request. However if you first want to test the <code>RuleGroup</code>, set the  <code>OverrideAction</code> to <code>Count</code>. The <code>RuleGroup</code> will then override any block action specified by individual rules contained within the group. Instead of blocking matching requests, those requests will be counted. You can view a record of counted requests using  <a>GetSampledRequests</a>. </p>\n\t        <p>\n            <code>ActivatedRule|OverrideAction</code> applies only when updating or adding a <code>RuleGroup</code> to a <code>WebACL</code>. In this case you do not use <code>ActivatedRule|Action</code>.  For all other update requests, <code>ActivatedRule|Action</code> is used instead of <code>ActivatedRule|OverrideAction</code>.</p>"}))
    ActivatedRule.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: WafRuleType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The rule type, either <code>REGULAR</code>, as defined by <a>Rule</a>, <code>RATE_BASED</code>, as defined by <a>RateBasedRule</a>, or <code>GROUP</code>, as defined by <a>RuleGroup</a>. The default is REGULAR. Although this field is optional, be aware that if you try to add a RATE_BASED rule to a web ACL without setting the type, the  <a>UpdateWebACL</a> request will fail because the request tries to add a REGULAR rule with the specified ID, which does not exist. \t\t\n\t\t\t</p>"}))
    ActivatedRule.add_member(:excluded_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: ExcludedRules, location_name: 'ExcludedRules', traits: {"smithy.api#documentation" => "<p>An array of rules to exclude from a rule group. This is applicable only when the <code>ActivatedRule</code> refers to a <code>RuleGroup</code>.</p>\n         <p>Sometimes it is necessary to troubleshoot rule groups that are blocking traffic\n         unexpectedly (false positives). One troubleshooting technique is to identify the specific\n         rule within the rule group that is blocking the legitimate traffic and then disable\n         (exclude) that particular rule. You can exclude rules from both your own rule groups and\n         AWS Marketplace rule groups that have been associated with a web ACL.</p>\n         <p>Specifying <code>ExcludedRules</code> does not remove those rules from the rule group.\n         Rather, it changes the action for the rules to <code>COUNT</code>. Therefore, requests that\n         match an <code>ExcludedRule</code> are counted but not blocked. The <code>RuleGroup</code>\n         owner will receive COUNT metrics for each <code>ExcludedRule</code>.</p>\n         <p>If you want to exclude rules from a rule group that is already associated with a web ACL, perform the following steps:</p>\n         <ol>\n            <li>\n               <p>Use the AWS WAF logs to identify the IDs of the rules that you want to exclude.\n               For more information about the logs, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/logging.html\">Logging Web ACL Traffic\n                  Information</a>.</p>\n            </li>\n            <li>\n               <p>Submit an <a>UpdateWebACL</a> request that has two actions:</p>\n               <ul>\n                  <li>\n                     <p>The first action\n                     deletes\n                     the existing rule group from the web ACL. That is, in the <a>UpdateWebACL</a> request, the first <code>Updates:Action</code>\n                     should be <code>DELETE</code> and <code>Updates:ActivatedRule:RuleId</code>\n                     should be the rule group that contains the rules that you want to\n                     exclude.</p>\n                  </li>\n                  <li>\n                     <p>The second action\n                     inserts\n                     the same rule group back in, but specifying the rules to exclude. That is, the\n                     second <code>Updates:Action</code> should be <code>INSERT</code>,\n                        <code>Updates:ActivatedRule:RuleId</code> should be the rule group that you\n                     just removed, and <code>ExcludedRules</code> should contain the rules that you\n                     want to exclude.</p>\n                  </li>\n               </ul>\n          \n            </li>\n         </ol>"}))
    ActivatedRule.type = Types::ActivatedRule
    ActivatedRules.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ActivatedRule)
    AssociateWebACLRequest.add_member(:web_acl_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'WebACLId', traits: {"smithy.api#documentation" => "<p>A unique identifier (ID) for the web ACL. </p>", "smithy.api#required" => {}}))
    AssociateWebACLRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) of the resource to be protected, either an application load balancer or Amazon API Gateway stage.  </p>\n         <p>The ARN should be in one of the following formats:</p>\n         <ul>\n            <li>\n               <p>For an Application Load Balancer: <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/app/<i>load-balancer-name</i>/<i>load-balancer-id</i>\n                  </code>\n               </p>\n            </li>\n            <li>\n               <p>For an Amazon API Gateway stage: <code>arn:aws:apigateway:<i>region</i>::/restapis/<i>api-id</i>/stages/<i>stage-name</i>\n                  </code>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    AssociateWebACLRequest.type = Types::AssociateWebACLRequest
    AssociateWebACLResponse.type = Types::AssociateWebACLResponse
    ByteMatchSet.add_member(:byte_match_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ByteMatchSetId', traits: {"smithy.api#documentation" => "<p>The <code>ByteMatchSetId</code> for a <code>ByteMatchSet</code>. You use <code>ByteMatchSetId</code> to get information about a \n\t\t\t<code>ByteMatchSet</code> (see <a>GetByteMatchSet</a>), update a <code>ByteMatchSet</code> (see <a>UpdateByteMatchSet</a>), \n\t\t\tinsert a <code>ByteMatchSet</code> into a <code>Rule</code> or delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and  \n\t\t\tdelete a <code>ByteMatchSet</code> from AWS WAF (see <a>DeleteByteMatchSet</a>).</p>\n\t\t       <p>\n            <code>ByteMatchSetId</code> is returned by <a>CreateByteMatchSet</a> and by <a>ListByteMatchSets</a>.</p>", "smithy.api#required" => {}}))
    ByteMatchSet.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name or description of the <a>ByteMatchSet</a>. You can't change <code>Name</code> after you create a <code>ByteMatchSet</code>.</p>"}))
    ByteMatchSet.add_member(:byte_match_tuples, Smithy::Schema::Shapes::ShapeRef.new(shape: ByteMatchTuples, location_name: 'ByteMatchTuples', traits: {"smithy.api#documentation" => "<p>Specifies the bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings.</p>", "smithy.api#required" => {}}))
    ByteMatchSet.type = Types::ByteMatchSet
    ByteMatchSetSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ByteMatchSetSummary)
    ByteMatchSetSummary.add_member(:byte_match_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ByteMatchSetId', traits: {"smithy.api#documentation" => "<p>The <code>ByteMatchSetId</code> for a <code>ByteMatchSet</code>. You use <code>ByteMatchSetId</code> to get information about a <code>ByteMatchSet</code>,\n\t\t\tupdate a <code>ByteMatchSet</code>, remove a <code>ByteMatchSet</code> from a <code>Rule</code>, and delete a <code>ByteMatchSet</code> from AWS WAF.</p>\n\t\t       <p>\n            <code>ByteMatchSetId</code> is returned by <a>CreateByteMatchSet</a> and by <a>ListByteMatchSets</a>.</p>", "smithy.api#required" => {}}))
    ByteMatchSetSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name or description of the <a>ByteMatchSet</a>. You can't change <code>Name</code> after you create a <code>ByteMatchSet</code>.</p>", "smithy.api#required" => {}}))
    ByteMatchSetSummary.type = Types::ByteMatchSetSummary
    ByteMatchSetUpdate.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeAction, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>Specifies whether to insert or delete a <a>ByteMatchTuple</a>.</p>", "smithy.api#required" => {}}))
    ByteMatchSetUpdate.add_member(:byte_match_tuple, Smithy::Schema::Shapes::ShapeRef.new(shape: ByteMatchTuple, location_name: 'ByteMatchTuple', traits: {"smithy.api#documentation" => "<p>Information about the part of a web request that you want AWS WAF to inspect and the value that you want AWS WAF to search for.\n\t\t\tIf you specify <code>DELETE</code> for the value of <code>Action</code>, the <code>ByteMatchTuple</code> values must \n\t\t\texactly match the values in the <code>ByteMatchTuple</code> that you want to delete from the <code>ByteMatchSet</code>.</p>", "smithy.api#required" => {}}))
    ByteMatchSetUpdate.type = Types::ByteMatchSetUpdate
    ByteMatchSetUpdates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ByteMatchSetUpdate)
    ByteMatchTuple.add_member(:field_to_match, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldToMatch, location_name: 'FieldToMatch', traits: {"smithy.api#documentation" => "<p>The part of a web request that you want AWS WAF to search, such as a specified header or a query string. For more information, see \n\t\t\t<a>FieldToMatch</a>.</p>", "smithy.api#required" => {}}))
    ByteMatchTuple.add_member(:target_string, Smithy::Schema::Shapes::ShapeRef.new(shape: ByteMatchTargetString, location_name: 'TargetString', traits: {"smithy.api#documentation" => "<p>The value that you want AWS WAF to search for. AWS WAF searches for the specified string in the part of web requests that you \n\t\t\tspecified in <code>FieldToMatch</code>. The maximum length of the value is 50 bytes.</p>\n\t\t       <p>Valid values depend on the values that you specified for <code>FieldToMatch</code>:</p>\t\t\n\t\t       <ul>\n            <li>\n               <p>\n                  <code>HEADER</code>: The value that you want AWS WAF to search for in the request header that you specified in \n\t\t\t\t<a>FieldToMatch</a>, for example, the value of the <code>User-Agent</code> or <code>Referer</code> header.</p>\n            </li>\n            <li>\n               <p>\n                  <code>METHOD</code>: The HTTP method, which indicates the type of operation specified in the request. \n\t\t\t\tCloudFront supports the following methods: <code>DELETE</code>, <code>GET</code>, <code>HEAD</code>, <code>OPTIONS</code>, \n\t\t\t\t<code>PATCH</code>, <code>POST</code>, and <code>PUT</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>QUERY_STRING</code>: The value that you want AWS WAF to search for in the query string, which is the part \n\t\t\t\tof a URL that appears after a <code>?</code> character.</p>\n            </li>\n            <li>\n               <p>\n                  <code>URI</code>: The value that you want AWS WAF to search for in the part of a URL that identifies a resource, \n\t\t\t\tfor example, <code>/images/daily-ad.jpg</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>BODY</code>: The part of a request that contains any additional data that you want to send to your web server \n\t\t\t\tas the HTTP request body, such as data from a form. The request body immediately follows the request headers. \n\t\t\t\tNote that only the first <code>8192</code> bytes of the request body are forwarded to AWS WAF for inspection. \n\t\t\t\tTo allow or block requests based on the length of the body, you can create a size constraint set. \n\t\t\t\tFor more information, see <a>CreateSizeConstraintSet</a>. </p>\n            </li>\n            <li>\n\t\t             <p>\n\t\t                <code>SINGLE_QUERY_ARG</code>: The parameter in the query string that you will inspect, such as <i>UserName</i> or <i>SalesRegion</i>. The maximum length for <code>SINGLE_QUERY_ARG</code> is 30 characters.</p>\n\t\t          </li>\n            <li>\n\t\t             <p>\n                  <code>ALL_QUERY_ARGS</code>: Similar to <code>SINGLE_QUERY_ARG</code>, but instead of\n               inspecting a single parameter, AWS WAF inspects all parameters within the query\n               string for the value or regex pattern that you specify in\n               <code>TargetString</code>.</p>\n\t\t          </li>\n         </ul>\n\t\t\n\t\t       <p>If <code>TargetString</code> includes alphabetic characters A-Z and a-z, note that the value is case sensitive.</p>\n\t\t       <p>\n            <b>If you're using the AWS WAF API</b>\n         </p>\n\t\t       <p>Specify a base64-encoded version of the value. The maximum length of the value before you base64-encode it is 50 bytes.</p>\n\t\t       <p>For example, suppose the value of <code>Type</code> is <code>HEADER</code> and the\n         value of <code>Data</code> is <code>User-Agent</code>. If you want to search the\n            <code>User-Agent</code> header for the value <code>BadBot</code>, you base64-encode\n            <code>BadBot</code> using MIME\n         base64-encoding\n         and include the resulting value, <code>QmFkQm90</code>, in the value of\n            <code>TargetString</code>.</p>\n\t\t       <p>\n            <b>If you're using the AWS CLI or one of the AWS SDKs</b>\n         </p>\n\t\t       <p>The value that you want AWS WAF to search for. The SDK automatically base64 encodes the value.</p>", "smithy.api#required" => {}}))
    ByteMatchTuple.add_member(:text_transformation, Smithy::Schema::Shapes::ShapeRef.new(shape: TextTransformation, location_name: 'TextTransformation', traits: {"smithy.api#documentation" => "<p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF. \n\t\t\tIf you specify a transformation, AWS WAF performs the transformation on <code>FieldToMatch</code> before inspecting it for a match.</p>\n         <p>You can only specify a single type of TextTransformation.</p>\t\t\t\n\t\t       <p>\n            <b>CMD_LINE</b>\n         </p>\n\t\t       <p>When you're concerned that attackers are injecting an operating system command line\n         command and using unusual formatting to disguise some or all of the command, use this\n         option to perform the following transformations:</p>\n\t\t       <ul>\n            <li>\n               <p>Delete the following characters: \\ \" ' ^</p>\n            </li>\n            <li>\n               <p>Delete spaces before the following characters: / (</p>\n            </li>\n            <li>\n               <p>Replace the following characters with a space: , ;</p>\n            </li>\n            <li>\n               <p>Replace multiple spaces with one space</p>\n            </li>\n            <li>\n               <p>Convert uppercase letters (A-Z) to lowercase (a-z)</p>\n            </li>\n         </ul>\n\t\t\n\t\t       <p>\n            <b>COMPRESS_WHITE_SPACE</b>\n         </p>\n\t\t       <p>Use this option to replace the following characters with a space character (decimal 32):</p>\n\t\t       <ul>\n            <li>\n               <p>\\f, formfeed, decimal 12</p>\n            </li>\n            <li>\n               <p>\\t, tab, decimal 9</p>\n            </li>\n            <li>\n               <p>\\n, newline, decimal 10</p>\n            </li>\n            <li>\n               <p>\\r, carriage return, decimal 13</p>\n            </li>\n            <li>\n               <p>\\v, vertical tab, decimal 11</p>\n            </li>\n            <li>\n               <p>non-breaking space, decimal 160</p>\n            </li>\n         </ul>\n\t\t       <p>\n            <code>COMPRESS_WHITE_SPACE</code> also replaces multiple spaces with one space.</p>\t\t\n\t\t       <p>\n            <b>HTML_ENTITY_DECODE</b>\n         </p>\n\t\t       <p>Use this option to replace HTML-encoded characters with unencoded characters. <code>HTML_ENTITY_DECODE</code> performs \n\t\t\tthe following operations:</p>\n\t\t       <ul>\n            <li>\n               <p>Replaces <code>(ampersand)quot;</code> with <code>\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Replaces <code>(ampersand)nbsp;</code> with a non-breaking space, decimal 160</p>\n            </li>\n            <li>\n               <p>Replaces <code>(ampersand)lt;</code> with a \"less than\" symbol</p>\n            </li>\n            <li>\n               <p>Replaces <code>(ampersand)gt;</code> with <code>></code>\n               </p>\n            </li>\n            <li>\n               <p>Replaces characters that are represented in hexadecimal format, <code>(ampersand)#xhhhh;</code>, with the corresponding \n\t\t\t\tcharacters</p>\n            </li>\n            <li>\n               <p>Replaces characters that are represented in decimal format, <code>(ampersand)#nnnn;</code>, with the corresponding \n\t\t\t\tcharacters</p>\n            </li>\n         </ul>\t\t\n\t\t       <p>\n            <b>LOWERCASE</b>\n         </p>\n\t\t       <p>Use this option to convert uppercase letters (A-Z) to lowercase (a-z).</p>\t\t\n\t\t       <p>\n            <b>URL_DECODE</b>\n         </p>\n\t\t       <p>Use this option to decode a URL-encoded value.</p>\t\t\n\t\t       <p>\n            <b>NONE</b>\n         </p>\n\t\t       <p>Specify <code>NONE</code> if you don't want to perform any text transformations.</p>", "smithy.api#required" => {}}))
    ByteMatchTuple.add_member(:positional_constraint, Smithy::Schema::Shapes::ShapeRef.new(shape: PositionalConstraint, location_name: 'PositionalConstraint', traits: {"smithy.api#documentation" => "<p>Within the portion of a web request that you want to search (for example, in the query string, if any), specify where you want AWS WAF to search. Valid values include the following:</p>\n\t\t       <p>\n            <b>CONTAINS</b>\n         </p>\n\t\t       <p>The specified part of the web request must include the value of <code>TargetString</code>, but the location doesn't matter.</p>\t\t\n\t\t       <p>\n            <b>CONTAINS_WORD</b>\n         </p>\n\t\t       <p>The specified part of the web request must include the value of <code>TargetString</code>, and \n\t\t\t<code>TargetString</code> must contain only alphanumeric characters or underscore (A-Z, a-z, 0-9, or _). In addition, \n\t\t\t<code>TargetString</code> must be a word, which means one of the following:</p>\n\t\t\t      <ul>\n            <li>\n               <p>\n                  <code>TargetString</code> exactly matches the value of the specified part of the web request, such as the value of a \n\t\t\t\t\theader.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TargetString</code> is at the beginning of the specified part of the web request and is followed by a character \n\t\t\t\t\tother than an alphanumeric character or underscore (_), for example, <code>BadBot;</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TargetString</code> is at the end of the specified part of the web request and is preceded by a character \n\t\t\t\t\tother than an alphanumeric character or underscore (_), for example, <code>;BadBot</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TargetString</code> is in the middle of the specified part of the web request and is preceded and followed \n\t\t\t\t\tby characters other than alphanumeric characters or underscore (_), for example, <code>-BadBot;</code>.</p>\n            </li>\n         </ul>\n\t\t       <p>\n            <b>EXACTLY</b>\n         </p>\n\t\t       <p>The value of the specified part of the web request must exactly match the value of <code>TargetString</code>.</p>\n\t\t       <p>\n            <b>STARTS_WITH</b>\n         </p>\n\t\t       <p>The value of <code>TargetString</code> must appear at the beginning of the specified part of the web request.</p>\t\t\n\t\t       <p>\n            <b>ENDS_WITH</b>\n         </p>\n\t\t       <p>The value of <code>TargetString</code> must appear at the end of the specified part of the web request.</p>", "smithy.api#required" => {}}))
    ByteMatchTuple.type = Types::ByteMatchTuple
    ByteMatchTuples.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ByteMatchTuple)
    ChangeAction.add_member(:insert, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSERT', traits: {"smithy.api#enumValue" => "INSERT"}))
    ChangeAction.add_member(:delete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE', traits: {"smithy.api#enumValue" => "DELETE"}))
    ChangeTokenStatus.add_member(:provisioned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROVISIONED', traits: {"smithy.api#enumValue" => "PROVISIONED"}))
    ChangeTokenStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ChangeTokenStatus.add_member(:insync, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSYNC', traits: {"smithy.api#enumValue" => "INSYNC"}))
    ComparisonOperator.add_member(:eq, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQ', traits: {"smithy.api#enumValue" => "EQ"}))
    ComparisonOperator.add_member(:ne, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NE', traits: {"smithy.api#enumValue" => "NE"}))
    ComparisonOperator.add_member(:le, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LE', traits: {"smithy.api#enumValue" => "LE"}))
    ComparisonOperator.add_member(:lt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LT', traits: {"smithy.api#enumValue" => "LT"}))
    ComparisonOperator.add_member(:ge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GE', traits: {"smithy.api#enumValue" => "GE"}))
    ComparisonOperator.add_member(:gt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GT', traits: {"smithy.api#enumValue" => "GT"}))
    CreateByteMatchSetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name or description of the <a>ByteMatchSet</a>. You can't change <code>Name</code> after you create a \n\t\t\t<code>ByteMatchSet</code>.</p>", "smithy.api#required" => {}}))
    CreateByteMatchSetRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    CreateByteMatchSetRequest.type = Types::CreateByteMatchSetRequest
    CreateByteMatchSetResponse.add_member(:byte_match_set, Smithy::Schema::Shapes::ShapeRef.new(shape: ByteMatchSet, location_name: 'ByteMatchSet', traits: {"smithy.api#documentation" => "<p>A <a>ByteMatchSet</a> that contains no <code>ByteMatchTuple</code> objects.</p>"}))
    CreateByteMatchSetResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>CreateByteMatchSet</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    CreateByteMatchSetResponse.type = Types::CreateByteMatchSetResponse
    CreateGeoMatchSetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name or description of the <a>GeoMatchSet</a>. You can't change <code>Name</code> after you create the <code>GeoMatchSet</code>.</p>", "smithy.api#required" => {}}))
    CreateGeoMatchSetRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    CreateGeoMatchSetRequest.type = Types::CreateGeoMatchSetRequest
    CreateGeoMatchSetResponse.add_member(:geo_match_set, Smithy::Schema::Shapes::ShapeRef.new(shape: GeoMatchSet, location_name: 'GeoMatchSet', traits: {"smithy.api#documentation" => "<p>The <a>GeoMatchSet</a> returned in the <code>CreateGeoMatchSet</code> response. The <code>GeoMatchSet</code> contains no <code>GeoMatchConstraints</code>.</p>"}))
    CreateGeoMatchSetResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>CreateGeoMatchSet</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    CreateGeoMatchSetResponse.type = Types::CreateGeoMatchSetResponse
    CreateIPSetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name or description of the <a>IPSet</a>. You can't change <code>Name</code> after you create the <code>IPSet</code>.</p>", "smithy.api#required" => {}}))
    CreateIPSetRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    CreateIPSetRequest.type = Types::CreateIPSetRequest
    CreateIPSetResponse.add_member(:ip_set, Smithy::Schema::Shapes::ShapeRef.new(shape: IPSet, location_name: 'IPSet', traits: {"smithy.api#documentation" => "<p>The <a>IPSet</a> returned in the <code>CreateIPSet</code> response.</p>"}))
    CreateIPSetResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>CreateIPSet</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    CreateIPSetResponse.type = Types::CreateIPSetResponse
    CreateRateBasedRuleRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name or description of the <a>RateBasedRule</a>. You can't\n         change the name of a <code>RateBasedRule</code> after you create it.</p>", "smithy.api#required" => {}}))
    CreateRateBasedRuleRequest.add_member(:metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'MetricName', traits: {"smithy.api#documentation" => "<p>A friendly name or description for the metrics for this <code>RateBasedRule</code>.\n          The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain\n          whitespace or metric names reserved for AWS WAF, including \"All\" and \"Default_Action.\" You can't change the name of the metric after you create the\n            <code>RateBasedRule</code>.</p>", "smithy.api#required" => {}}))
    CreateRateBasedRuleRequest.add_member(:rate_key, Smithy::Schema::Shapes::ShapeRef.new(shape: RateKey, location_name: 'RateKey', traits: {"smithy.api#documentation" => "<p>The field that AWS WAF uses to determine if requests are likely arriving from a single\n         source and thus subject to rate monitoring. The only valid value for <code>RateKey</code>\n         is <code>IP</code>. <code>IP</code> indicates that requests that arrive from the same IP\n         address are subject to the <code>RateLimit</code> that is specified in\n         the <code>RateBasedRule</code>.</p>", "smithy.api#required" => {}}))
    CreateRateBasedRuleRequest.add_member(:rate_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimit, location_name: 'RateLimit', traits: {"smithy.api#documentation" => "<p>The maximum number of requests, which have an identical value in the field that is\n         specified by <code>RateKey</code>, allowed in a five-minute period. If the number of\n         requests exceeds the <code>RateLimit</code> and the other predicates specified in the rule\n         are also met, AWS WAF triggers the action that is specified for this rule.</p>", "smithy.api#required" => {}}))
    CreateRateBasedRuleRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the\n            <code>CreateRateBasedRule</code> request. You can also use this value to query the\n         status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>", "smithy.api#required" => {}}))
    CreateRateBasedRuleRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p></p>"}))
    CreateRateBasedRuleRequest.type = Types::CreateRateBasedRuleRequest
    CreateRateBasedRuleResponse.add_member(:rule, Smithy::Schema::Shapes::ShapeRef.new(shape: RateBasedRule, location_name: 'Rule', traits: {"smithy.api#documentation" => "<p>The <a>RateBasedRule</a>\n         that is returned in the <code>CreateRateBasedRule</code> response.</p>"}))
    CreateRateBasedRuleResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the\n            <code>CreateRateBasedRule</code> request. You can also use this value to query the\n         status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    CreateRateBasedRuleResponse.type = Types::CreateRateBasedRuleResponse
    CreateRegexMatchSetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name or description of the <a>RegexMatchSet</a>. You can't change <code>Name</code> after you create a \n\t\t\t<code>RegexMatchSet</code>.</p>", "smithy.api#required" => {}}))
    CreateRegexMatchSetRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    CreateRegexMatchSetRequest.type = Types::CreateRegexMatchSetRequest
    CreateRegexMatchSetResponse.add_member(:regex_match_set, Smithy::Schema::Shapes::ShapeRef.new(shape: RegexMatchSet, location_name: 'RegexMatchSet', traits: {"smithy.api#documentation" => "<p>A <a>RegexMatchSet</a> that contains no <code>RegexMatchTuple</code> objects.</p>"}))
    CreateRegexMatchSetResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>CreateRegexMatchSet</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    CreateRegexMatchSetResponse.type = Types::CreateRegexMatchSetResponse
    CreateRegexPatternSetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name or description of the <a>RegexPatternSet</a>. You can't change <code>Name</code> after you create a \n\t\t\t<code>RegexPatternSet</code>.</p>", "smithy.api#required" => {}}))
    CreateRegexPatternSetRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    CreateRegexPatternSetRequest.type = Types::CreateRegexPatternSetRequest
    CreateRegexPatternSetResponse.add_member(:regex_pattern_set, Smithy::Schema::Shapes::ShapeRef.new(shape: RegexPatternSet, location_name: 'RegexPatternSet', traits: {"smithy.api#documentation" => "<p>A <a>RegexPatternSet</a> that contains no objects.</p>"}))
    CreateRegexPatternSetResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>CreateRegexPatternSet</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    CreateRegexPatternSetResponse.type = Types::CreateRegexPatternSetResponse
    CreateRuleGroupRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name or description of the <a>RuleGroup</a>. You can't change <code>Name</code> after you create a \n         <code>RuleGroup</code>.</p>", "smithy.api#required" => {}}))
    CreateRuleGroupRequest.add_member(:metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'MetricName', traits: {"smithy.api#documentation" => "<p>A friendly name or description for the metrics for this <code>RuleGroup</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain\n         whitespace or metric names reserved for AWS WAF, including \"All\" and \"Default_Action.\" You can't change the name of the metric after you create the <code>RuleGroup</code>.</p>", "smithy.api#required" => {}}))
    CreateRuleGroupRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    CreateRuleGroupRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p></p>"}))
    CreateRuleGroupRequest.type = Types::CreateRuleGroupRequest
    CreateRuleGroupResponse.add_member(:rule_group, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroup, location_name: 'RuleGroup', traits: {"smithy.api#documentation" => "<p>An empty  <a>RuleGroup</a>.</p>"}))
    CreateRuleGroupResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>CreateRuleGroup</code> request. You can also use this value \n         to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    CreateRuleGroupResponse.type = Types::CreateRuleGroupResponse
    CreateRuleRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name or description of the <a>Rule</a>. You can't change the name of a <code>Rule</code> after you create it.</p>", "smithy.api#required" => {}}))
    CreateRuleRequest.add_member(:metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'MetricName', traits: {"smithy.api#documentation" => "<p>A friendly name or description for the metrics for this <code>Rule</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain\n\t        whitespace or metric names reserved for AWS WAF, including \"All\" and \"Default_Action.\" You can't change the name of the metric after you create the\n            <code>Rule</code>.</p>", "smithy.api#required" => {}}))
    CreateRuleRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    CreateRuleRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p></p>"}))
    CreateRuleRequest.type = Types::CreateRuleRequest
    CreateRuleResponse.add_member(:rule, Smithy::Schema::Shapes::ShapeRef.new(shape: Rule, location_name: 'Rule', traits: {"smithy.api#documentation" => "<p>The <a>Rule</a> returned in the <code>CreateRule</code> response.</p>"}))
    CreateRuleResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>CreateRule</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    CreateRuleResponse.type = Types::CreateRuleResponse
    CreateSizeConstraintSetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name or description of the <a>SizeConstraintSet</a>. You can't change <code>Name</code> after you create a \n\t\t\t<code>SizeConstraintSet</code>.</p>", "smithy.api#required" => {}}))
    CreateSizeConstraintSetRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    CreateSizeConstraintSetRequest.type = Types::CreateSizeConstraintSetRequest
    CreateSizeConstraintSetResponse.add_member(:size_constraint_set, Smithy::Schema::Shapes::ShapeRef.new(shape: SizeConstraintSet, location_name: 'SizeConstraintSet', traits: {"smithy.api#documentation" => "<p>A <a>SizeConstraintSet</a> that contains no <code>SizeConstraint</code> objects.</p>"}))
    CreateSizeConstraintSetResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>CreateSizeConstraintSet</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    CreateSizeConstraintSetResponse.type = Types::CreateSizeConstraintSetResponse
    CreateSqlInjectionMatchSetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name or description for the <a>SqlInjectionMatchSet</a> that you're creating. You can't change <code>Name</code> \n\t\t\tafter you create the <code>SqlInjectionMatchSet</code>.</p>", "smithy.api#required" => {}}))
    CreateSqlInjectionMatchSetRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    CreateSqlInjectionMatchSetRequest.type = Types::CreateSqlInjectionMatchSetRequest
    CreateSqlInjectionMatchSetResponse.add_member(:sql_injection_match_set, Smithy::Schema::Shapes::ShapeRef.new(shape: SqlInjectionMatchSet, location_name: 'SqlInjectionMatchSet', traits: {"smithy.api#documentation" => "<p>A <a>SqlInjectionMatchSet</a>.</p>"}))
    CreateSqlInjectionMatchSetResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>CreateSqlInjectionMatchSet</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    CreateSqlInjectionMatchSetResponse.type = Types::CreateSqlInjectionMatchSetResponse
    CreateWebACLMigrationStackRequest.add_member(:web_acl_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'WebACLId', traits: {"smithy.api#documentation" => "<p>The UUID of the WAF Classic web ACL that you want to migrate to WAF v2.</p>", "smithy.api#required" => {}}))
    CreateWebACLMigrationStackRequest.add_member(:s3_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'S3BucketName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon S3 bucket to store the CloudFormation template in. The S3 bucket must be \n           configured as follows for the migration:  </p>\n         <ul>\n            <li>\n               <p>The bucket name must start with <code>aws-waf-migration-</code>. For example, <code>aws-waf-migration-my-web-acl</code>.</p>\n            </li>\n            <li>\n               <p>The bucket must be in the Region where you are deploying the template. For example, for a web ACL in us-west-2, you must use an Amazon S3 bucket in us-west-2 and you must deploy the template stack to us-west-2. </p>\n            </li>\n            <li>\n               <p>The bucket policies must permit the migration process to write data. For listings of the \n       bucket policies, see the Examples section. </p>\n           </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateWebACLMigrationStackRequest.add_member(:ignore_unsupported_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IgnoreUnsupportedType, location_name: 'IgnoreUnsupportedType', traits: {"smithy.api#documentation" => "<p>Indicates whether to exclude entities that can't be migrated or to stop the migration.\n           Set this to true to ignore unsupported entities in the web ACL during the migration. Otherwise, if AWS WAF encounters unsupported \n           entities, it stops the process and throws an exception. </p>", "smithy.api#required" => {}}))
    CreateWebACLMigrationStackRequest.type = Types::CreateWebACLMigrationStackRequest
    CreateWebACLMigrationStackResponse.add_member(:s3_object_url, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectUrl, location_name: 'S3ObjectUrl', traits: {"smithy.api#documentation" => "<p>The URL of the template created in Amazon S3. </p>", "smithy.api#required" => {}}))
    CreateWebACLMigrationStackResponse.type = Types::CreateWebACLMigrationStackResponse
    CreateWebACLRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name or description of the <a>WebACL</a>. You can't change <code>Name</code> after you create the <code>WebACL</code>.</p>", "smithy.api#required" => {}}))
    CreateWebACLRequest.add_member(:metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'MetricName', traits: {"smithy.api#documentation" => "<p>A friendly name or description for the metrics for this <code>WebACL</code>.The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain\n\t        whitespace or metric names reserved for AWS WAF, including \"All\" and \"Default_Action.\" You can't change <code>MetricName</code> after you create the\n            <code>WebACL</code>.</p>", "smithy.api#required" => {}}))
    CreateWebACLRequest.add_member(:default_action, Smithy::Schema::Shapes::ShapeRef.new(shape: WafAction, location_name: 'DefaultAction', traits: {"smithy.api#documentation" => "<p>The action that you want  AWS WAF to take when a request doesn't match the criteria specified in any of the <code>Rule</code> \n\t\t\tobjects that are associated with the <code>WebACL</code>.</p>", "smithy.api#required" => {}}))
    CreateWebACLRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    CreateWebACLRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p></p>"}))
    CreateWebACLRequest.type = Types::CreateWebACLRequest
    CreateWebACLResponse.add_member(:web_acl, Smithy::Schema::Shapes::ShapeRef.new(shape: WebACL, location_name: 'WebACL', traits: {"smithy.api#documentation" => "<p>The <a>WebACL</a> returned in the <code>CreateWebACL</code> response.</p>"}))
    CreateWebACLResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>CreateWebACL</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    CreateWebACLResponse.type = Types::CreateWebACLResponse
    CreateXssMatchSetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name or description for the <a>XssMatchSet</a> that you're creating. You can't change <code>Name</code> \n\t\t\tafter you create the <code>XssMatchSet</code>.</p>", "smithy.api#required" => {}}))
    CreateXssMatchSetRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    CreateXssMatchSetRequest.type = Types::CreateXssMatchSetRequest
    CreateXssMatchSetResponse.add_member(:xss_match_set, Smithy::Schema::Shapes::ShapeRef.new(shape: XssMatchSet, location_name: 'XssMatchSet', traits: {"smithy.api#documentation" => "<p>An <a>XssMatchSet</a>.</p>"}))
    CreateXssMatchSetResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>CreateXssMatchSet</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    CreateXssMatchSetResponse.type = Types::CreateXssMatchSetResponse
    DeleteByteMatchSetRequest.add_member(:byte_match_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ByteMatchSetId', traits: {"smithy.api#documentation" => "<p>The <code>ByteMatchSetId</code> of the <a>ByteMatchSet</a> that you want to delete. <code>ByteMatchSetId</code> is returned by <a>CreateByteMatchSet</a> and by \n\t\t\t<a>ListByteMatchSets</a>.</p>", "smithy.api#required" => {}}))
    DeleteByteMatchSetRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    DeleteByteMatchSetRequest.type = Types::DeleteByteMatchSetRequest
    DeleteByteMatchSetResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>DeleteByteMatchSet</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    DeleteByteMatchSetResponse.type = Types::DeleteByteMatchSetResponse
    DeleteGeoMatchSetRequest.add_member(:geo_match_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'GeoMatchSetId', traits: {"smithy.api#documentation" => "<p>The <code>GeoMatchSetID</code> of the <a>GeoMatchSet</a> that you want to delete. <code>GeoMatchSetId</code> is returned by <a>CreateGeoMatchSet</a> and by \n\t\t\t<a>ListGeoMatchSets</a>.</p>", "smithy.api#required" => {}}))
    DeleteGeoMatchSetRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    DeleteGeoMatchSetRequest.type = Types::DeleteGeoMatchSetRequest
    DeleteGeoMatchSetResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>DeleteGeoMatchSet</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    DeleteGeoMatchSetResponse.type = Types::DeleteGeoMatchSetResponse
    DeleteIPSetRequest.add_member(:ip_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'IPSetId', traits: {"smithy.api#documentation" => "<p>The <code>IPSetId</code> of the <a>IPSet</a> that you want to delete. <code>IPSetId</code> is returned by <a>CreateIPSet</a> and by \n\t\t\t<a>ListIPSets</a>.</p>", "smithy.api#required" => {}}))
    DeleteIPSetRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    DeleteIPSetRequest.type = Types::DeleteIPSetRequest
    DeleteIPSetResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>DeleteIPSet</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    DeleteIPSetResponse.type = Types::DeleteIPSetResponse
    DeleteLoggingConfigurationRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the web ACL from which you want to delete the <a>LoggingConfiguration</a>.</p>", "smithy.api#required" => {}}))
    DeleteLoggingConfigurationRequest.type = Types::DeleteLoggingConfigurationRequest
    DeleteLoggingConfigurationResponse.type = Types::DeleteLoggingConfigurationResponse
    DeletePermissionPolicyRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the RuleGroup from which you want to delete the policy.</p>\n         <p>The user making the request must be the owner of the RuleGroup.</p>", "smithy.api#required" => {}}))
    DeletePermissionPolicyRequest.type = Types::DeletePermissionPolicyRequest
    DeletePermissionPolicyResponse.type = Types::DeletePermissionPolicyResponse
    DeleteRateBasedRuleRequest.add_member(:rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RuleId', traits: {"smithy.api#documentation" => "<p>The <code>RuleId</code> of the <a>RateBasedRule</a> that you want to\n         delete. <code>RuleId</code> is returned by <a>CreateRateBasedRule</a> and by\n            <a>ListRateBasedRules</a>.</p>", "smithy.api#required" => {}}))
    DeleteRateBasedRuleRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    DeleteRateBasedRuleRequest.type = Types::DeleteRateBasedRuleRequest
    DeleteRateBasedRuleResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the\n            <code>DeleteRateBasedRule</code> request. You can also use this value to query the\n         status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    DeleteRateBasedRuleResponse.type = Types::DeleteRateBasedRuleResponse
    DeleteRegexMatchSetRequest.add_member(:regex_match_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RegexMatchSetId', traits: {"smithy.api#documentation" => "<p>The <code>RegexMatchSetId</code> of the <a>RegexMatchSet</a> that you want to delete. <code>RegexMatchSetId</code> is returned by <a>CreateRegexMatchSet</a> and by \n\t\t\t<a>ListRegexMatchSets</a>.</p>", "smithy.api#required" => {}}))
    DeleteRegexMatchSetRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    DeleteRegexMatchSetRequest.type = Types::DeleteRegexMatchSetRequest
    DeleteRegexMatchSetResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>DeleteRegexMatchSet</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    DeleteRegexMatchSetResponse.type = Types::DeleteRegexMatchSetResponse
    DeleteRegexPatternSetRequest.add_member(:regex_pattern_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RegexPatternSetId', traits: {"smithy.api#documentation" => "<p>The <code>RegexPatternSetId</code> of the <a>RegexPatternSet</a> that you want to delete. <code>RegexPatternSetId</code> is returned by <a>CreateRegexPatternSet</a> and by \n\t\t\t<a>ListRegexPatternSets</a>.</p>", "smithy.api#required" => {}}))
    DeleteRegexPatternSetRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    DeleteRegexPatternSetRequest.type = Types::DeleteRegexPatternSetRequest
    DeleteRegexPatternSetResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>DeleteRegexPatternSet</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    DeleteRegexPatternSetResponse.type = Types::DeleteRegexPatternSetResponse
    DeleteRuleGroupRequest.add_member(:rule_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RuleGroupId', traits: {"smithy.api#documentation" => "<p>The <code>RuleGroupId</code> of the <a>RuleGroup</a> that you want to delete. <code>RuleGroupId</code> is returned by <a>CreateRuleGroup</a> and by \n         <a>ListRuleGroups</a>.</p>", "smithy.api#required" => {}}))
    DeleteRuleGroupRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    DeleteRuleGroupRequest.type = Types::DeleteRuleGroupRequest
    DeleteRuleGroupResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>DeleteRuleGroup</code> request. You can also use this value \n         to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    DeleteRuleGroupResponse.type = Types::DeleteRuleGroupResponse
    DeleteRuleRequest.add_member(:rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RuleId', traits: {"smithy.api#documentation" => "<p>The <code>RuleId</code> of the <a>Rule</a> that you want to delete. <code>RuleId</code> is returned by <a>CreateRule</a> and by \n\t\t\t<a>ListRules</a>.</p>", "smithy.api#required" => {}}))
    DeleteRuleRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    DeleteRuleRequest.type = Types::DeleteRuleRequest
    DeleteRuleResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>DeleteRule</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    DeleteRuleResponse.type = Types::DeleteRuleResponse
    DeleteSizeConstraintSetRequest.add_member(:size_constraint_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'SizeConstraintSetId', traits: {"smithy.api#documentation" => "<p>The <code>SizeConstraintSetId</code> of the <a>SizeConstraintSet</a> that you want to delete. <code>SizeConstraintSetId</code> \n\t\t\tis returned by <a>CreateSizeConstraintSet</a> and by <a>ListSizeConstraintSets</a>.</p>", "smithy.api#required" => {}}))
    DeleteSizeConstraintSetRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    DeleteSizeConstraintSetRequest.type = Types::DeleteSizeConstraintSetRequest
    DeleteSizeConstraintSetResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>DeleteSizeConstraintSet</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    DeleteSizeConstraintSetResponse.type = Types::DeleteSizeConstraintSetResponse
    DeleteSqlInjectionMatchSetRequest.add_member(:sql_injection_match_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'SqlInjectionMatchSetId', traits: {"smithy.api#documentation" => "<p>The <code>SqlInjectionMatchSetId</code> of the <a>SqlInjectionMatchSet</a> that you want to delete. \n\t\t\t<code>SqlInjectionMatchSetId</code> is returned by <a>CreateSqlInjectionMatchSet</a> and by <a>ListSqlInjectionMatchSets</a>.</p>", "smithy.api#required" => {}}))
    DeleteSqlInjectionMatchSetRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    DeleteSqlInjectionMatchSetRequest.type = Types::DeleteSqlInjectionMatchSetRequest
    DeleteSqlInjectionMatchSetResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>DeleteSqlInjectionMatchSet</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    DeleteSqlInjectionMatchSetResponse.type = Types::DeleteSqlInjectionMatchSetResponse
    DeleteWebACLRequest.add_member(:web_acl_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'WebACLId', traits: {"smithy.api#documentation" => "<p>The <code>WebACLId</code> of the <a>WebACL</a> that you want to delete. <code>WebACLId</code> is returned by <a>CreateWebACL</a> and by \n\t\t\t<a>ListWebACLs</a>.</p>", "smithy.api#required" => {}}))
    DeleteWebACLRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    DeleteWebACLRequest.type = Types::DeleteWebACLRequest
    DeleteWebACLResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>DeleteWebACL</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    DeleteWebACLResponse.type = Types::DeleteWebACLResponse
    DeleteXssMatchSetRequest.add_member(:xss_match_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'XssMatchSetId', traits: {"smithy.api#documentation" => "<p>The <code>XssMatchSetId</code> of the <a>XssMatchSet</a> that you want to delete. \n\t\t\t<code>XssMatchSetId</code> is returned by <a>CreateXssMatchSet</a> and by <a>ListXssMatchSets</a>.</p>", "smithy.api#required" => {}}))
    DeleteXssMatchSetRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    DeleteXssMatchSetRequest.type = Types::DeleteXssMatchSetRequest
    DeleteXssMatchSetResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>DeleteXssMatchSet</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    DeleteXssMatchSetResponse.type = Types::DeleteXssMatchSetResponse
    DisassociateWebACLRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) of the resource from which the web ACL is being removed, either an application load balancer or Amazon API Gateway stage.</p>\n         <p>The ARN should be in one of the following formats:</p>\n         <ul>\n            <li>\n               <p>For an Application Load Balancer: <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/app/<i>load-balancer-name</i>/<i>load-balancer-id</i>\n                  </code>\n               </p>\n            </li>\n            <li>\n               <p>For an Amazon API Gateway stage: <code>arn:aws:apigateway:<i>region</i>::/restapis/<i>api-id</i>/stages/<i>stage-name</i>\n                  </code>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    DisassociateWebACLRequest.type = Types::DisassociateWebACLRequest
    DisassociateWebACLResponse.type = Types::DisassociateWebACLResponse
    ExcludedRule.add_member(:rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RuleId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the rule to exclude from the rule group.</p>", "smithy.api#required" => {}}))
    ExcludedRule.type = Types::ExcludedRule
    ExcludedRules.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExcludedRule)
    FieldToMatch.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: MatchFieldType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The part of the web request that you want AWS WAF to search for a specified string. Parts of a request that you can search include the following:</p>\n\t\t       <ul>\n            <li>\n               <p>\n                  <code>HEADER</code>: A specified request header, for example, the value of the <code>User-Agent</code> or <code>Referer</code> header. \n\t\t\t\tIf you choose <code>HEADER</code> for the type, specify the name of the header in <code>Data</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>METHOD</code>: The HTTP method, which indicated the type of operation that the request is asking the origin to perform. \n\t\t\t\tAmazon CloudFront supports the following methods: <code>DELETE</code>, <code>GET</code>, <code>HEAD</code>, <code>OPTIONS</code>, <code>PATCH</code>, \n\t\t\t\t<code>POST</code>, and <code>PUT</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>QUERY_STRING</code>: A query string, which is the part of a URL that appears after a <code>?</code> character, if any.</p>\n            </li>\n            <li>\n               <p>\n                  <code>URI</code>: The part of a web request that identifies a resource, for example, <code>/images/daily-ad.jpg</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>BODY</code>: The part of a request that contains any additional data that you want to send to your web server \n\t\t\t\tas the HTTP request body, such as data from a form. The request body immediately follows the request headers. \n\t\t\t\tNote that only the first <code>8192</code> bytes of the request body are forwarded to AWS WAF for inspection. \n\t\t\t\tTo allow or block requests based on the length of the body, you can create a size constraint set. \n\t\t\t\tFor more information, see <a>CreateSizeConstraintSet</a>. </p>\n            </li>\n            <li>\n\t\t             <p>\n\t\t                <code>SINGLE_QUERY_ARG</code>: The parameter in the query string that you will inspect, such as <i>UserName</i> or <i>SalesRegion</i>. The maximum length for <code>SINGLE_QUERY_ARG</code> is 30 characters.</p>\n\t\t          </li>\n            <li>\n\t\t             <p>\n\t\t                <code>ALL_QUERY_ARGS</code>: Similar to <code>SINGLE_QUERY_ARG</code>, but rather than inspecting a single parameter, AWS WAF will inspect all parameters within the query for the value or regex pattern that you specify in \n\t\t             <code>TargetString</code>.</p>\n\t\t          </li>\n         </ul>", "smithy.api#required" => {}}))
    FieldToMatch.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: MatchFieldData, location_name: 'Data', traits: {"smithy.api#documentation" => "<p>When the value of <code>Type</code> is <code>HEADER</code>, enter the name of the header that you want AWS WAF to search, \n\t\t\tfor example, <code>User-Agent</code> or <code>Referer</code>. The name of the header is not case sensitive.</p>\n\t        <p>When the value of <code>Type</code> is <code>SINGLE_QUERY_ARG</code>, enter the name of the parameter that you want AWS WAF to search, \n\t        for example, <code>UserName</code> or <code>SalesRegion</code>. The parameter name is not case sensitive.</p>\n\t        <p>If the value of <code>Type</code> is any other value, omit <code>Data</code>.</p>"}))
    FieldToMatch.type = Types::FieldToMatch
    GeoMatchConstraint.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: GeoMatchConstraintType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of geographical area you want AWS WAF to search for. Currently <code>Country</code> is the only valid value.</p>", "smithy.api#required" => {}}))
    GeoMatchConstraint.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: GeoMatchConstraintValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The country that you want AWS WAF to search for.</p>", "smithy.api#required" => {}}))
    GeoMatchConstraint.type = Types::GeoMatchConstraint
    GeoMatchConstraintType.add_member(:country, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Country', traits: {"smithy.api#enumValue" => "Country"}))
    GeoMatchConstraintValue.add_member(:af, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AF', traits: {"smithy.api#enumValue" => "AF"}))
    GeoMatchConstraintValue.add_member(:ax, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AX', traits: {"smithy.api#enumValue" => "AX"}))
    GeoMatchConstraintValue.add_member(:al, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AL', traits: {"smithy.api#enumValue" => "AL"}))
    GeoMatchConstraintValue.add_member(:dz, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DZ', traits: {"smithy.api#enumValue" => "DZ"}))
    GeoMatchConstraintValue.add_member(:as, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AS', traits: {"smithy.api#enumValue" => "AS"}))
    GeoMatchConstraintValue.add_member(:ad, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AD', traits: {"smithy.api#enumValue" => "AD"}))
    GeoMatchConstraintValue.add_member(:ao, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AO', traits: {"smithy.api#enumValue" => "AO"}))
    GeoMatchConstraintValue.add_member(:ai, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AI', traits: {"smithy.api#enumValue" => "AI"}))
    GeoMatchConstraintValue.add_member(:aq, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AQ', traits: {"smithy.api#enumValue" => "AQ"}))
    GeoMatchConstraintValue.add_member(:ag, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AG', traits: {"smithy.api#enumValue" => "AG"}))
    GeoMatchConstraintValue.add_member(:ar, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AR', traits: {"smithy.api#enumValue" => "AR"}))
    GeoMatchConstraintValue.add_member(:am, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AM', traits: {"smithy.api#enumValue" => "AM"}))
    GeoMatchConstraintValue.add_member(:aw, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AW', traits: {"smithy.api#enumValue" => "AW"}))
    GeoMatchConstraintValue.add_member(:au, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AU', traits: {"smithy.api#enumValue" => "AU"}))
    GeoMatchConstraintValue.add_member(:at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AT', traits: {"smithy.api#enumValue" => "AT"}))
    GeoMatchConstraintValue.add_member(:az, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AZ', traits: {"smithy.api#enumValue" => "AZ"}))
    GeoMatchConstraintValue.add_member(:bs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BS', traits: {"smithy.api#enumValue" => "BS"}))
    GeoMatchConstraintValue.add_member(:bh, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BH', traits: {"smithy.api#enumValue" => "BH"}))
    GeoMatchConstraintValue.add_member(:bd, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BD', traits: {"smithy.api#enumValue" => "BD"}))
    GeoMatchConstraintValue.add_member(:bb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BB', traits: {"smithy.api#enumValue" => "BB"}))
    GeoMatchConstraintValue.add_member(:by, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BY', traits: {"smithy.api#enumValue" => "BY"}))
    GeoMatchConstraintValue.add_member(:be, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BE', traits: {"smithy.api#enumValue" => "BE"}))
    GeoMatchConstraintValue.add_member(:bz, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BZ', traits: {"smithy.api#enumValue" => "BZ"}))
    GeoMatchConstraintValue.add_member(:bj, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BJ', traits: {"smithy.api#enumValue" => "BJ"}))
    GeoMatchConstraintValue.add_member(:bm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BM', traits: {"smithy.api#enumValue" => "BM"}))
    GeoMatchConstraintValue.add_member(:bt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BT', traits: {"smithy.api#enumValue" => "BT"}))
    GeoMatchConstraintValue.add_member(:bo, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BO', traits: {"smithy.api#enumValue" => "BO"}))
    GeoMatchConstraintValue.add_member(:bq, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BQ', traits: {"smithy.api#enumValue" => "BQ"}))
    GeoMatchConstraintValue.add_member(:ba, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BA', traits: {"smithy.api#enumValue" => "BA"}))
    GeoMatchConstraintValue.add_member(:bw, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BW', traits: {"smithy.api#enumValue" => "BW"}))
    GeoMatchConstraintValue.add_member(:bv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BV', traits: {"smithy.api#enumValue" => "BV"}))
    GeoMatchConstraintValue.add_member(:br, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BR', traits: {"smithy.api#enumValue" => "BR"}))
    GeoMatchConstraintValue.add_member(:io, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IO', traits: {"smithy.api#enumValue" => "IO"}))
    GeoMatchConstraintValue.add_member(:bn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BN', traits: {"smithy.api#enumValue" => "BN"}))
    GeoMatchConstraintValue.add_member(:bg, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BG', traits: {"smithy.api#enumValue" => "BG"}))
    GeoMatchConstraintValue.add_member(:bf, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BF', traits: {"smithy.api#enumValue" => "BF"}))
    GeoMatchConstraintValue.add_member(:bi, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BI', traits: {"smithy.api#enumValue" => "BI"}))
    GeoMatchConstraintValue.add_member(:kh, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KH', traits: {"smithy.api#enumValue" => "KH"}))
    GeoMatchConstraintValue.add_member(:cm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CM', traits: {"smithy.api#enumValue" => "CM"}))
    GeoMatchConstraintValue.add_member(:ca, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CA', traits: {"smithy.api#enumValue" => "CA"}))
    GeoMatchConstraintValue.add_member(:cv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CV', traits: {"smithy.api#enumValue" => "CV"}))
    GeoMatchConstraintValue.add_member(:ky, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KY', traits: {"smithy.api#enumValue" => "KY"}))
    GeoMatchConstraintValue.add_member(:cf, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CF', traits: {"smithy.api#enumValue" => "CF"}))
    GeoMatchConstraintValue.add_member(:td, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TD', traits: {"smithy.api#enumValue" => "TD"}))
    GeoMatchConstraintValue.add_member(:cl, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CL', traits: {"smithy.api#enumValue" => "CL"}))
    GeoMatchConstraintValue.add_member(:cn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CN', traits: {"smithy.api#enumValue" => "CN"}))
    GeoMatchConstraintValue.add_member(:cx, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CX', traits: {"smithy.api#enumValue" => "CX"}))
    GeoMatchConstraintValue.add_member(:cc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CC', traits: {"smithy.api#enumValue" => "CC"}))
    GeoMatchConstraintValue.add_member(:co, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CO', traits: {"smithy.api#enumValue" => "CO"}))
    GeoMatchConstraintValue.add_member(:km, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KM', traits: {"smithy.api#enumValue" => "KM"}))
    GeoMatchConstraintValue.add_member(:cg, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CG', traits: {"smithy.api#enumValue" => "CG"}))
    GeoMatchConstraintValue.add_member(:cd, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CD', traits: {"smithy.api#enumValue" => "CD"}))
    GeoMatchConstraintValue.add_member(:ck, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CK', traits: {"smithy.api#enumValue" => "CK"}))
    GeoMatchConstraintValue.add_member(:cr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CR', traits: {"smithy.api#enumValue" => "CR"}))
    GeoMatchConstraintValue.add_member(:ci, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CI', traits: {"smithy.api#enumValue" => "CI"}))
    GeoMatchConstraintValue.add_member(:hr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HR', traits: {"smithy.api#enumValue" => "HR"}))
    GeoMatchConstraintValue.add_member(:cu, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CU', traits: {"smithy.api#enumValue" => "CU"}))
    GeoMatchConstraintValue.add_member(:cw, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CW', traits: {"smithy.api#enumValue" => "CW"}))
    GeoMatchConstraintValue.add_member(:cy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CY', traits: {"smithy.api#enumValue" => "CY"}))
    GeoMatchConstraintValue.add_member(:cz, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CZ', traits: {"smithy.api#enumValue" => "CZ"}))
    GeoMatchConstraintValue.add_member(:dk, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DK', traits: {"smithy.api#enumValue" => "DK"}))
    GeoMatchConstraintValue.add_member(:dj, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DJ', traits: {"smithy.api#enumValue" => "DJ"}))
    GeoMatchConstraintValue.add_member(:dm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DM', traits: {"smithy.api#enumValue" => "DM"}))
    GeoMatchConstraintValue.add_member(:do, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DO', traits: {"smithy.api#enumValue" => "DO"}))
    GeoMatchConstraintValue.add_member(:ec, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC', traits: {"smithy.api#enumValue" => "EC"}))
    GeoMatchConstraintValue.add_member(:eg, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EG', traits: {"smithy.api#enumValue" => "EG"}))
    GeoMatchConstraintValue.add_member(:sv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SV', traits: {"smithy.api#enumValue" => "SV"}))
    GeoMatchConstraintValue.add_member(:gq, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GQ', traits: {"smithy.api#enumValue" => "GQ"}))
    GeoMatchConstraintValue.add_member(:er, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ER', traits: {"smithy.api#enumValue" => "ER"}))
    GeoMatchConstraintValue.add_member(:ee, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EE', traits: {"smithy.api#enumValue" => "EE"}))
    GeoMatchConstraintValue.add_member(:et, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ET', traits: {"smithy.api#enumValue" => "ET"}))
    GeoMatchConstraintValue.add_member(:fk, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FK', traits: {"smithy.api#enumValue" => "FK"}))
    GeoMatchConstraintValue.add_member(:fo, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FO', traits: {"smithy.api#enumValue" => "FO"}))
    GeoMatchConstraintValue.add_member(:fj, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FJ', traits: {"smithy.api#enumValue" => "FJ"}))
    GeoMatchConstraintValue.add_member(:fi, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FI', traits: {"smithy.api#enumValue" => "FI"}))
    GeoMatchConstraintValue.add_member(:fr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FR', traits: {"smithy.api#enumValue" => "FR"}))
    GeoMatchConstraintValue.add_member(:gf, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GF', traits: {"smithy.api#enumValue" => "GF"}))
    GeoMatchConstraintValue.add_member(:pf, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PF', traits: {"smithy.api#enumValue" => "PF"}))
    GeoMatchConstraintValue.add_member(:tf, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TF', traits: {"smithy.api#enumValue" => "TF"}))
    GeoMatchConstraintValue.add_member(:ga, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GA', traits: {"smithy.api#enumValue" => "GA"}))
    GeoMatchConstraintValue.add_member(:gm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GM', traits: {"smithy.api#enumValue" => "GM"}))
    GeoMatchConstraintValue.add_member(:ge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GE', traits: {"smithy.api#enumValue" => "GE"}))
    GeoMatchConstraintValue.add_member(:de, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DE', traits: {"smithy.api#enumValue" => "DE"}))
    GeoMatchConstraintValue.add_member(:gh, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GH', traits: {"smithy.api#enumValue" => "GH"}))
    GeoMatchConstraintValue.add_member(:gi, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GI', traits: {"smithy.api#enumValue" => "GI"}))
    GeoMatchConstraintValue.add_member(:gr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GR', traits: {"smithy.api#enumValue" => "GR"}))
    GeoMatchConstraintValue.add_member(:gl, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GL', traits: {"smithy.api#enumValue" => "GL"}))
    GeoMatchConstraintValue.add_member(:gd, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GD', traits: {"smithy.api#enumValue" => "GD"}))
    GeoMatchConstraintValue.add_member(:gp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GP', traits: {"smithy.api#enumValue" => "GP"}))
    GeoMatchConstraintValue.add_member(:gu, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GU', traits: {"smithy.api#enumValue" => "GU"}))
    GeoMatchConstraintValue.add_member(:gt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GT', traits: {"smithy.api#enumValue" => "GT"}))
    GeoMatchConstraintValue.add_member(:gg, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GG', traits: {"smithy.api#enumValue" => "GG"}))
    GeoMatchConstraintValue.add_member(:gn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GN', traits: {"smithy.api#enumValue" => "GN"}))
    GeoMatchConstraintValue.add_member(:gw, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GW', traits: {"smithy.api#enumValue" => "GW"}))
    GeoMatchConstraintValue.add_member(:gy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GY', traits: {"smithy.api#enumValue" => "GY"}))
    GeoMatchConstraintValue.add_member(:ht, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HT', traits: {"smithy.api#enumValue" => "HT"}))
    GeoMatchConstraintValue.add_member(:hm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HM', traits: {"smithy.api#enumValue" => "HM"}))
    GeoMatchConstraintValue.add_member(:va, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VA', traits: {"smithy.api#enumValue" => "VA"}))
    GeoMatchConstraintValue.add_member(:hn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HN', traits: {"smithy.api#enumValue" => "HN"}))
    GeoMatchConstraintValue.add_member(:hk, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HK', traits: {"smithy.api#enumValue" => "HK"}))
    GeoMatchConstraintValue.add_member(:hu, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HU', traits: {"smithy.api#enumValue" => "HU"}))
    GeoMatchConstraintValue.add_member(:is, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IS', traits: {"smithy.api#enumValue" => "IS"}))
    GeoMatchConstraintValue.add_member(:in, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN', traits: {"smithy.api#enumValue" => "IN"}))
    GeoMatchConstraintValue.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ID', traits: {"smithy.api#enumValue" => "ID"}))
    GeoMatchConstraintValue.add_member(:ir, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IR', traits: {"smithy.api#enumValue" => "IR"}))
    GeoMatchConstraintValue.add_member(:iq, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IQ', traits: {"smithy.api#enumValue" => "IQ"}))
    GeoMatchConstraintValue.add_member(:ie, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IE', traits: {"smithy.api#enumValue" => "IE"}))
    GeoMatchConstraintValue.add_member(:im, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IM', traits: {"smithy.api#enumValue" => "IM"}))
    GeoMatchConstraintValue.add_member(:il, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IL', traits: {"smithy.api#enumValue" => "IL"}))
    GeoMatchConstraintValue.add_member(:it, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IT', traits: {"smithy.api#enumValue" => "IT"}))
    GeoMatchConstraintValue.add_member(:jm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JM', traits: {"smithy.api#enumValue" => "JM"}))
    GeoMatchConstraintValue.add_member(:jp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JP', traits: {"smithy.api#enumValue" => "JP"}))
    GeoMatchConstraintValue.add_member(:je, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JE', traits: {"smithy.api#enumValue" => "JE"}))
    GeoMatchConstraintValue.add_member(:jo, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JO', traits: {"smithy.api#enumValue" => "JO"}))
    GeoMatchConstraintValue.add_member(:kz, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KZ', traits: {"smithy.api#enumValue" => "KZ"}))
    GeoMatchConstraintValue.add_member(:ke, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KE', traits: {"smithy.api#enumValue" => "KE"}))
    GeoMatchConstraintValue.add_member(:ki, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KI', traits: {"smithy.api#enumValue" => "KI"}))
    GeoMatchConstraintValue.add_member(:kp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KP', traits: {"smithy.api#enumValue" => "KP"}))
    GeoMatchConstraintValue.add_member(:kr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KR', traits: {"smithy.api#enumValue" => "KR"}))
    GeoMatchConstraintValue.add_member(:kw, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KW', traits: {"smithy.api#enumValue" => "KW"}))
    GeoMatchConstraintValue.add_member(:kg, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KG', traits: {"smithy.api#enumValue" => "KG"}))
    GeoMatchConstraintValue.add_member(:la, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LA', traits: {"smithy.api#enumValue" => "LA"}))
    GeoMatchConstraintValue.add_member(:lv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LV', traits: {"smithy.api#enumValue" => "LV"}))
    GeoMatchConstraintValue.add_member(:lb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LB', traits: {"smithy.api#enumValue" => "LB"}))
    GeoMatchConstraintValue.add_member(:ls, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LS', traits: {"smithy.api#enumValue" => "LS"}))
    GeoMatchConstraintValue.add_member(:lr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LR', traits: {"smithy.api#enumValue" => "LR"}))
    GeoMatchConstraintValue.add_member(:ly, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LY', traits: {"smithy.api#enumValue" => "LY"}))
    GeoMatchConstraintValue.add_member(:li, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LI', traits: {"smithy.api#enumValue" => "LI"}))
    GeoMatchConstraintValue.add_member(:lt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LT', traits: {"smithy.api#enumValue" => "LT"}))
    GeoMatchConstraintValue.add_member(:lu, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LU', traits: {"smithy.api#enumValue" => "LU"}))
    GeoMatchConstraintValue.add_member(:mo, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MO', traits: {"smithy.api#enumValue" => "MO"}))
    GeoMatchConstraintValue.add_member(:mk, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MK', traits: {"smithy.api#enumValue" => "MK"}))
    GeoMatchConstraintValue.add_member(:mg, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MG', traits: {"smithy.api#enumValue" => "MG"}))
    GeoMatchConstraintValue.add_member(:mw, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MW', traits: {"smithy.api#enumValue" => "MW"}))
    GeoMatchConstraintValue.add_member(:my, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MY', traits: {"smithy.api#enumValue" => "MY"}))
    GeoMatchConstraintValue.add_member(:mv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MV', traits: {"smithy.api#enumValue" => "MV"}))
    GeoMatchConstraintValue.add_member(:ml, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML', traits: {"smithy.api#enumValue" => "ML"}))
    GeoMatchConstraintValue.add_member(:mt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MT', traits: {"smithy.api#enumValue" => "MT"}))
    GeoMatchConstraintValue.add_member(:mh, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MH', traits: {"smithy.api#enumValue" => "MH"}))
    GeoMatchConstraintValue.add_member(:mq, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MQ', traits: {"smithy.api#enumValue" => "MQ"}))
    GeoMatchConstraintValue.add_member(:mr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MR', traits: {"smithy.api#enumValue" => "MR"}))
    GeoMatchConstraintValue.add_member(:mu, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MU', traits: {"smithy.api#enumValue" => "MU"}))
    GeoMatchConstraintValue.add_member(:yt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'YT', traits: {"smithy.api#enumValue" => "YT"}))
    GeoMatchConstraintValue.add_member(:mx, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MX', traits: {"smithy.api#enumValue" => "MX"}))
    GeoMatchConstraintValue.add_member(:fm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FM', traits: {"smithy.api#enumValue" => "FM"}))
    GeoMatchConstraintValue.add_member(:md, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MD', traits: {"smithy.api#enumValue" => "MD"}))
    GeoMatchConstraintValue.add_member(:mc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MC', traits: {"smithy.api#enumValue" => "MC"}))
    GeoMatchConstraintValue.add_member(:mn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MN', traits: {"smithy.api#enumValue" => "MN"}))
    GeoMatchConstraintValue.add_member(:me, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ME', traits: {"smithy.api#enumValue" => "ME"}))
    GeoMatchConstraintValue.add_member(:ms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MS', traits: {"smithy.api#enumValue" => "MS"}))
    GeoMatchConstraintValue.add_member(:ma, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MA', traits: {"smithy.api#enumValue" => "MA"}))
    GeoMatchConstraintValue.add_member(:mz, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MZ', traits: {"smithy.api#enumValue" => "MZ"}))
    GeoMatchConstraintValue.add_member(:mm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MM', traits: {"smithy.api#enumValue" => "MM"}))
    GeoMatchConstraintValue.add_member(:na, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NA', traits: {"smithy.api#enumValue" => "NA"}))
    GeoMatchConstraintValue.add_member(:nr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NR', traits: {"smithy.api#enumValue" => "NR"}))
    GeoMatchConstraintValue.add_member(:np, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NP', traits: {"smithy.api#enumValue" => "NP"}))
    GeoMatchConstraintValue.add_member(:nl, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NL', traits: {"smithy.api#enumValue" => "NL"}))
    GeoMatchConstraintValue.add_member(:nc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NC', traits: {"smithy.api#enumValue" => "NC"}))
    GeoMatchConstraintValue.add_member(:nz, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NZ', traits: {"smithy.api#enumValue" => "NZ"}))
    GeoMatchConstraintValue.add_member(:ni, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NI', traits: {"smithy.api#enumValue" => "NI"}))
    GeoMatchConstraintValue.add_member(:ne, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NE', traits: {"smithy.api#enumValue" => "NE"}))
    GeoMatchConstraintValue.add_member(:ng, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NG', traits: {"smithy.api#enumValue" => "NG"}))
    GeoMatchConstraintValue.add_member(:nu, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NU', traits: {"smithy.api#enumValue" => "NU"}))
    GeoMatchConstraintValue.add_member(:nf, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NF', traits: {"smithy.api#enumValue" => "NF"}))
    GeoMatchConstraintValue.add_member(:mp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MP', traits: {"smithy.api#enumValue" => "MP"}))
    GeoMatchConstraintValue.add_member(:no, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO', traits: {"smithy.api#enumValue" => "NO"}))
    GeoMatchConstraintValue.add_member(:om, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OM', traits: {"smithy.api#enumValue" => "OM"}))
    GeoMatchConstraintValue.add_member(:pk, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PK', traits: {"smithy.api#enumValue" => "PK"}))
    GeoMatchConstraintValue.add_member(:pw, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PW', traits: {"smithy.api#enumValue" => "PW"}))
    GeoMatchConstraintValue.add_member(:ps, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PS', traits: {"smithy.api#enumValue" => "PS"}))
    GeoMatchConstraintValue.add_member(:pa, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PA', traits: {"smithy.api#enumValue" => "PA"}))
    GeoMatchConstraintValue.add_member(:pg, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PG', traits: {"smithy.api#enumValue" => "PG"}))
    GeoMatchConstraintValue.add_member(:py, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PY', traits: {"smithy.api#enumValue" => "PY"}))
    GeoMatchConstraintValue.add_member(:pe, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PE', traits: {"smithy.api#enumValue" => "PE"}))
    GeoMatchConstraintValue.add_member(:ph, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PH', traits: {"smithy.api#enumValue" => "PH"}))
    GeoMatchConstraintValue.add_member(:pn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PN', traits: {"smithy.api#enumValue" => "PN"}))
    GeoMatchConstraintValue.add_member(:pl, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PL', traits: {"smithy.api#enumValue" => "PL"}))
    GeoMatchConstraintValue.add_member(:pt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT', traits: {"smithy.api#enumValue" => "PT"}))
    GeoMatchConstraintValue.add_member(:pr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PR', traits: {"smithy.api#enumValue" => "PR"}))
    GeoMatchConstraintValue.add_member(:qa, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QA', traits: {"smithy.api#enumValue" => "QA"}))
    GeoMatchConstraintValue.add_member(:re, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RE', traits: {"smithy.api#enumValue" => "RE"}))
    GeoMatchConstraintValue.add_member(:ro, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RO', traits: {"smithy.api#enumValue" => "RO"}))
    GeoMatchConstraintValue.add_member(:ru, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RU', traits: {"smithy.api#enumValue" => "RU"}))
    GeoMatchConstraintValue.add_member(:rw, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RW', traits: {"smithy.api#enumValue" => "RW"}))
    GeoMatchConstraintValue.add_member(:bl, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BL', traits: {"smithy.api#enumValue" => "BL"}))
    GeoMatchConstraintValue.add_member(:sh, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SH', traits: {"smithy.api#enumValue" => "SH"}))
    GeoMatchConstraintValue.add_member(:kn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KN', traits: {"smithy.api#enumValue" => "KN"}))
    GeoMatchConstraintValue.add_member(:lc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LC', traits: {"smithy.api#enumValue" => "LC"}))
    GeoMatchConstraintValue.add_member(:mf, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MF', traits: {"smithy.api#enumValue" => "MF"}))
    GeoMatchConstraintValue.add_member(:pm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PM', traits: {"smithy.api#enumValue" => "PM"}))
    GeoMatchConstraintValue.add_member(:vc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VC', traits: {"smithy.api#enumValue" => "VC"}))
    GeoMatchConstraintValue.add_member(:ws, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WS', traits: {"smithy.api#enumValue" => "WS"}))
    GeoMatchConstraintValue.add_member(:sm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SM', traits: {"smithy.api#enumValue" => "SM"}))
    GeoMatchConstraintValue.add_member(:st, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ST', traits: {"smithy.api#enumValue" => "ST"}))
    GeoMatchConstraintValue.add_member(:sa, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SA', traits: {"smithy.api#enumValue" => "SA"}))
    GeoMatchConstraintValue.add_member(:sn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SN', traits: {"smithy.api#enumValue" => "SN"}))
    GeoMatchConstraintValue.add_member(:rs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RS', traits: {"smithy.api#enumValue" => "RS"}))
    GeoMatchConstraintValue.add_member(:sc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SC', traits: {"smithy.api#enumValue" => "SC"}))
    GeoMatchConstraintValue.add_member(:sl, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SL', traits: {"smithy.api#enumValue" => "SL"}))
    GeoMatchConstraintValue.add_member(:sg, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SG', traits: {"smithy.api#enumValue" => "SG"}))
    GeoMatchConstraintValue.add_member(:sx, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SX', traits: {"smithy.api#enumValue" => "SX"}))
    GeoMatchConstraintValue.add_member(:sk, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SK', traits: {"smithy.api#enumValue" => "SK"}))
    GeoMatchConstraintValue.add_member(:si, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SI', traits: {"smithy.api#enumValue" => "SI"}))
    GeoMatchConstraintValue.add_member(:sb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SB', traits: {"smithy.api#enumValue" => "SB"}))
    GeoMatchConstraintValue.add_member(:so, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SO', traits: {"smithy.api#enumValue" => "SO"}))
    GeoMatchConstraintValue.add_member(:za, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZA', traits: {"smithy.api#enumValue" => "ZA"}))
    GeoMatchConstraintValue.add_member(:gs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GS', traits: {"smithy.api#enumValue" => "GS"}))
    GeoMatchConstraintValue.add_member(:ss, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SS', traits: {"smithy.api#enumValue" => "SS"}))
    GeoMatchConstraintValue.add_member(:es, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ES', traits: {"smithy.api#enumValue" => "ES"}))
    GeoMatchConstraintValue.add_member(:lk, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LK', traits: {"smithy.api#enumValue" => "LK"}))
    GeoMatchConstraintValue.add_member(:sd, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SD', traits: {"smithy.api#enumValue" => "SD"}))
    GeoMatchConstraintValue.add_member(:sr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SR', traits: {"smithy.api#enumValue" => "SR"}))
    GeoMatchConstraintValue.add_member(:sj, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SJ', traits: {"smithy.api#enumValue" => "SJ"}))
    GeoMatchConstraintValue.add_member(:sz, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SZ', traits: {"smithy.api#enumValue" => "SZ"}))
    GeoMatchConstraintValue.add_member(:se, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SE', traits: {"smithy.api#enumValue" => "SE"}))
    GeoMatchConstraintValue.add_member(:ch, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CH', traits: {"smithy.api#enumValue" => "CH"}))
    GeoMatchConstraintValue.add_member(:sy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SY', traits: {"smithy.api#enumValue" => "SY"}))
    GeoMatchConstraintValue.add_member(:tw, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TW', traits: {"smithy.api#enumValue" => "TW"}))
    GeoMatchConstraintValue.add_member(:tj, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TJ', traits: {"smithy.api#enumValue" => "TJ"}))
    GeoMatchConstraintValue.add_member(:tz, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TZ', traits: {"smithy.api#enumValue" => "TZ"}))
    GeoMatchConstraintValue.add_member(:th, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TH', traits: {"smithy.api#enumValue" => "TH"}))
    GeoMatchConstraintValue.add_member(:tl, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TL', traits: {"smithy.api#enumValue" => "TL"}))
    GeoMatchConstraintValue.add_member(:tg, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TG', traits: {"smithy.api#enumValue" => "TG"}))
    GeoMatchConstraintValue.add_member(:tk, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TK', traits: {"smithy.api#enumValue" => "TK"}))
    GeoMatchConstraintValue.add_member(:to, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TO', traits: {"smithy.api#enumValue" => "TO"}))
    GeoMatchConstraintValue.add_member(:tt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TT', traits: {"smithy.api#enumValue" => "TT"}))
    GeoMatchConstraintValue.add_member(:tn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TN', traits: {"smithy.api#enumValue" => "TN"}))
    GeoMatchConstraintValue.add_member(:tr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TR', traits: {"smithy.api#enumValue" => "TR"}))
    GeoMatchConstraintValue.add_member(:tm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TM', traits: {"smithy.api#enumValue" => "TM"}))
    GeoMatchConstraintValue.add_member(:tc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TC', traits: {"smithy.api#enumValue" => "TC"}))
    GeoMatchConstraintValue.add_member(:tv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TV', traits: {"smithy.api#enumValue" => "TV"}))
    GeoMatchConstraintValue.add_member(:ug, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UG', traits: {"smithy.api#enumValue" => "UG"}))
    GeoMatchConstraintValue.add_member(:ua, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UA', traits: {"smithy.api#enumValue" => "UA"}))
    GeoMatchConstraintValue.add_member(:ae, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AE', traits: {"smithy.api#enumValue" => "AE"}))
    GeoMatchConstraintValue.add_member(:gb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GB', traits: {"smithy.api#enumValue" => "GB"}))
    GeoMatchConstraintValue.add_member(:us, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'US', traits: {"smithy.api#enumValue" => "US"}))
    GeoMatchConstraintValue.add_member(:um, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UM', traits: {"smithy.api#enumValue" => "UM"}))
    GeoMatchConstraintValue.add_member(:uy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UY', traits: {"smithy.api#enumValue" => "UY"}))
    GeoMatchConstraintValue.add_member(:uz, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UZ', traits: {"smithy.api#enumValue" => "UZ"}))
    GeoMatchConstraintValue.add_member(:vu, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VU', traits: {"smithy.api#enumValue" => "VU"}))
    GeoMatchConstraintValue.add_member(:ve, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VE', traits: {"smithy.api#enumValue" => "VE"}))
    GeoMatchConstraintValue.add_member(:vn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VN', traits: {"smithy.api#enumValue" => "VN"}))
    GeoMatchConstraintValue.add_member(:vg, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VG', traits: {"smithy.api#enumValue" => "VG"}))
    GeoMatchConstraintValue.add_member(:vi, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VI', traits: {"smithy.api#enumValue" => "VI"}))
    GeoMatchConstraintValue.add_member(:wf, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WF', traits: {"smithy.api#enumValue" => "WF"}))
    GeoMatchConstraintValue.add_member(:eh, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EH', traits: {"smithy.api#enumValue" => "EH"}))
    GeoMatchConstraintValue.add_member(:ye, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'YE', traits: {"smithy.api#enumValue" => "YE"}))
    GeoMatchConstraintValue.add_member(:zm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZM', traits: {"smithy.api#enumValue" => "ZM"}))
    GeoMatchConstraintValue.add_member(:zw, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZW', traits: {"smithy.api#enumValue" => "ZW"}))
    GeoMatchConstraints.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GeoMatchConstraint)
    GeoMatchSet.add_member(:geo_match_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'GeoMatchSetId', traits: {"smithy.api#documentation" => "<p>The <code>GeoMatchSetId</code> for an <code>GeoMatchSet</code>. You use <code>GeoMatchSetId</code> to get information about a \n\t\t\t<code>GeoMatchSet</code> (see <a>GeoMatchSet</a>), update a <code>GeoMatchSet</code> (see <a>UpdateGeoMatchSet</a>), insert a <code>GeoMatchSet</code> into a <code>Rule</code> or delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete a <code>GeoMatchSet</code> from AWS WAF (see <a>DeleteGeoMatchSet</a>).</p>\n\t\t       <p>\n            <code>GeoMatchSetId</code> is returned by <a>CreateGeoMatchSet</a> and by <a>ListGeoMatchSets</a>.</p>", "smithy.api#required" => {}}))
    GeoMatchSet.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name or description of the <a>GeoMatchSet</a>. You can't change the name of an <code>GeoMatchSet</code> after you create it.</p>"}))
    GeoMatchSet.add_member(:geo_match_constraints, Smithy::Schema::Shapes::ShapeRef.new(shape: GeoMatchConstraints, location_name: 'GeoMatchConstraints', traits: {"smithy.api#documentation" => "<p>An array of <a>GeoMatchConstraint</a> objects, which contain the country that you want AWS WAF to search for.</p>", "smithy.api#required" => {}}))
    GeoMatchSet.type = Types::GeoMatchSet
    GeoMatchSetSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GeoMatchSetSummary)
    GeoMatchSetSummary.add_member(:geo_match_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'GeoMatchSetId', traits: {"smithy.api#documentation" => "<p>The <code>GeoMatchSetId</code> for an <a>GeoMatchSet</a>. You can use <code>GeoMatchSetId</code> in a <a>GetGeoMatchSet</a> request to get detailed\tinformation about an <a>GeoMatchSet</a>.</p>", "smithy.api#required" => {}}))
    GeoMatchSetSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name or description of the <a>GeoMatchSet</a>. You can't change the name of an <code>GeoMatchSet</code> after you create it.</p>", "smithy.api#required" => {}}))
    GeoMatchSetSummary.type = Types::GeoMatchSetSummary
    GeoMatchSetUpdate.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeAction, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>Specifies whether to insert or delete a country with <a>UpdateGeoMatchSet</a>.</p>", "smithy.api#required" => {}}))
    GeoMatchSetUpdate.add_member(:geo_match_constraint, Smithy::Schema::Shapes::ShapeRef.new(shape: GeoMatchConstraint, location_name: 'GeoMatchConstraint', traits: {"smithy.api#documentation" => "<p>The country from which web requests originate that you want AWS WAF to search for.</p>", "smithy.api#required" => {}}))
    GeoMatchSetUpdate.type = Types::GeoMatchSetUpdate
    GeoMatchSetUpdates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GeoMatchSetUpdate)
    GetByteMatchSetRequest.add_member(:byte_match_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ByteMatchSetId', traits: {"smithy.api#documentation" => "<p>The <code>ByteMatchSetId</code> of the <a>ByteMatchSet</a> that you want to get. <code>ByteMatchSetId</code> is returned by \n\t\t\t<a>CreateByteMatchSet</a> and by <a>ListByteMatchSets</a>.</p>", "smithy.api#required" => {}}))
    GetByteMatchSetRequest.type = Types::GetByteMatchSetRequest
    GetByteMatchSetResponse.add_member(:byte_match_set, Smithy::Schema::Shapes::ShapeRef.new(shape: ByteMatchSet, location_name: 'ByteMatchSet', traits: {"smithy.api#documentation" => "<p>Information about the <a>ByteMatchSet</a> that you specified in the <code>GetByteMatchSet</code> request. For more information, see the \n\t\t\tfollowing topics:</p>\n\t\t       <ul>\n            <li>\n               <p>\n                  <a>ByteMatchSet</a>: Contains <code>ByteMatchSetId</code>, <code>ByteMatchTuples</code>, and <code>Name</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>ByteMatchTuples</code>: Contains an array of <a>ByteMatchTuple</a> objects. Each <code>ByteMatchTuple</code> \n\t\t\t\tobject contains <a>FieldToMatch</a>, <code>PositionalConstraint</code>, <code>TargetString</code>, \n\t\t\t\tand <code>TextTransformation</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>\n               </p>\n            </li>\n         </ul>"}))
    GetByteMatchSetResponse.type = Types::GetByteMatchSetResponse
    GetChangeTokenRequest.type = Types::GetChangeTokenRequest
    GetChangeTokenResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used in the request. Use this value in a <code>GetChangeTokenStatus</code> request \n\t\t\tto get the current status of the request. </p>"}))
    GetChangeTokenResponse.type = Types::GetChangeTokenResponse
    GetChangeTokenStatusRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The change token for which you want to get the status. This change token was previously returned in the <code>GetChangeToken</code> response.</p>", "smithy.api#required" => {}}))
    GetChangeTokenStatusRequest.type = Types::GetChangeTokenStatusRequest
    GetChangeTokenStatusResponse.add_member(:change_token_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeTokenStatus, location_name: 'ChangeTokenStatus', traits: {"smithy.api#documentation" => "<p>The status of the change token.</p>"}))
    GetChangeTokenStatusResponse.type = Types::GetChangeTokenStatusResponse
    GetGeoMatchSetRequest.add_member(:geo_match_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'GeoMatchSetId', traits: {"smithy.api#documentation" => "<p>The <code>GeoMatchSetId</code> of the <a>GeoMatchSet</a> that you want to get. <code>GeoMatchSetId</code> is returned by <a>CreateGeoMatchSet</a> and by \n\t\t\t<a>ListGeoMatchSets</a>.</p>", "smithy.api#required" => {}}))
    GetGeoMatchSetRequest.type = Types::GetGeoMatchSetRequest
    GetGeoMatchSetResponse.add_member(:geo_match_set, Smithy::Schema::Shapes::ShapeRef.new(shape: GeoMatchSet, location_name: 'GeoMatchSet', traits: {"smithy.api#documentation" => "<p>Information about the <a>GeoMatchSet</a> that you specified in the <code>GetGeoMatchSet</code> request. This includes the <code>Type</code>, which for a <code>GeoMatchContraint</code> is always <code>Country</code>, as well as the <code>Value</code>, which is the identifier for a specific country.</p>"}))
    GetGeoMatchSetResponse.type = Types::GetGeoMatchSetResponse
    GetIPSetRequest.add_member(:ip_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'IPSetId', traits: {"smithy.api#documentation" => "<p>The <code>IPSetId</code> of the <a>IPSet</a> that you want to get. <code>IPSetId</code> is returned by <a>CreateIPSet</a> and by \n\t\t\t<a>ListIPSets</a>.</p>", "smithy.api#required" => {}}))
    GetIPSetRequest.type = Types::GetIPSetRequest
    GetIPSetResponse.add_member(:ip_set, Smithy::Schema::Shapes::ShapeRef.new(shape: IPSet, location_name: 'IPSet', traits: {"smithy.api#documentation" => "<p>Information about the <a>IPSet</a> that you specified in the <code>GetIPSet</code> request. For more information, see the \n\t\t\tfollowing topics:</p>\n\t\t       <ul>\n            <li>\n               <p>\n                  <a>IPSet</a>: Contains <code>IPSetDescriptors</code>, <code>IPSetId</code>, and <code>Name</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>IPSetDescriptors</code>: Contains an array of <a>IPSetDescriptor</a> objects. Each <code>IPSetDescriptor</code> \n\t\t\t\tobject contains <code>Type</code> and <code>Value</code>\n               </p>\n            </li>\n         </ul>"}))
    GetIPSetResponse.type = Types::GetIPSetResponse
    GetLoggingConfigurationRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the web ACL for which you want to get the <a>LoggingConfiguration</a>.</p>", "smithy.api#required" => {}}))
    GetLoggingConfigurationRequest.type = Types::GetLoggingConfigurationRequest
    GetLoggingConfigurationResponse.add_member(:logging_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: 'LoggingConfiguration', traits: {"smithy.api#documentation" => "<p>The <a>LoggingConfiguration</a> for the specified web ACL.</p>"}))
    GetLoggingConfigurationResponse.type = Types::GetLoggingConfigurationResponse
    GetPermissionPolicyRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the RuleGroup for which you want to get the policy.</p>", "smithy.api#required" => {}}))
    GetPermissionPolicyRequest.type = Types::GetPermissionPolicyRequest
    GetPermissionPolicyResponse.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyString, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The IAM policy attached to the specified RuleGroup.</p>"}))
    GetPermissionPolicyResponse.type = Types::GetPermissionPolicyResponse
    GetRateBasedRuleManagedKeysRequest.add_member(:rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RuleId', traits: {"smithy.api#documentation" => "<p>The <code>RuleId</code> of the <a>RateBasedRule</a> for which you want to\n         get a list of <code>ManagedKeys</code>. <code>RuleId</code> is returned by <a>CreateRateBasedRule</a> and by <a>ListRateBasedRules</a>.</p>", "smithy.api#required" => {}}))
    GetRateBasedRuleManagedKeysRequest.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>A null value and not currently used. Do not include this in your request.</p>"}))
    GetRateBasedRuleManagedKeysRequest.type = Types::GetRateBasedRuleManagedKeysRequest
    GetRateBasedRuleManagedKeysResponse.add_member(:managed_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedKeys, location_name: 'ManagedKeys', traits: {"smithy.api#documentation" => "<p>An array of IP addresses that currently are blocked by the specified <a>RateBasedRule</a>. </p>"}))
    GetRateBasedRuleManagedKeysResponse.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>A null value and not currently used.</p>"}))
    GetRateBasedRuleManagedKeysResponse.type = Types::GetRateBasedRuleManagedKeysResponse
    GetRateBasedRuleRequest.add_member(:rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RuleId', traits: {"smithy.api#documentation" => "<p>The <code>RuleId</code> of the <a>RateBasedRule</a> that you want to get.\n            <code>RuleId</code> is returned by <a>CreateRateBasedRule</a> and by <a>ListRateBasedRules</a>.</p>", "smithy.api#required" => {}}))
    GetRateBasedRuleRequest.type = Types::GetRateBasedRuleRequest
    GetRateBasedRuleResponse.add_member(:rule, Smithy::Schema::Shapes::ShapeRef.new(shape: RateBasedRule, location_name: 'Rule', traits: {"smithy.api#documentation" => "<p>Information about the <a>RateBasedRule</a> that you specified in the\n            <code>GetRateBasedRule</code> request.</p>"}))
    GetRateBasedRuleResponse.type = Types::GetRateBasedRuleResponse
    GetRegexMatchSetRequest.add_member(:regex_match_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RegexMatchSetId', traits: {"smithy.api#documentation" => "<p>The <code>RegexMatchSetId</code> of the <a>RegexMatchSet</a> that you want to get. <code>RegexMatchSetId</code> is returned by \n\t\t\t<a>CreateRegexMatchSet</a> and by <a>ListRegexMatchSets</a>.</p>", "smithy.api#required" => {}}))
    GetRegexMatchSetRequest.type = Types::GetRegexMatchSetRequest
    GetRegexMatchSetResponse.add_member(:regex_match_set, Smithy::Schema::Shapes::ShapeRef.new(shape: RegexMatchSet, location_name: 'RegexMatchSet', traits: {"smithy.api#documentation" => "<p>Information about the <a>RegexMatchSet</a> that you specified in the <code>GetRegexMatchSet</code> request. For more information, see <a>RegexMatchTuple</a>.</p>"}))
    GetRegexMatchSetResponse.type = Types::GetRegexMatchSetResponse
    GetRegexPatternSetRequest.add_member(:regex_pattern_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RegexPatternSetId', traits: {"smithy.api#documentation" => "<p>The <code>RegexPatternSetId</code> of the <a>RegexPatternSet</a> that you want to get. <code>RegexPatternSetId</code> is returned by \n\t\t\t<a>CreateRegexPatternSet</a> and by <a>ListRegexPatternSets</a>.</p>", "smithy.api#required" => {}}))
    GetRegexPatternSetRequest.type = Types::GetRegexPatternSetRequest
    GetRegexPatternSetResponse.add_member(:regex_pattern_set, Smithy::Schema::Shapes::ShapeRef.new(shape: RegexPatternSet, location_name: 'RegexPatternSet', traits: {"smithy.api#documentation" => "<p>Information about the <a>RegexPatternSet</a> that you specified in the <code>GetRegexPatternSet</code> request, including the identifier of the pattern set and the regular expression patterns you want AWS WAF to search for. </p>"}))
    GetRegexPatternSetResponse.type = Types::GetRegexPatternSetResponse
    GetRuleGroupRequest.add_member(:rule_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RuleGroupId', traits: {"smithy.api#documentation" => "<p>The <code>RuleGroupId</code> of the <a>RuleGroup</a> that you want to get. <code>RuleGroupId</code> is returned by <a>CreateRuleGroup</a> and by \n         <a>ListRuleGroups</a>.</p>", "smithy.api#required" => {}}))
    GetRuleGroupRequest.type = Types::GetRuleGroupRequest
    GetRuleGroupResponse.add_member(:rule_group, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroup, location_name: 'RuleGroup', traits: {"smithy.api#documentation" => "<p>Information about the <a>RuleGroup</a> that you specified in the <code>GetRuleGroup</code> request. </p>"}))
    GetRuleGroupResponse.type = Types::GetRuleGroupResponse
    GetRuleRequest.add_member(:rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RuleId', traits: {"smithy.api#documentation" => "<p>The <code>RuleId</code> of the <a>Rule</a> that you want to get. <code>RuleId</code> is returned by <a>CreateRule</a> and by \n\t\t\t<a>ListRules</a>.</p>", "smithy.api#required" => {}}))
    GetRuleRequest.type = Types::GetRuleRequest
    GetRuleResponse.add_member(:rule, Smithy::Schema::Shapes::ShapeRef.new(shape: Rule, location_name: 'Rule', traits: {"smithy.api#documentation" => "<p>Information about the <a>Rule</a> that you specified in the <code>GetRule</code> request. \n\t\t\tFor more information, see the following topics:</p>\n\t\t       <ul>\n            <li>\n               <p>\n                  <a>Rule</a>: Contains <code>MetricName</code>, <code>Name</code>, an array of <code>Predicate</code> objects, \n\t\t\t\tand <code>RuleId</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a>Predicate</a>: Each <code>Predicate</code> object contains <code>DataId</code>, <code>Negated</code>, and \n\t\t\t\t<code>Type</code>\n               </p>\n            </li>\n         </ul>"}))
    GetRuleResponse.type = Types::GetRuleResponse
    GetSampledRequestsRequest.add_member(:web_acl_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'WebAclId', traits: {"smithy.api#documentation" => "<p>The <code>WebACLId</code> of the <code>WebACL</code> for which you want <code>GetSampledRequests</code> to return a sample of requests.</p>", "smithy.api#required" => {}}))
    GetSampledRequestsRequest.add_member(:rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RuleId', traits: {"smithy.api#documentation" => "<p>\n            <code>RuleId</code> is one of three values:</p>\n\t\t\t      <ul>\n            <li>\n\t\t\t\t           <p>The <code>RuleId</code> of the <code>Rule</code> or the <code>RuleGroupId</code> of the <code>RuleGroup</code> for which you want <code>GetSampledRequests</code> to return a sample of requests.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Default_Action</code>, which causes <code>GetSampledRequests</code> to return a sample of the requests that \n\t\t\t\t\tdidn't match any of the rules in the specified <code>WebACL</code>.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    GetSampledRequestsRequest.add_member(:time_window, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeWindow, location_name: 'TimeWindow', traits: {"smithy.api#documentation" => "<p>The start date and time and the end date and time of the range for which you want <code>GetSampledRequests</code> to return a \n                        sample of requests. You must specify the times in Coordinated Universal Time (UTC) format. UTC format includes the special  \n                        designator, <code>Z</code>. For example, <code>\"2016-09-27T14:50Z\"</code>. You can specify any time range in the previous three hours.</p>", "smithy.api#required" => {}}))
    GetSampledRequestsRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: GetSampledRequestsMaxItems, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The number of requests that you want AWS WAF to return from among the first 5,000 requests that your AWS resource received\n\t\t\tduring the time range. If your resource received fewer requests than the value of <code>MaxItems</code>, <code>GetSampledRequests</code> \n\t\t\treturns information about all of them. </p>", "smithy.api#required" => {}}))
    GetSampledRequestsRequest.type = Types::GetSampledRequestsRequest
    GetSampledRequestsResponse.add_member(:sampled_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: SampledHTTPRequests, location_name: 'SampledRequests', traits: {"smithy.api#documentation" => "<p>A complex type that contains detailed information about each of the requests in the sample.</p>"}))
    GetSampledRequestsResponse.add_member(:population_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PopulationSize, location_name: 'PopulationSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of requests from which <code>GetSampledRequests</code> got a sample of <code>MaxItems</code> requests. \n\t\t\tIf <code>PopulationSize</code> is less than <code>MaxItems</code>, the sample includes every request that your AWS resource \n\t\t\treceived during the specified time range.</p>"}))
    GetSampledRequestsResponse.add_member(:time_window, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeWindow, location_name: 'TimeWindow', traits: {"smithy.api#documentation" => "<p>Usually, <code>TimeWindow</code> is the time range that you specified in the <code>GetSampledRequests</code> request. However, \n\t\t\tif your AWS resource received more than 5,000 requests during the time range that you specified in the request, \n\t\t\t<code>GetSampledRequests</code> returns the time range for the first 5,000 requests. Times are in Coordinated Universal Time (UTC) format.</p>"}))
    GetSampledRequestsResponse.type = Types::GetSampledRequestsResponse
    GetSizeConstraintSetRequest.add_member(:size_constraint_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'SizeConstraintSetId', traits: {"smithy.api#documentation" => "<p>The <code>SizeConstraintSetId</code> of the <a>SizeConstraintSet</a> that you want to get. <code>SizeConstraintSetId</code> is returned by \n\t\t\t<a>CreateSizeConstraintSet</a> and by <a>ListSizeConstraintSets</a>.</p>", "smithy.api#required" => {}}))
    GetSizeConstraintSetRequest.type = Types::GetSizeConstraintSetRequest
    GetSizeConstraintSetResponse.add_member(:size_constraint_set, Smithy::Schema::Shapes::ShapeRef.new(shape: SizeConstraintSet, location_name: 'SizeConstraintSet', traits: {"smithy.api#documentation" => "<p>Information about the <a>SizeConstraintSet</a> that you specified in the <code>GetSizeConstraintSet</code> request. For more information, see the \n\t\t\tfollowing topics:</p>\n\t\t       <ul>\n            <li>\n               <p>\n                  <a>SizeConstraintSet</a>: Contains <code>SizeConstraintSetId</code>, <code>SizeConstraints</code>, and <code>Name</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>SizeConstraints</code>: Contains an array of <a>SizeConstraint</a> objects. Each <code>SizeConstraint</code> \n\t\t\t\tobject contains <a>FieldToMatch</a>, <code>TextTransformation</code>, <code>ComparisonOperator</code>, \n\t\t\t\tand <code>Size</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>\n               </p>\n            </li>\n         </ul>"}))
    GetSizeConstraintSetResponse.type = Types::GetSizeConstraintSetResponse
    GetSqlInjectionMatchSetRequest.add_member(:sql_injection_match_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'SqlInjectionMatchSetId', traits: {"smithy.api#documentation" => "<p>The <code>SqlInjectionMatchSetId</code> of the <a>SqlInjectionMatchSet</a> that you want to get. <code>SqlInjectionMatchSetId</code> \n\t\t\tis returned by <a>CreateSqlInjectionMatchSet</a> and by <a>ListSqlInjectionMatchSets</a>.</p>", "smithy.api#required" => {}}))
    GetSqlInjectionMatchSetRequest.type = Types::GetSqlInjectionMatchSetRequest
    GetSqlInjectionMatchSetResponse.add_member(:sql_injection_match_set, Smithy::Schema::Shapes::ShapeRef.new(shape: SqlInjectionMatchSet, location_name: 'SqlInjectionMatchSet', traits: {"smithy.api#documentation" => "<p>Information about the <a>SqlInjectionMatchSet</a> that you specified in the <code>GetSqlInjectionMatchSet</code> request. \n\t\t\tFor more information, see the following topics:</p>\n\t\t       <ul>\n            <li>\n               <p>\n                  <a>SqlInjectionMatchSet</a>: Contains <code>Name</code>, <code>SqlInjectionMatchSetId</code>, and an array of \n\t\t\t\t<code>SqlInjectionMatchTuple</code> objects</p>\n            </li>\n            <li>\n               <p>\n                  <a>SqlInjectionMatchTuple</a>: Each <code>SqlInjectionMatchTuple</code> object contains <code>FieldToMatch</code> and \n\t\t\t\t<code>TextTransformation</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>\n               </p>\n            </li>\n         </ul>"}))
    GetSqlInjectionMatchSetResponse.type = Types::GetSqlInjectionMatchSetResponse
    GetWebACLForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) of the resource for which to get the web ACL, either an application load balancer or Amazon API Gateway stage.</p>\n         <p>The ARN should be in one of the following formats:</p>\n         <ul>\n            <li>\n               <p>For an Application Load Balancer: <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/app/<i>load-balancer-name</i>/<i>load-balancer-id</i>\n                  </code>\n               </p>\n            </li>\n            <li>\n               <p>For an Amazon API Gateway stage: <code>arn:aws:apigateway:<i>region</i>::/restapis/<i>api-id</i>/stages/<i>stage-name</i>\n                  </code>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    GetWebACLForResourceRequest.type = Types::GetWebACLForResourceRequest
    GetWebACLForResourceResponse.add_member(:web_acl_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: WebACLSummary, location_name: 'WebACLSummary', traits: {"smithy.api#documentation" => "<p>Information about the web ACL that you specified in the <code>GetWebACLForResource</code> request. If there is no associated resource, a null WebACLSummary is returned.</p>"}))
    GetWebACLForResourceResponse.type = Types::GetWebACLForResourceResponse
    GetWebACLRequest.add_member(:web_acl_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'WebACLId', traits: {"smithy.api#documentation" => "<p>The <code>WebACLId</code> of the <a>WebACL</a> that you want to get. <code>WebACLId</code> is returned by <a>CreateWebACL</a> and by \n\t\t\t<a>ListWebACLs</a>.</p>", "smithy.api#required" => {}}))
    GetWebACLRequest.type = Types::GetWebACLRequest
    GetWebACLResponse.add_member(:web_acl, Smithy::Schema::Shapes::ShapeRef.new(shape: WebACL, location_name: 'WebACL', traits: {"smithy.api#documentation" => "<p>Information about the <a>WebACL</a> that you specified in the <code>GetWebACL</code> request. \n\t\t\tFor more information, see the following topics:</p>\n\t\t       <ul>\n            <li>\n               <p>\n                  <a>WebACL</a>: Contains <code>DefaultAction</code>, <code>MetricName</code>, <code>Name</code>, an array of \n\t\t\t\t<code>Rule</code> objects, and <code>WebACLId</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>DefaultAction</code> (Data type is <a>WafAction</a>): Contains <code>Type</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Rules</code>: Contains an array of <code>ActivatedRule</code> objects, which contain <code>Action</code>, \n\t\t\t\t<code>Priority</code>, and <code>RuleId</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Action</code>: Contains <code>Type</code>\n               </p>\n            </li>\n         </ul>"}))
    GetWebACLResponse.type = Types::GetWebACLResponse
    GetXssMatchSetRequest.add_member(:xss_match_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'XssMatchSetId', traits: {"smithy.api#documentation" => "<p>The <code>XssMatchSetId</code> of the <a>XssMatchSet</a> that you want to get. <code>XssMatchSetId</code> \n\t\t\tis returned by <a>CreateXssMatchSet</a> and by <a>ListXssMatchSets</a>.</p>", "smithy.api#required" => {}}))
    GetXssMatchSetRequest.type = Types::GetXssMatchSetRequest
    GetXssMatchSetResponse.add_member(:xss_match_set, Smithy::Schema::Shapes::ShapeRef.new(shape: XssMatchSet, location_name: 'XssMatchSet', traits: {"smithy.api#documentation" => "<p>Information about the <a>XssMatchSet</a> that you specified in the <code>GetXssMatchSet</code> request. \n\t\t\tFor more information, see the following topics:</p>\n\t\t       <ul>\n            <li>\n               <p>\n                  <a>XssMatchSet</a>: Contains <code>Name</code>, <code>XssMatchSetId</code>, and an array of \n\t\t\t\t<code>XssMatchTuple</code> objects</p>\n            </li>\n            <li>\n               <p>\n                  <a>XssMatchTuple</a>: Each <code>XssMatchTuple</code> object contains <code>FieldToMatch</code> and \n\t\t\t\t<code>TextTransformation</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>\n               </p>\n            </li>\n         </ul>"}))
    GetXssMatchSetResponse.type = Types::GetXssMatchSetResponse
    HTTPHeader.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of one of the headers in the sampled web request.</p>"}))
    HTTPHeader.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of one of the headers in the sampled web request.</p>"}))
    HTTPHeader.type = Types::HTTPHeader
    HTTPHeaders.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HTTPHeader)
    HTTPRequest.add_member(:client_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: IPString, location_name: 'ClientIP', traits: {"smithy.api#documentation" => "<p>The IP address that the request originated from. If the <code>WebACL</code> is associated with a CloudFront distribution, \n\t\t\tthis is the value of one of the following fields in CloudFront access logs:</p>\n\t\t       <ul>\n            <li>\n               <p>\n                  <code>c-ip</code>, if the viewer did not use an HTTP proxy or a load balancer to send the request</p>\n            </li>\n            <li>\n               <p>\n                  <code>x-forwarded-for</code>, if the viewer did use an HTTP proxy or a load balancer to send the request</p>\n            </li>\n         </ul>"}))
    HTTPRequest.add_member(:country, Smithy::Schema::Shapes::ShapeRef.new(shape: Country, location_name: 'Country', traits: {"smithy.api#documentation" => "<p>The two-letter country code for the country that the request originated from. For a current list of country codes, \n\t\t\tsee the Wikipedia entry <a href=\"https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2\">ISO 3166-1 alpha-2</a>.</p>"}))
    HTTPRequest.add_member(:uri, Smithy::Schema::Shapes::ShapeRef.new(shape: URIString, location_name: 'URI', traits: {"smithy.api#documentation" => "<p>The part of a web request that identifies the resource, for example, <code>/images/daily-ad.jpg</code>.</p>"}))
    HTTPRequest.add_member(:method, Smithy::Schema::Shapes::ShapeRef.new(shape: HTTPMethod, location_name: 'Method', traits: {"smithy.api#documentation" => "<p>The HTTP method specified in the sampled web request. CloudFront supports the following methods: <code>DELETE</code>, \n\t\t\t<code>GET</code>, <code>HEAD</code>, <code>OPTIONS</code>, <code>PATCH</code>, <code>POST</code>, and <code>PUT</code>. </p>"}))
    HTTPRequest.add_member(:http_version, Smithy::Schema::Shapes::ShapeRef.new(shape: HTTPVersion, location_name: 'HTTPVersion', traits: {"smithy.api#documentation" => "<p>The HTTP version specified in the sampled web request, for example, <code>HTTP/1.1</code>.</p>"}))
    HTTPRequest.add_member(:headers, Smithy::Schema::Shapes::ShapeRef.new(shape: HTTPHeaders, location_name: 'Headers', traits: {"smithy.api#documentation" => "<p>A complex type that contains two values for each header in the sampled web request: the name of the header and the value of the header.</p>"}))
    HTTPRequest.type = Types::HTTPRequest
    IPSet.add_member(:ip_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'IPSetId', traits: {"smithy.api#documentation" => "<p>The <code>IPSetId</code> for an <code>IPSet</code>. You use <code>IPSetId</code> to get information about an \n\t\t\t<code>IPSet</code> (see <a>GetIPSet</a>), update an <code>IPSet</code> (see <a>UpdateIPSet</a>), \n\t\t\tinsert an <code>IPSet</code> into a <code>Rule</code> or delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and \n\t\t\tdelete an <code>IPSet</code> from AWS WAF (see <a>DeleteIPSet</a>).</p>\n\t\t       <p>\n            <code>IPSetId</code> is returned by <a>CreateIPSet</a> and by <a>ListIPSets</a>.</p>", "smithy.api#required" => {}}))
    IPSet.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name or description of the <a>IPSet</a>. You can't change the name of an <code>IPSet</code> after you create it.</p>"}))
    IPSet.add_member(:ip_set_descriptors, Smithy::Schema::Shapes::ShapeRef.new(shape: IPSetDescriptors, location_name: 'IPSetDescriptors', traits: {"smithy.api#documentation" => "<p>The IP address type (<code>IPV4</code> or <code>IPV6</code>) and the IP address range (in CIDR notation) that web requests originate from. \n\t\t\tIf the <code>WebACL</code> is associated with a CloudFront distribution and the viewer did not use an HTTP proxy or a load balancer to send the request, this is the value of the c-ip field in the CloudFront access logs.</p>", "smithy.api#required" => {}}))
    IPSet.type = Types::IPSet
    IPSetDescriptor.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: IPSetDescriptorType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Specify <code>IPV4</code> or <code>IPV6</code>.</p>", "smithy.api#required" => {}}))
    IPSetDescriptor.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: IPSetDescriptorValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>Specify an IPv4 address by using CIDR notation. For example:</p>\n\t\t       <ul>\n            <li>\n               <p>To configure AWS WAF to allow, block, or count requests that originated from the IP address 192.0.2.44, specify <code>192.0.2.44/32</code>.</p>\n            </li>\n            <li>\n               <p>To configure AWS WAF to allow, block, or count requests that originated from IP addresses from 192.0.2.0 to 192.0.2.255, specify \n\t\t\t\t<code>192.0.2.0/24</code>.</p>\n            </li>\n         </ul>\n\t\t    \n\t        <p>For more information about CIDR notation, see the Wikipedia entry \n\t      <a href=\"https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing\">Classless Inter-Domain Routing</a>.</p>\n\t        <p>Specify an IPv6 address by using CIDR notation. For example:</p>\n\t        <ul>\n            <li>\n\t              <p>To configure AWS WAF to allow, block, or count requests that originated from the IP address 1111:0000:0000:0000:0000:0000:0000:0111, specify <code>1111:0000:0000:0000:0000:0000:0000:0111/128</code>.</p>\n\t           </li>\n            <li>\n\t              <p>To configure AWS WAF to allow, block, or count requests that originated from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000 to 1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify <code>1111:0000:0000:0000:0000:0000:0000:0000/64</code>.</p>\n\t           </li>\n         </ul>", "smithy.api#required" => {}}))
    IPSetDescriptor.type = Types::IPSetDescriptor
    IPSetDescriptorType.add_member(:ipv4, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4', traits: {"smithy.api#enumValue" => "IPV4"}))
    IPSetDescriptorType.add_member(:ipv6, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV6', traits: {"smithy.api#enumValue" => "IPV6"}))
    IPSetDescriptors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IPSetDescriptor)
    IPSetSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IPSetSummary)
    IPSetSummary.add_member(:ip_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'IPSetId', traits: {"smithy.api#documentation" => "<p>The <code>IPSetId</code> for an <a>IPSet</a>. You can use <code>IPSetId</code> in a <a>GetIPSet</a> request to get detailed \n\t\t\tinformation about an <a>IPSet</a>.</p>", "smithy.api#required" => {}}))
    IPSetSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name or description of the <a>IPSet</a>. You can't change the name of an <code>IPSet</code> after you create it.</p>", "smithy.api#required" => {}}))
    IPSetSummary.type = Types::IPSetSummary
    IPSetUpdate.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeAction, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>Specifies whether to insert or delete an IP address with <a>UpdateIPSet</a>.</p>", "smithy.api#required" => {}}))
    IPSetUpdate.add_member(:ip_set_descriptor, Smithy::Schema::Shapes::ShapeRef.new(shape: IPSetDescriptor, location_name: 'IPSetDescriptor', traits: {"smithy.api#documentation" => "<p>The IP address type (<code>IPV4</code> or <code>IPV6</code>) and the IP address range (in CIDR notation) that web requests originate from.</p>", "smithy.api#required" => {}}))
    IPSetUpdate.type = Types::IPSetUpdate
    IPSetUpdates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IPSetUpdate)
    ListActivatedRulesInRuleGroupRequest.add_member(:rule_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RuleGroupId', traits: {"smithy.api#documentation" => "<p>The <code>RuleGroupId</code> of the <a>RuleGroup</a> for which you want to get a list of <a>ActivatedRule</a> objects.</p>"}))
    ListActivatedRulesInRuleGroupRequest.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If you specify a value for <code>Limit</code> and you have more <code>ActivatedRules</code> than the value of <code>Limit</code>, \n         AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>ActivatedRules</code>. \n         For the second and subsequent <code>ListActivatedRulesInRuleGroup</code> requests, specify the value of <code>NextMarker</code> \n         from the previous response to get information about another batch of <code>ActivatedRules</code>.</p>"}))
    ListActivatedRulesInRuleGroupRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: 'Limit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Specifies the number of <code>ActivatedRules</code> that you want AWS WAF to return for this request. If you have more <code>ActivatedRules</code> than the number that you specify for <code>Limit</code>, the response includes a \n         <code>NextMarker</code> value that you can use to get another batch of <code>ActivatedRules</code>.</p>"}))
    ListActivatedRulesInRuleGroupRequest.type = Types::ListActivatedRulesInRuleGroupRequest
    ListActivatedRulesInRuleGroupResponse.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If you have more <code>ActivatedRules</code> than the number that you specified for <code>Limit</code> in the request, the response includes a <code>NextMarker</code> value. To list more <code>ActivatedRules</code>, submit another <code>ListActivatedRulesInRuleGroup</code> request, and specify the <code>NextMarker</code> value from the response in the <code>NextMarker</code> value in the next request.</p>"}))
    ListActivatedRulesInRuleGroupResponse.add_member(:activated_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivatedRules, location_name: 'ActivatedRules', traits: {"smithy.api#documentation" => "<p>An array of <code>ActivatedRules</code> objects.</p>"}))
    ListActivatedRulesInRuleGroupResponse.type = Types::ListActivatedRulesInRuleGroupResponse
    ListByteMatchSetsRequest.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If you specify a value for <code>Limit</code> and you have more <code>ByteMatchSets</code> than the value of <code>Limit</code>, \n\t\t\tAWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>ByteMatchSets</code>. \n\t\t\tFor the second and subsequent <code>ListByteMatchSets</code> requests, specify the value of <code>NextMarker</code> \n\t\t\tfrom the previous response to get information about another batch of <code>ByteMatchSets</code>.</p>"}))
    ListByteMatchSetsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: 'Limit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Specifies the number of <code>ByteMatchSet</code> objects that you want AWS WAF to return for this request. If you have more \n\t\t\t<code>ByteMatchSets</code> objects than the number you specify for <code>Limit</code>, the response includes a \n\t\t\t<code>NextMarker</code> value that you can use to get another batch of <code>ByteMatchSet</code> objects.</p>"}))
    ListByteMatchSetsRequest.type = Types::ListByteMatchSetsRequest
    ListByteMatchSetsResponse.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If you have more <code>ByteMatchSet</code> objects than the number that you specified for <code>Limit</code> in the request, \n\t\t\tthe response includes a <code>NextMarker</code> value. To list more <code>ByteMatchSet</code> objects, submit another \n\t\t\t<code>ListByteMatchSets</code> request, and specify the <code>NextMarker</code> value from the response in the \n\t\t\t<code>NextMarker</code> value in the next request.</p>"}))
    ListByteMatchSetsResponse.add_member(:byte_match_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: ByteMatchSetSummaries, location_name: 'ByteMatchSets', traits: {"smithy.api#documentation" => "<p>An array of <a>ByteMatchSetSummary</a> objects.</p>"}))
    ListByteMatchSetsResponse.type = Types::ListByteMatchSetsResponse
    ListGeoMatchSetsRequest.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If you specify a value for <code>Limit</code> and you have more <code>GeoMatchSet</code>s than the value of <code>Limit</code>, \n\t\t\tAWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>GeoMatchSet</code> objects. \n\t\t\tFor the second and subsequent <code>ListGeoMatchSets</code> requests, specify the value of <code>NextMarker</code> \n\t\t\tfrom the previous response to get information about another batch of <code>GeoMatchSet</code> objects.</p>"}))
    ListGeoMatchSetsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: 'Limit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Specifies the number of <code>GeoMatchSet</code> objects that you want AWS WAF to return for this request. If you have more \n\t\t\t<code>GeoMatchSet</code> objects than the number you specify for <code>Limit</code>, the response includes a \n\t\t\t<code>NextMarker</code> value that you can use to get another batch of <code>GeoMatchSet</code> objects.</p>"}))
    ListGeoMatchSetsRequest.type = Types::ListGeoMatchSetsRequest
    ListGeoMatchSetsResponse.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If you have more <code>GeoMatchSet</code> objects than the number that you specified for <code>Limit</code> in the request, \n\t\t\tthe response includes a <code>NextMarker</code> value. To list more <code>GeoMatchSet</code> objects, submit another \n\t\t\t<code>ListGeoMatchSets</code> request, and specify the <code>NextMarker</code> value from the response in the \n\t\t\t<code>NextMarker</code> value in the next request.</p>"}))
    ListGeoMatchSetsResponse.add_member(:geo_match_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: GeoMatchSetSummaries, location_name: 'GeoMatchSets', traits: {"smithy.api#documentation" => "<p>An array of <a>GeoMatchSetSummary</a> objects.</p>"}))
    ListGeoMatchSetsResponse.type = Types::ListGeoMatchSetsResponse
    ListIPSetsRequest.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>AWS WAF returns a <code>NextMarker</code> value in the response that allows you to\n         list another group of <code>IPSets</code>. For the second and subsequent\n            <code>ListIPSets</code> requests, specify the value of <code>NextMarker</code> from the\n         previous response to get information about another batch of <code>IPSets</code>.</p>"}))
    ListIPSetsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: 'Limit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Specifies the number of <code>IPSet</code> objects that you want AWS WAF to return for this request. If you have more \n\t\t\t<code>IPSet</code> objects than the number you specify for <code>Limit</code>, the response includes a \n\t\t\t<code>NextMarker</code> value that you can use to get another batch of <code>IPSet</code> objects.</p>"}))
    ListIPSetsRequest.type = Types::ListIPSetsRequest
    ListIPSetsResponse.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>To list more <code>IPSet</code> objects, submit another <code>ListIPSets</code>\n         request, and in the next request use the <code>NextMarker</code> response value as the\n            <code>NextMarker</code> value.</p>"}))
    ListIPSetsResponse.add_member(:ip_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: IPSetSummaries, location_name: 'IPSets', traits: {"smithy.api#documentation" => "<p>An array of <a>IPSetSummary</a> objects.</p>"}))
    ListIPSetsResponse.type = Types::ListIPSetsResponse
    ListLoggingConfigurationsRequest.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If you specify a value for <code>Limit</code> and you have more <code>LoggingConfigurations</code> than the value of <code>Limit</code>, \n\t\t\tAWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>LoggingConfigurations</code>. \n\t\t\tFor the second and subsequent <code>ListLoggingConfigurations</code> requests, specify the value of <code>NextMarker</code> \n\t\t\tfrom the previous response to get information about another batch of <code>ListLoggingConfigurations</code>.</p>"}))
    ListLoggingConfigurationsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: 'Limit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Specifies the number of <code>LoggingConfigurations</code> that you want AWS WAF to return for this request. If you have more <code>LoggingConfigurations</code> than the number that you specify for <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can use to get another batch of <code>LoggingConfigurations</code>.</p>"}))
    ListLoggingConfigurationsRequest.type = Types::ListLoggingConfigurationsRequest
    ListLoggingConfigurationsResponse.add_member(:logging_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurations, location_name: 'LoggingConfigurations', traits: {"smithy.api#documentation" => "<p>An array of <a>LoggingConfiguration</a> objects.</p>"}))
    ListLoggingConfigurationsResponse.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If you have more <code>LoggingConfigurations</code> than the number that you specified for <code>Limit</code> in the request, the response includes a <code>NextMarker</code> value. To list more <code>LoggingConfigurations</code>, submit another <code>ListLoggingConfigurations</code> request, and specify the <code>NextMarker</code> value from the response in the <code>NextMarker</code> value in the next request.</p>"}))
    ListLoggingConfigurationsResponse.type = Types::ListLoggingConfigurationsResponse
    ListRateBasedRulesRequest.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If you specify a value for <code>Limit</code> and you have more <code>Rules</code>\n         than the value of <code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the\n         response that allows you to list another group of <code>Rules</code>. For the second and\n         subsequent <code>ListRateBasedRules</code> requests, specify the value of\n            <code>NextMarker</code> from the previous response to get information about another\n         batch of <code>Rules</code>.</p>"}))
    ListRateBasedRulesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: 'Limit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Specifies the number of <code>Rules</code> that you want AWS WAF to return for this\n         request. If you have more <code>Rules</code> than the number that you specify for\n            <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can\n         use to get another batch of <code>Rules</code>.</p>"}))
    ListRateBasedRulesRequest.type = Types::ListRateBasedRulesRequest
    ListRateBasedRulesResponse.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If you have more <code>Rules</code> than the number that you specified for\n            <code>Limit</code> in the request, the response includes a <code>NextMarker</code>\n         value. To list more <code>Rules</code>, submit another <code>ListRateBasedRules</code>\n         request, and specify the <code>NextMarker</code> value from the response in the\n            <code>NextMarker</code> value in the next request.</p>"}))
    ListRateBasedRulesResponse.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSummaries, location_name: 'Rules', traits: {"smithy.api#documentation" => "<p>An array of <a>RuleSummary</a> objects.</p>"}))
    ListRateBasedRulesResponse.type = Types::ListRateBasedRulesResponse
    ListRegexMatchSetsRequest.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If you specify a value for <code>Limit</code> and you have more <code>RegexMatchSet</code> objects than the value of <code>Limit</code>, \n\t\t\tAWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>ByteMatchSets</code>. \n\t\t\tFor the second and subsequent <code>ListRegexMatchSets</code> requests, specify the value of <code>NextMarker</code> \n\t\t\tfrom the previous response to get information about another batch of <code>RegexMatchSet</code> objects.</p>"}))
    ListRegexMatchSetsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: 'Limit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Specifies the number of <code>RegexMatchSet</code> objects that you want AWS WAF to return for this request. If you have more \n\t\t\t<code>RegexMatchSet</code> objects than the number you specify for <code>Limit</code>, the response includes a \n\t\t\t<code>NextMarker</code> value that you can use to get another batch of <code>RegexMatchSet</code> objects.</p>"}))
    ListRegexMatchSetsRequest.type = Types::ListRegexMatchSetsRequest
    ListRegexMatchSetsResponse.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If you have more <code>RegexMatchSet</code> objects than the number that you specified for <code>Limit</code> in the request, \n\t\t\tthe response includes a <code>NextMarker</code> value. To list more <code>RegexMatchSet</code> objects, submit another \n\t\t\t<code>ListRegexMatchSets</code> request, and specify the <code>NextMarker</code> value from the response in the \n\t\t\t<code>NextMarker</code> value in the next request.</p>"}))
    ListRegexMatchSetsResponse.add_member(:regex_match_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: RegexMatchSetSummaries, location_name: 'RegexMatchSets', traits: {"smithy.api#documentation" => "<p>An array of <a>RegexMatchSetSummary</a> objects.</p>"}))
    ListRegexMatchSetsResponse.type = Types::ListRegexMatchSetsResponse
    ListRegexPatternSetsRequest.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If you specify a value for <code>Limit</code> and you have more <code>RegexPatternSet</code> objects than the value of <code>Limit</code>, \n\t\t\tAWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>RegexPatternSet</code> objects. \n\t\t\tFor the second and subsequent <code>ListRegexPatternSets</code> requests, specify the value of <code>NextMarker</code> \n\t\t\tfrom the previous response to get information about another batch of <code>RegexPatternSet</code> objects.</p>"}))
    ListRegexPatternSetsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: 'Limit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Specifies the number of <code>RegexPatternSet</code> objects that you want AWS WAF to return for this request. If you have more \n\t\t\t<code>RegexPatternSet</code> objects than the number you specify for <code>Limit</code>, the response includes a \n\t\t\t<code>NextMarker</code> value that you can use to get another batch of <code>RegexPatternSet</code> objects.</p>"}))
    ListRegexPatternSetsRequest.type = Types::ListRegexPatternSetsRequest
    ListRegexPatternSetsResponse.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If you have more <code>RegexPatternSet</code> objects than the number that you specified for <code>Limit</code> in the request, \n\t\t\tthe response includes a <code>NextMarker</code> value. To list more <code>RegexPatternSet</code> objects, submit another \n\t\t\t<code>ListRegexPatternSets</code> request, and specify the <code>NextMarker</code> value from the response in the \n\t\t\t<code>NextMarker</code> value in the next request.</p>"}))
    ListRegexPatternSetsResponse.add_member(:regex_pattern_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: RegexPatternSetSummaries, location_name: 'RegexPatternSets', traits: {"smithy.api#documentation" => "<p>An array of <a>RegexPatternSetSummary</a> objects.</p>"}))
    ListRegexPatternSetsResponse.type = Types::ListRegexPatternSetsResponse
    ListResourcesForWebACLRequest.add_member(:web_acl_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'WebACLId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the web ACL for which to list the associated resources.</p>", "smithy.api#required" => {}}))
    ListResourcesForWebACLRequest.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The type of resource to list, either an application load balancer or Amazon API Gateway.</p>"}))
    ListResourcesForWebACLRequest.type = Types::ListResourcesForWebACLRequest
    ListResourcesForWebACLResponse.add_member(:resource_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArns, location_name: 'ResourceArns', traits: {"smithy.api#documentation" => "<p>An array of ARNs (Amazon Resource Names) of the resources associated with the specified web ACL. An array with zero elements is returned if there are no resources associated with the web ACL.</p>"}))
    ListResourcesForWebACLResponse.type = Types::ListResourcesForWebACLResponse
    ListRuleGroupsRequest.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If you specify a value for <code>Limit</code> and you have more <code>RuleGroups</code> than the value of <code>Limit</code>, \n         AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>RuleGroups</code>. \n         For the second and subsequent <code>ListRuleGroups</code> requests, specify the value of <code>NextMarker</code> \n         from the previous response to get information about another batch of <code>RuleGroups</code>.</p>"}))
    ListRuleGroupsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: 'Limit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Specifies the number of <code>RuleGroups</code> that you want AWS WAF to return for this request. If you have more <code>RuleGroups</code> than the number that you specify for <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can use to get another batch of <code>RuleGroups</code>.</p>"}))
    ListRuleGroupsRequest.type = Types::ListRuleGroupsRequest
    ListRuleGroupsResponse.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If you have more <code>RuleGroups</code> than the number that you specified for <code>Limit</code> in the request, the response includes a <code>NextMarker</code> value. To list more <code>RuleGroups</code>, submit another <code>ListRuleGroups</code> request, and specify the <code>NextMarker</code> value from the response in the <code>NextMarker</code> value in the next request.</p>"}))
    ListRuleGroupsResponse.add_member(:rule_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupSummaries, location_name: 'RuleGroups', traits: {"smithy.api#documentation" => "<p>An array of <a>RuleGroup</a> objects.</p>"}))
    ListRuleGroupsResponse.type = Types::ListRuleGroupsResponse
    ListRulesRequest.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If you specify a value for <code>Limit</code> and you have more <code>Rules</code> than the value of <code>Limit</code>, \n\t\t\tAWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>Rules</code>. \n\t\t\tFor the second and subsequent <code>ListRules</code> requests, specify the value of <code>NextMarker</code> \n\t\t\tfrom the previous response to get information about another batch of <code>Rules</code>.</p>"}))
    ListRulesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: 'Limit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Specifies the number of <code>Rules</code> that you want AWS WAF to return for this request. If you have more \t\t\t<code>Rules</code> than the number that you specify for <code>Limit</code>, the response includes a \n\t\t\t<code>NextMarker</code> value that you can use to get another batch of <code>Rules</code>.</p>"}))
    ListRulesRequest.type = Types::ListRulesRequest
    ListRulesResponse.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If you have more <code>Rules</code> than the number that you specified for <code>Limit</code> in the request, \t\t\tthe response includes a <code>NextMarker</code> value. To list more <code>Rules</code>, submit another \n\t\t\t<code>ListRules</code> request, and specify the <code>NextMarker</code> value from the response in the \n\t\t\t<code>NextMarker</code> value in the next request.</p>"}))
    ListRulesResponse.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSummaries, location_name: 'Rules', traits: {"smithy.api#documentation" => "<p>An array of <a>RuleSummary</a> objects.</p>"}))
    ListRulesResponse.type = Types::ListRulesResponse
    ListSizeConstraintSetsRequest.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If you specify a value for <code>Limit</code> and you have more <code>SizeConstraintSets</code> than the value of <code>Limit</code>, \n\t\t\tAWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>SizeConstraintSets</code>. \n\t\t\tFor the second and subsequent <code>ListSizeConstraintSets</code> requests, specify the value of <code>NextMarker</code> \t\t\tfrom the previous response to get information about another batch of <code>SizeConstraintSets</code>.</p>"}))
    ListSizeConstraintSetsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: 'Limit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Specifies the number of <code>SizeConstraintSet</code> objects that you want AWS WAF to return for this request. If you have more \n\t\t\t<code>SizeConstraintSets</code> objects than the number you specify for <code>Limit</code>, the response includes a \n\t\t\t<code>NextMarker</code> value that you can use to get another batch of <code>SizeConstraintSet</code> objects.</p>"}))
    ListSizeConstraintSetsRequest.type = Types::ListSizeConstraintSetsRequest
    ListSizeConstraintSetsResponse.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If you have more <code>SizeConstraintSet</code> objects than the number that you specified for <code>Limit</code> in the request, \n\t\t\tthe response includes a <code>NextMarker</code> value. To list more <code>SizeConstraintSet</code> objects, submit another \n\t\t\t<code>ListSizeConstraintSets</code> request, and specify the <code>NextMarker</code> value from the response in the \n\t\t\t<code>NextMarker</code> value in the next request.</p>"}))
    ListSizeConstraintSetsResponse.add_member(:size_constraint_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: SizeConstraintSetSummaries, location_name: 'SizeConstraintSets', traits: {"smithy.api#documentation" => "<p>An array of <a>SizeConstraintSetSummary</a> objects.</p>"}))
    ListSizeConstraintSetsResponse.type = Types::ListSizeConstraintSetsResponse
    ListSqlInjectionMatchSetsRequest.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If you specify a value for <code>Limit</code> and you have more <a>SqlInjectionMatchSet</a> objects than the value of \n\t\t\t<code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of \n\t\t\t<code>SqlInjectionMatchSets</code>. For the second and subsequent <code>ListSqlInjectionMatchSets</code> requests, specify the \n\t\t\tvalue of <code>NextMarker</code> from the previous response to get information about another batch of <code>SqlInjectionMatchSets</code>.</p>"}))
    ListSqlInjectionMatchSetsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: 'Limit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Specifies the number of <a>SqlInjectionMatchSet</a> objects that you want AWS WAF to return for this request. If you have more \n\t\t\t<code>SqlInjectionMatchSet</code> objects than the number you specify for <code>Limit</code>, the response includes a \n\t\t\t<code>NextMarker</code> value that you can use to get another batch of <code>Rules</code>.</p>"}))
    ListSqlInjectionMatchSetsRequest.type = Types::ListSqlInjectionMatchSetsRequest
    ListSqlInjectionMatchSetsResponse.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If you have more <a>SqlInjectionMatchSet</a> objects than the number that you specified for <code>Limit</code> in the request, \n\t\t\tthe response includes a <code>NextMarker</code> value. To list more <code>SqlInjectionMatchSet</code> objects, submit another \n\t\t\t<code>ListSqlInjectionMatchSets</code> request, and specify the <code>NextMarker</code> value from the response in the \n\t\t\t<code>NextMarker</code> value in the next request.</p>"}))
    ListSqlInjectionMatchSetsResponse.add_member(:sql_injection_match_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: SqlInjectionMatchSetSummaries, location_name: 'SqlInjectionMatchSets', traits: {"smithy.api#documentation" => "<p>An array of <a>SqlInjectionMatchSetSummary</a> objects.</p>"}))
    ListSqlInjectionMatchSetsResponse.type = Types::ListSqlInjectionMatchSetsResponse
    ListSubscribedRuleGroupsRequest.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If you specify a value for <code>Limit</code> and you have more <code>ByteMatchSets</code>subscribed rule groups than the value of <code>Limit</code>, \n\t\t\tAWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of subscribed rule groups. \n\t\t\tFor the second and subsequent <code>ListSubscribedRuleGroupsRequest</code> requests, specify the value of <code>NextMarker</code> \n\t\t\tfrom the previous response to get information about another batch of subscribed rule groups.</p>"}))
    ListSubscribedRuleGroupsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: 'Limit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Specifies the number of subscribed rule groups that you want AWS WAF to return for this request. If you have more \n\t\t\tobjects than the number you specify for <code>Limit</code>, the response includes a \n\t\t\t<code>NextMarker</code> value that you can use to get another batch of objects.</p>"}))
    ListSubscribedRuleGroupsRequest.type = Types::ListSubscribedRuleGroupsRequest
    ListSubscribedRuleGroupsResponse.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If you have more objects than the number that you specified for <code>Limit</code> in the request, \n\t\t\tthe response includes a <code>NextMarker</code> value. To list more objects, submit another \n\t\t\t<code>ListSubscribedRuleGroups</code> request, and specify the <code>NextMarker</code> value from the response in the \n\t\t\t<code>NextMarker</code> value in the next request.</p>"}))
    ListSubscribedRuleGroupsResponse.add_member(:rule_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscribedRuleGroupSummaries, location_name: 'RuleGroups', traits: {"smithy.api#documentation" => "<p>An array of <a>RuleGroup</a> objects.</p>"}))
    ListSubscribedRuleGroupsResponse.type = Types::ListSubscribedRuleGroupsResponse
    ListTagsForResourceRequest.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p></p>"}))
    ListTagsForResourceRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: 'Limit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p></p>"}))
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p></p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p></p>"}))
    ListTagsForResourceResponse.add_member(:tag_info_for_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: TagInfoForResource, location_name: 'TagInfoForResource', traits: {"smithy.api#documentation" => "<p></p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListWebACLsRequest.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If you specify a value for <code>Limit</code> and you have more <code>WebACL</code> objects than the number that you specify \n\t\t\tfor <code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of \n\t\t\t<code>WebACL</code> objects. For the second and subsequent <code>ListWebACLs</code> requests, specify the value of <code>NextMarker</code> \n\t\t\tfrom the previous response to get information about another batch of <code>WebACL</code> objects.</p>"}))
    ListWebACLsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: 'Limit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Specifies the number of <code>WebACL</code> objects that you want AWS WAF to return for this request. If you have more \n\t\t\t<code>WebACL</code> objects than the number that you specify for <code>Limit</code>, the response includes a \n\t\t\t<code>NextMarker</code> value that you can use to get another batch of <code>WebACL</code> objects.</p>"}))
    ListWebACLsRequest.type = Types::ListWebACLsRequest
    ListWebACLsResponse.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If you have more <code>WebACL</code> objects than the number that you specified for <code>Limit</code> in the request, \n\t\t\tthe response includes a <code>NextMarker</code> value. To list more <code>WebACL</code> objects, submit another \n\t\t\t<code>ListWebACLs</code> request, and specify the <code>NextMarker</code> value from the response in the \n\t\t\t<code>NextMarker</code> value in the next request.</p>"}))
    ListWebACLsResponse.add_member(:web_ac_ls, Smithy::Schema::Shapes::ShapeRef.new(shape: WebACLSummaries, location_name: 'WebACLs', traits: {"smithy.api#documentation" => "<p>An array of <a>WebACLSummary</a> objects.</p>"}))
    ListWebACLsResponse.type = Types::ListWebACLsResponse
    ListXssMatchSetsRequest.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If you specify a value for <code>Limit</code> and you have more <a>XssMatchSet</a> objects than the value of \n\t\t\t<code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of \n\t\t\t<code>XssMatchSets</code>. For the second and subsequent <code>ListXssMatchSets</code> requests, specify the \n\t\t\tvalue of <code>NextMarker</code> from the previous response to get information about another batch of <code>XssMatchSets</code>.</p>"}))
    ListXssMatchSetsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationLimit, location_name: 'Limit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Specifies the number of <a>XssMatchSet</a> objects that you want AWS WAF to return for this request. If you have more \n\t\t\t<code>XssMatchSet</code> objects than the number you specify for <code>Limit</code>, the response includes a \n\t\t\t<code>NextMarker</code> value that you can use to get another batch of <code>Rules</code>.</p>"}))
    ListXssMatchSetsRequest.type = Types::ListXssMatchSetsRequest
    ListXssMatchSetsResponse.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If you have more <a>XssMatchSet</a> objects than the number that you specified for <code>Limit</code> in the request, \n\t\t\tthe response includes a <code>NextMarker</code> value. To list more <code>XssMatchSet</code> objects, submit another \n\t\t\t<code>ListXssMatchSets</code> request, and specify the <code>NextMarker</code> value from the response in the \n\t\t\t<code>NextMarker</code> value in the next request.</p>"}))
    ListXssMatchSetsResponse.add_member(:xss_match_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: XssMatchSetSummaries, location_name: 'XssMatchSets', traits: {"smithy.api#documentation" => "<p>An array of <a>XssMatchSetSummary</a> objects.</p>"}))
    ListXssMatchSetsResponse.type = Types::ListXssMatchSetsResponse
    LogDestinationConfigs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn)
    LoggingConfiguration.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the web ACL that you want to associate with\n            <code>LogDestinationConfigs</code>.</p>", "smithy.api#required" => {}}))
    LoggingConfiguration.add_member(:log_destination_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: LogDestinationConfigs, location_name: 'LogDestinationConfigs', traits: {"smithy.api#documentation" => "<p>An array of Amazon Kinesis Data Firehose ARNs.</p>", "smithy.api#required" => {}}))
    LoggingConfiguration.add_member(:redacted_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: RedactedFields, location_name: 'RedactedFields', traits: {"smithy.api#documentation" => "<p>The parts of the request that you want redacted from the logs. For\n         example,\n         if you redact the cookie field, the cookie field in the firehose will be\n            <code>xxx</code>. </p>"}))
    LoggingConfiguration.type = Types::LoggingConfiguration
    LoggingConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfiguration)
    ManagedKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedKey)
    MatchFieldType.add_member(:uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'URI', traits: {"smithy.api#enumValue" => "URI"}))
    MatchFieldType.add_member(:query_string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUERY_STRING', traits: {"smithy.api#enumValue" => "QUERY_STRING"}))
    MatchFieldType.add_member(:header, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEADER', traits: {"smithy.api#enumValue" => "HEADER"}))
    MatchFieldType.add_member(:method, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'METHOD', traits: {"smithy.api#enumValue" => "METHOD"}))
    MatchFieldType.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BODY', traits: {"smithy.api#enumValue" => "BODY"}))
    MatchFieldType.add_member(:single_query_arg, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SINGLE_QUERY_ARG', traits: {"smithy.api#enumValue" => "SINGLE_QUERY_ARG"}))
    MatchFieldType.add_member(:all_query_args, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL_QUERY_ARGS', traits: {"smithy.api#enumValue" => "ALL_QUERY_ARGS"}))
    MigrationErrorType.add_member(:entity_not_supported, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENTITY_NOT_SUPPORTED', traits: {"smithy.api#enumValue" => "ENTITY_NOT_SUPPORTED"}))
    MigrationErrorType.add_member(:entity_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENTITY_NOT_FOUND', traits: {"smithy.api#enumValue" => "ENTITY_NOT_FOUND"}))
    MigrationErrorType.add_member(:s3_bucket_no_permission, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_BUCKET_NO_PERMISSION', traits: {"smithy.api#enumValue" => "S3_BUCKET_NO_PERMISSION"}))
    MigrationErrorType.add_member(:s3_bucket_not_accessible, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_BUCKET_NOT_ACCESSIBLE', traits: {"smithy.api#enumValue" => "S3_BUCKET_NOT_ACCESSIBLE"}))
    MigrationErrorType.add_member(:s3_bucket_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_BUCKET_NOT_FOUND', traits: {"smithy.api#enumValue" => "S3_BUCKET_NOT_FOUND"}))
    MigrationErrorType.add_member(:s3_bucket_invalid_region, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_BUCKET_INVALID_REGION', traits: {"smithy.api#enumValue" => "S3_BUCKET_INVALID_REGION"}))
    MigrationErrorType.add_member(:s3_internal_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "S3_INTERNAL_ERROR"}))
    ParameterExceptionField.add_member(:change_action, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHANGE_ACTION', traits: {"smithy.api#enumValue" => "CHANGE_ACTION"}))
    ParameterExceptionField.add_member(:waf_action, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WAF_ACTION', traits: {"smithy.api#enumValue" => "WAF_ACTION"}))
    ParameterExceptionField.add_member(:waf_override_action, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WAF_OVERRIDE_ACTION', traits: {"smithy.api#enumValue" => "WAF_OVERRIDE_ACTION"}))
    ParameterExceptionField.add_member(:predicate_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREDICATE_TYPE', traits: {"smithy.api#enumValue" => "PREDICATE_TYPE"}))
    ParameterExceptionField.add_member(:ipset_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPSET_TYPE', traits: {"smithy.api#enumValue" => "IPSET_TYPE"}))
    ParameterExceptionField.add_member(:byte_match_field_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BYTE_MATCH_FIELD_TYPE', traits: {"smithy.api#enumValue" => "BYTE_MATCH_FIELD_TYPE"}))
    ParameterExceptionField.add_member(:sql_injection_match_field_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQL_INJECTION_MATCH_FIELD_TYPE', traits: {"smithy.api#enumValue" => "SQL_INJECTION_MATCH_FIELD_TYPE"}))
    ParameterExceptionField.add_member(:byte_match_text_transformation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BYTE_MATCH_TEXT_TRANSFORMATION', traits: {"smithy.api#enumValue" => "BYTE_MATCH_TEXT_TRANSFORMATION"}))
    ParameterExceptionField.add_member(:byte_match_positional_constraint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BYTE_MATCH_POSITIONAL_CONSTRAINT', traits: {"smithy.api#enumValue" => "BYTE_MATCH_POSITIONAL_CONSTRAINT"}))
    ParameterExceptionField.add_member(:size_constraint_comparison_operator, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIZE_CONSTRAINT_COMPARISON_OPERATOR', traits: {"smithy.api#enumValue" => "SIZE_CONSTRAINT_COMPARISON_OPERATOR"}))
    ParameterExceptionField.add_member(:geo_match_location_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GEO_MATCH_LOCATION_TYPE', traits: {"smithy.api#enumValue" => "GEO_MATCH_LOCATION_TYPE"}))
    ParameterExceptionField.add_member(:geo_match_location_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GEO_MATCH_LOCATION_VALUE', traits: {"smithy.api#enumValue" => "GEO_MATCH_LOCATION_VALUE"}))
    ParameterExceptionField.add_member(:rate_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RATE_KEY', traits: {"smithy.api#enumValue" => "RATE_KEY"}))
    ParameterExceptionField.add_member(:rule_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RULE_TYPE', traits: {"smithy.api#enumValue" => "RULE_TYPE"}))
    ParameterExceptionField.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEXT_MARKER', traits: {"smithy.api#enumValue" => "NEXT_MARKER"}))
    ParameterExceptionField.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_ARN', traits: {"smithy.api#enumValue" => "RESOURCE_ARN"}))
    ParameterExceptionField.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAGS', traits: {"smithy.api#enumValue" => "TAGS"}))
    ParameterExceptionField.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAG_KEYS', traits: {"smithy.api#enumValue" => "TAG_KEYS"}))
    ParameterExceptionReason.add_member(:invalid_option, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_OPTION', traits: {"smithy.api#enumValue" => "INVALID_OPTION"}))
    ParameterExceptionReason.add_member(:illegal_combination, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ILLEGAL_COMBINATION', traits: {"smithy.api#enumValue" => "ILLEGAL_COMBINATION"}))
    ParameterExceptionReason.add_member(:illegal_argument, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ILLEGAL_ARGUMENT', traits: {"smithy.api#enumValue" => "ILLEGAL_ARGUMENT"}))
    ParameterExceptionReason.add_member(:invalid_tag_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_TAG_KEY', traits: {"smithy.api#enumValue" => "INVALID_TAG_KEY"}))
    PositionalConstraint.add_member(:exactly, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXACTLY', traits: {"smithy.api#enumValue" => "EXACTLY"}))
    PositionalConstraint.add_member(:starts_with, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTS_WITH', traits: {"smithy.api#enumValue" => "STARTS_WITH"}))
    PositionalConstraint.add_member(:ends_with, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENDS_WITH', traits: {"smithy.api#enumValue" => "ENDS_WITH"}))
    PositionalConstraint.add_member(:contains, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINS', traits: {"smithy.api#enumValue" => "CONTAINS"}))
    PositionalConstraint.add_member(:contains_word, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINS_WORD', traits: {"smithy.api#enumValue" => "CONTAINS_WORD"}))
    Predicate.add_member(:negated, Smithy::Schema::Shapes::ShapeRef.new(shape: Negated, location_name: 'Negated', traits: {"smithy.api#documentation" => "<p>Set <code>Negated</code> to <code>False</code> if you want AWS WAF to allow, block, or count requests based on the settings in the \n\t\t       specified <a>ByteMatchSet</a>, <a>IPSet</a>, <a>SqlInjectionMatchSet</a>, <a>XssMatchSet</a>, <a>RegexMatchSet</a>,  <a>GeoMatchSet</a>,  or <a>SizeConstraintSet</a>.\n\t\t\tFor example, if an <code>IPSet</code> includes the IP address <code>192.0.2.44</code>, AWS WAF will allow or block requests based on that IP address.</p> \n\t\t       <p>Set <code>Negated</code> to <code>True</code> if you want AWS WAF to allow or block a request based on the negation \n\t\t       of the settings in the <a>ByteMatchSet</a>, <a>IPSet</a>, <a>SqlInjectionMatchSet</a>, <a>XssMatchSet</a>, <a>RegexMatchSet</a>,  <a>GeoMatchSet</a>, or <a>SizeConstraintSet</a>.\n\t\t\tFor example, if an <code>IPSet</code> includes the IP address <code>192.0.2.44</code>, AWS WAF will allow, block, or count requests based on \n\t\t\tall IP addresses <i>except</i> \n            <code>192.0.2.44</code>.</p>", "smithy.api#required" => {}}))
    Predicate.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PredicateType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of predicate in a <code>Rule</code>, such as <code>ByteMatch</code> or <code>IPSet</code>.</p>", "smithy.api#required" => {}}))
    Predicate.add_member(:data_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'DataId', traits: {"smithy.api#documentation" => "<p>A unique identifier for a predicate in a <code>Rule</code>, such as <code>ByteMatchSetId</code> or <code>IPSetId</code>. \n\t\t\tThe ID is returned by the corresponding <code>Create</code> or <code>List</code> command.</p>", "smithy.api#required" => {}}))
    Predicate.type = Types::Predicate
    PredicateType.add_member(:ip_match, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IP_MATCH', traits: {"smithy.api#enumValue" => "IPMatch"}))
    PredicateType.add_member(:byte_match, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BYTE_MATCH', traits: {"smithy.api#enumValue" => "ByteMatch"}))
    PredicateType.add_member(:sql_injection_match, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQL_INJECTION_MATCH', traits: {"smithy.api#enumValue" => "SqlInjectionMatch"}))
    PredicateType.add_member(:geo_match, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GEO_MATCH', traits: {"smithy.api#enumValue" => "GeoMatch"}))
    PredicateType.add_member(:size_constraint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIZE_CONSTRAINT', traits: {"smithy.api#enumValue" => "SizeConstraint"}))
    PredicateType.add_member(:xss_match, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XSS_MATCH', traits: {"smithy.api#enumValue" => "XssMatch"}))
    PredicateType.add_member(:regex_match, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGEX_MATCH', traits: {"smithy.api#enumValue" => "RegexMatch"}))
    Predicates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Predicate)
    PutLoggingConfigurationRequest.add_member(:logging_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: 'LoggingConfiguration', traits: {"smithy.api#documentation" => "<p>The Amazon Kinesis Data Firehose that contains the inspected traffic\n         information, the redacted fields details, and the Amazon Resource Name (ARN) of the web ACL\n         to monitor.</p>\n         <note>\n            <p>When specifying <code>Type</code> in <code>RedactedFields</code>, you must use one of\n            the following values: <code>URI</code>, <code>QUERY_STRING</code>, <code>HEADER</code>,\n            or <code>METHOD</code>.</p>\n         </note>", "smithy.api#required" => {}}))
    PutLoggingConfigurationRequest.type = Types::PutLoggingConfigurationRequest
    PutLoggingConfigurationResponse.add_member(:logging_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: 'LoggingConfiguration', traits: {"smithy.api#documentation" => "<p>The <a>LoggingConfiguration</a> that you submitted in the request.</p>"}))
    PutLoggingConfigurationResponse.type = Types::PutLoggingConfigurationResponse
    PutPermissionPolicyRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the RuleGroup to which you want to attach the policy.</p>", "smithy.api#required" => {}}))
    PutPermissionPolicyRequest.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyString, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The policy to attach to the specified RuleGroup.</p>", "smithy.api#required" => {}}))
    PutPermissionPolicyRequest.type = Types::PutPermissionPolicyRequest
    PutPermissionPolicyResponse.type = Types::PutPermissionPolicyResponse
    RateBasedRule.add_member(:rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RuleId', traits: {"smithy.api#documentation" => "<p>A unique identifier for a <code>RateBasedRule</code>. You use <code>RuleId</code> to\n         get more information about a <code>RateBasedRule</code> (see <a>GetRateBasedRule</a>), update a <code>RateBasedRule</code> (see <a>UpdateRateBasedRule</a>), insert a <code>RateBasedRule</code> into a\n            <code>WebACL</code> or delete one from a <code>WebACL</code> (see <a>UpdateWebACL</a>), or delete a <code>RateBasedRule</code> from AWS WAF (see <a>DeleteRateBasedRule</a>).</p>", "smithy.api#required" => {}}))
    RateBasedRule.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name or description for a <code>RateBasedRule</code>. You can't change the\n         name of a <code>RateBasedRule</code> after you create it.</p>"}))
    RateBasedRule.add_member(:metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'MetricName', traits: {"smithy.api#documentation" => "<p>A friendly name or description for the metrics for a <code>RateBasedRule</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain\n         whitespace or metric names reserved for AWS WAF, including \"All\" and \"Default_Action.\" You can't change the name of the metric after you create the\n            <code>RateBasedRule</code>.</p>"}))
    RateBasedRule.add_member(:match_predicates, Smithy::Schema::Shapes::ShapeRef.new(shape: Predicates, location_name: 'MatchPredicates', traits: {"smithy.api#documentation" => "<p>The <code>Predicates</code> object contains one <code>Predicate</code> element for\n         each <a>ByteMatchSet</a>, <a>IPSet</a>, or <a>SqlInjectionMatchSet</a> object that you want to include in a\n            <code>RateBasedRule</code>.</p>", "smithy.api#required" => {}}))
    RateBasedRule.add_member(:rate_key, Smithy::Schema::Shapes::ShapeRef.new(shape: RateKey, location_name: 'RateKey', traits: {"smithy.api#documentation" => "<p>The field that AWS WAF uses to determine if requests are likely arriving from single\n         source and thus subject to rate monitoring. The only valid value for <code>RateKey</code>\n         is <code>IP</code>. <code>IP</code> indicates that requests arriving from the same IP\n         address are subject to the <code>RateLimit</code> that is specified in the\n            <code>RateBasedRule</code>.</p>", "smithy.api#required" => {}}))
    RateBasedRule.add_member(:rate_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimit, location_name: 'RateLimit', traits: {"smithy.api#documentation" => "<p>The maximum number of requests, which have an identical value in the field specified\n         by the <code>RateKey</code>, allowed in a five-minute period. If the number of requests\n         exceeds the <code>RateLimit</code> and the other predicates specified in the rule are also\n         met, AWS WAF triggers the action that is specified for this rule.</p>", "smithy.api#required" => {}}))
    RateBasedRule.type = Types::RateBasedRule
    RateKey.add_member(:ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IP', traits: {"smithy.api#enumValue" => "IP"}))
    RedactedFields.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FieldToMatch)
    RegexMatchSet.add_member(:regex_match_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RegexMatchSetId', traits: {"smithy.api#documentation" => "<p>The <code>RegexMatchSetId</code> for a <code>RegexMatchSet</code>. You use <code>RegexMatchSetId</code> to get information about a \n\t\t\t<code>RegexMatchSet</code> (see <a>GetRegexMatchSet</a>), update a <code>RegexMatchSet</code> (see <a>UpdateRegexMatchSet</a>), \n\t\t\tinsert a <code>RegexMatchSet</code> into a <code>Rule</code> or delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and  \n\t\t\tdelete a <code>RegexMatchSet</code> from AWS WAF (see <a>DeleteRegexMatchSet</a>).</p>\n\t\t       <p>\n            <code>RegexMatchSetId</code> is returned by <a>CreateRegexMatchSet</a> and by <a>ListRegexMatchSets</a>.</p>"}))
    RegexMatchSet.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name or description of the <a>RegexMatchSet</a>. You can't change <code>Name</code> after you create a \n\t\t\t<code>RegexMatchSet</code>.</p>"}))
    RegexMatchSet.add_member(:regex_match_tuples, Smithy::Schema::Shapes::ShapeRef.new(shape: RegexMatchTuples, location_name: 'RegexMatchTuples', traits: {"smithy.api#documentation" => "<p>Contains an array of <a>RegexMatchTuple</a> objects. Each <code>RegexMatchTuple</code> \n\t\t\t\tobject contains: </p>\n\t\t       <ul>\n            <li>\n               <p>The part of a web request that you want AWS WAF to inspect, such as a query string or the value of the <code>User-Agent</code> header. </p>\n            </li>\n            <li>\n               <p>The identifier of the pattern (a regular expression) that you want AWS WAF to look for. For more information, see <a>RegexPatternSet</a>.</p>\n            </li>\n            <li>\n               <p>Whether to perform any conversions on the request, such as converting it to lowercase, before inspecting it for the specified string.</p>\n\t\t\t         </li>\n         </ul>"}))
    RegexMatchSet.type = Types::RegexMatchSet
    RegexMatchSetSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegexMatchSetSummary)
    RegexMatchSetSummary.add_member(:regex_match_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RegexMatchSetId', traits: {"smithy.api#documentation" => "<p>The <code>RegexMatchSetId</code> for a <code>RegexMatchSet</code>. You use <code>RegexMatchSetId</code> to get information about a <code>RegexMatchSet</code>,\n\t\t\tupdate a <code>RegexMatchSet</code>, remove a <code>RegexMatchSet</code> from a <code>Rule</code>, and delete a <code>RegexMatchSet</code> from AWS WAF.</p>\n\t\t       <p>\n            <code>RegexMatchSetId</code> is returned by <a>CreateRegexMatchSet</a> and by <a>ListRegexMatchSets</a>.</p>", "smithy.api#required" => {}}))
    RegexMatchSetSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name or description of the <a>RegexMatchSet</a>. You can't change <code>Name</code> after you create a <code>RegexMatchSet</code>.</p>", "smithy.api#required" => {}}))
    RegexMatchSetSummary.type = Types::RegexMatchSetSummary
    RegexMatchSetUpdate.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeAction, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>Specifies whether to insert or delete a <a>RegexMatchTuple</a>.</p>", "smithy.api#required" => {}}))
    RegexMatchSetUpdate.add_member(:regex_match_tuple, Smithy::Schema::Shapes::ShapeRef.new(shape: RegexMatchTuple, location_name: 'RegexMatchTuple', traits: {"smithy.api#documentation" => "<p>Information about the part of a web request that you want AWS WAF to inspect and the identifier of the regular expression (regex) pattern that you want AWS WAF to search for.\n         If you specify <code>DELETE</code> for the value of <code>Action</code>, the <code>RegexMatchTuple</code> values must \n         exactly match the values in the <code>RegexMatchTuple</code> that you want to delete from the <code>RegexMatchSet</code>.</p>", "smithy.api#required" => {}}))
    RegexMatchSetUpdate.type = Types::RegexMatchSetUpdate
    RegexMatchSetUpdates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegexMatchSetUpdate)
    RegexMatchTuple.add_member(:field_to_match, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldToMatch, location_name: 'FieldToMatch', traits: {"smithy.api#documentation" => "<p>Specifies where in a web request to look for the <code>RegexPatternSet</code>.</p>", "smithy.api#required" => {}}))
    RegexMatchTuple.add_member(:text_transformation, Smithy::Schema::Shapes::ShapeRef.new(shape: TextTransformation, location_name: 'TextTransformation', traits: {"smithy.api#documentation" => "<p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF. \n\t\t\tIf you specify a transformation, AWS WAF performs the transformation on <code>RegexPatternSet</code> before inspecting a request for a match.</p>\t\n         <p>You can only specify a single type of TextTransformation.</p>\t\t\t\n\t\t       <p>\n            <b>CMD_LINE</b>\n         </p>\n\t\t       <p>When you're concerned that attackers are injecting an operating system commandline command and using unusual formatting to disguise some or all of the command, use this option to perform the following transformations:</p>\n\t\t       <ul>\n            <li>\n               <p>Delete the following characters: \\ \" ' ^</p>\n            </li>\n            <li>\n               <p>Delete spaces before the following characters: / (</p>\n            </li>\n            <li>\n               <p>Replace the following characters with a space: , ;</p>\n            </li>\n            <li>\n               <p>Replace multiple spaces with one space</p>\n            </li>\n            <li>\n               <p>Convert uppercase letters (A-Z) to lowercase (a-z)</p>\n            </li>\n         </ul>\n\t\t\n\t\t       <p>\n            <b>COMPRESS_WHITE_SPACE</b>\n         </p>\n\t\t       <p>Use this option to replace the following characters with a space character (decimal 32):</p>\n\t\t       <ul>\n            <li>\n               <p>\\f, formfeed, decimal 12</p>\n            </li>\n            <li>\n               <p>\\t, tab, decimal 9</p>\n            </li>\n            <li>\n               <p>\\n, newline, decimal 10</p>\n            </li>\n            <li>\n               <p>\\r, carriage return, decimal 13</p>\n            </li>\n            <li>\n               <p>\\v, vertical tab, decimal 11</p>\n            </li>\n            <li>\n               <p>non-breaking space, decimal 160</p>\n            </li>\n         </ul>\n\t\t       <p>\n            <code>COMPRESS_WHITE_SPACE</code> also replaces multiple spaces with one space.</p>\t\t\n\t\t       <p>\n            <b>HTML_ENTITY_DECODE</b>\n         </p>\n\t\t       <p>Use this option to replace HTML-encoded characters with unencoded characters. <code>HTML_ENTITY_DECODE</code> performs \n\t\t\tthe following operations:</p>\n\t\t       <ul>\n            <li>\n               <p>Replaces <code>(ampersand)quot;</code> with <code>\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Replaces <code>(ampersand)nbsp;</code> with a non-breaking space, decimal 160</p>\n            </li>\n            <li>\n               <p>Replaces <code>(ampersand)lt;</code> with a \"less than\" symbol</p>\n            </li>\n            <li>\n               <p>Replaces <code>(ampersand)gt;</code> with <code>></code>\n               </p>\n            </li>\n            <li>\n               <p>Replaces characters that are represented in hexadecimal format, <code>(ampersand)#xhhhh;</code>, with the corresponding \n\t\t\t\tcharacters</p>\n            </li>\n            <li>\n               <p>Replaces characters that are represented in decimal format, <code>(ampersand)#nnnn;</code>, with the corresponding \n\t\t\t\tcharacters</p>\n            </li>\n         </ul>\t\t\n\t\t       <p>\n            <b>LOWERCASE</b>\n         </p>\n\t\t       <p>Use this option to convert uppercase letters (A-Z) to lowercase (a-z).</p>\t\t\n\t\t       <p>\n            <b>URL_DECODE</b>\n         </p>\n\t\t       <p>Use this option to decode a URL-encoded value.</p>\t\t\n\t\t       <p>\n            <b>NONE</b>\n         </p>\n\t\t       <p>Specify <code>NONE</code> if you don't want to perform any text transformations.</p>", "smithy.api#required" => {}}))
    RegexMatchTuple.add_member(:regex_pattern_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RegexPatternSetId', traits: {"smithy.api#documentation" => "<p>The <code>RegexPatternSetId</code> for a <code>RegexPatternSet</code>. You use <code>RegexPatternSetId</code> to get information about a \n\t\t\t<code>RegexPatternSet</code> (see <a>GetRegexPatternSet</a>), update a <code>RegexPatternSet</code> (see <a>UpdateRegexPatternSet</a>), \n\t\t\tinsert a <code>RegexPatternSet</code> into a <code>RegexMatchSet</code> or delete one from a <code>RegexMatchSet</code> (see <a>UpdateRegexMatchSet</a>), and \n\t\t\tdelete an <code>RegexPatternSet</code> from AWS WAF (see <a>DeleteRegexPatternSet</a>).</p>\n\t\t       <p>\n\t\t          <code>RegexPatternSetId</code> is returned by <a>CreateRegexPatternSet</a> and by <a>ListRegexPatternSets</a>.</p>", "smithy.api#required" => {}}))
    RegexMatchTuple.type = Types::RegexMatchTuple
    RegexMatchTuples.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegexMatchTuple)
    RegexPatternSet.add_member(:regex_pattern_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RegexPatternSetId', traits: {"smithy.api#documentation" => "<p>The identifier for the <code>RegexPatternSet</code>. You use <code>RegexPatternSetId</code> to get information about a <code>RegexPatternSet</code>,\n         update a <code>RegexPatternSet</code>, remove a <code>RegexPatternSet</code> from a <code>RegexMatchSet</code>, and delete a <code>RegexPatternSet</code> from AWS WAF.</p>\n         <p>\n            <code>RegexMatchSetId</code> is returned by <a>CreateRegexPatternSet</a> and by <a>ListRegexPatternSets</a>.</p>", "smithy.api#required" => {}}))
    RegexPatternSet.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name or description of the <a>RegexPatternSet</a>. You can't change <code>Name</code> after you create a <code>RegexPatternSet</code>.</p>"}))
    RegexPatternSet.add_member(:regex_pattern_strings, Smithy::Schema::Shapes::ShapeRef.new(shape: RegexPatternStrings, location_name: 'RegexPatternStrings', traits: {"smithy.api#documentation" => "<p>Specifies the regular expression (regex) patterns that you want AWS WAF to search for, such as <code>B[a@]dB[o0]t</code>.</p>", "smithy.api#required" => {}}))
    RegexPatternSet.type = Types::RegexPatternSet
    RegexPatternSetSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegexPatternSetSummary)
    RegexPatternSetSummary.add_member(:regex_pattern_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RegexPatternSetId', traits: {"smithy.api#documentation" => "<p>The <code>RegexPatternSetId</code> for a <code>RegexPatternSet</code>. You use <code>RegexPatternSetId</code> to get information about a <code>RegexPatternSet</code>,\n         update a <code>RegexPatternSet</code>, remove a <code>RegexPatternSet</code> from a <code>RegexMatchSet</code>, and delete a <code>RegexPatternSet</code> from AWS WAF.</p>\n         <p>\n            <code>RegexPatternSetId</code> is returned by <a>CreateRegexPatternSet</a> and by <a>ListRegexPatternSets</a>.</p>", "smithy.api#required" => {}}))
    RegexPatternSetSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name or description of the <a>RegexPatternSet</a>. You can't change <code>Name</code> after you create a <code>RegexPatternSet</code>.</p>", "smithy.api#required" => {}}))
    RegexPatternSetSummary.type = Types::RegexPatternSetSummary
    RegexPatternSetUpdate.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeAction, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>Specifies whether to insert or delete a <code>RegexPatternString</code>.</p>", "smithy.api#required" => {}}))
    RegexPatternSetUpdate.add_member(:regex_pattern_string, Smithy::Schema::Shapes::ShapeRef.new(shape: RegexPatternString, location_name: 'RegexPatternString', traits: {"smithy.api#documentation" => "<p>Specifies the regular expression (regex) pattern that you want AWS WAF to search for, such as <code>B[a@]dB[o0]t</code>.</p>", "smithy.api#required" => {}}))
    RegexPatternSetUpdate.type = Types::RegexPatternSetUpdate
    RegexPatternSetUpdates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegexPatternSetUpdate)
    RegexPatternStrings.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegexPatternString)
    ResourceArns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn)
    ResourceType.add_member(:application_load_balancer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPLICATION_LOAD_BALANCER', traits: {"smithy.api#enumValue" => "APPLICATION_LOAD_BALANCER"}))
    ResourceType.add_member(:api_gateway, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'API_GATEWAY', traits: {"smithy.api#enumValue" => "API_GATEWAY"}))
    Rule.add_member(:rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RuleId', traits: {"smithy.api#documentation" => "<p>A unique identifier for a <code>Rule</code>. You use <code>RuleId</code> to get more information about a <code>Rule</code> (see <a>GetRule</a>), \n\t\t\tupdate a <code>Rule</code> (see <a>UpdateRule</a>), insert a <code>Rule</code> into a <code>WebACL</code> or delete a \n\t\t\tone from a <code>WebACL</code> (see <a>UpdateWebACL</a>), or delete a <code>Rule</code> from AWS WAF (see <a>DeleteRule</a>).</p>\n\t\t       <p>\n            <code>RuleId</code> is returned by <a>CreateRule</a> and by <a>ListRules</a>.</p>", "smithy.api#required" => {}}))
    Rule.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The friendly name or description for the <code>Rule</code>. You can't change the name of a <code>Rule</code> after you create it.</p>"}))
    Rule.add_member(:metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'MetricName', traits: {"smithy.api#documentation" => "<p>A friendly name or description for the metrics for this <code>Rule</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain\n         whitespace or metric names reserved for AWS WAF, including \"All\" and \"Default_Action.\" You can't change <code>MetricName</code> after you create the <code>Rule</code>.</p>"}))
    Rule.add_member(:predicates, Smithy::Schema::Shapes::ShapeRef.new(shape: Predicates, location_name: 'Predicates', traits: {"smithy.api#documentation" => "<p>The <code>Predicates</code> object contains one <code>Predicate</code> element for each <a>ByteMatchSet</a>, <a>IPSet</a>, or \n\t\t\t<a>SqlInjectionMatchSet</a> object that you want to include in a <code>Rule</code>.</p>", "smithy.api#required" => {}}))
    Rule.type = Types::Rule
    RuleGroup.add_member(:rule_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RuleGroupId', traits: {"smithy.api#documentation" => "<p>A unique identifier for a <code>RuleGroup</code>. You use <code>RuleGroupId</code> to get more information about a <code>RuleGroup</code> (see <a>GetRuleGroup</a>), \n         update a <code>RuleGroup</code> (see <a>UpdateRuleGroup</a>), insert a <code>RuleGroup</code> into a <code>WebACL</code> or delete a \n         one from a <code>WebACL</code> (see <a>UpdateWebACL</a>), or delete a <code>RuleGroup</code> from AWS WAF (see <a>DeleteRuleGroup</a>).</p>\n         <p>\n            <code>RuleGroupId</code> is returned by <a>CreateRuleGroup</a> and by <a>ListRuleGroups</a>.</p>", "smithy.api#required" => {}}))
    RuleGroup.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The friendly name or description for the <code>RuleGroup</code>. You can't change the name of a <code>RuleGroup</code> after you create it.</p>"}))
    RuleGroup.add_member(:metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'MetricName', traits: {"smithy.api#documentation" => "<p>A friendly name or description for the metrics for this <code>RuleGroup</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain\n         whitespace or metric names reserved for AWS WAF, including \"All\" and \"Default_Action.\" You can't change the name of the metric after you create the <code>RuleGroup</code>.</p>"}))
    RuleGroup.type = Types::RuleGroup
    RuleGroupSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupSummary)
    RuleGroupSummary.add_member(:rule_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RuleGroupId', traits: {"smithy.api#documentation" => "<p>A unique identifier for a <code>RuleGroup</code>. You use <code>RuleGroupId</code> to get more information about a <code>RuleGroup</code> (see <a>GetRuleGroup</a>), \n         update a <code>RuleGroup</code> (see <a>UpdateRuleGroup</a>), insert a <code>RuleGroup</code> into a <code>WebACL</code> or delete \n         one from a <code>WebACL</code> (see <a>UpdateWebACL</a>), or delete a <code>RuleGroup</code> from AWS WAF (see <a>DeleteRuleGroup</a>).</p>\n         <p>\n            <code>RuleGroupId</code> is returned by <a>CreateRuleGroup</a> and by <a>ListRuleGroups</a>.</p>", "smithy.api#required" => {}}))
    RuleGroupSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name or description of the <a>RuleGroup</a>. You can't change the name of a <code>RuleGroup</code> after you create it.</p>", "smithy.api#required" => {}}))
    RuleGroupSummary.type = Types::RuleGroupSummary
    RuleGroupUpdate.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeAction, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>Specify <code>INSERT</code> to add an <code>ActivatedRule</code> to a <code>RuleGroup</code>. Use <code>DELETE</code> to remove an \n         <code>ActivatedRule</code> from a <code>RuleGroup</code>.</p>", "smithy.api#required" => {}}))
    RuleGroupUpdate.add_member(:activated_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivatedRule, location_name: 'ActivatedRule', traits: {"smithy.api#documentation" => "<p>The <code>ActivatedRule</code> object specifies a <code>Rule</code> that you want to insert or delete, \n         the priority of the <code>Rule</code> in the <code>WebACL</code>, and the action that you want AWS WAF to take when a web request matches the <code>Rule</code> \n         (<code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>).</p>", "smithy.api#required" => {}}))
    RuleGroupUpdate.type = Types::RuleGroupUpdate
    RuleGroupUpdates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupUpdate)
    RuleSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSummary)
    RuleSummary.add_member(:rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RuleId', traits: {"smithy.api#documentation" => "<p>A unique identifier for a <code>Rule</code>. You use <code>RuleId</code> to get more information about a <code>Rule</code> (see <a>GetRule</a>), \n\t\t\tupdate a <code>Rule</code> (see <a>UpdateRule</a>), insert a <code>Rule</code> into a <code>WebACL</code> or delete \n\t\t\tone from a <code>WebACL</code> (see <a>UpdateWebACL</a>), or delete a <code>Rule</code> from AWS WAF (see <a>DeleteRule</a>).</p>\n\t\t       <p>\n            <code>RuleId</code> is returned by <a>CreateRule</a> and by <a>ListRules</a>.</p>", "smithy.api#required" => {}}))
    RuleSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name or description of the <a>Rule</a>. You can't change the name of a <code>Rule</code> after you create it.</p>", "smithy.api#required" => {}}))
    RuleSummary.type = Types::RuleSummary
    RuleUpdate.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeAction, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>Specify <code>INSERT</code> to add a <code>Predicate</code> to a <code>Rule</code>. Use <code>DELETE</code> to remove a \n\t\t\t<code>Predicate</code> from a <code>Rule</code>.</p>", "smithy.api#required" => {}}))
    RuleUpdate.add_member(:predicate, Smithy::Schema::Shapes::ShapeRef.new(shape: Predicate, location_name: 'Predicate', traits: {"smithy.api#documentation" => "<p>The ID of the <code>Predicate</code> (such as an <code>IPSet</code>) that you want to add to a <code>Rule</code>.</p>", "smithy.api#required" => {}}))
    RuleUpdate.type = Types::RuleUpdate
    RuleUpdates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleUpdate)
    SampledHTTPRequest.add_member(:request, Smithy::Schema::Shapes::ShapeRef.new(shape: HTTPRequest, location_name: 'Request', traits: {"smithy.api#documentation" => "<p>A complex type that contains detailed information about the request.</p>", "smithy.api#required" => {}}))
    SampledHTTPRequest.add_member(:weight, Smithy::Schema::Shapes::ShapeRef.new(shape: SampleWeight, location_name: 'Weight', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>A value that indicates how one result in the response relates proportionally to other results in the response. \n\t\t\tA result that has a weight of <code>2</code> represents roughly twice as many CloudFront web requests as a result \n\t\t\tthat has a weight of <code>1</code>.</p>", "smithy.api#required" => {}}))
    SampledHTTPRequest.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp', traits: {"smithy.api#documentation" => "<p>The time at which AWS WAF received the request from your AWS resource, in Unix time format (in seconds).</p>"}))
    SampledHTTPRequest.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The action for the <code>Rule</code> that the request matched: <code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>.</p>"}))
    SampledHTTPRequest.add_member(:rule_within_rule_group, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RuleWithinRuleGroup', traits: {"smithy.api#documentation" => "<p>This value is returned if the <code>GetSampledRequests</code>  request specifies the ID of a <code>RuleGroup</code> rather than the ID of an individual rule. <code>RuleWithinRuleGroup</code> is the rule within the specified <code>RuleGroup</code> that matched the request listed in the response.</p>"}))
    SampledHTTPRequest.type = Types::SampledHTTPRequest
    SampledHTTPRequests.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SampledHTTPRequest)
    SizeConstraint.add_member(:field_to_match, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldToMatch, location_name: 'FieldToMatch', traits: {"smithy.api#documentation" => "<p>Specifies where in a web request to look for the size constraint.</p>", "smithy.api#required" => {}}))
    SizeConstraint.add_member(:text_transformation, Smithy::Schema::Shapes::ShapeRef.new(shape: TextTransformation, location_name: 'TextTransformation', traits: {"smithy.api#documentation" => "<p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF. \n\t\t\tIf you specify a transformation, AWS WAF performs the transformation on <code>FieldToMatch</code> before inspecting it for a match.</p>\n         <p>You can only specify a single type of TextTransformation.</p>\t\t\t\n\t\t       <p>Note that if you choose <code>BODY</code> for the value of <code>Type</code>, you must choose <code>NONE</code> for <code>TextTransformation</code> \n\t\t\tbecause CloudFront forwards only the first 8192 bytes for inspection. </p>\t\t\n\t\t       <p>\n            <b>NONE</b>\n         </p>\n\t\t       <p>Specify <code>NONE</code> if you don't want to perform any text transformations.</p>\t\t\n\t\t       <p>\n            <b>CMD_LINE</b>\n         </p>\n\t\t       <p>When you're concerned that attackers are injecting an operating system command line command and using unusual formatting to disguise some or all of the command, use this option to perform the following transformations:</p>\n\t\t       <ul>\n            <li>\n               <p>Delete the following characters: \\ \" ' ^</p>\n            </li>\n            <li>\n               <p>Delete spaces before the following characters: / (</p>\n            </li>\n            <li>\n               <p>Replace the following characters with a space: , ;</p>\n            </li>\n            <li>\n               <p>Replace multiple spaces with one space</p>\n            </li>\n            <li>\n               <p>Convert uppercase letters (A-Z) to lowercase (a-z)</p>\n            </li>\n         </ul>\t\t\n\t\t       <p>\n            <b>COMPRESS_WHITE_SPACE</b>\n         </p>\n\t\t       <p>Use this option to replace the following characters with a space character (decimal 32):</p>\n\t\t       <ul>\n            <li>\n               <p>\\f, formfeed, decimal 12</p>\n            </li>\n            <li>\n               <p>\\t, tab, decimal 9</p>\n            </li>\n            <li>\n               <p>\\n, newline, decimal 10</p>\n            </li>\n            <li>\n               <p>\\r, carriage return, decimal 13</p>\n            </li>\n            <li>\n               <p>\\v, vertical tab, decimal 11</p>\n            </li>\n            <li>\n               <p>non-breaking space, decimal 160</p>\n            </li>\n         </ul>\n\t\t       <p>\n            <code>COMPRESS_WHITE_SPACE</code> also replaces multiple spaces with one space.</p>\t\t\n\t\t       <p>\n            <b>HTML_ENTITY_DECODE</b>\n         </p>\n\t\t       <p>Use this option to replace HTML-encoded characters with unencoded characters. <code>HTML_ENTITY_DECODE</code> performs \n\t\t\tthe following operations:</p>\n\t\t       <ul>\n            <li>\n               <p>Replaces <code>(ampersand)quot;</code> with <code>\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Replaces <code>(ampersand)nbsp;</code> with a non-breaking space, decimal 160</p>\n            </li>\n            <li>\n               <p>Replaces <code>(ampersand)lt;</code> with a \"less than\" symbol</p>\n            </li>\n            <li>\n               <p>Replaces <code>(ampersand)gt;</code> with <code>></code>\n               </p>\n            </li>\n            <li>\n               <p>Replaces characters that are represented in hexadecimal format, <code>(ampersand)#xhhhh;</code>, with the corresponding \n\t\t\t\tcharacters</p>\n            </li>\n            <li>\n               <p>Replaces characters that are represented in decimal format, <code>(ampersand)#nnnn;</code>, with the corresponding \n\t\t\t\tcharacters</p>\n            </li>\n         </ul>\t\t\n\t\t       <p>\n            <b>LOWERCASE</b>\n         </p>\n\t\t       <p>Use this option to convert uppercase letters (A-Z) to lowercase (a-z).</p>\t\t\n\t\t       <p>\n            <b>URL_DECODE</b>\n         </p>\n\t\t       <p>Use this option to decode a URL-encoded value.</p>", "smithy.api#required" => {}}))
    SizeConstraint.add_member(:comparison_operator, Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: 'ComparisonOperator', traits: {"smithy.api#documentation" => "<p>The type of comparison you want AWS WAF to perform. AWS WAF uses this in combination with the provided <code>Size</code> and <code>FieldToMatch</code>\n\t\t\tto build an expression in the form of \"<code>Size</code> \n            <code>ComparisonOperator</code> size in bytes of <code>FieldToMatch</code>\". If that expression\n\t\t\tis true, the <code>SizeConstraint</code> is considered to match.</p>\n\t\t       <p>\n            <b>EQ</b>: Used to test if the <code>Size</code> is equal to the size of the <code>FieldToMatch</code>\n         </p>\n\t\t       <p>\n            <b>NE</b>: Used to test if the <code>Size</code> is not equal to the size of the <code>FieldToMatch</code>\n         </p>\n\t\t       <p>\n            <b>LE</b>: Used to test if the <code>Size</code> is less than or equal to the size of the <code>FieldToMatch</code>\n         </p>\n\t\t       <p>\n            <b>LT</b>: Used to test if the <code>Size</code> is strictly less than the size of the <code>FieldToMatch</code>\n         </p>\n\t\t       <p>\n            <b>GE</b>: Used to test if the <code>Size</code> is greater than or equal to the size of the <code>FieldToMatch</code>\n         </p>\n\t\t       <p>\n            <b>GT</b>: Used to test if the <code>Size</code> is strictly greater than the size of the <code>FieldToMatch</code>\n         </p>", "smithy.api#required" => {}}))
    SizeConstraint.add_member(:size, Smithy::Schema::Shapes::ShapeRef.new(shape: Size, location_name: 'Size', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The size in bytes that you want AWS WAF to compare against the size of the specified <code>FieldToMatch</code>. AWS WAF uses this in combination \n\t\t\twith <code>ComparisonOperator</code> and <code>FieldToMatch</code> to build an expression in the form of \"<code>Size</code> \n            <code>ComparisonOperator</code> size \n\t\t\tin bytes of <code>FieldToMatch</code>\". If that expression is true, the <code>SizeConstraint</code> is considered to match.</p>\n\t\t       <p>Valid values for size are 0 - 21474836480 bytes (0 - 20 GB).</p>\n\t\t       <p>If you specify <code>URI</code> for the value of <code>Type</code>, the / in the URI counts as one character. \n\t\t\tFor example, the URI <code>/logo.jpg</code> is nine characters long.</p>", "smithy.api#required" => {}}))
    SizeConstraint.type = Types::SizeConstraint
    SizeConstraintSet.add_member(:size_constraint_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'SizeConstraintSetId', traits: {"smithy.api#documentation" => "<p>A unique identifier for a <code>SizeConstraintSet</code>. You use <code>SizeConstraintSetId</code> to get information about a \n\t\t\t<code>SizeConstraintSet</code> (see <a>GetSizeConstraintSet</a>), update a <code>SizeConstraintSet</code> \n\t\t\t(see <a>UpdateSizeConstraintSet</a>), insert a <code>SizeConstraintSet</code> into a <code>Rule</code> or \n\t\t\tdelete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete a <code>SizeConstraintSet</code> from AWS WAF \n\t\t\t(see <a>DeleteSizeConstraintSet</a>).</p>\n\t\t       <p>\n            <code>SizeConstraintSetId</code> is returned by <a>CreateSizeConstraintSet</a> and by <a>ListSizeConstraintSets</a>.</p>", "smithy.api#required" => {}}))
    SizeConstraintSet.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name, if any, of the <code>SizeConstraintSet</code>.</p>"}))
    SizeConstraintSet.add_member(:size_constraints, Smithy::Schema::Shapes::ShapeRef.new(shape: SizeConstraints, location_name: 'SizeConstraints', traits: {"smithy.api#documentation" => "<p>Specifies the parts of web requests that you want to inspect the size of.</p>", "smithy.api#required" => {}}))
    SizeConstraintSet.type = Types::SizeConstraintSet
    SizeConstraintSetSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SizeConstraintSetSummary)
    SizeConstraintSetSummary.add_member(:size_constraint_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'SizeConstraintSetId', traits: {"smithy.api#documentation" => "<p>A unique identifier for a <code>SizeConstraintSet</code>. You use <code>SizeConstraintSetId</code> to get information about a \n\t\t\t<code>SizeConstraintSet</code> (see <a>GetSizeConstraintSet</a>), update a <code>SizeConstraintSet</code> \n\t\t\t(see <a>UpdateSizeConstraintSet</a>), insert a <code>SizeConstraintSet</code> into a <code>Rule</code> or \n\t\t\tdelete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete a <code>SizeConstraintSet</code> from AWS WAF \n\t\t\t(see <a>DeleteSizeConstraintSet</a>).</p>\n\t\t       <p>\n            <code>SizeConstraintSetId</code> is returned by <a>CreateSizeConstraintSet</a> and by <a>ListSizeConstraintSets</a>.</p>", "smithy.api#required" => {}}))
    SizeConstraintSetSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the <code>SizeConstraintSet</code>, if any.</p>", "smithy.api#required" => {}}))
    SizeConstraintSetSummary.type = Types::SizeConstraintSetSummary
    SizeConstraintSetUpdate.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeAction, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>Specify <code>INSERT</code> to add a <a>SizeConstraintSetUpdate</a> to a <a>SizeConstraintSet</a>. \n\t\t\tUse <code>DELETE</code> to remove a <code>SizeConstraintSetUpdate</code> from a <code>SizeConstraintSet</code>.</p>", "smithy.api#required" => {}}))
    SizeConstraintSetUpdate.add_member(:size_constraint, Smithy::Schema::Shapes::ShapeRef.new(shape: SizeConstraint, location_name: 'SizeConstraint', traits: {"smithy.api#documentation" => "<p>Specifies a constraint on the size of a part of the web request. AWS WAF uses the <code>Size</code>, <code>ComparisonOperator</code>, and <code>FieldToMatch</code> to build\n\t\t\tan expression in the form of \"<code>Size</code> \n            <code>ComparisonOperator</code> size in bytes of <code>FieldToMatch</code>\". If that expression is true, the\n\t\t\t<code>SizeConstraint</code> is considered to match.</p>", "smithy.api#required" => {}}))
    SizeConstraintSetUpdate.type = Types::SizeConstraintSetUpdate
    SizeConstraintSetUpdates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SizeConstraintSetUpdate)
    SizeConstraints.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SizeConstraint)
    SqlInjectionMatchSet.add_member(:sql_injection_match_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'SqlInjectionMatchSetId', traits: {"smithy.api#documentation" => "<p>A unique identifier for a <code>SqlInjectionMatchSet</code>. You use <code>SqlInjectionMatchSetId</code> to get information about a \n\t\t\t<code>SqlInjectionMatchSet</code> (see <a>GetSqlInjectionMatchSet</a>), update a <code>SqlInjectionMatchSet</code> \n\t\t\t(see <a>UpdateSqlInjectionMatchSet</a>), insert a <code>SqlInjectionMatchSet</code> into a <code>Rule</code> or \n\t\t\tdelete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete a <code>SqlInjectionMatchSet</code> from AWS WAF \n\t\t\t(see <a>DeleteSqlInjectionMatchSet</a>).</p>\n\t\t       <p>\n            <code>SqlInjectionMatchSetId</code> is returned by <a>CreateSqlInjectionMatchSet</a> and by <a>ListSqlInjectionMatchSets</a>.</p>", "smithy.api#required" => {}}))
    SqlInjectionMatchSet.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name, if any, of the <code>SqlInjectionMatchSet</code>.</p>"}))
    SqlInjectionMatchSet.add_member(:sql_injection_match_tuples, Smithy::Schema::Shapes::ShapeRef.new(shape: SqlInjectionMatchTuples, location_name: 'SqlInjectionMatchTuples', traits: {"smithy.api#documentation" => "<p>Specifies the parts of web requests that you want to inspect for snippets of malicious SQL code.</p>", "smithy.api#required" => {}}))
    SqlInjectionMatchSet.type = Types::SqlInjectionMatchSet
    SqlInjectionMatchSetSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SqlInjectionMatchSetSummary)
    SqlInjectionMatchSetSummary.add_member(:sql_injection_match_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'SqlInjectionMatchSetId', traits: {"smithy.api#documentation" => "<p>A unique identifier for a <code>SqlInjectionMatchSet</code>. You use <code>SqlInjectionMatchSetId</code> to get information about a \n\t\t\t<code>SqlInjectionMatchSet</code> (see <a>GetSqlInjectionMatchSet</a>), update a <code>SqlInjectionMatchSet</code> \n\t\t\t(see <a>UpdateSqlInjectionMatchSet</a>), insert a <code>SqlInjectionMatchSet</code> into a <code>Rule</code> or \n\t\t\tdelete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete a <code>SqlInjectionMatchSet</code> from AWS WAF \n\t\t\t(see <a>DeleteSqlInjectionMatchSet</a>).</p>\n\t\t       <p>\n            <code>SqlInjectionMatchSetId</code> is returned by <a>CreateSqlInjectionMatchSet</a> and by <a>ListSqlInjectionMatchSets</a>.</p>", "smithy.api#required" => {}}))
    SqlInjectionMatchSetSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the <code>SqlInjectionMatchSet</code>, if any, specified by <code>Id</code>.</p>", "smithy.api#required" => {}}))
    SqlInjectionMatchSetSummary.type = Types::SqlInjectionMatchSetSummary
    SqlInjectionMatchSetUpdate.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeAction, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>Specify <code>INSERT</code> to add a <a>SqlInjectionMatchSetUpdate</a> to a <a>SqlInjectionMatchSet</a>. \n\t\t\tUse <code>DELETE</code> to remove a <code>SqlInjectionMatchSetUpdate</code> from a <code>SqlInjectionMatchSet</code>.</p>", "smithy.api#required" => {}}))
    SqlInjectionMatchSetUpdate.add_member(:sql_injection_match_tuple, Smithy::Schema::Shapes::ShapeRef.new(shape: SqlInjectionMatchTuple, location_name: 'SqlInjectionMatchTuple', traits: {"smithy.api#documentation" => "<p>Specifies the part of a web request that you want AWS WAF to inspect for snippets of malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header.</p>", "smithy.api#required" => {}}))
    SqlInjectionMatchSetUpdate.type = Types::SqlInjectionMatchSetUpdate
    SqlInjectionMatchSetUpdates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SqlInjectionMatchSetUpdate)
    SqlInjectionMatchTuple.add_member(:field_to_match, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldToMatch, location_name: 'FieldToMatch', traits: {"smithy.api#documentation" => "<p>Specifies where in a web request to look for snippets of malicious SQL code.</p>", "smithy.api#required" => {}}))
    SqlInjectionMatchTuple.add_member(:text_transformation, Smithy::Schema::Shapes::ShapeRef.new(shape: TextTransformation, location_name: 'TextTransformation', traits: {"smithy.api#documentation" => "<p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF. \n\t\t\tIf you specify a transformation, AWS WAF performs the transformation on <code>FieldToMatch</code> before inspecting it for a match.</p>\n         <p>You can only specify a single type of TextTransformation.</p>\t\t\t\n\t\t       <p>\n            <b>CMD_LINE</b>\n         </p>\n\t\t       <p>When you're concerned that attackers are injecting an operating system command line\n         command and using unusual formatting to disguise some or all of the command, use this\n         option to perform the following transformations:</p>\n\t\t       <ul>\n            <li>\n               <p>Delete the following characters: \\ \" ' ^</p>\n            </li>\n            <li>\n               <p>Delete spaces before the following characters: / (</p>\n            </li>\n            <li>\n               <p>Replace the following characters with a space: , ;</p>\n            </li>\n            <li>\n               <p>Replace multiple spaces with one space</p>\n            </li>\n            <li>\n               <p>Convert uppercase letters (A-Z) to lowercase (a-z)</p>\n            </li>\n         </ul>\t\t\n\t\t       <p>\n            <b>COMPRESS_WHITE_SPACE</b>\n         </p>\n\t\t       <p>Use this option to replace the following characters with a space character (decimal 32):</p>\n\t\t       <ul>\n            <li>\n               <p>\\f, formfeed, decimal 12</p>\n            </li>\n            <li>\n               <p>\\t, tab, decimal 9</p>\n            </li>\n            <li>\n               <p>\\n, newline, decimal 10</p>\n            </li>\n            <li>\n               <p>\\r, carriage return, decimal 13</p>\n            </li>\n            <li>\n               <p>\\v, vertical tab, decimal 11</p>\n            </li>\n            <li>\n               <p>non-breaking space, decimal 160</p>\n            </li>\n         </ul>\n\t\t       <p>\n            <code>COMPRESS_WHITE_SPACE</code> also replaces multiple spaces with one space.</p>\t\t\n\t\t       <p>\n            <b>HTML_ENTITY_DECODE</b>\n         </p>\n\t\t       <p>Use this option to replace HTML-encoded characters with unencoded characters. <code>HTML_ENTITY_DECODE</code> performs \n\t\t\tthe following operations:</p>\n\t\t       <ul>\n            <li>\n               <p>Replaces <code>(ampersand)quot;</code> with <code>\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Replaces <code>(ampersand)nbsp;</code> with a non-breaking space, decimal 160</p>\n            </li>\n            <li>\n               <p>Replaces <code>(ampersand)lt;</code> with a \"less than\" symbol</p>\n            </li>\n            <li>\n               <p>Replaces <code>(ampersand)gt;</code> with <code>></code>\n               </p>\n            </li>\n            <li>\n               <p>Replaces characters that are represented in hexadecimal format, <code>(ampersand)#xhhhh;</code>, with the corresponding \n\t\t\t\tcharacters</p>\n            </li>\n            <li>\n               <p>Replaces characters that are represented in decimal format, <code>(ampersand)#nnnn;</code>, with the corresponding \n\t\t\t\tcharacters</p>\n            </li>\n         </ul>\t\t\n\t\t       <p>\n            <b>LOWERCASE</b>\n         </p>\n\t\t       <p>Use this option to convert uppercase letters (A-Z) to lowercase (a-z).</p>\t\t\n\t\t       <p>\n            <b>URL_DECODE</b>\n         </p>\n\t\t       <p>Use this option to decode a URL-encoded value.</p>\t\t\n\t\t       <p>\n            <b>NONE</b>\n         </p>\n\t\t       <p>Specify <code>NONE</code> if you don't want to perform any text transformations.</p>", "smithy.api#required" => {}}))
    SqlInjectionMatchTuple.type = Types::SqlInjectionMatchTuple
    SqlInjectionMatchTuples.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SqlInjectionMatchTuple)
    SubscribedRuleGroupSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubscribedRuleGroupSummary)
    SubscribedRuleGroupSummary.add_member(:rule_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RuleGroupId', traits: {"smithy.api#documentation" => "<p>A unique identifier for a <code>RuleGroup</code>.</p>", "smithy.api#required" => {}}))
    SubscribedRuleGroupSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name or description of the <code>RuleGroup</code>. You can't change the name of a <code>RuleGroup</code> after you create it.</p>", "smithy.api#required" => {}}))
    SubscribedRuleGroupSummary.add_member(:metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'MetricName', traits: {"smithy.api#documentation" => "<p>A friendly name or description for the metrics for this <code>RuleGroup</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain\n         whitespace or metric names reserved for AWS WAF, including \"All\" and \"Default_Action.\" You can't change the name of the metric after you create the <code>RuleGroup</code>.</p>", "smithy.api#required" => {}}))
    SubscribedRuleGroupSummary.type = Types::SubscribedRuleGroupSummary
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p></p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p></p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagInfoForResource.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p></p>"}))
    TagInfoForResource.add_member(:tag_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList', traits: {"smithy.api#documentation" => "<p></p>"}))
    TagInfoForResource.type = Types::TagInfoForResource
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p></p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p></p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TextTransformation.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    TextTransformation.add_member(:compress_white_space, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPRESS_WHITE_SPACE', traits: {"smithy.api#enumValue" => "COMPRESS_WHITE_SPACE"}))
    TextTransformation.add_member(:html_entity_decode, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTML_ENTITY_DECODE', traits: {"smithy.api#enumValue" => "HTML_ENTITY_DECODE"}))
    TextTransformation.add_member(:lowercase, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOWERCASE', traits: {"smithy.api#enumValue" => "LOWERCASE"}))
    TextTransformation.add_member(:cmd_line, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CMD_LINE', traits: {"smithy.api#enumValue" => "CMD_LINE"}))
    TextTransformation.add_member(:url_decode, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'URL_DECODE', traits: {"smithy.api#enumValue" => "URL_DECODE"}))
    TimeWindow.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The beginning of the time range from which you want <code>GetSampledRequests</code> to return a sample of the \n                  requests that your AWS resource received. You must specify the date and time in Coordinated Universal Time (UTC) format. \n                  UTC format includes the special designator, <code>Z</code>. For example, <code>\"2016-09-27T14:50Z\"</code>. \n                      You can specify any time range in the previous three hours.</p>", "smithy.api#required" => {}}))
    TimeWindow.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The end of the time range from which you want <code>GetSampledRequests</code> to return a sample of the \n                  requests that your AWS resource received. You must specify the date and time in Coordinated Universal Time (UTC) format. \n                  UTC format includes the special designator, <code>Z</code>. For example, <code>\"2016-09-27T14:50Z\"</code>. \n                      You can specify any time range in the previous three hours.</p>", "smithy.api#required" => {}}))
    TimeWindow.type = Types::TimeWindow
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p></p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p></p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateByteMatchSetRequest.add_member(:byte_match_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ByteMatchSetId', traits: {"smithy.api#documentation" => "<p>The <code>ByteMatchSetId</code> of the <a>ByteMatchSet</a> that you want to update. <code>ByteMatchSetId</code> is returned by <a>CreateByteMatchSet</a> and by \n\t\t\t<a>ListByteMatchSets</a>.</p>", "smithy.api#required" => {}}))
    UpdateByteMatchSetRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    UpdateByteMatchSetRequest.add_member(:updates, Smithy::Schema::Shapes::ShapeRef.new(shape: ByteMatchSetUpdates, location_name: 'Updates', traits: {"smithy.api#documentation" => "<p>An array of <code>ByteMatchSetUpdate</code> objects that you want to insert into or delete from a <a>ByteMatchSet</a>. \n\t\t\tFor more information, see the applicable data types:</p>\n\t\t       <ul>\n            <li>\n               <p>\n                  <a>ByteMatchSetUpdate</a>: Contains <code>Action</code> and <code>ByteMatchTuple</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a>ByteMatchTuple</a>: Contains <code>FieldToMatch</code>, <code>PositionalConstraint</code>, <code>TargetString</code>, \n\t\t\t\tand <code>TextTransformation</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    UpdateByteMatchSetRequest.type = Types::UpdateByteMatchSetRequest
    UpdateByteMatchSetResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>UpdateByteMatchSet</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    UpdateByteMatchSetResponse.type = Types::UpdateByteMatchSetResponse
    UpdateGeoMatchSetRequest.add_member(:geo_match_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'GeoMatchSetId', traits: {"smithy.api#documentation" => "<p>The <code>GeoMatchSetId</code> of the <a>GeoMatchSet</a> that you want to update. <code>GeoMatchSetId</code> is returned by <a>CreateGeoMatchSet</a> and by \n\t\t\t<a>ListGeoMatchSets</a>.</p>", "smithy.api#required" => {}}))
    UpdateGeoMatchSetRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    UpdateGeoMatchSetRequest.add_member(:updates, Smithy::Schema::Shapes::ShapeRef.new(shape: GeoMatchSetUpdates, location_name: 'Updates', traits: {"smithy.api#documentation" => "<p>An array of <code>GeoMatchSetUpdate</code> objects that you want to insert into or delete from an <a>GeoMatchSet</a>.\n\t\t\tFor more information, see the applicable data types:</p>\n\t\t       <ul>\n            <li>\n               <p>\n                  <a>GeoMatchSetUpdate</a>: Contains <code>Action</code> and <code>GeoMatchConstraint</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a>GeoMatchConstraint</a>: Contains <code>Type</code> and <code>Value</code>\n               </p>\n\t\t\t            <p>You can have only one <code>Type</code> and <code>Value</code> per <code>GeoMatchConstraint</code>. To add multiple countries, include multiple <code>GeoMatchSetUpdate</code> objects in your request.</p>      \n            </li>\n         </ul>", "smithy.api#required" => {}}))
    UpdateGeoMatchSetRequest.type = Types::UpdateGeoMatchSetRequest
    UpdateGeoMatchSetResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>UpdateGeoMatchSet</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    UpdateGeoMatchSetResponse.type = Types::UpdateGeoMatchSetResponse
    UpdateIPSetRequest.add_member(:ip_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'IPSetId', traits: {"smithy.api#documentation" => "<p>The <code>IPSetId</code> of the <a>IPSet</a> that you want to update. <code>IPSetId</code> is returned by <a>CreateIPSet</a> and by \n\t\t\t<a>ListIPSets</a>.</p>", "smithy.api#required" => {}}))
    UpdateIPSetRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    UpdateIPSetRequest.add_member(:updates, Smithy::Schema::Shapes::ShapeRef.new(shape: IPSetUpdates, location_name: 'Updates', traits: {"smithy.api#documentation" => "<p>An array of <code>IPSetUpdate</code> objects that you want to insert into or delete from an <a>IPSet</a>. \n\t\t\tFor more information, see the applicable data types:</p>\n\t\t       <ul>\n            <li>\n               <p>\n                  <a>IPSetUpdate</a>: Contains <code>Action</code> and <code>IPSetDescriptor</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a>IPSetDescriptor</a>: Contains <code>Type</code> and <code>Value</code>\n               </p>\n            </li>\n         </ul>\n\t        <p>You can insert a maximum of 1000 addresses in a single request.</p>", "smithy.api#required" => {}}))
    UpdateIPSetRequest.type = Types::UpdateIPSetRequest
    UpdateIPSetResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>UpdateIPSet</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    UpdateIPSetResponse.type = Types::UpdateIPSetResponse
    UpdateRateBasedRuleRequest.add_member(:rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RuleId', traits: {"smithy.api#documentation" => "<p>The <code>RuleId</code> of the <code>RateBasedRule</code> that you want to update.\n            <code>RuleId</code> is returned by <code>CreateRateBasedRule</code> and by <a>ListRateBasedRules</a>.</p>", "smithy.api#required" => {}}))
    UpdateRateBasedRuleRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    UpdateRateBasedRuleRequest.add_member(:updates, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleUpdates, location_name: 'Updates', traits: {"smithy.api#documentation" => "<p>An array of <code>RuleUpdate</code> objects that you want to insert into or delete\n         from a <a>RateBasedRule</a>. </p>", "smithy.api#required" => {}}))
    UpdateRateBasedRuleRequest.add_member(:rate_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimit, location_name: 'RateLimit', traits: {"smithy.api#documentation" => "<p>The maximum number of requests, which have an identical value in the field specified by the <code>RateKey</code>, allowed in a\n         five-minute period. If the number of requests exceeds the <code>RateLimit</code> and the other\n         predicates specified in the rule are also met,\n         AWS WAF triggers the action that is specified for this rule.</p>", "smithy.api#required" => {}}))
    UpdateRateBasedRuleRequest.type = Types::UpdateRateBasedRuleRequest
    UpdateRateBasedRuleResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the\n            <code>UpdateRateBasedRule</code> request. You can also use this value to query the\n         status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    UpdateRateBasedRuleResponse.type = Types::UpdateRateBasedRuleResponse
    UpdateRegexMatchSetRequest.add_member(:regex_match_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RegexMatchSetId', traits: {"smithy.api#documentation" => "<p>The <code>RegexMatchSetId</code> of the <a>RegexMatchSet</a> that you want to update. <code>RegexMatchSetId</code> is returned by <a>CreateRegexMatchSet</a> and by \n\t\t\t<a>ListRegexMatchSets</a>.</p>", "smithy.api#required" => {}}))
    UpdateRegexMatchSetRequest.add_member(:updates, Smithy::Schema::Shapes::ShapeRef.new(shape: RegexMatchSetUpdates, location_name: 'Updates', traits: {"smithy.api#documentation" => "<p>An array of <code>RegexMatchSetUpdate</code> objects that you want to insert into or delete from a <a>RegexMatchSet</a>. \n\t\t\tFor more information, see <a>RegexMatchTuple</a>.</p>", "smithy.api#required" => {}}))
    UpdateRegexMatchSetRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    UpdateRegexMatchSetRequest.type = Types::UpdateRegexMatchSetRequest
    UpdateRegexMatchSetResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>UpdateRegexMatchSet</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    UpdateRegexMatchSetResponse.type = Types::UpdateRegexMatchSetResponse
    UpdateRegexPatternSetRequest.add_member(:regex_pattern_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RegexPatternSetId', traits: {"smithy.api#documentation" => "<p>The <code>RegexPatternSetId</code> of the <a>RegexPatternSet</a> that you want to update. <code>RegexPatternSetId</code> is returned by <a>CreateRegexPatternSet</a> and by \n\t\t\t<a>ListRegexPatternSets</a>.</p>", "smithy.api#required" => {}}))
    UpdateRegexPatternSetRequest.add_member(:updates, Smithy::Schema::Shapes::ShapeRef.new(shape: RegexPatternSetUpdates, location_name: 'Updates', traits: {"smithy.api#documentation" => "<p>An array of <code>RegexPatternSetUpdate</code> objects that you want to insert into or delete from a <a>RegexPatternSet</a>.</p>", "smithy.api#required" => {}}))
    UpdateRegexPatternSetRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    UpdateRegexPatternSetRequest.type = Types::UpdateRegexPatternSetRequest
    UpdateRegexPatternSetResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>UpdateRegexPatternSet</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    UpdateRegexPatternSetResponse.type = Types::UpdateRegexPatternSetResponse
    UpdateRuleGroupRequest.add_member(:rule_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RuleGroupId', traits: {"smithy.api#documentation" => "<p>The <code>RuleGroupId</code> of the <a>RuleGroup</a> that you want to update. <code>RuleGroupId</code> is returned by <a>CreateRuleGroup</a> and by \n         <a>ListRuleGroups</a>.</p>", "smithy.api#required" => {}}))
    UpdateRuleGroupRequest.add_member(:updates, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupUpdates, location_name: 'Updates', traits: {"smithy.api#documentation" => "<p>An array of <code>RuleGroupUpdate</code> objects that you want to insert into or delete from a \n         <a>RuleGroup</a>.</p>\n\t\t       <p>You can only insert <code>REGULAR</code> rules into a rule group.</p>\n\t\t       <p>\n            <code>ActivatedRule|OverrideAction</code> applies only when updating or adding a <code>RuleGroup</code> to a <code>WebACL</code>. In this case you do not use <code>ActivatedRule|Action</code>.  For all other update requests, <code>ActivatedRule|Action</code> is used instead of <code>ActivatedRule|OverrideAction</code>.</p>", "smithy.api#required" => {}}))
    UpdateRuleGroupRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    UpdateRuleGroupRequest.type = Types::UpdateRuleGroupRequest
    UpdateRuleGroupResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>UpdateRuleGroup</code> request. You can also use this value \n         to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    UpdateRuleGroupResponse.type = Types::UpdateRuleGroupResponse
    UpdateRuleRequest.add_member(:rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RuleId', traits: {"smithy.api#documentation" => "<p>The <code>RuleId</code> of the <code>Rule</code> that you want to update. <code>RuleId</code> is returned by \n\t\t\t<code>CreateRule</code> and by <a>ListRules</a>.</p>", "smithy.api#required" => {}}))
    UpdateRuleRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    UpdateRuleRequest.add_member(:updates, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleUpdates, location_name: 'Updates', traits: {"smithy.api#documentation" => "<p>An array of <code>RuleUpdate</code> objects that you want to insert into or delete from a \n\t\t\t<a>Rule</a>. For more information, see the applicable data types:</p>\n\t\t       <ul>\n            <li>\n               <p>\n                  <a>RuleUpdate</a>: Contains <code>Action</code> and <code>Predicate</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a>Predicate</a>: Contains <code>DataId</code>, <code>Negated</code>, and <code>Type</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    UpdateRuleRequest.type = Types::UpdateRuleRequest
    UpdateRuleResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>UpdateRule</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    UpdateRuleResponse.type = Types::UpdateRuleResponse
    UpdateSizeConstraintSetRequest.add_member(:size_constraint_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'SizeConstraintSetId', traits: {"smithy.api#documentation" => "<p>The <code>SizeConstraintSetId</code> of the <a>SizeConstraintSet</a> that you want to update. <code>SizeConstraintSetId</code> \n\t\t\tis returned by <a>CreateSizeConstraintSet</a> and by <a>ListSizeConstraintSets</a>.</p>", "smithy.api#required" => {}}))
    UpdateSizeConstraintSetRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    UpdateSizeConstraintSetRequest.add_member(:updates, Smithy::Schema::Shapes::ShapeRef.new(shape: SizeConstraintSetUpdates, location_name: 'Updates', traits: {"smithy.api#documentation" => "<p>An array of <code>SizeConstraintSetUpdate</code> objects that you want to insert into or delete from a <a>SizeConstraintSet</a>. \n\t\t\tFor more information, see the applicable data types:</p>\n\t\t       <ul>\n            <li>\n               <p>\n                  <a>SizeConstraintSetUpdate</a>: Contains <code>Action</code> and <code>SizeConstraint</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a>SizeConstraint</a>: Contains <code>FieldToMatch</code>, <code>TextTransformation</code>, <code>ComparisonOperator</code>, \n\t\t\t\tand <code>Size</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    UpdateSizeConstraintSetRequest.type = Types::UpdateSizeConstraintSetRequest
    UpdateSizeConstraintSetResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>UpdateSizeConstraintSet</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    UpdateSizeConstraintSetResponse.type = Types::UpdateSizeConstraintSetResponse
    UpdateSqlInjectionMatchSetRequest.add_member(:sql_injection_match_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'SqlInjectionMatchSetId', traits: {"smithy.api#documentation" => "<p>The <code>SqlInjectionMatchSetId</code> of the <code>SqlInjectionMatchSet</code> that you want to update. \n\t\t\t<code>SqlInjectionMatchSetId</code> is returned by <a>CreateSqlInjectionMatchSet</a> and by <a>ListSqlInjectionMatchSets</a>.</p>", "smithy.api#required" => {}}))
    UpdateSqlInjectionMatchSetRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    UpdateSqlInjectionMatchSetRequest.add_member(:updates, Smithy::Schema::Shapes::ShapeRef.new(shape: SqlInjectionMatchSetUpdates, location_name: 'Updates', traits: {"smithy.api#documentation" => "<p>An array of <code>SqlInjectionMatchSetUpdate</code> objects that you want to insert into or delete from a \n\t\t\t<a>SqlInjectionMatchSet</a>. For more information, see the applicable data types:</p>\n\t\t       <ul>\n            <li>\n               <p>\n                  <a>SqlInjectionMatchSetUpdate</a>: Contains <code>Action</code> and <code>SqlInjectionMatchTuple</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a>SqlInjectionMatchTuple</a>: Contains <code>FieldToMatch</code> and <code>TextTransformation</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    UpdateSqlInjectionMatchSetRequest.type = Types::UpdateSqlInjectionMatchSetRequest
    UpdateSqlInjectionMatchSetResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>UpdateSqlInjectionMatchSet</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    UpdateSqlInjectionMatchSetResponse.type = Types::UpdateSqlInjectionMatchSetResponse
    UpdateWebACLRequest.add_member(:web_acl_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'WebACLId', traits: {"smithy.api#documentation" => "<p>The <code>WebACLId</code> of the <a>WebACL</a> that you want to update. <code>WebACLId</code> is returned by <a>CreateWebACL</a> and by \n\t\t\t<a>ListWebACLs</a>.</p>", "smithy.api#required" => {}}))
    UpdateWebACLRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    UpdateWebACLRequest.add_member(:updates, Smithy::Schema::Shapes::ShapeRef.new(shape: WebACLUpdates, location_name: 'Updates', traits: {"smithy.api#documentation" => "<p>An array of updates to make to the <a>WebACL</a>.</p>\t\t\n\t\t       <p>An array of <code>WebACLUpdate</code> objects that you want to insert into or delete from a \n\t\t\t<a>WebACL</a>. For more information, see the applicable data types:</p>\n\t\t       <ul>\n            <li>\n               <p>\n                  <a>WebACLUpdate</a>: Contains <code>Action</code> and <code>ActivatedRule</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a>ActivatedRule</a>: Contains <code>Action</code>,\n                  <code>OverrideAction</code>, <code>Priority</code>, <code>RuleId</code>, and\n                  <code>Type</code>. <code>ActivatedRule|OverrideAction</code> applies only when\n               updating or adding a <code>RuleGroup</code> to a <code>WebACL</code>. In this\n               case,\n               you do not use <code>ActivatedRule|Action</code>. For all other update requests,\n                  <code>ActivatedRule|Action</code> is used instead of\n                  <code>ActivatedRule|OverrideAction</code>. </p>\n            </li>\n            <li>\n               <p>\n                  <a>WafAction</a>: Contains <code>Type</code>\n               </p>\n            </li>\n         </ul>"}))
    UpdateWebACLRequest.add_member(:default_action, Smithy::Schema::Shapes::ShapeRef.new(shape: WafAction, location_name: 'DefaultAction', traits: {"smithy.api#documentation" => "<p>A default action for the web ACL, either ALLOW or BLOCK. AWS WAF performs the default\n         action if a request doesn't match the criteria in any of the rules in a web ACL.</p>"}))
    UpdateWebACLRequest.type = Types::UpdateWebACLRequest
    UpdateWebACLResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>UpdateWebACL</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    UpdateWebACLResponse.type = Types::UpdateWebACLResponse
    UpdateXssMatchSetRequest.add_member(:xss_match_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'XssMatchSetId', traits: {"smithy.api#documentation" => "<p>The <code>XssMatchSetId</code> of the <code>XssMatchSet</code> that you want to update. \n\t\t\t<code>XssMatchSetId</code> is returned by <a>CreateXssMatchSet</a> and by <a>ListXssMatchSets</a>.</p>", "smithy.api#required" => {}}))
    UpdateXssMatchSetRequest.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>", "smithy.api#required" => {}}))
    UpdateXssMatchSetRequest.add_member(:updates, Smithy::Schema::Shapes::ShapeRef.new(shape: XssMatchSetUpdates, location_name: 'Updates', traits: {"smithy.api#documentation" => "<p>An array of <code>XssMatchSetUpdate</code> objects that you want to insert into or\n         delete from an\n         <a>XssMatchSet</a>. For more information, see the applicable data\n         types:</p>\n\t\t       <ul>\n            <li>\n               <p>\n                  <a>XssMatchSetUpdate</a>: Contains <code>Action</code> and <code>XssMatchTuple</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a>XssMatchTuple</a>: Contains <code>FieldToMatch</code> and <code>TextTransformation</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    UpdateXssMatchSetRequest.type = Types::UpdateXssMatchSetRequest
    UpdateXssMatchSetResponse.add_member(:change_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeToken, location_name: 'ChangeToken', traits: {"smithy.api#documentation" => "<p>The <code>ChangeToken</code> that you used to submit the <code>UpdateXssMatchSet</code> request. You can also use this value \n\t\t\tto query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>"}))
    UpdateXssMatchSetResponse.type = Types::UpdateXssMatchSetResponse
    WAFBadRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    WAFBadRequestException.type = Types::WAFBadRequestException
    WAFDisallowedNameException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    WAFDisallowedNameException.type = Types::WAFDisallowedNameException
    WAFEntityMigrationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    WAFEntityMigrationException.add_member(:migration_error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationErrorType, location_name: 'MigrationErrorType'))
    WAFEntityMigrationException.add_member(:migration_error_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorReason, location_name: 'MigrationErrorReason'))
    WAFEntityMigrationException.type = Types::WAFEntityMigrationException
    WAFInternalErrorException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    WAFInternalErrorException.type = Types::WAFInternalErrorException
    WAFInvalidAccountException.type = Types::WAFInvalidAccountException
    WAFInvalidOperationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    WAFInvalidOperationException.type = Types::WAFInvalidOperationException
    WAFInvalidParameterException.add_member(:field, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterExceptionField, location_name: 'field'))
    WAFInvalidParameterException.add_member(:parameter, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterExceptionParameter, location_name: 'parameter'))
    WAFInvalidParameterException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterExceptionReason, location_name: 'reason'))
    WAFInvalidParameterException.type = Types::WAFInvalidParameterException
    WAFInvalidPermissionPolicyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    WAFInvalidPermissionPolicyException.type = Types::WAFInvalidPermissionPolicyException
    WAFInvalidRegexPatternException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    WAFInvalidRegexPatternException.type = Types::WAFInvalidRegexPatternException
    WAFLimitsExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    WAFLimitsExceededException.type = Types::WAFLimitsExceededException
    WAFNonEmptyEntityException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    WAFNonEmptyEntityException.type = Types::WAFNonEmptyEntityException
    WAFNonexistentContainerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    WAFNonexistentContainerException.type = Types::WAFNonexistentContainerException
    WAFNonexistentItemException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    WAFNonexistentItemException.type = Types::WAFNonexistentItemException
    WAFReferencedItemException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    WAFReferencedItemException.type = Types::WAFReferencedItemException
    WAFServiceLinkedRoleErrorException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    WAFServiceLinkedRoleErrorException.type = Types::WAFServiceLinkedRoleErrorException
    WAFStaleDataException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    WAFStaleDataException.type = Types::WAFStaleDataException
    WAFSubscriptionNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    WAFSubscriptionNotFoundException.type = Types::WAFSubscriptionNotFoundException
    WAFTagOperationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    WAFTagOperationException.type = Types::WAFTagOperationException
    WAFTagOperationInternalErrorException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    WAFTagOperationInternalErrorException.type = Types::WAFTagOperationInternalErrorException
    WAFUnavailableEntityException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    WAFUnavailableEntityException.type = Types::WAFUnavailableEntityException
    WafAction.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: WafActionType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Specifies how you want AWS WAF to respond to requests that match the settings in a <code>Rule</code>. Valid settings include the following:</p>\n\t\t       <ul>\n            <li>\n               <p>\n                  <code>ALLOW</code>: AWS WAF allows requests</p>\n            </li>\n            <li>\n               <p>\n                  <code>BLOCK</code>: AWS WAF blocks requests</p>\n            </li>\n            <li>\n               <p>\n                  <code>COUNT</code>: AWS WAF increments a counter of the requests that match all of the conditions in the rule. \n\t\t\t\tAWS WAF then continues to inspect the web request based on the remaining rules in the web ACL. You can't specify <code>COUNT</code> \n\t\t\t\tfor the default action for a <code>WebACL</code>.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    WafAction.type = Types::WafAction
    WafActionType.add_member(:block, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BLOCK', traits: {"smithy.api#enumValue" => "BLOCK"}))
    WafActionType.add_member(:allow, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW', traits: {"smithy.api#enumValue" => "ALLOW"}))
    WafActionType.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COUNT', traits: {"smithy.api#enumValue" => "COUNT"}))
    WafOverrideAction.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: WafOverrideActionType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>\n            <code>COUNT</code> overrides the action specified by the individual rule within a <code>RuleGroup</code> . If set to <code>NONE</code>, the rule's action will take place.</p>", "smithy.api#required" => {}}))
    WafOverrideAction.type = Types::WafOverrideAction
    WafOverrideActionType.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    WafOverrideActionType.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COUNT', traits: {"smithy.api#enumValue" => "COUNT"}))
    WafRuleType.add_member(:regular, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGULAR', traits: {"smithy.api#enumValue" => "REGULAR"}))
    WafRuleType.add_member(:rate_based, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RATE_BASED', traits: {"smithy.api#enumValue" => "RATE_BASED"}))
    WafRuleType.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GROUP', traits: {"smithy.api#enumValue" => "GROUP"}))
    WebACL.add_member(:web_acl_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'WebACLId', traits: {"smithy.api#documentation" => "<p>A unique identifier for a <code>WebACL</code>. You use <code>WebACLId</code> to get information about a <code>WebACL</code> \n\t\t\t(see <a>GetWebACL</a>), update a <code>WebACL</code> (see <a>UpdateWebACL</a>), and delete a <code>WebACL</code> from AWS WAF \n\t\t\t(see <a>DeleteWebACL</a>).</p>\n\t\t       <p>\n            <code>WebACLId</code> is returned by <a>CreateWebACL</a> and by <a>ListWebACLs</a>.</p>", "smithy.api#required" => {}}))
    WebACL.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name or description of the <code>WebACL</code>. You can't change the name of a <code>WebACL</code> after you create it.</p>"}))
    WebACL.add_member(:metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'MetricName', traits: {"smithy.api#documentation" => "<p>A friendly name or description for the metrics for this <code>WebACL</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain\n         whitespace or metric names reserved for AWS WAF, including \"All\" and \"Default_Action.\" You can't change <code>MetricName</code> after you create the <code>WebACL</code>.</p>"}))
    WebACL.add_member(:default_action, Smithy::Schema::Shapes::ShapeRef.new(shape: WafAction, location_name: 'DefaultAction', traits: {"smithy.api#documentation" => "<p>The action to perform if none of the <code>Rules</code> contained in the <code>WebACL</code> match. The action is specified by the \n\t\t\t<a>WafAction</a> object.</p>", "smithy.api#required" => {}}))
    WebACL.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivatedRules, location_name: 'Rules', traits: {"smithy.api#documentation" => "<p>An array that contains the action for each <code>Rule</code> in a <code>WebACL</code>, the priority of the <code>Rule</code>, \n\t\t\tand the ID of the <code>Rule</code>.</p>", "smithy.api#required" => {}}))
    WebACL.add_member(:web_acl_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'WebACLArn', traits: {"smithy.api#documentation" => "<p>Tha Amazon Resource Name (ARN) of the web ACL.</p>"}))
    WebACL.type = Types::WebACL
    WebACLSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WebACLSummary)
    WebACLSummary.add_member(:web_acl_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'WebACLId', traits: {"smithy.api#documentation" => "<p>A unique identifier for a <code>WebACL</code>. You use <code>WebACLId</code> to get information about a <code>WebACL</code> \n\t\t\t(see <a>GetWebACL</a>), update a <code>WebACL</code> (see <a>UpdateWebACL</a>), and delete a <code>WebACL</code> from AWS WAF \n\t\t\t(see <a>DeleteWebACL</a>).</p>\n\t\t       <p>\n            <code>WebACLId</code> is returned by <a>CreateWebACL</a> and by <a>ListWebACLs</a>.</p>", "smithy.api#required" => {}}))
    WebACLSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name or description of the <a>WebACL</a>. You can't change the name of a <code>WebACL</code> after you create it.</p>", "smithy.api#required" => {}}))
    WebACLSummary.type = Types::WebACLSummary
    WebACLUpdate.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeAction, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>Specifies whether to insert a <code>Rule</code> into or delete a <code>Rule</code> from a <code>WebACL</code>.</p>", "smithy.api#required" => {}}))
    WebACLUpdate.add_member(:activated_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivatedRule, location_name: 'ActivatedRule', traits: {"smithy.api#documentation" => "<p>The <code>ActivatedRule</code> object in an <a>UpdateWebACL</a> request specifies a <code>Rule</code> that you want to insert or delete, \n         the priority of the <code>Rule</code> in the <code>WebACL</code>, and the action that you want AWS WAF to take when a web request matches the <code>Rule</code> \n         (<code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>).</p>", "smithy.api#required" => {}}))
    WebACLUpdate.type = Types::WebACLUpdate
    WebACLUpdates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WebACLUpdate)
    XssMatchSet.add_member(:xss_match_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'XssMatchSetId', traits: {"smithy.api#documentation" => "<p>A unique identifier for an <code>XssMatchSet</code>. You use <code>XssMatchSetId</code> to get information about an \n\t\t\t<code>XssMatchSet</code> (see <a>GetXssMatchSet</a>), update an <code>XssMatchSet</code> \n\t\t\t(see <a>UpdateXssMatchSet</a>), insert an <code>XssMatchSet</code> into a <code>Rule</code> or \n\t\t\tdelete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete an <code>XssMatchSet</code> from AWS WAF \n\t\t\t(see <a>DeleteXssMatchSet</a>).</p>\n\t\t       <p>\n            <code>XssMatchSetId</code> is returned by <a>CreateXssMatchSet</a> and by <a>ListXssMatchSets</a>.</p>", "smithy.api#required" => {}}))
    XssMatchSet.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name, if any, of the <code>XssMatchSet</code>.</p>"}))
    XssMatchSet.add_member(:xss_match_tuples, Smithy::Schema::Shapes::ShapeRef.new(shape: XssMatchTuples, location_name: 'XssMatchTuples', traits: {"smithy.api#documentation" => "<p>Specifies the parts of web requests that you want to inspect for cross-site scripting attacks.</p>", "smithy.api#required" => {}}))
    XssMatchSet.type = Types::XssMatchSet
    XssMatchSetSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: XssMatchSetSummary)
    XssMatchSetSummary.add_member(:xss_match_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'XssMatchSetId', traits: {"smithy.api#documentation" => "<p>A unique identifier for an <code>XssMatchSet</code>. You use <code>XssMatchSetId</code> to get information about a \n\t\t\t<code>XssMatchSet</code> (see <a>GetXssMatchSet</a>), update an <code>XssMatchSet</code> \n\t\t\t(see <a>UpdateXssMatchSet</a>), insert an <code>XssMatchSet</code> into a <code>Rule</code> or \n\t\t\tdelete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete an <code>XssMatchSet</code> from AWS WAF \n\t\t\t(see <a>DeleteXssMatchSet</a>).</p>\n\t\t       <p>\n            <code>XssMatchSetId</code> is returned by <a>CreateXssMatchSet</a> and by <a>ListXssMatchSets</a>.</p>", "smithy.api#required" => {}}))
    XssMatchSetSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the <code>XssMatchSet</code>, if any, specified by <code>Id</code>.</p>", "smithy.api#required" => {}}))
    XssMatchSetSummary.type = Types::XssMatchSetSummary
    XssMatchSetUpdate.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeAction, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>Specify <code>INSERT</code> to add an\n         <a>XssMatchSetUpdate</a> to an <a>XssMatchSet</a>. Use\n            <code>DELETE</code> to remove an\n         <code>XssMatchSetUpdate</code> from an <code>XssMatchSet</code>.</p>", "smithy.api#required" => {}}))
    XssMatchSetUpdate.add_member(:xss_match_tuple, Smithy::Schema::Shapes::ShapeRef.new(shape: XssMatchTuple, location_name: 'XssMatchTuple', traits: {"smithy.api#documentation" => "<p>Specifies the part of a web request that you want AWS WAF to inspect for cross-site scripting attacks and, if you want AWS WAF to inspect a header, the name of the header.</p>", "smithy.api#required" => {}}))
    XssMatchSetUpdate.type = Types::XssMatchSetUpdate
    XssMatchSetUpdates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: XssMatchSetUpdate)
    XssMatchTuple.add_member(:field_to_match, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldToMatch, location_name: 'FieldToMatch', traits: {"smithy.api#documentation" => "<p>Specifies where in a web request to look for cross-site scripting attacks.</p>", "smithy.api#required" => {}}))
    XssMatchTuple.add_member(:text_transformation, Smithy::Schema::Shapes::ShapeRef.new(shape: TextTransformation, location_name: 'TextTransformation', traits: {"smithy.api#documentation" => "<p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF. \n\t\t\tIf you specify a transformation, AWS WAF performs the transformation on <code>FieldToMatch</code> before inspecting it for a match.</p>\t\n         <p>You can only specify a single type of TextTransformation.</p>\t\t\t\n\t\t       <p>\n            <b>CMD_LINE</b>\n         </p>\n\t\t       <p>When you're concerned that attackers are injecting an operating system command line\n         command and using unusual formatting to disguise some or all of the command, use this\n         option to perform the following transformations:</p>\n\t\t       <ul>\n            <li>\n               <p>Delete the following characters: \\ \" ' ^</p>\n            </li>\n            <li>\n               <p>Delete spaces before the following characters: / (</p>\n            </li>\n            <li>\n               <p>Replace the following characters with a space: , ;</p>\n            </li>\n            <li>\n               <p>Replace multiple spaces with one space</p>\n            </li>\n            <li>\n               <p>Convert uppercase letters (A-Z) to lowercase (a-z)</p>\n            </li>\n         </ul>\t\t\n\t\t       <p>\n            <b>COMPRESS_WHITE_SPACE</b>\n         </p>\n\t\t       <p>Use this option to replace the following characters with a space character (decimal 32):</p>\n\t\t       <ul>\n            <li>\n               <p>\\f, formfeed, decimal 12</p>\n            </li>\n            <li>\n               <p>\\t, tab, decimal 9</p>\n            </li>\n            <li>\n               <p>\\n, newline, decimal 10</p>\n            </li>\n            <li>\n               <p>\\r, carriage return, decimal 13</p>\n            </li>\n            <li>\n               <p>\\v, vertical tab, decimal 11</p>\n            </li>\n            <li>\n               <p>non-breaking space, decimal 160</p>\n            </li>\n         </ul>\n\t\t       <p>\n            <code>COMPRESS_WHITE_SPACE</code> also replaces multiple spaces with one space.</p>\t\t\n\t\t       <p>\n            <b>HTML_ENTITY_DECODE</b>\n         </p>\n\t\t       <p>Use this option to replace HTML-encoded characters with unencoded characters. <code>HTML_ENTITY_DECODE</code> performs \n\t\t\tthe following operations:</p>\n\t\t       <ul>\n            <li>\n               <p>Replaces <code>(ampersand)quot;</code> with <code>\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Replaces <code>(ampersand)nbsp;</code> with a non-breaking space, decimal 160</p>\n            </li>\n            <li>\n               <p>Replaces <code>(ampersand)lt;</code> with a \"less than\" symbol</p>\n            </li>\n            <li>\n               <p>Replaces <code>(ampersand)gt;</code> with <code>></code>\n               </p>\n            </li>\n            <li>\n               <p>Replaces characters that are represented in hexadecimal format, <code>(ampersand)#xhhhh;</code>, with the corresponding \n\t\t\t\tcharacters</p>\n            </li>\n            <li>\n               <p>Replaces characters that are represented in decimal format, <code>(ampersand)#nnnn;</code>, with the corresponding \n\t\t\t\tcharacters</p>\n            </li>\n         </ul>\t\t\n\t\t       <p>\n            <b>LOWERCASE</b>\n         </p>\n\t\t       <p>Use this option to convert uppercase letters (A-Z) to lowercase (a-z).</p>\t\t\n\t\t       <p>\n            <b>URL_DECODE</b>\n         </p>\n\t\t       <p>Use this option to decode a URL-encoded value.</p>\t\t\n\t\t       <p>\n            <b>NONE</b>\n         </p>\n\t\t       <p>Specify <code>NONE</code> if you don't want to perform any text transformations.</p>", "smithy.api#required" => {}}))
    XssMatchTuple.type = Types::XssMatchTuple
    XssMatchTuples.member = Smithy::Schema::Shapes::ShapeRef.new(shape: XssMatchTuple)

    AWSWAFRegional20161128 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.wafregional#AWSWAF_Regional_20161128"
      service.name = "AWSWAFRegional20161128"
      service.version = "2016-11-28"
      service.traits = {"aws.api#service" => {"sdkId" => "WAF Regional", "arnNamespace" => "waf-regional", "cloudFormationName" => "WAFRegional", "cloudTrailEventSource" => "wafregional.amazonaws.com", "endpointPrefix" => "waf-regional"}, "aws.auth#sigv4" => {"name" => "waf-regional"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS WAF Regional", "smithy.api#xmlNamespace" => {"uri" => "http://waf.amazonaws.com/doc/2015-08-24/"}}
      service.add_operation(:associate_web_acl, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#AssociateWebACL"
        operation.name = "AssociateWebACL"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateWebACLRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateWebACLResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFUnavailableEntityException)
        operation.traits = {}
      end)
      service.add_operation(:create_byte_match_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#CreateByteMatchSet"
        operation.name = "CreateByteMatchSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateByteMatchSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateByteMatchSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:create_geo_match_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#CreateGeoMatchSet"
        operation.name = "CreateGeoMatchSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGeoMatchSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGeoMatchSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:create_ip_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#CreateIPSet"
        operation.name = "CreateIPSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIPSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIPSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:create_rate_based_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#CreateRateBasedRule"
        operation.name = "CreateRateBasedRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRateBasedRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRateBasedRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFBadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:create_regex_match_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#CreateRegexMatchSet"
        operation.name = "CreateRegexMatchSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRegexMatchSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRegexMatchSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:create_regex_pattern_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#CreateRegexPatternSet"
        operation.name = "CreateRegexPatternSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRegexPatternSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRegexPatternSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:create_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#CreateRule"
        operation.name = "CreateRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFBadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:create_rule_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#CreateRuleGroup"
        operation.name = "CreateRuleGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRuleGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRuleGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFBadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:create_size_constraint_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#CreateSizeConstraintSet"
        operation.name = "CreateSizeConstraintSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSizeConstraintSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSizeConstraintSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:create_sql_injection_match_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#CreateSqlInjectionMatchSet"
        operation.name = "CreateSqlInjectionMatchSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSqlInjectionMatchSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSqlInjectionMatchSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:create_web_acl, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#CreateWebACL"
        operation.name = "CreateWebACL"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWebACLRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWebACLResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFBadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:create_web_acl_migration_stack, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#CreateWebACLMigrationStack"
        operation.name = "CreateWebACLMigrationStack"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWebACLMigrationStackRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWebACLMigrationStackResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFEntityMigrationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:create_xss_match_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#CreateXssMatchSet"
        operation.name = "CreateXssMatchSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateXssMatchSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateXssMatchSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:delete_byte_match_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DeleteByteMatchSet"
        operation.name = "DeleteByteMatchSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteByteMatchSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteByteMatchSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:delete_geo_match_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DeleteGeoMatchSet"
        operation.name = "DeleteGeoMatchSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGeoMatchSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGeoMatchSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:delete_ip_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DeleteIPSet"
        operation.name = "DeleteIPSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIPSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIPSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:delete_logging_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DeleteLoggingConfiguration"
        operation.name = "DeleteLoggingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLoggingConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLoggingConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:delete_permission_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DeletePermissionPolicy"
        operation.name = "DeletePermissionPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePermissionPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePermissionPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:delete_rate_based_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DeleteRateBasedRule"
        operation.name = "DeleteRateBasedRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRateBasedRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRateBasedRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:delete_regex_match_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DeleteRegexMatchSet"
        operation.name = "DeleteRegexMatchSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRegexMatchSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRegexMatchSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:delete_regex_pattern_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DeleteRegexPatternSet"
        operation.name = "DeleteRegexPatternSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRegexPatternSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRegexPatternSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:delete_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DeleteRule"
        operation.name = "DeleteRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:delete_rule_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DeleteRuleGroup"
        operation.name = "DeleteRuleGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRuleGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRuleGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:delete_size_constraint_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DeleteSizeConstraintSet"
        operation.name = "DeleteSizeConstraintSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSizeConstraintSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSizeConstraintSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:delete_sql_injection_match_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DeleteSqlInjectionMatchSet"
        operation.name = "DeleteSqlInjectionMatchSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSqlInjectionMatchSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSqlInjectionMatchSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:delete_web_acl, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DeleteWebACL"
        operation.name = "DeleteWebACL"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWebACLRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWebACLResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:delete_xss_match_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DeleteXssMatchSet"
        operation.name = "DeleteXssMatchSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteXssMatchSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteXssMatchSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_web_acl, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#DisassociateWebACL"
        operation.name = "DisassociateWebACL"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateWebACLRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateWebACLResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_byte_match_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetByteMatchSet"
        operation.name = "GetByteMatchSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetByteMatchSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetByteMatchSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_change_token, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetChangeToken"
        operation.name = "GetChangeToken"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChangeTokenRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChangeTokenResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:get_change_token_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetChangeTokenStatus"
        operation.name = "GetChangeTokenStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChangeTokenStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChangeTokenStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_geo_match_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetGeoMatchSet"
        operation.name = "GetGeoMatchSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGeoMatchSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGeoMatchSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_ip_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetIPSet"
        operation.name = "GetIPSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIPSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIPSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_logging_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetLoggingConfiguration"
        operation.name = "GetLoggingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLoggingConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLoggingConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_permission_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetPermissionPolicy"
        operation.name = "GetPermissionPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPermissionPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPermissionPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_rate_based_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetRateBasedRule"
        operation.name = "GetRateBasedRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRateBasedRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRateBasedRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_rate_based_rule_managed_keys, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetRateBasedRuleManagedKeys"
        operation.name = "GetRateBasedRuleManagedKeys"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRateBasedRuleManagedKeysRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRateBasedRuleManagedKeysResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_regex_match_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetRegexMatchSet"
        operation.name = "GetRegexMatchSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRegexMatchSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRegexMatchSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_regex_pattern_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetRegexPatternSet"
        operation.name = "GetRegexPatternSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRegexPatternSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRegexPatternSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetRule"
        operation.name = "GetRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_rule_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetRuleGroup"
        operation.name = "GetRuleGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRuleGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRuleGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_sampled_requests, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetSampledRequests"
        operation.name = "GetSampledRequests"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSampledRequestsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSampledRequestsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_size_constraint_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetSizeConstraintSet"
        operation.name = "GetSizeConstraintSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSizeConstraintSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSizeConstraintSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_sql_injection_match_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetSqlInjectionMatchSet"
        operation.name = "GetSqlInjectionMatchSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSqlInjectionMatchSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSqlInjectionMatchSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_web_acl, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetWebACL"
        operation.name = "GetWebACL"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWebACLRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWebACLResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:get_web_acl_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetWebACLForResource"
        operation.name = "GetWebACLForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWebACLForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWebACLForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFUnavailableEntityException)
        operation.traits = {}
      end)
      service.add_operation(:get_xss_match_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#GetXssMatchSet"
        operation.name = "GetXssMatchSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetXssMatchSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetXssMatchSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:list_activated_rules_in_rule_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListActivatedRulesInRuleGroup"
        operation.name = "ListActivatedRulesInRuleGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListActivatedRulesInRuleGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListActivatedRulesInRuleGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:list_byte_match_sets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListByteMatchSets"
        operation.name = "ListByteMatchSets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListByteMatchSetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListByteMatchSetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_geo_match_sets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListGeoMatchSets"
        operation.name = "ListGeoMatchSets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGeoMatchSetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGeoMatchSetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_ip_sets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListIPSets"
        operation.name = "ListIPSets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIPSetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIPSetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_logging_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListLoggingConfigurations"
        operation.name = "ListLoggingConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLoggingConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLoggingConfigurationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:list_rate_based_rules, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListRateBasedRules"
        operation.name = "ListRateBasedRules"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRateBasedRulesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRateBasedRulesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_regex_match_sets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListRegexMatchSets"
        operation.name = "ListRegexMatchSets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRegexMatchSetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRegexMatchSetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_regex_pattern_sets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListRegexPatternSets"
        operation.name = "ListRegexPatternSets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRegexPatternSetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRegexPatternSetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_resources_for_web_acl, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListResourcesForWebACL"
        operation.name = "ListResourcesForWebACL"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcesForWebACLRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcesForWebACLResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:list_rule_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListRuleGroups"
        operation.name = "ListRuleGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRuleGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRuleGroupsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:list_rules, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListRules"
        operation.name = "ListRules"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRulesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRulesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListRulesSuccess", "params" => {"Limit" => 20}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:list_size_constraint_sets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListSizeConstraintSets"
        operation.name = "ListSizeConstraintSets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSizeConstraintSetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSizeConstraintSetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_sql_injection_match_sets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListSqlInjectionMatchSets"
        operation.name = "ListSqlInjectionMatchSets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSqlInjectionMatchSetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSqlInjectionMatchSetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_subscribed_rule_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListSubscribedRuleGroups"
        operation.name = "ListSubscribedRuleGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSubscribedRuleGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSubscribedRuleGroupsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFBadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:list_web_ac_ls, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListWebACLs"
        operation.name = "ListWebACLs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWebACLsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWebACLsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_xss_match_sets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#ListXssMatchSets"
        operation.name = "ListXssMatchSets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListXssMatchSetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListXssMatchSetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.traits = {}
      end)
      service.add_operation(:put_logging_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#PutLoggingConfiguration"
        operation.name = "PutLoggingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutLoggingConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutLoggingConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFServiceLinkedRoleErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:put_permission_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#PutPermissionPolicy"
        operation.name = "PutPermissionPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutPermissionPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutPermissionPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidPermissionPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFBadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFBadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:update_byte_match_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#UpdateByteMatchSet"
        operation.name = "UpdateByteMatchSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateByteMatchSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateByteMatchSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:update_geo_match_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#UpdateGeoMatchSet"
        operation.name = "UpdateGeoMatchSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGeoMatchSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGeoMatchSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:update_ip_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#UpdateIPSet"
        operation.name = "UpdateIPSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIPSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIPSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:update_rate_based_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#UpdateRateBasedRule"
        operation.name = "UpdateRateBasedRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRateBasedRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRateBasedRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:update_regex_match_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#UpdateRegexMatchSet"
        operation.name = "UpdateRegexMatchSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRegexMatchSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRegexMatchSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:update_regex_pattern_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#UpdateRegexPatternSet"
        operation.name = "UpdateRegexPatternSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRegexPatternSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRegexPatternSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidRegexPatternException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:update_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#UpdateRule"
        operation.name = "UpdateRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:update_rule_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#UpdateRuleGroup"
        operation.name = "UpdateRuleGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRuleGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRuleGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:update_size_constraint_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#UpdateSizeConstraintSet"
        operation.name = "UpdateSizeConstraintSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSizeConstraintSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSizeConstraintSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:update_sql_injection_match_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#UpdateSqlInjectionMatchSet"
        operation.name = "UpdateSqlInjectionMatchSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSqlInjectionMatchSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSqlInjectionMatchSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.traits = {}
      end)
      service.add_operation(:update_web_acl, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#UpdateWebACL"
        operation.name = "UpdateWebACL"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWebACLRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWebACLResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFSubscriptionNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_xss_match_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wafregional#UpdateXssMatchSet"
        operation.name = "UpdateXssMatchSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateXssMatchSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateXssMatchSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WAFStaleDataException)
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
