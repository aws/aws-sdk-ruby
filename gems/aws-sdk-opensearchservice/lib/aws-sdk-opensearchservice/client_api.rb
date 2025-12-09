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

    AIMLOptionsInput = Shapes::StructureShape.new(name: 'AIMLOptionsInput')
    AIMLOptionsOutput = Shapes::StructureShape.new(name: 'AIMLOptionsOutput')
    AIMLOptionsStatus = Shapes::StructureShape.new(name: 'AIMLOptionsStatus')
    ARN = Shapes::StringShape.new(name: 'ARN')
    AWSAccount = Shapes::StringShape.new(name: 'AWSAccount')
    AWSDomainInformation = Shapes::StructureShape.new(name: 'AWSDomainInformation')
    AWSServicePrincipal = Shapes::StringShape.new(name: 'AWSServicePrincipal')
    AcceptInboundConnectionRequest = Shapes::StructureShape.new(name: 'AcceptInboundConnectionRequest')
    AcceptInboundConnectionResponse = Shapes::StructureShape.new(name: 'AcceptInboundConnectionResponse')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessPoliciesStatus = Shapes::StructureShape.new(name: 'AccessPoliciesStatus')
    ActionSeverity = Shapes::StringShape.new(name: 'ActionSeverity')
    ActionStatus = Shapes::StringShape.new(name: 'ActionStatus')
    ActionType = Shapes::StringShape.new(name: 'ActionType')
    AddDataSourceRequest = Shapes::StructureShape.new(name: 'AddDataSourceRequest')
    AddDataSourceResponse = Shapes::StructureShape.new(name: 'AddDataSourceResponse')
    AddDirectQueryDataSourceRequest = Shapes::StructureShape.new(name: 'AddDirectQueryDataSourceRequest')
    AddDirectQueryDataSourceResponse = Shapes::StructureShape.new(name: 'AddDirectQueryDataSourceResponse')
    AddTagsRequest = Shapes::StructureShape.new(name: 'AddTagsRequest')
    AdditionalLimit = Shapes::StructureShape.new(name: 'AdditionalLimit')
    AdditionalLimitList = Shapes::ListShape.new(name: 'AdditionalLimitList')
    AdvancedOptions = Shapes::MapShape.new(name: 'AdvancedOptions')
    AdvancedOptionsStatus = Shapes::StructureShape.new(name: 'AdvancedOptionsStatus')
    AdvancedSecurityOptions = Shapes::StructureShape.new(name: 'AdvancedSecurityOptions')
    AdvancedSecurityOptionsInput = Shapes::StructureShape.new(name: 'AdvancedSecurityOptionsInput')
    AdvancedSecurityOptionsStatus = Shapes::StructureShape.new(name: 'AdvancedSecurityOptionsStatus')
    AppConfig = Shapes::StructureShape.new(name: 'AppConfig')
    AppConfigType = Shapes::StringShape.new(name: 'AppConfigType')
    AppConfigValue = Shapes::StringShape.new(name: 'AppConfigValue')
    AppConfigs = Shapes::ListShape.new(name: 'AppConfigs')
    ApplicationName = Shapes::StringShape.new(name: 'ApplicationName')
    ApplicationStatus = Shapes::StringShape.new(name: 'ApplicationStatus')
    ApplicationStatuses = Shapes::ListShape.new(name: 'ApplicationStatuses')
    ApplicationSummaries = Shapes::ListShape.new(name: 'ApplicationSummaries')
    ApplicationSummary = Shapes::StructureShape.new(name: 'ApplicationSummary')
    AssociatePackageRequest = Shapes::StructureShape.new(name: 'AssociatePackageRequest')
    AssociatePackageResponse = Shapes::StructureShape.new(name: 'AssociatePackageResponse')
    AssociatePackagesRequest = Shapes::StructureShape.new(name: 'AssociatePackagesRequest')
    AssociatePackagesResponse = Shapes::StructureShape.new(name: 'AssociatePackagesResponse')
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
    CancelDomainConfigChangeRequest = Shapes::StructureShape.new(name: 'CancelDomainConfigChangeRequest')
    CancelDomainConfigChangeResponse = Shapes::StructureShape.new(name: 'CancelDomainConfigChangeResponse')
    CancelServiceSoftwareUpdateRequest = Shapes::StructureShape.new(name: 'CancelServiceSoftwareUpdateRequest')
    CancelServiceSoftwareUpdateResponse = Shapes::StructureShape.new(name: 'CancelServiceSoftwareUpdateResponse')
    CancelledChangeProperty = Shapes::StructureShape.new(name: 'CancelledChangeProperty')
    CancelledChangePropertyList = Shapes::ListShape.new(name: 'CancelledChangePropertyList')
    ChangeProgressDetails = Shapes::StructureShape.new(name: 'ChangeProgressDetails')
    ChangeProgressStage = Shapes::StructureShape.new(name: 'ChangeProgressStage')
    ChangeProgressStageList = Shapes::ListShape.new(name: 'ChangeProgressStageList')
    ChangeProgressStageName = Shapes::StringShape.new(name: 'ChangeProgressStageName')
    ChangeProgressStageStatus = Shapes::StringShape.new(name: 'ChangeProgressStageStatus')
    ChangeProgressStatusDetails = Shapes::StructureShape.new(name: 'ChangeProgressStatusDetails')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CloudWatchDirectQueryDataSource = Shapes::StructureShape.new(name: 'CloudWatchDirectQueryDataSource')
    CloudWatchLogsLogGroupArn = Shapes::StringShape.new(name: 'CloudWatchLogsLogGroupArn')
    ClusterConfig = Shapes::StructureShape.new(name: 'ClusterConfig')
    ClusterConfigStatus = Shapes::StructureShape.new(name: 'ClusterConfigStatus')
    CognitoOptions = Shapes::StructureShape.new(name: 'CognitoOptions')
    CognitoOptionsStatus = Shapes::StructureShape.new(name: 'CognitoOptionsStatus')
    ColdStorageOptions = Shapes::StructureShape.new(name: 'ColdStorageOptions')
    CommitMessage = Shapes::StringShape.new(name: 'CommitMessage')
    CompatibleVersionsList = Shapes::ListShape.new(name: 'CompatibleVersionsList')
    CompatibleVersionsMap = Shapes::StructureShape.new(name: 'CompatibleVersionsMap')
    ConfigChangeStatus = Shapes::StringShape.new(name: 'ConfigChangeStatus')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectionAlias = Shapes::StringShape.new(name: 'ConnectionAlias')
    ConnectionId = Shapes::StringShape.new(name: 'ConnectionId')
    ConnectionMode = Shapes::StringShape.new(name: 'ConnectionMode')
    ConnectionProperties = Shapes::StructureShape.new(name: 'ConnectionProperties')
    ConnectionStatusMessage = Shapes::StringShape.new(name: 'ConnectionStatusMessage')
    CreateApplicationRequest = Shapes::StructureShape.new(name: 'CreateApplicationRequest')
    CreateApplicationResponse = Shapes::StructureShape.new(name: 'CreateApplicationResponse')
    CreateDomainRequest = Shapes::StructureShape.new(name: 'CreateDomainRequest')
    CreateDomainResponse = Shapes::StructureShape.new(name: 'CreateDomainResponse')
    CreateIndexRequest = Shapes::StructureShape.new(name: 'CreateIndexRequest')
    CreateIndexResponse = Shapes::StructureShape.new(name: 'CreateIndexResponse')
    CreateOutboundConnectionRequest = Shapes::StructureShape.new(name: 'CreateOutboundConnectionRequest')
    CreateOutboundConnectionResponse = Shapes::StructureShape.new(name: 'CreateOutboundConnectionResponse')
    CreatePackageRequest = Shapes::StructureShape.new(name: 'CreatePackageRequest')
    CreatePackageResponse = Shapes::StructureShape.new(name: 'CreatePackageResponse')
    CreateVpcEndpointRequest = Shapes::StructureShape.new(name: 'CreateVpcEndpointRequest')
    CreateVpcEndpointResponse = Shapes::StructureShape.new(name: 'CreateVpcEndpointResponse')
    CreatedAt = Shapes::TimestampShape.new(name: 'CreatedAt')
    CrossClusterSearchConnectionProperties = Shapes::StructureShape.new(name: 'CrossClusterSearchConnectionProperties')
    DataSource = Shapes::StructureShape.new(name: 'DataSource')
    DataSourceDescription = Shapes::StringShape.new(name: 'DataSourceDescription')
    DataSourceDetails = Shapes::StructureShape.new(name: 'DataSourceDetails')
    DataSourceList = Shapes::ListShape.new(name: 'DataSourceList')
    DataSourceName = Shapes::StringShape.new(name: 'DataSourceName')
    DataSourceStatus = Shapes::StringShape.new(name: 'DataSourceStatus')
    DataSourceType = Shapes::UnionShape.new(name: 'DataSourceType')
    DataSources = Shapes::ListShape.new(name: 'DataSources')
    DeleteApplicationRequest = Shapes::StructureShape.new(name: 'DeleteApplicationRequest')
    DeleteApplicationResponse = Shapes::StructureShape.new(name: 'DeleteApplicationResponse')
    DeleteDataSourceRequest = Shapes::StructureShape.new(name: 'DeleteDataSourceRequest')
    DeleteDataSourceResponse = Shapes::StructureShape.new(name: 'DeleteDataSourceResponse')
    DeleteDirectQueryDataSourceRequest = Shapes::StructureShape.new(name: 'DeleteDirectQueryDataSourceRequest')
    DeleteDomainRequest = Shapes::StructureShape.new(name: 'DeleteDomainRequest')
    DeleteDomainResponse = Shapes::StructureShape.new(name: 'DeleteDomainResponse')
    DeleteInboundConnectionRequest = Shapes::StructureShape.new(name: 'DeleteInboundConnectionRequest')
    DeleteInboundConnectionResponse = Shapes::StructureShape.new(name: 'DeleteInboundConnectionResponse')
    DeleteIndexRequest = Shapes::StructureShape.new(name: 'DeleteIndexRequest')
    DeleteIndexResponse = Shapes::StructureShape.new(name: 'DeleteIndexResponse')
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
    DirectQueryDataSource = Shapes::StructureShape.new(name: 'DirectQueryDataSource')
    DirectQueryDataSourceDescription = Shapes::StringShape.new(name: 'DirectQueryDataSourceDescription')
    DirectQueryDataSourceList = Shapes::ListShape.new(name: 'DirectQueryDataSourceList')
    DirectQueryDataSourceName = Shapes::StringShape.new(name: 'DirectQueryDataSourceName')
    DirectQueryDataSourceRoleArn = Shapes::StringShape.new(name: 'DirectQueryDataSourceRoleArn')
    DirectQueryDataSourceType = Shapes::UnionShape.new(name: 'DirectQueryDataSourceType')
    DirectQueryOpenSearchARNList = Shapes::ListShape.new(name: 'DirectQueryOpenSearchARNList')
    DisableTimestamp = Shapes::TimestampShape.new(name: 'DisableTimestamp')
    DisabledOperationException = Shapes::StructureShape.new(name: 'DisabledOperationException')
    DissociatePackageRequest = Shapes::StructureShape.new(name: 'DissociatePackageRequest')
    DissociatePackageResponse = Shapes::StructureShape.new(name: 'DissociatePackageResponse')
    DissociatePackagesRequest = Shapes::StructureShape.new(name: 'DissociatePackagesRequest')
    DissociatePackagesResponse = Shapes::StructureShape.new(name: 'DissociatePackagesResponse')
    DomainArn = Shapes::StringShape.new(name: 'DomainArn')
    DomainConfig = Shapes::StructureShape.new(name: 'DomainConfig')
    DomainEndpointOptions = Shapes::StructureShape.new(name: 'DomainEndpointOptions')
    DomainEndpointOptionsStatus = Shapes::StructureShape.new(name: 'DomainEndpointOptionsStatus')
    DomainHealth = Shapes::StringShape.new(name: 'DomainHealth')
    DomainId = Shapes::StringShape.new(name: 'DomainId')
    DomainInfo = Shapes::StructureShape.new(name: 'DomainInfo')
    DomainInfoList = Shapes::ListShape.new(name: 'DomainInfoList')
    DomainInformationContainer = Shapes::StructureShape.new(name: 'DomainInformationContainer')
    DomainMaintenanceDetails = Shapes::StructureShape.new(name: 'DomainMaintenanceDetails')
    DomainMaintenanceList = Shapes::ListShape.new(name: 'DomainMaintenanceList')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    DomainNameFqdn = Shapes::StringShape.new(name: 'DomainNameFqdn')
    DomainNameList = Shapes::ListShape.new(name: 'DomainNameList')
    DomainNodesStatus = Shapes::StructureShape.new(name: 'DomainNodesStatus')
    DomainNodesStatusList = Shapes::ListShape.new(name: 'DomainNodesStatusList')
    DomainPackageDetails = Shapes::StructureShape.new(name: 'DomainPackageDetails')
    DomainPackageDetailsList = Shapes::ListShape.new(name: 'DomainPackageDetailsList')
    DomainPackageStatus = Shapes::StringShape.new(name: 'DomainPackageStatus')
    DomainProcessingStatusType = Shapes::StringShape.new(name: 'DomainProcessingStatusType')
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
    EngineVersion = Shapes::StringShape.new(name: 'EngineVersion')
    EnvironmentInfo = Shapes::StructureShape.new(name: 'EnvironmentInfo')
    EnvironmentInfoList = Shapes::ListShape.new(name: 'EnvironmentInfoList')
    ErrorDetails = Shapes::StructureShape.new(name: 'ErrorDetails')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ErrorType = Shapes::StringShape.new(name: 'ErrorType')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    GUID = Shapes::StringShape.new(name: 'GUID')
    GUIDList = Shapes::ListShape.new(name: 'GUIDList')
    GetApplicationRequest = Shapes::StructureShape.new(name: 'GetApplicationRequest')
    GetApplicationResponse = Shapes::StructureShape.new(name: 'GetApplicationResponse')
    GetCompatibleVersionsRequest = Shapes::StructureShape.new(name: 'GetCompatibleVersionsRequest')
    GetCompatibleVersionsResponse = Shapes::StructureShape.new(name: 'GetCompatibleVersionsResponse')
    GetDataSourceRequest = Shapes::StructureShape.new(name: 'GetDataSourceRequest')
    GetDataSourceResponse = Shapes::StructureShape.new(name: 'GetDataSourceResponse')
    GetDefaultApplicationSettingRequest = Shapes::StructureShape.new(name: 'GetDefaultApplicationSettingRequest')
    GetDefaultApplicationSettingResponse = Shapes::StructureShape.new(name: 'GetDefaultApplicationSettingResponse')
    GetDirectQueryDataSourceRequest = Shapes::StructureShape.new(name: 'GetDirectQueryDataSourceRequest')
    GetDirectQueryDataSourceResponse = Shapes::StructureShape.new(name: 'GetDirectQueryDataSourceResponse')
    GetDomainMaintenanceStatusRequest = Shapes::StructureShape.new(name: 'GetDomainMaintenanceStatusRequest')
    GetDomainMaintenanceStatusResponse = Shapes::StructureShape.new(name: 'GetDomainMaintenanceStatusResponse')
    GetIndexRequest = Shapes::StructureShape.new(name: 'GetIndexRequest')
    GetIndexResponse = Shapes::StructureShape.new(name: 'GetIndexResponse')
    GetPackageVersionHistoryRequest = Shapes::StructureShape.new(name: 'GetPackageVersionHistoryRequest')
    GetPackageVersionHistoryResponse = Shapes::StructureShape.new(name: 'GetPackageVersionHistoryResponse')
    GetUpgradeHistoryRequest = Shapes::StructureShape.new(name: 'GetUpgradeHistoryRequest')
    GetUpgradeHistoryResponse = Shapes::StructureShape.new(name: 'GetUpgradeHistoryResponse')
    GetUpgradeStatusRequest = Shapes::StructureShape.new(name: 'GetUpgradeStatusRequest')
    GetUpgradeStatusResponse = Shapes::StructureShape.new(name: 'GetUpgradeStatusResponse')
    HostedZoneId = Shapes::StringShape.new(name: 'HostedZoneId')
    IAMFederationOptionsInput = Shapes::StructureShape.new(name: 'IAMFederationOptionsInput')
    IAMFederationOptionsOutput = Shapes::StructureShape.new(name: 'IAMFederationOptionsOutput')
    IAMFederationRolesKey = Shapes::StringShape.new(name: 'IAMFederationRolesKey')
    IAMFederationSubjectKey = Shapes::StringShape.new(name: 'IAMFederationSubjectKey')
    IPAddressType = Shapes::StringShape.new(name: 'IPAddressType')
    IPAddressTypeStatus = Shapes::StructureShape.new(name: 'IPAddressTypeStatus')
    IamIdentityCenterOptions = Shapes::StructureShape.new(name: 'IamIdentityCenterOptions')
    IamIdentityCenterOptionsInput = Shapes::StructureShape.new(name: 'IamIdentityCenterOptionsInput')
    Id = Shapes::StringShape.new(name: 'Id')
    IdentityCenterApplicationARN = Shapes::StringShape.new(name: 'IdentityCenterApplicationARN')
    IdentityCenterInstanceARN = Shapes::StringShape.new(name: 'IdentityCenterInstanceARN')
    IdentityCenterOptions = Shapes::StructureShape.new(name: 'IdentityCenterOptions')
    IdentityCenterOptionsInput = Shapes::StructureShape.new(name: 'IdentityCenterOptionsInput')
    IdentityCenterOptionsStatus = Shapes::StructureShape.new(name: 'IdentityCenterOptionsStatus')
    IdentityPoolId = Shapes::StringShape.new(name: 'IdentityPoolId')
    IdentityStoreId = Shapes::StringShape.new(name: 'IdentityStoreId')
    InboundConnection = Shapes::StructureShape.new(name: 'InboundConnection')
    InboundConnectionStatus = Shapes::StructureShape.new(name: 'InboundConnectionStatus')
    InboundConnectionStatusCode = Shapes::StringShape.new(name: 'InboundConnectionStatusCode')
    InboundConnections = Shapes::ListShape.new(name: 'InboundConnections')
    IndexName = Shapes::StringShape.new(name: 'IndexName')
    IndexSchema = Shapes::DocumentShape.new(name: 'IndexSchema', document: true)
    IndexStatus = Shapes::StringShape.new(name: 'IndexStatus')
    InitiatedBy = Shapes::StringShape.new(name: 'InitiatedBy')
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
    JWTOptionsInput = Shapes::StructureShape.new(name: 'JWTOptionsInput')
    JWTOptionsOutput = Shapes::StructureShape.new(name: 'JWTOptionsOutput')
    KeyStoreAccessOption = Shapes::StructureShape.new(name: 'KeyStoreAccessOption')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    LastUpdated = Shapes::TimestampShape.new(name: 'LastUpdated')
    LicenseFilepath = Shapes::StringShape.new(name: 'LicenseFilepath')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    LimitName = Shapes::StringShape.new(name: 'LimitName')
    LimitValue = Shapes::StringShape.new(name: 'LimitValue')
    LimitValueList = Shapes::ListShape.new(name: 'LimitValueList')
    Limits = Shapes::StructureShape.new(name: 'Limits')
    LimitsByRole = Shapes::MapShape.new(name: 'LimitsByRole')
    ListApplicationsRequest = Shapes::StructureShape.new(name: 'ListApplicationsRequest')
    ListApplicationsResponse = Shapes::StructureShape.new(name: 'ListApplicationsResponse')
    ListDataSourcesRequest = Shapes::StructureShape.new(name: 'ListDataSourcesRequest')
    ListDataSourcesResponse = Shapes::StructureShape.new(name: 'ListDataSourcesResponse')
    ListDirectQueryDataSourcesRequest = Shapes::StructureShape.new(name: 'ListDirectQueryDataSourcesRequest')
    ListDirectQueryDataSourcesResponse = Shapes::StructureShape.new(name: 'ListDirectQueryDataSourcesResponse')
    ListDomainMaintenancesRequest = Shapes::StructureShape.new(name: 'ListDomainMaintenancesRequest')
    ListDomainMaintenancesResponse = Shapes::StructureShape.new(name: 'ListDomainMaintenancesResponse')
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
    MaintenanceStatus = Shapes::StringShape.new(name: 'MaintenanceStatus')
    MaintenanceStatusMessage = Shapes::StringShape.new(name: 'MaintenanceStatusMessage')
    MaintenanceType = Shapes::StringShape.new(name: 'MaintenanceType')
    MasterNodeStatus = Shapes::StringShape.new(name: 'MasterNodeStatus')
    MasterUserOptions = Shapes::StructureShape.new(name: 'MasterUserOptions')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaximumInstanceCount = Shapes::IntegerShape.new(name: 'MaximumInstanceCount')
    Message = Shapes::StringShape.new(name: 'Message')
    MinimumInstanceCount = Shapes::IntegerShape.new(name: 'MinimumInstanceCount')
    ModifyingProperties = Shapes::StructureShape.new(name: 'ModifyingProperties')
    ModifyingPropertiesList = Shapes::ListShape.new(name: 'ModifyingPropertiesList')
    NaturalLanguageQueryGenerationCurrentState = Shapes::StringShape.new(name: 'NaturalLanguageQueryGenerationCurrentState')
    NaturalLanguageQueryGenerationDesiredState = Shapes::StringShape.new(name: 'NaturalLanguageQueryGenerationDesiredState')
    NaturalLanguageQueryGenerationOptionsInput = Shapes::StructureShape.new(name: 'NaturalLanguageQueryGenerationOptionsInput')
    NaturalLanguageQueryGenerationOptionsOutput = Shapes::StructureShape.new(name: 'NaturalLanguageQueryGenerationOptionsOutput')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NodeConfig = Shapes::StructureShape.new(name: 'NodeConfig')
    NodeId = Shapes::StringShape.new(name: 'NodeId')
    NodeOption = Shapes::StructureShape.new(name: 'NodeOption')
    NodeOptionsList = Shapes::ListShape.new(name: 'NodeOptionsList')
    NodeOptionsNodeType = Shapes::StringShape.new(name: 'NodeOptionsNodeType')
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
    PackageAssociationConfiguration = Shapes::StructureShape.new(name: 'PackageAssociationConfiguration')
    PackageConfiguration = Shapes::StructureShape.new(name: 'PackageConfiguration')
    PackageDescription = Shapes::StringShape.new(name: 'PackageDescription')
    PackageDetails = Shapes::StructureShape.new(name: 'PackageDetails')
    PackageDetailsForAssociation = Shapes::StructureShape.new(name: 'PackageDetailsForAssociation')
    PackageDetailsForAssociationList = Shapes::ListShape.new(name: 'PackageDetailsForAssociationList')
    PackageDetailsList = Shapes::ListShape.new(name: 'PackageDetailsList')
    PackageEncryptionOptions = Shapes::StructureShape.new(name: 'PackageEncryptionOptions')
    PackageID = Shapes::StringShape.new(name: 'PackageID')
    PackageIDList = Shapes::ListShape.new(name: 'PackageIDList')
    PackageName = Shapes::StringShape.new(name: 'PackageName')
    PackageOwner = Shapes::StringShape.new(name: 'PackageOwner')
    PackageScopeOperationEnum = Shapes::StringShape.new(name: 'PackageScopeOperationEnum')
    PackageSource = Shapes::StructureShape.new(name: 'PackageSource')
    PackageStatus = Shapes::StringShape.new(name: 'PackageStatus')
    PackageType = Shapes::StringShape.new(name: 'PackageType')
    PackageUser = Shapes::StringShape.new(name: 'PackageUser')
    PackageUserList = Shapes::ListShape.new(name: 'PackageUserList')
    PackageVendingOptions = Shapes::StructureShape.new(name: 'PackageVendingOptions')
    PackageVersion = Shapes::StringShape.new(name: 'PackageVersion')
    PackageVersionHistory = Shapes::StructureShape.new(name: 'PackageVersionHistory')
    PackageVersionHistoryList = Shapes::ListShape.new(name: 'PackageVersionHistoryList')
    Password = Shapes::StringShape.new(name: 'Password')
    PluginClassName = Shapes::StringShape.new(name: 'PluginClassName')
    PluginDescription = Shapes::StringShape.new(name: 'PluginDescription')
    PluginName = Shapes::StringShape.new(name: 'PluginName')
    PluginProperties = Shapes::StructureShape.new(name: 'PluginProperties')
    PluginVersion = Shapes::StringShape.new(name: 'PluginVersion')
    PolicyDocument = Shapes::StringShape.new(name: 'PolicyDocument')
    PrincipalType = Shapes::StringShape.new(name: 'PrincipalType')
    PropertyValueType = Shapes::StringShape.new(name: 'PropertyValueType')
    PurchaseReservedInstanceOfferingRequest = Shapes::StructureShape.new(name: 'PurchaseReservedInstanceOfferingRequest')
    PurchaseReservedInstanceOfferingResponse = Shapes::StructureShape.new(name: 'PurchaseReservedInstanceOfferingResponse')
    PutDefaultApplicationSettingRequest = Shapes::StructureShape.new(name: 'PutDefaultApplicationSettingRequest')
    PutDefaultApplicationSettingResponse = Shapes::StructureShape.new(name: 'PutDefaultApplicationSettingResponse')
    RecurringCharge = Shapes::StructureShape.new(name: 'RecurringCharge')
    RecurringChargeList = Shapes::ListShape.new(name: 'RecurringChargeList')
    ReferencePath = Shapes::StringShape.new(name: 'ReferencePath')
    Region = Shapes::StringShape.new(name: 'Region')
    RejectInboundConnectionRequest = Shapes::StructureShape.new(name: 'RejectInboundConnectionRequest')
    RejectInboundConnectionResponse = Shapes::StructureShape.new(name: 'RejectInboundConnectionResponse')
    RemoveTagsRequest = Shapes::StructureShape.new(name: 'RemoveTagsRequest')
    RequestId = Shapes::StringShape.new(name: 'RequestId')
    RequirementLevel = Shapes::StringShape.new(name: 'RequirementLevel')
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
    RolesKey = Shapes::StringShape.new(name: 'RolesKey')
    RolesKeyIdCOption = Shapes::StringShape.new(name: 'RolesKeyIdCOption')
    RollbackOnDisable = Shapes::StringShape.new(name: 'RollbackOnDisable')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3GlueDataCatalog = Shapes::StructureShape.new(name: 'S3GlueDataCatalog')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    S3VectorsEngine = Shapes::StructureShape.new(name: 'S3VectorsEngine')
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
    SecurityLakeDirectQueryDataSource = Shapes::StructureShape.new(name: 'SecurityLakeDirectQueryDataSource')
    ServerlessVectorAcceleration = Shapes::StructureShape.new(name: 'ServerlessVectorAcceleration')
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
    StartDomainMaintenanceRequest = Shapes::StructureShape.new(name: 'StartDomainMaintenanceRequest')
    StartDomainMaintenanceResponse = Shapes::StructureShape.new(name: 'StartDomainMaintenanceResponse')
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
    SubjectKey = Shapes::StringShape.new(name: 'SubjectKey')
    SubjectKeyIdCOption = Shapes::StringShape.new(name: 'SubjectKeyIdCOption')
    TLSSecurityPolicy = Shapes::StringShape.new(name: 'TLSSecurityPolicy')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeUnit = Shapes::StringShape.new(name: 'TimeUnit')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TotalNumberOfStages = Shapes::IntegerShape.new(name: 'TotalNumberOfStages')
    UIntValue = Shapes::IntegerShape.new(name: 'UIntValue')
    UncompressedPluginSizeInBytes = Shapes::IntegerShape.new(name: 'UncompressedPluginSizeInBytes')
    UpdateApplicationRequest = Shapes::StructureShape.new(name: 'UpdateApplicationRequest')
    UpdateApplicationResponse = Shapes::StructureShape.new(name: 'UpdateApplicationResponse')
    UpdateDataSourceRequest = Shapes::StructureShape.new(name: 'UpdateDataSourceRequest')
    UpdateDataSourceResponse = Shapes::StructureShape.new(name: 'UpdateDataSourceResponse')
    UpdateDirectQueryDataSourceRequest = Shapes::StructureShape.new(name: 'UpdateDirectQueryDataSourceRequest')
    UpdateDirectQueryDataSourceResponse = Shapes::StructureShape.new(name: 'UpdateDirectQueryDataSourceResponse')
    UpdateDomainConfigRequest = Shapes::StructureShape.new(name: 'UpdateDomainConfigRequest')
    UpdateDomainConfigResponse = Shapes::StructureShape.new(name: 'UpdateDomainConfigResponse')
    UpdateIndexRequest = Shapes::StructureShape.new(name: 'UpdateIndexRequest')
    UpdateIndexResponse = Shapes::StructureShape.new(name: 'UpdateIndexResponse')
    UpdatePackageRequest = Shapes::StructureShape.new(name: 'UpdatePackageRequest')
    UpdatePackageResponse = Shapes::StructureShape.new(name: 'UpdatePackageResponse')
    UpdatePackageScopeRequest = Shapes::StructureShape.new(name: 'UpdatePackageScopeRequest')
    UpdatePackageScopeResponse = Shapes::StructureShape.new(name: 'UpdatePackageScopeResponse')
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

    AIMLOptionsInput.add_member(:natural_language_query_generation_options, Shapes::ShapeRef.new(shape: NaturalLanguageQueryGenerationOptionsInput, location_name: "NaturalLanguageQueryGenerationOptions"))
    AIMLOptionsInput.add_member(:s3_vectors_engine, Shapes::ShapeRef.new(shape: S3VectorsEngine, location_name: "S3VectorsEngine"))
    AIMLOptionsInput.add_member(:serverless_vector_acceleration, Shapes::ShapeRef.new(shape: ServerlessVectorAcceleration, location_name: "ServerlessVectorAcceleration"))
    AIMLOptionsInput.struct_class = Types::AIMLOptionsInput

    AIMLOptionsOutput.add_member(:natural_language_query_generation_options, Shapes::ShapeRef.new(shape: NaturalLanguageQueryGenerationOptionsOutput, location_name: "NaturalLanguageQueryGenerationOptions"))
    AIMLOptionsOutput.add_member(:s3_vectors_engine, Shapes::ShapeRef.new(shape: S3VectorsEngine, location_name: "S3VectorsEngine"))
    AIMLOptionsOutput.add_member(:serverless_vector_acceleration, Shapes::ShapeRef.new(shape: ServerlessVectorAcceleration, location_name: "ServerlessVectorAcceleration"))
    AIMLOptionsOutput.struct_class = Types::AIMLOptionsOutput

    AIMLOptionsStatus.add_member(:options, Shapes::ShapeRef.new(shape: AIMLOptionsOutput, location_name: "Options"))
    AIMLOptionsStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, location_name: "Status"))
    AIMLOptionsStatus.struct_class = Types::AIMLOptionsStatus

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

    AddDataSourceRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    AddDataSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: DataSourceName, required: true, location_name: "Name"))
    AddDataSourceRequest.add_member(:data_source_type, Shapes::ShapeRef.new(shape: DataSourceType, required: true, location_name: "DataSourceType"))
    AddDataSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: DataSourceDescription, location_name: "Description"))
    AddDataSourceRequest.struct_class = Types::AddDataSourceRequest

    AddDataSourceResponse.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AddDataSourceResponse.struct_class = Types::AddDataSourceResponse

    AddDirectQueryDataSourceRequest.add_member(:data_source_name, Shapes::ShapeRef.new(shape: DirectQueryDataSourceName, required: true, location_name: "DataSourceName"))
    AddDirectQueryDataSourceRequest.add_member(:data_source_type, Shapes::ShapeRef.new(shape: DirectQueryDataSourceType, required: true, location_name: "DataSourceType"))
    AddDirectQueryDataSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: DirectQueryDataSourceDescription, location_name: "Description"))
    AddDirectQueryDataSourceRequest.add_member(:open_search_arns, Shapes::ShapeRef.new(shape: DirectQueryOpenSearchARNList, required: true, location_name: "OpenSearchArns"))
    AddDirectQueryDataSourceRequest.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    AddDirectQueryDataSourceRequest.struct_class = Types::AddDirectQueryDataSourceRequest

    AddDirectQueryDataSourceResponse.add_member(:data_source_arn, Shapes::ShapeRef.new(shape: String, location_name: "DataSourceArn"))
    AddDirectQueryDataSourceResponse.struct_class = Types::AddDirectQueryDataSourceResponse

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
    AdvancedSecurityOptions.add_member(:jwt_options, Shapes::ShapeRef.new(shape: JWTOptionsOutput, location_name: "JWTOptions"))
    AdvancedSecurityOptions.add_member(:iam_federation_options, Shapes::ShapeRef.new(shape: IAMFederationOptionsOutput, location_name: "IAMFederationOptions"))
    AdvancedSecurityOptions.add_member(:anonymous_auth_disable_date, Shapes::ShapeRef.new(shape: DisableTimestamp, location_name: "AnonymousAuthDisableDate"))
    AdvancedSecurityOptions.add_member(:anonymous_auth_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "AnonymousAuthEnabled"))
    AdvancedSecurityOptions.struct_class = Types::AdvancedSecurityOptions

    AdvancedSecurityOptionsInput.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    AdvancedSecurityOptionsInput.add_member(:internal_user_database_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "InternalUserDatabaseEnabled"))
    AdvancedSecurityOptionsInput.add_member(:master_user_options, Shapes::ShapeRef.new(shape: MasterUserOptions, location_name: "MasterUserOptions"))
    AdvancedSecurityOptionsInput.add_member(:saml_options, Shapes::ShapeRef.new(shape: SAMLOptionsInput, location_name: "SAMLOptions"))
    AdvancedSecurityOptionsInput.add_member(:jwt_options, Shapes::ShapeRef.new(shape: JWTOptionsInput, location_name: "JWTOptions"))
    AdvancedSecurityOptionsInput.add_member(:iam_federation_options, Shapes::ShapeRef.new(shape: IAMFederationOptionsInput, location_name: "IAMFederationOptions"))
    AdvancedSecurityOptionsInput.add_member(:anonymous_auth_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "AnonymousAuthEnabled"))
    AdvancedSecurityOptionsInput.struct_class = Types::AdvancedSecurityOptionsInput

    AdvancedSecurityOptionsStatus.add_member(:options, Shapes::ShapeRef.new(shape: AdvancedSecurityOptions, required: true, location_name: "Options"))
    AdvancedSecurityOptionsStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    AdvancedSecurityOptionsStatus.struct_class = Types::AdvancedSecurityOptionsStatus

    AppConfig.add_member(:key, Shapes::ShapeRef.new(shape: AppConfigType, location_name: "key"))
    AppConfig.add_member(:value, Shapes::ShapeRef.new(shape: AppConfigValue, location_name: "value"))
    AppConfig.struct_class = Types::AppConfig

    AppConfigs.member = Shapes::ShapeRef.new(shape: AppConfig)

    ApplicationStatuses.member = Shapes::ShapeRef.new(shape: ApplicationStatus)

    ApplicationSummaries.member = Shapes::ShapeRef.new(shape: ApplicationSummary)

    ApplicationSummary.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "id"))
    ApplicationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    ApplicationSummary.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "name"))
    ApplicationSummary.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "endpoint"))
    ApplicationSummary.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: "status"))
    ApplicationSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    ApplicationSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    ApplicationSummary.struct_class = Types::ApplicationSummary

    AssociatePackageRequest.add_member(:package_id, Shapes::ShapeRef.new(shape: PackageID, required: true, location: "uri", location_name: "PackageID"))
    AssociatePackageRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    AssociatePackageRequest.add_member(:prerequisite_package_id_list, Shapes::ShapeRef.new(shape: PackageIDList, location_name: "PrerequisitePackageIDList"))
    AssociatePackageRequest.add_member(:association_configuration, Shapes::ShapeRef.new(shape: PackageAssociationConfiguration, location_name: "AssociationConfiguration"))
    AssociatePackageRequest.struct_class = Types::AssociatePackageRequest

    AssociatePackageResponse.add_member(:domain_package_details, Shapes::ShapeRef.new(shape: DomainPackageDetails, location_name: "DomainPackageDetails"))
    AssociatePackageResponse.struct_class = Types::AssociatePackageResponse

    AssociatePackagesRequest.add_member(:package_list, Shapes::ShapeRef.new(shape: PackageDetailsForAssociationList, required: true, location_name: "PackageList"))
    AssociatePackagesRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    AssociatePackagesRequest.struct_class = Types::AssociatePackagesRequest

    AssociatePackagesResponse.add_member(:domain_package_details_list, Shapes::ShapeRef.new(shape: DomainPackageDetailsList, location_name: "DomainPackageDetailsList"))
    AssociatePackagesResponse.struct_class = Types::AssociatePackagesResponse

    AuthorizeVpcEndpointAccessRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    AuthorizeVpcEndpointAccessRequest.add_member(:account, Shapes::ShapeRef.new(shape: AWSAccount, location_name: "Account"))
    AuthorizeVpcEndpointAccessRequest.add_member(:service, Shapes::ShapeRef.new(shape: AWSServicePrincipal, location_name: "Service"))
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

    CancelDomainConfigChangeRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    CancelDomainConfigChangeRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: DryRun, location_name: "DryRun"))
    CancelDomainConfigChangeRequest.struct_class = Types::CancelDomainConfigChangeRequest

    CancelDomainConfigChangeResponse.add_member(:cancelled_change_ids, Shapes::ShapeRef.new(shape: GUIDList, location_name: "CancelledChangeIds"))
    CancelDomainConfigChangeResponse.add_member(:cancelled_change_properties, Shapes::ShapeRef.new(shape: CancelledChangePropertyList, location_name: "CancelledChangeProperties"))
    CancelDomainConfigChangeResponse.add_member(:dry_run, Shapes::ShapeRef.new(shape: DryRun, location_name: "DryRun"))
    CancelDomainConfigChangeResponse.struct_class = Types::CancelDomainConfigChangeResponse

    CancelServiceSoftwareUpdateRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    CancelServiceSoftwareUpdateRequest.struct_class = Types::CancelServiceSoftwareUpdateRequest

    CancelServiceSoftwareUpdateResponse.add_member(:service_software_options, Shapes::ShapeRef.new(shape: ServiceSoftwareOptions, location_name: "ServiceSoftwareOptions"))
    CancelServiceSoftwareUpdateResponse.struct_class = Types::CancelServiceSoftwareUpdateResponse

    CancelledChangeProperty.add_member(:property_name, Shapes::ShapeRef.new(shape: String, location_name: "PropertyName"))
    CancelledChangeProperty.add_member(:cancelled_value, Shapes::ShapeRef.new(shape: String, location_name: "CancelledValue"))
    CancelledChangeProperty.add_member(:active_value, Shapes::ShapeRef.new(shape: String, location_name: "ActiveValue"))
    CancelledChangeProperty.struct_class = Types::CancelledChangeProperty

    CancelledChangePropertyList.member = Shapes::ShapeRef.new(shape: CancelledChangeProperty)

    ChangeProgressDetails.add_member(:change_id, Shapes::ShapeRef.new(shape: GUID, location_name: "ChangeId"))
    ChangeProgressDetails.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ChangeProgressDetails.add_member(:config_change_status, Shapes::ShapeRef.new(shape: ConfigChangeStatus, location_name: "ConfigChangeStatus"))
    ChangeProgressDetails.add_member(:initiated_by, Shapes::ShapeRef.new(shape: InitiatedBy, location_name: "InitiatedBy"))
    ChangeProgressDetails.add_member(:start_time, Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: "StartTime"))
    ChangeProgressDetails.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: "LastUpdatedTime"))
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
    ChangeProgressStatusDetails.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: "LastUpdatedTime"))
    ChangeProgressStatusDetails.add_member(:config_change_status, Shapes::ShapeRef.new(shape: ConfigChangeStatus, location_name: "ConfigChangeStatus"))
    ChangeProgressStatusDetails.add_member(:initiated_by, Shapes::ShapeRef.new(shape: InitiatedBy, location_name: "InitiatedBy"))
    ChangeProgressStatusDetails.struct_class = Types::ChangeProgressStatusDetails

    CloudWatchDirectQueryDataSource.add_member(:role_arn, Shapes::ShapeRef.new(shape: DirectQueryDataSourceRoleArn, required: true, location_name: "RoleArn"))
    CloudWatchDirectQueryDataSource.struct_class = Types::CloudWatchDirectQueryDataSource

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
    ClusterConfig.add_member(:node_options, Shapes::ShapeRef.new(shape: NodeOptionsList, location_name: "NodeOptions"))
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

    CreateApplicationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "name"))
    CreateApplicationRequest.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSources, location_name: "dataSources"))
    CreateApplicationRequest.add_member(:iam_identity_center_options, Shapes::ShapeRef.new(shape: IamIdentityCenterOptionsInput, location_name: "iamIdentityCenterOptions"))
    CreateApplicationRequest.add_member(:app_configs, Shapes::ShapeRef.new(shape: AppConfigs, location_name: "appConfigs"))
    CreateApplicationRequest.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "tagList"))
    CreateApplicationRequest.struct_class = Types::CreateApplicationRequest

    CreateApplicationResponse.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "id"))
    CreateApplicationResponse.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "name"))
    CreateApplicationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    CreateApplicationResponse.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSources, location_name: "dataSources"))
    CreateApplicationResponse.add_member(:iam_identity_center_options, Shapes::ShapeRef.new(shape: IamIdentityCenterOptions, location_name: "iamIdentityCenterOptions"))
    CreateApplicationResponse.add_member(:app_configs, Shapes::ShapeRef.new(shape: AppConfigs, location_name: "appConfigs"))
    CreateApplicationResponse.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "tagList"))
    CreateApplicationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    CreateApplicationResponse.struct_class = Types::CreateApplicationResponse

    CreateDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    CreateDomainRequest.add_member(:engine_version, Shapes::ShapeRef.new(shape: VersionString, location_name: "EngineVersion"))
    CreateDomainRequest.add_member(:cluster_config, Shapes::ShapeRef.new(shape: ClusterConfig, location_name: "ClusterConfig"))
    CreateDomainRequest.add_member(:ebs_options, Shapes::ShapeRef.new(shape: EBSOptions, location_name: "EBSOptions"))
    CreateDomainRequest.add_member(:access_policies, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "AccessPolicies"))
    CreateDomainRequest.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IPAddressType, location_name: "IPAddressType"))
    CreateDomainRequest.add_member(:snapshot_options, Shapes::ShapeRef.new(shape: SnapshotOptions, location_name: "SnapshotOptions"))
    CreateDomainRequest.add_member(:vpc_options, Shapes::ShapeRef.new(shape: VPCOptions, location_name: "VPCOptions"))
    CreateDomainRequest.add_member(:cognito_options, Shapes::ShapeRef.new(shape: CognitoOptions, location_name: "CognitoOptions"))
    CreateDomainRequest.add_member(:encryption_at_rest_options, Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, location_name: "EncryptionAtRestOptions"))
    CreateDomainRequest.add_member(:node_to_node_encryption_options, Shapes::ShapeRef.new(shape: NodeToNodeEncryptionOptions, location_name: "NodeToNodeEncryptionOptions"))
    CreateDomainRequest.add_member(:advanced_options, Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: "AdvancedOptions"))
    CreateDomainRequest.add_member(:log_publishing_options, Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: "LogPublishingOptions"))
    CreateDomainRequest.add_member(:domain_endpoint_options, Shapes::ShapeRef.new(shape: DomainEndpointOptions, location_name: "DomainEndpointOptions"))
    CreateDomainRequest.add_member(:advanced_security_options, Shapes::ShapeRef.new(shape: AdvancedSecurityOptionsInput, location_name: "AdvancedSecurityOptions"))
    CreateDomainRequest.add_member(:identity_center_options, Shapes::ShapeRef.new(shape: IdentityCenterOptionsInput, location_name: "IdentityCenterOptions"))
    CreateDomainRequest.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    CreateDomainRequest.add_member(:auto_tune_options, Shapes::ShapeRef.new(shape: AutoTuneOptionsInput, location_name: "AutoTuneOptions"))
    CreateDomainRequest.add_member(:off_peak_window_options, Shapes::ShapeRef.new(shape: OffPeakWindowOptions, location_name: "OffPeakWindowOptions"))
    CreateDomainRequest.add_member(:software_update_options, Shapes::ShapeRef.new(shape: SoftwareUpdateOptions, location_name: "SoftwareUpdateOptions"))
    CreateDomainRequest.add_member(:aiml_options, Shapes::ShapeRef.new(shape: AIMLOptionsInput, location_name: "AIMLOptions"))
    CreateDomainRequest.struct_class = Types::CreateDomainRequest

    CreateDomainResponse.add_member(:domain_status, Shapes::ShapeRef.new(shape: DomainStatus, location_name: "DomainStatus"))
    CreateDomainResponse.struct_class = Types::CreateDomainResponse

    CreateIndexRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    CreateIndexRequest.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, required: true, location_name: "IndexName"))
    CreateIndexRequest.add_member(:index_schema, Shapes::ShapeRef.new(shape: IndexSchema, required: true, location_name: "IndexSchema"))
    CreateIndexRequest.struct_class = Types::CreateIndexRequest

    CreateIndexResponse.add_member(:status, Shapes::ShapeRef.new(shape: IndexStatus, required: true, location_name: "Status"))
    CreateIndexResponse.struct_class = Types::CreateIndexResponse

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
    CreatePackageRequest.add_member(:package_configuration, Shapes::ShapeRef.new(shape: PackageConfiguration, location_name: "PackageConfiguration"))
    CreatePackageRequest.add_member(:engine_version, Shapes::ShapeRef.new(shape: EngineVersion, location_name: "EngineVersion"))
    CreatePackageRequest.add_member(:package_vending_options, Shapes::ShapeRef.new(shape: PackageVendingOptions, location_name: "PackageVendingOptions"))
    CreatePackageRequest.add_member(:package_encryption_options, Shapes::ShapeRef.new(shape: PackageEncryptionOptions, location_name: "PackageEncryptionOptions"))
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

    DataSource.add_member(:data_source_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "dataSourceArn"))
    DataSource.add_member(:data_source_description, Shapes::ShapeRef.new(shape: DataSourceDescription, location_name: "dataSourceDescription"))
    DataSource.struct_class = Types::DataSource

    DataSourceDetails.add_member(:data_source_type, Shapes::ShapeRef.new(shape: DataSourceType, location_name: "DataSourceType"))
    DataSourceDetails.add_member(:name, Shapes::ShapeRef.new(shape: DataSourceName, location_name: "Name"))
    DataSourceDetails.add_member(:description, Shapes::ShapeRef.new(shape: DataSourceDescription, location_name: "Description"))
    DataSourceDetails.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, location_name: "Status"))
    DataSourceDetails.struct_class = Types::DataSourceDetails

    DataSourceList.member = Shapes::ShapeRef.new(shape: DataSourceDetails)

    DataSourceType.add_member(:s3_glue_data_catalog, Shapes::ShapeRef.new(shape: S3GlueDataCatalog, location_name: "S3GlueDataCatalog"))
    DataSourceType.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DataSourceType.add_member_subclass(:s3_glue_data_catalog, Types::DataSourceType::S3GlueDataCatalog)
    DataSourceType.add_member_subclass(:unknown, Types::DataSourceType::Unknown)
    DataSourceType.struct_class = Types::DataSourceType

    DataSources.member = Shapes::ShapeRef.new(shape: DataSource)

    DeleteApplicationRequest.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "id"))
    DeleteApplicationRequest.struct_class = Types::DeleteApplicationRequest

    DeleteApplicationResponse.struct_class = Types::DeleteApplicationResponse

    DeleteDataSourceRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    DeleteDataSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: DataSourceName, required: true, location: "uri", location_name: "DataSourceName"))
    DeleteDataSourceRequest.struct_class = Types::DeleteDataSourceRequest

    DeleteDataSourceResponse.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    DeleteDataSourceResponse.struct_class = Types::DeleteDataSourceResponse

    DeleteDirectQueryDataSourceRequest.add_member(:data_source_name, Shapes::ShapeRef.new(shape: DirectQueryDataSourceName, required: true, location: "uri", location_name: "DataSourceName"))
    DeleteDirectQueryDataSourceRequest.struct_class = Types::DeleteDirectQueryDataSourceRequest

    DeleteDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    DeleteDomainRequest.struct_class = Types::DeleteDomainRequest

    DeleteDomainResponse.add_member(:domain_status, Shapes::ShapeRef.new(shape: DomainStatus, location_name: "DomainStatus"))
    DeleteDomainResponse.struct_class = Types::DeleteDomainResponse

    DeleteInboundConnectionRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location: "uri", location_name: "ConnectionId"))
    DeleteInboundConnectionRequest.struct_class = Types::DeleteInboundConnectionRequest

    DeleteInboundConnectionResponse.add_member(:connection, Shapes::ShapeRef.new(shape: InboundConnection, location_name: "Connection"))
    DeleteInboundConnectionResponse.struct_class = Types::DeleteInboundConnectionResponse

    DeleteIndexRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    DeleteIndexRequest.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, required: true, location: "uri", location_name: "IndexName"))
    DeleteIndexRequest.struct_class = Types::DeleteIndexRequest

    DeleteIndexResponse.add_member(:status, Shapes::ShapeRef.new(shape: IndexStatus, required: true, location_name: "Status"))
    DeleteIndexResponse.struct_class = Types::DeleteIndexResponse

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

    DirectQueryDataSource.add_member(:data_source_name, Shapes::ShapeRef.new(shape: DirectQueryDataSourceName, location_name: "DataSourceName"))
    DirectQueryDataSource.add_member(:data_source_type, Shapes::ShapeRef.new(shape: DirectQueryDataSourceType, location_name: "DataSourceType"))
    DirectQueryDataSource.add_member(:description, Shapes::ShapeRef.new(shape: DirectQueryDataSourceDescription, location_name: "Description"))
    DirectQueryDataSource.add_member(:open_search_arns, Shapes::ShapeRef.new(shape: DirectQueryOpenSearchARNList, location_name: "OpenSearchArns"))
    DirectQueryDataSource.add_member(:data_source_arn, Shapes::ShapeRef.new(shape: String, location_name: "DataSourceArn"))
    DirectQueryDataSource.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    DirectQueryDataSource.struct_class = Types::DirectQueryDataSource

    DirectQueryDataSourceList.member = Shapes::ShapeRef.new(shape: DirectQueryDataSource)

    DirectQueryDataSourceType.add_member(:cloud_watch_log, Shapes::ShapeRef.new(shape: CloudWatchDirectQueryDataSource, location_name: "CloudWatchLog"))
    DirectQueryDataSourceType.add_member(:security_lake, Shapes::ShapeRef.new(shape: SecurityLakeDirectQueryDataSource, location_name: "SecurityLake"))
    DirectQueryDataSourceType.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DirectQueryDataSourceType.add_member_subclass(:cloud_watch_log, Types::DirectQueryDataSourceType::CloudWatchLog)
    DirectQueryDataSourceType.add_member_subclass(:security_lake, Types::DirectQueryDataSourceType::SecurityLake)
    DirectQueryDataSourceType.add_member_subclass(:unknown, Types::DirectQueryDataSourceType::Unknown)
    DirectQueryDataSourceType.struct_class = Types::DirectQueryDataSourceType

    DirectQueryOpenSearchARNList.member = Shapes::ShapeRef.new(shape: ARN)

    DisabledOperationException.struct_class = Types::DisabledOperationException

    DissociatePackageRequest.add_member(:package_id, Shapes::ShapeRef.new(shape: PackageID, required: true, location: "uri", location_name: "PackageID"))
    DissociatePackageRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    DissociatePackageRequest.struct_class = Types::DissociatePackageRequest

    DissociatePackageResponse.add_member(:domain_package_details, Shapes::ShapeRef.new(shape: DomainPackageDetails, location_name: "DomainPackageDetails"))
    DissociatePackageResponse.struct_class = Types::DissociatePackageResponse

    DissociatePackagesRequest.add_member(:package_list, Shapes::ShapeRef.new(shape: PackageIDList, required: true, location_name: "PackageList"))
    DissociatePackagesRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DissociatePackagesRequest.struct_class = Types::DissociatePackagesRequest

    DissociatePackagesResponse.add_member(:domain_package_details_list, Shapes::ShapeRef.new(shape: DomainPackageDetailsList, location_name: "DomainPackageDetailsList"))
    DissociatePackagesResponse.struct_class = Types::DissociatePackagesResponse

    DomainConfig.add_member(:engine_version, Shapes::ShapeRef.new(shape: VersionStatus, location_name: "EngineVersion"))
    DomainConfig.add_member(:cluster_config, Shapes::ShapeRef.new(shape: ClusterConfigStatus, location_name: "ClusterConfig"))
    DomainConfig.add_member(:ebs_options, Shapes::ShapeRef.new(shape: EBSOptionsStatus, location_name: "EBSOptions"))
    DomainConfig.add_member(:access_policies, Shapes::ShapeRef.new(shape: AccessPoliciesStatus, location_name: "AccessPolicies"))
    DomainConfig.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IPAddressTypeStatus, location_name: "IPAddressType"))
    DomainConfig.add_member(:snapshot_options, Shapes::ShapeRef.new(shape: SnapshotOptionsStatus, location_name: "SnapshotOptions"))
    DomainConfig.add_member(:vpc_options, Shapes::ShapeRef.new(shape: VPCDerivedInfoStatus, location_name: "VPCOptions"))
    DomainConfig.add_member(:cognito_options, Shapes::ShapeRef.new(shape: CognitoOptionsStatus, location_name: "CognitoOptions"))
    DomainConfig.add_member(:encryption_at_rest_options, Shapes::ShapeRef.new(shape: EncryptionAtRestOptionsStatus, location_name: "EncryptionAtRestOptions"))
    DomainConfig.add_member(:node_to_node_encryption_options, Shapes::ShapeRef.new(shape: NodeToNodeEncryptionOptionsStatus, location_name: "NodeToNodeEncryptionOptions"))
    DomainConfig.add_member(:advanced_options, Shapes::ShapeRef.new(shape: AdvancedOptionsStatus, location_name: "AdvancedOptions"))
    DomainConfig.add_member(:log_publishing_options, Shapes::ShapeRef.new(shape: LogPublishingOptionsStatus, location_name: "LogPublishingOptions"))
    DomainConfig.add_member(:domain_endpoint_options, Shapes::ShapeRef.new(shape: DomainEndpointOptionsStatus, location_name: "DomainEndpointOptions"))
    DomainConfig.add_member(:advanced_security_options, Shapes::ShapeRef.new(shape: AdvancedSecurityOptionsStatus, location_name: "AdvancedSecurityOptions"))
    DomainConfig.add_member(:identity_center_options, Shapes::ShapeRef.new(shape: IdentityCenterOptionsStatus, location_name: "IdentityCenterOptions"))
    DomainConfig.add_member(:auto_tune_options, Shapes::ShapeRef.new(shape: AutoTuneOptionsStatus, location_name: "AutoTuneOptions"))
    DomainConfig.add_member(:change_progress_details, Shapes::ShapeRef.new(shape: ChangeProgressDetails, location_name: "ChangeProgressDetails"))
    DomainConfig.add_member(:off_peak_window_options, Shapes::ShapeRef.new(shape: OffPeakWindowOptionsStatus, location_name: "OffPeakWindowOptions"))
    DomainConfig.add_member(:software_update_options, Shapes::ShapeRef.new(shape: SoftwareUpdateOptionsStatus, location_name: "SoftwareUpdateOptions"))
    DomainConfig.add_member(:modifying_properties, Shapes::ShapeRef.new(shape: ModifyingPropertiesList, location_name: "ModifyingProperties"))
    DomainConfig.add_member(:aiml_options, Shapes::ShapeRef.new(shape: AIMLOptionsStatus, location_name: "AIMLOptions"))
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

    DomainMaintenanceDetails.add_member(:maintenance_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "MaintenanceId"))
    DomainMaintenanceDetails.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    DomainMaintenanceDetails.add_member(:action, Shapes::ShapeRef.new(shape: MaintenanceType, location_name: "Action"))
    DomainMaintenanceDetails.add_member(:node_id, Shapes::ShapeRef.new(shape: NodeId, location_name: "NodeId"))
    DomainMaintenanceDetails.add_member(:status, Shapes::ShapeRef.new(shape: MaintenanceStatus, location_name: "Status"))
    DomainMaintenanceDetails.add_member(:status_message, Shapes::ShapeRef.new(shape: MaintenanceStatusMessage, location_name: "StatusMessage"))
    DomainMaintenanceDetails.add_member(:created_at, Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: "CreatedAt"))
    DomainMaintenanceDetails.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: "UpdatedAt"))
    DomainMaintenanceDetails.struct_class = Types::DomainMaintenanceDetails

    DomainMaintenanceList.member = Shapes::ShapeRef.new(shape: DomainMaintenanceDetails)

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
    DomainPackageDetails.add_member(:prerequisite_package_id_list, Shapes::ShapeRef.new(shape: PackageIDList, location_name: "PrerequisitePackageIDList"))
    DomainPackageDetails.add_member(:reference_path, Shapes::ShapeRef.new(shape: ReferencePath, location_name: "ReferencePath"))
    DomainPackageDetails.add_member(:error_details, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "ErrorDetails"))
    DomainPackageDetails.add_member(:association_configuration, Shapes::ShapeRef.new(shape: PackageAssociationConfiguration, location_name: "AssociationConfiguration"))
    DomainPackageDetails.struct_class = Types::DomainPackageDetails

    DomainPackageDetailsList.member = Shapes::ShapeRef.new(shape: DomainPackageDetails)

    DomainStatus.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    DomainStatus.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DomainStatus.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "ARN"))
    DomainStatus.add_member(:created, Shapes::ShapeRef.new(shape: Boolean, location_name: "Created"))
    DomainStatus.add_member(:deleted, Shapes::ShapeRef.new(shape: Boolean, location_name: "Deleted"))
    DomainStatus.add_member(:endpoint, Shapes::ShapeRef.new(shape: ServiceUrl, location_name: "Endpoint"))
    DomainStatus.add_member(:endpoint_v2, Shapes::ShapeRef.new(shape: ServiceUrl, location_name: "EndpointV2"))
    DomainStatus.add_member(:endpoints, Shapes::ShapeRef.new(shape: EndpointsMap, location_name: "Endpoints"))
    DomainStatus.add_member(:domain_endpoint_v2_hosted_zone_id, Shapes::ShapeRef.new(shape: HostedZoneId, location_name: "DomainEndpointV2HostedZoneId"))
    DomainStatus.add_member(:processing, Shapes::ShapeRef.new(shape: Boolean, location_name: "Processing"))
    DomainStatus.add_member(:upgrade_processing, Shapes::ShapeRef.new(shape: Boolean, location_name: "UpgradeProcessing"))
    DomainStatus.add_member(:engine_version, Shapes::ShapeRef.new(shape: VersionString, location_name: "EngineVersion"))
    DomainStatus.add_member(:cluster_config, Shapes::ShapeRef.new(shape: ClusterConfig, required: true, location_name: "ClusterConfig"))
    DomainStatus.add_member(:ebs_options, Shapes::ShapeRef.new(shape: EBSOptions, location_name: "EBSOptions"))
    DomainStatus.add_member(:access_policies, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "AccessPolicies"))
    DomainStatus.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IPAddressType, location_name: "IPAddressType"))
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
    DomainStatus.add_member(:identity_center_options, Shapes::ShapeRef.new(shape: IdentityCenterOptions, location_name: "IdentityCenterOptions"))
    DomainStatus.add_member(:auto_tune_options, Shapes::ShapeRef.new(shape: AutoTuneOptionsOutput, location_name: "AutoTuneOptions"))
    DomainStatus.add_member(:change_progress_details, Shapes::ShapeRef.new(shape: ChangeProgressDetails, location_name: "ChangeProgressDetails"))
    DomainStatus.add_member(:off_peak_window_options, Shapes::ShapeRef.new(shape: OffPeakWindowOptions, location_name: "OffPeakWindowOptions"))
    DomainStatus.add_member(:software_update_options, Shapes::ShapeRef.new(shape: SoftwareUpdateOptions, location_name: "SoftwareUpdateOptions"))
    DomainStatus.add_member(:domain_processing_status, Shapes::ShapeRef.new(shape: DomainProcessingStatusType, location_name: "DomainProcessingStatus"))
    DomainStatus.add_member(:modifying_properties, Shapes::ShapeRef.new(shape: ModifyingPropertiesList, location_name: "ModifyingProperties"))
    DomainStatus.add_member(:aiml_options, Shapes::ShapeRef.new(shape: AIMLOptionsOutput, location_name: "AIMLOptions"))
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

    GUIDList.member = Shapes::ShapeRef.new(shape: GUID)

    GetApplicationRequest.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "id"))
    GetApplicationRequest.struct_class = Types::GetApplicationRequest

    GetApplicationResponse.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "id"))
    GetApplicationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    GetApplicationResponse.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "name"))
    GetApplicationResponse.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "endpoint"))
    GetApplicationResponse.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: "status"))
    GetApplicationResponse.add_member(:iam_identity_center_options, Shapes::ShapeRef.new(shape: IamIdentityCenterOptions, location_name: "iamIdentityCenterOptions"))
    GetApplicationResponse.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSources, location_name: "dataSources"))
    GetApplicationResponse.add_member(:app_configs, Shapes::ShapeRef.new(shape: AppConfigs, location_name: "appConfigs"))
    GetApplicationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetApplicationResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    GetApplicationResponse.struct_class = Types::GetApplicationResponse

    GetCompatibleVersionsRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location: "querystring", location_name: "domainName"))
    GetCompatibleVersionsRequest.struct_class = Types::GetCompatibleVersionsRequest

    GetCompatibleVersionsResponse.add_member(:compatible_versions, Shapes::ShapeRef.new(shape: CompatibleVersionsList, location_name: "CompatibleVersions"))
    GetCompatibleVersionsResponse.struct_class = Types::GetCompatibleVersionsResponse

    GetDataSourceRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    GetDataSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: DataSourceName, required: true, location: "uri", location_name: "DataSourceName"))
    GetDataSourceRequest.struct_class = Types::GetDataSourceRequest

    GetDataSourceResponse.add_member(:data_source_type, Shapes::ShapeRef.new(shape: DataSourceType, location_name: "DataSourceType"))
    GetDataSourceResponse.add_member(:name, Shapes::ShapeRef.new(shape: DataSourceName, location_name: "Name"))
    GetDataSourceResponse.add_member(:description, Shapes::ShapeRef.new(shape: DataSourceDescription, location_name: "Description"))
    GetDataSourceResponse.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, location_name: "Status"))
    GetDataSourceResponse.struct_class = Types::GetDataSourceResponse

    GetDefaultApplicationSettingRequest.struct_class = Types::GetDefaultApplicationSettingRequest

    GetDefaultApplicationSettingResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "applicationArn"))
    GetDefaultApplicationSettingResponse.struct_class = Types::GetDefaultApplicationSettingResponse

    GetDirectQueryDataSourceRequest.add_member(:data_source_name, Shapes::ShapeRef.new(shape: DirectQueryDataSourceName, required: true, location: "uri", location_name: "DataSourceName"))
    GetDirectQueryDataSourceRequest.struct_class = Types::GetDirectQueryDataSourceRequest

    GetDirectQueryDataSourceResponse.add_member(:data_source_name, Shapes::ShapeRef.new(shape: DirectQueryDataSourceName, location_name: "DataSourceName"))
    GetDirectQueryDataSourceResponse.add_member(:data_source_type, Shapes::ShapeRef.new(shape: DirectQueryDataSourceType, location_name: "DataSourceType"))
    GetDirectQueryDataSourceResponse.add_member(:description, Shapes::ShapeRef.new(shape: DirectQueryDataSourceDescription, location_name: "Description"))
    GetDirectQueryDataSourceResponse.add_member(:open_search_arns, Shapes::ShapeRef.new(shape: DirectQueryOpenSearchARNList, location_name: "OpenSearchArns"))
    GetDirectQueryDataSourceResponse.add_member(:data_source_arn, Shapes::ShapeRef.new(shape: String, location_name: "DataSourceArn"))
    GetDirectQueryDataSourceResponse.struct_class = Types::GetDirectQueryDataSourceResponse

    GetDomainMaintenanceStatusRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    GetDomainMaintenanceStatusRequest.add_member(:maintenance_id, Shapes::ShapeRef.new(shape: RequestId, required: true, location: "querystring", location_name: "maintenanceId"))
    GetDomainMaintenanceStatusRequest.struct_class = Types::GetDomainMaintenanceStatusRequest

    GetDomainMaintenanceStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: MaintenanceStatus, location_name: "Status"))
    GetDomainMaintenanceStatusResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: MaintenanceStatusMessage, location_name: "StatusMessage"))
    GetDomainMaintenanceStatusResponse.add_member(:node_id, Shapes::ShapeRef.new(shape: NodeId, location_name: "NodeId"))
    GetDomainMaintenanceStatusResponse.add_member(:action, Shapes::ShapeRef.new(shape: MaintenanceType, location_name: "Action"))
    GetDomainMaintenanceStatusResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: "CreatedAt"))
    GetDomainMaintenanceStatusResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: "UpdatedAt"))
    GetDomainMaintenanceStatusResponse.struct_class = Types::GetDomainMaintenanceStatusResponse

    GetIndexRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    GetIndexRequest.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, required: true, location: "uri", location_name: "IndexName"))
    GetIndexRequest.struct_class = Types::GetIndexRequest

    GetIndexResponse.add_member(:index_schema, Shapes::ShapeRef.new(shape: IndexSchema, required: true, location_name: "IndexSchema"))
    GetIndexResponse.struct_class = Types::GetIndexResponse

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

    IAMFederationOptionsInput.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    IAMFederationOptionsInput.add_member(:subject_key, Shapes::ShapeRef.new(shape: IAMFederationSubjectKey, location_name: "SubjectKey"))
    IAMFederationOptionsInput.add_member(:roles_key, Shapes::ShapeRef.new(shape: IAMFederationRolesKey, location_name: "RolesKey"))
    IAMFederationOptionsInput.struct_class = Types::IAMFederationOptionsInput

    IAMFederationOptionsOutput.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    IAMFederationOptionsOutput.add_member(:subject_key, Shapes::ShapeRef.new(shape: IAMFederationSubjectKey, location_name: "SubjectKey"))
    IAMFederationOptionsOutput.add_member(:roles_key, Shapes::ShapeRef.new(shape: IAMFederationRolesKey, location_name: "RolesKey"))
    IAMFederationOptionsOutput.struct_class = Types::IAMFederationOptionsOutput

    IPAddressTypeStatus.add_member(:options, Shapes::ShapeRef.new(shape: IPAddressType, required: true, location_name: "Options"))
    IPAddressTypeStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    IPAddressTypeStatus.struct_class = Types::IPAddressTypeStatus

    IamIdentityCenterOptions.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    IamIdentityCenterOptions.add_member(:iam_identity_center_instance_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "iamIdentityCenterInstanceArn"))
    IamIdentityCenterOptions.add_member(:iam_role_for_identity_center_application_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "iamRoleForIdentityCenterApplicationArn"))
    IamIdentityCenterOptions.add_member(:iam_identity_center_application_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "iamIdentityCenterApplicationArn"))
    IamIdentityCenterOptions.struct_class = Types::IamIdentityCenterOptions

    IamIdentityCenterOptionsInput.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    IamIdentityCenterOptionsInput.add_member(:iam_identity_center_instance_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "iamIdentityCenterInstanceArn"))
    IamIdentityCenterOptionsInput.add_member(:iam_role_for_identity_center_application_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "iamRoleForIdentityCenterApplicationArn"))
    IamIdentityCenterOptionsInput.struct_class = Types::IamIdentityCenterOptionsInput

    IdentityCenterOptions.add_member(:enabled_api_access, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnabledAPIAccess"))
    IdentityCenterOptions.add_member(:identity_center_instance_arn, Shapes::ShapeRef.new(shape: IdentityCenterInstanceARN, location_name: "IdentityCenterInstanceARN"))
    IdentityCenterOptions.add_member(:subject_key, Shapes::ShapeRef.new(shape: SubjectKeyIdCOption, location_name: "SubjectKey"))
    IdentityCenterOptions.add_member(:roles_key, Shapes::ShapeRef.new(shape: RolesKeyIdCOption, location_name: "RolesKey"))
    IdentityCenterOptions.add_member(:identity_center_application_arn, Shapes::ShapeRef.new(shape: IdentityCenterApplicationARN, location_name: "IdentityCenterApplicationARN"))
    IdentityCenterOptions.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId"))
    IdentityCenterOptions.struct_class = Types::IdentityCenterOptions

    IdentityCenterOptionsInput.add_member(:enabled_api_access, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnabledAPIAccess"))
    IdentityCenterOptionsInput.add_member(:identity_center_instance_arn, Shapes::ShapeRef.new(shape: IdentityCenterInstanceARN, location_name: "IdentityCenterInstanceARN"))
    IdentityCenterOptionsInput.add_member(:subject_key, Shapes::ShapeRef.new(shape: SubjectKeyIdCOption, location_name: "SubjectKey"))
    IdentityCenterOptionsInput.add_member(:roles_key, Shapes::ShapeRef.new(shape: RolesKeyIdCOption, location_name: "RolesKey"))
    IdentityCenterOptionsInput.struct_class = Types::IdentityCenterOptionsInput

    IdentityCenterOptionsStatus.add_member(:options, Shapes::ShapeRef.new(shape: IdentityCenterOptions, required: true, location_name: "Options"))
    IdentityCenterOptionsStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    IdentityCenterOptionsStatus.struct_class = Types::IdentityCenterOptionsStatus

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

    JWTOptionsInput.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    JWTOptionsInput.add_member(:subject_key, Shapes::ShapeRef.new(shape: SubjectKey, location_name: "SubjectKey"))
    JWTOptionsInput.add_member(:roles_key, Shapes::ShapeRef.new(shape: RolesKey, location_name: "RolesKey"))
    JWTOptionsInput.add_member(:public_key, Shapes::ShapeRef.new(shape: String, location_name: "PublicKey"))
    JWTOptionsInput.struct_class = Types::JWTOptionsInput

    JWTOptionsOutput.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    JWTOptionsOutput.add_member(:subject_key, Shapes::ShapeRef.new(shape: String, location_name: "SubjectKey"))
    JWTOptionsOutput.add_member(:roles_key, Shapes::ShapeRef.new(shape: String, location_name: "RolesKey"))
    JWTOptionsOutput.add_member(:public_key, Shapes::ShapeRef.new(shape: String, location_name: "PublicKey"))
    JWTOptionsOutput.struct_class = Types::JWTOptionsOutput

    KeyStoreAccessOption.add_member(:key_access_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "KeyAccessRoleArn"))
    KeyStoreAccessOption.add_member(:key_store_access_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "KeyStoreAccessEnabled"))
    KeyStoreAccessOption.struct_class = Types::KeyStoreAccessOption

    LimitExceededException.struct_class = Types::LimitExceededException

    LimitValueList.member = Shapes::ShapeRef.new(shape: LimitValue)

    Limits.add_member(:storage_types, Shapes::ShapeRef.new(shape: StorageTypeList, location_name: "StorageTypes"))
    Limits.add_member(:instance_limits, Shapes::ShapeRef.new(shape: InstanceLimits, location_name: "InstanceLimits"))
    Limits.add_member(:additional_limits, Shapes::ShapeRef.new(shape: AdditionalLimitList, location_name: "AdditionalLimits"))
    Limits.struct_class = Types::Limits

    LimitsByRole.key = Shapes::ShapeRef.new(shape: InstanceRole)
    LimitsByRole.value = Shapes::ShapeRef.new(shape: Limits)

    ListApplicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListApplicationsRequest.add_member(:statuses, Shapes::ShapeRef.new(shape: ApplicationStatuses, location: "querystring", location_name: "statuses"))
    ListApplicationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListApplicationsRequest.struct_class = Types::ListApplicationsRequest

    ListApplicationsResponse.add_member(:application_summaries, Shapes::ShapeRef.new(shape: ApplicationSummaries, location_name: "ApplicationSummaries"))
    ListApplicationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListApplicationsResponse.struct_class = Types::ListApplicationsResponse

    ListDataSourcesRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    ListDataSourcesRequest.struct_class = Types::ListDataSourcesRequest

    ListDataSourcesResponse.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSourceList, location_name: "DataSources"))
    ListDataSourcesResponse.struct_class = Types::ListDataSourcesResponse

    ListDirectQueryDataSourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nexttoken"))
    ListDirectQueryDataSourcesRequest.struct_class = Types::ListDirectQueryDataSourcesRequest

    ListDirectQueryDataSourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDirectQueryDataSourcesResponse.add_member(:direct_query_data_sources, Shapes::ShapeRef.new(shape: DirectQueryDataSourceList, location_name: "DirectQueryDataSources"))
    ListDirectQueryDataSourcesResponse.struct_class = Types::ListDirectQueryDataSourcesResponse

    ListDomainMaintenancesRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    ListDomainMaintenancesRequest.add_member(:action, Shapes::ShapeRef.new(shape: MaintenanceType, location: "querystring", location_name: "action"))
    ListDomainMaintenancesRequest.add_member(:status, Shapes::ShapeRef.new(shape: MaintenanceStatus, location: "querystring", location_name: "status"))
    ListDomainMaintenancesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDomainMaintenancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDomainMaintenancesRequest.struct_class = Types::ListDomainMaintenancesRequest

    ListDomainMaintenancesResponse.add_member(:domain_maintenances, Shapes::ShapeRef.new(shape: DomainMaintenanceList, location_name: "DomainMaintenances"))
    ListDomainMaintenancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDomainMaintenancesResponse.struct_class = Types::ListDomainMaintenancesResponse

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

    ModifyingProperties.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    ModifyingProperties.add_member(:active_value, Shapes::ShapeRef.new(shape: String, location_name: "ActiveValue"))
    ModifyingProperties.add_member(:pending_value, Shapes::ShapeRef.new(shape: String, location_name: "PendingValue"))
    ModifyingProperties.add_member(:value_type, Shapes::ShapeRef.new(shape: PropertyValueType, location_name: "ValueType"))
    ModifyingProperties.struct_class = Types::ModifyingProperties

    ModifyingPropertiesList.member = Shapes::ShapeRef.new(shape: ModifyingProperties)

    NaturalLanguageQueryGenerationOptionsInput.add_member(:desired_state, Shapes::ShapeRef.new(shape: NaturalLanguageQueryGenerationDesiredState, location_name: "DesiredState"))
    NaturalLanguageQueryGenerationOptionsInput.struct_class = Types::NaturalLanguageQueryGenerationOptionsInput

    NaturalLanguageQueryGenerationOptionsOutput.add_member(:desired_state, Shapes::ShapeRef.new(shape: NaturalLanguageQueryGenerationDesiredState, location_name: "DesiredState"))
    NaturalLanguageQueryGenerationOptionsOutput.add_member(:current_state, Shapes::ShapeRef.new(shape: NaturalLanguageQueryGenerationCurrentState, location_name: "CurrentState"))
    NaturalLanguageQueryGenerationOptionsOutput.struct_class = Types::NaturalLanguageQueryGenerationOptionsOutput

    NodeConfig.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    NodeConfig.add_member(:type, Shapes::ShapeRef.new(shape: OpenSearchPartitionInstanceType, location_name: "Type"))
    NodeConfig.add_member(:count, Shapes::ShapeRef.new(shape: IntegerClass, location_name: "Count"))
    NodeConfig.struct_class = Types::NodeConfig

    NodeOption.add_member(:node_type, Shapes::ShapeRef.new(shape: NodeOptionsNodeType, location_name: "NodeType"))
    NodeOption.add_member(:node_config, Shapes::ShapeRef.new(shape: NodeConfig, location_name: "NodeConfig"))
    NodeOption.struct_class = Types::NodeOption

    NodeOptionsList.member = Shapes::ShapeRef.new(shape: NodeOption)

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

    PackageAssociationConfiguration.add_member(:key_store_access_option, Shapes::ShapeRef.new(shape: KeyStoreAccessOption, location_name: "KeyStoreAccessOption"))
    PackageAssociationConfiguration.struct_class = Types::PackageAssociationConfiguration

    PackageConfiguration.add_member(:license_requirement, Shapes::ShapeRef.new(shape: RequirementLevel, required: true, location_name: "LicenseRequirement"))
    PackageConfiguration.add_member(:license_filepath, Shapes::ShapeRef.new(shape: LicenseFilepath, location_name: "LicenseFilepath"))
    PackageConfiguration.add_member(:configuration_requirement, Shapes::ShapeRef.new(shape: RequirementLevel, required: true, location_name: "ConfigurationRequirement"))
    PackageConfiguration.add_member(:requires_restart_for_configuration_update, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequiresRestartForConfigurationUpdate"))
    PackageConfiguration.struct_class = Types::PackageConfiguration

    PackageDetails.add_member(:package_id, Shapes::ShapeRef.new(shape: PackageID, location_name: "PackageID"))
    PackageDetails.add_member(:package_name, Shapes::ShapeRef.new(shape: PackageName, location_name: "PackageName"))
    PackageDetails.add_member(:package_type, Shapes::ShapeRef.new(shape: PackageType, location_name: "PackageType"))
    PackageDetails.add_member(:package_description, Shapes::ShapeRef.new(shape: PackageDescription, location_name: "PackageDescription"))
    PackageDetails.add_member(:package_status, Shapes::ShapeRef.new(shape: PackageStatus, location_name: "PackageStatus"))
    PackageDetails.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "CreatedAt"))
    PackageDetails.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: LastUpdated, location_name: "LastUpdatedAt"))
    PackageDetails.add_member(:available_package_version, Shapes::ShapeRef.new(shape: PackageVersion, location_name: "AvailablePackageVersion"))
    PackageDetails.add_member(:error_details, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "ErrorDetails"))
    PackageDetails.add_member(:engine_version, Shapes::ShapeRef.new(shape: EngineVersion, location_name: "EngineVersion"))
    PackageDetails.add_member(:available_plugin_properties, Shapes::ShapeRef.new(shape: PluginProperties, location_name: "AvailablePluginProperties"))
    PackageDetails.add_member(:available_package_configuration, Shapes::ShapeRef.new(shape: PackageConfiguration, location_name: "AvailablePackageConfiguration"))
    PackageDetails.add_member(:allow_listed_user_list, Shapes::ShapeRef.new(shape: PackageUserList, location_name: "AllowListedUserList"))
    PackageDetails.add_member(:package_owner, Shapes::ShapeRef.new(shape: PackageOwner, location_name: "PackageOwner"))
    PackageDetails.add_member(:package_vending_options, Shapes::ShapeRef.new(shape: PackageVendingOptions, location_name: "PackageVendingOptions"))
    PackageDetails.add_member(:package_encryption_options, Shapes::ShapeRef.new(shape: PackageEncryptionOptions, location_name: "PackageEncryptionOptions"))
    PackageDetails.struct_class = Types::PackageDetails

    PackageDetailsForAssociation.add_member(:package_id, Shapes::ShapeRef.new(shape: PackageID, required: true, location_name: "PackageID"))
    PackageDetailsForAssociation.add_member(:prerequisite_package_id_list, Shapes::ShapeRef.new(shape: PackageIDList, location_name: "PrerequisitePackageIDList"))
    PackageDetailsForAssociation.add_member(:association_configuration, Shapes::ShapeRef.new(shape: PackageAssociationConfiguration, location_name: "AssociationConfiguration"))
    PackageDetailsForAssociation.struct_class = Types::PackageDetailsForAssociation

    PackageDetailsForAssociationList.member = Shapes::ShapeRef.new(shape: PackageDetailsForAssociation)

    PackageDetailsList.member = Shapes::ShapeRef.new(shape: PackageDetails)

    PackageEncryptionOptions.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyIdentifier"))
    PackageEncryptionOptions.add_member(:encryption_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "EncryptionEnabled"))
    PackageEncryptionOptions.struct_class = Types::PackageEncryptionOptions

    PackageIDList.member = Shapes::ShapeRef.new(shape: PackageID)

    PackageSource.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "S3BucketName"))
    PackageSource.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3Key, location_name: "S3Key"))
    PackageSource.struct_class = Types::PackageSource

    PackageUserList.member = Shapes::ShapeRef.new(shape: PackageUser)

    PackageVendingOptions.add_member(:vending_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "VendingEnabled"))
    PackageVendingOptions.struct_class = Types::PackageVendingOptions

    PackageVersionHistory.add_member(:package_version, Shapes::ShapeRef.new(shape: PackageVersion, location_name: "PackageVersion"))
    PackageVersionHistory.add_member(:commit_message, Shapes::ShapeRef.new(shape: CommitMessage, location_name: "CommitMessage"))
    PackageVersionHistory.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "CreatedAt"))
    PackageVersionHistory.add_member(:plugin_properties, Shapes::ShapeRef.new(shape: PluginProperties, location_name: "PluginProperties"))
    PackageVersionHistory.add_member(:package_configuration, Shapes::ShapeRef.new(shape: PackageConfiguration, location_name: "PackageConfiguration"))
    PackageVersionHistory.struct_class = Types::PackageVersionHistory

    PackageVersionHistoryList.member = Shapes::ShapeRef.new(shape: PackageVersionHistory)

    PluginProperties.add_member(:name, Shapes::ShapeRef.new(shape: PluginName, location_name: "Name"))
    PluginProperties.add_member(:description, Shapes::ShapeRef.new(shape: PluginDescription, location_name: "Description"))
    PluginProperties.add_member(:version, Shapes::ShapeRef.new(shape: PluginVersion, location_name: "Version"))
    PluginProperties.add_member(:class_name, Shapes::ShapeRef.new(shape: PluginClassName, location_name: "ClassName"))
    PluginProperties.add_member(:uncompressed_size_in_bytes, Shapes::ShapeRef.new(shape: UncompressedPluginSizeInBytes, location_name: "UncompressedSizeInBytes"))
    PluginProperties.struct_class = Types::PluginProperties

    PurchaseReservedInstanceOfferingRequest.add_member(:reserved_instance_offering_id, Shapes::ShapeRef.new(shape: GUID, required: true, location_name: "ReservedInstanceOfferingId"))
    PurchaseReservedInstanceOfferingRequest.add_member(:reservation_name, Shapes::ShapeRef.new(shape: ReservationToken, required: true, location_name: "ReservationName"))
    PurchaseReservedInstanceOfferingRequest.add_member(:instance_count, Shapes::ShapeRef.new(shape: InstanceCount, location_name: "InstanceCount"))
    PurchaseReservedInstanceOfferingRequest.struct_class = Types::PurchaseReservedInstanceOfferingRequest

    PurchaseReservedInstanceOfferingResponse.add_member(:reserved_instance_id, Shapes::ShapeRef.new(shape: GUID, location_name: "ReservedInstanceId"))
    PurchaseReservedInstanceOfferingResponse.add_member(:reservation_name, Shapes::ShapeRef.new(shape: ReservationToken, location_name: "ReservationName"))
    PurchaseReservedInstanceOfferingResponse.struct_class = Types::PurchaseReservedInstanceOfferingResponse

    PutDefaultApplicationSettingRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "applicationArn"))
    PutDefaultApplicationSettingRequest.add_member(:set_as_default, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "setAsDefault"))
    PutDefaultApplicationSettingRequest.struct_class = Types::PutDefaultApplicationSettingRequest

    PutDefaultApplicationSettingResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "applicationArn"))
    PutDefaultApplicationSettingResponse.struct_class = Types::PutDefaultApplicationSettingResponse

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
    RevokeVpcEndpointAccessRequest.add_member(:account, Shapes::ShapeRef.new(shape: AWSAccount, location_name: "Account"))
    RevokeVpcEndpointAccessRequest.add_member(:service, Shapes::ShapeRef.new(shape: AWSServicePrincipal, location_name: "Service"))
    RevokeVpcEndpointAccessRequest.struct_class = Types::RevokeVpcEndpointAccessRequest

    RevokeVpcEndpointAccessResponse.struct_class = Types::RevokeVpcEndpointAccessResponse

    S3GlueDataCatalog.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    S3GlueDataCatalog.struct_class = Types::S3GlueDataCatalog

    S3VectorsEngine.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    S3VectorsEngine.struct_class = Types::S3VectorsEngine

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

    SecurityLakeDirectQueryDataSource.add_member(:role_arn, Shapes::ShapeRef.new(shape: DirectQueryDataSourceRoleArn, required: true, location_name: "RoleArn"))
    SecurityLakeDirectQueryDataSource.struct_class = Types::SecurityLakeDirectQueryDataSource

    ServerlessVectorAcceleration.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    ServerlessVectorAcceleration.struct_class = Types::ServerlessVectorAcceleration

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

    StartDomainMaintenanceRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    StartDomainMaintenanceRequest.add_member(:action, Shapes::ShapeRef.new(shape: MaintenanceType, required: true, location_name: "Action"))
    StartDomainMaintenanceRequest.add_member(:node_id, Shapes::ShapeRef.new(shape: NodeId, location_name: "NodeId"))
    StartDomainMaintenanceRequest.struct_class = Types::StartDomainMaintenanceRequest

    StartDomainMaintenanceResponse.add_member(:maintenance_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "MaintenanceId"))
    StartDomainMaintenanceResponse.struct_class = Types::StartDomainMaintenanceResponse

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

    ThrottlingException.struct_class = Types::ThrottlingException

    UpdateApplicationRequest.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "id"))
    UpdateApplicationRequest.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSources, location_name: "dataSources"))
    UpdateApplicationRequest.add_member(:app_configs, Shapes::ShapeRef.new(shape: AppConfigs, location_name: "appConfigs"))
    UpdateApplicationRequest.struct_class = Types::UpdateApplicationRequest

    UpdateApplicationResponse.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "id"))
    UpdateApplicationResponse.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "name"))
    UpdateApplicationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    UpdateApplicationResponse.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSources, location_name: "dataSources"))
    UpdateApplicationResponse.add_member(:iam_identity_center_options, Shapes::ShapeRef.new(shape: IamIdentityCenterOptions, location_name: "iamIdentityCenterOptions"))
    UpdateApplicationResponse.add_member(:app_configs, Shapes::ShapeRef.new(shape: AppConfigs, location_name: "appConfigs"))
    UpdateApplicationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    UpdateApplicationResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    UpdateApplicationResponse.struct_class = Types::UpdateApplicationResponse

    UpdateDataSourceRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    UpdateDataSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: DataSourceName, required: true, location: "uri", location_name: "DataSourceName"))
    UpdateDataSourceRequest.add_member(:data_source_type, Shapes::ShapeRef.new(shape: DataSourceType, required: true, location_name: "DataSourceType"))
    UpdateDataSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: DataSourceDescription, location_name: "Description"))
    UpdateDataSourceRequest.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, location_name: "Status"))
    UpdateDataSourceRequest.struct_class = Types::UpdateDataSourceRequest

    UpdateDataSourceResponse.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UpdateDataSourceResponse.struct_class = Types::UpdateDataSourceResponse

    UpdateDirectQueryDataSourceRequest.add_member(:data_source_name, Shapes::ShapeRef.new(shape: DirectQueryDataSourceName, required: true, location: "uri", location_name: "DataSourceName"))
    UpdateDirectQueryDataSourceRequest.add_member(:data_source_type, Shapes::ShapeRef.new(shape: DirectQueryDataSourceType, required: true, location_name: "DataSourceType"))
    UpdateDirectQueryDataSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: DirectQueryDataSourceDescription, location_name: "Description"))
    UpdateDirectQueryDataSourceRequest.add_member(:open_search_arns, Shapes::ShapeRef.new(shape: DirectQueryOpenSearchARNList, required: true, location_name: "OpenSearchArns"))
    UpdateDirectQueryDataSourceRequest.struct_class = Types::UpdateDirectQueryDataSourceRequest

    UpdateDirectQueryDataSourceResponse.add_member(:data_source_arn, Shapes::ShapeRef.new(shape: String, location_name: "DataSourceArn"))
    UpdateDirectQueryDataSourceResponse.struct_class = Types::UpdateDirectQueryDataSourceResponse

    UpdateDomainConfigRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    UpdateDomainConfigRequest.add_member(:cluster_config, Shapes::ShapeRef.new(shape: ClusterConfig, location_name: "ClusterConfig"))
    UpdateDomainConfigRequest.add_member(:ebs_options, Shapes::ShapeRef.new(shape: EBSOptions, location_name: "EBSOptions"))
    UpdateDomainConfigRequest.add_member(:snapshot_options, Shapes::ShapeRef.new(shape: SnapshotOptions, location_name: "SnapshotOptions"))
    UpdateDomainConfigRequest.add_member(:vpc_options, Shapes::ShapeRef.new(shape: VPCOptions, location_name: "VPCOptions"))
    UpdateDomainConfigRequest.add_member(:cognito_options, Shapes::ShapeRef.new(shape: CognitoOptions, location_name: "CognitoOptions"))
    UpdateDomainConfigRequest.add_member(:advanced_options, Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: "AdvancedOptions"))
    UpdateDomainConfigRequest.add_member(:access_policies, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "AccessPolicies"))
    UpdateDomainConfigRequest.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IPAddressType, location_name: "IPAddressType"))
    UpdateDomainConfigRequest.add_member(:log_publishing_options, Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: "LogPublishingOptions"))
    UpdateDomainConfigRequest.add_member(:encryption_at_rest_options, Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, location_name: "EncryptionAtRestOptions"))
    UpdateDomainConfigRequest.add_member(:domain_endpoint_options, Shapes::ShapeRef.new(shape: DomainEndpointOptions, location_name: "DomainEndpointOptions"))
    UpdateDomainConfigRequest.add_member(:node_to_node_encryption_options, Shapes::ShapeRef.new(shape: NodeToNodeEncryptionOptions, location_name: "NodeToNodeEncryptionOptions"))
    UpdateDomainConfigRequest.add_member(:advanced_security_options, Shapes::ShapeRef.new(shape: AdvancedSecurityOptionsInput, location_name: "AdvancedSecurityOptions"))
    UpdateDomainConfigRequest.add_member(:identity_center_options, Shapes::ShapeRef.new(shape: IdentityCenterOptionsInput, location_name: "IdentityCenterOptions"))
    UpdateDomainConfigRequest.add_member(:auto_tune_options, Shapes::ShapeRef.new(shape: AutoTuneOptions, location_name: "AutoTuneOptions"))
    UpdateDomainConfigRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: DryRun, location_name: "DryRun"))
    UpdateDomainConfigRequest.add_member(:dry_run_mode, Shapes::ShapeRef.new(shape: DryRunMode, location_name: "DryRunMode"))
    UpdateDomainConfigRequest.add_member(:off_peak_window_options, Shapes::ShapeRef.new(shape: OffPeakWindowOptions, location_name: "OffPeakWindowOptions"))
    UpdateDomainConfigRequest.add_member(:software_update_options, Shapes::ShapeRef.new(shape: SoftwareUpdateOptions, location_name: "SoftwareUpdateOptions"))
    UpdateDomainConfigRequest.add_member(:aiml_options, Shapes::ShapeRef.new(shape: AIMLOptionsInput, location_name: "AIMLOptions"))
    UpdateDomainConfigRequest.struct_class = Types::UpdateDomainConfigRequest

    UpdateDomainConfigResponse.add_member(:domain_config, Shapes::ShapeRef.new(shape: DomainConfig, required: true, location_name: "DomainConfig"))
    UpdateDomainConfigResponse.add_member(:dry_run_results, Shapes::ShapeRef.new(shape: DryRunResults, location_name: "DryRunResults"))
    UpdateDomainConfigResponse.add_member(:dry_run_progress_status, Shapes::ShapeRef.new(shape: DryRunProgressStatus, location_name: "DryRunProgressStatus"))
    UpdateDomainConfigResponse.struct_class = Types::UpdateDomainConfigResponse

    UpdateIndexRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    UpdateIndexRequest.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, required: true, location: "uri", location_name: "IndexName"))
    UpdateIndexRequest.add_member(:index_schema, Shapes::ShapeRef.new(shape: IndexSchema, required: true, location_name: "IndexSchema"))
    UpdateIndexRequest.struct_class = Types::UpdateIndexRequest

    UpdateIndexResponse.add_member(:status, Shapes::ShapeRef.new(shape: IndexStatus, required: true, location_name: "Status"))
    UpdateIndexResponse.struct_class = Types::UpdateIndexResponse

    UpdatePackageRequest.add_member(:package_id, Shapes::ShapeRef.new(shape: PackageID, required: true, location_name: "PackageID"))
    UpdatePackageRequest.add_member(:package_source, Shapes::ShapeRef.new(shape: PackageSource, required: true, location_name: "PackageSource"))
    UpdatePackageRequest.add_member(:package_description, Shapes::ShapeRef.new(shape: PackageDescription, location_name: "PackageDescription"))
    UpdatePackageRequest.add_member(:commit_message, Shapes::ShapeRef.new(shape: CommitMessage, location_name: "CommitMessage"))
    UpdatePackageRequest.add_member(:package_configuration, Shapes::ShapeRef.new(shape: PackageConfiguration, location_name: "PackageConfiguration"))
    UpdatePackageRequest.add_member(:package_encryption_options, Shapes::ShapeRef.new(shape: PackageEncryptionOptions, location_name: "PackageEncryptionOptions"))
    UpdatePackageRequest.struct_class = Types::UpdatePackageRequest

    UpdatePackageResponse.add_member(:package_details, Shapes::ShapeRef.new(shape: PackageDetails, location_name: "PackageDetails"))
    UpdatePackageResponse.struct_class = Types::UpdatePackageResponse

    UpdatePackageScopeRequest.add_member(:package_id, Shapes::ShapeRef.new(shape: PackageID, required: true, location_name: "PackageID"))
    UpdatePackageScopeRequest.add_member(:operation, Shapes::ShapeRef.new(shape: PackageScopeOperationEnum, required: true, location_name: "Operation"))
    UpdatePackageScopeRequest.add_member(:package_user_list, Shapes::ShapeRef.new(shape: PackageUserList, required: true, location_name: "PackageUserList"))
    UpdatePackageScopeRequest.struct_class = Types::UpdatePackageScopeRequest

    UpdatePackageScopeResponse.add_member(:package_id, Shapes::ShapeRef.new(shape: PackageID, location_name: "PackageID"))
    UpdatePackageScopeResponse.add_member(:operation, Shapes::ShapeRef.new(shape: PackageScopeOperationEnum, location_name: "Operation"))
    UpdatePackageScopeResponse.add_member(:package_user_list, Shapes::ShapeRef.new(shape: PackageUserList, location_name: "PackageUserList"))
    UpdatePackageScopeResponse.struct_class = Types::UpdatePackageScopeResponse

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
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "es",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
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

      api.add_operation(:add_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddDataSource"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/opensearch/domain/{DomainName}/dataSource"
        o.input = Shapes::ShapeRef.new(shape: AddDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: AddDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailureException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:add_direct_query_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddDirectQueryDataSource"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/opensearch/directQueryDataSource"
        o.input = Shapes::ShapeRef.new(shape: AddDirectQueryDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: AddDirectQueryDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
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

      api.add_operation(:associate_packages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociatePackages"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/packages/associateMultiple"
        o.input = Shapes::ShapeRef.new(shape: AssociatePackagesRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociatePackagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
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

      api.add_operation(:cancel_domain_config_change, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelDomainConfigChange"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/opensearch/domain/{DomainName}/config/cancel"
        o.input = Shapes::ShapeRef.new(shape: CancelDomainConfigChangeRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelDomainConfigChangeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
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

      api.add_operation(:create_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/opensearch/application"
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
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

      api.add_operation(:create_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIndex"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/opensearch/domain/{DomainName}/index"
        o.input = Shapes::ShapeRef.new(shape: CreateIndexRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateIndexResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:delete_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplication"
        o.http_method = "DELETE"
        o.http_request_uri = "/2021-01-01/opensearch/application/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
      end)

      api.add_operation(:delete_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataSource"
        o.http_method = "DELETE"
        o.http_request_uri = "/2021-01-01/opensearch/domain/{DomainName}/dataSource/{DataSourceName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailureException)
      end)

      api.add_operation(:delete_direct_query_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDirectQueryDataSource"
        o.http_method = "DELETE"
        o.http_request_uri = "/2021-01-01/opensearch/directQueryDataSource/{DataSourceName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDirectQueryDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
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

      api.add_operation(:delete_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIndex"
        o.http_method = "DELETE"
        o.http_request_uri = "/2021-01-01/opensearch/domain/{DomainName}/index/{IndexName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteIndexRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteIndexResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:dissociate_packages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DissociatePackages"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/packages/dissociateMultiple"
        o.input = Shapes::ShapeRef.new(shape: DissociatePackagesRequest)
        o.output = Shapes::ShapeRef.new(shape: DissociatePackagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
      end)

      api.add_operation(:get_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApplication"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/application/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
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

      api.add_operation(:get_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataSource"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/domain/{DomainName}/dataSource/{DataSourceName}"
        o.input = Shapes::ShapeRef.new(shape: GetDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailureException)
      end)

      api.add_operation(:get_default_application_setting, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDefaultApplicationSetting"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/defaultApplicationSetting"
        o.input = Shapes::ShapeRef.new(shape: GetDefaultApplicationSettingRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDefaultApplicationSettingResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_direct_query_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDirectQueryDataSource"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/directQueryDataSource/{DataSourceName}"
        o.input = Shapes::ShapeRef.new(shape: GetDirectQueryDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDirectQueryDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
      end)

      api.add_operation(:get_domain_maintenance_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDomainMaintenanceStatus"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/domain/{DomainName}/domainMaintenance"
        o.input = Shapes::ShapeRef.new(shape: GetDomainMaintenanceStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDomainMaintenanceStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
      end)

      api.add_operation(:get_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIndex"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/domain/{DomainName}/index/{IndexName}"
        o.input = Shapes::ShapeRef.new(shape: GetIndexRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIndexResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:list_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplications"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/list-applications"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_data_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataSources"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/domain/{DomainName}/dataSource"
        o.input = Shapes::ShapeRef.new(shape: ListDataSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataSourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailureException)
      end)

      api.add_operation(:list_direct_query_data_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDirectQueryDataSources"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/directQueryDataSource"
        o.input = Shapes::ShapeRef.new(shape: ListDirectQueryDataSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDirectQueryDataSourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
      end)

      api.add_operation(:list_domain_maintenances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDomainMaintenances"
        o.http_method = "GET"
        o.http_request_uri = "/2021-01-01/opensearch/domain/{DomainName}/domainMaintenances"
        o.input = Shapes::ShapeRef.new(shape: ListDomainMaintenancesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDomainMaintenancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
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

      api.add_operation(:put_default_application_setting, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutDefaultApplicationSetting"
        o.http_method = "PUT"
        o.http_request_uri = "/2021-01-01/opensearch/defaultApplicationSetting"
        o.input = Shapes::ShapeRef.new(shape: PutDefaultApplicationSettingRequest)
        o.output = Shapes::ShapeRef.new(shape: PutDefaultApplicationSettingResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:start_domain_maintenance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDomainMaintenance"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/opensearch/domain/{DomainName}/domainMaintenance"
        o.input = Shapes::ShapeRef.new(shape: StartDomainMaintenanceRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDomainMaintenanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
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

      api.add_operation(:update_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApplication"
        o.http_method = "PUT"
        o.http_request_uri = "/2021-01-01/opensearch/application/{id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
      end)

      api.add_operation(:update_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataSource"
        o.http_method = "PUT"
        o.http_request_uri = "/2021-01-01/opensearch/domain/{DomainName}/dataSource/{DataSourceName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailureException)
      end)

      api.add_operation(:update_direct_query_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDirectQueryDataSource"
        o.http_method = "PUT"
        o.http_request_uri = "/2021-01-01/opensearch/directQueryDataSource/{DataSourceName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDirectQueryDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDirectQueryDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
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

      api.add_operation(:update_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIndex"
        o.http_method = "PUT"
        o.http_request_uri = "/2021-01-01/opensearch/domain/{DomainName}/index/{IndexName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateIndexRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateIndexResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:update_package_scope, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePackageScope"
        o.http_method = "POST"
        o.http_request_uri = "/2021-01-01/packages/updateScope"
        o.input = Shapes::ShapeRef.new(shape: UpdatePackageScopeRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePackageScopeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
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
