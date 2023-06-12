# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::OpenSearchService
  # @api private
  module ClientApi

    include Seahorse::Model

    ARN = Shapes::StringShape.new(name: 'ARN')
    AWSAccount = Shapes::StringShape.new(name: 'AWSAccount')
    AWSDomainInformation = Shapes::StructureShape.new(name: 'AWSDomainInformation')
    AcceptInboundConnectionRequest = Shapes::StructureShape.new(name: 'AcceptInboundConnectionRequest')
    AcceptInboundConnectionResponse = Shapes::StructureShape.new(name: 'AcceptInboundConnectionResponse')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessPoliciesStatus = Shapes::StructureShape.new(name: 'AccessPoliciesStatus')
    ActionSeverity = Shapes::StringShape.new(name: 'ActionSeverity')
    ActionStatus = Shapes::StringShape.new(name: 'ActionStatus')
    ActionType = Shapes::StringShape.new(name: 'ActionType')
    AddTagsRequest = Shapes::StructureShape.new(name: 'AddTagsRequest')
    AdditionalLimit = Shapes::StructureShape.new(name: 'AdditionalLimit')
    AdditionalLimitList = Shapes::ListShape.new(name: 'AdditionalLimitList')
    AdvancedOptions = Shapes::MapShape.new(name: 'AdvancedOptions')
    AdvancedOptionsStatus = Shapes::StructureShape.new(name: 'AdvancedOptionsStatus')
    AdvancedSecurityOptions = Shapes::StructureShape.new(name: 'AdvancedSecurityOptions')
    AdvancedSecurityOptionsInput = Shapes::StructureShape.new(name: 'AdvancedSecurityOptionsInput')
    AdvancedSecurityOptionsStatus = Shapes::StructureShape.new(name: 'AdvancedSecurityOptionsStatus')
    AssociatePackageRequest = Shapes::StructureShape.new(name: 'AssociatePackageRequest')
    AssociatePackageResponse = Shapes::StructureShape.new(name: 'AssociatePackageResponse')
    AuthorizeVpcEndpointAccessRequest = Shapes::StructureShape.new(name: 'AuthorizeVpcEndpointAccessRequest')
    AuthorizeVpcEndpointAccessResponse = Shapes::StructureShape.new(name: 'AuthorizeVpcEndpointAccessResponse')
    AuthorizedPrincipal = Shapes::StructureShape.new(name: 'AuthorizedPrincipal')
    AuthorizedPrincipalList = Shapes::ListShape.new(name: 'AuthorizedPrincipalList')
    AutoTune = Shapes::StructureShape.new(name: 'AutoTune')
    AutoTuneDate = Shapes::TimestampShape.new(name: 'AutoTuneDate')
    AutoTuneDesiredState = Shapes::StringShape.new(name: 'AutoTuneDesiredState')
    AutoTuneDetails = Shapes::StructureShape.new(name: 'AutoTuneDetails')
    AutoTuneList = Shapes::ListShape.new(name: 'AutoTuneList')
    AutoTuneMaintenanceSchedule = Shapes::StructureShape.new(name: 'AutoTuneMaintenanceSchedule')
    AutoTuneMaintenanceScheduleList = Shapes::ListShape.new(name: 'AutoTuneMaintenanceScheduleList')
    AutoTuneOptions = Shapes::StructureShape.new(name: 'AutoTuneOptions')
    AutoTuneOptionsInput = Shapes::StructureShape.new(name: 'AutoTuneOptionsInput')
    AutoTuneOptionsOutput = Shapes::StructureShape.new(name: 'AutoTuneOptionsOutput')
    AutoTuneOptionsStatus = Shapes::StructureShape.new(name: 'AutoTuneOptionsStatus')
    AutoTuneState = Shapes::StringShape.new(name: 'AutoTuneState')
    AutoTuneStatus = Shapes::StructureShape.new(name: 'AutoTuneStatus')
    AutoTuneType = Shapes::StringShape.new(name: 'AutoTuneType')
    AvailabilityZone = Shapes::StringShape.new(name: 'AvailabilityZone')
    AvailabilityZoneInfo = Shapes::StructureShape.new(name: 'AvailabilityZoneInfo')
    AvailabilityZoneInfoList = Shapes::ListShape.new(name: 'AvailabilityZoneInfoList')
    AvailabilityZoneList = Shapes::ListShape.new(name: 'AvailabilityZoneList')
    BackendRole = Shapes::StringShape.new(name: 'BackendRole')
    BaseException = Shapes::StructureShape.new(name: 'BaseException')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CancelServiceSoftwareUpdateRequest = Shapes::StructureShape.new(name: 'CancelServiceSoftwareUpdateRequest')
    CancelServiceSoftwareUpdateResponse = Shapes::StructureShape.new(name: 'CancelServiceSoftwareUpdateResponse')
    ChangeProgressDetails = Shapes::StructureShape.new(name: 'ChangeProgressDetails')
    ChangeProgressStage = Shapes::StructureShape.new(name: 'ChangeProgressStage')
    ChangeProgressStageList = Shapes::ListShape.new(name: 'ChangeProgressStageList')
    ChangeProgressStageName = Shapes::StringShape.new(name: 'ChangeProgressStageName')
    ChangeProgressStageStatus = Shapes::StringShape.new(name: 'ChangeProgressStageStatus')
    ChangeProgressStatusDetails = Shapes::StructureShape.new(name: 'ChangeProgressStatusDetails')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CloudWatchLogsLogGroupArn = Shapes::StringShape.new(name: 'CloudWatchLogsLogGroupArn')
    ClusterConfig = Shapes::StructureShape.new(name: 'ClusterConfig')
    ClusterConfigStatus = Shapes::StructureShape.new(name: 'ClusterConfigStatus')
    CognitoOptions = Shapes::StructureShape.new(name: 'CognitoOptions')
    CognitoOptionsStatus = Shapes::StructureShape.new(name: 'CognitoOptionsStatus')
    ColdStorageOptions = Shapes::StructureShape.new(name: 'ColdStorageOptions')
    CommitMessage = Shapes::StringShape.new(name: 'CommitMessage')
    CompatibleVersionsList = Shapes::ListShape.new(name: 'CompatibleVersionsList')
    CompatibleVersionsMap = Shapes::StructureShape.new(name: 'CompatibleVersionsMap')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectionAlias = Shapes::StringShape.new(name: 'ConnectionAlias')
    ConnectionId = Shapes::StringShape.new(name: 'ConnectionId')
    ConnectionMode = Shapes::StringShape.new(name: 'ConnectionMode')
    ConnectionProperties = Shapes::StructureShape.new(name: 'ConnectionProperties')
    ConnectionStatusMessage = Shapes::StringShape.new(name: 'ConnectionStatusMessage')
    CreateDomainRequest = Shapes::StructureShape.new(name: 'CreateDomainRequest')
    CreateDomainResponse = Shapes::StructureShape.new(name: 'CreateDomainResponse')
    CreateOutboundConnectionRequest = Shapes::StructureShape.new(name: 'CreateOutboundConnectionRequest')
    CreateOutboundConnectionResponse = Shapes::StructureShape.new(name: 'CreateOutboundConnectionResponse')
    CreatePackageRequest = Shapes::StructureShape.new(name: 'CreatePackageRequest')
    CreatePackageResponse = Shapes::StructureShape.new(name: 'CreatePackageResponse')
    CreateVpcEndpointRequest = Shapes::StructureShape.new(name: 'CreateVpcEndpointRequest')
    CreateVpcEndpointResponse = Shapes::StructureShape.new(name: 'CreateVpcEndpointResponse')
    CreatedAt = Shapes::TimestampShape.new(name: 'CreatedAt')
    CrossClusterSearchConnectionProperties = Shapes::StructureShape.new(name: 'CrossClusterSearchConnectionProperties')
    DeleteDomainRequest = Shapes::StructureShape.new(name: 'DeleteDomainRequest')
    DeleteDomainResponse = Shapes::StructureShape.new(name: 'DeleteDomainResponse')
    DeleteInboundConnectionRequest = Shapes::StructureShape.new(name: 'DeleteInboundConnectionRequest')
    DeleteInboundConnectionResponse = Shapes::StructureShape.new(name: 'DeleteInboundConnectionResponse')
    DeleteOutboundConnectionRequest = Shapes::StructureShape.new(name: 'DeleteOutboundConnectionRequest')
    DeleteOutboundConnectionResponse = Shapes::StructureShape.new(name: 'DeleteOutboundConnectionResponse')
    DeletePackageRequest = Shapes::StructureShape.new(name: 'DeletePackageRequest')
    DeletePackageResponse = Shapes::StructureShape.new(name: 'DeletePackageResponse')
    DeleteVpcEndpointRequest = Shapes::StructureShape.new(name: 'DeleteVpcEndpointRequest')
    DeleteVpcEndpointResponse = Shapes::StructureShape.new(name: 'DeleteVpcEndpointResponse')
    DependencyFailureException = Shapes::StructureShape.new(name: 'DependencyFailureException')
    DeploymentCloseDateTimeStamp = Shapes::TimestampShape.new(name: 'DeploymentCloseDateTimeStamp')
    DeploymentStatus = Shapes::StringShape.new(name: 'DeploymentStatus')
    DeploymentType = Shapes::StringShape.new(name: 'DeploymentType')
    DescribeDomainAutoTunesRequest = Shapes::StructureShape.new(name: 'DescribeDomainAutoTunesRequest')
    DescribeDomainAutoTunesResponse = Shapes::StructureShape.new(name: 'DescribeDomainAutoTunesResponse')
    DescribeDomainChangeProgressRequest = Shapes::StructureShape.new(name: 'DescribeDomainChangeProgressRequest')
    DescribeDomainChangeProgressResponse = Shapes::StructureShape.new(name: 'DescribeDomainChangeProgressResponse')
    DescribeDomainConfigRequest = Shapes::StructureShape.new(name: 'DescribeDomainConfigRequest')
    DescribeDomainConfigResponse = Shapes::StructureShape.new(name: 'DescribeDomainConfigResponse')
    DescribeDomainHealthRequest = Shapes::StructureShape.new(name: 'DescribeDomainHealthRequest')
    DescribeDomainHealthResponse = Shapes::StructureShape.new(name: 'DescribeDomainHealthResponse')
    DescribeDomainNodesRequest = Shapes::StructureShape.new(name: 'DescribeDomainNodesRequest')
    DescribeDomainNodesResponse = Shapes::StructureShape.new(name: 'DescribeDomainNodesResponse')
    DescribeDomainRequest = Shapes::StructureShape.new(name: 'DescribeDomainRequest')
    DescribeDomainResponse = Shapes::StructureShape.new(name: 'DescribeDomainResponse')
    DescribeDomainsRequest = Shapes::StructureShape.new(name: 'DescribeDomainsRequest')
    DescribeDomainsResponse = Shapes::StructureShape.new(name: 'DescribeDomainsResponse')
    DescribeDryRunProgressRequest = Shapes::StructureShape.new(name: 'DescribeDryRunProgressRequest')
    DescribeDryRunProgressResponse = Shapes::StructureShape.new(name: 'DescribeDryRunProgressResponse')
    DescribeInboundConnectionsRequest = Shapes::StructureShape.new(name: 'DescribeInboundConnectionsRequest')
    DescribeInboundConnectionsResponse = Shapes::StructureShape.new(name: 'DescribeInboundConnectionsResponse')
    DescribeInstanceTypeLimitsRequest = Shapes::StructureShape.new(name: 'DescribeInstanceTypeLimitsRequest')
    DescribeInstanceTypeLimitsResponse = Shapes::StructureShape.new(name: 'DescribeInstanceTypeLimitsResponse')
    DescribeOutboundConnectionsRequest = Shapes::StructureShape.new(name: 'DescribeOutboundConnectionsRequest')
    DescribeOutboundConnectionsResponse = Shapes::StructureShape.new(name: 'DescribeOutboundConnectionsResponse')
    DescribePackagesFilter = Shapes::StructureShape.new(name: 'DescribePackagesFilter')
    DescribePackagesFilterList = Shapes::ListShape.new(name: 'DescribePackagesFilterList')
    DescribePackagesFilterName = Shapes::StringShape.new(name: 'DescribePackagesFilterName')
    DescribePackagesFilterValue = Shapes::StringShape.new(name: 'DescribePackagesFilterValue')
    DescribePackagesFilterValues = Shapes::ListShape.new(name: 'DescribePackagesFilterValues')
    DescribePackagesRequest = Shapes::StructureShape.new(name: 'DescribePackagesRequest')
    DescribePackagesResponse = Shapes::StructureShape.new(name: 'DescribePackagesResponse')
    DescribeReservedInstanceOfferingsRequest = Shapes::StructureShape.new(name: 'DescribeReservedInstanceOfferingsRequest')
    DescribeReservedInstanceOfferingsResponse = Shapes::StructureShape.new(name: 'DescribeReservedInstanceOfferingsResponse')
    DescribeReservedInstancesRequest = Shapes::StructureShape.new(name: 'DescribeReservedInstancesRequest')
    DescribeReservedInstancesResponse = Shapes::StructureShape.new(name: 'DescribeReservedInstancesResponse')
    DescribeVpcEndpointsRequest = Shapes::StructureShape.new(name: 'DescribeVpcEndpointsRequest')
    DescribeVpcEndpointsResponse = Shapes::StructureShape.new(name: 'DescribeVpcEndpointsResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DisableTimestamp = Shapes::TimestampShape.new(name: 'DisableTimestamp')
    DisabledOperationException = Shapes::StructureShape.new(name: 'DisabledOperationException')
    DissociatePackageRequest = Shapes::StructureShape.new(name: 'DissociatePackageRequest')
    DissociatePackageResponse = Shapes::StructureShape.new(name: 'DissociatePackageResponse')
    DomainArn = Shapes::StringShape.new(name: 'DomainArn')
    DomainConfig = Shapes::StructureShape.new(name: 'DomainConfig')
    DomainEndpointOptions = Shapes::StructureShape.new(name: 'DomainEndpointOptions')
    DomainEndpointOptionsStatus = Shapes::StructureShape.new(name: 'DomainEndpointOptionsStatus')
    DomainHealth = Shapes::StringShape.new(name: 'DomainHealth')
    DomainId = Shapes::StringShape.new(name: 'DomainId')
    DomainInfo = Shapes::StructureShape.new(name: 'DomainInfo')
    DomainInfoList = Shapes::ListShape.new(name: 'DomainInfoList')
    DomainInformationContainer = Shapes::StructureShape.new(name: 'DomainInformationContainer')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    DomainNameFqdn = Shapes::StringShape.new(name: 'DomainNameFqdn')
    DomainNameList = Shapes::ListShape.new(name: 'DomainNameList')
    DomainNodesStatus = Shapes::StructureShape.new(name: 'DomainNodesStatus')
    DomainNodesStatusList = Shapes::ListShape.new(name: 'DomainNodesStatusList')
    DomainPackageDetails = Shapes::StructureShape.new(name: 'DomainPackageDetails')
    DomainPackageDetailsList = Shapes::ListShape.new(name: 'DomainPackageDetailsList')
    DomainPackageStatus = Shapes::StringShape.new(name: 'DomainPackageStatus')
    DomainState = Shapes::StringShape.new(name: 'DomainState')
    DomainStatus = Shapes::StructureShape.new(name: 'DomainStatus')
    DomainStatusList = Shapes::ListShape.new(name: 'DomainStatusList')
    Double = Shapes::FloatShape.new(name: 'Double')
    DryRun = Shapes::BooleanShape.new(name: 'DryRun')
    DryRunMode = Shapes::StringShape.new(name: 'DryRunMode')
    DryRunProgressStatus = Shapes::StructureShape.new(name: 'DryRunProgressStatus')
    DryRunResults = Shapes::StructureShape.new(name: 'DryRunResults')
    Duration = Shapes::StructureShape.new(name: 'Duration')
    DurationValue = Shapes::IntegerShape.new(name: 'DurationValue')
    EBSOptions = Shapes::StructureShape.new(name: 'EBSOptions')
    EBSOptionsStatus = Shapes::StructureShape.new(name: 'EBSOptionsStatus')
    EncryptionAtRestOptions = Shapes::StructureShape.new(name: 'EncryptionAtRestOptions')
    EncryptionAtRestOptionsStatus = Shapes::StructureShape.new(name: 'EncryptionAtRestOptionsStatus')
    Endpoint = Shapes::StringShape.new(name: 'Endpoint')
    EndpointsMap = Shapes::MapShape.new(name: 'EndpointsMap')
    EngineType = Shapes::StringShape.new(name: 'EngineType')
    EnvironmentInfo = Shapes::StructureShape.new(name: 'EnvironmentInfo')
    EnvironmentInfoList = Shapes::ListShape.new(name: 'EnvironmentInfoList')
    ErrorDetails = Shapes::StructureShape.new(name: 'ErrorDetails')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ErrorType = Shapes::StringShape.new(name: 'ErrorType')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    GUID = Shapes::StringShape.new(name: 'GUID')
    GetCompatibleVersionsRequest = Shapes::StructureShape.new(name: 'GetCompatibleVersionsRequest')
    GetCompatibleVersionsResponse = Shapes::StructureShape.new(name: 'GetCompatibleVersionsResponse')
    GetPackageVersionHistoryRequest = Shapes::StructureShape.new(name: 'GetPackageVersionHistoryRequest')
    GetPackageVersionHistoryResponse = Shapes::StructureShape.new(name: 'GetPackageVersionHistoryResponse')
    GetUpgradeHistoryRequest = Shapes::StructureShape.new(name: 'GetUpgradeHistoryRequest')
    GetUpgradeHistoryResponse = Shapes::StructureShape.new(name: 'GetUpgradeHistoryResponse')
    GetUpgradeStatusRequest = Shapes::StructureShape.new(name: 'GetUpgradeStatusRequest')
    GetUpgradeStatusResponse = Shapes::StructureShape.new(name: 'GetUpgradeStatusResponse')
    IdentityPoolId = Shapes::StringShape.new(name: 'IdentityPoolId')
    InboundConnection = Shapes::StructureShape.new(name: 'InboundConnection')
    InboundConnectionStatus = Shapes::StructureShape.new(name: 'InboundConnectionStatus')
    InboundConnectionStatusCode = Shapes::StringShape.new(name: 'InboundConnectionStatusCode')
    InboundConnections = Shapes::ListShape.new(name: 'InboundConnections')
    InstanceCount = Shapes::IntegerShape.new(name: 'InstanceCount')
    InstanceCountLimits = Shapes::StructureShape.new(name: 'InstanceCountLimits')
    InstanceLimits = Shapes::StructureShape.new(name: 'InstanceLimits')
    InstanceRole = Shapes::StringShape.new(name: 'InstanceRole')
    InstanceRoleList = Shapes::ListShape.new(name: 'InstanceRoleList')
    InstanceTypeDetails = Shapes::StructureShape.new(name: 'InstanceTypeDetails')
    InstanceTypeDetailsList = Shapes::ListShape.new(name: 'InstanceTypeDetailsList')
    InstanceTypeString = Shapes::StringShape.new(name: 'InstanceTypeString')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerClass = Shapes::IntegerShape.new(name: 'IntegerClass')
    InternalException = Shapes::StructureShape.new(name: 'InternalException')
    InvalidPaginationTokenException = Shapes::StructureShape.new(name: 'InvalidPaginationTokenException')
    InvalidTypeException = Shapes::StructureShape.new(name: 'InvalidTypeException')
    Issue = Shapes::StringShape.new(name: 'Issue')
    Issues = Shapes::ListShape.new(name: 'Issues')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    LastUpdated = Shapes::TimestampShape.new(name: 'LastUpdated')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    LimitName = Shapes::StringShape.new(name: 'LimitName')
    LimitValue = Shapes::StringShape.new(name: 'LimitValue')
    LimitValueList = Shapes::ListShape.new(name: 'LimitValueList')
    Limits = Shapes::StructureShape.new(name: 'Limits')
    LimitsByRole = Shapes::MapShape.new(name: 'LimitsByRole')
    ListDomainNamesRequest = Shapes::StructureShape.new(name: 'ListDomainNamesRequest')
    ListDomainNamesResponse = Shapes::StructureShape.new(name: 'ListDomainNamesResponse')
    ListDomainsForPackageRequest = Shapes::StructureShape.new(name: 'ListDomainsForPackageRequest')
    ListDomainsForPackageResponse = Shapes::StructureShape.new(name: 'ListDomainsForPackageResponse')
    ListInstanceTypeDetailsRequest = Shapes::StructureShape.new(name: 'ListInstanceTypeDetailsRequest')
    ListInstanceTypeDetailsResponse = Shapes::StructureShape.new(name: 'ListInstanceTypeDetailsResponse')
    ListPackagesForDomainRequest = Shapes::StructureShape.new(name: 'ListPackagesForDomainRequest')
    ListPackagesForDomainResponse = Shapes::StructureShape.new(name: 'ListPackagesForDomainResponse')
    ListScheduledActionsRequest = Shapes::StructureShape.new(name: 'ListScheduledActionsRequest')
    ListScheduledActionsResponse = Shapes::StructureShape.new(name: 'ListScheduledActionsResponse')
    ListTagsRequest = Shapes::StructureShape.new(name: 'ListTagsRequest')
    ListTagsResponse = Shapes::StructureShape.new(name: 'ListTagsResponse')
    ListVersionsRequest = Shapes::StructureShape.new(name: 'ListVersionsRequest')
    ListVersionsResponse = Shapes::StructureShape.new(name: 'ListVersionsResponse')
    ListVpcEndpointAccessRequest = Shapes::StructureShape.new(name: 'ListVpcEndpointAccessRequest')
    ListVpcEndpointAccessResponse = Shapes::StructureShape.new(name: 'ListVpcEndpointAccessResponse')
    ListVpcEndpointsForDomainRequest = Shapes::StructureShape.new(name: 'ListVpcEndpointsForDomainRequest')
    ListVpcEndpointsForDomainResponse = Shapes::StructureShape.new(name: 'ListVpcEndpointsForDomainResponse')
    ListVpcEndpointsRequest = Shapes::StructureShape.new(name: 'ListVpcEndpointsRequest')
    ListVpcEndpointsResponse = Shapes::StructureShape.new(name: 'ListVpcEndpointsResponse')
    LogPublishingOption = Shapes::StructureShape.new(name: 'LogPublishingOption')
    LogPublishingOptions = Shapes::MapShape.new(name: 'LogPublishingOptions')
    LogPublishingOptionsStatus = Shapes::StructureShape.new(name: 'LogPublishingOptionsStatus')
    LogType = Shapes::StringShape.new(name: 'LogType')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MasterNodeStatus = Shapes::StringShape.new(name: 'MasterNodeStatus')
    MasterUserOptions = Shapes::StructureShape.new(name: 'MasterUserOptions')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaximumInstanceCount = Shapes::IntegerShape.new(name: 'MaximumInstanceCount')
    Message = Shapes::StringShape.new(name: 'Message')
    MinimumInstanceCount = Shapes::IntegerShape.new(name: 'MinimumInstanceCount')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NodeId = Shapes::StringShape.new(name: 'NodeId')
    NodeStatus = Shapes::StringShape.new(name: 'NodeStatus')
    NodeToNodeEncryptionOptions = Shapes::StructureShape.new(name: 'NodeToNodeEncryptionOptions')
    NodeToNodeEncryptionOptionsStatus = Shapes::StructureShape.new(name: 'NodeToNodeEncryptionOptionsStatus')
    NodeType = Shapes::StringShape.new(name: 'NodeType')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NumberOfAZs = Shapes::StringShape.new(name: 'NumberOfAZs')
    NumberOfNodes = Shapes::StringShape.new(name: 'NumberOfNodes')
    NumberOfShards = Shapes::StringShape.new(name: 'NumberOfShards')
    OffPeakWindow = Shapes::StructureShape.new(name: 'OffPeakWindow')
    OffPeakWindowOptions = Shapes::StructureShape.new(name: 'OffPeakWindowOptions')
    OffPeakWindowOptionsStatus = Shapes::StructureShape.new(name: 'OffPeakWindowOptionsStatus')
    OpenSearchPartitionInstanceType = Shapes::StringShape.new(name: 'OpenSearchPartitionInstanceType')
    OpenSearchWarmPartitionInstanceType = Shapes::StringShape.new(name: 'OpenSearchWarmPartitionInstanceType')
    OptionState = Shapes::StringShape.new(name: 'OptionState')
    OptionStatus = Shapes::StructureShape.new(name: 'OptionStatus')
    OutboundConnection = Shapes::StructureShape.new(name: 'OutboundConnection')
    OutboundConnectionStatus = Shapes::StructureShape.new(name: 'OutboundConnectionStatus')
    OutboundConnectionStatusCode = Shapes::StringShape.new(name: 'OutboundConnectionStatusCode')
    OutboundConnections = Shapes::ListShape.new(name: 'OutboundConnections')
    OverallChangeStatus = Shapes::StringShape.new(name: 'OverallChangeStatus')
    OwnerId = Shapes::StringShape.new(name: 'OwnerId')
    PackageDescription = Shapes::StringShape.new(name: 'PackageDescription')
    PackageDetails = Shapes::StructureShape.new(name: 'PackageDetails')
    PackageDetailsList = Shapes::ListShape.new(name: 'PackageDetailsList')
    PackageID = Shapes::StringShape.new(name: 'PackageID')
    PackageName = Shapes::StringShape.new(name: 'PackageName')
    PackageSource = Shapes::StructureShape.new(name: 'PackageSource')
    PackageStatus = Shapes::StringShape.new(name: 'PackageStatus')
    PackageType = Shapes::StringShape.new(name: 'PackageType')
    PackageVersion = Shapes::StringShape.new(name: 'PackageVersion')
    PackageVersionHistory = Shapes::StructureShape.new(name: 'PackageVersionHistory')
    PackageVersionHistoryList = Shapes::ListShape.new(name: 'PackageVersionHistoryList')
    Password = Shapes::StringShape.new(name: 'Password')
    PolicyDocument = Shapes::StringShape.new(name: 'PolicyDocument')
    PrincipalType = Shapes::StringShape.new(name: 'PrincipalType')
    PurchaseReservedInstanceOfferingRequest = Shapes::StructureShape.new(name: 'PurchaseReservedInstanceOfferingRequest')
    PurchaseReservedInstanceOfferingResponse = Shapes::StructureShape.new(name: 'PurchaseReservedInstanceOfferingResponse')
    RecurringCharge = Shapes::StructureShape.new(name: 'RecurringCharge')
    RecurringChargeList = Shapes::ListShape.new(name: 'RecurringChargeList')
    ReferencePath = Shapes::StringShape.new(name: 'ReferencePath')
    Region = Shapes::StringShape.new(name: 'Region')
    RejectInboundConnectionRequest = Shapes::StructureShape.new(name: 'RejectInboundConnectionRequest')
    RejectInboundConnectionResponse = Shapes::StructureShape.new(name: 'RejectInboundConnectionResponse')
    RemoveTagsRequest = Shapes::StructureShape.new(name: 'RemoveTagsRequest')
    ReservationToken = Shapes::StringShape.new(name: 'ReservationToken')
    ReservedInstance = Shapes::StructureShape.new(name: 'ReservedInstance')
    ReservedInstanceList = Shapes::ListShape.new(name: 'ReservedInstanceList')
    ReservedInstanceOffering = Shapes::StructureShape.new(name: 'ReservedInstanceOffering')
    ReservedInstanceOfferingList = Shapes::ListShape.new(name: 'ReservedInstanceOfferingList')
    ReservedInstancePaymentOption = Shapes::StringShape.new(name: 'ReservedInstancePaymentOption')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RevokeVpcEndpointAccessRequest = Shapes::StructureShape.new(name: 'RevokeVpcEndpointAccessRequest')
    RevokeVpcEndpointAccessResponse = Shapes::StructureShape.new(name: 'RevokeVpcEndpointAccessResponse')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RollbackOnDisable = Shapes::StringShape.new(name: 'RollbackOnDisable')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    SAMLEntityId = Shapes::StringShape.new(name: 'SAMLEntityId')
    SAMLIdp = Shapes::StructureShape.new(name: 'SAMLIdp')
    SAMLMetadata = Shapes::StringShape.new(name: 'SAMLMetadata')
    SAMLOptionsInput = Shapes::StructureShape.new(name: 'SAMLOptionsInput')
    SAMLOptionsOutput = Shapes::StructureShape.new(name: 'SAMLOptionsOutput')
    ScheduleAt = Shapes::StringShape.new(name: 'ScheduleAt')
    ScheduledAction = Shapes::StructureShape.new(name: 'ScheduledAction')
    ScheduledActionsList = Shapes::ListShape.new(name: 'ScheduledActionsList')
    ScheduledAutoTuneActionType = Shapes::StringShape.new(name: 'ScheduledAutoTuneActionType')
    ScheduledAutoTuneDescription = Shapes::StringShape.new(name: 'ScheduledAutoTuneDescription')
    ScheduledAutoTuneDetails = Shapes::StructureShape.new(name: 'ScheduledAutoTuneDetails')
    ScheduledAutoTuneSeverityType = Shapes::StringShape.new(name: 'ScheduledAutoTuneSeverityType')
    ScheduledBy = Shapes::StringShape.new(name: 'ScheduledBy')
    ServiceSoftwareOptions = Shapes::StructureShape.new(name: 'ServiceSoftwareOptions')
    ServiceUrl = Shapes::StringShape.new(name: 'ServiceUrl')
    SkipUnavailableStatus = Shapes::StringShape.new(name: 'SkipUnavailableStatus')
    SlotList = Shapes::ListShape.new(name: 'SlotList')
    SlotNotAvailableException = Shapes::StructureShape.new(name: 'SlotNotAvailableException')
    SnapshotOptions = Shapes::StructureShape.new(name: 'SnapshotOptions')
    SnapshotOptionsStatus = Shapes::StructureShape.new(name: 'SnapshotOptionsStatus')
    SoftwareUpdateOptions = Shapes::StructureShape.new(name: 'SoftwareUpdateOptions')
    SoftwareUpdateOptionsStatus = Shapes::StructureShape.new(name: 'SoftwareUpdateOptionsStatus')
    StartAt = Shapes::TimestampShape.new(name: 'StartAt')
    StartServiceSoftwareUpdateRequest = Shapes::StructureShape.new(name: 'StartServiceSoftwareUpdateRequest')
    StartServiceSoftwareUpdateResponse = Shapes::StructureShape.new(name: 'StartServiceSoftwareUpdateResponse')
    StartTimeHours = Shapes::IntegerShape.new(name: 'StartTimeHours')
    StartTimeMinutes = Shapes::IntegerShape.new(name: 'StartTimeMinutes')
    StartTimestamp = Shapes::TimestampShape.new(name: 'StartTimestamp')
    StorageSubTypeName = Shapes::StringShape.new(name: 'StorageSubTypeName')
    StorageType = Shapes::StructureShape.new(name: 'StorageType')
    StorageTypeLimit = Shapes::StructureShape.new(name: 'StorageTypeLimit')
    StorageTypeLimitList = Shapes::ListShape.new(name: 'StorageTypeLimitList')
    StorageTypeList = Shapes::ListShape.new(name: 'StorageTypeList')
    StorageTypeName = Shapes::StringShape.new(name: 'StorageTypeName')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    TLSSecurityPolicy = Shapes::StringShape.new(name: 'TLSSecurityPolicy')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TimeUnit = Shapes::StringShape.new(name: 'TimeUnit')
    TotalNumberOfStages = Shapes::IntegerShape.new(name: 'TotalNumberOfStages')
    UIntValue = Shapes::IntegerShape.new(name: 'UIntValue')
    UpdateDomainConfigRequest = Shapes::StructureShape.new(name: 'UpdateDomainConfigRequest')
    UpdateDomainConfigResponse = Shapes::StructureShape.new(name: 'UpdateDomainConfigResponse')
    UpdatePackageRequest = Shapes::StructureShape.new(name: 'UpdatePackageRequest')
    UpdatePackageResponse = Shapes::StructureShape.new(name: 'UpdatePackageResponse')
    UpdateScheduledActionRequest = Shapes::StructureShape.new(name: 'UpdateScheduledActionRequest')
    UpdateScheduledActionResponse = Shapes::StructureShape.new(name: 'UpdateScheduledActionResponse')
    UpdateTimestamp = Shapes::TimestampShape.new(name: 'UpdateTimestamp')
    UpdateVpcEndpointRequest = Shapes::StructureShape.new(name: 'UpdateVpcEndpointRequest')
    UpdateVpcEndpointResponse = Shapes::StructureShape.new(name: 'UpdateVpcEndpointResponse')
    UpgradeDomainRequest = Shapes::StructureShape.new(name: 'UpgradeDomainRequest')
    UpgradeDomainResponse = Shapes::StructureShape.new(name: 'UpgradeDomainResponse')
    UpgradeHistory = Shapes::StructureShape.new(name: 'UpgradeHistory')
    UpgradeHistoryList = Shapes::ListShape.new(name: 'UpgradeHistoryList')
    UpgradeName = Shapes::StringShape.new(name: 'UpgradeName')
    UpgradeStatus = Shapes::StringShape.new(name: 'UpgradeStatus')
    UpgradeStep = Shapes::StringShape.new(name: 'UpgradeStep')
    UpgradeStepItem = Shapes::StructureShape.new(name: 'UpgradeStepItem')
    UpgradeStepsList = Shapes::ListShape.new(name: 'UpgradeStepsList')
    UserPoolId = Shapes::StringShape.new(name: 'UserPoolId')
    Username = Shapes::StringShape.new(name: 'Username')
    VPCDerivedInfo = Shapes::StructureShape.new(name: 'VPCDerivedInfo')
    VPCDerivedInfoStatus = Shapes::StructureShape.new(name: 'VPCDerivedInfoStatus')
    VPCOptions = Shapes::StructureShape.new(name: 'VPCOptions')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationFailure = Shapes::StructureShape.new(name: 'ValidationFailure')
    ValidationFailures = Shapes::ListShape.new(name: 'ValidationFailures')
    ValueStringList = Shapes::ListShape.new(name: 'ValueStringList')
    VersionList = Shapes::ListShape.new(name: 'VersionList')
    VersionStatus = Shapes::StructureShape.new(name: 'VersionStatus')
    VersionString = Shapes::StringShape.new(name: 'VersionString')
    VolumeSize = Shapes::StringShape.new(name: 'VolumeSize')
    VolumeType = Shapes::StringShape.new(name: 'VolumeType')
    VpcEndpoint = Shapes::StructureShape.new(name: 'VpcEndpoint')
    VpcEndpointError = Shapes::StructureShape.new(name: 'VpcEndpointError')
    VpcEndpointErrorCode = Shapes::StringShape.new(name: 'VpcEndpointErrorCode')
    VpcEndpointErrorList = Shapes::ListShape.new(name: 'VpcEndpointErrorList')
    VpcEndpointId = Shapes::StringShape.new(name: 'VpcEndpointId')
    VpcEndpointIdList = Shapes::ListShape.new(name: 'VpcEndpointIdList')
    VpcEndpointStatus = Shapes::StringShape.new(name: 'VpcEndpointStatus')
    VpcEndpointSummary = Shapes::StructureShape.new(name: 'VpcEndpointSummary')
    VpcEndpointSummaryList = Shapes::ListShape.new(name: 'VpcEndpointSummaryList')
    VpcEndpoints = Shapes::ListShape.new(name: 'VpcEndpoints')
    WindowStartTime = Shapes::StructureShape.new(name: 'WindowStartTime')
    ZoneAwarenessConfig = Shapes::StructureShape.new(name: 'ZoneAwarenessConfig')
    ZoneStatus = Shapes::StringShape.new(name: 'ZoneStatus')

    AWSDomainInformation.add_member(:owner_id, Shapes::ShapeRef.new(shape: OwnerId, location_name: "OwnerId"))
    AWSDomainInformation.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    AWSDomainInformation.add_member(:region, Shapes::ShapeRef.new(shape: Region, location_name: "Region"))
    AWSDomainInformation.struct_class = Types::AWSDomainInformation

    AcceptInboundConnectionRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location: "uri", location_name: "ConnectionId"))
    AcceptInboundConnectionRequest.struct_class = Types::AcceptInboundConnectionRequest

    AcceptInboundConnectionResponse.add_member(:connection, Shapes::ShapeRef.new(shape: InboundConnection, location_name: "Connection"))
    AcceptInboundConnectionResponse.struct_class = Types::AcceptInboundConnectionResponse

    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccessPoliciesStatus.add_member(:options, Shapes::ShapeRef.new(shape: PolicyDocument, required: true, location_name: "Options"))
    AccessPoliciesStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    AccessPoliciesStatus.struct_class = Types::AccessPoliciesStatus

    AddTagsRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "ARN"))
    AddTagsRequest.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "TagList"))
    AddTagsRequest.struct_class = Types::AddTagsRequest

    AdditionalLimit.add_member(:limit_name, Shapes::ShapeRef.new(shape: LimitName, location_name: "LimitName"))
    AdditionalLimit.add_member(:limit_values, Shapes::ShapeRef.new(shape: LimitValueList, location_name: "LimitValues"))
    AdditionalLimit.struct_class = Types::AdditionalLimit

    AdditionalLimitList.member = Shapes::ShapeRef.new(shape: AdditionalLimit)

    AdvancedOptions.key = Shapes::ShapeRef.new(shape: String)
    AdvancedOptions.value = Shapes::ShapeRef.new(shape: String)

    AdvancedOptionsStatus.add_member(:options, Shapes::ShapeRef.new(shape: AdvancedOptions, required: true, location_name: "Options"))
    AdvancedOptionsStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    AdvancedOptionsStatus.struct_class = Types::AdvancedOptionsStatus

    AdvancedSecurityOptions.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    AdvancedSecurityOptions.add_member(:internal_user_database_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "InternalUserDatabaseEnabled"))
    AdvancedSecurityOptions.add_member(:saml_options, Shapes::ShapeRef.new(shape: SAMLOptionsOutput, location_name: "SAMLOptions"))
    AdvancedSecurityOptions.add_member(:anonymous_auth_disable_date, Shapes::ShapeRef.new(shape: DisableTimestamp, location_name: "AnonymousAuthDisableDate"))
    AdvancedSecurityOptions.add_member(:anonymous_auth_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "AnonymousAuthEnabled"))
    AdvancedSecurityOptions.struct_class = Types::AdvancedSecurityOptions

    AdvancedSecurityOptionsInput.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    AdvancedSecurityOptionsInput.add_member(:internal_user_database_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "InternalUserDatabaseEnabled"))
    AdvancedSecurityOptionsInput.add_member(:master_user_options, Shapes::ShapeRef.new(shape: MasterUserOptions, location_name: "MasterUserOptions"))
    AdvancedSecurityOptionsInput.add_member(:saml_options, Shapes::ShapeRef.new(shape: SAMLOptionsInput, location_name: "SAMLOptions"))
    AdvancedSecurityOptionsInput.add_member(:anonymous_auth_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "AnonymousAuthEnabled"))
    AdvancedSecurityOptionsInput.struct_class = Types::AdvancedSecurityOptionsInput

    AdvancedSecurityOptionsStatus.add_member(:options, Shapes::ShapeRef.new(shape: AdvancedSecurityOptions, required: true, location_name: "Options"))
    AdvancedSecurityOptionsStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    AdvancedSecurityOptionsStatus.struct_class = Types::AdvancedSecurityOptionsStatus

    AssociatePackageRequest.add_member(:package_id, Shapes::ShapeRef.new(shape: PackageID, required: true, location: "uri", location_name: "PackageID"))
    AssociatePackageRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    AssociatePackageRequest.struct_class = Types::AssociatePackageRequest

    AssociatePackageResponse.add_member(:domain_package_details, Shapes::ShapeRef.new(shape: DomainPackageDetails, location_name: "DomainPackageDetails"))
    AssociatePackageResponse.struct_class = Types::AssociatePackageResponse

    AuthorizeVpcEndpointAccessRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    AuthorizeVpcEndpointAccessRequest.add_member(:account, Shapes::ShapeRef.new(shape: AWSAccount, required: true, location_name: "Account"))
    AuthorizeVpcEndpointAccessRequest.struct_class = Types::AuthorizeVpcEndpointAccessRequest

    AuthorizeVpcEndpointAccessResponse.add_member(:authorized_principal, Shapes::ShapeRef.new(shape: AuthorizedPrincipal, required: true, location_name: "AuthorizedPrincipal"))
    AuthorizeVpcEndpointAccessResponse.struct_class = Types::AuthorizeVpcEndpointAccessResponse

    AuthorizedPrincipal.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, location_name: "PrincipalType"))
    AuthorizedPrincipal.add_member(:principal, Shapes::ShapeRef.new(shape: String, location_name: "Principal"))
    AuthorizedPrincipal.struct_class = Types::AuthorizedPrincipal

    AuthorizedPrincipalList.member = Shapes::ShapeRef.new(shape: AuthorizedPrincipal)

    AutoTune.add_member(:auto_tune_type, Shapes::ShapeRef.new(shape: AutoTuneType, location_name: "AutoTuneType"))
    AutoTune.add_member(:auto_tune_details, Shapes::ShapeRef.new(shape: AutoTuneDetails, location_name: "AutoTuneDetails"))
    AutoTune.struct_class = Types::AutoTune

    AutoTuneDetails.add_member(:scheduled_auto_tune_details, Shapes::ShapeRef.new(shape: ScheduledAutoTuneDetails, location_name: "ScheduledAutoTuneDetails"))
    AutoTuneDetails.struct_class = Types::AutoTuneDetails

    AutoTuneList.member = Shapes::ShapeRef.new(shape: AutoTune)

    AutoTuneMaintenanceSchedule.add_member(:start_at, Shapes::ShapeRef.new(shape: StartAt, location_name: "StartAt"))
    AutoTuneMaintenanceSchedule.add_member(:duration, Shapes::ShapeRef.new(shape: Duration, location_name: "Duration"))
    AutoTuneMaintenanceSchedule.add_member(:cron_expression_for_recurrence, Shapes::ShapeRef.new(shape: String, location_name: "CronExpressionForRecurrence"))
    AutoTuneMaintenanceSchedule.struct_class = Types::AutoTuneMaintenanceSchedule

    AutoTuneMaintenanceScheduleList.member = Shapes::ShapeRef.new(shape: AutoTuneMaintenanceSchedule)

    AutoTuneOptions.add_member(:desired_state, Shapes::ShapeRef.new(shape: AutoTuneDesiredState, location_name: "DesiredState"))
    AutoTuneOptions.add_member(:rollback_on_disable, Shapes::ShapeRef.new(shape: RollbackOnDisable, location_name: "RollbackOnDisable"))
    AutoTuneOptions.add_member(:maintenance_schedules, Shapes::ShapeRef.new(shape: AutoTuneMaintenanceScheduleList, location_name: "MaintenanceSchedules"))
    AutoTuneOptions.add_member(:use_off_peak_window, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseOffPeakWindow"))
    AutoTuneOptions.struct_class = Types::AutoTuneOptions

    AutoTuneOptionsInput.add_member(:desired_state, Shapes::ShapeRef.new(shape: AutoTuneDesiredState, location_name: "DesiredState"))
    AutoTuneOptionsInput.add_member(:maintenance_schedules, Shapes::ShapeRef.new(shape: AutoTuneMaintenanceScheduleList, location_name: "MaintenanceSchedules"))
    AutoTuneOptionsInput.add_member(:use_off_peak_window, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseOffPeakWindow"))
    AutoTuneOptionsInput.struct_class = Types::AutoTuneOptionsInput

    AutoTuneOptionsOutput.add_member(:state, Shapes::ShapeRef.new(shape: AutoTuneState, location_name: "State"))
    AutoTuneOptionsOutput.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    AutoTuneOptionsOutput.add_member(:use_off_peak_window, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseOffPeakWindow"))
    AutoTuneOptionsOutput.struct_class = Types::AutoTuneOptionsOutput

    AutoTuneOptionsStatus.add_member(:options, Shapes::ShapeRef.new(shape: AutoTuneOptions, location_name: "Options"))
    AutoTuneOptionsStatus.add_member(:status, Shapes::ShapeRef.new(shape: AutoTuneStatus, location_name: "Status"))
    AutoTuneOptionsStatus.struct_class = Types::AutoTuneOptionsStatus

    AutoTuneStatus.add_member(:creation_date, Shapes::ShapeRef.new(shape: UpdateTimestamp, required: true, location_name: "CreationDate"))
    AutoTuneStatus.add_member(:update_date, Shapes::ShapeRef.new(shape: UpdateTimestamp, required: true, location_name: "UpdateDate"))
    AutoTuneStatus.add_member(:update_version, Shapes::ShapeRef.new(shape: UIntValue, location_name: "UpdateVersion"))
    AutoTuneStatus.add_member(:state, Shapes::ShapeRef.new(shape: AutoTuneState, required: true, location_name: "State"))
    AutoTuneStatus.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    AutoTuneStatus.add_member(:pending_deletion, Shapes::ShapeRef.new(shape: Boolean, location_name: "PendingDeletion"))
    AutoTuneStatus.struct_class = Types::AutoTuneStatus

    AvailabilityZoneInfo.add_member(:availability_zone_name, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "AvailabilityZoneName"))
    AvailabilityZoneInfo.add_member(:zone_status, Shapes::ShapeRef.new(shape: ZoneStatus, location_name: "ZoneStatus"))
    AvailabilityZoneInfo.add_member(:configured_data_node_count, Shapes::ShapeRef.new(shape: NumberOfNodes, location_name: "ConfiguredDataNodeCount"))
    AvailabilityZoneInfo.add_member(:available_data_node_count, Shapes::ShapeRef.new(shape: NumberOfNodes, location_name: "AvailableDataNodeCount"))
    AvailabilityZoneInfo.add_member(:total_shards, Shapes::ShapeRef.new(shape: NumberOfShards, location_name: "TotalShards"))
    AvailabilityZoneInfo.add_member(:total_un_assigned_shards, Shapes::ShapeRef.new(shape: NumberOfShards, location_name: "TotalUnAssignedShards"))
    AvailabilityZoneInfo.struct_class = Types::AvailabilityZoneInfo

    AvailabilityZoneInfoList.member = Shapes::ShapeRef.new(shape: AvailabilityZoneInfo)

    AvailabilityZoneList.member = Shapes::ShapeRef.new(shape: AvailabilityZone)

    BaseException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    BaseException.struct_class = Types::BaseException

    CancelServiceSoftwareUpdateRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    CancelServiceSoftwareUpdateRequest.struct_class = Types::CancelServiceSoftwareUpdateRequest

    CancelServiceSoftwareUpdateResponse.add_member(:service_software_options, Shapes::ShapeRef.new(shape: ServiceSoftwareOptions, location_name: "ServiceSoftwareOptions"))
    CancelServiceSoftwareUpdateResponse.struct_class = Types::CancelServiceSoftwareUpdateResponse

    ChangeProgressDetails.add_member(:change_id, Shapes::ShapeRef.new(shape: GUID, location_name: "ChangeId"))
    ChangeProgressDetails.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ChangeProgressDetails.struct_class = Types::ChangeProgressDetails

    ChangeProgressStage.add_member(:name, Shapes::ShapeRef.new(shape: ChangeProgressStageName, location_name: "Name"))
    ChangeProgressStage.add_member(:status, Shapes::ShapeRef.new(shape: ChangeProgressStageStatus, location_name: "Status"))
    ChangeProgressStage.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ChangeProgressStage.add_member(:last_updated, Shapes::ShapeRef.new(shape: LastUpdated, location_name: "LastUpdated"))
    ChangeProgressStage.struct_class = Types::ChangeProgressStage

    ChangeProgressStageList.member = Shapes::ShapeRef.new(shape: ChangeProgressStage)

    ChangeProgressStatusDetails.add_member(:change_id, Shapes::ShapeRef.new(shape: GUID, location_name: "ChangeId"))
    ChangeProgressStatusDetails.add_member(:start_time, Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: "StartTime"))
    ChangeProgressStatusDetails.add_member(:status, Shapes::ShapeRef.new(shape: OverallChangeStatus, location_name: "Status"))
    ChangeProgressStatusDetails.add_member(:pending_properties, Shapes::ShapeRef.new(shape: StringList, location_name: "PendingProperties"))
    ChangeProgressStatusDetails.add_member(:completed_properties, Shapes::ShapeRef.new(shape: StringList, location_name: "CompletedProperties"))
    ChangeProgressStatusDetails.add_member(:total_number_of_stages, Shapes::ShapeRef.new(shape: TotalNumberOfStages, location_name: "TotalNumberOfStages"))
    ChangeProgressStatusDetails.add_member(:change_progress_stages, Shapes::ShapeRef.new(shape: ChangeProgressStageList, location_name: "ChangeProgressStages"))
    ChangeProgressStatusDetails.struct_class = Types::ChangeProgressStatusDetails

    ClusterConfig.add_member(:instance_type, Shapes::ShapeRef.new(shape: OpenSearchPartitionInstanceType, location_name: "InstanceType"))
    ClusterConfig.add_member(:instance_count, Shapes::ShapeRef.new(shape: IntegerClass, location_name: "InstanceCount"))
    ClusterConfig.add_member(:dedicated_master_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "DedicatedMasterEnabled"))
    ClusterConfig.add_member(:zone_awareness_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "ZoneAwarenessEnabled"))
    ClusterConfig.add_member(:zone_awareness_config, Shapes::ShapeRef.new(shape: ZoneAwarenessConfig, location_name: "ZoneAwarenessConfig"))
    ClusterConfig.add_member(:dedicated_master_type, Shapes::ShapeRef.new(shape: OpenSearchPartitionInstanceType, location_name: "DedicatedMasterType"))
    ClusterConfig.add_member(:dedicated_master_count, Shapes::ShapeRef.new(shape: IntegerClass, location_name: "DedicatedMasterCount"))
    ClusterConfig.add_member(:warm_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "WarmEnabled"))
    ClusterConfig.add_member(:warm_type, Shapes::ShapeRef.new(shape: OpenSearchWarmPartitionInstanceType, location_name: "WarmType"))
    ClusterConfig.add_member(:warm_count, Shapes::ShapeRef.new(shape: IntegerClass, location_name: "WarmCount"))
    ClusterConfig.add_member(:cold_storage_options, Shapes::ShapeRef.new(shape: ColdStorageOptions, location_name: "ColdStorageOptions"))
    ClusterConfig.add_member(:multi_az_with_standby_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "MultiAZWithStandbyEnabled"))
    ClusterConfig.struct_class = Types::ClusterConfig

    ClusterConfigStatus.add_member(:options, Shapes::ShapeRef.new(shape: ClusterConfig, required: true, location_name: "Options"))
    ClusterConfigStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    ClusterConfigStatus.struct_class = Types::ClusterConfigStatus

    CognitoOptions.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    CognitoOptions.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolId, location_name: "UserPoolId"))
    CognitoOptions.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId"))
    CognitoOptions.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    CognitoOptions.struct_class = Types::CognitoOptions

    CognitoOptionsStatus.add_member(:options, Shapes::ShapeRef.new(shape: CognitoOptions, required: true, location_name: "Options"))
    CognitoOptionsStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    CognitoOptionsStatus.struct_class = Types::CognitoOptionsStatus

    ColdStorageOptions.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "Enabled"))
    ColdStorageOptions.struct_class = Types::ColdStorageOptions

    CompatibleVersionsList.member = Shapes::ShapeRef.new(shape: CompatibleVersionsMap)

    CompatibleVersionsMap.add_member(:source_version, Shapes::ShapeRef.new(shape: VersionString, location_name: "SourceVersion"))
    CompatibleVersionsMap.add_member(:target_versions, Shapes::ShapeRef.new(shape: VersionList, location_name: "TargetVersions"))
    CompatibleVersionsMap.struct_class = Types::CompatibleVersionsMap

    ConflictException.struct_class = Types::ConflictException

    ConnectionProperties.add_member(:endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "Endpoint"))
    ConnectionProperties.add_member(:cross_cluster_search, Shapes::ShapeRef.new(shape: CrossClusterSearchConnectionProperties, location_name: "CrossClusterSearch"))
    ConnectionProperties.struct_class = Types::ConnectionProperties

    CreateDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    CreateDomainRequest.add_member(:engine_version, Shapes::ShapeRef.new(shape: VersionString, location_name: "EngineVersion"))
    CreateDomainRequest.add_member(:cluster_config, Shapes::ShapeRef.new(shape: ClusterConfig, location_name: "ClusterConfig"))
    CreateDomainRequest.add_member(:ebs_options, Shapes::ShapeRef.new(shape: EBSOptions, location_name: "EBSOptions"))
    CreateDomainRequest.add_member(:access_policies, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "AccessPolicies"))
    CreateDomainRequest.add_member(:snapshot_options, Shapes::ShapeRef.new(shape: SnapshotOptions, location_name: "SnapshotOptions"))
    CreateDomainRequest.add_member(:vpc_options, Shapes::ShapeRef.new(shape: VPCOptions, location_name: "VPCOptions"))
    CreateDomainRequest.add_member(:cognito_options, Shapes::ShapeRef.new(shape: CognitoOptions, location_name: "CognitoOptions"))
    CreateDomainRequest.add_member(:encryption_at_rest_options, Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, location_name: "EncryptionAtRestOptions"))
    CreateDomainRequest.add_member(:node_to_node_encryption_options, Shapes::ShapeRef.new(shape: NodeToNodeEncryptionOptions, location_name: "NodeToNodeEncryptionOptions"))
    CreateDomainRequest.add_member(:advanced_options, Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: "AdvancedOptions"))
    CreateDomainRequest.add_member(:log_publishing_options, Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: "LogPublishingOptions"))
    CreateDomainRequest.add_member(:domain_endpoint_options, Shapes::ShapeRef.new(shape: DomainEndpointOptions, location_name: "DomainEndpointOptions"))
    CreateDomainRequest.add_member(:advanced_security_options, Shapes::ShapeRef.new(shape: AdvancedSecurityOptionsInput, location_name: "AdvancedSecurityOptions"))
    CreateDomainRequest.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    CreateDomainRequest.add_member(:auto_tune_options, Shapes::ShapeRef.new(shape: AutoTuneOptionsInput, location_name: "AutoTuneOptions"))
    CreateDomainRequest.add_member(:off_peak_window_options, Shapes::ShapeRef.new(shape: OffPeakWindowOptions, location_name: "OffPeakWindowOptions"))
    CreateDomainRequest.add_member(:software_update_options, Shapes::ShapeRef.new(shape: SoftwareUpdateOptions, location_name: "SoftwareUpdateOptions"))
    CreateDomainRequest.struct_class = Types::CreateDomainRequest

    CreateDomainResponse.add_member(:domain_status, Shapes::ShapeRef.new(shape: DomainStatus, location_name: "DomainStatus"))
    CreateDomainResponse.struct_class = Types::CreateDomainResponse

    CreateOutboundConnectionRequest.add_member(:local_domain_info, Shapes::ShapeRef.new(shape: DomainInformationContainer, required: true, location_name: "LocalDomainInfo"))
    CreateOutboundConnectionRequest.add_member(:remote_domain_info, Shapes::ShapeRef.new(shape: DomainInformationContainer, required: true, location_name: "RemoteDomainInfo"))
    CreateOutboundConnectionRequest.add_member(:connection_alias, Shapes::ShapeRef.new(shape: ConnectionAlias, required: true, location_name: "ConnectionAlias"))
    CreateOutboundConnectionRequest.add_member(:connection_mode, Shapes::ShapeRef.new(shape: ConnectionMode, location_name: "ConnectionMode"))
    CreateOutboundConnectionRequest.add_member(:connection_properties, Shapes::ShapeRef.new(shape: ConnectionProperties, location_name: "ConnectionProperties"))
    CreateOutboundConnectionRequest.struct_class = Types::CreateOutboundConnectionRequest

    CreateOutboundConnectionResponse.add_member(:local_domain_info, Shapes::ShapeRef.new(shape: DomainInformationContainer, location_name: "LocalDomainInfo"))
    CreateOutboundConnectionResponse.add_member(:remote_domain_info, Shapes::ShapeRef.new(shape: DomainInformationContainer, location_name: "RemoteDomainInfo"))
    CreateOutboundConnectionResponse.add_member(:connection_alias, Shapes::ShapeRef.new(shape: ConnectionAlias, location_name: "ConnectionAlias"))
    CreateOutboundConnectionResponse.add_member(:connection_status, Shapes::ShapeRef.new(shape: OutboundConnectionStatus, location_name: "ConnectionStatus"))
    CreateOutboundConnectionResponse.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, location_name: "ConnectionId"))
    CreateOutboundConnectionResponse.add_member(:connection_mode, Shapes::ShapeRef.new(shape: ConnectionMode, location_name: "ConnectionMode"))
    CreateOutboundConnectionResponse.add_member(:connection_properties, Shapes::ShapeRef.new(shape: ConnectionProperties, location_name: "ConnectionProperties"))
    CreateOutboundConnectionResponse.struct_class = Types::CreateOutboundConnectionResponse

    CreatePackageRequest.add_member(:package_name, Shapes::ShapeRef.new(shape: PackageName, required: true, location_name: "PackageName"))
    CreatePackageRequest.add_member(:package_type, Shapes::ShapeRef.new(shape: PackageType, required: true, location_name: "PackageType"))
    CreatePackageRequest.add_member(:package_description, Shapes::ShapeRef.new(shape: PackageDescription, location_name: "PackageDescription"))
    CreatePackageRequest.add_member(:package_source, Shapes::ShapeRef.new(shape: PackageSource, required: true, location_name: "PackageSource"))
    CreatePackageRequest.struct_class = Types::CreatePackageRequest

    CreatePackageResponse.add_member(:package_details, Shapes::ShapeRef.new(shape: PackageDetails, location_name: "PackageDetails"))
    CreatePackageResponse.struct_class = Types::CreatePackageResponse

    CreateVpcEndpointRequest.add_member(:domain_arn, Shapes::ShapeRef.new(shape: DomainArn, required: true, location_name: "DomainArn"))
    CreateVpcEndpointRequest.add_member(:vpc_options, Shapes::ShapeRef.new(shape: VPCOptions, required: true, location_name: "VpcOptions"))
    CreateVpcEndpointRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken"))
    CreateVpcEndpointRequest.struct_class = Types::CreateVpcEndpointRequest

    CreateVpcEndpointResponse.add_member(:vpc_endpoint, Shapes::ShapeRef.new(shape: VpcEndpoint, required: true, location_name: "VpcEndpoint"))
    CreateVpcEndpointResponse.struct_class = Types::CreateVpcEndpointResponse

    CrossClusterSearchConnectionProperties.add_member(:skip_unavailable, Shapes::ShapeRef.new(shape: SkipUnavailableStatus, location_name: "SkipUnavailable"))
    CrossClusterSearchConnectionProperties.struct_class = Types::CrossClusterSearchConnectionProperties

    DeleteDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    DeleteDomainRequest.struct_class = Types::DeleteDomainRequest

    DeleteDomainResponse.add_member(:domain_status, Shapes::ShapeRef.new(shape: DomainStatus, location_name: "DomainStatus"))
    DeleteDomainResponse.struct_class = Types::DeleteDomainResponse

    DeleteInboundConnectionRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location: "uri", location_name: "ConnectionId"))
    DeleteInboundConnectionRequest.struct_class = Types::DeleteInboundConnectionRequest

    DeleteInboundConnectionResponse.add_member(:connection, Shapes::ShapeRef.new(shape: InboundConnection, location_name: "Connection"))
    DeleteInboundConnectionResponse.struct_class = Types::DeleteInboundConnectionResponse

    DeleteOutboundConnectionRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location: "uri", location_name: "ConnectionId"))
    DeleteOutboundConnectionRequest.struct_class = Types::DeleteOutboundConnectionRequest

    DeleteOutboundConnectionResponse.add_member(:connection, Shapes::ShapeRef.new(shape: OutboundConnection, location_name: "Connection"))
    DeleteOutboundConnectionResponse.struct_class = Types::DeleteOutboundConnectionResponse

    DeletePackageRequest.add_member(:package_id, Shapes::ShapeRef.new(shape: PackageID, required: true, location: "uri", location_name: "PackageID"))
    DeletePackageRequest.struct_class = Types::DeletePackageRequest

    DeletePackageResponse.add_member(:package_details, Shapes::ShapeRef.new(shape: PackageDetails, location_name: "PackageDetails"))
    DeletePackageResponse.struct_class = Types::DeletePackageResponse

    DeleteVpcEndpointRequest.add_member(:vpc_endpoint_id, Shapes::ShapeRef.new(shape: VpcEndpointId, required: true, location: "uri", location_name: "VpcEndpointId"))
    DeleteVpcEndpointRequest.struct_class = Types::DeleteVpcEndpointRequest

    DeleteVpcEndpointResponse.add_member(:vpc_endpoint_summary, Shapes::ShapeRef.new(shape: VpcEndpointSummary, required: true, location_name: "VpcEndpointSummary"))
    DeleteVpcEndpointResponse.struct_class = Types::DeleteVpcEndpointResponse

    DependencyFailureException.struct_class = Types::DependencyFailureException

    DescribeDomainAutoTunesRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    DescribeDomainAutoTunesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeDomainAutoTunesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeDomainAutoTunesRequest.struct_class = Types::DescribeDomainAutoTunesRequest

    DescribeDomainAutoTunesResponse.add_member(:auto_tunes, Shapes::ShapeRef.new(shape: AutoTuneList, location_name: "AutoTunes"))
    DescribeDomainAutoTunesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeDomainAutoTunesResponse.struct_class = Types::DescribeDomainAutoTunesResponse

    DescribeDomainChangeProgressRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    DescribeDomainChangeProgressRequest.add_member(:change_id, Shapes::ShapeRef.new(shape: GUID, location: "querystring", location_name: "changeid"))
    DescribeDomainChangeProgressRequest.struct_class = Types::DescribeDomainChangeProgressRequest

    DescribeDomainChangeProgressResponse.add_member(:change_progress_status, Shapes::ShapeRef.new(shape: ChangeProgressStatusDetails, location_name: "ChangeProgressStatus"))
    DescribeDomainChangeProgressResponse.struct_class = Types::DescribeDomainChangeProgressResponse

    DescribeDomainConfigRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    DescribeDomainConfigRequest.struct_class = Types::DescribeDomainConfigRequest

    DescribeDomainConfigResponse.add_member(:domain_config, Shapes::ShapeRef.new(shape: DomainConfig, required: true, location_name: "DomainConfig"))
    DescribeDomainConfigResponse.struct_class = Types::DescribeDomainConfigResponse

    DescribeDomainHealthRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    DescribeDomainHealthRequest.struct_class = Types::DescribeDomainHealthRequest

    DescribeDomainHealthResponse.add_member(:domain_state, Shapes::ShapeRef.new(shape: DomainState, location_name: "DomainState"))
    DescribeDomainHealthResponse.add_member(:availability_zone_count, Shapes::ShapeRef.new(shape: NumberOfAZs, location_name: "AvailabilityZoneCount"))
    DescribeDomainHealthResponse.add_member(:active_availability_zone_count, Shapes::ShapeRef.new(shape: NumberOfAZs, location_name: "ActiveAvailabilityZoneCount"))
    DescribeDomainHealthResponse.add_member(:stand_by_availability_zone_count, Shapes::ShapeRef.new(shape: NumberOfAZs, location_name: "StandByAvailabilityZoneCount"))
    DescribeDomainHealthResponse.add_member(:data_node_count, Shapes::ShapeRef.new(shape: NumberOfNodes, location_name: "DataNodeCount"))
    DescribeDomainHealthResponse.add_member(:dedicated_master, Shapes::ShapeRef.new(shape: Boolean, location_name: "DedicatedMaster"))
    DescribeDomainHealthResponse.add_member(:master_eligible_node_count, Shapes::ShapeRef.new(shape: NumberOfNodes, location_name: "MasterEligibleNodeCount"))
    DescribeDomainHealthResponse.add_member(:warm_node_count, Shapes::ShapeRef.new(shape: NumberOfNodes, location_name: "WarmNodeCount"))
    DescribeDomainHealthResponse.add_member(:master_node, Shapes::ShapeRef.new(shape: MasterNodeStatus, location_name: "MasterNode"))
    DescribeDomainHealthResponse.add_member(:cluster_health, Shapes::ShapeRef.new(shape: DomainHealth, location_name: "ClusterHealth"))
    DescribeDomainHealthResponse.add_member(:total_shards, Shapes::ShapeRef.new(shape: NumberOfShards, location_name: "TotalShards"))
    DescribeDomainHealthResponse.add_member(:total_un_assigned_shards, Shapes::ShapeRef.new(shape: NumberOfShards, location_name: "TotalUnAssignedShards"))
    DescribeDomainHealthResponse.add_member(:environment_information, Shapes::ShapeRef.new(shape: EnvironmentInfoList, location_name: "EnvironmentInformation"))
    DescribeDomainHealthResponse.struct_class = Types::DescribeDomainHealthResponse

    DescribeDomainNodesRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    DescribeDomainNodesRequest.struct_class = Types::DescribeDomainNodesRequest

    DescribeDomainNodesResponse.add_member(:domain_nodes_status_list, Shapes::ShapeRef.new(shape: DomainNodesStatusList, location_name: "DomainNodesStatusList"))
    DescribeDomainNodesResponse.struct_class = Types::DescribeDomainNodesResponse

    DescribeDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    DescribeDomainRequest.struct_class = Types::DescribeDomainRequest

    DescribeDomainResponse.add_member(:domain_status, Shapes::ShapeRef.new(shape: DomainStatus, required: true, location_name: "DomainStatus"))
    DescribeDomainResponse.struct_class = Types::DescribeDomainResponse

    DescribeDomainsRequest.add_member(:domain_names, Shapes::ShapeRef.new(shape: DomainNameList, required: true, location_name: "DomainNames"))
    DescribeDomainsRequest.struct_class = Types::DescribeDomainsRequest

    DescribeDomainsResponse.add_member(:domain_status_list, Shapes::ShapeRef.new(shape: DomainStatusList, required: true, location_name: "DomainStatusList"))
    DescribeDomainsResponse.struct_class = Types::DescribeDomainsResponse

    DescribeDryRunProgressRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    DescribeDryRunProgressRequest.add_member(:dry_run_id, Shapes::ShapeRef.new(shape: GUID, location: "querystring", location_name: "dryRunId"))
    DescribeDryRunProgressRequest.add_member(:load_dry_run_config, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "loadDryRunConfig"))
    DescribeDryRunProgressRequest.struct_class = Types::DescribeDryRunProgressRequest

    DescribeDryRunProgressResponse.add_member(:dry_run_progress_status, Shapes::ShapeRef.new(shape: DryRunProgressStatus, location_name: "DryRunProgressStatus"))
    DescribeDryRunProgressResponse.add_member(:dry_run_config, Shapes::ShapeRef.new(shape: DomainStatus, location_name: "DryRunConfig"))
    DescribeDryRunProgressResponse.add_member(:dry_run_results, Shapes::ShapeRef.new(shape: DryRunResults, location_name: "DryRunResults"))
    DescribeDryRunProgressResponse.struct_class = Types::DescribeDryRunProgressResponse

    DescribeInboundConnectionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeInboundConnectionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeInboundConnectionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInboundConnectionsRequest.struct_class = Types::DescribeInboundConnectionsRequest

    DescribeInboundConnectionsResponse.add_member(:connections, Shapes::ShapeRef.new(shape: InboundConnections, location_name: "Connections"))
    DescribeInboundConnectionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInboundConnectionsResponse.struct_class = Types::DescribeInboundConnectionsResponse

    DescribeInstanceTypeLimitsRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location: "querystring", location_name: "domainName"))
    DescribeInstanceTypeLimitsRequest.add_member(:instance_type, Shapes::ShapeRef.new(shape: OpenSearchPartitionInstanceType, required: true, location: "uri", location_name: "InstanceType"))
    DescribeInstanceTypeLimitsRequest.add_member(:engine_version, Shapes::ShapeRef.new(shape: VersionString, required: true, location: "uri", location_name: "EngineVersion"))
    DescribeInstanceTypeLimitsRequest.struct_class = Types::DescribeInstanceTypeLimitsRequest

    DescribeInstanceTypeLimitsResponse.add_member(:limits_by_role, Shapes::ShapeRef.new(shape: LimitsByRole, location_name: "LimitsByRole"))
    DescribeInstanceTypeLimitsResponse.struct_class = Types::DescribeInstanceTypeLimitsResponse

    DescribeOutboundConnectionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeOutboundConnectionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeOutboundConnectionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeOutboundConnectionsRequest.struct_class = Types::DescribeOutboundConnectionsRequest

    DescribeOutboundConnectionsResponse.add_member(:connections, Shapes::ShapeRef.new(shape: OutboundConnections, location_name: "Connections"))
    DescribeOutboundConnectionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeOutboundConnectionsResponse.struct_class = Types::DescribeOutboundConnectionsResponse

    DescribePackagesFilter.add_member(:name, Shapes::ShapeRef.new(shape: DescribePackagesFilterName, location_name: "Name"))
    DescribePackagesFilter.add_member(:value, Shapes::ShapeRef.new(shape: DescribePackagesFilterValues, location_name: "Value"))
    DescribePackagesFilter.struct_class = Types::DescribePackagesFilter

    DescribePackagesFilterList.member = Shapes::ShapeRef.new(shape: DescribePackagesFilter)

    DescribePackagesFilterValues.member = Shapes::ShapeRef.new(shape: DescribePackagesFilterValue)

    DescribePackagesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: DescribePackagesFilterList, location_name: "Filters"))
    DescribePackagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribePackagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribePackagesRequest.struct_class = Types::DescribePackagesRequest

    DescribePackagesResponse.add_member(:package_details_list, Shapes::ShapeRef.new(shape: PackageDetailsList, location_name: "PackageDetailsList"))
    DescribePackagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribePackagesResponse.struct_class = Types::DescribePackagesResponse

    DescribeReservedInstanceOfferingsRequest.add_member(:reserved_instance_offering_id, Shapes::ShapeRef.new(shape: GUID, location: "querystring", location_name: "offeringId"))
    DescribeReservedInstanceOfferingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    DescribeReservedInstanceOfferingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    DescribeReservedInstanceOfferingsRequest.struct_class = Types::DescribeReservedInstanceOfferingsRequest

    DescribeReservedInstanceOfferingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeReservedInstanceOfferingsResponse.add_member(:reserved_instance_offerings, Shapes::ShapeRef.new(shape: ReservedInstanceOfferingList, location_name: "ReservedInstanceOfferings"))
    DescribeReservedInstanceOfferingsResponse.struct_class = Types::DescribeReservedInstanceOfferingsResponse

    DescribeReservedInstancesRequest.add_member(:reserved_instance_id, Shapes::ShapeRef.new(shape: GUID, location: "querystring", location_name: "reservationId"))
    DescribeReservedInstancesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    DescribeReservedInstancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    DescribeReservedInstancesRequest.struct_class = Types::DescribeReservedInstancesRequest

    DescribeReservedInstancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeReservedInstancesResponse.add_member(:reserved_instances, Shapes::ShapeRef.new(shape: ReservedInstanceList, location_name: "ReservedInstances"))
    DescribeReservedInstancesResponse.struct_class = Types::DescribeReservedInstancesResponse

    DescribeVpcEndpointsRequest.add_member(:vpc_endpoint_ids, Shapes::ShapeRef.new(shape: VpcEndpointIdList, required: true, location_name: "VpcEndpointIds"))
    DescribeVpcEndpointsRequest.struct_class = Types::DescribeVpcEndpointsRequest

    DescribeVpcEndpointsResponse.add_member(:vpc_endpoints, Shapes::ShapeRef.new(shape: VpcEndpoints, required: true, location_name: "VpcEndpoints"))
    DescribeVpcEndpointsResponse.add_member(:vpc_endpoint_errors, Shapes::ShapeRef.new(shape: VpcEndpointErrorList, required: true, location_name: "VpcEndpointErrors"))
    DescribeVpcEndpointsResponse.struct_class = Types::DescribeVpcEndpointsResponse

    DisabledOperationException.struct_class = Types::DisabledOperationException

    DissociatePackageRequest.add_member(:package_id, Shapes::ShapeRef.new(shape: PackageID, required: true, location: "uri", location_name: "PackageID"))
    DissociatePackageRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    DissociatePackageRequest.struct_class = Types::DissociatePackageRequest

    DissociatePackageResponse.add_member(:domain_package_details, Shapes::ShapeRef.new(shape: DomainPackageDetails, location_name: "DomainPackageDetails"))
    DissociatePackageResponse.struct_class = Types::DissociatePackageResponse

    DomainConfig.add_member(:engine_version, Shapes::ShapeRef.new(shape: VersionStatus, location_name: "EngineVersion"))
    DomainConfig.add_member(:cluster_config, Shapes::ShapeRef.new(shape: ClusterConfigStatus, location_name: "ClusterConfig"))
    DomainConfig.add_member(:ebs_options, Shapes::ShapeRef.new(shape: EBSOptionsStatus, location_name: "EBSOptions"))
    DomainConfig.add_member(:access_policies, Shapes::ShapeRef.new(shape: AccessPoliciesStatus, location_name: "AccessPolicies"))
    DomainConfig.add_member(:snapshot_options, Shapes::ShapeRef.new(shape: SnapshotOptionsStatus, location_name: "SnapshotOptions"))
    DomainConfig.add_member(:vpc_options, Shapes::ShapeRef.new(shape: VPCDerivedInfoStatus, location_name: "VPCOptions"))
    DomainConfig.add_member(:cognito_options, Shapes::ShapeRef.new(shape: CognitoOptionsStatus, location_name: "CognitoOptions"))
    DomainConfig.add_member(:encryption_at_rest_options, Shapes::ShapeRef.new(shape: EncryptionAtRestOptionsStatus, location_name: "EncryptionAtRestOptions"))
    DomainConfig.add_member(:node_to_node_encryption_options, Shapes::ShapeRef.new(shape: NodeToNodeEncryptionOptionsStatus, location_name: "NodeToNodeEncryptionOptions"))
    DomainConfig.add_member(:advanced_options, Shapes::ShapeRef.new(shape: AdvancedOptionsStatus, location_name: "AdvancedOptions"))
    DomainConfig.add_member(:log_publishing_options, Shapes::ShapeRef.new(shape: LogPublishingOptionsStatus, location_name: "LogPublishingOptions"))
    DomainConfig.add_member(:domain_endpoint_options, Shapes::ShapeRef.new(shape: DomainEndpointOptionsStatus, location_name: "DomainEndpointOptions"))
    DomainConfig.add_member(:advanced_security_options, Shapes::ShapeRef.new(shape: AdvancedSecurityOptionsStatus, location_name: "AdvancedSecurityOptions"))
    DomainConfig.add_member(:auto_tune_options, Shapes::ShapeRef.new(shape: AutoTuneOptionsStatus, location_name: "AutoTuneOptions"))
    DomainConfig.add_member(:change_progress_details, Shapes::ShapeRef.new(shape: ChangeProgressDetails, location_name: "ChangeProgressDetails"))
    DomainConfig.add_member(:off_peak_window_options, Shapes::ShapeRef.new(shape: OffPeakWindowOptionsStatus, location_name: "OffPeakWindowOptions"))
    DomainConfig.add_member(:software_update_options, Shapes::ShapeRef.new(shape: SoftwareUpdateOptionsStatus, location_name: "SoftwareUpdateOptions"))
    DomainConfig.struct_class = Types::DomainConfig

    DomainEndpointOptions.add_member(:enforce_https, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnforceHTTPS"))
    DomainEndpointOptions.add_member(:tls_security_policy, Shapes::ShapeRef.new(shape: TLSSecurityPolicy, location_name: "TLSSecurityPolicy"))
    DomainEndpointOptions.add_member(:custom_endpoint_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "CustomEndpointEnabled"))
    DomainEndpointOptions.add_member(:custom_endpoint, Shapes::ShapeRef.new(shape: DomainNameFqdn, location_name: "CustomEndpoint"))
    DomainEndpointOptions.add_member(:custom_endpoint_certificate_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "CustomEndpointCertificateArn"))
    DomainEndpointOptions.struct_class = Types::DomainEndpointOptions

    DomainEndpointOptionsStatus.add_member(:options, Shapes::ShapeRef.new(shape: DomainEndpointOptions, required: true, location_name: "Options"))
    DomainEndpointOptionsStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    DomainEndpointOptionsStatus.struct_class = Types::DomainEndpointOptionsStatus

    DomainInfo.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    DomainInfo.add_member(:engine_type, Shapes::ShapeRef.new(shape: EngineType, location_name: "EngineType"))
    DomainInfo.struct_class = Types::DomainInfo

    DomainInfoList.member = Shapes::ShapeRef.new(shape: DomainInfo)

    DomainInformationContainer.add_member(:aws_domain_information, Shapes::ShapeRef.new(shape: AWSDomainInformation, location_name: "AWSDomainInformation"))
    DomainInformationContainer.struct_class = Types::DomainInformationContainer

    DomainNameList.member = Shapes::ShapeRef.new(shape: DomainName)

    DomainNodesStatus.add_member(:node_id, Shapes::ShapeRef.new(shape: NodeId, location_name: "NodeId"))
    DomainNodesStatus.add_member(:node_type, Shapes::ShapeRef.new(shape: NodeType, location_name: "NodeType"))
    DomainNodesStatus.add_member(:availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "AvailabilityZone"))
    DomainNodesStatus.add_member(:instance_type, Shapes::ShapeRef.new(shape: OpenSearchPartitionInstanceType, location_name: "InstanceType"))
    DomainNodesStatus.add_member(:node_status, Shapes::ShapeRef.new(shape: NodeStatus, location_name: "NodeStatus"))
    DomainNodesStatus.add_member(:storage_type, Shapes::ShapeRef.new(shape: StorageTypeName, location_name: "StorageType"))
    DomainNodesStatus.add_member(:storage_volume_type, Shapes::ShapeRef.new(shape: VolumeType, location_name: "StorageVolumeType"))
    DomainNodesStatus.add_member(:storage_size, Shapes::ShapeRef.new(shape: VolumeSize, location_name: "StorageSize"))
    DomainNodesStatus.struct_class = Types::DomainNodesStatus

    DomainNodesStatusList.member = Shapes::ShapeRef.new(shape: DomainNodesStatus)

    DomainPackageDetails.add_member(:package_id, Shapes::ShapeRef.new(shape: PackageID, location_name: "PackageID"))
    DomainPackageDetails.add_member(:package_name, Shapes::ShapeRef.new(shape: PackageName, location_name: "PackageName"))
    DomainPackageDetails.add_member(:package_type, Shapes::ShapeRef.new(shape: PackageType, location_name: "PackageType"))
    DomainPackageDetails.add_member(:last_updated, Shapes::ShapeRef.new(shape: LastUpdated, location_name: "LastUpdated"))
    DomainPackageDetails.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    DomainPackageDetails.add_member(:domain_package_status, Shapes::ShapeRef.new(shape: DomainPackageStatus, location_name: "DomainPackageStatus"))
    DomainPackageDetails.add_member(:package_version, Shapes::ShapeRef.new(shape: PackageVersion, location_name: "PackageVersion"))
    DomainPackageDetails.add_member(:reference_path, Shapes::ShapeRef.new(shape: ReferencePath, location_name: "ReferencePath"))
    DomainPackageDetails.add_member(:error_details, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "ErrorDetails"))
    DomainPackageDetails.struct_class = Types::DomainPackageDetails

    DomainPackageDetailsList.member = Shapes::ShapeRef.new(shape: DomainPackageDetails)

    DomainStatus.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    DomainStatus.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DomainStatus.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "ARN"))
    DomainStatus.add_member(:created, Shapes::ShapeRef.new(shape: Boolean, location_name: "Created"))
    DomainStatus.add_member(:deleted, Shapes::ShapeRef.new(shape: Boolean, location_name: "Deleted"))
    DomainStatus.add_member(:endpoint, Shapes::ShapeRef.new(shape: ServiceUrl, location_name: "Endpoint"))
    DomainStatus.add_member(:endpoints, Shapes::ShapeRef.new(shape: EndpointsMap, location_name: "Endpoints"))
    DomainStatus.add_member(:processing, Shapes::ShapeRef.new(shape: Boolean, location_name: "Processing"))
    DomainStatus.add_member(:upgrade_processing, Shapes::ShapeRef.new(shape: Boolean, location_name: "UpgradeProcessing"))
    DomainStatus.add_member(:engine_version, Shapes::ShapeRef.new(shape: VersionString, location_name: "EngineVersion"))
    DomainStatus.add_member(:cluster_config, Shapes::ShapeRef.new(shape: ClusterConfig, required: true, location_name: "ClusterConfig"))
    DomainStatus.add_member(:ebs_options, Shapes::ShapeRef.new(shape: EBSOptions, location_name: "EBSOptions"))
    DomainStatus.add_member(:access_policies, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "AccessPolicies"))
    DomainStatus.add_member(:snapshot_options, Shapes::ShapeRef.new(shape: SnapshotOptions, location_name: "SnapshotOptions"))
    DomainStatus.add_member(:vpc_options, Shapes::ShapeRef.new(shape: VPCDerivedInfo, location_name: "VPCOptions"))
    DomainStatus.add_member(:cognito_options, Shapes::ShapeRef.new(shape: CognitoOptions, location_name: "CognitoOptions"))
    DomainStatus.add_member(:encryption_at_rest_options, Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, location_name: "EncryptionAtRestOptions"))
    DomainStatus.add_member(:node_to_node_encryption_options, Shapes::ShapeRef.new(shape: NodeToNodeEncryptionOptions, location_name: "NodeToNodeEncryptionOptions"))
    DomainStatus.add_member(:advanced_options, Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: "AdvancedOptions"))
    DomainStatus.add_member(:log_publishing_options, Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: "LogPublishingOptions"))
    DomainStatus.add_member(:service_software_options, Shapes::ShapeRef.new(shape: ServiceSoftwareOptions, location_name: "ServiceSoftwareOptions"))
    DomainStatus.add_member(:domain_endpoint_options, Shapes::ShapeRef.new(shape: DomainEndpointOptions, location_name: "DomainEndpointOptions"))
    DomainStatus.add_member(:advanced_security_options, Shapes::ShapeRef.new(shape: AdvancedSecurityOptions, location_name: "AdvancedSecurityOptions"))
    DomainStatus.add_member(:auto_tune_options, Shapes::ShapeRef.new(shape: AutoTuneOptionsOutput, location_name: "AutoTuneOptions"))
    DomainStatus.add_member(:change_progress_details, Shapes::ShapeRef.new(shape: ChangeProgressDetails, location_name: "ChangeProgressDetails"))
    DomainStatus.add_member(:off_peak_window_options, Shapes::ShapeRef.new(shape: OffPeakWindowOptions, location_name: "OffPeakWindowOptions"))
    DomainStatus.add_member(:software_update_options, Shapes::ShapeRef.new(shape: SoftwareUpdateOptions, location_name: "SoftwareUpdateOptions"))
    DomainStatus.struct_class = Types::DomainStatus

    DomainStatusList.member = Shapes::ShapeRef.new(shape: DomainStatus)

    DryRunProgressStatus.add_member(:dry_run_id, Shapes::ShapeRef.new(shape: GUID, required: true, location_name: "DryRunId"))
    DryRunProgressStatus.add_member(:dry_run_status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DryRunStatus"))
    DryRunProgressStatus.add_member(:creation_date, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CreationDate"))
    DryRunProgressStatus.add_member(:update_date, Shapes::ShapeRef.new(shape: String, required: true, location_name: "UpdateDate"))
    DryRunProgressStatus.add_member(:validation_failures, Shapes::ShapeRef.new(shape: ValidationFailures, location_name: "ValidationFailures"))
    DryRunProgressStatus.struct_class = Types::DryRunProgressStatus

    DryRunResults.add_member(:deployment_type, Shapes::ShapeRef.new(shape: DeploymentType, location_name: "DeploymentType"))
    DryRunResults.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    DryRunResults.struct_class = Types::DryRunResults

    Duration.add_member(:value, Shapes::ShapeRef.new(shape: DurationValue, location_name: "Value"))
    Duration.add_member(:unit, Shapes::ShapeRef.new(shape: TimeUnit, location_name: "Unit"))
    Duration.struct_class = Types::Duration

    EBSOptions.add_member(:ebs_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "EBSEnabled"))
    EBSOptions.add_member(:volume_type, Shapes::ShapeRef.new(shape: VolumeType, location_name: "VolumeType"))
    EBSOptions.add_member(:volume_size, Shapes::ShapeRef.new(shape: IntegerClass, location_name: "VolumeSize"))
    EBSOptions.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerClass, location_name: "Iops"))
    EBSOptions.add_member(:throughput, Shapes::ShapeRef.new(shape: IntegerClass, location_name: "Throughput"))
    EBSOptions.struct_class = Types::EBSOptions

    EBSOptionsStatus.add_member(:options, Shapes::ShapeRef.new(shape: EBSOptions, required: true, location_name: "Options"))
    EBSOptionsStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    EBSOptionsStatus.struct_class = Types::EBSOptionsStatus

    EncryptionAtRestOptions.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    EncryptionAtRestOptions.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    EncryptionAtRestOptions.struct_class = Types::EncryptionAtRestOptions

    EncryptionAtRestOptionsStatus.add_member(:options, Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, required: true, location_name: "Options"))
    EncryptionAtRestOptionsStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    EncryptionAtRestOptionsStatus.struct_class = Types::EncryptionAtRestOptionsStatus

    EndpointsMap.key = Shapes::ShapeRef.new(shape: String)
    EndpointsMap.value = Shapes::ShapeRef.new(shape: ServiceUrl)

    EnvironmentInfo.add_member(:availability_zone_information, Shapes::ShapeRef.new(shape: AvailabilityZoneInfoList, location_name: "AvailabilityZoneInformation"))
    EnvironmentInfo.struct_class = Types::EnvironmentInfo

    EnvironmentInfoList.member = Shapes::ShapeRef.new(shape: EnvironmentInfo)

    ErrorDetails.add_member(:error_type, Shapes::ShapeRef.new(shape: ErrorType, location_name: "ErrorType"))
    ErrorDetails.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    ErrorDetails.struct_class = Types::ErrorDetails

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: ValueStringList, location_name: "Values"))
    Filter.struct_class = Types::Filter

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    GetCompatibleVersionsRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location: "querystring", location_name: "domainName"))
    GetCompatibleVersionsRequest.struct_class = Types::GetCompatibleVersionsRequest

    GetCompatibleVersionsResponse.add_member(:compatible_versions, Shapes::ShapeRef.new(shape: CompatibleVersionsList, location_name: "CompatibleVersions"))
    GetCompatibleVersionsResponse.struct_class = Types::GetCompatibleVersionsResponse

    GetPackageVersionHistoryRequest.add_member(:package_id, Shapes::ShapeRef.new(shape: PackageID, required: true, location: "uri", location_name: "PackageID"))
    GetPackageVersionHistoryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetPackageVersionHistoryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetPackageVersionHistoryRequest.struct_class = Types::GetPackageVersionHistoryRequest

    GetPackageVersionHistoryResponse.add_member(:package_id, Shapes::ShapeRef.new(shape: PackageID, location_name: "PackageID"))
    GetPackageVersionHistoryResponse.add_member(:package_version_history_list, Shapes::ShapeRef.new(shape: PackageVersionHistoryList, location_name: "PackageVersionHistoryList"))
    GetPackageVersionHistoryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetPackageVersionHistoryResponse.struct_class = Types::GetPackageVersionHistoryResponse

    GetUpgradeHistoryRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    GetUpgradeHistoryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetUpgradeHistoryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetUpgradeHistoryRequest.struct_class = Types::GetUpgradeHistoryRequest

    GetUpgradeHistoryResponse.add_member(:upgrade_histories, Shapes::ShapeRef.new(shape: UpgradeHistoryList, location_name: "UpgradeHistories"))
    GetUpgradeHistoryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetUpgradeHistoryResponse.struct_class = Types::GetUpgradeHistoryResponse

    GetUpgradeStatusRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    GetUpgradeStatusRequest.struct_class = Types::GetUpgradeStatusRequest

    GetUpgradeStatusResponse.add_member(:upgrade_step, Shapes::ShapeRef.new(shape: UpgradeStep, location_name: "UpgradeStep"))
    GetUpgradeStatusResponse.add_member(:step_status, Shapes::ShapeRef.new(shape: UpgradeStatus, location_name: "StepStatus"))
    GetUpgradeStatusResponse.add_member(:upgrade_name, Shapes::ShapeRef.new(shape: UpgradeName, location_name: "UpgradeName"))
    GetUpgradeStatusResponse.struct_class = Types::GetUpgradeStatusResponse

    InboundConnection.add_member(:local_domain_info, Shapes::ShapeRef.new(shape: DomainInformationContainer, location_name: "LocalDomainInfo"))
    InboundConnection.add_member(:remote_domain_info, Shapes::ShapeRef.new(shape: DomainInformationContainer, location_name: "RemoteDomainInfo"))
    InboundConnection.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, location_name: "ConnectionId"))
    InboundConnection.add_member(:connection_status, Shapes::ShapeRef.new(shape: InboundConnectionStatus, location_name: "ConnectionStatus"))
    InboundConnection.add_member(:connection_mode, Shapes::ShapeRef.new(shape: ConnectionMode, location_name: "ConnectionMode"))
    InboundConnection.struct_class = Types::InboundConnection

    InboundConnectionStatus.add_member(:status_code, Shapes::ShapeRef.new(shape: InboundConnectionStatusCode, location_name: "StatusCode"))
    InboundConnectionStatus.add_member(:message, Shapes::ShapeRef.new(shape: ConnectionStatusMessage, location_name: "Message"))
    InboundConnectionStatus.struct_class = Types::InboundConnectionStatus

    InboundConnections.member = Shapes::ShapeRef.new(shape: InboundConnection)

    InstanceCountLimits.add_member(:minimum_instance_count, Shapes::ShapeRef.new(shape: MinimumInstanceCount, location_name: "MinimumInstanceCount"))
    InstanceCountLimits.add_member(:maximum_instance_count, Shapes::ShapeRef.new(shape: MaximumInstanceCount, location_name: "MaximumInstanceCount"))
    InstanceCountLimits.struct_class = Types::InstanceCountLimits

    InstanceLimits.add_member(:instance_count_limits, Shapes::ShapeRef.new(shape: InstanceCountLimits, location_name: "InstanceCountLimits"))
    InstanceLimits.struct_class = Types::InstanceLimits

    InstanceRoleList.member = Shapes::ShapeRef.new(shape: InstanceRole)

    InstanceTypeDetails.add_member(:instance_type, Shapes::ShapeRef.new(shape: OpenSearchPartitionInstanceType, location_name: "InstanceType"))
    InstanceTypeDetails.add_member(:encryption_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "EncryptionEnabled"))
    InstanceTypeDetails.add_member(:cognito_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "CognitoEnabled"))
    InstanceTypeDetails.add_member(:app_logs_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "AppLogsEnabled"))
    InstanceTypeDetails.add_member(:advanced_security_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "AdvancedSecurityEnabled"))
    InstanceTypeDetails.add_member(:warm_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "WarmEnabled"))
    InstanceTypeDetails.add_member(:instance_role, Shapes::ShapeRef.new(shape: InstanceRoleList, location_name: "InstanceRole"))
    InstanceTypeDetails.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZoneList, location_name: "AvailabilityZones"))
    InstanceTypeDetails.struct_class = Types::InstanceTypeDetails

    InstanceTypeDetailsList.member = Shapes::ShapeRef.new(shape: InstanceTypeDetails)

    InternalException.struct_class = Types::InternalException

    InvalidPaginationTokenException.struct_class = Types::InvalidPaginationTokenException

    InvalidTypeException.struct_class = Types::InvalidTypeException

    Issues.member = Shapes::ShapeRef.new(shape: Issue)

    LimitExceededException.struct_class = Types::LimitExceededException

    LimitValueList.member = Shapes::ShapeRef.new(shape: LimitValue)

    Limits.add_member(:storage_types, Shapes::ShapeRef.new(shape: StorageTypeList, location_name: "StorageTypes"))
    Limits.add_member(:instance_limits, Shapes::ShapeRef.new(shape: InstanceLimits, location_name: "InstanceLimits"))
    Limits.add_member(:additional_limits, Shapes::ShapeRef.new(shape: AdditionalLimitList, location_name: "AdditionalLimits"))
    Limits.struct_class = Types::Limits

    LimitsByRole.key = Shapes::ShapeRef.new(shape: InstanceRole)
    LimitsByRole.value = Shapes::ShapeRef.new(shape: Limits)

    ListDomainNamesRequest.add_member(:engine_type, Shapes::ShapeRef.new(shape: EngineType, location: "querystring", location_name: "engineType"))
    ListDomainNamesRequest.struct_class = Types::ListDomainNamesRequest

    ListDomainNamesResponse.add_member(:domain_names, Shapes::ShapeRef.new(shape: DomainInfoList, location_name: "DomainNames"))
    ListDomainNamesResponse.struct_class = Types::ListDomainNamesResponse

    ListDomainsForPackageRequest.add_member(:package_id, Shapes::ShapeRef.new(shape: PackageID, required: true, location: "uri", location_name: "PackageID"))
    ListDomainsForPackageRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDomainsForPackageRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDomainsForPackageRequest.struct_class = Types::ListDomainsForPackageRequest

    ListDomainsForPackageResponse.add_member(:domain_package_details_list, Shapes::ShapeRef.new(shape: DomainPackageDetailsList, location_name: "DomainPackageDetailsList"))
    ListDomainsForPackageResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListDomainsForPackageResponse.struct_class = Types::ListDomainsForPackageResponse

    ListInstanceTypeDetailsRequest.add_member(:engine_version, Shapes::ShapeRef.new(shape: VersionString, required: true, location: "uri", location_name: "EngineVersion"))
    ListInstanceTypeDetailsRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location: "querystring", location_name: "domainName"))
    ListInstanceTypeDetailsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListInstanceTypeDetailsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListInstanceTypeDetailsRequest.add_member(:retrieve_a_zs, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "retrieveAZs"))
    ListInstanceTypeDetailsRequest.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceTypeString, location: "querystring", location_name: "instanceType"))
    ListInstanceTypeDetailsRequest.struct_class = Types::ListInstanceTypeDetailsRequest

    ListInstanceTypeDetailsResponse.add_member(:instance_type_details, Shapes::ShapeRef.new(shape: InstanceTypeDetailsList, location_name: "InstanceTypeDetails"))
    ListInstanceTypeDetailsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListInstanceTypeDetailsResponse.struct_class = Types::ListInstanceTypeDetailsResponse

    ListPackagesForDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    ListPackagesForDomainRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPackagesForDomainRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPackagesForDomainRequest.struct_class = Types::ListPackagesForDomainRequest

    ListPackagesForDomainResponse.add_member(:domain_package_details_list, Shapes::ShapeRef.new(shape: DomainPackageDetailsList, location_name: "DomainPackageDetailsList"))
    ListPackagesForDomainResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListPackagesForDomainResponse.struct_class = Types::ListPackagesForDomainResponse

    ListScheduledActionsRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    ListScheduledActionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListScheduledActionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListScheduledActionsRequest.struct_class = Types::ListScheduledActionsRequest

    ListScheduledActionsResponse.add_member(:scheduled_actions, Shapes::ShapeRef.new(shape: ScheduledActionsList, location_name: "ScheduledActions"))
    ListScheduledActionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListScheduledActionsResponse.struct_class = Types::ListScheduledActionsResponse

    ListTagsRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "querystring", location_name: "arn"))
    ListTagsRequest.struct_class = Types::ListTagsRequest

    ListTagsResponse.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    ListTagsResponse.struct_class = Types::ListTagsResponse

    ListVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListVersionsRequest.struct_class = Types::ListVersionsRequest

    ListVersionsResponse.add_member(:versions, Shapes::ShapeRef.new(shape: VersionList, location_name: "Versions"))
    ListVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListVersionsResponse.struct_class = Types::ListVersionsResponse

    ListVpcEndpointAccessRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    ListVpcEndpointAccessRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListVpcEndpointAccessRequest.struct_class = Types::ListVpcEndpointAccessRequest

    ListVpcEndpointAccessResponse.add_member(:authorized_principal_list, Shapes::ShapeRef.new(shape: AuthorizedPrincipalList, required: true, location_name: "AuthorizedPrincipalList"))
    ListVpcEndpointAccessResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, required: true, location_name: "NextToken"))
    ListVpcEndpointAccessResponse.struct_class = Types::ListVpcEndpointAccessResponse

    ListVpcEndpointsForDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    ListVpcEndpointsForDomainRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListVpcEndpointsForDomainRequest.struct_class = Types::ListVpcEndpointsForDomainRequest

    ListVpcEndpointsForDomainResponse.add_member(:vpc_endpoint_summary_list, Shapes::ShapeRef.new(shape: VpcEndpointSummaryList, required: true, location_name: "VpcEndpointSummaryList"))
    ListVpcEndpointsForDomainResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, required: true, location_name: "NextToken"))
    ListVpcEndpointsForDomainResponse.struct_class = Types::ListVpcEndpointsForDomainResponse

    ListVpcEndpointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListVpcEndpointsRequest.struct_class = Types::ListVpcEndpointsRequest

    ListVpcEndpointsResponse.add_member(:vpc_endpoint_summary_list, Shapes::ShapeRef.new(shape: VpcEndpointSummaryList, required: true, location_name: "VpcEndpointSummaryList"))
    ListVpcEndpointsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, required: true, location_name: "NextToken"))
    ListVpcEndpointsResponse.struct_class = Types::ListVpcEndpointsResponse

    LogPublishingOption.add_member(:cloud_watch_logs_log_group_arn, Shapes::ShapeRef.new(shape: CloudWatchLogsLogGroupArn, location_name: "CloudWatchLogsLogGroupArn"))
    LogPublishingOption.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    LogPublishingOption.struct_class = Types::LogPublishingOption

    LogPublishingOptions.key = Shapes::ShapeRef.new(shape: LogType)
    LogPublishingOptions.value = Shapes::ShapeRef.new(shape: LogPublishingOption)

    LogPublishingOptionsStatus.add_member(:options, Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: "Options"))
    LogPublishingOptionsStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, location_name: "Status"))
    LogPublishingOptionsStatus.struct_class = Types::LogPublishingOptionsStatus

    MasterUserOptions.add_member(:master_user_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "MasterUserARN"))
    MasterUserOptions.add_member(:master_user_name, Shapes::ShapeRef.new(shape: Username, location_name: "MasterUserName"))
    MasterUserOptions.add_member(:master_user_password, Shapes::ShapeRef.new(shape: Password, location_name: "MasterUserPassword"))
    MasterUserOptions.struct_class = Types::MasterUserOptions

    NodeToNodeEncryptionOptions.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    NodeToNodeEncryptionOptions.struct_class = Types::NodeToNodeEncryptionOptions

    NodeToNodeEncryptionOptionsStatus.add_member(:options, Shapes::ShapeRef.new(shape: NodeToNodeEncryptionOptions, required: true, location_name: "Options"))
    NodeToNodeEncryptionOptionsStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    NodeToNodeEncryptionOptionsStatus.struct_class = Types::NodeToNodeEncryptionOptionsStatus

    OffPeakWindow.add_member(:window_start_time, Shapes::ShapeRef.new(shape: WindowStartTime, location_name: "WindowStartTime"))
    OffPeakWindow.struct_class = Types::OffPeakWindow

    OffPeakWindowOptions.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    OffPeakWindowOptions.add_member(:off_peak_window, Shapes::ShapeRef.new(shape: OffPeakWindow, location_name: "OffPeakWindow"))
    OffPeakWindowOptions.struct_class = Types::OffPeakWindowOptions

    OffPeakWindowOptionsStatus.add_member(:options, Shapes::ShapeRef.new(shape: OffPeakWindowOptions, location_name: "Options"))
    OffPeakWindowOptionsStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, location_name: "Status"))
    OffPeakWindowOptionsStatus.struct_class = Types::OffPeakWindowOptionsStatus

    OptionStatus.add_member(:creation_date, Shapes::ShapeRef.new(shape: UpdateTimestamp, required: true, location_name: "CreationDate"))
    OptionStatus.add_member(:update_date, Shapes::ShapeRef.new(shape: UpdateTimestamp, required: true, location_name: "UpdateDate"))
    OptionStatus.add_member(:update_version, Shapes::ShapeRef.new(shape: UIntValue, location_name: "UpdateVersion"))
    OptionStatus.add_member(:state, Shapes::ShapeRef.new(shape: OptionState, required: true, location_name: "State"))
    OptionStatus.add_member(:pending_deletion, Shapes::ShapeRef.new(shape: Boolean, location_name: "PendingDeletion"))
    OptionStatus.struct_class = Types::OptionStatus

    OutboundConnection.add_member(:local_domain_info, Shapes::ShapeRef.new(shape: DomainInformationContainer, location_name: "LocalDomainInfo"))
    OutboundConnection.add_member(:remote_domain_info, Shapes::ShapeRef.new(shape: DomainInformationContainer, location_name: "RemoteDomainInfo"))
    OutboundConnection.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, location_name: "ConnectionId"))
    OutboundConnection.add_member(:connection_alias, Shapes::ShapeRef.new(shape: ConnectionAlias, location_name: "ConnectionAlias"))
    OutboundConnection.add_member(:connection_status, Shapes::ShapeRef.new(shape: OutboundConnectionStatus, location_name: "ConnectionStatus"))
    OutboundConnection.add_member(:connection_mode, Shapes::ShapeRef.new(shape: ConnectionMode, location_name: "ConnectionMode"))
    OutboundConnection.add_member(:connection_properties, Shapes::ShapeRef.new(shape: ConnectionProperties, location_name: "ConnectionProperties"))
    OutboundConnection.struct_class = Types::OutboundConnection

    OutboundConnectionStatus.add_member(:status_code, Shapes::ShapeRef.new(shape: OutboundConnectionStatusCode, location_name: "StatusCode"))
    OutboundConnectionStatus.add_member(:message, Shapes::ShapeRef.new(shape: ConnectionStatusMessage, location_name: "Message"))
    OutboundConnectionStatus.struct_class = Types::OutboundConnectionStatus

    OutboundConnections.member = Shapes::ShapeRef.new(shape: OutboundConnection)

    PackageDetails.add_member(:package_id, Shapes::ShapeRef.new(shape: PackageID, location_name: "PackageID"))
    PackageDetails.add_member(:package_name, Shapes::ShapeRef.new(shape: PackageName, location_name: "PackageName"))
    PackageDetails.add_member(:package_type, Shapes::ShapeRef.new(shape: PackageType, location_name: "PackageType"))
    PackageDetails.add_member(:package_description, Shapes::ShapeRef.new(shape: PackageDescription, location_name: "PackageDescription"))
    PackageDetails.add_member(:package_status, Shapes::ShapeRef.new(shape: PackageStatus, location_name: "PackageStatus"))
    PackageDetails.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "CreatedAt"))
    PackageDetails.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: LastUpdated, location_name: "LastUpdatedAt"))
    PackageDetails.add_member(:available_package_version, Shapes::ShapeRef.new(shape: PackageVersion, location_name: "AvailablePackageVersion"))
    PackageDetails.add_member(:error_details, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "ErrorDetails"))
    PackageDetails.struct_class = Types::PackageDetails

    PackageDetailsList.member = Shapes::ShapeRef.new(shape: PackageDetails)

    PackageSource.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "S3BucketName"))
    PackageSource.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3Key, location_name: "S3Key"))
    PackageSource.struct_class = Types::PackageSource

    PackageVersionHistory.add_member(:package_version, Shapes::ShapeRef.new(shape: PackageVersion, location_name: "PackageVersion"))
    PackageVersionHistory.add_member(:commit_message, Shapes::ShapeRef.new(shape: CommitMessage, location_name: "CommitMessage"))
    PackageVersionHistory.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "CreatedAt"))
    PackageVersionHistory.struct_class = Types::PackageVersionHistory

    PackageVersionHistoryList.member = Shapes::ShapeRef.new(shape: PackageVersionHistory)

    PurchaseReservedInstanceOfferingRequest.add_member(:reserved_instance_offering_id, Shapes::ShapeRef.new(shape: GUID, required: true, location_name: "ReservedInstanceOfferingId"))
    PurchaseReservedInstanceOfferingRequest.add_member(:reservation_name, Shapes::ShapeRef.new(shape: ReservationToken, required: true, location_name: "ReservationName"))
    PurchaseReservedInstanceOfferingRequest.add_member(:instance_count, Shapes::ShapeRef.new(shape: InstanceCount, location_name: "InstanceCount"))
    PurchaseReservedInstanceOfferingRequest.struct_class = Types::PurchaseReservedInstanceOfferingRequest

    PurchaseReservedInstanceOfferingResponse.add_member(:reserved_instance_id, Shapes::ShapeRef.new(shape: GUID, location_name: "ReservedInstanceId"))
    PurchaseReservedInstanceOfferingResponse.add_member(:reservation_name, Shapes::ShapeRef.new(shape: ReservationToken, location_name: "ReservationName"))
    PurchaseReservedInstanceOfferingResponse.struct_class = Types::PurchaseReservedInstanceOfferingResponse

    RecurringCharge.add_member(:recurring_charge_amount, Shapes::ShapeRef.new(shape: Double, location_name: "RecurringChargeAmount"))
    RecurringCharge.add_member(:recurring_charge_frequency, Shapes::ShapeRef.new(shape: String, location_name: "RecurringChargeFrequency"))
    RecurringCharge.struct_class = Types::RecurringCharge

    RecurringChargeList.member = Shapes::ShapeRef.new(shape: RecurringCharge)

    RejectInboundConnectionRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location: "uri", location_name: "ConnectionId"))
    RejectInboundConnectionRequest.struct_class = Types::RejectInboundConnectionRequest

    RejectInboundConnectionResponse.add_member(:connection, Shapes::ShapeRef.new(shape: InboundConnection, location_name: "Connection"))
    RejectInboundConnectionResponse.struct_class = Types::RejectInboundConnectionResponse

    RemoveTagsRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "ARN"))
    RemoveTagsRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "TagKeys"))
    RemoveTagsRequest.struct_class = Types::RemoveTagsRequest

    ReservedInstance.add_member(:reservation_name, Shapes::ShapeRef.new(shape: ReservationToken, location_name: "ReservationName"))
    ReservedInstance.add_member(:reserved_instance_id, Shapes::ShapeRef.new(shape: GUID, location_name: "ReservedInstanceId"))
    ReservedInstance.add_member(:billing_subscription_id, Shapes::ShapeRef.new(shape: Long, location_name: "BillingSubscriptionId"))
    ReservedInstance.add_member(:reserved_instance_offering_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedInstanceOfferingId"))
    ReservedInstance.add_member(:instance_type, Shapes::ShapeRef.new(shape: OpenSearchPartitionInstanceType, location_name: "InstanceType"))
    ReservedInstance.add_member(:start_time, Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: "StartTime"))
    ReservedInstance.add_member(:duration, Shapes::ShapeRef.new(shape: Integer, location_name: "Duration"))
    ReservedInstance.add_member(:fixed_price, Shapes::ShapeRef.new(shape: Double, location_name: "FixedPrice"))
    ReservedInstance.add_member(:usage_price, Shapes::ShapeRef.new(shape: Double, location_name: "UsagePrice"))
    ReservedInstance.add_member(:currency_code, Shapes::ShapeRef.new(shape: String, location_name: "CurrencyCode"))
    ReservedInstance.add_member(:instance_count, Shapes::ShapeRef.new(shape: Integer, location_name: "InstanceCount"))
    ReservedInstance.add_member(:state, Shapes::ShapeRef.new(shape: String, location_name: "State"))
    ReservedInstance.add_member(:payment_option, Shapes::ShapeRef.new(shape: ReservedInstancePaymentOption, location_name: "PaymentOption"))
    ReservedInstance.add_member(:recurring_charges, Shapes::ShapeRef.new(shape: RecurringChargeList, location_name: "RecurringCharges"))
    ReservedInstance.struct_class = Types::ReservedInstance

    ReservedInstanceList.member = Shapes::ShapeRef.new(shape: ReservedInstance)

    ReservedInstanceOffering.add_member(:reserved_instance_offering_id, Shapes::ShapeRef.new(shape: GUID, location_name: "ReservedInstanceOfferingId"))
    ReservedInstanceOffering.add_member(:instance_type, Shapes::ShapeRef.new(shape: OpenSearchPartitionInstanceType, location_name: "InstanceType"))
    ReservedInstanceOffering.add_member(:duration, Shapes::ShapeRef.new(shape: Integer, location_name: "Duration"))
    ReservedInstanceOffering.add_member(:fixed_price, Shapes::ShapeRef.new(shape: Double, location_name: "FixedPrice"))
    ReservedInstanceOffering.add_member(:usage_price, Shapes::ShapeRef.new(shape: Double, location_name: "UsagePrice"))
    ReservedInstanceOffering.add_member(:currency_code, Shapes::ShapeRef.new(shape: String, location_name: "CurrencyCode"))
    ReservedInstanceOffering.add_member(:payment_option, Shapes::ShapeRef.new(shape: ReservedInstancePaymentOption, location_name: "PaymentOption"))
    ReservedInstanceOffering.add_member(:recurring_charges, Shapes::ShapeRef.new(shape: RecurringChargeList, location_name: "RecurringCharges"))
    ReservedInstanceOffering.struct_class = Types::ReservedInstanceOffering

    ReservedInstanceOfferingList.member = Shapes::ShapeRef.new(shape: ReservedInstanceOffering)

    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RevokeVpcEndpointAccessRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    RevokeVpcEndpointAccessRequest.add_member(:account, Shapes::ShapeRef.new(shape: AWSAccount, required: true, location_name: "Account"))
    RevokeVpcEndpointAccessRequest.struct_class = Types::RevokeVpcEndpointAccessRequest

    RevokeVpcEndpointAccessResponse.struct_class = Types::RevokeVpcEndpointAccessResponse

    SAMLIdp.add_member(:metadata_content, Shapes::ShapeRef.new(shape: SAMLMetadata, required: true, location_name: "MetadataContent"))
    SAMLIdp.add_member(:entity_id, Shapes::ShapeRef.new(shape: SAMLEntityId, required: true, location_name: "EntityId"))
    SAMLIdp.struct_class = Types::SAMLIdp

    SAMLOptionsInput.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    SAMLOptionsInput.add_member(:idp, Shapes::ShapeRef.new(shape: SAMLIdp, location_name: "Idp"))
    SAMLOptionsInput.add_member(:master_user_name, Shapes::ShapeRef.new(shape: Username, location_name: "MasterUserName"))
    SAMLOptionsInput.add_member(:master_backend_role, Shapes::ShapeRef.new(shape: BackendRole, location_name: "MasterBackendRole"))
    SAMLOptionsInput.add_member(:subject_key, Shapes::ShapeRef.new(shape: String, location_name: "SubjectKey"))
    SAMLOptionsInput.add_member(:roles_key, Shapes::ShapeRef.new(shape: String, location_name: "RolesKey"))
    SAMLOptionsInput.add_member(:session_timeout_minutes, Shapes::ShapeRef.new(shape: IntegerClass, location_name: "SessionTimeoutMinutes"))
    SAMLOptionsInput.struct_class = Types::SAMLOptionsInput

    SAMLOptionsOutput.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    SAMLOptionsOutput.add_member(:idp, Shapes::ShapeRef.new(shape: SAMLIdp, location_name: "Idp"))
    SAMLOptionsOutput.add_member(:subject_key, Shapes::ShapeRef.new(shape: String, location_name: "SubjectKey"))
    SAMLOptionsOutput.add_member(:roles_key, Shapes::ShapeRef.new(shape: String, location_name: "RolesKey"))
    SAMLOptionsOutput.add_member(:session_timeout_minutes, Shapes::ShapeRef.new(shape: IntegerClass, location_name: "SessionTimeoutMinutes"))
    SAMLOptionsOutput.struct_class = Types::SAMLOptionsOutput

    ScheduledAction.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Id"))
    ScheduledAction.add_member(:type, Shapes::ShapeRef.new(shape: ActionType, required: true, location_name: "Type"))
    ScheduledAction.add_member(:severity, Shapes::ShapeRef.new(shape: ActionSeverity, required: true, location_name: "Severity"))
    ScheduledAction.add_member(:scheduled_time, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "ScheduledTime"))
    ScheduledAction.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ScheduledAction.add_member(:scheduled_by, Shapes::ShapeRef.new(shape: ScheduledBy, location_name: "ScheduledBy"))
    ScheduledAction.add_member(:status, Shapes::ShapeRef.new(shape: ActionStatus, location_name: "Status"))
    ScheduledAction.add_member(:mandatory, Shapes::ShapeRef.new(shape: Boolean, location_name: "Mandatory"))
    ScheduledAction.add_member(:cancellable, Shapes::ShapeRef.new(shape: Boolean, location_name: "Cancellable"))
    ScheduledAction.struct_class = Types::ScheduledAction

    ScheduledActionsList.member = Shapes::ShapeRef.new(shape: ScheduledAction)

    ScheduledAutoTuneDetails.add_member(:date, Shapes::ShapeRef.new(shape: AutoTuneDate, location_name: "Date"))
    ScheduledAutoTuneDetails.add_member(:action_type, Shapes::ShapeRef.new(shape: ScheduledAutoTuneActionType, location_name: "ActionType"))
    ScheduledAutoTuneDetails.add_member(:action, Shapes::ShapeRef.new(shape: ScheduledAutoTuneDescription, location_name: "Action"))
    ScheduledAutoTuneDetails.add_member(:severity, Shapes::ShapeRef.new(shape: ScheduledAutoTuneSeverityType, location_name: "Severity"))
    ScheduledAutoTuneDetails.struct_class = Types::ScheduledAutoTuneDetails

    ServiceSoftwareOptions.add_member(:current_version, Shapes::ShapeRef.new(shape: String, location_name: "CurrentVersion"))
    ServiceSoftwareOptions.add_member(:new_version, Shapes::ShapeRef.new(shape: String, location_name: "NewVersion"))
    ServiceSoftwareOptions.add_member(:update_available, Shapes::ShapeRef.new(shape: Boolean, location_name: "UpdateAvailable"))
    ServiceSoftwareOptions.add_member(:cancellable, Shapes::ShapeRef.new(shape: Boolean, location_name: "Cancellable"))
    ServiceSoftwareOptions.add_member(:update_status, Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "UpdateStatus"))
    ServiceSoftwareOptions.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ServiceSoftwareOptions.add_member(:automated_update_date, Shapes::ShapeRef.new(shape: DeploymentCloseDateTimeStamp, location_name: "AutomatedUpdateDate"))
    ServiceSoftwareOptions.add_member(:optional_deployment, Shapes::ShapeRef.new(shape: Boolean, location_name: "OptionalDeployment"))
    ServiceSoftwareOptions.struct_class = Types::ServiceSoftwareOptions

    SlotList.member = Shapes::ShapeRef.new(shape: Long)

    SlotNotAvailableException.add_member(:slot_suggestions, Shapes::ShapeRef.new(shape: SlotList, location_name: "SlotSuggestions"))
    SlotNotAvailableException.struct_class = Types::SlotNotAvailableException

    SnapshotOptions.add_member(:automated_snapshot_start_hour, Shapes::ShapeRef.new(shape: IntegerClass, location_name: "AutomatedSnapshotStartHour"))
    SnapshotOptions.struct_class = Types::SnapshotOptions

    SnapshotOptionsStatus.add_member(:options, Shapes::ShapeRef.new(shape: SnapshotOptions, required: true, location_name: "Options"))
    SnapshotOptionsStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    SnapshotOptionsStatus.struct_class = Types::SnapshotOptionsStatus

    SoftwareUpdateOptions.add_member(:auto_software_update_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoSoftwareUpdateEnabled"))
    SoftwareUpdateOptions.struct_class = Types::SoftwareUpdateOptions

    SoftwareUpdateOptionsStatus.add_member(:options, Shapes::ShapeRef.new(shape: SoftwareUpdateOptions, location_name: "Options"))
    SoftwareUpdateOptionsStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, location_name: "Status"))
    SoftwareUpdateOptionsStatus.struct_class = Types::SoftwareUpdateOptionsStatus

    StartServiceSoftwareUpdateRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    StartServiceSoftwareUpdateRequest.add_member(:schedule_at, Shapes::ShapeRef.new(shape: ScheduleAt, location_name: "ScheduleAt"))
    StartServiceSoftwareUpdateRequest.add_member(:desired_start_time, Shapes::ShapeRef.new(shape: Long, location_name: "DesiredStartTime"))
    StartServiceSoftwareUpdateRequest.struct_class = Types::StartServiceSoftwareUpdateRequest

    StartServiceSoftwareUpdateResponse.add_member(:service_software_options, Shapes::ShapeRef.new(shape: ServiceSoftwareOptions, location_name: "ServiceSoftwareOptions"))
    StartServiceSoftwareUpdateResponse.struct_class = Types::StartServiceSoftwareUpdateResponse

    StorageType.add_member(:storage_type_name, Shapes::ShapeRef.new(shape: StorageTypeName, location_name: "StorageTypeName"))
    StorageType.add_member(:storage_sub_type_name, Shapes::ShapeRef.new(shape: StorageSubTypeName, location_name: "StorageSubTypeName"))
    StorageType.add_member(:storage_type_limits, Shapes::ShapeRef.new(shape: StorageTypeLimitList, location_name: "StorageTypeLimits"))
    StorageType.struct_class = Types::StorageType

    StorageTypeLimit.add_member(:limit_name, Shapes::ShapeRef.new(shape: LimitName, location_name: "LimitName"))
    StorageTypeLimit.add_member(:limit_values, Shapes::ShapeRef.new(shape: LimitValueList, location_name: "LimitValues"))
    StorageTypeLimit.struct_class = Types::StorageTypeLimit

    StorageTypeLimitList.member = Shapes::ShapeRef.new(shape: StorageTypeLimit)

    StorageTypeList.member = Shapes::ShapeRef.new(shape: StorageType)

    StringList.member = Shapes::ShapeRef.new(shape: String)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    UpdateDomainConfigRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    UpdateDomainConfigRequest.add_member(:cluster_config, Shapes::ShapeRef.new(shape: ClusterConfig, location_name: "ClusterConfig"))
    UpdateDomainConfigRequest.add_member(:ebs_options, Shapes::ShapeRef.new(shape: EBSOptions, location_name: "EBSOptions"))
    UpdateDomainConfigRequest.add_member(:snapshot_options, Shapes::ShapeRef.new(shape: SnapshotOptions, location_name: "SnapshotOptions"))
    UpdateDomainConfigRequest.add_member(:vpc_options, Shapes::ShapeRef.new(shape: VPCOptions, location_name: "VPCOptions"))
    UpdateDomainConfigRequest.add_member(:cognito_options, Shapes::ShapeRef.new(shape: CognitoOptions, location_name: "CognitoOptions"))
    UpdateDomainConfigRequest.add_member(:advanced_options, Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: "AdvancedOptions"))
    UpdateDomainConfigRequest.add_member(:access_policies, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "AccessPolicies"))
    UpdateDomainConfigRequest.add_member(:log_publishing_options, Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: "LogPublishingOptions"))
    UpdateDomainConfigRequest.add_member(:encryption_at_rest_options, Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, location_name: "EncryptionAtRestOptions"))
    UpdateDomainConfigRequest.add_member(:domain_endpoint_options, Shapes::ShapeRef.new(shape: DomainEndpointOptions, location_name: "DomainEndpointOptions"))
    UpdateDomainConfigRequest.add_member(:node_to_node_encryption_options, Shapes::ShapeRef.new(shape: NodeToNodeEncryptionOptions, location_name: "NodeToNodeEncryptionOptions"))
    UpdateDomainConfigRequest.add_member(:advanced_security_options, Shapes::ShapeRef.new(shape: AdvancedSecurityOptionsInput, location_name: "AdvancedSecurityOptions"))
    UpdateDomainConfigRequest.add_member(:auto_tune_options, Shapes::ShapeRef.new(shape: AutoTuneOptions, location_name: "AutoTuneOptions"))
    UpdateDomainConfigRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: DryRun, location_name: "DryRun"))
    UpdateDomainConfigRequest.add_member(:dry_run_mode, Shapes::ShapeRef.new(shape: DryRunMode, location_name: "DryRunMode"))
    UpdateDomainConfigRequest.add_member(:off_peak_window_options, Shapes::ShapeRef.new(shape: OffPeakWindowOptions, location_name: "OffPeakWindowOptions"))
    UpdateDomainConfigRequest.add_member(:software_update_options, Shapes::ShapeRef.new(shape: SoftwareUpdateOptions, location_name: "SoftwareUpdateOptions"))
    UpdateDomainConfigRequest.struct_class = Types::UpdateDomainConfigRequest

    UpdateDomainConfigResponse.add_member(:domain_config, Shapes::ShapeRef.new(shape: DomainConfig, required: true, location_name: "DomainConfig"))
    UpdateDomainConfigResponse.add_member(:dry_run_results, Shapes::ShapeRef.new(shape: DryRunResults, location_name: "DryRunResults"))
    UpdateDomainConfigResponse.add_member(:dry_run_progress_status, Shapes::ShapeRef.new(shape: DryRunProgressStatus, location_name: "DryRunProgressStatus"))
    UpdateDomainConfigResponse.struct_class = Types::UpdateDomainConfigResponse

    UpdatePackageRequest.add_member(:package_id, Shapes::ShapeRef.new(shape: PackageID, required: true, location_name: "PackageID"))
    UpdatePackageRequest.add_member(:package_source, Shapes::ShapeRef.new(shape: PackageSource, required: true, location_name: "PackageSource"))
    UpdatePackageRequest.add_member(:package_description, Shapes::ShapeRef.new(shape: PackageDescription, location_name: "PackageDescription"))
    UpdatePackageRequest.add_member(:commit_message, Shapes::ShapeRef.new(shape: CommitMessage, location_name: "CommitMessage"))
    UpdatePackageRequest.struct_class = Types::UpdatePackageRequest

    UpdatePackageResponse.add_member(:package_details, Shapes::ShapeRef.new(shape: PackageDetails, location_name: "PackageDetails"))
    UpdatePackageResponse.struct_class = Types::UpdatePackageResponse

    UpdateScheduledActionRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    UpdateScheduledActionRequest.add_member(:action_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ActionID"))
    UpdateScheduledActionRequest.add_member(:action_type, Shapes::ShapeRef.new(shape: ActionType, required: true, location_name: "ActionType"))
    UpdateScheduledActionRequest.add_member(:schedule_at, Shapes::ShapeRef.new(shape: ScheduleAt, required: true, location_name: "ScheduleAt"))
    UpdateScheduledActionRequest.add_member(:desired_start_time, Shapes::ShapeRef.new(shape: Long, location_name: "DesiredStartTime"))
    UpdateScheduledActionRequest.struct_class = Types::UpdateScheduledActionRequest

    UpdateScheduledActionResponse.add_member(:scheduled_action, Shapes::ShapeRef.new(shape: ScheduledAction, location_name: "ScheduledAction"))
    UpdateScheduledActionResponse.struct_class = Types::UpdateScheduledActionResponse

    UpdateVpcEndpointRequest.add_member(:vpc_endpoint_id, Shapes::ShapeRef.new(shape: VpcEndpointId, required: true, location_name: "VpcEndpointId"))
    UpdateVpcEndpointRequest.add_member(:vpc_options, Shapes::ShapeRef.new(shape: VPCOptions, required: true, location_name: "VpcOptions"))
    UpdateVpcEndpointRequest.struct_class = Types::UpdateVpcEndpointRequest

    UpdateVpcEndpointResponse.add_member(:vpc_endpoint, Shapes::ShapeRef.new(shape: VpcEndpoint, required: true, location_name: "VpcEndpoint"))
    UpdateVpcEndpointResponse.struct_class = Types::UpdateVpcEndpointResponse

    UpgradeDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    UpgradeDomainRequest.add_member(:target_version, Shapes::ShapeRef.new(shape: VersionString, required: true, location_name: "TargetVersion"))
    UpgradeDomainRequest.add_member(:perform_check_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "PerformCheckOnly"))
    UpgradeDomainRequest.add_member(:advanced_options, Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: "AdvancedOptions"))
    UpgradeDomainRequest.struct_class = Types::UpgradeDomainRequest

    UpgradeDomainResponse.add_member(:upgrade_id, Shapes::ShapeRef.new(shape: String, location_name: "UpgradeId"))
    UpgradeDomainResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    UpgradeDomainResponse.add_member(:target_version, Shapes::ShapeRef.new(shape: VersionString, location_name: "TargetVersion"))
    UpgradeDomainResponse.add_member(:perform_check_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "PerformCheckOnly"))
    UpgradeDomainResponse.add_member(:advanced_options, Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: "AdvancedOptions"))
    UpgradeDomainResponse.add_member(:change_progress_details, Shapes::ShapeRef.new(shape: ChangeProgressDetails, location_name: "ChangeProgressDetails"))
    UpgradeDomainResponse.struct_class = Types::UpgradeDomainResponse

    UpgradeHistory.add_member(:upgrade_name, Shapes::ShapeRef.new(shape: UpgradeName, location_name: "UpgradeName"))
    UpgradeHistory.add_member(:start_timestamp, Shapes::ShapeRef.new(shape: StartTimestamp, location_name: "StartTimestamp"))
    UpgradeHistory.add_member(:upgrade_status, Shapes::ShapeRef.new(shape: UpgradeStatus, location_name: "UpgradeStatus"))
    UpgradeHistory.add_member(:steps_list, Shapes::ShapeRef.new(shape: UpgradeStepsList, location_name: "StepsList"))
    UpgradeHistory.struct_class = Types::UpgradeHistory

    UpgradeHistoryList.member = Shapes::ShapeRef.new(shape: UpgradeHistory)

    UpgradeStepItem.add_member(:upgrade_step, Shapes::ShapeRef.new(shape: UpgradeStep, location_name: "UpgradeStep"))
    UpgradeStepItem.add_member(:upgrade_step_status, Shapes::ShapeRef.new(shape: UpgradeStatus, location_name: "UpgradeStepStatus"))
    UpgradeStepItem.add_member(:issues, Shapes::ShapeRef.new(shape: Issues, location_name: "Issues"))
    UpgradeStepItem.add_member(:progress_percent, Shapes::ShapeRef.new(shape: Double, location_name: "ProgressPercent"))
    UpgradeStepItem.struct_class = Types::UpgradeStepItem

    UpgradeStepsList.member = Shapes::ShapeRef.new(shape: UpgradeStepItem)

    VPCDerivedInfo.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VPCId"))
    VPCDerivedInfo.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "SubnetIds"))
    VPCDerivedInfo.add_member(:availability_zones, Shapes::ShapeRef.new(shape: StringList, location_name: "AvailabilityZones"))
    VPCDerivedInfo.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "SecurityGroupIds"))
    VPCDerivedInfo.struct_class = Types::VPCDerivedInfo

    VPCDerivedInfoStatus.add_member(:options, Shapes::ShapeRef.new(shape: VPCDerivedInfo, required: true, location_name: "Options"))
    VPCDerivedInfoStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    VPCDerivedInfoStatus.struct_class = Types::VPCDerivedInfoStatus

    VPCOptions.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "SubnetIds"))
    VPCOptions.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "SecurityGroupIds"))
    VPCOptions.struct_class = Types::VPCOptions

    ValidationException.struct_class = Types::ValidationException

    ValidationFailure.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    ValidationFailure.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ValidationFailure.struct_class = Types::ValidationFailure

    ValidationFailures.member = Shapes::ShapeRef.new(shape: ValidationFailure)

    ValueStringList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    VersionList.member = Shapes::ShapeRef.new(shape: VersionString)

    VersionStatus.add_member(:options, Shapes::ShapeRef.new(shape: VersionString, required: true, location_name: "Options"))
    VersionStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    VersionStatus.struct_class = Types::VersionStatus

    VpcEndpoint.add_member(:vpc_endpoint_id, Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "VpcEndpointId"))
    VpcEndpoint.add_member(:vpc_endpoint_owner, Shapes::ShapeRef.new(shape: AWSAccount, location_name: "VpcEndpointOwner"))
    VpcEndpoint.add_member(:domain_arn, Shapes::ShapeRef.new(shape: DomainArn, location_name: "DomainArn"))
    VpcEndpoint.add_member(:vpc_options, Shapes::ShapeRef.new(shape: VPCDerivedInfo, location_name: "VpcOptions"))
    VpcEndpoint.add_member(:status, Shapes::ShapeRef.new(shape: VpcEndpointStatus, location_name: "Status"))
    VpcEndpoint.add_member(:endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "Endpoint"))
    VpcEndpoint.struct_class = Types::VpcEndpoint

    VpcEndpointError.add_member(:vpc_endpoint_id, Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "VpcEndpointId"))
    VpcEndpointError.add_member(:error_code, Shapes::ShapeRef.new(shape: VpcEndpointErrorCode, location_name: "ErrorCode"))
    VpcEndpointError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    VpcEndpointError.struct_class = Types::VpcEndpointError

    VpcEndpointErrorList.member = Shapes::ShapeRef.new(shape: VpcEndpointError)

    VpcEndpointIdList.member = Shapes::ShapeRef.new(shape: VpcEndpointId)

    VpcEndpointSummary.add_member(:vpc_endpoint_id, Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "VpcEndpointId"))
    VpcEndpointSummary.add_member(:vpc_endpoint_owner, Shapes::ShapeRef.new(shape: String, location_name: "VpcEndpointOwner"))
    VpcEndpointSummary.add_member(:domain_arn, Shapes::ShapeRef.new(shape: DomainArn, location_name: "DomainArn"))
    VpcEndpointSummary.add_member(:status, Shapes::ShapeRef.new(shape: VpcEndpointStatus, location_name: "Status"))
    VpcEndpointSummary.struct_class = Types::VpcEndpointSummary

    VpcEndpointSummaryList.member = Shapes::ShapeRef.new(shape: VpcEndpointSummary)

    VpcEndpoints.member = Shapes::ShapeRef.new(shape: VpcEndpoint)

    WindowStartTime.add_member(:hours, Shapes::ShapeRef.new(shape: StartTimeHours, required: true, location_name: "Hours"))
    WindowStartTime.add_member(:minutes, Shapes::ShapeRef.new(shape: StartTimeMinutes, required: true, location_name: "Minutes"))
    WindowStartTime.struct_class = Types::WindowStartTime

    ZoneAwarenessConfig.add_member(:availability_zone_count, Shapes::ShapeRef.new(shape: IntegerClass, location_name: "AvailabilityZoneCount"))
    ZoneAwarenessConfig.struct_class = Types::ZoneAwarenessConfig


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-01-01"

      api.metadata = {
        "apiVersion" => "2021-01-01",
        "endpointPrefix" => "es",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon OpenSearch Service",
        "serviceId" => "OpenSearch",
        "signatureVersion" => "v4",
        "uid" => "opensearch-2021-01-01",
      }

      api.add_operation(:accept_inbound_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptInboundConnection"
        o.http_method = "PUT"
        o.http_request_uri = "/2021-01-01/opensearch/cc/inboundConnection/{ConnectionId}/accept"
        o.input = Shapes::ShapeRef.new(shape: AcceptInboundConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: AcceptInboundConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
      end)

      api.add_operation(:add_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddTags"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/tags"
        o.input = Shapes::ShapeRef.new(shape: AddTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:associate_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociatePackage"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/packages/associate/{PackageID}/{DomainName}"
        o.input = Shapes::ShapeRef.new(shape: AssociatePackageRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociatePackageResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:authorize_vpc_endpoint_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AuthorizeVpcEndpointAccess"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/opensearch/domain/{DomainName}/authorizeVpcEndpointAccess"
        o.input = Shapes::ShapeRef.new(shape: AuthorizeVpcEndpointAccessRequest)
        o.output = Shapes::ShapeRef.new(shape: AuthorizeVpcEndpointAccessResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
      end)

      api.add_operation(:cancel_service_software_update, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelServiceSoftwareUpdate"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/opensearch/serviceSoftwareUpdate/cancel"
        o.input = Shapes::ShapeRef.new(shape: CancelServiceSoftwareUpdateRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelServiceSoftwareUpdateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDomain"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/opensearch/domain"
        o.input = Shapes::ShapeRef.new(shape: CreateDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_outbound_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOutboundConnection"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/opensearch/cc/outboundConnection"
        o.input = Shapes::ShapeRef.new(shape: CreateOutboundConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateOutboundConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
      end)

      api.add_operation(:create_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePackage"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/packages"
        o.input = Shapes::ShapeRef.new(shape: CreatePackageRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePackageResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_vpc_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVpcEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/opensearch/vpcEndpoints"
        o.input = Shapes::ShapeRef.new(shape: CreateVpcEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateVpcEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
      end)

      api.add_operation(:delete_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDomain"
        o.http_method = "DELETE"
        o.http_request_uri = "/2021-01-01/opensearch/domain/{DomainName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_inbound_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInboundConnection"
        o.http_method = "DELETE"
        o.http_request_uri = "/2021-01-01/opensearch/cc/inboundConnection/{ConnectionId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteInboundConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInboundConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
      end)

      api.add_operation(:delete_outbound_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOutboundConnection"
        o.http_method = "DELETE"
        o.http_request_uri = "/2021-01-01/opensearch/cc/outboundConnection/{ConnectionId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteOutboundConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteOutboundConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
      end)

      api.add_operation(:delete_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePackage"
        o.http_method = "DELETE"
        o.http_request_uri = "/2021-01-01/packages/{PackageID}"
        o.input = Shapes::ShapeRef.new(shape: DeletePackageRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePackageResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_vpc_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVpcEndpoint"
        o.http_method = "DELETE"
        o.http_request_uri = "/2021-01-01/opensearch/vpcEndpoints/{VpcEndpointId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteVpcEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteVpcEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
      end)

      api.add_operation(:describe_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDomain"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/domain/{DomainName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_domain_auto_tunes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDomainAutoTunes"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/domain/{DomainName}/autoTunes"
        o.input = Shapes::ShapeRef.new(shape: DescribeDomainAutoTunesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDomainAutoTunesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_domain_change_progress, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDomainChangeProgress"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/domain/{DomainName}/progress"
        o.input = Shapes::ShapeRef.new(shape: DescribeDomainChangeProgressRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDomainChangeProgressResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_domain_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDomainConfig"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/domain/{DomainName}/config"
        o.input = Shapes::ShapeRef.new(shape: DescribeDomainConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDomainConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_domain_health, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDomainHealth"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/domain/{DomainName}/health"
        o.input = Shapes::ShapeRef.new(shape: DescribeDomainHealthRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDomainHealthResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
      end)

      api.add_operation(:describe_domain_nodes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDomainNodes"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/domain/{DomainName}/nodes"
        o.input = Shapes::ShapeRef.new(shape: DescribeDomainNodesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDomainNodesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailureException)
      end)

      api.add_operation(:describe_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDomains"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/opensearch/domain-info"
        o.input = Shapes::ShapeRef.new(shape: DescribeDomainsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDomainsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_dry_run_progress, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDryRunProgress"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/domain/{DomainName}/dryRun"
        o.input = Shapes::ShapeRef.new(shape: DescribeDryRunProgressRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDryRunProgressResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
      end)

      api.add_operation(:describe_inbound_connections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInboundConnections"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/opensearch/cc/inboundConnection/search"
        o.input = Shapes::ShapeRef.new(shape: DescribeInboundConnectionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInboundConnectionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_instance_type_limits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInstanceTypeLimits"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/instanceTypeLimits/{EngineVersion}/{InstanceType}"
        o.input = Shapes::ShapeRef.new(shape: DescribeInstanceTypeLimitsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInstanceTypeLimitsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_outbound_connections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOutboundConnections"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/opensearch/cc/outboundConnection/search"
        o.input = Shapes::ShapeRef.new(shape: DescribeOutboundConnectionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeOutboundConnectionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_packages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePackages"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/packages/describe"
        o.input = Shapes::ShapeRef.new(shape: DescribePackagesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePackagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_reserved_instance_offerings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReservedInstanceOfferings"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/reservedInstanceOfferings"
        o.input = Shapes::ShapeRef.new(shape: DescribeReservedInstanceOfferingsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeReservedInstanceOfferingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_reserved_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReservedInstances"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/reservedInstances"
        o.input = Shapes::ShapeRef.new(shape: DescribeReservedInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeReservedInstancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_vpc_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeVpcEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/opensearch/vpcEndpoints/describe"
        o.input = Shapes::ShapeRef.new(shape: DescribeVpcEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeVpcEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
      end)

      api.add_operation(:dissociate_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DissociatePackage"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/packages/dissociate/{PackageID}/{DomainName}"
        o.input = Shapes::ShapeRef.new(shape: DissociatePackageRequest)
        o.output = Shapes::ShapeRef.new(shape: DissociatePackageResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_compatible_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCompatibleVersions"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/compatibleVersions"
        o.input = Shapes::ShapeRef.new(shape: GetCompatibleVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCompatibleVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:get_package_version_history, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPackageVersionHistory"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/packages/{PackageID}/history"
        o.input = Shapes::ShapeRef.new(shape: GetPackageVersionHistoryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPackageVersionHistoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_upgrade_history, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUpgradeHistory"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/upgradeDomain/{DomainName}/history"
        o.input = Shapes::ShapeRef.new(shape: GetUpgradeHistoryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUpgradeHistoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_upgrade_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUpgradeStatus"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/upgradeDomain/{DomainName}/status"
        o.input = Shapes::ShapeRef.new(shape: GetUpgradeStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUpgradeStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:list_domain_names, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDomainNames"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/domain"
        o.input = Shapes::ShapeRef.new(shape: ListDomainNamesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDomainNamesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_domains_for_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDomainsForPackage"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/packages/{PackageID}/domains"
        o.input = Shapes::ShapeRef.new(shape: ListDomainsForPackageRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDomainsForPackageResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_instance_type_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInstanceTypeDetails"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/instanceTypeDetails/{EngineVersion}"
        o.input = Shapes::ShapeRef.new(shape: ListInstanceTypeDetailsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInstanceTypeDetailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_packages_for_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPackagesForDomain"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/domain/{DomainName}/packages"
        o.input = Shapes::ShapeRef.new(shape: ListPackagesForDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPackagesForDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_scheduled_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListScheduledActions"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/domain/{DomainName}/scheduledActions"
        o.input = Shapes::ShapeRef.new(shape: ListScheduledActionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListScheduledActionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTags"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/tags/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:list_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVersions"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/versions"
        o.input = Shapes::ShapeRef.new(shape: ListVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_vpc_endpoint_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVpcEndpointAccess"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/domain/{DomainName}/listVpcEndpointAccess"
        o.input = Shapes::ShapeRef.new(shape: ListVpcEndpointAccessRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVpcEndpointAccessResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
      end)

      api.add_operation(:list_vpc_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVpcEndpoints"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/vpcEndpoints"
        o.input = Shapes::ShapeRef.new(shape: ListVpcEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVpcEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
      end)

      api.add_operation(:list_vpc_endpoints_for_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVpcEndpointsForDomain"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/domain/{DomainName}/vpcEndpoints"
        o.input = Shapes::ShapeRef.new(shape: ListVpcEndpointsForDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVpcEndpointsForDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
      end)

      api.add_operation(:purchase_reserved_instance_offering, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PurchaseReservedInstanceOffering"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/opensearch/purchaseReservedInstanceOffering"
        o.input = Shapes::ShapeRef.new(shape: PurchaseReservedInstanceOfferingRequest)
        o.output = Shapes::ShapeRef.new(shape: PurchaseReservedInstanceOfferingResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:reject_inbound_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RejectInboundConnection"
        o.http_method = "PUT"
        o.http_request_uri = "/2021-01-01/opensearch/cc/inboundConnection/{ConnectionId}/reject"
        o.input = Shapes::ShapeRef.new(shape: RejectInboundConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: RejectInboundConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
      end)

      api.add_operation(:remove_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTags"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/tags-removal"
        o.input = Shapes::ShapeRef.new(shape: RemoveTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:revoke_vpc_endpoint_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RevokeVpcEndpointAccess"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/opensearch/domain/{DomainName}/revokeVpcEndpointAccess"
        o.input = Shapes::ShapeRef.new(shape: RevokeVpcEndpointAccessRequest)
        o.output = Shapes::ShapeRef.new(shape: RevokeVpcEndpointAccessResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
      end)

      api.add_operation(:start_service_software_update, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartServiceSoftwareUpdate"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/opensearch/serviceSoftwareUpdate/start"
        o.input = Shapes::ShapeRef.new(shape: StartServiceSoftwareUpdateRequest)
        o.output = Shapes::ShapeRef.new(shape: StartServiceSoftwareUpdateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_domain_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDomainConfig"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/opensearch/domain/{DomainName}/config"
        o.input = Shapes::ShapeRef.new(shape: UpdateDomainConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDomainConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePackage"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/packages/update"
        o.input = Shapes::ShapeRef.new(shape: UpdatePackageRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePackageResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_scheduled_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateScheduledAction"
        o.http_method = "PUT"
        o.http_request_uri = "/2021-01-01/opensearch/domain/{DomainName}/scheduledAction/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateScheduledActionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateScheduledActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: SlotNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_vpc_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVpcEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/opensearch/vpcEndpoints/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateVpcEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateVpcEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
      end)

      api.add_operation(:upgrade_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpgradeDomain"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/opensearch/upgradeDomain"
        o.input = Shapes::ShapeRef.new(shape: UpgradeDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: UpgradeDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)
    end

  end
end
