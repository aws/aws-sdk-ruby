# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Route53
  # @api private
  module ClientApi

    include Seahorse::Model

    AccountLimit = Shapes::StructureShape.new(name: 'AccountLimit')
    AccountLimitType = Shapes::StringShape.new(name: 'AccountLimitType')
    AlarmIdentifier = Shapes::StructureShape.new(name: 'AlarmIdentifier')
    AlarmName = Shapes::StringShape.new(name: 'AlarmName')
    AliasHealthEnabled = Shapes::BooleanShape.new(name: 'AliasHealthEnabled')
    AliasTarget = Shapes::StructureShape.new(name: 'AliasTarget')
    AssociateVPCComment = Shapes::StringShape.new(name: 'AssociateVPCComment')
    AssociateVPCWithHostedZoneRequest = Shapes::StructureShape.new(name: 'AssociateVPCWithHostedZoneRequest')
    AssociateVPCWithHostedZoneResponse = Shapes::StructureShape.new(name: 'AssociateVPCWithHostedZoneResponse')
    Change = Shapes::StructureShape.new(name: 'Change')
    ChangeAction = Shapes::StringShape.new(name: 'ChangeAction')
    ChangeBatch = Shapes::StructureShape.new(name: 'ChangeBatch')
    ChangeInfo = Shapes::StructureShape.new(name: 'ChangeInfo')
    ChangeResourceRecordSetsRequest = Shapes::StructureShape.new(name: 'ChangeResourceRecordSetsRequest')
    ChangeResourceRecordSetsResponse = Shapes::StructureShape.new(name: 'ChangeResourceRecordSetsResponse')
    ChangeStatus = Shapes::StringShape.new(name: 'ChangeStatus')
    ChangeTagsForResourceRequest = Shapes::StructureShape.new(name: 'ChangeTagsForResourceRequest')
    ChangeTagsForResourceResponse = Shapes::StructureShape.new(name: 'ChangeTagsForResourceResponse')
    Changes = Shapes::ListShape.new(name: 'Changes')
    CheckerIpRanges = Shapes::ListShape.new(name: 'CheckerIpRanges')
    ChildHealthCheckList = Shapes::ListShape.new(name: 'ChildHealthCheckList')
    CloudWatchAlarmConfiguration = Shapes::StructureShape.new(name: 'CloudWatchAlarmConfiguration')
    CloudWatchLogsLogGroupArn = Shapes::StringShape.new(name: 'CloudWatchLogsLogGroupArn')
    CloudWatchRegion = Shapes::StringShape.new(name: 'CloudWatchRegion')
    ComparisonOperator = Shapes::StringShape.new(name: 'ComparisonOperator')
    ConcurrentModification = Shapes::StructureShape.new(name: 'ConcurrentModification')
    ConflictingDomainExists = Shapes::StructureShape.new(name: 'ConflictingDomainExists')
    ConflictingTypes = Shapes::StructureShape.new(name: 'ConflictingTypes')
    CreateHealthCheckRequest = Shapes::StructureShape.new(name: 'CreateHealthCheckRequest')
    CreateHealthCheckResponse = Shapes::StructureShape.new(name: 'CreateHealthCheckResponse')
    CreateHostedZoneRequest = Shapes::StructureShape.new(name: 'CreateHostedZoneRequest')
    CreateHostedZoneResponse = Shapes::StructureShape.new(name: 'CreateHostedZoneResponse')
    CreateQueryLoggingConfigRequest = Shapes::StructureShape.new(name: 'CreateQueryLoggingConfigRequest')
    CreateQueryLoggingConfigResponse = Shapes::StructureShape.new(name: 'CreateQueryLoggingConfigResponse')
    CreateReusableDelegationSetRequest = Shapes::StructureShape.new(name: 'CreateReusableDelegationSetRequest')
    CreateReusableDelegationSetResponse = Shapes::StructureShape.new(name: 'CreateReusableDelegationSetResponse')
    CreateTrafficPolicyInstanceRequest = Shapes::StructureShape.new(name: 'CreateTrafficPolicyInstanceRequest')
    CreateTrafficPolicyInstanceResponse = Shapes::StructureShape.new(name: 'CreateTrafficPolicyInstanceResponse')
    CreateTrafficPolicyRequest = Shapes::StructureShape.new(name: 'CreateTrafficPolicyRequest')
    CreateTrafficPolicyResponse = Shapes::StructureShape.new(name: 'CreateTrafficPolicyResponse')
    CreateTrafficPolicyVersionRequest = Shapes::StructureShape.new(name: 'CreateTrafficPolicyVersionRequest')
    CreateTrafficPolicyVersionResponse = Shapes::StructureShape.new(name: 'CreateTrafficPolicyVersionResponse')
    CreateVPCAssociationAuthorizationRequest = Shapes::StructureShape.new(name: 'CreateVPCAssociationAuthorizationRequest')
    CreateVPCAssociationAuthorizationResponse = Shapes::StructureShape.new(name: 'CreateVPCAssociationAuthorizationResponse')
    DNSName = Shapes::StringShape.new(name: 'DNSName')
    DNSRCode = Shapes::StringShape.new(name: 'DNSRCode')
    DelegationSet = Shapes::StructureShape.new(name: 'DelegationSet')
    DelegationSetAlreadyCreated = Shapes::StructureShape.new(name: 'DelegationSetAlreadyCreated')
    DelegationSetAlreadyReusable = Shapes::StructureShape.new(name: 'DelegationSetAlreadyReusable')
    DelegationSetInUse = Shapes::StructureShape.new(name: 'DelegationSetInUse')
    DelegationSetNameServers = Shapes::ListShape.new(name: 'DelegationSetNameServers')
    DelegationSetNotAvailable = Shapes::StructureShape.new(name: 'DelegationSetNotAvailable')
    DelegationSetNotReusable = Shapes::StructureShape.new(name: 'DelegationSetNotReusable')
    DelegationSets = Shapes::ListShape.new(name: 'DelegationSets')
    DeleteHealthCheckRequest = Shapes::StructureShape.new(name: 'DeleteHealthCheckRequest')
    DeleteHealthCheckResponse = Shapes::StructureShape.new(name: 'DeleteHealthCheckResponse')
    DeleteHostedZoneRequest = Shapes::StructureShape.new(name: 'DeleteHostedZoneRequest')
    DeleteHostedZoneResponse = Shapes::StructureShape.new(name: 'DeleteHostedZoneResponse')
    DeleteQueryLoggingConfigRequest = Shapes::StructureShape.new(name: 'DeleteQueryLoggingConfigRequest')
    DeleteQueryLoggingConfigResponse = Shapes::StructureShape.new(name: 'DeleteQueryLoggingConfigResponse')
    DeleteReusableDelegationSetRequest = Shapes::StructureShape.new(name: 'DeleteReusableDelegationSetRequest')
    DeleteReusableDelegationSetResponse = Shapes::StructureShape.new(name: 'DeleteReusableDelegationSetResponse')
    DeleteTrafficPolicyInstanceRequest = Shapes::StructureShape.new(name: 'DeleteTrafficPolicyInstanceRequest')
    DeleteTrafficPolicyInstanceResponse = Shapes::StructureShape.new(name: 'DeleteTrafficPolicyInstanceResponse')
    DeleteTrafficPolicyRequest = Shapes::StructureShape.new(name: 'DeleteTrafficPolicyRequest')
    DeleteTrafficPolicyResponse = Shapes::StructureShape.new(name: 'DeleteTrafficPolicyResponse')
    DeleteVPCAssociationAuthorizationRequest = Shapes::StructureShape.new(name: 'DeleteVPCAssociationAuthorizationRequest')
    DeleteVPCAssociationAuthorizationResponse = Shapes::StructureShape.new(name: 'DeleteVPCAssociationAuthorizationResponse')
    Dimension = Shapes::StructureShape.new(name: 'Dimension')
    DimensionField = Shapes::StringShape.new(name: 'DimensionField')
    DimensionList = Shapes::ListShape.new(name: 'DimensionList')
    DisassociateVPCComment = Shapes::StringShape.new(name: 'DisassociateVPCComment')
    DisassociateVPCFromHostedZoneRequest = Shapes::StructureShape.new(name: 'DisassociateVPCFromHostedZoneRequest')
    DisassociateVPCFromHostedZoneResponse = Shapes::StructureShape.new(name: 'DisassociateVPCFromHostedZoneResponse')
    EnableSNI = Shapes::BooleanShape.new(name: 'EnableSNI')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ErrorMessages = Shapes::ListShape.new(name: 'ErrorMessages')
    EvaluationPeriods = Shapes::IntegerShape.new(name: 'EvaluationPeriods')
    FailureThreshold = Shapes::IntegerShape.new(name: 'FailureThreshold')
    FullyQualifiedDomainName = Shapes::StringShape.new(name: 'FullyQualifiedDomainName')
    GeoLocation = Shapes::StructureShape.new(name: 'GeoLocation')
    GeoLocationContinentCode = Shapes::StringShape.new(name: 'GeoLocationContinentCode')
    GeoLocationContinentName = Shapes::StringShape.new(name: 'GeoLocationContinentName')
    GeoLocationCountryCode = Shapes::StringShape.new(name: 'GeoLocationCountryCode')
    GeoLocationCountryName = Shapes::StringShape.new(name: 'GeoLocationCountryName')
    GeoLocationDetails = Shapes::StructureShape.new(name: 'GeoLocationDetails')
    GeoLocationDetailsList = Shapes::ListShape.new(name: 'GeoLocationDetailsList')
    GeoLocationSubdivisionCode = Shapes::StringShape.new(name: 'GeoLocationSubdivisionCode')
    GeoLocationSubdivisionName = Shapes::StringShape.new(name: 'GeoLocationSubdivisionName')
    GetAccountLimitRequest = Shapes::StructureShape.new(name: 'GetAccountLimitRequest')
    GetAccountLimitResponse = Shapes::StructureShape.new(name: 'GetAccountLimitResponse')
    GetChangeRequest = Shapes::StructureShape.new(name: 'GetChangeRequest')
    GetChangeResponse = Shapes::StructureShape.new(name: 'GetChangeResponse')
    GetCheckerIpRangesRequest = Shapes::StructureShape.new(name: 'GetCheckerIpRangesRequest')
    GetCheckerIpRangesResponse = Shapes::StructureShape.new(name: 'GetCheckerIpRangesResponse')
    GetGeoLocationRequest = Shapes::StructureShape.new(name: 'GetGeoLocationRequest')
    GetGeoLocationResponse = Shapes::StructureShape.new(name: 'GetGeoLocationResponse')
    GetHealthCheckCountRequest = Shapes::StructureShape.new(name: 'GetHealthCheckCountRequest')
    GetHealthCheckCountResponse = Shapes::StructureShape.new(name: 'GetHealthCheckCountResponse')
    GetHealthCheckLastFailureReasonRequest = Shapes::StructureShape.new(name: 'GetHealthCheckLastFailureReasonRequest')
    GetHealthCheckLastFailureReasonResponse = Shapes::StructureShape.new(name: 'GetHealthCheckLastFailureReasonResponse')
    GetHealthCheckRequest = Shapes::StructureShape.new(name: 'GetHealthCheckRequest')
    GetHealthCheckResponse = Shapes::StructureShape.new(name: 'GetHealthCheckResponse')
    GetHealthCheckStatusRequest = Shapes::StructureShape.new(name: 'GetHealthCheckStatusRequest')
    GetHealthCheckStatusResponse = Shapes::StructureShape.new(name: 'GetHealthCheckStatusResponse')
    GetHostedZoneCountRequest = Shapes::StructureShape.new(name: 'GetHostedZoneCountRequest')
    GetHostedZoneCountResponse = Shapes::StructureShape.new(name: 'GetHostedZoneCountResponse')
    GetHostedZoneLimitRequest = Shapes::StructureShape.new(name: 'GetHostedZoneLimitRequest')
    GetHostedZoneLimitResponse = Shapes::StructureShape.new(name: 'GetHostedZoneLimitResponse')
    GetHostedZoneRequest = Shapes::StructureShape.new(name: 'GetHostedZoneRequest')
    GetHostedZoneResponse = Shapes::StructureShape.new(name: 'GetHostedZoneResponse')
    GetQueryLoggingConfigRequest = Shapes::StructureShape.new(name: 'GetQueryLoggingConfigRequest')
    GetQueryLoggingConfigResponse = Shapes::StructureShape.new(name: 'GetQueryLoggingConfigResponse')
    GetReusableDelegationSetLimitRequest = Shapes::StructureShape.new(name: 'GetReusableDelegationSetLimitRequest')
    GetReusableDelegationSetLimitResponse = Shapes::StructureShape.new(name: 'GetReusableDelegationSetLimitResponse')
    GetReusableDelegationSetRequest = Shapes::StructureShape.new(name: 'GetReusableDelegationSetRequest')
    GetReusableDelegationSetResponse = Shapes::StructureShape.new(name: 'GetReusableDelegationSetResponse')
    GetTrafficPolicyInstanceCountRequest = Shapes::StructureShape.new(name: 'GetTrafficPolicyInstanceCountRequest')
    GetTrafficPolicyInstanceCountResponse = Shapes::StructureShape.new(name: 'GetTrafficPolicyInstanceCountResponse')
    GetTrafficPolicyInstanceRequest = Shapes::StructureShape.new(name: 'GetTrafficPolicyInstanceRequest')
    GetTrafficPolicyInstanceResponse = Shapes::StructureShape.new(name: 'GetTrafficPolicyInstanceResponse')
    GetTrafficPolicyRequest = Shapes::StructureShape.new(name: 'GetTrafficPolicyRequest')
    GetTrafficPolicyResponse = Shapes::StructureShape.new(name: 'GetTrafficPolicyResponse')
    HealthCheck = Shapes::StructureShape.new(name: 'HealthCheck')
    HealthCheckAlreadyExists = Shapes::StructureShape.new(name: 'HealthCheckAlreadyExists')
    HealthCheckConfig = Shapes::StructureShape.new(name: 'HealthCheckConfig')
    HealthCheckCount = Shapes::IntegerShape.new(name: 'HealthCheckCount')
    HealthCheckId = Shapes::StringShape.new(name: 'HealthCheckId')
    HealthCheckInUse = Shapes::StructureShape.new(name: 'HealthCheckInUse')
    HealthCheckNonce = Shapes::StringShape.new(name: 'HealthCheckNonce')
    HealthCheckObservation = Shapes::StructureShape.new(name: 'HealthCheckObservation')
    HealthCheckObservations = Shapes::ListShape.new(name: 'HealthCheckObservations')
    HealthCheckRegion = Shapes::StringShape.new(name: 'HealthCheckRegion')
    HealthCheckRegionList = Shapes::ListShape.new(name: 'HealthCheckRegionList')
    HealthCheckType = Shapes::StringShape.new(name: 'HealthCheckType')
    HealthCheckVersion = Shapes::IntegerShape.new(name: 'HealthCheckVersion')
    HealthCheckVersionMismatch = Shapes::StructureShape.new(name: 'HealthCheckVersionMismatch')
    HealthChecks = Shapes::ListShape.new(name: 'HealthChecks')
    HealthThreshold = Shapes::IntegerShape.new(name: 'HealthThreshold')
    HostedZone = Shapes::StructureShape.new(name: 'HostedZone')
    HostedZoneAlreadyExists = Shapes::StructureShape.new(name: 'HostedZoneAlreadyExists')
    HostedZoneConfig = Shapes::StructureShape.new(name: 'HostedZoneConfig')
    HostedZoneCount = Shapes::IntegerShape.new(name: 'HostedZoneCount')
    HostedZoneLimit = Shapes::StructureShape.new(name: 'HostedZoneLimit')
    HostedZoneLimitType = Shapes::StringShape.new(name: 'HostedZoneLimitType')
    HostedZoneNotEmpty = Shapes::StructureShape.new(name: 'HostedZoneNotEmpty')
    HostedZoneNotFound = Shapes::StructureShape.new(name: 'HostedZoneNotFound')
    HostedZoneNotPrivate = Shapes::StructureShape.new(name: 'HostedZoneNotPrivate')
    HostedZoneRRSetCount = Shapes::IntegerShape.new(name: 'HostedZoneRRSetCount')
    HostedZones = Shapes::ListShape.new(name: 'HostedZones')
    IPAddress = Shapes::StringShape.new(name: 'IPAddress')
    IPAddressCidr = Shapes::StringShape.new(name: 'IPAddressCidr')
    IncompatibleVersion = Shapes::StructureShape.new(name: 'IncompatibleVersion')
    InsufficientCloudWatchLogsResourcePolicy = Shapes::StructureShape.new(name: 'InsufficientCloudWatchLogsResourcePolicy')
    InsufficientDataHealthStatus = Shapes::StringShape.new(name: 'InsufficientDataHealthStatus')
    InvalidArgument = Shapes::StructureShape.new(name: 'InvalidArgument')
    InvalidChangeBatch = Shapes::StructureShape.new(name: 'InvalidChangeBatch')
    InvalidDomainName = Shapes::StructureShape.new(name: 'InvalidDomainName')
    InvalidInput = Shapes::StructureShape.new(name: 'InvalidInput')
    InvalidPaginationToken = Shapes::StructureShape.new(name: 'InvalidPaginationToken')
    InvalidTrafficPolicyDocument = Shapes::StructureShape.new(name: 'InvalidTrafficPolicyDocument')
    InvalidVPCId = Shapes::StructureShape.new(name: 'InvalidVPCId')
    Inverted = Shapes::BooleanShape.new(name: 'Inverted')
    IsPrivateZone = Shapes::BooleanShape.new(name: 'IsPrivateZone')
    LastVPCAssociation = Shapes::StructureShape.new(name: 'LastVPCAssociation')
    LimitValue = Shapes::IntegerShape.new(name: 'LimitValue')
    LimitsExceeded = Shapes::StructureShape.new(name: 'LimitsExceeded')
    LinkedService = Shapes::StructureShape.new(name: 'LinkedService')
    ListGeoLocationsRequest = Shapes::StructureShape.new(name: 'ListGeoLocationsRequest')
    ListGeoLocationsResponse = Shapes::StructureShape.new(name: 'ListGeoLocationsResponse')
    ListHealthChecksRequest = Shapes::StructureShape.new(name: 'ListHealthChecksRequest')
    ListHealthChecksResponse = Shapes::StructureShape.new(name: 'ListHealthChecksResponse')
    ListHostedZonesByNameRequest = Shapes::StructureShape.new(name: 'ListHostedZonesByNameRequest')
    ListHostedZonesByNameResponse = Shapes::StructureShape.new(name: 'ListHostedZonesByNameResponse')
    ListHostedZonesRequest = Shapes::StructureShape.new(name: 'ListHostedZonesRequest')
    ListHostedZonesResponse = Shapes::StructureShape.new(name: 'ListHostedZonesResponse')
    ListQueryLoggingConfigsRequest = Shapes::StructureShape.new(name: 'ListQueryLoggingConfigsRequest')
    ListQueryLoggingConfigsResponse = Shapes::StructureShape.new(name: 'ListQueryLoggingConfigsResponse')
    ListResourceRecordSetsRequest = Shapes::StructureShape.new(name: 'ListResourceRecordSetsRequest')
    ListResourceRecordSetsResponse = Shapes::StructureShape.new(name: 'ListResourceRecordSetsResponse')
    ListReusableDelegationSetsRequest = Shapes::StructureShape.new(name: 'ListReusableDelegationSetsRequest')
    ListReusableDelegationSetsResponse = Shapes::StructureShape.new(name: 'ListReusableDelegationSetsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTagsForResourcesRequest = Shapes::StructureShape.new(name: 'ListTagsForResourcesRequest')
    ListTagsForResourcesResponse = Shapes::StructureShape.new(name: 'ListTagsForResourcesResponse')
    ListTrafficPoliciesRequest = Shapes::StructureShape.new(name: 'ListTrafficPoliciesRequest')
    ListTrafficPoliciesResponse = Shapes::StructureShape.new(name: 'ListTrafficPoliciesResponse')
    ListTrafficPolicyInstancesByHostedZoneRequest = Shapes::StructureShape.new(name: 'ListTrafficPolicyInstancesByHostedZoneRequest')
    ListTrafficPolicyInstancesByHostedZoneResponse = Shapes::StructureShape.new(name: 'ListTrafficPolicyInstancesByHostedZoneResponse')
    ListTrafficPolicyInstancesByPolicyRequest = Shapes::StructureShape.new(name: 'ListTrafficPolicyInstancesByPolicyRequest')
    ListTrafficPolicyInstancesByPolicyResponse = Shapes::StructureShape.new(name: 'ListTrafficPolicyInstancesByPolicyResponse')
    ListTrafficPolicyInstancesRequest = Shapes::StructureShape.new(name: 'ListTrafficPolicyInstancesRequest')
    ListTrafficPolicyInstancesResponse = Shapes::StructureShape.new(name: 'ListTrafficPolicyInstancesResponse')
    ListTrafficPolicyVersionsRequest = Shapes::StructureShape.new(name: 'ListTrafficPolicyVersionsRequest')
    ListTrafficPolicyVersionsResponse = Shapes::StructureShape.new(name: 'ListTrafficPolicyVersionsResponse')
    ListVPCAssociationAuthorizationsRequest = Shapes::StructureShape.new(name: 'ListVPCAssociationAuthorizationsRequest')
    ListVPCAssociationAuthorizationsResponse = Shapes::StructureShape.new(name: 'ListVPCAssociationAuthorizationsResponse')
    MaxResults = Shapes::StringShape.new(name: 'MaxResults')
    MeasureLatency = Shapes::BooleanShape.new(name: 'MeasureLatency')
    Message = Shapes::StringShape.new(name: 'Message')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    Nameserver = Shapes::StringShape.new(name: 'Nameserver')
    Namespace = Shapes::StringShape.new(name: 'Namespace')
    NoSuchChange = Shapes::StructureShape.new(name: 'NoSuchChange')
    NoSuchCloudWatchLogsLogGroup = Shapes::StructureShape.new(name: 'NoSuchCloudWatchLogsLogGroup')
    NoSuchDelegationSet = Shapes::StructureShape.new(name: 'NoSuchDelegationSet')
    NoSuchGeoLocation = Shapes::StructureShape.new(name: 'NoSuchGeoLocation')
    NoSuchHealthCheck = Shapes::StructureShape.new(name: 'NoSuchHealthCheck')
    NoSuchHostedZone = Shapes::StructureShape.new(name: 'NoSuchHostedZone')
    NoSuchQueryLoggingConfig = Shapes::StructureShape.new(name: 'NoSuchQueryLoggingConfig')
    NoSuchTrafficPolicy = Shapes::StructureShape.new(name: 'NoSuchTrafficPolicy')
    NoSuchTrafficPolicyInstance = Shapes::StructureShape.new(name: 'NoSuchTrafficPolicyInstance')
    Nonce = Shapes::StringShape.new(name: 'Nonce')
    NotAuthorizedException = Shapes::StructureShape.new(name: 'NotAuthorizedException')
    PageMarker = Shapes::StringShape.new(name: 'PageMarker')
    PageMaxItems = Shapes::IntegerShape.new(name: 'PageMaxItems')
    PageTruncated = Shapes::BooleanShape.new(name: 'PageTruncated')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    Period = Shapes::IntegerShape.new(name: 'Period')
    Port = Shapes::IntegerShape.new(name: 'Port')
    PriorRequestNotComplete = Shapes::StructureShape.new(name: 'PriorRequestNotComplete')
    PublicZoneVPCAssociation = Shapes::StructureShape.new(name: 'PublicZoneVPCAssociation')
    QueryLoggingConfig = Shapes::StructureShape.new(name: 'QueryLoggingConfig')
    QueryLoggingConfigAlreadyExists = Shapes::StructureShape.new(name: 'QueryLoggingConfigAlreadyExists')
    QueryLoggingConfigId = Shapes::StringShape.new(name: 'QueryLoggingConfigId')
    QueryLoggingConfigs = Shapes::ListShape.new(name: 'QueryLoggingConfigs')
    RData = Shapes::StringShape.new(name: 'RData')
    RRType = Shapes::StringShape.new(name: 'RRType')
    RecordData = Shapes::ListShape.new(name: 'RecordData')
    RecordDataEntry = Shapes::StringShape.new(name: 'RecordDataEntry')
    RequestInterval = Shapes::IntegerShape.new(name: 'RequestInterval')
    ResettableElementName = Shapes::StringShape.new(name: 'ResettableElementName')
    ResettableElementNameList = Shapes::ListShape.new(name: 'ResettableElementNameList')
    ResourceDescription = Shapes::StringShape.new(name: 'ResourceDescription')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourcePath = Shapes::StringShape.new(name: 'ResourcePath')
    ResourceRecord = Shapes::StructureShape.new(name: 'ResourceRecord')
    ResourceRecordSet = Shapes::StructureShape.new(name: 'ResourceRecordSet')
    ResourceRecordSetFailover = Shapes::StringShape.new(name: 'ResourceRecordSetFailover')
    ResourceRecordSetIdentifier = Shapes::StringShape.new(name: 'ResourceRecordSetIdentifier')
    ResourceRecordSetMultiValueAnswer = Shapes::BooleanShape.new(name: 'ResourceRecordSetMultiValueAnswer')
    ResourceRecordSetRegion = Shapes::StringShape.new(name: 'ResourceRecordSetRegion')
    ResourceRecordSetWeight = Shapes::IntegerShape.new(name: 'ResourceRecordSetWeight')
    ResourceRecordSets = Shapes::ListShape.new(name: 'ResourceRecordSets')
    ResourceRecords = Shapes::ListShape.new(name: 'ResourceRecords')
    ResourceTagSet = Shapes::StructureShape.new(name: 'ResourceTagSet')
    ResourceTagSetList = Shapes::ListShape.new(name: 'ResourceTagSetList')
    ResourceURI = Shapes::StringShape.new(name: 'ResourceURI')
    ReusableDelegationSetLimit = Shapes::StructureShape.new(name: 'ReusableDelegationSetLimit')
    ReusableDelegationSetLimitType = Shapes::StringShape.new(name: 'ReusableDelegationSetLimitType')
    SearchString = Shapes::StringShape.new(name: 'SearchString')
    ServicePrincipal = Shapes::StringShape.new(name: 'ServicePrincipal')
    Statistic = Shapes::StringShape.new(name: 'Statistic')
    Status = Shapes::StringShape.new(name: 'Status')
    StatusReport = Shapes::StructureShape.new(name: 'StatusReport')
    SubnetMask = Shapes::StringShape.new(name: 'SubnetMask')
    TTL = Shapes::IntegerShape.new(name: 'TTL')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceId = Shapes::StringShape.new(name: 'TagResourceId')
    TagResourceIdList = Shapes::ListShape.new(name: 'TagResourceIdList')
    TagResourceType = Shapes::StringShape.new(name: 'TagResourceType')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TestDNSAnswerRequest = Shapes::StructureShape.new(name: 'TestDNSAnswerRequest')
    TestDNSAnswerResponse = Shapes::StructureShape.new(name: 'TestDNSAnswerResponse')
    Threshold = Shapes::FloatShape.new(name: 'Threshold')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeStamp = Shapes::TimestampShape.new(name: 'TimeStamp')
    TooManyHealthChecks = Shapes::StructureShape.new(name: 'TooManyHealthChecks')
    TooManyHostedZones = Shapes::StructureShape.new(name: 'TooManyHostedZones')
    TooManyTrafficPolicies = Shapes::StructureShape.new(name: 'TooManyTrafficPolicies')
    TooManyTrafficPolicyInstances = Shapes::StructureShape.new(name: 'TooManyTrafficPolicyInstances')
    TooManyTrafficPolicyVersionsForCurrentPolicy = Shapes::StructureShape.new(name: 'TooManyTrafficPolicyVersionsForCurrentPolicy')
    TooManyVPCAssociationAuthorizations = Shapes::StructureShape.new(name: 'TooManyVPCAssociationAuthorizations')
    TrafficPolicies = Shapes::ListShape.new(name: 'TrafficPolicies')
    TrafficPolicy = Shapes::StructureShape.new(name: 'TrafficPolicy')
    TrafficPolicyAlreadyExists = Shapes::StructureShape.new(name: 'TrafficPolicyAlreadyExists')
    TrafficPolicyComment = Shapes::StringShape.new(name: 'TrafficPolicyComment')
    TrafficPolicyDocument = Shapes::StringShape.new(name: 'TrafficPolicyDocument')
    TrafficPolicyId = Shapes::StringShape.new(name: 'TrafficPolicyId')
    TrafficPolicyInUse = Shapes::StructureShape.new(name: 'TrafficPolicyInUse')
    TrafficPolicyInstance = Shapes::StructureShape.new(name: 'TrafficPolicyInstance')
    TrafficPolicyInstanceAlreadyExists = Shapes::StructureShape.new(name: 'TrafficPolicyInstanceAlreadyExists')
    TrafficPolicyInstanceCount = Shapes::IntegerShape.new(name: 'TrafficPolicyInstanceCount')
    TrafficPolicyInstanceId = Shapes::StringShape.new(name: 'TrafficPolicyInstanceId')
    TrafficPolicyInstanceState = Shapes::StringShape.new(name: 'TrafficPolicyInstanceState')
    TrafficPolicyInstances = Shapes::ListShape.new(name: 'TrafficPolicyInstances')
    TrafficPolicyName = Shapes::StringShape.new(name: 'TrafficPolicyName')
    TrafficPolicySummaries = Shapes::ListShape.new(name: 'TrafficPolicySummaries')
    TrafficPolicySummary = Shapes::StructureShape.new(name: 'TrafficPolicySummary')
    TrafficPolicyVersion = Shapes::IntegerShape.new(name: 'TrafficPolicyVersion')
    TrafficPolicyVersionMarker = Shapes::StringShape.new(name: 'TrafficPolicyVersionMarker')
    TransportProtocol = Shapes::StringShape.new(name: 'TransportProtocol')
    UpdateHealthCheckRequest = Shapes::StructureShape.new(name: 'UpdateHealthCheckRequest')
    UpdateHealthCheckResponse = Shapes::StructureShape.new(name: 'UpdateHealthCheckResponse')
    UpdateHostedZoneCommentRequest = Shapes::StructureShape.new(name: 'UpdateHostedZoneCommentRequest')
    UpdateHostedZoneCommentResponse = Shapes::StructureShape.new(name: 'UpdateHostedZoneCommentResponse')
    UpdateTrafficPolicyCommentRequest = Shapes::StructureShape.new(name: 'UpdateTrafficPolicyCommentRequest')
    UpdateTrafficPolicyCommentResponse = Shapes::StructureShape.new(name: 'UpdateTrafficPolicyCommentResponse')
    UpdateTrafficPolicyInstanceRequest = Shapes::StructureShape.new(name: 'UpdateTrafficPolicyInstanceRequest')
    UpdateTrafficPolicyInstanceResponse = Shapes::StructureShape.new(name: 'UpdateTrafficPolicyInstanceResponse')
    UsageCount = Shapes::IntegerShape.new(name: 'UsageCount')
    VPC = Shapes::StructureShape.new(name: 'VPC')
    VPCAssociationAuthorizationNotFound = Shapes::StructureShape.new(name: 'VPCAssociationAuthorizationNotFound')
    VPCAssociationNotFound = Shapes::StructureShape.new(name: 'VPCAssociationNotFound')
    VPCId = Shapes::StringShape.new(name: 'VPCId')
    VPCRegion = Shapes::StringShape.new(name: 'VPCRegion')
    VPCs = Shapes::ListShape.new(name: 'VPCs')

    AccountLimit.add_member(:type, Shapes::ShapeRef.new(shape: AccountLimitType, required: true, location_name: "Type"))
    AccountLimit.add_member(:value, Shapes::ShapeRef.new(shape: LimitValue, required: true, location_name: "Value"))
    AccountLimit.struct_class = Types::AccountLimit

    AlarmIdentifier.add_member(:region, Shapes::ShapeRef.new(shape: CloudWatchRegion, required: true, location_name: "Region"))
    AlarmIdentifier.add_member(:name, Shapes::ShapeRef.new(shape: AlarmName, required: true, location_name: "Name"))
    AlarmIdentifier.struct_class = Types::AlarmIdentifier

    AliasTarget.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "HostedZoneId"))
    AliasTarget.add_member(:dns_name, Shapes::ShapeRef.new(shape: DNSName, required: true, location_name: "DNSName"))
    AliasTarget.add_member(:evaluate_target_health, Shapes::ShapeRef.new(shape: AliasHealthEnabled, required: true, location_name: "EvaluateTargetHealth"))
    AliasTarget.struct_class = Types::AliasTarget

    AssociateVPCWithHostedZoneRequest.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "Id"))
    AssociateVPCWithHostedZoneRequest.add_member(:vpc, Shapes::ShapeRef.new(shape: VPC, required: true, location_name: "VPC"))
    AssociateVPCWithHostedZoneRequest.add_member(:comment, Shapes::ShapeRef.new(shape: AssociateVPCComment, location_name: "Comment"))
    AssociateVPCWithHostedZoneRequest.struct_class = Types::AssociateVPCWithHostedZoneRequest

    AssociateVPCWithHostedZoneResponse.add_member(:change_info, Shapes::ShapeRef.new(shape: ChangeInfo, required: true, location_name: "ChangeInfo"))
    AssociateVPCWithHostedZoneResponse.struct_class = Types::AssociateVPCWithHostedZoneResponse

    Change.add_member(:action, Shapes::ShapeRef.new(shape: ChangeAction, required: true, location_name: "Action"))
    Change.add_member(:resource_record_set, Shapes::ShapeRef.new(shape: ResourceRecordSet, required: true, location_name: "ResourceRecordSet"))
    Change.struct_class = Types::Change

    ChangeBatch.add_member(:comment, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Comment"))
    ChangeBatch.add_member(:changes, Shapes::ShapeRef.new(shape: Changes, required: true, location_name: "Changes"))
    ChangeBatch.struct_class = Types::ChangeBatch

    ChangeInfo.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "Id"))
    ChangeInfo.add_member(:status, Shapes::ShapeRef.new(shape: ChangeStatus, required: true, location_name: "Status"))
    ChangeInfo.add_member(:submitted_at, Shapes::ShapeRef.new(shape: TimeStamp, required: true, location_name: "SubmittedAt"))
    ChangeInfo.add_member(:comment, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Comment"))
    ChangeInfo.struct_class = Types::ChangeInfo

    ChangeResourceRecordSetsRequest.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "Id"))
    ChangeResourceRecordSetsRequest.add_member(:change_batch, Shapes::ShapeRef.new(shape: ChangeBatch, required: true, location_name: "ChangeBatch"))
    ChangeResourceRecordSetsRequest.struct_class = Types::ChangeResourceRecordSetsRequest

    ChangeResourceRecordSetsResponse.add_member(:change_info, Shapes::ShapeRef.new(shape: ChangeInfo, required: true, location_name: "ChangeInfo"))
    ChangeResourceRecordSetsResponse.struct_class = Types::ChangeResourceRecordSetsResponse

    ChangeTagsForResourceRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: TagResourceType, required: true, location: "uri", location_name: "ResourceType"))
    ChangeTagsForResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: TagResourceId, required: true, location: "uri", location_name: "ResourceId"))
    ChangeTagsForResourceRequest.add_member(:add_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "AddTags"))
    ChangeTagsForResourceRequest.add_member(:remove_tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, location_name: "RemoveTagKeys"))
    ChangeTagsForResourceRequest.struct_class = Types::ChangeTagsForResourceRequest

    ChangeTagsForResourceResponse.struct_class = Types::ChangeTagsForResourceResponse

    Changes.member = Shapes::ShapeRef.new(shape: Change, location_name: "Change")

    CheckerIpRanges.member = Shapes::ShapeRef.new(shape: IPAddressCidr)

    ChildHealthCheckList.member = Shapes::ShapeRef.new(shape: HealthCheckId, location_name: "ChildHealthCheck")

    CloudWatchAlarmConfiguration.add_member(:evaluation_periods, Shapes::ShapeRef.new(shape: EvaluationPeriods, required: true, location_name: "EvaluationPeriods"))
    CloudWatchAlarmConfiguration.add_member(:threshold, Shapes::ShapeRef.new(shape: Threshold, required: true, location_name: "Threshold"))
    CloudWatchAlarmConfiguration.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperator, required: true, location_name: "ComparisonOperator"))
    CloudWatchAlarmConfiguration.add_member(:period, Shapes::ShapeRef.new(shape: Period, required: true, location_name: "Period"))
    CloudWatchAlarmConfiguration.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    CloudWatchAlarmConfiguration.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location_name: "Namespace"))
    CloudWatchAlarmConfiguration.add_member(:statistic, Shapes::ShapeRef.new(shape: Statistic, required: true, location_name: "Statistic"))
    CloudWatchAlarmConfiguration.add_member(:dimensions, Shapes::ShapeRef.new(shape: DimensionList, location_name: "Dimensions"))
    CloudWatchAlarmConfiguration.struct_class = Types::CloudWatchAlarmConfiguration

    CreateHealthCheckRequest.add_member(:caller_reference, Shapes::ShapeRef.new(shape: HealthCheckNonce, required: true, location_name: "CallerReference"))
    CreateHealthCheckRequest.add_member(:health_check_config, Shapes::ShapeRef.new(shape: HealthCheckConfig, required: true, location_name: "HealthCheckConfig"))
    CreateHealthCheckRequest.struct_class = Types::CreateHealthCheckRequest

    CreateHealthCheckResponse.add_member(:health_check, Shapes::ShapeRef.new(shape: HealthCheck, required: true, location_name: "HealthCheck"))
    CreateHealthCheckResponse.add_member(:location, Shapes::ShapeRef.new(shape: ResourceURI, required: true, location: "header", location_name: "Location"))
    CreateHealthCheckResponse.struct_class = Types::CreateHealthCheckResponse

    CreateHostedZoneRequest.add_member(:name, Shapes::ShapeRef.new(shape: DNSName, required: true, location_name: "Name"))
    CreateHostedZoneRequest.add_member(:vpc, Shapes::ShapeRef.new(shape: VPC, location_name: "VPC"))
    CreateHostedZoneRequest.add_member(:caller_reference, Shapes::ShapeRef.new(shape: Nonce, required: true, location_name: "CallerReference"))
    CreateHostedZoneRequest.add_member(:hosted_zone_config, Shapes::ShapeRef.new(shape: HostedZoneConfig, location_name: "HostedZoneConfig"))
    CreateHostedZoneRequest.add_member(:delegation_set_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "DelegationSetId"))
    CreateHostedZoneRequest.struct_class = Types::CreateHostedZoneRequest

    CreateHostedZoneResponse.add_member(:hosted_zone, Shapes::ShapeRef.new(shape: HostedZone, required: true, location_name: "HostedZone"))
    CreateHostedZoneResponse.add_member(:change_info, Shapes::ShapeRef.new(shape: ChangeInfo, required: true, location_name: "ChangeInfo"))
    CreateHostedZoneResponse.add_member(:delegation_set, Shapes::ShapeRef.new(shape: DelegationSet, required: true, location_name: "DelegationSet"))
    CreateHostedZoneResponse.add_member(:vpc, Shapes::ShapeRef.new(shape: VPC, location_name: "VPC"))
    CreateHostedZoneResponse.add_member(:location, Shapes::ShapeRef.new(shape: ResourceURI, required: true, location: "header", location_name: "Location"))
    CreateHostedZoneResponse.struct_class = Types::CreateHostedZoneResponse

    CreateQueryLoggingConfigRequest.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "HostedZoneId"))
    CreateQueryLoggingConfigRequest.add_member(:cloud_watch_logs_log_group_arn, Shapes::ShapeRef.new(shape: CloudWatchLogsLogGroupArn, required: true, location_name: "CloudWatchLogsLogGroupArn"))
    CreateQueryLoggingConfigRequest.struct_class = Types::CreateQueryLoggingConfigRequest

    CreateQueryLoggingConfigResponse.add_member(:query_logging_config, Shapes::ShapeRef.new(shape: QueryLoggingConfig, required: true, location_name: "QueryLoggingConfig"))
    CreateQueryLoggingConfigResponse.add_member(:location, Shapes::ShapeRef.new(shape: ResourceURI, required: true, location: "header", location_name: "Location"))
    CreateQueryLoggingConfigResponse.struct_class = Types::CreateQueryLoggingConfigResponse

    CreateReusableDelegationSetRequest.add_member(:caller_reference, Shapes::ShapeRef.new(shape: Nonce, required: true, location_name: "CallerReference"))
    CreateReusableDelegationSetRequest.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "HostedZoneId"))
    CreateReusableDelegationSetRequest.struct_class = Types::CreateReusableDelegationSetRequest

    CreateReusableDelegationSetResponse.add_member(:delegation_set, Shapes::ShapeRef.new(shape: DelegationSet, required: true, location_name: "DelegationSet"))
    CreateReusableDelegationSetResponse.add_member(:location, Shapes::ShapeRef.new(shape: ResourceURI, required: true, location: "header", location_name: "Location"))
    CreateReusableDelegationSetResponse.struct_class = Types::CreateReusableDelegationSetResponse

    CreateTrafficPolicyInstanceRequest.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "HostedZoneId"))
    CreateTrafficPolicyInstanceRequest.add_member(:name, Shapes::ShapeRef.new(shape: DNSName, required: true, location_name: "Name"))
    CreateTrafficPolicyInstanceRequest.add_member(:ttl, Shapes::ShapeRef.new(shape: TTL, required: true, location_name: "TTL"))
    CreateTrafficPolicyInstanceRequest.add_member(:traffic_policy_id, Shapes::ShapeRef.new(shape: TrafficPolicyId, required: true, location_name: "TrafficPolicyId"))
    CreateTrafficPolicyInstanceRequest.add_member(:traffic_policy_version, Shapes::ShapeRef.new(shape: TrafficPolicyVersion, required: true, location_name: "TrafficPolicyVersion"))
    CreateTrafficPolicyInstanceRequest.struct_class = Types::CreateTrafficPolicyInstanceRequest

    CreateTrafficPolicyInstanceResponse.add_member(:traffic_policy_instance, Shapes::ShapeRef.new(shape: TrafficPolicyInstance, required: true, location_name: "TrafficPolicyInstance"))
    CreateTrafficPolicyInstanceResponse.add_member(:location, Shapes::ShapeRef.new(shape: ResourceURI, required: true, location: "header", location_name: "Location"))
    CreateTrafficPolicyInstanceResponse.struct_class = Types::CreateTrafficPolicyInstanceResponse

    CreateTrafficPolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: TrafficPolicyName, required: true, location_name: "Name"))
    CreateTrafficPolicyRequest.add_member(:document, Shapes::ShapeRef.new(shape: TrafficPolicyDocument, required: true, location_name: "Document"))
    CreateTrafficPolicyRequest.add_member(:comment, Shapes::ShapeRef.new(shape: TrafficPolicyComment, location_name: "Comment"))
    CreateTrafficPolicyRequest.struct_class = Types::CreateTrafficPolicyRequest

    CreateTrafficPolicyResponse.add_member(:traffic_policy, Shapes::ShapeRef.new(shape: TrafficPolicy, required: true, location_name: "TrafficPolicy"))
    CreateTrafficPolicyResponse.add_member(:location, Shapes::ShapeRef.new(shape: ResourceURI, required: true, location: "header", location_name: "Location"))
    CreateTrafficPolicyResponse.struct_class = Types::CreateTrafficPolicyResponse

    CreateTrafficPolicyVersionRequest.add_member(:id, Shapes::ShapeRef.new(shape: TrafficPolicyId, required: true, location: "uri", location_name: "Id"))
    CreateTrafficPolicyVersionRequest.add_member(:document, Shapes::ShapeRef.new(shape: TrafficPolicyDocument, required: true, location_name: "Document"))
    CreateTrafficPolicyVersionRequest.add_member(:comment, Shapes::ShapeRef.new(shape: TrafficPolicyComment, location_name: "Comment"))
    CreateTrafficPolicyVersionRequest.struct_class = Types::CreateTrafficPolicyVersionRequest

    CreateTrafficPolicyVersionResponse.add_member(:traffic_policy, Shapes::ShapeRef.new(shape: TrafficPolicy, required: true, location_name: "TrafficPolicy"))
    CreateTrafficPolicyVersionResponse.add_member(:location, Shapes::ShapeRef.new(shape: ResourceURI, required: true, location: "header", location_name: "Location"))
    CreateTrafficPolicyVersionResponse.struct_class = Types::CreateTrafficPolicyVersionResponse

    CreateVPCAssociationAuthorizationRequest.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "Id"))
    CreateVPCAssociationAuthorizationRequest.add_member(:vpc, Shapes::ShapeRef.new(shape: VPC, required: true, location_name: "VPC"))
    CreateVPCAssociationAuthorizationRequest.struct_class = Types::CreateVPCAssociationAuthorizationRequest

    CreateVPCAssociationAuthorizationResponse.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "HostedZoneId"))
    CreateVPCAssociationAuthorizationResponse.add_member(:vpc, Shapes::ShapeRef.new(shape: VPC, required: true, location_name: "VPC"))
    CreateVPCAssociationAuthorizationResponse.struct_class = Types::CreateVPCAssociationAuthorizationResponse

    DelegationSet.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    DelegationSet.add_member(:caller_reference, Shapes::ShapeRef.new(shape: Nonce, location_name: "CallerReference"))
    DelegationSet.add_member(:name_servers, Shapes::ShapeRef.new(shape: DelegationSetNameServers, required: true, location_name: "NameServers"))
    DelegationSet.struct_class = Types::DelegationSet

    DelegationSetNameServers.member = Shapes::ShapeRef.new(shape: DNSName, location_name: "NameServer")

    DelegationSets.member = Shapes::ShapeRef.new(shape: DelegationSet, location_name: "DelegationSet")

    DeleteHealthCheckRequest.add_member(:health_check_id, Shapes::ShapeRef.new(shape: HealthCheckId, required: true, location: "uri", location_name: "HealthCheckId"))
    DeleteHealthCheckRequest.struct_class = Types::DeleteHealthCheckRequest

    DeleteHealthCheckResponse.struct_class = Types::DeleteHealthCheckResponse

    DeleteHostedZoneRequest.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "Id"))
    DeleteHostedZoneRequest.struct_class = Types::DeleteHostedZoneRequest

    DeleteHostedZoneResponse.add_member(:change_info, Shapes::ShapeRef.new(shape: ChangeInfo, required: true, location_name: "ChangeInfo"))
    DeleteHostedZoneResponse.struct_class = Types::DeleteHostedZoneResponse

    DeleteQueryLoggingConfigRequest.add_member(:id, Shapes::ShapeRef.new(shape: QueryLoggingConfigId, required: true, location: "uri", location_name: "Id"))
    DeleteQueryLoggingConfigRequest.struct_class = Types::DeleteQueryLoggingConfigRequest

    DeleteQueryLoggingConfigResponse.struct_class = Types::DeleteQueryLoggingConfigResponse

    DeleteReusableDelegationSetRequest.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "Id"))
    DeleteReusableDelegationSetRequest.struct_class = Types::DeleteReusableDelegationSetRequest

    DeleteReusableDelegationSetResponse.struct_class = Types::DeleteReusableDelegationSetResponse

    DeleteTrafficPolicyInstanceRequest.add_member(:id, Shapes::ShapeRef.new(shape: TrafficPolicyInstanceId, required: true, location: "uri", location_name: "Id"))
    DeleteTrafficPolicyInstanceRequest.struct_class = Types::DeleteTrafficPolicyInstanceRequest

    DeleteTrafficPolicyInstanceResponse.struct_class = Types::DeleteTrafficPolicyInstanceResponse

    DeleteTrafficPolicyRequest.add_member(:id, Shapes::ShapeRef.new(shape: TrafficPolicyId, required: true, location: "uri", location_name: "Id"))
    DeleteTrafficPolicyRequest.add_member(:version, Shapes::ShapeRef.new(shape: TrafficPolicyVersion, required: true, location: "uri", location_name: "Version"))
    DeleteTrafficPolicyRequest.struct_class = Types::DeleteTrafficPolicyRequest

    DeleteTrafficPolicyResponse.struct_class = Types::DeleteTrafficPolicyResponse

    DeleteVPCAssociationAuthorizationRequest.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "Id"))
    DeleteVPCAssociationAuthorizationRequest.add_member(:vpc, Shapes::ShapeRef.new(shape: VPC, required: true, location_name: "VPC"))
    DeleteVPCAssociationAuthorizationRequest.struct_class = Types::DeleteVPCAssociationAuthorizationRequest

    DeleteVPCAssociationAuthorizationResponse.struct_class = Types::DeleteVPCAssociationAuthorizationResponse

    Dimension.add_member(:name, Shapes::ShapeRef.new(shape: DimensionField, required: true, location_name: "Name"))
    Dimension.add_member(:value, Shapes::ShapeRef.new(shape: DimensionField, required: true, location_name: "Value"))
    Dimension.struct_class = Types::Dimension

    DimensionList.member = Shapes::ShapeRef.new(shape: Dimension, location_name: "Dimension")

    DisassociateVPCFromHostedZoneRequest.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "Id"))
    DisassociateVPCFromHostedZoneRequest.add_member(:vpc, Shapes::ShapeRef.new(shape: VPC, required: true, location_name: "VPC"))
    DisassociateVPCFromHostedZoneRequest.add_member(:comment, Shapes::ShapeRef.new(shape: DisassociateVPCComment, location_name: "Comment"))
    DisassociateVPCFromHostedZoneRequest.struct_class = Types::DisassociateVPCFromHostedZoneRequest

    DisassociateVPCFromHostedZoneResponse.add_member(:change_info, Shapes::ShapeRef.new(shape: ChangeInfo, required: true, location_name: "ChangeInfo"))
    DisassociateVPCFromHostedZoneResponse.struct_class = Types::DisassociateVPCFromHostedZoneResponse

    ErrorMessages.member = Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message")

    GeoLocation.add_member(:continent_code, Shapes::ShapeRef.new(shape: GeoLocationContinentCode, location_name: "ContinentCode"))
    GeoLocation.add_member(:country_code, Shapes::ShapeRef.new(shape: GeoLocationCountryCode, location_name: "CountryCode"))
    GeoLocation.add_member(:subdivision_code, Shapes::ShapeRef.new(shape: GeoLocationSubdivisionCode, location_name: "SubdivisionCode"))
    GeoLocation.struct_class = Types::GeoLocation

    GeoLocationDetails.add_member(:continent_code, Shapes::ShapeRef.new(shape: GeoLocationContinentCode, location_name: "ContinentCode"))
    GeoLocationDetails.add_member(:continent_name, Shapes::ShapeRef.new(shape: GeoLocationContinentName, location_name: "ContinentName"))
    GeoLocationDetails.add_member(:country_code, Shapes::ShapeRef.new(shape: GeoLocationCountryCode, location_name: "CountryCode"))
    GeoLocationDetails.add_member(:country_name, Shapes::ShapeRef.new(shape: GeoLocationCountryName, location_name: "CountryName"))
    GeoLocationDetails.add_member(:subdivision_code, Shapes::ShapeRef.new(shape: GeoLocationSubdivisionCode, location_name: "SubdivisionCode"))
    GeoLocationDetails.add_member(:subdivision_name, Shapes::ShapeRef.new(shape: GeoLocationSubdivisionName, location_name: "SubdivisionName"))
    GeoLocationDetails.struct_class = Types::GeoLocationDetails

    GeoLocationDetailsList.member = Shapes::ShapeRef.new(shape: GeoLocationDetails, location_name: "GeoLocationDetails")

    GetAccountLimitRequest.add_member(:type, Shapes::ShapeRef.new(shape: AccountLimitType, required: true, location: "uri", location_name: "Type"))
    GetAccountLimitRequest.struct_class = Types::GetAccountLimitRequest

    GetAccountLimitResponse.add_member(:limit, Shapes::ShapeRef.new(shape: AccountLimit, required: true, location_name: "Limit"))
    GetAccountLimitResponse.add_member(:count, Shapes::ShapeRef.new(shape: UsageCount, required: true, location_name: "Count"))
    GetAccountLimitResponse.struct_class = Types::GetAccountLimitResponse

    GetChangeRequest.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "Id"))
    GetChangeRequest.struct_class = Types::GetChangeRequest

    GetChangeResponse.add_member(:change_info, Shapes::ShapeRef.new(shape: ChangeInfo, required: true, location_name: "ChangeInfo"))
    GetChangeResponse.struct_class = Types::GetChangeResponse

    GetCheckerIpRangesRequest.struct_class = Types::GetCheckerIpRangesRequest

    GetCheckerIpRangesResponse.add_member(:checker_ip_ranges, Shapes::ShapeRef.new(shape: CheckerIpRanges, required: true, location_name: "CheckerIpRanges"))
    GetCheckerIpRangesResponse.struct_class = Types::GetCheckerIpRangesResponse

    GetGeoLocationRequest.add_member(:continent_code, Shapes::ShapeRef.new(shape: GeoLocationContinentCode, location: "querystring", location_name: "continentcode"))
    GetGeoLocationRequest.add_member(:country_code, Shapes::ShapeRef.new(shape: GeoLocationCountryCode, location: "querystring", location_name: "countrycode"))
    GetGeoLocationRequest.add_member(:subdivision_code, Shapes::ShapeRef.new(shape: GeoLocationSubdivisionCode, location: "querystring", location_name: "subdivisioncode"))
    GetGeoLocationRequest.struct_class = Types::GetGeoLocationRequest

    GetGeoLocationResponse.add_member(:geo_location_details, Shapes::ShapeRef.new(shape: GeoLocationDetails, required: true, location_name: "GeoLocationDetails"))
    GetGeoLocationResponse.struct_class = Types::GetGeoLocationResponse

    GetHealthCheckCountRequest.struct_class = Types::GetHealthCheckCountRequest

    GetHealthCheckCountResponse.add_member(:health_check_count, Shapes::ShapeRef.new(shape: HealthCheckCount, required: true, location_name: "HealthCheckCount"))
    GetHealthCheckCountResponse.struct_class = Types::GetHealthCheckCountResponse

    GetHealthCheckLastFailureReasonRequest.add_member(:health_check_id, Shapes::ShapeRef.new(shape: HealthCheckId, required: true, location: "uri", location_name: "HealthCheckId"))
    GetHealthCheckLastFailureReasonRequest.struct_class = Types::GetHealthCheckLastFailureReasonRequest

    GetHealthCheckLastFailureReasonResponse.add_member(:health_check_observations, Shapes::ShapeRef.new(shape: HealthCheckObservations, required: true, location_name: "HealthCheckObservations"))
    GetHealthCheckLastFailureReasonResponse.struct_class = Types::GetHealthCheckLastFailureReasonResponse

    GetHealthCheckRequest.add_member(:health_check_id, Shapes::ShapeRef.new(shape: HealthCheckId, required: true, location: "uri", location_name: "HealthCheckId"))
    GetHealthCheckRequest.struct_class = Types::GetHealthCheckRequest

    GetHealthCheckResponse.add_member(:health_check, Shapes::ShapeRef.new(shape: HealthCheck, required: true, location_name: "HealthCheck"))
    GetHealthCheckResponse.struct_class = Types::GetHealthCheckResponse

    GetHealthCheckStatusRequest.add_member(:health_check_id, Shapes::ShapeRef.new(shape: HealthCheckId, required: true, location: "uri", location_name: "HealthCheckId"))
    GetHealthCheckStatusRequest.struct_class = Types::GetHealthCheckStatusRequest

    GetHealthCheckStatusResponse.add_member(:health_check_observations, Shapes::ShapeRef.new(shape: HealthCheckObservations, required: true, location_name: "HealthCheckObservations"))
    GetHealthCheckStatusResponse.struct_class = Types::GetHealthCheckStatusResponse

    GetHostedZoneCountRequest.struct_class = Types::GetHostedZoneCountRequest

    GetHostedZoneCountResponse.add_member(:hosted_zone_count, Shapes::ShapeRef.new(shape: HostedZoneCount, required: true, location_name: "HostedZoneCount"))
    GetHostedZoneCountResponse.struct_class = Types::GetHostedZoneCountResponse

    GetHostedZoneLimitRequest.add_member(:type, Shapes::ShapeRef.new(shape: HostedZoneLimitType, required: true, location: "uri", location_name: "Type"))
    GetHostedZoneLimitRequest.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "Id"))
    GetHostedZoneLimitRequest.struct_class = Types::GetHostedZoneLimitRequest

    GetHostedZoneLimitResponse.add_member(:limit, Shapes::ShapeRef.new(shape: HostedZoneLimit, required: true, location_name: "Limit"))
    GetHostedZoneLimitResponse.add_member(:count, Shapes::ShapeRef.new(shape: UsageCount, required: true, location_name: "Count"))
    GetHostedZoneLimitResponse.struct_class = Types::GetHostedZoneLimitResponse

    GetHostedZoneRequest.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "Id"))
    GetHostedZoneRequest.struct_class = Types::GetHostedZoneRequest

    GetHostedZoneResponse.add_member(:hosted_zone, Shapes::ShapeRef.new(shape: HostedZone, required: true, location_name: "HostedZone"))
    GetHostedZoneResponse.add_member(:delegation_set, Shapes::ShapeRef.new(shape: DelegationSet, location_name: "DelegationSet"))
    GetHostedZoneResponse.add_member(:vp_cs, Shapes::ShapeRef.new(shape: VPCs, location_name: "VPCs"))
    GetHostedZoneResponse.struct_class = Types::GetHostedZoneResponse

    GetQueryLoggingConfigRequest.add_member(:id, Shapes::ShapeRef.new(shape: QueryLoggingConfigId, required: true, location: "uri", location_name: "Id"))
    GetQueryLoggingConfigRequest.struct_class = Types::GetQueryLoggingConfigRequest

    GetQueryLoggingConfigResponse.add_member(:query_logging_config, Shapes::ShapeRef.new(shape: QueryLoggingConfig, required: true, location_name: "QueryLoggingConfig"))
    GetQueryLoggingConfigResponse.struct_class = Types::GetQueryLoggingConfigResponse

    GetReusableDelegationSetLimitRequest.add_member(:type, Shapes::ShapeRef.new(shape: ReusableDelegationSetLimitType, required: true, location: "uri", location_name: "Type"))
    GetReusableDelegationSetLimitRequest.add_member(:delegation_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "Id"))
    GetReusableDelegationSetLimitRequest.struct_class = Types::GetReusableDelegationSetLimitRequest

    GetReusableDelegationSetLimitResponse.add_member(:limit, Shapes::ShapeRef.new(shape: ReusableDelegationSetLimit, required: true, location_name: "Limit"))
    GetReusableDelegationSetLimitResponse.add_member(:count, Shapes::ShapeRef.new(shape: UsageCount, required: true, location_name: "Count"))
    GetReusableDelegationSetLimitResponse.struct_class = Types::GetReusableDelegationSetLimitResponse

    GetReusableDelegationSetRequest.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "Id"))
    GetReusableDelegationSetRequest.struct_class = Types::GetReusableDelegationSetRequest

    GetReusableDelegationSetResponse.add_member(:delegation_set, Shapes::ShapeRef.new(shape: DelegationSet, required: true, location_name: "DelegationSet"))
    GetReusableDelegationSetResponse.struct_class = Types::GetReusableDelegationSetResponse

    GetTrafficPolicyInstanceCountRequest.struct_class = Types::GetTrafficPolicyInstanceCountRequest

    GetTrafficPolicyInstanceCountResponse.add_member(:traffic_policy_instance_count, Shapes::ShapeRef.new(shape: TrafficPolicyInstanceCount, required: true, location_name: "TrafficPolicyInstanceCount"))
    GetTrafficPolicyInstanceCountResponse.struct_class = Types::GetTrafficPolicyInstanceCountResponse

    GetTrafficPolicyInstanceRequest.add_member(:id, Shapes::ShapeRef.new(shape: TrafficPolicyInstanceId, required: true, location: "uri", location_name: "Id"))
    GetTrafficPolicyInstanceRequest.struct_class = Types::GetTrafficPolicyInstanceRequest

    GetTrafficPolicyInstanceResponse.add_member(:traffic_policy_instance, Shapes::ShapeRef.new(shape: TrafficPolicyInstance, required: true, location_name: "TrafficPolicyInstance"))
    GetTrafficPolicyInstanceResponse.struct_class = Types::GetTrafficPolicyInstanceResponse

    GetTrafficPolicyRequest.add_member(:id, Shapes::ShapeRef.new(shape: TrafficPolicyId, required: true, location: "uri", location_name: "Id"))
    GetTrafficPolicyRequest.add_member(:version, Shapes::ShapeRef.new(shape: TrafficPolicyVersion, required: true, location: "uri", location_name: "Version"))
    GetTrafficPolicyRequest.struct_class = Types::GetTrafficPolicyRequest

    GetTrafficPolicyResponse.add_member(:traffic_policy, Shapes::ShapeRef.new(shape: TrafficPolicy, required: true, location_name: "TrafficPolicy"))
    GetTrafficPolicyResponse.struct_class = Types::GetTrafficPolicyResponse

    HealthCheck.add_member(:id, Shapes::ShapeRef.new(shape: HealthCheckId, required: true, location_name: "Id"))
    HealthCheck.add_member(:caller_reference, Shapes::ShapeRef.new(shape: HealthCheckNonce, required: true, location_name: "CallerReference"))
    HealthCheck.add_member(:linked_service, Shapes::ShapeRef.new(shape: LinkedService, location_name: "LinkedService"))
    HealthCheck.add_member(:health_check_config, Shapes::ShapeRef.new(shape: HealthCheckConfig, required: true, location_name: "HealthCheckConfig"))
    HealthCheck.add_member(:health_check_version, Shapes::ShapeRef.new(shape: HealthCheckVersion, required: true, location_name: "HealthCheckVersion"))
    HealthCheck.add_member(:cloud_watch_alarm_configuration, Shapes::ShapeRef.new(shape: CloudWatchAlarmConfiguration, location_name: "CloudWatchAlarmConfiguration"))
    HealthCheck.struct_class = Types::HealthCheck

    HealthCheckConfig.add_member(:ip_address, Shapes::ShapeRef.new(shape: IPAddress, location_name: "IPAddress"))
    HealthCheckConfig.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "Port"))
    HealthCheckConfig.add_member(:type, Shapes::ShapeRef.new(shape: HealthCheckType, required: true, location_name: "Type"))
    HealthCheckConfig.add_member(:resource_path, Shapes::ShapeRef.new(shape: ResourcePath, location_name: "ResourcePath"))
    HealthCheckConfig.add_member(:fully_qualified_domain_name, Shapes::ShapeRef.new(shape: FullyQualifiedDomainName, location_name: "FullyQualifiedDomainName"))
    HealthCheckConfig.add_member(:search_string, Shapes::ShapeRef.new(shape: SearchString, location_name: "SearchString"))
    HealthCheckConfig.add_member(:request_interval, Shapes::ShapeRef.new(shape: RequestInterval, location_name: "RequestInterval"))
    HealthCheckConfig.add_member(:failure_threshold, Shapes::ShapeRef.new(shape: FailureThreshold, location_name: "FailureThreshold"))
    HealthCheckConfig.add_member(:measure_latency, Shapes::ShapeRef.new(shape: MeasureLatency, location_name: "MeasureLatency"))
    HealthCheckConfig.add_member(:inverted, Shapes::ShapeRef.new(shape: Inverted, location_name: "Inverted"))
    HealthCheckConfig.add_member(:health_threshold, Shapes::ShapeRef.new(shape: HealthThreshold, location_name: "HealthThreshold"))
    HealthCheckConfig.add_member(:child_health_checks, Shapes::ShapeRef.new(shape: ChildHealthCheckList, location_name: "ChildHealthChecks"))
    HealthCheckConfig.add_member(:enable_sni, Shapes::ShapeRef.new(shape: EnableSNI, location_name: "EnableSNI"))
    HealthCheckConfig.add_member(:regions, Shapes::ShapeRef.new(shape: HealthCheckRegionList, location_name: "Regions"))
    HealthCheckConfig.add_member(:alarm_identifier, Shapes::ShapeRef.new(shape: AlarmIdentifier, location_name: "AlarmIdentifier"))
    HealthCheckConfig.add_member(:insufficient_data_health_status, Shapes::ShapeRef.new(shape: InsufficientDataHealthStatus, location_name: "InsufficientDataHealthStatus"))
    HealthCheckConfig.struct_class = Types::HealthCheckConfig

    HealthCheckObservation.add_member(:region, Shapes::ShapeRef.new(shape: HealthCheckRegion, location_name: "Region"))
    HealthCheckObservation.add_member(:ip_address, Shapes::ShapeRef.new(shape: IPAddress, location_name: "IPAddress"))
    HealthCheckObservation.add_member(:status_report, Shapes::ShapeRef.new(shape: StatusReport, location_name: "StatusReport"))
    HealthCheckObservation.struct_class = Types::HealthCheckObservation

    HealthCheckObservations.member = Shapes::ShapeRef.new(shape: HealthCheckObservation, location_name: "HealthCheckObservation")

    HealthCheckRegionList.member = Shapes::ShapeRef.new(shape: HealthCheckRegion, location_name: "Region")

    HealthChecks.member = Shapes::ShapeRef.new(shape: HealthCheck, location_name: "HealthCheck")

    HostedZone.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "Id"))
    HostedZone.add_member(:name, Shapes::ShapeRef.new(shape: DNSName, required: true, location_name: "Name"))
    HostedZone.add_member(:caller_reference, Shapes::ShapeRef.new(shape: Nonce, required: true, location_name: "CallerReference"))
    HostedZone.add_member(:config, Shapes::ShapeRef.new(shape: HostedZoneConfig, location_name: "Config"))
    HostedZone.add_member(:resource_record_set_count, Shapes::ShapeRef.new(shape: HostedZoneRRSetCount, location_name: "ResourceRecordSetCount"))
    HostedZone.add_member(:linked_service, Shapes::ShapeRef.new(shape: LinkedService, location_name: "LinkedService"))
    HostedZone.struct_class = Types::HostedZone

    HostedZoneConfig.add_member(:comment, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Comment"))
    HostedZoneConfig.add_member(:private_zone, Shapes::ShapeRef.new(shape: IsPrivateZone, location_name: "PrivateZone"))
    HostedZoneConfig.struct_class = Types::HostedZoneConfig

    HostedZoneLimit.add_member(:type, Shapes::ShapeRef.new(shape: HostedZoneLimitType, required: true, location_name: "Type"))
    HostedZoneLimit.add_member(:value, Shapes::ShapeRef.new(shape: LimitValue, required: true, location_name: "Value"))
    HostedZoneLimit.struct_class = Types::HostedZoneLimit

    HostedZones.member = Shapes::ShapeRef.new(shape: HostedZone, location_name: "HostedZone")

    LinkedService.add_member(:service_principal, Shapes::ShapeRef.new(shape: ServicePrincipal, location_name: "ServicePrincipal"))
    LinkedService.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    LinkedService.struct_class = Types::LinkedService

    ListGeoLocationsRequest.add_member(:start_continent_code, Shapes::ShapeRef.new(shape: GeoLocationContinentCode, location: "querystring", location_name: "startcontinentcode"))
    ListGeoLocationsRequest.add_member(:start_country_code, Shapes::ShapeRef.new(shape: GeoLocationCountryCode, location: "querystring", location_name: "startcountrycode"))
    ListGeoLocationsRequest.add_member(:start_subdivision_code, Shapes::ShapeRef.new(shape: GeoLocationSubdivisionCode, location: "querystring", location_name: "startsubdivisioncode"))
    ListGeoLocationsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: PageMaxItems, location: "querystring", location_name: "maxitems"))
    ListGeoLocationsRequest.struct_class = Types::ListGeoLocationsRequest

    ListGeoLocationsResponse.add_member(:geo_location_details_list, Shapes::ShapeRef.new(shape: GeoLocationDetailsList, required: true, location_name: "GeoLocationDetailsList"))
    ListGeoLocationsResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: PageTruncated, required: true, location_name: "IsTruncated"))
    ListGeoLocationsResponse.add_member(:next_continent_code, Shapes::ShapeRef.new(shape: GeoLocationContinentCode, location_name: "NextContinentCode"))
    ListGeoLocationsResponse.add_member(:next_country_code, Shapes::ShapeRef.new(shape: GeoLocationCountryCode, location_name: "NextCountryCode"))
    ListGeoLocationsResponse.add_member(:next_subdivision_code, Shapes::ShapeRef.new(shape: GeoLocationSubdivisionCode, location_name: "NextSubdivisionCode"))
    ListGeoLocationsResponse.add_member(:max_items, Shapes::ShapeRef.new(shape: PageMaxItems, required: true, location_name: "MaxItems"))
    ListGeoLocationsResponse.struct_class = Types::ListGeoLocationsResponse

    ListHealthChecksRequest.add_member(:marker, Shapes::ShapeRef.new(shape: PageMarker, location: "querystring", location_name: "marker"))
    ListHealthChecksRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: PageMaxItems, location: "querystring", location_name: "maxitems"))
    ListHealthChecksRequest.struct_class = Types::ListHealthChecksRequest

    ListHealthChecksResponse.add_member(:health_checks, Shapes::ShapeRef.new(shape: HealthChecks, required: true, location_name: "HealthChecks"))
    ListHealthChecksResponse.add_member(:marker, Shapes::ShapeRef.new(shape: PageMarker, required: true, location_name: "Marker"))
    ListHealthChecksResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: PageTruncated, required: true, location_name: "IsTruncated"))
    ListHealthChecksResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: PageMarker, location_name: "NextMarker"))
    ListHealthChecksResponse.add_member(:max_items, Shapes::ShapeRef.new(shape: PageMaxItems, required: true, location_name: "MaxItems"))
    ListHealthChecksResponse.struct_class = Types::ListHealthChecksResponse

    ListHostedZonesByNameRequest.add_member(:dns_name, Shapes::ShapeRef.new(shape: DNSName, location: "querystring", location_name: "dnsname"))
    ListHostedZonesByNameRequest.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: ResourceId, location: "querystring", location_name: "hostedzoneid"))
    ListHostedZonesByNameRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: PageMaxItems, location: "querystring", location_name: "maxitems"))
    ListHostedZonesByNameRequest.struct_class = Types::ListHostedZonesByNameRequest

    ListHostedZonesByNameResponse.add_member(:hosted_zones, Shapes::ShapeRef.new(shape: HostedZones, required: true, location_name: "HostedZones"))
    ListHostedZonesByNameResponse.add_member(:dns_name, Shapes::ShapeRef.new(shape: DNSName, location_name: "DNSName"))
    ListHostedZonesByNameResponse.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "HostedZoneId"))
    ListHostedZonesByNameResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: PageTruncated, required: true, location_name: "IsTruncated"))
    ListHostedZonesByNameResponse.add_member(:next_dns_name, Shapes::ShapeRef.new(shape: DNSName, location_name: "NextDNSName"))
    ListHostedZonesByNameResponse.add_member(:next_hosted_zone_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "NextHostedZoneId"))
    ListHostedZonesByNameResponse.add_member(:max_items, Shapes::ShapeRef.new(shape: PageMaxItems, required: true, location_name: "MaxItems"))
    ListHostedZonesByNameResponse.struct_class = Types::ListHostedZonesByNameResponse

    ListHostedZonesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: PageMarker, location: "querystring", location_name: "marker"))
    ListHostedZonesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: PageMaxItems, location: "querystring", location_name: "maxitems"))
    ListHostedZonesRequest.add_member(:delegation_set_id, Shapes::ShapeRef.new(shape: ResourceId, location: "querystring", location_name: "delegationsetid"))
    ListHostedZonesRequest.struct_class = Types::ListHostedZonesRequest

    ListHostedZonesResponse.add_member(:hosted_zones, Shapes::ShapeRef.new(shape: HostedZones, required: true, location_name: "HostedZones"))
    ListHostedZonesResponse.add_member(:marker, Shapes::ShapeRef.new(shape: PageMarker, required: true, location_name: "Marker"))
    ListHostedZonesResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: PageTruncated, required: true, location_name: "IsTruncated"))
    ListHostedZonesResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: PageMarker, location_name: "NextMarker"))
    ListHostedZonesResponse.add_member(:max_items, Shapes::ShapeRef.new(shape: PageMaxItems, required: true, location_name: "MaxItems"))
    ListHostedZonesResponse.struct_class = Types::ListHostedZonesResponse

    ListQueryLoggingConfigsRequest.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: ResourceId, location: "querystring", location_name: "hostedzoneid"))
    ListQueryLoggingConfigsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nexttoken"))
    ListQueryLoggingConfigsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxresults"))
    ListQueryLoggingConfigsRequest.struct_class = Types::ListQueryLoggingConfigsRequest

    ListQueryLoggingConfigsResponse.add_member(:query_logging_configs, Shapes::ShapeRef.new(shape: QueryLoggingConfigs, required: true, location_name: "QueryLoggingConfigs"))
    ListQueryLoggingConfigsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListQueryLoggingConfigsResponse.struct_class = Types::ListQueryLoggingConfigsResponse

    ListResourceRecordSetsRequest.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "Id"))
    ListResourceRecordSetsRequest.add_member(:start_record_name, Shapes::ShapeRef.new(shape: DNSName, location: "querystring", location_name: "name"))
    ListResourceRecordSetsRequest.add_member(:start_record_type, Shapes::ShapeRef.new(shape: RRType, location: "querystring", location_name: "type"))
    ListResourceRecordSetsRequest.add_member(:start_record_identifier, Shapes::ShapeRef.new(shape: ResourceRecordSetIdentifier, location: "querystring", location_name: "identifier"))
    ListResourceRecordSetsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: PageMaxItems, location: "querystring", location_name: "maxitems"))
    ListResourceRecordSetsRequest.struct_class = Types::ListResourceRecordSetsRequest

    ListResourceRecordSetsResponse.add_member(:resource_record_sets, Shapes::ShapeRef.new(shape: ResourceRecordSets, required: true, location_name: "ResourceRecordSets"))
    ListResourceRecordSetsResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: PageTruncated, required: true, location_name: "IsTruncated"))
    ListResourceRecordSetsResponse.add_member(:next_record_name, Shapes::ShapeRef.new(shape: DNSName, location_name: "NextRecordName"))
    ListResourceRecordSetsResponse.add_member(:next_record_type, Shapes::ShapeRef.new(shape: RRType, location_name: "NextRecordType"))
    ListResourceRecordSetsResponse.add_member(:next_record_identifier, Shapes::ShapeRef.new(shape: ResourceRecordSetIdentifier, location_name: "NextRecordIdentifier"))
    ListResourceRecordSetsResponse.add_member(:max_items, Shapes::ShapeRef.new(shape: PageMaxItems, required: true, location_name: "MaxItems"))
    ListResourceRecordSetsResponse.struct_class = Types::ListResourceRecordSetsResponse

    ListReusableDelegationSetsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: PageMarker, location: "querystring", location_name: "marker"))
    ListReusableDelegationSetsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: PageMaxItems, location: "querystring", location_name: "maxitems"))
    ListReusableDelegationSetsRequest.struct_class = Types::ListReusableDelegationSetsRequest

    ListReusableDelegationSetsResponse.add_member(:delegation_sets, Shapes::ShapeRef.new(shape: DelegationSets, required: true, location_name: "DelegationSets"))
    ListReusableDelegationSetsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: PageMarker, required: true, location_name: "Marker"))
    ListReusableDelegationSetsResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: PageTruncated, required: true, location_name: "IsTruncated"))
    ListReusableDelegationSetsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: PageMarker, location_name: "NextMarker"))
    ListReusableDelegationSetsResponse.add_member(:max_items, Shapes::ShapeRef.new(shape: PageMaxItems, required: true, location_name: "MaxItems"))
    ListReusableDelegationSetsResponse.struct_class = Types::ListReusableDelegationSetsResponse

    ListTagsForResourceRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: TagResourceType, required: true, location: "uri", location_name: "ResourceType"))
    ListTagsForResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: TagResourceId, required: true, location: "uri", location_name: "ResourceId"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:resource_tag_set, Shapes::ShapeRef.new(shape: ResourceTagSet, required: true, location_name: "ResourceTagSet"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTagsForResourcesRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: TagResourceType, required: true, location: "uri", location_name: "ResourceType"))
    ListTagsForResourcesRequest.add_member(:resource_ids, Shapes::ShapeRef.new(shape: TagResourceIdList, required: true, location_name: "ResourceIds"))
    ListTagsForResourcesRequest.struct_class = Types::ListTagsForResourcesRequest

    ListTagsForResourcesResponse.add_member(:resource_tag_sets, Shapes::ShapeRef.new(shape: ResourceTagSetList, required: true, location_name: "ResourceTagSets"))
    ListTagsForResourcesResponse.struct_class = Types::ListTagsForResourcesResponse

    ListTrafficPoliciesRequest.add_member(:traffic_policy_id_marker, Shapes::ShapeRef.new(shape: TrafficPolicyId, location: "querystring", location_name: "trafficpolicyid"))
    ListTrafficPoliciesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: PageMaxItems, location: "querystring", location_name: "maxitems"))
    ListTrafficPoliciesRequest.struct_class = Types::ListTrafficPoliciesRequest

    ListTrafficPoliciesResponse.add_member(:traffic_policy_summaries, Shapes::ShapeRef.new(shape: TrafficPolicySummaries, required: true, location_name: "TrafficPolicySummaries"))
    ListTrafficPoliciesResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: PageTruncated, required: true, location_name: "IsTruncated"))
    ListTrafficPoliciesResponse.add_member(:traffic_policy_id_marker, Shapes::ShapeRef.new(shape: TrafficPolicyId, required: true, location_name: "TrafficPolicyIdMarker"))
    ListTrafficPoliciesResponse.add_member(:max_items, Shapes::ShapeRef.new(shape: PageMaxItems, required: true, location_name: "MaxItems"))
    ListTrafficPoliciesResponse.struct_class = Types::ListTrafficPoliciesResponse

    ListTrafficPolicyInstancesByHostedZoneRequest.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "querystring", location_name: "id"))
    ListTrafficPolicyInstancesByHostedZoneRequest.add_member(:traffic_policy_instance_name_marker, Shapes::ShapeRef.new(shape: DNSName, location: "querystring", location_name: "trafficpolicyinstancename"))
    ListTrafficPolicyInstancesByHostedZoneRequest.add_member(:traffic_policy_instance_type_marker, Shapes::ShapeRef.new(shape: RRType, location: "querystring", location_name: "trafficpolicyinstancetype"))
    ListTrafficPolicyInstancesByHostedZoneRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: PageMaxItems, location: "querystring", location_name: "maxitems"))
    ListTrafficPolicyInstancesByHostedZoneRequest.struct_class = Types::ListTrafficPolicyInstancesByHostedZoneRequest

    ListTrafficPolicyInstancesByHostedZoneResponse.add_member(:traffic_policy_instances, Shapes::ShapeRef.new(shape: TrafficPolicyInstances, required: true, location_name: "TrafficPolicyInstances"))
    ListTrafficPolicyInstancesByHostedZoneResponse.add_member(:traffic_policy_instance_name_marker, Shapes::ShapeRef.new(shape: DNSName, location_name: "TrafficPolicyInstanceNameMarker"))
    ListTrafficPolicyInstancesByHostedZoneResponse.add_member(:traffic_policy_instance_type_marker, Shapes::ShapeRef.new(shape: RRType, location_name: "TrafficPolicyInstanceTypeMarker"))
    ListTrafficPolicyInstancesByHostedZoneResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: PageTruncated, required: true, location_name: "IsTruncated"))
    ListTrafficPolicyInstancesByHostedZoneResponse.add_member(:max_items, Shapes::ShapeRef.new(shape: PageMaxItems, required: true, location_name: "MaxItems"))
    ListTrafficPolicyInstancesByHostedZoneResponse.struct_class = Types::ListTrafficPolicyInstancesByHostedZoneResponse

    ListTrafficPolicyInstancesByPolicyRequest.add_member(:traffic_policy_id, Shapes::ShapeRef.new(shape: TrafficPolicyId, required: true, location: "querystring", location_name: "id"))
    ListTrafficPolicyInstancesByPolicyRequest.add_member(:traffic_policy_version, Shapes::ShapeRef.new(shape: TrafficPolicyVersion, required: true, location: "querystring", location_name: "version"))
    ListTrafficPolicyInstancesByPolicyRequest.add_member(:hosted_zone_id_marker, Shapes::ShapeRef.new(shape: ResourceId, location: "querystring", location_name: "hostedzoneid"))
    ListTrafficPolicyInstancesByPolicyRequest.add_member(:traffic_policy_instance_name_marker, Shapes::ShapeRef.new(shape: DNSName, location: "querystring", location_name: "trafficpolicyinstancename"))
    ListTrafficPolicyInstancesByPolicyRequest.add_member(:traffic_policy_instance_type_marker, Shapes::ShapeRef.new(shape: RRType, location: "querystring", location_name: "trafficpolicyinstancetype"))
    ListTrafficPolicyInstancesByPolicyRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: PageMaxItems, location: "querystring", location_name: "maxitems"))
    ListTrafficPolicyInstancesByPolicyRequest.struct_class = Types::ListTrafficPolicyInstancesByPolicyRequest

    ListTrafficPolicyInstancesByPolicyResponse.add_member(:traffic_policy_instances, Shapes::ShapeRef.new(shape: TrafficPolicyInstances, required: true, location_name: "TrafficPolicyInstances"))
    ListTrafficPolicyInstancesByPolicyResponse.add_member(:hosted_zone_id_marker, Shapes::ShapeRef.new(shape: ResourceId, location_name: "HostedZoneIdMarker"))
    ListTrafficPolicyInstancesByPolicyResponse.add_member(:traffic_policy_instance_name_marker, Shapes::ShapeRef.new(shape: DNSName, location_name: "TrafficPolicyInstanceNameMarker"))
    ListTrafficPolicyInstancesByPolicyResponse.add_member(:traffic_policy_instance_type_marker, Shapes::ShapeRef.new(shape: RRType, location_name: "TrafficPolicyInstanceTypeMarker"))
    ListTrafficPolicyInstancesByPolicyResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: PageTruncated, required: true, location_name: "IsTruncated"))
    ListTrafficPolicyInstancesByPolicyResponse.add_member(:max_items, Shapes::ShapeRef.new(shape: PageMaxItems, required: true, location_name: "MaxItems"))
    ListTrafficPolicyInstancesByPolicyResponse.struct_class = Types::ListTrafficPolicyInstancesByPolicyResponse

    ListTrafficPolicyInstancesRequest.add_member(:hosted_zone_id_marker, Shapes::ShapeRef.new(shape: ResourceId, location: "querystring", location_name: "hostedzoneid"))
    ListTrafficPolicyInstancesRequest.add_member(:traffic_policy_instance_name_marker, Shapes::ShapeRef.new(shape: DNSName, location: "querystring", location_name: "trafficpolicyinstancename"))
    ListTrafficPolicyInstancesRequest.add_member(:traffic_policy_instance_type_marker, Shapes::ShapeRef.new(shape: RRType, location: "querystring", location_name: "trafficpolicyinstancetype"))
    ListTrafficPolicyInstancesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: PageMaxItems, location: "querystring", location_name: "maxitems"))
    ListTrafficPolicyInstancesRequest.struct_class = Types::ListTrafficPolicyInstancesRequest

    ListTrafficPolicyInstancesResponse.add_member(:traffic_policy_instances, Shapes::ShapeRef.new(shape: TrafficPolicyInstances, required: true, location_name: "TrafficPolicyInstances"))
    ListTrafficPolicyInstancesResponse.add_member(:hosted_zone_id_marker, Shapes::ShapeRef.new(shape: ResourceId, location_name: "HostedZoneIdMarker"))
    ListTrafficPolicyInstancesResponse.add_member(:traffic_policy_instance_name_marker, Shapes::ShapeRef.new(shape: DNSName, location_name: "TrafficPolicyInstanceNameMarker"))
    ListTrafficPolicyInstancesResponse.add_member(:traffic_policy_instance_type_marker, Shapes::ShapeRef.new(shape: RRType, location_name: "TrafficPolicyInstanceTypeMarker"))
    ListTrafficPolicyInstancesResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: PageTruncated, required: true, location_name: "IsTruncated"))
    ListTrafficPolicyInstancesResponse.add_member(:max_items, Shapes::ShapeRef.new(shape: PageMaxItems, required: true, location_name: "MaxItems"))
    ListTrafficPolicyInstancesResponse.struct_class = Types::ListTrafficPolicyInstancesResponse

    ListTrafficPolicyVersionsRequest.add_member(:id, Shapes::ShapeRef.new(shape: TrafficPolicyId, required: true, location: "uri", location_name: "Id"))
    ListTrafficPolicyVersionsRequest.add_member(:traffic_policy_version_marker, Shapes::ShapeRef.new(shape: TrafficPolicyVersionMarker, location: "querystring", location_name: "trafficpolicyversion"))
    ListTrafficPolicyVersionsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: PageMaxItems, location: "querystring", location_name: "maxitems"))
    ListTrafficPolicyVersionsRequest.struct_class = Types::ListTrafficPolicyVersionsRequest

    ListTrafficPolicyVersionsResponse.add_member(:traffic_policies, Shapes::ShapeRef.new(shape: TrafficPolicies, required: true, location_name: "TrafficPolicies"))
    ListTrafficPolicyVersionsResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: PageTruncated, required: true, location_name: "IsTruncated"))
    ListTrafficPolicyVersionsResponse.add_member(:traffic_policy_version_marker, Shapes::ShapeRef.new(shape: TrafficPolicyVersionMarker, required: true, location_name: "TrafficPolicyVersionMarker"))
    ListTrafficPolicyVersionsResponse.add_member(:max_items, Shapes::ShapeRef.new(shape: PageMaxItems, required: true, location_name: "MaxItems"))
    ListTrafficPolicyVersionsResponse.struct_class = Types::ListTrafficPolicyVersionsResponse

    ListVPCAssociationAuthorizationsRequest.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "Id"))
    ListVPCAssociationAuthorizationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nexttoken"))
    ListVPCAssociationAuthorizationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxresults"))
    ListVPCAssociationAuthorizationsRequest.struct_class = Types::ListVPCAssociationAuthorizationsRequest

    ListVPCAssociationAuthorizationsResponse.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "HostedZoneId"))
    ListVPCAssociationAuthorizationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListVPCAssociationAuthorizationsResponse.add_member(:vp_cs, Shapes::ShapeRef.new(shape: VPCs, required: true, location_name: "VPCs"))
    ListVPCAssociationAuthorizationsResponse.struct_class = Types::ListVPCAssociationAuthorizationsResponse

    QueryLoggingConfig.add_member(:id, Shapes::ShapeRef.new(shape: QueryLoggingConfigId, required: true, location_name: "Id"))
    QueryLoggingConfig.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "HostedZoneId"))
    QueryLoggingConfig.add_member(:cloud_watch_logs_log_group_arn, Shapes::ShapeRef.new(shape: CloudWatchLogsLogGroupArn, required: true, location_name: "CloudWatchLogsLogGroupArn"))
    QueryLoggingConfig.struct_class = Types::QueryLoggingConfig

    QueryLoggingConfigs.member = Shapes::ShapeRef.new(shape: QueryLoggingConfig, location_name: "QueryLoggingConfig")

    RecordData.member = Shapes::ShapeRef.new(shape: RecordDataEntry, location_name: "RecordDataEntry")

    ResettableElementNameList.member = Shapes::ShapeRef.new(shape: ResettableElementName, location_name: "ResettableElementName")

    ResourceRecord.add_member(:value, Shapes::ShapeRef.new(shape: RData, required: true, location_name: "Value"))
    ResourceRecord.struct_class = Types::ResourceRecord

    ResourceRecordSet.add_member(:name, Shapes::ShapeRef.new(shape: DNSName, required: true, location_name: "Name"))
    ResourceRecordSet.add_member(:type, Shapes::ShapeRef.new(shape: RRType, required: true, location_name: "Type"))
    ResourceRecordSet.add_member(:set_identifier, Shapes::ShapeRef.new(shape: ResourceRecordSetIdentifier, location_name: "SetIdentifier"))
    ResourceRecordSet.add_member(:weight, Shapes::ShapeRef.new(shape: ResourceRecordSetWeight, location_name: "Weight"))
    ResourceRecordSet.add_member(:region, Shapes::ShapeRef.new(shape: ResourceRecordSetRegion, location_name: "Region"))
    ResourceRecordSet.add_member(:geo_location, Shapes::ShapeRef.new(shape: GeoLocation, location_name: "GeoLocation"))
    ResourceRecordSet.add_member(:failover, Shapes::ShapeRef.new(shape: ResourceRecordSetFailover, location_name: "Failover"))
    ResourceRecordSet.add_member(:multi_value_answer, Shapes::ShapeRef.new(shape: ResourceRecordSetMultiValueAnswer, location_name: "MultiValueAnswer"))
    ResourceRecordSet.add_member(:ttl, Shapes::ShapeRef.new(shape: TTL, location_name: "TTL"))
    ResourceRecordSet.add_member(:resource_records, Shapes::ShapeRef.new(shape: ResourceRecords, location_name: "ResourceRecords"))
    ResourceRecordSet.add_member(:alias_target, Shapes::ShapeRef.new(shape: AliasTarget, location_name: "AliasTarget"))
    ResourceRecordSet.add_member(:health_check_id, Shapes::ShapeRef.new(shape: HealthCheckId, location_name: "HealthCheckId"))
    ResourceRecordSet.add_member(:traffic_policy_instance_id, Shapes::ShapeRef.new(shape: TrafficPolicyInstanceId, location_name: "TrafficPolicyInstanceId"))
    ResourceRecordSet.struct_class = Types::ResourceRecordSet

    ResourceRecordSets.member = Shapes::ShapeRef.new(shape: ResourceRecordSet, location_name: "ResourceRecordSet")

    ResourceRecords.member = Shapes::ShapeRef.new(shape: ResourceRecord, location_name: "ResourceRecord")

    ResourceTagSet.add_member(:resource_type, Shapes::ShapeRef.new(shape: TagResourceType, location_name: "ResourceType"))
    ResourceTagSet.add_member(:resource_id, Shapes::ShapeRef.new(shape: TagResourceId, location_name: "ResourceId"))
    ResourceTagSet.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ResourceTagSet.struct_class = Types::ResourceTagSet

    ResourceTagSetList.member = Shapes::ShapeRef.new(shape: ResourceTagSet, location_name: "ResourceTagSet")

    ReusableDelegationSetLimit.add_member(:type, Shapes::ShapeRef.new(shape: ReusableDelegationSetLimitType, required: true, location_name: "Type"))
    ReusableDelegationSetLimit.add_member(:value, Shapes::ShapeRef.new(shape: LimitValue, required: true, location_name: "Value"))
    ReusableDelegationSetLimit.struct_class = Types::ReusableDelegationSetLimit

    StatusReport.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    StatusReport.add_member(:checked_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "CheckedTime"))
    StatusReport.struct_class = Types::StatusReport

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey, location_name: "Key")

    TagList.member = Shapes::ShapeRef.new(shape: Tag, location_name: "Tag")

    TagResourceIdList.member = Shapes::ShapeRef.new(shape: TagResourceId, location_name: "ResourceId")

    TestDNSAnswerRequest.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "querystring", location_name: "hostedzoneid"))
    TestDNSAnswerRequest.add_member(:record_name, Shapes::ShapeRef.new(shape: DNSName, required: true, location: "querystring", location_name: "recordname"))
    TestDNSAnswerRequest.add_member(:record_type, Shapes::ShapeRef.new(shape: RRType, required: true, location: "querystring", location_name: "recordtype"))
    TestDNSAnswerRequest.add_member(:resolver_ip, Shapes::ShapeRef.new(shape: IPAddress, location: "querystring", location_name: "resolverip"))
    TestDNSAnswerRequest.add_member(:edns0_client_subnet_ip, Shapes::ShapeRef.new(shape: IPAddress, location: "querystring", location_name: "edns0clientsubnetip"))
    TestDNSAnswerRequest.add_member(:edns0_client_subnet_mask, Shapes::ShapeRef.new(shape: SubnetMask, location: "querystring", location_name: "edns0clientsubnetmask"))
    TestDNSAnswerRequest.struct_class = Types::TestDNSAnswerRequest

    TestDNSAnswerResponse.add_member(:nameserver, Shapes::ShapeRef.new(shape: Nameserver, required: true, location_name: "Nameserver"))
    TestDNSAnswerResponse.add_member(:record_name, Shapes::ShapeRef.new(shape: DNSName, required: true, location_name: "RecordName"))
    TestDNSAnswerResponse.add_member(:record_type, Shapes::ShapeRef.new(shape: RRType, required: true, location_name: "RecordType"))
    TestDNSAnswerResponse.add_member(:record_data, Shapes::ShapeRef.new(shape: RecordData, required: true, location_name: "RecordData"))
    TestDNSAnswerResponse.add_member(:response_code, Shapes::ShapeRef.new(shape: DNSRCode, required: true, location_name: "ResponseCode"))
    TestDNSAnswerResponse.add_member(:protocol, Shapes::ShapeRef.new(shape: TransportProtocol, required: true, location_name: "Protocol"))
    TestDNSAnswerResponse.struct_class = Types::TestDNSAnswerResponse

    TrafficPolicies.member = Shapes::ShapeRef.new(shape: TrafficPolicy, location_name: "TrafficPolicy")

    TrafficPolicy.add_member(:id, Shapes::ShapeRef.new(shape: TrafficPolicyId, required: true, location_name: "Id"))
    TrafficPolicy.add_member(:version, Shapes::ShapeRef.new(shape: TrafficPolicyVersion, required: true, location_name: "Version"))
    TrafficPolicy.add_member(:name, Shapes::ShapeRef.new(shape: TrafficPolicyName, required: true, location_name: "Name"))
    TrafficPolicy.add_member(:type, Shapes::ShapeRef.new(shape: RRType, required: true, location_name: "Type"))
    TrafficPolicy.add_member(:document, Shapes::ShapeRef.new(shape: TrafficPolicyDocument, required: true, location_name: "Document"))
    TrafficPolicy.add_member(:comment, Shapes::ShapeRef.new(shape: TrafficPolicyComment, location_name: "Comment"))
    TrafficPolicy.struct_class = Types::TrafficPolicy

    TrafficPolicyInstance.add_member(:id, Shapes::ShapeRef.new(shape: TrafficPolicyInstanceId, required: true, location_name: "Id"))
    TrafficPolicyInstance.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "HostedZoneId"))
    TrafficPolicyInstance.add_member(:name, Shapes::ShapeRef.new(shape: DNSName, required: true, location_name: "Name"))
    TrafficPolicyInstance.add_member(:ttl, Shapes::ShapeRef.new(shape: TTL, required: true, location_name: "TTL"))
    TrafficPolicyInstance.add_member(:state, Shapes::ShapeRef.new(shape: TrafficPolicyInstanceState, required: true, location_name: "State"))
    TrafficPolicyInstance.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    TrafficPolicyInstance.add_member(:traffic_policy_id, Shapes::ShapeRef.new(shape: TrafficPolicyId, required: true, location_name: "TrafficPolicyId"))
    TrafficPolicyInstance.add_member(:traffic_policy_version, Shapes::ShapeRef.new(shape: TrafficPolicyVersion, required: true, location_name: "TrafficPolicyVersion"))
    TrafficPolicyInstance.add_member(:traffic_policy_type, Shapes::ShapeRef.new(shape: RRType, required: true, location_name: "TrafficPolicyType"))
    TrafficPolicyInstance.struct_class = Types::TrafficPolicyInstance

    TrafficPolicyInstances.member = Shapes::ShapeRef.new(shape: TrafficPolicyInstance, location_name: "TrafficPolicyInstance")

    TrafficPolicySummaries.member = Shapes::ShapeRef.new(shape: TrafficPolicySummary, location_name: "TrafficPolicySummary")

    TrafficPolicySummary.add_member(:id, Shapes::ShapeRef.new(shape: TrafficPolicyId, required: true, location_name: "Id"))
    TrafficPolicySummary.add_member(:name, Shapes::ShapeRef.new(shape: TrafficPolicyName, required: true, location_name: "Name"))
    TrafficPolicySummary.add_member(:type, Shapes::ShapeRef.new(shape: RRType, required: true, location_name: "Type"))
    TrafficPolicySummary.add_member(:latest_version, Shapes::ShapeRef.new(shape: TrafficPolicyVersion, required: true, location_name: "LatestVersion"))
    TrafficPolicySummary.add_member(:traffic_policy_count, Shapes::ShapeRef.new(shape: TrafficPolicyVersion, required: true, location_name: "TrafficPolicyCount"))
    TrafficPolicySummary.struct_class = Types::TrafficPolicySummary

    UpdateHealthCheckRequest.add_member(:health_check_id, Shapes::ShapeRef.new(shape: HealthCheckId, required: true, location: "uri", location_name: "HealthCheckId"))
    UpdateHealthCheckRequest.add_member(:health_check_version, Shapes::ShapeRef.new(shape: HealthCheckVersion, location_name: "HealthCheckVersion"))
    UpdateHealthCheckRequest.add_member(:ip_address, Shapes::ShapeRef.new(shape: IPAddress, location_name: "IPAddress"))
    UpdateHealthCheckRequest.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "Port"))
    UpdateHealthCheckRequest.add_member(:resource_path, Shapes::ShapeRef.new(shape: ResourcePath, location_name: "ResourcePath"))
    UpdateHealthCheckRequest.add_member(:fully_qualified_domain_name, Shapes::ShapeRef.new(shape: FullyQualifiedDomainName, location_name: "FullyQualifiedDomainName"))
    UpdateHealthCheckRequest.add_member(:search_string, Shapes::ShapeRef.new(shape: SearchString, location_name: "SearchString"))
    UpdateHealthCheckRequest.add_member(:failure_threshold, Shapes::ShapeRef.new(shape: FailureThreshold, location_name: "FailureThreshold"))
    UpdateHealthCheckRequest.add_member(:inverted, Shapes::ShapeRef.new(shape: Inverted, location_name: "Inverted"))
    UpdateHealthCheckRequest.add_member(:health_threshold, Shapes::ShapeRef.new(shape: HealthThreshold, location_name: "HealthThreshold"))
    UpdateHealthCheckRequest.add_member(:child_health_checks, Shapes::ShapeRef.new(shape: ChildHealthCheckList, location_name: "ChildHealthChecks"))
    UpdateHealthCheckRequest.add_member(:enable_sni, Shapes::ShapeRef.new(shape: EnableSNI, location_name: "EnableSNI"))
    UpdateHealthCheckRequest.add_member(:regions, Shapes::ShapeRef.new(shape: HealthCheckRegionList, location_name: "Regions"))
    UpdateHealthCheckRequest.add_member(:alarm_identifier, Shapes::ShapeRef.new(shape: AlarmIdentifier, location_name: "AlarmIdentifier"))
    UpdateHealthCheckRequest.add_member(:insufficient_data_health_status, Shapes::ShapeRef.new(shape: InsufficientDataHealthStatus, location_name: "InsufficientDataHealthStatus"))
    UpdateHealthCheckRequest.add_member(:reset_elements, Shapes::ShapeRef.new(shape: ResettableElementNameList, location_name: "ResetElements"))
    UpdateHealthCheckRequest.struct_class = Types::UpdateHealthCheckRequest

    UpdateHealthCheckResponse.add_member(:health_check, Shapes::ShapeRef.new(shape: HealthCheck, required: true, location_name: "HealthCheck"))
    UpdateHealthCheckResponse.struct_class = Types::UpdateHealthCheckResponse

    UpdateHostedZoneCommentRequest.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "Id"))
    UpdateHostedZoneCommentRequest.add_member(:comment, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Comment"))
    UpdateHostedZoneCommentRequest.struct_class = Types::UpdateHostedZoneCommentRequest

    UpdateHostedZoneCommentResponse.add_member(:hosted_zone, Shapes::ShapeRef.new(shape: HostedZone, required: true, location_name: "HostedZone"))
    UpdateHostedZoneCommentResponse.struct_class = Types::UpdateHostedZoneCommentResponse

    UpdateTrafficPolicyCommentRequest.add_member(:id, Shapes::ShapeRef.new(shape: TrafficPolicyId, required: true, location: "uri", location_name: "Id"))
    UpdateTrafficPolicyCommentRequest.add_member(:version, Shapes::ShapeRef.new(shape: TrafficPolicyVersion, required: true, location: "uri", location_name: "Version"))
    UpdateTrafficPolicyCommentRequest.add_member(:comment, Shapes::ShapeRef.new(shape: TrafficPolicyComment, required: true, location_name: "Comment"))
    UpdateTrafficPolicyCommentRequest.struct_class = Types::UpdateTrafficPolicyCommentRequest

    UpdateTrafficPolicyCommentResponse.add_member(:traffic_policy, Shapes::ShapeRef.new(shape: TrafficPolicy, required: true, location_name: "TrafficPolicy"))
    UpdateTrafficPolicyCommentResponse.struct_class = Types::UpdateTrafficPolicyCommentResponse

    UpdateTrafficPolicyInstanceRequest.add_member(:id, Shapes::ShapeRef.new(shape: TrafficPolicyInstanceId, required: true, location: "uri", location_name: "Id"))
    UpdateTrafficPolicyInstanceRequest.add_member(:ttl, Shapes::ShapeRef.new(shape: TTL, required: true, location_name: "TTL"))
    UpdateTrafficPolicyInstanceRequest.add_member(:traffic_policy_id, Shapes::ShapeRef.new(shape: TrafficPolicyId, required: true, location_name: "TrafficPolicyId"))
    UpdateTrafficPolicyInstanceRequest.add_member(:traffic_policy_version, Shapes::ShapeRef.new(shape: TrafficPolicyVersion, required: true, location_name: "TrafficPolicyVersion"))
    UpdateTrafficPolicyInstanceRequest.struct_class = Types::UpdateTrafficPolicyInstanceRequest

    UpdateTrafficPolicyInstanceResponse.add_member(:traffic_policy_instance, Shapes::ShapeRef.new(shape: TrafficPolicyInstance, required: true, location_name: "TrafficPolicyInstance"))
    UpdateTrafficPolicyInstanceResponse.struct_class = Types::UpdateTrafficPolicyInstanceResponse

    VPC.add_member(:vpc_region, Shapes::ShapeRef.new(shape: VPCRegion, location_name: "VPCRegion"))
    VPC.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VPCId, location_name: "VPCId"))
    VPC.struct_class = Types::VPC

    VPCs.member = Shapes::ShapeRef.new(shape: VPC, location_name: "VPC")


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2013-04-01"

      api.metadata = {
        "apiVersion" => "2013-04-01",
        "endpointPrefix" => "route53",
        "globalEndpoint" => "route53.amazonaws.com",
        "protocol" => "rest-xml",
        "serviceAbbreviation" => "Route 53",
        "serviceFullName" => "Amazon Route 53",
        "serviceId" => "Route 53",
        "signatureVersion" => "v4",
        "uid" => "route53-2013-04-01",
      }

      api.add_operation(:associate_vpc_with_hosted_zone, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateVPCWithHostedZone"
        o.http_method = "POST"
        o.http_request_uri = "/2013-04-01/hostedzone/{Id}/associatevpc"
        o.input = Shapes::ShapeRef.new(shape: AssociateVPCWithHostedZoneRequest,
          location_name: "AssociateVPCWithHostedZoneRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"https://route53.amazonaws.com/doc/2013-04-01/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: AssociateVPCWithHostedZoneResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: PublicZoneVPCAssociation)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingDomainExists)
        o.errors << Shapes::ShapeRef.new(shape: LimitsExceeded)
      end)

      api.add_operation(:change_resource_record_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ChangeResourceRecordSets"
        o.http_method = "POST"
        o.http_request_uri = "/2013-04-01/hostedzone/{Id}/rrset/"
        o.input = Shapes::ShapeRef.new(shape: ChangeResourceRecordSetsRequest,
          location_name: "ChangeResourceRecordSetsRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"https://route53.amazonaws.com/doc/2013-04-01/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: ChangeResourceRecordSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchHealthCheck)
        o.errors << Shapes::ShapeRef.new(shape: InvalidChangeBatch)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: PriorRequestNotComplete)
      end)

      api.add_operation(:change_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ChangeTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/2013-04-01/tags/{ResourceType}/{ResourceId}"
        o.input = Shapes::ShapeRef.new(shape: ChangeTagsForResourceRequest,
          location_name: "ChangeTagsForResourceRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"https://route53.amazonaws.com/doc/2013-04-01/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: ChangeTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchHealthCheck)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        o.errors << Shapes::ShapeRef.new(shape: PriorRequestNotComplete)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_health_check, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateHealthCheck"
        o.http_method = "POST"
        o.http_request_uri = "/2013-04-01/healthcheck"
        o.input = Shapes::ShapeRef.new(shape: CreateHealthCheckRequest,
          location_name: "CreateHealthCheckRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"https://route53.amazonaws.com/doc/2013-04-01/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: CreateHealthCheckResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyHealthChecks)
        o.errors << Shapes::ShapeRef.new(shape: HealthCheckAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
      end)

      api.add_operation(:create_hosted_zone, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateHostedZone"
        o.http_method = "POST"
        o.http_request_uri = "/2013-04-01/hostedzone"
        o.input = Shapes::ShapeRef.new(shape: CreateHostedZoneRequest,
          location_name: "CreateHostedZoneRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"https://route53.amazonaws.com/doc/2013-04-01/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: CreateHostedZoneResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDomainName)
        o.errors << Shapes::ShapeRef.new(shape: HostedZoneAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: TooManyHostedZones)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: DelegationSetNotAvailable)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingDomainExists)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDelegationSet)
        o.errors << Shapes::ShapeRef.new(shape: DelegationSetNotReusable)
      end)

      api.add_operation(:create_query_logging_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateQueryLoggingConfig"
        o.http_method = "POST"
        o.http_request_uri = "/2013-04-01/queryloggingconfig"
        o.input = Shapes::ShapeRef.new(shape: CreateQueryLoggingConfigRequest,
          location_name: "CreateQueryLoggingConfigRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"https://route53.amazonaws.com/doc/2013-04-01/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: CreateQueryLoggingConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModification)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchCloudWatchLogsLogGroup)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: QueryLoggingConfigAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientCloudWatchLogsResourcePolicy)
      end)

      api.add_operation(:create_reusable_delegation_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateReusableDelegationSet"
        o.http_method = "POST"
        o.http_request_uri = "/2013-04-01/delegationset"
        o.input = Shapes::ShapeRef.new(shape: CreateReusableDelegationSetRequest,
          location_name: "CreateReusableDelegationSetRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"https://route53.amazonaws.com/doc/2013-04-01/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: CreateReusableDelegationSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: DelegationSetAlreadyCreated)
        o.errors << Shapes::ShapeRef.new(shape: LimitsExceeded)
        o.errors << Shapes::ShapeRef.new(shape: HostedZoneNotFound)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: DelegationSetNotAvailable)
        o.errors << Shapes::ShapeRef.new(shape: DelegationSetAlreadyReusable)
      end)

      api.add_operation(:create_traffic_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTrafficPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/2013-04-01/trafficpolicy"
        o.input = Shapes::ShapeRef.new(shape: CreateTrafficPolicyRequest,
          location_name: "CreateTrafficPolicyRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"https://route53.amazonaws.com/doc/2013-04-01/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: CreateTrafficPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTrafficPolicies)
        o.errors << Shapes::ShapeRef.new(shape: TrafficPolicyAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrafficPolicyDocument)
      end)

      api.add_operation(:create_traffic_policy_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTrafficPolicyInstance"
        o.http_method = "POST"
        o.http_request_uri = "/2013-04-01/trafficpolicyinstance"
        o.input = Shapes::ShapeRef.new(shape: CreateTrafficPolicyInstanceRequest,
          location_name: "CreateTrafficPolicyInstanceRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"https://route53.amazonaws.com/doc/2013-04-01/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: CreateTrafficPolicyInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTrafficPolicyInstances)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchTrafficPolicy)
        o.errors << Shapes::ShapeRef.new(shape: TrafficPolicyInstanceAlreadyExists)
      end)

      api.add_operation(:create_traffic_policy_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTrafficPolicyVersion"
        o.http_method = "POST"
        o.http_request_uri = "/2013-04-01/trafficpolicy/{Id}"
        o.input = Shapes::ShapeRef.new(shape: CreateTrafficPolicyVersionRequest,
          location_name: "CreateTrafficPolicyVersionRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"https://route53.amazonaws.com/doc/2013-04-01/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: CreateTrafficPolicyVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchTrafficPolicy)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTrafficPolicyVersionsForCurrentPolicy)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModification)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrafficPolicyDocument)
      end)

      api.add_operation(:create_vpc_association_authorization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVPCAssociationAuthorization"
        o.http_method = "POST"
        o.http_request_uri = "/2013-04-01/hostedzone/{Id}/authorizevpcassociation"
        o.input = Shapes::ShapeRef.new(shape: CreateVPCAssociationAuthorizationRequest,
          location_name: "CreateVPCAssociationAuthorizationRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"https://route53.amazonaws.com/doc/2013-04-01/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: CreateVPCAssociationAuthorizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModification)
        o.errors << Shapes::ShapeRef.new(shape: TooManyVPCAssociationAuthorizations)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
      end)

      api.add_operation(:delete_health_check, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteHealthCheck"
        o.http_method = "DELETE"
        o.http_request_uri = "/2013-04-01/healthcheck/{HealthCheckId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteHealthCheckRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteHealthCheckResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchHealthCheck)
        o.errors << Shapes::ShapeRef.new(shape: HealthCheckInUse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
      end)

      api.add_operation(:delete_hosted_zone, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteHostedZone"
        o.http_method = "DELETE"
        o.http_request_uri = "/2013-04-01/hostedzone/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteHostedZoneRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteHostedZoneResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        o.errors << Shapes::ShapeRef.new(shape: HostedZoneNotEmpty)
        o.errors << Shapes::ShapeRef.new(shape: PriorRequestNotComplete)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDomainName)
      end)

      api.add_operation(:delete_query_logging_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteQueryLoggingConfig"
        o.http_method = "DELETE"
        o.http_request_uri = "/2013-04-01/queryloggingconfig/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteQueryLoggingConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteQueryLoggingConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModification)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchQueryLoggingConfig)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
      end)

      api.add_operation(:delete_reusable_delegation_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteReusableDelegationSet"
        o.http_method = "DELETE"
        o.http_request_uri = "/2013-04-01/delegationset/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteReusableDelegationSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteReusableDelegationSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDelegationSet)
        o.errors << Shapes::ShapeRef.new(shape: DelegationSetInUse)
        o.errors << Shapes::ShapeRef.new(shape: DelegationSetNotReusable)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
      end)

      api.add_operation(:delete_traffic_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTrafficPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/2013-04-01/trafficpolicy/{Id}/{Version}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTrafficPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTrafficPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchTrafficPolicy)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: TrafficPolicyInUse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModification)
      end)

      api.add_operation(:delete_traffic_policy_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTrafficPolicyInstance"
        o.http_method = "DELETE"
        o.http_request_uri = "/2013-04-01/trafficpolicyinstance/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTrafficPolicyInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTrafficPolicyInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchTrafficPolicyInstance)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: PriorRequestNotComplete)
      end)

      api.add_operation(:delete_vpc_association_authorization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVPCAssociationAuthorization"
        o.http_method = "POST"
        o.http_request_uri = "/2013-04-01/hostedzone/{Id}/deauthorizevpcassociation"
        o.input = Shapes::ShapeRef.new(shape: DeleteVPCAssociationAuthorizationRequest,
          location_name: "DeleteVPCAssociationAuthorizationRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"https://route53.amazonaws.com/doc/2013-04-01/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: DeleteVPCAssociationAuthorizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModification)
        o.errors << Shapes::ShapeRef.new(shape: VPCAssociationAuthorizationNotFound)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
      end)

      api.add_operation(:disassociate_vpc_from_hosted_zone, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateVPCFromHostedZone"
        o.http_method = "POST"
        o.http_request_uri = "/2013-04-01/hostedzone/{Id}/disassociatevpc"
        o.input = Shapes::ShapeRef.new(shape: DisassociateVPCFromHostedZoneRequest,
          location_name: "DisassociateVPCFromHostedZoneRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"https://route53.amazonaws.com/doc/2013-04-01/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: DisassociateVPCFromHostedZoneResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCId)
        o.errors << Shapes::ShapeRef.new(shape: VPCAssociationNotFound)
        o.errors << Shapes::ShapeRef.new(shape: LastVPCAssociation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
      end)

      api.add_operation(:get_account_limit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountLimit"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/accountlimit/{Type}"
        o.input = Shapes::ShapeRef.new(shape: GetAccountLimitRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccountLimitResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
      end)

      api.add_operation(:get_change, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetChange"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/change/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetChangeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetChangeResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchChange)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
      end)

      api.add_operation(:get_checker_ip_ranges, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCheckerIpRanges"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/checkeripranges"
        o.input = Shapes::ShapeRef.new(shape: GetCheckerIpRangesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCheckerIpRangesResponse)
      end)

      api.add_operation(:get_geo_location, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGeoLocation"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/geolocation"
        o.input = Shapes::ShapeRef.new(shape: GetGeoLocationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGeoLocationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchGeoLocation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
      end)

      api.add_operation(:get_health_check, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetHealthCheck"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/healthcheck/{HealthCheckId}"
        o.input = Shapes::ShapeRef.new(shape: GetHealthCheckRequest)
        o.output = Shapes::ShapeRef.new(shape: GetHealthCheckResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchHealthCheck)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleVersion)
      end)

      api.add_operation(:get_health_check_count, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetHealthCheckCount"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/healthcheckcount"
        o.input = Shapes::ShapeRef.new(shape: GetHealthCheckCountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetHealthCheckCountResponse)
      end)

      api.add_operation(:get_health_check_last_failure_reason, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetHealthCheckLastFailureReason"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/healthcheck/{HealthCheckId}/lastfailurereason"
        o.input = Shapes::ShapeRef.new(shape: GetHealthCheckLastFailureReasonRequest)
        o.output = Shapes::ShapeRef.new(shape: GetHealthCheckLastFailureReasonResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchHealthCheck)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
      end)

      api.add_operation(:get_health_check_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetHealthCheckStatus"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/healthcheck/{HealthCheckId}/status"
        o.input = Shapes::ShapeRef.new(shape: GetHealthCheckStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetHealthCheckStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchHealthCheck)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
      end)

      api.add_operation(:get_hosted_zone, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetHostedZone"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/hostedzone/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetHostedZoneRequest)
        o.output = Shapes::ShapeRef.new(shape: GetHostedZoneResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
      end)

      api.add_operation(:get_hosted_zone_count, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetHostedZoneCount"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/hostedzonecount"
        o.input = Shapes::ShapeRef.new(shape: GetHostedZoneCountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetHostedZoneCountResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
      end)

      api.add_operation(:get_hosted_zone_limit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetHostedZoneLimit"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/hostedzonelimit/{Id}/{Type}"
        o.input = Shapes::ShapeRef.new(shape: GetHostedZoneLimitRequest)
        o.output = Shapes::ShapeRef.new(shape: GetHostedZoneLimitResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: HostedZoneNotPrivate)
      end)

      api.add_operation(:get_query_logging_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueryLoggingConfig"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/queryloggingconfig/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetQueryLoggingConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetQueryLoggingConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchQueryLoggingConfig)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
      end)

      api.add_operation(:get_reusable_delegation_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReusableDelegationSet"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/delegationset/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetReusableDelegationSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReusableDelegationSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDelegationSet)
        o.errors << Shapes::ShapeRef.new(shape: DelegationSetNotReusable)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
      end)

      api.add_operation(:get_reusable_delegation_set_limit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReusableDelegationSetLimit"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/reusabledelegationsetlimit/{Id}/{Type}"
        o.input = Shapes::ShapeRef.new(shape: GetReusableDelegationSetLimitRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReusableDelegationSetLimitResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDelegationSet)
      end)

      api.add_operation(:get_traffic_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTrafficPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/trafficpolicy/{Id}/{Version}"
        o.input = Shapes::ShapeRef.new(shape: GetTrafficPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTrafficPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchTrafficPolicy)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
      end)

      api.add_operation(:get_traffic_policy_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTrafficPolicyInstance"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/trafficpolicyinstance/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetTrafficPolicyInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTrafficPolicyInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchTrafficPolicyInstance)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
      end)

      api.add_operation(:get_traffic_policy_instance_count, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTrafficPolicyInstanceCount"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/trafficpolicyinstancecount"
        o.input = Shapes::ShapeRef.new(shape: GetTrafficPolicyInstanceCountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTrafficPolicyInstanceCountResponse)
      end)

      api.add_operation(:list_geo_locations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGeoLocations"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/geolocations"
        o.input = Shapes::ShapeRef.new(shape: ListGeoLocationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGeoLocationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
      end)

      api.add_operation(:list_health_checks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListHealthChecks"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/healthcheck"
        o.input = Shapes::ShapeRef.new(shape: ListHealthChecksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListHealthChecksResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleVersion)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_hosted_zones, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListHostedZones"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/hostedzone"
        o.input = Shapes::ShapeRef.new(shape: ListHostedZonesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListHostedZonesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDelegationSet)
        o.errors << Shapes::ShapeRef.new(shape: DelegationSetNotReusable)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_hosted_zones_by_name, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListHostedZonesByName"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/hostedzonesbyname"
        o.input = Shapes::ShapeRef.new(shape: ListHostedZonesByNameRequest)
        o.output = Shapes::ShapeRef.new(shape: ListHostedZonesByNameResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDomainName)
      end)

      api.add_operation(:list_query_logging_configs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListQueryLoggingConfigs"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/queryloggingconfig"
        o.input = Shapes::ShapeRef.new(shape: ListQueryLoggingConfigsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListQueryLoggingConfigsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationToken)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchHostedZone)
      end)

      api.add_operation(:list_resource_record_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceRecordSets"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/hostedzone/{Id}/rrset"
        o.input = Shapes::ShapeRef.new(shape: ListResourceRecordSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourceRecordSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "next_record_name" => "start_record_name",
            "next_record_type" => "start_record_type",
            "next_record_identifier" => "start_record_identifier"
          }
        )
      end)

      api.add_operation(:list_reusable_delegation_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReusableDelegationSets"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/delegationset"
        o.input = Shapes::ShapeRef.new(shape: ListReusableDelegationSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListReusableDelegationSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/tags/{ResourceType}/{ResourceId}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchHealthCheck)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        o.errors << Shapes::ShapeRef.new(shape: PriorRequestNotComplete)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_tags_for_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResources"
        o.http_method = "POST"
        o.http_request_uri = "/2013-04-01/tags/{ResourceType}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourcesRequest,
          location_name: "ListTagsForResourcesRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"https://route53.amazonaws.com/doc/2013-04-01/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchHealthCheck)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        o.errors << Shapes::ShapeRef.new(shape: PriorRequestNotComplete)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_traffic_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTrafficPolicies"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/trafficpolicies"
        o.input = Shapes::ShapeRef.new(shape: ListTrafficPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTrafficPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
      end)

      api.add_operation(:list_traffic_policy_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTrafficPolicyInstances"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/trafficpolicyinstances"
        o.input = Shapes::ShapeRef.new(shape: ListTrafficPolicyInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTrafficPolicyInstancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchTrafficPolicyInstance)
      end)

      api.add_operation(:list_traffic_policy_instances_by_hosted_zone, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTrafficPolicyInstancesByHostedZone"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/trafficpolicyinstances/hostedzone"
        o.input = Shapes::ShapeRef.new(shape: ListTrafficPolicyInstancesByHostedZoneRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTrafficPolicyInstancesByHostedZoneResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchTrafficPolicyInstance)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchHostedZone)
      end)

      api.add_operation(:list_traffic_policy_instances_by_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTrafficPolicyInstancesByPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/trafficpolicyinstances/trafficpolicy"
        o.input = Shapes::ShapeRef.new(shape: ListTrafficPolicyInstancesByPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTrafficPolicyInstancesByPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchTrafficPolicyInstance)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchTrafficPolicy)
      end)

      api.add_operation(:list_traffic_policy_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTrafficPolicyVersions"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/trafficpolicies/{Id}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListTrafficPolicyVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTrafficPolicyVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchTrafficPolicy)
      end)

      api.add_operation(:list_vpc_association_authorizations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVPCAssociationAuthorizations"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/hostedzone/{Id}/authorizevpcassociation"
        o.input = Shapes::ShapeRef.new(shape: ListVPCAssociationAuthorizationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVPCAssociationAuthorizationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationToken)
      end)

      api.add_operation(:test_dns_answer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TestDNSAnswer"
        o.http_method = "GET"
        o.http_request_uri = "/2013-04-01/testdnsanswer"
        o.input = Shapes::ShapeRef.new(shape: TestDNSAnswerRequest)
        o.output = Shapes::ShapeRef.new(shape: TestDNSAnswerResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
      end)

      api.add_operation(:update_health_check, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateHealthCheck"
        o.http_method = "POST"
        o.http_request_uri = "/2013-04-01/healthcheck/{HealthCheckId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateHealthCheckRequest,
          location_name: "UpdateHealthCheckRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"https://route53.amazonaws.com/doc/2013-04-01/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: UpdateHealthCheckResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchHealthCheck)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: HealthCheckVersionMismatch)
      end)

      api.add_operation(:update_hosted_zone_comment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateHostedZoneComment"
        o.http_method = "POST"
        o.http_request_uri = "/2013-04-01/hostedzone/{Id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateHostedZoneCommentRequest,
          location_name: "UpdateHostedZoneCommentRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"https://route53.amazonaws.com/doc/2013-04-01/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: UpdateHostedZoneCommentResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
      end)

      api.add_operation(:update_traffic_policy_comment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTrafficPolicyComment"
        o.http_method = "POST"
        o.http_request_uri = "/2013-04-01/trafficpolicy/{Id}/{Version}"
        o.input = Shapes::ShapeRef.new(shape: UpdateTrafficPolicyCommentRequest,
          location_name: "UpdateTrafficPolicyCommentRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"https://route53.amazonaws.com/doc/2013-04-01/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: UpdateTrafficPolicyCommentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchTrafficPolicy)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModification)
      end)

      api.add_operation(:update_traffic_policy_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTrafficPolicyInstance"
        o.http_method = "POST"
        o.http_request_uri = "/2013-04-01/trafficpolicyinstance/{Id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateTrafficPolicyInstanceRequest,
          location_name: "UpdateTrafficPolicyInstanceRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"https://route53.amazonaws.com/doc/2013-04-01/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: UpdateTrafficPolicyInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchTrafficPolicy)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchTrafficPolicyInstance)
        o.errors << Shapes::ShapeRef.new(shape: PriorRequestNotComplete)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingTypes)
      end)
    end

  end
end
