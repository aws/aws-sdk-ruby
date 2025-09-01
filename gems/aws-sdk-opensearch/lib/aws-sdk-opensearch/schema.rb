# frozen_string_literal: true

# This is generated code!

module Aws::OpenSearch
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AIMLOptionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AIMLOptionsInput', name: 'AIMLOptionsInput')
    AIMLOptionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AIMLOptionsOutput', name: 'AIMLOptionsOutput')
    AIMLOptionsStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AIMLOptionsStatus', name: 'AIMLOptionsStatus')
    ARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#ARN', name: 'ARN', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => ".*"})
    AWSAccount = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#AWSAccount', name: 'AWSAccount', traits: {"smithy.api#pattern" => "^[0-9]+$"})
    AWSDomainInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AWSDomainInformation', name: 'AWSDomainInformation')
    AWSServicePrincipal = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#AWSServicePrincipal', name: 'AWSServicePrincipal')
    AcceptInboundConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AcceptInboundConnectionRequest', name: 'AcceptInboundConnectionRequest')
    AcceptInboundConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AcceptInboundConnectionResponse', name: 'AcceptInboundConnectionResponse')
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessPoliciesStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AccessPoliciesStatus', name: 'AccessPoliciesStatus')
    ActionSeverity = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#ActionSeverity', name: 'ActionSeverity')
    ActionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#ActionStatus', name: 'ActionStatus')
    ActionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#ActionType', name: 'ActionType')
    AddDataSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AddDataSourceRequest', name: 'AddDataSourceRequest')
    AddDataSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AddDataSourceResponse', name: 'AddDataSourceResponse')
    AddDirectQueryDataSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AddDirectQueryDataSourceRequest', name: 'AddDirectQueryDataSourceRequest')
    AddDirectQueryDataSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AddDirectQueryDataSourceResponse', name: 'AddDirectQueryDataSourceResponse')
    AddTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AddTagsRequest', name: 'AddTagsRequest')
    AdditionalLimit = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AdditionalLimit', name: 'AdditionalLimit')
    AdditionalLimitList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#AdditionalLimitList', name: 'AdditionalLimitList')
    AdvancedOptions = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.opensearch#AdvancedOptions', name: 'AdvancedOptions')
    AdvancedOptionsStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AdvancedOptionsStatus', name: 'AdvancedOptionsStatus')
    AdvancedSecurityOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AdvancedSecurityOptions', name: 'AdvancedSecurityOptions')
    AdvancedSecurityOptionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AdvancedSecurityOptionsInput', name: 'AdvancedSecurityOptionsInput')
    AdvancedSecurityOptionsStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AdvancedSecurityOptionsStatus', name: 'AdvancedSecurityOptionsStatus')
    AppConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AppConfig', name: 'AppConfig')
    AppConfigType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#AppConfigType', name: 'AppConfigType')
    AppConfigValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#AppConfigValue', name: 'AppConfigValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    AppConfigs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#AppConfigs', name: 'AppConfigs', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ApplicationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#ApplicationName', name: 'ApplicationName', traits: {"smithy.api#length" => {"min" => 3, "max" => 30}, "smithy.api#pattern" => "^[a-z][a-z0-9\\-]+$"})
    ApplicationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#ApplicationStatus', name: 'ApplicationStatus')
    ApplicationStatuses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#ApplicationStatuses', name: 'ApplicationStatuses')
    ApplicationSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#ApplicationSummaries', name: 'ApplicationSummaries')
    ApplicationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ApplicationSummary', name: 'ApplicationSummary')
    AssociatePackageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AssociatePackageRequest', name: 'AssociatePackageRequest')
    AssociatePackageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AssociatePackageResponse', name: 'AssociatePackageResponse')
    AssociatePackagesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AssociatePackagesRequest', name: 'AssociatePackagesRequest')
    AssociatePackagesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AssociatePackagesResponse', name: 'AssociatePackagesResponse')
    AuthorizeVpcEndpointAccessRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AuthorizeVpcEndpointAccessRequest', name: 'AuthorizeVpcEndpointAccessRequest')
    AuthorizeVpcEndpointAccessResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AuthorizeVpcEndpointAccessResponse', name: 'AuthorizeVpcEndpointAccessResponse')
    AuthorizedPrincipal = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AuthorizedPrincipal', name: 'AuthorizedPrincipal')
    AuthorizedPrincipalList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#AuthorizedPrincipalList', name: 'AuthorizedPrincipalList')
    AutoTune = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AutoTune', name: 'AutoTune')
    AutoTuneDate = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.opensearch#AutoTuneDate', name: 'AutoTuneDate')
    AutoTuneDesiredState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#AutoTuneDesiredState', name: 'AutoTuneDesiredState')
    AutoTuneDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AutoTuneDetails', name: 'AutoTuneDetails')
    AutoTuneList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#AutoTuneList', name: 'AutoTuneList')
    AutoTuneMaintenanceSchedule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AutoTuneMaintenanceSchedule', name: 'AutoTuneMaintenanceSchedule')
    AutoTuneMaintenanceScheduleList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#AutoTuneMaintenanceScheduleList', name: 'AutoTuneMaintenanceScheduleList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    AutoTuneOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AutoTuneOptions', name: 'AutoTuneOptions')
    AutoTuneOptionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AutoTuneOptionsInput', name: 'AutoTuneOptionsInput')
    AutoTuneOptionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AutoTuneOptionsOutput', name: 'AutoTuneOptionsOutput')
    AutoTuneOptionsStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AutoTuneOptionsStatus', name: 'AutoTuneOptionsStatus')
    AutoTuneState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#AutoTuneState', name: 'AutoTuneState')
    AutoTuneStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AutoTuneStatus', name: 'AutoTuneStatus')
    AutoTuneType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#AutoTuneType', name: 'AutoTuneType')
    AvailabilityZone = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#AvailabilityZone', name: 'AvailabilityZone', traits: {"smithy.api#length" => {"min" => 1, "max" => 15}})
    AvailabilityZoneInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AvailabilityZoneInfo', name: 'AvailabilityZoneInfo')
    AvailabilityZoneInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#AvailabilityZoneInfoList', name: 'AvailabilityZoneInfoList')
    AvailabilityZoneList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#AvailabilityZoneList', name: 'AvailabilityZoneList')
    BackendRole = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#BackendRole', name: 'BackendRole', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    BaseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#BaseException', name: 'BaseException', traits: {"smithy.api#error" => "client"})
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.opensearch#Boolean', name: 'Boolean')
    CancelDomainConfigChangeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CancelDomainConfigChangeRequest', name: 'CancelDomainConfigChangeRequest')
    CancelDomainConfigChangeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CancelDomainConfigChangeResponse', name: 'CancelDomainConfigChangeResponse')
    CancelServiceSoftwareUpdateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CancelServiceSoftwareUpdateRequest', name: 'CancelServiceSoftwareUpdateRequest')
    CancelServiceSoftwareUpdateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CancelServiceSoftwareUpdateResponse', name: 'CancelServiceSoftwareUpdateResponse')
    CancelledChangeProperty = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CancelledChangeProperty', name: 'CancelledChangeProperty')
    CancelledChangePropertyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#CancelledChangePropertyList', name: 'CancelledChangePropertyList')
    ChangeProgressDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ChangeProgressDetails', name: 'ChangeProgressDetails')
    ChangeProgressStage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ChangeProgressStage', name: 'ChangeProgressStage')
    ChangeProgressStageList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#ChangeProgressStageList', name: 'ChangeProgressStageList')
    ChangeProgressStageName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#ChangeProgressStageName', name: 'ChangeProgressStageName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ChangeProgressStageStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#ChangeProgressStageStatus', name: 'ChangeProgressStageStatus', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ChangeProgressStatusDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ChangeProgressStatusDetails', name: 'ChangeProgressStatusDetails')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    CloudWatchDirectQueryDataSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CloudWatchDirectQueryDataSource', name: 'CloudWatchDirectQueryDataSource')
    CloudWatchLogsLogGroupArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#CloudWatchLogsLogGroupArn', name: 'CloudWatchLogsLogGroupArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => ".*"})
    ClusterConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ClusterConfig', name: 'ClusterConfig')
    ClusterConfigStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ClusterConfigStatus', name: 'ClusterConfigStatus')
    CognitoOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CognitoOptions', name: 'CognitoOptions')
    CognitoOptionsStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CognitoOptionsStatus', name: 'CognitoOptionsStatus')
    ColdStorageOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ColdStorageOptions', name: 'ColdStorageOptions')
    CommitMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#CommitMessage', name: 'CommitMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 160}})
    CompatibleVersionsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#CompatibleVersionsList', name: 'CompatibleVersionsList')
    CompatibleVersionsMap = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CompatibleVersionsMap', name: 'CompatibleVersionsMap')
    ConfigChangeStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#ConfigChangeStatus', name: 'ConfigChangeStatus')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectionAlias = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#ConnectionAlias', name: 'ConnectionAlias', traits: {"smithy.api#length" => {"min" => 2, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9\\-\\_]+$"})
    ConnectionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#ConnectionId', name: 'ConnectionId', traits: {"smithy.api#length" => {"min" => 10, "max" => 256}, "smithy.api#pattern" => "^[a-z][a-z0-9\\-]+$"})
    ConnectionMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#ConnectionMode', name: 'ConnectionMode')
    ConnectionProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ConnectionProperties', name: 'ConnectionProperties')
    ConnectionStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#ConnectionStatusMessage', name: 'ConnectionStatusMessage')
    CreateApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CreateApplicationRequest', name: 'CreateApplicationRequest')
    CreateApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CreateApplicationResponse', name: 'CreateApplicationResponse')
    CreateDomainRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CreateDomainRequest', name: 'CreateDomainRequest')
    CreateDomainResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CreateDomainResponse', name: 'CreateDomainResponse')
    CreateOutboundConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CreateOutboundConnectionRequest', name: 'CreateOutboundConnectionRequest')
    CreateOutboundConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CreateOutboundConnectionResponse', name: 'CreateOutboundConnectionResponse')
    CreatePackageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CreatePackageRequest', name: 'CreatePackageRequest')
    CreatePackageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CreatePackageResponse', name: 'CreatePackageResponse')
    CreateVpcEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CreateVpcEndpointRequest', name: 'CreateVpcEndpointRequest')
    CreateVpcEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CreateVpcEndpointResponse', name: 'CreateVpcEndpointResponse')
    CreatedAt = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.opensearch#CreatedAt', name: 'CreatedAt')
    CrossClusterSearchConnectionProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CrossClusterSearchConnectionProperties', name: 'CrossClusterSearchConnectionProperties')
    DataSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DataSource', name: 'DataSource')
    DataSourceDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#DataSourceDescription', name: 'DataSourceDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^([a-zA-Z0-9_])*[\\\\a-zA-Z0-9_@#%*+=:?./!\\s-]*$"})
    DataSourceDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DataSourceDetails', name: 'DataSourceDetails')
    DataSourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#DataSourceList', name: 'DataSourceList')
    DataSourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#DataSourceName', name: 'DataSourceName', traits: {"smithy.api#length" => {"min" => 3, "max" => 80}, "smithy.api#pattern" => "^[a-z][a-z0-9_]+$"})
    DataSourceStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#DataSourceStatus', name: 'DataSourceStatus')
    DataSourceType = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.opensearch#DataSourceType', name: 'DataSourceType')
    DataSources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#DataSources', name: 'DataSources')
    DeleteApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeleteApplicationRequest', name: 'DeleteApplicationRequest')
    DeleteApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeleteApplicationResponse', name: 'DeleteApplicationResponse')
    DeleteDataSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeleteDataSourceRequest', name: 'DeleteDataSourceRequest')
    DeleteDataSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeleteDataSourceResponse', name: 'DeleteDataSourceResponse')
    DeleteDirectQueryDataSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeleteDirectQueryDataSourceRequest', name: 'DeleteDirectQueryDataSourceRequest')
    DeleteDomainRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeleteDomainRequest', name: 'DeleteDomainRequest')
    DeleteDomainResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeleteDomainResponse', name: 'DeleteDomainResponse')
    DeleteInboundConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeleteInboundConnectionRequest', name: 'DeleteInboundConnectionRequest')
    DeleteInboundConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeleteInboundConnectionResponse', name: 'DeleteInboundConnectionResponse')
    DeleteOutboundConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeleteOutboundConnectionRequest', name: 'DeleteOutboundConnectionRequest')
    DeleteOutboundConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeleteOutboundConnectionResponse', name: 'DeleteOutboundConnectionResponse')
    DeletePackageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeletePackageRequest', name: 'DeletePackageRequest')
    DeletePackageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeletePackageResponse', name: 'DeletePackageResponse')
    DeleteVpcEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeleteVpcEndpointRequest', name: 'DeleteVpcEndpointRequest')
    DeleteVpcEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeleteVpcEndpointResponse', name: 'DeleteVpcEndpointResponse')
    DependencyFailureException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DependencyFailureException', name: 'DependencyFailureException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 424})
    DeploymentCloseDateTimeStamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.opensearch#DeploymentCloseDateTimeStamp', name: 'DeploymentCloseDateTimeStamp')
    DeploymentStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#DeploymentStatus', name: 'DeploymentStatus')
    DeploymentType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#DeploymentType', name: 'DeploymentType', traits: {"smithy.api#length" => {"min" => 2, "max" => 128}})
    DescribeDomainAutoTunesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDomainAutoTunesRequest', name: 'DescribeDomainAutoTunesRequest')
    DescribeDomainAutoTunesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDomainAutoTunesResponse', name: 'DescribeDomainAutoTunesResponse')
    DescribeDomainChangeProgressRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDomainChangeProgressRequest', name: 'DescribeDomainChangeProgressRequest')
    DescribeDomainChangeProgressResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDomainChangeProgressResponse', name: 'DescribeDomainChangeProgressResponse')
    DescribeDomainConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDomainConfigRequest', name: 'DescribeDomainConfigRequest')
    DescribeDomainConfigResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDomainConfigResponse', name: 'DescribeDomainConfigResponse')
    DescribeDomainHealthRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDomainHealthRequest', name: 'DescribeDomainHealthRequest')
    DescribeDomainHealthResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDomainHealthResponse', name: 'DescribeDomainHealthResponse')
    DescribeDomainNodesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDomainNodesRequest', name: 'DescribeDomainNodesRequest')
    DescribeDomainNodesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDomainNodesResponse', name: 'DescribeDomainNodesResponse')
    DescribeDomainRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDomainRequest', name: 'DescribeDomainRequest')
    DescribeDomainResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDomainResponse', name: 'DescribeDomainResponse')
    DescribeDomainsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDomainsRequest', name: 'DescribeDomainsRequest')
    DescribeDomainsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDomainsResponse', name: 'DescribeDomainsResponse')
    DescribeDryRunProgressRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDryRunProgressRequest', name: 'DescribeDryRunProgressRequest')
    DescribeDryRunProgressResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDryRunProgressResponse', name: 'DescribeDryRunProgressResponse')
    DescribeInboundConnectionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeInboundConnectionsRequest', name: 'DescribeInboundConnectionsRequest')
    DescribeInboundConnectionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeInboundConnectionsResponse', name: 'DescribeInboundConnectionsResponse')
    DescribeInstanceTypeLimitsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeInstanceTypeLimitsRequest', name: 'DescribeInstanceTypeLimitsRequest')
    DescribeInstanceTypeLimitsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeInstanceTypeLimitsResponse', name: 'DescribeInstanceTypeLimitsResponse')
    DescribeOutboundConnectionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeOutboundConnectionsRequest', name: 'DescribeOutboundConnectionsRequest')
    DescribeOutboundConnectionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeOutboundConnectionsResponse', name: 'DescribeOutboundConnectionsResponse')
    DescribePackagesFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribePackagesFilter', name: 'DescribePackagesFilter')
    DescribePackagesFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#DescribePackagesFilterList', name: 'DescribePackagesFilterList')
    DescribePackagesFilterName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#DescribePackagesFilterName', name: 'DescribePackagesFilterName')
    DescribePackagesFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#DescribePackagesFilterValue', name: 'DescribePackagesFilterValue', traits: {"smithy.api#pattern" => "^[0-9a-zA-Z\\*\\.\\_\\\\\\/\\?-]+$"})
    DescribePackagesFilterValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#DescribePackagesFilterValues', name: 'DescribePackagesFilterValues', traits: {"smithy.api#length" => {"min" => 1}})
    DescribePackagesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribePackagesRequest', name: 'DescribePackagesRequest')
    DescribePackagesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribePackagesResponse', name: 'DescribePackagesResponse')
    DescribeReservedInstanceOfferingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeReservedInstanceOfferingsRequest', name: 'DescribeReservedInstanceOfferingsRequest')
    DescribeReservedInstanceOfferingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeReservedInstanceOfferingsResponse', name: 'DescribeReservedInstanceOfferingsResponse')
    DescribeReservedInstancesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeReservedInstancesRequest', name: 'DescribeReservedInstancesRequest')
    DescribeReservedInstancesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeReservedInstancesResponse', name: 'DescribeReservedInstancesResponse')
    DescribeVpcEndpointsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeVpcEndpointsRequest', name: 'DescribeVpcEndpointsRequest')
    DescribeVpcEndpointsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeVpcEndpointsResponse', name: 'DescribeVpcEndpointsResponse')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#Description', name: 'Description')
    DirectQueryDataSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DirectQueryDataSource', name: 'DirectQueryDataSource')
    DirectQueryDataSourceDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#DirectQueryDataSourceDescription', name: 'DirectQueryDataSourceDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^([a-zA-Z0-9_])*[\\\\a-zA-Z0-9_@#%*+=:?./!\\s-]*$"})
    DirectQueryDataSourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#DirectQueryDataSourceList', name: 'DirectQueryDataSourceList')
    DirectQueryDataSourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#DirectQueryDataSourceName', name: 'DirectQueryDataSourceName', traits: {"smithy.api#length" => {"min" => 3, "max" => 80}, "smithy.api#pattern" => "^[a-z][a-z0-9_]+$"})
    DirectQueryDataSourceRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#DirectQueryDataSourceRoleArn', name: 'DirectQueryDataSourceRoleArn', traits: {"smithy.api#length" => {"min" => 32, "max" => 200}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:iam::\\d{12}:role(\\/service-role)?\\/[A-Za-z0-9+=,.@\\-_]{1,64}$"})
    DirectQueryDataSourceType = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.opensearch#DirectQueryDataSourceType', name: 'DirectQueryDataSourceType')
    DirectQueryOpenSearchARNList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#DirectQueryOpenSearchARNList', name: 'DirectQueryOpenSearchARNList')
    DisableTimestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.opensearch#DisableTimestamp', name: 'DisableTimestamp')
    DisabledOperationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DisabledOperationException', name: 'DisabledOperationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DissociatePackageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DissociatePackageRequest', name: 'DissociatePackageRequest')
    DissociatePackageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DissociatePackageResponse', name: 'DissociatePackageResponse')
    DissociatePackagesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DissociatePackagesRequest', name: 'DissociatePackagesRequest')
    DissociatePackagesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DissociatePackagesResponse', name: 'DissociatePackagesResponse')
    DomainArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#DomainArn', name: 'DomainArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:[a-z]+:[a-z0-9\\-]+:[0-9]+:domain\\/[a-z0-9\\-]+$"})
    DomainConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DomainConfig', name: 'DomainConfig')
    DomainEndpointOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DomainEndpointOptions', name: 'DomainEndpointOptions')
    DomainEndpointOptionsStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DomainEndpointOptionsStatus', name: 'DomainEndpointOptionsStatus')
    DomainHealth = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#DomainHealth', name: 'DomainHealth')
    DomainId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#DomainId', name: 'DomainId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    DomainInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DomainInfo', name: 'DomainInfo')
    DomainInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#DomainInfoList', name: 'DomainInfoList')
    DomainInformationContainer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DomainInformationContainer', name: 'DomainInformationContainer')
    DomainMaintenanceDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DomainMaintenanceDetails', name: 'DomainMaintenanceDetails')
    DomainMaintenanceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#DomainMaintenanceList', name: 'DomainMaintenanceList')
    DomainName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#DomainName', name: 'DomainName', traits: {"smithy.api#length" => {"min" => 3, "max" => 28}, "smithy.api#pattern" => "^[a-z][a-z0-9\\-]+$"})
    DomainNameFqdn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#DomainNameFqdn', name: 'DomainNameFqdn', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$"})
    DomainNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#DomainNameList', name: 'DomainNameList')
    DomainNodesStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DomainNodesStatus', name: 'DomainNodesStatus')
    DomainNodesStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#DomainNodesStatusList', name: 'DomainNodesStatusList')
    DomainPackageDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DomainPackageDetails', name: 'DomainPackageDetails')
    DomainPackageDetailsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#DomainPackageDetailsList', name: 'DomainPackageDetailsList')
    DomainPackageStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#DomainPackageStatus', name: 'DomainPackageStatus')
    DomainProcessingStatusType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#DomainProcessingStatusType', name: 'DomainProcessingStatusType')
    DomainState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#DomainState', name: 'DomainState')
    DomainStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DomainStatus', name: 'DomainStatus')
    DomainStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#DomainStatusList', name: 'DomainStatusList')
    Double = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.opensearch#Double', name: 'Double')
    DryRun = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.opensearch#DryRun', name: 'DryRun')
    DryRunMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#DryRunMode', name: 'DryRunMode')
    DryRunProgressStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DryRunProgressStatus', name: 'DryRunProgressStatus')
    DryRunResults = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DryRunResults', name: 'DryRunResults')
    Duration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#Duration', name: 'Duration')
    DurationValue = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opensearch#DurationValue', name: 'DurationValue', traits: {"smithy.api#range" => {"min" => 1, "max" => 24}})
    EBSOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#EBSOptions', name: 'EBSOptions')
    EBSOptionsStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#EBSOptionsStatus', name: 'EBSOptionsStatus')
    EncryptionAtRestOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#EncryptionAtRestOptions', name: 'EncryptionAtRestOptions')
    EncryptionAtRestOptionsStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#EncryptionAtRestOptionsStatus', name: 'EncryptionAtRestOptionsStatus')
    Endpoint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#Endpoint', name: 'Endpoint', traits: {"smithy.api#pattern" => "^[A-Za-z0-9\\-\\.]+$"})
    EndpointsMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.opensearch#EndpointsMap', name: 'EndpointsMap')
    EngineType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#EngineType', name: 'EngineType')
    EngineVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#EngineVersion', name: 'EngineVersion', traits: {"smithy.api#pattern" => "^Elasticsearch_[0-9]{1}\\.[0-9]{1,2}$|^OpenSearch_[0-9]{1,2}\\.[0-9]{1,2}$"})
    EnvironmentInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#EnvironmentInfo', name: 'EnvironmentInfo')
    EnvironmentInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#EnvironmentInfoList', name: 'EnvironmentInfoList')
    ErrorDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ErrorDetails', name: 'ErrorDetails')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#ErrorMessage', name: 'ErrorMessage')
    ErrorType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#ErrorType', name: 'ErrorType')
    Filter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#Filter', name: 'Filter')
    FilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#FilterList', name: 'FilterList')
    GUID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#GUID', name: 'GUID', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^\\p{XDigit}{8}-\\p{XDigit}{4}-\\p{XDigit}{4}-\\p{XDigit}{4}-\\p{XDigit}{12}$"})
    GUIDList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#GUIDList', name: 'GUIDList')
    GetApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetApplicationRequest', name: 'GetApplicationRequest')
    GetApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetApplicationResponse', name: 'GetApplicationResponse')
    GetCompatibleVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetCompatibleVersionsRequest', name: 'GetCompatibleVersionsRequest')
    GetCompatibleVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetCompatibleVersionsResponse', name: 'GetCompatibleVersionsResponse')
    GetDataSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetDataSourceRequest', name: 'GetDataSourceRequest')
    GetDataSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetDataSourceResponse', name: 'GetDataSourceResponse')
    GetDirectQueryDataSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetDirectQueryDataSourceRequest', name: 'GetDirectQueryDataSourceRequest')
    GetDirectQueryDataSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetDirectQueryDataSourceResponse', name: 'GetDirectQueryDataSourceResponse')
    GetDomainMaintenanceStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetDomainMaintenanceStatusRequest', name: 'GetDomainMaintenanceStatusRequest')
    GetDomainMaintenanceStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetDomainMaintenanceStatusResponse', name: 'GetDomainMaintenanceStatusResponse')
    GetPackageVersionHistoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetPackageVersionHistoryRequest', name: 'GetPackageVersionHistoryRequest')
    GetPackageVersionHistoryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetPackageVersionHistoryResponse', name: 'GetPackageVersionHistoryResponse')
    GetUpgradeHistoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetUpgradeHistoryRequest', name: 'GetUpgradeHistoryRequest')
    GetUpgradeHistoryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetUpgradeHistoryResponse', name: 'GetUpgradeHistoryResponse')
    GetUpgradeStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetUpgradeStatusRequest', name: 'GetUpgradeStatusRequest')
    GetUpgradeStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetUpgradeStatusResponse', name: 'GetUpgradeStatusResponse')
    HostedZoneId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#HostedZoneId', name: 'HostedZoneId')
    IAMFederationOptionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#IAMFederationOptionsInput', name: 'IAMFederationOptionsInput')
    IAMFederationOptionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#IAMFederationOptionsOutput', name: 'IAMFederationOptionsOutput')
    IAMFederationRolesKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#IAMFederationRolesKey', name: 'IAMFederationRolesKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^(null|[A-Za-z][A-Za-z0-9_.:/=+\\-@]*)$"})
    IAMFederationSubjectKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#IAMFederationSubjectKey', name: 'IAMFederationSubjectKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^(null|[A-Za-z][A-Za-z0-9_.:/=+\\-@]*)$"})
    IPAddressType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#IPAddressType', name: 'IPAddressType')
    IPAddressTypeStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#IPAddressTypeStatus', name: 'IPAddressTypeStatus')
    IamIdentityCenterOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#IamIdentityCenterOptions', name: 'IamIdentityCenterOptions')
    IamIdentityCenterOptionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#IamIdentityCenterOptionsInput', name: 'IamIdentityCenterOptionsInput')
    Id = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#Id', name: 'Id', traits: {"smithy.api#pattern" => "^[a-z0-9]{3,30}$"})
    IdentityCenterApplicationARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#IdentityCenterApplicationARN', name: 'IdentityCenterApplicationARN', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-z\\\\-]*:[a-z]+:[a-z0-9\\\\-]*:[0-9]*:[a-z0-9\\\\-]+\\/[a-z0-9\\\\-]+\\/[a-z0-9\\\\-]+$"})
    IdentityCenterInstanceARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#IdentityCenterInstanceARN', name: 'IdentityCenterInstanceARN', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-z\\\\-]*:[a-z]+:[a-z0-9\\\\-]*:[0-9]*:[a-z0-9\\\\-]+\\/[a-z0-9\\\\-]+$"})
    IdentityCenterOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#IdentityCenterOptions', name: 'IdentityCenterOptions')
    IdentityCenterOptionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#IdentityCenterOptionsInput', name: 'IdentityCenterOptionsInput')
    IdentityCenterOptionsStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#IdentityCenterOptionsStatus', name: 'IdentityCenterOptionsStatus')
    IdentityPoolId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#IdentityPoolId', name: 'IdentityPoolId', traits: {"smithy.api#length" => {"min" => 1, "max" => 55}, "smithy.api#pattern" => "^[\\w-]+:[0-9a-f-]+$"})
    IdentityStoreId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#IdentityStoreId', name: 'IdentityStoreId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^d-[0-9a-f]{10}$|^[0-9a-f]{8}\\\\b-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-\\\\b[0-9a-f]{12}$"})
    InboundConnection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#InboundConnection', name: 'InboundConnection')
    InboundConnectionStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#InboundConnectionStatus', name: 'InboundConnectionStatus')
    InboundConnectionStatusCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#InboundConnectionStatusCode', name: 'InboundConnectionStatusCode')
    InboundConnections = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#InboundConnections', name: 'InboundConnections')
    InitiatedBy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#InitiatedBy', name: 'InitiatedBy')
    InstanceCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opensearch#InstanceCount', name: 'InstanceCount', traits: {"smithy.api#range" => {"min" => 1}})
    InstanceCountLimits = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#InstanceCountLimits', name: 'InstanceCountLimits')
    InstanceLimits = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#InstanceLimits', name: 'InstanceLimits')
    InstanceRole = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#InstanceRole', name: 'InstanceRole')
    InstanceRoleList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#InstanceRoleList', name: 'InstanceRoleList')
    InstanceTypeDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#InstanceTypeDetails', name: 'InstanceTypeDetails')
    InstanceTypeDetailsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#InstanceTypeDetailsList', name: 'InstanceTypeDetailsList')
    InstanceTypeString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#InstanceTypeString', name: 'InstanceTypeString', traits: {"smithy.api#length" => {"min" => 10, "max" => 40}, "smithy.api#pattern" => "^.*\\..*\\.search$"})
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opensearch#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    IntegerClass = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opensearch#IntegerClass', name: 'IntegerClass')
    InternalException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#InternalException', name: 'InternalException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidPaginationTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#InvalidPaginationTokenException', name: 'InvalidPaginationTokenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTypeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#InvalidTypeException', name: 'InvalidTypeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Issue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#Issue', name: 'Issue')
    Issues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#Issues', name: 'Issues')
    JWTOptionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#JWTOptionsInput', name: 'JWTOptionsInput')
    JWTOptionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#JWTOptionsOutput', name: 'JWTOptionsOutput')
    KeyStoreAccessOption = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#KeyStoreAccessOption', name: 'KeyStoreAccessOption')
    KmsKeyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#KmsKeyId', name: 'KmsKeyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}, "smithy.api#pattern" => ".*"})
    LastUpdated = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.opensearch#LastUpdated', name: 'LastUpdated')
    LicenseFilepath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#LicenseFilepath', name: 'LicenseFilepath', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^(?!.*\\/\\.{2,})(?!.*\\.\\.)[a-zA-Z0-9_.-]+(?:\\/[a-zA-Z0-9_.-]+)*$"})
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    LimitName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#LimitName', name: 'LimitName')
    LimitValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#LimitValue', name: 'LimitValue')
    LimitValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#LimitValueList', name: 'LimitValueList')
    Limits = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#Limits', name: 'Limits')
    LimitsByRole = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.opensearch#LimitsByRole', name: 'LimitsByRole')
    ListApplicationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListApplicationsRequest', name: 'ListApplicationsRequest')
    ListApplicationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListApplicationsResponse', name: 'ListApplicationsResponse')
    ListDataSourcesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListDataSourcesRequest', name: 'ListDataSourcesRequest')
    ListDataSourcesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListDataSourcesResponse', name: 'ListDataSourcesResponse')
    ListDirectQueryDataSourcesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListDirectQueryDataSourcesRequest', name: 'ListDirectQueryDataSourcesRequest')
    ListDirectQueryDataSourcesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListDirectQueryDataSourcesResponse', name: 'ListDirectQueryDataSourcesResponse')
    ListDomainMaintenancesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListDomainMaintenancesRequest', name: 'ListDomainMaintenancesRequest')
    ListDomainMaintenancesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListDomainMaintenancesResponse', name: 'ListDomainMaintenancesResponse')
    ListDomainNamesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListDomainNamesRequest', name: 'ListDomainNamesRequest')
    ListDomainNamesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListDomainNamesResponse', name: 'ListDomainNamesResponse')
    ListDomainsForPackageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListDomainsForPackageRequest', name: 'ListDomainsForPackageRequest')
    ListDomainsForPackageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListDomainsForPackageResponse', name: 'ListDomainsForPackageResponse')
    ListInstanceTypeDetailsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListInstanceTypeDetailsRequest', name: 'ListInstanceTypeDetailsRequest')
    ListInstanceTypeDetailsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListInstanceTypeDetailsResponse', name: 'ListInstanceTypeDetailsResponse')
    ListPackagesForDomainRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListPackagesForDomainRequest', name: 'ListPackagesForDomainRequest')
    ListPackagesForDomainResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListPackagesForDomainResponse', name: 'ListPackagesForDomainResponse')
    ListScheduledActionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListScheduledActionsRequest', name: 'ListScheduledActionsRequest')
    ListScheduledActionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListScheduledActionsResponse', name: 'ListScheduledActionsResponse')
    ListTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListTagsRequest', name: 'ListTagsRequest')
    ListTagsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListTagsResponse', name: 'ListTagsResponse')
    ListVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListVersionsRequest', name: 'ListVersionsRequest')
    ListVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListVersionsResponse', name: 'ListVersionsResponse')
    ListVpcEndpointAccessRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListVpcEndpointAccessRequest', name: 'ListVpcEndpointAccessRequest')
    ListVpcEndpointAccessResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListVpcEndpointAccessResponse', name: 'ListVpcEndpointAccessResponse')
    ListVpcEndpointsForDomainRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListVpcEndpointsForDomainRequest', name: 'ListVpcEndpointsForDomainRequest')
    ListVpcEndpointsForDomainResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListVpcEndpointsForDomainResponse', name: 'ListVpcEndpointsForDomainResponse')
    ListVpcEndpointsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListVpcEndpointsRequest', name: 'ListVpcEndpointsRequest')
    ListVpcEndpointsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListVpcEndpointsResponse', name: 'ListVpcEndpointsResponse')
    LogPublishingOption = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#LogPublishingOption', name: 'LogPublishingOption')
    LogPublishingOptions = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.opensearch#LogPublishingOptions', name: 'LogPublishingOptions')
    LogPublishingOptionsStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#LogPublishingOptionsStatus', name: 'LogPublishingOptionsStatus')
    LogType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#LogType', name: 'LogType')
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opensearch#Long', name: 'Long')
    MaintenanceStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#MaintenanceStatus', name: 'MaintenanceStatus')
    MaintenanceStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#MaintenanceStatusMessage', name: 'MaintenanceStatusMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^([\\s\\S]*)$"})
    MaintenanceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#MaintenanceType', name: 'MaintenanceType')
    MasterNodeStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#MasterNodeStatus', name: 'MasterNodeStatus')
    MasterUserOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#MasterUserOptions', name: 'MasterUserOptions')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opensearch#MaxResults', name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"max" => 100}})
    MaximumInstanceCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opensearch#MaximumInstanceCount', name: 'MaximumInstanceCount', traits: {"smithy.api#default" => 0})
    Message = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#Message', name: 'Message', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    MinimumInstanceCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opensearch#MinimumInstanceCount', name: 'MinimumInstanceCount', traits: {"smithy.api#default" => 0})
    ModifyingProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ModifyingProperties', name: 'ModifyingProperties')
    ModifyingPropertiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#ModifyingPropertiesList', name: 'ModifyingPropertiesList')
    NaturalLanguageQueryGenerationCurrentState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#NaturalLanguageQueryGenerationCurrentState', name: 'NaturalLanguageQueryGenerationCurrentState')
    NaturalLanguageQueryGenerationDesiredState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#NaturalLanguageQueryGenerationDesiredState', name: 'NaturalLanguageQueryGenerationDesiredState')
    NaturalLanguageQueryGenerationOptionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#NaturalLanguageQueryGenerationOptionsInput', name: 'NaturalLanguageQueryGenerationOptionsInput')
    NaturalLanguageQueryGenerationOptionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#NaturalLanguageQueryGenerationOptionsOutput', name: 'NaturalLanguageQueryGenerationOptionsOutput')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#NextToken', name: 'NextToken')
    NodeConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#NodeConfig', name: 'NodeConfig')
    NodeId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#NodeId', name: 'NodeId', traits: {"smithy.api#length" => {"min" => 10, "max" => 40}})
    NodeOption = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#NodeOption', name: 'NodeOption')
    NodeOptionsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#NodeOptionsList', name: 'NodeOptionsList')
    NodeOptionsNodeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#NodeOptionsNodeType', name: 'NodeOptionsNodeType')
    NodeStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#NodeStatus', name: 'NodeStatus')
    NodeToNodeEncryptionOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#NodeToNodeEncryptionOptions', name: 'NodeToNodeEncryptionOptions')
    NodeToNodeEncryptionOptionsStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#NodeToNodeEncryptionOptionsStatus', name: 'NodeToNodeEncryptionOptionsStatus')
    NodeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#NodeType', name: 'NodeType')
    NonEmptyString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#NonEmptyString', name: 'NonEmptyString', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_\\.]+$"})
    NumberOfAZs = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#NumberOfAZs', name: 'NumberOfAZs', traits: {"smithy.api#pattern" => "^((\\d+)|(NotAvailable))$"})
    NumberOfNodes = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#NumberOfNodes', name: 'NumberOfNodes', traits: {"smithy.api#pattern" => "^((\\d+)|(NotAvailable))$"})
    NumberOfShards = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#NumberOfShards', name: 'NumberOfShards', traits: {"smithy.api#pattern" => "^((\\d+)|(NotAvailable))$"})
    OffPeakWindow = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#OffPeakWindow', name: 'OffPeakWindow')
    OffPeakWindowOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#OffPeakWindowOptions', name: 'OffPeakWindowOptions')
    OffPeakWindowOptionsStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#OffPeakWindowOptionsStatus', name: 'OffPeakWindowOptionsStatus')
    OpenSearchPartitionInstanceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#OpenSearchPartitionInstanceType', name: 'OpenSearchPartitionInstanceType')
    OpenSearchWarmPartitionInstanceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#OpenSearchWarmPartitionInstanceType', name: 'OpenSearchWarmPartitionInstanceType')
    OptionState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#OptionState', name: 'OptionState')
    OptionStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#OptionStatus', name: 'OptionStatus')
    OutboundConnection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#OutboundConnection', name: 'OutboundConnection')
    OutboundConnectionStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#OutboundConnectionStatus', name: 'OutboundConnectionStatus')
    OutboundConnectionStatusCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#OutboundConnectionStatusCode', name: 'OutboundConnectionStatusCode')
    OutboundConnections = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#OutboundConnections', name: 'OutboundConnections')
    OverallChangeStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#OverallChangeStatus', name: 'OverallChangeStatus')
    OwnerId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#OwnerId', name: 'OwnerId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]+$"})
    PackageAssociationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#PackageAssociationConfiguration', name: 'PackageAssociationConfiguration')
    PackageConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#PackageConfiguration', name: 'PackageConfiguration')
    PackageDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#PackageDescription', name: 'PackageDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    PackageDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#PackageDetails', name: 'PackageDetails')
    PackageDetailsForAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#PackageDetailsForAssociation', name: 'PackageDetailsForAssociation')
    PackageDetailsForAssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#PackageDetailsForAssociationList', name: 'PackageDetailsForAssociationList')
    PackageDetailsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#PackageDetailsList', name: 'PackageDetailsList')
    PackageEncryptionOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#PackageEncryptionOptions', name: 'PackageEncryptionOptions')
    PackageID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#PackageID', name: 'PackageID', traits: {"smithy.api#pattern" => "^([FG][0-9]+)$|^(pkg-[a-f0-9]+)$"})
    PackageIDList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#PackageIDList', name: 'PackageIDList')
    PackageName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#PackageName', name: 'PackageName', traits: {"smithy.api#length" => {"min" => 3, "max" => 256}, "smithy.api#pattern" => "^[a-z][a-z0-9\\-]+$"})
    PackageOwner = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#PackageOwner', name: 'PackageOwner', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    PackageScopeOperationEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#PackageScopeOperationEnum', name: 'PackageScopeOperationEnum')
    PackageSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#PackageSource', name: 'PackageSource')
    PackageStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#PackageStatus', name: 'PackageStatus')
    PackageType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#PackageType', name: 'PackageType')
    PackageUser = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#PackageUser', name: 'PackageUser', traits: {"smithy.api#length" => {"min" => 6, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$|^GLOBAL$"})
    PackageUserList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#PackageUserList', name: 'PackageUserList')
    PackageVendingOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#PackageVendingOptions', name: 'PackageVendingOptions')
    PackageVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#PackageVersion', name: 'PackageVersion')
    PackageVersionHistory = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#PackageVersionHistory', name: 'PackageVersionHistory')
    PackageVersionHistoryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#PackageVersionHistoryList', name: 'PackageVersionHistoryList')
    Password = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#Password', name: 'Password', traits: {"smithy.api#length" => {"min" => 8, "max" => 128}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    PluginClassName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#PluginClassName', name: 'PluginClassName', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    PluginDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#PluginDescription', name: 'PluginDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    PluginName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#PluginName', name: 'PluginName', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    PluginProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#PluginProperties', name: 'PluginProperties')
    PluginVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#PluginVersion', name: 'PluginVersion', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    PolicyDocument = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#PolicyDocument', name: 'PolicyDocument', traits: {"smithy.api#length" => {"min" => 0, "max" => 102400}, "smithy.api#pattern" => ".*"})
    PrincipalType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#PrincipalType', name: 'PrincipalType')
    PropertyValueType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#PropertyValueType', name: 'PropertyValueType')
    PurchaseReservedInstanceOfferingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#PurchaseReservedInstanceOfferingRequest', name: 'PurchaseReservedInstanceOfferingRequest')
    PurchaseReservedInstanceOfferingResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#PurchaseReservedInstanceOfferingResponse', name: 'PurchaseReservedInstanceOfferingResponse')
    RecurringCharge = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#RecurringCharge', name: 'RecurringCharge')
    RecurringChargeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#RecurringChargeList', name: 'RecurringChargeList')
    ReferencePath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#ReferencePath', name: 'ReferencePath')
    Region = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#Region', name: 'Region', traits: {"smithy.api#length" => {"min" => 5, "max" => 30}, "smithy.api#pattern" => "^[a-z][a-z0-9\\-]+$"})
    RejectInboundConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#RejectInboundConnectionRequest', name: 'RejectInboundConnectionRequest')
    RejectInboundConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#RejectInboundConnectionResponse', name: 'RejectInboundConnectionResponse')
    RemoveTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#RemoveTagsRequest', name: 'RemoveTagsRequest')
    RequestId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#RequestId', name: 'RequestId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([\\s\\S]*)$"})
    RequirementLevel = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#RequirementLevel', name: 'RequirementLevel')
    ReservationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#ReservationToken', name: 'ReservationToken', traits: {"smithy.api#length" => {"min" => 5, "max" => 64}, "smithy.api#pattern" => ".*"})
    ReservedInstance = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ReservedInstance', name: 'ReservedInstance')
    ReservedInstanceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#ReservedInstanceList', name: 'ReservedInstanceList')
    ReservedInstanceOffering = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ReservedInstanceOffering', name: 'ReservedInstanceOffering')
    ReservedInstanceOfferingList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#ReservedInstanceOfferingList', name: 'ReservedInstanceOfferingList')
    ReservedInstancePaymentOption = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#ReservedInstancePaymentOption', name: 'ReservedInstancePaymentOption')
    ResourceAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ResourceAlreadyExistsException', name: 'ResourceAlreadyExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    RevokeVpcEndpointAccessRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#RevokeVpcEndpointAccessRequest', name: 'RevokeVpcEndpointAccessRequest')
    RevokeVpcEndpointAccessResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#RevokeVpcEndpointAccessResponse', name: 'RevokeVpcEndpointAccessResponse')
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws|aws\\-cn|aws\\-us\\-gov|aws\\-iso|aws\\-iso\\-b):iam::[0-9]+:role\\/"})
    RolesKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#RolesKey', name: 'RolesKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    RolesKeyIdCOption = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#RolesKeyIdCOption', name: 'RolesKeyIdCOption')
    RollbackOnDisable = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#RollbackOnDisable', name: 'RollbackOnDisable')
    S3BucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#S3BucketName', name: 'S3BucketName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}})
    S3GlueDataCatalog = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#S3GlueDataCatalog', name: 'S3GlueDataCatalog')
    S3Key = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#S3Key', name: 'S3Key', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    S3VectorsEngine = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#S3VectorsEngine', name: 'S3VectorsEngine')
    SAMLEntityId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#SAMLEntityId', name: 'SAMLEntityId', traits: {"smithy.api#length" => {"min" => 8, "max" => 512}})
    SAMLIdp = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#SAMLIdp', name: 'SAMLIdp')
    SAMLMetadata = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#SAMLMetadata', name: 'SAMLMetadata', traits: {"smithy.api#length" => {"min" => 1, "max" => 1048576}})
    SAMLOptionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#SAMLOptionsInput', name: 'SAMLOptionsInput')
    SAMLOptionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#SAMLOptionsOutput', name: 'SAMLOptionsOutput')
    ScheduleAt = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#ScheduleAt', name: 'ScheduleAt')
    ScheduledAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ScheduledAction', name: 'ScheduledAction')
    ScheduledActionsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#ScheduledActionsList', name: 'ScheduledActionsList')
    ScheduledAutoTuneActionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#ScheduledAutoTuneActionType', name: 'ScheduledAutoTuneActionType')
    ScheduledAutoTuneDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#ScheduledAutoTuneDescription', name: 'ScheduledAutoTuneDescription')
    ScheduledAutoTuneDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ScheduledAutoTuneDetails', name: 'ScheduledAutoTuneDetails')
    ScheduledAutoTuneSeverityType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#ScheduledAutoTuneSeverityType', name: 'ScheduledAutoTuneSeverityType')
    ScheduledBy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#ScheduledBy', name: 'ScheduledBy')
    SecurityLakeDirectQueryDataSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#SecurityLakeDirectQueryDataSource', name: 'SecurityLakeDirectQueryDataSource')
    ServiceSoftwareOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ServiceSoftwareOptions', name: 'ServiceSoftwareOptions')
    ServiceUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#ServiceUrl', name: 'ServiceUrl')
    SkipUnavailableStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#SkipUnavailableStatus', name: 'SkipUnavailableStatus')
    SlotList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#SlotList', name: 'SlotList')
    SlotNotAvailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#SlotNotAvailableException', name: 'SlotNotAvailableException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    SnapshotOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#SnapshotOptions', name: 'SnapshotOptions')
    SnapshotOptionsStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#SnapshotOptionsStatus', name: 'SnapshotOptionsStatus')
    SoftwareUpdateOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#SoftwareUpdateOptions', name: 'SoftwareUpdateOptions')
    SoftwareUpdateOptionsStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#SoftwareUpdateOptionsStatus', name: 'SoftwareUpdateOptionsStatus')
    StartAt = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.opensearch#StartAt', name: 'StartAt')
    StartDomainMaintenanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#StartDomainMaintenanceRequest', name: 'StartDomainMaintenanceRequest')
    StartDomainMaintenanceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#StartDomainMaintenanceResponse', name: 'StartDomainMaintenanceResponse')
    StartServiceSoftwareUpdateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#StartServiceSoftwareUpdateRequest', name: 'StartServiceSoftwareUpdateRequest')
    StartServiceSoftwareUpdateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#StartServiceSoftwareUpdateResponse', name: 'StartServiceSoftwareUpdateResponse')
    StartTimeHours = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opensearch#StartTimeHours', name: 'StartTimeHours', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 23}})
    StartTimeMinutes = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opensearch#StartTimeMinutes', name: 'StartTimeMinutes', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 59}})
    StartTimestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.opensearch#StartTimestamp', name: 'StartTimestamp')
    StorageSubTypeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#StorageSubTypeName', name: 'StorageSubTypeName')
    StorageType = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#StorageType', name: 'StorageType')
    StorageTypeLimit = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#StorageTypeLimit', name: 'StorageTypeLimit')
    StorageTypeLimitList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#StorageTypeLimitList', name: 'StorageTypeLimitList')
    StorageTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#StorageTypeList', name: 'StorageTypeList')
    StorageTypeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#StorageTypeName', name: 'StorageTypeName')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#String', name: 'String')
    StringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#StringList', name: 'StringList')
    SubjectKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#SubjectKey', name: 'SubjectKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    SubjectKeyIdCOption = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#SubjectKeyIdCOption', name: 'SubjectKeyIdCOption')
    TLSSecurityPolicy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#TLSSecurityPolicy', name: 'TLSSecurityPolicy')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => ".*"})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#TagList', name: 'TagList')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => ".*"})
    TimeUnit = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#TimeUnit', name: 'TimeUnit')
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.opensearch#Timestamp', name: 'Timestamp')
    TotalNumberOfStages = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opensearch#TotalNumberOfStages', name: 'TotalNumberOfStages', traits: {"smithy.api#default" => 0})
    UIntValue = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opensearch#UIntValue', name: 'UIntValue', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    UncompressedPluginSizeInBytes = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opensearch#UncompressedPluginSizeInBytes', name: 'UncompressedPluginSizeInBytes')
    UpdateApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdateApplicationRequest', name: 'UpdateApplicationRequest')
    UpdateApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdateApplicationResponse', name: 'UpdateApplicationResponse')
    UpdateDataSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdateDataSourceRequest', name: 'UpdateDataSourceRequest')
    UpdateDataSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdateDataSourceResponse', name: 'UpdateDataSourceResponse')
    UpdateDirectQueryDataSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdateDirectQueryDataSourceRequest', name: 'UpdateDirectQueryDataSourceRequest')
    UpdateDirectQueryDataSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdateDirectQueryDataSourceResponse', name: 'UpdateDirectQueryDataSourceResponse')
    UpdateDomainConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdateDomainConfigRequest', name: 'UpdateDomainConfigRequest')
    UpdateDomainConfigResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdateDomainConfigResponse', name: 'UpdateDomainConfigResponse')
    UpdatePackageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdatePackageRequest', name: 'UpdatePackageRequest')
    UpdatePackageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdatePackageResponse', name: 'UpdatePackageResponse')
    UpdatePackageScopeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdatePackageScopeRequest', name: 'UpdatePackageScopeRequest')
    UpdatePackageScopeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdatePackageScopeResponse', name: 'UpdatePackageScopeResponse')
    UpdateScheduledActionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdateScheduledActionRequest', name: 'UpdateScheduledActionRequest')
    UpdateScheduledActionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdateScheduledActionResponse', name: 'UpdateScheduledActionResponse')
    UpdateTimestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.opensearch#UpdateTimestamp', name: 'UpdateTimestamp')
    UpdateVpcEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdateVpcEndpointRequest', name: 'UpdateVpcEndpointRequest')
    UpdateVpcEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdateVpcEndpointResponse', name: 'UpdateVpcEndpointResponse')
    UpgradeDomainRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpgradeDomainRequest', name: 'UpgradeDomainRequest')
    UpgradeDomainResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpgradeDomainResponse', name: 'UpgradeDomainResponse')
    UpgradeHistory = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpgradeHistory', name: 'UpgradeHistory')
    UpgradeHistoryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#UpgradeHistoryList', name: 'UpgradeHistoryList')
    UpgradeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#UpgradeName', name: 'UpgradeName')
    UpgradeStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#UpgradeStatus', name: 'UpgradeStatus')
    UpgradeStep = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#UpgradeStep', name: 'UpgradeStep')
    UpgradeStepItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpgradeStepItem', name: 'UpgradeStepItem')
    UpgradeStepsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#UpgradeStepsList', name: 'UpgradeStepsList')
    UserPoolId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#UserPoolId', name: 'UserPoolId', traits: {"smithy.api#length" => {"min" => 1, "max" => 55}, "smithy.api#pattern" => "^[\\w-]+_[0-9a-zA-Z]+$"})
    Username = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#Username', name: 'Username', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    VPCDerivedInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#VPCDerivedInfo', name: 'VPCDerivedInfo')
    VPCDerivedInfoStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#VPCDerivedInfoStatus', name: 'VPCDerivedInfoStatus')
    VPCOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#VPCOptions', name: 'VPCOptions')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationFailure = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ValidationFailure', name: 'ValidationFailure')
    ValidationFailures = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#ValidationFailures', name: 'ValidationFailures')
    ValueStringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#ValueStringList', name: 'ValueStringList', traits: {"smithy.api#length" => {"min" => 1}})
    VersionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#VersionList', name: 'VersionList')
    VersionStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#VersionStatus', name: 'VersionStatus')
    VersionString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#VersionString', name: 'VersionString', traits: {"smithy.api#length" => {"min" => 14, "max" => 18}, "smithy.api#pattern" => "^Elasticsearch_[0-9]{1}\\.[0-9]{1,2}$|^OpenSearch_[0-9]{1,2}\\.[0-9]{1,2}$"})
    VolumeSize = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#VolumeSize', name: 'VolumeSize')
    VolumeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#VolumeType', name: 'VolumeType')
    VpcEndpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#VpcEndpoint', name: 'VpcEndpoint')
    VpcEndpointError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#VpcEndpointError', name: 'VpcEndpointError')
    VpcEndpointErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#VpcEndpointErrorCode', name: 'VpcEndpointErrorCode')
    VpcEndpointErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#VpcEndpointErrorList', name: 'VpcEndpointErrorList')
    VpcEndpointId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#VpcEndpointId', name: 'VpcEndpointId', traits: {"smithy.api#length" => {"min" => 5, "max" => 256}, "smithy.api#pattern" => "^aos-[a-zA-Z0-9]*$"})
    VpcEndpointIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#VpcEndpointIdList', name: 'VpcEndpointIdList')
    VpcEndpointStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#VpcEndpointStatus', name: 'VpcEndpointStatus')
    VpcEndpointSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#VpcEndpointSummary', name: 'VpcEndpointSummary')
    VpcEndpointSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#VpcEndpointSummaryList', name: 'VpcEndpointSummaryList')
    VpcEndpoints = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#VpcEndpoints', name: 'VpcEndpoints')
    WindowStartTime = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#WindowStartTime', name: 'WindowStartTime')
    ZoneAwarenessConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ZoneAwarenessConfig', name: 'ZoneAwarenessConfig')
    ZoneStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#ZoneStatus', name: 'ZoneStatus')

    AIMLOptionsInput.add_member(:natural_language_query_generation_options, Smithy::Schema::Shapes::ShapeRef.new(shape: NaturalLanguageQueryGenerationOptionsInput, location_name: 'NaturalLanguageQueryGenerationOptions', traits: {"smithy.api#documentation" => "<p>Container for parameters required for natural language query generation on the specified domain.</p>"}))
    AIMLOptionsInput.add_member(:s3_vectors_engine, Smithy::Schema::Shapes::ShapeRef.new(shape: S3VectorsEngine, location_name: 'S3VectorsEngine', traits: {"smithy.api#documentation" => "<p>Container for parameters required to enable S3 vectors engine features on the specified domain.</p>"}))
    AIMLOptionsInput.type = Types::AIMLOptionsInput
    AIMLOptionsOutput.add_member(:natural_language_query_generation_options, Smithy::Schema::Shapes::ShapeRef.new(shape: NaturalLanguageQueryGenerationOptionsOutput, location_name: 'NaturalLanguageQueryGenerationOptions', traits: {"smithy.api#documentation" => "<p>Container for parameters required for natural language query generation on the specified domain.</p>"}))
    AIMLOptionsOutput.add_member(:s3_vectors_engine, Smithy::Schema::Shapes::ShapeRef.new(shape: S3VectorsEngine, location_name: 'S3VectorsEngine', traits: {"smithy.api#documentation" => "<p>Container for parameters representing the state of S3 vectors engine features on the specified domain.</p>"}))
    AIMLOptionsOutput.type = Types::AIMLOptionsOutput
    AIMLOptionsStatus.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: AIMLOptionsOutput, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>Machine learning options on the specified domain.</p>"}))
    AIMLOptionsStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status'))
    AIMLOptionsStatus.type = Types::AIMLOptionsStatus
    AWSDomainInformation.add_member(:owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerId, location_name: 'OwnerId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the domain owner.</p>"}))
    AWSDomainInformation.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>Name of the domain.</p>", "smithy.api#required" => {}}))
    AWSDomainInformation.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region in which the domain is located.</p>"}))
    AWSDomainInformation.type = Types::AWSDomainInformation
    AWSServicePrincipal.add_member(:application_opensearchservice_amazonaws_com, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'application_opensearchservice_amazonaws_com', traits: {"smithy.api#enumValue" => "application.opensearchservice.amazonaws.com"}))
    AcceptInboundConnectionRequest.add_member(:connection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'ConnectionId', traits: {"smithy.api#documentation" => "<p>The ID of the inbound connection to accept.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AcceptInboundConnectionRequest.type = Types::AcceptInboundConnectionRequest
    AcceptInboundConnectionResponse.add_member(:connection, Smithy::Schema::Shapes::ShapeRef.new(shape: InboundConnection, location_name: 'Connection', traits: {"smithy.api#documentation" => "<p>Information about the accepted inbound connection.</p>"}))
    AcceptInboundConnectionResponse.type = Types::AcceptInboundConnectionResponse
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A description of the error.</p>"}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessPoliciesStatus.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>The access policy configured for the domain. Access policies can be resource-based,\n   IP-based, or IAM-based. For more information, see <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-access-policies\">Configuring access policies</a>.</p>", "smithy.api#required" => {}}))
    AccessPoliciesStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the access policy for the domain.</p>", "smithy.api#required" => {}}))
    AccessPoliciesStatus.type = Types::AccessPoliciesStatus
    ActionSeverity.add_member(:high, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH', traits: {"smithy.api#enumValue" => "HIGH"}))
    ActionSeverity.add_member(:medium, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "MEDIUM"}))
    ActionSeverity.add_member(:low, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW', traits: {"smithy.api#enumValue" => "LOW"}))
    ActionStatus.add_member(:pending_update, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_UPDATE', traits: {"smithy.api#enumValue" => "PENDING_UPDATE"}))
    ActionStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ActionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ActionStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ActionStatus.add_member(:not_eligible, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_ELIGIBLE', traits: {"smithy.api#enumValue" => "NOT_ELIGIBLE"}))
    ActionStatus.add_member(:eligible, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ELIGIBLE', traits: {"smithy.api#enumValue" => "ELIGIBLE"}))
    ActionType.add_member(:service_software_update, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE_SOFTWARE_UPDATE', traits: {"smithy.api#enumValue" => "SERVICE_SOFTWARE_UPDATE"}))
    ActionType.add_member(:jvm_heap_size_tuning, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JVM_HEAP_SIZE_TUNING', traits: {"smithy.api#enumValue" => "JVM_HEAP_SIZE_TUNING"}))
    ActionType.add_member(:jvm_young_gen_tuning, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JVM_YOUNG_GEN_TUNING', traits: {"smithy.api#enumValue" => "JVM_YOUNG_GEN_TUNING"}))
    AddDataSourceRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain to add the data source to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AddDataSourceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A name for the data source.</p>", "smithy.api#required" => {}}))
    AddDataSourceRequest.add_member(:data_source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceType, location_name: 'DataSourceType', traits: {"smithy.api#documentation" => "<p>The type of data source.</p>", "smithy.api#required" => {}}))
    AddDataSourceRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the data source.</p>"}))
    AddDataSourceRequest.type = Types::AddDataSourceRequest
    AddDataSourceResponse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A message associated with creation of the data source.</p>"}))
    AddDataSourceResponse.type = Types::AddDataSourceResponse
    AddDirectQueryDataSourceRequest.add_member(:data_source_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceName, location_name: 'DataSourceName', traits: {"smithy.api#documentation" => "<p>\n   A unique, user-defined label to identify the data source \n   within your OpenSearch Service environment.\n  </p>", "smithy.api#required" => {}}))
    AddDirectQueryDataSourceRequest.add_member(:data_source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceType, location_name: 'DataSourceType', traits: {"smithy.api#documentation" => "<p>\n   The supported Amazon Web Services service that you want to use as the source for direct queries in OpenSearch Service.\n  </p>", "smithy.api#required" => {}}))
    AddDirectQueryDataSourceRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>\n   An optional text field for providing additional context and details about the data source.\n  </p>"}))
    AddDirectQueryDataSourceRequest.add_member(:open_search_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryOpenSearchARNList, location_name: 'OpenSearchArns', traits: {"smithy.api#documentation" => "<p>\n   A list of Amazon Resource Names (ARNs) for the OpenSearch \n   collections that are associated with the direct query data source.\n  </p>", "smithy.api#required" => {}}))
    AddDirectQueryDataSourceRequest.add_member(:tag_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    AddDirectQueryDataSourceRequest.type = Types::AddDirectQueryDataSourceRequest
    AddDirectQueryDataSourceResponse.add_member(:data_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataSourceArn', traits: {"smithy.api#documentation" => "<p>\n   The unique, system-generated identifier that represents the data source.\n  </p>"}))
    AddDirectQueryDataSourceResponse.type = Types::AddDirectQueryDataSourceResponse
    AddTagsRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ARN', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the OpenSearch Service domain, data source, or application to\n   which you want to attach resource tags.</p>", "smithy.api#required" => {}}))
    AddTagsRequest.add_member(:tag_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList', traits: {"smithy.api#documentation" => "<p>List of resource tags.</p>", "smithy.api#required" => {}}))
    AddTagsRequest.type = Types::AddTagsRequest
    AdditionalLimit.add_member(:limit_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitName, location_name: 'LimitName', traits: {"smithy.api#documentation" => "<ul>\n            <li>\n               <p>\n                  <code>MaximumNumberOfDataNodesSupported</code> - This attribute only applies to master\n     nodes and specifies the maximum number of data nodes of a given instance type a master node can\n     support.</p>\n            </li>\n            <li>\n               <p>\n                  <code>MaximumNumberOfDataNodesWithoutMasterNode</code> - This attribute only applies to\n     data nodes and specifies the maximum number of data nodes of a given instance type can exist\n     without a master node governing them.</p>\n            </li>\n         </ul>"}))
    AdditionalLimit.add_member(:limit_values, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitValueList, location_name: 'LimitValues', traits: {"smithy.api#documentation" => "<p> The values of the additional instance type limits.</p>"}))
    AdditionalLimit.type = Types::AdditionalLimit
    AdditionalLimitList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalLimit)
    AdvancedOptions.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    AdvancedOptions.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    AdvancedOptionsStatus.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>The status of advanced options for the specified domain.</p>", "smithy.api#required" => {}}))
    AdvancedOptionsStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of advanced options for the specified domain.</p>", "smithy.api#required" => {}}))
    AdvancedOptionsStatus.type = Types::AdvancedOptionsStatus
    AdvancedSecurityOptions.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>True if fine-grained access control is enabled.</p>"}))
    AdvancedSecurityOptions.add_member(:internal_user_database_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'InternalUserDatabaseEnabled', traits: {"smithy.api#documentation" => "<p>True if the internal user database is enabled.</p>"}))
    AdvancedSecurityOptions.add_member(:saml_options, Smithy::Schema::Shapes::ShapeRef.new(shape: SAMLOptionsOutput, location_name: 'SAMLOptions', traits: {"smithy.api#documentation" => "<p>Container for information about the SAML configuration for OpenSearch Dashboards.</p>"}))
    AdvancedSecurityOptions.add_member(:jwt_options, Smithy::Schema::Shapes::ShapeRef.new(shape: JWTOptionsOutput, location_name: 'JWTOptions', traits: {"smithy.api#documentation" => "<p>Container for information about the JWT configuration of the Amazon OpenSearch Service.</p>"}))
    AdvancedSecurityOptions.add_member(:iam_federation_options, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMFederationOptionsOutput, location_name: 'IAMFederationOptions', traits: {"smithy.api#documentation" => "<p>Container for information about the IAM federation configuration for an OpenSearch UI application.</p>"}))
    AdvancedSecurityOptions.add_member(:anonymous_auth_disable_date, Smithy::Schema::Shapes::ShapeRef.new(shape: DisableTimestamp, location_name: 'AnonymousAuthDisableDate', traits: {"smithy.api#documentation" => "<p>Date and time when the migration period will be disabled. Only necessary when <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/fgac.html#fgac-enabling-existing\">enabling\n    fine-grained access control on an existing domain</a>.</p>"}))
    AdvancedSecurityOptions.add_member(:anonymous_auth_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AnonymousAuthEnabled', traits: {"smithy.api#documentation" => "<p>True if a 30-day migration period is enabled, during which administrators can create role\n   mappings. Only necessary when <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/fgac.html#fgac-enabling-existing\">enabling\n    fine-grained access control on an existing domain</a>.</p>"}))
    AdvancedSecurityOptions.type = Types::AdvancedSecurityOptions
    AdvancedSecurityOptionsInput.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>True to enable fine-grained access control.</p>"}))
    AdvancedSecurityOptionsInput.add_member(:internal_user_database_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'InternalUserDatabaseEnabled', traits: {"smithy.api#documentation" => "<p>True to enable the internal user database.</p>"}))
    AdvancedSecurityOptionsInput.add_member(:master_user_options, Smithy::Schema::Shapes::ShapeRef.new(shape: MasterUserOptions, location_name: 'MasterUserOptions', traits: {"smithy.api#documentation" => "<p>Container for information about the master user.</p>"}))
    AdvancedSecurityOptionsInput.add_member(:saml_options, Smithy::Schema::Shapes::ShapeRef.new(shape: SAMLOptionsInput, location_name: 'SAMLOptions', traits: {"smithy.api#documentation" => "<p>Container for information about the SAML configuration for OpenSearch Dashboards.</p>"}))
    AdvancedSecurityOptionsInput.add_member(:jwt_options, Smithy::Schema::Shapes::ShapeRef.new(shape: JWTOptionsInput, location_name: 'JWTOptions', traits: {"smithy.api#documentation" => "<p>Container for information about the JWT configuration of the Amazon OpenSearch Service. </p>"}))
    AdvancedSecurityOptionsInput.add_member(:iam_federation_options, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMFederationOptionsInput, location_name: 'IAMFederationOptions', traits: {"smithy.api#documentation" => "<p>Container for information about the IAM federation configuration for an OpenSearch UI application.</p>"}))
    AdvancedSecurityOptionsInput.add_member(:anonymous_auth_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AnonymousAuthEnabled', traits: {"smithy.api#documentation" => "<p>True to enable a 30-day migration period during which administrators can create role\n   mappings. Only necessary when <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/fgac.html#fgac-enabling-existing\">enabling\n    fine-grained access control on an existing domain</a>.</p>"}))
    AdvancedSecurityOptionsInput.type = Types::AdvancedSecurityOptionsInput
    AdvancedSecurityOptionsStatus.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedSecurityOptions, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>Container for fine-grained access control settings.</p>", "smithy.api#required" => {}}))
    AdvancedSecurityOptionsStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status of the fine-grained access control settings for a domain.</p>", "smithy.api#required" => {}}))
    AdvancedSecurityOptionsStatus.type = Types::AdvancedSecurityOptionsStatus
    AppConfig.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: AppConfigType, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The configuration item to set, such as the admin role for the OpenSearch application.</p>"}))
    AppConfig.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: AppConfigValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value assigned to the configuration key, such as an IAM user ARN.</p>"}))
    AppConfig.type = Types::AppConfig
    AppConfigType.add_member(:opensearch_dashboard_admin_users, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OpensearchDashboardAdminUsers', traits: {"smithy.api#enumValue" => "opensearchDashboards.dashboardAdmin.users"}))
    AppConfigType.add_member(:opensearch_dashboard_admin_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OpensearchDashboardAdminGroups', traits: {"smithy.api#enumValue" => "opensearchDashboards.dashboardAdmin.groups"}))
    AppConfigs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AppConfig)
    ApplicationStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ApplicationStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    ApplicationStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ApplicationStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ApplicationStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ApplicationStatuses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationStatus)
    ApplicationSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSummary)
    ApplicationSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of an OpenSearch application.</p>"}))
    ApplicationSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn'))
    ApplicationSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of an OpenSearch application.</p>"}))
    ApplicationSummary.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'endpoint', traits: {"smithy.api#documentation" => "<p>The endpoint URL of an OpenSearch application.</p>"}))
    ApplicationSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of an OpenSearch application. Possible values: <code>CREATING</code>, <code>UPDATING</code>, <code>DELETING</code>, <code>FAILED</code>, <code>ACTIVE</code>, and <code>DELETED</code>.</p>"}))
    ApplicationSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The timestamp when an OpenSearch application was created.</p>"}))
    ApplicationSummary.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of the last update to an OpenSearch application.</p>"}))
    ApplicationSummary.type = Types::ApplicationSummary
    AssociatePackageRequest.add_member(:package_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: 'PackageID', traits: {"smithy.api#documentation" => "<p>Internal ID of the package to associate with a domain. Use <code>DescribePackages</code> to find this value.\n  </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociatePackageRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>Name of the domain to associate the package with.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociatePackageRequest.add_member(:prerequisite_package_id_list, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageIDList, location_name: 'PrerequisitePackageIDList', traits: {"smithy.api#documentation" => "<p>A list of package IDs that must be associated with the domain before the package specified in the request can be associated.</p>"}))
    AssociatePackageRequest.add_member(:association_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageAssociationConfiguration, location_name: 'AssociationConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for associating a package with an Amazon OpenSearch Service domain.</p>"}))
    AssociatePackageRequest.type = Types::AssociatePackageRequest
    AssociatePackageResponse.add_member(:domain_package_details, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainPackageDetails, location_name: 'DomainPackageDetails', traits: {"smithy.api#documentation" => "<p>Information about a package that is associated with a domain.</p>"}))
    AssociatePackageResponse.type = Types::AssociatePackageResponse
    AssociatePackagesRequest.add_member(:package_list, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDetailsForAssociationList, location_name: 'PackageList', traits: {"smithy.api#documentation" => "<p>A list of packages and their prerequisites to be associated with a domain.</p>", "smithy.api#required" => {}}))
    AssociatePackagesRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    AssociatePackagesRequest.type = Types::AssociatePackagesRequest
    AssociatePackagesResponse.add_member(:domain_package_details_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainPackageDetailsList, location_name: 'DomainPackageDetailsList', traits: {"smithy.api#documentation" => "<p>List of information about packages that are associated with a domain. </p>"}))
    AssociatePackagesResponse.type = Types::AssociatePackagesResponse
    AuthorizeVpcEndpointAccessRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the OpenSearch Service domain to provide access to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AuthorizeVpcEndpointAccessRequest.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccount, location_name: 'Account', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID to grant access to.</p>"}))
    AuthorizeVpcEndpointAccessRequest.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServicePrincipal, location_name: 'Service', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services service SP to grant access to.</p>"}))
    AuthorizeVpcEndpointAccessRequest.type = Types::AuthorizeVpcEndpointAccessRequest
    AuthorizeVpcEndpointAccessResponse.add_member(:authorized_principal, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizedPrincipal, location_name: 'AuthorizedPrincipal', traits: {"smithy.api#documentation" => "<p>Information about the Amazon Web Services account or service that was provided access to the\n   domain.</p>", "smithy.api#required" => {}}))
    AuthorizeVpcEndpointAccessResponse.type = Types::AuthorizeVpcEndpointAccessResponse
    AuthorizedPrincipal.add_member(:principal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalType, location_name: 'PrincipalType', traits: {"smithy.api#documentation" => "<p>The type of principal.</p>"}))
    AuthorizedPrincipal.add_member(:principal, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Principal', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html\">IAM principal</a> that is allowed access to the domain.</p>"}))
    AuthorizedPrincipal.type = Types::AuthorizedPrincipal
    AuthorizedPrincipalList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizedPrincipal)
    AutoTune.add_member(:auto_tune_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneType, location_name: 'AutoTuneType', traits: {"smithy.api#documentation" => "<p>The type of Auto-Tune action.</p>"}))
    AutoTune.add_member(:auto_tune_details, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneDetails, location_name: 'AutoTuneDetails', traits: {"smithy.api#documentation" => "<p>Details about an Auto-Tune action.</p>"}))
    AutoTune.type = Types::AutoTune
    AutoTuneDesiredState.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    AutoTuneDesiredState.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    AutoTuneDetails.add_member(:scheduled_auto_tune_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledAutoTuneDetails, location_name: 'ScheduledAutoTuneDetails', traits: {"smithy.api#documentation" => "<p>Container for details about a scheduled Auto-Tune action.</p>"}))
    AutoTuneDetails.type = Types::AutoTuneDetails
    AutoTuneList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTune)
    AutoTuneMaintenanceSchedule.add_member(:start_at, Smithy::Schema::Shapes::ShapeRef.new(shape: StartAt, location_name: 'StartAt', traits: {"smithy.api#documentation" => "<p>The Epoch timestamp at which the Auto-Tune maintenance schedule starts.</p>"}))
    AutoTuneMaintenanceSchedule.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Duration, location_name: 'Duration', traits: {"smithy.api#documentation" => "<p>The duration of the maintenance schedule. For example, <code>\"Duration\": {\"Value\": 2,\n    \"Unit\": \"HOURS\"}</code>.</p>"}))
    AutoTuneMaintenanceSchedule.add_member(:cron_expression_for_recurrence, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CronExpressionForRecurrence', traits: {"smithy.api#documentation" => "<p>A cron expression for a recurring maintenance schedule during which Auto-Tune can deploy\n   changes.</p>"}))
    AutoTuneMaintenanceSchedule.type = Types::AutoTuneMaintenanceSchedule
    AutoTuneMaintenanceScheduleList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneMaintenanceSchedule)
    AutoTuneOptions.add_member(:desired_state, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneDesiredState, location_name: 'DesiredState', traits: {"smithy.api#documentation" => "<p>Whether Auto-Tune is enabled or disabled.</p>"}))
    AutoTuneOptions.add_member(:rollback_on_disable, Smithy::Schema::Shapes::ShapeRef.new(shape: RollbackOnDisable, location_name: 'RollbackOnDisable', traits: {"smithy.api#documentation" => "<p>When disabling Auto-Tune, specify <code>NO_ROLLBACK</code> to retain all prior Auto-Tune\n   settings or <code>DEFAULT_ROLLBACK</code> to revert to the OpenSearch Service defaults. If you\n   specify <code>DEFAULT_ROLLBACK</code>, you must include a <code>MaintenanceSchedule</code> in the\n   request. Otherwise, OpenSearch Service is unable to perform the rollback.</p>"}))
    AutoTuneOptions.add_member(:maintenance_schedules, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneMaintenanceScheduleList, location_name: 'MaintenanceSchedules', traits: {"smithy.api#documentation" => "<p>DEPRECATED. Use <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/off-peak.html\">off-peak window</a>\n   instead.</p>\n         <p>A list of maintenance schedules during which Auto-Tune can deploy changes.</p>"}))
    AutoTuneOptions.add_member(:use_off_peak_window, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseOffPeakWindow', traits: {"smithy.api#documentation" => "<p>Whether to use the domain's <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/APIReference/API_OffPeakWindow.html\">off-peak window</a> to\n   deploy configuration changes on the domain rather than a maintenance schedule.</p>"}))
    AutoTuneOptions.type = Types::AutoTuneOptions
    AutoTuneOptionsInput.add_member(:desired_state, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneDesiredState, location_name: 'DesiredState', traits: {"smithy.api#documentation" => "<p>Whether Auto-Tune is enabled or disabled.</p>"}))
    AutoTuneOptionsInput.add_member(:maintenance_schedules, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneMaintenanceScheduleList, location_name: 'MaintenanceSchedules', traits: {"smithy.api#documentation" => "<p>A list of maintenance schedules during which Auto-Tune can deploy changes. Maintenance windows are deprecated and have been replaced with <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/off-peak.html\">off-peak windows</a>.</p>"}))
    AutoTuneOptionsInput.add_member(:use_off_peak_window, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseOffPeakWindow', traits: {"smithy.api#documentation" => "<p>Whether to schedule Auto-Tune optimizations that require blue/green deployments during the domain's configured daily off-peak window.</p>"}))
    AutoTuneOptionsInput.type = Types::AutoTuneOptionsInput
    AutoTuneOptionsOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of Auto-Tune on the domain.</p>"}))
    AutoTuneOptionsOutput.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>Any errors that occurred while enabling or disabling Auto-Tune.</p>"}))
    AutoTuneOptionsOutput.add_member(:use_off_peak_window, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseOffPeakWindow', traits: {"smithy.api#documentation" => "<p>Whether the domain's off-peak window will be used to deploy Auto-Tune changes rather\n   than a maintenance schedule.</p>"}))
    AutoTuneOptionsOutput.type = Types::AutoTuneOptionsOutput
    AutoTuneOptionsStatus.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneOptions, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>Auto-Tune settings for updating a domain.</p>"}))
    AutoTuneOptionsStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of Auto-Tune for a domain.</p>"}))
    AutoTuneOptionsStatus.type = Types::AutoTuneOptionsStatus
    AutoTuneState.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    AutoTuneState.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    AutoTuneState.add_member(:enable_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "ENABLE_IN_PROGRESS"}))
    AutoTuneState.add_member(:disable_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DISABLE_IN_PROGRESS"}))
    AutoTuneState.add_member(:disabled_and_rollback_scheduled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED_AND_ROLLBACK_SCHEDULED', traits: {"smithy.api#enumValue" => "DISABLED_AND_ROLLBACK_SCHEDULED"}))
    AutoTuneState.add_member(:disabled_and_rollback_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED_AND_ROLLBACK_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DISABLED_AND_ROLLBACK_IN_PROGRESS"}))
    AutoTuneState.add_member(:disabled_and_rollback_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED_AND_ROLLBACK_COMPLETE', traits: {"smithy.api#enumValue" => "DISABLED_AND_ROLLBACK_COMPLETE"}))
    AutoTuneState.add_member(:disabled_and_rollback_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED_AND_ROLLBACK_ERROR', traits: {"smithy.api#enumValue" => "DISABLED_AND_ROLLBACK_ERROR"}))
    AutoTuneState.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    AutoTuneStatus.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>Date and time when Auto-Tune was enabled for the domain.</p>", "smithy.api#required" => {}}))
    AutoTuneStatus.add_member(:update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: 'UpdateDate', traits: {"smithy.api#documentation" => "<p>Date and time when the Auto-Tune options were last updated for the domain.</p>", "smithy.api#required" => {}}))
    AutoTuneStatus.add_member(:update_version, Smithy::Schema::Shapes::ShapeRef.new(shape: UIntValue, location_name: 'UpdateVersion', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The latest version of the Auto-Tune options.</p>"}))
    AutoTuneStatus.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of Auto-Tune on the domain.</p>", "smithy.api#required" => {}}))
    AutoTuneStatus.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>Any errors that occurred while enabling or disabling Auto-Tune.</p>"}))
    AutoTuneStatus.add_member(:pending_deletion, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'PendingDeletion', traits: {"smithy.api#documentation" => "<p>Indicates whether the domain is being deleted.</p>"}))
    AutoTuneStatus.type = Types::AutoTuneStatus
    AutoTuneType.add_member(:scheduled_action, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEDULED_ACTION', traits: {"smithy.api#enumValue" => "SCHEDULED_ACTION"}))
    AvailabilityZoneInfo.add_member(:availability_zone_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: 'AvailabilityZoneName', traits: {"smithy.api#documentation" => "<p>The name of the Availability Zone.</p>"}))
    AvailabilityZoneInfo.add_member(:zone_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ZoneStatus, location_name: 'ZoneStatus', traits: {"smithy.api#documentation" => "<p>The current state of the Availability Zone. Current options are <code>Active</code> and <code>StandBy</code>.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Active</code> - Data nodes in the Availability Zone are in use.</p>\n            </li>\n            <li>\n               <p>\n                  <code>StandBy</code> - Data nodes in the Availability Zone are in a standby state.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NotAvailable</code> - Unable to retrieve information.</p>\n            </li>\n         </ul>"}))
    AvailabilityZoneInfo.add_member(:configured_data_node_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfNodes, location_name: 'ConfiguredDataNodeCount', traits: {"smithy.api#documentation" => "<p>The total number of data nodes configured in the Availability Zone.</p>"}))
    AvailabilityZoneInfo.add_member(:available_data_node_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfNodes, location_name: 'AvailableDataNodeCount', traits: {"smithy.api#documentation" => "<p>The number of data nodes active in the Availability Zone.</p>"}))
    AvailabilityZoneInfo.add_member(:total_shards, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfShards, location_name: 'TotalShards', traits: {"smithy.api#documentation" => "<p>The total number of primary and replica shards in the Availability Zone.</p>"}))
    AvailabilityZoneInfo.add_member(:total_un_assigned_shards, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfShards, location_name: 'TotalUnAssignedShards', traits: {"smithy.api#documentation" => "<p>The total number of primary and replica shards that aren't allocated to any of the nodes in the Availability Zone.</p>"}))
    AvailabilityZoneInfo.type = Types::AvailabilityZoneInfo
    AvailabilityZoneInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneInfo)
    AvailabilityZoneList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone)
    BaseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A description of the error.</p>"}))
    BaseException.type = Types::BaseException
    CancelDomainConfigChangeRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelDomainConfigChangeRequest.add_member(:dry_run, Smithy::Schema::Shapes::ShapeRef.new(shape: DryRun, location_name: 'DryRun', traits: {"smithy.api#documentation" => "<p>When set to <code>True</code>, returns the list of change IDs and properties that will be cancelled without actually cancelling the change.</p>"}))
    CancelDomainConfigChangeRequest.type = Types::CancelDomainConfigChangeRequest
    CancelDomainConfigChangeResponse.add_member(:cancelled_change_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: GUIDList, location_name: 'CancelledChangeIds', traits: {"smithy.api#documentation" => "<p>The unique identifiers of the changes that were cancelled.</p>"}))
    CancelDomainConfigChangeResponse.add_member(:cancelled_change_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: CancelledChangePropertyList, location_name: 'CancelledChangeProperties', traits: {"smithy.api#documentation" => "<p>The domain change properties that were cancelled.</p>"}))
    CancelDomainConfigChangeResponse.add_member(:dry_run, Smithy::Schema::Shapes::ShapeRef.new(shape: DryRun, location_name: 'DryRun', traits: {"smithy.api#documentation" => "<p>Whether or not the request was a dry run. If <code>True</code>, the changes were not actually cancelled. </p>"}))
    CancelDomainConfigChangeResponse.type = Types::CancelDomainConfigChangeResponse
    CancelServiceSoftwareUpdateRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>Name of the OpenSearch Service domain that you want to cancel the service software update\n   on.</p>", "smithy.api#required" => {}}))
    CancelServiceSoftwareUpdateRequest.type = Types::CancelServiceSoftwareUpdateRequest
    CancelServiceSoftwareUpdateResponse.add_member(:service_software_options, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSoftwareOptions, location_name: 'ServiceSoftwareOptions', traits: {"smithy.api#documentation" => "<p>Container for the state of your domain relative to the latest service software.</p>"}))
    CancelServiceSoftwareUpdateResponse.type = Types::CancelServiceSoftwareUpdateResponse
    CancelledChangeProperty.add_member(:property_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PropertyName', traits: {"smithy.api#documentation" => "<p>The name of the property whose change was cancelled.</p>"}))
    CancelledChangeProperty.add_member(:cancelled_value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CancelledValue', traits: {"smithy.api#documentation" => "<p>The pending value of the property that was cancelled. This would have been the eventual value of the property if the chance had not been cancelled.</p>"}))
    CancelledChangeProperty.add_member(:active_value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActiveValue', traits: {"smithy.api#documentation" => "<p>The current value of the property, after the change was cancelled.</p>"}))
    CancelledChangeProperty.type = Types::CancelledChangeProperty
    CancelledChangePropertyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelledChangeProperty)
    ChangeProgressDetails.add_member(:change_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: 'ChangeId', traits: {"smithy.api#documentation" => "<p>The ID of the configuration change.</p>"}))
    ChangeProgressDetails.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A message corresponding to the status of the configuration change.</p>"}))
    ChangeProgressDetails.add_member(:config_change_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigChangeStatus, location_name: 'ConfigChangeStatus', traits: {"smithy.api#documentation" => "<p>The current status of the configuration change.</p>"}))
    ChangeProgressDetails.add_member(:initiated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: InitiatedBy, location_name: 'InitiatedBy', traits: {"smithy.api#documentation" => "<p>The IAM principal who initiated the configuration change.</p>"}))
    ChangeProgressDetails.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The time that the configuration change was initiated, in Universal Coordinated Time (UTC).</p>"}))
    ChangeProgressDetails.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The last time that the configuration change was updated.</p>"}))
    ChangeProgressDetails.type = Types::ChangeProgressDetails
    ChangeProgressStage.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressStageName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the stage.</p>"}))
    ChangeProgressStage.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressStageStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the stage.</p>"}))
    ChangeProgressStage.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the stage.</p>"}))
    ChangeProgressStage.add_member(:last_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdated, location_name: 'LastUpdated', traits: {"smithy.api#documentation" => "<p>The most recent updated timestamp of the stage.</p>"}))
    ChangeProgressStage.type = Types::ChangeProgressStage
    ChangeProgressStageList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressStage)
    ChangeProgressStatusDetails.add_member(:change_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: 'ChangeId', traits: {"smithy.api#documentation" => "<p>The unique change identifier associated with a specific domain configuration change.</p>"}))
    ChangeProgressStatusDetails.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The time at which the configuration change is made on the domain.</p>"}))
    ChangeProgressStatusDetails.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OverallChangeStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The overall status of the domain configuration change.</p>"}))
    ChangeProgressStatusDetails.add_member(:pending_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'PendingProperties', traits: {"smithy.api#documentation" => "<p>The list of properties in the domain configuration change that are still pending.</p>"}))
    ChangeProgressStatusDetails.add_member(:completed_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'CompletedProperties', traits: {"smithy.api#documentation" => "<p>The list of properties in the domain configuration change that have completed.</p>"}))
    ChangeProgressStatusDetails.add_member(:total_number_of_stages, Smithy::Schema::Shapes::ShapeRef.new(shape: TotalNumberOfStages, location_name: 'TotalNumberOfStages', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of stages required for the configuration change.</p>"}))
    ChangeProgressStatusDetails.add_member(:change_progress_stages, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressStageList, location_name: 'ChangeProgressStages', traits: {"smithy.api#documentation" => "<p>The specific stages that the domain is going through to perform the configuration change.</p>"}))
    ChangeProgressStatusDetails.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The last time that the status of the configuration change was updated.</p>"}))
    ChangeProgressStatusDetails.add_member(:config_change_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigChangeStatus, location_name: 'ConfigChangeStatus', traits: {"smithy.api#documentation" => "<p>The current status of the configuration change.</p>"}))
    ChangeProgressStatusDetails.add_member(:initiated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: InitiatedBy, location_name: 'InitiatedBy', traits: {"smithy.api#documentation" => "<p>The IAM principal who initiated the configuration change.</p>"}))
    ChangeProgressStatusDetails.type = Types::ChangeProgressStatusDetails
    CloudWatchDirectQueryDataSource.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>\n   The unique identifier of the IAM role that grants \n   OpenSearch Service permission to access the specified data source.\n  </p>", "smithy.api#required" => {}}))
    CloudWatchDirectQueryDataSource.type = Types::CloudWatchDirectQueryDataSource
    ClusterConfig.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchPartitionInstanceType, location_name: 'InstanceType', traits: {"smithy.api#documentation" => "<p>Instance type of data nodes in the cluster.</p>"}))
    ClusterConfig.add_member(:instance_count, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: 'InstanceCount', traits: {"smithy.api#documentation" => "<p>Number of data nodes in the cluster. This number must be greater than 1, otherwise you\n   receive a validation exception.</p>"}))
    ClusterConfig.add_member(:dedicated_master_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DedicatedMasterEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether dedicated master nodes are enabled for the cluster.<code>True</code> if\n   the cluster will use a dedicated master node.<code>False</code> if the cluster will not.</p>"}))
    ClusterConfig.add_member(:zone_awareness_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ZoneAwarenessEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether multiple Availability Zones are enabled. For more information, see <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-multiaz.html\">Configuring a multi-AZ domain in Amazon OpenSearch Service</a>.</p>"}))
    ClusterConfig.add_member(:zone_awareness_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ZoneAwarenessConfig, location_name: 'ZoneAwarenessConfig', traits: {"smithy.api#documentation" => "<p>Container for zone awareness configuration options. Only required if\n    <code>ZoneAwarenessEnabled</code> is <code>true</code>.</p>"}))
    ClusterConfig.add_member(:dedicated_master_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchPartitionInstanceType, location_name: 'DedicatedMasterType', traits: {"smithy.api#documentation" => "<p>OpenSearch Service instance type of the dedicated master nodes in the cluster.</p>"}))
    ClusterConfig.add_member(:dedicated_master_count, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: 'DedicatedMasterCount', traits: {"smithy.api#documentation" => "<p>Number of dedicated master nodes in the cluster. This number must be greater than 2 and not 4,\n   otherwise you receive a validation exception.</p>"}))
    ClusterConfig.add_member(:warm_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'WarmEnabled', traits: {"smithy.api#documentation" => "<p>Whether to enable warm storage for the cluster.</p>"}))
    ClusterConfig.add_member(:warm_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchWarmPartitionInstanceType, location_name: 'WarmType', traits: {"smithy.api#documentation" => "<p>The instance type for the cluster's warm nodes.</p>"}))
    ClusterConfig.add_member(:warm_count, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: 'WarmCount', traits: {"smithy.api#documentation" => "<p>The number of warm nodes in the cluster.</p>"}))
    ClusterConfig.add_member(:cold_storage_options, Smithy::Schema::Shapes::ShapeRef.new(shape: ColdStorageOptions, location_name: 'ColdStorageOptions', traits: {"smithy.api#documentation" => "<p>Container for cold storage configuration options.</p>"}))
    ClusterConfig.add_member(:multi_az_with_standby_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'MultiAZWithStandbyEnabled', traits: {"smithy.api#documentation" => "<p>A boolean that indicates whether a multi-AZ domain is turned on with a standby AZ. For more information, see <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-multiaz.html\">Configuring a multi-AZ domain in Amazon OpenSearch Service</a>. </p>"}))
    ClusterConfig.add_member(:node_options, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeOptionsList, location_name: 'NodeOptions', traits: {"smithy.api#documentation" => "<p>List of node options for the domain.</p>"}))
    ClusterConfig.type = Types::ClusterConfig
    ClusterConfigStatus.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterConfig, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>Cluster configuration options for the specified domain.</p>", "smithy.api#required" => {}}))
    ClusterConfigStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of cluster configuration options for the specified domain.</p>", "smithy.api#required" => {}}))
    ClusterConfigStatus.type = Types::ClusterConfigStatus
    CognitoOptions.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Whether to enable or disable Amazon Cognito authentication for OpenSearch Dashboards.</p>"}))
    CognitoOptions.add_member(:user_pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolId, location_name: 'UserPoolId', traits: {"smithy.api#documentation" => "<p>The Amazon Cognito user pool ID that you want OpenSearch Service to use for OpenSearch\n   Dashboards authentication.</p>"}))
    CognitoOptions.add_member(:identity_pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: 'IdentityPoolId', traits: {"smithy.api#documentation" => "<p>The Amazon Cognito identity pool ID that you want OpenSearch Service to use for OpenSearch\n   Dashboards authentication.</p>"}))
    CognitoOptions.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The <code>AmazonOpenSearchServiceCognitoAccess</code> role that allows OpenSearch Service to\n   configure your user pool and identity pool.</p>"}))
    CognitoOptions.type = Types::CognitoOptions
    CognitoOptionsStatus.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoOptions, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>Cognito options for the specified domain.</p>", "smithy.api#required" => {}}))
    CognitoOptionsStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the Cognito options for the specified domain.</p>", "smithy.api#required" => {}}))
    CognitoOptionsStatus.type = Types::CognitoOptionsStatus
    ColdStorageOptions.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Whether to enable or disable cold storage on the domain. You must enable UltraWarm storage to enable cold storage.</p>", "smithy.api#required" => {}}))
    ColdStorageOptions.type = Types::ColdStorageOptions
    CompatibleVersionsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CompatibleVersionsMap)
    CompatibleVersionsMap.add_member(:source_version, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionString, location_name: 'SourceVersion', traits: {"smithy.api#documentation" => "<p>The current version that the OpenSearch Service domain is running.</p>"}))
    CompatibleVersionsMap.add_member(:target_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionList, location_name: 'TargetVersions', traits: {"smithy.api#documentation" => "<p>The possible versions that you can upgrade the domain to.</p>"}))
    CompatibleVersionsMap.type = Types::CompatibleVersionsMap
    ConfigChangeStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "Pending"}))
    ConfigChangeStatus.add_member(:initializing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIALIZING', traits: {"smithy.api#enumValue" => "Initializing"}))
    ConfigChangeStatus.add_member(:validating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATING', traits: {"smithy.api#enumValue" => "Validating"}))
    ConfigChangeStatus.add_member(:validation_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "ValidationFailed"}))
    ConfigChangeStatus.add_member(:applying_changes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPLYING_CHANGES', traits: {"smithy.api#enumValue" => "ApplyingChanges"}))
    ConfigChangeStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "Completed"}))
    ConfigChangeStatus.add_member(:pending_user_input, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_USER_INPUT', traits: {"smithy.api#enumValue" => "PendingUserInput"}))
    ConfigChangeStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "Cancelled"}))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A description of the error.</p>"}))
    ConflictException.type = Types::ConflictException
    ConnectionMode.add_member(:direct, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECT', traits: {"smithy.api#enumValue" => "DIRECT"}))
    ConnectionMode.add_member(:vpc_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VPC_ENDPOINT', traits: {"smithy.api#enumValue" => "VPC_ENDPOINT"}))
    ConnectionProperties.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'Endpoint', traits: {"smithy.api#documentation" => "<important>\n            <p>The Endpoint attribute cannot be modified. </p>\n         </important>\n         <p>The endpoint of the remote domain. Applicable for VPC_ENDPOINT connection mode.</p>"}))
    ConnectionProperties.add_member(:cross_cluster_search, Smithy::Schema::Shapes::ShapeRef.new(shape: CrossClusterSearchConnectionProperties, location_name: 'CrossClusterSearch', traits: {"smithy.api#documentation" => "<p>The connection properties for cross cluster search.</p>"}))
    ConnectionProperties.type = Types::ConnectionProperties
    CreateApplicationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateApplicationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The unique name of the OpenSearch application. Names must be unique within an Amazon Web Services Region for each account.</p>", "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:data_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSources, location_name: 'dataSources', traits: {"smithy.api#documentation" => "<p>The data sources to link to the OpenSearch application.</p>"}))
    CreateApplicationRequest.add_member(:iam_identity_center_options, Smithy::Schema::Shapes::ShapeRef.new(shape: IamIdentityCenterOptionsInput, location_name: 'iamIdentityCenterOptions', traits: {"smithy.api#documentation" => "<p>Configuration settings for integrating Amazon Web Services IAM Identity Center with the OpenSearch application.</p>"}))
    CreateApplicationRequest.add_member(:app_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: AppConfigs, location_name: 'appConfigs', traits: {"smithy.api#documentation" => "<p>Configuration settings for the OpenSearch application, including administrative options.</p>"}))
    CreateApplicationRequest.add_member(:tag_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tagList'))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateApplicationResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier assigned to the OpenSearch application.</p>"}))
    CreateApplicationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the OpenSearch application.</p>"}))
    CreateApplicationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn'))
    CreateApplicationResponse.add_member(:data_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSources, location_name: 'dataSources', traits: {"smithy.api#documentation" => "<p>The data sources linked to the OpenSearch application.</p>"}))
    CreateApplicationResponse.add_member(:iam_identity_center_options, Smithy::Schema::Shapes::ShapeRef.new(shape: IamIdentityCenterOptions, location_name: 'iamIdentityCenterOptions', traits: {"smithy.api#documentation" => "<p>The IAM Identity Center settings configured for the OpenSearch application.</p>"}))
    CreateApplicationResponse.add_member(:app_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: AppConfigs, location_name: 'appConfigs', traits: {"smithy.api#documentation" => "<p>Configuration settings for the OpenSearch application, including administrative options.</p>"}))
    CreateApplicationResponse.add_member(:tag_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tagList'))
    CreateApplicationResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The timestamp indicating when the OpenSearch application was created.</p>"}))
    CreateApplicationResponse.type = Types::CreateApplicationResponse
    CreateDomainRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>Name of the OpenSearch Service domain to create. Domain names are unique across the domains\n   owned by an account within an Amazon Web Services Region.</p>", "smithy.api#required" => {}}))
    CreateDomainRequest.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionString, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>String of format Elasticsearch_X.Y or OpenSearch_X.Y to specify the engine version for the\n   OpenSearch Service domain. For example, <code>OpenSearch_1.0</code> or\n    <code>Elasticsearch_7.9</code>. For more information, see <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomains\">Creating\n    and managing Amazon OpenSearch Service domains</a>.</p>"}))
    CreateDomainRequest.add_member(:cluster_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterConfig, location_name: 'ClusterConfig', traits: {"smithy.api#documentation" => "<p>Container for the cluster configuration of a domain.</p>"}))
    CreateDomainRequest.add_member(:ebs_options, Smithy::Schema::Shapes::ShapeRef.new(shape: EBSOptions, location_name: 'EBSOptions', traits: {"smithy.api#documentation" => "<p>Container for the parameters required to enable EBS-based storage for an OpenSearch Service\n   domain.</p>"}))
    CreateDomainRequest.add_member(:access_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'AccessPolicies', traits: {"smithy.api#documentation" => "<p>Identity and Access Management (IAM) policy document specifying the access policies for the\n   new domain.</p>"}))
    CreateDomainRequest.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddressType, location_name: 'IPAddressType', traits: {"smithy.api#documentation" => "<p>Specify either dual stack or IPv4 as your IP address type. Dual stack allows you to share\n   domain resources across IPv4 and IPv6 address types, and is the recommended option. \n   If you set your IP address type to dual stack, you can't change your address type later.</p>"}))
    CreateDomainRequest.add_member(:snapshot_options, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotOptions, location_name: 'SnapshotOptions', traits: {"smithy.api#documentation" => "<p>DEPRECATED. Container for the parameters required to configure automated snapshots of domain\n   indexes.</p>"}))
    CreateDomainRequest.add_member(:vpc_options, Smithy::Schema::Shapes::ShapeRef.new(shape: VPCOptions, location_name: 'VPCOptions', traits: {"smithy.api#documentation" => "<p>Container for the values required to configure VPC access domains. If you don't specify\n   these values, OpenSearch Service creates the domain with a public endpoint. For more information,\n   see <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html\">Launching\n    your Amazon OpenSearch Service domains using a VPC</a>.</p>"}))
    CreateDomainRequest.add_member(:cognito_options, Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoOptions, location_name: 'CognitoOptions', traits: {"smithy.api#documentation" => "<p>Key-value pairs to configure Amazon Cognito authentication. For more information, see <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html\">Configuring Amazon Cognito authentication for OpenSearch Dashboards</a>.</p>"}))
    CreateDomainRequest.add_member(:encryption_at_rest_options, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, location_name: 'EncryptionAtRestOptions', traits: {"smithy.api#documentation" => "<p>Key-value pairs to enable encryption at rest.</p>"}))
    CreateDomainRequest.add_member(:node_to_node_encryption_options, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeToNodeEncryptionOptions, location_name: 'NodeToNodeEncryptionOptions', traits: {"smithy.api#documentation" => "<p>Enables node-to-node encryption.</p>"}))
    CreateDomainRequest.add_member(:advanced_options, Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: 'AdvancedOptions', traits: {"smithy.api#documentation" => "<p>Key-value pairs to specify advanced configuration options. The following key-value pairs are\n   supported:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>\"rest.action.multi.allow_explicit_index\": \"true\" | \"false\"</code> - Note the use of\n     a string rather than a boolean. Specifies whether explicit references to indexes are allowed\n     inside the body of HTTP requests. If you want to configure access policies for domain\n     sub-resources, such as specific indexes and domain APIs, you must disable this property.\n     Default is true.</p>\n            </li>\n            <li>\n               <p>\n                  <code>\"indices.fielddata.cache.size\": \"80\" </code> - Note the use of a string rather than\n     a boolean. Specifies the percentage of heap space allocated to field data. Default is\n     unbounded.</p>\n            </li>\n            <li>\n               <p>\n                  <code>\"indices.query.bool.max_clause_count\": \"1024\"</code> - Note the use of a string\n     rather than a boolean. Specifies the maximum number of clauses allowed in a Lucene boolean\n     query. Default is 1,024. Queries with more than the permitted number of clauses result in a\n      <code>TooManyClauses</code> error.</p>\n            </li>\n            <li>\n               <p>\n                  <code>\"override_main_response_version\": \"true\" | \"false\"</code> - Note the use of a string\n     rather than a boolean. Specifies whether the domain reports its version as 7.10 to allow\n     Elasticsearch OSS clients and plugins to continue working with it. Default is false when\n     creating a domain and true when upgrading a domain.</p>\n            </li>\n         </ul>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options\">Advanced cluster parameters</a>.</p>"}))
    CreateDomainRequest.add_member(:log_publishing_options, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: 'LogPublishingOptions', traits: {"smithy.api#documentation" => "<p>Key-value pairs to configure log publishing.</p>"}))
    CreateDomainRequest.add_member(:domain_endpoint_options, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainEndpointOptions, location_name: 'DomainEndpointOptions', traits: {"smithy.api#documentation" => "<p>Additional options for the domain endpoint, such as whether to require HTTPS for all\n   traffic.</p>"}))
    CreateDomainRequest.add_member(:advanced_security_options, Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedSecurityOptionsInput, location_name: 'AdvancedSecurityOptions', traits: {"smithy.api#documentation" => "<p>Options for fine-grained access control.</p>"}))
    CreateDomainRequest.add_member(:identity_center_options, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterOptionsInput, location_name: 'IdentityCenterOptions', traits: {"smithy.api#documentation" => "<p>Configuration options for enabling and managing IAM Identity Center integration within a domain.</p>"}))
    CreateDomainRequest.add_member(:tag_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList', traits: {"smithy.api#documentation" => "<p>List of tags to add to the domain upon creation.</p>"}))
    CreateDomainRequest.add_member(:auto_tune_options, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneOptionsInput, location_name: 'AutoTuneOptions', traits: {"smithy.api#documentation" => "<p>Options for Auto-Tune.</p>"}))
    CreateDomainRequest.add_member(:off_peak_window_options, Smithy::Schema::Shapes::ShapeRef.new(shape: OffPeakWindowOptions, location_name: 'OffPeakWindowOptions', traits: {"smithy.api#documentation" => "<p>Specifies a daily 10-hour time block during which OpenSearch Service can perform\n   configuration changes on the domain, including service software updates and Auto-Tune\n   enhancements that require a blue/green deployment. If no options are specified, the default start\n   time of 10:00 P.M. local time (for the Region that the domain is created in) is used.</p>"}))
    CreateDomainRequest.add_member(:software_update_options, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareUpdateOptions, location_name: 'SoftwareUpdateOptions', traits: {"smithy.api#documentation" => "<p>Software update options for the domain.</p>"}))
    CreateDomainRequest.add_member(:aiml_options, Smithy::Schema::Shapes::ShapeRef.new(shape: AIMLOptionsInput, location_name: 'AIMLOptions', traits: {"smithy.api#documentation" => "<p>Options for all machine learning features for the specified domain.</p>"}))
    CreateDomainRequest.type = Types::CreateDomainRequest
    CreateDomainResponse.add_member(:domain_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainStatus, location_name: 'DomainStatus', traits: {"smithy.api#documentation" => "<p>The status of the newly created domain.</p>"}))
    CreateDomainResponse.type = Types::CreateDomainResponse
    CreateOutboundConnectionRequest.add_member(:local_domain_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInformationContainer, location_name: 'LocalDomainInfo', traits: {"smithy.api#documentation" => "<p>Name and Region of the source (local) domain.</p>", "smithy.api#required" => {}}))
    CreateOutboundConnectionRequest.add_member(:remote_domain_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInformationContainer, location_name: 'RemoteDomainInfo', traits: {"smithy.api#documentation" => "<p>Name and Region of the destination (remote) domain.</p>", "smithy.api#required" => {}}))
    CreateOutboundConnectionRequest.add_member(:connection_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAlias, location_name: 'ConnectionAlias', traits: {"smithy.api#documentation" => "<p>Name of the connection.</p>", "smithy.api#required" => {}}))
    CreateOutboundConnectionRequest.add_member(:connection_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionMode, location_name: 'ConnectionMode', traits: {"smithy.api#documentation" => "<p>The connection mode.</p>"}))
    CreateOutboundConnectionRequest.add_member(:connection_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionProperties, location_name: 'ConnectionProperties', traits: {"smithy.api#documentation" => "<p>The <code>ConnectionProperties</code> for the outbound connection.</p>"}))
    CreateOutboundConnectionRequest.type = Types::CreateOutboundConnectionRequest
    CreateOutboundConnectionResponse.add_member(:local_domain_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInformationContainer, location_name: 'LocalDomainInfo', traits: {"smithy.api#documentation" => "<p>Information about the source (local) domain.</p>"}))
    CreateOutboundConnectionResponse.add_member(:remote_domain_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInformationContainer, location_name: 'RemoteDomainInfo', traits: {"smithy.api#documentation" => "<p>Information about the destination (remote) domain.</p>"}))
    CreateOutboundConnectionResponse.add_member(:connection_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAlias, location_name: 'ConnectionAlias', traits: {"smithy.api#documentation" => "<p>Name of the connection.</p>"}))
    CreateOutboundConnectionResponse.add_member(:connection_status, Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundConnectionStatus, location_name: 'ConnectionStatus', traits: {"smithy.api#documentation" => "<p>The status of the connection.</p>"}))
    CreateOutboundConnectionResponse.add_member(:connection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'ConnectionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the created outbound connection, which is used for subsequent\n   operations on the connection.</p>"}))
    CreateOutboundConnectionResponse.add_member(:connection_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionMode, location_name: 'ConnectionMode', traits: {"smithy.api#documentation" => "<p>The connection mode.</p>"}))
    CreateOutboundConnectionResponse.add_member(:connection_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionProperties, location_name: 'ConnectionProperties', traits: {"smithy.api#documentation" => "<p>The <code>ConnectionProperties</code> for the newly created connection.</p>"}))
    CreateOutboundConnectionResponse.type = Types::CreateOutboundConnectionResponse
    CreatePackageRequest.add_member(:package_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'PackageName', traits: {"smithy.api#documentation" => "<p>Unique name for the package.</p>", "smithy.api#required" => {}}))
    CreatePackageRequest.add_member(:package_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageType, location_name: 'PackageType', traits: {"smithy.api#documentation" => "<p>The type of package.</p>", "smithy.api#required" => {}}))
    CreatePackageRequest.add_member(:package_description, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDescription, location_name: 'PackageDescription', traits: {"smithy.api#documentation" => "<p>Description of the package.</p>"}))
    CreatePackageRequest.add_member(:package_source, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageSource, location_name: 'PackageSource', traits: {"smithy.api#documentation" => "<p>The Amazon S3 location from which to import the package.</p>", "smithy.api#required" => {}}))
    CreatePackageRequest.add_member(:package_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageConfiguration, location_name: 'PackageConfiguration', traits: {"smithy.api#documentation" => "<p> The configuration parameters for the package being created.</p>"}))
    CreatePackageRequest.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersion, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>The version of the Amazon OpenSearch Service engine for which is compatible with the package. This can only be specified for package type <code>ZIP-PLUGIN</code>\n         </p>"}))
    CreatePackageRequest.add_member(:package_vending_options, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVendingOptions, location_name: 'PackageVendingOptions', traits: {"smithy.api#documentation" => "<p> The vending options for the package being created. They determine if the package can be vended to other users.</p>"}))
    CreatePackageRequest.add_member(:package_encryption_options, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageEncryptionOptions, location_name: 'PackageEncryptionOptions', traits: {"smithy.api#documentation" => "<p>The encryption parameters for the package being created.</p>"}))
    CreatePackageRequest.type = Types::CreatePackageRequest
    CreatePackageResponse.add_member(:package_details, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDetails, location_name: 'PackageDetails', traits: {"smithy.api#documentation" => "<p>Basic information about an OpenSearch Service package.</p>"}))
    CreatePackageResponse.type = Types::CreatePackageResponse
    CreateVpcEndpointRequest.add_member(:domain_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainArn, location_name: 'DomainArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the domain to create the endpoint for.</p>", "smithy.api#required" => {}}))
    CreateVpcEndpointRequest.add_member(:vpc_options, Smithy::Schema::Shapes::ShapeRef.new(shape: VPCOptions, location_name: 'VpcOptions', traits: {"smithy.api#documentation" => "<p>Options to specify the subnets and security groups for the endpoint.</p>", "smithy.api#required" => {}}))
    CreateVpcEndpointRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>"}))
    CreateVpcEndpointRequest.type = Types::CreateVpcEndpointRequest
    CreateVpcEndpointResponse.add_member(:vpc_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpoint, location_name: 'VpcEndpoint', traits: {"smithy.api#documentation" => "<p>Information about the newly created VPC endpoint.</p>", "smithy.api#required" => {}}))
    CreateVpcEndpointResponse.type = Types::CreateVpcEndpointResponse
    CrossClusterSearchConnectionProperties.add_member(:skip_unavailable, Smithy::Schema::Shapes::ShapeRef.new(shape: SkipUnavailableStatus, location_name: 'SkipUnavailable', traits: {"smithy.api#documentation" => "<p>The status of the <code>SkipUnavailable</code> setting for the outbound connection. This\n   feature allows you to specify some clusters as optional and ensure that your cross-cluster\n   queries return partial results despite failures on one or more remote clusters.</p>"}))
    CrossClusterSearchConnectionProperties.type = Types::CrossClusterSearchConnectionProperties
    DataSource.add_member(:data_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'dataSourceArn'))
    DataSource.add_member(:data_source_description, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceDescription, location_name: 'dataSourceDescription', traits: {"smithy.api#documentation" => "<p>Detailed description of a data source.</p>"}))
    DataSource.type = Types::DataSource
    DataSourceDetails.add_member(:data_source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceType, location_name: 'DataSourceType', traits: {"smithy.api#documentation" => "<p>The type of data source.</p>"}))
    DataSourceDetails.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the data source.</p>"}))
    DataSourceDetails.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the data source.</p>"}))
    DataSourceDetails.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the data source.</p>"}))
    DataSourceDetails.type = Types::DataSourceDetails
    DataSourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceDetails)
    DataSourceStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DataSourceStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    DataSourceType.add_member(:s3_glue_data_catalog, Types::DataSourceType::S3GlueDataCatalog, Smithy::Schema::Shapes::ShapeRef.new(shape: S3GlueDataCatalog, location_name: 'S3GlueDataCatalog', traits: {"smithy.api#documentation" => "<p>An Amazon S3 data source.</p>"}))
    DataSourceType.add_member(:unknown, Types::DataSourceType::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    DataSourceType.type = Types::DataSourceType
    DataSources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataSource)
    DeleteApplicationRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the OpenSearch application to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApplicationRequest.type = Types::DeleteApplicationRequest
    DeleteApplicationResponse.type = Types::DeleteApplicationResponse
    DeleteDataSourceRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataSourceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the data source to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataSourceRequest.type = Types::DeleteDataSourceRequest
    DeleteDataSourceResponse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A message associated with deletion of the data source.</p>"}))
    DeleteDataSourceResponse.type = Types::DeleteDataSourceResponse
    DeleteDirectQueryDataSourceRequest.add_member(:data_source_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceName, location_name: 'DataSourceName', traits: {"smithy.api#documentation" => "<p>\n   A unique, user-defined label to identify the data source \n   within your OpenSearch Service environment.\n  </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDirectQueryDataSourceRequest.type = Types::DeleteDirectQueryDataSourceRequest
    DeleteDomainRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain you want to permanently delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDomainRequest.type = Types::DeleteDomainRequest
    DeleteDomainResponse.add_member(:domain_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainStatus, location_name: 'DomainStatus', traits: {"smithy.api#documentation" => "<p>The status of the domain being deleted.</p>"}))
    DeleteDomainResponse.type = Types::DeleteDomainResponse
    DeleteInboundConnectionRequest.add_member(:connection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'ConnectionId', traits: {"smithy.api#documentation" => "<p>The ID of the inbound connection to permanently delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteInboundConnectionRequest.type = Types::DeleteInboundConnectionRequest
    DeleteInboundConnectionResponse.add_member(:connection, Smithy::Schema::Shapes::ShapeRef.new(shape: InboundConnection, location_name: 'Connection', traits: {"smithy.api#documentation" => "<p>The deleted inbound connection.</p>"}))
    DeleteInboundConnectionResponse.type = Types::DeleteInboundConnectionResponse
    DeleteOutboundConnectionRequest.add_member(:connection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'ConnectionId', traits: {"smithy.api#documentation" => "<p>The ID of the outbound connection you want to permanently delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteOutboundConnectionRequest.type = Types::DeleteOutboundConnectionRequest
    DeleteOutboundConnectionResponse.add_member(:connection, Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundConnection, location_name: 'Connection', traits: {"smithy.api#documentation" => "<p>The deleted inbound connection.</p>"}))
    DeleteOutboundConnectionResponse.type = Types::DeleteOutboundConnectionResponse
    DeletePackageRequest.add_member(:package_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: 'PackageID', traits: {"smithy.api#documentation" => "<p>The internal ID of the package you want to delete. Use <code>DescribePackages</code> to find this value.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePackageRequest.type = Types::DeletePackageRequest
    DeletePackageResponse.add_member(:package_details, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDetails, location_name: 'PackageDetails', traits: {"smithy.api#documentation" => "<p> Information about the deleted package.</p>"}))
    DeletePackageResponse.type = Types::DeletePackageResponse
    DeleteVpcEndpointRequest.add_member(:vpc_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'VpcEndpointId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the endpoint.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVpcEndpointRequest.type = Types::DeleteVpcEndpointRequest
    DeleteVpcEndpointResponse.add_member(:vpc_endpoint_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointSummary, location_name: 'VpcEndpointSummary', traits: {"smithy.api#documentation" => "<p>Information about the deleted endpoint, including its current status (<code>DELETING</code>\n   or <code>DELETE_FAILED</code>).</p>", "smithy.api#required" => {}}))
    DeleteVpcEndpointResponse.type = Types::DeleteVpcEndpointResponse
    DependencyFailureException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A description of the error.</p>"}))
    DependencyFailureException.type = Types::DependencyFailureException
    DeploymentStatus.add_member(:pending_update, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_UPDATE', traits: {"smithy.api#enumValue" => "PENDING_UPDATE"}))
    DeploymentStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    DeploymentStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    DeploymentStatus.add_member(:not_eligible, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_ELIGIBLE', traits: {"smithy.api#enumValue" => "NOT_ELIGIBLE"}))
    DeploymentStatus.add_member(:eligible, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ELIGIBLE', traits: {"smithy.api#enumValue" => "ELIGIBLE"}))
    DescribeDomainAutoTunesRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>Name of the domain that you want Auto-Tune details about.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDomainAutoTunesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An optional parameter that specifies the maximum number of results to return. You can use\n    <code>nextToken</code> to get the next page of results.</p>"}))
    DescribeDomainAutoTunesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If your initial <code>DescribeDomainAutoTunes</code> operation returns a\n    <code>nextToken</code>, you can include the returned <code>nextToken</code> in subsequent\n    <code>DescribeDomainAutoTunes</code> operations, which returns results in the next page.</p>"}))
    DescribeDomainAutoTunesRequest.type = Types::DescribeDomainAutoTunesRequest
    DescribeDomainAutoTunesResponse.add_member(:auto_tunes, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneList, location_name: 'AutoTunes', traits: {"smithy.api#documentation" => "<p>The list of setting adjustments that Auto-Tune has made to the domain.</p>"}))
    DescribeDomainAutoTunesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When <code>nextToken</code> is returned, there are more results available. The value of\n    <code>nextToken</code> is a unique pagination token for each page. Send the request again using the\n   returned token to retrieve the next page.</p>"}))
    DescribeDomainAutoTunesResponse.type = Types::DescribeDomainAutoTunesResponse
    DescribeDomainChangeProgressRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain to get progress information for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDomainChangeProgressRequest.add_member(:change_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: 'ChangeId', traits: {"smithy.api#documentation" => "<p>The specific change ID for which you want to get progress information. If omitted, the\n   request returns information about the most recent configuration change.</p>", "smithy.api#httpQuery" => "changeid"}))
    DescribeDomainChangeProgressRequest.type = Types::DescribeDomainChangeProgressRequest
    DescribeDomainChangeProgressResponse.add_member(:change_progress_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressStatusDetails, location_name: 'ChangeProgressStatus', traits: {"smithy.api#documentation" => "<p>Container for information about the stages of a configuration change happening on a domain.</p>"}))
    DescribeDomainChangeProgressResponse.type = Types::DescribeDomainChangeProgressResponse
    DescribeDomainConfigRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>Name of the OpenSearch Service domain configuration that you want to describe.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDomainConfigRequest.type = Types::DescribeDomainConfigRequest
    DescribeDomainConfigResponse.add_member(:domain_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainConfig, location_name: 'DomainConfig', traits: {"smithy.api#documentation" => "<p>Container for the configuration of the OpenSearch Service domain.</p>", "smithy.api#required" => {}}))
    DescribeDomainConfigResponse.type = Types::DescribeDomainConfigResponse
    DescribeDomainHealthRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDomainHealthRequest.type = Types::DescribeDomainHealthRequest
    DescribeDomainHealthResponse.add_member(:domain_state, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainState, location_name: 'DomainState', traits: {"smithy.api#documentation" => "<p>The current state of the domain.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Processing</code> - The domain has updates in progress.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Active</code> - Requested changes have been processed and deployed to the domain.</p>\n            </li>\n         </ul>"}))
    DescribeDomainHealthResponse.add_member(:availability_zone_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfAZs, location_name: 'AvailabilityZoneCount', traits: {"smithy.api#documentation" => "<p>The number of Availability Zones configured for the domain. If the service is unable to fetch this information, it will return <code>NotAvailable</code>.</p>"}))
    DescribeDomainHealthResponse.add_member(:active_availability_zone_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfAZs, location_name: 'ActiveAvailabilityZoneCount', traits: {"smithy.api#documentation" => "<p>The number of active Availability Zones configured for the domain. If the service is unable to fetch this information, it will return <code>NotAvailable</code>.</p>"}))
    DescribeDomainHealthResponse.add_member(:stand_by_availability_zone_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfAZs, location_name: 'StandByAvailabilityZoneCount', traits: {"smithy.api#documentation" => "<p>The number of standby Availability Zones configured for the domain. If the service is unable to fetch this information, it will return <code>NotAvailable</code>.</p>"}))
    DescribeDomainHealthResponse.add_member(:data_node_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfNodes, location_name: 'DataNodeCount', traits: {"smithy.api#documentation" => "<p>The number of data nodes configured for the domain. If the service is unable to fetch this information, it will return <code>NotAvailable</code>.</p>"}))
    DescribeDomainHealthResponse.add_member(:dedicated_master, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DedicatedMaster', traits: {"smithy.api#documentation" => "<p>A boolean that indicates if dedicated master nodes are activated for the domain.</p>"}))
    DescribeDomainHealthResponse.add_member(:master_eligible_node_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfNodes, location_name: 'MasterEligibleNodeCount', traits: {"smithy.api#documentation" => "<p>The number of nodes that can be elected as a master node. If dedicated master nodes is turned on, this value is the number of dedicated master nodes configured for the domain.\n   If the service is unable to fetch this information, it will return <code>NotAvailable</code>.</p>"}))
    DescribeDomainHealthResponse.add_member(:warm_node_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfNodes, location_name: 'WarmNodeCount', traits: {"smithy.api#documentation" => "<p>The number of warm nodes configured for the domain.</p>"}))
    DescribeDomainHealthResponse.add_member(:master_node, Smithy::Schema::Shapes::ShapeRef.new(shape: MasterNodeStatus, location_name: 'MasterNode', traits: {"smithy.api#documentation" => "<p>Indicates whether the domain has an elected master node.</p>\n         <ul>\n            <li>\n               <p>\n                  <b>Available</b> - The domain has an elected master node.</p>\n            </li>\n            <li>\n               <p>\n                  <b>UnAvailable</b> - The master node hasn't yet been elected, and a quorum to elect a new master node hasn't been reached.</p>\n            </li>\n         </ul>"}))
    DescribeDomainHealthResponse.add_member(:cluster_health, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainHealth, location_name: 'ClusterHealth', traits: {"smithy.api#documentation" => "<p>The current health status of your cluster.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Red</code> - At least one primary shard is not allocated to any node.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Yellow</code> - All primary shards are allocated to nodes, but some replicas aren’t.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Green</code> - All primary shards and their replicas are allocated to nodes.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NotAvailable</code> - Unable to retrieve cluster health.</p>\n            </li>\n         </ul>"}))
    DescribeDomainHealthResponse.add_member(:total_shards, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfShards, location_name: 'TotalShards', traits: {"smithy.api#documentation" => "<p>The total number of primary and replica shards for the domain.</p>"}))
    DescribeDomainHealthResponse.add_member(:total_un_assigned_shards, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfShards, location_name: 'TotalUnAssignedShards', traits: {"smithy.api#documentation" => "<p>The total number of primary and replica shards not allocated to any of the nodes for the cluster.</p>"}))
    DescribeDomainHealthResponse.add_member(:environment_information, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentInfoList, location_name: 'EnvironmentInformation', traits: {"smithy.api#documentation" => "<p>A list of <code>EnvironmentInfo</code> for the domain. </p>"}))
    DescribeDomainHealthResponse.type = Types::DescribeDomainHealthResponse
    DescribeDomainNodesRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDomainNodesRequest.type = Types::DescribeDomainNodesRequest
    DescribeDomainNodesResponse.add_member(:domain_nodes_status_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNodesStatusList, location_name: 'DomainNodesStatusList', traits: {"smithy.api#documentation" => "<p>Contains nodes information list <code>DomainNodesStatusList</code> with\n   details about the all nodes on the requested domain.</p>"}))
    DescribeDomainNodesResponse.type = Types::DescribeDomainNodesResponse
    DescribeDomainRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain that you want information about.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDomainRequest.type = Types::DescribeDomainRequest
    DescribeDomainResponse.add_member(:domain_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainStatus, location_name: 'DomainStatus', traits: {"smithy.api#documentation" => "<p>List that contains the status of each specified OpenSearch Service domain.</p>", "smithy.api#required" => {}}))
    DescribeDomainResponse.type = Types::DescribeDomainResponse
    DescribeDomainsRequest.add_member(:domain_names, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameList, location_name: 'DomainNames', traits: {"smithy.api#documentation" => "<p>Array of OpenSearch Service domain names that you want information about. You must specify\n   at least one domain name.</p>", "smithy.api#required" => {}}))
    DescribeDomainsRequest.type = Types::DescribeDomainsRequest
    DescribeDomainsResponse.add_member(:domain_status_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainStatusList, location_name: 'DomainStatusList', traits: {"smithy.api#documentation" => "<p>The status of the requested domains.</p>", "smithy.api#required" => {}}))
    DescribeDomainsResponse.type = Types::DescribeDomainsResponse
    DescribeDryRunProgressRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDryRunProgressRequest.add_member(:dry_run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: 'DryRunId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the dry run.</p>", "smithy.api#httpQuery" => "dryRunId"}))
    DescribeDryRunProgressRequest.add_member(:load_dry_run_config, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'LoadDryRunConfig', traits: {"smithy.api#documentation" => "<p>Whether to include the configuration of the dry run in the response. The configuration\n   specifies the updates that you're planning to make on the domain.</p>", "smithy.api#httpQuery" => "loadDryRunConfig"}))
    DescribeDryRunProgressRequest.type = Types::DescribeDryRunProgressRequest
    DescribeDryRunProgressResponse.add_member(:dry_run_progress_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunProgressStatus, location_name: 'DryRunProgressStatus', traits: {"smithy.api#documentation" => "<p>The current status of the dry run, including any validation errors.</p>"}))
    DescribeDryRunProgressResponse.add_member(:dry_run_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainStatus, location_name: 'DryRunConfig', traits: {"smithy.api#documentation" => "<p>Details about the changes you're planning to make on the domain.</p>"}))
    DescribeDryRunProgressResponse.add_member(:dry_run_results, Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunResults, location_name: 'DryRunResults', traits: {"smithy.api#documentation" => "<p>The results of the dry run. </p>"}))
    DescribeDryRunProgressResponse.type = Types::DescribeDryRunProgressResponse
    DescribeInboundConnectionsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p> A list of filters used to match properties for inbound cross-cluster connections.</p>"}))
    DescribeInboundConnectionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An optional parameter that specifies the maximum number of results to return. You can use\n    <code>nextToken</code> to get the next page of results.</p>"}))
    DescribeInboundConnectionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If your initial <code>DescribeInboundConnections</code> operation returns a\n    <code>nextToken</code>, you can include the returned <code>nextToken</code> in subsequent\n    <code>DescribeInboundConnections</code> operations, which returns results in the next\n   page.</p>"}))
    DescribeInboundConnectionsRequest.type = Types::DescribeInboundConnectionsRequest
    DescribeInboundConnectionsResponse.add_member(:connections, Smithy::Schema::Shapes::ShapeRef.new(shape: InboundConnections, location_name: 'Connections', traits: {"smithy.api#documentation" => "<p>List of inbound connections.</p>"}))
    DescribeInboundConnectionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When <code>nextToken</code> is returned, there are more results available. The value of\n    <code>nextToken</code> is a unique pagination token for each page. Send the request again using the\n   returned token to retrieve the next page.</p>"}))
    DescribeInboundConnectionsResponse.type = Types::DescribeInboundConnectionsResponse
    DescribeInstanceTypeLimitsRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain. Only specify if you need the limits for an existing domain.</p>", "smithy.api#httpQuery" => "domainName"}))
    DescribeInstanceTypeLimitsRequest.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchPartitionInstanceType, location_name: 'InstanceType', traits: {"smithy.api#documentation" => "<p>The OpenSearch Service instance type for which you need limit information.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeInstanceTypeLimitsRequest.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionString, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>Version of OpenSearch or Elasticsearch, in the format Elasticsearch_X.Y or OpenSearch_X.Y.\n   Defaults to the latest version of OpenSearch.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeInstanceTypeLimitsRequest.type = Types::DescribeInstanceTypeLimitsRequest
    DescribeInstanceTypeLimitsResponse.add_member(:limits_by_role, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitsByRole, location_name: 'LimitsByRole', traits: {"smithy.api#documentation" => "<p>Map that contains all applicable instance type limits.<code>data</code> refers to data\n   nodes.<code>master</code> refers to dedicated master nodes.</p>"}))
    DescribeInstanceTypeLimitsResponse.type = Types::DescribeInstanceTypeLimitsResponse
    DescribeOutboundConnectionsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>List of filter names and values that you can use for requests.</p>"}))
    DescribeOutboundConnectionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An optional parameter that specifies the maximum number of results to return. You can use\n    <code>nextToken</code> to get the next page of results.</p>"}))
    DescribeOutboundConnectionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If your initial <code>DescribeOutboundConnections</code> operation returns a\n    <code>nextToken</code>, you can include the returned <code>nextToken</code> in subsequent\n    <code>DescribeOutboundConnections</code> operations, which returns results in the next\n   page.</p>"}))
    DescribeOutboundConnectionsRequest.type = Types::DescribeOutboundConnectionsRequest
    DescribeOutboundConnectionsResponse.add_member(:connections, Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundConnections, location_name: 'Connections', traits: {"smithy.api#documentation" => "<p>List of outbound connections that match the filter criteria.</p>"}))
    DescribeOutboundConnectionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When <code>nextToken</code> is returned, there are more results available. The value of\n    <code>nextToken</code> is a unique pagination token for each page. Send the request again using the\n   returned token to retrieve the next page.</p>"}))
    DescribeOutboundConnectionsResponse.type = Types::DescribeOutboundConnectionsResponse
    DescribePackagesFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackagesFilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Any field from <code>PackageDetails</code>.</p>"}))
    DescribePackagesFilter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackagesFilterValues, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>A non-empty list of values for the specified filter field.</p>"}))
    DescribePackagesFilter.type = Types::DescribePackagesFilter
    DescribePackagesFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackagesFilter)
    DescribePackagesFilterName.add_member(:package_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PackageID', traits: {"smithy.api#enumValue" => "PackageID"}))
    DescribePackagesFilterName.add_member(:package_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PackageName', traits: {"smithy.api#enumValue" => "PackageName"}))
    DescribePackagesFilterName.add_member(:package_status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PackageStatus', traits: {"smithy.api#enumValue" => "PackageStatus"}))
    DescribePackagesFilterName.add_member(:package_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PackageType', traits: {"smithy.api#enumValue" => "PackageType"}))
    DescribePackagesFilterName.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EngineVersion', traits: {"smithy.api#enumValue" => "EngineVersion"}))
    DescribePackagesFilterName.add_member(:package_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PackageOwner', traits: {"smithy.api#enumValue" => "PackageOwner"}))
    DescribePackagesFilterValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackagesFilterValue)
    DescribePackagesRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackagesFilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>Only returns packages that match the <code>DescribePackagesFilterList</code> values.</p>"}))
    DescribePackagesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An optional parameter that specifies the maximum number of results to return. You can use\n   <code>nextToken</code> to get the next page of results.</p>"}))
    DescribePackagesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If your initial <code>DescribePackageFilters</code> operation returns a\n   <code>nextToken</code>, you can include the returned <code>nextToken</code> in subsequent\n   <code>DescribePackageFilters</code> operations, which returns results in the next page.</p>"}))
    DescribePackagesRequest.type = Types::DescribePackagesRequest
    DescribePackagesResponse.add_member(:package_details_list, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDetailsList, location_name: 'PackageDetailsList', traits: {"smithy.api#documentation" => "<p>Basic information about a package.</p>"}))
    DescribePackagesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When <code>nextToken</code> is returned, there are more results available. The value of\n   <code>nextToken</code> is a unique pagination token for each page. Send the request again using the\n   returned token to retrieve the next page.</p>"}))
    DescribePackagesResponse.type = Types::DescribePackagesResponse
    DescribeReservedInstanceOfferingsRequest.add_member(:reserved_instance_offering_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: 'ReservedInstanceOfferingId', traits: {"smithy.api#documentation" => "<p>The Reserved Instance identifier filter value. Use this parameter to show only the available\n   instance types that match the specified reservation identifier.</p>", "smithy.api#httpQuery" => "offeringId"}))
    DescribeReservedInstanceOfferingsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An optional parameter that specifies the maximum number of results to return. You can use\n    <code>nextToken</code> to get the next page of results.</p>", "smithy.api#httpQuery" => "maxResults"}))
    DescribeReservedInstanceOfferingsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If your initial <code>DescribeReservedInstanceOfferings</code> operation returns a\n    <code>nextToken</code>, you can include the returned <code>nextToken</code> in subsequent\n    <code>DescribeReservedInstanceOfferings</code> operations, which returns results in the next\n   page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    DescribeReservedInstanceOfferingsRequest.type = Types::DescribeReservedInstanceOfferingsRequest
    DescribeReservedInstanceOfferingsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When <code>nextToken</code> is returned, there are more results available. The value of\n    <code>nextToken</code> is a unique pagination token for each page. Send the request again using the\n   returned token to retrieve the next page.</p>"}))
    DescribeReservedInstanceOfferingsResponse.add_member(:reserved_instance_offerings, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedInstanceOfferingList, location_name: 'ReservedInstanceOfferings', traits: {"smithy.api#documentation" => "<p>List of Reserved Instance offerings.</p>"}))
    DescribeReservedInstanceOfferingsResponse.type = Types::DescribeReservedInstanceOfferingsResponse
    DescribeReservedInstancesRequest.add_member(:reserved_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: 'ReservedInstanceId', traits: {"smithy.api#documentation" => "<p>The reserved instance identifier filter value. Use this parameter to show only the reservation that matches the\n   specified reserved OpenSearch instance ID.</p>", "smithy.api#httpQuery" => "reservationId"}))
    DescribeReservedInstancesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An optional parameter that specifies the maximum number of results to return. You can use\n    <code>nextToken</code> to get the next page of results.</p>", "smithy.api#httpQuery" => "maxResults"}))
    DescribeReservedInstancesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If your initial <code>DescribeReservedInstances</code> operation returns a\n    <code>nextToken</code>, you can include the returned <code>nextToken</code> in subsequent\n    <code>DescribeReservedInstances</code> operations, which returns results in the next\n   page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    DescribeReservedInstancesRequest.type = Types::DescribeReservedInstancesRequest
    DescribeReservedInstancesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When <code>nextToken</code> is returned, there are more results available. The value of\n    <code>nextToken</code> is a unique pagination token for each page. Send the request again using the\n   returned token to retrieve the next page.</p>"}))
    DescribeReservedInstancesResponse.add_member(:reserved_instances, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedInstanceList, location_name: 'ReservedInstances', traits: {"smithy.api#documentation" => "<p>List of Reserved Instances in the current Region.</p>"}))
    DescribeReservedInstancesResponse.type = Types::DescribeReservedInstancesResponse
    DescribeVpcEndpointsRequest.add_member(:vpc_endpoint_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointIdList, location_name: 'VpcEndpointIds', traits: {"smithy.api#documentation" => "<p>The unique identifiers of the endpoints to get information about.</p>", "smithy.api#required" => {}}))
    DescribeVpcEndpointsRequest.type = Types::DescribeVpcEndpointsRequest
    DescribeVpcEndpointsResponse.add_member(:vpc_endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpoints, location_name: 'VpcEndpoints', traits: {"smithy.api#documentation" => "<p>Information about each requested VPC endpoint.</p>", "smithy.api#required" => {}}))
    DescribeVpcEndpointsResponse.add_member(:vpc_endpoint_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointErrorList, location_name: 'VpcEndpointErrors', traits: {"smithy.api#documentation" => "<p>Any errors associated with the request.</p>", "smithy.api#required" => {}}))
    DescribeVpcEndpointsResponse.type = Types::DescribeVpcEndpointsResponse
    DirectQueryDataSource.add_member(:data_source_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceName, location_name: 'DataSourceName', traits: {"smithy.api#documentation" => "<p>\n   A unique, user-defined label to identify the data source \n   within your OpenSearch Service environment.\n  </p>"}))
    DirectQueryDataSource.add_member(:data_source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceType, location_name: 'DataSourceType', traits: {"smithy.api#documentation" => "<p>\n   The supported Amazon Web Services service that is used as the source for direct queries in OpenSearch Service. \n  </p>"}))
    DirectQueryDataSource.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>\n   A description that provides additional context and details about the data source.</p>"}))
    DirectQueryDataSource.add_member(:open_search_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryOpenSearchARNList, location_name: 'OpenSearchArns', traits: {"smithy.api#documentation" => "<p>\n   A list of Amazon Resource Names (ARNs) for the OpenSearch \n   collections that are associated with the direct query data source.\n  </p>"}))
    DirectQueryDataSource.add_member(:data_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataSourceArn', traits: {"smithy.api#documentation" => "<p>\n   The unique, system-generated identifier that represents the data source.</p>"}))
    DirectQueryDataSource.add_member(:tag_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList', traits: {"smithy.api#documentation" => "<p>\n   A list of tags attached to a direct query data source.</p>"}))
    DirectQueryDataSource.type = Types::DirectQueryDataSource
    DirectQueryDataSourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSource)
    DirectQueryDataSourceType.add_member(:cloud_watch_log, Types::DirectQueryDataSourceType::CloudWatchLog, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchDirectQueryDataSource, location_name: 'CloudWatchLog', traits: {"smithy.api#documentation" => "<p>\n   Specifies CloudWatch Logs as a type of data source for direct queries.\n  </p>"}))
    DirectQueryDataSourceType.add_member(:security_lake, Types::DirectQueryDataSourceType::SecurityLake, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityLakeDirectQueryDataSource, location_name: 'SecurityLake', traits: {"smithy.api#documentation" => "<p>\n   Specifies Security Lake as a type of data source for direct queries.\n  </p>"}))
    DirectQueryDataSourceType.add_member(:unknown, Types::DirectQueryDataSourceType::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    DirectQueryDataSourceType.type = Types::DirectQueryDataSourceType
    DirectQueryOpenSearchARNList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ARN)
    DisabledOperationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A description of the error.</p>"}))
    DisabledOperationException.type = Types::DisabledOperationException
    DissociatePackageRequest.add_member(:package_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: 'PackageID', traits: {"smithy.api#documentation" => "<p>Internal ID of the package to dissociate from the domain. Use\n    <code>ListPackagesForDomain</code> to find this value.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DissociatePackageRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>Name of the domain to dissociate the package from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DissociatePackageRequest.type = Types::DissociatePackageRequest
    DissociatePackageResponse.add_member(:domain_package_details, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainPackageDetails, location_name: 'DomainPackageDetails', traits: {"smithy.api#documentation" => "<p> Information about a package that has been dissociated from the domain.</p>"}))
    DissociatePackageResponse.type = Types::DissociatePackageResponse
    DissociatePackagesRequest.add_member(:package_list, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageIDList, location_name: 'PackageList', traits: {"smithy.api#documentation" => "<p>A list of package IDs to be dissociated from a domain.</p>", "smithy.api#required" => {}}))
    DissociatePackagesRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    DissociatePackagesRequest.type = Types::DissociatePackagesRequest
    DissociatePackagesResponse.add_member(:domain_package_details_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainPackageDetailsList, location_name: 'DomainPackageDetailsList', traits: {"smithy.api#documentation" => "<p>A list of package details for the packages that were dissociated from the domain.</p>"}))
    DissociatePackagesResponse.type = Types::DissociatePackagesResponse
    DomainConfig.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionStatus, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>The OpenSearch or Elasticsearch version that the domain is running.</p>"}))
    DomainConfig.add_member(:cluster_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterConfigStatus, location_name: 'ClusterConfig', traits: {"smithy.api#documentation" => "<p>Container for the cluster configuration of a the domain.</p>"}))
    DomainConfig.add_member(:ebs_options, Smithy::Schema::Shapes::ShapeRef.new(shape: EBSOptionsStatus, location_name: 'EBSOptions', traits: {"smithy.api#documentation" => "<p>Container for EBS options configured for the domain.</p>"}))
    DomainConfig.add_member(:access_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPoliciesStatus, location_name: 'AccessPolicies', traits: {"smithy.api#documentation" => "<p>Specifies the access policies for the domain.</p>"}))
    DomainConfig.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddressTypeStatus, location_name: 'IPAddressType', traits: {"smithy.api#documentation" => "<p>Choose either dual stack or IPv4 as your IP address type. \n   Dual stack allows you to share domain resources across IPv4 and IPv6 address types, and is the recommended option. \n   If you set your IP address type to dual stack, you can't change your address type later.</p>"}))
    DomainConfig.add_member(:snapshot_options, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotOptionsStatus, location_name: 'SnapshotOptions', traits: {"smithy.api#documentation" => "<p>DEPRECATED. Container for parameters required to configure automated snapshots of domain\n   indexes.</p>"}))
    DomainConfig.add_member(:vpc_options, Smithy::Schema::Shapes::ShapeRef.new(shape: VPCDerivedInfoStatus, location_name: 'VPCOptions', traits: {"smithy.api#documentation" => "<p>The current VPC options for the domain and the status of any updates to their\n   configuration.</p>"}))
    DomainConfig.add_member(:cognito_options, Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoOptionsStatus, location_name: 'CognitoOptions', traits: {"smithy.api#documentation" => "<p>Container for Amazon Cognito options for the domain.</p>"}))
    DomainConfig.add_member(:encryption_at_rest_options, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAtRestOptionsStatus, location_name: 'EncryptionAtRestOptions', traits: {"smithy.api#documentation" => "<p>Key-value pairs to enable encryption at rest.</p>"}))
    DomainConfig.add_member(:node_to_node_encryption_options, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeToNodeEncryptionOptionsStatus, location_name: 'NodeToNodeEncryptionOptions', traits: {"smithy.api#documentation" => "<p>Whether node-to-node encryption is enabled or disabled.</p>"}))
    DomainConfig.add_member(:advanced_options, Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedOptionsStatus, location_name: 'AdvancedOptions', traits: {"smithy.api#documentation" => "<p>Key-value pairs to specify advanced configuration options. For more information, see <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options\">Advanced options</a>.</p>"}))
    DomainConfig.add_member(:log_publishing_options, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPublishingOptionsStatus, location_name: 'LogPublishingOptions', traits: {"smithy.api#documentation" => "<p>Key-value pairs to configure log publishing.</p>"}))
    DomainConfig.add_member(:domain_endpoint_options, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainEndpointOptionsStatus, location_name: 'DomainEndpointOptions', traits: {"smithy.api#documentation" => "<p>Additional options for the domain endpoint, such as whether to require HTTPS for all\n   traffic.</p>"}))
    DomainConfig.add_member(:advanced_security_options, Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedSecurityOptionsStatus, location_name: 'AdvancedSecurityOptions', traits: {"smithy.api#documentation" => "<p>Container for fine-grained access control settings for the domain.</p>"}))
    DomainConfig.add_member(:identity_center_options, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterOptionsStatus, location_name: 'IdentityCenterOptions', traits: {"smithy.api#documentation" => "<p>Configuration options for enabling and managing IAM Identity Center integration within a domain.</p>"}))
    DomainConfig.add_member(:auto_tune_options, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneOptionsStatus, location_name: 'AutoTuneOptions', traits: {"smithy.api#documentation" => "<p>Container for Auto-Tune settings for the domain.</p>"}))
    DomainConfig.add_member(:change_progress_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressDetails, location_name: 'ChangeProgressDetails', traits: {"smithy.api#documentation" => "<p>Container for information about the progress of an existing configuration change.</p>"}))
    DomainConfig.add_member(:off_peak_window_options, Smithy::Schema::Shapes::ShapeRef.new(shape: OffPeakWindowOptionsStatus, location_name: 'OffPeakWindowOptions', traits: {"smithy.api#documentation" => "<p>Container for off-peak window options for the domain.</p>"}))
    DomainConfig.add_member(:software_update_options, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareUpdateOptionsStatus, location_name: 'SoftwareUpdateOptions', traits: {"smithy.api#documentation" => "<p>Software update options for the domain.</p>"}))
    DomainConfig.add_member(:modifying_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyingPropertiesList, location_name: 'ModifyingProperties', traits: {"smithy.api#documentation" => "<p>Information about the domain properties that are currently being modified.</p>"}))
    DomainConfig.add_member(:aiml_options, Smithy::Schema::Shapes::ShapeRef.new(shape: AIMLOptionsStatus, location_name: 'AIMLOptions', traits: {"smithy.api#documentation" => "<p>Container for parameters required to enable all machine learning features.</p>"}))
    DomainConfig.type = Types::DomainConfig
    DomainEndpointOptions.add_member(:enforce_https, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnforceHTTPS', traits: {"smithy.api#documentation" => "<p>True to require that all traffic to the domain arrive over HTTPS.</p>"}))
    DomainEndpointOptions.add_member(:tls_security_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: TLSSecurityPolicy, location_name: 'TLSSecurityPolicy', traits: {"smithy.api#documentation" => "<p>Specify the TLS security policy to apply to the HTTPS endpoint of the domain. The policy can\n   be one of the following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>Policy-Min-TLS-1-0-2019-07:</b> TLS security policy that\n     supports TLS version 1.0 to TLS version 1.2</p>\n            </li>\n            <li>\n               <p>\n                  <b>Policy-Min-TLS-1-2-2019-07:</b> TLS security policy that\n     supports only TLS version 1.2</p>\n            </li>\n            <li>\n               <p>\n                  <b>Policy-Min-TLS-1-2-PFS-2023-10:</b> TLS security policy that\n     supports TLS version 1.2 to TLS version 1.3 with perfect forward secrecy cipher suites</p>\n            </li>\n         </ul>"}))
    DomainEndpointOptions.add_member(:custom_endpoint_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'CustomEndpointEnabled', traits: {"smithy.api#documentation" => "<p>Whether to enable a custom endpoint for the domain.</p>"}))
    DomainEndpointOptions.add_member(:custom_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameFqdn, location_name: 'CustomEndpoint', traits: {"smithy.api#documentation" => "<p>The fully qualified URL for the custom endpoint.</p>"}))
    DomainEndpointOptions.add_member(:custom_endpoint_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'CustomEndpointCertificateArn', traits: {"smithy.api#documentation" => "<p>The ARN for your security certificate, managed in Amazon Web Services Certificate Manager\n   (ACM).</p>"}))
    DomainEndpointOptions.type = Types::DomainEndpointOptions
    DomainEndpointOptionsStatus.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainEndpointOptions, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>Options to configure the endpoint for a domain.</p>", "smithy.api#required" => {}}))
    DomainEndpointOptionsStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the endpoint options for a domain.</p>", "smithy.api#required" => {}}))
    DomainEndpointOptionsStatus.type = Types::DomainEndpointOptionsStatus
    DomainHealth.add_member(:red, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Red', traits: {"smithy.api#enumValue" => "Red"}))
    DomainHealth.add_member(:yellow, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Yellow', traits: {"smithy.api#enumValue" => "Yellow"}))
    DomainHealth.add_member(:green, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Green', traits: {"smithy.api#enumValue" => "Green"}))
    DomainHealth.add_member(:not_available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotAvailable', traits: {"smithy.api#enumValue" => "NotAvailable"}))
    DomainInfo.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>Name of the domain.</p>"}))
    DomainInfo.add_member(:engine_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'EngineType', traits: {"smithy.api#documentation" => "<p>The type of search engine that the domain is running.<code>OpenSearch</code> for an\n   OpenSearch engine, or <code>Elasticsearch</code> for a legacy Elasticsearch OSS engine.</p>"}))
    DomainInfo.type = Types::DomainInfo
    DomainInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInfo)
    DomainInformationContainer.add_member(:aws_domain_information, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSDomainInformation, location_name: 'AWSDomainInformation', traits: {"smithy.api#documentation" => "<p>Information about an Amazon OpenSearch Service domain.</p>"}))
    DomainInformationContainer.type = Types::DomainInformationContainer
    DomainMaintenanceDetails.add_member(:maintenance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'MaintenanceId', traits: {"smithy.api#documentation" => "<p>The ID of the requested action.</p>"}))
    DomainMaintenanceDetails.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain.</p>"}))
    DomainMaintenanceDetails.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceType, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The name of the action.</p>"}))
    DomainMaintenanceDetails.add_member(:node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeId, location_name: 'NodeId', traits: {"smithy.api#documentation" => "<p>The ID of the data node.</p>"}))
    DomainMaintenanceDetails.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the action.</p>"}))
    DomainMaintenanceDetails.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceStatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The status message for the action.</p>"}))
    DomainMaintenanceDetails.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the action was created.</p>"}))
    DomainMaintenanceDetails.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the action was updated.</p>"}))
    DomainMaintenanceDetails.type = Types::DomainMaintenanceDetails
    DomainMaintenanceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DomainMaintenanceDetails)
    DomainNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName)
    DomainNodesStatus.add_member(:node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeId, location_name: 'NodeId', traits: {"smithy.api#documentation" => "<p>The ID of the node.</p>"}))
    DomainNodesStatus.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeType, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>Indicates whether the nodes is a data, master, or UltraWarm node.</p>"}))
    DomainNodesStatus.add_member(:availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: 'AvailabilityZone', traits: {"smithy.api#documentation" => "<p>The Availability Zone of the node.</p>"}))
    DomainNodesStatus.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchPartitionInstanceType, location_name: 'InstanceType', traits: {"smithy.api#documentation" => "<p>The instance type information of the node.</p>"}))
    DomainNodesStatus.add_member(:node_status, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeStatus, location_name: 'NodeStatus', traits: {"smithy.api#documentation" => "<p>Indicates if the node is active or in standby.</p>"}))
    DomainNodesStatus.add_member(:storage_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeName, location_name: 'StorageType', traits: {"smithy.api#documentation" => "<p>Indicates if the node has EBS or instance storage. </p>"}))
    DomainNodesStatus.add_member(:storage_volume_type, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeType, location_name: 'StorageVolumeType', traits: {"smithy.api#documentation" => "<p>If the nodes has EBS storage, indicates if the volume type is gp2 or gp3. Only applicable\n   for data nodes. </p>"}))
    DomainNodesStatus.add_member(:storage_size, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeSize, location_name: 'StorageSize', traits: {"smithy.api#documentation" => "<p>The storage size of the node, in GiB.</p>"}))
    DomainNodesStatus.type = Types::DomainNodesStatus
    DomainNodesStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNodesStatus)
    DomainPackageDetails.add_member(:package_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: 'PackageID', traits: {"smithy.api#documentation" => "<p>Internal ID of the package.</p>"}))
    DomainPackageDetails.add_member(:package_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'PackageName', traits: {"smithy.api#documentation" => "<p>User-specified name of the package.</p>"}))
    DomainPackageDetails.add_member(:package_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageType, location_name: 'PackageType', traits: {"smithy.api#documentation" => "<p>The type of package.</p>"}))
    DomainPackageDetails.add_member(:last_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdated, location_name: 'LastUpdated', traits: {"smithy.api#documentation" => "<p>Timestamp of the most recent update to the package association status.</p>"}))
    DomainPackageDetails.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>Name of the domain that the package is associated with.</p>"}))
    DomainPackageDetails.add_member(:domain_package_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainPackageStatus, location_name: 'DomainPackageStatus', traits: {"smithy.api#documentation" => "<p>State of the association.</p>"}))
    DomainPackageDetails.add_member(:package_version, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion, location_name: 'PackageVersion', traits: {"smithy.api#documentation" => "<p>The current version of the package.</p>"}))
    DomainPackageDetails.add_member(:prerequisite_package_id_list, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageIDList, location_name: 'PrerequisitePackageIDList', traits: {"smithy.api#documentation" => "<p>A list of package IDs that must be associated with the domain before or with the package can be associated.</p>"}))
    DomainPackageDetails.add_member(:reference_path, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferencePath, location_name: 'ReferencePath', traits: {"smithy.api#documentation" => "<p>The relative path of the package on the OpenSearch Service cluster nodes. This is <code>synonym_path</code>\n   when the package is for synonym files.</p>"}))
    DomainPackageDetails.add_member(:error_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: 'ErrorDetails', traits: {"smithy.api#documentation" => "<p>Additional information if the package is in an error state. Null otherwise.</p>"}))
    DomainPackageDetails.add_member(:association_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageAssociationConfiguration, location_name: 'AssociationConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for associating a package with an Amazon OpenSearch Service domain.</p>"}))
    DomainPackageDetails.type = Types::DomainPackageDetails
    DomainPackageDetailsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DomainPackageDetails)
    DomainPackageStatus.add_member(:associating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSOCIATING', traits: {"smithy.api#enumValue" => "ASSOCIATING"}))
    DomainPackageStatus.add_member(:association_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSOCIATION_FAILED', traits: {"smithy.api#enumValue" => "ASSOCIATION_FAILED"}))
    DomainPackageStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DomainPackageStatus.add_member(:dissociating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISSOCIATING', traits: {"smithy.api#enumValue" => "DISSOCIATING"}))
    DomainPackageStatus.add_member(:dissociation_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISSOCIATION_FAILED', traits: {"smithy.api#enumValue" => "DISSOCIATION_FAILED"}))
    DomainProcessingStatusType.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "Creating"}))
    DomainProcessingStatusType.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "Active"}))
    DomainProcessingStatusType.add_member(:modifying, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODIFYING', traits: {"smithy.api#enumValue" => "Modifying"}))
    DomainProcessingStatusType.add_member(:upgrading, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPGRADING', traits: {"smithy.api#enumValue" => "UpgradingEngineVersion"}))
    DomainProcessingStatusType.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UpdatingServiceSoftware"}))
    DomainProcessingStatusType.add_member(:isolated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ISOLATED', traits: {"smithy.api#enumValue" => "Isolated"}))
    DomainProcessingStatusType.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "Deleting"}))
    DomainState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "Active"}))
    DomainState.add_member(:processing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Processing', traits: {"smithy.api#enumValue" => "Processing"}))
    DomainState.add_member(:not_available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotAvailable', traits: {"smithy.api#enumValue" => "NotAvailable"}))
    DomainStatus.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>Unique identifier for the domain.</p>", "smithy.api#required" => {}}))
    DomainStatus.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>Name of the domain. Domain names are unique across all domains owned by the same account\n   within an Amazon Web Services Region.</p>", "smithy.api#required" => {}}))
    DomainStatus.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the domain. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html\">IAM identifiers\n   </a> in the <i>AWS Identity and Access Management User Guide</i>.</p>", "smithy.api#required" => {}}))
    DomainStatus.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Created', traits: {"smithy.api#documentation" => "<p>Creation status of an OpenSearch Service domain. True if domain creation is complete. False\n   if domain creation is still in progress.</p>"}))
    DomainStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Deleted', traits: {"smithy.api#documentation" => "<p>Deletion status of an OpenSearch Service domain. True if domain deletion is complete. False\n   if domain deletion is still in progress. Once deletion is complete, the status of the domain is\n   no longer returned.</p>"}))
    DomainStatus.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUrl, location_name: 'Endpoint', traits: {"smithy.api#documentation" => "<p>Domain-specific endpoint used to submit index, search, and data upload requests to the\n   domain.</p>"}))
    DomainStatus.add_member(:endpoint_v2, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUrl, location_name: 'EndpointV2', traits: {"smithy.api#documentation" => "<p>If <code>IPAddressType</code> to set to <code>dualstack</code>, a version 2 domain endpoint is provisioned.\n   This endpoint functions like a normal endpoint, except that it works with both IPv4 and IPv6 IP addresses.\n   Normal endpoints work only with IPv4 IP addresses.\n  </p>"}))
    DomainStatus.add_member(:endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointsMap, location_name: 'Endpoints', traits: {"smithy.api#documentation" => "<p>The key-value pair that exists if the OpenSearch Service domain uses VPC endpoints. For example:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>IPv4 IP addresses</b> -\n      <code>'vpc','vpc-endpoint-h2dsd34efgyghrtguk5gt6j2foh4.us-east-1.es.amazonaws.com'</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <b>Dual stack IP addresses</b> -\n      <code>'vpcv2':'vpc-endpoint-h2dsd34efgyghrtguk5gt6j2foh4.aos.us-east-1.on.aws'</code>\n               </p>\n            </li>\n         </ul>"}))
    DomainStatus.add_member(:domain_endpoint_v2_hosted_zone_id, Smithy::Schema::Shapes::ShapeRef.new(shape: HostedZoneId, location_name: 'DomainEndpointV2HostedZoneId', traits: {"smithy.api#documentation" => "<p>The dual stack hosted zone ID for the domain. </p>"}))
    DomainStatus.add_member(:processing, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Processing', traits: {"smithy.api#documentation" => "<p>The status of the domain configuration. True if OpenSearch Service is processing\n   configuration changes. False if the configuration is active.</p>"}))
    DomainStatus.add_member(:upgrade_processing, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UpgradeProcessing', traits: {"smithy.api#documentation" => "<p>The status of a domain version upgrade to a new version of OpenSearch or Elasticsearch. True\n   if OpenSearch Service is in the process of a version upgrade. False if the configuration is\n   active.</p>"}))
    DomainStatus.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionString, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>Version of OpenSearch or Elasticsearch that the domain is running, in the format\n    <code>Elasticsearch_X.Y</code> or <code>OpenSearch_X.Y</code>.</p>"}))
    DomainStatus.add_member(:cluster_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterConfig, location_name: 'ClusterConfig', traits: {"smithy.api#documentation" => "<p>Container for the cluster configuration of the domain.</p>", "smithy.api#required" => {}}))
    DomainStatus.add_member(:ebs_options, Smithy::Schema::Shapes::ShapeRef.new(shape: EBSOptions, location_name: 'EBSOptions', traits: {"smithy.api#documentation" => "<p>Container for EBS-based storage settings for the domain.</p>"}))
    DomainStatus.add_member(:access_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'AccessPolicies', traits: {"smithy.api#documentation" => "<p>Identity and Access Management (IAM) policy document specifying the access policies for the\n   domain.</p>"}))
    DomainStatus.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddressType, location_name: 'IPAddressType', traits: {"smithy.api#documentation" => "<p>The type of IP addresses supported by the endpoint for the domain.</p>"}))
    DomainStatus.add_member(:snapshot_options, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotOptions, location_name: 'SnapshotOptions', traits: {"smithy.api#documentation" => "<p>DEPRECATED. Container for parameters required to configure automated snapshots of domain\n   indexes.</p>"}))
    DomainStatus.add_member(:vpc_options, Smithy::Schema::Shapes::ShapeRef.new(shape: VPCDerivedInfo, location_name: 'VPCOptions', traits: {"smithy.api#documentation" => "<p>The VPC configuration for the domain.</p>"}))
    DomainStatus.add_member(:cognito_options, Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoOptions, location_name: 'CognitoOptions', traits: {"smithy.api#documentation" => "<p>Key-value pairs to configure Amazon Cognito authentication for OpenSearch Dashboards.</p>"}))
    DomainStatus.add_member(:encryption_at_rest_options, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, location_name: 'EncryptionAtRestOptions', traits: {"smithy.api#documentation" => "<p>Encryption at rest settings for the domain.</p>"}))
    DomainStatus.add_member(:node_to_node_encryption_options, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeToNodeEncryptionOptions, location_name: 'NodeToNodeEncryptionOptions', traits: {"smithy.api#documentation" => "<p>Whether node-to-node encryption is enabled or disabled.</p>"}))
    DomainStatus.add_member(:advanced_options, Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: 'AdvancedOptions', traits: {"smithy.api#documentation" => "<p>Key-value pairs that specify advanced configuration options.</p>"}))
    DomainStatus.add_member(:log_publishing_options, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: 'LogPublishingOptions', traits: {"smithy.api#documentation" => "<p>Log publishing options for the domain.</p>"}))
    DomainStatus.add_member(:service_software_options, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSoftwareOptions, location_name: 'ServiceSoftwareOptions', traits: {"smithy.api#documentation" => "<p>The current status of the domain's service software.</p>"}))
    DomainStatus.add_member(:domain_endpoint_options, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainEndpointOptions, location_name: 'DomainEndpointOptions', traits: {"smithy.api#documentation" => "<p>Additional options for the domain endpoint, such as whether to require HTTPS for all\n   traffic.</p>"}))
    DomainStatus.add_member(:advanced_security_options, Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedSecurityOptions, location_name: 'AdvancedSecurityOptions', traits: {"smithy.api#documentation" => "<p>Settings for fine-grained access control.</p>"}))
    DomainStatus.add_member(:identity_center_options, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterOptions, location_name: 'IdentityCenterOptions', traits: {"smithy.api#documentation" => "<p>Configuration options for controlling IAM Identity Center integration within a domain.</p>"}))
    DomainStatus.add_member(:auto_tune_options, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneOptionsOutput, location_name: 'AutoTuneOptions', traits: {"smithy.api#documentation" => "<p>Auto-Tune settings for the domain.</p>"}))
    DomainStatus.add_member(:change_progress_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressDetails, location_name: 'ChangeProgressDetails', traits: {"smithy.api#documentation" => "<p>Information about a configuration change happening on the domain.</p>"}))
    DomainStatus.add_member(:off_peak_window_options, Smithy::Schema::Shapes::ShapeRef.new(shape: OffPeakWindowOptions, location_name: 'OffPeakWindowOptions', traits: {"smithy.api#documentation" => "<p>Options that specify a custom 10-hour window during which OpenSearch Service can perform\n   configuration changes on the domain.</p>"}))
    DomainStatus.add_member(:software_update_options, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareUpdateOptions, location_name: 'SoftwareUpdateOptions', traits: {"smithy.api#documentation" => "<p>Service software update options for the domain.</p>"}))
    DomainStatus.add_member(:domain_processing_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainProcessingStatusType, location_name: 'DomainProcessingStatus', traits: {"smithy.api#documentation" => "<p>The status of any changes that are currently in progress for the domain.</p>"}))
    DomainStatus.add_member(:modifying_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyingPropertiesList, location_name: 'ModifyingProperties', traits: {"smithy.api#documentation" => "<p>Information about the domain properties that are currently being modified.</p>"}))
    DomainStatus.add_member(:aiml_options, Smithy::Schema::Shapes::ShapeRef.new(shape: AIMLOptionsOutput, location_name: 'AIMLOptions', traits: {"smithy.api#documentation" => "<p>Container for parameters required to enable all machine learning features.</p>"}))
    DomainStatus.type = Types::DomainStatus
    DomainStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DomainStatus)
    DryRunMode.add_member(:basic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Basic', traits: {"smithy.api#enumValue" => "Basic"}))
    DryRunMode.add_member(:verbose, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Verbose', traits: {"smithy.api#enumValue" => "Verbose"}))
    DryRunProgressStatus.add_member(:dry_run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: 'DryRunId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the dry run.</p>", "smithy.api#required" => {}}))
    DryRunProgressStatus.add_member(:dry_run_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DryRunStatus', traits: {"smithy.api#documentation" => "<p>The current status of the dry run.</p>", "smithy.api#required" => {}}))
    DryRunProgressStatus.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the dry run was initiated.</p>", "smithy.api#required" => {}}))
    DryRunProgressStatus.add_member(:update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UpdateDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the dry run was last updated.</p>", "smithy.api#required" => {}}))
    DryRunProgressStatus.add_member(:validation_failures, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationFailures, location_name: 'ValidationFailures', traits: {"smithy.api#documentation" => "<p>Any validation failures that occurred as a result of the dry run.</p>"}))
    DryRunProgressStatus.type = Types::DryRunProgressStatus
    DryRunResults.add_member(:deployment_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentType, location_name: 'DeploymentType', traits: {"smithy.api#documentation" => "<p> Specifies the way in which OpenSearch Service will apply an update. Possible values\n   are:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>Blue/Green</b> - The update requires a blue/green\n     deployment.</p>\n            </li>\n            <li>\n               <p>\n                  <b>DynamicUpdate</b> - No blue/green deployment required</p>\n            </li>\n            <li>\n               <p>\n                  <b>Undetermined</b> - The domain is in the middle of an update\n     and can't predict the deployment type. Try again after the update is complete.</p>\n            </li>\n            <li>\n               <p>\n                  <b>None</b> - The request doesn't include any configuration\n     changes.</p>\n            </li>\n         </ul>"}))
    DryRunResults.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A message corresponding to the deployment type.</p>"}))
    DryRunResults.type = Types::DryRunResults
    Duration.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: DurationValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>Integer to specify the value of a maintenance schedule duration.</p>"}))
    Duration.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeUnit, location_name: 'Unit', traits: {"smithy.api#documentation" => "<p>The unit of measurement for the duration of a maintenance schedule.</p>"}))
    Duration.type = Types::Duration
    EBSOptions.add_member(:ebs_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EBSEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether EBS volumes are attached to data nodes in an OpenSearch Service\n   domain.</p>"}))
    EBSOptions.add_member(:volume_type, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeType, location_name: 'VolumeType', traits: {"smithy.api#documentation" => "<p>Specifies the type of EBS volumes attached to data nodes.</p>"}))
    EBSOptions.add_member(:volume_size, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: 'VolumeSize', traits: {"smithy.api#documentation" => "<p>Specifies the size (in GiB) of EBS volumes attached to data nodes.</p>"}))
    EBSOptions.add_member(:iops, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: 'Iops', traits: {"smithy.api#documentation" => "<p>Specifies the baseline input/output (I/O) performance of EBS volumes attached to data nodes.\n   Applicable only for the <code>gp3</code> and provisioned IOPS EBS volume types.</p>"}))
    EBSOptions.add_member(:throughput, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: 'Throughput', traits: {"smithy.api#documentation" => "<p>Specifies the throughput (in MiB/s) of the EBS volumes attached to data nodes. Applicable\n   only for the <code>gp3</code> volume type.</p>"}))
    EBSOptions.type = Types::EBSOptions
    EBSOptionsStatus.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: EBSOptions, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>The configured EBS options for the specified domain.</p>", "smithy.api#required" => {}}))
    EBSOptionsStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the EBS options for the specified domain.</p>", "smithy.api#required" => {}}))
    EBSOptionsStatus.type = Types::EBSOptionsStatus
    EncryptionAtRestOptions.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>True to enable encryption at rest.</p>"}))
    EncryptionAtRestOptions.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The KMS key ID. Takes the form <code>1a2a3a4-1a2a-3a4a-5a6a-1a2a3a4a5a6a</code>.</p>"}))
    EncryptionAtRestOptions.type = Types::EncryptionAtRestOptions
    EncryptionAtRestOptionsStatus.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>Encryption at rest options for the specified domain.</p>", "smithy.api#required" => {}}))
    EncryptionAtRestOptionsStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the encryption at rest options for the specified domain.</p>", "smithy.api#required" => {}}))
    EncryptionAtRestOptionsStatus.type = Types::EncryptionAtRestOptionsStatus
    EndpointsMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    EndpointsMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUrl)
    EngineType.add_member(:open_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OpenSearch', traits: {"smithy.api#enumValue" => "OpenSearch"}))
    EngineType.add_member(:elasticsearch, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Elasticsearch', traits: {"smithy.api#enumValue" => "Elasticsearch"}))
    EnvironmentInfo.add_member(:availability_zone_information, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneInfoList, location_name: 'AvailabilityZoneInformation', traits: {"smithy.api#documentation" => "<p> A list of <code>AvailabilityZoneInfo</code> for the domain.</p>"}))
    EnvironmentInfo.type = Types::EnvironmentInfo
    EnvironmentInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentInfo)
    ErrorDetails.add_member(:error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorType, location_name: 'ErrorType', traits: {"smithy.api#documentation" => "<p>The type of error that occurred.</p>"}))
    ErrorDetails.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>A message describing the error.</p>"}))
    ErrorDetails.type = Types::ErrorDetails
    Filter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the filter.</p>"}))
    Filter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueStringList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>One or more values for the filter.</p>"}))
    Filter.type = Types::Filter
    FilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Filter)
    GUIDList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GUID)
    GetApplicationRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the OpenSearch application to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationRequest.type = Types::GetApplicationRequest
    GetApplicationResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the OpenSearch application.</p>"}))
    GetApplicationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn'))
    GetApplicationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the OpenSearch application.</p>"}))
    GetApplicationResponse.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'endpoint', traits: {"smithy.api#documentation" => "<p>The endpoint URL of the OpenSearch application.</p>"}))
    GetApplicationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the OpenSearch application. Possible values: <code>CREATING</code>, <code>UPDATING</code>, <code>DELETING</code>, <code>FAILED</code>, <code>ACTIVE</code>, and <code>DELETED</code>.</p>"}))
    GetApplicationResponse.add_member(:iam_identity_center_options, Smithy::Schema::Shapes::ShapeRef.new(shape: IamIdentityCenterOptions, location_name: 'iamIdentityCenterOptions', traits: {"smithy.api#documentation" => "<p>The IAM Identity Center settings configured for the OpenSearch application.</p>"}))
    GetApplicationResponse.add_member(:data_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSources, location_name: 'dataSources', traits: {"smithy.api#documentation" => "<p>The data sources associated with the OpenSearch application.</p>"}))
    GetApplicationResponse.add_member(:app_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: AppConfigs, location_name: 'appConfigs', traits: {"smithy.api#documentation" => "<p>The configuration settings of the OpenSearch application.</p>"}))
    GetApplicationResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the OpenSearch application was created.</p>"}))
    GetApplicationResponse.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of the last update to the OpenSearch application.</p>"}))
    GetApplicationResponse.type = Types::GetApplicationResponse
    GetCompatibleVersionsRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of an existing domain. Provide this parameter to limit the results to a single\n   domain.</p>", "smithy.api#httpQuery" => "domainName"}))
    GetCompatibleVersionsRequest.type = Types::GetCompatibleVersionsRequest
    GetCompatibleVersionsResponse.add_member(:compatible_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: CompatibleVersionsList, location_name: 'CompatibleVersions', traits: {"smithy.api#documentation" => "<p>A map of OpenSearch or Elasticsearch versions and the versions you can upgrade them\n   to.</p>"}))
    GetCompatibleVersionsResponse.type = Types::GetCompatibleVersionsResponse
    GetDataSourceRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSourceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the data source to get information about.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSourceRequest.type = Types::GetDataSourceRequest
    GetDataSourceResponse.add_member(:data_source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceType, location_name: 'DataSourceType', traits: {"smithy.api#documentation" => "<p>The type of data source.</p>"}))
    GetDataSourceResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the data source.</p>"}))
    GetDataSourceResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the data source.</p>"}))
    GetDataSourceResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the data source.</p>"}))
    GetDataSourceResponse.type = Types::GetDataSourceResponse
    GetDirectQueryDataSourceRequest.add_member(:data_source_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceName, location_name: 'DataSourceName', traits: {"smithy.api#documentation" => "<p>\n   A unique, user-defined label that identifies the data source within \n   your OpenSearch Service environment.\n  </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDirectQueryDataSourceRequest.type = Types::GetDirectQueryDataSourceRequest
    GetDirectQueryDataSourceResponse.add_member(:data_source_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceName, location_name: 'DataSourceName', traits: {"smithy.api#documentation" => "<p>\n   A unique, user-defined label to identify the data source \n   within your OpenSearch Service environment.\n  </p>"}))
    GetDirectQueryDataSourceResponse.add_member(:data_source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceType, location_name: 'DataSourceType', traits: {"smithy.api#documentation" => "<p>\n   The supported Amazon Web Services service that is used as the source for \n   direct queries in OpenSearch Service. \n  </p>"}))
    GetDirectQueryDataSourceResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>\n   A description that provides additional context and details about the data source.\n  </p>"}))
    GetDirectQueryDataSourceResponse.add_member(:open_search_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryOpenSearchARNList, location_name: 'OpenSearchArns', traits: {"smithy.api#documentation" => "<p>\n   A list of Amazon Resource Names (ARNs) for the OpenSearch \n   collections that are associated with the direct query data source.\n  </p>"}))
    GetDirectQueryDataSourceResponse.add_member(:data_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataSourceArn', traits: {"smithy.api#documentation" => "<p>\n   The unique, system-generated identifier that represents the data source.\n  </p>"}))
    GetDirectQueryDataSourceResponse.type = Types::GetDirectQueryDataSourceResponse
    GetDomainMaintenanceStatusRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDomainMaintenanceStatusRequest.add_member(:maintenance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'MaintenanceId', traits: {"smithy.api#documentation" => "<p>The request ID of the maintenance action.</p>", "smithy.api#httpQuery" => "maintenanceId", "smithy.api#required" => {}}))
    GetDomainMaintenanceStatusRequest.type = Types::GetDomainMaintenanceStatusRequest
    GetDomainMaintenanceStatusResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the maintenance action.</p>"}))
    GetDomainMaintenanceStatusResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceStatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The status message of the maintenance action.</p>"}))
    GetDomainMaintenanceStatusResponse.add_member(:node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeId, location_name: 'NodeId', traits: {"smithy.api#documentation" => "<p>The node ID of the maintenance action.</p>"}))
    GetDomainMaintenanceStatusResponse.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceType, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The action name.</p>"}))
    GetDomainMaintenanceStatusResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the action was created.</p>"}))
    GetDomainMaintenanceStatusResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the action was updated.</p>"}))
    GetDomainMaintenanceStatusResponse.type = Types::GetDomainMaintenanceStatusResponse
    GetPackageVersionHistoryRequest.add_member(:package_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: 'PackageID', traits: {"smithy.api#documentation" => "<p>The unique identifier of the package.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPackageVersionHistoryRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An optional parameter that specifies the maximum number of results to return. You can use\n    <code>nextToken</code> to get the next page of results.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetPackageVersionHistoryRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If your initial <code>GetPackageVersionHistory</code> operation returns a\n    <code>nextToken</code>, you can include the returned <code>nextToken</code> in subsequent\n    <code>GetPackageVersionHistory</code> operations, which returns results in the next page.\n  </p>", "smithy.api#httpQuery" => "nextToken"}))
    GetPackageVersionHistoryRequest.type = Types::GetPackageVersionHistoryRequest
    GetPackageVersionHistoryResponse.add_member(:package_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: 'PackageID', traits: {"smithy.api#documentation" => "<p>The unique identifier of the package.</p>"}))
    GetPackageVersionHistoryResponse.add_member(:package_version_history_list, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionHistoryList, location_name: 'PackageVersionHistoryList', traits: {"smithy.api#documentation" => "<p>A list of package versions, along with their creation time and commit message.</p>"}))
    GetPackageVersionHistoryResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When <code>nextToken</code> is returned, there are more results available. The value of\n    <code>nextToken</code> is a unique pagination token for each page. Send the request again using the\n   returned token to retrieve the next page.</p>"}))
    GetPackageVersionHistoryResponse.type = Types::GetPackageVersionHistoryResponse
    GetUpgradeHistoryRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of an existing domain.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUpgradeHistoryRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An optional parameter that specifies the maximum number of results to return. You can use\n    <code>nextToken</code> to get the next page of results.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetUpgradeHistoryRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If your initial <code>GetUpgradeHistory</code> operation returns a <code>nextToken</code>,\n   you can include the returned <code>nextToken</code> in subsequent <code>GetUpgradeHistory</code>\n   operations, which returns results in the next page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetUpgradeHistoryRequest.type = Types::GetUpgradeHistoryRequest
    GetUpgradeHistoryResponse.add_member(:upgrade_histories, Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeHistoryList, location_name: 'UpgradeHistories', traits: {"smithy.api#documentation" => "<p>A list of objects corresponding to each upgrade or upgrade eligibility check performed on a\n   domain.</p>"}))
    GetUpgradeHistoryResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When <code>nextToken</code> is returned, there are more results available. The value of\n    <code>nextToken</code> is a unique pagination token for each page. Send the request again using the\n   returned token to retrieve the next page.</p>"}))
    GetUpgradeHistoryResponse.type = Types::GetUpgradeHistoryResponse
    GetUpgradeStatusRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The domain of the domain to get upgrade status information for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUpgradeStatusRequest.type = Types::GetUpgradeStatusRequest
    GetUpgradeStatusResponse.add_member(:upgrade_step, Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeStep, location_name: 'UpgradeStep', traits: {"smithy.api#documentation" => "<p>One of three steps that an upgrade or upgrade eligibility check goes through.</p>"}))
    GetUpgradeStatusResponse.add_member(:step_status, Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeStatus, location_name: 'StepStatus', traits: {"smithy.api#documentation" => "<p>The status of the current step that an upgrade is on.</p>"}))
    GetUpgradeStatusResponse.add_member(:upgrade_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeName, location_name: 'UpgradeName', traits: {"smithy.api#documentation" => "<p>A string that describes the update.</p>"}))
    GetUpgradeStatusResponse.type = Types::GetUpgradeStatusResponse
    IAMFederationOptionsInput.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>True to enable IAM federation authentication for a domain.</p>"}))
    IAMFederationOptionsInput.add_member(:subject_key, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMFederationSubjectKey, location_name: 'SubjectKey', traits: {"smithy.api#documentation" => "<p>Element of the IAM federation assertion to use for the user name. Default is\n       <code>sub</code>.</p>"}))
    IAMFederationOptionsInput.add_member(:roles_key, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMFederationRolesKey, location_name: 'RolesKey', traits: {"smithy.api#documentation" => "<p>Element of the IAM federation assertion to use for backend roles. Default is\n       <code>roles</code>.</p>"}))
    IAMFederationOptionsInput.type = Types::IAMFederationOptionsInput
    IAMFederationOptionsOutput.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>True if IAM federation is enabled.</p>"}))
    IAMFederationOptionsOutput.add_member(:subject_key, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMFederationSubjectKey, location_name: 'SubjectKey', traits: {"smithy.api#documentation" => "<p>The key used for matching the IAM federation subject attribute.</p>"}))
    IAMFederationOptionsOutput.add_member(:roles_key, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMFederationRolesKey, location_name: 'RolesKey', traits: {"smithy.api#documentation" => "<p>The key used for matching the IAM federation roles attribute.</p>"}))
    IAMFederationOptionsOutput.type = Types::IAMFederationOptionsOutput
    IPAddressType.add_member(:ipv4, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4', traits: {"smithy.api#enumValue" => "ipv4"}))
    IPAddressType.add_member(:dualstack, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUALSTACK', traits: {"smithy.api#enumValue" => "dualstack"}))
    IPAddressTypeStatus.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddressType, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>The IP address options for the domain.</p>", "smithy.api#required" => {}}))
    IPAddressTypeStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    IPAddressTypeStatus.type = Types::IPAddressTypeStatus
    IamIdentityCenterOptions.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>Indicates whether IAM Identity Center is enabled for the OpenSearch application.</p>"}))
    IamIdentityCenterOptions.add_member(:iam_identity_center_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'iamIdentityCenterInstanceArn'))
    IamIdentityCenterOptions.add_member(:iam_role_for_identity_center_application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'iamRoleForIdentityCenterApplicationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role assigned to the IAM Identity Center application for the OpenSearch application.</p>"}))
    IamIdentityCenterOptions.add_member(:iam_identity_center_application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'iamIdentityCenterApplicationArn'))
    IamIdentityCenterOptions.type = Types::IamIdentityCenterOptions
    IamIdentityCenterOptionsInput.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether IAM Identity Center is enabled or disabled.</p>"}))
    IamIdentityCenterOptionsInput.add_member(:iam_identity_center_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'iamIdentityCenterInstanceArn'))
    IamIdentityCenterOptionsInput.add_member(:iam_role_for_identity_center_application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'iamRoleForIdentityCenterApplicationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role associated with the IAM Identity Center application.</p>"}))
    IamIdentityCenterOptionsInput.type = Types::IamIdentityCenterOptionsInput
    IdentityCenterOptions.add_member(:enabled_api_access, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnabledAPIAccess', traits: {"smithy.api#documentation" => "<p>Indicates whether IAM Identity Center is enabled for the application.</p>"}))
    IdentityCenterOptions.add_member(:identity_center_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterInstanceARN, location_name: 'IdentityCenterInstanceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM Identity Center instance.</p>"}))
    IdentityCenterOptions.add_member(:subject_key, Smithy::Schema::Shapes::ShapeRef.new(shape: SubjectKeyIdCOption, location_name: 'SubjectKey', traits: {"smithy.api#documentation" => "<p>Specifies the attribute that contains the subject identifier (such as username, user ID, or email) in IAM Identity Center.</p>"}))
    IdentityCenterOptions.add_member(:roles_key, Smithy::Schema::Shapes::ShapeRef.new(shape: RolesKeyIdCOption, location_name: 'RolesKey', traits: {"smithy.api#documentation" => "<p>Specifies the attribute that contains the backend role identifier (such as group name or group ID) in IAM Identity Center.</p>"}))
    IdentityCenterOptions.add_member(:identity_center_application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterApplicationARN, location_name: 'IdentityCenterApplicationARN', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center application that integrates with Amazon OpenSearch Service.</p>"}))
    IdentityCenterOptions.add_member(:identity_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: 'IdentityStoreId', traits: {"smithy.api#documentation" => "<p>The identifier of the IAM Identity Store.</p>"}))
    IdentityCenterOptions.type = Types::IdentityCenterOptions
    IdentityCenterOptionsInput.add_member(:enabled_api_access, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnabledAPIAccess', traits: {"smithy.api#documentation" => "<p>Indicates whether IAM Identity Center is enabled for API access in Amazon OpenSearch Service.</p>"}))
    IdentityCenterOptionsInput.add_member(:identity_center_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterInstanceARN, location_name: 'IdentityCenterInstanceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance used to create an OpenSearch UI application that uses IAM Identity Center for authentication.</p>"}))
    IdentityCenterOptionsInput.add_member(:subject_key, Smithy::Schema::Shapes::ShapeRef.new(shape: SubjectKeyIdCOption, location_name: 'SubjectKey', traits: {"smithy.api#documentation" => "<p>Specifies the attribute that contains the subject identifier (such as username, user ID, or email) in IAM Identity Center.</p>"}))
    IdentityCenterOptionsInput.add_member(:roles_key, Smithy::Schema::Shapes::ShapeRef.new(shape: RolesKeyIdCOption, location_name: 'RolesKey', traits: {"smithy.api#documentation" => "<p>Specifies the attribute that contains the backend role identifier (such as group name or group ID) in IAM Identity Center.</p>"}))
    IdentityCenterOptionsInput.type = Types::IdentityCenterOptionsInput
    IdentityCenterOptionsStatus.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterOptions, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>Configuration settings for IAM Identity Center integration.</p>", "smithy.api#required" => {}}))
    IdentityCenterOptionsStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of IAM Identity Center configuration settings for a domain.</p>", "smithy.api#required" => {}}))
    IdentityCenterOptionsStatus.type = Types::IdentityCenterOptionsStatus
    InboundConnection.add_member(:local_domain_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInformationContainer, location_name: 'LocalDomainInfo', traits: {"smithy.api#documentation" => "<p>Information about the source (local) domain.</p>"}))
    InboundConnection.add_member(:remote_domain_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInformationContainer, location_name: 'RemoteDomainInfo', traits: {"smithy.api#documentation" => "<p>Information about the destination (remote) domain.</p>"}))
    InboundConnection.add_member(:connection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'ConnectionId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the connection.</p>"}))
    InboundConnection.add_member(:connection_status, Smithy::Schema::Shapes::ShapeRef.new(shape: InboundConnectionStatus, location_name: 'ConnectionStatus', traits: {"smithy.api#documentation" => "<p>The current status of the connection.</p>"}))
    InboundConnection.add_member(:connection_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionMode, location_name: 'ConnectionMode', traits: {"smithy.api#documentation" => "<p>The connection mode.</p>"}))
    InboundConnection.type = Types::InboundConnection
    InboundConnectionStatus.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: InboundConnectionStatusCode, location_name: 'StatusCode', traits: {"smithy.api#documentation" => "<p>The status code for the connection. Can be one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>PENDING_ACCEPTANCE</b> - Inbound connection is not yet\n     accepted by the remote domain owner.</p>\n            </li>\n            <li>\n               <p>\n                  <b>APPROVED</b>: Inbound connection is pending acceptance by the\n     remote domain owner.</p>\n            </li>\n            <li>\n               <p>\n                  <b>PROVISIONING</b>: Inbound connection is being\n     provisioned.</p>\n            </li>\n            <li>\n               <p>\n                  <b>ACTIVE</b>: Inbound connection is active and ready to\n     use.</p>\n            </li>\n            <li>\n               <p>\n                  <b>REJECTING</b>: Inbound connection rejection is in\n     process.</p>\n            </li>\n            <li>\n               <p>\n                  <b>REJECTED</b>: Inbound connection is rejected.</p>\n            </li>\n            <li>\n               <p>\n                  <b>DELETING</b>: Inbound connection deletion is in\n     progress.</p>\n            </li>\n            <li>\n               <p>\n                  <b>DELETED</b>: Inbound connection is deleted and can no longer\n     be used.</p>\n            </li>\n         </ul>"}))
    InboundConnectionStatus.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionStatusMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Information about the connection.</p>"}))
    InboundConnectionStatus.type = Types::InboundConnectionStatus
    InboundConnectionStatusCode.add_member(:pending_acceptance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_ACCEPTANCE', traits: {"smithy.api#enumValue" => "PENDING_ACCEPTANCE"}))
    InboundConnectionStatusCode.add_member(:approved, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPROVED', traits: {"smithy.api#enumValue" => "APPROVED"}))
    InboundConnectionStatusCode.add_member(:provisioning, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROVISIONING', traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    InboundConnectionStatusCode.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    InboundConnectionStatusCode.add_member(:rejecting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTING', traits: {"smithy.api#enumValue" => "REJECTING"}))
    InboundConnectionStatusCode.add_member(:rejected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "REJECTED"}))
    InboundConnectionStatusCode.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    InboundConnectionStatusCode.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    InboundConnections.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InboundConnection)
    InitiatedBy.add_member(:customer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER', traits: {"smithy.api#enumValue" => "CUSTOMER"}))
    InitiatedBy.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE', traits: {"smithy.api#enumValue" => "SERVICE"}))
    InstanceCountLimits.add_member(:minimum_instance_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MinimumInstanceCount, location_name: 'MinimumInstanceCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum allowed number of instances.</p>"}))
    InstanceCountLimits.add_member(:maximum_instance_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumInstanceCount, location_name: 'MaximumInstanceCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The minimum allowed number of instances.</p>"}))
    InstanceCountLimits.type = Types::InstanceCountLimits
    InstanceLimits.add_member(:instance_count_limits, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceCountLimits, location_name: 'InstanceCountLimits', traits: {"smithy.api#documentation" => "<p>Limits on the number of instances that can be created for a given instance type.</p>"}))
    InstanceLimits.type = Types::InstanceLimits
    InstanceRoleList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceRole)
    InstanceTypeDetails.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchPartitionInstanceType, location_name: 'InstanceType', traits: {"smithy.api#documentation" => "<p>The instance type.</p>"}))
    InstanceTypeDetails.add_member(:encryption_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EncryptionEnabled', traits: {"smithy.api#documentation" => "<p>Whether encryption at rest and node-to-node encryption are supported for the instance\n   type.</p>"}))
    InstanceTypeDetails.add_member(:cognito_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'CognitoEnabled', traits: {"smithy.api#documentation" => "<p>Whether Amazon Cognito access is supported for the instance type.</p>"}))
    InstanceTypeDetails.add_member(:app_logs_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AppLogsEnabled', traits: {"smithy.api#documentation" => "<p>Whether logging is supported for the instance type.</p>"}))
    InstanceTypeDetails.add_member(:advanced_security_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AdvancedSecurityEnabled', traits: {"smithy.api#documentation" => "<p>Whether fine-grained access control is supported for the instance type.</p>"}))
    InstanceTypeDetails.add_member(:warm_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'WarmEnabled', traits: {"smithy.api#documentation" => "<p>Whether UltraWarm is supported for the instance type.</p>"}))
    InstanceTypeDetails.add_member(:instance_role, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceRoleList, location_name: 'InstanceRole', traits: {"smithy.api#documentation" => "<p>Whether the instance acts as a data node, a dedicated master node, or an UltraWarm\n   node.</p>"}))
    InstanceTypeDetails.add_member(:availability_zones, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneList, location_name: 'AvailabilityZones', traits: {"smithy.api#documentation" => "<p>The supported Availability Zones for the instance type.</p>"}))
    InstanceTypeDetails.type = Types::InstanceTypeDetails
    InstanceTypeDetailsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTypeDetails)
    InternalException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A description of the error.</p>"}))
    InternalException.type = Types::InternalException
    InvalidPaginationTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A description of the error.</p>"}))
    InvalidPaginationTokenException.type = Types::InvalidPaginationTokenException
    InvalidTypeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A description of the error.</p>"}))
    InvalidTypeException.type = Types::InvalidTypeException
    Issues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Issue)
    JWTOptionsInput.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>True to enable JWT authentication and authorization for a domain.</p>"}))
    JWTOptionsInput.add_member(:subject_key, Smithy::Schema::Shapes::ShapeRef.new(shape: SubjectKey, location_name: 'SubjectKey', traits: {"smithy.api#documentation" => "<p>Element of the JWT assertion to use for the user name.</p>"}))
    JWTOptionsInput.add_member(:roles_key, Smithy::Schema::Shapes::ShapeRef.new(shape: RolesKey, location_name: 'RolesKey', traits: {"smithy.api#documentation" => "<p>Element of the JWT assertion to use for roles.</p>"}))
    JWTOptionsInput.add_member(:public_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PublicKey', traits: {"smithy.api#documentation" => "<p>Element of the JWT assertion used by the cluster to verify JWT signatures.</p>"}))
    JWTOptionsInput.type = Types::JWTOptionsInput
    JWTOptionsOutput.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>True if JWT use is enabled.</p>"}))
    JWTOptionsOutput.add_member(:subject_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubjectKey', traits: {"smithy.api#documentation" => "<p>The key used for matching the JWT subject attribute.</p>"}))
    JWTOptionsOutput.add_member(:roles_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RolesKey', traits: {"smithy.api#documentation" => "<p>The key used for matching the JWT roles attribute.</p>"}))
    JWTOptionsOutput.add_member(:public_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PublicKey', traits: {"smithy.api#documentation" => "<p>The key used to verify the signature of incoming JWT requests.</p>"}))
    JWTOptionsOutput.type = Types::JWTOptionsOutput
    KeyStoreAccessOption.add_member(:key_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'KeyAccessRoleArn', traits: {"smithy.api#documentation" => "<p>Role ARN to access the KeyStore Key</p>"}))
    KeyStoreAccessOption.add_member(:key_store_access_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'KeyStoreAccessEnabled', traits: {"smithy.api#documentation" => "<p>This indicates whether Key Store access is enabled </p>", "smithy.api#required" => {}}))
    KeyStoreAccessOption.type = Types::KeyStoreAccessOption
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A description of the error.</p>"}))
    LimitExceededException.type = Types::LimitExceededException
    LimitValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LimitValue)
    Limits.add_member(:storage_types, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeList, location_name: 'StorageTypes', traits: {"smithy.api#documentation" => "<p>Storage-related attributes that are available for a given instance type.</p>"}))
    Limits.add_member(:instance_limits, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceLimits, location_name: 'InstanceLimits', traits: {"smithy.api#documentation" => "<p>The limits for a given instance type.</p>"}))
    Limits.add_member(:additional_limits, Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalLimitList, location_name: 'AdditionalLimits', traits: {"smithy.api#documentation" => "<p>List of additional limits that are specific to a given instance type for each of its\n   instance roles.</p>"}))
    Limits.type = Types::Limits
    LimitsByRole.key = Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceRole)
    LimitsByRole.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Limits)
    ListApplicationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListApplicationsRequest.add_member(:statuses, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationStatuses, location_name: 'statuses', traits: {"smithy.api#documentation" => "<p>Filters the list of OpenSearch applications by status. Possible values: <code>CREATING</code>, <code>UPDATING</code>, <code>DELETING</code>, <code>FAILED</code>, <code>ACTIVE</code>, and <code>DELETED</code>.</p>", "smithy.api#httpQuery" => "statuses"}))
    ListApplicationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListApplicationsRequest.type = Types::ListApplicationsRequest
    ListApplicationsResponse.add_member(:application_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSummaries, location_name: 'ApplicationSummaries', traits: {"smithy.api#documentation" => "<p>Summarizes OpenSearch applications, including ID, ARN, name, endpoint, status, creation time, and last update time.</p>"}))
    ListApplicationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListApplicationsResponse.type = Types::ListApplicationsResponse
    ListDataSourcesRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataSourcesRequest.type = Types::ListDataSourcesRequest
    ListDataSourcesResponse.add_member(:data_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceList, location_name: 'DataSources', traits: {"smithy.api#documentation" => "<p>A list of data sources associated with specified domain.</p>"}))
    ListDataSourcesResponse.type = Types::ListDataSourcesResponse
    ListDirectQueryDataSourcesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nexttoken"}))
    ListDirectQueryDataSourcesRequest.type = Types::ListDirectQueryDataSourcesRequest
    ListDirectQueryDataSourcesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListDirectQueryDataSourcesResponse.add_member(:direct_query_data_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceList, location_name: 'DirectQueryDataSources', traits: {"smithy.api#documentation" => "<p>\n   A list of the direct query data sources that are returned by \n   the <code>ListDirectQueryDataSources</code> API operation.\n  </p>"}))
    ListDirectQueryDataSourcesResponse.type = Types::ListDirectQueryDataSourcesResponse
    ListDomainMaintenancesRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDomainMaintenancesRequest.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceType, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The name of the action.</p>", "smithy.api#httpQuery" => "action"}))
    ListDomainMaintenancesRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the action.</p>", "smithy.api#httpQuery" => "status"}))
    ListDomainMaintenancesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An optional parameter that specifies the maximum number of results to return. You can use\n   <code>nextToken</code> to get the next page of results.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDomainMaintenancesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If your initial <code>ListDomainMaintenances</code> operation returns a\n   <code>nextToken</code>, include the returned <code>nextToken</code> in subsequent\n   <code>ListDomainMaintenances</code> operations, which returns results in the next page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDomainMaintenancesRequest.type = Types::ListDomainMaintenancesRequest
    ListDomainMaintenancesResponse.add_member(:domain_maintenances, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainMaintenanceList, location_name: 'DomainMaintenances', traits: {"smithy.api#documentation" => "<p>A list of the submitted maintenance actions.</p>"}))
    ListDomainMaintenancesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When <code>nextToken</code> is returned, there are more results available. The value of\n   <code>nextToken</code> is a unique pagination token for each page. Send the request again using the\n   returned token to retrieve the next page.</p>"}))
    ListDomainMaintenancesResponse.type = Types::ListDomainMaintenancesResponse
    ListDomainNamesRequest.add_member(:engine_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'EngineType', traits: {"smithy.api#documentation" => "<p>Filters the output by domain engine type.</p>", "smithy.api#httpQuery" => "engineType"}))
    ListDomainNamesRequest.type = Types::ListDomainNamesRequest
    ListDomainNamesResponse.add_member(:domain_names, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInfoList, location_name: 'DomainNames', traits: {"smithy.api#documentation" => "<p>The names of all OpenSearch Service domains owned by the current user and their respective\n   engine types.</p>"}))
    ListDomainNamesResponse.type = Types::ListDomainNamesResponse
    ListDomainsForPackageRequest.add_member(:package_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: 'PackageID', traits: {"smithy.api#documentation" => "<p>The unique identifier of the package for which to list associated domains.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDomainsForPackageRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An optional parameter that specifies the maximum number of results to return. You can use\n    <code>nextToken</code> to get the next page of results.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDomainsForPackageRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If your initial <code>ListDomainsForPackage</code> operation returns a\n    <code>nextToken</code>, you can include the returned <code>nextToken</code> in subsequent\n    <code>ListDomainsForPackage</code> operations, which returns results in the next page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDomainsForPackageRequest.type = Types::ListDomainsForPackageRequest
    ListDomainsForPackageResponse.add_member(:domain_package_details_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainPackageDetailsList, location_name: 'DomainPackageDetailsList', traits: {"smithy.api#documentation" => "<p>Information about all domains associated with a package.</p>"}))
    ListDomainsForPackageResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When <code>nextToken</code> is returned, there are more results available. The value of\n    <code>nextToken</code> is a unique pagination token for each page. Send the request again using the\n   returned token to retrieve the next page.</p>"}))
    ListDomainsForPackageResponse.type = Types::ListDomainsForPackageResponse
    ListInstanceTypeDetailsRequest.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionString, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>The version of OpenSearch or Elasticsearch, in the format Elasticsearch_X.Y or OpenSearch_X.Y.\n   Defaults to the latest version of OpenSearch.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListInstanceTypeDetailsRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain.</p>", "smithy.api#httpQuery" => "domainName"}))
    ListInstanceTypeDetailsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An optional parameter that specifies the maximum number of results to return. You can use\n    <code>nextToken</code> to get the next page of results.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListInstanceTypeDetailsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If your initial <code>ListInstanceTypeDetails</code> operation returns a\n    <code>nextToken</code>, you can include the returned <code>nextToken</code> in subsequent\n    <code>ListInstanceTypeDetails</code> operations, which returns results in the next page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListInstanceTypeDetailsRequest.add_member(:retrieve_a_zs, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RetrieveAZs', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the Availability Zones for the domain.</p>", "smithy.api#httpQuery" => "retrieveAZs"}))
    ListInstanceTypeDetailsRequest.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTypeString, location_name: 'InstanceType', traits: {"smithy.api#documentation" => "<p>An optional parameter that lists information for a given instance type.</p>", "smithy.api#httpQuery" => "instanceType"}))
    ListInstanceTypeDetailsRequest.type = Types::ListInstanceTypeDetailsRequest
    ListInstanceTypeDetailsResponse.add_member(:instance_type_details, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTypeDetailsList, location_name: 'InstanceTypeDetails', traits: {"smithy.api#documentation" => "<p>Lists all supported instance types and features for the given OpenSearch or Elasticsearch\n   version.</p>"}))
    ListInstanceTypeDetailsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When <code>nextToken</code> is returned, there are more results available. The value of\n    <code>nextToken</code> is a unique pagination token for each page. Send the request again using the\n   returned token to retrieve the next page.</p>"}))
    ListInstanceTypeDetailsResponse.type = Types::ListInstanceTypeDetailsResponse
    ListPackagesForDomainRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain for which you want to list associated packages.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPackagesForDomainRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An optional parameter that specifies the maximum number of results to return. You can use\n    <code>nextToken</code> to get the next page of results.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListPackagesForDomainRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If your initial <code>ListPackagesForDomain</code> operation returns a\n    <code>nextToken</code>, you can include the returned <code>nextToken</code> in subsequent\n    <code>ListPackagesForDomain</code> operations, which returns results in the next page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListPackagesForDomainRequest.type = Types::ListPackagesForDomainRequest
    ListPackagesForDomainResponse.add_member(:domain_package_details_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainPackageDetailsList, location_name: 'DomainPackageDetailsList', traits: {"smithy.api#documentation" => "<p>List of all packages associated with a domain.</p>"}))
    ListPackagesForDomainResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When <code>nextToken</code> is returned, there are more results available. The value of\n    <code>nextToken</code> is a unique pagination token for each page. Send the request again using the\n   returned token to retrieve the next page.</p>"}))
    ListPackagesForDomainResponse.type = Types::ListPackagesForDomainResponse
    ListScheduledActionsRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListScheduledActionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An optional parameter that specifies the maximum number of results to return. You can use\n   <code>nextToken</code> to get the next page of results.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListScheduledActionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If your initial <code>ListScheduledActions</code> operation returns a <code>nextToken</code>, you\n   can include the returned <code>nextToken</code> in subsequent <code>ListScheduledActions</code>\n   operations, which returns results in the next page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListScheduledActionsRequest.type = Types::ListScheduledActionsRequest
    ListScheduledActionsResponse.add_member(:scheduled_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionsList, location_name: 'ScheduledActions', traits: {"smithy.api#documentation" => "<p>A list of actions that are scheduled for the domain.</p>"}))
    ListScheduledActionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When <code>nextToken</code> is returned, there are more results available. The value of\n   <code>nextToken</code> is a unique pagination token for each page. Send the request again using the\n   returned token to retrieve the next page.</p>"}))
    ListScheduledActionsResponse.type = Types::ListScheduledActionsResponse
    ListTagsRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ARN', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the domain, data source, or application to view tags\n   for.</p>", "smithy.api#httpQuery" => "arn", "smithy.api#required" => {}}))
    ListTagsRequest.type = Types::ListTagsRequest
    ListTagsResponse.add_member(:tag_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList', traits: {"smithy.api#documentation" => "<p>List of resource tags associated with the specified domain, data source, or\n   application.</p>"}))
    ListTagsResponse.type = Types::ListTagsResponse
    ListVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An optional parameter that specifies the maximum number of results to return. You can use\n    <code>nextToken</code> to get the next page of results.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If your initial <code>ListVersions</code> operation returns a <code>nextToken</code>, you\n   can include the returned <code>nextToken</code> in subsequent <code>ListVersions</code>\n   operations, which returns results in the next page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListVersionsRequest.type = Types::ListVersionsRequest
    ListVersionsResponse.add_member(:versions, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionList, location_name: 'Versions', traits: {"smithy.api#documentation" => "<p>A list of all versions of OpenSearch and Elasticsearch that Amazon OpenSearch Service\n   supports.</p>"}))
    ListVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When <code>nextToken</code> is returned, there are more results available. The value of\n    <code>nextToken</code> is a unique pagination token for each page. Send the request again using the\n   returned token to retrieve the next page.</p>"}))
    ListVersionsResponse.type = Types::ListVersionsResponse
    ListVpcEndpointAccessRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the OpenSearch Service domain to retrieve access information for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListVpcEndpointAccessRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If your initial <code>ListVpcEndpointAccess</code> operation returns a\n    <code>nextToken</code>, you can include the returned <code>nextToken</code> in subsequent\n    <code>ListVpcEndpointAccess</code> operations, which returns results in the next page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListVpcEndpointAccessRequest.type = Types::ListVpcEndpointAccessRequest
    ListVpcEndpointAccessResponse.add_member(:authorized_principal_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizedPrincipalList, location_name: 'AuthorizedPrincipalList', traits: {"smithy.api#documentation" => "<p>A list of <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html\">IAM principals</a>\n   that can currently access the domain.</p>", "smithy.api#required" => {}}))
    ListVpcEndpointAccessResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When <code>nextToken</code> is returned, there are more results available. The value of\n    <code>nextToken</code> is a unique pagination token for each page. Send the request again using the\n   returned token to retrieve the next page.</p>", "smithy.api#required" => {}}))
    ListVpcEndpointAccessResponse.type = Types::ListVpcEndpointAccessResponse
    ListVpcEndpointsForDomainRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain to list associated VPC endpoints for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListVpcEndpointsForDomainRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If your initial <code>ListEndpointsForDomain</code> operation returns a\n    <code>nextToken</code>, you can include the returned <code>nextToken</code> in subsequent\n    <code>ListEndpointsForDomain</code> operations, which returns results in the next page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListVpcEndpointsForDomainRequest.type = Types::ListVpcEndpointsForDomainRequest
    ListVpcEndpointsForDomainResponse.add_member(:vpc_endpoint_summary_list, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointSummaryList, location_name: 'VpcEndpointSummaryList', traits: {"smithy.api#documentation" => "<p>Information about each endpoint associated with the domain.</p>", "smithy.api#required" => {}}))
    ListVpcEndpointsForDomainResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When <code>nextToken</code> is returned, there are more results available. The value of\n    <code>nextToken</code> is a unique pagination token for each page. Send the request again using the\n   returned token to retrieve the next page.</p>", "smithy.api#required" => {}}))
    ListVpcEndpointsForDomainResponse.type = Types::ListVpcEndpointsForDomainResponse
    ListVpcEndpointsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If your initial <code>ListVpcEndpoints</code> operation returns a <code>nextToken</code>,\n   you can include the returned <code>nextToken</code> in subsequent <code>ListVpcEndpoints</code>\n   operations, which returns results in the next page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListVpcEndpointsRequest.type = Types::ListVpcEndpointsRequest
    ListVpcEndpointsResponse.add_member(:vpc_endpoint_summary_list, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointSummaryList, location_name: 'VpcEndpointSummaryList', traits: {"smithy.api#documentation" => "<p>Information about each endpoint.</p>", "smithy.api#required" => {}}))
    ListVpcEndpointsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When <code>nextToken</code> is returned, there are more results available. The value of\n    <code>nextToken</code> is a unique pagination token for each page. Send the request again using the\n   returned token to retrieve the next page.</p>", "smithy.api#required" => {}}))
    ListVpcEndpointsResponse.type = Types::ListVpcEndpointsResponse
    LogPublishingOption.add_member(:cloud_watch_logs_log_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsLogGroupArn, location_name: 'CloudWatchLogsLogGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the CloudWatch Logs group to publish logs to.</p>"}))
    LogPublishingOption.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Whether the log should be published.</p>"}))
    LogPublishingOption.type = Types::LogPublishingOption
    LogPublishingOptions.key = Smithy::Schema::Shapes::ShapeRef.new(shape: LogType)
    LogPublishingOptions.value = Smithy::Schema::Shapes::ShapeRef.new(shape: LogPublishingOption)
    LogPublishingOptionsStatus.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>The log publishing options configured for the domain.</p>"}))
    LogPublishingOptionsStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the log publishing options for the domain.</p>"}))
    LogPublishingOptionsStatus.type = Types::LogPublishingOptionsStatus
    LogType.add_member(:index_slow_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INDEX_SLOW_LOGS', traits: {"smithy.api#enumValue" => "INDEX_SLOW_LOGS"}))
    LogType.add_member(:search_slow_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEARCH_SLOW_LOGS', traits: {"smithy.api#enumValue" => "SEARCH_SLOW_LOGS"}))
    LogType.add_member(:es_application_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ES_APPLICATION_LOGS', traits: {"smithy.api#enumValue" => "ES_APPLICATION_LOGS"}))
    LogType.add_member(:audit_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUDIT_LOGS', traits: {"smithy.api#enumValue" => "AUDIT_LOGS"}))
    MaintenanceStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    MaintenanceStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    MaintenanceStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    MaintenanceStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    MaintenanceStatus.add_member(:timed_out, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMED_OUT', traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    MaintenanceType.add_member(:reboot_node, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REBOOT_NODE', traits: {"smithy.api#enumValue" => "REBOOT_NODE"}))
    MaintenanceType.add_member(:restart_search_process, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTART_SEARCH_PROCESS', traits: {"smithy.api#enumValue" => "RESTART_SEARCH_PROCESS"}))
    MaintenanceType.add_member(:restart_dashboard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTART_DASHBOARD', traits: {"smithy.api#enumValue" => "RESTART_DASHBOARD"}))
    MasterNodeStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Available', traits: {"smithy.api#enumValue" => "Available"}))
    MasterNodeStatus.add_member(:un_available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UnAvailable', traits: {"smithy.api#enumValue" => "UnAvailable"}))
    MasterUserOptions.add_member(:master_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'MasterUserARN', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the master user. Only specify if\n    <code>InternalUserDatabaseEnabled</code> is <code>false</code>.</p>"}))
    MasterUserOptions.add_member(:master_user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: 'MasterUserName', traits: {"smithy.api#documentation" => "<p>User name for the master user. Only specify if <code>InternalUserDatabaseEnabled</code> is\n    <code>true</code>.</p>"}))
    MasterUserOptions.add_member(:master_user_password, Smithy::Schema::Shapes::ShapeRef.new(shape: Password, location_name: 'MasterUserPassword', traits: {"smithy.api#documentation" => "<p>Password for the master user. Only specify if <code>InternalUserDatabaseEnabled</code> is\n    <code>true</code>.</p>"}))
    MasterUserOptions.type = Types::MasterUserOptions
    ModifyingProperties.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the property that is currently being modified.</p>"}))
    ModifyingProperties.add_member(:active_value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActiveValue', traits: {"smithy.api#documentation" => "<p>The current value of the domain property that is being modified.</p>"}))
    ModifyingProperties.add_member(:pending_value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PendingValue', traits: {"smithy.api#documentation" => "<p>The value that the property that is currently being modified will eventually have.</p>"}))
    ModifyingProperties.add_member(:value_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyValueType, location_name: 'ValueType', traits: {"smithy.api#documentation" => "<p>The type of value that is currently being modified. Properties can have two types:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PLAIN_TEXT</code>: Contain direct values such as \"1\", \"True\", or \"c5.large.search\".</p>\n            </li>\n            <li>\n               <p>\n                  <code>STRINGIFIED_JSON</code>: Contain content in JSON format, such as {\"Enabled\":\"True\"}\".</p>\n            </li>\n         </ul>"}))
    ModifyingProperties.type = Types::ModifyingProperties
    ModifyingPropertiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyingProperties)
    NaturalLanguageQueryGenerationCurrentState.add_member(:not_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotEnabled', traits: {"smithy.api#enumValue" => "NOT_ENABLED"}))
    NaturalLanguageQueryGenerationCurrentState.add_member(:enable_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EnableComplete', traits: {"smithy.api#enumValue" => "ENABLE_COMPLETE"}))
    NaturalLanguageQueryGenerationCurrentState.add_member(:enable_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EnableInProgress', traits: {"smithy.api#enumValue" => "ENABLE_IN_PROGRESS"}))
    NaturalLanguageQueryGenerationCurrentState.add_member(:enable_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EnableFailed', traits: {"smithy.api#enumValue" => "ENABLE_FAILED"}))
    NaturalLanguageQueryGenerationCurrentState.add_member(:disable_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DisableComplete', traits: {"smithy.api#enumValue" => "DISABLE_COMPLETE"}))
    NaturalLanguageQueryGenerationCurrentState.add_member(:disable_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DisableInProgress', traits: {"smithy.api#enumValue" => "DISABLE_IN_PROGRESS"}))
    NaturalLanguageQueryGenerationCurrentState.add_member(:disable_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DisableFailed', traits: {"smithy.api#enumValue" => "DISABLE_FAILED"}))
    NaturalLanguageQueryGenerationDesiredState.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Enabled', traits: {"smithy.api#enumValue" => "ENABLED"}))
    NaturalLanguageQueryGenerationDesiredState.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Disabled', traits: {"smithy.api#enumValue" => "DISABLED"}))
    NaturalLanguageQueryGenerationOptionsInput.add_member(:desired_state, Smithy::Schema::Shapes::ShapeRef.new(shape: NaturalLanguageQueryGenerationDesiredState, location_name: 'DesiredState', traits: {"smithy.api#documentation" => "<p>The desired state of the natural language query generation feature. Valid values are ENABLED and DISABLED.</p>"}))
    NaturalLanguageQueryGenerationOptionsInput.type = Types::NaturalLanguageQueryGenerationOptionsInput
    NaturalLanguageQueryGenerationOptionsOutput.add_member(:desired_state, Smithy::Schema::Shapes::ShapeRef.new(shape: NaturalLanguageQueryGenerationDesiredState, location_name: 'DesiredState', traits: {"smithy.api#documentation" => "<p>The desired state of the natural language query generation feature. Valid values are ENABLED and DISABLED.</p>"}))
    NaturalLanguageQueryGenerationOptionsOutput.add_member(:current_state, Smithy::Schema::Shapes::ShapeRef.new(shape: NaturalLanguageQueryGenerationCurrentState, location_name: 'CurrentState', traits: {"smithy.api#documentation" => "<p>The current state of the natural language query generation feature, indicating completion, in progress, or failure.</p>"}))
    NaturalLanguageQueryGenerationOptionsOutput.type = Types::NaturalLanguageQueryGenerationOptionsOutput
    NodeConfig.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>A boolean value indicating whether a specific node type is active or inactive.</p>"}))
    NodeConfig.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchPartitionInstanceType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The instance type of a particular node within the cluster.</p>"}))
    NodeConfig.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: 'Count', traits: {"smithy.api#documentation" => "<p>The number of nodes of a specific type within the cluster.</p>"}))
    NodeConfig.type = Types::NodeConfig
    NodeOption.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeOptionsNodeType, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>Defines the type of node, such as coordinating nodes.</p>"}))
    NodeOption.add_member(:node_config, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeConfig, location_name: 'NodeConfig', traits: {"smithy.api#documentation" => "<p>Configuration options for defining the setup of any node type.</p>"}))
    NodeOption.type = Types::NodeOption
    NodeOptionsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NodeOption)
    NodeOptionsNodeType.add_member(:coordinator, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COORDINATOR', traits: {"smithy.api#enumValue" => "coordinator"}))
    NodeStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "Active"}))
    NodeStatus.add_member(:stand_by, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'StandBy', traits: {"smithy.api#enumValue" => "StandBy"}))
    NodeStatus.add_member(:not_available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotAvailable', traits: {"smithy.api#enumValue" => "NotAvailable"}))
    NodeToNodeEncryptionOptions.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>True to enable node-to-node encryption.</p>"}))
    NodeToNodeEncryptionOptions.type = Types::NodeToNodeEncryptionOptions
    NodeToNodeEncryptionOptionsStatus.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeToNodeEncryptionOptions, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>The node-to-node encryption options for the specified domain.</p>", "smithy.api#required" => {}}))
    NodeToNodeEncryptionOptionsStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the node-to-node encryption options for the specified domain.</p>", "smithy.api#required" => {}}))
    NodeToNodeEncryptionOptionsStatus.type = Types::NodeToNodeEncryptionOptionsStatus
    NodeType.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Data', traits: {"smithy.api#enumValue" => "Data"}))
    NodeType.add_member(:ultrawarm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Ultrawarm', traits: {"smithy.api#enumValue" => "Ultrawarm"}))
    NodeType.add_member(:master, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Master', traits: {"smithy.api#enumValue" => "Master"}))
    OffPeakWindow.add_member(:window_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: WindowStartTime, location_name: 'WindowStartTime', traits: {"smithy.api#documentation" => "<p>A custom start time for the off-peak window, in Coordinated Universal Time (UTC). The window\n   length will always be 10 hours, so you can't specify an end time. For example, if you specify\n   11:00 P.M. UTC as a start time, the end time will automatically be set to 9:00 A.M.</p>"}))
    OffPeakWindow.type = Types::OffPeakWindow
    OffPeakWindowOptions.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Whether to enable an off-peak window.</p>\n         <p>This option is only available when modifying a domain created prior to February 16, 2023,\n   not when creating a new domain. All domains created after this date have the off-peak window\n   enabled by default. You can't disable the off-peak window after it's enabled for a domain.</p>"}))
    OffPeakWindowOptions.add_member(:off_peak_window, Smithy::Schema::Shapes::ShapeRef.new(shape: OffPeakWindow, location_name: 'OffPeakWindow', traits: {"smithy.api#documentation" => "<p>Off-peak window settings for the domain.</p>"}))
    OffPeakWindowOptions.type = Types::OffPeakWindowOptions
    OffPeakWindowOptionsStatus.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: OffPeakWindowOptions, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>The domain's off-peak window configuration.</p>"}))
    OffPeakWindowOptionsStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of off-peak window options.</p>"}))
    OffPeakWindowOptionsStatus.type = Types::OffPeakWindowOptionsStatus
    OpenSearchPartitionInstanceType.add_member(:m3_medium_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm3_medium_search', traits: {"smithy.api#enumValue" => "m3.medium.search"}))
    OpenSearchPartitionInstanceType.add_member(:m3_large_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm3_large_search', traits: {"smithy.api#enumValue" => "m3.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:m3_xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm3_xlarge_search', traits: {"smithy.api#enumValue" => "m3.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m3_2xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm3_2xlarge_search', traits: {"smithy.api#enumValue" => "m3.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m4_large_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm4_large_search', traits: {"smithy.api#enumValue" => "m4.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:m4_xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm4_xlarge_search', traits: {"smithy.api#enumValue" => "m4.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m4_2xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm4_2xlarge_search', traits: {"smithy.api#enumValue" => "m4.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m4_4xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm4_4xlarge_search', traits: {"smithy.api#enumValue" => "m4.4xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m4_10xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm4_10xlarge_search', traits: {"smithy.api#enumValue" => "m4.10xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m5_large_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm5_large_search', traits: {"smithy.api#enumValue" => "m5.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:m5_xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm5_xlarge_search', traits: {"smithy.api#enumValue" => "m5.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m5_2xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm5_2xlarge_search', traits: {"smithy.api#enumValue" => "m5.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m5_4xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm5_4xlarge_search', traits: {"smithy.api#enumValue" => "m5.4xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m5_12xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm5_12xlarge_search', traits: {"smithy.api#enumValue" => "m5.12xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m5_24xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm5_24xlarge_search', traits: {"smithy.api#enumValue" => "m5.24xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r5_large_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r5_large_search', traits: {"smithy.api#enumValue" => "r5.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:r5_xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r5_xlarge_search', traits: {"smithy.api#enumValue" => "r5.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r5_2xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r5_2xlarge_search', traits: {"smithy.api#enumValue" => "r5.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r5_4xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r5_4xlarge_search', traits: {"smithy.api#enumValue" => "r5.4xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r5_12xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r5_12xlarge_search', traits: {"smithy.api#enumValue" => "r5.12xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r5_24xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r5_24xlarge_search', traits: {"smithy.api#enumValue" => "r5.24xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:c5_large_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c5_large_search', traits: {"smithy.api#enumValue" => "c5.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:c5_xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c5_xlarge_search', traits: {"smithy.api#enumValue" => "c5.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:c5_2xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c5_2xlarge_search', traits: {"smithy.api#enumValue" => "c5.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:c5_4xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c5_4xlarge_search', traits: {"smithy.api#enumValue" => "c5.4xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:c5_9xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c5_9xlarge_search', traits: {"smithy.api#enumValue" => "c5.9xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:c5_18xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c5_18xlarge_search', traits: {"smithy.api#enumValue" => "c5.18xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:t3_nano_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 't3_nano_search', traits: {"smithy.api#enumValue" => "t3.nano.search"}))
    OpenSearchPartitionInstanceType.add_member(:t3_micro_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 't3_micro_search', traits: {"smithy.api#enumValue" => "t3.micro.search"}))
    OpenSearchPartitionInstanceType.add_member(:t3_small_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 't3_small_search', traits: {"smithy.api#enumValue" => "t3.small.search"}))
    OpenSearchPartitionInstanceType.add_member(:t3_medium_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 't3_medium_search', traits: {"smithy.api#enumValue" => "t3.medium.search"}))
    OpenSearchPartitionInstanceType.add_member(:t3_large_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 't3_large_search', traits: {"smithy.api#enumValue" => "t3.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:t3_xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 't3_xlarge_search', traits: {"smithy.api#enumValue" => "t3.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:t3_2xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 't3_2xlarge_search', traits: {"smithy.api#enumValue" => "t3.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:or1_medium_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'or1_medium_search', traits: {"smithy.api#enumValue" => "or1.medium.search"}))
    OpenSearchPartitionInstanceType.add_member(:or1_large_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'or1_large_search', traits: {"smithy.api#enumValue" => "or1.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:or1_xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'or1_xlarge_search', traits: {"smithy.api#enumValue" => "or1.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:or1_2xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'or1_2xlarge_search', traits: {"smithy.api#enumValue" => "or1.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:or1_4xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'or1_4xlarge_search', traits: {"smithy.api#enumValue" => "or1.4xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:or1_8xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'or1_8xlarge_search', traits: {"smithy.api#enumValue" => "or1.8xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:or1_12xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'or1_12xlarge_search', traits: {"smithy.api#enumValue" => "or1.12xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:or1_16xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'or1_16xlarge_search', traits: {"smithy.api#enumValue" => "or1.16xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:ultrawarm1_medium_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ultrawarm1_medium_search', traits: {"smithy.api#enumValue" => "ultrawarm1.medium.search"}))
    OpenSearchPartitionInstanceType.add_member(:ultrawarm1_large_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ultrawarm1_large_search', traits: {"smithy.api#enumValue" => "ultrawarm1.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:ultrawarm1_xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ultrawarm1_xlarge_search', traits: {"smithy.api#enumValue" => "ultrawarm1.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:t2_micro_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 't2_micro_search', traits: {"smithy.api#enumValue" => "t2.micro.search"}))
    OpenSearchPartitionInstanceType.add_member(:t2_small_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 't2_small_search', traits: {"smithy.api#enumValue" => "t2.small.search"}))
    OpenSearchPartitionInstanceType.add_member(:t2_medium_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 't2_medium_search', traits: {"smithy.api#enumValue" => "t2.medium.search"}))
    OpenSearchPartitionInstanceType.add_member(:r3_large_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r3_large_search', traits: {"smithy.api#enumValue" => "r3.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:r3_xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r3_xlarge_search', traits: {"smithy.api#enumValue" => "r3.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r3_2xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r3_2xlarge_search', traits: {"smithy.api#enumValue" => "r3.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r3_4xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r3_4xlarge_search', traits: {"smithy.api#enumValue" => "r3.4xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r3_8xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r3_8xlarge_search', traits: {"smithy.api#enumValue" => "r3.8xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:i2_xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'i2_xlarge_search', traits: {"smithy.api#enumValue" => "i2.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:i2_2xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'i2_2xlarge_search', traits: {"smithy.api#enumValue" => "i2.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:d2_xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'd2_xlarge_search', traits: {"smithy.api#enumValue" => "d2.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:d2_2xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'd2_2xlarge_search', traits: {"smithy.api#enumValue" => "d2.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:d2_4xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'd2_4xlarge_search', traits: {"smithy.api#enumValue" => "d2.4xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:d2_8xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'd2_8xlarge_search', traits: {"smithy.api#enumValue" => "d2.8xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:c4_large_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c4_large_search', traits: {"smithy.api#enumValue" => "c4.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:c4_xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c4_xlarge_search', traits: {"smithy.api#enumValue" => "c4.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:c4_2xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c4_2xlarge_search', traits: {"smithy.api#enumValue" => "c4.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:c4_4xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c4_4xlarge_search', traits: {"smithy.api#enumValue" => "c4.4xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:c4_8xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c4_8xlarge_search', traits: {"smithy.api#enumValue" => "c4.8xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r4_large_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r4_large_search', traits: {"smithy.api#enumValue" => "r4.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:r4_xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r4_xlarge_search', traits: {"smithy.api#enumValue" => "r4.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r4_2xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r4_2xlarge_search', traits: {"smithy.api#enumValue" => "r4.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r4_4xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r4_4xlarge_search', traits: {"smithy.api#enumValue" => "r4.4xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r4_8xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r4_8xlarge_search', traits: {"smithy.api#enumValue" => "r4.8xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r4_16xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r4_16xlarge_search', traits: {"smithy.api#enumValue" => "r4.16xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:i3_large_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'i3_large_search', traits: {"smithy.api#enumValue" => "i3.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:i3_xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'i3_xlarge_search', traits: {"smithy.api#enumValue" => "i3.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:i3_2xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'i3_2xlarge_search', traits: {"smithy.api#enumValue" => "i3.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:i3_4xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'i3_4xlarge_search', traits: {"smithy.api#enumValue" => "i3.4xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:i3_8xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'i3_8xlarge_search', traits: {"smithy.api#enumValue" => "i3.8xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:i3_16xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'i3_16xlarge_search', traits: {"smithy.api#enumValue" => "i3.16xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r6g_large_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r6g_large_search', traits: {"smithy.api#enumValue" => "r6g.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:r6g_xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r6g_xlarge_search', traits: {"smithy.api#enumValue" => "r6g.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r6g_2xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r6g_2xlarge_search', traits: {"smithy.api#enumValue" => "r6g.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r6g_4xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r6g_4xlarge_search', traits: {"smithy.api#enumValue" => "r6g.4xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r6g_8xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r6g_8xlarge_search', traits: {"smithy.api#enumValue" => "r6g.8xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r6g_12xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r6g_12xlarge_search', traits: {"smithy.api#enumValue" => "r6g.12xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m6g_large_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm6g_large_search', traits: {"smithy.api#enumValue" => "m6g.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:m6g_xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm6g_xlarge_search', traits: {"smithy.api#enumValue" => "m6g.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m6g_2xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm6g_2xlarge_search', traits: {"smithy.api#enumValue" => "m6g.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m6g_4xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm6g_4xlarge_search', traits: {"smithy.api#enumValue" => "m6g.4xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m6g_8xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm6g_8xlarge_search', traits: {"smithy.api#enumValue" => "m6g.8xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m6g_12xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm6g_12xlarge_search', traits: {"smithy.api#enumValue" => "m6g.12xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:c6g_large_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c6g_large_search', traits: {"smithy.api#enumValue" => "c6g.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:c6g_xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c6g_xlarge_search', traits: {"smithy.api#enumValue" => "c6g.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:c6g_2xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c6g_2xlarge_search', traits: {"smithy.api#enumValue" => "c6g.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:c6g_4xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c6g_4xlarge_search', traits: {"smithy.api#enumValue" => "c6g.4xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:c6g_8xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c6g_8xlarge_search', traits: {"smithy.api#enumValue" => "c6g.8xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:c6g_12xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c6g_12xlarge_search', traits: {"smithy.api#enumValue" => "c6g.12xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r6gd_large_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r6gd_large_search', traits: {"smithy.api#enumValue" => "r6gd.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:r6gd_xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r6gd_xlarge_search', traits: {"smithy.api#enumValue" => "r6gd.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r6gd_2xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r6gd_2xlarge_search', traits: {"smithy.api#enumValue" => "r6gd.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r6gd_4xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r6gd_4xlarge_search', traits: {"smithy.api#enumValue" => "r6gd.4xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r6gd_8xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r6gd_8xlarge_search', traits: {"smithy.api#enumValue" => "r6gd.8xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r6gd_12xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r6gd_12xlarge_search', traits: {"smithy.api#enumValue" => "r6gd.12xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r6gd_16xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r6gd_16xlarge_search', traits: {"smithy.api#enumValue" => "r6gd.16xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:t4g_small_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 't4g_small_search', traits: {"smithy.api#enumValue" => "t4g.small.search"}))
    OpenSearchPartitionInstanceType.add_member(:t4g_medium_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 't4g_medium_search', traits: {"smithy.api#enumValue" => "t4g.medium.search"}))
    OpenSearchWarmPartitionInstanceType.add_member(:ultrawarm1_medium_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ultrawarm1_medium_search', traits: {"smithy.api#enumValue" => "ultrawarm1.medium.search"}))
    OpenSearchWarmPartitionInstanceType.add_member(:ultrawarm1_large_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ultrawarm1_large_search', traits: {"smithy.api#enumValue" => "ultrawarm1.large.search"}))
    OpenSearchWarmPartitionInstanceType.add_member(:ultrawarm1_xlarge_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ultrawarm1_xlarge_search', traits: {"smithy.api#enumValue" => "ultrawarm1.xlarge.search"}))
    OptionState.add_member(:requires_index_documents, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RequiresIndexDocuments', traits: {"smithy.api#enumValue" => "RequiresIndexDocuments"}))
    OptionState.add_member(:processing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Processing', traits: {"smithy.api#enumValue" => "Processing"}))
    OptionState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "Active"}))
    OptionStatus.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the entity was created.</p>", "smithy.api#required" => {}}))
    OptionStatus.add_member(:update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: 'UpdateDate', traits: {"smithy.api#documentation" => "<p>The timestamp of the last time the entity was updated.</p>", "smithy.api#required" => {}}))
    OptionStatus.add_member(:update_version, Smithy::Schema::Shapes::ShapeRef.new(shape: UIntValue, location_name: 'UpdateVersion', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The latest version of the entity.</p>"}))
    OptionStatus.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the entity.</p>", "smithy.api#required" => {}}))
    OptionStatus.add_member(:pending_deletion, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'PendingDeletion', traits: {"smithy.api#documentation" => "<p>Indicates whether the entity is being deleted.</p>"}))
    OptionStatus.type = Types::OptionStatus
    OutboundConnection.add_member(:local_domain_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInformationContainer, location_name: 'LocalDomainInfo', traits: {"smithy.api#documentation" => "<p>Information about the source (local) domain.</p>"}))
    OutboundConnection.add_member(:remote_domain_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInformationContainer, location_name: 'RemoteDomainInfo', traits: {"smithy.api#documentation" => "<p>Information about the destination (remote) domain.</p>"}))
    OutboundConnection.add_member(:connection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'ConnectionId', traits: {"smithy.api#documentation" => "<p>Unique identifier of the connection.</p>"}))
    OutboundConnection.add_member(:connection_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAlias, location_name: 'ConnectionAlias', traits: {"smithy.api#documentation" => "<p>Name of the connection.</p>"}))
    OutboundConnection.add_member(:connection_status, Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundConnectionStatus, location_name: 'ConnectionStatus', traits: {"smithy.api#documentation" => "<p>Status of the connection.</p>"}))
    OutboundConnection.add_member(:connection_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionMode, location_name: 'ConnectionMode', traits: {"smithy.api#documentation" => "<p>The connection mode.</p>"}))
    OutboundConnection.add_member(:connection_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionProperties, location_name: 'ConnectionProperties', traits: {"smithy.api#documentation" => "<p>Properties for the outbound connection.</p>"}))
    OutboundConnection.type = Types::OutboundConnection
    OutboundConnectionStatus.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundConnectionStatusCode, location_name: 'StatusCode', traits: {"smithy.api#documentation" => "<p>The status code for the outbound connection. Can be one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>VALIDATING</b> - The outbound connection request is being\n     validated.</p>\n            </li>\n            <li>\n               <p>\n                  <b>VALIDATION_FAILED</b> - Validation failed for the connection\n     request.</p>\n            </li>\n            <li>\n               <p>\n                  <b>PENDING_ACCEPTANCE</b>: Outbound connection request is validated and is\n     not yet accepted by the remote domain owner.</p>\n            </li>\n            <li>\n               <p>\n                  <b>APPROVED</b> - Outbound connection has been approved by the remote domain\n     owner for getting provisioned.</p>\n            </li>\n            <li>\n               <p>\n                  <b>PROVISIONING</b> - Outbound connection request is in process.</p>\n            </li>\n            <li>\n               <p>\n                  <b>ACTIVE</b> - Outbound connection is active and ready to use.</p>\n            </li>\n            <li>\n               <p>\n                  <b>REJECTING</b> - Outbound connection rejection by remote domain owner is in\n     progress.</p>\n            </li>\n            <li>\n               <p>\n                  <b>REJECTED</b> - Outbound connection request is rejected by remote domain\n     owner.</p>\n            </li>\n            <li>\n               <p>\n                  <b>DELETING</b> - Outbound connection deletion is in progress.</p>\n            </li>\n            <li>\n               <p>\n                  <b>DELETED</b> - Outbound connection is deleted and can no longer be\n     used.</p>\n            </li>\n         </ul>"}))
    OutboundConnectionStatus.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionStatusMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Verbose information for the outbound connection.</p>"}))
    OutboundConnectionStatus.type = Types::OutboundConnectionStatus
    OutboundConnectionStatusCode.add_member(:validating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATING', traits: {"smithy.api#enumValue" => "VALIDATING"}))
    OutboundConnectionStatusCode.add_member(:validation_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "VALIDATION_FAILED"}))
    OutboundConnectionStatusCode.add_member(:pending_acceptance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_ACCEPTANCE', traits: {"smithy.api#enumValue" => "PENDING_ACCEPTANCE"}))
    OutboundConnectionStatusCode.add_member(:approved, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPROVED', traits: {"smithy.api#enumValue" => "APPROVED"}))
    OutboundConnectionStatusCode.add_member(:provisioning, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROVISIONING', traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    OutboundConnectionStatusCode.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    OutboundConnectionStatusCode.add_member(:rejecting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTING', traits: {"smithy.api#enumValue" => "REJECTING"}))
    OutboundConnectionStatusCode.add_member(:rejected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "REJECTED"}))
    OutboundConnectionStatusCode.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    OutboundConnectionStatusCode.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    OutboundConnections.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundConnection)
    OverallChangeStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    OverallChangeStatus.add_member(:processing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESSING', traits: {"smithy.api#enumValue" => "PROCESSING"}))
    OverallChangeStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    OverallChangeStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    PackageAssociationConfiguration.add_member(:key_store_access_option, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyStoreAccessOption, location_name: 'KeyStoreAccessOption', traits: {"smithy.api#documentation" => "<p>The configuration parameters to enable accessing the key store required by the package.</p>"}))
    PackageAssociationConfiguration.type = Types::PackageAssociationConfiguration
    PackageConfiguration.add_member(:license_requirement, Smithy::Schema::Shapes::ShapeRef.new(shape: RequirementLevel, location_name: 'LicenseRequirement', traits: {"smithy.api#documentation" => "<p>The license requirements for the package.</p>", "smithy.api#required" => {}}))
    PackageConfiguration.add_member(:license_filepath, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseFilepath, location_name: 'LicenseFilepath', traits: {"smithy.api#documentation" => "<p>The relative file path for the license associated with the package.</p>"}))
    PackageConfiguration.add_member(:configuration_requirement, Smithy::Schema::Shapes::ShapeRef.new(shape: RequirementLevel, location_name: 'ConfigurationRequirement', traits: {"smithy.api#documentation" => "<p>The configuration requirements for the package.</p>", "smithy.api#required" => {}}))
    PackageConfiguration.add_member(:requires_restart_for_configuration_update, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RequiresRestartForConfigurationUpdate', traits: {"smithy.api#documentation" => "<p>This indicates whether a B/G deployment is required for updating the configuration that the plugin is prerequisite for.</p>"}))
    PackageConfiguration.type = Types::PackageConfiguration
    PackageDetails.add_member(:package_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: 'PackageID', traits: {"smithy.api#documentation" => "<p>The unique identifier of the package.</p>"}))
    PackageDetails.add_member(:package_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'PackageName', traits: {"smithy.api#documentation" => "<p>The user-specified name of the package.</p>"}))
    PackageDetails.add_member(:package_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageType, location_name: 'PackageType', traits: {"smithy.api#documentation" => "<p>The type of package.</p>"}))
    PackageDetails.add_member(:package_description, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDescription, location_name: 'PackageDescription', traits: {"smithy.api#documentation" => "<p>User-specified description of the package.</p>"}))
    PackageDetails.add_member(:package_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageStatus, location_name: 'PackageStatus', traits: {"smithy.api#documentation" => "<p>The current status of the package. The available options are <code>AVAILABLE</code>, <code>COPYING</code>, <code>COPY_FAILED</code>, <code>VALIDATNG</code>, <code>VALIDATION_FAILED</code>, <code>DELETING</code>, and <code>DELETE_FAILED</code>.</p>"}))
    PackageDetails.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the package was created.</p>"}))
    PackageDetails.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdated, location_name: 'LastUpdatedAt', traits: {"smithy.api#documentation" => "<p>Date and time when the package was last updated.</p>"}))
    PackageDetails.add_member(:available_package_version, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion, location_name: 'AvailablePackageVersion', traits: {"smithy.api#documentation" => "<p>The package version.</p>"}))
    PackageDetails.add_member(:error_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: 'ErrorDetails', traits: {"smithy.api#documentation" => "<p>Additional information if the package is in an error state. Null otherwise.</p>"}))
    PackageDetails.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersion, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>Version of OpenSearch or Elasticsearch, in the format Elasticsearch_X.Y or OpenSearch_X.Y.\n   Defaults to the latest version of OpenSearch.</p>"}))
    PackageDetails.add_member(:available_plugin_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginProperties, location_name: 'AvailablePluginProperties', traits: {"smithy.api#documentation" => "<p>If the package is a <code>ZIP-PLUGIN</code> package, additional information about plugin properties.</p>"}))
    PackageDetails.add_member(:available_package_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageConfiguration, location_name: 'AvailablePackageConfiguration', traits: {"smithy.api#documentation" => "<p>This represents the available configuration parameters for the package.</p>"}))
    PackageDetails.add_member(:allow_listed_user_list, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageUserList, location_name: 'AllowListedUserList', traits: {"smithy.api#documentation" => "<p> A list of users who are allowed to view and associate the package. This field is only visible to the owner of a package.</p>"}))
    PackageDetails.add_member(:package_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageOwner, location_name: 'PackageOwner', traits: {"smithy.api#documentation" => "<p>The owner of the package who is allowed to create and update a package and add users to the package scope.</p>"}))
    PackageDetails.add_member(:package_vending_options, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVendingOptions, location_name: 'PackageVendingOptions', traits: {"smithy.api#documentation" => "<p>Package Vending Options for a package.</p>"}))
    PackageDetails.add_member(:package_encryption_options, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageEncryptionOptions, location_name: 'PackageEncryptionOptions', traits: {"smithy.api#documentation" => "<p>Encryption options for a package.</p>"}))
    PackageDetails.type = Types::PackageDetails
    PackageDetailsForAssociation.add_member(:package_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: 'PackageID', traits: {"smithy.api#documentation" => "<p>Internal ID of the package that you want to associate with a domain.</p>", "smithy.api#required" => {}}))
    PackageDetailsForAssociation.add_member(:prerequisite_package_id_list, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageIDList, location_name: 'PrerequisitePackageIDList', traits: {"smithy.api#documentation" => "<p>List of package IDs that must be linked to the domain before or simultaneously with the package association.</p>"}))
    PackageDetailsForAssociation.add_member(:association_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageAssociationConfiguration, location_name: 'AssociationConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration parameters for associating the package with a domain.</p>"}))
    PackageDetailsForAssociation.type = Types::PackageDetailsForAssociation
    PackageDetailsForAssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDetailsForAssociation)
    PackageDetailsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDetails)
    PackageEncryptionOptions.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>KMS key ID for encrypting the package.</p>"}))
    PackageEncryptionOptions.add_member(:encryption_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EncryptionEnabled', traits: {"smithy.api#documentation" => "<p>Whether encryption is enabled for the package.</p>", "smithy.api#required" => {}}))
    PackageEncryptionOptions.type = Types::PackageEncryptionOptions
    PackageIDList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID)
    PackageScopeOperationEnum.add_member(:add, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADD', traits: {"smithy.api#enumValue" => "ADD"}))
    PackageScopeOperationEnum.add_member(:override, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OVERRIDE', traits: {"smithy.api#enumValue" => "OVERRIDE"}))
    PackageScopeOperationEnum.add_member(:remove, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOVE', traits: {"smithy.api#enumValue" => "REMOVE"}))
    PackageSource.add_member(:s3_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'S3BucketName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon S3 bucket containing the package.</p>"}))
    PackageSource.add_member(:s3_key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 'S3Key', traits: {"smithy.api#documentation" => "<p>Key (file name) of the package.</p>"}))
    PackageSource.type = Types::PackageSource
    PackageStatus.add_member(:copying, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COPYING', traits: {"smithy.api#enumValue" => "COPYING"}))
    PackageStatus.add_member(:copy_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COPY_FAILED', traits: {"smithy.api#enumValue" => "COPY_FAILED"}))
    PackageStatus.add_member(:validating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATING', traits: {"smithy.api#enumValue" => "VALIDATING"}))
    PackageStatus.add_member(:validation_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "VALIDATION_FAILED"}))
    PackageStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    PackageStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    PackageStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    PackageStatus.add_member(:delete_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    PackageType.add_member(:txt_dictionary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TXT_DICTIONARY', traits: {"smithy.api#enumValue" => "TXT-DICTIONARY"}))
    PackageType.add_member(:zip_plugin, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZIP_PLUGIN', traits: {"smithy.api#enumValue" => "ZIP-PLUGIN"}))
    PackageType.add_member(:package_license, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PACKAGE_LICENSE', traits: {"smithy.api#enumValue" => "PACKAGE-LICENSE"}))
    PackageType.add_member(:package_config, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PACKAGE_CONFIG', traits: {"smithy.api#enumValue" => "PACKAGE-CONFIG"}))
    PackageUserList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PackageUser)
    PackageVendingOptions.add_member(:vending_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'VendingEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether the package vending feature is enabled, allowing the package to be used by other users.</p>", "smithy.api#required" => {}}))
    PackageVendingOptions.type = Types::PackageVendingOptions
    PackageVersionHistory.add_member(:package_version, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion, location_name: 'PackageVersion', traits: {"smithy.api#documentation" => "<p>The package version.</p>"}))
    PackageVersionHistory.add_member(:commit_message, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitMessage, location_name: 'CommitMessage', traits: {"smithy.api#documentation" => "<p>A message associated with the package version when it was uploaded.</p>"}))
    PackageVersionHistory.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time when the package was created.</p>"}))
    PackageVersionHistory.add_member(:plugin_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginProperties, location_name: 'PluginProperties', traits: {"smithy.api#documentation" => "<p>Additional information about plugin properties if the package is a <code>ZIP-PLUGIN</code> package.</p>"}))
    PackageVersionHistory.add_member(:package_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageConfiguration, location_name: 'PackageConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration details for a specific version of a package.</p>"}))
    PackageVersionHistory.type = Types::PackageVersionHistory
    PackageVersionHistoryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionHistory)
    PluginProperties.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the plugin.</p>"}))
    PluginProperties.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the plugin.</p>"}))
    PluginProperties.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginVersion, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The version of the plugin.</p>"}))
    PluginProperties.add_member(:class_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginClassName, location_name: 'ClassName', traits: {"smithy.api#documentation" => "<p>The name of the class to load.</p>"}))
    PluginProperties.add_member(:uncompressed_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: UncompressedPluginSizeInBytes, location_name: 'UncompressedSizeInBytes', traits: {"smithy.api#documentation" => "<p>The uncompressed size of the plugin.</p>"}))
    PluginProperties.type = Types::PluginProperties
    PrincipalType.add_member(:aws_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_ACCOUNT', traits: {"smithy.api#enumValue" => "AWS_ACCOUNT"}))
    PrincipalType.add_member(:aws_service, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SERVICE', traits: {"smithy.api#enumValue" => "AWS_SERVICE"}))
    PropertyValueType.add_member(:plain_text, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLAIN_TEXT', traits: {"smithy.api#enumValue" => "PLAIN_TEXT"}))
    PropertyValueType.add_member(:stringified_json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRINGIFIED_JSON', traits: {"smithy.api#enumValue" => "STRINGIFIED_JSON"}))
    PurchaseReservedInstanceOfferingRequest.add_member(:reserved_instance_offering_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: 'ReservedInstanceOfferingId', traits: {"smithy.api#documentation" => "<p>The ID of the Reserved Instance offering to purchase.</p>", "smithy.api#required" => {}}))
    PurchaseReservedInstanceOfferingRequest.add_member(:reservation_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationToken, location_name: 'ReservationName', traits: {"smithy.api#documentation" => "<p>A customer-specified identifier to track this reservation.</p>", "smithy.api#required" => {}}))
    PurchaseReservedInstanceOfferingRequest.add_member(:instance_count, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceCount, location_name: 'InstanceCount', traits: {"smithy.api#documentation" => "<p>The number of OpenSearch instances to reserve.</p>"}))
    PurchaseReservedInstanceOfferingRequest.type = Types::PurchaseReservedInstanceOfferingRequest
    PurchaseReservedInstanceOfferingResponse.add_member(:reserved_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: 'ReservedInstanceId', traits: {"smithy.api#documentation" => "<p>The ID of the Reserved Instance offering that was purchased.</p>"}))
    PurchaseReservedInstanceOfferingResponse.add_member(:reservation_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationToken, location_name: 'ReservationName', traits: {"smithy.api#documentation" => "<p>The customer-specified identifier used to track this reservation.</p>"}))
    PurchaseReservedInstanceOfferingResponse.type = Types::PurchaseReservedInstanceOfferingResponse
    RecurringCharge.add_member(:recurring_charge_amount, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'RecurringChargeAmount', traits: {"smithy.api#documentation" => "<p>The monetary amount of the recurring charge.</p>"}))
    RecurringCharge.add_member(:recurring_charge_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecurringChargeFrequency', traits: {"smithy.api#documentation" => "<p>The frequency of the recurring charge.</p>"}))
    RecurringCharge.type = Types::RecurringCharge
    RecurringChargeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringCharge, traits: {"smithy.api#xmlName" => "RecurringCharge"})
    RejectInboundConnectionRequest.add_member(:connection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'ConnectionId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the inbound connection to reject.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RejectInboundConnectionRequest.type = Types::RejectInboundConnectionRequest
    RejectInboundConnectionResponse.add_member(:connection, Smithy::Schema::Shapes::ShapeRef.new(shape: InboundConnection, location_name: 'Connection', traits: {"smithy.api#documentation" => "<p>Contains details about the rejected inbound connection.</p>"}))
    RejectInboundConnectionResponse.type = Types::RejectInboundConnectionResponse
    RemoveTagsRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the domain, data source, or application from which you\n   want to delete the specified tags.</p>", "smithy.api#required" => {}}))
    RemoveTagsRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The list of tag keys to remove from the domain, data source, or application.</p>", "smithy.api#required" => {}}))
    RemoveTagsRequest.type = Types::RemoveTagsRequest
    RequirementLevel.add_member(:required, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUIRED', traits: {"smithy.api#enumValue" => "REQUIRED"}))
    RequirementLevel.add_member(:optional, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIONAL', traits: {"smithy.api#enumValue" => "OPTIONAL"}))
    RequirementLevel.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    ReservedInstance.add_member(:reservation_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationToken, location_name: 'ReservationName', traits: {"smithy.api#documentation" => "<p>The customer-specified identifier to track this reservation.</p>"}))
    ReservedInstance.add_member(:reserved_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: 'ReservedInstanceId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the reservation.</p>"}))
    ReservedInstance.add_member(:billing_subscription_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'BillingSubscriptionId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the billing subscription.</p>"}))
    ReservedInstance.add_member(:reserved_instance_offering_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedInstanceOfferingId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Reserved Instance offering.</p>"}))
    ReservedInstance.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchPartitionInstanceType, location_name: 'InstanceType', traits: {"smithy.api#documentation" => "<p>The OpenSearch instance type offered by theReserved Instance offering.</p>"}))
    ReservedInstance.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The date and time when the reservation was purchased.</p>"}))
    ReservedInstance.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Duration', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The duration, in seconds, for which the OpenSearch instance is reserved.</p>"}))
    ReservedInstance.add_member(:fixed_price, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'FixedPrice', traits: {"smithy.api#documentation" => "<p>The upfront fixed charge you will paid to purchase the specific Reserved Instance\n   offering.</p>"}))
    ReservedInstance.add_member(:usage_price, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'UsagePrice', traits: {"smithy.api#documentation" => "<p>The hourly rate at which you're charged for the domain using this Reserved Instance.</p>"}))
    ReservedInstance.add_member(:currency_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrencyCode', traits: {"smithy.api#documentation" => "<p>The currency code for the offering.</p>"}))
    ReservedInstance.add_member(:instance_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'InstanceCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of OpenSearch instances that have been reserved.</p>"}))
    ReservedInstance.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the Reserved Instance.</p>"}))
    ReservedInstance.add_member(:payment_option, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedInstancePaymentOption, location_name: 'PaymentOption', traits: {"smithy.api#documentation" => "<p>The payment option as defined in the Reserved Instance offering.</p>"}))
    ReservedInstance.add_member(:recurring_charges, Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringChargeList, location_name: 'RecurringCharges', traits: {"smithy.api#documentation" => "<p>The recurring charge to your account, regardless of whether you create any domains using the\n   Reserved Instance offering.</p>"}))
    ReservedInstance.type = Types::ReservedInstance
    ReservedInstanceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedInstance)
    ReservedInstanceOffering.add_member(:reserved_instance_offering_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: 'ReservedInstanceOfferingId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Reserved Instance offering.</p>"}))
    ReservedInstanceOffering.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchPartitionInstanceType, location_name: 'InstanceType', traits: {"smithy.api#documentation" => "<p>The OpenSearch instance type offered by the Reserved Instance offering.</p>"}))
    ReservedInstanceOffering.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Duration', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The duration, in seconds, for which the offering will reserve the OpenSearch instance.</p>"}))
    ReservedInstanceOffering.add_member(:fixed_price, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'FixedPrice', traits: {"smithy.api#documentation" => "<p>The upfront fixed charge you will pay to purchase the specific Reserved Instance\n   offering.</p>"}))
    ReservedInstanceOffering.add_member(:usage_price, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'UsagePrice', traits: {"smithy.api#documentation" => "<p>The hourly rate at which you're charged for the domain using this Reserved Instance.</p>"}))
    ReservedInstanceOffering.add_member(:currency_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrencyCode', traits: {"smithy.api#documentation" => "<p>The currency code for the Reserved Instance offering.</p>"}))
    ReservedInstanceOffering.add_member(:payment_option, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedInstancePaymentOption, location_name: 'PaymentOption', traits: {"smithy.api#documentation" => "<p>Payment option for the Reserved Instance offering</p>"}))
    ReservedInstanceOffering.add_member(:recurring_charges, Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringChargeList, location_name: 'RecurringCharges', traits: {"smithy.api#documentation" => "<p>The recurring charge to your account, regardless of whether you creates any domains using\n   the offering.</p>"}))
    ReservedInstanceOffering.type = Types::ReservedInstanceOffering
    ReservedInstanceOfferingList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedInstanceOffering, traits: {"smithy.api#xmlName" => "ReservedInstanceOffering"})
    ReservedInstancePaymentOption.add_member(:all_upfront, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL_UPFRONT', traits: {"smithy.api#enumValue" => "ALL_UPFRONT"}))
    ReservedInstancePaymentOption.add_member(:partial_upfront, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARTIAL_UPFRONT', traits: {"smithy.api#enumValue" => "PARTIAL_UPFRONT"}))
    ReservedInstancePaymentOption.add_member(:no_upfront, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_UPFRONT', traits: {"smithy.api#enumValue" => "NO_UPFRONT"}))
    ResourceAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A description of the error.</p>"}))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A description of the error.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RevokeVpcEndpointAccessRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the OpenSearch Service domain.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RevokeVpcEndpointAccessRequest.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccount, location_name: 'Account', traits: {"smithy.api#documentation" => "<p>The account ID to revoke access from.</p>"}))
    RevokeVpcEndpointAccessRequest.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServicePrincipal, location_name: 'Service', traits: {"smithy.api#documentation" => "<p>The service SP to revoke access from.</p>"}))
    RevokeVpcEndpointAccessRequest.type = Types::RevokeVpcEndpointAccessRequest
    RevokeVpcEndpointAccessResponse.type = Types::RevokeVpcEndpointAccessResponse
    RolesKeyIdCOption.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GroupName', traits: {"smithy.api#enumValue" => "GroupName"}))
    RolesKeyIdCOption.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GroupId', traits: {"smithy.api#enumValue" => "GroupId"}))
    RollbackOnDisable.add_member(:no_rollback, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_ROLLBACK', traits: {"smithy.api#enumValue" => "NO_ROLLBACK"}))
    RollbackOnDisable.add_member(:default_rollback, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT_ROLLBACK', traits: {"smithy.api#enumValue" => "DEFAULT_ROLLBACK"}))
    S3GlueDataCatalog.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>>The Amazon Resource Name (ARN) for the S3 Glue Data Catalog.</p>"}))
    S3GlueDataCatalog.type = Types::S3GlueDataCatalog
    S3VectorsEngine.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Enables S3 vectors engine features.</p>"}))
    S3VectorsEngine.type = Types::S3VectorsEngine
    SAMLIdp.add_member(:metadata_content, Smithy::Schema::Shapes::ShapeRef.new(shape: SAMLMetadata, location_name: 'MetadataContent', traits: {"smithy.api#documentation" => "<p>The metadata of the SAML application, in XML format.</p>", "smithy.api#required" => {}}))
    SAMLIdp.add_member(:entity_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SAMLEntityId, location_name: 'EntityId', traits: {"smithy.api#documentation" => "<p>The unique entity ID of the application in the SAML identity provider.</p>", "smithy.api#required" => {}}))
    SAMLIdp.type = Types::SAMLIdp
    SAMLOptionsInput.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>True to enable SAML authentication for a domain.</p>"}))
    SAMLOptionsInput.add_member(:idp, Smithy::Schema::Shapes::ShapeRef.new(shape: SAMLIdp, location_name: 'Idp', traits: {"smithy.api#documentation" => "<p>The SAML Identity Provider's information.</p>"}))
    SAMLOptionsInput.add_member(:master_user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: 'MasterUserName', traits: {"smithy.api#documentation" => "<p>The SAML master user name, which is stored in the domain's internal user database.</p>"}))
    SAMLOptionsInput.add_member(:master_backend_role, Smithy::Schema::Shapes::ShapeRef.new(shape: BackendRole, location_name: 'MasterBackendRole', traits: {"smithy.api#documentation" => "<p>The backend role that the SAML master user is mapped to.</p>"}))
    SAMLOptionsInput.add_member(:subject_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubjectKey', traits: {"smithy.api#documentation" => "<p>Element of the SAML assertion to use for the user name. Default is\n   <code>NameID</code>.</p>"}))
    SAMLOptionsInput.add_member(:roles_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RolesKey', traits: {"smithy.api#documentation" => "<p>Element of the SAML assertion to use for backend roles. Default is\n   <code>roles</code>.</p>"}))
    SAMLOptionsInput.add_member(:session_timeout_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: 'SessionTimeoutMinutes', traits: {"smithy.api#documentation" => "<p>The duration, in minutes, after which a user session becomes inactive. Acceptable values are between 1 and 1440,\n   and the default value is 60.</p>"}))
    SAMLOptionsInput.type = Types::SAMLOptionsInput
    SAMLOptionsOutput.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>True if SAML is enabled.</p>"}))
    SAMLOptionsOutput.add_member(:idp, Smithy::Schema::Shapes::ShapeRef.new(shape: SAMLIdp, location_name: 'Idp', traits: {"smithy.api#documentation" => "<p>Describes the SAML identity provider's information.</p>"}))
    SAMLOptionsOutput.add_member(:subject_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubjectKey', traits: {"smithy.api#documentation" => "<p>The key used for matching the SAML subject attribute.</p>"}))
    SAMLOptionsOutput.add_member(:roles_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RolesKey', traits: {"smithy.api#documentation" => "<p>The key used for matching the SAML roles attribute.</p>"}))
    SAMLOptionsOutput.add_member(:session_timeout_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: 'SessionTimeoutMinutes', traits: {"smithy.api#documentation" => "<p>The duration, in minutes, after which a user session becomes inactive.</p>"}))
    SAMLOptionsOutput.type = Types::SAMLOptionsOutput
    ScheduleAt.add_member(:now, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOW', traits: {"smithy.api#enumValue" => "NOW"}))
    ScheduleAt.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMESTAMP', traits: {"smithy.api#enumValue" => "TIMESTAMP"}))
    ScheduleAt.add_member(:off_peak_window, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OFF_PEAK_WINDOW', traits: {"smithy.api#enumValue" => "OFF_PEAK_WINDOW"}))
    ScheduledAction.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the scheduled action.</p>", "smithy.api#required" => {}}))
    ScheduledAction.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of action that will be taken on the domain.</p>", "smithy.api#required" => {}}))
    ScheduledAction.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionSeverity, location_name: 'Severity', traits: {"smithy.api#documentation" => "<p>The severity of the action.</p>", "smithy.api#required" => {}}))
    ScheduledAction.add_member(:scheduled_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ScheduledTime', traits: {"smithy.api#documentation" => "<p>The time when the change is scheduled to happen.</p>", "smithy.api#required" => {}}))
    ScheduledAction.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the action to be taken.</p>"}))
    ScheduledAction.add_member(:scheduled_by, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledBy, location_name: 'ScheduledBy', traits: {"smithy.api#documentation" => "<p>Whether the action was scheduled manually (<code>CUSTOMER</code>, or by OpenSearch Service automatically (<code>SYSTEM</code>).</p>"}))
    ScheduledAction.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the scheduled action.</p>"}))
    ScheduledAction.add_member(:mandatory, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Mandatory', traits: {"smithy.api#documentation" => "<p>Whether the action is required or optional.</p>"}))
    ScheduledAction.add_member(:cancellable, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Cancellable', traits: {"smithy.api#documentation" => "<p>Whether or not the scheduled action is cancellable.</p>"}))
    ScheduledAction.type = Types::ScheduledAction
    ScheduledActionsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledAction)
    ScheduledAutoTuneActionType.add_member(:jvm_heap_size_tuning, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JVM_HEAP_SIZE_TUNING', traits: {"smithy.api#enumValue" => "JVM_HEAP_SIZE_TUNING"}))
    ScheduledAutoTuneActionType.add_member(:jvm_young_gen_tuning, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JVM_YOUNG_GEN_TUNING', traits: {"smithy.api#enumValue" => "JVM_YOUNG_GEN_TUNING"}))
    ScheduledAutoTuneDetails.add_member(:date, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneDate, location_name: 'Date', traits: {"smithy.api#documentation" => "<p>The date and time when the Auto-Tune action is scheduled for the domain.</p>"}))
    ScheduledAutoTuneDetails.add_member(:action_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledAutoTuneActionType, location_name: 'ActionType', traits: {"smithy.api#documentation" => "<p>The type of Auto-Tune action.</p>"}))
    ScheduledAutoTuneDetails.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledAutoTuneDescription, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>A description of the Auto-Tune action.</p>"}))
    ScheduledAutoTuneDetails.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledAutoTuneSeverityType, location_name: 'Severity', traits: {"smithy.api#documentation" => "<p>The severity of the Auto-Tune action. Valid values are <code>LOW</code>,\n   <code>MEDIUM</code>, and <code>HIGH</code>.</p>"}))
    ScheduledAutoTuneDetails.type = Types::ScheduledAutoTuneDetails
    ScheduledAutoTuneSeverityType.add_member(:low, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW', traits: {"smithy.api#enumValue" => "LOW"}))
    ScheduledAutoTuneSeverityType.add_member(:medium, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "MEDIUM"}))
    ScheduledAutoTuneSeverityType.add_member(:high, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH', traits: {"smithy.api#enumValue" => "HIGH"}))
    ScheduledBy.add_member(:customer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER', traits: {"smithy.api#enumValue" => "CUSTOMER"}))
    ScheduledBy.add_member(:system, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEM', traits: {"smithy.api#enumValue" => "SYSTEM"}))
    SecurityLakeDirectQueryDataSource.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>\n   The unique identifier of the IAM role that grants OpenSearch \n   Service permission to access the specified data source.\n  </p>", "smithy.api#required" => {}}))
    SecurityLakeDirectQueryDataSource.type = Types::SecurityLakeDirectQueryDataSource
    ServiceSoftwareOptions.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrentVersion', traits: {"smithy.api#documentation" => "<p>The current service software version present on the domain.</p>"}))
    ServiceSoftwareOptions.add_member(:new_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NewVersion', traits: {"smithy.api#documentation" => "<p>The new service software version, if one is available.</p>"}))
    ServiceSoftwareOptions.add_member(:update_available, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UpdateAvailable', traits: {"smithy.api#documentation" => "<p>True if you're able to update your service software version. False if you can't update your\n   service software version.</p>"}))
    ServiceSoftwareOptions.add_member(:cancellable, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Cancellable', traits: {"smithy.api#documentation" => "<p> True if you're able to cancel your service software version update. False if you can't\n   cancel your service software update.</p>"}))
    ServiceSoftwareOptions.add_member(:update_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'UpdateStatus', traits: {"smithy.api#documentation" => "<p>The status of your service software update.</p>"}))
    ServiceSoftwareOptions.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the service software update status.</p>"}))
    ServiceSoftwareOptions.add_member(:automated_update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentCloseDateTimeStamp, location_name: 'AutomatedUpdateDate', traits: {"smithy.api#documentation" => "<p>The timestamp, in Epoch time, until which you can manually request a service software update. After this date,\n   we automatically update your service software.</p>"}))
    ServiceSoftwareOptions.add_member(:optional_deployment, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'OptionalDeployment', traits: {"smithy.api#documentation" => "<p>True if a service software is never automatically updated. False if a service software is\n   automatically updated after the automated update date.</p>"}))
    ServiceSoftwareOptions.type = Types::ServiceSoftwareOptions
    SkipUnavailableStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    SkipUnavailableStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    SlotList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Long)
    SlotNotAvailableException.add_member(:slot_suggestions, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotList, location_name: 'SlotSuggestions', traits: {"smithy.api#documentation" => "<p>Alternate time slots during which OpenSearch Service has available capacity to schedule a domain action.</p>"}))
    SlotNotAvailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A description of the error.</p>"}))
    SlotNotAvailableException.type = Types::SlotNotAvailableException
    SnapshotOptions.add_member(:automated_snapshot_start_hour, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: 'AutomatedSnapshotStartHour', traits: {"smithy.api#documentation" => "<p>The time, in UTC format, when OpenSearch Service takes a daily automated snapshot of the\n   specified domain. Default is <code>0</code> hours.</p>"}))
    SnapshotOptions.type = Types::SnapshotOptions
    SnapshotOptionsStatus.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotOptions, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>The daily snapshot options specified for the domain.</p>", "smithy.api#required" => {}}))
    SnapshotOptionsStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of a daily automated snapshot.</p>", "smithy.api#required" => {}}))
    SnapshotOptionsStatus.type = Types::SnapshotOptionsStatus
    SoftwareUpdateOptions.add_member(:auto_software_update_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoSoftwareUpdateEnabled', traits: {"smithy.api#documentation" => "<p>Whether automatic service software updates are enabled for the domain.</p>"}))
    SoftwareUpdateOptions.type = Types::SoftwareUpdateOptions
    SoftwareUpdateOptionsStatus.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareUpdateOptions, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>The service software update options for a domain.</p>"}))
    SoftwareUpdateOptionsStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of service software update options, including creation date and last updated date.</p>"}))
    SoftwareUpdateOptionsStatus.type = Types::SoftwareUpdateOptionsStatus
    StartDomainMaintenanceRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartDomainMaintenanceRequest.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceType, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The name of the action.</p>", "smithy.api#required" => {}}))
    StartDomainMaintenanceRequest.add_member(:node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeId, location_name: 'NodeId', traits: {"smithy.api#documentation" => "<p>The ID of the data node.</p>"}))
    StartDomainMaintenanceRequest.type = Types::StartDomainMaintenanceRequest
    StartDomainMaintenanceResponse.add_member(:maintenance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'MaintenanceId', traits: {"smithy.api#documentation" => "<p>The request ID of requested action.</p>"}))
    StartDomainMaintenanceResponse.type = Types::StartDomainMaintenanceResponse
    StartServiceSoftwareUpdateRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain that you want to update to the latest service software.</p>", "smithy.api#required" => {}}))
    StartServiceSoftwareUpdateRequest.add_member(:schedule_at, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleAt, location_name: 'ScheduleAt', traits: {"smithy.api#documentation" => "<p>When to start the service software update.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>NOW</code> - Immediately schedules the update to happen in the current hour if\n     there's capacity available.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TIMESTAMP</code> - Lets you specify a custom date and time to apply the update. If\n     you specify this value, you must also provide a value for <code>DesiredStartTime</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>OFF_PEAK_WINDOW</code> - Marks the update to be picked up during an upcoming\n     off-peak window. There's no guarantee that the update will happen during the next immediate\n     window. Depending on capacity, it might happen in subsequent days.</p>\n            </li>\n         </ul>\n         <p>Default: <code>NOW</code> if you don't specify a value for <code>DesiredStartTime</code>,\n   and <code>TIMESTAMP</code> if you do.</p>"}))
    StartServiceSoftwareUpdateRequest.add_member(:desired_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'DesiredStartTime', traits: {"smithy.api#documentation" => "<p>The Epoch timestamp when you want the service software update to start. You only need to\n   specify this parameter if you set <code>ScheduleAt</code> to <code>TIMESTAMP</code>.</p>"}))
    StartServiceSoftwareUpdateRequest.type = Types::StartServiceSoftwareUpdateRequest
    StartServiceSoftwareUpdateResponse.add_member(:service_software_options, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSoftwareOptions, location_name: 'ServiceSoftwareOptions', traits: {"smithy.api#documentation" => "<p>The current status of the OpenSearch Service software update.</p>"}))
    StartServiceSoftwareUpdateResponse.type = Types::StartServiceSoftwareUpdateResponse
    StorageType.add_member(:storage_type_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeName, location_name: 'StorageTypeName', traits: {"smithy.api#documentation" => "<p>The name of the storage type.</p>"}))
    StorageType.add_member(:storage_sub_type_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageSubTypeName, location_name: 'StorageSubTypeName', traits: {"smithy.api#documentation" => "<p>The storage sub-type, such as <code>gp3</code> or <code>io1</code>.</p>"}))
    StorageType.add_member(:storage_type_limits, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeLimitList, location_name: 'StorageTypeLimits', traits: {"smithy.api#documentation" => "<p>Limits that are applicable for the given storage type.</p>"}))
    StorageType.type = Types::StorageType
    StorageTypeLimit.add_member(:limit_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitName, location_name: 'LimitName', traits: {"smithy.api#documentation" => "<p> Name of storage limits that are applicable for the given storage type. If\n    <code>StorageType</code> is <code>ebs</code>, the following options are available:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>MinimumVolumeSize</b> - Minimum volume size that is available for the\n     given storage type. Can be empty if not applicable.</p>\n            </li>\n            <li>\n               <p>\n                  <b>MaximumVolumeSize</b> - Maximum volume size that is available for the\n     given storage type. Can be empty if not applicable.</p>\n            </li>\n            <li>\n               <p>\n                  <b>MaximumIops</b> - Maximum amount of IOPS that is available for the given\n     the storage type. Can be empty if not applicable.</p>\n            </li>\n            <li>\n               <p>\n                  <b>MinimumIops</b> - Minimum amount of IOPS that is available for the given\n     the storage type. Can be empty if not applicable.</p>\n            </li>\n            <li>\n               <p>\n                  <b>MaximumThroughput</b> - Maximum amount of throughput that is\n     available for the given the storage type. Can be empty if not applicable.</p>\n            </li>\n            <li>\n               <p>\n                  <b>MinimumThroughput</b> - Minimum amount of throughput that is\n     available for the given the storage type. Can be empty if not applicable.</p>\n            </li>\n         </ul>"}))
    StorageTypeLimit.add_member(:limit_values, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitValueList, location_name: 'LimitValues', traits: {"smithy.api#documentation" => "<p>The limit values.</p>"}))
    StorageTypeLimit.type = Types::StorageTypeLimit
    StorageTypeLimitList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeLimit)
    StorageTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StorageType)
    StringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    SubjectKeyIdCOption.add_member(:user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UserName', traits: {"smithy.api#enumValue" => "UserName"}))
    SubjectKeyIdCOption.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UserId', traits: {"smithy.api#enumValue" => "UserId"}))
    SubjectKeyIdCOption.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Email', traits: {"smithy.api#enumValue" => "Email"}))
    TLSSecurityPolicy.add_member(:policy_min_tls_1_0_2019_07, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POLICY_MIN_TLS_1_0_2019_07', traits: {"smithy.api#enumValue" => "Policy-Min-TLS-1-0-2019-07"}))
    TLSSecurityPolicy.add_member(:policy_min_tls_1_2_2019_07, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POLICY_MIN_TLS_1_2_2019_07', traits: {"smithy.api#enumValue" => "Policy-Min-TLS-1-2-2019-07"}))
    TLSSecurityPolicy.add_member(:policy_min_tls_1_2_pfs_2023_10, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POLICY_MIN_TLS_1_2_PFS_2023_10', traits: {"smithy.api#enumValue" => "Policy-Min-TLS-1-2-PFS-2023-10"}))
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The tag key. Tag keys must be unique for the domain to which they are attached.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value assigned to the corresponding tag key. Tag values can be null and don't have to be\n   unique in a tag set. For example, you can have a key value pair in a tag set of <code>project :\n    Trinity</code> and <code>cost-center : Trinity</code>\n         </p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TimeUnit.add_member(:hours, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOURS', traits: {"smithy.api#enumValue" => "HOURS"}))
    UpdateApplicationRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the OpenSearch application to be updated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApplicationRequest.add_member(:data_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSources, location_name: 'dataSources', traits: {"smithy.api#documentation" => "<p>The data sources to associate with the OpenSearch application.</p>"}))
    UpdateApplicationRequest.add_member(:app_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: AppConfigs, location_name: 'appConfigs', traits: {"smithy.api#documentation" => "<p>The configuration settings to modify for the OpenSearch application.</p>"}))
    UpdateApplicationRequest.type = Types::UpdateApplicationRequest
    UpdateApplicationResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the updated OpenSearch application.</p>"}))
    UpdateApplicationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the updated OpenSearch application.</p>"}))
    UpdateApplicationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn'))
    UpdateApplicationResponse.add_member(:data_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSources, location_name: 'dataSources', traits: {"smithy.api#documentation" => "<p>The data sources associated with the updated OpenSearch application.</p>"}))
    UpdateApplicationResponse.add_member(:iam_identity_center_options, Smithy::Schema::Shapes::ShapeRef.new(shape: IamIdentityCenterOptions, location_name: 'iamIdentityCenterOptions', traits: {"smithy.api#documentation" => "<p>The IAM Identity Center configuration for the updated OpenSearch application.</p>"}))
    UpdateApplicationResponse.add_member(:app_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: AppConfigs, location_name: 'appConfigs', traits: {"smithy.api#documentation" => "<p>The configuration settings for the updated OpenSearch application.</p>"}))
    UpdateApplicationResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the OpenSearch application was originally created.</p>"}))
    UpdateApplicationResponse.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the OpenSearch application was last updated.</p>"}))
    UpdateApplicationResponse.type = Types::UpdateApplicationResponse
    UpdateDataSourceRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataSourceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the data source to modify.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataSourceRequest.add_member(:data_source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceType, location_name: 'DataSourceType', traits: {"smithy.api#documentation" => "<p>The type of data source.</p>", "smithy.api#required" => {}}))
    UpdateDataSourceRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A new description of the data source.</p>"}))
    UpdateDataSourceRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the data source update.</p>"}))
    UpdateDataSourceRequest.type = Types::UpdateDataSourceRequest
    UpdateDataSourceResponse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A message associated with the updated data source.</p>"}))
    UpdateDataSourceResponse.type = Types::UpdateDataSourceResponse
    UpdateDirectQueryDataSourceRequest.add_member(:data_source_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceName, location_name: 'DataSourceName', traits: {"smithy.api#documentation" => "<p>\n   A unique, user-defined label to identify the data \n   source within your OpenSearch Service environment.\n  </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDirectQueryDataSourceRequest.add_member(:data_source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceType, location_name: 'DataSourceType', traits: {"smithy.api#documentation" => "<p>\n   The supported Amazon Web Services service that you want to use as the source for \n   direct queries in OpenSearch Service. \n  </p>", "smithy.api#required" => {}}))
    UpdateDirectQueryDataSourceRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>\n   An optional text field for providing additional context and \n   details about the data source.\n  </p>"}))
    UpdateDirectQueryDataSourceRequest.add_member(:open_search_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryOpenSearchARNList, location_name: 'OpenSearchArns', traits: {"smithy.api#documentation" => "<p>\n   A list of Amazon Resource Names (ARNs) for the OpenSearch \n   collections that are associated with the direct query data source.\n  </p>", "smithy.api#required" => {}}))
    UpdateDirectQueryDataSourceRequest.type = Types::UpdateDirectQueryDataSourceRequest
    UpdateDirectQueryDataSourceResponse.add_member(:data_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataSourceArn', traits: {"smithy.api#documentation" => "<p>\n   The unique, system-generated identifier that represents the data source.\n  </p>"}))
    UpdateDirectQueryDataSourceResponse.type = Types::UpdateDirectQueryDataSourceResponse
    UpdateDomainConfigRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain that you're updating.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDomainConfigRequest.add_member(:cluster_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterConfig, location_name: 'ClusterConfig', traits: {"smithy.api#documentation" => "<p>Changes that you want to make to the cluster configuration, such as the instance type and\n   number of EC2 instances.</p>"}))
    UpdateDomainConfigRequest.add_member(:ebs_options, Smithy::Schema::Shapes::ShapeRef.new(shape: EBSOptions, location_name: 'EBSOptions', traits: {"smithy.api#documentation" => "<p>The type and size of the EBS volume to attach to instances in the domain.</p>"}))
    UpdateDomainConfigRequest.add_member(:snapshot_options, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotOptions, location_name: 'SnapshotOptions', traits: {"smithy.api#documentation" => "<p>Option to set the time, in UTC format, for the daily automated snapshot. Default value is <code>0</code> hours.\n  </p>"}))
    UpdateDomainConfigRequest.add_member(:vpc_options, Smithy::Schema::Shapes::ShapeRef.new(shape: VPCOptions, location_name: 'VPCOptions', traits: {"smithy.api#documentation" => "<p>Options to specify the subnets and security groups for a VPC endpoint. For more information,\n   see <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html\">Launching\n    your Amazon OpenSearch Service domains using a VPC</a>.</p>"}))
    UpdateDomainConfigRequest.add_member(:cognito_options, Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoOptions, location_name: 'CognitoOptions', traits: {"smithy.api#documentation" => "<p>Key-value pairs to configure Amazon Cognito authentication for OpenSearch Dashboards.</p>"}))
    UpdateDomainConfigRequest.add_member(:advanced_options, Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: 'AdvancedOptions', traits: {"smithy.api#documentation" => "<p>Key-value pairs to specify advanced configuration options. The following key-value pairs are\n   supported:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>\"rest.action.multi.allow_explicit_index\": \"true\" | \"false\"</code> - Note the use of\n     a string rather than a boolean. Specifies whether explicit references to indexes are allowed\n     inside the body of HTTP requests. If you want to configure access policies for domain\n     sub-resources, such as specific indexes and domain APIs, you must disable this property.\n     Default is true.</p>\n            </li>\n            <li>\n               <p>\n                  <code>\"indices.fielddata.cache.size\": \"80\" </code> - Note the use of a string rather than\n     a boolean. Specifies the percentage of heap space allocated to field data. Default is\n     unbounded.</p>\n            </li>\n            <li>\n               <p>\n                  <code>\"indices.query.bool.max_clause_count\": \"1024\"</code> - Note the use of a string\n     rather than a boolean. Specifies the maximum number of clauses allowed in a Lucene boolean\n     query. Default is 1,024. Queries with more than the permitted number of clauses result in a\n     <code>TooManyClauses</code> error.</p>\n            </li>\n         </ul>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options\">Advanced cluster parameters</a>.</p>"}))
    UpdateDomainConfigRequest.add_member(:access_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'AccessPolicies', traits: {"smithy.api#documentation" => "<p>Identity and Access Management (IAM) access policy as a JSON-formatted string.</p>"}))
    UpdateDomainConfigRequest.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddressType, location_name: 'IPAddressType', traits: {"smithy.api#documentation" => "<p>Specify either dual stack or IPv4 as your IP address type. Dual stack allows you to share domain resources across\n   IPv4 and IPv6 address types, and is the recommended option. \n   If your IP address type is currently set to dual stack, you can't change it.\n  </p>"}))
    UpdateDomainConfigRequest.add_member(:log_publishing_options, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: 'LogPublishingOptions', traits: {"smithy.api#documentation" => "<p>Options to publish OpenSearch logs to Amazon CloudWatch Logs.</p>"}))
    UpdateDomainConfigRequest.add_member(:encryption_at_rest_options, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, location_name: 'EncryptionAtRestOptions', traits: {"smithy.api#documentation" => "<p>Encryption at rest options for the domain.</p>"}))
    UpdateDomainConfigRequest.add_member(:domain_endpoint_options, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainEndpointOptions, location_name: 'DomainEndpointOptions', traits: {"smithy.api#documentation" => "<p>Additional options for the domain endpoint, such as whether to require HTTPS for all\n   traffic.</p>"}))
    UpdateDomainConfigRequest.add_member(:node_to_node_encryption_options, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeToNodeEncryptionOptions, location_name: 'NodeToNodeEncryptionOptions', traits: {"smithy.api#documentation" => "<p>Node-to-node encryption options for the domain.</p>"}))
    UpdateDomainConfigRequest.add_member(:advanced_security_options, Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedSecurityOptionsInput, location_name: 'AdvancedSecurityOptions', traits: {"smithy.api#documentation" => "<p>Options for fine-grained access control.</p>"}))
    UpdateDomainConfigRequest.add_member(:identity_center_options, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterOptionsInput, location_name: 'IdentityCenterOptions'))
    UpdateDomainConfigRequest.add_member(:auto_tune_options, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneOptions, location_name: 'AutoTuneOptions', traits: {"smithy.api#documentation" => "<p>Options for Auto-Tune.</p>"}))
    UpdateDomainConfigRequest.add_member(:dry_run, Smithy::Schema::Shapes::ShapeRef.new(shape: DryRun, location_name: 'DryRun', traits: {"smithy.api#documentation" => "<p>This flag, when set to True, specifies whether the <code>UpdateDomain</code> request should\n   return the results of a dry run analysis without actually applying the change. A dry run\n   determines what type of deployment the update will cause.</p>"}))
    UpdateDomainConfigRequest.add_member(:dry_run_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunMode, location_name: 'DryRunMode', traits: {"smithy.api#documentation" => "<p>The type of dry run to perform.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Basic</code> only returns the type of deployment (blue/green or dynamic) that the update\n     will cause.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Verbose</code> runs an additional check to validate the changes you're making. For\n     more information, see <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-configuration-changes#validation-check\">Validating a domain update</a>.</p>\n            </li>\n         </ul>"}))
    UpdateDomainConfigRequest.add_member(:off_peak_window_options, Smithy::Schema::Shapes::ShapeRef.new(shape: OffPeakWindowOptions, location_name: 'OffPeakWindowOptions', traits: {"smithy.api#documentation" => "<p>Off-peak window options for the domain.</p>"}))
    UpdateDomainConfigRequest.add_member(:software_update_options, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareUpdateOptions, location_name: 'SoftwareUpdateOptions', traits: {"smithy.api#documentation" => "<p>Service software update options for the domain.</p>"}))
    UpdateDomainConfigRequest.add_member(:aiml_options, Smithy::Schema::Shapes::ShapeRef.new(shape: AIMLOptionsInput, location_name: 'AIMLOptions', traits: {"smithy.api#documentation" => "<p>Options for all machine learning features for the specified domain.</p>"}))
    UpdateDomainConfigRequest.type = Types::UpdateDomainConfigRequest
    UpdateDomainConfigResponse.add_member(:domain_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainConfig, location_name: 'DomainConfig', traits: {"smithy.api#documentation" => "<p>The status of the updated domain.</p>", "smithy.api#required" => {}}))
    UpdateDomainConfigResponse.add_member(:dry_run_results, Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunResults, location_name: 'DryRunResults', traits: {"smithy.api#documentation" => "<p>Results of the dry run performed in the update domain request.</p>"}))
    UpdateDomainConfigResponse.add_member(:dry_run_progress_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunProgressStatus, location_name: 'DryRunProgressStatus', traits: {"smithy.api#documentation" => "<p>The status of the dry run being performed on the domain, if any.</p>"}))
    UpdateDomainConfigResponse.type = Types::UpdateDomainConfigResponse
    UpdatePackageRequest.add_member(:package_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: 'PackageID', traits: {"smithy.api#documentation" => "<p>The unique identifier for the package.</p>", "smithy.api#required" => {}}))
    UpdatePackageRequest.add_member(:package_source, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageSource, location_name: 'PackageSource', traits: {"smithy.api#documentation" => "<p>Amazon S3 bucket and key for the package.</p>", "smithy.api#required" => {}}))
    UpdatePackageRequest.add_member(:package_description, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDescription, location_name: 'PackageDescription', traits: {"smithy.api#documentation" => "<p>A new description of the package.</p>"}))
    UpdatePackageRequest.add_member(:commit_message, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitMessage, location_name: 'CommitMessage', traits: {"smithy.api#documentation" => "<p>Commit message for the updated file, which is shown as part of\n    <code>GetPackageVersionHistoryResponse</code>.</p>"}))
    UpdatePackageRequest.add_member(:package_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageConfiguration, location_name: 'PackageConfiguration', traits: {"smithy.api#documentation" => "<p>The updated configuration details for a package.</p>"}))
    UpdatePackageRequest.add_member(:package_encryption_options, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageEncryptionOptions, location_name: 'PackageEncryptionOptions', traits: {"smithy.api#documentation" => "<p>Encryption options for a package.</p>"}))
    UpdatePackageRequest.type = Types::UpdatePackageRequest
    UpdatePackageResponse.add_member(:package_details, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDetails, location_name: 'PackageDetails', traits: {"smithy.api#documentation" => "<p>Information about a package.</p>"}))
    UpdatePackageResponse.type = Types::UpdatePackageResponse
    UpdatePackageScopeRequest.add_member(:package_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: 'PackageID', traits: {"smithy.api#documentation" => "<p>ID of the package whose scope is being updated.</p>", "smithy.api#required" => {}}))
    UpdatePackageScopeRequest.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageScopeOperationEnum, location_name: 'Operation', traits: {"smithy.api#documentation" => "<p> The operation to perform on the package scope (e.g., add/remove/override users).</p>", "smithy.api#required" => {}}))
    UpdatePackageScopeRequest.add_member(:package_user_list, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageUserList, location_name: 'PackageUserList', traits: {"smithy.api#documentation" => "<p> List of users to be added or removed from the package scope.</p>", "smithy.api#required" => {}}))
    UpdatePackageScopeRequest.type = Types::UpdatePackageScopeRequest
    UpdatePackageScopeResponse.add_member(:package_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: 'PackageID', traits: {"smithy.api#documentation" => "<p> ID of the package whose scope was updated.</p>"}))
    UpdatePackageScopeResponse.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageScopeOperationEnum, location_name: 'Operation', traits: {"smithy.api#documentation" => "<p>The operation that was performed on the package scope.</p>"}))
    UpdatePackageScopeResponse.add_member(:package_user_list, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageUserList, location_name: 'PackageUserList', traits: {"smithy.api#documentation" => "<p> List of users who have access to the package after the scope update.</p>"}))
    UpdatePackageScopeResponse.type = Types::UpdatePackageScopeResponse
    UpdateScheduledActionRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain to reschedule an action for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateScheduledActionRequest.add_member(:action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActionID', traits: {"smithy.api#documentation" => "<p>The unique identifier of the action to reschedule. To retrieve this ID, send a <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/APIReference/API_ListScheduledActions.html\">ListScheduledActions</a> request.</p>", "smithy.api#required" => {}}))
    UpdateScheduledActionRequest.add_member(:action_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionType, location_name: 'ActionType', traits: {"smithy.api#documentation" => "<p>The type of action to reschedule. Can be one of <code>SERVICE_SOFTWARE_UPDATE</code>,\n   <code>JVM_HEAP_SIZE_TUNING</code>, or <code>JVM_YOUNG_GEN_TUNING</code>. To retrieve this value, send a <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/APIReference/API_ListScheduledActions.html\">ListScheduledActions</a> request.</p>", "smithy.api#required" => {}}))
    UpdateScheduledActionRequest.add_member(:schedule_at, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleAt, location_name: 'ScheduleAt', traits: {"smithy.api#documentation" => "<p>When to schedule the action.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>NOW</code> - Immediately schedules the update to happen in the current hour if\n     there's capacity available.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TIMESTAMP</code> - Lets you specify a custom date and time to apply the update. If\n     you specify this value, you must also provide a value for <code>DesiredStartTime</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>OFF_PEAK_WINDOW</code> - Marks the action to be picked up during an upcoming\n     off-peak window. There's no guarantee that the change will be implemented during the next\n     immediate window. Depending on capacity, it might happen in subsequent days.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    UpdateScheduledActionRequest.add_member(:desired_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'DesiredStartTime', traits: {"smithy.api#documentation" => "<p>The time to implement the change, in Coordinated Universal Time (UTC). Only specify this\n   parameter if you set <code>ScheduleAt</code> to <code>TIMESTAMP</code>.</p>"}))
    UpdateScheduledActionRequest.type = Types::UpdateScheduledActionRequest
    UpdateScheduledActionResponse.add_member(:scheduled_action, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledAction, location_name: 'ScheduledAction', traits: {"smithy.api#documentation" => "<p>Information about the rescheduled action.</p>"}))
    UpdateScheduledActionResponse.type = Types::UpdateScheduledActionResponse
    UpdateVpcEndpointRequest.add_member(:vpc_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'VpcEndpointId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the endpoint.</p>", "smithy.api#required" => {}}))
    UpdateVpcEndpointRequest.add_member(:vpc_options, Smithy::Schema::Shapes::ShapeRef.new(shape: VPCOptions, location_name: 'VpcOptions', traits: {"smithy.api#documentation" => "<p>The security groups and/or subnets to add, remove, or modify.</p>", "smithy.api#required" => {}}))
    UpdateVpcEndpointRequest.type = Types::UpdateVpcEndpointRequest
    UpdateVpcEndpointResponse.add_member(:vpc_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpoint, location_name: 'VpcEndpoint', traits: {"smithy.api#documentation" => "<p>The endpoint to be updated.</p>", "smithy.api#required" => {}}))
    UpdateVpcEndpointResponse.type = Types::UpdateVpcEndpointResponse
    UpgradeDomainRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>Name of the OpenSearch Service domain that you want to upgrade.</p>", "smithy.api#required" => {}}))
    UpgradeDomainRequest.add_member(:target_version, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionString, location_name: 'TargetVersion', traits: {"smithy.api#documentation" => "<p>OpenSearch or Elasticsearch version to which you want to upgrade, in the format\n   Opensearch_X.Y or Elasticsearch_X.Y.</p>", "smithy.api#required" => {}}))
    UpgradeDomainRequest.add_member(:perform_check_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'PerformCheckOnly', traits: {"smithy.api#documentation" => "<p>When true, indicates that an upgrade eligibility check needs to be performed. Does not\n   actually perform the upgrade.</p>"}))
    UpgradeDomainRequest.add_member(:advanced_options, Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: 'AdvancedOptions', traits: {"smithy.api#documentation" => "<p>Only supports the <code>override_main_response_version</code> parameter and not other\n   advanced options. You can only include this option when upgrading to an OpenSearch version.\n   Specifies whether the domain reports its version as 7.10 so that it continues to work with\n   Elasticsearch OSS clients and plugins.</p>"}))
    UpgradeDomainRequest.type = Types::UpgradeDomainRequest
    UpgradeDomainResponse.add_member(:upgrade_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UpgradeId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the domain upgrade.</p>"}))
    UpgradeDomainResponse.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain that was upgraded.</p>"}))
    UpgradeDomainResponse.add_member(:target_version, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionString, location_name: 'TargetVersion', traits: {"smithy.api#documentation" => "<p>OpenSearch or Elasticsearch version that the domain was upgraded to.</p>"}))
    UpgradeDomainResponse.add_member(:perform_check_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'PerformCheckOnly', traits: {"smithy.api#documentation" => "<p>When true, indicates that an upgrade eligibility check was performed.</p>"}))
    UpgradeDomainResponse.add_member(:advanced_options, Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: 'AdvancedOptions', traits: {"smithy.api#documentation" => "<p>The advanced options configuration for the domain.</p>"}))
    UpgradeDomainResponse.add_member(:change_progress_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressDetails, location_name: 'ChangeProgressDetails', traits: {"smithy.api#documentation" => "<p>Container for information about a configuration change happening on a domain.</p>"}))
    UpgradeDomainResponse.type = Types::UpgradeDomainResponse
    UpgradeHistory.add_member(:upgrade_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeName, location_name: 'UpgradeName', traits: {"smithy.api#documentation" => "<p>A string that describes the upgrade.</p>"}))
    UpgradeHistory.add_member(:start_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: StartTimestamp, location_name: 'StartTimestamp', traits: {"smithy.api#documentation" => "<p>UTC timestamp at which the upgrade API call was made, in the format\n    <code>yyyy-MM-ddTHH:mm:ssZ</code>.</p>"}))
    UpgradeHistory.add_member(:upgrade_status, Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeStatus, location_name: 'UpgradeStatus', traits: {"smithy.api#documentation" => "<p> The current status of the upgrade. The status can take one of the following values: </p>\n         <ul>\n            <li>\n               <p>In Progress</p>\n            </li>\n            <li>\n               <p>Succeeded</p>\n            </li>\n            <li>\n               <p>Succeeded with Issues</p>\n            </li>\n            <li>\n               <p>Failed</p>\n            </li>\n         </ul>"}))
    UpgradeHistory.add_member(:steps_list, Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeStepsList, location_name: 'StepsList', traits: {"smithy.api#documentation" => "<p>A list of each step performed as part of a specific upgrade or upgrade eligibility check.</p>"}))
    UpgradeHistory.type = Types::UpgradeHistory
    UpgradeHistoryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeHistory)
    UpgradeStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    UpgradeStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    UpgradeStatus.add_member(:succeeded_with_issues, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED_WITH_ISSUES', traits: {"smithy.api#enumValue" => "SUCCEEDED_WITH_ISSUES"}))
    UpgradeStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    UpgradeStep.add_member(:pre_upgrade_check, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRE_UPGRADE_CHECK', traits: {"smithy.api#enumValue" => "PRE_UPGRADE_CHECK"}))
    UpgradeStep.add_member(:snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNAPSHOT', traits: {"smithy.api#enumValue" => "SNAPSHOT"}))
    UpgradeStep.add_member(:upgrade, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPGRADE', traits: {"smithy.api#enumValue" => "UPGRADE"}))
    UpgradeStepItem.add_member(:upgrade_step, Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeStep, location_name: 'UpgradeStep', traits: {"smithy.api#documentation" => "<p> One of three steps that an upgrade or upgrade eligibility check goes through: </p>\n         <ul>\n            <li>\n               <p>PreUpgradeCheck</p>\n            </li>\n            <li>\n               <p>Snapshot</p>\n            </li>\n            <li>\n               <p>Upgrade</p>\n            </li>\n         </ul>"}))
    UpgradeStepItem.add_member(:upgrade_step_status, Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeStatus, location_name: 'UpgradeStepStatus', traits: {"smithy.api#documentation" => "<p> The current status of the upgrade. The status can take one of the following values: </p>\n         <ul>\n            <li>\n               <p>In Progress</p>\n            </li>\n            <li>\n               <p>Succeeded</p>\n            </li>\n            <li>\n               <p>Succeeded with Issues</p>\n            </li>\n            <li>\n               <p>Failed</p>\n            </li>\n         </ul>"}))
    UpgradeStepItem.add_member(:issues, Smithy::Schema::Shapes::ShapeRef.new(shape: Issues, location_name: 'Issues', traits: {"smithy.api#documentation" => "<p>A list of strings containing detailed information about the errors encountered in a particular step.</p>"}))
    UpgradeStepItem.add_member(:progress_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'ProgressPercent', traits: {"smithy.api#documentation" => "<p>The floating point value representing the progress percentage of a particular step.</p>"}))
    UpgradeStepItem.type = Types::UpgradeStepItem
    UpgradeStepsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeStepItem)
    VPCDerivedInfo.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VPCId', traits: {"smithy.api#documentation" => "<p>The ID for your VPC. Amazon VPC generates this value when you create a VPC.</p>"}))
    VPCDerivedInfo.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'SubnetIds', traits: {"smithy.api#documentation" => "<p>A list of subnet IDs associated with the VPC endpoints for the domain.</p>"}))
    VPCDerivedInfo.add_member(:availability_zones, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'AvailabilityZones', traits: {"smithy.api#documentation" => "<p>The list of Availability Zones associated with the VPC subnets.</p>"}))
    VPCDerivedInfo.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'SecurityGroupIds', traits: {"smithy.api#documentation" => "<p>The list of security group IDs associated with the VPC endpoints for the domain.</p>"}))
    VPCDerivedInfo.type = Types::VPCDerivedInfo
    VPCDerivedInfoStatus.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: VPCDerivedInfo, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>The VPC options for the specified domain.</p>", "smithy.api#required" => {}}))
    VPCDerivedInfoStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the VPC options for the specified domain.</p>", "smithy.api#required" => {}}))
    VPCDerivedInfoStatus.type = Types::VPCDerivedInfoStatus
    VPCOptions.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'SubnetIds', traits: {"smithy.api#documentation" => "<p>A list of subnet IDs associated with the VPC endpoints for the domain. If your domain uses\n   multiple Availability Zones, you need to provide two subnet IDs, one per zone. Otherwise, provide\n   only one.</p>"}))
    VPCOptions.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'SecurityGroupIds', traits: {"smithy.api#documentation" => "<p>The list of security group IDs associated with the VPC endpoints for the domain. If you do\n   not provide a security group ID, OpenSearch Service uses the default security group for the VPC.</p>"}))
    VPCOptions.type = Types::VPCOptions
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A description of the error.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationFailure.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code', traits: {"smithy.api#documentation" => "<p>The error code of the failure.</p>"}))
    ValidationFailure.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A message corresponding to the failure.</p>"}))
    ValidationFailure.type = Types::ValidationFailure
    ValidationFailures.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationFailure)
    ValueStringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    VersionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VersionString)
    VersionStatus.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionString, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>The OpenSearch or Elasticsearch version for the specified domain.</p>", "smithy.api#required" => {}}))
    VersionStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the version options for the specified domain.</p>", "smithy.api#required" => {}}))
    VersionStatus.type = Types::VersionStatus
    VolumeType.add_member(:standard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'standard', traits: {"smithy.api#enumValue" => "standard"}))
    VolumeType.add_member(:gp2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'gp2', traits: {"smithy.api#enumValue" => "gp2"}))
    VolumeType.add_member(:io1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'io1', traits: {"smithy.api#enumValue" => "io1"}))
    VolumeType.add_member(:gp3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'gp3', traits: {"smithy.api#enumValue" => "gp3"}))
    VpcEndpoint.add_member(:vpc_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'VpcEndpointId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the endpoint.</p>"}))
    VpcEndpoint.add_member(:vpc_endpoint_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccount, location_name: 'VpcEndpointOwner', traits: {"smithy.api#documentation" => "<p>The creator of the endpoint.</p>"}))
    VpcEndpoint.add_member(:domain_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainArn, location_name: 'DomainArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the domain associated with the endpoint.</p>"}))
    VpcEndpoint.add_member(:vpc_options, Smithy::Schema::Shapes::ShapeRef.new(shape: VPCDerivedInfo, location_name: 'VpcOptions', traits: {"smithy.api#documentation" => "<p>Options to specify the subnets and security groups for an Amazon OpenSearch Service VPC\n   endpoint.</p>"}))
    VpcEndpoint.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the endpoint.</p>"}))
    VpcEndpoint.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'Endpoint', traits: {"smithy.api#documentation" => "<p>The connection endpoint ID for connecting to the domain.</p>"}))
    VpcEndpoint.type = Types::VpcEndpoint
    VpcEndpointError.add_member(:vpc_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'VpcEndpointId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the endpoint.</p>"}))
    VpcEndpointError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The code associated with the error.</p>"}))
    VpcEndpointError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>A message describing the error.</p>"}))
    VpcEndpointError.type = Types::VpcEndpointError
    VpcEndpointErrorCode.add_member(:endpoint_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENDPOINT_NOT_FOUND', traits: {"smithy.api#enumValue" => "ENDPOINT_NOT_FOUND"}))
    VpcEndpointErrorCode.add_member(:server_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVER_ERROR', traits: {"smithy.api#enumValue" => "SERVER_ERROR"}))
    VpcEndpointErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointError)
    VpcEndpointIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId)
    VpcEndpointStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    VpcEndpointStatus.add_member(:create_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    VpcEndpointStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    VpcEndpointStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    VpcEndpointStatus.add_member(:update_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    VpcEndpointStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    VpcEndpointStatus.add_member(:delete_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    VpcEndpointSummary.add_member(:vpc_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'VpcEndpointId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the endpoint.</p>"}))
    VpcEndpointSummary.add_member(:vpc_endpoint_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcEndpointOwner', traits: {"smithy.api#documentation" => "<p>The creator of the endpoint.</p>"}))
    VpcEndpointSummary.add_member(:domain_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainArn, location_name: 'DomainArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the domain associated with the endpoint.</p>"}))
    VpcEndpointSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the endpoint.</p>"}))
    VpcEndpointSummary.type = Types::VpcEndpointSummary
    VpcEndpointSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointSummary)
    VpcEndpoints.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpoint)
    WindowStartTime.add_member(:hours, Smithy::Schema::Shapes::ShapeRef.new(shape: StartTimeHours, location_name: 'Hours', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The start hour of the window in Coordinated Universal Time (UTC), using 24-hour time. For example, <code>17</code> refers to\n   5:00 P.M. UTC.</p>", "smithy.api#required" => {}}))
    WindowStartTime.add_member(:minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: StartTimeMinutes, location_name: 'Minutes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The start minute of the window, in UTC.</p>", "smithy.api#required" => {}}))
    WindowStartTime.type = Types::WindowStartTime
    ZoneAwarenessConfig.add_member(:availability_zone_count, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: 'AvailabilityZoneCount', traits: {"smithy.api#documentation" => "<p>If you enabled multiple Availability Zones, this value is the number of zones that you want\n   the domain to use. Valid values are <code>2</code> and <code>3</code>. If your domain is\n   provisioned within a VPC, this value be equal to number of subnets.</p>"}))
    ZoneAwarenessConfig.type = Types::ZoneAwarenessConfig
    ZoneStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "Active"}))
    ZoneStatus.add_member(:stand_by, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'StandBy', traits: {"smithy.api#enumValue" => "StandBy"}))
    ZoneStatus.add_member(:not_available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotAvailable', traits: {"smithy.api#enumValue" => "NotAvailable"}))

    AmazonOpenSearchService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.opensearch#AmazonOpenSearchService"
      service.name = "AmazonOpenSearchService"
      service.version = "2021-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "OpenSearch", "arnNamespace" => "es", "cloudFormationName" => "OpenSearch", "cloudTrailEventSource" => "opensearch.amazonaws.com", "endpointPrefix" => "es"}, "aws.auth#sigv4" => {"name" => "es"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon OpenSearch Service", "smithy.api#xmlNamespace" => {"uri" => "http://es.amazonaws.com/doc/2021-01-01/"}}
      service.add_operation(:accept_inbound_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#AcceptInboundConnection"
        operation.name = "AcceptInboundConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptInboundConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptInboundConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2021-01-01/opensearch/cc/inboundConnection/{ConnectionId}/accept", "code" => 200}}
      end)
      service.add_operation(:add_data_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#AddDataSource"
        operation.name = "AddDataSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddDataSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddDataSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/dataSource", "code" => 200}}
      end)
      service.add_operation(:add_direct_query_data_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#AddDirectQueryDataSource"
        operation.name = "AddDirectQueryDataSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddDirectQueryDataSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddDirectQueryDataSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/directQueryDataSource", "code" => 200}}
      end)
      service.add_operation(:add_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#AddTags"
        operation.name = "AddTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/tags", "code" => 200}}
      end)
      service.add_operation(:associate_package, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#AssociatePackage"
        operation.name = "AssociatePackage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatePackageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatePackageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/packages/associate/{PackageID}/{DomainName}", "code" => 200}}
      end)
      service.add_operation(:associate_packages, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#AssociatePackages"
        operation.name = "AssociatePackages"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatePackagesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatePackagesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/packages/associateMultiple", "code" => 200}}
      end)
      service.add_operation(:authorize_vpc_endpoint_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#AuthorizeVpcEndpointAccess"
        operation.name = "AuthorizeVpcEndpointAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizeVpcEndpointAccessRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizeVpcEndpointAccessResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/authorizeVpcEndpointAccess", "code" => 200}}
      end)
      service.add_operation(:cancel_domain_config_change, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#CancelDomainConfigChange"
        operation.name = "CancelDomainConfigChange"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelDomainConfigChangeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelDomainConfigChangeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/config/cancel", "code" => 200}}
      end)
      service.add_operation(:cancel_service_software_update, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#CancelServiceSoftwareUpdate"
        operation.name = "CancelServiceSoftwareUpdate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelServiceSoftwareUpdateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelServiceSoftwareUpdateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/serviceSoftwareUpdate/cancel", "code" => 200}}
      end)
      service.add_operation(:create_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/application", "code" => 200}}
      end)
      service.add_operation(:create_domain, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#CreateDomain"
        operation.name = "CreateDomain"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDomainRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDomainResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/domain", "code" => 200}}
      end)
      service.add_operation(:create_outbound_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#CreateOutboundConnection"
        operation.name = "CreateOutboundConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOutboundConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOutboundConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/cc/outboundConnection", "code" => 200}}
      end)
      service.add_operation(:create_package, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#CreatePackage"
        operation.name = "CreatePackage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePackageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePackageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/packages", "code" => 200}}
      end)
      service.add_operation(:create_vpc_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#CreateVpcEndpoint"
        operation.name = "CreateVpcEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVpcEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVpcEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/vpcEndpoints", "code" => 200}}
      end)
      service.add_operation(:delete_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2021-01-01/opensearch/application/{id}", "code" => 200}}
      end)
      service.add_operation(:delete_data_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DeleteDataSource"
        operation.name = "DeleteDataSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/dataSource/{Name}", "code" => 200}}
      end)
      service.add_operation(:delete_direct_query_data_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DeleteDirectQueryDataSource"
        operation.name = "DeleteDirectQueryDataSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDirectQueryDataSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2021-01-01/opensearch/directQueryDataSource/{DataSourceName}", "code" => 200}}
      end)
      service.add_operation(:delete_domain, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DeleteDomain"
        operation.name = "DeleteDomain"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDomainRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDomainResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2021-01-01/opensearch/domain/{DomainName}", "code" => 200}}
      end)
      service.add_operation(:delete_inbound_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DeleteInboundConnection"
        operation.name = "DeleteInboundConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInboundConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInboundConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2021-01-01/opensearch/cc/inboundConnection/{ConnectionId}", "code" => 200}}
      end)
      service.add_operation(:delete_outbound_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DeleteOutboundConnection"
        operation.name = "DeleteOutboundConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOutboundConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOutboundConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2021-01-01/opensearch/cc/outboundConnection/{ConnectionId}", "code" => 200}}
      end)
      service.add_operation(:delete_package, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DeletePackage"
        operation.name = "DeletePackage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePackageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePackageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2021-01-01/packages/{PackageID}", "code" => 200}}
      end)
      service.add_operation(:delete_vpc_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DeleteVpcEndpoint"
        operation.name = "DeleteVpcEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVpcEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVpcEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2021-01-01/opensearch/vpcEndpoints/{VpcEndpointId}", "code" => 200}}
      end)
      service.add_operation(:describe_domain, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribeDomain"
        operation.name = "DescribeDomain"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/domain/{DomainName}", "code" => 200}}
      end)
      service.add_operation(:describe_domain_auto_tunes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribeDomainAutoTunes"
        operation.name = "DescribeDomainAutoTunes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainAutoTunesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainAutoTunesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/autoTunes", "code" => 200}}
        operation[:paginator] = Paginators::DescribeDomainAutoTunes.new
      end)
      service.add_operation(:describe_domain_change_progress, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribeDomainChangeProgress"
        operation.name = "DescribeDomainChangeProgress"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainChangeProgressRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainChangeProgressResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/progress", "code" => 200}}
      end)
      service.add_operation(:describe_domain_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribeDomainConfig"
        operation.name = "DescribeDomainConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainConfigResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/config", "code" => 200}}
      end)
      service.add_operation(:describe_domain_health, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribeDomainHealth"
        operation.name = "DescribeDomainHealth"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainHealthRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainHealthResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/health", "code" => 200}}
      end)
      service.add_operation(:describe_domain_nodes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribeDomainNodes"
        operation.name = "DescribeDomainNodes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainNodesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainNodesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/nodes", "code" => 200}}
      end)
      service.add_operation(:describe_domains, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribeDomains"
        operation.name = "DescribeDomains"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/domain-info", "code" => 200}}
      end)
      service.add_operation(:describe_dry_run_progress, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribeDryRunProgress"
        operation.name = "DescribeDryRunProgress"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDryRunProgressRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDryRunProgressResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/dryRun", "code" => 200}}
      end)
      service.add_operation(:describe_inbound_connections, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribeInboundConnections"
        operation.name = "DescribeInboundConnections"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInboundConnectionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInboundConnectionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/cc/inboundConnection/search", "code" => 200}}
        operation[:paginator] = Paginators::DescribeInboundConnections.new
      end)
      service.add_operation(:describe_instance_type_limits, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribeInstanceTypeLimits"
        operation.name = "DescribeInstanceTypeLimits"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInstanceTypeLimitsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInstanceTypeLimitsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/instanceTypeLimits/{EngineVersion}/{InstanceType}", "code" => 200}}
      end)
      service.add_operation(:describe_outbound_connections, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribeOutboundConnections"
        operation.name = "DescribeOutboundConnections"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOutboundConnectionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOutboundConnectionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/cc/outboundConnection/search", "code" => 200}}
        operation[:paginator] = Paginators::DescribeOutboundConnections.new
      end)
      service.add_operation(:describe_packages, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribePackages"
        operation.name = "DescribePackages"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackagesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackagesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/packages/describe", "code" => 200}}
        operation[:paginator] = Paginators::DescribePackages.new
      end)
      service.add_operation(:describe_reserved_instance_offerings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribeReservedInstanceOfferings"
        operation.name = "DescribeReservedInstanceOfferings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReservedInstanceOfferingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReservedInstanceOfferingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/reservedInstanceOfferings", "code" => 200}}
        operation[:paginator] = Paginators::DescribeReservedInstanceOfferings.new
      end)
      service.add_operation(:describe_reserved_instances, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribeReservedInstances"
        operation.name = "DescribeReservedInstances"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReservedInstancesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReservedInstancesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/reservedInstances", "code" => 200}}
        operation[:paginator] = Paginators::DescribeReservedInstances.new
      end)
      service.add_operation(:describe_vpc_endpoints, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribeVpcEndpoints"
        operation.name = "DescribeVpcEndpoints"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVpcEndpointsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVpcEndpointsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/vpcEndpoints/describe", "code" => 200}}
      end)
      service.add_operation(:dissociate_package, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DissociatePackage"
        operation.name = "DissociatePackage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DissociatePackageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DissociatePackageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/packages/dissociate/{PackageID}/{DomainName}", "code" => 200}}
      end)
      service.add_operation(:dissociate_packages, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DissociatePackages"
        operation.name = "DissociatePackages"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DissociatePackagesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DissociatePackagesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/packages/dissociateMultiple", "code" => 200}}
      end)
      service.add_operation(:get_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#GetApplication"
        operation.name = "GetApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/application/{id}", "code" => 200}}
      end)
      service.add_operation(:get_compatible_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#GetCompatibleVersions"
        operation.name = "GetCompatibleVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCompatibleVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCompatibleVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/compatibleVersions", "code" => 200}}
      end)
      service.add_operation(:get_data_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#GetDataSource"
        operation.name = "GetDataSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/dataSource/{Name}", "code" => 200}}
      end)
      service.add_operation(:get_direct_query_data_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#GetDirectQueryDataSource"
        operation.name = "GetDirectQueryDataSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDirectQueryDataSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDirectQueryDataSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/directQueryDataSource/{DataSourceName}", "code" => 200}}
      end)
      service.add_operation(:get_domain_maintenance_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#GetDomainMaintenanceStatus"
        operation.name = "GetDomainMaintenanceStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainMaintenanceStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainMaintenanceStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/domainMaintenance", "code" => 200}}
      end)
      service.add_operation(:get_package_version_history, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#GetPackageVersionHistory"
        operation.name = "GetPackageVersionHistory"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPackageVersionHistoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPackageVersionHistoryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/packages/{PackageID}/history", "code" => 200}}
        operation[:paginator] = Paginators::GetPackageVersionHistory.new
      end)
      service.add_operation(:get_upgrade_history, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#GetUpgradeHistory"
        operation.name = "GetUpgradeHistory"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUpgradeHistoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUpgradeHistoryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/upgradeDomain/{DomainName}/history", "code" => 200}}
        operation[:paginator] = Paginators::GetUpgradeHistory.new
      end)
      service.add_operation(:get_upgrade_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#GetUpgradeStatus"
        operation.name = "GetUpgradeStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUpgradeStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUpgradeStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/upgradeDomain/{DomainName}/status", "code" => 200}}
      end)
      service.add_operation(:list_applications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#ListApplications"
        operation.name = "ListApplications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/list-applications", "code" => 200}}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_data_sources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#ListDataSources"
        operation.name = "ListDataSources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataSourcesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataSourcesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/dataSource", "code" => 200}}
      end)
      service.add_operation(:list_direct_query_data_sources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#ListDirectQueryDataSources"
        operation.name = "ListDirectQueryDataSources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDirectQueryDataSourcesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDirectQueryDataSourcesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/directQueryDataSource", "code" => 200}}
      end)
      service.add_operation(:list_domain_maintenances, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#ListDomainMaintenances"
        operation.name = "ListDomainMaintenances"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainMaintenancesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainMaintenancesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/domainMaintenances", "code" => 200}}
        operation[:paginator] = Paginators::ListDomainMaintenances.new
      end)
      service.add_operation(:list_domain_names, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#ListDomainNames"
        operation.name = "ListDomainNames"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainNamesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainNamesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/domain", "code" => 200}}
      end)
      service.add_operation(:list_domains_for_package, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#ListDomainsForPackage"
        operation.name = "ListDomainsForPackage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainsForPackageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainsForPackageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/packages/{PackageID}/domains", "code" => 200}}
        operation[:paginator] = Paginators::ListDomainsForPackage.new
      end)
      service.add_operation(:list_instance_type_details, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#ListInstanceTypeDetails"
        operation.name = "ListInstanceTypeDetails"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInstanceTypeDetailsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInstanceTypeDetailsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/instanceTypeDetails/{EngineVersion}", "code" => 200}}
        operation[:paginator] = Paginators::ListInstanceTypeDetails.new
      end)
      service.add_operation(:list_packages_for_domain, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#ListPackagesForDomain"
        operation.name = "ListPackagesForDomain"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPackagesForDomainRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPackagesForDomainResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/domain/{DomainName}/packages", "code" => 200}}
        operation[:paginator] = Paginators::ListPackagesForDomain.new
      end)
      service.add_operation(:list_scheduled_actions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#ListScheduledActions"
        operation.name = "ListScheduledActions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListScheduledActionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListScheduledActionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/scheduledActions", "code" => 200}}
        operation[:paginator] = Paginators::ListScheduledActions.new
      end)
      service.add_operation(:list_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#ListTags"
        operation.name = "ListTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/tags", "code" => 200}}
      end)
      service.add_operation(:list_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#ListVersions"
        operation.name = "ListVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/versions", "code" => 200}}
        operation[:paginator] = Paginators::ListVersions.new
      end)
      service.add_operation(:list_vpc_endpoint_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#ListVpcEndpointAccess"
        operation.name = "ListVpcEndpointAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcEndpointAccessRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcEndpointAccessResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/listVpcEndpointAccess", "code" => 200}}
      end)
      service.add_operation(:list_vpc_endpoints, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#ListVpcEndpoints"
        operation.name = "ListVpcEndpoints"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcEndpointsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcEndpointsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/vpcEndpoints", "code" => 200}}
      end)
      service.add_operation(:list_vpc_endpoints_for_domain, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#ListVpcEndpointsForDomain"
        operation.name = "ListVpcEndpointsForDomain"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcEndpointsForDomainRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcEndpointsForDomainResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/vpcEndpoints", "code" => 200}}
      end)
      service.add_operation(:purchase_reserved_instance_offering, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#PurchaseReservedInstanceOffering"
        operation.name = "PurchaseReservedInstanceOffering"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseReservedInstanceOfferingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseReservedInstanceOfferingResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/purchaseReservedInstanceOffering", "code" => 200}}
      end)
      service.add_operation(:reject_inbound_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#RejectInboundConnection"
        operation.name = "RejectInboundConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RejectInboundConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RejectInboundConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2021-01-01/opensearch/cc/inboundConnection/{ConnectionId}/reject", "code" => 200}}
      end)
      service.add_operation(:remove_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#RemoveTags"
        operation.name = "RemoveTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/tags-removal", "code" => 200}}
      end)
      service.add_operation(:revoke_vpc_endpoint_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#RevokeVpcEndpointAccess"
        operation.name = "RevokeVpcEndpointAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeVpcEndpointAccessRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeVpcEndpointAccessResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/revokeVpcEndpointAccess", "code" => 200}}
      end)
      service.add_operation(:start_domain_maintenance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#StartDomainMaintenance"
        operation.name = "StartDomainMaintenance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDomainMaintenanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDomainMaintenanceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/domainMaintenance", "code" => 200}}
      end)
      service.add_operation(:start_service_software_update, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#StartServiceSoftwareUpdate"
        operation.name = "StartServiceSoftwareUpdate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartServiceSoftwareUpdateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartServiceSoftwareUpdateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/serviceSoftwareUpdate/start", "code" => 200}}
      end)
      service.add_operation(:update_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2021-01-01/opensearch/application/{id}", "code" => 200}}
      end)
      service.add_operation(:update_data_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#UpdateDataSource"
        operation.name = "UpdateDataSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/dataSource/{Name}", "code" => 200}}
      end)
      service.add_operation(:update_direct_query_data_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#UpdateDirectQueryDataSource"
        operation.name = "UpdateDirectQueryDataSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDirectQueryDataSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDirectQueryDataSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2021-01-01/opensearch/directQueryDataSource/{DataSourceName}", "code" => 200}}
      end)
      service.add_operation(:update_domain_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#UpdateDomainConfig"
        operation.name = "UpdateDomainConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDomainConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDomainConfigResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/config", "code" => 200}}
      end)
      service.add_operation(:update_package, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#UpdatePackage"
        operation.name = "UpdatePackage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePackageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePackageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/packages/update", "code" => 200}}
      end)
      service.add_operation(:update_package_scope, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#UpdatePackageScope"
        operation.name = "UpdatePackageScope"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePackageScopeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePackageScopeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/packages/updateScope", "code" => 200}}
      end)
      service.add_operation(:update_scheduled_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#UpdateScheduledAction"
        operation.name = "UpdateScheduledAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateScheduledActionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateScheduledActionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SlotNotAvailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/scheduledAction/update", "code" => 200}}
      end)
      service.add_operation(:update_vpc_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#UpdateVpcEndpoint"
        operation.name = "UpdateVpcEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVpcEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVpcEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/vpcEndpoints/update", "code" => 200}}
      end)
      service.add_operation(:upgrade_domain, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#UpgradeDomain"
        operation.name = "UpgradeDomain"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeDomainRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeDomainResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/upgradeDomain", "code" => 200}}
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
