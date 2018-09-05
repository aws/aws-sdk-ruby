# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::WAF
  # @api private
  module ClientApi

    include Seahorse::Model

    Action = Shapes::StringShape.new(name: 'Action')
    ActivatedRule = Shapes::StructureShape.new(name: 'ActivatedRule')
    ActivatedRules = Shapes::ListShape.new(name: 'ActivatedRules')
    ByteMatchSet = Shapes::StructureShape.new(name: 'ByteMatchSet')
    ByteMatchSetSummaries = Shapes::ListShape.new(name: 'ByteMatchSetSummaries')
    ByteMatchSetSummary = Shapes::StructureShape.new(name: 'ByteMatchSetSummary')
    ByteMatchSetUpdate = Shapes::StructureShape.new(name: 'ByteMatchSetUpdate')
    ByteMatchSetUpdates = Shapes::ListShape.new(name: 'ByteMatchSetUpdates')
    ByteMatchTargetString = Shapes::BlobShape.new(name: 'ByteMatchTargetString')
    ByteMatchTuple = Shapes::StructureShape.new(name: 'ByteMatchTuple')
    ByteMatchTuples = Shapes::ListShape.new(name: 'ByteMatchTuples')
    ChangeAction = Shapes::StringShape.new(name: 'ChangeAction')
    ChangeToken = Shapes::StringShape.new(name: 'ChangeToken')
    ChangeTokenStatus = Shapes::StringShape.new(name: 'ChangeTokenStatus')
    ComparisonOperator = Shapes::StringShape.new(name: 'ComparisonOperator')
    Country = Shapes::StringShape.new(name: 'Country')
    CreateByteMatchSetRequest = Shapes::StructureShape.new(name: 'CreateByteMatchSetRequest')
    CreateByteMatchSetResponse = Shapes::StructureShape.new(name: 'CreateByteMatchSetResponse')
    CreateGeoMatchSetRequest = Shapes::StructureShape.new(name: 'CreateGeoMatchSetRequest')
    CreateGeoMatchSetResponse = Shapes::StructureShape.new(name: 'CreateGeoMatchSetResponse')
    CreateIPSetRequest = Shapes::StructureShape.new(name: 'CreateIPSetRequest')
    CreateIPSetResponse = Shapes::StructureShape.new(name: 'CreateIPSetResponse')
    CreateRateBasedRuleRequest = Shapes::StructureShape.new(name: 'CreateRateBasedRuleRequest')
    CreateRateBasedRuleResponse = Shapes::StructureShape.new(name: 'CreateRateBasedRuleResponse')
    CreateRegexMatchSetRequest = Shapes::StructureShape.new(name: 'CreateRegexMatchSetRequest')
    CreateRegexMatchSetResponse = Shapes::StructureShape.new(name: 'CreateRegexMatchSetResponse')
    CreateRegexPatternSetRequest = Shapes::StructureShape.new(name: 'CreateRegexPatternSetRequest')
    CreateRegexPatternSetResponse = Shapes::StructureShape.new(name: 'CreateRegexPatternSetResponse')
    CreateRuleGroupRequest = Shapes::StructureShape.new(name: 'CreateRuleGroupRequest')
    CreateRuleGroupResponse = Shapes::StructureShape.new(name: 'CreateRuleGroupResponse')
    CreateRuleRequest = Shapes::StructureShape.new(name: 'CreateRuleRequest')
    CreateRuleResponse = Shapes::StructureShape.new(name: 'CreateRuleResponse')
    CreateSizeConstraintSetRequest = Shapes::StructureShape.new(name: 'CreateSizeConstraintSetRequest')
    CreateSizeConstraintSetResponse = Shapes::StructureShape.new(name: 'CreateSizeConstraintSetResponse')
    CreateSqlInjectionMatchSetRequest = Shapes::StructureShape.new(name: 'CreateSqlInjectionMatchSetRequest')
    CreateSqlInjectionMatchSetResponse = Shapes::StructureShape.new(name: 'CreateSqlInjectionMatchSetResponse')
    CreateWebACLRequest = Shapes::StructureShape.new(name: 'CreateWebACLRequest')
    CreateWebACLResponse = Shapes::StructureShape.new(name: 'CreateWebACLResponse')
    CreateXssMatchSetRequest = Shapes::StructureShape.new(name: 'CreateXssMatchSetRequest')
    CreateXssMatchSetResponse = Shapes::StructureShape.new(name: 'CreateXssMatchSetResponse')
    DeleteByteMatchSetRequest = Shapes::StructureShape.new(name: 'DeleteByteMatchSetRequest')
    DeleteByteMatchSetResponse = Shapes::StructureShape.new(name: 'DeleteByteMatchSetResponse')
    DeleteGeoMatchSetRequest = Shapes::StructureShape.new(name: 'DeleteGeoMatchSetRequest')
    DeleteGeoMatchSetResponse = Shapes::StructureShape.new(name: 'DeleteGeoMatchSetResponse')
    DeleteIPSetRequest = Shapes::StructureShape.new(name: 'DeleteIPSetRequest')
    DeleteIPSetResponse = Shapes::StructureShape.new(name: 'DeleteIPSetResponse')
    DeleteLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteLoggingConfigurationRequest')
    DeleteLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteLoggingConfigurationResponse')
    DeletePermissionPolicyRequest = Shapes::StructureShape.new(name: 'DeletePermissionPolicyRequest')
    DeletePermissionPolicyResponse = Shapes::StructureShape.new(name: 'DeletePermissionPolicyResponse')
    DeleteRateBasedRuleRequest = Shapes::StructureShape.new(name: 'DeleteRateBasedRuleRequest')
    DeleteRateBasedRuleResponse = Shapes::StructureShape.new(name: 'DeleteRateBasedRuleResponse')
    DeleteRegexMatchSetRequest = Shapes::StructureShape.new(name: 'DeleteRegexMatchSetRequest')
    DeleteRegexMatchSetResponse = Shapes::StructureShape.new(name: 'DeleteRegexMatchSetResponse')
    DeleteRegexPatternSetRequest = Shapes::StructureShape.new(name: 'DeleteRegexPatternSetRequest')
    DeleteRegexPatternSetResponse = Shapes::StructureShape.new(name: 'DeleteRegexPatternSetResponse')
    DeleteRuleGroupRequest = Shapes::StructureShape.new(name: 'DeleteRuleGroupRequest')
    DeleteRuleGroupResponse = Shapes::StructureShape.new(name: 'DeleteRuleGroupResponse')
    DeleteRuleRequest = Shapes::StructureShape.new(name: 'DeleteRuleRequest')
    DeleteRuleResponse = Shapes::StructureShape.new(name: 'DeleteRuleResponse')
    DeleteSizeConstraintSetRequest = Shapes::StructureShape.new(name: 'DeleteSizeConstraintSetRequest')
    DeleteSizeConstraintSetResponse = Shapes::StructureShape.new(name: 'DeleteSizeConstraintSetResponse')
    DeleteSqlInjectionMatchSetRequest = Shapes::StructureShape.new(name: 'DeleteSqlInjectionMatchSetRequest')
    DeleteSqlInjectionMatchSetResponse = Shapes::StructureShape.new(name: 'DeleteSqlInjectionMatchSetResponse')
    DeleteWebACLRequest = Shapes::StructureShape.new(name: 'DeleteWebACLRequest')
    DeleteWebACLResponse = Shapes::StructureShape.new(name: 'DeleteWebACLResponse')
    DeleteXssMatchSetRequest = Shapes::StructureShape.new(name: 'DeleteXssMatchSetRequest')
    DeleteXssMatchSetResponse = Shapes::StructureShape.new(name: 'DeleteXssMatchSetResponse')
    FieldToMatch = Shapes::StructureShape.new(name: 'FieldToMatch')
    GeoMatchConstraint = Shapes::StructureShape.new(name: 'GeoMatchConstraint')
    GeoMatchConstraintType = Shapes::StringShape.new(name: 'GeoMatchConstraintType')
    GeoMatchConstraintValue = Shapes::StringShape.new(name: 'GeoMatchConstraintValue')
    GeoMatchConstraints = Shapes::ListShape.new(name: 'GeoMatchConstraints')
    GeoMatchSet = Shapes::StructureShape.new(name: 'GeoMatchSet')
    GeoMatchSetSummaries = Shapes::ListShape.new(name: 'GeoMatchSetSummaries')
    GeoMatchSetSummary = Shapes::StructureShape.new(name: 'GeoMatchSetSummary')
    GeoMatchSetUpdate = Shapes::StructureShape.new(name: 'GeoMatchSetUpdate')
    GeoMatchSetUpdates = Shapes::ListShape.new(name: 'GeoMatchSetUpdates')
    GetByteMatchSetRequest = Shapes::StructureShape.new(name: 'GetByteMatchSetRequest')
    GetByteMatchSetResponse = Shapes::StructureShape.new(name: 'GetByteMatchSetResponse')
    GetChangeTokenRequest = Shapes::StructureShape.new(name: 'GetChangeTokenRequest')
    GetChangeTokenResponse = Shapes::StructureShape.new(name: 'GetChangeTokenResponse')
    GetChangeTokenStatusRequest = Shapes::StructureShape.new(name: 'GetChangeTokenStatusRequest')
    GetChangeTokenStatusResponse = Shapes::StructureShape.new(name: 'GetChangeTokenStatusResponse')
    GetGeoMatchSetRequest = Shapes::StructureShape.new(name: 'GetGeoMatchSetRequest')
    GetGeoMatchSetResponse = Shapes::StructureShape.new(name: 'GetGeoMatchSetResponse')
    GetIPSetRequest = Shapes::StructureShape.new(name: 'GetIPSetRequest')
    GetIPSetResponse = Shapes::StructureShape.new(name: 'GetIPSetResponse')
    GetLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'GetLoggingConfigurationRequest')
    GetLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'GetLoggingConfigurationResponse')
    GetPermissionPolicyRequest = Shapes::StructureShape.new(name: 'GetPermissionPolicyRequest')
    GetPermissionPolicyResponse = Shapes::StructureShape.new(name: 'GetPermissionPolicyResponse')
    GetRateBasedRuleManagedKeysRequest = Shapes::StructureShape.new(name: 'GetRateBasedRuleManagedKeysRequest')
    GetRateBasedRuleManagedKeysResponse = Shapes::StructureShape.new(name: 'GetRateBasedRuleManagedKeysResponse')
    GetRateBasedRuleRequest = Shapes::StructureShape.new(name: 'GetRateBasedRuleRequest')
    GetRateBasedRuleResponse = Shapes::StructureShape.new(name: 'GetRateBasedRuleResponse')
    GetRegexMatchSetRequest = Shapes::StructureShape.new(name: 'GetRegexMatchSetRequest')
    GetRegexMatchSetResponse = Shapes::StructureShape.new(name: 'GetRegexMatchSetResponse')
    GetRegexPatternSetRequest = Shapes::StructureShape.new(name: 'GetRegexPatternSetRequest')
    GetRegexPatternSetResponse = Shapes::StructureShape.new(name: 'GetRegexPatternSetResponse')
    GetRuleGroupRequest = Shapes::StructureShape.new(name: 'GetRuleGroupRequest')
    GetRuleGroupResponse = Shapes::StructureShape.new(name: 'GetRuleGroupResponse')
    GetRuleRequest = Shapes::StructureShape.new(name: 'GetRuleRequest')
    GetRuleResponse = Shapes::StructureShape.new(name: 'GetRuleResponse')
    GetSampledRequestsMaxItems = Shapes::IntegerShape.new(name: 'GetSampledRequestsMaxItems')
    GetSampledRequestsRequest = Shapes::StructureShape.new(name: 'GetSampledRequestsRequest')
    GetSampledRequestsResponse = Shapes::StructureShape.new(name: 'GetSampledRequestsResponse')
    GetSizeConstraintSetRequest = Shapes::StructureShape.new(name: 'GetSizeConstraintSetRequest')
    GetSizeConstraintSetResponse = Shapes::StructureShape.new(name: 'GetSizeConstraintSetResponse')
    GetSqlInjectionMatchSetRequest = Shapes::StructureShape.new(name: 'GetSqlInjectionMatchSetRequest')
    GetSqlInjectionMatchSetResponse = Shapes::StructureShape.new(name: 'GetSqlInjectionMatchSetResponse')
    GetWebACLRequest = Shapes::StructureShape.new(name: 'GetWebACLRequest')
    GetWebACLResponse = Shapes::StructureShape.new(name: 'GetWebACLResponse')
    GetXssMatchSetRequest = Shapes::StructureShape.new(name: 'GetXssMatchSetRequest')
    GetXssMatchSetResponse = Shapes::StructureShape.new(name: 'GetXssMatchSetResponse')
    HTTPHeader = Shapes::StructureShape.new(name: 'HTTPHeader')
    HTTPHeaders = Shapes::ListShape.new(name: 'HTTPHeaders')
    HTTPMethod = Shapes::StringShape.new(name: 'HTTPMethod')
    HTTPRequest = Shapes::StructureShape.new(name: 'HTTPRequest')
    HTTPVersion = Shapes::StringShape.new(name: 'HTTPVersion')
    HeaderName = Shapes::StringShape.new(name: 'HeaderName')
    HeaderValue = Shapes::StringShape.new(name: 'HeaderValue')
    IPSet = Shapes::StructureShape.new(name: 'IPSet')
    IPSetDescriptor = Shapes::StructureShape.new(name: 'IPSetDescriptor')
    IPSetDescriptorType = Shapes::StringShape.new(name: 'IPSetDescriptorType')
    IPSetDescriptorValue = Shapes::StringShape.new(name: 'IPSetDescriptorValue')
    IPSetDescriptors = Shapes::ListShape.new(name: 'IPSetDescriptors')
    IPSetSummaries = Shapes::ListShape.new(name: 'IPSetSummaries')
    IPSetSummary = Shapes::StructureShape.new(name: 'IPSetSummary')
    IPSetUpdate = Shapes::StructureShape.new(name: 'IPSetUpdate')
    IPSetUpdates = Shapes::ListShape.new(name: 'IPSetUpdates')
    IPString = Shapes::StringShape.new(name: 'IPString')
    ListActivatedRulesInRuleGroupRequest = Shapes::StructureShape.new(name: 'ListActivatedRulesInRuleGroupRequest')
    ListActivatedRulesInRuleGroupResponse = Shapes::StructureShape.new(name: 'ListActivatedRulesInRuleGroupResponse')
    ListByteMatchSetsRequest = Shapes::StructureShape.new(name: 'ListByteMatchSetsRequest')
    ListByteMatchSetsResponse = Shapes::StructureShape.new(name: 'ListByteMatchSetsResponse')
    ListGeoMatchSetsRequest = Shapes::StructureShape.new(name: 'ListGeoMatchSetsRequest')
    ListGeoMatchSetsResponse = Shapes::StructureShape.new(name: 'ListGeoMatchSetsResponse')
    ListIPSetsRequest = Shapes::StructureShape.new(name: 'ListIPSetsRequest')
    ListIPSetsResponse = Shapes::StructureShape.new(name: 'ListIPSetsResponse')
    ListLoggingConfigurationsRequest = Shapes::StructureShape.new(name: 'ListLoggingConfigurationsRequest')
    ListLoggingConfigurationsResponse = Shapes::StructureShape.new(name: 'ListLoggingConfigurationsResponse')
    ListRateBasedRulesRequest = Shapes::StructureShape.new(name: 'ListRateBasedRulesRequest')
    ListRateBasedRulesResponse = Shapes::StructureShape.new(name: 'ListRateBasedRulesResponse')
    ListRegexMatchSetsRequest = Shapes::StructureShape.new(name: 'ListRegexMatchSetsRequest')
    ListRegexMatchSetsResponse = Shapes::StructureShape.new(name: 'ListRegexMatchSetsResponse')
    ListRegexPatternSetsRequest = Shapes::StructureShape.new(name: 'ListRegexPatternSetsRequest')
    ListRegexPatternSetsResponse = Shapes::StructureShape.new(name: 'ListRegexPatternSetsResponse')
    ListRuleGroupsRequest = Shapes::StructureShape.new(name: 'ListRuleGroupsRequest')
    ListRuleGroupsResponse = Shapes::StructureShape.new(name: 'ListRuleGroupsResponse')
    ListRulesRequest = Shapes::StructureShape.new(name: 'ListRulesRequest')
    ListRulesResponse = Shapes::StructureShape.new(name: 'ListRulesResponse')
    ListSizeConstraintSetsRequest = Shapes::StructureShape.new(name: 'ListSizeConstraintSetsRequest')
    ListSizeConstraintSetsResponse = Shapes::StructureShape.new(name: 'ListSizeConstraintSetsResponse')
    ListSqlInjectionMatchSetsRequest = Shapes::StructureShape.new(name: 'ListSqlInjectionMatchSetsRequest')
    ListSqlInjectionMatchSetsResponse = Shapes::StructureShape.new(name: 'ListSqlInjectionMatchSetsResponse')
    ListSubscribedRuleGroupsRequest = Shapes::StructureShape.new(name: 'ListSubscribedRuleGroupsRequest')
    ListSubscribedRuleGroupsResponse = Shapes::StructureShape.new(name: 'ListSubscribedRuleGroupsResponse')
    ListWebACLsRequest = Shapes::StructureShape.new(name: 'ListWebACLsRequest')
    ListWebACLsResponse = Shapes::StructureShape.new(name: 'ListWebACLsResponse')
    ListXssMatchSetsRequest = Shapes::StructureShape.new(name: 'ListXssMatchSetsRequest')
    ListXssMatchSetsResponse = Shapes::StructureShape.new(name: 'ListXssMatchSetsResponse')
    LogDestinationConfigs = Shapes::ListShape.new(name: 'LogDestinationConfigs')
    LoggingConfiguration = Shapes::StructureShape.new(name: 'LoggingConfiguration')
    LoggingConfigurations = Shapes::ListShape.new(name: 'LoggingConfigurations')
    ManagedKey = Shapes::StringShape.new(name: 'ManagedKey')
    ManagedKeys = Shapes::ListShape.new(name: 'ManagedKeys')
    MatchFieldData = Shapes::StringShape.new(name: 'MatchFieldData')
    MatchFieldType = Shapes::StringShape.new(name: 'MatchFieldType')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    Negated = Shapes::BooleanShape.new(name: 'Negated')
    NextMarker = Shapes::StringShape.new(name: 'NextMarker')
    PaginationLimit = Shapes::IntegerShape.new(name: 'PaginationLimit')
    ParameterExceptionField = Shapes::StringShape.new(name: 'ParameterExceptionField')
    ParameterExceptionParameter = Shapes::StringShape.new(name: 'ParameterExceptionParameter')
    ParameterExceptionReason = Shapes::StringShape.new(name: 'ParameterExceptionReason')
    PolicyString = Shapes::StringShape.new(name: 'PolicyString')
    PopulationSize = Shapes::IntegerShape.new(name: 'PopulationSize')
    PositionalConstraint = Shapes::StringShape.new(name: 'PositionalConstraint')
    Predicate = Shapes::StructureShape.new(name: 'Predicate')
    PredicateType = Shapes::StringShape.new(name: 'PredicateType')
    Predicates = Shapes::ListShape.new(name: 'Predicates')
    PutLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'PutLoggingConfigurationRequest')
    PutLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'PutLoggingConfigurationResponse')
    PutPermissionPolicyRequest = Shapes::StructureShape.new(name: 'PutPermissionPolicyRequest')
    PutPermissionPolicyResponse = Shapes::StructureShape.new(name: 'PutPermissionPolicyResponse')
    RateBasedRule = Shapes::StructureShape.new(name: 'RateBasedRule')
    RateKey = Shapes::StringShape.new(name: 'RateKey')
    RateLimit = Shapes::IntegerShape.new(name: 'RateLimit')
    RedactedFields = Shapes::ListShape.new(name: 'RedactedFields')
    RegexMatchSet = Shapes::StructureShape.new(name: 'RegexMatchSet')
    RegexMatchSetSummaries = Shapes::ListShape.new(name: 'RegexMatchSetSummaries')
    RegexMatchSetSummary = Shapes::StructureShape.new(name: 'RegexMatchSetSummary')
    RegexMatchSetUpdate = Shapes::StructureShape.new(name: 'RegexMatchSetUpdate')
    RegexMatchSetUpdates = Shapes::ListShape.new(name: 'RegexMatchSetUpdates')
    RegexMatchTuple = Shapes::StructureShape.new(name: 'RegexMatchTuple')
    RegexMatchTuples = Shapes::ListShape.new(name: 'RegexMatchTuples')
    RegexPatternSet = Shapes::StructureShape.new(name: 'RegexPatternSet')
    RegexPatternSetSummaries = Shapes::ListShape.new(name: 'RegexPatternSetSummaries')
    RegexPatternSetSummary = Shapes::StructureShape.new(name: 'RegexPatternSetSummary')
    RegexPatternSetUpdate = Shapes::StructureShape.new(name: 'RegexPatternSetUpdate')
    RegexPatternSetUpdates = Shapes::ListShape.new(name: 'RegexPatternSetUpdates')
    RegexPatternString = Shapes::StringShape.new(name: 'RegexPatternString')
    RegexPatternStrings = Shapes::ListShape.new(name: 'RegexPatternStrings')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    Rule = Shapes::StructureShape.new(name: 'Rule')
    RuleGroup = Shapes::StructureShape.new(name: 'RuleGroup')
    RuleGroupSummaries = Shapes::ListShape.new(name: 'RuleGroupSummaries')
    RuleGroupSummary = Shapes::StructureShape.new(name: 'RuleGroupSummary')
    RuleGroupUpdate = Shapes::StructureShape.new(name: 'RuleGroupUpdate')
    RuleGroupUpdates = Shapes::ListShape.new(name: 'RuleGroupUpdates')
    RulePriority = Shapes::IntegerShape.new(name: 'RulePriority')
    RuleSummaries = Shapes::ListShape.new(name: 'RuleSummaries')
    RuleSummary = Shapes::StructureShape.new(name: 'RuleSummary')
    RuleUpdate = Shapes::StructureShape.new(name: 'RuleUpdate')
    RuleUpdates = Shapes::ListShape.new(name: 'RuleUpdates')
    SampleWeight = Shapes::IntegerShape.new(name: 'SampleWeight')
    SampledHTTPRequest = Shapes::StructureShape.new(name: 'SampledHTTPRequest')
    SampledHTTPRequests = Shapes::ListShape.new(name: 'SampledHTTPRequests')
    Size = Shapes::IntegerShape.new(name: 'Size')
    SizeConstraint = Shapes::StructureShape.new(name: 'SizeConstraint')
    SizeConstraintSet = Shapes::StructureShape.new(name: 'SizeConstraintSet')
    SizeConstraintSetSummaries = Shapes::ListShape.new(name: 'SizeConstraintSetSummaries')
    SizeConstraintSetSummary = Shapes::StructureShape.new(name: 'SizeConstraintSetSummary')
    SizeConstraintSetUpdate = Shapes::StructureShape.new(name: 'SizeConstraintSetUpdate')
    SizeConstraintSetUpdates = Shapes::ListShape.new(name: 'SizeConstraintSetUpdates')
    SizeConstraints = Shapes::ListShape.new(name: 'SizeConstraints')
    SqlInjectionMatchSet = Shapes::StructureShape.new(name: 'SqlInjectionMatchSet')
    SqlInjectionMatchSetSummaries = Shapes::ListShape.new(name: 'SqlInjectionMatchSetSummaries')
    SqlInjectionMatchSetSummary = Shapes::StructureShape.new(name: 'SqlInjectionMatchSetSummary')
    SqlInjectionMatchSetUpdate = Shapes::StructureShape.new(name: 'SqlInjectionMatchSetUpdate')
    SqlInjectionMatchSetUpdates = Shapes::ListShape.new(name: 'SqlInjectionMatchSetUpdates')
    SqlInjectionMatchTuple = Shapes::StructureShape.new(name: 'SqlInjectionMatchTuple')
    SqlInjectionMatchTuples = Shapes::ListShape.new(name: 'SqlInjectionMatchTuples')
    SubscribedRuleGroupSummaries = Shapes::ListShape.new(name: 'SubscribedRuleGroupSummaries')
    SubscribedRuleGroupSummary = Shapes::StructureShape.new(name: 'SubscribedRuleGroupSummary')
    TextTransformation = Shapes::StringShape.new(name: 'TextTransformation')
    TimeWindow = Shapes::StructureShape.new(name: 'TimeWindow')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    URIString = Shapes::StringShape.new(name: 'URIString')
    UpdateByteMatchSetRequest = Shapes::StructureShape.new(name: 'UpdateByteMatchSetRequest')
    UpdateByteMatchSetResponse = Shapes::StructureShape.new(name: 'UpdateByteMatchSetResponse')
    UpdateGeoMatchSetRequest = Shapes::StructureShape.new(name: 'UpdateGeoMatchSetRequest')
    UpdateGeoMatchSetResponse = Shapes::StructureShape.new(name: 'UpdateGeoMatchSetResponse')
    UpdateIPSetRequest = Shapes::StructureShape.new(name: 'UpdateIPSetRequest')
    UpdateIPSetResponse = Shapes::StructureShape.new(name: 'UpdateIPSetResponse')
    UpdateRateBasedRuleRequest = Shapes::StructureShape.new(name: 'UpdateRateBasedRuleRequest')
    UpdateRateBasedRuleResponse = Shapes::StructureShape.new(name: 'UpdateRateBasedRuleResponse')
    UpdateRegexMatchSetRequest = Shapes::StructureShape.new(name: 'UpdateRegexMatchSetRequest')
    UpdateRegexMatchSetResponse = Shapes::StructureShape.new(name: 'UpdateRegexMatchSetResponse')
    UpdateRegexPatternSetRequest = Shapes::StructureShape.new(name: 'UpdateRegexPatternSetRequest')
    UpdateRegexPatternSetResponse = Shapes::StructureShape.new(name: 'UpdateRegexPatternSetResponse')
    UpdateRuleGroupRequest = Shapes::StructureShape.new(name: 'UpdateRuleGroupRequest')
    UpdateRuleGroupResponse = Shapes::StructureShape.new(name: 'UpdateRuleGroupResponse')
    UpdateRuleRequest = Shapes::StructureShape.new(name: 'UpdateRuleRequest')
    UpdateRuleResponse = Shapes::StructureShape.new(name: 'UpdateRuleResponse')
    UpdateSizeConstraintSetRequest = Shapes::StructureShape.new(name: 'UpdateSizeConstraintSetRequest')
    UpdateSizeConstraintSetResponse = Shapes::StructureShape.new(name: 'UpdateSizeConstraintSetResponse')
    UpdateSqlInjectionMatchSetRequest = Shapes::StructureShape.new(name: 'UpdateSqlInjectionMatchSetRequest')
    UpdateSqlInjectionMatchSetResponse = Shapes::StructureShape.new(name: 'UpdateSqlInjectionMatchSetResponse')
    UpdateWebACLRequest = Shapes::StructureShape.new(name: 'UpdateWebACLRequest')
    UpdateWebACLResponse = Shapes::StructureShape.new(name: 'UpdateWebACLResponse')
    UpdateXssMatchSetRequest = Shapes::StructureShape.new(name: 'UpdateXssMatchSetRequest')
    UpdateXssMatchSetResponse = Shapes::StructureShape.new(name: 'UpdateXssMatchSetResponse')
    WAFDisallowedNameException = Shapes::StructureShape.new(name: 'WAFDisallowedNameException')
    WAFInternalErrorException = Shapes::StructureShape.new(name: 'WAFInternalErrorException')
    WAFInvalidAccountException = Shapes::StructureShape.new(name: 'WAFInvalidAccountException')
    WAFInvalidOperationException = Shapes::StructureShape.new(name: 'WAFInvalidOperationException')
    WAFInvalidParameterException = Shapes::StructureShape.new(name: 'WAFInvalidParameterException')
    WAFInvalidPermissionPolicyException = Shapes::StructureShape.new(name: 'WAFInvalidPermissionPolicyException')
    WAFInvalidRegexPatternException = Shapes::StructureShape.new(name: 'WAFInvalidRegexPatternException')
    WAFLimitsExceededException = Shapes::StructureShape.new(name: 'WAFLimitsExceededException')
    WAFNonEmptyEntityException = Shapes::StructureShape.new(name: 'WAFNonEmptyEntityException')
    WAFNonexistentContainerException = Shapes::StructureShape.new(name: 'WAFNonexistentContainerException')
    WAFNonexistentItemException = Shapes::StructureShape.new(name: 'WAFNonexistentItemException')
    WAFReferencedItemException = Shapes::StructureShape.new(name: 'WAFReferencedItemException')
    WAFStaleDataException = Shapes::StructureShape.new(name: 'WAFStaleDataException')
    WAFSubscriptionNotFoundException = Shapes::StructureShape.new(name: 'WAFSubscriptionNotFoundException')
    WafAction = Shapes::StructureShape.new(name: 'WafAction')
    WafActionType = Shapes::StringShape.new(name: 'WafActionType')
    WafOverrideAction = Shapes::StructureShape.new(name: 'WafOverrideAction')
    WafOverrideActionType = Shapes::StringShape.new(name: 'WafOverrideActionType')
    WafRuleType = Shapes::StringShape.new(name: 'WafRuleType')
    WebACL = Shapes::StructureShape.new(name: 'WebACL')
    WebACLSummaries = Shapes::ListShape.new(name: 'WebACLSummaries')
    WebACLSummary = Shapes::StructureShape.new(name: 'WebACLSummary')
    WebACLUpdate = Shapes::StructureShape.new(name: 'WebACLUpdate')
    WebACLUpdates = Shapes::ListShape.new(name: 'WebACLUpdates')
    XssMatchSet = Shapes::StructureShape.new(name: 'XssMatchSet')
    XssMatchSetSummaries = Shapes::ListShape.new(name: 'XssMatchSetSummaries')
    XssMatchSetSummary = Shapes::StructureShape.new(name: 'XssMatchSetSummary')
    XssMatchSetUpdate = Shapes::StructureShape.new(name: 'XssMatchSetUpdate')
    XssMatchSetUpdates = Shapes::ListShape.new(name: 'XssMatchSetUpdates')
    XssMatchTuple = Shapes::StructureShape.new(name: 'XssMatchTuple')
    XssMatchTuples = Shapes::ListShape.new(name: 'XssMatchTuples')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')

    ActivatedRule.add_member(:priority, Shapes::ShapeRef.new(shape: RulePriority, required: true, location_name: "Priority"))
    ActivatedRule.add_member(:rule_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RuleId"))
    ActivatedRule.add_member(:action, Shapes::ShapeRef.new(shape: WafAction, location_name: "Action"))
    ActivatedRule.add_member(:override_action, Shapes::ShapeRef.new(shape: WafOverrideAction, location_name: "OverrideAction"))
    ActivatedRule.add_member(:type, Shapes::ShapeRef.new(shape: WafRuleType, location_name: "Type"))
    ActivatedRule.struct_class = Types::ActivatedRule

    ActivatedRules.member = Shapes::ShapeRef.new(shape: ActivatedRule)

    ByteMatchSet.add_member(:byte_match_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ByteMatchSetId"))
    ByteMatchSet.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    ByteMatchSet.add_member(:byte_match_tuples, Shapes::ShapeRef.new(shape: ByteMatchTuples, required: true, location_name: "ByteMatchTuples"))
    ByteMatchSet.struct_class = Types::ByteMatchSet

    ByteMatchSetSummaries.member = Shapes::ShapeRef.new(shape: ByteMatchSetSummary)

    ByteMatchSetSummary.add_member(:byte_match_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ByteMatchSetId"))
    ByteMatchSetSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    ByteMatchSetSummary.struct_class = Types::ByteMatchSetSummary

    ByteMatchSetUpdate.add_member(:action, Shapes::ShapeRef.new(shape: ChangeAction, required: true, location_name: "Action"))
    ByteMatchSetUpdate.add_member(:byte_match_tuple, Shapes::ShapeRef.new(shape: ByteMatchTuple, required: true, location_name: "ByteMatchTuple"))
    ByteMatchSetUpdate.struct_class = Types::ByteMatchSetUpdate

    ByteMatchSetUpdates.member = Shapes::ShapeRef.new(shape: ByteMatchSetUpdate)

    ByteMatchTuple.add_member(:field_to_match, Shapes::ShapeRef.new(shape: FieldToMatch, required: true, location_name: "FieldToMatch"))
    ByteMatchTuple.add_member(:target_string, Shapes::ShapeRef.new(shape: ByteMatchTargetString, required: true, location_name: "TargetString"))
    ByteMatchTuple.add_member(:text_transformation, Shapes::ShapeRef.new(shape: TextTransformation, required: true, location_name: "TextTransformation"))
    ByteMatchTuple.add_member(:positional_constraint, Shapes::ShapeRef.new(shape: PositionalConstraint, required: true, location_name: "PositionalConstraint"))
    ByteMatchTuple.struct_class = Types::ByteMatchTuple

    ByteMatchTuples.member = Shapes::ShapeRef.new(shape: ByteMatchTuple)

    CreateByteMatchSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    CreateByteMatchSetRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    CreateByteMatchSetRequest.struct_class = Types::CreateByteMatchSetRequest

    CreateByteMatchSetResponse.add_member(:byte_match_set, Shapes::ShapeRef.new(shape: ByteMatchSet, location_name: "ByteMatchSet"))
    CreateByteMatchSetResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    CreateByteMatchSetResponse.struct_class = Types::CreateByteMatchSetResponse

    CreateGeoMatchSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    CreateGeoMatchSetRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    CreateGeoMatchSetRequest.struct_class = Types::CreateGeoMatchSetRequest

    CreateGeoMatchSetResponse.add_member(:geo_match_set, Shapes::ShapeRef.new(shape: GeoMatchSet, location_name: "GeoMatchSet"))
    CreateGeoMatchSetResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    CreateGeoMatchSetResponse.struct_class = Types::CreateGeoMatchSetResponse

    CreateIPSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    CreateIPSetRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    CreateIPSetRequest.struct_class = Types::CreateIPSetRequest

    CreateIPSetResponse.add_member(:ip_set, Shapes::ShapeRef.new(shape: IPSet, location_name: "IPSet"))
    CreateIPSetResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    CreateIPSetResponse.struct_class = Types::CreateIPSetResponse

    CreateRateBasedRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    CreateRateBasedRuleRequest.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    CreateRateBasedRuleRequest.add_member(:rate_key, Shapes::ShapeRef.new(shape: RateKey, required: true, location_name: "RateKey"))
    CreateRateBasedRuleRequest.add_member(:rate_limit, Shapes::ShapeRef.new(shape: RateLimit, required: true, location_name: "RateLimit"))
    CreateRateBasedRuleRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    CreateRateBasedRuleRequest.struct_class = Types::CreateRateBasedRuleRequest

    CreateRateBasedRuleResponse.add_member(:rule, Shapes::ShapeRef.new(shape: RateBasedRule, location_name: "Rule"))
    CreateRateBasedRuleResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    CreateRateBasedRuleResponse.struct_class = Types::CreateRateBasedRuleResponse

    CreateRegexMatchSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    CreateRegexMatchSetRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    CreateRegexMatchSetRequest.struct_class = Types::CreateRegexMatchSetRequest

    CreateRegexMatchSetResponse.add_member(:regex_match_set, Shapes::ShapeRef.new(shape: RegexMatchSet, location_name: "RegexMatchSet"))
    CreateRegexMatchSetResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    CreateRegexMatchSetResponse.struct_class = Types::CreateRegexMatchSetResponse

    CreateRegexPatternSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    CreateRegexPatternSetRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    CreateRegexPatternSetRequest.struct_class = Types::CreateRegexPatternSetRequest

    CreateRegexPatternSetResponse.add_member(:regex_pattern_set, Shapes::ShapeRef.new(shape: RegexPatternSet, location_name: "RegexPatternSet"))
    CreateRegexPatternSetResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    CreateRegexPatternSetResponse.struct_class = Types::CreateRegexPatternSetResponse

    CreateRuleGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    CreateRuleGroupRequest.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    CreateRuleGroupRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    CreateRuleGroupRequest.struct_class = Types::CreateRuleGroupRequest

    CreateRuleGroupResponse.add_member(:rule_group, Shapes::ShapeRef.new(shape: RuleGroup, location_name: "RuleGroup"))
    CreateRuleGroupResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    CreateRuleGroupResponse.struct_class = Types::CreateRuleGroupResponse

    CreateRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    CreateRuleRequest.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    CreateRuleRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    CreateRuleRequest.struct_class = Types::CreateRuleRequest

    CreateRuleResponse.add_member(:rule, Shapes::ShapeRef.new(shape: Rule, location_name: "Rule"))
    CreateRuleResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    CreateRuleResponse.struct_class = Types::CreateRuleResponse

    CreateSizeConstraintSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    CreateSizeConstraintSetRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    CreateSizeConstraintSetRequest.struct_class = Types::CreateSizeConstraintSetRequest

    CreateSizeConstraintSetResponse.add_member(:size_constraint_set, Shapes::ShapeRef.new(shape: SizeConstraintSet, location_name: "SizeConstraintSet"))
    CreateSizeConstraintSetResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    CreateSizeConstraintSetResponse.struct_class = Types::CreateSizeConstraintSetResponse

    CreateSqlInjectionMatchSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    CreateSqlInjectionMatchSetRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    CreateSqlInjectionMatchSetRequest.struct_class = Types::CreateSqlInjectionMatchSetRequest

    CreateSqlInjectionMatchSetResponse.add_member(:sql_injection_match_set, Shapes::ShapeRef.new(shape: SqlInjectionMatchSet, location_name: "SqlInjectionMatchSet"))
    CreateSqlInjectionMatchSetResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    CreateSqlInjectionMatchSetResponse.struct_class = Types::CreateSqlInjectionMatchSetResponse

    CreateWebACLRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    CreateWebACLRequest.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    CreateWebACLRequest.add_member(:default_action, Shapes::ShapeRef.new(shape: WafAction, required: true, location_name: "DefaultAction"))
    CreateWebACLRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    CreateWebACLRequest.struct_class = Types::CreateWebACLRequest

    CreateWebACLResponse.add_member(:web_acl, Shapes::ShapeRef.new(shape: WebACL, location_name: "WebACL"))
    CreateWebACLResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    CreateWebACLResponse.struct_class = Types::CreateWebACLResponse

    CreateXssMatchSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    CreateXssMatchSetRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    CreateXssMatchSetRequest.struct_class = Types::CreateXssMatchSetRequest

    CreateXssMatchSetResponse.add_member(:xss_match_set, Shapes::ShapeRef.new(shape: XssMatchSet, location_name: "XssMatchSet"))
    CreateXssMatchSetResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    CreateXssMatchSetResponse.struct_class = Types::CreateXssMatchSetResponse

    DeleteByteMatchSetRequest.add_member(:byte_match_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ByteMatchSetId"))
    DeleteByteMatchSetRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    DeleteByteMatchSetRequest.struct_class = Types::DeleteByteMatchSetRequest

    DeleteByteMatchSetResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    DeleteByteMatchSetResponse.struct_class = Types::DeleteByteMatchSetResponse

    DeleteGeoMatchSetRequest.add_member(:geo_match_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "GeoMatchSetId"))
    DeleteGeoMatchSetRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    DeleteGeoMatchSetRequest.struct_class = Types::DeleteGeoMatchSetRequest

    DeleteGeoMatchSetResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    DeleteGeoMatchSetResponse.struct_class = Types::DeleteGeoMatchSetResponse

    DeleteIPSetRequest.add_member(:ip_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "IPSetId"))
    DeleteIPSetRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    DeleteIPSetRequest.struct_class = Types::DeleteIPSetRequest

    DeleteIPSetResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    DeleteIPSetResponse.struct_class = Types::DeleteIPSetResponse

    DeleteLoggingConfigurationRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    DeleteLoggingConfigurationRequest.struct_class = Types::DeleteLoggingConfigurationRequest

    DeleteLoggingConfigurationResponse.struct_class = Types::DeleteLoggingConfigurationResponse

    DeletePermissionPolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    DeletePermissionPolicyRequest.struct_class = Types::DeletePermissionPolicyRequest

    DeletePermissionPolicyResponse.struct_class = Types::DeletePermissionPolicyResponse

    DeleteRateBasedRuleRequest.add_member(:rule_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RuleId"))
    DeleteRateBasedRuleRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    DeleteRateBasedRuleRequest.struct_class = Types::DeleteRateBasedRuleRequest

    DeleteRateBasedRuleResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    DeleteRateBasedRuleResponse.struct_class = Types::DeleteRateBasedRuleResponse

    DeleteRegexMatchSetRequest.add_member(:regex_match_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RegexMatchSetId"))
    DeleteRegexMatchSetRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    DeleteRegexMatchSetRequest.struct_class = Types::DeleteRegexMatchSetRequest

    DeleteRegexMatchSetResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    DeleteRegexMatchSetResponse.struct_class = Types::DeleteRegexMatchSetResponse

    DeleteRegexPatternSetRequest.add_member(:regex_pattern_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RegexPatternSetId"))
    DeleteRegexPatternSetRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    DeleteRegexPatternSetRequest.struct_class = Types::DeleteRegexPatternSetRequest

    DeleteRegexPatternSetResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    DeleteRegexPatternSetResponse.struct_class = Types::DeleteRegexPatternSetResponse

    DeleteRuleGroupRequest.add_member(:rule_group_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RuleGroupId"))
    DeleteRuleGroupRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    DeleteRuleGroupRequest.struct_class = Types::DeleteRuleGroupRequest

    DeleteRuleGroupResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    DeleteRuleGroupResponse.struct_class = Types::DeleteRuleGroupResponse

    DeleteRuleRequest.add_member(:rule_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RuleId"))
    DeleteRuleRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    DeleteRuleRequest.struct_class = Types::DeleteRuleRequest

    DeleteRuleResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    DeleteRuleResponse.struct_class = Types::DeleteRuleResponse

    DeleteSizeConstraintSetRequest.add_member(:size_constraint_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "SizeConstraintSetId"))
    DeleteSizeConstraintSetRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    DeleteSizeConstraintSetRequest.struct_class = Types::DeleteSizeConstraintSetRequest

    DeleteSizeConstraintSetResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    DeleteSizeConstraintSetResponse.struct_class = Types::DeleteSizeConstraintSetResponse

    DeleteSqlInjectionMatchSetRequest.add_member(:sql_injection_match_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "SqlInjectionMatchSetId"))
    DeleteSqlInjectionMatchSetRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    DeleteSqlInjectionMatchSetRequest.struct_class = Types::DeleteSqlInjectionMatchSetRequest

    DeleteSqlInjectionMatchSetResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    DeleteSqlInjectionMatchSetResponse.struct_class = Types::DeleteSqlInjectionMatchSetResponse

    DeleteWebACLRequest.add_member(:web_acl_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "WebACLId"))
    DeleteWebACLRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    DeleteWebACLRequest.struct_class = Types::DeleteWebACLRequest

    DeleteWebACLResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    DeleteWebACLResponse.struct_class = Types::DeleteWebACLResponse

    DeleteXssMatchSetRequest.add_member(:xss_match_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "XssMatchSetId"))
    DeleteXssMatchSetRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    DeleteXssMatchSetRequest.struct_class = Types::DeleteXssMatchSetRequest

    DeleteXssMatchSetResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    DeleteXssMatchSetResponse.struct_class = Types::DeleteXssMatchSetResponse

    FieldToMatch.add_member(:type, Shapes::ShapeRef.new(shape: MatchFieldType, required: true, location_name: "Type"))
    FieldToMatch.add_member(:data, Shapes::ShapeRef.new(shape: MatchFieldData, location_name: "Data"))
    FieldToMatch.struct_class = Types::FieldToMatch

    GeoMatchConstraint.add_member(:type, Shapes::ShapeRef.new(shape: GeoMatchConstraintType, required: true, location_name: "Type"))
    GeoMatchConstraint.add_member(:value, Shapes::ShapeRef.new(shape: GeoMatchConstraintValue, required: true, location_name: "Value"))
    GeoMatchConstraint.struct_class = Types::GeoMatchConstraint

    GeoMatchConstraints.member = Shapes::ShapeRef.new(shape: GeoMatchConstraint)

    GeoMatchSet.add_member(:geo_match_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "GeoMatchSetId"))
    GeoMatchSet.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    GeoMatchSet.add_member(:geo_match_constraints, Shapes::ShapeRef.new(shape: GeoMatchConstraints, required: true, location_name: "GeoMatchConstraints"))
    GeoMatchSet.struct_class = Types::GeoMatchSet

    GeoMatchSetSummaries.member = Shapes::ShapeRef.new(shape: GeoMatchSetSummary)

    GeoMatchSetSummary.add_member(:geo_match_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "GeoMatchSetId"))
    GeoMatchSetSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    GeoMatchSetSummary.struct_class = Types::GeoMatchSetSummary

    GeoMatchSetUpdate.add_member(:action, Shapes::ShapeRef.new(shape: ChangeAction, required: true, location_name: "Action"))
    GeoMatchSetUpdate.add_member(:geo_match_constraint, Shapes::ShapeRef.new(shape: GeoMatchConstraint, required: true, location_name: "GeoMatchConstraint"))
    GeoMatchSetUpdate.struct_class = Types::GeoMatchSetUpdate

    GeoMatchSetUpdates.member = Shapes::ShapeRef.new(shape: GeoMatchSetUpdate)

    GetByteMatchSetRequest.add_member(:byte_match_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ByteMatchSetId"))
    GetByteMatchSetRequest.struct_class = Types::GetByteMatchSetRequest

    GetByteMatchSetResponse.add_member(:byte_match_set, Shapes::ShapeRef.new(shape: ByteMatchSet, location_name: "ByteMatchSet"))
    GetByteMatchSetResponse.struct_class = Types::GetByteMatchSetResponse

    GetChangeTokenRequest.struct_class = Types::GetChangeTokenRequest

    GetChangeTokenResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    GetChangeTokenResponse.struct_class = Types::GetChangeTokenResponse

    GetChangeTokenStatusRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    GetChangeTokenStatusRequest.struct_class = Types::GetChangeTokenStatusRequest

    GetChangeTokenStatusResponse.add_member(:change_token_status, Shapes::ShapeRef.new(shape: ChangeTokenStatus, location_name: "ChangeTokenStatus"))
    GetChangeTokenStatusResponse.struct_class = Types::GetChangeTokenStatusResponse

    GetGeoMatchSetRequest.add_member(:geo_match_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "GeoMatchSetId"))
    GetGeoMatchSetRequest.struct_class = Types::GetGeoMatchSetRequest

    GetGeoMatchSetResponse.add_member(:geo_match_set, Shapes::ShapeRef.new(shape: GeoMatchSet, location_name: "GeoMatchSet"))
    GetGeoMatchSetResponse.struct_class = Types::GetGeoMatchSetResponse

    GetIPSetRequest.add_member(:ip_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "IPSetId"))
    GetIPSetRequest.struct_class = Types::GetIPSetRequest

    GetIPSetResponse.add_member(:ip_set, Shapes::ShapeRef.new(shape: IPSet, location_name: "IPSet"))
    GetIPSetResponse.struct_class = Types::GetIPSetResponse

    GetLoggingConfigurationRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    GetLoggingConfigurationRequest.struct_class = Types::GetLoggingConfigurationRequest

    GetLoggingConfigurationResponse.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "LoggingConfiguration"))
    GetLoggingConfigurationResponse.struct_class = Types::GetLoggingConfigurationResponse

    GetPermissionPolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    GetPermissionPolicyRequest.struct_class = Types::GetPermissionPolicyRequest

    GetPermissionPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: PolicyString, location_name: "Policy"))
    GetPermissionPolicyResponse.struct_class = Types::GetPermissionPolicyResponse

    GetRateBasedRuleManagedKeysRequest.add_member(:rule_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RuleId"))
    GetRateBasedRuleManagedKeysRequest.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    GetRateBasedRuleManagedKeysRequest.struct_class = Types::GetRateBasedRuleManagedKeysRequest

    GetRateBasedRuleManagedKeysResponse.add_member(:managed_keys, Shapes::ShapeRef.new(shape: ManagedKeys, location_name: "ManagedKeys"))
    GetRateBasedRuleManagedKeysResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    GetRateBasedRuleManagedKeysResponse.struct_class = Types::GetRateBasedRuleManagedKeysResponse

    GetRateBasedRuleRequest.add_member(:rule_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RuleId"))
    GetRateBasedRuleRequest.struct_class = Types::GetRateBasedRuleRequest

    GetRateBasedRuleResponse.add_member(:rule, Shapes::ShapeRef.new(shape: RateBasedRule, location_name: "Rule"))
    GetRateBasedRuleResponse.struct_class = Types::GetRateBasedRuleResponse

    GetRegexMatchSetRequest.add_member(:regex_match_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RegexMatchSetId"))
    GetRegexMatchSetRequest.struct_class = Types::GetRegexMatchSetRequest

    GetRegexMatchSetResponse.add_member(:regex_match_set, Shapes::ShapeRef.new(shape: RegexMatchSet, location_name: "RegexMatchSet"))
    GetRegexMatchSetResponse.struct_class = Types::GetRegexMatchSetResponse

    GetRegexPatternSetRequest.add_member(:regex_pattern_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RegexPatternSetId"))
    GetRegexPatternSetRequest.struct_class = Types::GetRegexPatternSetRequest

    GetRegexPatternSetResponse.add_member(:regex_pattern_set, Shapes::ShapeRef.new(shape: RegexPatternSet, location_name: "RegexPatternSet"))
    GetRegexPatternSetResponse.struct_class = Types::GetRegexPatternSetResponse

    GetRuleGroupRequest.add_member(:rule_group_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RuleGroupId"))
    GetRuleGroupRequest.struct_class = Types::GetRuleGroupRequest

    GetRuleGroupResponse.add_member(:rule_group, Shapes::ShapeRef.new(shape: RuleGroup, location_name: "RuleGroup"))
    GetRuleGroupResponse.struct_class = Types::GetRuleGroupResponse

    GetRuleRequest.add_member(:rule_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RuleId"))
    GetRuleRequest.struct_class = Types::GetRuleRequest

    GetRuleResponse.add_member(:rule, Shapes::ShapeRef.new(shape: Rule, location_name: "Rule"))
    GetRuleResponse.struct_class = Types::GetRuleResponse

    GetSampledRequestsRequest.add_member(:web_acl_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "WebAclId"))
    GetSampledRequestsRequest.add_member(:rule_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RuleId"))
    GetSampledRequestsRequest.add_member(:time_window, Shapes::ShapeRef.new(shape: TimeWindow, required: true, location_name: "TimeWindow"))
    GetSampledRequestsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: GetSampledRequestsMaxItems, required: true, location_name: "MaxItems"))
    GetSampledRequestsRequest.struct_class = Types::GetSampledRequestsRequest

    GetSampledRequestsResponse.add_member(:sampled_requests, Shapes::ShapeRef.new(shape: SampledHTTPRequests, location_name: "SampledRequests"))
    GetSampledRequestsResponse.add_member(:population_size, Shapes::ShapeRef.new(shape: PopulationSize, location_name: "PopulationSize"))
    GetSampledRequestsResponse.add_member(:time_window, Shapes::ShapeRef.new(shape: TimeWindow, location_name: "TimeWindow"))
    GetSampledRequestsResponse.struct_class = Types::GetSampledRequestsResponse

    GetSizeConstraintSetRequest.add_member(:size_constraint_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "SizeConstraintSetId"))
    GetSizeConstraintSetRequest.struct_class = Types::GetSizeConstraintSetRequest

    GetSizeConstraintSetResponse.add_member(:size_constraint_set, Shapes::ShapeRef.new(shape: SizeConstraintSet, location_name: "SizeConstraintSet"))
    GetSizeConstraintSetResponse.struct_class = Types::GetSizeConstraintSetResponse

    GetSqlInjectionMatchSetRequest.add_member(:sql_injection_match_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "SqlInjectionMatchSetId"))
    GetSqlInjectionMatchSetRequest.struct_class = Types::GetSqlInjectionMatchSetRequest

    GetSqlInjectionMatchSetResponse.add_member(:sql_injection_match_set, Shapes::ShapeRef.new(shape: SqlInjectionMatchSet, location_name: "SqlInjectionMatchSet"))
    GetSqlInjectionMatchSetResponse.struct_class = Types::GetSqlInjectionMatchSetResponse

    GetWebACLRequest.add_member(:web_acl_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "WebACLId"))
    GetWebACLRequest.struct_class = Types::GetWebACLRequest

    GetWebACLResponse.add_member(:web_acl, Shapes::ShapeRef.new(shape: WebACL, location_name: "WebACL"))
    GetWebACLResponse.struct_class = Types::GetWebACLResponse

    GetXssMatchSetRequest.add_member(:xss_match_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "XssMatchSetId"))
    GetXssMatchSetRequest.struct_class = Types::GetXssMatchSetRequest

    GetXssMatchSetResponse.add_member(:xss_match_set, Shapes::ShapeRef.new(shape: XssMatchSet, location_name: "XssMatchSet"))
    GetXssMatchSetResponse.struct_class = Types::GetXssMatchSetResponse

    HTTPHeader.add_member(:name, Shapes::ShapeRef.new(shape: HeaderName, location_name: "Name"))
    HTTPHeader.add_member(:value, Shapes::ShapeRef.new(shape: HeaderValue, location_name: "Value"))
    HTTPHeader.struct_class = Types::HTTPHeader

    HTTPHeaders.member = Shapes::ShapeRef.new(shape: HTTPHeader)

    HTTPRequest.add_member(:client_ip, Shapes::ShapeRef.new(shape: IPString, location_name: "ClientIP"))
    HTTPRequest.add_member(:country, Shapes::ShapeRef.new(shape: Country, location_name: "Country"))
    HTTPRequest.add_member(:uri, Shapes::ShapeRef.new(shape: URIString, location_name: "URI"))
    HTTPRequest.add_member(:method, Shapes::ShapeRef.new(shape: HTTPMethod, location_name: "Method"))
    HTTPRequest.add_member(:http_version, Shapes::ShapeRef.new(shape: HTTPVersion, location_name: "HTTPVersion"))
    HTTPRequest.add_member(:headers, Shapes::ShapeRef.new(shape: HTTPHeaders, location_name: "Headers"))
    HTTPRequest.struct_class = Types::HTTPRequest

    IPSet.add_member(:ip_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "IPSetId"))
    IPSet.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    IPSet.add_member(:ip_set_descriptors, Shapes::ShapeRef.new(shape: IPSetDescriptors, required: true, location_name: "IPSetDescriptors"))
    IPSet.struct_class = Types::IPSet

    IPSetDescriptor.add_member(:type, Shapes::ShapeRef.new(shape: IPSetDescriptorType, required: true, location_name: "Type"))
    IPSetDescriptor.add_member(:value, Shapes::ShapeRef.new(shape: IPSetDescriptorValue, required: true, location_name: "Value"))
    IPSetDescriptor.struct_class = Types::IPSetDescriptor

    IPSetDescriptors.member = Shapes::ShapeRef.new(shape: IPSetDescriptor)

    IPSetSummaries.member = Shapes::ShapeRef.new(shape: IPSetSummary)

    IPSetSummary.add_member(:ip_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "IPSetId"))
    IPSetSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    IPSetSummary.struct_class = Types::IPSetSummary

    IPSetUpdate.add_member(:action, Shapes::ShapeRef.new(shape: ChangeAction, required: true, location_name: "Action"))
    IPSetUpdate.add_member(:ip_set_descriptor, Shapes::ShapeRef.new(shape: IPSetDescriptor, required: true, location_name: "IPSetDescriptor"))
    IPSetUpdate.struct_class = Types::IPSetUpdate

    IPSetUpdates.member = Shapes::ShapeRef.new(shape: IPSetUpdate)

    ListActivatedRulesInRuleGroupRequest.add_member(:rule_group_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "RuleGroupId"))
    ListActivatedRulesInRuleGroupRequest.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListActivatedRulesInRuleGroupRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit"))
    ListActivatedRulesInRuleGroupRequest.struct_class = Types::ListActivatedRulesInRuleGroupRequest

    ListActivatedRulesInRuleGroupResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListActivatedRulesInRuleGroupResponse.add_member(:activated_rules, Shapes::ShapeRef.new(shape: ActivatedRules, location_name: "ActivatedRules"))
    ListActivatedRulesInRuleGroupResponse.struct_class = Types::ListActivatedRulesInRuleGroupResponse

    ListByteMatchSetsRequest.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListByteMatchSetsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit"))
    ListByteMatchSetsRequest.struct_class = Types::ListByteMatchSetsRequest

    ListByteMatchSetsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListByteMatchSetsResponse.add_member(:byte_match_sets, Shapes::ShapeRef.new(shape: ByteMatchSetSummaries, location_name: "ByteMatchSets"))
    ListByteMatchSetsResponse.struct_class = Types::ListByteMatchSetsResponse

    ListGeoMatchSetsRequest.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListGeoMatchSetsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit"))
    ListGeoMatchSetsRequest.struct_class = Types::ListGeoMatchSetsRequest

    ListGeoMatchSetsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListGeoMatchSetsResponse.add_member(:geo_match_sets, Shapes::ShapeRef.new(shape: GeoMatchSetSummaries, location_name: "GeoMatchSets"))
    ListGeoMatchSetsResponse.struct_class = Types::ListGeoMatchSetsResponse

    ListIPSetsRequest.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListIPSetsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit"))
    ListIPSetsRequest.struct_class = Types::ListIPSetsRequest

    ListIPSetsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListIPSetsResponse.add_member(:ip_sets, Shapes::ShapeRef.new(shape: IPSetSummaries, location_name: "IPSets"))
    ListIPSetsResponse.struct_class = Types::ListIPSetsResponse

    ListLoggingConfigurationsRequest.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListLoggingConfigurationsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit"))
    ListLoggingConfigurationsRequest.struct_class = Types::ListLoggingConfigurationsRequest

    ListLoggingConfigurationsResponse.add_member(:logging_configurations, Shapes::ShapeRef.new(shape: LoggingConfigurations, location_name: "LoggingConfigurations"))
    ListLoggingConfigurationsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListLoggingConfigurationsResponse.struct_class = Types::ListLoggingConfigurationsResponse

    ListRateBasedRulesRequest.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListRateBasedRulesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit"))
    ListRateBasedRulesRequest.struct_class = Types::ListRateBasedRulesRequest

    ListRateBasedRulesResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListRateBasedRulesResponse.add_member(:rules, Shapes::ShapeRef.new(shape: RuleSummaries, location_name: "Rules"))
    ListRateBasedRulesResponse.struct_class = Types::ListRateBasedRulesResponse

    ListRegexMatchSetsRequest.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListRegexMatchSetsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit"))
    ListRegexMatchSetsRequest.struct_class = Types::ListRegexMatchSetsRequest

    ListRegexMatchSetsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListRegexMatchSetsResponse.add_member(:regex_match_sets, Shapes::ShapeRef.new(shape: RegexMatchSetSummaries, location_name: "RegexMatchSets"))
    ListRegexMatchSetsResponse.struct_class = Types::ListRegexMatchSetsResponse

    ListRegexPatternSetsRequest.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListRegexPatternSetsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit"))
    ListRegexPatternSetsRequest.struct_class = Types::ListRegexPatternSetsRequest

    ListRegexPatternSetsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListRegexPatternSetsResponse.add_member(:regex_pattern_sets, Shapes::ShapeRef.new(shape: RegexPatternSetSummaries, location_name: "RegexPatternSets"))
    ListRegexPatternSetsResponse.struct_class = Types::ListRegexPatternSetsResponse

    ListRuleGroupsRequest.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListRuleGroupsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit"))
    ListRuleGroupsRequest.struct_class = Types::ListRuleGroupsRequest

    ListRuleGroupsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListRuleGroupsResponse.add_member(:rule_groups, Shapes::ShapeRef.new(shape: RuleGroupSummaries, location_name: "RuleGroups"))
    ListRuleGroupsResponse.struct_class = Types::ListRuleGroupsResponse

    ListRulesRequest.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListRulesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit"))
    ListRulesRequest.struct_class = Types::ListRulesRequest

    ListRulesResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListRulesResponse.add_member(:rules, Shapes::ShapeRef.new(shape: RuleSummaries, location_name: "Rules"))
    ListRulesResponse.struct_class = Types::ListRulesResponse

    ListSizeConstraintSetsRequest.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListSizeConstraintSetsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit"))
    ListSizeConstraintSetsRequest.struct_class = Types::ListSizeConstraintSetsRequest

    ListSizeConstraintSetsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListSizeConstraintSetsResponse.add_member(:size_constraint_sets, Shapes::ShapeRef.new(shape: SizeConstraintSetSummaries, location_name: "SizeConstraintSets"))
    ListSizeConstraintSetsResponse.struct_class = Types::ListSizeConstraintSetsResponse

    ListSqlInjectionMatchSetsRequest.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListSqlInjectionMatchSetsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit"))
    ListSqlInjectionMatchSetsRequest.struct_class = Types::ListSqlInjectionMatchSetsRequest

    ListSqlInjectionMatchSetsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListSqlInjectionMatchSetsResponse.add_member(:sql_injection_match_sets, Shapes::ShapeRef.new(shape: SqlInjectionMatchSetSummaries, location_name: "SqlInjectionMatchSets"))
    ListSqlInjectionMatchSetsResponse.struct_class = Types::ListSqlInjectionMatchSetsResponse

    ListSubscribedRuleGroupsRequest.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListSubscribedRuleGroupsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit"))
    ListSubscribedRuleGroupsRequest.struct_class = Types::ListSubscribedRuleGroupsRequest

    ListSubscribedRuleGroupsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListSubscribedRuleGroupsResponse.add_member(:rule_groups, Shapes::ShapeRef.new(shape: SubscribedRuleGroupSummaries, location_name: "RuleGroups"))
    ListSubscribedRuleGroupsResponse.struct_class = Types::ListSubscribedRuleGroupsResponse

    ListWebACLsRequest.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListWebACLsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit"))
    ListWebACLsRequest.struct_class = Types::ListWebACLsRequest

    ListWebACLsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListWebACLsResponse.add_member(:web_acls, Shapes::ShapeRef.new(shape: WebACLSummaries, location_name: "WebACLs"))
    ListWebACLsResponse.struct_class = Types::ListWebACLsResponse

    ListXssMatchSetsRequest.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListXssMatchSetsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit"))
    ListXssMatchSetsRequest.struct_class = Types::ListXssMatchSetsRequest

    ListXssMatchSetsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListXssMatchSetsResponse.add_member(:xss_match_sets, Shapes::ShapeRef.new(shape: XssMatchSetSummaries, location_name: "XssMatchSets"))
    ListXssMatchSetsResponse.struct_class = Types::ListXssMatchSetsResponse

    LogDestinationConfigs.member = Shapes::ShapeRef.new(shape: ResourceArn)

    LoggingConfiguration.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    LoggingConfiguration.add_member(:log_destination_configs, Shapes::ShapeRef.new(shape: LogDestinationConfigs, required: true, location_name: "LogDestinationConfigs"))
    LoggingConfiguration.add_member(:redacted_fields, Shapes::ShapeRef.new(shape: RedactedFields, location_name: "RedactedFields"))
    LoggingConfiguration.struct_class = Types::LoggingConfiguration

    LoggingConfigurations.member = Shapes::ShapeRef.new(shape: LoggingConfiguration)

    ManagedKeys.member = Shapes::ShapeRef.new(shape: ManagedKey)

    Predicate.add_member(:negated, Shapes::ShapeRef.new(shape: Negated, required: true, location_name: "Negated"))
    Predicate.add_member(:type, Shapes::ShapeRef.new(shape: PredicateType, required: true, location_name: "Type"))
    Predicate.add_member(:data_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "DataId"))
    Predicate.struct_class = Types::Predicate

    Predicates.member = Shapes::ShapeRef.new(shape: Predicate)

    PutLoggingConfigurationRequest.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, required: true, location_name: "LoggingConfiguration"))
    PutLoggingConfigurationRequest.struct_class = Types::PutLoggingConfigurationRequest

    PutLoggingConfigurationResponse.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "LoggingConfiguration"))
    PutLoggingConfigurationResponse.struct_class = Types::PutLoggingConfigurationResponse

    PutPermissionPolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    PutPermissionPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: PolicyString, required: true, location_name: "Policy"))
    PutPermissionPolicyRequest.struct_class = Types::PutPermissionPolicyRequest

    PutPermissionPolicyResponse.struct_class = Types::PutPermissionPolicyResponse

    RateBasedRule.add_member(:rule_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RuleId"))
    RateBasedRule.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    RateBasedRule.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    RateBasedRule.add_member(:match_predicates, Shapes::ShapeRef.new(shape: Predicates, required: true, location_name: "MatchPredicates"))
    RateBasedRule.add_member(:rate_key, Shapes::ShapeRef.new(shape: RateKey, required: true, location_name: "RateKey"))
    RateBasedRule.add_member(:rate_limit, Shapes::ShapeRef.new(shape: RateLimit, required: true, location_name: "RateLimit"))
    RateBasedRule.struct_class = Types::RateBasedRule

    RedactedFields.member = Shapes::ShapeRef.new(shape: FieldToMatch)

    RegexMatchSet.add_member(:regex_match_set_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "RegexMatchSetId"))
    RegexMatchSet.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    RegexMatchSet.add_member(:regex_match_tuples, Shapes::ShapeRef.new(shape: RegexMatchTuples, location_name: "RegexMatchTuples"))
    RegexMatchSet.struct_class = Types::RegexMatchSet

    RegexMatchSetSummaries.member = Shapes::ShapeRef.new(shape: RegexMatchSetSummary)

    RegexMatchSetSummary.add_member(:regex_match_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RegexMatchSetId"))
    RegexMatchSetSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    RegexMatchSetSummary.struct_class = Types::RegexMatchSetSummary

    RegexMatchSetUpdate.add_member(:action, Shapes::ShapeRef.new(shape: ChangeAction, required: true, location_name: "Action"))
    RegexMatchSetUpdate.add_member(:regex_match_tuple, Shapes::ShapeRef.new(shape: RegexMatchTuple, required: true, location_name: "RegexMatchTuple"))
    RegexMatchSetUpdate.struct_class = Types::RegexMatchSetUpdate

    RegexMatchSetUpdates.member = Shapes::ShapeRef.new(shape: RegexMatchSetUpdate)

    RegexMatchTuple.add_member(:field_to_match, Shapes::ShapeRef.new(shape: FieldToMatch, required: true, location_name: "FieldToMatch"))
    RegexMatchTuple.add_member(:text_transformation, Shapes::ShapeRef.new(shape: TextTransformation, required: true, location_name: "TextTransformation"))
    RegexMatchTuple.add_member(:regex_pattern_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RegexPatternSetId"))
    RegexMatchTuple.struct_class = Types::RegexMatchTuple

    RegexMatchTuples.member = Shapes::ShapeRef.new(shape: RegexMatchTuple)

    RegexPatternSet.add_member(:regex_pattern_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RegexPatternSetId"))
    RegexPatternSet.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    RegexPatternSet.add_member(:regex_pattern_strings, Shapes::ShapeRef.new(shape: RegexPatternStrings, required: true, location_name: "RegexPatternStrings"))
    RegexPatternSet.struct_class = Types::RegexPatternSet

    RegexPatternSetSummaries.member = Shapes::ShapeRef.new(shape: RegexPatternSetSummary)

    RegexPatternSetSummary.add_member(:regex_pattern_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RegexPatternSetId"))
    RegexPatternSetSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    RegexPatternSetSummary.struct_class = Types::RegexPatternSetSummary

    RegexPatternSetUpdate.add_member(:action, Shapes::ShapeRef.new(shape: ChangeAction, required: true, location_name: "Action"))
    RegexPatternSetUpdate.add_member(:regex_pattern_string, Shapes::ShapeRef.new(shape: RegexPatternString, required: true, location_name: "RegexPatternString"))
    RegexPatternSetUpdate.struct_class = Types::RegexPatternSetUpdate

    RegexPatternSetUpdates.member = Shapes::ShapeRef.new(shape: RegexPatternSetUpdate)

    RegexPatternStrings.member = Shapes::ShapeRef.new(shape: RegexPatternString)

    Rule.add_member(:rule_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RuleId"))
    Rule.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    Rule.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    Rule.add_member(:predicates, Shapes::ShapeRef.new(shape: Predicates, required: true, location_name: "Predicates"))
    Rule.struct_class = Types::Rule

    RuleGroup.add_member(:rule_group_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RuleGroupId"))
    RuleGroup.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    RuleGroup.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    RuleGroup.struct_class = Types::RuleGroup

    RuleGroupSummaries.member = Shapes::ShapeRef.new(shape: RuleGroupSummary)

    RuleGroupSummary.add_member(:rule_group_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RuleGroupId"))
    RuleGroupSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    RuleGroupSummary.struct_class = Types::RuleGroupSummary

    RuleGroupUpdate.add_member(:action, Shapes::ShapeRef.new(shape: ChangeAction, required: true, location_name: "Action"))
    RuleGroupUpdate.add_member(:activated_rule, Shapes::ShapeRef.new(shape: ActivatedRule, required: true, location_name: "ActivatedRule"))
    RuleGroupUpdate.struct_class = Types::RuleGroupUpdate

    RuleGroupUpdates.member = Shapes::ShapeRef.new(shape: RuleGroupUpdate)

    RuleSummaries.member = Shapes::ShapeRef.new(shape: RuleSummary)

    RuleSummary.add_member(:rule_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RuleId"))
    RuleSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    RuleSummary.struct_class = Types::RuleSummary

    RuleUpdate.add_member(:action, Shapes::ShapeRef.new(shape: ChangeAction, required: true, location_name: "Action"))
    RuleUpdate.add_member(:predicate, Shapes::ShapeRef.new(shape: Predicate, required: true, location_name: "Predicate"))
    RuleUpdate.struct_class = Types::RuleUpdate

    RuleUpdates.member = Shapes::ShapeRef.new(shape: RuleUpdate)

    SampledHTTPRequest.add_member(:request, Shapes::ShapeRef.new(shape: HTTPRequest, required: true, location_name: "Request"))
    SampledHTTPRequest.add_member(:weight, Shapes::ShapeRef.new(shape: SampleWeight, required: true, location_name: "Weight"))
    SampledHTTPRequest.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    SampledHTTPRequest.add_member(:action, Shapes::ShapeRef.new(shape: Action, location_name: "Action"))
    SampledHTTPRequest.add_member(:rule_within_rule_group, Shapes::ShapeRef.new(shape: ResourceId, location_name: "RuleWithinRuleGroup"))
    SampledHTTPRequest.struct_class = Types::SampledHTTPRequest

    SampledHTTPRequests.member = Shapes::ShapeRef.new(shape: SampledHTTPRequest)

    SizeConstraint.add_member(:field_to_match, Shapes::ShapeRef.new(shape: FieldToMatch, required: true, location_name: "FieldToMatch"))
    SizeConstraint.add_member(:text_transformation, Shapes::ShapeRef.new(shape: TextTransformation, required: true, location_name: "TextTransformation"))
    SizeConstraint.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperator, required: true, location_name: "ComparisonOperator"))
    SizeConstraint.add_member(:size, Shapes::ShapeRef.new(shape: Size, required: true, location_name: "Size"))
    SizeConstraint.struct_class = Types::SizeConstraint

    SizeConstraintSet.add_member(:size_constraint_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "SizeConstraintSetId"))
    SizeConstraintSet.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    SizeConstraintSet.add_member(:size_constraints, Shapes::ShapeRef.new(shape: SizeConstraints, required: true, location_name: "SizeConstraints"))
    SizeConstraintSet.struct_class = Types::SizeConstraintSet

    SizeConstraintSetSummaries.member = Shapes::ShapeRef.new(shape: SizeConstraintSetSummary)

    SizeConstraintSetSummary.add_member(:size_constraint_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "SizeConstraintSetId"))
    SizeConstraintSetSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    SizeConstraintSetSummary.struct_class = Types::SizeConstraintSetSummary

    SizeConstraintSetUpdate.add_member(:action, Shapes::ShapeRef.new(shape: ChangeAction, required: true, location_name: "Action"))
    SizeConstraintSetUpdate.add_member(:size_constraint, Shapes::ShapeRef.new(shape: SizeConstraint, required: true, location_name: "SizeConstraint"))
    SizeConstraintSetUpdate.struct_class = Types::SizeConstraintSetUpdate

    SizeConstraintSetUpdates.member = Shapes::ShapeRef.new(shape: SizeConstraintSetUpdate)

    SizeConstraints.member = Shapes::ShapeRef.new(shape: SizeConstraint)

    SqlInjectionMatchSet.add_member(:sql_injection_match_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "SqlInjectionMatchSetId"))
    SqlInjectionMatchSet.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    SqlInjectionMatchSet.add_member(:sql_injection_match_tuples, Shapes::ShapeRef.new(shape: SqlInjectionMatchTuples, required: true, location_name: "SqlInjectionMatchTuples"))
    SqlInjectionMatchSet.struct_class = Types::SqlInjectionMatchSet

    SqlInjectionMatchSetSummaries.member = Shapes::ShapeRef.new(shape: SqlInjectionMatchSetSummary)

    SqlInjectionMatchSetSummary.add_member(:sql_injection_match_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "SqlInjectionMatchSetId"))
    SqlInjectionMatchSetSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    SqlInjectionMatchSetSummary.struct_class = Types::SqlInjectionMatchSetSummary

    SqlInjectionMatchSetUpdate.add_member(:action, Shapes::ShapeRef.new(shape: ChangeAction, required: true, location_name: "Action"))
    SqlInjectionMatchSetUpdate.add_member(:sql_injection_match_tuple, Shapes::ShapeRef.new(shape: SqlInjectionMatchTuple, required: true, location_name: "SqlInjectionMatchTuple"))
    SqlInjectionMatchSetUpdate.struct_class = Types::SqlInjectionMatchSetUpdate

    SqlInjectionMatchSetUpdates.member = Shapes::ShapeRef.new(shape: SqlInjectionMatchSetUpdate)

    SqlInjectionMatchTuple.add_member(:field_to_match, Shapes::ShapeRef.new(shape: FieldToMatch, required: true, location_name: "FieldToMatch"))
    SqlInjectionMatchTuple.add_member(:text_transformation, Shapes::ShapeRef.new(shape: TextTransformation, required: true, location_name: "TextTransformation"))
    SqlInjectionMatchTuple.struct_class = Types::SqlInjectionMatchTuple

    SqlInjectionMatchTuples.member = Shapes::ShapeRef.new(shape: SqlInjectionMatchTuple)

    SubscribedRuleGroupSummaries.member = Shapes::ShapeRef.new(shape: SubscribedRuleGroupSummary)

    SubscribedRuleGroupSummary.add_member(:rule_group_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RuleGroupId"))
    SubscribedRuleGroupSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    SubscribedRuleGroupSummary.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    SubscribedRuleGroupSummary.struct_class = Types::SubscribedRuleGroupSummary

    TimeWindow.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    TimeWindow.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndTime"))
    TimeWindow.struct_class = Types::TimeWindow

    UpdateByteMatchSetRequest.add_member(:byte_match_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ByteMatchSetId"))
    UpdateByteMatchSetRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    UpdateByteMatchSetRequest.add_member(:updates, Shapes::ShapeRef.new(shape: ByteMatchSetUpdates, required: true, location_name: "Updates"))
    UpdateByteMatchSetRequest.struct_class = Types::UpdateByteMatchSetRequest

    UpdateByteMatchSetResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    UpdateByteMatchSetResponse.struct_class = Types::UpdateByteMatchSetResponse

    UpdateGeoMatchSetRequest.add_member(:geo_match_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "GeoMatchSetId"))
    UpdateGeoMatchSetRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    UpdateGeoMatchSetRequest.add_member(:updates, Shapes::ShapeRef.new(shape: GeoMatchSetUpdates, required: true, location_name: "Updates"))
    UpdateGeoMatchSetRequest.struct_class = Types::UpdateGeoMatchSetRequest

    UpdateGeoMatchSetResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    UpdateGeoMatchSetResponse.struct_class = Types::UpdateGeoMatchSetResponse

    UpdateIPSetRequest.add_member(:ip_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "IPSetId"))
    UpdateIPSetRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    UpdateIPSetRequest.add_member(:updates, Shapes::ShapeRef.new(shape: IPSetUpdates, required: true, location_name: "Updates"))
    UpdateIPSetRequest.struct_class = Types::UpdateIPSetRequest

    UpdateIPSetResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    UpdateIPSetResponse.struct_class = Types::UpdateIPSetResponse

    UpdateRateBasedRuleRequest.add_member(:rule_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RuleId"))
    UpdateRateBasedRuleRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    UpdateRateBasedRuleRequest.add_member(:updates, Shapes::ShapeRef.new(shape: RuleUpdates, required: true, location_name: "Updates"))
    UpdateRateBasedRuleRequest.add_member(:rate_limit, Shapes::ShapeRef.new(shape: RateLimit, required: true, location_name: "RateLimit"))
    UpdateRateBasedRuleRequest.struct_class = Types::UpdateRateBasedRuleRequest

    UpdateRateBasedRuleResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    UpdateRateBasedRuleResponse.struct_class = Types::UpdateRateBasedRuleResponse

    UpdateRegexMatchSetRequest.add_member(:regex_match_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RegexMatchSetId"))
    UpdateRegexMatchSetRequest.add_member(:updates, Shapes::ShapeRef.new(shape: RegexMatchSetUpdates, required: true, location_name: "Updates"))
    UpdateRegexMatchSetRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    UpdateRegexMatchSetRequest.struct_class = Types::UpdateRegexMatchSetRequest

    UpdateRegexMatchSetResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    UpdateRegexMatchSetResponse.struct_class = Types::UpdateRegexMatchSetResponse

    UpdateRegexPatternSetRequest.add_member(:regex_pattern_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RegexPatternSetId"))
    UpdateRegexPatternSetRequest.add_member(:updates, Shapes::ShapeRef.new(shape: RegexPatternSetUpdates, required: true, location_name: "Updates"))
    UpdateRegexPatternSetRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    UpdateRegexPatternSetRequest.struct_class = Types::UpdateRegexPatternSetRequest

    UpdateRegexPatternSetResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    UpdateRegexPatternSetResponse.struct_class = Types::UpdateRegexPatternSetResponse

    UpdateRuleGroupRequest.add_member(:rule_group_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RuleGroupId"))
    UpdateRuleGroupRequest.add_member(:updates, Shapes::ShapeRef.new(shape: RuleGroupUpdates, required: true, location_name: "Updates"))
    UpdateRuleGroupRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    UpdateRuleGroupRequest.struct_class = Types::UpdateRuleGroupRequest

    UpdateRuleGroupResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    UpdateRuleGroupResponse.struct_class = Types::UpdateRuleGroupResponse

    UpdateRuleRequest.add_member(:rule_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RuleId"))
    UpdateRuleRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    UpdateRuleRequest.add_member(:updates, Shapes::ShapeRef.new(shape: RuleUpdates, required: true, location_name: "Updates"))
    UpdateRuleRequest.struct_class = Types::UpdateRuleRequest

    UpdateRuleResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    UpdateRuleResponse.struct_class = Types::UpdateRuleResponse

    UpdateSizeConstraintSetRequest.add_member(:size_constraint_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "SizeConstraintSetId"))
    UpdateSizeConstraintSetRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    UpdateSizeConstraintSetRequest.add_member(:updates, Shapes::ShapeRef.new(shape: SizeConstraintSetUpdates, required: true, location_name: "Updates"))
    UpdateSizeConstraintSetRequest.struct_class = Types::UpdateSizeConstraintSetRequest

    UpdateSizeConstraintSetResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    UpdateSizeConstraintSetResponse.struct_class = Types::UpdateSizeConstraintSetResponse

    UpdateSqlInjectionMatchSetRequest.add_member(:sql_injection_match_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "SqlInjectionMatchSetId"))
    UpdateSqlInjectionMatchSetRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    UpdateSqlInjectionMatchSetRequest.add_member(:updates, Shapes::ShapeRef.new(shape: SqlInjectionMatchSetUpdates, required: true, location_name: "Updates"))
    UpdateSqlInjectionMatchSetRequest.struct_class = Types::UpdateSqlInjectionMatchSetRequest

    UpdateSqlInjectionMatchSetResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    UpdateSqlInjectionMatchSetResponse.struct_class = Types::UpdateSqlInjectionMatchSetResponse

    UpdateWebACLRequest.add_member(:web_acl_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "WebACLId"))
    UpdateWebACLRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    UpdateWebACLRequest.add_member(:updates, Shapes::ShapeRef.new(shape: WebACLUpdates, location_name: "Updates"))
    UpdateWebACLRequest.add_member(:default_action, Shapes::ShapeRef.new(shape: WafAction, location_name: "DefaultAction"))
    UpdateWebACLRequest.struct_class = Types::UpdateWebACLRequest

    UpdateWebACLResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    UpdateWebACLResponse.struct_class = Types::UpdateWebACLResponse

    UpdateXssMatchSetRequest.add_member(:xss_match_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "XssMatchSetId"))
    UpdateXssMatchSetRequest.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, required: true, location_name: "ChangeToken"))
    UpdateXssMatchSetRequest.add_member(:updates, Shapes::ShapeRef.new(shape: XssMatchSetUpdates, required: true, location_name: "Updates"))
    UpdateXssMatchSetRequest.struct_class = Types::UpdateXssMatchSetRequest

    UpdateXssMatchSetResponse.add_member(:change_token, Shapes::ShapeRef.new(shape: ChangeToken, location_name: "ChangeToken"))
    UpdateXssMatchSetResponse.struct_class = Types::UpdateXssMatchSetResponse

    WafAction.add_member(:type, Shapes::ShapeRef.new(shape: WafActionType, required: true, location_name: "Type"))
    WafAction.struct_class = Types::WafAction

    WafOverrideAction.add_member(:type, Shapes::ShapeRef.new(shape: WafOverrideActionType, required: true, location_name: "Type"))
    WafOverrideAction.struct_class = Types::WafOverrideAction

    WebACL.add_member(:web_acl_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "WebACLId"))
    WebACL.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    WebACL.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    WebACL.add_member(:default_action, Shapes::ShapeRef.new(shape: WafAction, required: true, location_name: "DefaultAction"))
    WebACL.add_member(:rules, Shapes::ShapeRef.new(shape: ActivatedRules, required: true, location_name: "Rules"))
    WebACL.struct_class = Types::WebACL

    WebACLSummaries.member = Shapes::ShapeRef.new(shape: WebACLSummary)

    WebACLSummary.add_member(:web_acl_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "WebACLId"))
    WebACLSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    WebACLSummary.struct_class = Types::WebACLSummary

    WebACLUpdate.add_member(:action, Shapes::ShapeRef.new(shape: ChangeAction, required: true, location_name: "Action"))
    WebACLUpdate.add_member(:activated_rule, Shapes::ShapeRef.new(shape: ActivatedRule, required: true, location_name: "ActivatedRule"))
    WebACLUpdate.struct_class = Types::WebACLUpdate

    WebACLUpdates.member = Shapes::ShapeRef.new(shape: WebACLUpdate)

    XssMatchSet.add_member(:xss_match_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "XssMatchSetId"))
    XssMatchSet.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    XssMatchSet.add_member(:xss_match_tuples, Shapes::ShapeRef.new(shape: XssMatchTuples, required: true, location_name: "XssMatchTuples"))
    XssMatchSet.struct_class = Types::XssMatchSet

    XssMatchSetSummaries.member = Shapes::ShapeRef.new(shape: XssMatchSetSummary)

    XssMatchSetSummary.add_member(:xss_match_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "XssMatchSetId"))
    XssMatchSetSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    XssMatchSetSummary.struct_class = Types::XssMatchSetSummary

    XssMatchSetUpdate.add_member(:action, Shapes::ShapeRef.new(shape: ChangeAction, required: true, location_name: "Action"))
    XssMatchSetUpdate.add_member(:xss_match_tuple, Shapes::ShapeRef.new(shape: XssMatchTuple, required: true, location_name: "XssMatchTuple"))
    XssMatchSetUpdate.struct_class = Types::XssMatchSetUpdate

    XssMatchSetUpdates.member = Shapes::ShapeRef.new(shape: XssMatchSetUpdate)

    XssMatchTuple.add_member(:field_to_match, Shapes::ShapeRef.new(shape: FieldToMatch, required: true, location_name: "FieldToMatch"))
    XssMatchTuple.add_member(:text_transformation, Shapes::ShapeRef.new(shape: TextTransformation, required: true, location_name: "TextTransformation"))
    XssMatchTuple.struct_class = Types::XssMatchTuple

    XssMatchTuples.member = Shapes::ShapeRef.new(shape: XssMatchTuple)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-08-24"

      api.metadata = {
        "apiVersion" => "2015-08-24",
        "endpointPrefix" => "waf",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "WAF",
        "serviceFullName" => "AWS WAF",
        "serviceId" => "WAF",
        "signatureVersion" => "v4",
        "targetPrefix" => "AWSWAF_20150824",
        "uid" => "waf-2015-08-24",
      }

      api.add_operation(:create_byte_match_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateByteMatchSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateByteMatchSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateByteMatchSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
      end)

      api.add_operation(:create_geo_match_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGeoMatchSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateGeoMatchSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGeoMatchSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
      end)

      api.add_operation(:create_ip_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIPSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateIPSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateIPSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
      end)

      api.add_operation(:create_rate_based_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRateBasedRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRateBasedRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRateBasedRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
      end)

      api.add_operation(:create_regex_match_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRegexMatchSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRegexMatchSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRegexMatchSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
      end)

      api.add_operation(:create_regex_pattern_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRegexPatternSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRegexPatternSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRegexPatternSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
      end)

      api.add_operation(:create_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
      end)

      api.add_operation(:create_rule_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRuleGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRuleGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRuleGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
      end)

      api.add_operation(:create_size_constraint_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSizeConstraintSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSizeConstraintSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSizeConstraintSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
      end)

      api.add_operation(:create_sql_injection_match_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSqlInjectionMatchSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSqlInjectionMatchSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSqlInjectionMatchSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
      end)

      api.add_operation(:create_web_acl, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWebACL"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateWebACLRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWebACLResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
      end)

      api.add_operation(:create_xss_match_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateXssMatchSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateXssMatchSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateXssMatchSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
      end)

      api.add_operation(:delete_byte_match_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteByteMatchSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteByteMatchSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteByteMatchSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
      end)

      api.add_operation(:delete_geo_match_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGeoMatchSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteGeoMatchSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteGeoMatchSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
      end)

      api.add_operation(:delete_ip_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIPSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteIPSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteIPSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
      end)

      api.add_operation(:delete_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLoggingConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
      end)

      api.add_operation(:delete_permission_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePermissionPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePermissionPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePermissionPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
      end)

      api.add_operation(:delete_rate_based_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRateBasedRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRateBasedRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRateBasedRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
      end)

      api.add_operation(:delete_regex_match_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRegexMatchSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRegexMatchSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRegexMatchSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
      end)

      api.add_operation(:delete_regex_pattern_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRegexPatternSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRegexPatternSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRegexPatternSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
      end)

      api.add_operation(:delete_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
      end)

      api.add_operation(:delete_rule_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRuleGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRuleGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRuleGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:delete_size_constraint_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSizeConstraintSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSizeConstraintSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSizeConstraintSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
      end)

      api.add_operation(:delete_sql_injection_match_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSqlInjectionMatchSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSqlInjectionMatchSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSqlInjectionMatchSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
      end)

      api.add_operation(:delete_web_acl, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWebACL"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteWebACLRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWebACLResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
      end)

      api.add_operation(:delete_xss_match_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteXssMatchSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteXssMatchSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteXssMatchSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonEmptyEntityException)
      end)

      api.add_operation(:get_byte_match_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetByteMatchSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetByteMatchSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetByteMatchSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
      end)

      api.add_operation(:get_change_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetChangeToken"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetChangeTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: GetChangeTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
      end)

      api.add_operation(:get_change_token_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetChangeTokenStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetChangeTokenStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetChangeTokenStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
      end)

      api.add_operation(:get_geo_match_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGeoMatchSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetGeoMatchSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGeoMatchSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
      end)

      api.add_operation(:get_ip_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIPSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetIPSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIPSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
      end)

      api.add_operation(:get_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLoggingConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
      end)

      api.add_operation(:get_permission_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPermissionPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPermissionPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPermissionPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
      end)

      api.add_operation(:get_rate_based_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRateBasedRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRateBasedRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRateBasedRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
      end)

      api.add_operation(:get_rate_based_rule_managed_keys, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRateBasedRuleManagedKeys"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRateBasedRuleManagedKeysRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRateBasedRuleManagedKeysResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
      end)

      api.add_operation(:get_regex_match_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRegexMatchSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRegexMatchSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRegexMatchSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
      end)

      api.add_operation(:get_regex_pattern_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRegexPatternSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRegexPatternSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRegexPatternSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
      end)

      api.add_operation(:get_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
      end)

      api.add_operation(:get_rule_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRuleGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRuleGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRuleGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
      end)

      api.add_operation(:get_sampled_requests, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSampledRequests"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSampledRequestsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSampledRequestsResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
      end)

      api.add_operation(:get_size_constraint_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSizeConstraintSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSizeConstraintSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSizeConstraintSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
      end)

      api.add_operation(:get_sql_injection_match_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSqlInjectionMatchSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSqlInjectionMatchSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSqlInjectionMatchSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
      end)

      api.add_operation(:get_web_acl, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWebACL"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetWebACLRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWebACLResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
      end)

      api.add_operation(:get_xss_match_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetXssMatchSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetXssMatchSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetXssMatchSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
      end)

      api.add_operation(:list_activated_rules_in_rule_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListActivatedRulesInRuleGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListActivatedRulesInRuleGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: ListActivatedRulesInRuleGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
      end)

      api.add_operation(:list_byte_match_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListByteMatchSets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListByteMatchSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListByteMatchSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
      end)

      api.add_operation(:list_geo_match_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGeoMatchSets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListGeoMatchSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGeoMatchSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
      end)

      api.add_operation(:list_ip_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIPSets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListIPSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIPSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
      end)

      api.add_operation(:list_logging_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLoggingConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLoggingConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLoggingConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
      end)

      api.add_operation(:list_rate_based_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRateBasedRules"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRateBasedRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRateBasedRulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
      end)

      api.add_operation(:list_regex_match_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRegexMatchSets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRegexMatchSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRegexMatchSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
      end)

      api.add_operation(:list_regex_pattern_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRegexPatternSets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRegexPatternSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRegexPatternSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
      end)

      api.add_operation(:list_rule_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRuleGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRuleGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRuleGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
      end)

      api.add_operation(:list_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRules"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
      end)

      api.add_operation(:list_size_constraint_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSizeConstraintSets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSizeConstraintSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSizeConstraintSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
      end)

      api.add_operation(:list_sql_injection_match_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSqlInjectionMatchSets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSqlInjectionMatchSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSqlInjectionMatchSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
      end)

      api.add_operation(:list_subscribed_rule_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSubscribedRuleGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSubscribedRuleGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSubscribedRuleGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
      end)

      api.add_operation(:list_web_acls, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWebACLs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListWebACLsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWebACLsResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
      end)

      api.add_operation(:list_xss_match_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListXssMatchSets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListXssMatchSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListXssMatchSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
      end)

      api.add_operation(:put_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutLoggingConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
      end)

      api.add_operation(:put_permission_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutPermissionPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutPermissionPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutPermissionPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidPermissionPolicyException)
      end)

      api.add_operation(:update_byte_match_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateByteMatchSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateByteMatchSetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateByteMatchSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
      end)

      api.add_operation(:update_geo_match_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGeoMatchSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateGeoMatchSetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateGeoMatchSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
      end)

      api.add_operation(:update_ip_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIPSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateIPSetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateIPSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
      end)

      api.add_operation(:update_rate_based_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRateBasedRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRateBasedRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRateBasedRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
      end)

      api.add_operation(:update_regex_match_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRegexMatchSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRegexMatchSetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRegexMatchSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFDisallowedNameException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
      end)

      api.add_operation(:update_regex_pattern_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRegexPatternSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRegexPatternSetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRegexPatternSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidRegexPatternException)
      end)

      api.add_operation(:update_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
      end)

      api.add_operation(:update_rule_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRuleGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRuleGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRuleGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
      end)

      api.add_operation(:update_size_constraint_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSizeConstraintSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSizeConstraintSetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSizeConstraintSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
      end)

      api.add_operation(:update_sql_injection_match_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSqlInjectionMatchSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSqlInjectionMatchSetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSqlInjectionMatchSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
      end)

      api.add_operation(:update_web_acl, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWebACL"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateWebACLRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWebACLResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFReferencedItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        o.errors << Shapes::ShapeRef.new(shape: WAFSubscriptionNotFoundException)
      end)

      api.add_operation(:update_xss_match_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateXssMatchSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateXssMatchSetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateXssMatchSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidAccountException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentContainerException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFStaleDataException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
      end)
    end

  end
end
