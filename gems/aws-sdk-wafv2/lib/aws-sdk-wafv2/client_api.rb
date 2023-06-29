# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::WAFV2
  # @api private
  module ClientApi

    include Seahorse::Model

    APIKey = Shapes::StringShape.new(name: 'APIKey')
    APIKeySummaries = Shapes::ListShape.new(name: 'APIKeySummaries')
    APIKeySummary = Shapes::StructureShape.new(name: 'APIKeySummary')
    APIKeyTokenDomains = Shapes::ListShape.new(name: 'APIKeyTokenDomains')
    APIKeyVersion = Shapes::IntegerShape.new(name: 'APIKeyVersion')
    AWSManagedRulesACFPRuleSet = Shapes::StructureShape.new(name: 'AWSManagedRulesACFPRuleSet')
    AWSManagedRulesATPRuleSet = Shapes::StructureShape.new(name: 'AWSManagedRulesATPRuleSet')
    AWSManagedRulesBotControlRuleSet = Shapes::StructureShape.new(name: 'AWSManagedRulesBotControlRuleSet')
    Action = Shapes::StringShape.new(name: 'Action')
    ActionCondition = Shapes::StructureShape.new(name: 'ActionCondition')
    ActionValue = Shapes::StringShape.new(name: 'ActionValue')
    AddressField = Shapes::StructureShape.new(name: 'AddressField')
    AddressFields = Shapes::ListShape.new(name: 'AddressFields')
    All = Shapes::StructureShape.new(name: 'All')
    AllQueryArguments = Shapes::StructureShape.new(name: 'AllQueryArguments')
    AllowAction = Shapes::StructureShape.new(name: 'AllowAction')
    AndStatement = Shapes::StructureShape.new(name: 'AndStatement')
    AssociateWebACLRequest = Shapes::StructureShape.new(name: 'AssociateWebACLRequest')
    AssociateWebACLResponse = Shapes::StructureShape.new(name: 'AssociateWebACLResponse')
    AssociatedResourceType = Shapes::StringShape.new(name: 'AssociatedResourceType')
    AssociationConfig = Shapes::StructureShape.new(name: 'AssociationConfig')
    BlockAction = Shapes::StructureShape.new(name: 'BlockAction')
    Body = Shapes::StructureShape.new(name: 'Body')
    BodyParsingFallbackBehavior = Shapes::StringShape.new(name: 'BodyParsingFallbackBehavior')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ByteMatchStatement = Shapes::StructureShape.new(name: 'ByteMatchStatement')
    CapacityUnit = Shapes::IntegerShape.new(name: 'CapacityUnit')
    CaptchaAction = Shapes::StructureShape.new(name: 'CaptchaAction')
    CaptchaConfig = Shapes::StructureShape.new(name: 'CaptchaConfig')
    CaptchaResponse = Shapes::StructureShape.new(name: 'CaptchaResponse')
    ChallengeAction = Shapes::StructureShape.new(name: 'ChallengeAction')
    ChallengeConfig = Shapes::StructureShape.new(name: 'ChallengeConfig')
    ChallengeResponse = Shapes::StructureShape.new(name: 'ChallengeResponse')
    CheckCapacityRequest = Shapes::StructureShape.new(name: 'CheckCapacityRequest')
    CheckCapacityResponse = Shapes::StructureShape.new(name: 'CheckCapacityResponse')
    ComparisonOperator = Shapes::StringShape.new(name: 'ComparisonOperator')
    Condition = Shapes::StructureShape.new(name: 'Condition')
    Conditions = Shapes::ListShape.new(name: 'Conditions')
    ConsumedCapacity = Shapes::IntegerShape.new(name: 'ConsumedCapacity')
    CookieMatchPattern = Shapes::StructureShape.new(name: 'CookieMatchPattern')
    CookieNames = Shapes::ListShape.new(name: 'CookieNames')
    Cookies = Shapes::StructureShape.new(name: 'Cookies')
    CountAction = Shapes::StructureShape.new(name: 'CountAction')
    Country = Shapes::StringShape.new(name: 'Country')
    CountryCode = Shapes::StringShape.new(name: 'CountryCode')
    CountryCodes = Shapes::ListShape.new(name: 'CountryCodes')
    CreateAPIKeyRequest = Shapes::StructureShape.new(name: 'CreateAPIKeyRequest')
    CreateAPIKeyResponse = Shapes::StructureShape.new(name: 'CreateAPIKeyResponse')
    CreateIPSetRequest = Shapes::StructureShape.new(name: 'CreateIPSetRequest')
    CreateIPSetResponse = Shapes::StructureShape.new(name: 'CreateIPSetResponse')
    CreateRegexPatternSetRequest = Shapes::StructureShape.new(name: 'CreateRegexPatternSetRequest')
    CreateRegexPatternSetResponse = Shapes::StructureShape.new(name: 'CreateRegexPatternSetResponse')
    CreateRuleGroupRequest = Shapes::StructureShape.new(name: 'CreateRuleGroupRequest')
    CreateRuleGroupResponse = Shapes::StructureShape.new(name: 'CreateRuleGroupResponse')
    CreateWebACLRequest = Shapes::StructureShape.new(name: 'CreateWebACLRequest')
    CreateWebACLResponse = Shapes::StructureShape.new(name: 'CreateWebACLResponse')
    CreationPathString = Shapes::StringShape.new(name: 'CreationPathString')
    CustomHTTPHeader = Shapes::StructureShape.new(name: 'CustomHTTPHeader')
    CustomHTTPHeaderName = Shapes::StringShape.new(name: 'CustomHTTPHeaderName')
    CustomHTTPHeaderValue = Shapes::StringShape.new(name: 'CustomHTTPHeaderValue')
    CustomHTTPHeaders = Shapes::ListShape.new(name: 'CustomHTTPHeaders')
    CustomRequestHandling = Shapes::StructureShape.new(name: 'CustomRequestHandling')
    CustomResponse = Shapes::StructureShape.new(name: 'CustomResponse')
    CustomResponseBodies = Shapes::MapShape.new(name: 'CustomResponseBodies')
    CustomResponseBody = Shapes::StructureShape.new(name: 'CustomResponseBody')
    DefaultAction = Shapes::StructureShape.new(name: 'DefaultAction')
    DeleteFirewallManagerRuleGroupsRequest = Shapes::StructureShape.new(name: 'DeleteFirewallManagerRuleGroupsRequest')
    DeleteFirewallManagerRuleGroupsResponse = Shapes::StructureShape.new(name: 'DeleteFirewallManagerRuleGroupsResponse')
    DeleteIPSetRequest = Shapes::StructureShape.new(name: 'DeleteIPSetRequest')
    DeleteIPSetResponse = Shapes::StructureShape.new(name: 'DeleteIPSetResponse')
    DeleteLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteLoggingConfigurationRequest')
    DeleteLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteLoggingConfigurationResponse')
    DeletePermissionPolicyRequest = Shapes::StructureShape.new(name: 'DeletePermissionPolicyRequest')
    DeletePermissionPolicyResponse = Shapes::StructureShape.new(name: 'DeletePermissionPolicyResponse')
    DeleteRegexPatternSetRequest = Shapes::StructureShape.new(name: 'DeleteRegexPatternSetRequest')
    DeleteRegexPatternSetResponse = Shapes::StructureShape.new(name: 'DeleteRegexPatternSetResponse')
    DeleteRuleGroupRequest = Shapes::StructureShape.new(name: 'DeleteRuleGroupRequest')
    DeleteRuleGroupResponse = Shapes::StructureShape.new(name: 'DeleteRuleGroupResponse')
    DeleteWebACLRequest = Shapes::StructureShape.new(name: 'DeleteWebACLRequest')
    DeleteWebACLResponse = Shapes::StructureShape.new(name: 'DeleteWebACLResponse')
    DescribeAllManagedProductsRequest = Shapes::StructureShape.new(name: 'DescribeAllManagedProductsRequest')
    DescribeAllManagedProductsResponse = Shapes::StructureShape.new(name: 'DescribeAllManagedProductsResponse')
    DescribeManagedProductsByVendorRequest = Shapes::StructureShape.new(name: 'DescribeManagedProductsByVendorRequest')
    DescribeManagedProductsByVendorResponse = Shapes::StructureShape.new(name: 'DescribeManagedProductsByVendorResponse')
    DescribeManagedRuleGroupRequest = Shapes::StructureShape.new(name: 'DescribeManagedRuleGroupRequest')
    DescribeManagedRuleGroupResponse = Shapes::StructureShape.new(name: 'DescribeManagedRuleGroupResponse')
    DisassociateWebACLRequest = Shapes::StructureShape.new(name: 'DisassociateWebACLRequest')
    DisassociateWebACLResponse = Shapes::StructureShape.new(name: 'DisassociateWebACLResponse')
    DownloadUrl = Shapes::StringShape.new(name: 'DownloadUrl')
    EmailField = Shapes::StructureShape.new(name: 'EmailField')
    EntityDescription = Shapes::StringShape.new(name: 'EntityDescription')
    EntityId = Shapes::StringShape.new(name: 'EntityId')
    EntityName = Shapes::StringShape.new(name: 'EntityName')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ErrorReason = Shapes::StringShape.new(name: 'ErrorReason')
    ExcludedRule = Shapes::StructureShape.new(name: 'ExcludedRule')
    ExcludedRules = Shapes::ListShape.new(name: 'ExcludedRules')
    FailureCode = Shapes::IntegerShape.new(name: 'FailureCode')
    FailureReason = Shapes::StringShape.new(name: 'FailureReason')
    FailureValue = Shapes::StringShape.new(name: 'FailureValue')
    FallbackBehavior = Shapes::StringShape.new(name: 'FallbackBehavior')
    FieldIdentifier = Shapes::StringShape.new(name: 'FieldIdentifier')
    FieldToMatch = Shapes::StructureShape.new(name: 'FieldToMatch')
    FieldToMatchData = Shapes::StringShape.new(name: 'FieldToMatchData')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterBehavior = Shapes::StringShape.new(name: 'FilterBehavior')
    FilterRequirement = Shapes::StringShape.new(name: 'FilterRequirement')
    Filters = Shapes::ListShape.new(name: 'Filters')
    FirewallManagerRuleGroup = Shapes::StructureShape.new(name: 'FirewallManagerRuleGroup')
    FirewallManagerRuleGroups = Shapes::ListShape.new(name: 'FirewallManagerRuleGroups')
    FirewallManagerStatement = Shapes::StructureShape.new(name: 'FirewallManagerStatement')
    ForwardedIPConfig = Shapes::StructureShape.new(name: 'ForwardedIPConfig')
    ForwardedIPHeaderName = Shapes::StringShape.new(name: 'ForwardedIPHeaderName')
    ForwardedIPPosition = Shapes::StringShape.new(name: 'ForwardedIPPosition')
    GenerateMobileSdkReleaseUrlRequest = Shapes::StructureShape.new(name: 'GenerateMobileSdkReleaseUrlRequest')
    GenerateMobileSdkReleaseUrlResponse = Shapes::StructureShape.new(name: 'GenerateMobileSdkReleaseUrlResponse')
    GeoMatchStatement = Shapes::StructureShape.new(name: 'GeoMatchStatement')
    GetDecryptedAPIKeyRequest = Shapes::StructureShape.new(name: 'GetDecryptedAPIKeyRequest')
    GetDecryptedAPIKeyResponse = Shapes::StructureShape.new(name: 'GetDecryptedAPIKeyResponse')
    GetIPSetRequest = Shapes::StructureShape.new(name: 'GetIPSetRequest')
    GetIPSetResponse = Shapes::StructureShape.new(name: 'GetIPSetResponse')
    GetLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'GetLoggingConfigurationRequest')
    GetLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'GetLoggingConfigurationResponse')
    GetManagedRuleSetRequest = Shapes::StructureShape.new(name: 'GetManagedRuleSetRequest')
    GetManagedRuleSetResponse = Shapes::StructureShape.new(name: 'GetManagedRuleSetResponse')
    GetMobileSdkReleaseRequest = Shapes::StructureShape.new(name: 'GetMobileSdkReleaseRequest')
    GetMobileSdkReleaseResponse = Shapes::StructureShape.new(name: 'GetMobileSdkReleaseResponse')
    GetPermissionPolicyRequest = Shapes::StructureShape.new(name: 'GetPermissionPolicyRequest')
    GetPermissionPolicyResponse = Shapes::StructureShape.new(name: 'GetPermissionPolicyResponse')
    GetRateBasedStatementManagedKeysRequest = Shapes::StructureShape.new(name: 'GetRateBasedStatementManagedKeysRequest')
    GetRateBasedStatementManagedKeysResponse = Shapes::StructureShape.new(name: 'GetRateBasedStatementManagedKeysResponse')
    GetRegexPatternSetRequest = Shapes::StructureShape.new(name: 'GetRegexPatternSetRequest')
    GetRegexPatternSetResponse = Shapes::StructureShape.new(name: 'GetRegexPatternSetResponse')
    GetRuleGroupRequest = Shapes::StructureShape.new(name: 'GetRuleGroupRequest')
    GetRuleGroupResponse = Shapes::StructureShape.new(name: 'GetRuleGroupResponse')
    GetSampledRequestsRequest = Shapes::StructureShape.new(name: 'GetSampledRequestsRequest')
    GetSampledRequestsResponse = Shapes::StructureShape.new(name: 'GetSampledRequestsResponse')
    GetWebACLForResourceRequest = Shapes::StructureShape.new(name: 'GetWebACLForResourceRequest')
    GetWebACLForResourceResponse = Shapes::StructureShape.new(name: 'GetWebACLForResourceResponse')
    GetWebACLRequest = Shapes::StructureShape.new(name: 'GetWebACLRequest')
    GetWebACLResponse = Shapes::StructureShape.new(name: 'GetWebACLResponse')
    HTTPHeader = Shapes::StructureShape.new(name: 'HTTPHeader')
    HTTPHeaders = Shapes::ListShape.new(name: 'HTTPHeaders')
    HTTPMethod = Shapes::StringShape.new(name: 'HTTPMethod')
    HTTPRequest = Shapes::StructureShape.new(name: 'HTTPRequest')
    HTTPVersion = Shapes::StringShape.new(name: 'HTTPVersion')
    HeaderMatchPattern = Shapes::StructureShape.new(name: 'HeaderMatchPattern')
    HeaderName = Shapes::StringShape.new(name: 'HeaderName')
    HeaderNames = Shapes::ListShape.new(name: 'HeaderNames')
    HeaderOrder = Shapes::StructureShape.new(name: 'HeaderOrder')
    HeaderValue = Shapes::StringShape.new(name: 'HeaderValue')
    Headers = Shapes::StructureShape.new(name: 'Headers')
    IPAddress = Shapes::StringShape.new(name: 'IPAddress')
    IPAddressVersion = Shapes::StringShape.new(name: 'IPAddressVersion')
    IPAddresses = Shapes::ListShape.new(name: 'IPAddresses')
    IPSet = Shapes::StructureShape.new(name: 'IPSet')
    IPSetForwardedIPConfig = Shapes::StructureShape.new(name: 'IPSetForwardedIPConfig')
    IPSetReferenceStatement = Shapes::StructureShape.new(name: 'IPSetReferenceStatement')
    IPSetSummaries = Shapes::ListShape.new(name: 'IPSetSummaries')
    IPSetSummary = Shapes::StructureShape.new(name: 'IPSetSummary')
    IPString = Shapes::StringShape.new(name: 'IPString')
    ImmunityTimeProperty = Shapes::StructureShape.new(name: 'ImmunityTimeProperty')
    InspectionLevel = Shapes::StringShape.new(name: 'InspectionLevel')
    JsonBody = Shapes::StructureShape.new(name: 'JsonBody')
    JsonMatchPattern = Shapes::StructureShape.new(name: 'JsonMatchPattern')
    JsonMatchScope = Shapes::StringShape.new(name: 'JsonMatchScope')
    JsonPointerPath = Shapes::StringShape.new(name: 'JsonPointerPath')
    JsonPointerPaths = Shapes::ListShape.new(name: 'JsonPointerPaths')
    Label = Shapes::StructureShape.new(name: 'Label')
    LabelMatchKey = Shapes::StringShape.new(name: 'LabelMatchKey')
    LabelMatchScope = Shapes::StringShape.new(name: 'LabelMatchScope')
    LabelMatchStatement = Shapes::StructureShape.new(name: 'LabelMatchStatement')
    LabelName = Shapes::StringShape.new(name: 'LabelName')
    LabelNameCondition = Shapes::StructureShape.new(name: 'LabelNameCondition')
    LabelNamespace = Shapes::StringShape.new(name: 'LabelNamespace')
    LabelSummaries = Shapes::ListShape.new(name: 'LabelSummaries')
    LabelSummary = Shapes::StructureShape.new(name: 'LabelSummary')
    Labels = Shapes::ListShape.new(name: 'Labels')
    ListAPIKeysRequest = Shapes::StructureShape.new(name: 'ListAPIKeysRequest')
    ListAPIKeysResponse = Shapes::StructureShape.new(name: 'ListAPIKeysResponse')
    ListAvailableManagedRuleGroupVersionsRequest = Shapes::StructureShape.new(name: 'ListAvailableManagedRuleGroupVersionsRequest')
    ListAvailableManagedRuleGroupVersionsResponse = Shapes::StructureShape.new(name: 'ListAvailableManagedRuleGroupVersionsResponse')
    ListAvailableManagedRuleGroupsRequest = Shapes::StructureShape.new(name: 'ListAvailableManagedRuleGroupsRequest')
    ListAvailableManagedRuleGroupsResponse = Shapes::StructureShape.new(name: 'ListAvailableManagedRuleGroupsResponse')
    ListIPSetsRequest = Shapes::StructureShape.new(name: 'ListIPSetsRequest')
    ListIPSetsResponse = Shapes::StructureShape.new(name: 'ListIPSetsResponse')
    ListLoggingConfigurationsRequest = Shapes::StructureShape.new(name: 'ListLoggingConfigurationsRequest')
    ListLoggingConfigurationsResponse = Shapes::StructureShape.new(name: 'ListLoggingConfigurationsResponse')
    ListManagedRuleSetsRequest = Shapes::StructureShape.new(name: 'ListManagedRuleSetsRequest')
    ListManagedRuleSetsResponse = Shapes::StructureShape.new(name: 'ListManagedRuleSetsResponse')
    ListMaxItems = Shapes::IntegerShape.new(name: 'ListMaxItems')
    ListMobileSdkReleasesRequest = Shapes::StructureShape.new(name: 'ListMobileSdkReleasesRequest')
    ListMobileSdkReleasesResponse = Shapes::StructureShape.new(name: 'ListMobileSdkReleasesResponse')
    ListRegexPatternSetsRequest = Shapes::StructureShape.new(name: 'ListRegexPatternSetsRequest')
    ListRegexPatternSetsResponse = Shapes::StructureShape.new(name: 'ListRegexPatternSetsResponse')
    ListResourcesForWebACLRequest = Shapes::StructureShape.new(name: 'ListResourcesForWebACLRequest')
    ListResourcesForWebACLResponse = Shapes::StructureShape.new(name: 'ListResourcesForWebACLResponse')
    ListRuleGroupsRequest = Shapes::StructureShape.new(name: 'ListRuleGroupsRequest')
    ListRuleGroupsResponse = Shapes::StructureShape.new(name: 'ListRuleGroupsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListWebACLsRequest = Shapes::StructureShape.new(name: 'ListWebACLsRequest')
    ListWebACLsResponse = Shapes::StructureShape.new(name: 'ListWebACLsResponse')
    LockToken = Shapes::StringShape.new(name: 'LockToken')
    LogDestinationConfigs = Shapes::ListShape.new(name: 'LogDestinationConfigs')
    LoggingConfiguration = Shapes::StructureShape.new(name: 'LoggingConfiguration')
    LoggingConfigurations = Shapes::ListShape.new(name: 'LoggingConfigurations')
    LoggingFilter = Shapes::StructureShape.new(name: 'LoggingFilter')
    LoginPathString = Shapes::StringShape.new(name: 'LoginPathString')
    ManagedProductDescriptor = Shapes::StructureShape.new(name: 'ManagedProductDescriptor')
    ManagedProductDescriptors = Shapes::ListShape.new(name: 'ManagedProductDescriptors')
    ManagedRuleGroupConfig = Shapes::StructureShape.new(name: 'ManagedRuleGroupConfig')
    ManagedRuleGroupConfigs = Shapes::ListShape.new(name: 'ManagedRuleGroupConfigs')
    ManagedRuleGroupStatement = Shapes::StructureShape.new(name: 'ManagedRuleGroupStatement')
    ManagedRuleGroupSummaries = Shapes::ListShape.new(name: 'ManagedRuleGroupSummaries')
    ManagedRuleGroupSummary = Shapes::StructureShape.new(name: 'ManagedRuleGroupSummary')
    ManagedRuleGroupVersion = Shapes::StructureShape.new(name: 'ManagedRuleGroupVersion')
    ManagedRuleGroupVersions = Shapes::ListShape.new(name: 'ManagedRuleGroupVersions')
    ManagedRuleSet = Shapes::StructureShape.new(name: 'ManagedRuleSet')
    ManagedRuleSetSummaries = Shapes::ListShape.new(name: 'ManagedRuleSetSummaries')
    ManagedRuleSetSummary = Shapes::StructureShape.new(name: 'ManagedRuleSetSummary')
    ManagedRuleSetVersion = Shapes::StructureShape.new(name: 'ManagedRuleSetVersion')
    MapMatchScope = Shapes::StringShape.new(name: 'MapMatchScope')
    Method = Shapes::StructureShape.new(name: 'Method')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    MobileSdkRelease = Shapes::StructureShape.new(name: 'MobileSdkRelease')
    NextMarker = Shapes::StringShape.new(name: 'NextMarker')
    NoneAction = Shapes::StructureShape.new(name: 'NoneAction')
    NotStatement = Shapes::StructureShape.new(name: 'NotStatement')
    OrStatement = Shapes::StructureShape.new(name: 'OrStatement')
    OutputUrl = Shapes::StringShape.new(name: 'OutputUrl')
    OverrideAction = Shapes::StructureShape.new(name: 'OverrideAction')
    OversizeHandling = Shapes::StringShape.new(name: 'OversizeHandling')
    PaginationLimit = Shapes::IntegerShape.new(name: 'PaginationLimit')
    ParameterExceptionField = Shapes::StringShape.new(name: 'ParameterExceptionField')
    ParameterExceptionParameter = Shapes::StringShape.new(name: 'ParameterExceptionParameter')
    PasswordField = Shapes::StructureShape.new(name: 'PasswordField')
    PayloadType = Shapes::StringShape.new(name: 'PayloadType')
    PhoneNumberField = Shapes::StructureShape.new(name: 'PhoneNumberField')
    PhoneNumberFields = Shapes::ListShape.new(name: 'PhoneNumberFields')
    Platform = Shapes::StringShape.new(name: 'Platform')
    PolicyString = Shapes::StringShape.new(name: 'PolicyString')
    PopulationSize = Shapes::IntegerShape.new(name: 'PopulationSize')
    PositionalConstraint = Shapes::StringShape.new(name: 'PositionalConstraint')
    ProductDescription = Shapes::StringShape.new(name: 'ProductDescription')
    ProductId = Shapes::StringShape.new(name: 'ProductId')
    ProductLink = Shapes::StringShape.new(name: 'ProductLink')
    ProductTitle = Shapes::StringShape.new(name: 'ProductTitle')
    PublishedVersions = Shapes::MapShape.new(name: 'PublishedVersions')
    PutLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'PutLoggingConfigurationRequest')
    PutLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'PutLoggingConfigurationResponse')
    PutManagedRuleSetVersionsRequest = Shapes::StructureShape.new(name: 'PutManagedRuleSetVersionsRequest')
    PutManagedRuleSetVersionsResponse = Shapes::StructureShape.new(name: 'PutManagedRuleSetVersionsResponse')
    PutPermissionPolicyRequest = Shapes::StructureShape.new(name: 'PutPermissionPolicyRequest')
    PutPermissionPolicyResponse = Shapes::StructureShape.new(name: 'PutPermissionPolicyResponse')
    QueryString = Shapes::StructureShape.new(name: 'QueryString')
    RateBasedStatement = Shapes::StructureShape.new(name: 'RateBasedStatement')
    RateBasedStatementAggregateKeyType = Shapes::StringShape.new(name: 'RateBasedStatementAggregateKeyType')
    RateBasedStatementCustomKey = Shapes::StructureShape.new(name: 'RateBasedStatementCustomKey')
    RateBasedStatementCustomKeys = Shapes::ListShape.new(name: 'RateBasedStatementCustomKeys')
    RateBasedStatementManagedKeysIPSet = Shapes::StructureShape.new(name: 'RateBasedStatementManagedKeysIPSet')
    RateLimit = Shapes::IntegerShape.new(name: 'RateLimit')
    RateLimitCookie = Shapes::StructureShape.new(name: 'RateLimitCookie')
    RateLimitForwardedIP = Shapes::StructureShape.new(name: 'RateLimitForwardedIP')
    RateLimitHTTPMethod = Shapes::StructureShape.new(name: 'RateLimitHTTPMethod')
    RateLimitHeader = Shapes::StructureShape.new(name: 'RateLimitHeader')
    RateLimitIP = Shapes::StructureShape.new(name: 'RateLimitIP')
    RateLimitLabelNamespace = Shapes::StructureShape.new(name: 'RateLimitLabelNamespace')
    RateLimitQueryArgument = Shapes::StructureShape.new(name: 'RateLimitQueryArgument')
    RateLimitQueryString = Shapes::StructureShape.new(name: 'RateLimitQueryString')
    RedactedFields = Shapes::ListShape.new(name: 'RedactedFields')
    Regex = Shapes::StructureShape.new(name: 'Regex')
    RegexMatchStatement = Shapes::StructureShape.new(name: 'RegexMatchStatement')
    RegexPatternSet = Shapes::StructureShape.new(name: 'RegexPatternSet')
    RegexPatternSetReferenceStatement = Shapes::StructureShape.new(name: 'RegexPatternSetReferenceStatement')
    RegexPatternSetSummaries = Shapes::ListShape.new(name: 'RegexPatternSetSummaries')
    RegexPatternSetSummary = Shapes::StructureShape.new(name: 'RegexPatternSetSummary')
    RegexPatternString = Shapes::StringShape.new(name: 'RegexPatternString')
    RegistrationPagePathString = Shapes::StringShape.new(name: 'RegistrationPagePathString')
    RegularExpressionList = Shapes::ListShape.new(name: 'RegularExpressionList')
    ReleaseNotes = Shapes::StringShape.new(name: 'ReleaseNotes')
    ReleaseSummaries = Shapes::ListShape.new(name: 'ReleaseSummaries')
    ReleaseSummary = Shapes::StructureShape.new(name: 'ReleaseSummary')
    RequestBody = Shapes::MapShape.new(name: 'RequestBody')
    RequestBodyAssociatedResourceTypeConfig = Shapes::StructureShape.new(name: 'RequestBodyAssociatedResourceTypeConfig')
    RequestInspection = Shapes::StructureShape.new(name: 'RequestInspection')
    RequestInspectionACFP = Shapes::StructureShape.new(name: 'RequestInspectionACFP')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceArns = Shapes::ListShape.new(name: 'ResourceArns')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResponseCode = Shapes::IntegerShape.new(name: 'ResponseCode')
    ResponseContent = Shapes::StringShape.new(name: 'ResponseContent')
    ResponseContentType = Shapes::StringShape.new(name: 'ResponseContentType')
    ResponseInspection = Shapes::StructureShape.new(name: 'ResponseInspection')
    ResponseInspectionBodyContains = Shapes::StructureShape.new(name: 'ResponseInspectionBodyContains')
    ResponseInspectionBodyContainsFailureStrings = Shapes::ListShape.new(name: 'ResponseInspectionBodyContainsFailureStrings')
    ResponseInspectionBodyContainsSuccessStrings = Shapes::ListShape.new(name: 'ResponseInspectionBodyContainsSuccessStrings')
    ResponseInspectionHeader = Shapes::StructureShape.new(name: 'ResponseInspectionHeader')
    ResponseInspectionHeaderFailureValues = Shapes::ListShape.new(name: 'ResponseInspectionHeaderFailureValues')
    ResponseInspectionHeaderName = Shapes::StringShape.new(name: 'ResponseInspectionHeaderName')
    ResponseInspectionHeaderSuccessValues = Shapes::ListShape.new(name: 'ResponseInspectionHeaderSuccessValues')
    ResponseInspectionJson = Shapes::StructureShape.new(name: 'ResponseInspectionJson')
    ResponseInspectionJsonFailureValues = Shapes::ListShape.new(name: 'ResponseInspectionJsonFailureValues')
    ResponseInspectionJsonSuccessValues = Shapes::ListShape.new(name: 'ResponseInspectionJsonSuccessValues')
    ResponseInspectionStatusCode = Shapes::StructureShape.new(name: 'ResponseInspectionStatusCode')
    ResponseInspectionStatusCodeFailureCodes = Shapes::ListShape.new(name: 'ResponseInspectionStatusCodeFailureCodes')
    ResponseInspectionStatusCodeSuccessCodes = Shapes::ListShape.new(name: 'ResponseInspectionStatusCodeSuccessCodes')
    ResponseStatusCode = Shapes::IntegerShape.new(name: 'ResponseStatusCode')
    Rule = Shapes::StructureShape.new(name: 'Rule')
    RuleAction = Shapes::StructureShape.new(name: 'RuleAction')
    RuleActionOverride = Shapes::StructureShape.new(name: 'RuleActionOverride')
    RuleActionOverrides = Shapes::ListShape.new(name: 'RuleActionOverrides')
    RuleGroup = Shapes::StructureShape.new(name: 'RuleGroup')
    RuleGroupReferenceStatement = Shapes::StructureShape.new(name: 'RuleGroupReferenceStatement')
    RuleGroupSummaries = Shapes::ListShape.new(name: 'RuleGroupSummaries')
    RuleGroupSummary = Shapes::StructureShape.new(name: 'RuleGroupSummary')
    RulePriority = Shapes::IntegerShape.new(name: 'RulePriority')
    RuleSummaries = Shapes::ListShape.new(name: 'RuleSummaries')
    RuleSummary = Shapes::StructureShape.new(name: 'RuleSummary')
    Rules = Shapes::ListShape.new(name: 'Rules')
    SampleWeight = Shapes::IntegerShape.new(name: 'SampleWeight')
    SampledHTTPRequest = Shapes::StructureShape.new(name: 'SampledHTTPRequest')
    SampledHTTPRequests = Shapes::ListShape.new(name: 'SampledHTTPRequests')
    Scope = Shapes::StringShape.new(name: 'Scope')
    SearchString = Shapes::BlobShape.new(name: 'SearchString')
    SensitivityLevel = Shapes::StringShape.new(name: 'SensitivityLevel')
    SingleCookieName = Shapes::StringShape.new(name: 'SingleCookieName')
    SingleHeader = Shapes::StructureShape.new(name: 'SingleHeader')
    SingleQueryArgument = Shapes::StructureShape.new(name: 'SingleQueryArgument')
    Size = Shapes::IntegerShape.new(name: 'Size')
    SizeConstraintStatement = Shapes::StructureShape.new(name: 'SizeConstraintStatement')
    SizeInspectionLimit = Shapes::StringShape.new(name: 'SizeInspectionLimit')
    SolveTimestamp = Shapes::IntegerShape.new(name: 'SolveTimestamp')
    SqliMatchStatement = Shapes::StructureShape.new(name: 'SqliMatchStatement')
    Statement = Shapes::StructureShape.new(name: 'Statement')
    Statements = Shapes::ListShape.new(name: 'Statements')
    String = Shapes::StringShape.new(name: 'String')
    SuccessCode = Shapes::IntegerShape.new(name: 'SuccessCode')
    SuccessValue = Shapes::StringShape.new(name: 'SuccessValue')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagInfoForResource = Shapes::StructureShape.new(name: 'TagInfoForResource')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TextTransformation = Shapes::StructureShape.new(name: 'TextTransformation')
    TextTransformationPriority = Shapes::IntegerShape.new(name: 'TextTransformationPriority')
    TextTransformationType = Shapes::StringShape.new(name: 'TextTransformationType')
    TextTransformations = Shapes::ListShape.new(name: 'TextTransformations')
    TimeWindow = Shapes::StructureShape.new(name: 'TimeWindow')
    TimeWindowDay = Shapes::IntegerShape.new(name: 'TimeWindowDay')
    TimeWindowSecond = Shapes::IntegerShape.new(name: 'TimeWindowSecond')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TokenDomain = Shapes::StringShape.new(name: 'TokenDomain')
    TokenDomains = Shapes::ListShape.new(name: 'TokenDomains')
    URIString = Shapes::StringShape.new(name: 'URIString')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateIPSetRequest = Shapes::StructureShape.new(name: 'UpdateIPSetRequest')
    UpdateIPSetResponse = Shapes::StructureShape.new(name: 'UpdateIPSetResponse')
    UpdateManagedRuleSetVersionExpiryDateRequest = Shapes::StructureShape.new(name: 'UpdateManagedRuleSetVersionExpiryDateRequest')
    UpdateManagedRuleSetVersionExpiryDateResponse = Shapes::StructureShape.new(name: 'UpdateManagedRuleSetVersionExpiryDateResponse')
    UpdateRegexPatternSetRequest = Shapes::StructureShape.new(name: 'UpdateRegexPatternSetRequest')
    UpdateRegexPatternSetResponse = Shapes::StructureShape.new(name: 'UpdateRegexPatternSetResponse')
    UpdateRuleGroupRequest = Shapes::StructureShape.new(name: 'UpdateRuleGroupRequest')
    UpdateRuleGroupResponse = Shapes::StructureShape.new(name: 'UpdateRuleGroupResponse')
    UpdateWebACLRequest = Shapes::StructureShape.new(name: 'UpdateWebACLRequest')
    UpdateWebACLResponse = Shapes::StructureShape.new(name: 'UpdateWebACLResponse')
    UriPath = Shapes::StructureShape.new(name: 'UriPath')
    UsernameField = Shapes::StructureShape.new(name: 'UsernameField')
    VendorName = Shapes::StringShape.new(name: 'VendorName')
    VersionKeyString = Shapes::StringShape.new(name: 'VersionKeyString')
    VersionToPublish = Shapes::StructureShape.new(name: 'VersionToPublish')
    VersionsToPublish = Shapes::MapShape.new(name: 'VersionsToPublish')
    VisibilityConfig = Shapes::StructureShape.new(name: 'VisibilityConfig')
    WAFAssociatedItemException = Shapes::StructureShape.new(name: 'WAFAssociatedItemException')
    WAFConfigurationWarningException = Shapes::StructureShape.new(name: 'WAFConfigurationWarningException')
    WAFDuplicateItemException = Shapes::StructureShape.new(name: 'WAFDuplicateItemException')
    WAFExpiredManagedRuleGroupVersionException = Shapes::StructureShape.new(name: 'WAFExpiredManagedRuleGroupVersionException')
    WAFInternalErrorException = Shapes::StructureShape.new(name: 'WAFInternalErrorException')
    WAFInvalidOperationException = Shapes::StructureShape.new(name: 'WAFInvalidOperationException')
    WAFInvalidParameterException = Shapes::StructureShape.new(name: 'WAFInvalidParameterException')
    WAFInvalidPermissionPolicyException = Shapes::StructureShape.new(name: 'WAFInvalidPermissionPolicyException')
    WAFInvalidResourceException = Shapes::StructureShape.new(name: 'WAFInvalidResourceException')
    WAFLimitsExceededException = Shapes::StructureShape.new(name: 'WAFLimitsExceededException')
    WAFLogDestinationPermissionIssueException = Shapes::StructureShape.new(name: 'WAFLogDestinationPermissionIssueException')
    WAFNonexistentItemException = Shapes::StructureShape.new(name: 'WAFNonexistentItemException')
    WAFOptimisticLockException = Shapes::StructureShape.new(name: 'WAFOptimisticLockException')
    WAFServiceLinkedRoleErrorException = Shapes::StructureShape.new(name: 'WAFServiceLinkedRoleErrorException')
    WAFSubscriptionNotFoundException = Shapes::StructureShape.new(name: 'WAFSubscriptionNotFoundException')
    WAFTagOperationException = Shapes::StructureShape.new(name: 'WAFTagOperationException')
    WAFTagOperationInternalErrorException = Shapes::StructureShape.new(name: 'WAFTagOperationInternalErrorException')
    WAFUnavailableEntityException = Shapes::StructureShape.new(name: 'WAFUnavailableEntityException')
    WAFUnsupportedAggregateKeyTypeException = Shapes::StructureShape.new(name: 'WAFUnsupportedAggregateKeyTypeException')
    WebACL = Shapes::StructureShape.new(name: 'WebACL')
    WebACLSummaries = Shapes::ListShape.new(name: 'WebACLSummaries')
    WebACLSummary = Shapes::StructureShape.new(name: 'WebACLSummary')
    XssMatchStatement = Shapes::StructureShape.new(name: 'XssMatchStatement')

    APIKeySummaries.member = Shapes::ShapeRef.new(shape: APIKeySummary)

    APIKeySummary.add_member(:token_domains, Shapes::ShapeRef.new(shape: TokenDomains, location_name: "TokenDomains"))
    APIKeySummary.add_member(:api_key, Shapes::ShapeRef.new(shape: APIKey, location_name: "APIKey"))
    APIKeySummary.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimestamp"))
    APIKeySummary.add_member(:version, Shapes::ShapeRef.new(shape: APIKeyVersion, location_name: "Version"))
    APIKeySummary.struct_class = Types::APIKeySummary

    APIKeyTokenDomains.member = Shapes::ShapeRef.new(shape: TokenDomain)

    AWSManagedRulesACFPRuleSet.add_member(:creation_path, Shapes::ShapeRef.new(shape: CreationPathString, required: true, location_name: "CreationPath"))
    AWSManagedRulesACFPRuleSet.add_member(:registration_page_path, Shapes::ShapeRef.new(shape: RegistrationPagePathString, required: true, location_name: "RegistrationPagePath"))
    AWSManagedRulesACFPRuleSet.add_member(:request_inspection, Shapes::ShapeRef.new(shape: RequestInspectionACFP, required: true, location_name: "RequestInspection"))
    AWSManagedRulesACFPRuleSet.add_member(:response_inspection, Shapes::ShapeRef.new(shape: ResponseInspection, location_name: "ResponseInspection"))
    AWSManagedRulesACFPRuleSet.add_member(:enable_regex_in_path, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableRegexInPath"))
    AWSManagedRulesACFPRuleSet.struct_class = Types::AWSManagedRulesACFPRuleSet

    AWSManagedRulesATPRuleSet.add_member(:login_path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LoginPath"))
    AWSManagedRulesATPRuleSet.add_member(:request_inspection, Shapes::ShapeRef.new(shape: RequestInspection, location_name: "RequestInspection"))
    AWSManagedRulesATPRuleSet.add_member(:response_inspection, Shapes::ShapeRef.new(shape: ResponseInspection, location_name: "ResponseInspection"))
    AWSManagedRulesATPRuleSet.add_member(:enable_regex_in_path, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableRegexInPath"))
    AWSManagedRulesATPRuleSet.struct_class = Types::AWSManagedRulesATPRuleSet

    AWSManagedRulesBotControlRuleSet.add_member(:inspection_level, Shapes::ShapeRef.new(shape: InspectionLevel, required: true, location_name: "InspectionLevel"))
    AWSManagedRulesBotControlRuleSet.struct_class = Types::AWSManagedRulesBotControlRuleSet

    ActionCondition.add_member(:action, Shapes::ShapeRef.new(shape: ActionValue, required: true, location_name: "Action"))
    ActionCondition.struct_class = Types::ActionCondition

    AddressField.add_member(:identifier, Shapes::ShapeRef.new(shape: FieldIdentifier, required: true, location_name: "Identifier"))
    AddressField.struct_class = Types::AddressField

    AddressFields.member = Shapes::ShapeRef.new(shape: AddressField)

    All.struct_class = Types::All

    AllQueryArguments.struct_class = Types::AllQueryArguments

    AllowAction.add_member(:custom_request_handling, Shapes::ShapeRef.new(shape: CustomRequestHandling, location_name: "CustomRequestHandling"))
    AllowAction.struct_class = Types::AllowAction

    AndStatement.add_member(:statements, Shapes::ShapeRef.new(shape: Statements, required: true, location_name: "Statements"))
    AndStatement.struct_class = Types::AndStatement

    AssociateWebACLRequest.add_member(:web_acl_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "WebACLArn"))
    AssociateWebACLRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    AssociateWebACLRequest.struct_class = Types::AssociateWebACLRequest

    AssociateWebACLResponse.struct_class = Types::AssociateWebACLResponse

    AssociationConfig.add_member(:request_body, Shapes::ShapeRef.new(shape: RequestBody, location_name: "RequestBody"))
    AssociationConfig.struct_class = Types::AssociationConfig

    BlockAction.add_member(:custom_response, Shapes::ShapeRef.new(shape: CustomResponse, location_name: "CustomResponse"))
    BlockAction.struct_class = Types::BlockAction

    Body.add_member(:oversize_handling, Shapes::ShapeRef.new(shape: OversizeHandling, location_name: "OversizeHandling"))
    Body.struct_class = Types::Body

    ByteMatchStatement.add_member(:search_string, Shapes::ShapeRef.new(shape: SearchString, required: true, location_name: "SearchString"))
    ByteMatchStatement.add_member(:field_to_match, Shapes::ShapeRef.new(shape: FieldToMatch, required: true, location_name: "FieldToMatch"))
    ByteMatchStatement.add_member(:text_transformations, Shapes::ShapeRef.new(shape: TextTransformations, required: true, location_name: "TextTransformations"))
    ByteMatchStatement.add_member(:positional_constraint, Shapes::ShapeRef.new(shape: PositionalConstraint, required: true, location_name: "PositionalConstraint"))
    ByteMatchStatement.struct_class = Types::ByteMatchStatement

    CaptchaAction.add_member(:custom_request_handling, Shapes::ShapeRef.new(shape: CustomRequestHandling, location_name: "CustomRequestHandling"))
    CaptchaAction.struct_class = Types::CaptchaAction

    CaptchaConfig.add_member(:immunity_time_property, Shapes::ShapeRef.new(shape: ImmunityTimeProperty, location_name: "ImmunityTimeProperty"))
    CaptchaConfig.struct_class = Types::CaptchaConfig

    CaptchaResponse.add_member(:response_code, Shapes::ShapeRef.new(shape: ResponseCode, location_name: "ResponseCode"))
    CaptchaResponse.add_member(:solve_timestamp, Shapes::ShapeRef.new(shape: SolveTimestamp, location_name: "SolveTimestamp"))
    CaptchaResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    CaptchaResponse.struct_class = Types::CaptchaResponse

    ChallengeAction.add_member(:custom_request_handling, Shapes::ShapeRef.new(shape: CustomRequestHandling, location_name: "CustomRequestHandling"))
    ChallengeAction.struct_class = Types::ChallengeAction

    ChallengeConfig.add_member(:immunity_time_property, Shapes::ShapeRef.new(shape: ImmunityTimeProperty, location_name: "ImmunityTimeProperty"))
    ChallengeConfig.struct_class = Types::ChallengeConfig

    ChallengeResponse.add_member(:response_code, Shapes::ShapeRef.new(shape: ResponseCode, location_name: "ResponseCode"))
    ChallengeResponse.add_member(:solve_timestamp, Shapes::ShapeRef.new(shape: SolveTimestamp, location_name: "SolveTimestamp"))
    ChallengeResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    ChallengeResponse.struct_class = Types::ChallengeResponse

    CheckCapacityRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    CheckCapacityRequest.add_member(:rules, Shapes::ShapeRef.new(shape: Rules, required: true, location_name: "Rules"))
    CheckCapacityRequest.struct_class = Types::CheckCapacityRequest

    CheckCapacityResponse.add_member(:capacity, Shapes::ShapeRef.new(shape: ConsumedCapacity, location_name: "Capacity"))
    CheckCapacityResponse.struct_class = Types::CheckCapacityResponse

    Condition.add_member(:action_condition, Shapes::ShapeRef.new(shape: ActionCondition, location_name: "ActionCondition"))
    Condition.add_member(:label_name_condition, Shapes::ShapeRef.new(shape: LabelNameCondition, location_name: "LabelNameCondition"))
    Condition.struct_class = Types::Condition

    Conditions.member = Shapes::ShapeRef.new(shape: Condition)

    CookieMatchPattern.add_member(:all, Shapes::ShapeRef.new(shape: All, location_name: "All"))
    CookieMatchPattern.add_member(:included_cookies, Shapes::ShapeRef.new(shape: CookieNames, location_name: "IncludedCookies"))
    CookieMatchPattern.add_member(:excluded_cookies, Shapes::ShapeRef.new(shape: CookieNames, location_name: "ExcludedCookies"))
    CookieMatchPattern.struct_class = Types::CookieMatchPattern

    CookieNames.member = Shapes::ShapeRef.new(shape: SingleCookieName)

    Cookies.add_member(:match_pattern, Shapes::ShapeRef.new(shape: CookieMatchPattern, required: true, location_name: "MatchPattern"))
    Cookies.add_member(:match_scope, Shapes::ShapeRef.new(shape: MapMatchScope, required: true, location_name: "MatchScope"))
    Cookies.add_member(:oversize_handling, Shapes::ShapeRef.new(shape: OversizeHandling, required: true, location_name: "OversizeHandling"))
    Cookies.struct_class = Types::Cookies

    CountAction.add_member(:custom_request_handling, Shapes::ShapeRef.new(shape: CustomRequestHandling, location_name: "CustomRequestHandling"))
    CountAction.struct_class = Types::CountAction

    CountryCodes.member = Shapes::ShapeRef.new(shape: CountryCode)

    CreateAPIKeyRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    CreateAPIKeyRequest.add_member(:token_domains, Shapes::ShapeRef.new(shape: APIKeyTokenDomains, required: true, location_name: "TokenDomains"))
    CreateAPIKeyRequest.struct_class = Types::CreateAPIKeyRequest

    CreateAPIKeyResponse.add_member(:api_key, Shapes::ShapeRef.new(shape: APIKey, location_name: "APIKey"))
    CreateAPIKeyResponse.struct_class = Types::CreateAPIKeyResponse

    CreateIPSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    CreateIPSetRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    CreateIPSetRequest.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "Description"))
    CreateIPSetRequest.add_member(:ip_address_version, Shapes::ShapeRef.new(shape: IPAddressVersion, required: true, location_name: "IPAddressVersion"))
    CreateIPSetRequest.add_member(:addresses, Shapes::ShapeRef.new(shape: IPAddresses, required: true, location_name: "Addresses"))
    CreateIPSetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateIPSetRequest.struct_class = Types::CreateIPSetRequest

    CreateIPSetResponse.add_member(:summary, Shapes::ShapeRef.new(shape: IPSetSummary, location_name: "Summary"))
    CreateIPSetResponse.struct_class = Types::CreateIPSetResponse

    CreateRegexPatternSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    CreateRegexPatternSetRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    CreateRegexPatternSetRequest.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "Description"))
    CreateRegexPatternSetRequest.add_member(:regular_expression_list, Shapes::ShapeRef.new(shape: RegularExpressionList, required: true, location_name: "RegularExpressionList"))
    CreateRegexPatternSetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateRegexPatternSetRequest.struct_class = Types::CreateRegexPatternSetRequest

    CreateRegexPatternSetResponse.add_member(:summary, Shapes::ShapeRef.new(shape: RegexPatternSetSummary, location_name: "Summary"))
    CreateRegexPatternSetResponse.struct_class = Types::CreateRegexPatternSetResponse

    CreateRuleGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    CreateRuleGroupRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    CreateRuleGroupRequest.add_member(:capacity, Shapes::ShapeRef.new(shape: CapacityUnit, required: true, location_name: "Capacity"))
    CreateRuleGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "Description"))
    CreateRuleGroupRequest.add_member(:rules, Shapes::ShapeRef.new(shape: Rules, location_name: "Rules"))
    CreateRuleGroupRequest.add_member(:visibility_config, Shapes::ShapeRef.new(shape: VisibilityConfig, required: true, location_name: "VisibilityConfig"))
    CreateRuleGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateRuleGroupRequest.add_member(:custom_response_bodies, Shapes::ShapeRef.new(shape: CustomResponseBodies, location_name: "CustomResponseBodies"))
    CreateRuleGroupRequest.struct_class = Types::CreateRuleGroupRequest

    CreateRuleGroupResponse.add_member(:summary, Shapes::ShapeRef.new(shape: RuleGroupSummary, location_name: "Summary"))
    CreateRuleGroupResponse.struct_class = Types::CreateRuleGroupResponse

    CreateWebACLRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    CreateWebACLRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    CreateWebACLRequest.add_member(:default_action, Shapes::ShapeRef.new(shape: DefaultAction, required: true, location_name: "DefaultAction"))
    CreateWebACLRequest.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "Description"))
    CreateWebACLRequest.add_member(:rules, Shapes::ShapeRef.new(shape: Rules, location_name: "Rules"))
    CreateWebACLRequest.add_member(:visibility_config, Shapes::ShapeRef.new(shape: VisibilityConfig, required: true, location_name: "VisibilityConfig"))
    CreateWebACLRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateWebACLRequest.add_member(:custom_response_bodies, Shapes::ShapeRef.new(shape: CustomResponseBodies, location_name: "CustomResponseBodies"))
    CreateWebACLRequest.add_member(:captcha_config, Shapes::ShapeRef.new(shape: CaptchaConfig, location_name: "CaptchaConfig"))
    CreateWebACLRequest.add_member(:challenge_config, Shapes::ShapeRef.new(shape: ChallengeConfig, location_name: "ChallengeConfig"))
    CreateWebACLRequest.add_member(:token_domains, Shapes::ShapeRef.new(shape: TokenDomains, location_name: "TokenDomains"))
    CreateWebACLRequest.add_member(:association_config, Shapes::ShapeRef.new(shape: AssociationConfig, location_name: "AssociationConfig"))
    CreateWebACLRequest.struct_class = Types::CreateWebACLRequest

    CreateWebACLResponse.add_member(:summary, Shapes::ShapeRef.new(shape: WebACLSummary, location_name: "Summary"))
    CreateWebACLResponse.struct_class = Types::CreateWebACLResponse

    CustomHTTPHeader.add_member(:name, Shapes::ShapeRef.new(shape: CustomHTTPHeaderName, required: true, location_name: "Name"))
    CustomHTTPHeader.add_member(:value, Shapes::ShapeRef.new(shape: CustomHTTPHeaderValue, required: true, location_name: "Value"))
    CustomHTTPHeader.struct_class = Types::CustomHTTPHeader

    CustomHTTPHeaders.member = Shapes::ShapeRef.new(shape: CustomHTTPHeader)

    CustomRequestHandling.add_member(:insert_headers, Shapes::ShapeRef.new(shape: CustomHTTPHeaders, required: true, location_name: "InsertHeaders"))
    CustomRequestHandling.struct_class = Types::CustomRequestHandling

    CustomResponse.add_member(:response_code, Shapes::ShapeRef.new(shape: ResponseStatusCode, required: true, location_name: "ResponseCode"))
    CustomResponse.add_member(:custom_response_body_key, Shapes::ShapeRef.new(shape: EntityName, location_name: "CustomResponseBodyKey"))
    CustomResponse.add_member(:response_headers, Shapes::ShapeRef.new(shape: CustomHTTPHeaders, location_name: "ResponseHeaders"))
    CustomResponse.struct_class = Types::CustomResponse

    CustomResponseBodies.key = Shapes::ShapeRef.new(shape: EntityName)
    CustomResponseBodies.value = Shapes::ShapeRef.new(shape: CustomResponseBody)

    CustomResponseBody.add_member(:content_type, Shapes::ShapeRef.new(shape: ResponseContentType, required: true, location_name: "ContentType"))
    CustomResponseBody.add_member(:content, Shapes::ShapeRef.new(shape: ResponseContent, required: true, location_name: "Content"))
    CustomResponseBody.struct_class = Types::CustomResponseBody

    DefaultAction.add_member(:block, Shapes::ShapeRef.new(shape: BlockAction, location_name: "Block"))
    DefaultAction.add_member(:allow, Shapes::ShapeRef.new(shape: AllowAction, location_name: "Allow"))
    DefaultAction.struct_class = Types::DefaultAction

    DeleteFirewallManagerRuleGroupsRequest.add_member(:web_acl_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "WebACLArn"))
    DeleteFirewallManagerRuleGroupsRequest.add_member(:web_acl_lock_token, Shapes::ShapeRef.new(shape: LockToken, required: true, location_name: "WebACLLockToken"))
    DeleteFirewallManagerRuleGroupsRequest.struct_class = Types::DeleteFirewallManagerRuleGroupsRequest

    DeleteFirewallManagerRuleGroupsResponse.add_member(:next_web_acl_lock_token, Shapes::ShapeRef.new(shape: LockToken, location_name: "NextWebACLLockToken"))
    DeleteFirewallManagerRuleGroupsResponse.struct_class = Types::DeleteFirewallManagerRuleGroupsResponse

    DeleteIPSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    DeleteIPSetRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    DeleteIPSetRequest.add_member(:id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "Id"))
    DeleteIPSetRequest.add_member(:lock_token, Shapes::ShapeRef.new(shape: LockToken, required: true, location_name: "LockToken"))
    DeleteIPSetRequest.struct_class = Types::DeleteIPSetRequest

    DeleteIPSetResponse.struct_class = Types::DeleteIPSetResponse

    DeleteLoggingConfigurationRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    DeleteLoggingConfigurationRequest.struct_class = Types::DeleteLoggingConfigurationRequest

    DeleteLoggingConfigurationResponse.struct_class = Types::DeleteLoggingConfigurationResponse

    DeletePermissionPolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    DeletePermissionPolicyRequest.struct_class = Types::DeletePermissionPolicyRequest

    DeletePermissionPolicyResponse.struct_class = Types::DeletePermissionPolicyResponse

    DeleteRegexPatternSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    DeleteRegexPatternSetRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    DeleteRegexPatternSetRequest.add_member(:id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "Id"))
    DeleteRegexPatternSetRequest.add_member(:lock_token, Shapes::ShapeRef.new(shape: LockToken, required: true, location_name: "LockToken"))
    DeleteRegexPatternSetRequest.struct_class = Types::DeleteRegexPatternSetRequest

    DeleteRegexPatternSetResponse.struct_class = Types::DeleteRegexPatternSetResponse

    DeleteRuleGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    DeleteRuleGroupRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    DeleteRuleGroupRequest.add_member(:id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "Id"))
    DeleteRuleGroupRequest.add_member(:lock_token, Shapes::ShapeRef.new(shape: LockToken, required: true, location_name: "LockToken"))
    DeleteRuleGroupRequest.struct_class = Types::DeleteRuleGroupRequest

    DeleteRuleGroupResponse.struct_class = Types::DeleteRuleGroupResponse

    DeleteWebACLRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    DeleteWebACLRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    DeleteWebACLRequest.add_member(:id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "Id"))
    DeleteWebACLRequest.add_member(:lock_token, Shapes::ShapeRef.new(shape: LockToken, required: true, location_name: "LockToken"))
    DeleteWebACLRequest.struct_class = Types::DeleteWebACLRequest

    DeleteWebACLResponse.struct_class = Types::DeleteWebACLResponse

    DescribeAllManagedProductsRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    DescribeAllManagedProductsRequest.struct_class = Types::DescribeAllManagedProductsRequest

    DescribeAllManagedProductsResponse.add_member(:managed_products, Shapes::ShapeRef.new(shape: ManagedProductDescriptors, location_name: "ManagedProducts"))
    DescribeAllManagedProductsResponse.struct_class = Types::DescribeAllManagedProductsResponse

    DescribeManagedProductsByVendorRequest.add_member(:vendor_name, Shapes::ShapeRef.new(shape: VendorName, required: true, location_name: "VendorName"))
    DescribeManagedProductsByVendorRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    DescribeManagedProductsByVendorRequest.struct_class = Types::DescribeManagedProductsByVendorRequest

    DescribeManagedProductsByVendorResponse.add_member(:managed_products, Shapes::ShapeRef.new(shape: ManagedProductDescriptors, location_name: "ManagedProducts"))
    DescribeManagedProductsByVendorResponse.struct_class = Types::DescribeManagedProductsByVendorResponse

    DescribeManagedRuleGroupRequest.add_member(:vendor_name, Shapes::ShapeRef.new(shape: VendorName, required: true, location_name: "VendorName"))
    DescribeManagedRuleGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    DescribeManagedRuleGroupRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    DescribeManagedRuleGroupRequest.add_member(:version_name, Shapes::ShapeRef.new(shape: VersionKeyString, location_name: "VersionName"))
    DescribeManagedRuleGroupRequest.struct_class = Types::DescribeManagedRuleGroupRequest

    DescribeManagedRuleGroupResponse.add_member(:version_name, Shapes::ShapeRef.new(shape: VersionKeyString, location_name: "VersionName"))
    DescribeManagedRuleGroupResponse.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "SnsTopicArn"))
    DescribeManagedRuleGroupResponse.add_member(:capacity, Shapes::ShapeRef.new(shape: CapacityUnit, location_name: "Capacity"))
    DescribeManagedRuleGroupResponse.add_member(:rules, Shapes::ShapeRef.new(shape: RuleSummaries, location_name: "Rules"))
    DescribeManagedRuleGroupResponse.add_member(:label_namespace, Shapes::ShapeRef.new(shape: LabelName, location_name: "LabelNamespace"))
    DescribeManagedRuleGroupResponse.add_member(:available_labels, Shapes::ShapeRef.new(shape: LabelSummaries, location_name: "AvailableLabels"))
    DescribeManagedRuleGroupResponse.add_member(:consumed_labels, Shapes::ShapeRef.new(shape: LabelSummaries, location_name: "ConsumedLabels"))
    DescribeManagedRuleGroupResponse.struct_class = Types::DescribeManagedRuleGroupResponse

    DisassociateWebACLRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    DisassociateWebACLRequest.struct_class = Types::DisassociateWebACLRequest

    DisassociateWebACLResponse.struct_class = Types::DisassociateWebACLResponse

    EmailField.add_member(:identifier, Shapes::ShapeRef.new(shape: FieldIdentifier, required: true, location_name: "Identifier"))
    EmailField.struct_class = Types::EmailField

    ExcludedRule.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    ExcludedRule.struct_class = Types::ExcludedRule

    ExcludedRules.member = Shapes::ShapeRef.new(shape: ExcludedRule)

    FieldToMatch.add_member(:single_header, Shapes::ShapeRef.new(shape: SingleHeader, location_name: "SingleHeader"))
    FieldToMatch.add_member(:single_query_argument, Shapes::ShapeRef.new(shape: SingleQueryArgument, location_name: "SingleQueryArgument"))
    FieldToMatch.add_member(:all_query_arguments, Shapes::ShapeRef.new(shape: AllQueryArguments, location_name: "AllQueryArguments"))
    FieldToMatch.add_member(:uri_path, Shapes::ShapeRef.new(shape: UriPath, location_name: "UriPath"))
    FieldToMatch.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryString, location_name: "QueryString"))
    FieldToMatch.add_member(:body, Shapes::ShapeRef.new(shape: Body, location_name: "Body"))
    FieldToMatch.add_member(:method, Shapes::ShapeRef.new(shape: Method, location_name: "Method"))
    FieldToMatch.add_member(:json_body, Shapes::ShapeRef.new(shape: JsonBody, location_name: "JsonBody"))
    FieldToMatch.add_member(:headers, Shapes::ShapeRef.new(shape: Headers, location_name: "Headers"))
    FieldToMatch.add_member(:cookies, Shapes::ShapeRef.new(shape: Cookies, location_name: "Cookies"))
    FieldToMatch.add_member(:header_order, Shapes::ShapeRef.new(shape: HeaderOrder, location_name: "HeaderOrder"))
    FieldToMatch.struct_class = Types::FieldToMatch

    Filter.add_member(:behavior, Shapes::ShapeRef.new(shape: FilterBehavior, required: true, location_name: "Behavior"))
    Filter.add_member(:requirement, Shapes::ShapeRef.new(shape: FilterRequirement, required: true, location_name: "Requirement"))
    Filter.add_member(:conditions, Shapes::ShapeRef.new(shape: Conditions, required: true, location_name: "Conditions"))
    Filter.struct_class = Types::Filter

    Filters.member = Shapes::ShapeRef.new(shape: Filter)

    FirewallManagerRuleGroup.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    FirewallManagerRuleGroup.add_member(:priority, Shapes::ShapeRef.new(shape: RulePriority, required: true, location_name: "Priority"))
    FirewallManagerRuleGroup.add_member(:firewall_manager_statement, Shapes::ShapeRef.new(shape: FirewallManagerStatement, required: true, location_name: "FirewallManagerStatement"))
    FirewallManagerRuleGroup.add_member(:override_action, Shapes::ShapeRef.new(shape: OverrideAction, required: true, location_name: "OverrideAction"))
    FirewallManagerRuleGroup.add_member(:visibility_config, Shapes::ShapeRef.new(shape: VisibilityConfig, required: true, location_name: "VisibilityConfig"))
    FirewallManagerRuleGroup.struct_class = Types::FirewallManagerRuleGroup

    FirewallManagerRuleGroups.member = Shapes::ShapeRef.new(shape: FirewallManagerRuleGroup)

    FirewallManagerStatement.add_member(:managed_rule_group_statement, Shapes::ShapeRef.new(shape: ManagedRuleGroupStatement, location_name: "ManagedRuleGroupStatement"))
    FirewallManagerStatement.add_member(:rule_group_reference_statement, Shapes::ShapeRef.new(shape: RuleGroupReferenceStatement, location_name: "RuleGroupReferenceStatement"))
    FirewallManagerStatement.struct_class = Types::FirewallManagerStatement

    ForwardedIPConfig.add_member(:header_name, Shapes::ShapeRef.new(shape: ForwardedIPHeaderName, required: true, location_name: "HeaderName"))
    ForwardedIPConfig.add_member(:fallback_behavior, Shapes::ShapeRef.new(shape: FallbackBehavior, required: true, location_name: "FallbackBehavior"))
    ForwardedIPConfig.struct_class = Types::ForwardedIPConfig

    GenerateMobileSdkReleaseUrlRequest.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, required: true, location_name: "Platform"))
    GenerateMobileSdkReleaseUrlRequest.add_member(:release_version, Shapes::ShapeRef.new(shape: VersionKeyString, required: true, location_name: "ReleaseVersion"))
    GenerateMobileSdkReleaseUrlRequest.struct_class = Types::GenerateMobileSdkReleaseUrlRequest

    GenerateMobileSdkReleaseUrlResponse.add_member(:url, Shapes::ShapeRef.new(shape: DownloadUrl, location_name: "Url"))
    GenerateMobileSdkReleaseUrlResponse.struct_class = Types::GenerateMobileSdkReleaseUrlResponse

    GeoMatchStatement.add_member(:country_codes, Shapes::ShapeRef.new(shape: CountryCodes, location_name: "CountryCodes"))
    GeoMatchStatement.add_member(:forwarded_ip_config, Shapes::ShapeRef.new(shape: ForwardedIPConfig, location_name: "ForwardedIPConfig"))
    GeoMatchStatement.struct_class = Types::GeoMatchStatement

    GetDecryptedAPIKeyRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    GetDecryptedAPIKeyRequest.add_member(:api_key, Shapes::ShapeRef.new(shape: APIKey, required: true, location_name: "APIKey"))
    GetDecryptedAPIKeyRequest.struct_class = Types::GetDecryptedAPIKeyRequest

    GetDecryptedAPIKeyResponse.add_member(:token_domains, Shapes::ShapeRef.new(shape: TokenDomains, location_name: "TokenDomains"))
    GetDecryptedAPIKeyResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimestamp"))
    GetDecryptedAPIKeyResponse.struct_class = Types::GetDecryptedAPIKeyResponse

    GetIPSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    GetIPSetRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    GetIPSetRequest.add_member(:id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "Id"))
    GetIPSetRequest.struct_class = Types::GetIPSetRequest

    GetIPSetResponse.add_member(:ip_set, Shapes::ShapeRef.new(shape: IPSet, location_name: "IPSet"))
    GetIPSetResponse.add_member(:lock_token, Shapes::ShapeRef.new(shape: LockToken, location_name: "LockToken"))
    GetIPSetResponse.struct_class = Types::GetIPSetResponse

    GetLoggingConfigurationRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    GetLoggingConfigurationRequest.struct_class = Types::GetLoggingConfigurationRequest

    GetLoggingConfigurationResponse.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "LoggingConfiguration"))
    GetLoggingConfigurationResponse.struct_class = Types::GetLoggingConfigurationResponse

    GetManagedRuleSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    GetManagedRuleSetRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    GetManagedRuleSetRequest.add_member(:id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "Id"))
    GetManagedRuleSetRequest.struct_class = Types::GetManagedRuleSetRequest

    GetManagedRuleSetResponse.add_member(:managed_rule_set, Shapes::ShapeRef.new(shape: ManagedRuleSet, location_name: "ManagedRuleSet"))
    GetManagedRuleSetResponse.add_member(:lock_token, Shapes::ShapeRef.new(shape: LockToken, location_name: "LockToken"))
    GetManagedRuleSetResponse.struct_class = Types::GetManagedRuleSetResponse

    GetMobileSdkReleaseRequest.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, required: true, location_name: "Platform"))
    GetMobileSdkReleaseRequest.add_member(:release_version, Shapes::ShapeRef.new(shape: VersionKeyString, required: true, location_name: "ReleaseVersion"))
    GetMobileSdkReleaseRequest.struct_class = Types::GetMobileSdkReleaseRequest

    GetMobileSdkReleaseResponse.add_member(:mobile_sdk_release, Shapes::ShapeRef.new(shape: MobileSdkRelease, location_name: "MobileSdkRelease"))
    GetMobileSdkReleaseResponse.struct_class = Types::GetMobileSdkReleaseResponse

    GetPermissionPolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    GetPermissionPolicyRequest.struct_class = Types::GetPermissionPolicyRequest

    GetPermissionPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: PolicyString, location_name: "Policy"))
    GetPermissionPolicyResponse.struct_class = Types::GetPermissionPolicyResponse

    GetRateBasedStatementManagedKeysRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    GetRateBasedStatementManagedKeysRequest.add_member(:web_acl_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "WebACLName"))
    GetRateBasedStatementManagedKeysRequest.add_member(:web_acl_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "WebACLId"))
    GetRateBasedStatementManagedKeysRequest.add_member(:rule_group_rule_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "RuleGroupRuleName"))
    GetRateBasedStatementManagedKeysRequest.add_member(:rule_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "RuleName"))
    GetRateBasedStatementManagedKeysRequest.struct_class = Types::GetRateBasedStatementManagedKeysRequest

    GetRateBasedStatementManagedKeysResponse.add_member(:managed_keys_ipv4, Shapes::ShapeRef.new(shape: RateBasedStatementManagedKeysIPSet, location_name: "ManagedKeysIPV4"))
    GetRateBasedStatementManagedKeysResponse.add_member(:managed_keys_ipv6, Shapes::ShapeRef.new(shape: RateBasedStatementManagedKeysIPSet, location_name: "ManagedKeysIPV6"))
    GetRateBasedStatementManagedKeysResponse.struct_class = Types::GetRateBasedStatementManagedKeysResponse

    GetRegexPatternSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    GetRegexPatternSetRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    GetRegexPatternSetRequest.add_member(:id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "Id"))
    GetRegexPatternSetRequest.struct_class = Types::GetRegexPatternSetRequest

    GetRegexPatternSetResponse.add_member(:regex_pattern_set, Shapes::ShapeRef.new(shape: RegexPatternSet, location_name: "RegexPatternSet"))
    GetRegexPatternSetResponse.add_member(:lock_token, Shapes::ShapeRef.new(shape: LockToken, location_name: "LockToken"))
    GetRegexPatternSetResponse.struct_class = Types::GetRegexPatternSetResponse

    GetRuleGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, location_name: "Name"))
    GetRuleGroupRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, location_name: "Scope"))
    GetRuleGroupRequest.add_member(:id, Shapes::ShapeRef.new(shape: EntityId, location_name: "Id"))
    GetRuleGroupRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ARN"))
    GetRuleGroupRequest.struct_class = Types::GetRuleGroupRequest

    GetRuleGroupResponse.add_member(:rule_group, Shapes::ShapeRef.new(shape: RuleGroup, location_name: "RuleGroup"))
    GetRuleGroupResponse.add_member(:lock_token, Shapes::ShapeRef.new(shape: LockToken, location_name: "LockToken"))
    GetRuleGroupResponse.struct_class = Types::GetRuleGroupResponse

    GetSampledRequestsRequest.add_member(:web_acl_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "WebAclArn"))
    GetSampledRequestsRequest.add_member(:rule_metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "RuleMetricName"))
    GetSampledRequestsRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    GetSampledRequestsRequest.add_member(:time_window, Shapes::ShapeRef.new(shape: TimeWindow, required: true, location_name: "TimeWindow"))
    GetSampledRequestsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: ListMaxItems, required: true, location_name: "MaxItems"))
    GetSampledRequestsRequest.struct_class = Types::GetSampledRequestsRequest

    GetSampledRequestsResponse.add_member(:sampled_requests, Shapes::ShapeRef.new(shape: SampledHTTPRequests, location_name: "SampledRequests"))
    GetSampledRequestsResponse.add_member(:population_size, Shapes::ShapeRef.new(shape: PopulationSize, location_name: "PopulationSize"))
    GetSampledRequestsResponse.add_member(:time_window, Shapes::ShapeRef.new(shape: TimeWindow, location_name: "TimeWindow"))
    GetSampledRequestsResponse.struct_class = Types::GetSampledRequestsResponse

    GetWebACLForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    GetWebACLForResourceRequest.struct_class = Types::GetWebACLForResourceRequest

    GetWebACLForResourceResponse.add_member(:web_acl, Shapes::ShapeRef.new(shape: WebACL, location_name: "WebACL"))
    GetWebACLForResourceResponse.struct_class = Types::GetWebACLForResourceResponse

    GetWebACLRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    GetWebACLRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    GetWebACLRequest.add_member(:id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "Id"))
    GetWebACLRequest.struct_class = Types::GetWebACLRequest

    GetWebACLResponse.add_member(:web_acl, Shapes::ShapeRef.new(shape: WebACL, location_name: "WebACL"))
    GetWebACLResponse.add_member(:lock_token, Shapes::ShapeRef.new(shape: LockToken, location_name: "LockToken"))
    GetWebACLResponse.add_member(:application_integration_url, Shapes::ShapeRef.new(shape: OutputUrl, location_name: "ApplicationIntegrationURL"))
    GetWebACLResponse.struct_class = Types::GetWebACLResponse

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

    HeaderMatchPattern.add_member(:all, Shapes::ShapeRef.new(shape: All, location_name: "All"))
    HeaderMatchPattern.add_member(:included_headers, Shapes::ShapeRef.new(shape: HeaderNames, location_name: "IncludedHeaders"))
    HeaderMatchPattern.add_member(:excluded_headers, Shapes::ShapeRef.new(shape: HeaderNames, location_name: "ExcludedHeaders"))
    HeaderMatchPattern.struct_class = Types::HeaderMatchPattern

    HeaderNames.member = Shapes::ShapeRef.new(shape: FieldToMatchData)

    HeaderOrder.add_member(:oversize_handling, Shapes::ShapeRef.new(shape: OversizeHandling, required: true, location_name: "OversizeHandling"))
    HeaderOrder.struct_class = Types::HeaderOrder

    Headers.add_member(:match_pattern, Shapes::ShapeRef.new(shape: HeaderMatchPattern, required: true, location_name: "MatchPattern"))
    Headers.add_member(:match_scope, Shapes::ShapeRef.new(shape: MapMatchScope, required: true, location_name: "MatchScope"))
    Headers.add_member(:oversize_handling, Shapes::ShapeRef.new(shape: OversizeHandling, required: true, location_name: "OversizeHandling"))
    Headers.struct_class = Types::Headers

    IPAddresses.member = Shapes::ShapeRef.new(shape: IPAddress)

    IPSet.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    IPSet.add_member(:id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "Id"))
    IPSet.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ARN"))
    IPSet.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "Description"))
    IPSet.add_member(:ip_address_version, Shapes::ShapeRef.new(shape: IPAddressVersion, required: true, location_name: "IPAddressVersion"))
    IPSet.add_member(:addresses, Shapes::ShapeRef.new(shape: IPAddresses, required: true, location_name: "Addresses"))
    IPSet.struct_class = Types::IPSet

    IPSetForwardedIPConfig.add_member(:header_name, Shapes::ShapeRef.new(shape: ForwardedIPHeaderName, required: true, location_name: "HeaderName"))
    IPSetForwardedIPConfig.add_member(:fallback_behavior, Shapes::ShapeRef.new(shape: FallbackBehavior, required: true, location_name: "FallbackBehavior"))
    IPSetForwardedIPConfig.add_member(:position, Shapes::ShapeRef.new(shape: ForwardedIPPosition, required: true, location_name: "Position"))
    IPSetForwardedIPConfig.struct_class = Types::IPSetForwardedIPConfig

    IPSetReferenceStatement.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ARN"))
    IPSetReferenceStatement.add_member(:ip_set_forwarded_ip_config, Shapes::ShapeRef.new(shape: IPSetForwardedIPConfig, location_name: "IPSetForwardedIPConfig"))
    IPSetReferenceStatement.struct_class = Types::IPSetReferenceStatement

    IPSetSummaries.member = Shapes::ShapeRef.new(shape: IPSetSummary)

    IPSetSummary.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, location_name: "Name"))
    IPSetSummary.add_member(:id, Shapes::ShapeRef.new(shape: EntityId, location_name: "Id"))
    IPSetSummary.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "Description"))
    IPSetSummary.add_member(:lock_token, Shapes::ShapeRef.new(shape: LockToken, location_name: "LockToken"))
    IPSetSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ARN"))
    IPSetSummary.struct_class = Types::IPSetSummary

    ImmunityTimeProperty.add_member(:immunity_time, Shapes::ShapeRef.new(shape: TimeWindowSecond, required: true, location_name: "ImmunityTime"))
    ImmunityTimeProperty.struct_class = Types::ImmunityTimeProperty

    JsonBody.add_member(:match_pattern, Shapes::ShapeRef.new(shape: JsonMatchPattern, required: true, location_name: "MatchPattern"))
    JsonBody.add_member(:match_scope, Shapes::ShapeRef.new(shape: JsonMatchScope, required: true, location_name: "MatchScope"))
    JsonBody.add_member(:invalid_fallback_behavior, Shapes::ShapeRef.new(shape: BodyParsingFallbackBehavior, location_name: "InvalidFallbackBehavior"))
    JsonBody.add_member(:oversize_handling, Shapes::ShapeRef.new(shape: OversizeHandling, location_name: "OversizeHandling"))
    JsonBody.struct_class = Types::JsonBody

    JsonMatchPattern.add_member(:all, Shapes::ShapeRef.new(shape: All, location_name: "All"))
    JsonMatchPattern.add_member(:included_paths, Shapes::ShapeRef.new(shape: JsonPointerPaths, location_name: "IncludedPaths"))
    JsonMatchPattern.struct_class = Types::JsonMatchPattern

    JsonPointerPaths.member = Shapes::ShapeRef.new(shape: JsonPointerPath)

    Label.add_member(:name, Shapes::ShapeRef.new(shape: LabelName, required: true, location_name: "Name"))
    Label.struct_class = Types::Label

    LabelMatchStatement.add_member(:scope, Shapes::ShapeRef.new(shape: LabelMatchScope, required: true, location_name: "Scope"))
    LabelMatchStatement.add_member(:key, Shapes::ShapeRef.new(shape: LabelMatchKey, required: true, location_name: "Key"))
    LabelMatchStatement.struct_class = Types::LabelMatchStatement

    LabelNameCondition.add_member(:label_name, Shapes::ShapeRef.new(shape: LabelName, required: true, location_name: "LabelName"))
    LabelNameCondition.struct_class = Types::LabelNameCondition

    LabelSummaries.member = Shapes::ShapeRef.new(shape: LabelSummary)

    LabelSummary.add_member(:name, Shapes::ShapeRef.new(shape: LabelName, location_name: "Name"))
    LabelSummary.struct_class = Types::LabelSummary

    Labels.member = Shapes::ShapeRef.new(shape: Label)

    ListAPIKeysRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    ListAPIKeysRequest.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListAPIKeysRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit"))
    ListAPIKeysRequest.struct_class = Types::ListAPIKeysRequest

    ListAPIKeysResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListAPIKeysResponse.add_member(:api_key_summaries, Shapes::ShapeRef.new(shape: APIKeySummaries, location_name: "APIKeySummaries"))
    ListAPIKeysResponse.add_member(:application_integration_url, Shapes::ShapeRef.new(shape: OutputUrl, location_name: "ApplicationIntegrationURL"))
    ListAPIKeysResponse.struct_class = Types::ListAPIKeysResponse

    ListAvailableManagedRuleGroupVersionsRequest.add_member(:vendor_name, Shapes::ShapeRef.new(shape: VendorName, required: true, location_name: "VendorName"))
    ListAvailableManagedRuleGroupVersionsRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    ListAvailableManagedRuleGroupVersionsRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    ListAvailableManagedRuleGroupVersionsRequest.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListAvailableManagedRuleGroupVersionsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit"))
    ListAvailableManagedRuleGroupVersionsRequest.struct_class = Types::ListAvailableManagedRuleGroupVersionsRequest

    ListAvailableManagedRuleGroupVersionsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListAvailableManagedRuleGroupVersionsResponse.add_member(:versions, Shapes::ShapeRef.new(shape: ManagedRuleGroupVersions, location_name: "Versions"))
    ListAvailableManagedRuleGroupVersionsResponse.add_member(:current_default_version, Shapes::ShapeRef.new(shape: VersionKeyString, location_name: "CurrentDefaultVersion"))
    ListAvailableManagedRuleGroupVersionsResponse.struct_class = Types::ListAvailableManagedRuleGroupVersionsResponse

    ListAvailableManagedRuleGroupsRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    ListAvailableManagedRuleGroupsRequest.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListAvailableManagedRuleGroupsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit"))
    ListAvailableManagedRuleGroupsRequest.struct_class = Types::ListAvailableManagedRuleGroupsRequest

    ListAvailableManagedRuleGroupsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListAvailableManagedRuleGroupsResponse.add_member(:managed_rule_groups, Shapes::ShapeRef.new(shape: ManagedRuleGroupSummaries, location_name: "ManagedRuleGroups"))
    ListAvailableManagedRuleGroupsResponse.struct_class = Types::ListAvailableManagedRuleGroupsResponse

    ListIPSetsRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    ListIPSetsRequest.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListIPSetsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit"))
    ListIPSetsRequest.struct_class = Types::ListIPSetsRequest

    ListIPSetsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListIPSetsResponse.add_member(:ip_sets, Shapes::ShapeRef.new(shape: IPSetSummaries, location_name: "IPSets"))
    ListIPSetsResponse.struct_class = Types::ListIPSetsResponse

    ListLoggingConfigurationsRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    ListLoggingConfigurationsRequest.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListLoggingConfigurationsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit"))
    ListLoggingConfigurationsRequest.struct_class = Types::ListLoggingConfigurationsRequest

    ListLoggingConfigurationsResponse.add_member(:logging_configurations, Shapes::ShapeRef.new(shape: LoggingConfigurations, location_name: "LoggingConfigurations"))
    ListLoggingConfigurationsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListLoggingConfigurationsResponse.struct_class = Types::ListLoggingConfigurationsResponse

    ListManagedRuleSetsRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    ListManagedRuleSetsRequest.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListManagedRuleSetsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit"))
    ListManagedRuleSetsRequest.struct_class = Types::ListManagedRuleSetsRequest

    ListManagedRuleSetsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListManagedRuleSetsResponse.add_member(:managed_rule_sets, Shapes::ShapeRef.new(shape: ManagedRuleSetSummaries, location_name: "ManagedRuleSets"))
    ListManagedRuleSetsResponse.struct_class = Types::ListManagedRuleSetsResponse

    ListMobileSdkReleasesRequest.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, required: true, location_name: "Platform"))
    ListMobileSdkReleasesRequest.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListMobileSdkReleasesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit"))
    ListMobileSdkReleasesRequest.struct_class = Types::ListMobileSdkReleasesRequest

    ListMobileSdkReleasesResponse.add_member(:release_summaries, Shapes::ShapeRef.new(shape: ReleaseSummaries, location_name: "ReleaseSummaries"))
    ListMobileSdkReleasesResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListMobileSdkReleasesResponse.struct_class = Types::ListMobileSdkReleasesResponse

    ListRegexPatternSetsRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    ListRegexPatternSetsRequest.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListRegexPatternSetsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit"))
    ListRegexPatternSetsRequest.struct_class = Types::ListRegexPatternSetsRequest

    ListRegexPatternSetsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListRegexPatternSetsResponse.add_member(:regex_pattern_sets, Shapes::ShapeRef.new(shape: RegexPatternSetSummaries, location_name: "RegexPatternSets"))
    ListRegexPatternSetsResponse.struct_class = Types::ListRegexPatternSetsResponse

    ListResourcesForWebACLRequest.add_member(:web_acl_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "WebACLArn"))
    ListResourcesForWebACLRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ListResourcesForWebACLRequest.struct_class = Types::ListResourcesForWebACLRequest

    ListResourcesForWebACLResponse.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArns, location_name: "ResourceArns"))
    ListResourcesForWebACLResponse.struct_class = Types::ListResourcesForWebACLResponse

    ListRuleGroupsRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    ListRuleGroupsRequest.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListRuleGroupsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit"))
    ListRuleGroupsRequest.struct_class = Types::ListRuleGroupsRequest

    ListRuleGroupsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListRuleGroupsResponse.add_member(:rule_groups, Shapes::ShapeRef.new(shape: RuleGroupSummaries, location_name: "RuleGroups"))
    ListRuleGroupsResponse.struct_class = Types::ListRuleGroupsResponse

    ListTagsForResourceRequest.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListTagsForResourceRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit"))
    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceARN"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListTagsForResourceResponse.add_member(:tag_info_for_resource, Shapes::ShapeRef.new(shape: TagInfoForResource, location_name: "TagInfoForResource"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListWebACLsRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    ListWebACLsRequest.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListWebACLsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PaginationLimit, location_name: "Limit"))
    ListWebACLsRequest.struct_class = Types::ListWebACLsRequest

    ListWebACLsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: NextMarker, location_name: "NextMarker"))
    ListWebACLsResponse.add_member(:web_acls, Shapes::ShapeRef.new(shape: WebACLSummaries, location_name: "WebACLs"))
    ListWebACLsResponse.struct_class = Types::ListWebACLsResponse

    LogDestinationConfigs.member = Shapes::ShapeRef.new(shape: ResourceArn)

    LoggingConfiguration.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    LoggingConfiguration.add_member(:log_destination_configs, Shapes::ShapeRef.new(shape: LogDestinationConfigs, required: true, location_name: "LogDestinationConfigs"))
    LoggingConfiguration.add_member(:redacted_fields, Shapes::ShapeRef.new(shape: RedactedFields, location_name: "RedactedFields"))
    LoggingConfiguration.add_member(:managed_by_firewall_manager, Shapes::ShapeRef.new(shape: Boolean, location_name: "ManagedByFirewallManager"))
    LoggingConfiguration.add_member(:logging_filter, Shapes::ShapeRef.new(shape: LoggingFilter, location_name: "LoggingFilter"))
    LoggingConfiguration.struct_class = Types::LoggingConfiguration

    LoggingConfigurations.member = Shapes::ShapeRef.new(shape: LoggingConfiguration)

    LoggingFilter.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, required: true, location_name: "Filters"))
    LoggingFilter.add_member(:default_behavior, Shapes::ShapeRef.new(shape: FilterBehavior, required: true, location_name: "DefaultBehavior"))
    LoggingFilter.struct_class = Types::LoggingFilter

    ManagedProductDescriptor.add_member(:vendor_name, Shapes::ShapeRef.new(shape: VendorName, location_name: "VendorName"))
    ManagedProductDescriptor.add_member(:managed_rule_set_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "ManagedRuleSetName"))
    ManagedProductDescriptor.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, location_name: "ProductId"))
    ManagedProductDescriptor.add_member(:product_link, Shapes::ShapeRef.new(shape: ProductLink, location_name: "ProductLink"))
    ManagedProductDescriptor.add_member(:product_title, Shapes::ShapeRef.new(shape: ProductTitle, location_name: "ProductTitle"))
    ManagedProductDescriptor.add_member(:product_description, Shapes::ShapeRef.new(shape: ProductDescription, location_name: "ProductDescription"))
    ManagedProductDescriptor.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "SnsTopicArn"))
    ManagedProductDescriptor.add_member(:is_versioning_supported, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsVersioningSupported"))
    ManagedProductDescriptor.add_member(:is_advanced_managed_rule_set, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsAdvancedManagedRuleSet"))
    ManagedProductDescriptor.struct_class = Types::ManagedProductDescriptor

    ManagedProductDescriptors.member = Shapes::ShapeRef.new(shape: ManagedProductDescriptor)

    ManagedRuleGroupConfig.add_member(:login_path, Shapes::ShapeRef.new(shape: LoginPathString, deprecated: true, location_name: "LoginPath", metadata: {"deprecatedMessage"=>"Deprecated. Use AWSManagedRulesATPRuleSet LoginPath"}))
    ManagedRuleGroupConfig.add_member(:payload_type, Shapes::ShapeRef.new(shape: PayloadType, deprecated: true, location_name: "PayloadType", metadata: {"deprecatedMessage"=>"Deprecated. Use AWSManagedRulesATPRuleSet RequestInspection PayloadType"}))
    ManagedRuleGroupConfig.add_member(:username_field, Shapes::ShapeRef.new(shape: UsernameField, deprecated: true, location_name: "UsernameField", metadata: {"deprecatedMessage"=>"Deprecated. Use AWSManagedRulesATPRuleSet RequestInspection UsernameField"}))
    ManagedRuleGroupConfig.add_member(:password_field, Shapes::ShapeRef.new(shape: PasswordField, deprecated: true, location_name: "PasswordField", metadata: {"deprecatedMessage"=>"Deprecated. Use AWSManagedRulesATPRuleSet RequestInspection PasswordField"}))
    ManagedRuleGroupConfig.add_member(:aws_managed_rules_bot_control_rule_set, Shapes::ShapeRef.new(shape: AWSManagedRulesBotControlRuleSet, location_name: "AWSManagedRulesBotControlRuleSet"))
    ManagedRuleGroupConfig.add_member(:aws_managed_rules_atp_rule_set, Shapes::ShapeRef.new(shape: AWSManagedRulesATPRuleSet, location_name: "AWSManagedRulesATPRuleSet"))
    ManagedRuleGroupConfig.add_member(:aws_managed_rules_acfp_rule_set, Shapes::ShapeRef.new(shape: AWSManagedRulesACFPRuleSet, location_name: "AWSManagedRulesACFPRuleSet"))
    ManagedRuleGroupConfig.struct_class = Types::ManagedRuleGroupConfig

    ManagedRuleGroupConfigs.member = Shapes::ShapeRef.new(shape: ManagedRuleGroupConfig)

    ManagedRuleGroupStatement.add_member(:vendor_name, Shapes::ShapeRef.new(shape: VendorName, required: true, location_name: "VendorName"))
    ManagedRuleGroupStatement.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    ManagedRuleGroupStatement.add_member(:version, Shapes::ShapeRef.new(shape: VersionKeyString, location_name: "Version"))
    ManagedRuleGroupStatement.add_member(:excluded_rules, Shapes::ShapeRef.new(shape: ExcludedRules, location_name: "ExcludedRules"))
    ManagedRuleGroupStatement.add_member(:scope_down_statement, Shapes::ShapeRef.new(shape: Statement, location_name: "ScopeDownStatement"))
    ManagedRuleGroupStatement.add_member(:managed_rule_group_configs, Shapes::ShapeRef.new(shape: ManagedRuleGroupConfigs, location_name: "ManagedRuleGroupConfigs"))
    ManagedRuleGroupStatement.add_member(:rule_action_overrides, Shapes::ShapeRef.new(shape: RuleActionOverrides, location_name: "RuleActionOverrides"))
    ManagedRuleGroupStatement.struct_class = Types::ManagedRuleGroupStatement

    ManagedRuleGroupSummaries.member = Shapes::ShapeRef.new(shape: ManagedRuleGroupSummary)

    ManagedRuleGroupSummary.add_member(:vendor_name, Shapes::ShapeRef.new(shape: VendorName, location_name: "VendorName"))
    ManagedRuleGroupSummary.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, location_name: "Name"))
    ManagedRuleGroupSummary.add_member(:versioning_supported, Shapes::ShapeRef.new(shape: Boolean, location_name: "VersioningSupported"))
    ManagedRuleGroupSummary.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "Description"))
    ManagedRuleGroupSummary.struct_class = Types::ManagedRuleGroupSummary

    ManagedRuleGroupVersion.add_member(:name, Shapes::ShapeRef.new(shape: VersionKeyString, location_name: "Name"))
    ManagedRuleGroupVersion.add_member(:last_update_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdateTimestamp"))
    ManagedRuleGroupVersion.struct_class = Types::ManagedRuleGroupVersion

    ManagedRuleGroupVersions.member = Shapes::ShapeRef.new(shape: ManagedRuleGroupVersion)

    ManagedRuleSet.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    ManagedRuleSet.add_member(:id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "Id"))
    ManagedRuleSet.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ARN"))
    ManagedRuleSet.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "Description"))
    ManagedRuleSet.add_member(:published_versions, Shapes::ShapeRef.new(shape: PublishedVersions, location_name: "PublishedVersions"))
    ManagedRuleSet.add_member(:recommended_version, Shapes::ShapeRef.new(shape: VersionKeyString, location_name: "RecommendedVersion"))
    ManagedRuleSet.add_member(:label_namespace, Shapes::ShapeRef.new(shape: LabelName, location_name: "LabelNamespace"))
    ManagedRuleSet.struct_class = Types::ManagedRuleSet

    ManagedRuleSetSummaries.member = Shapes::ShapeRef.new(shape: ManagedRuleSetSummary)

    ManagedRuleSetSummary.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, location_name: "Name"))
    ManagedRuleSetSummary.add_member(:id, Shapes::ShapeRef.new(shape: EntityId, location_name: "Id"))
    ManagedRuleSetSummary.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "Description"))
    ManagedRuleSetSummary.add_member(:lock_token, Shapes::ShapeRef.new(shape: LockToken, location_name: "LockToken"))
    ManagedRuleSetSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ARN"))
    ManagedRuleSetSummary.add_member(:label_namespace, Shapes::ShapeRef.new(shape: LabelName, location_name: "LabelNamespace"))
    ManagedRuleSetSummary.struct_class = Types::ManagedRuleSetSummary

    ManagedRuleSetVersion.add_member(:associated_rule_group_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "AssociatedRuleGroupArn"))
    ManagedRuleSetVersion.add_member(:capacity, Shapes::ShapeRef.new(shape: CapacityUnit, location_name: "Capacity"))
    ManagedRuleSetVersion.add_member(:forecasted_lifetime, Shapes::ShapeRef.new(shape: TimeWindowDay, location_name: "ForecastedLifetime"))
    ManagedRuleSetVersion.add_member(:publish_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "PublishTimestamp"))
    ManagedRuleSetVersion.add_member(:last_update_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdateTimestamp"))
    ManagedRuleSetVersion.add_member(:expiry_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpiryTimestamp"))
    ManagedRuleSetVersion.struct_class = Types::ManagedRuleSetVersion

    Method.struct_class = Types::Method

    MobileSdkRelease.add_member(:release_version, Shapes::ShapeRef.new(shape: VersionKeyString, location_name: "ReleaseVersion"))
    MobileSdkRelease.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    MobileSdkRelease.add_member(:release_notes, Shapes::ShapeRef.new(shape: ReleaseNotes, location_name: "ReleaseNotes"))
    MobileSdkRelease.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    MobileSdkRelease.struct_class = Types::MobileSdkRelease

    NoneAction.struct_class = Types::NoneAction

    NotStatement.add_member(:statement, Shapes::ShapeRef.new(shape: Statement, required: true, location_name: "Statement"))
    NotStatement.struct_class = Types::NotStatement

    OrStatement.add_member(:statements, Shapes::ShapeRef.new(shape: Statements, required: true, location_name: "Statements"))
    OrStatement.struct_class = Types::OrStatement

    OverrideAction.add_member(:count, Shapes::ShapeRef.new(shape: CountAction, location_name: "Count"))
    OverrideAction.add_member(:none, Shapes::ShapeRef.new(shape: NoneAction, location_name: "None"))
    OverrideAction.struct_class = Types::OverrideAction

    PasswordField.add_member(:identifier, Shapes::ShapeRef.new(shape: FieldIdentifier, required: true, location_name: "Identifier"))
    PasswordField.struct_class = Types::PasswordField

    PhoneNumberField.add_member(:identifier, Shapes::ShapeRef.new(shape: FieldIdentifier, required: true, location_name: "Identifier"))
    PhoneNumberField.struct_class = Types::PhoneNumberField

    PhoneNumberFields.member = Shapes::ShapeRef.new(shape: PhoneNumberField)

    PublishedVersions.key = Shapes::ShapeRef.new(shape: VersionKeyString)
    PublishedVersions.value = Shapes::ShapeRef.new(shape: ManagedRuleSetVersion)

    PutLoggingConfigurationRequest.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, required: true, location_name: "LoggingConfiguration"))
    PutLoggingConfigurationRequest.struct_class = Types::PutLoggingConfigurationRequest

    PutLoggingConfigurationResponse.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "LoggingConfiguration"))
    PutLoggingConfigurationResponse.struct_class = Types::PutLoggingConfigurationResponse

    PutManagedRuleSetVersionsRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    PutManagedRuleSetVersionsRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    PutManagedRuleSetVersionsRequest.add_member(:id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "Id"))
    PutManagedRuleSetVersionsRequest.add_member(:lock_token, Shapes::ShapeRef.new(shape: LockToken, required: true, location_name: "LockToken"))
    PutManagedRuleSetVersionsRequest.add_member(:recommended_version, Shapes::ShapeRef.new(shape: VersionKeyString, location_name: "RecommendedVersion"))
    PutManagedRuleSetVersionsRequest.add_member(:versions_to_publish, Shapes::ShapeRef.new(shape: VersionsToPublish, location_name: "VersionsToPublish"))
    PutManagedRuleSetVersionsRequest.struct_class = Types::PutManagedRuleSetVersionsRequest

    PutManagedRuleSetVersionsResponse.add_member(:next_lock_token, Shapes::ShapeRef.new(shape: LockToken, location_name: "NextLockToken"))
    PutManagedRuleSetVersionsResponse.struct_class = Types::PutManagedRuleSetVersionsResponse

    PutPermissionPolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    PutPermissionPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: PolicyString, required: true, location_name: "Policy"))
    PutPermissionPolicyRequest.struct_class = Types::PutPermissionPolicyRequest

    PutPermissionPolicyResponse.struct_class = Types::PutPermissionPolicyResponse

    QueryString.struct_class = Types::QueryString

    RateBasedStatement.add_member(:limit, Shapes::ShapeRef.new(shape: RateLimit, required: true, location_name: "Limit"))
    RateBasedStatement.add_member(:aggregate_key_type, Shapes::ShapeRef.new(shape: RateBasedStatementAggregateKeyType, required: true, location_name: "AggregateKeyType"))
    RateBasedStatement.add_member(:scope_down_statement, Shapes::ShapeRef.new(shape: Statement, location_name: "ScopeDownStatement"))
    RateBasedStatement.add_member(:forwarded_ip_config, Shapes::ShapeRef.new(shape: ForwardedIPConfig, location_name: "ForwardedIPConfig"))
    RateBasedStatement.add_member(:custom_keys, Shapes::ShapeRef.new(shape: RateBasedStatementCustomKeys, location_name: "CustomKeys"))
    RateBasedStatement.struct_class = Types::RateBasedStatement

    RateBasedStatementCustomKey.add_member(:header, Shapes::ShapeRef.new(shape: RateLimitHeader, location_name: "Header"))
    RateBasedStatementCustomKey.add_member(:cookie, Shapes::ShapeRef.new(shape: RateLimitCookie, location_name: "Cookie"))
    RateBasedStatementCustomKey.add_member(:query_argument, Shapes::ShapeRef.new(shape: RateLimitQueryArgument, location_name: "QueryArgument"))
    RateBasedStatementCustomKey.add_member(:query_string, Shapes::ShapeRef.new(shape: RateLimitQueryString, location_name: "QueryString"))
    RateBasedStatementCustomKey.add_member(:http_method, Shapes::ShapeRef.new(shape: RateLimitHTTPMethod, location_name: "HTTPMethod"))
    RateBasedStatementCustomKey.add_member(:forwarded_ip, Shapes::ShapeRef.new(shape: RateLimitForwardedIP, location_name: "ForwardedIP"))
    RateBasedStatementCustomKey.add_member(:ip, Shapes::ShapeRef.new(shape: RateLimitIP, location_name: "IP"))
    RateBasedStatementCustomKey.add_member(:label_namespace, Shapes::ShapeRef.new(shape: RateLimitLabelNamespace, location_name: "LabelNamespace"))
    RateBasedStatementCustomKey.struct_class = Types::RateBasedStatementCustomKey

    RateBasedStatementCustomKeys.member = Shapes::ShapeRef.new(shape: RateBasedStatementCustomKey)

    RateBasedStatementManagedKeysIPSet.add_member(:ip_address_version, Shapes::ShapeRef.new(shape: IPAddressVersion, location_name: "IPAddressVersion"))
    RateBasedStatementManagedKeysIPSet.add_member(:addresses, Shapes::ShapeRef.new(shape: IPAddresses, location_name: "Addresses"))
    RateBasedStatementManagedKeysIPSet.struct_class = Types::RateBasedStatementManagedKeysIPSet

    RateLimitCookie.add_member(:name, Shapes::ShapeRef.new(shape: FieldToMatchData, required: true, location_name: "Name"))
    RateLimitCookie.add_member(:text_transformations, Shapes::ShapeRef.new(shape: TextTransformations, required: true, location_name: "TextTransformations"))
    RateLimitCookie.struct_class = Types::RateLimitCookie

    RateLimitForwardedIP.struct_class = Types::RateLimitForwardedIP

    RateLimitHTTPMethod.struct_class = Types::RateLimitHTTPMethod

    RateLimitHeader.add_member(:name, Shapes::ShapeRef.new(shape: FieldToMatchData, required: true, location_name: "Name"))
    RateLimitHeader.add_member(:text_transformations, Shapes::ShapeRef.new(shape: TextTransformations, required: true, location_name: "TextTransformations"))
    RateLimitHeader.struct_class = Types::RateLimitHeader

    RateLimitIP.struct_class = Types::RateLimitIP

    RateLimitLabelNamespace.add_member(:namespace, Shapes::ShapeRef.new(shape: LabelNamespace, required: true, location_name: "Namespace"))
    RateLimitLabelNamespace.struct_class = Types::RateLimitLabelNamespace

    RateLimitQueryArgument.add_member(:name, Shapes::ShapeRef.new(shape: FieldToMatchData, required: true, location_name: "Name"))
    RateLimitQueryArgument.add_member(:text_transformations, Shapes::ShapeRef.new(shape: TextTransformations, required: true, location_name: "TextTransformations"))
    RateLimitQueryArgument.struct_class = Types::RateLimitQueryArgument

    RateLimitQueryString.add_member(:text_transformations, Shapes::ShapeRef.new(shape: TextTransformations, required: true, location_name: "TextTransformations"))
    RateLimitQueryString.struct_class = Types::RateLimitQueryString

    RedactedFields.member = Shapes::ShapeRef.new(shape: FieldToMatch)

    Regex.add_member(:regex_string, Shapes::ShapeRef.new(shape: RegexPatternString, location_name: "RegexString"))
    Regex.struct_class = Types::Regex

    RegexMatchStatement.add_member(:regex_string, Shapes::ShapeRef.new(shape: RegexPatternString, required: true, location_name: "RegexString"))
    RegexMatchStatement.add_member(:field_to_match, Shapes::ShapeRef.new(shape: FieldToMatch, required: true, location_name: "FieldToMatch"))
    RegexMatchStatement.add_member(:text_transformations, Shapes::ShapeRef.new(shape: TextTransformations, required: true, location_name: "TextTransformations"))
    RegexMatchStatement.struct_class = Types::RegexMatchStatement

    RegexPatternSet.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, location_name: "Name"))
    RegexPatternSet.add_member(:id, Shapes::ShapeRef.new(shape: EntityId, location_name: "Id"))
    RegexPatternSet.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ARN"))
    RegexPatternSet.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "Description"))
    RegexPatternSet.add_member(:regular_expression_list, Shapes::ShapeRef.new(shape: RegularExpressionList, location_name: "RegularExpressionList"))
    RegexPatternSet.struct_class = Types::RegexPatternSet

    RegexPatternSetReferenceStatement.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ARN"))
    RegexPatternSetReferenceStatement.add_member(:field_to_match, Shapes::ShapeRef.new(shape: FieldToMatch, required: true, location_name: "FieldToMatch"))
    RegexPatternSetReferenceStatement.add_member(:text_transformations, Shapes::ShapeRef.new(shape: TextTransformations, required: true, location_name: "TextTransformations"))
    RegexPatternSetReferenceStatement.struct_class = Types::RegexPatternSetReferenceStatement

    RegexPatternSetSummaries.member = Shapes::ShapeRef.new(shape: RegexPatternSetSummary)

    RegexPatternSetSummary.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, location_name: "Name"))
    RegexPatternSetSummary.add_member(:id, Shapes::ShapeRef.new(shape: EntityId, location_name: "Id"))
    RegexPatternSetSummary.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "Description"))
    RegexPatternSetSummary.add_member(:lock_token, Shapes::ShapeRef.new(shape: LockToken, location_name: "LockToken"))
    RegexPatternSetSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ARN"))
    RegexPatternSetSummary.struct_class = Types::RegexPatternSetSummary

    RegularExpressionList.member = Shapes::ShapeRef.new(shape: Regex)

    ReleaseSummaries.member = Shapes::ShapeRef.new(shape: ReleaseSummary)

    ReleaseSummary.add_member(:release_version, Shapes::ShapeRef.new(shape: VersionKeyString, location_name: "ReleaseVersion"))
    ReleaseSummary.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    ReleaseSummary.struct_class = Types::ReleaseSummary

    RequestBody.key = Shapes::ShapeRef.new(shape: AssociatedResourceType)
    RequestBody.value = Shapes::ShapeRef.new(shape: RequestBodyAssociatedResourceTypeConfig)

    RequestBodyAssociatedResourceTypeConfig.add_member(:default_size_inspection_limit, Shapes::ShapeRef.new(shape: SizeInspectionLimit, required: true, location_name: "DefaultSizeInspectionLimit"))
    RequestBodyAssociatedResourceTypeConfig.struct_class = Types::RequestBodyAssociatedResourceTypeConfig

    RequestInspection.add_member(:payload_type, Shapes::ShapeRef.new(shape: PayloadType, required: true, location_name: "PayloadType"))
    RequestInspection.add_member(:username_field, Shapes::ShapeRef.new(shape: UsernameField, required: true, location_name: "UsernameField"))
    RequestInspection.add_member(:password_field, Shapes::ShapeRef.new(shape: PasswordField, required: true, location_name: "PasswordField"))
    RequestInspection.struct_class = Types::RequestInspection

    RequestInspectionACFP.add_member(:payload_type, Shapes::ShapeRef.new(shape: PayloadType, required: true, location_name: "PayloadType"))
    RequestInspectionACFP.add_member(:username_field, Shapes::ShapeRef.new(shape: UsernameField, location_name: "UsernameField"))
    RequestInspectionACFP.add_member(:password_field, Shapes::ShapeRef.new(shape: PasswordField, location_name: "PasswordField"))
    RequestInspectionACFP.add_member(:email_field, Shapes::ShapeRef.new(shape: EmailField, location_name: "EmailField"))
    RequestInspectionACFP.add_member(:phone_number_fields, Shapes::ShapeRef.new(shape: PhoneNumberFields, location_name: "PhoneNumberFields"))
    RequestInspectionACFP.add_member(:address_fields, Shapes::ShapeRef.new(shape: AddressFields, location_name: "AddressFields"))
    RequestInspectionACFP.struct_class = Types::RequestInspectionACFP

    ResourceArns.member = Shapes::ShapeRef.new(shape: ResourceArn)

    ResponseInspection.add_member(:status_code, Shapes::ShapeRef.new(shape: ResponseInspectionStatusCode, location_name: "StatusCode"))
    ResponseInspection.add_member(:header, Shapes::ShapeRef.new(shape: ResponseInspectionHeader, location_name: "Header"))
    ResponseInspection.add_member(:body_contains, Shapes::ShapeRef.new(shape: ResponseInspectionBodyContains, location_name: "BodyContains"))
    ResponseInspection.add_member(:json, Shapes::ShapeRef.new(shape: ResponseInspectionJson, location_name: "Json"))
    ResponseInspection.struct_class = Types::ResponseInspection

    ResponseInspectionBodyContains.add_member(:success_strings, Shapes::ShapeRef.new(shape: ResponseInspectionBodyContainsSuccessStrings, required: true, location_name: "SuccessStrings"))
    ResponseInspectionBodyContains.add_member(:failure_strings, Shapes::ShapeRef.new(shape: ResponseInspectionBodyContainsFailureStrings, required: true, location_name: "FailureStrings"))
    ResponseInspectionBodyContains.struct_class = Types::ResponseInspectionBodyContains

    ResponseInspectionBodyContainsFailureStrings.member = Shapes::ShapeRef.new(shape: FailureValue)

    ResponseInspectionBodyContainsSuccessStrings.member = Shapes::ShapeRef.new(shape: SuccessValue)

    ResponseInspectionHeader.add_member(:name, Shapes::ShapeRef.new(shape: ResponseInspectionHeaderName, required: true, location_name: "Name"))
    ResponseInspectionHeader.add_member(:success_values, Shapes::ShapeRef.new(shape: ResponseInspectionHeaderSuccessValues, required: true, location_name: "SuccessValues"))
    ResponseInspectionHeader.add_member(:failure_values, Shapes::ShapeRef.new(shape: ResponseInspectionHeaderFailureValues, required: true, location_name: "FailureValues"))
    ResponseInspectionHeader.struct_class = Types::ResponseInspectionHeader

    ResponseInspectionHeaderFailureValues.member = Shapes::ShapeRef.new(shape: FailureValue)

    ResponseInspectionHeaderSuccessValues.member = Shapes::ShapeRef.new(shape: SuccessValue)

    ResponseInspectionJson.add_member(:identifier, Shapes::ShapeRef.new(shape: FieldIdentifier, required: true, location_name: "Identifier"))
    ResponseInspectionJson.add_member(:success_values, Shapes::ShapeRef.new(shape: ResponseInspectionJsonSuccessValues, required: true, location_name: "SuccessValues"))
    ResponseInspectionJson.add_member(:failure_values, Shapes::ShapeRef.new(shape: ResponseInspectionJsonFailureValues, required: true, location_name: "FailureValues"))
    ResponseInspectionJson.struct_class = Types::ResponseInspectionJson

    ResponseInspectionJsonFailureValues.member = Shapes::ShapeRef.new(shape: FailureValue)

    ResponseInspectionJsonSuccessValues.member = Shapes::ShapeRef.new(shape: SuccessValue)

    ResponseInspectionStatusCode.add_member(:success_codes, Shapes::ShapeRef.new(shape: ResponseInspectionStatusCodeSuccessCodes, required: true, location_name: "SuccessCodes"))
    ResponseInspectionStatusCode.add_member(:failure_codes, Shapes::ShapeRef.new(shape: ResponseInspectionStatusCodeFailureCodes, required: true, location_name: "FailureCodes"))
    ResponseInspectionStatusCode.struct_class = Types::ResponseInspectionStatusCode

    ResponseInspectionStatusCodeFailureCodes.member = Shapes::ShapeRef.new(shape: FailureCode)

    ResponseInspectionStatusCodeSuccessCodes.member = Shapes::ShapeRef.new(shape: SuccessCode)

    Rule.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    Rule.add_member(:priority, Shapes::ShapeRef.new(shape: RulePriority, required: true, location_name: "Priority"))
    Rule.add_member(:statement, Shapes::ShapeRef.new(shape: Statement, required: true, location_name: "Statement"))
    Rule.add_member(:action, Shapes::ShapeRef.new(shape: RuleAction, location_name: "Action"))
    Rule.add_member(:override_action, Shapes::ShapeRef.new(shape: OverrideAction, location_name: "OverrideAction"))
    Rule.add_member(:rule_labels, Shapes::ShapeRef.new(shape: Labels, location_name: "RuleLabels"))
    Rule.add_member(:visibility_config, Shapes::ShapeRef.new(shape: VisibilityConfig, required: true, location_name: "VisibilityConfig"))
    Rule.add_member(:captcha_config, Shapes::ShapeRef.new(shape: CaptchaConfig, location_name: "CaptchaConfig"))
    Rule.add_member(:challenge_config, Shapes::ShapeRef.new(shape: ChallengeConfig, location_name: "ChallengeConfig"))
    Rule.struct_class = Types::Rule

    RuleAction.add_member(:block, Shapes::ShapeRef.new(shape: BlockAction, location_name: "Block"))
    RuleAction.add_member(:allow, Shapes::ShapeRef.new(shape: AllowAction, location_name: "Allow"))
    RuleAction.add_member(:count, Shapes::ShapeRef.new(shape: CountAction, location_name: "Count"))
    RuleAction.add_member(:captcha, Shapes::ShapeRef.new(shape: CaptchaAction, location_name: "Captcha"))
    RuleAction.add_member(:challenge, Shapes::ShapeRef.new(shape: ChallengeAction, location_name: "Challenge"))
    RuleAction.struct_class = Types::RuleAction

    RuleActionOverride.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    RuleActionOverride.add_member(:action_to_use, Shapes::ShapeRef.new(shape: RuleAction, required: true, location_name: "ActionToUse"))
    RuleActionOverride.struct_class = Types::RuleActionOverride

    RuleActionOverrides.member = Shapes::ShapeRef.new(shape: RuleActionOverride)

    RuleGroup.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    RuleGroup.add_member(:id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "Id"))
    RuleGroup.add_member(:capacity, Shapes::ShapeRef.new(shape: CapacityUnit, required: true, location_name: "Capacity"))
    RuleGroup.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ARN"))
    RuleGroup.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "Description"))
    RuleGroup.add_member(:rules, Shapes::ShapeRef.new(shape: Rules, location_name: "Rules"))
    RuleGroup.add_member(:visibility_config, Shapes::ShapeRef.new(shape: VisibilityConfig, required: true, location_name: "VisibilityConfig"))
    RuleGroup.add_member(:label_namespace, Shapes::ShapeRef.new(shape: LabelName, location_name: "LabelNamespace"))
    RuleGroup.add_member(:custom_response_bodies, Shapes::ShapeRef.new(shape: CustomResponseBodies, location_name: "CustomResponseBodies"))
    RuleGroup.add_member(:available_labels, Shapes::ShapeRef.new(shape: LabelSummaries, location_name: "AvailableLabels"))
    RuleGroup.add_member(:consumed_labels, Shapes::ShapeRef.new(shape: LabelSummaries, location_name: "ConsumedLabels"))
    RuleGroup.struct_class = Types::RuleGroup

    RuleGroupReferenceStatement.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ARN"))
    RuleGroupReferenceStatement.add_member(:excluded_rules, Shapes::ShapeRef.new(shape: ExcludedRules, location_name: "ExcludedRules"))
    RuleGroupReferenceStatement.add_member(:rule_action_overrides, Shapes::ShapeRef.new(shape: RuleActionOverrides, location_name: "RuleActionOverrides"))
    RuleGroupReferenceStatement.struct_class = Types::RuleGroupReferenceStatement

    RuleGroupSummaries.member = Shapes::ShapeRef.new(shape: RuleGroupSummary)

    RuleGroupSummary.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, location_name: "Name"))
    RuleGroupSummary.add_member(:id, Shapes::ShapeRef.new(shape: EntityId, location_name: "Id"))
    RuleGroupSummary.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "Description"))
    RuleGroupSummary.add_member(:lock_token, Shapes::ShapeRef.new(shape: LockToken, location_name: "LockToken"))
    RuleGroupSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ARN"))
    RuleGroupSummary.struct_class = Types::RuleGroupSummary

    RuleSummaries.member = Shapes::ShapeRef.new(shape: RuleSummary)

    RuleSummary.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, location_name: "Name"))
    RuleSummary.add_member(:action, Shapes::ShapeRef.new(shape: RuleAction, location_name: "Action"))
    RuleSummary.struct_class = Types::RuleSummary

    Rules.member = Shapes::ShapeRef.new(shape: Rule)

    SampledHTTPRequest.add_member(:request, Shapes::ShapeRef.new(shape: HTTPRequest, required: true, location_name: "Request"))
    SampledHTTPRequest.add_member(:weight, Shapes::ShapeRef.new(shape: SampleWeight, required: true, location_name: "Weight"))
    SampledHTTPRequest.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    SampledHTTPRequest.add_member(:action, Shapes::ShapeRef.new(shape: Action, location_name: "Action"))
    SampledHTTPRequest.add_member(:rule_name_within_rule_group, Shapes::ShapeRef.new(shape: EntityName, location_name: "RuleNameWithinRuleGroup"))
    SampledHTTPRequest.add_member(:request_headers_inserted, Shapes::ShapeRef.new(shape: HTTPHeaders, location_name: "RequestHeadersInserted"))
    SampledHTTPRequest.add_member(:response_code_sent, Shapes::ShapeRef.new(shape: ResponseStatusCode, location_name: "ResponseCodeSent"))
    SampledHTTPRequest.add_member(:labels, Shapes::ShapeRef.new(shape: Labels, location_name: "Labels"))
    SampledHTTPRequest.add_member(:captcha_response, Shapes::ShapeRef.new(shape: CaptchaResponse, location_name: "CaptchaResponse"))
    SampledHTTPRequest.add_member(:challenge_response, Shapes::ShapeRef.new(shape: ChallengeResponse, location_name: "ChallengeResponse"))
    SampledHTTPRequest.add_member(:overridden_action, Shapes::ShapeRef.new(shape: Action, location_name: "OverriddenAction"))
    SampledHTTPRequest.struct_class = Types::SampledHTTPRequest

    SampledHTTPRequests.member = Shapes::ShapeRef.new(shape: SampledHTTPRequest)

    SingleHeader.add_member(:name, Shapes::ShapeRef.new(shape: FieldToMatchData, required: true, location_name: "Name"))
    SingleHeader.struct_class = Types::SingleHeader

    SingleQueryArgument.add_member(:name, Shapes::ShapeRef.new(shape: FieldToMatchData, required: true, location_name: "Name"))
    SingleQueryArgument.struct_class = Types::SingleQueryArgument

    SizeConstraintStatement.add_member(:field_to_match, Shapes::ShapeRef.new(shape: FieldToMatch, required: true, location_name: "FieldToMatch"))
    SizeConstraintStatement.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperator, required: true, location_name: "ComparisonOperator"))
    SizeConstraintStatement.add_member(:size, Shapes::ShapeRef.new(shape: Size, required: true, location_name: "Size"))
    SizeConstraintStatement.add_member(:text_transformations, Shapes::ShapeRef.new(shape: TextTransformations, required: true, location_name: "TextTransformations"))
    SizeConstraintStatement.struct_class = Types::SizeConstraintStatement

    SqliMatchStatement.add_member(:field_to_match, Shapes::ShapeRef.new(shape: FieldToMatch, required: true, location_name: "FieldToMatch"))
    SqliMatchStatement.add_member(:text_transformations, Shapes::ShapeRef.new(shape: TextTransformations, required: true, location_name: "TextTransformations"))
    SqliMatchStatement.add_member(:sensitivity_level, Shapes::ShapeRef.new(shape: SensitivityLevel, location_name: "SensitivityLevel"))
    SqliMatchStatement.struct_class = Types::SqliMatchStatement

    Statement.add_member(:byte_match_statement, Shapes::ShapeRef.new(shape: ByteMatchStatement, location_name: "ByteMatchStatement"))
    Statement.add_member(:sqli_match_statement, Shapes::ShapeRef.new(shape: SqliMatchStatement, location_name: "SqliMatchStatement"))
    Statement.add_member(:xss_match_statement, Shapes::ShapeRef.new(shape: XssMatchStatement, location_name: "XssMatchStatement"))
    Statement.add_member(:size_constraint_statement, Shapes::ShapeRef.new(shape: SizeConstraintStatement, location_name: "SizeConstraintStatement"))
    Statement.add_member(:geo_match_statement, Shapes::ShapeRef.new(shape: GeoMatchStatement, location_name: "GeoMatchStatement"))
    Statement.add_member(:rule_group_reference_statement, Shapes::ShapeRef.new(shape: RuleGroupReferenceStatement, location_name: "RuleGroupReferenceStatement"))
    Statement.add_member(:ip_set_reference_statement, Shapes::ShapeRef.new(shape: IPSetReferenceStatement, location_name: "IPSetReferenceStatement"))
    Statement.add_member(:regex_pattern_set_reference_statement, Shapes::ShapeRef.new(shape: RegexPatternSetReferenceStatement, location_name: "RegexPatternSetReferenceStatement"))
    Statement.add_member(:rate_based_statement, Shapes::ShapeRef.new(shape: RateBasedStatement, location_name: "RateBasedStatement"))
    Statement.add_member(:and_statement, Shapes::ShapeRef.new(shape: AndStatement, location_name: "AndStatement"))
    Statement.add_member(:or_statement, Shapes::ShapeRef.new(shape: OrStatement, location_name: "OrStatement"))
    Statement.add_member(:not_statement, Shapes::ShapeRef.new(shape: NotStatement, location_name: "NotStatement"))
    Statement.add_member(:managed_rule_group_statement, Shapes::ShapeRef.new(shape: ManagedRuleGroupStatement, location_name: "ManagedRuleGroupStatement"))
    Statement.add_member(:label_match_statement, Shapes::ShapeRef.new(shape: LabelMatchStatement, location_name: "LabelMatchStatement"))
    Statement.add_member(:regex_match_statement, Shapes::ShapeRef.new(shape: RegexMatchStatement, location_name: "RegexMatchStatement"))
    Statement.struct_class = Types::Statement

    Statements.member = Shapes::ShapeRef.new(shape: Statement)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagInfoForResource.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceARN"))
    TagInfoForResource.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    TagInfoForResource.struct_class = Types::TagInfoForResource

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TextTransformation.add_member(:priority, Shapes::ShapeRef.new(shape: TextTransformationPriority, required: true, location_name: "Priority"))
    TextTransformation.add_member(:type, Shapes::ShapeRef.new(shape: TextTransformationType, required: true, location_name: "Type"))
    TextTransformation.struct_class = Types::TextTransformation

    TextTransformations.member = Shapes::ShapeRef.new(shape: TextTransformation)

    TimeWindow.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    TimeWindow.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndTime"))
    TimeWindow.struct_class = Types::TimeWindow

    TokenDomains.member = Shapes::ShapeRef.new(shape: TokenDomain)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateIPSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    UpdateIPSetRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    UpdateIPSetRequest.add_member(:id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "Id"))
    UpdateIPSetRequest.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "Description"))
    UpdateIPSetRequest.add_member(:addresses, Shapes::ShapeRef.new(shape: IPAddresses, required: true, location_name: "Addresses"))
    UpdateIPSetRequest.add_member(:lock_token, Shapes::ShapeRef.new(shape: LockToken, required: true, location_name: "LockToken"))
    UpdateIPSetRequest.struct_class = Types::UpdateIPSetRequest

    UpdateIPSetResponse.add_member(:next_lock_token, Shapes::ShapeRef.new(shape: LockToken, location_name: "NextLockToken"))
    UpdateIPSetResponse.struct_class = Types::UpdateIPSetResponse

    UpdateManagedRuleSetVersionExpiryDateRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    UpdateManagedRuleSetVersionExpiryDateRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    UpdateManagedRuleSetVersionExpiryDateRequest.add_member(:id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "Id"))
    UpdateManagedRuleSetVersionExpiryDateRequest.add_member(:lock_token, Shapes::ShapeRef.new(shape: LockToken, required: true, location_name: "LockToken"))
    UpdateManagedRuleSetVersionExpiryDateRequest.add_member(:version_to_expire, Shapes::ShapeRef.new(shape: VersionKeyString, required: true, location_name: "VersionToExpire"))
    UpdateManagedRuleSetVersionExpiryDateRequest.add_member(:expiry_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ExpiryTimestamp"))
    UpdateManagedRuleSetVersionExpiryDateRequest.struct_class = Types::UpdateManagedRuleSetVersionExpiryDateRequest

    UpdateManagedRuleSetVersionExpiryDateResponse.add_member(:expiring_version, Shapes::ShapeRef.new(shape: VersionKeyString, location_name: "ExpiringVersion"))
    UpdateManagedRuleSetVersionExpiryDateResponse.add_member(:expiry_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpiryTimestamp"))
    UpdateManagedRuleSetVersionExpiryDateResponse.add_member(:next_lock_token, Shapes::ShapeRef.new(shape: LockToken, location_name: "NextLockToken"))
    UpdateManagedRuleSetVersionExpiryDateResponse.struct_class = Types::UpdateManagedRuleSetVersionExpiryDateResponse

    UpdateRegexPatternSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    UpdateRegexPatternSetRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    UpdateRegexPatternSetRequest.add_member(:id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "Id"))
    UpdateRegexPatternSetRequest.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "Description"))
    UpdateRegexPatternSetRequest.add_member(:regular_expression_list, Shapes::ShapeRef.new(shape: RegularExpressionList, required: true, location_name: "RegularExpressionList"))
    UpdateRegexPatternSetRequest.add_member(:lock_token, Shapes::ShapeRef.new(shape: LockToken, required: true, location_name: "LockToken"))
    UpdateRegexPatternSetRequest.struct_class = Types::UpdateRegexPatternSetRequest

    UpdateRegexPatternSetResponse.add_member(:next_lock_token, Shapes::ShapeRef.new(shape: LockToken, location_name: "NextLockToken"))
    UpdateRegexPatternSetResponse.struct_class = Types::UpdateRegexPatternSetResponse

    UpdateRuleGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    UpdateRuleGroupRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    UpdateRuleGroupRequest.add_member(:id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "Id"))
    UpdateRuleGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "Description"))
    UpdateRuleGroupRequest.add_member(:rules, Shapes::ShapeRef.new(shape: Rules, location_name: "Rules"))
    UpdateRuleGroupRequest.add_member(:visibility_config, Shapes::ShapeRef.new(shape: VisibilityConfig, required: true, location_name: "VisibilityConfig"))
    UpdateRuleGroupRequest.add_member(:lock_token, Shapes::ShapeRef.new(shape: LockToken, required: true, location_name: "LockToken"))
    UpdateRuleGroupRequest.add_member(:custom_response_bodies, Shapes::ShapeRef.new(shape: CustomResponseBodies, location_name: "CustomResponseBodies"))
    UpdateRuleGroupRequest.struct_class = Types::UpdateRuleGroupRequest

    UpdateRuleGroupResponse.add_member(:next_lock_token, Shapes::ShapeRef.new(shape: LockToken, location_name: "NextLockToken"))
    UpdateRuleGroupResponse.struct_class = Types::UpdateRuleGroupResponse

    UpdateWebACLRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    UpdateWebACLRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    UpdateWebACLRequest.add_member(:id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "Id"))
    UpdateWebACLRequest.add_member(:default_action, Shapes::ShapeRef.new(shape: DefaultAction, required: true, location_name: "DefaultAction"))
    UpdateWebACLRequest.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "Description"))
    UpdateWebACLRequest.add_member(:rules, Shapes::ShapeRef.new(shape: Rules, location_name: "Rules"))
    UpdateWebACLRequest.add_member(:visibility_config, Shapes::ShapeRef.new(shape: VisibilityConfig, required: true, location_name: "VisibilityConfig"))
    UpdateWebACLRequest.add_member(:lock_token, Shapes::ShapeRef.new(shape: LockToken, required: true, location_name: "LockToken"))
    UpdateWebACLRequest.add_member(:custom_response_bodies, Shapes::ShapeRef.new(shape: CustomResponseBodies, location_name: "CustomResponseBodies"))
    UpdateWebACLRequest.add_member(:captcha_config, Shapes::ShapeRef.new(shape: CaptchaConfig, location_name: "CaptchaConfig"))
    UpdateWebACLRequest.add_member(:challenge_config, Shapes::ShapeRef.new(shape: ChallengeConfig, location_name: "ChallengeConfig"))
    UpdateWebACLRequest.add_member(:token_domains, Shapes::ShapeRef.new(shape: TokenDomains, location_name: "TokenDomains"))
    UpdateWebACLRequest.add_member(:association_config, Shapes::ShapeRef.new(shape: AssociationConfig, location_name: "AssociationConfig"))
    UpdateWebACLRequest.struct_class = Types::UpdateWebACLRequest

    UpdateWebACLResponse.add_member(:next_lock_token, Shapes::ShapeRef.new(shape: LockToken, location_name: "NextLockToken"))
    UpdateWebACLResponse.struct_class = Types::UpdateWebACLResponse

    UriPath.struct_class = Types::UriPath

    UsernameField.add_member(:identifier, Shapes::ShapeRef.new(shape: FieldIdentifier, required: true, location_name: "Identifier"))
    UsernameField.struct_class = Types::UsernameField

    VersionToPublish.add_member(:associated_rule_group_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "AssociatedRuleGroupArn"))
    VersionToPublish.add_member(:forecasted_lifetime, Shapes::ShapeRef.new(shape: TimeWindowDay, location_name: "ForecastedLifetime"))
    VersionToPublish.struct_class = Types::VersionToPublish

    VersionsToPublish.key = Shapes::ShapeRef.new(shape: VersionKeyString)
    VersionsToPublish.value = Shapes::ShapeRef.new(shape: VersionToPublish)

    VisibilityConfig.add_member(:sampled_requests_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "SampledRequestsEnabled"))
    VisibilityConfig.add_member(:cloud_watch_metrics_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "CloudWatchMetricsEnabled"))
    VisibilityConfig.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    VisibilityConfig.struct_class = Types::VisibilityConfig

    WAFAssociatedItemException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    WAFAssociatedItemException.struct_class = Types::WAFAssociatedItemException

    WAFConfigurationWarningException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    WAFConfigurationWarningException.struct_class = Types::WAFConfigurationWarningException

    WAFDuplicateItemException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    WAFDuplicateItemException.struct_class = Types::WAFDuplicateItemException

    WAFExpiredManagedRuleGroupVersionException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    WAFExpiredManagedRuleGroupVersionException.struct_class = Types::WAFExpiredManagedRuleGroupVersionException

    WAFInternalErrorException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    WAFInternalErrorException.struct_class = Types::WAFInternalErrorException

    WAFInvalidOperationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    WAFInvalidOperationException.struct_class = Types::WAFInvalidOperationException

    WAFInvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    WAFInvalidParameterException.add_member(:field, Shapes::ShapeRef.new(shape: ParameterExceptionField, location_name: "Field"))
    WAFInvalidParameterException.add_member(:parameter, Shapes::ShapeRef.new(shape: ParameterExceptionParameter, location_name: "Parameter"))
    WAFInvalidParameterException.add_member(:reason, Shapes::ShapeRef.new(shape: ErrorReason, location_name: "Reason"))
    WAFInvalidParameterException.struct_class = Types::WAFInvalidParameterException

    WAFInvalidPermissionPolicyException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    WAFInvalidPermissionPolicyException.struct_class = Types::WAFInvalidPermissionPolicyException

    WAFInvalidResourceException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    WAFInvalidResourceException.struct_class = Types::WAFInvalidResourceException

    WAFLimitsExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    WAFLimitsExceededException.struct_class = Types::WAFLimitsExceededException

    WAFLogDestinationPermissionIssueException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    WAFLogDestinationPermissionIssueException.struct_class = Types::WAFLogDestinationPermissionIssueException

    WAFNonexistentItemException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    WAFNonexistentItemException.struct_class = Types::WAFNonexistentItemException

    WAFOptimisticLockException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    WAFOptimisticLockException.struct_class = Types::WAFOptimisticLockException

    WAFServiceLinkedRoleErrorException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    WAFServiceLinkedRoleErrorException.struct_class = Types::WAFServiceLinkedRoleErrorException

    WAFSubscriptionNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    WAFSubscriptionNotFoundException.struct_class = Types::WAFSubscriptionNotFoundException

    WAFTagOperationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    WAFTagOperationException.struct_class = Types::WAFTagOperationException

    WAFTagOperationInternalErrorException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    WAFTagOperationInternalErrorException.struct_class = Types::WAFTagOperationInternalErrorException

    WAFUnavailableEntityException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    WAFUnavailableEntityException.struct_class = Types::WAFUnavailableEntityException

    WAFUnsupportedAggregateKeyTypeException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    WAFUnsupportedAggregateKeyTypeException.struct_class = Types::WAFUnsupportedAggregateKeyTypeException

    WebACL.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    WebACL.add_member(:id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "Id"))
    WebACL.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ARN"))
    WebACL.add_member(:default_action, Shapes::ShapeRef.new(shape: DefaultAction, required: true, location_name: "DefaultAction"))
    WebACL.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "Description"))
    WebACL.add_member(:rules, Shapes::ShapeRef.new(shape: Rules, location_name: "Rules"))
    WebACL.add_member(:visibility_config, Shapes::ShapeRef.new(shape: VisibilityConfig, required: true, location_name: "VisibilityConfig"))
    WebACL.add_member(:capacity, Shapes::ShapeRef.new(shape: ConsumedCapacity, location_name: "Capacity"))
    WebACL.add_member(:pre_process_firewall_manager_rule_groups, Shapes::ShapeRef.new(shape: FirewallManagerRuleGroups, location_name: "PreProcessFirewallManagerRuleGroups"))
    WebACL.add_member(:post_process_firewall_manager_rule_groups, Shapes::ShapeRef.new(shape: FirewallManagerRuleGroups, location_name: "PostProcessFirewallManagerRuleGroups"))
    WebACL.add_member(:managed_by_firewall_manager, Shapes::ShapeRef.new(shape: Boolean, location_name: "ManagedByFirewallManager"))
    WebACL.add_member(:label_namespace, Shapes::ShapeRef.new(shape: LabelName, location_name: "LabelNamespace"))
    WebACL.add_member(:custom_response_bodies, Shapes::ShapeRef.new(shape: CustomResponseBodies, location_name: "CustomResponseBodies"))
    WebACL.add_member(:captcha_config, Shapes::ShapeRef.new(shape: CaptchaConfig, location_name: "CaptchaConfig"))
    WebACL.add_member(:challenge_config, Shapes::ShapeRef.new(shape: ChallengeConfig, location_name: "ChallengeConfig"))
    WebACL.add_member(:token_domains, Shapes::ShapeRef.new(shape: TokenDomains, location_name: "TokenDomains"))
    WebACL.add_member(:association_config, Shapes::ShapeRef.new(shape: AssociationConfig, location_name: "AssociationConfig"))
    WebACL.struct_class = Types::WebACL

    WebACLSummaries.member = Shapes::ShapeRef.new(shape: WebACLSummary)

    WebACLSummary.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, location_name: "Name"))
    WebACLSummary.add_member(:id, Shapes::ShapeRef.new(shape: EntityId, location_name: "Id"))
    WebACLSummary.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "Description"))
    WebACLSummary.add_member(:lock_token, Shapes::ShapeRef.new(shape: LockToken, location_name: "LockToken"))
    WebACLSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ARN"))
    WebACLSummary.struct_class = Types::WebACLSummary

    XssMatchStatement.add_member(:field_to_match, Shapes::ShapeRef.new(shape: FieldToMatch, required: true, location_name: "FieldToMatch"))
    XssMatchStatement.add_member(:text_transformations, Shapes::ShapeRef.new(shape: TextTransformations, required: true, location_name: "TextTransformations"))
    XssMatchStatement.struct_class = Types::XssMatchStatement


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-07-29"

      api.metadata = {
        "apiVersion" => "2019-07-29",
        "endpointPrefix" => "wafv2",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "WAFV2",
        "serviceFullName" => "AWS WAFV2",
        "serviceId" => "WAFV2",
        "signatureVersion" => "v4",
        "targetPrefix" => "AWSWAF_20190729",
        "uid" => "wafv2-2019-07-29",
      }

      api.add_operation(:associate_web_acl, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateWebACL"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateWebACLRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateWebACLResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFUnavailableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:check_capacity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CheckCapacity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CheckCapacityRequest)
        o.output = Shapes::ShapeRef.new(shape: CheckCapacityResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidResourceException)
        o.errors << Shapes::ShapeRef.new(shape: WAFUnavailableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: WAFSubscriptionNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: WAFExpiredManagedRuleGroupVersionException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:create_api_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAPIKey"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAPIKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAPIKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
      end)

      api.add_operation(:create_ip_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIPSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateIPSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateIPSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFDuplicateItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFOptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        o.errors << Shapes::ShapeRef.new(shape: WAFTagOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:create_regex_pattern_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRegexPatternSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRegexPatternSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRegexPatternSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFDuplicateItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFOptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        o.errors << Shapes::ShapeRef.new(shape: WAFTagOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:create_rule_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRuleGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRuleGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRuleGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFDuplicateItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFOptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        o.errors << Shapes::ShapeRef.new(shape: WAFUnavailableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: WAFTagOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFSubscriptionNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:create_web_acl, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWebACL"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateWebACLRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWebACLResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFDuplicateItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFOptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidResourceException)
        o.errors << Shapes::ShapeRef.new(shape: WAFUnavailableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFTagOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFSubscriptionNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFConfigurationWarningException)
        o.errors << Shapes::ShapeRef.new(shape: WAFExpiredManagedRuleGroupVersionException)
      end)

      api.add_operation(:delete_firewall_manager_rule_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFirewallManagerRuleGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFirewallManagerRuleGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFirewallManagerRuleGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFOptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:delete_ip_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIPSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteIPSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteIPSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFOptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: WAFAssociatedItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFTagOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:delete_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLoggingConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFOptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:delete_permission_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePermissionPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePermissionPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePermissionPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
      end)

      api.add_operation(:delete_regex_pattern_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRegexPatternSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRegexPatternSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRegexPatternSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFOptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: WAFAssociatedItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFTagOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:delete_rule_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRuleGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRuleGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRuleGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFOptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: WAFAssociatedItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFTagOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:delete_web_acl, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWebACL"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteWebACLRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWebACLResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFOptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: WAFAssociatedItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFTagOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:describe_all_managed_products, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAllManagedProducts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAllManagedProductsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAllManagedProductsResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
      end)

      api.add_operation(:describe_managed_products_by_vendor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeManagedProductsByVendor"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeManagedProductsByVendorRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeManagedProductsByVendorResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
      end)

      api.add_operation(:describe_managed_rule_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeManagedRuleGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeManagedRuleGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeManagedRuleGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidResourceException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFExpiredManagedRuleGroupVersionException)
      end)

      api.add_operation(:disassociate_web_acl, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateWebACL"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateWebACLRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateWebACLResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:generate_mobile_sdk_release_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GenerateMobileSdkReleaseUrl"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GenerateMobileSdkReleaseUrlRequest)
        o.output = Shapes::ShapeRef.new(shape: GenerateMobileSdkReleaseUrlResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:get_decrypted_api_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDecryptedAPIKey"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDecryptedAPIKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDecryptedAPIKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidResourceException)
      end)

      api.add_operation(:get_ip_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIPSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetIPSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIPSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:get_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLoggingConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:get_managed_rule_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetManagedRuleSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetManagedRuleSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetManagedRuleSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:get_mobile_sdk_release, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMobileSdkRelease"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMobileSdkReleaseRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMobileSdkReleaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:get_permission_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPermissionPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPermissionPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPermissionPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
      end)

      api.add_operation(:get_rate_based_statement_managed_keys, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRateBasedStatementManagedKeys"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRateBasedStatementManagedKeysRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRateBasedStatementManagedKeysResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFUnsupportedAggregateKeyTypeException)
      end)

      api.add_operation(:get_regex_pattern_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRegexPatternSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRegexPatternSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRegexPatternSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:get_rule_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRuleGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRuleGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRuleGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:get_sampled_requests, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSampledRequests"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSampledRequestsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSampledRequestsResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
      end)

      api.add_operation(:get_web_acl, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWebACL"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetWebACLRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWebACLResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:get_web_acl_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWebACLForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetWebACLForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWebACLForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFUnavailableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:list_api_keys, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAPIKeys"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAPIKeysRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAPIKeysResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidResourceException)
      end)

      api.add_operation(:list_available_managed_rule_group_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAvailableManagedRuleGroupVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAvailableManagedRuleGroupVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAvailableManagedRuleGroupVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:list_available_managed_rule_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAvailableManagedRuleGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAvailableManagedRuleGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAvailableManagedRuleGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:list_ip_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIPSets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListIPSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIPSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:list_logging_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLoggingConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLoggingConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLoggingConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:list_managed_rule_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListManagedRuleSets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListManagedRuleSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListManagedRuleSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:list_mobile_sdk_releases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMobileSdkReleases"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListMobileSdkReleasesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMobileSdkReleasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:list_regex_pattern_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRegexPatternSets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRegexPatternSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRegexPatternSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:list_resources_for_web_acl, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourcesForWebACL"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResourcesForWebACLRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourcesForWebACLResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:list_rule_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRuleGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRuleGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRuleGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFTagOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:list_web_acls, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWebACLs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListWebACLsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWebACLsResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:put_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutLoggingConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFOptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: WAFServiceLinkedRoleErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLogDestinationPermissionIssueException)
      end)

      api.add_operation(:put_managed_rule_set_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutManagedRuleSetVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutManagedRuleSetVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutManagedRuleSetVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFOptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:put_permission_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutPermissionPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutPermissionPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutPermissionPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidPermissionPolicyException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFTagOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFTagOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFTagOperationInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:update_ip_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIPSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateIPSetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateIPSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFDuplicateItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFOptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:update_managed_rule_set_version_expiry_date, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateManagedRuleSetVersionExpiryDate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateManagedRuleSetVersionExpiryDateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateManagedRuleSetVersionExpiryDateResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFOptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:update_regex_pattern_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRegexPatternSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRegexPatternSetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRegexPatternSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFDuplicateItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFOptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
      end)

      api.add_operation(:update_rule_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRuleGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRuleGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRuleGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFDuplicateItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFOptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        o.errors << Shapes::ShapeRef.new(shape: WAFUnavailableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: WAFSubscriptionNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFConfigurationWarningException)
      end)

      api.add_operation(:update_web_acl, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWebACL"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateWebACLRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWebACLResponse)
        o.errors << Shapes::ShapeRef.new(shape: WAFInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: WAFNonexistentItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFDuplicateItemException)
        o.errors << Shapes::ShapeRef.new(shape: WAFOptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: WAFLimitsExceededException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidResourceException)
        o.errors << Shapes::ShapeRef.new(shape: WAFUnavailableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: WAFSubscriptionNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: WAFInvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: WAFExpiredManagedRuleGroupVersionException)
        o.errors << Shapes::ShapeRef.new(shape: WAFConfigurationWarningException)
      end)
    end

  end
end
