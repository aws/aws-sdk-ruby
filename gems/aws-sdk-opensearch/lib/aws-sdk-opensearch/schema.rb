# frozen_string_literal: true

# This is generated code!

module Aws::OpenSearch
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AIMLOptionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AIMLOptionsInput', name: 'AIMLOptionsInput')
    AIMLOptionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AIMLOptionsOutput', name: 'AIMLOptionsOutput')
    AIMLOptionsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AIMLOptionsStatus', name: 'AIMLOptionsStatus')
    ARN = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#ARN', name: 'ARN', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => ".*"})
    AWSAccount = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#AWSAccount', name: 'AWSAccount', traits: {"smithy.api#pattern" => "^[0-9]+$"})
    AWSDomainInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AWSDomainInformation', name: 'AWSDomainInformation')
    AWSServicePrincipal = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#AWSServicePrincipal', name: 'AWSServicePrincipal')
    AcceptInboundConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AcceptInboundConnectionRequest', name: 'AcceptInboundConnectionRequest')
    AcceptInboundConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AcceptInboundConnectionResponse', name: 'AcceptInboundConnectionResponse')
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessPoliciesStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AccessPoliciesStatus', name: 'AccessPoliciesStatus')
    ActionSeverity = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#ActionSeverity', name: 'ActionSeverity')
    ActionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#ActionStatus', name: 'ActionStatus')
    ActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#ActionType', name: 'ActionType')
    AddDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AddDataSourceRequest', name: 'AddDataSourceRequest')
    AddDataSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AddDataSourceResponse', name: 'AddDataSourceResponse')
    AddDirectQueryDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AddDirectQueryDataSourceRequest', name: 'AddDirectQueryDataSourceRequest')
    AddDirectQueryDataSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AddDirectQueryDataSourceResponse', name: 'AddDirectQueryDataSourceResponse')
    AddTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AddTagsRequest', name: 'AddTagsRequest')
    AdditionalLimit = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AdditionalLimit', name: 'AdditionalLimit')
    AdditionalLimitList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#AdditionalLimitList', name: 'AdditionalLimitList')
    AdvancedOptions = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.opensearch#AdvancedOptions', name: 'AdvancedOptions')
    AdvancedOptionsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AdvancedOptionsStatus', name: 'AdvancedOptionsStatus')
    AdvancedSecurityOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AdvancedSecurityOptions', name: 'AdvancedSecurityOptions')
    AdvancedSecurityOptionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AdvancedSecurityOptionsInput', name: 'AdvancedSecurityOptionsInput')
    AdvancedSecurityOptionsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AdvancedSecurityOptionsStatus', name: 'AdvancedSecurityOptionsStatus')
    AppConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AppConfig', name: 'AppConfig')
    AppConfigType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#AppConfigType', name: 'AppConfigType')
    AppConfigValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#AppConfigValue', name: 'AppConfigValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    AppConfigs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#AppConfigs', name: 'AppConfigs', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ApplicationName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#ApplicationName', name: 'ApplicationName', traits: {"smithy.api#length" => {"min" => 3, "max" => 30}, "smithy.api#pattern" => "^[a-z][a-z0-9\\-]+$"})
    ApplicationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#ApplicationStatus', name: 'ApplicationStatus')
    ApplicationStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#ApplicationStatuses', name: 'ApplicationStatuses')
    ApplicationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#ApplicationSummaries', name: 'ApplicationSummaries')
    ApplicationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ApplicationSummary', name: 'ApplicationSummary')
    AssociatePackageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AssociatePackageRequest', name: 'AssociatePackageRequest')
    AssociatePackageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AssociatePackageResponse', name: 'AssociatePackageResponse')
    AssociatePackagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AssociatePackagesRequest', name: 'AssociatePackagesRequest')
    AssociatePackagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AssociatePackagesResponse', name: 'AssociatePackagesResponse')
    AuthorizeVpcEndpointAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AuthorizeVpcEndpointAccessRequest', name: 'AuthorizeVpcEndpointAccessRequest')
    AuthorizeVpcEndpointAccessResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AuthorizeVpcEndpointAccessResponse', name: 'AuthorizeVpcEndpointAccessResponse')
    AuthorizedPrincipal = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AuthorizedPrincipal', name: 'AuthorizedPrincipal')
    AuthorizedPrincipalList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#AuthorizedPrincipalList', name: 'AuthorizedPrincipalList')
    AutoTune = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AutoTune', name: 'AutoTune')
    AutoTuneDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.opensearch#AutoTuneDate', name: 'AutoTuneDate')
    AutoTuneDesiredState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#AutoTuneDesiredState', name: 'AutoTuneDesiredState')
    AutoTuneDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AutoTuneDetails', name: 'AutoTuneDetails')
    AutoTuneList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#AutoTuneList', name: 'AutoTuneList')
    AutoTuneMaintenanceSchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AutoTuneMaintenanceSchedule', name: 'AutoTuneMaintenanceSchedule')
    AutoTuneMaintenanceScheduleList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#AutoTuneMaintenanceScheduleList', name: 'AutoTuneMaintenanceScheduleList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    AutoTuneOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AutoTuneOptions', name: 'AutoTuneOptions')
    AutoTuneOptionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AutoTuneOptionsInput', name: 'AutoTuneOptionsInput')
    AutoTuneOptionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AutoTuneOptionsOutput', name: 'AutoTuneOptionsOutput')
    AutoTuneOptionsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AutoTuneOptionsStatus', name: 'AutoTuneOptionsStatus')
    AutoTuneState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#AutoTuneState', name: 'AutoTuneState')
    AutoTuneStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AutoTuneStatus', name: 'AutoTuneStatus')
    AutoTuneType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#AutoTuneType', name: 'AutoTuneType')
    AvailabilityZone = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#AvailabilityZone', name: 'AvailabilityZone', traits: {"smithy.api#length" => {"min" => 1, "max" => 15}})
    AvailabilityZoneInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#AvailabilityZoneInfo', name: 'AvailabilityZoneInfo')
    AvailabilityZoneInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#AvailabilityZoneInfoList', name: 'AvailabilityZoneInfoList')
    AvailabilityZoneList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#AvailabilityZoneList', name: 'AvailabilityZoneList')
    BackendRole = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#BackendRole', name: 'BackendRole', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    BaseException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#BaseException', name: 'BaseException', traits: {"smithy.api#error" => "client"})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.opensearch#Boolean', name: 'Boolean')
    CancelDomainConfigChangeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CancelDomainConfigChangeRequest', name: 'CancelDomainConfigChangeRequest')
    CancelDomainConfigChangeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CancelDomainConfigChangeResponse', name: 'CancelDomainConfigChangeResponse')
    CancelServiceSoftwareUpdateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CancelServiceSoftwareUpdateRequest', name: 'CancelServiceSoftwareUpdateRequest')
    CancelServiceSoftwareUpdateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CancelServiceSoftwareUpdateResponse', name: 'CancelServiceSoftwareUpdateResponse')
    CancelledChangeProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CancelledChangeProperty', name: 'CancelledChangeProperty')
    CancelledChangePropertyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#CancelledChangePropertyList', name: 'CancelledChangePropertyList')
    ChangeProgressDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ChangeProgressDetails', name: 'ChangeProgressDetails')
    ChangeProgressStage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ChangeProgressStage', name: 'ChangeProgressStage')
    ChangeProgressStageList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#ChangeProgressStageList', name: 'ChangeProgressStageList')
    ChangeProgressStageName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#ChangeProgressStageName', name: 'ChangeProgressStageName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ChangeProgressStageStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#ChangeProgressStageStatus', name: 'ChangeProgressStageStatus', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ChangeProgressStatusDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ChangeProgressStatusDetails', name: 'ChangeProgressStatusDetails')
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    CloudWatchDirectQueryDataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CloudWatchDirectQueryDataSource', name: 'CloudWatchDirectQueryDataSource')
    CloudWatchLogsLogGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#CloudWatchLogsLogGroupArn', name: 'CloudWatchLogsLogGroupArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => ".*"})
    ClusterConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ClusterConfig', name: 'ClusterConfig')
    ClusterConfigStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ClusterConfigStatus', name: 'ClusterConfigStatus')
    CognitoOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CognitoOptions', name: 'CognitoOptions')
    CognitoOptionsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CognitoOptionsStatus', name: 'CognitoOptionsStatus')
    ColdStorageOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ColdStorageOptions', name: 'ColdStorageOptions')
    CommitMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#CommitMessage', name: 'CommitMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 160}})
    CompatibleVersionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#CompatibleVersionsList', name: 'CompatibleVersionsList')
    CompatibleVersionsMap = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CompatibleVersionsMap', name: 'CompatibleVersionsMap')
    ConfigChangeStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#ConfigChangeStatus', name: 'ConfigChangeStatus')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectionAlias = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#ConnectionAlias', name: 'ConnectionAlias', traits: {"smithy.api#length" => {"min" => 2, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9\\-\\_]+$"})
    ConnectionId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#ConnectionId', name: 'ConnectionId', traits: {"smithy.api#length" => {"min" => 10, "max" => 256}, "smithy.api#pattern" => "^[a-z][a-z0-9\\-]+$"})
    ConnectionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#ConnectionMode', name: 'ConnectionMode')
    ConnectionProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ConnectionProperties', name: 'ConnectionProperties')
    ConnectionStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#ConnectionStatusMessage', name: 'ConnectionStatusMessage')
    CreateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CreateApplicationRequest', name: 'CreateApplicationRequest')
    CreateApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CreateApplicationResponse', name: 'CreateApplicationResponse')
    CreateDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CreateDomainRequest', name: 'CreateDomainRequest')
    CreateDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CreateDomainResponse', name: 'CreateDomainResponse')
    CreateOutboundConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CreateOutboundConnectionRequest', name: 'CreateOutboundConnectionRequest')
    CreateOutboundConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CreateOutboundConnectionResponse', name: 'CreateOutboundConnectionResponse')
    CreatePackageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CreatePackageRequest', name: 'CreatePackageRequest')
    CreatePackageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CreatePackageResponse', name: 'CreatePackageResponse')
    CreateVpcEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CreateVpcEndpointRequest', name: 'CreateVpcEndpointRequest')
    CreateVpcEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CreateVpcEndpointResponse', name: 'CreateVpcEndpointResponse')
    CreatedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.opensearch#CreatedAt', name: 'CreatedAt')
    CrossClusterSearchConnectionProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#CrossClusterSearchConnectionProperties', name: 'CrossClusterSearchConnectionProperties')
    DataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DataSource', name: 'DataSource')
    DataSourceDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#DataSourceDescription', name: 'DataSourceDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^([a-zA-Z0-9_])*[\\\\a-zA-Z0-9_@#%*+=:?./!\\s-]*$"})
    DataSourceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DataSourceDetails', name: 'DataSourceDetails')
    DataSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#DataSourceList', name: 'DataSourceList')
    DataSourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#DataSourceName', name: 'DataSourceName', traits: {"smithy.api#length" => {"min" => 3, "max" => 80}, "smithy.api#pattern" => "^[a-z][a-z0-9_]+$"})
    DataSourceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#DataSourceStatus', name: 'DataSourceStatus')
    DataSourceType = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.opensearch#DataSourceType', name: 'DataSourceType')
    DataSources = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#DataSources', name: 'DataSources')
    DeleteApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeleteApplicationRequest', name: 'DeleteApplicationRequest')
    DeleteApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeleteApplicationResponse', name: 'DeleteApplicationResponse')
    DeleteDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeleteDataSourceRequest', name: 'DeleteDataSourceRequest')
    DeleteDataSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeleteDataSourceResponse', name: 'DeleteDataSourceResponse')
    DeleteDirectQueryDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeleteDirectQueryDataSourceRequest', name: 'DeleteDirectQueryDataSourceRequest')
    DeleteDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeleteDomainRequest', name: 'DeleteDomainRequest')
    DeleteDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeleteDomainResponse', name: 'DeleteDomainResponse')
    DeleteInboundConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeleteInboundConnectionRequest', name: 'DeleteInboundConnectionRequest')
    DeleteInboundConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeleteInboundConnectionResponse', name: 'DeleteInboundConnectionResponse')
    DeleteOutboundConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeleteOutboundConnectionRequest', name: 'DeleteOutboundConnectionRequest')
    DeleteOutboundConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeleteOutboundConnectionResponse', name: 'DeleteOutboundConnectionResponse')
    DeletePackageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeletePackageRequest', name: 'DeletePackageRequest')
    DeletePackageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeletePackageResponse', name: 'DeletePackageResponse')
    DeleteVpcEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeleteVpcEndpointRequest', name: 'DeleteVpcEndpointRequest')
    DeleteVpcEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DeleteVpcEndpointResponse', name: 'DeleteVpcEndpointResponse')
    DependencyFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DependencyFailureException', name: 'DependencyFailureException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 424})
    DeploymentCloseDateTimeStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.opensearch#DeploymentCloseDateTimeStamp', name: 'DeploymentCloseDateTimeStamp')
    DeploymentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#DeploymentStatus', name: 'DeploymentStatus')
    DeploymentType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#DeploymentType', name: 'DeploymentType', traits: {"smithy.api#length" => {"min" => 2, "max" => 128}})
    DescribeDomainAutoTunesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDomainAutoTunesRequest', name: 'DescribeDomainAutoTunesRequest')
    DescribeDomainAutoTunesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDomainAutoTunesResponse', name: 'DescribeDomainAutoTunesResponse')
    DescribeDomainChangeProgressRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDomainChangeProgressRequest', name: 'DescribeDomainChangeProgressRequest')
    DescribeDomainChangeProgressResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDomainChangeProgressResponse', name: 'DescribeDomainChangeProgressResponse')
    DescribeDomainConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDomainConfigRequest', name: 'DescribeDomainConfigRequest')
    DescribeDomainConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDomainConfigResponse', name: 'DescribeDomainConfigResponse')
    DescribeDomainHealthRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDomainHealthRequest', name: 'DescribeDomainHealthRequest')
    DescribeDomainHealthResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDomainHealthResponse', name: 'DescribeDomainHealthResponse')
    DescribeDomainNodesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDomainNodesRequest', name: 'DescribeDomainNodesRequest')
    DescribeDomainNodesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDomainNodesResponse', name: 'DescribeDomainNodesResponse')
    DescribeDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDomainRequest', name: 'DescribeDomainRequest')
    DescribeDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDomainResponse', name: 'DescribeDomainResponse')
    DescribeDomainsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDomainsRequest', name: 'DescribeDomainsRequest')
    DescribeDomainsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDomainsResponse', name: 'DescribeDomainsResponse')
    DescribeDryRunProgressRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDryRunProgressRequest', name: 'DescribeDryRunProgressRequest')
    DescribeDryRunProgressResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeDryRunProgressResponse', name: 'DescribeDryRunProgressResponse')
    DescribeInboundConnectionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeInboundConnectionsRequest', name: 'DescribeInboundConnectionsRequest')
    DescribeInboundConnectionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeInboundConnectionsResponse', name: 'DescribeInboundConnectionsResponse')
    DescribeInstanceTypeLimitsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeInstanceTypeLimitsRequest', name: 'DescribeInstanceTypeLimitsRequest')
    DescribeInstanceTypeLimitsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeInstanceTypeLimitsResponse', name: 'DescribeInstanceTypeLimitsResponse')
    DescribeOutboundConnectionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeOutboundConnectionsRequest', name: 'DescribeOutboundConnectionsRequest')
    DescribeOutboundConnectionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeOutboundConnectionsResponse', name: 'DescribeOutboundConnectionsResponse')
    DescribePackagesFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribePackagesFilter', name: 'DescribePackagesFilter')
    DescribePackagesFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#DescribePackagesFilterList', name: 'DescribePackagesFilterList')
    DescribePackagesFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#DescribePackagesFilterName', name: 'DescribePackagesFilterName')
    DescribePackagesFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#DescribePackagesFilterValue', name: 'DescribePackagesFilterValue', traits: {"smithy.api#pattern" => "^[0-9a-zA-Z\\*\\.\\_\\\\\\/\\?-]+$"})
    DescribePackagesFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#DescribePackagesFilterValues', name: 'DescribePackagesFilterValues', traits: {"smithy.api#length" => {"min" => 1}})
    DescribePackagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribePackagesRequest', name: 'DescribePackagesRequest')
    DescribePackagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribePackagesResponse', name: 'DescribePackagesResponse')
    DescribeReservedInstanceOfferingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeReservedInstanceOfferingsRequest', name: 'DescribeReservedInstanceOfferingsRequest')
    DescribeReservedInstanceOfferingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeReservedInstanceOfferingsResponse', name: 'DescribeReservedInstanceOfferingsResponse')
    DescribeReservedInstancesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeReservedInstancesRequest', name: 'DescribeReservedInstancesRequest')
    DescribeReservedInstancesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeReservedInstancesResponse', name: 'DescribeReservedInstancesResponse')
    DescribeVpcEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeVpcEndpointsRequest', name: 'DescribeVpcEndpointsRequest')
    DescribeVpcEndpointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DescribeVpcEndpointsResponse', name: 'DescribeVpcEndpointsResponse')
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#Description', name: 'Description')
    DirectQueryDataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DirectQueryDataSource', name: 'DirectQueryDataSource')
    DirectQueryDataSourceDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#DirectQueryDataSourceDescription', name: 'DirectQueryDataSourceDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^([a-zA-Z0-9_])*[\\\\a-zA-Z0-9_@#%*+=:?./!\\s-]*$"})
    DirectQueryDataSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#DirectQueryDataSourceList', name: 'DirectQueryDataSourceList')
    DirectQueryDataSourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#DirectQueryDataSourceName', name: 'DirectQueryDataSourceName', traits: {"smithy.api#length" => {"min" => 3, "max" => 80}, "smithy.api#pattern" => "^[a-z][a-z0-9_]+$"})
    DirectQueryDataSourceRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#DirectQueryDataSourceRoleArn', name: 'DirectQueryDataSourceRoleArn', traits: {"smithy.api#length" => {"min" => 32, "max" => 200}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:iam::\\d{12}:role(\\/service-role)?\\/[A-Za-z0-9+=,.@\\-_]{1,64}$"})
    DirectQueryDataSourceType = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.opensearch#DirectQueryDataSourceType', name: 'DirectQueryDataSourceType')
    DirectQueryOpenSearchARNList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#DirectQueryOpenSearchARNList', name: 'DirectQueryOpenSearchARNList')
    DisableTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.opensearch#DisableTimestamp', name: 'DisableTimestamp')
    DisabledOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DisabledOperationException', name: 'DisabledOperationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DissociatePackageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DissociatePackageRequest', name: 'DissociatePackageRequest')
    DissociatePackageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DissociatePackageResponse', name: 'DissociatePackageResponse')
    DissociatePackagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DissociatePackagesRequest', name: 'DissociatePackagesRequest')
    DissociatePackagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DissociatePackagesResponse', name: 'DissociatePackagesResponse')
    DomainArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#DomainArn', name: 'DomainArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:[a-z]+:[a-z0-9\\-]+:[0-9]+:domain\\/[a-z0-9\\-]+$"})
    DomainConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DomainConfig', name: 'DomainConfig')
    DomainEndpointOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DomainEndpointOptions', name: 'DomainEndpointOptions')
    DomainEndpointOptionsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DomainEndpointOptionsStatus', name: 'DomainEndpointOptionsStatus')
    DomainHealth = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#DomainHealth', name: 'DomainHealth')
    DomainId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#DomainId', name: 'DomainId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    DomainInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DomainInfo', name: 'DomainInfo')
    DomainInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#DomainInfoList', name: 'DomainInfoList')
    DomainInformationContainer = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DomainInformationContainer', name: 'DomainInformationContainer')
    DomainMaintenanceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DomainMaintenanceDetails', name: 'DomainMaintenanceDetails')
    DomainMaintenanceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#DomainMaintenanceList', name: 'DomainMaintenanceList')
    DomainName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#DomainName', name: 'DomainName', traits: {"smithy.api#length" => {"min" => 3, "max" => 28}, "smithy.api#pattern" => "^[a-z][a-z0-9\\-]+$"})
    DomainNameFqdn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#DomainNameFqdn', name: 'DomainNameFqdn', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$"})
    DomainNameList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#DomainNameList', name: 'DomainNameList')
    DomainNodesStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DomainNodesStatus', name: 'DomainNodesStatus')
    DomainNodesStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#DomainNodesStatusList', name: 'DomainNodesStatusList')
    DomainPackageDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DomainPackageDetails', name: 'DomainPackageDetails')
    DomainPackageDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#DomainPackageDetailsList', name: 'DomainPackageDetailsList')
    DomainPackageStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#DomainPackageStatus', name: 'DomainPackageStatus')
    DomainProcessingStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#DomainProcessingStatusType', name: 'DomainProcessingStatusType')
    DomainState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#DomainState', name: 'DomainState')
    DomainStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DomainStatus', name: 'DomainStatus')
    DomainStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#DomainStatusList', name: 'DomainStatusList')
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.opensearch#Double', name: 'Double')
    DryRun = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.opensearch#DryRun', name: 'DryRun')
    DryRunMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#DryRunMode', name: 'DryRunMode')
    DryRunProgressStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DryRunProgressStatus', name: 'DryRunProgressStatus')
    DryRunResults = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#DryRunResults', name: 'DryRunResults')
    Duration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#Duration', name: 'Duration')
    DurationValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opensearch#DurationValue', name: 'DurationValue', traits: {"smithy.api#range" => {"min" => 1, "max" => 24}})
    EBSOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#EBSOptions', name: 'EBSOptions')
    EBSOptionsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#EBSOptionsStatus', name: 'EBSOptionsStatus')
    EncryptionAtRestOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#EncryptionAtRestOptions', name: 'EncryptionAtRestOptions')
    EncryptionAtRestOptionsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#EncryptionAtRestOptionsStatus', name: 'EncryptionAtRestOptionsStatus')
    Endpoint = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#Endpoint', name: 'Endpoint', traits: {"smithy.api#pattern" => "^[A-Za-z0-9\\-\\.]+$"})
    EndpointsMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.opensearch#EndpointsMap', name: 'EndpointsMap')
    EngineType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#EngineType', name: 'EngineType')
    EngineVersion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#EngineVersion', name: 'EngineVersion', traits: {"smithy.api#pattern" => "^Elasticsearch_[0-9]{1}\\.[0-9]{1,2}$|^OpenSearch_[0-9]{1,2}\\.[0-9]{1,2}$"})
    EnvironmentInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#EnvironmentInfo', name: 'EnvironmentInfo')
    EnvironmentInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#EnvironmentInfoList', name: 'EnvironmentInfoList')
    ErrorDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ErrorDetails', name: 'ErrorDetails')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#ErrorMessage', name: 'ErrorMessage')
    ErrorType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#ErrorType', name: 'ErrorType')
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#Filter', name: 'Filter')
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#FilterList', name: 'FilterList')
    GUID = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#GUID', name: 'GUID', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^\\p{XDigit}{8}-\\p{XDigit}{4}-\\p{XDigit}{4}-\\p{XDigit}{4}-\\p{XDigit}{12}$"})
    GUIDList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#GUIDList', name: 'GUIDList')
    GetApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetApplicationRequest', name: 'GetApplicationRequest')
    GetApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetApplicationResponse', name: 'GetApplicationResponse')
    GetCompatibleVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetCompatibleVersionsRequest', name: 'GetCompatibleVersionsRequest')
    GetCompatibleVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetCompatibleVersionsResponse', name: 'GetCompatibleVersionsResponse')
    GetDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetDataSourceRequest', name: 'GetDataSourceRequest')
    GetDataSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetDataSourceResponse', name: 'GetDataSourceResponse')
    GetDirectQueryDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetDirectQueryDataSourceRequest', name: 'GetDirectQueryDataSourceRequest')
    GetDirectQueryDataSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetDirectQueryDataSourceResponse', name: 'GetDirectQueryDataSourceResponse')
    GetDomainMaintenanceStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetDomainMaintenanceStatusRequest', name: 'GetDomainMaintenanceStatusRequest')
    GetDomainMaintenanceStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetDomainMaintenanceStatusResponse', name: 'GetDomainMaintenanceStatusResponse')
    GetPackageVersionHistoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetPackageVersionHistoryRequest', name: 'GetPackageVersionHistoryRequest')
    GetPackageVersionHistoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetPackageVersionHistoryResponse', name: 'GetPackageVersionHistoryResponse')
    GetUpgradeHistoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetUpgradeHistoryRequest', name: 'GetUpgradeHistoryRequest')
    GetUpgradeHistoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetUpgradeHistoryResponse', name: 'GetUpgradeHistoryResponse')
    GetUpgradeStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetUpgradeStatusRequest', name: 'GetUpgradeStatusRequest')
    GetUpgradeStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#GetUpgradeStatusResponse', name: 'GetUpgradeStatusResponse')
    HostedZoneId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#HostedZoneId', name: 'HostedZoneId')
    IAMFederationOptionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#IAMFederationOptionsInput', name: 'IAMFederationOptionsInput')
    IAMFederationOptionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#IAMFederationOptionsOutput', name: 'IAMFederationOptionsOutput')
    IAMFederationRolesKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#IAMFederationRolesKey', name: 'IAMFederationRolesKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^(null|[A-Za-z][A-Za-z0-9_.:/=+\\-@]*)$"})
    IAMFederationSubjectKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#IAMFederationSubjectKey', name: 'IAMFederationSubjectKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^(null|[A-Za-z][A-Za-z0-9_.:/=+\\-@]*)$"})
    IPAddressType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#IPAddressType', name: 'IPAddressType')
    IPAddressTypeStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#IPAddressTypeStatus', name: 'IPAddressTypeStatus')
    IamIdentityCenterOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#IamIdentityCenterOptions', name: 'IamIdentityCenterOptions')
    IamIdentityCenterOptionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#IamIdentityCenterOptionsInput', name: 'IamIdentityCenterOptionsInput')
    Id = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#Id', name: 'Id', traits: {"smithy.api#pattern" => "^[a-z0-9]{3,30}$"})
    IdentityCenterApplicationARN = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#IdentityCenterApplicationARN', name: 'IdentityCenterApplicationARN', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-z\\\\-]*:[a-z]+:[a-z0-9\\\\-]*:[0-9]*:[a-z0-9\\\\-]+\\/[a-z0-9\\\\-]+\\/[a-z0-9\\\\-]+$"})
    IdentityCenterInstanceARN = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#IdentityCenterInstanceARN', name: 'IdentityCenterInstanceARN', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-z\\\\-]*:[a-z]+:[a-z0-9\\\\-]*:[0-9]*:[a-z0-9\\\\-]+\\/[a-z0-9\\\\-]+$"})
    IdentityCenterOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#IdentityCenterOptions', name: 'IdentityCenterOptions')
    IdentityCenterOptionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#IdentityCenterOptionsInput', name: 'IdentityCenterOptionsInput')
    IdentityCenterOptionsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#IdentityCenterOptionsStatus', name: 'IdentityCenterOptionsStatus')
    IdentityPoolId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#IdentityPoolId', name: 'IdentityPoolId', traits: {"smithy.api#length" => {"min" => 1, "max" => 55}, "smithy.api#pattern" => "^[\\w-]+:[0-9a-f-]+$"})
    IdentityStoreId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#IdentityStoreId', name: 'IdentityStoreId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^d-[0-9a-f]{10}$|^[0-9a-f]{8}\\\\b-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-\\\\b[0-9a-f]{12}$"})
    InboundConnection = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#InboundConnection', name: 'InboundConnection')
    InboundConnectionStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#InboundConnectionStatus', name: 'InboundConnectionStatus')
    InboundConnectionStatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#InboundConnectionStatusCode', name: 'InboundConnectionStatusCode')
    InboundConnections = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#InboundConnections', name: 'InboundConnections')
    InitiatedBy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#InitiatedBy', name: 'InitiatedBy')
    InstanceCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opensearch#InstanceCount', name: 'InstanceCount', traits: {"smithy.api#range" => {"min" => 1}})
    InstanceCountLimits = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#InstanceCountLimits', name: 'InstanceCountLimits')
    InstanceLimits = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#InstanceLimits', name: 'InstanceLimits')
    InstanceRole = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#InstanceRole', name: 'InstanceRole')
    InstanceRoleList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#InstanceRoleList', name: 'InstanceRoleList')
    InstanceTypeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#InstanceTypeDetails', name: 'InstanceTypeDetails')
    InstanceTypeDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#InstanceTypeDetailsList', name: 'InstanceTypeDetailsList')
    InstanceTypeString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#InstanceTypeString', name: 'InstanceTypeString', traits: {"smithy.api#length" => {"min" => 10, "max" => 40}, "smithy.api#pattern" => "^.*\\..*\\.search$"})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opensearch#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    IntegerClass = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opensearch#IntegerClass', name: 'IntegerClass')
    InternalException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#InternalException', name: 'InternalException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidPaginationTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#InvalidPaginationTokenException', name: 'InvalidPaginationTokenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#InvalidTypeException', name: 'InvalidTypeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Issue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#Issue', name: 'Issue')
    Issues = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#Issues', name: 'Issues')
    JWTOptionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#JWTOptionsInput', name: 'JWTOptionsInput')
    JWTOptionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#JWTOptionsOutput', name: 'JWTOptionsOutput')
    KeyStoreAccessOption = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#KeyStoreAccessOption', name: 'KeyStoreAccessOption')
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#KmsKeyId', name: 'KmsKeyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}, "smithy.api#pattern" => ".*"})
    LastUpdated = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.opensearch#LastUpdated', name: 'LastUpdated')
    LicenseFilepath = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#LicenseFilepath', name: 'LicenseFilepath', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^(?!.*\\/\\.{2,})(?!.*\\.\\.)[a-zA-Z0-9_.-]+(?:\\/[a-zA-Z0-9_.-]+)*$"})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    LimitName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#LimitName', name: 'LimitName')
    LimitValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#LimitValue', name: 'LimitValue')
    LimitValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#LimitValueList', name: 'LimitValueList')
    Limits = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#Limits', name: 'Limits')
    LimitsByRole = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.opensearch#LimitsByRole', name: 'LimitsByRole')
    ListApplicationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListApplicationsRequest', name: 'ListApplicationsRequest')
    ListApplicationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListApplicationsResponse', name: 'ListApplicationsResponse')
    ListDataSourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListDataSourcesRequest', name: 'ListDataSourcesRequest')
    ListDataSourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListDataSourcesResponse', name: 'ListDataSourcesResponse')
    ListDirectQueryDataSourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListDirectQueryDataSourcesRequest', name: 'ListDirectQueryDataSourcesRequest')
    ListDirectQueryDataSourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListDirectQueryDataSourcesResponse', name: 'ListDirectQueryDataSourcesResponse')
    ListDomainMaintenancesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListDomainMaintenancesRequest', name: 'ListDomainMaintenancesRequest')
    ListDomainMaintenancesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListDomainMaintenancesResponse', name: 'ListDomainMaintenancesResponse')
    ListDomainNamesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListDomainNamesRequest', name: 'ListDomainNamesRequest')
    ListDomainNamesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListDomainNamesResponse', name: 'ListDomainNamesResponse')
    ListDomainsForPackageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListDomainsForPackageRequest', name: 'ListDomainsForPackageRequest')
    ListDomainsForPackageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListDomainsForPackageResponse', name: 'ListDomainsForPackageResponse')
    ListInstanceTypeDetailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListInstanceTypeDetailsRequest', name: 'ListInstanceTypeDetailsRequest')
    ListInstanceTypeDetailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListInstanceTypeDetailsResponse', name: 'ListInstanceTypeDetailsResponse')
    ListPackagesForDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListPackagesForDomainRequest', name: 'ListPackagesForDomainRequest')
    ListPackagesForDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListPackagesForDomainResponse', name: 'ListPackagesForDomainResponse')
    ListScheduledActionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListScheduledActionsRequest', name: 'ListScheduledActionsRequest')
    ListScheduledActionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListScheduledActionsResponse', name: 'ListScheduledActionsResponse')
    ListTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListTagsRequest', name: 'ListTagsRequest')
    ListTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListTagsResponse', name: 'ListTagsResponse')
    ListVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListVersionsRequest', name: 'ListVersionsRequest')
    ListVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListVersionsResponse', name: 'ListVersionsResponse')
    ListVpcEndpointAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListVpcEndpointAccessRequest', name: 'ListVpcEndpointAccessRequest')
    ListVpcEndpointAccessResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListVpcEndpointAccessResponse', name: 'ListVpcEndpointAccessResponse')
    ListVpcEndpointsForDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListVpcEndpointsForDomainRequest', name: 'ListVpcEndpointsForDomainRequest')
    ListVpcEndpointsForDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListVpcEndpointsForDomainResponse', name: 'ListVpcEndpointsForDomainResponse')
    ListVpcEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListVpcEndpointsRequest', name: 'ListVpcEndpointsRequest')
    ListVpcEndpointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ListVpcEndpointsResponse', name: 'ListVpcEndpointsResponse')
    LogPublishingOption = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#LogPublishingOption', name: 'LogPublishingOption')
    LogPublishingOptions = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.opensearch#LogPublishingOptions', name: 'LogPublishingOptions')
    LogPublishingOptionsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#LogPublishingOptionsStatus', name: 'LogPublishingOptionsStatus')
    LogType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#LogType', name: 'LogType')
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opensearch#Long', name: 'Long')
    MaintenanceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#MaintenanceStatus', name: 'MaintenanceStatus')
    MaintenanceStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#MaintenanceStatusMessage', name: 'MaintenanceStatusMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^([\\s\\S]*)$"})
    MaintenanceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#MaintenanceType', name: 'MaintenanceType')
    MasterNodeStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#MasterNodeStatus', name: 'MasterNodeStatus')
    MasterUserOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#MasterUserOptions', name: 'MasterUserOptions')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opensearch#MaxResults', name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"max" => 100}})
    MaximumInstanceCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opensearch#MaximumInstanceCount', name: 'MaximumInstanceCount', traits: {"smithy.api#default" => 0})
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#Message', name: 'Message', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    MinimumInstanceCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opensearch#MinimumInstanceCount', name: 'MinimumInstanceCount', traits: {"smithy.api#default" => 0})
    ModifyingProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ModifyingProperties', name: 'ModifyingProperties')
    ModifyingPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#ModifyingPropertiesList', name: 'ModifyingPropertiesList')
    NaturalLanguageQueryGenerationCurrentState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#NaturalLanguageQueryGenerationCurrentState', name: 'NaturalLanguageQueryGenerationCurrentState')
    NaturalLanguageQueryGenerationDesiredState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#NaturalLanguageQueryGenerationDesiredState', name: 'NaturalLanguageQueryGenerationDesiredState')
    NaturalLanguageQueryGenerationOptionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#NaturalLanguageQueryGenerationOptionsInput', name: 'NaturalLanguageQueryGenerationOptionsInput')
    NaturalLanguageQueryGenerationOptionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#NaturalLanguageQueryGenerationOptionsOutput', name: 'NaturalLanguageQueryGenerationOptionsOutput')
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#NextToken', name: 'NextToken')
    NodeConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#NodeConfig', name: 'NodeConfig')
    NodeId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#NodeId', name: 'NodeId', traits: {"smithy.api#length" => {"min" => 10, "max" => 40}})
    NodeOption = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#NodeOption', name: 'NodeOption')
    NodeOptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#NodeOptionsList', name: 'NodeOptionsList')
    NodeOptionsNodeType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#NodeOptionsNodeType', name: 'NodeOptionsNodeType')
    NodeStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#NodeStatus', name: 'NodeStatus')
    NodeToNodeEncryptionOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#NodeToNodeEncryptionOptions', name: 'NodeToNodeEncryptionOptions')
    NodeToNodeEncryptionOptionsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#NodeToNodeEncryptionOptionsStatus', name: 'NodeToNodeEncryptionOptionsStatus')
    NodeType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#NodeType', name: 'NodeType')
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#NonEmptyString', name: 'NonEmptyString', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_\\.]+$"})
    NumberOfAZs = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#NumberOfAZs', name: 'NumberOfAZs', traits: {"smithy.api#pattern" => "^((\\d+)|(NotAvailable))$"})
    NumberOfNodes = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#NumberOfNodes', name: 'NumberOfNodes', traits: {"smithy.api#pattern" => "^((\\d+)|(NotAvailable))$"})
    NumberOfShards = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#NumberOfShards', name: 'NumberOfShards', traits: {"smithy.api#pattern" => "^((\\d+)|(NotAvailable))$"})
    OffPeakWindow = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#OffPeakWindow', name: 'OffPeakWindow')
    OffPeakWindowOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#OffPeakWindowOptions', name: 'OffPeakWindowOptions')
    OffPeakWindowOptionsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#OffPeakWindowOptionsStatus', name: 'OffPeakWindowOptionsStatus')
    OpenSearchPartitionInstanceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#OpenSearchPartitionInstanceType', name: 'OpenSearchPartitionInstanceType')
    OpenSearchWarmPartitionInstanceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#OpenSearchWarmPartitionInstanceType', name: 'OpenSearchWarmPartitionInstanceType')
    OptionState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#OptionState', name: 'OptionState')
    OptionStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#OptionStatus', name: 'OptionStatus')
    OutboundConnection = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#OutboundConnection', name: 'OutboundConnection')
    OutboundConnectionStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#OutboundConnectionStatus', name: 'OutboundConnectionStatus')
    OutboundConnectionStatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#OutboundConnectionStatusCode', name: 'OutboundConnectionStatusCode')
    OutboundConnections = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#OutboundConnections', name: 'OutboundConnections')
    OverallChangeStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#OverallChangeStatus', name: 'OverallChangeStatus')
    OwnerId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#OwnerId', name: 'OwnerId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]+$"})
    PackageAssociationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#PackageAssociationConfiguration', name: 'PackageAssociationConfiguration')
    PackageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#PackageConfiguration', name: 'PackageConfiguration')
    PackageDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#PackageDescription', name: 'PackageDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    PackageDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#PackageDetails', name: 'PackageDetails')
    PackageDetailsForAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#PackageDetailsForAssociation', name: 'PackageDetailsForAssociation')
    PackageDetailsForAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#PackageDetailsForAssociationList', name: 'PackageDetailsForAssociationList')
    PackageDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#PackageDetailsList', name: 'PackageDetailsList')
    PackageEncryptionOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#PackageEncryptionOptions', name: 'PackageEncryptionOptions')
    PackageID = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#PackageID', name: 'PackageID', traits: {"smithy.api#pattern" => "^([FG][0-9]+)$|^(pkg-[a-f0-9]+)$"})
    PackageIDList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#PackageIDList', name: 'PackageIDList')
    PackageName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#PackageName', name: 'PackageName', traits: {"smithy.api#length" => {"min" => 3, "max" => 256}, "smithy.api#pattern" => "^[a-z][a-z0-9\\-]+$"})
    PackageOwner = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#PackageOwner', name: 'PackageOwner', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    PackageScopeOperationEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#PackageScopeOperationEnum', name: 'PackageScopeOperationEnum')
    PackageSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#PackageSource', name: 'PackageSource')
    PackageStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#PackageStatus', name: 'PackageStatus')
    PackageType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#PackageType', name: 'PackageType')
    PackageUser = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#PackageUser', name: 'PackageUser', traits: {"smithy.api#length" => {"min" => 6, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$|^GLOBAL$"})
    PackageUserList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#PackageUserList', name: 'PackageUserList')
    PackageVendingOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#PackageVendingOptions', name: 'PackageVendingOptions')
    PackageVersion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#PackageVersion', name: 'PackageVersion')
    PackageVersionHistory = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#PackageVersionHistory', name: 'PackageVersionHistory')
    PackageVersionHistoryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#PackageVersionHistoryList', name: 'PackageVersionHistoryList')
    Password = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#Password', name: 'Password', traits: {"smithy.api#length" => {"min" => 8, "max" => 128}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    PluginClassName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#PluginClassName', name: 'PluginClassName', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    PluginDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#PluginDescription', name: 'PluginDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    PluginName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#PluginName', name: 'PluginName', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    PluginProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#PluginProperties', name: 'PluginProperties')
    PluginVersion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#PluginVersion', name: 'PluginVersion', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    PolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#PolicyDocument', name: 'PolicyDocument', traits: {"smithy.api#length" => {"min" => 0, "max" => 102400}, "smithy.api#pattern" => ".*"})
    PrincipalType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#PrincipalType', name: 'PrincipalType')
    PropertyValueType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#PropertyValueType', name: 'PropertyValueType')
    PurchaseReservedInstanceOfferingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#PurchaseReservedInstanceOfferingRequest', name: 'PurchaseReservedInstanceOfferingRequest')
    PurchaseReservedInstanceOfferingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#PurchaseReservedInstanceOfferingResponse', name: 'PurchaseReservedInstanceOfferingResponse')
    RecurringCharge = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#RecurringCharge', name: 'RecurringCharge')
    RecurringChargeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#RecurringChargeList', name: 'RecurringChargeList')
    ReferencePath = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#ReferencePath', name: 'ReferencePath')
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#Region', name: 'Region', traits: {"smithy.api#length" => {"min" => 5, "max" => 30}, "smithy.api#pattern" => "^[a-z][a-z0-9\\-]+$"})
    RejectInboundConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#RejectInboundConnectionRequest', name: 'RejectInboundConnectionRequest')
    RejectInboundConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#RejectInboundConnectionResponse', name: 'RejectInboundConnectionResponse')
    RemoveTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#RemoveTagsRequest', name: 'RemoveTagsRequest')
    RequestId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#RequestId', name: 'RequestId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([\\s\\S]*)$"})
    RequirementLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#RequirementLevel', name: 'RequirementLevel')
    ReservationToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#ReservationToken', name: 'ReservationToken', traits: {"smithy.api#length" => {"min" => 5, "max" => 64}, "smithy.api#pattern" => ".*"})
    ReservedInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ReservedInstance', name: 'ReservedInstance')
    ReservedInstanceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#ReservedInstanceList', name: 'ReservedInstanceList')
    ReservedInstanceOffering = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ReservedInstanceOffering', name: 'ReservedInstanceOffering')
    ReservedInstanceOfferingList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#ReservedInstanceOfferingList', name: 'ReservedInstanceOfferingList')
    ReservedInstancePaymentOption = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#ReservedInstancePaymentOption', name: 'ReservedInstancePaymentOption')
    ResourceAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ResourceAlreadyExistsException', name: 'ResourceAlreadyExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    RevokeVpcEndpointAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#RevokeVpcEndpointAccessRequest', name: 'RevokeVpcEndpointAccessRequest')
    RevokeVpcEndpointAccessResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#RevokeVpcEndpointAccessResponse', name: 'RevokeVpcEndpointAccessResponse')
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws|aws\\-cn|aws\\-us\\-gov|aws\\-iso|aws\\-iso\\-b):iam::[0-9]+:role\\/"})
    RolesKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#RolesKey', name: 'RolesKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    RolesKeyIdCOption = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#RolesKeyIdCOption', name: 'RolesKeyIdCOption')
    RollbackOnDisable = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#RollbackOnDisable', name: 'RollbackOnDisable')
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#S3BucketName', name: 'S3BucketName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}})
    S3GlueDataCatalog = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#S3GlueDataCatalog', name: 'S3GlueDataCatalog')
    S3Key = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#S3Key', name: 'S3Key', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    S3VectorsEngine = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#S3VectorsEngine', name: 'S3VectorsEngine')
    SAMLEntityId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#SAMLEntityId', name: 'SAMLEntityId', traits: {"smithy.api#length" => {"min" => 8, "max" => 512}})
    SAMLIdp = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#SAMLIdp', name: 'SAMLIdp')
    SAMLMetadata = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#SAMLMetadata', name: 'SAMLMetadata', traits: {"smithy.api#length" => {"min" => 1, "max" => 1048576}})
    SAMLOptionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#SAMLOptionsInput', name: 'SAMLOptionsInput')
    SAMLOptionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#SAMLOptionsOutput', name: 'SAMLOptionsOutput')
    ScheduleAt = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#ScheduleAt', name: 'ScheduleAt')
    ScheduledAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ScheduledAction', name: 'ScheduledAction')
    ScheduledActionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#ScheduledActionsList', name: 'ScheduledActionsList')
    ScheduledAutoTuneActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#ScheduledAutoTuneActionType', name: 'ScheduledAutoTuneActionType')
    ScheduledAutoTuneDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#ScheduledAutoTuneDescription', name: 'ScheduledAutoTuneDescription')
    ScheduledAutoTuneDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ScheduledAutoTuneDetails', name: 'ScheduledAutoTuneDetails')
    ScheduledAutoTuneSeverityType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#ScheduledAutoTuneSeverityType', name: 'ScheduledAutoTuneSeverityType')
    ScheduledBy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#ScheduledBy', name: 'ScheduledBy')
    SecurityLakeDirectQueryDataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#SecurityLakeDirectQueryDataSource', name: 'SecurityLakeDirectQueryDataSource')
    ServiceSoftwareOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ServiceSoftwareOptions', name: 'ServiceSoftwareOptions')
    ServiceUrl = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#ServiceUrl', name: 'ServiceUrl')
    SkipUnavailableStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#SkipUnavailableStatus', name: 'SkipUnavailableStatus')
    SlotList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#SlotList', name: 'SlotList')
    SlotNotAvailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#SlotNotAvailableException', name: 'SlotNotAvailableException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    SnapshotOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#SnapshotOptions', name: 'SnapshotOptions')
    SnapshotOptionsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#SnapshotOptionsStatus', name: 'SnapshotOptionsStatus')
    SoftwareUpdateOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#SoftwareUpdateOptions', name: 'SoftwareUpdateOptions')
    SoftwareUpdateOptionsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#SoftwareUpdateOptionsStatus', name: 'SoftwareUpdateOptionsStatus')
    StartAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.opensearch#StartAt', name: 'StartAt')
    StartDomainMaintenanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#StartDomainMaintenanceRequest', name: 'StartDomainMaintenanceRequest')
    StartDomainMaintenanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#StartDomainMaintenanceResponse', name: 'StartDomainMaintenanceResponse')
    StartServiceSoftwareUpdateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#StartServiceSoftwareUpdateRequest', name: 'StartServiceSoftwareUpdateRequest')
    StartServiceSoftwareUpdateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#StartServiceSoftwareUpdateResponse', name: 'StartServiceSoftwareUpdateResponse')
    StartTimeHours = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opensearch#StartTimeHours', name: 'StartTimeHours', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 23}})
    StartTimeMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opensearch#StartTimeMinutes', name: 'StartTimeMinutes', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 59}})
    StartTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.opensearch#StartTimestamp', name: 'StartTimestamp')
    StorageSubTypeName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#StorageSubTypeName', name: 'StorageSubTypeName')
    StorageType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#StorageType', name: 'StorageType')
    StorageTypeLimit = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#StorageTypeLimit', name: 'StorageTypeLimit')
    StorageTypeLimitList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#StorageTypeLimitList', name: 'StorageTypeLimitList')
    StorageTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#StorageTypeList', name: 'StorageTypeList')
    StorageTypeName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#StorageTypeName', name: 'StorageTypeName')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#String', name: 'String')
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#StringList', name: 'StringList')
    SubjectKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#SubjectKey', name: 'SubjectKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    SubjectKeyIdCOption = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#SubjectKeyIdCOption', name: 'SubjectKeyIdCOption')
    TLSSecurityPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#TLSSecurityPolicy', name: 'TLSSecurityPolicy')
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => ".*"})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#TagList', name: 'TagList')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => ".*"})
    TimeUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#TimeUnit', name: 'TimeUnit')
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.opensearch#Timestamp', name: 'Timestamp')
    TotalNumberOfStages = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opensearch#TotalNumberOfStages', name: 'TotalNumberOfStages', traits: {"smithy.api#default" => 0})
    UIntValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opensearch#UIntValue', name: 'UIntValue', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    UncompressedPluginSizeInBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opensearch#UncompressedPluginSizeInBytes', name: 'UncompressedPluginSizeInBytes')
    UpdateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdateApplicationRequest', name: 'UpdateApplicationRequest')
    UpdateApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdateApplicationResponse', name: 'UpdateApplicationResponse')
    UpdateDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdateDataSourceRequest', name: 'UpdateDataSourceRequest')
    UpdateDataSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdateDataSourceResponse', name: 'UpdateDataSourceResponse')
    UpdateDirectQueryDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdateDirectQueryDataSourceRequest', name: 'UpdateDirectQueryDataSourceRequest')
    UpdateDirectQueryDataSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdateDirectQueryDataSourceResponse', name: 'UpdateDirectQueryDataSourceResponse')
    UpdateDomainConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdateDomainConfigRequest', name: 'UpdateDomainConfigRequest')
    UpdateDomainConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdateDomainConfigResponse', name: 'UpdateDomainConfigResponse')
    UpdatePackageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdatePackageRequest', name: 'UpdatePackageRequest')
    UpdatePackageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdatePackageResponse', name: 'UpdatePackageResponse')
    UpdatePackageScopeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdatePackageScopeRequest', name: 'UpdatePackageScopeRequest')
    UpdatePackageScopeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdatePackageScopeResponse', name: 'UpdatePackageScopeResponse')
    UpdateScheduledActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdateScheduledActionRequest', name: 'UpdateScheduledActionRequest')
    UpdateScheduledActionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdateScheduledActionResponse', name: 'UpdateScheduledActionResponse')
    UpdateTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.opensearch#UpdateTimestamp', name: 'UpdateTimestamp')
    UpdateVpcEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdateVpcEndpointRequest', name: 'UpdateVpcEndpointRequest')
    UpdateVpcEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpdateVpcEndpointResponse', name: 'UpdateVpcEndpointResponse')
    UpgradeDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpgradeDomainRequest', name: 'UpgradeDomainRequest')
    UpgradeDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpgradeDomainResponse', name: 'UpgradeDomainResponse')
    UpgradeHistory = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpgradeHistory', name: 'UpgradeHistory')
    UpgradeHistoryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#UpgradeHistoryList', name: 'UpgradeHistoryList')
    UpgradeName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#UpgradeName', name: 'UpgradeName')
    UpgradeStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#UpgradeStatus', name: 'UpgradeStatus')
    UpgradeStep = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#UpgradeStep', name: 'UpgradeStep')
    UpgradeStepItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#UpgradeStepItem', name: 'UpgradeStepItem')
    UpgradeStepsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#UpgradeStepsList', name: 'UpgradeStepsList')
    UserPoolId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#UserPoolId', name: 'UserPoolId', traits: {"smithy.api#length" => {"min" => 1, "max" => 55}, "smithy.api#pattern" => "^[\\w-]+_[0-9a-zA-Z]+$"})
    Username = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#Username', name: 'Username', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    VPCDerivedInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#VPCDerivedInfo', name: 'VPCDerivedInfo')
    VPCDerivedInfoStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#VPCDerivedInfoStatus', name: 'VPCDerivedInfoStatus')
    VPCOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#VPCOptions', name: 'VPCOptions')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ValidationFailure', name: 'ValidationFailure')
    ValidationFailures = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#ValidationFailures', name: 'ValidationFailures')
    ValueStringList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#ValueStringList', name: 'ValueStringList', traits: {"smithy.api#length" => {"min" => 1}})
    VersionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#VersionList', name: 'VersionList')
    VersionStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#VersionStatus', name: 'VersionStatus')
    VersionString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#VersionString', name: 'VersionString', traits: {"smithy.api#length" => {"min" => 14, "max" => 18}, "smithy.api#pattern" => "^Elasticsearch_[0-9]{1}\\.[0-9]{1,2}$|^OpenSearch_[0-9]{1,2}\\.[0-9]{1,2}$"})
    VolumeSize = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#VolumeSize', name: 'VolumeSize')
    VolumeType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#VolumeType', name: 'VolumeType')
    VpcEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#VpcEndpoint', name: 'VpcEndpoint')
    VpcEndpointError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#VpcEndpointError', name: 'VpcEndpointError')
    VpcEndpointErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#VpcEndpointErrorCode', name: 'VpcEndpointErrorCode')
    VpcEndpointErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#VpcEndpointErrorList', name: 'VpcEndpointErrorList')
    VpcEndpointId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearch#VpcEndpointId', name: 'VpcEndpointId', traits: {"smithy.api#length" => {"min" => 5, "max" => 256}, "smithy.api#pattern" => "^aos-[a-zA-Z0-9]*$"})
    VpcEndpointIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#VpcEndpointIdList', name: 'VpcEndpointIdList')
    VpcEndpointStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#VpcEndpointStatus', name: 'VpcEndpointStatus')
    VpcEndpointSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#VpcEndpointSummary', name: 'VpcEndpointSummary')
    VpcEndpointSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#VpcEndpointSummaryList', name: 'VpcEndpointSummaryList')
    VpcEndpoints = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearch#VpcEndpoints', name: 'VpcEndpoints')
    WindowStartTime = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#WindowStartTime', name: 'WindowStartTime')
    ZoneAwarenessConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearch#ZoneAwarenessConfig', name: 'ZoneAwarenessConfig')
    ZoneStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opensearch#ZoneStatus', name: 'ZoneStatus')

    AIMLOptionsInput.add_member(:natural_language_query_generation_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NaturalLanguageQueryGenerationOptionsInput, location_name: 'NaturalLanguageQueryGenerationOptions'))
    AIMLOptionsInput.add_member(:s3_vectors_engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3VectorsEngine, location_name: 'S3VectorsEngine'))
    AIMLOptionsInput.type = Types::AIMLOptionsInput
    AIMLOptionsOutput.add_member(:natural_language_query_generation_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NaturalLanguageQueryGenerationOptionsOutput, location_name: 'NaturalLanguageQueryGenerationOptions'))
    AIMLOptionsOutput.add_member(:s3_vectors_engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3VectorsEngine, location_name: 'S3VectorsEngine'))
    AIMLOptionsOutput.type = Types::AIMLOptionsOutput
    AIMLOptionsStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIMLOptionsOutput, location_name: 'Options'))
    AIMLOptionsStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status'))
    AIMLOptionsStatus.type = Types::AIMLOptionsStatus
    AWSDomainInformation.add_member(:owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerId, location_name: 'OwnerId'))
    AWSDomainInformation.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    AWSDomainInformation.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'Region'))
    AWSDomainInformation.type = Types::AWSDomainInformation
    AWSServicePrincipal.add_member(:application_opensearchservice_amazonaws_com, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'application_opensearchservice_amazonaws_com', traits: {"smithy.api#enumValue" => "application.opensearchservice.amazonaws.com"}))
    AcceptInboundConnectionRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'ConnectionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AcceptInboundConnectionRequest.type = Types::AcceptInboundConnectionRequest
    AcceptInboundConnectionResponse.add_member(:connection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InboundConnection, location_name: 'Connection'))
    AcceptInboundConnectionResponse.type = Types::AcceptInboundConnectionResponse
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessPoliciesStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'Options', traits: {"smithy.api#required" => {}}))
    AccessPoliciesStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    AccessPoliciesStatus.type = Types::AccessPoliciesStatus
    ActionSeverity.add_member(:high, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH', traits: {"smithy.api#enumValue" => "HIGH"}))
    ActionSeverity.add_member(:medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "MEDIUM"}))
    ActionSeverity.add_member(:low, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW', traits: {"smithy.api#enumValue" => "LOW"}))
    ActionStatus.add_member(:pending_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_UPDATE', traits: {"smithy.api#enumValue" => "PENDING_UPDATE"}))
    ActionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ActionStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ActionStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ActionStatus.add_member(:not_eligible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_ELIGIBLE', traits: {"smithy.api#enumValue" => "NOT_ELIGIBLE"}))
    ActionStatus.add_member(:eligible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ELIGIBLE', traits: {"smithy.api#enumValue" => "ELIGIBLE"}))
    ActionType.add_member(:service_software_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE_SOFTWARE_UPDATE', traits: {"smithy.api#enumValue" => "SERVICE_SOFTWARE_UPDATE"}))
    ActionType.add_member(:jvm_heap_size_tuning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JVM_HEAP_SIZE_TUNING', traits: {"smithy.api#enumValue" => "JVM_HEAP_SIZE_TUNING"}))
    ActionType.add_member(:jvm_young_gen_tuning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JVM_YOUNG_GEN_TUNING', traits: {"smithy.api#enumValue" => "JVM_YOUNG_GEN_TUNING"}))
    AddDataSourceRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AddDataSourceRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    AddDataSourceRequest.add_member(:data_source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceType, location_name: 'DataSourceType', traits: {"smithy.api#required" => {}}))
    AddDataSourceRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceDescription, location_name: 'Description'))
    AddDataSourceRequest.type = Types::AddDataSourceRequest
    AddDataSourceResponse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    AddDataSourceResponse.type = Types::AddDataSourceResponse
    AddDirectQueryDataSourceRequest.add_member(:data_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceName, location_name: 'DataSourceName', traits: {"smithy.api#required" => {}}))
    AddDirectQueryDataSourceRequest.add_member(:data_source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceType, location_name: 'DataSourceType', traits: {"smithy.api#required" => {}}))
    AddDirectQueryDataSourceRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceDescription, location_name: 'Description'))
    AddDirectQueryDataSourceRequest.add_member(:open_search_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryOpenSearchARNList, location_name: 'OpenSearchArns', traits: {"smithy.api#required" => {}}))
    AddDirectQueryDataSourceRequest.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    AddDirectQueryDataSourceRequest.type = Types::AddDirectQueryDataSourceRequest
    AddDirectQueryDataSourceResponse.add_member(:data_source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataSourceArn'))
    AddDirectQueryDataSourceResponse.type = Types::AddDirectQueryDataSourceResponse
    AddTagsRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ARN', traits: {"smithy.api#required" => {}}))
    AddTagsRequest.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList', traits: {"smithy.api#required" => {}}))
    AddTagsRequest.type = Types::AddTagsRequest
    AdditionalLimit.add_member(:limit_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitName, location_name: 'LimitName'))
    AdditionalLimit.add_member(:limit_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitValueList, location_name: 'LimitValues'))
    AdditionalLimit.type = Types::AdditionalLimit
    AdditionalLimitList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalLimit)
    AdvancedOptions.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    AdvancedOptions.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    AdvancedOptionsStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: 'Options', traits: {"smithy.api#required" => {}}))
    AdvancedOptionsStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    AdvancedOptionsStatus.type = Types::AdvancedOptionsStatus
    AdvancedSecurityOptions.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    AdvancedSecurityOptions.add_member(:internal_user_database_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'InternalUserDatabaseEnabled'))
    AdvancedSecurityOptions.add_member(:saml_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SAMLOptionsOutput, location_name: 'SAMLOptions'))
    AdvancedSecurityOptions.add_member(:jwt_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JWTOptionsOutput, location_name: 'JWTOptions'))
    AdvancedSecurityOptions.add_member(:iam_federation_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMFederationOptionsOutput, location_name: 'IAMFederationOptions'))
    AdvancedSecurityOptions.add_member(:anonymous_auth_disable_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableTimestamp, location_name: 'AnonymousAuthDisableDate'))
    AdvancedSecurityOptions.add_member(:anonymous_auth_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AnonymousAuthEnabled'))
    AdvancedSecurityOptions.type = Types::AdvancedSecurityOptions
    AdvancedSecurityOptionsInput.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    AdvancedSecurityOptionsInput.add_member(:internal_user_database_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'InternalUserDatabaseEnabled'))
    AdvancedSecurityOptionsInput.add_member(:master_user_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MasterUserOptions, location_name: 'MasterUserOptions'))
    AdvancedSecurityOptionsInput.add_member(:saml_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SAMLOptionsInput, location_name: 'SAMLOptions'))
    AdvancedSecurityOptionsInput.add_member(:jwt_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JWTOptionsInput, location_name: 'JWTOptions'))
    AdvancedSecurityOptionsInput.add_member(:iam_federation_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMFederationOptionsInput, location_name: 'IAMFederationOptions'))
    AdvancedSecurityOptionsInput.add_member(:anonymous_auth_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AnonymousAuthEnabled'))
    AdvancedSecurityOptionsInput.type = Types::AdvancedSecurityOptionsInput
    AdvancedSecurityOptionsStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedSecurityOptions, location_name: 'Options', traits: {"smithy.api#required" => {}}))
    AdvancedSecurityOptionsStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    AdvancedSecurityOptionsStatus.type = Types::AdvancedSecurityOptionsStatus
    AppConfig.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppConfigType, location_name: 'key'))
    AppConfig.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppConfigValue, location_name: 'value'))
    AppConfig.type = Types::AppConfig
    AppConfigType.add_member(:opensearch_dashboard_admin_users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OpensearchDashboardAdminUsers', traits: {"smithy.api#enumValue" => "opensearchDashboards.dashboardAdmin.users"}))
    AppConfigType.add_member(:opensearch_dashboard_admin_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OpensearchDashboardAdminGroups', traits: {"smithy.api#enumValue" => "opensearchDashboards.dashboardAdmin.groups"}))
    AppConfigs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppConfig)
    ApplicationStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ApplicationStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    ApplicationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ApplicationStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ApplicationStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ApplicationStatuses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationStatus)
    ApplicationSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSummary)
    ApplicationSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'id'))
    ApplicationSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn'))
    ApplicationSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'name'))
    ApplicationSummary.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'endpoint'))
    ApplicationSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: 'status'))
    ApplicationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt'))
    ApplicationSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt'))
    ApplicationSummary.type = Types::ApplicationSummary
    AssociatePackageRequest.add_member(:package_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: 'PackageID', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociatePackageRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociatePackageRequest.add_member(:prerequisite_package_id_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageIDList, location_name: 'PrerequisitePackageIDList'))
    AssociatePackageRequest.add_member(:association_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageAssociationConfiguration, location_name: 'AssociationConfiguration'))
    AssociatePackageRequest.type = Types::AssociatePackageRequest
    AssociatePackageResponse.add_member(:domain_package_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainPackageDetails, location_name: 'DomainPackageDetails'))
    AssociatePackageResponse.type = Types::AssociatePackageResponse
    AssociatePackagesRequest.add_member(:package_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDetailsForAssociationList, location_name: 'PackageList', traits: {"smithy.api#required" => {}}))
    AssociatePackagesRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    AssociatePackagesRequest.type = Types::AssociatePackagesRequest
    AssociatePackagesResponse.add_member(:domain_package_details_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainPackageDetailsList, location_name: 'DomainPackageDetailsList'))
    AssociatePackagesResponse.type = Types::AssociatePackagesResponse
    AuthorizeVpcEndpointAccessRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AuthorizeVpcEndpointAccessRequest.add_member(:account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccount, location_name: 'Account'))
    AuthorizeVpcEndpointAccessRequest.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServicePrincipal, location_name: 'Service'))
    AuthorizeVpcEndpointAccessRequest.type = Types::AuthorizeVpcEndpointAccessRequest
    AuthorizeVpcEndpointAccessResponse.add_member(:authorized_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizedPrincipal, location_name: 'AuthorizedPrincipal', traits: {"smithy.api#required" => {}}))
    AuthorizeVpcEndpointAccessResponse.type = Types::AuthorizeVpcEndpointAccessResponse
    AuthorizedPrincipal.add_member(:principal_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalType, location_name: 'PrincipalType'))
    AuthorizedPrincipal.add_member(:principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Principal'))
    AuthorizedPrincipal.type = Types::AuthorizedPrincipal
    AuthorizedPrincipalList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizedPrincipal)
    AutoTune.add_member(:auto_tune_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneType, location_name: 'AutoTuneType'))
    AutoTune.add_member(:auto_tune_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneDetails, location_name: 'AutoTuneDetails'))
    AutoTune.type = Types::AutoTune
    AutoTuneDesiredState.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    AutoTuneDesiredState.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    AutoTuneDetails.add_member(:scheduled_auto_tune_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledAutoTuneDetails, location_name: 'ScheduledAutoTuneDetails'))
    AutoTuneDetails.type = Types::AutoTuneDetails
    AutoTuneList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTune)
    AutoTuneMaintenanceSchedule.add_member(:start_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartAt, location_name: 'StartAt'))
    AutoTuneMaintenanceSchedule.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Duration, location_name: 'Duration'))
    AutoTuneMaintenanceSchedule.add_member(:cron_expression_for_recurrence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CronExpressionForRecurrence'))
    AutoTuneMaintenanceSchedule.type = Types::AutoTuneMaintenanceSchedule
    AutoTuneMaintenanceScheduleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneMaintenanceSchedule)
    AutoTuneOptions.add_member(:desired_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneDesiredState, location_name: 'DesiredState'))
    AutoTuneOptions.add_member(:rollback_on_disable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RollbackOnDisable, location_name: 'RollbackOnDisable'))
    AutoTuneOptions.add_member(:maintenance_schedules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneMaintenanceScheduleList, location_name: 'MaintenanceSchedules'))
    AutoTuneOptions.add_member(:use_off_peak_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseOffPeakWindow'))
    AutoTuneOptions.type = Types::AutoTuneOptions
    AutoTuneOptionsInput.add_member(:desired_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneDesiredState, location_name: 'DesiredState'))
    AutoTuneOptionsInput.add_member(:maintenance_schedules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneMaintenanceScheduleList, location_name: 'MaintenanceSchedules'))
    AutoTuneOptionsInput.add_member(:use_off_peak_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseOffPeakWindow'))
    AutoTuneOptionsInput.type = Types::AutoTuneOptionsInput
    AutoTuneOptionsOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneState, location_name: 'State'))
    AutoTuneOptionsOutput.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage'))
    AutoTuneOptionsOutput.add_member(:use_off_peak_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseOffPeakWindow'))
    AutoTuneOptionsOutput.type = Types::AutoTuneOptionsOutput
    AutoTuneOptionsStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneOptions, location_name: 'Options'))
    AutoTuneOptionsStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneStatus, location_name: 'Status'))
    AutoTuneOptionsStatus.type = Types::AutoTuneOptionsStatus
    AutoTuneState.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    AutoTuneState.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    AutoTuneState.add_member(:enable_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "ENABLE_IN_PROGRESS"}))
    AutoTuneState.add_member(:disable_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DISABLE_IN_PROGRESS"}))
    AutoTuneState.add_member(:disabled_and_rollback_scheduled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED_AND_ROLLBACK_SCHEDULED', traits: {"smithy.api#enumValue" => "DISABLED_AND_ROLLBACK_SCHEDULED"}))
    AutoTuneState.add_member(:disabled_and_rollback_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED_AND_ROLLBACK_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DISABLED_AND_ROLLBACK_IN_PROGRESS"}))
    AutoTuneState.add_member(:disabled_and_rollback_complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED_AND_ROLLBACK_COMPLETE', traits: {"smithy.api#enumValue" => "DISABLED_AND_ROLLBACK_COMPLETE"}))
    AutoTuneState.add_member(:disabled_and_rollback_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED_AND_ROLLBACK_ERROR', traits: {"smithy.api#enumValue" => "DISABLED_AND_ROLLBACK_ERROR"}))
    AutoTuneState.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    AutoTuneStatus.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: 'CreationDate', traits: {"smithy.api#required" => {}}))
    AutoTuneStatus.add_member(:update_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: 'UpdateDate', traits: {"smithy.api#required" => {}}))
    AutoTuneStatus.add_member(:update_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UIntValue, location_name: 'UpdateVersion', traits: {"smithy.api#default" => 0}))
    AutoTuneStatus.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneState, location_name: 'State', traits: {"smithy.api#required" => {}}))
    AutoTuneStatus.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage'))
    AutoTuneStatus.add_member(:pending_deletion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'PendingDeletion'))
    AutoTuneStatus.type = Types::AutoTuneStatus
    AutoTuneType.add_member(:scheduled_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEDULED_ACTION', traits: {"smithy.api#enumValue" => "SCHEDULED_ACTION"}))
    AvailabilityZoneInfo.add_member(:availability_zone_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: 'AvailabilityZoneName'))
    AvailabilityZoneInfo.add_member(:zone_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZoneStatus, location_name: 'ZoneStatus'))
    AvailabilityZoneInfo.add_member(:configured_data_node_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfNodes, location_name: 'ConfiguredDataNodeCount'))
    AvailabilityZoneInfo.add_member(:available_data_node_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfNodes, location_name: 'AvailableDataNodeCount'))
    AvailabilityZoneInfo.add_member(:total_shards, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfShards, location_name: 'TotalShards'))
    AvailabilityZoneInfo.add_member(:total_un_assigned_shards, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfShards, location_name: 'TotalUnAssignedShards'))
    AvailabilityZoneInfo.type = Types::AvailabilityZoneInfo
    AvailabilityZoneInfoList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneInfo)
    AvailabilityZoneList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone)
    BaseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    BaseException.type = Types::BaseException
    CancelDomainConfigChangeRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelDomainConfigChangeRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRun, location_name: 'DryRun'))
    CancelDomainConfigChangeRequest.type = Types::CancelDomainConfigChangeRequest
    CancelDomainConfigChangeResponse.add_member(:cancelled_change_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GUIDList, location_name: 'CancelledChangeIds'))
    CancelDomainConfigChangeResponse.add_member(:cancelled_change_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelledChangePropertyList, location_name: 'CancelledChangeProperties'))
    CancelDomainConfigChangeResponse.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRun, location_name: 'DryRun'))
    CancelDomainConfigChangeResponse.type = Types::CancelDomainConfigChangeResponse
    CancelServiceSoftwareUpdateRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    CancelServiceSoftwareUpdateRequest.type = Types::CancelServiceSoftwareUpdateRequest
    CancelServiceSoftwareUpdateResponse.add_member(:service_software_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSoftwareOptions, location_name: 'ServiceSoftwareOptions'))
    CancelServiceSoftwareUpdateResponse.type = Types::CancelServiceSoftwareUpdateResponse
    CancelledChangeProperty.add_member(:property_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PropertyName'))
    CancelledChangeProperty.add_member(:cancelled_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CancelledValue'))
    CancelledChangeProperty.add_member(:active_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActiveValue'))
    CancelledChangeProperty.type = Types::CancelledChangeProperty
    CancelledChangePropertyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelledChangeProperty)
    ChangeProgressDetails.add_member(:change_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: 'ChangeId'))
    ChangeProgressDetails.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ChangeProgressDetails.add_member(:config_change_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigChangeStatus, location_name: 'ConfigChangeStatus'))
    ChangeProgressDetails.add_member(:initiated_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitiatedBy, location_name: 'InitiatedBy'))
    ChangeProgressDetails.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: 'StartTime'))
    ChangeProgressDetails.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: 'LastUpdatedTime'))
    ChangeProgressDetails.type = Types::ChangeProgressDetails
    ChangeProgressStage.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressStageName, location_name: 'Name'))
    ChangeProgressStage.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressStageStatus, location_name: 'Status'))
    ChangeProgressStage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    ChangeProgressStage.add_member(:last_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdated, location_name: 'LastUpdated'))
    ChangeProgressStage.type = Types::ChangeProgressStage
    ChangeProgressStageList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressStage)
    ChangeProgressStatusDetails.add_member(:change_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: 'ChangeId'))
    ChangeProgressStatusDetails.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: 'StartTime'))
    ChangeProgressStatusDetails.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OverallChangeStatus, location_name: 'Status'))
    ChangeProgressStatusDetails.add_member(:pending_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'PendingProperties'))
    ChangeProgressStatusDetails.add_member(:completed_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'CompletedProperties'))
    ChangeProgressStatusDetails.add_member(:total_number_of_stages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TotalNumberOfStages, location_name: 'TotalNumberOfStages', traits: {"smithy.api#default" => 0}))
    ChangeProgressStatusDetails.add_member(:change_progress_stages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressStageList, location_name: 'ChangeProgressStages'))
    ChangeProgressStatusDetails.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: 'LastUpdatedTime'))
    ChangeProgressStatusDetails.add_member(:config_change_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigChangeStatus, location_name: 'ConfigChangeStatus'))
    ChangeProgressStatusDetails.add_member(:initiated_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitiatedBy, location_name: 'InitiatedBy'))
    ChangeProgressStatusDetails.type = Types::ChangeProgressStatusDetails
    CloudWatchDirectQueryDataSource.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceRoleArn, location_name: 'RoleArn', traits: {"smithy.api#required" => {}}))
    CloudWatchDirectQueryDataSource.type = Types::CloudWatchDirectQueryDataSource
    ClusterConfig.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchPartitionInstanceType, location_name: 'InstanceType'))
    ClusterConfig.add_member(:instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: 'InstanceCount'))
    ClusterConfig.add_member(:dedicated_master_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DedicatedMasterEnabled'))
    ClusterConfig.add_member(:zone_awareness_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ZoneAwarenessEnabled'))
    ClusterConfig.add_member(:zone_awareness_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZoneAwarenessConfig, location_name: 'ZoneAwarenessConfig'))
    ClusterConfig.add_member(:dedicated_master_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchPartitionInstanceType, location_name: 'DedicatedMasterType'))
    ClusterConfig.add_member(:dedicated_master_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: 'DedicatedMasterCount'))
    ClusterConfig.add_member(:warm_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'WarmEnabled'))
    ClusterConfig.add_member(:warm_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchWarmPartitionInstanceType, location_name: 'WarmType'))
    ClusterConfig.add_member(:warm_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: 'WarmCount'))
    ClusterConfig.add_member(:cold_storage_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColdStorageOptions, location_name: 'ColdStorageOptions'))
    ClusterConfig.add_member(:multi_az_with_standby_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'MultiAZWithStandbyEnabled'))
    ClusterConfig.add_member(:node_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeOptionsList, location_name: 'NodeOptions'))
    ClusterConfig.type = Types::ClusterConfig
    ClusterConfigStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterConfig, location_name: 'Options', traits: {"smithy.api#required" => {}}))
    ClusterConfigStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    ClusterConfigStatus.type = Types::ClusterConfigStatus
    CognitoOptions.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    CognitoOptions.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolId, location_name: 'UserPoolId'))
    CognitoOptions.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: 'IdentityPoolId'))
    CognitoOptions.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn'))
    CognitoOptions.type = Types::CognitoOptions
    CognitoOptionsStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoOptions, location_name: 'Options', traits: {"smithy.api#required" => {}}))
    CognitoOptionsStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    CognitoOptionsStatus.type = Types::CognitoOptionsStatus
    ColdStorageOptions.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#required" => {}}))
    ColdStorageOptions.type = Types::ColdStorageOptions
    CompatibleVersionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompatibleVersionsMap)
    CompatibleVersionsMap.add_member(:source_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionString, location_name: 'SourceVersion'))
    CompatibleVersionsMap.add_member(:target_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionList, location_name: 'TargetVersions'))
    CompatibleVersionsMap.type = Types::CompatibleVersionsMap
    ConfigChangeStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "Pending"}))
    ConfigChangeStatus.add_member(:initializing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIALIZING', traits: {"smithy.api#enumValue" => "Initializing"}))
    ConfigChangeStatus.add_member(:validating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATING', traits: {"smithy.api#enumValue" => "Validating"}))
    ConfigChangeStatus.add_member(:validation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "ValidationFailed"}))
    ConfigChangeStatus.add_member(:applying_changes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPLYING_CHANGES', traits: {"smithy.api#enumValue" => "ApplyingChanges"}))
    ConfigChangeStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "Completed"}))
    ConfigChangeStatus.add_member(:pending_user_input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_USER_INPUT', traits: {"smithy.api#enumValue" => "PendingUserInput"}))
    ConfigChangeStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "Cancelled"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    ConnectionMode.add_member(:direct, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECT', traits: {"smithy.api#enumValue" => "DIRECT"}))
    ConnectionMode.add_member(:vpc_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VPC_ENDPOINT', traits: {"smithy.api#enumValue" => "VPC_ENDPOINT"}))
    ConnectionProperties.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'Endpoint'))
    ConnectionProperties.add_member(:cross_cluster_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CrossClusterSearchConnectionProperties, location_name: 'CrossClusterSearch'))
    ConnectionProperties.type = Types::ConnectionProperties
    CreateApplicationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateApplicationRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:data_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSources, location_name: 'dataSources'))
    CreateApplicationRequest.add_member(:iam_identity_center_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamIdentityCenterOptionsInput, location_name: 'iamIdentityCenterOptions'))
    CreateApplicationRequest.add_member(:app_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppConfigs, location_name: 'appConfigs'))
    CreateApplicationRequest.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tagList'))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateApplicationResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'id'))
    CreateApplicationResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'name'))
    CreateApplicationResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn'))
    CreateApplicationResponse.add_member(:data_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSources, location_name: 'dataSources'))
    CreateApplicationResponse.add_member(:iam_identity_center_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamIdentityCenterOptions, location_name: 'iamIdentityCenterOptions'))
    CreateApplicationResponse.add_member(:app_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppConfigs, location_name: 'appConfigs'))
    CreateApplicationResponse.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tagList'))
    CreateApplicationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt'))
    CreateApplicationResponse.type = Types::CreateApplicationResponse
    CreateDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    CreateDomainRequest.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionString, location_name: 'EngineVersion'))
    CreateDomainRequest.add_member(:cluster_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterConfig, location_name: 'ClusterConfig'))
    CreateDomainRequest.add_member(:ebs_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EBSOptions, location_name: 'EBSOptions'))
    CreateDomainRequest.add_member(:access_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'AccessPolicies'))
    CreateDomainRequest.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddressType, location_name: 'IPAddressType'))
    CreateDomainRequest.add_member(:snapshot_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotOptions, location_name: 'SnapshotOptions'))
    CreateDomainRequest.add_member(:vpc_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCOptions, location_name: 'VPCOptions'))
    CreateDomainRequest.add_member(:cognito_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoOptions, location_name: 'CognitoOptions'))
    CreateDomainRequest.add_member(:encryption_at_rest_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, location_name: 'EncryptionAtRestOptions'))
    CreateDomainRequest.add_member(:node_to_node_encryption_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeToNodeEncryptionOptions, location_name: 'NodeToNodeEncryptionOptions'))
    CreateDomainRequest.add_member(:advanced_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: 'AdvancedOptions'))
    CreateDomainRequest.add_member(:log_publishing_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: 'LogPublishingOptions'))
    CreateDomainRequest.add_member(:domain_endpoint_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainEndpointOptions, location_name: 'DomainEndpointOptions'))
    CreateDomainRequest.add_member(:advanced_security_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedSecurityOptionsInput, location_name: 'AdvancedSecurityOptions'))
    CreateDomainRequest.add_member(:identity_center_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterOptionsInput, location_name: 'IdentityCenterOptions'))
    CreateDomainRequest.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    CreateDomainRequest.add_member(:auto_tune_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneOptionsInput, location_name: 'AutoTuneOptions'))
    CreateDomainRequest.add_member(:off_peak_window_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OffPeakWindowOptions, location_name: 'OffPeakWindowOptions'))
    CreateDomainRequest.add_member(:software_update_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareUpdateOptions, location_name: 'SoftwareUpdateOptions'))
    CreateDomainRequest.add_member(:aiml_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIMLOptionsInput, location_name: 'AIMLOptions'))
    CreateDomainRequest.type = Types::CreateDomainRequest
    CreateDomainResponse.add_member(:domain_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainStatus, location_name: 'DomainStatus'))
    CreateDomainResponse.type = Types::CreateDomainResponse
    CreateOutboundConnectionRequest.add_member(:local_domain_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInformationContainer, location_name: 'LocalDomainInfo', traits: {"smithy.api#required" => {}}))
    CreateOutboundConnectionRequest.add_member(:remote_domain_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInformationContainer, location_name: 'RemoteDomainInfo', traits: {"smithy.api#required" => {}}))
    CreateOutboundConnectionRequest.add_member(:connection_alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAlias, location_name: 'ConnectionAlias', traits: {"smithy.api#required" => {}}))
    CreateOutboundConnectionRequest.add_member(:connection_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionMode, location_name: 'ConnectionMode'))
    CreateOutboundConnectionRequest.add_member(:connection_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionProperties, location_name: 'ConnectionProperties'))
    CreateOutboundConnectionRequest.type = Types::CreateOutboundConnectionRequest
    CreateOutboundConnectionResponse.add_member(:local_domain_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInformationContainer, location_name: 'LocalDomainInfo'))
    CreateOutboundConnectionResponse.add_member(:remote_domain_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInformationContainer, location_name: 'RemoteDomainInfo'))
    CreateOutboundConnectionResponse.add_member(:connection_alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAlias, location_name: 'ConnectionAlias'))
    CreateOutboundConnectionResponse.add_member(:connection_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundConnectionStatus, location_name: 'ConnectionStatus'))
    CreateOutboundConnectionResponse.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'ConnectionId'))
    CreateOutboundConnectionResponse.add_member(:connection_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionMode, location_name: 'ConnectionMode'))
    CreateOutboundConnectionResponse.add_member(:connection_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionProperties, location_name: 'ConnectionProperties'))
    CreateOutboundConnectionResponse.type = Types::CreateOutboundConnectionResponse
    CreatePackageRequest.add_member(:package_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'PackageName', traits: {"smithy.api#required" => {}}))
    CreatePackageRequest.add_member(:package_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageType, location_name: 'PackageType', traits: {"smithy.api#required" => {}}))
    CreatePackageRequest.add_member(:package_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDescription, location_name: 'PackageDescription'))
    CreatePackageRequest.add_member(:package_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageSource, location_name: 'PackageSource', traits: {"smithy.api#required" => {}}))
    CreatePackageRequest.add_member(:package_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageConfiguration, location_name: 'PackageConfiguration'))
    CreatePackageRequest.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersion, location_name: 'EngineVersion'))
    CreatePackageRequest.add_member(:package_vending_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVendingOptions, location_name: 'PackageVendingOptions'))
    CreatePackageRequest.add_member(:package_encryption_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageEncryptionOptions, location_name: 'PackageEncryptionOptions'))
    CreatePackageRequest.type = Types::CreatePackageRequest
    CreatePackageResponse.add_member(:package_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDetails, location_name: 'PackageDetails'))
    CreatePackageResponse.type = Types::CreatePackageResponse
    CreateVpcEndpointRequest.add_member(:domain_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainArn, location_name: 'DomainArn', traits: {"smithy.api#required" => {}}))
    CreateVpcEndpointRequest.add_member(:vpc_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCOptions, location_name: 'VpcOptions', traits: {"smithy.api#required" => {}}))
    CreateVpcEndpointRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken'))
    CreateVpcEndpointRequest.type = Types::CreateVpcEndpointRequest
    CreateVpcEndpointResponse.add_member(:vpc_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpoint, location_name: 'VpcEndpoint', traits: {"smithy.api#required" => {}}))
    CreateVpcEndpointResponse.type = Types::CreateVpcEndpointResponse
    CrossClusterSearchConnectionProperties.add_member(:skip_unavailable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SkipUnavailableStatus, location_name: 'SkipUnavailable'))
    CrossClusterSearchConnectionProperties.type = Types::CrossClusterSearchConnectionProperties
    DataSource.add_member(:data_source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'dataSourceArn'))
    DataSource.add_member(:data_source_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceDescription, location_name: 'dataSourceDescription'))
    DataSource.type = Types::DataSource
    DataSourceDetails.add_member(:data_source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceType, location_name: 'DataSourceType'))
    DataSourceDetails.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceName, location_name: 'Name'))
    DataSourceDetails.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceDescription, location_name: 'Description'))
    DataSourceDetails.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceStatus, location_name: 'Status'))
    DataSourceDetails.type = Types::DataSourceDetails
    DataSourceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceDetails)
    DataSourceStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DataSourceStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    DataSourceType.add_member(:s3_glue_data_catalog, Types::DataSourceType::S3GlueDataCatalog, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3GlueDataCatalog, location_name: 'S3GlueDataCatalog'))
    DataSourceType.add_member(:unknown, Types::DataSourceType::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    DataSourceType.type = Types::DataSourceType
    DataSources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSource)
    DeleteApplicationRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApplicationRequest.type = Types::DeleteApplicationRequest
    DeleteApplicationResponse.type = Types::DeleteApplicationResponse
    DeleteDataSourceRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataSourceRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataSourceRequest.type = Types::DeleteDataSourceRequest
    DeleteDataSourceResponse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    DeleteDataSourceResponse.type = Types::DeleteDataSourceResponse
    DeleteDirectQueryDataSourceRequest.add_member(:data_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceName, location_name: 'DataSourceName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDirectQueryDataSourceRequest.type = Types::DeleteDirectQueryDataSourceRequest
    DeleteDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDomainRequest.type = Types::DeleteDomainRequest
    DeleteDomainResponse.add_member(:domain_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainStatus, location_name: 'DomainStatus'))
    DeleteDomainResponse.type = Types::DeleteDomainResponse
    DeleteInboundConnectionRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'ConnectionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteInboundConnectionRequest.type = Types::DeleteInboundConnectionRequest
    DeleteInboundConnectionResponse.add_member(:connection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InboundConnection, location_name: 'Connection'))
    DeleteInboundConnectionResponse.type = Types::DeleteInboundConnectionResponse
    DeleteOutboundConnectionRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'ConnectionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteOutboundConnectionRequest.type = Types::DeleteOutboundConnectionRequest
    DeleteOutboundConnectionResponse.add_member(:connection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundConnection, location_name: 'Connection'))
    DeleteOutboundConnectionResponse.type = Types::DeleteOutboundConnectionResponse
    DeletePackageRequest.add_member(:package_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: 'PackageID', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePackageRequest.type = Types::DeletePackageRequest
    DeletePackageResponse.add_member(:package_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDetails, location_name: 'PackageDetails'))
    DeletePackageResponse.type = Types::DeletePackageResponse
    DeleteVpcEndpointRequest.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'VpcEndpointId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVpcEndpointRequest.type = Types::DeleteVpcEndpointRequest
    DeleteVpcEndpointResponse.add_member(:vpc_endpoint_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointSummary, location_name: 'VpcEndpointSummary', traits: {"smithy.api#required" => {}}))
    DeleteVpcEndpointResponse.type = Types::DeleteVpcEndpointResponse
    DependencyFailureException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    DependencyFailureException.type = Types::DependencyFailureException
    DeploymentStatus.add_member(:pending_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_UPDATE', traits: {"smithy.api#enumValue" => "PENDING_UPDATE"}))
    DeploymentStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    DeploymentStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    DeploymentStatus.add_member(:not_eligible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_ELIGIBLE', traits: {"smithy.api#enumValue" => "NOT_ELIGIBLE"}))
    DeploymentStatus.add_member(:eligible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ELIGIBLE', traits: {"smithy.api#enumValue" => "ELIGIBLE"}))
    DescribeDomainAutoTunesRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDomainAutoTunesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0}))
    DescribeDomainAutoTunesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    DescribeDomainAutoTunesRequest.type = Types::DescribeDomainAutoTunesRequest
    DescribeDomainAutoTunesResponse.add_member(:auto_tunes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneList, location_name: 'AutoTunes'))
    DescribeDomainAutoTunesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    DescribeDomainAutoTunesResponse.type = Types::DescribeDomainAutoTunesResponse
    DescribeDomainChangeProgressRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDomainChangeProgressRequest.add_member(:change_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: 'ChangeId', traits: {"smithy.api#httpQuery" => "changeid"}))
    DescribeDomainChangeProgressRequest.type = Types::DescribeDomainChangeProgressRequest
    DescribeDomainChangeProgressResponse.add_member(:change_progress_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressStatusDetails, location_name: 'ChangeProgressStatus'))
    DescribeDomainChangeProgressResponse.type = Types::DescribeDomainChangeProgressResponse
    DescribeDomainConfigRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDomainConfigRequest.type = Types::DescribeDomainConfigRequest
    DescribeDomainConfigResponse.add_member(:domain_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainConfig, location_name: 'DomainConfig', traits: {"smithy.api#required" => {}}))
    DescribeDomainConfigResponse.type = Types::DescribeDomainConfigResponse
    DescribeDomainHealthRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDomainHealthRequest.type = Types::DescribeDomainHealthRequest
    DescribeDomainHealthResponse.add_member(:domain_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainState, location_name: 'DomainState'))
    DescribeDomainHealthResponse.add_member(:availability_zone_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfAZs, location_name: 'AvailabilityZoneCount'))
    DescribeDomainHealthResponse.add_member(:active_availability_zone_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfAZs, location_name: 'ActiveAvailabilityZoneCount'))
    DescribeDomainHealthResponse.add_member(:stand_by_availability_zone_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfAZs, location_name: 'StandByAvailabilityZoneCount'))
    DescribeDomainHealthResponse.add_member(:data_node_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfNodes, location_name: 'DataNodeCount'))
    DescribeDomainHealthResponse.add_member(:dedicated_master, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DedicatedMaster'))
    DescribeDomainHealthResponse.add_member(:master_eligible_node_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfNodes, location_name: 'MasterEligibleNodeCount'))
    DescribeDomainHealthResponse.add_member(:warm_node_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfNodes, location_name: 'WarmNodeCount'))
    DescribeDomainHealthResponse.add_member(:master_node, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MasterNodeStatus, location_name: 'MasterNode'))
    DescribeDomainHealthResponse.add_member(:cluster_health, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainHealth, location_name: 'ClusterHealth'))
    DescribeDomainHealthResponse.add_member(:total_shards, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfShards, location_name: 'TotalShards'))
    DescribeDomainHealthResponse.add_member(:total_un_assigned_shards, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfShards, location_name: 'TotalUnAssignedShards'))
    DescribeDomainHealthResponse.add_member(:environment_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentInfoList, location_name: 'EnvironmentInformation'))
    DescribeDomainHealthResponse.type = Types::DescribeDomainHealthResponse
    DescribeDomainNodesRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDomainNodesRequest.type = Types::DescribeDomainNodesRequest
    DescribeDomainNodesResponse.add_member(:domain_nodes_status_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNodesStatusList, location_name: 'DomainNodesStatusList'))
    DescribeDomainNodesResponse.type = Types::DescribeDomainNodesResponse
    DescribeDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDomainRequest.type = Types::DescribeDomainRequest
    DescribeDomainResponse.add_member(:domain_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainStatus, location_name: 'DomainStatus', traits: {"smithy.api#required" => {}}))
    DescribeDomainResponse.type = Types::DescribeDomainResponse
    DescribeDomainsRequest.add_member(:domain_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameList, location_name: 'DomainNames', traits: {"smithy.api#required" => {}}))
    DescribeDomainsRequest.type = Types::DescribeDomainsRequest
    DescribeDomainsResponse.add_member(:domain_status_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainStatusList, location_name: 'DomainStatusList', traits: {"smithy.api#required" => {}}))
    DescribeDomainsResponse.type = Types::DescribeDomainsResponse
    DescribeDryRunProgressRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDryRunProgressRequest.add_member(:dry_run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: 'DryRunId', traits: {"smithy.api#httpQuery" => "dryRunId"}))
    DescribeDryRunProgressRequest.add_member(:load_dry_run_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'LoadDryRunConfig', traits: {"smithy.api#httpQuery" => "loadDryRunConfig"}))
    DescribeDryRunProgressRequest.type = Types::DescribeDryRunProgressRequest
    DescribeDryRunProgressResponse.add_member(:dry_run_progress_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunProgressStatus, location_name: 'DryRunProgressStatus'))
    DescribeDryRunProgressResponse.add_member(:dry_run_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainStatus, location_name: 'DryRunConfig'))
    DescribeDryRunProgressResponse.add_member(:dry_run_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunResults, location_name: 'DryRunResults'))
    DescribeDryRunProgressResponse.type = Types::DescribeDryRunProgressResponse
    DescribeInboundConnectionsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeInboundConnectionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0}))
    DescribeInboundConnectionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    DescribeInboundConnectionsRequest.type = Types::DescribeInboundConnectionsRequest
    DescribeInboundConnectionsResponse.add_member(:connections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InboundConnections, location_name: 'Connections'))
    DescribeInboundConnectionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    DescribeInboundConnectionsResponse.type = Types::DescribeInboundConnectionsResponse
    DescribeInstanceTypeLimitsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpQuery" => "domainName"}))
    DescribeInstanceTypeLimitsRequest.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchPartitionInstanceType, location_name: 'InstanceType', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeInstanceTypeLimitsRequest.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionString, location_name: 'EngineVersion', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeInstanceTypeLimitsRequest.type = Types::DescribeInstanceTypeLimitsRequest
    DescribeInstanceTypeLimitsResponse.add_member(:limits_by_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitsByRole, location_name: 'LimitsByRole'))
    DescribeInstanceTypeLimitsResponse.type = Types::DescribeInstanceTypeLimitsResponse
    DescribeOutboundConnectionsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeOutboundConnectionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0}))
    DescribeOutboundConnectionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    DescribeOutboundConnectionsRequest.type = Types::DescribeOutboundConnectionsRequest
    DescribeOutboundConnectionsResponse.add_member(:connections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundConnections, location_name: 'Connections'))
    DescribeOutboundConnectionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    DescribeOutboundConnectionsResponse.type = Types::DescribeOutboundConnectionsResponse
    DescribePackagesFilter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackagesFilterName, location_name: 'Name'))
    DescribePackagesFilter.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackagesFilterValues, location_name: 'Value'))
    DescribePackagesFilter.type = Types::DescribePackagesFilter
    DescribePackagesFilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackagesFilter)
    DescribePackagesFilterName.add_member(:package_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PackageID', traits: {"smithy.api#enumValue" => "PackageID"}))
    DescribePackagesFilterName.add_member(:package_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PackageName', traits: {"smithy.api#enumValue" => "PackageName"}))
    DescribePackagesFilterName.add_member(:package_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PackageStatus', traits: {"smithy.api#enumValue" => "PackageStatus"}))
    DescribePackagesFilterName.add_member(:package_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PackageType', traits: {"smithy.api#enumValue" => "PackageType"}))
    DescribePackagesFilterName.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EngineVersion', traits: {"smithy.api#enumValue" => "EngineVersion"}))
    DescribePackagesFilterName.add_member(:package_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PackageOwner', traits: {"smithy.api#enumValue" => "PackageOwner"}))
    DescribePackagesFilterValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackagesFilterValue)
    DescribePackagesRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackagesFilterList, location_name: 'Filters'))
    DescribePackagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0}))
    DescribePackagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    DescribePackagesRequest.type = Types::DescribePackagesRequest
    DescribePackagesResponse.add_member(:package_details_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDetailsList, location_name: 'PackageDetailsList'))
    DescribePackagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    DescribePackagesResponse.type = Types::DescribePackagesResponse
    DescribeReservedInstanceOfferingsRequest.add_member(:reserved_instance_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: 'ReservedInstanceOfferingId', traits: {"smithy.api#httpQuery" => "offeringId"}))
    DescribeReservedInstanceOfferingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    DescribeReservedInstanceOfferingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    DescribeReservedInstanceOfferingsRequest.type = Types::DescribeReservedInstanceOfferingsRequest
    DescribeReservedInstanceOfferingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    DescribeReservedInstanceOfferingsResponse.add_member(:reserved_instance_offerings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedInstanceOfferingList, location_name: 'ReservedInstanceOfferings'))
    DescribeReservedInstanceOfferingsResponse.type = Types::DescribeReservedInstanceOfferingsResponse
    DescribeReservedInstancesRequest.add_member(:reserved_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: 'ReservedInstanceId', traits: {"smithy.api#httpQuery" => "reservationId"}))
    DescribeReservedInstancesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    DescribeReservedInstancesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    DescribeReservedInstancesRequest.type = Types::DescribeReservedInstancesRequest
    DescribeReservedInstancesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    DescribeReservedInstancesResponse.add_member(:reserved_instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedInstanceList, location_name: 'ReservedInstances'))
    DescribeReservedInstancesResponse.type = Types::DescribeReservedInstancesResponse
    DescribeVpcEndpointsRequest.add_member(:vpc_endpoint_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointIdList, location_name: 'VpcEndpointIds', traits: {"smithy.api#required" => {}}))
    DescribeVpcEndpointsRequest.type = Types::DescribeVpcEndpointsRequest
    DescribeVpcEndpointsResponse.add_member(:vpc_endpoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpoints, location_name: 'VpcEndpoints', traits: {"smithy.api#required" => {}}))
    DescribeVpcEndpointsResponse.add_member(:vpc_endpoint_errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointErrorList, location_name: 'VpcEndpointErrors', traits: {"smithy.api#required" => {}}))
    DescribeVpcEndpointsResponse.type = Types::DescribeVpcEndpointsResponse
    DirectQueryDataSource.add_member(:data_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceName, location_name: 'DataSourceName'))
    DirectQueryDataSource.add_member(:data_source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceType, location_name: 'DataSourceType'))
    DirectQueryDataSource.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceDescription, location_name: 'Description'))
    DirectQueryDataSource.add_member(:open_search_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryOpenSearchARNList, location_name: 'OpenSearchArns'))
    DirectQueryDataSource.add_member(:data_source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataSourceArn'))
    DirectQueryDataSource.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    DirectQueryDataSource.type = Types::DirectQueryDataSource
    DirectQueryDataSourceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSource)
    DirectQueryDataSourceType.add_member(:cloud_watch_log, Types::DirectQueryDataSourceType::CloudWatchLog, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchDirectQueryDataSource, location_name: 'CloudWatchLog'))
    DirectQueryDataSourceType.add_member(:security_lake, Types::DirectQueryDataSourceType::SecurityLake, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityLakeDirectQueryDataSource, location_name: 'SecurityLake'))
    DirectQueryDataSourceType.add_member(:unknown, Types::DirectQueryDataSourceType::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    DirectQueryDataSourceType.type = Types::DirectQueryDataSourceType
    DirectQueryOpenSearchARNList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN)
    DisabledOperationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    DisabledOperationException.type = Types::DisabledOperationException
    DissociatePackageRequest.add_member(:package_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: 'PackageID', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DissociatePackageRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DissociatePackageRequest.type = Types::DissociatePackageRequest
    DissociatePackageResponse.add_member(:domain_package_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainPackageDetails, location_name: 'DomainPackageDetails'))
    DissociatePackageResponse.type = Types::DissociatePackageResponse
    DissociatePackagesRequest.add_member(:package_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageIDList, location_name: 'PackageList', traits: {"smithy.api#required" => {}}))
    DissociatePackagesRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    DissociatePackagesRequest.type = Types::DissociatePackagesRequest
    DissociatePackagesResponse.add_member(:domain_package_details_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainPackageDetailsList, location_name: 'DomainPackageDetailsList'))
    DissociatePackagesResponse.type = Types::DissociatePackagesResponse
    DomainConfig.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionStatus, location_name: 'EngineVersion'))
    DomainConfig.add_member(:cluster_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterConfigStatus, location_name: 'ClusterConfig'))
    DomainConfig.add_member(:ebs_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EBSOptionsStatus, location_name: 'EBSOptions'))
    DomainConfig.add_member(:access_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPoliciesStatus, location_name: 'AccessPolicies'))
    DomainConfig.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddressTypeStatus, location_name: 'IPAddressType'))
    DomainConfig.add_member(:snapshot_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotOptionsStatus, location_name: 'SnapshotOptions'))
    DomainConfig.add_member(:vpc_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCDerivedInfoStatus, location_name: 'VPCOptions'))
    DomainConfig.add_member(:cognito_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoOptionsStatus, location_name: 'CognitoOptions'))
    DomainConfig.add_member(:encryption_at_rest_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAtRestOptionsStatus, location_name: 'EncryptionAtRestOptions'))
    DomainConfig.add_member(:node_to_node_encryption_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeToNodeEncryptionOptionsStatus, location_name: 'NodeToNodeEncryptionOptions'))
    DomainConfig.add_member(:advanced_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedOptionsStatus, location_name: 'AdvancedOptions'))
    DomainConfig.add_member(:log_publishing_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPublishingOptionsStatus, location_name: 'LogPublishingOptions'))
    DomainConfig.add_member(:domain_endpoint_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainEndpointOptionsStatus, location_name: 'DomainEndpointOptions'))
    DomainConfig.add_member(:advanced_security_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedSecurityOptionsStatus, location_name: 'AdvancedSecurityOptions'))
    DomainConfig.add_member(:identity_center_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterOptionsStatus, location_name: 'IdentityCenterOptions'))
    DomainConfig.add_member(:auto_tune_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneOptionsStatus, location_name: 'AutoTuneOptions'))
    DomainConfig.add_member(:change_progress_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressDetails, location_name: 'ChangeProgressDetails'))
    DomainConfig.add_member(:off_peak_window_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OffPeakWindowOptionsStatus, location_name: 'OffPeakWindowOptions'))
    DomainConfig.add_member(:software_update_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareUpdateOptionsStatus, location_name: 'SoftwareUpdateOptions'))
    DomainConfig.add_member(:modifying_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyingPropertiesList, location_name: 'ModifyingProperties'))
    DomainConfig.add_member(:aiml_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIMLOptionsStatus, location_name: 'AIMLOptions'))
    DomainConfig.type = Types::DomainConfig
    DomainEndpointOptions.add_member(:enforce_https, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnforceHTTPS'))
    DomainEndpointOptions.add_member(:tls_security_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TLSSecurityPolicy, location_name: 'TLSSecurityPolicy'))
    DomainEndpointOptions.add_member(:custom_endpoint_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'CustomEndpointEnabled'))
    DomainEndpointOptions.add_member(:custom_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameFqdn, location_name: 'CustomEndpoint'))
    DomainEndpointOptions.add_member(:custom_endpoint_certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'CustomEndpointCertificateArn'))
    DomainEndpointOptions.type = Types::DomainEndpointOptions
    DomainEndpointOptionsStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainEndpointOptions, location_name: 'Options', traits: {"smithy.api#required" => {}}))
    DomainEndpointOptionsStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    DomainEndpointOptionsStatus.type = Types::DomainEndpointOptionsStatus
    DomainHealth.add_member(:red, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Red', traits: {"smithy.api#enumValue" => "Red"}))
    DomainHealth.add_member(:yellow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Yellow', traits: {"smithy.api#enumValue" => "Yellow"}))
    DomainHealth.add_member(:green, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Green', traits: {"smithy.api#enumValue" => "Green"}))
    DomainHealth.add_member(:not_available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotAvailable', traits: {"smithy.api#enumValue" => "NotAvailable"}))
    DomainInfo.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName'))
    DomainInfo.add_member(:engine_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'EngineType'))
    DomainInfo.type = Types::DomainInfo
    DomainInfoList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInfo)
    DomainInformationContainer.add_member(:aws_domain_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSDomainInformation, location_name: 'AWSDomainInformation'))
    DomainInformationContainer.type = Types::DomainInformationContainer
    DomainMaintenanceDetails.add_member(:maintenance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'MaintenanceId'))
    DomainMaintenanceDetails.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName'))
    DomainMaintenanceDetails.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceType, location_name: 'Action'))
    DomainMaintenanceDetails.add_member(:node_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeId, location_name: 'NodeId'))
    DomainMaintenanceDetails.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceStatus, location_name: 'Status'))
    DomainMaintenanceDetails.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceStatusMessage, location_name: 'StatusMessage'))
    DomainMaintenanceDetails.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: 'CreatedAt'))
    DomainMaintenanceDetails.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: 'UpdatedAt'))
    DomainMaintenanceDetails.type = Types::DomainMaintenanceDetails
    DomainMaintenanceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainMaintenanceDetails)
    DomainNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName)
    DomainNodesStatus.add_member(:node_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeId, location_name: 'NodeId'))
    DomainNodesStatus.add_member(:node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeType, location_name: 'NodeType'))
    DomainNodesStatus.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: 'AvailabilityZone'))
    DomainNodesStatus.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchPartitionInstanceType, location_name: 'InstanceType'))
    DomainNodesStatus.add_member(:node_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeStatus, location_name: 'NodeStatus'))
    DomainNodesStatus.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeName, location_name: 'StorageType'))
    DomainNodesStatus.add_member(:storage_volume_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeType, location_name: 'StorageVolumeType'))
    DomainNodesStatus.add_member(:storage_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeSize, location_name: 'StorageSize'))
    DomainNodesStatus.type = Types::DomainNodesStatus
    DomainNodesStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNodesStatus)
    DomainPackageDetails.add_member(:package_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: 'PackageID'))
    DomainPackageDetails.add_member(:package_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'PackageName'))
    DomainPackageDetails.add_member(:package_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageType, location_name: 'PackageType'))
    DomainPackageDetails.add_member(:last_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdated, location_name: 'LastUpdated'))
    DomainPackageDetails.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName'))
    DomainPackageDetails.add_member(:domain_package_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainPackageStatus, location_name: 'DomainPackageStatus'))
    DomainPackageDetails.add_member(:package_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion, location_name: 'PackageVersion'))
    DomainPackageDetails.add_member(:prerequisite_package_id_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageIDList, location_name: 'PrerequisitePackageIDList'))
    DomainPackageDetails.add_member(:reference_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReferencePath, location_name: 'ReferencePath'))
    DomainPackageDetails.add_member(:error_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: 'ErrorDetails'))
    DomainPackageDetails.add_member(:association_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageAssociationConfiguration, location_name: 'AssociationConfiguration'))
    DomainPackageDetails.type = Types::DomainPackageDetails
    DomainPackageDetailsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainPackageDetails)
    DomainPackageStatus.add_member(:associating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSOCIATING', traits: {"smithy.api#enumValue" => "ASSOCIATING"}))
    DomainPackageStatus.add_member(:association_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSOCIATION_FAILED', traits: {"smithy.api#enumValue" => "ASSOCIATION_FAILED"}))
    DomainPackageStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DomainPackageStatus.add_member(:dissociating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISSOCIATING', traits: {"smithy.api#enumValue" => "DISSOCIATING"}))
    DomainPackageStatus.add_member(:dissociation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISSOCIATION_FAILED', traits: {"smithy.api#enumValue" => "DISSOCIATION_FAILED"}))
    DomainProcessingStatusType.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "Creating"}))
    DomainProcessingStatusType.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "Active"}))
    DomainProcessingStatusType.add_member(:modifying, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODIFYING', traits: {"smithy.api#enumValue" => "Modifying"}))
    DomainProcessingStatusType.add_member(:upgrading, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPGRADING', traits: {"smithy.api#enumValue" => "UpgradingEngineVersion"}))
    DomainProcessingStatusType.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UpdatingServiceSoftware"}))
    DomainProcessingStatusType.add_member(:isolated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ISOLATED', traits: {"smithy.api#enumValue" => "Isolated"}))
    DomainProcessingStatusType.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "Deleting"}))
    DomainState.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "Active"}))
    DomainState.add_member(:processing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Processing', traits: {"smithy.api#enumValue" => "Processing"}))
    DomainState.add_member(:not_available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotAvailable', traits: {"smithy.api#enumValue" => "NotAvailable"}))
    DomainStatus.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#required" => {}}))
    DomainStatus.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    DomainStatus.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ARN', traits: {"smithy.api#required" => {}}))
    DomainStatus.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Created'))
    DomainStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Deleted'))
    DomainStatus.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUrl, location_name: 'Endpoint'))
    DomainStatus.add_member(:endpoint_v2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUrl, location_name: 'EndpointV2'))
    DomainStatus.add_member(:endpoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointsMap, location_name: 'Endpoints'))
    DomainStatus.add_member(:domain_endpoint_v2_hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostedZoneId, location_name: 'DomainEndpointV2HostedZoneId'))
    DomainStatus.add_member(:processing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Processing'))
    DomainStatus.add_member(:upgrade_processing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UpgradeProcessing'))
    DomainStatus.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionString, location_name: 'EngineVersion'))
    DomainStatus.add_member(:cluster_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterConfig, location_name: 'ClusterConfig', traits: {"smithy.api#required" => {}}))
    DomainStatus.add_member(:ebs_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EBSOptions, location_name: 'EBSOptions'))
    DomainStatus.add_member(:access_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'AccessPolicies'))
    DomainStatus.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddressType, location_name: 'IPAddressType'))
    DomainStatus.add_member(:snapshot_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotOptions, location_name: 'SnapshotOptions'))
    DomainStatus.add_member(:vpc_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCDerivedInfo, location_name: 'VPCOptions'))
    DomainStatus.add_member(:cognito_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoOptions, location_name: 'CognitoOptions'))
    DomainStatus.add_member(:encryption_at_rest_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, location_name: 'EncryptionAtRestOptions'))
    DomainStatus.add_member(:node_to_node_encryption_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeToNodeEncryptionOptions, location_name: 'NodeToNodeEncryptionOptions'))
    DomainStatus.add_member(:advanced_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: 'AdvancedOptions'))
    DomainStatus.add_member(:log_publishing_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: 'LogPublishingOptions'))
    DomainStatus.add_member(:service_software_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSoftwareOptions, location_name: 'ServiceSoftwareOptions'))
    DomainStatus.add_member(:domain_endpoint_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainEndpointOptions, location_name: 'DomainEndpointOptions'))
    DomainStatus.add_member(:advanced_security_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedSecurityOptions, location_name: 'AdvancedSecurityOptions'))
    DomainStatus.add_member(:identity_center_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterOptions, location_name: 'IdentityCenterOptions'))
    DomainStatus.add_member(:auto_tune_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneOptionsOutput, location_name: 'AutoTuneOptions'))
    DomainStatus.add_member(:change_progress_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressDetails, location_name: 'ChangeProgressDetails'))
    DomainStatus.add_member(:off_peak_window_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OffPeakWindowOptions, location_name: 'OffPeakWindowOptions'))
    DomainStatus.add_member(:software_update_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareUpdateOptions, location_name: 'SoftwareUpdateOptions'))
    DomainStatus.add_member(:domain_processing_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainProcessingStatusType, location_name: 'DomainProcessingStatus'))
    DomainStatus.add_member(:modifying_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyingPropertiesList, location_name: 'ModifyingProperties'))
    DomainStatus.add_member(:aiml_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIMLOptionsOutput, location_name: 'AIMLOptions'))
    DomainStatus.type = Types::DomainStatus
    DomainStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainStatus)
    DryRunMode.add_member(:basic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Basic', traits: {"smithy.api#enumValue" => "Basic"}))
    DryRunMode.add_member(:verbose, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Verbose', traits: {"smithy.api#enumValue" => "Verbose"}))
    DryRunProgressStatus.add_member(:dry_run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: 'DryRunId', traits: {"smithy.api#required" => {}}))
    DryRunProgressStatus.add_member(:dry_run_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DryRunStatus', traits: {"smithy.api#required" => {}}))
    DryRunProgressStatus.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#required" => {}}))
    DryRunProgressStatus.add_member(:update_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UpdateDate', traits: {"smithy.api#required" => {}}))
    DryRunProgressStatus.add_member(:validation_failures, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationFailures, location_name: 'ValidationFailures'))
    DryRunProgressStatus.type = Types::DryRunProgressStatus
    DryRunResults.add_member(:deployment_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentType, location_name: 'DeploymentType'))
    DryRunResults.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    DryRunResults.type = Types::DryRunResults
    Duration.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DurationValue, location_name: 'Value'))
    Duration.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeUnit, location_name: 'Unit'))
    Duration.type = Types::Duration
    EBSOptions.add_member(:ebs_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EBSEnabled'))
    EBSOptions.add_member(:volume_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeType, location_name: 'VolumeType'))
    EBSOptions.add_member(:volume_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: 'VolumeSize'))
    EBSOptions.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: 'Iops'))
    EBSOptions.add_member(:throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: 'Throughput'))
    EBSOptions.type = Types::EBSOptions
    EBSOptionsStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EBSOptions, location_name: 'Options', traits: {"smithy.api#required" => {}}))
    EBSOptionsStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    EBSOptionsStatus.type = Types::EBSOptionsStatus
    EncryptionAtRestOptions.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    EncryptionAtRestOptions.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId'))
    EncryptionAtRestOptions.type = Types::EncryptionAtRestOptions
    EncryptionAtRestOptionsStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, location_name: 'Options', traits: {"smithy.api#required" => {}}))
    EncryptionAtRestOptionsStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    EncryptionAtRestOptionsStatus.type = Types::EncryptionAtRestOptionsStatus
    EndpointsMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    EndpointsMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUrl)
    EngineType.add_member(:open_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OpenSearch', traits: {"smithy.api#enumValue" => "OpenSearch"}))
    EngineType.add_member(:elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Elasticsearch', traits: {"smithy.api#enumValue" => "Elasticsearch"}))
    EnvironmentInfo.add_member(:availability_zone_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneInfoList, location_name: 'AvailabilityZoneInformation'))
    EnvironmentInfo.type = Types::EnvironmentInfo
    EnvironmentInfoList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentInfo)
    ErrorDetails.add_member(:error_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorType, location_name: 'ErrorType'))
    ErrorDetails.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage'))
    ErrorDetails.type = Types::ErrorDetails
    Filter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Name'))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValueStringList, location_name: 'Values'))
    Filter.type = Types::Filter
    FilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filter)
    GUIDList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GUID)
    GetApplicationRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationRequest.type = Types::GetApplicationRequest
    GetApplicationResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'id'))
    GetApplicationResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn'))
    GetApplicationResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'name'))
    GetApplicationResponse.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'endpoint'))
    GetApplicationResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: 'status'))
    GetApplicationResponse.add_member(:iam_identity_center_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamIdentityCenterOptions, location_name: 'iamIdentityCenterOptions'))
    GetApplicationResponse.add_member(:data_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSources, location_name: 'dataSources'))
    GetApplicationResponse.add_member(:app_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppConfigs, location_name: 'appConfigs'))
    GetApplicationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt'))
    GetApplicationResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt'))
    GetApplicationResponse.type = Types::GetApplicationResponse
    GetCompatibleVersionsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpQuery" => "domainName"}))
    GetCompatibleVersionsRequest.type = Types::GetCompatibleVersionsRequest
    GetCompatibleVersionsResponse.add_member(:compatible_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompatibleVersionsList, location_name: 'CompatibleVersions'))
    GetCompatibleVersionsResponse.type = Types::GetCompatibleVersionsResponse
    GetDataSourceRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSourceRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSourceRequest.type = Types::GetDataSourceRequest
    GetDataSourceResponse.add_member(:data_source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceType, location_name: 'DataSourceType'))
    GetDataSourceResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceName, location_name: 'Name'))
    GetDataSourceResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceDescription, location_name: 'Description'))
    GetDataSourceResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceStatus, location_name: 'Status'))
    GetDataSourceResponse.type = Types::GetDataSourceResponse
    GetDirectQueryDataSourceRequest.add_member(:data_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceName, location_name: 'DataSourceName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDirectQueryDataSourceRequest.type = Types::GetDirectQueryDataSourceRequest
    GetDirectQueryDataSourceResponse.add_member(:data_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceName, location_name: 'DataSourceName'))
    GetDirectQueryDataSourceResponse.add_member(:data_source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceType, location_name: 'DataSourceType'))
    GetDirectQueryDataSourceResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceDescription, location_name: 'Description'))
    GetDirectQueryDataSourceResponse.add_member(:open_search_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryOpenSearchARNList, location_name: 'OpenSearchArns'))
    GetDirectQueryDataSourceResponse.add_member(:data_source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataSourceArn'))
    GetDirectQueryDataSourceResponse.type = Types::GetDirectQueryDataSourceResponse
    GetDomainMaintenanceStatusRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDomainMaintenanceStatusRequest.add_member(:maintenance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'MaintenanceId', traits: {"smithy.api#httpQuery" => "maintenanceId", "smithy.api#required" => {}}))
    GetDomainMaintenanceStatusRequest.type = Types::GetDomainMaintenanceStatusRequest
    GetDomainMaintenanceStatusResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceStatus, location_name: 'Status'))
    GetDomainMaintenanceStatusResponse.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceStatusMessage, location_name: 'StatusMessage'))
    GetDomainMaintenanceStatusResponse.add_member(:node_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeId, location_name: 'NodeId'))
    GetDomainMaintenanceStatusResponse.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceType, location_name: 'Action'))
    GetDomainMaintenanceStatusResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: 'CreatedAt'))
    GetDomainMaintenanceStatusResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: 'UpdatedAt'))
    GetDomainMaintenanceStatusResponse.type = Types::GetDomainMaintenanceStatusResponse
    GetPackageVersionHistoryRequest.add_member(:package_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: 'PackageID', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPackageVersionHistoryRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    GetPackageVersionHistoryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetPackageVersionHistoryRequest.type = Types::GetPackageVersionHistoryRequest
    GetPackageVersionHistoryResponse.add_member(:package_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: 'PackageID'))
    GetPackageVersionHistoryResponse.add_member(:package_version_history_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionHistoryList, location_name: 'PackageVersionHistoryList'))
    GetPackageVersionHistoryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    GetPackageVersionHistoryResponse.type = Types::GetPackageVersionHistoryResponse
    GetUpgradeHistoryRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUpgradeHistoryRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    GetUpgradeHistoryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetUpgradeHistoryRequest.type = Types::GetUpgradeHistoryRequest
    GetUpgradeHistoryResponse.add_member(:upgrade_histories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeHistoryList, location_name: 'UpgradeHistories'))
    GetUpgradeHistoryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    GetUpgradeHistoryResponse.type = Types::GetUpgradeHistoryResponse
    GetUpgradeStatusRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUpgradeStatusRequest.type = Types::GetUpgradeStatusRequest
    GetUpgradeStatusResponse.add_member(:upgrade_step, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeStep, location_name: 'UpgradeStep'))
    GetUpgradeStatusResponse.add_member(:step_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeStatus, location_name: 'StepStatus'))
    GetUpgradeStatusResponse.add_member(:upgrade_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeName, location_name: 'UpgradeName'))
    GetUpgradeStatusResponse.type = Types::GetUpgradeStatusResponse
    IAMFederationOptionsInput.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    IAMFederationOptionsInput.add_member(:subject_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMFederationSubjectKey, location_name: 'SubjectKey'))
    IAMFederationOptionsInput.add_member(:roles_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMFederationRolesKey, location_name: 'RolesKey'))
    IAMFederationOptionsInput.type = Types::IAMFederationOptionsInput
    IAMFederationOptionsOutput.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    IAMFederationOptionsOutput.add_member(:subject_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMFederationSubjectKey, location_name: 'SubjectKey'))
    IAMFederationOptionsOutput.add_member(:roles_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMFederationRolesKey, location_name: 'RolesKey'))
    IAMFederationOptionsOutput.type = Types::IAMFederationOptionsOutput
    IPAddressType.add_member(:ipv4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4', traits: {"smithy.api#enumValue" => "ipv4"}))
    IPAddressType.add_member(:dualstack, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUALSTACK', traits: {"smithy.api#enumValue" => "dualstack"}))
    IPAddressTypeStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddressType, location_name: 'Options', traits: {"smithy.api#required" => {}}))
    IPAddressTypeStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    IPAddressTypeStatus.type = Types::IPAddressTypeStatus
    IamIdentityCenterOptions.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enabled'))
    IamIdentityCenterOptions.add_member(:iam_identity_center_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'iamIdentityCenterInstanceArn'))
    IamIdentityCenterOptions.add_member(:iam_role_for_identity_center_application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'iamRoleForIdentityCenterApplicationArn'))
    IamIdentityCenterOptions.add_member(:iam_identity_center_application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'iamIdentityCenterApplicationArn'))
    IamIdentityCenterOptions.type = Types::IamIdentityCenterOptions
    IamIdentityCenterOptionsInput.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enabled'))
    IamIdentityCenterOptionsInput.add_member(:iam_identity_center_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'iamIdentityCenterInstanceArn'))
    IamIdentityCenterOptionsInput.add_member(:iam_role_for_identity_center_application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'iamRoleForIdentityCenterApplicationArn'))
    IamIdentityCenterOptionsInput.type = Types::IamIdentityCenterOptionsInput
    IdentityCenterOptions.add_member(:enabled_api_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnabledAPIAccess'))
    IdentityCenterOptions.add_member(:identity_center_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterInstanceARN, location_name: 'IdentityCenterInstanceARN'))
    IdentityCenterOptions.add_member(:subject_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubjectKeyIdCOption, location_name: 'SubjectKey'))
    IdentityCenterOptions.add_member(:roles_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RolesKeyIdCOption, location_name: 'RolesKey'))
    IdentityCenterOptions.add_member(:identity_center_application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterApplicationARN, location_name: 'IdentityCenterApplicationARN'))
    IdentityCenterOptions.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: 'IdentityStoreId'))
    IdentityCenterOptions.type = Types::IdentityCenterOptions
    IdentityCenterOptionsInput.add_member(:enabled_api_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnabledAPIAccess'))
    IdentityCenterOptionsInput.add_member(:identity_center_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterInstanceARN, location_name: 'IdentityCenterInstanceARN'))
    IdentityCenterOptionsInput.add_member(:subject_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubjectKeyIdCOption, location_name: 'SubjectKey'))
    IdentityCenterOptionsInput.add_member(:roles_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RolesKeyIdCOption, location_name: 'RolesKey'))
    IdentityCenterOptionsInput.type = Types::IdentityCenterOptionsInput
    IdentityCenterOptionsStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterOptions, location_name: 'Options', traits: {"smithy.api#required" => {}}))
    IdentityCenterOptionsStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    IdentityCenterOptionsStatus.type = Types::IdentityCenterOptionsStatus
    InboundConnection.add_member(:local_domain_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInformationContainer, location_name: 'LocalDomainInfo'))
    InboundConnection.add_member(:remote_domain_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInformationContainer, location_name: 'RemoteDomainInfo'))
    InboundConnection.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'ConnectionId'))
    InboundConnection.add_member(:connection_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InboundConnectionStatus, location_name: 'ConnectionStatus'))
    InboundConnection.add_member(:connection_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionMode, location_name: 'ConnectionMode'))
    InboundConnection.type = Types::InboundConnection
    InboundConnectionStatus.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InboundConnectionStatusCode, location_name: 'StatusCode'))
    InboundConnectionStatus.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionStatusMessage, location_name: 'Message'))
    InboundConnectionStatus.type = Types::InboundConnectionStatus
    InboundConnectionStatusCode.add_member(:pending_acceptance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_ACCEPTANCE', traits: {"smithy.api#enumValue" => "PENDING_ACCEPTANCE"}))
    InboundConnectionStatusCode.add_member(:approved, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPROVED', traits: {"smithy.api#enumValue" => "APPROVED"}))
    InboundConnectionStatusCode.add_member(:provisioning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROVISIONING', traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    InboundConnectionStatusCode.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    InboundConnectionStatusCode.add_member(:rejecting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTING', traits: {"smithy.api#enumValue" => "REJECTING"}))
    InboundConnectionStatusCode.add_member(:rejected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "REJECTED"}))
    InboundConnectionStatusCode.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    InboundConnectionStatusCode.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    InboundConnections.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InboundConnection)
    InitiatedBy.add_member(:customer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER', traits: {"smithy.api#enumValue" => "CUSTOMER"}))
    InitiatedBy.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE', traits: {"smithy.api#enumValue" => "SERVICE"}))
    InstanceCountLimits.add_member(:minimum_instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MinimumInstanceCount, location_name: 'MinimumInstanceCount', traits: {"smithy.api#default" => 0}))
    InstanceCountLimits.add_member(:maximum_instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumInstanceCount, location_name: 'MaximumInstanceCount', traits: {"smithy.api#default" => 0}))
    InstanceCountLimits.type = Types::InstanceCountLimits
    InstanceLimits.add_member(:instance_count_limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceCountLimits, location_name: 'InstanceCountLimits'))
    InstanceLimits.type = Types::InstanceLimits
    InstanceRoleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceRole)
    InstanceTypeDetails.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchPartitionInstanceType, location_name: 'InstanceType'))
    InstanceTypeDetails.add_member(:encryption_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EncryptionEnabled'))
    InstanceTypeDetails.add_member(:cognito_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'CognitoEnabled'))
    InstanceTypeDetails.add_member(:app_logs_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AppLogsEnabled'))
    InstanceTypeDetails.add_member(:advanced_security_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AdvancedSecurityEnabled'))
    InstanceTypeDetails.add_member(:warm_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'WarmEnabled'))
    InstanceTypeDetails.add_member(:instance_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceRoleList, location_name: 'InstanceRole'))
    InstanceTypeDetails.add_member(:availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneList, location_name: 'AvailabilityZones'))
    InstanceTypeDetails.type = Types::InstanceTypeDetails
    InstanceTypeDetailsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTypeDetails)
    InternalException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InternalException.type = Types::InternalException
    InvalidPaginationTokenException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidPaginationTokenException.type = Types::InvalidPaginationTokenException
    InvalidTypeException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidTypeException.type = Types::InvalidTypeException
    Issues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Issue)
    JWTOptionsInput.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    JWTOptionsInput.add_member(:subject_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubjectKey, location_name: 'SubjectKey'))
    JWTOptionsInput.add_member(:roles_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RolesKey, location_name: 'RolesKey'))
    JWTOptionsInput.add_member(:public_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PublicKey'))
    JWTOptionsInput.type = Types::JWTOptionsInput
    JWTOptionsOutput.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    JWTOptionsOutput.add_member(:subject_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubjectKey'))
    JWTOptionsOutput.add_member(:roles_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RolesKey'))
    JWTOptionsOutput.add_member(:public_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PublicKey'))
    JWTOptionsOutput.type = Types::JWTOptionsOutput
    KeyStoreAccessOption.add_member(:key_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'KeyAccessRoleArn'))
    KeyStoreAccessOption.add_member(:key_store_access_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'KeyStoreAccessEnabled', traits: {"smithy.api#required" => {}}))
    KeyStoreAccessOption.type = Types::KeyStoreAccessOption
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    LimitValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitValue)
    Limits.add_member(:storage_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeList, location_name: 'StorageTypes'))
    Limits.add_member(:instance_limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceLimits, location_name: 'InstanceLimits'))
    Limits.add_member(:additional_limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalLimitList, location_name: 'AdditionalLimits'))
    Limits.type = Types::Limits
    LimitsByRole.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceRole)
    LimitsByRole.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Limits)
    ListApplicationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListApplicationsRequest.add_member(:statuses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationStatuses, location_name: 'statuses', traits: {"smithy.api#httpQuery" => "statuses"}))
    ListApplicationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListApplicationsRequest.type = Types::ListApplicationsRequest
    ListApplicationsResponse.add_member(:application_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSummaries, location_name: 'ApplicationSummaries'))
    ListApplicationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListApplicationsResponse.type = Types::ListApplicationsResponse
    ListDataSourcesRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataSourcesRequest.type = Types::ListDataSourcesRequest
    ListDataSourcesResponse.add_member(:data_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceList, location_name: 'DataSources'))
    ListDataSourcesResponse.type = Types::ListDataSourcesResponse
    ListDirectQueryDataSourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nexttoken"}))
    ListDirectQueryDataSourcesRequest.type = Types::ListDirectQueryDataSourcesRequest
    ListDirectQueryDataSourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListDirectQueryDataSourcesResponse.add_member(:direct_query_data_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceList, location_name: 'DirectQueryDataSources'))
    ListDirectQueryDataSourcesResponse.type = Types::ListDirectQueryDataSourcesResponse
    ListDomainMaintenancesRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDomainMaintenancesRequest.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceType, location_name: 'Action', traits: {"smithy.api#httpQuery" => "action"}))
    ListDomainMaintenancesRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceStatus, location_name: 'Status', traits: {"smithy.api#httpQuery" => "status"}))
    ListDomainMaintenancesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListDomainMaintenancesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDomainMaintenancesRequest.type = Types::ListDomainMaintenancesRequest
    ListDomainMaintenancesResponse.add_member(:domain_maintenances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainMaintenanceList, location_name: 'DomainMaintenances'))
    ListDomainMaintenancesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListDomainMaintenancesResponse.type = Types::ListDomainMaintenancesResponse
    ListDomainNamesRequest.add_member(:engine_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'EngineType', traits: {"smithy.api#httpQuery" => "engineType"}))
    ListDomainNamesRequest.type = Types::ListDomainNamesRequest
    ListDomainNamesResponse.add_member(:domain_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInfoList, location_name: 'DomainNames'))
    ListDomainNamesResponse.type = Types::ListDomainNamesResponse
    ListDomainsForPackageRequest.add_member(:package_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: 'PackageID', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDomainsForPackageRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListDomainsForPackageRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDomainsForPackageRequest.type = Types::ListDomainsForPackageRequest
    ListDomainsForPackageResponse.add_member(:domain_package_details_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainPackageDetailsList, location_name: 'DomainPackageDetailsList'))
    ListDomainsForPackageResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListDomainsForPackageResponse.type = Types::ListDomainsForPackageResponse
    ListInstanceTypeDetailsRequest.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionString, location_name: 'EngineVersion', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListInstanceTypeDetailsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpQuery" => "domainName"}))
    ListInstanceTypeDetailsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListInstanceTypeDetailsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListInstanceTypeDetailsRequest.add_member(:retrieve_a_zs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RetrieveAZs', traits: {"smithy.api#httpQuery" => "retrieveAZs"}))
    ListInstanceTypeDetailsRequest.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTypeString, location_name: 'InstanceType', traits: {"smithy.api#httpQuery" => "instanceType"}))
    ListInstanceTypeDetailsRequest.type = Types::ListInstanceTypeDetailsRequest
    ListInstanceTypeDetailsResponse.add_member(:instance_type_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTypeDetailsList, location_name: 'InstanceTypeDetails'))
    ListInstanceTypeDetailsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListInstanceTypeDetailsResponse.type = Types::ListInstanceTypeDetailsResponse
    ListPackagesForDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPackagesForDomainRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListPackagesForDomainRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPackagesForDomainRequest.type = Types::ListPackagesForDomainRequest
    ListPackagesForDomainResponse.add_member(:domain_package_details_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainPackageDetailsList, location_name: 'DomainPackageDetailsList'))
    ListPackagesForDomainResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListPackagesForDomainResponse.type = Types::ListPackagesForDomainResponse
    ListScheduledActionsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListScheduledActionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListScheduledActionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListScheduledActionsRequest.type = Types::ListScheduledActionsRequest
    ListScheduledActionsResponse.add_member(:scheduled_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionsList, location_name: 'ScheduledActions'))
    ListScheduledActionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListScheduledActionsResponse.type = Types::ListScheduledActionsResponse
    ListTagsRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ARN', traits: {"smithy.api#httpQuery" => "arn", "smithy.api#required" => {}}))
    ListTagsRequest.type = Types::ListTagsRequest
    ListTagsResponse.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    ListTagsResponse.type = Types::ListTagsResponse
    ListVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListVersionsRequest.type = Types::ListVersionsRequest
    ListVersionsResponse.add_member(:versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionList, location_name: 'Versions'))
    ListVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListVersionsResponse.type = Types::ListVersionsResponse
    ListVpcEndpointAccessRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListVpcEndpointAccessRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListVpcEndpointAccessRequest.type = Types::ListVpcEndpointAccessRequest
    ListVpcEndpointAccessResponse.add_member(:authorized_principal_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizedPrincipalList, location_name: 'AuthorizedPrincipalList', traits: {"smithy.api#required" => {}}))
    ListVpcEndpointAccessResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#required" => {}}))
    ListVpcEndpointAccessResponse.type = Types::ListVpcEndpointAccessResponse
    ListVpcEndpointsForDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListVpcEndpointsForDomainRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListVpcEndpointsForDomainRequest.type = Types::ListVpcEndpointsForDomainRequest
    ListVpcEndpointsForDomainResponse.add_member(:vpc_endpoint_summary_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointSummaryList, location_name: 'VpcEndpointSummaryList', traits: {"smithy.api#required" => {}}))
    ListVpcEndpointsForDomainResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#required" => {}}))
    ListVpcEndpointsForDomainResponse.type = Types::ListVpcEndpointsForDomainResponse
    ListVpcEndpointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListVpcEndpointsRequest.type = Types::ListVpcEndpointsRequest
    ListVpcEndpointsResponse.add_member(:vpc_endpoint_summary_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointSummaryList, location_name: 'VpcEndpointSummaryList', traits: {"smithy.api#required" => {}}))
    ListVpcEndpointsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#required" => {}}))
    ListVpcEndpointsResponse.type = Types::ListVpcEndpointsResponse
    LogPublishingOption.add_member(:cloud_watch_logs_log_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsLogGroupArn, location_name: 'CloudWatchLogsLogGroupArn'))
    LogPublishingOption.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    LogPublishingOption.type = Types::LogPublishingOption
    LogPublishingOptions.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogType)
    LogPublishingOptions.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPublishingOption)
    LogPublishingOptionsStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: 'Options'))
    LogPublishingOptionsStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status'))
    LogPublishingOptionsStatus.type = Types::LogPublishingOptionsStatus
    LogType.add_member(:index_slow_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INDEX_SLOW_LOGS', traits: {"smithy.api#enumValue" => "INDEX_SLOW_LOGS"}))
    LogType.add_member(:search_slow_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEARCH_SLOW_LOGS', traits: {"smithy.api#enumValue" => "SEARCH_SLOW_LOGS"}))
    LogType.add_member(:es_application_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ES_APPLICATION_LOGS', traits: {"smithy.api#enumValue" => "ES_APPLICATION_LOGS"}))
    LogType.add_member(:audit_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUDIT_LOGS', traits: {"smithy.api#enumValue" => "AUDIT_LOGS"}))
    MaintenanceStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    MaintenanceStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    MaintenanceStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    MaintenanceStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    MaintenanceStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMED_OUT', traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    MaintenanceType.add_member(:reboot_node, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REBOOT_NODE', traits: {"smithy.api#enumValue" => "REBOOT_NODE"}))
    MaintenanceType.add_member(:restart_search_process, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTART_SEARCH_PROCESS', traits: {"smithy.api#enumValue" => "RESTART_SEARCH_PROCESS"}))
    MaintenanceType.add_member(:restart_dashboard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTART_DASHBOARD', traits: {"smithy.api#enumValue" => "RESTART_DASHBOARD"}))
    MasterNodeStatus.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Available', traits: {"smithy.api#enumValue" => "Available"}))
    MasterNodeStatus.add_member(:un_available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UnAvailable', traits: {"smithy.api#enumValue" => "UnAvailable"}))
    MasterUserOptions.add_member(:master_user_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'MasterUserARN'))
    MasterUserOptions.add_member(:master_user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: 'MasterUserName'))
    MasterUserOptions.add_member(:master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Password, location_name: 'MasterUserPassword'))
    MasterUserOptions.type = Types::MasterUserOptions
    ModifyingProperties.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    ModifyingProperties.add_member(:active_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActiveValue'))
    ModifyingProperties.add_member(:pending_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PendingValue'))
    ModifyingProperties.add_member(:value_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyValueType, location_name: 'ValueType'))
    ModifyingProperties.type = Types::ModifyingProperties
    ModifyingPropertiesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyingProperties)
    NaturalLanguageQueryGenerationCurrentState.add_member(:not_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotEnabled', traits: {"smithy.api#enumValue" => "NOT_ENABLED"}))
    NaturalLanguageQueryGenerationCurrentState.add_member(:enable_complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EnableComplete', traits: {"smithy.api#enumValue" => "ENABLE_COMPLETE"}))
    NaturalLanguageQueryGenerationCurrentState.add_member(:enable_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EnableInProgress', traits: {"smithy.api#enumValue" => "ENABLE_IN_PROGRESS"}))
    NaturalLanguageQueryGenerationCurrentState.add_member(:enable_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EnableFailed', traits: {"smithy.api#enumValue" => "ENABLE_FAILED"}))
    NaturalLanguageQueryGenerationCurrentState.add_member(:disable_complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DisableComplete', traits: {"smithy.api#enumValue" => "DISABLE_COMPLETE"}))
    NaturalLanguageQueryGenerationCurrentState.add_member(:disable_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DisableInProgress', traits: {"smithy.api#enumValue" => "DISABLE_IN_PROGRESS"}))
    NaturalLanguageQueryGenerationCurrentState.add_member(:disable_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DisableFailed', traits: {"smithy.api#enumValue" => "DISABLE_FAILED"}))
    NaturalLanguageQueryGenerationDesiredState.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Enabled', traits: {"smithy.api#enumValue" => "ENABLED"}))
    NaturalLanguageQueryGenerationDesiredState.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Disabled', traits: {"smithy.api#enumValue" => "DISABLED"}))
    NaturalLanguageQueryGenerationOptionsInput.add_member(:desired_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NaturalLanguageQueryGenerationDesiredState, location_name: 'DesiredState'))
    NaturalLanguageQueryGenerationOptionsInput.type = Types::NaturalLanguageQueryGenerationOptionsInput
    NaturalLanguageQueryGenerationOptionsOutput.add_member(:desired_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NaturalLanguageQueryGenerationDesiredState, location_name: 'DesiredState'))
    NaturalLanguageQueryGenerationOptionsOutput.add_member(:current_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NaturalLanguageQueryGenerationCurrentState, location_name: 'CurrentState'))
    NaturalLanguageQueryGenerationOptionsOutput.type = Types::NaturalLanguageQueryGenerationOptionsOutput
    NodeConfig.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    NodeConfig.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchPartitionInstanceType, location_name: 'Type'))
    NodeConfig.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: 'Count'))
    NodeConfig.type = Types::NodeConfig
    NodeOption.add_member(:node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeOptionsNodeType, location_name: 'NodeType'))
    NodeOption.add_member(:node_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeConfig, location_name: 'NodeConfig'))
    NodeOption.type = Types::NodeOption
    NodeOptionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeOption)
    NodeOptionsNodeType.add_member(:coordinator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COORDINATOR', traits: {"smithy.api#enumValue" => "coordinator"}))
    NodeStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "Active"}))
    NodeStatus.add_member(:stand_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'StandBy', traits: {"smithy.api#enumValue" => "StandBy"}))
    NodeStatus.add_member(:not_available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotAvailable', traits: {"smithy.api#enumValue" => "NotAvailable"}))
    NodeToNodeEncryptionOptions.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    NodeToNodeEncryptionOptions.type = Types::NodeToNodeEncryptionOptions
    NodeToNodeEncryptionOptionsStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeToNodeEncryptionOptions, location_name: 'Options', traits: {"smithy.api#required" => {}}))
    NodeToNodeEncryptionOptionsStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    NodeToNodeEncryptionOptionsStatus.type = Types::NodeToNodeEncryptionOptionsStatus
    NodeType.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Data', traits: {"smithy.api#enumValue" => "Data"}))
    NodeType.add_member(:ultrawarm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Ultrawarm', traits: {"smithy.api#enumValue" => "Ultrawarm"}))
    NodeType.add_member(:master, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Master', traits: {"smithy.api#enumValue" => "Master"}))
    OffPeakWindow.add_member(:window_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WindowStartTime, location_name: 'WindowStartTime'))
    OffPeakWindow.type = Types::OffPeakWindow
    OffPeakWindowOptions.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    OffPeakWindowOptions.add_member(:off_peak_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OffPeakWindow, location_name: 'OffPeakWindow'))
    OffPeakWindowOptions.type = Types::OffPeakWindowOptions
    OffPeakWindowOptionsStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OffPeakWindowOptions, location_name: 'Options'))
    OffPeakWindowOptionsStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status'))
    OffPeakWindowOptionsStatus.type = Types::OffPeakWindowOptionsStatus
    OpenSearchPartitionInstanceType.add_member(:m3_medium_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm3_medium_search', traits: {"smithy.api#enumValue" => "m3.medium.search"}))
    OpenSearchPartitionInstanceType.add_member(:m3_large_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm3_large_search', traits: {"smithy.api#enumValue" => "m3.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:m3_xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm3_xlarge_search', traits: {"smithy.api#enumValue" => "m3.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m3_2xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm3_2xlarge_search', traits: {"smithy.api#enumValue" => "m3.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m4_large_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm4_large_search', traits: {"smithy.api#enumValue" => "m4.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:m4_xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm4_xlarge_search', traits: {"smithy.api#enumValue" => "m4.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m4_2xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm4_2xlarge_search', traits: {"smithy.api#enumValue" => "m4.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m4_4xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm4_4xlarge_search', traits: {"smithy.api#enumValue" => "m4.4xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m4_10xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm4_10xlarge_search', traits: {"smithy.api#enumValue" => "m4.10xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m5_large_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm5_large_search', traits: {"smithy.api#enumValue" => "m5.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:m5_xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm5_xlarge_search', traits: {"smithy.api#enumValue" => "m5.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m5_2xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm5_2xlarge_search', traits: {"smithy.api#enumValue" => "m5.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m5_4xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm5_4xlarge_search', traits: {"smithy.api#enumValue" => "m5.4xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m5_12xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm5_12xlarge_search', traits: {"smithy.api#enumValue" => "m5.12xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m5_24xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm5_24xlarge_search', traits: {"smithy.api#enumValue" => "m5.24xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r5_large_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r5_large_search', traits: {"smithy.api#enumValue" => "r5.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:r5_xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r5_xlarge_search', traits: {"smithy.api#enumValue" => "r5.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r5_2xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r5_2xlarge_search', traits: {"smithy.api#enumValue" => "r5.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r5_4xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r5_4xlarge_search', traits: {"smithy.api#enumValue" => "r5.4xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r5_12xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r5_12xlarge_search', traits: {"smithy.api#enumValue" => "r5.12xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r5_24xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r5_24xlarge_search', traits: {"smithy.api#enumValue" => "r5.24xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:c5_large_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c5_large_search', traits: {"smithy.api#enumValue" => "c5.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:c5_xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c5_xlarge_search', traits: {"smithy.api#enumValue" => "c5.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:c5_2xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c5_2xlarge_search', traits: {"smithy.api#enumValue" => "c5.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:c5_4xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c5_4xlarge_search', traits: {"smithy.api#enumValue" => "c5.4xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:c5_9xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c5_9xlarge_search', traits: {"smithy.api#enumValue" => "c5.9xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:c5_18xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c5_18xlarge_search', traits: {"smithy.api#enumValue" => "c5.18xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:t3_nano_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 't3_nano_search', traits: {"smithy.api#enumValue" => "t3.nano.search"}))
    OpenSearchPartitionInstanceType.add_member(:t3_micro_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 't3_micro_search', traits: {"smithy.api#enumValue" => "t3.micro.search"}))
    OpenSearchPartitionInstanceType.add_member(:t3_small_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 't3_small_search', traits: {"smithy.api#enumValue" => "t3.small.search"}))
    OpenSearchPartitionInstanceType.add_member(:t3_medium_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 't3_medium_search', traits: {"smithy.api#enumValue" => "t3.medium.search"}))
    OpenSearchPartitionInstanceType.add_member(:t3_large_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 't3_large_search', traits: {"smithy.api#enumValue" => "t3.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:t3_xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 't3_xlarge_search', traits: {"smithy.api#enumValue" => "t3.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:t3_2xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 't3_2xlarge_search', traits: {"smithy.api#enumValue" => "t3.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:or1_medium_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'or1_medium_search', traits: {"smithy.api#enumValue" => "or1.medium.search"}))
    OpenSearchPartitionInstanceType.add_member(:or1_large_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'or1_large_search', traits: {"smithy.api#enumValue" => "or1.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:or1_xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'or1_xlarge_search', traits: {"smithy.api#enumValue" => "or1.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:or1_2xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'or1_2xlarge_search', traits: {"smithy.api#enumValue" => "or1.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:or1_4xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'or1_4xlarge_search', traits: {"smithy.api#enumValue" => "or1.4xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:or1_8xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'or1_8xlarge_search', traits: {"smithy.api#enumValue" => "or1.8xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:or1_12xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'or1_12xlarge_search', traits: {"smithy.api#enumValue" => "or1.12xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:or1_16xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'or1_16xlarge_search', traits: {"smithy.api#enumValue" => "or1.16xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:ultrawarm1_medium_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ultrawarm1_medium_search', traits: {"smithy.api#enumValue" => "ultrawarm1.medium.search"}))
    OpenSearchPartitionInstanceType.add_member(:ultrawarm1_large_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ultrawarm1_large_search', traits: {"smithy.api#enumValue" => "ultrawarm1.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:ultrawarm1_xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ultrawarm1_xlarge_search', traits: {"smithy.api#enumValue" => "ultrawarm1.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:t2_micro_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 't2_micro_search', traits: {"smithy.api#enumValue" => "t2.micro.search"}))
    OpenSearchPartitionInstanceType.add_member(:t2_small_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 't2_small_search', traits: {"smithy.api#enumValue" => "t2.small.search"}))
    OpenSearchPartitionInstanceType.add_member(:t2_medium_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 't2_medium_search', traits: {"smithy.api#enumValue" => "t2.medium.search"}))
    OpenSearchPartitionInstanceType.add_member(:r3_large_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r3_large_search', traits: {"smithy.api#enumValue" => "r3.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:r3_xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r3_xlarge_search', traits: {"smithy.api#enumValue" => "r3.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r3_2xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r3_2xlarge_search', traits: {"smithy.api#enumValue" => "r3.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r3_4xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r3_4xlarge_search', traits: {"smithy.api#enumValue" => "r3.4xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r3_8xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r3_8xlarge_search', traits: {"smithy.api#enumValue" => "r3.8xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:i2_xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'i2_xlarge_search', traits: {"smithy.api#enumValue" => "i2.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:i2_2xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'i2_2xlarge_search', traits: {"smithy.api#enumValue" => "i2.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:d2_xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'd2_xlarge_search', traits: {"smithy.api#enumValue" => "d2.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:d2_2xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'd2_2xlarge_search', traits: {"smithy.api#enumValue" => "d2.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:d2_4xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'd2_4xlarge_search', traits: {"smithy.api#enumValue" => "d2.4xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:d2_8xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'd2_8xlarge_search', traits: {"smithy.api#enumValue" => "d2.8xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:c4_large_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c4_large_search', traits: {"smithy.api#enumValue" => "c4.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:c4_xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c4_xlarge_search', traits: {"smithy.api#enumValue" => "c4.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:c4_2xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c4_2xlarge_search', traits: {"smithy.api#enumValue" => "c4.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:c4_4xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c4_4xlarge_search', traits: {"smithy.api#enumValue" => "c4.4xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:c4_8xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c4_8xlarge_search', traits: {"smithy.api#enumValue" => "c4.8xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r4_large_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r4_large_search', traits: {"smithy.api#enumValue" => "r4.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:r4_xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r4_xlarge_search', traits: {"smithy.api#enumValue" => "r4.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r4_2xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r4_2xlarge_search', traits: {"smithy.api#enumValue" => "r4.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r4_4xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r4_4xlarge_search', traits: {"smithy.api#enumValue" => "r4.4xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r4_8xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r4_8xlarge_search', traits: {"smithy.api#enumValue" => "r4.8xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r4_16xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r4_16xlarge_search', traits: {"smithy.api#enumValue" => "r4.16xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:i3_large_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'i3_large_search', traits: {"smithy.api#enumValue" => "i3.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:i3_xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'i3_xlarge_search', traits: {"smithy.api#enumValue" => "i3.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:i3_2xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'i3_2xlarge_search', traits: {"smithy.api#enumValue" => "i3.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:i3_4xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'i3_4xlarge_search', traits: {"smithy.api#enumValue" => "i3.4xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:i3_8xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'i3_8xlarge_search', traits: {"smithy.api#enumValue" => "i3.8xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:i3_16xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'i3_16xlarge_search', traits: {"smithy.api#enumValue" => "i3.16xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r6g_large_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r6g_large_search', traits: {"smithy.api#enumValue" => "r6g.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:r6g_xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r6g_xlarge_search', traits: {"smithy.api#enumValue" => "r6g.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r6g_2xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r6g_2xlarge_search', traits: {"smithy.api#enumValue" => "r6g.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r6g_4xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r6g_4xlarge_search', traits: {"smithy.api#enumValue" => "r6g.4xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r6g_8xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r6g_8xlarge_search', traits: {"smithy.api#enumValue" => "r6g.8xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r6g_12xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r6g_12xlarge_search', traits: {"smithy.api#enumValue" => "r6g.12xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m6g_large_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm6g_large_search', traits: {"smithy.api#enumValue" => "m6g.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:m6g_xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm6g_xlarge_search', traits: {"smithy.api#enumValue" => "m6g.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m6g_2xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm6g_2xlarge_search', traits: {"smithy.api#enumValue" => "m6g.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m6g_4xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm6g_4xlarge_search', traits: {"smithy.api#enumValue" => "m6g.4xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m6g_8xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm6g_8xlarge_search', traits: {"smithy.api#enumValue" => "m6g.8xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:m6g_12xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'm6g_12xlarge_search', traits: {"smithy.api#enumValue" => "m6g.12xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:c6g_large_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c6g_large_search', traits: {"smithy.api#enumValue" => "c6g.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:c6g_xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c6g_xlarge_search', traits: {"smithy.api#enumValue" => "c6g.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:c6g_2xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c6g_2xlarge_search', traits: {"smithy.api#enumValue" => "c6g.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:c6g_4xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c6g_4xlarge_search', traits: {"smithy.api#enumValue" => "c6g.4xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:c6g_8xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c6g_8xlarge_search', traits: {"smithy.api#enumValue" => "c6g.8xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:c6g_12xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'c6g_12xlarge_search', traits: {"smithy.api#enumValue" => "c6g.12xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r6gd_large_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r6gd_large_search', traits: {"smithy.api#enumValue" => "r6gd.large.search"}))
    OpenSearchPartitionInstanceType.add_member(:r6gd_xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r6gd_xlarge_search', traits: {"smithy.api#enumValue" => "r6gd.xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r6gd_2xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r6gd_2xlarge_search', traits: {"smithy.api#enumValue" => "r6gd.2xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r6gd_4xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r6gd_4xlarge_search', traits: {"smithy.api#enumValue" => "r6gd.4xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r6gd_8xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r6gd_8xlarge_search', traits: {"smithy.api#enumValue" => "r6gd.8xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r6gd_12xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r6gd_12xlarge_search', traits: {"smithy.api#enumValue" => "r6gd.12xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:r6gd_16xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'r6gd_16xlarge_search', traits: {"smithy.api#enumValue" => "r6gd.16xlarge.search"}))
    OpenSearchPartitionInstanceType.add_member(:t4g_small_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 't4g_small_search', traits: {"smithy.api#enumValue" => "t4g.small.search"}))
    OpenSearchPartitionInstanceType.add_member(:t4g_medium_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 't4g_medium_search', traits: {"smithy.api#enumValue" => "t4g.medium.search"}))
    OpenSearchWarmPartitionInstanceType.add_member(:ultrawarm1_medium_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ultrawarm1_medium_search', traits: {"smithy.api#enumValue" => "ultrawarm1.medium.search"}))
    OpenSearchWarmPartitionInstanceType.add_member(:ultrawarm1_large_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ultrawarm1_large_search', traits: {"smithy.api#enumValue" => "ultrawarm1.large.search"}))
    OpenSearchWarmPartitionInstanceType.add_member(:ultrawarm1_xlarge_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ultrawarm1_xlarge_search', traits: {"smithy.api#enumValue" => "ultrawarm1.xlarge.search"}))
    OptionState.add_member(:requires_index_documents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RequiresIndexDocuments', traits: {"smithy.api#enumValue" => "RequiresIndexDocuments"}))
    OptionState.add_member(:processing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Processing', traits: {"smithy.api#enumValue" => "Processing"}))
    OptionState.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "Active"}))
    OptionStatus.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: 'CreationDate', traits: {"smithy.api#required" => {}}))
    OptionStatus.add_member(:update_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: 'UpdateDate', traits: {"smithy.api#required" => {}}))
    OptionStatus.add_member(:update_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UIntValue, location_name: 'UpdateVersion', traits: {"smithy.api#default" => 0}))
    OptionStatus.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionState, location_name: 'State', traits: {"smithy.api#required" => {}}))
    OptionStatus.add_member(:pending_deletion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'PendingDeletion'))
    OptionStatus.type = Types::OptionStatus
    OutboundConnection.add_member(:local_domain_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInformationContainer, location_name: 'LocalDomainInfo'))
    OutboundConnection.add_member(:remote_domain_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInformationContainer, location_name: 'RemoteDomainInfo'))
    OutboundConnection.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'ConnectionId'))
    OutboundConnection.add_member(:connection_alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAlias, location_name: 'ConnectionAlias'))
    OutboundConnection.add_member(:connection_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundConnectionStatus, location_name: 'ConnectionStatus'))
    OutboundConnection.add_member(:connection_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionMode, location_name: 'ConnectionMode'))
    OutboundConnection.add_member(:connection_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionProperties, location_name: 'ConnectionProperties'))
    OutboundConnection.type = Types::OutboundConnection
    OutboundConnectionStatus.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundConnectionStatusCode, location_name: 'StatusCode'))
    OutboundConnectionStatus.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionStatusMessage, location_name: 'Message'))
    OutboundConnectionStatus.type = Types::OutboundConnectionStatus
    OutboundConnectionStatusCode.add_member(:validating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATING', traits: {"smithy.api#enumValue" => "VALIDATING"}))
    OutboundConnectionStatusCode.add_member(:validation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "VALIDATION_FAILED"}))
    OutboundConnectionStatusCode.add_member(:pending_acceptance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_ACCEPTANCE', traits: {"smithy.api#enumValue" => "PENDING_ACCEPTANCE"}))
    OutboundConnectionStatusCode.add_member(:approved, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPROVED', traits: {"smithy.api#enumValue" => "APPROVED"}))
    OutboundConnectionStatusCode.add_member(:provisioning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROVISIONING', traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    OutboundConnectionStatusCode.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    OutboundConnectionStatusCode.add_member(:rejecting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTING', traits: {"smithy.api#enumValue" => "REJECTING"}))
    OutboundConnectionStatusCode.add_member(:rejected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "REJECTED"}))
    OutboundConnectionStatusCode.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    OutboundConnectionStatusCode.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    OutboundConnections.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundConnection)
    OverallChangeStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    OverallChangeStatus.add_member(:processing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESSING', traits: {"smithy.api#enumValue" => "PROCESSING"}))
    OverallChangeStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    OverallChangeStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    PackageAssociationConfiguration.add_member(:key_store_access_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyStoreAccessOption, location_name: 'KeyStoreAccessOption'))
    PackageAssociationConfiguration.type = Types::PackageAssociationConfiguration
    PackageConfiguration.add_member(:license_requirement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequirementLevel, location_name: 'LicenseRequirement', traits: {"smithy.api#required" => {}}))
    PackageConfiguration.add_member(:license_filepath, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseFilepath, location_name: 'LicenseFilepath'))
    PackageConfiguration.add_member(:configuration_requirement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequirementLevel, location_name: 'ConfigurationRequirement', traits: {"smithy.api#required" => {}}))
    PackageConfiguration.add_member(:requires_restart_for_configuration_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RequiresRestartForConfigurationUpdate'))
    PackageConfiguration.type = Types::PackageConfiguration
    PackageDetails.add_member(:package_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: 'PackageID'))
    PackageDetails.add_member(:package_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'PackageName'))
    PackageDetails.add_member(:package_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageType, location_name: 'PackageType'))
    PackageDetails.add_member(:package_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDescription, location_name: 'PackageDescription'))
    PackageDetails.add_member(:package_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageStatus, location_name: 'PackageStatus'))
    PackageDetails.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'CreatedAt'))
    PackageDetails.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdated, location_name: 'LastUpdatedAt'))
    PackageDetails.add_member(:available_package_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion, location_name: 'AvailablePackageVersion'))
    PackageDetails.add_member(:error_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: 'ErrorDetails'))
    PackageDetails.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersion, location_name: 'EngineVersion'))
    PackageDetails.add_member(:available_plugin_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PluginProperties, location_name: 'AvailablePluginProperties'))
    PackageDetails.add_member(:available_package_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageConfiguration, location_name: 'AvailablePackageConfiguration'))
    PackageDetails.add_member(:allow_listed_user_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageUserList, location_name: 'AllowListedUserList'))
    PackageDetails.add_member(:package_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageOwner, location_name: 'PackageOwner'))
    PackageDetails.add_member(:package_vending_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVendingOptions, location_name: 'PackageVendingOptions'))
    PackageDetails.add_member(:package_encryption_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageEncryptionOptions, location_name: 'PackageEncryptionOptions'))
    PackageDetails.type = Types::PackageDetails
    PackageDetailsForAssociation.add_member(:package_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: 'PackageID', traits: {"smithy.api#required" => {}}))
    PackageDetailsForAssociation.add_member(:prerequisite_package_id_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageIDList, location_name: 'PrerequisitePackageIDList'))
    PackageDetailsForAssociation.add_member(:association_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageAssociationConfiguration, location_name: 'AssociationConfiguration'))
    PackageDetailsForAssociation.type = Types::PackageDetailsForAssociation
    PackageDetailsForAssociationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDetailsForAssociation)
    PackageDetailsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDetails)
    PackageEncryptionOptions.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyIdentifier'))
    PackageEncryptionOptions.add_member(:encryption_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EncryptionEnabled', traits: {"smithy.api#required" => {}}))
    PackageEncryptionOptions.type = Types::PackageEncryptionOptions
    PackageIDList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID)
    PackageScopeOperationEnum.add_member(:add, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADD', traits: {"smithy.api#enumValue" => "ADD"}))
    PackageScopeOperationEnum.add_member(:override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OVERRIDE', traits: {"smithy.api#enumValue" => "OVERRIDE"}))
    PackageScopeOperationEnum.add_member(:remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOVE', traits: {"smithy.api#enumValue" => "REMOVE"}))
    PackageSource.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'S3BucketName'))
    PackageSource.add_member(:s3_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 'S3Key'))
    PackageSource.type = Types::PackageSource
    PackageStatus.add_member(:copying, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COPYING', traits: {"smithy.api#enumValue" => "COPYING"}))
    PackageStatus.add_member(:copy_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COPY_FAILED', traits: {"smithy.api#enumValue" => "COPY_FAILED"}))
    PackageStatus.add_member(:validating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATING', traits: {"smithy.api#enumValue" => "VALIDATING"}))
    PackageStatus.add_member(:validation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "VALIDATION_FAILED"}))
    PackageStatus.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    PackageStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    PackageStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    PackageStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    PackageType.add_member(:txt_dictionary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TXT_DICTIONARY', traits: {"smithy.api#enumValue" => "TXT-DICTIONARY"}))
    PackageType.add_member(:zip_plugin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZIP_PLUGIN', traits: {"smithy.api#enumValue" => "ZIP-PLUGIN"}))
    PackageType.add_member(:package_license, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PACKAGE_LICENSE', traits: {"smithy.api#enumValue" => "PACKAGE-LICENSE"}))
    PackageType.add_member(:package_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PACKAGE_CONFIG', traits: {"smithy.api#enumValue" => "PACKAGE-CONFIG"}))
    PackageUserList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageUser)
    PackageVendingOptions.add_member(:vending_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'VendingEnabled', traits: {"smithy.api#required" => {}}))
    PackageVendingOptions.type = Types::PackageVendingOptions
    PackageVersionHistory.add_member(:package_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion, location_name: 'PackageVersion'))
    PackageVersionHistory.add_member(:commit_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommitMessage, location_name: 'CommitMessage'))
    PackageVersionHistory.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'CreatedAt'))
    PackageVersionHistory.add_member(:plugin_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PluginProperties, location_name: 'PluginProperties'))
    PackageVersionHistory.add_member(:package_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageConfiguration, location_name: 'PackageConfiguration'))
    PackageVersionHistory.type = Types::PackageVersionHistory
    PackageVersionHistoryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionHistory)
    PluginProperties.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PluginName, location_name: 'Name'))
    PluginProperties.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PluginDescription, location_name: 'Description'))
    PluginProperties.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PluginVersion, location_name: 'Version'))
    PluginProperties.add_member(:class_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PluginClassName, location_name: 'ClassName'))
    PluginProperties.add_member(:uncompressed_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UncompressedPluginSizeInBytes, location_name: 'UncompressedSizeInBytes'))
    PluginProperties.type = Types::PluginProperties
    PrincipalType.add_member(:aws_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_ACCOUNT', traits: {"smithy.api#enumValue" => "AWS_ACCOUNT"}))
    PrincipalType.add_member(:aws_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SERVICE', traits: {"smithy.api#enumValue" => "AWS_SERVICE"}))
    PropertyValueType.add_member(:plain_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLAIN_TEXT', traits: {"smithy.api#enumValue" => "PLAIN_TEXT"}))
    PropertyValueType.add_member(:stringified_json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRINGIFIED_JSON', traits: {"smithy.api#enumValue" => "STRINGIFIED_JSON"}))
    PurchaseReservedInstanceOfferingRequest.add_member(:reserved_instance_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: 'ReservedInstanceOfferingId', traits: {"smithy.api#required" => {}}))
    PurchaseReservedInstanceOfferingRequest.add_member(:reservation_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationToken, location_name: 'ReservationName', traits: {"smithy.api#required" => {}}))
    PurchaseReservedInstanceOfferingRequest.add_member(:instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceCount, location_name: 'InstanceCount'))
    PurchaseReservedInstanceOfferingRequest.type = Types::PurchaseReservedInstanceOfferingRequest
    PurchaseReservedInstanceOfferingResponse.add_member(:reserved_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: 'ReservedInstanceId'))
    PurchaseReservedInstanceOfferingResponse.add_member(:reservation_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationToken, location_name: 'ReservationName'))
    PurchaseReservedInstanceOfferingResponse.type = Types::PurchaseReservedInstanceOfferingResponse
    RecurringCharge.add_member(:recurring_charge_amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'RecurringChargeAmount'))
    RecurringCharge.add_member(:recurring_charge_frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecurringChargeFrequency'))
    RecurringCharge.type = Types::RecurringCharge
    RecurringChargeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringCharge, traits: {"smithy.api#xmlName" => "RecurringCharge"})
    RejectInboundConnectionRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionId, location_name: 'ConnectionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RejectInboundConnectionRequest.type = Types::RejectInboundConnectionRequest
    RejectInboundConnectionResponse.add_member(:connection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InboundConnection, location_name: 'Connection'))
    RejectInboundConnectionResponse.type = Types::RejectInboundConnectionResponse
    RemoveTagsRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ARN', traits: {"smithy.api#required" => {}}))
    RemoveTagsRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'TagKeys', traits: {"smithy.api#required" => {}}))
    RemoveTagsRequest.type = Types::RemoveTagsRequest
    RequirementLevel.add_member(:required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUIRED', traits: {"smithy.api#enumValue" => "REQUIRED"}))
    RequirementLevel.add_member(:optional, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIONAL', traits: {"smithy.api#enumValue" => "OPTIONAL"}))
    RequirementLevel.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    ReservedInstance.add_member(:reservation_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationToken, location_name: 'ReservationName'))
    ReservedInstance.add_member(:reserved_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: 'ReservedInstanceId'))
    ReservedInstance.add_member(:billing_subscription_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'BillingSubscriptionId'))
    ReservedInstance.add_member(:reserved_instance_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedInstanceOfferingId'))
    ReservedInstance.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchPartitionInstanceType, location_name: 'InstanceType'))
    ReservedInstance.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: 'StartTime'))
    ReservedInstance.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Duration', traits: {"smithy.api#default" => 0}))
    ReservedInstance.add_member(:fixed_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'FixedPrice'))
    ReservedInstance.add_member(:usage_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'UsagePrice'))
    ReservedInstance.add_member(:currency_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrencyCode'))
    ReservedInstance.add_member(:instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'InstanceCount', traits: {"smithy.api#default" => 0}))
    ReservedInstance.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'State'))
    ReservedInstance.add_member(:payment_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedInstancePaymentOption, location_name: 'PaymentOption'))
    ReservedInstance.add_member(:recurring_charges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringChargeList, location_name: 'RecurringCharges'))
    ReservedInstance.type = Types::ReservedInstance
    ReservedInstanceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedInstance)
    ReservedInstanceOffering.add_member(:reserved_instance_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: 'ReservedInstanceOfferingId'))
    ReservedInstanceOffering.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchPartitionInstanceType, location_name: 'InstanceType'))
    ReservedInstanceOffering.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Duration', traits: {"smithy.api#default" => 0}))
    ReservedInstanceOffering.add_member(:fixed_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'FixedPrice'))
    ReservedInstanceOffering.add_member(:usage_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'UsagePrice'))
    ReservedInstanceOffering.add_member(:currency_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrencyCode'))
    ReservedInstanceOffering.add_member(:payment_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedInstancePaymentOption, location_name: 'PaymentOption'))
    ReservedInstanceOffering.add_member(:recurring_charges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringChargeList, location_name: 'RecurringCharges'))
    ReservedInstanceOffering.type = Types::ReservedInstanceOffering
    ReservedInstanceOfferingList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedInstanceOffering, traits: {"smithy.api#xmlName" => "ReservedInstanceOffering"})
    ReservedInstancePaymentOption.add_member(:all_upfront, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL_UPFRONT', traits: {"smithy.api#enumValue" => "ALL_UPFRONT"}))
    ReservedInstancePaymentOption.add_member(:partial_upfront, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARTIAL_UPFRONT', traits: {"smithy.api#enumValue" => "PARTIAL_UPFRONT"}))
    ReservedInstancePaymentOption.add_member(:no_upfront, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_UPFRONT', traits: {"smithy.api#enumValue" => "NO_UPFRONT"}))
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RevokeVpcEndpointAccessRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RevokeVpcEndpointAccessRequest.add_member(:account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccount, location_name: 'Account'))
    RevokeVpcEndpointAccessRequest.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServicePrincipal, location_name: 'Service'))
    RevokeVpcEndpointAccessRequest.type = Types::RevokeVpcEndpointAccessRequest
    RevokeVpcEndpointAccessResponse.type = Types::RevokeVpcEndpointAccessResponse
    RolesKeyIdCOption.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GroupName', traits: {"smithy.api#enumValue" => "GroupName"}))
    RolesKeyIdCOption.add_member(:group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GroupId', traits: {"smithy.api#enumValue" => "GroupId"}))
    RollbackOnDisable.add_member(:no_rollback, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_ROLLBACK', traits: {"smithy.api#enumValue" => "NO_ROLLBACK"}))
    RollbackOnDisable.add_member(:default_rollback, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT_ROLLBACK', traits: {"smithy.api#enumValue" => "DEFAULT_ROLLBACK"}))
    S3GlueDataCatalog.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn'))
    S3GlueDataCatalog.type = Types::S3GlueDataCatalog
    S3VectorsEngine.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    S3VectorsEngine.type = Types::S3VectorsEngine
    SAMLIdp.add_member(:metadata_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SAMLMetadata, location_name: 'MetadataContent', traits: {"smithy.api#required" => {}}))
    SAMLIdp.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SAMLEntityId, location_name: 'EntityId', traits: {"smithy.api#required" => {}}))
    SAMLIdp.type = Types::SAMLIdp
    SAMLOptionsInput.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    SAMLOptionsInput.add_member(:idp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SAMLIdp, location_name: 'Idp'))
    SAMLOptionsInput.add_member(:master_user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: 'MasterUserName'))
    SAMLOptionsInput.add_member(:master_backend_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackendRole, location_name: 'MasterBackendRole'))
    SAMLOptionsInput.add_member(:subject_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubjectKey'))
    SAMLOptionsInput.add_member(:roles_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RolesKey'))
    SAMLOptionsInput.add_member(:session_timeout_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: 'SessionTimeoutMinutes'))
    SAMLOptionsInput.type = Types::SAMLOptionsInput
    SAMLOptionsOutput.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    SAMLOptionsOutput.add_member(:idp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SAMLIdp, location_name: 'Idp'))
    SAMLOptionsOutput.add_member(:subject_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubjectKey'))
    SAMLOptionsOutput.add_member(:roles_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RolesKey'))
    SAMLOptionsOutput.add_member(:session_timeout_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: 'SessionTimeoutMinutes'))
    SAMLOptionsOutput.type = Types::SAMLOptionsOutput
    ScheduleAt.add_member(:now, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOW', traits: {"smithy.api#enumValue" => "NOW"}))
    ScheduleAt.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMESTAMP', traits: {"smithy.api#enumValue" => "TIMESTAMP"}))
    ScheduleAt.add_member(:off_peak_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OFF_PEAK_WINDOW', traits: {"smithy.api#enumValue" => "OFF_PEAK_WINDOW"}))
    ScheduledAction.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    ScheduledAction.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    ScheduledAction.add_member(:severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionSeverity, location_name: 'Severity', traits: {"smithy.api#required" => {}}))
    ScheduledAction.add_member(:scheduled_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ScheduledTime', traits: {"smithy.api#required" => {}}))
    ScheduledAction.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    ScheduledAction.add_member(:scheduled_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledBy, location_name: 'ScheduledBy'))
    ScheduledAction.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionStatus, location_name: 'Status'))
    ScheduledAction.add_member(:mandatory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Mandatory'))
    ScheduledAction.add_member(:cancellable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Cancellable'))
    ScheduledAction.type = Types::ScheduledAction
    ScheduledActionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledAction)
    ScheduledAutoTuneActionType.add_member(:jvm_heap_size_tuning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JVM_HEAP_SIZE_TUNING', traits: {"smithy.api#enumValue" => "JVM_HEAP_SIZE_TUNING"}))
    ScheduledAutoTuneActionType.add_member(:jvm_young_gen_tuning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JVM_YOUNG_GEN_TUNING', traits: {"smithy.api#enumValue" => "JVM_YOUNG_GEN_TUNING"}))
    ScheduledAutoTuneDetails.add_member(:date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneDate, location_name: 'Date'))
    ScheduledAutoTuneDetails.add_member(:action_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledAutoTuneActionType, location_name: 'ActionType'))
    ScheduledAutoTuneDetails.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledAutoTuneDescription, location_name: 'Action'))
    ScheduledAutoTuneDetails.add_member(:severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledAutoTuneSeverityType, location_name: 'Severity'))
    ScheduledAutoTuneDetails.type = Types::ScheduledAutoTuneDetails
    ScheduledAutoTuneSeverityType.add_member(:low, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW', traits: {"smithy.api#enumValue" => "LOW"}))
    ScheduledAutoTuneSeverityType.add_member(:medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "MEDIUM"}))
    ScheduledAutoTuneSeverityType.add_member(:high, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH', traits: {"smithy.api#enumValue" => "HIGH"}))
    ScheduledBy.add_member(:customer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER', traits: {"smithy.api#enumValue" => "CUSTOMER"}))
    ScheduledBy.add_member(:system, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEM', traits: {"smithy.api#enumValue" => "SYSTEM"}))
    SecurityLakeDirectQueryDataSource.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceRoleArn, location_name: 'RoleArn', traits: {"smithy.api#required" => {}}))
    SecurityLakeDirectQueryDataSource.type = Types::SecurityLakeDirectQueryDataSource
    ServiceSoftwareOptions.add_member(:current_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrentVersion'))
    ServiceSoftwareOptions.add_member(:new_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NewVersion'))
    ServiceSoftwareOptions.add_member(:update_available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UpdateAvailable'))
    ServiceSoftwareOptions.add_member(:cancellable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Cancellable'))
    ServiceSoftwareOptions.add_member(:update_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'UpdateStatus'))
    ServiceSoftwareOptions.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    ServiceSoftwareOptions.add_member(:automated_update_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentCloseDateTimeStamp, location_name: 'AutomatedUpdateDate'))
    ServiceSoftwareOptions.add_member(:optional_deployment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'OptionalDeployment'))
    ServiceSoftwareOptions.type = Types::ServiceSoftwareOptions
    SkipUnavailableStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    SkipUnavailableStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    SlotList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long)
    SlotNotAvailableException.add_member(:slot_suggestions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotList, location_name: 'SlotSuggestions'))
    SlotNotAvailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    SlotNotAvailableException.type = Types::SlotNotAvailableException
    SnapshotOptions.add_member(:automated_snapshot_start_hour, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: 'AutomatedSnapshotStartHour'))
    SnapshotOptions.type = Types::SnapshotOptions
    SnapshotOptionsStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotOptions, location_name: 'Options', traits: {"smithy.api#required" => {}}))
    SnapshotOptionsStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    SnapshotOptionsStatus.type = Types::SnapshotOptionsStatus
    SoftwareUpdateOptions.add_member(:auto_software_update_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoSoftwareUpdateEnabled'))
    SoftwareUpdateOptions.type = Types::SoftwareUpdateOptions
    SoftwareUpdateOptionsStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareUpdateOptions, location_name: 'Options'))
    SoftwareUpdateOptionsStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status'))
    SoftwareUpdateOptionsStatus.type = Types::SoftwareUpdateOptionsStatus
    StartDomainMaintenanceRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartDomainMaintenanceRequest.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceType, location_name: 'Action', traits: {"smithy.api#required" => {}}))
    StartDomainMaintenanceRequest.add_member(:node_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeId, location_name: 'NodeId'))
    StartDomainMaintenanceRequest.type = Types::StartDomainMaintenanceRequest
    StartDomainMaintenanceResponse.add_member(:maintenance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'MaintenanceId'))
    StartDomainMaintenanceResponse.type = Types::StartDomainMaintenanceResponse
    StartServiceSoftwareUpdateRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    StartServiceSoftwareUpdateRequest.add_member(:schedule_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleAt, location_name: 'ScheduleAt'))
    StartServiceSoftwareUpdateRequest.add_member(:desired_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'DesiredStartTime'))
    StartServiceSoftwareUpdateRequest.type = Types::StartServiceSoftwareUpdateRequest
    StartServiceSoftwareUpdateResponse.add_member(:service_software_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSoftwareOptions, location_name: 'ServiceSoftwareOptions'))
    StartServiceSoftwareUpdateResponse.type = Types::StartServiceSoftwareUpdateResponse
    StorageType.add_member(:storage_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeName, location_name: 'StorageTypeName'))
    StorageType.add_member(:storage_sub_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageSubTypeName, location_name: 'StorageSubTypeName'))
    StorageType.add_member(:storage_type_limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeLimitList, location_name: 'StorageTypeLimits'))
    StorageType.type = Types::StorageType
    StorageTypeLimit.add_member(:limit_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitName, location_name: 'LimitName'))
    StorageTypeLimit.add_member(:limit_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitValueList, location_name: 'LimitValues'))
    StorageTypeLimit.type = Types::StorageTypeLimit
    StorageTypeLimitList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeLimit)
    StorageTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageType)
    StringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    SubjectKeyIdCOption.add_member(:user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UserName', traits: {"smithy.api#enumValue" => "UserName"}))
    SubjectKeyIdCOption.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UserId', traits: {"smithy.api#enumValue" => "UserId"}))
    SubjectKeyIdCOption.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Email', traits: {"smithy.api#enumValue" => "Email"}))
    TLSSecurityPolicy.add_member(:policy_min_tls_1_0_2019_07, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POLICY_MIN_TLS_1_0_2019_07', traits: {"smithy.api#enumValue" => "Policy-Min-TLS-1-0-2019-07"}))
    TLSSecurityPolicy.add_member(:policy_min_tls_1_2_2019_07, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POLICY_MIN_TLS_1_2_2019_07', traits: {"smithy.api#enumValue" => "Policy-Min-TLS-1-2-2019-07"}))
    TLSSecurityPolicy.add_member(:policy_min_tls_1_2_pfs_2023_10, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POLICY_MIN_TLS_1_2_PFS_2023_10', traits: {"smithy.api#enumValue" => "Policy-Min-TLS-1-2-PFS-2023-10"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TimeUnit.add_member(:hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOURS', traits: {"smithy.api#enumValue" => "HOURS"}))
    UpdateApplicationRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApplicationRequest.add_member(:data_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSources, location_name: 'dataSources'))
    UpdateApplicationRequest.add_member(:app_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppConfigs, location_name: 'appConfigs'))
    UpdateApplicationRequest.type = Types::UpdateApplicationRequest
    UpdateApplicationResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'id'))
    UpdateApplicationResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'name'))
    UpdateApplicationResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn'))
    UpdateApplicationResponse.add_member(:data_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSources, location_name: 'dataSources'))
    UpdateApplicationResponse.add_member(:iam_identity_center_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamIdentityCenterOptions, location_name: 'iamIdentityCenterOptions'))
    UpdateApplicationResponse.add_member(:app_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppConfigs, location_name: 'appConfigs'))
    UpdateApplicationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt'))
    UpdateApplicationResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt'))
    UpdateApplicationResponse.type = Types::UpdateApplicationResponse
    UpdateDataSourceRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataSourceRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataSourceRequest.add_member(:data_source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceType, location_name: 'DataSourceType', traits: {"smithy.api#required" => {}}))
    UpdateDataSourceRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceDescription, location_name: 'Description'))
    UpdateDataSourceRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceStatus, location_name: 'Status'))
    UpdateDataSourceRequest.type = Types::UpdateDataSourceRequest
    UpdateDataSourceResponse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    UpdateDataSourceResponse.type = Types::UpdateDataSourceResponse
    UpdateDirectQueryDataSourceRequest.add_member(:data_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceName, location_name: 'DataSourceName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDirectQueryDataSourceRequest.add_member(:data_source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceType, location_name: 'DataSourceType', traits: {"smithy.api#required" => {}}))
    UpdateDirectQueryDataSourceRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryDataSourceDescription, location_name: 'Description'))
    UpdateDirectQueryDataSourceRequest.add_member(:open_search_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectQueryOpenSearchARNList, location_name: 'OpenSearchArns', traits: {"smithy.api#required" => {}}))
    UpdateDirectQueryDataSourceRequest.type = Types::UpdateDirectQueryDataSourceRequest
    UpdateDirectQueryDataSourceResponse.add_member(:data_source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataSourceArn'))
    UpdateDirectQueryDataSourceResponse.type = Types::UpdateDirectQueryDataSourceResponse
    UpdateDomainConfigRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDomainConfigRequest.add_member(:cluster_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterConfig, location_name: 'ClusterConfig'))
    UpdateDomainConfigRequest.add_member(:ebs_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EBSOptions, location_name: 'EBSOptions'))
    UpdateDomainConfigRequest.add_member(:snapshot_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotOptions, location_name: 'SnapshotOptions'))
    UpdateDomainConfigRequest.add_member(:vpc_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCOptions, location_name: 'VPCOptions'))
    UpdateDomainConfigRequest.add_member(:cognito_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoOptions, location_name: 'CognitoOptions'))
    UpdateDomainConfigRequest.add_member(:advanced_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: 'AdvancedOptions'))
    UpdateDomainConfigRequest.add_member(:access_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'AccessPolicies'))
    UpdateDomainConfigRequest.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddressType, location_name: 'IPAddressType'))
    UpdateDomainConfigRequest.add_member(:log_publishing_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: 'LogPublishingOptions'))
    UpdateDomainConfigRequest.add_member(:encryption_at_rest_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, location_name: 'EncryptionAtRestOptions'))
    UpdateDomainConfigRequest.add_member(:domain_endpoint_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainEndpointOptions, location_name: 'DomainEndpointOptions'))
    UpdateDomainConfigRequest.add_member(:node_to_node_encryption_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeToNodeEncryptionOptions, location_name: 'NodeToNodeEncryptionOptions'))
    UpdateDomainConfigRequest.add_member(:advanced_security_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedSecurityOptionsInput, location_name: 'AdvancedSecurityOptions'))
    UpdateDomainConfigRequest.add_member(:identity_center_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterOptionsInput, location_name: 'IdentityCenterOptions'))
    UpdateDomainConfigRequest.add_member(:auto_tune_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneOptions, location_name: 'AutoTuneOptions'))
    UpdateDomainConfigRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRun, location_name: 'DryRun'))
    UpdateDomainConfigRequest.add_member(:dry_run_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunMode, location_name: 'DryRunMode'))
    UpdateDomainConfigRequest.add_member(:off_peak_window_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OffPeakWindowOptions, location_name: 'OffPeakWindowOptions'))
    UpdateDomainConfigRequest.add_member(:software_update_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareUpdateOptions, location_name: 'SoftwareUpdateOptions'))
    UpdateDomainConfigRequest.add_member(:aiml_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIMLOptionsInput, location_name: 'AIMLOptions'))
    UpdateDomainConfigRequest.type = Types::UpdateDomainConfigRequest
    UpdateDomainConfigResponse.add_member(:domain_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainConfig, location_name: 'DomainConfig', traits: {"smithy.api#required" => {}}))
    UpdateDomainConfigResponse.add_member(:dry_run_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunResults, location_name: 'DryRunResults'))
    UpdateDomainConfigResponse.add_member(:dry_run_progress_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunProgressStatus, location_name: 'DryRunProgressStatus'))
    UpdateDomainConfigResponse.type = Types::UpdateDomainConfigResponse
    UpdatePackageRequest.add_member(:package_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: 'PackageID', traits: {"smithy.api#required" => {}}))
    UpdatePackageRequest.add_member(:package_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageSource, location_name: 'PackageSource', traits: {"smithy.api#required" => {}}))
    UpdatePackageRequest.add_member(:package_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDescription, location_name: 'PackageDescription'))
    UpdatePackageRequest.add_member(:commit_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommitMessage, location_name: 'CommitMessage'))
    UpdatePackageRequest.add_member(:package_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageConfiguration, location_name: 'PackageConfiguration'))
    UpdatePackageRequest.add_member(:package_encryption_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageEncryptionOptions, location_name: 'PackageEncryptionOptions'))
    UpdatePackageRequest.type = Types::UpdatePackageRequest
    UpdatePackageResponse.add_member(:package_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDetails, location_name: 'PackageDetails'))
    UpdatePackageResponse.type = Types::UpdatePackageResponse
    UpdatePackageScopeRequest.add_member(:package_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: 'PackageID', traits: {"smithy.api#required" => {}}))
    UpdatePackageScopeRequest.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageScopeOperationEnum, location_name: 'Operation', traits: {"smithy.api#required" => {}}))
    UpdatePackageScopeRequest.add_member(:package_user_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageUserList, location_name: 'PackageUserList', traits: {"smithy.api#required" => {}}))
    UpdatePackageScopeRequest.type = Types::UpdatePackageScopeRequest
    UpdatePackageScopeResponse.add_member(:package_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: 'PackageID'))
    UpdatePackageScopeResponse.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageScopeOperationEnum, location_name: 'Operation'))
    UpdatePackageScopeResponse.add_member(:package_user_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageUserList, location_name: 'PackageUserList'))
    UpdatePackageScopeResponse.type = Types::UpdatePackageScopeResponse
    UpdateScheduledActionRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateScheduledActionRequest.add_member(:action_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActionID', traits: {"smithy.api#required" => {}}))
    UpdateScheduledActionRequest.add_member(:action_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionType, location_name: 'ActionType', traits: {"smithy.api#required" => {}}))
    UpdateScheduledActionRequest.add_member(:schedule_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleAt, location_name: 'ScheduleAt', traits: {"smithy.api#required" => {}}))
    UpdateScheduledActionRequest.add_member(:desired_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'DesiredStartTime'))
    UpdateScheduledActionRequest.type = Types::UpdateScheduledActionRequest
    UpdateScheduledActionResponse.add_member(:scheduled_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledAction, location_name: 'ScheduledAction'))
    UpdateScheduledActionResponse.type = Types::UpdateScheduledActionResponse
    UpdateVpcEndpointRequest.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'VpcEndpointId', traits: {"smithy.api#required" => {}}))
    UpdateVpcEndpointRequest.add_member(:vpc_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCOptions, location_name: 'VpcOptions', traits: {"smithy.api#required" => {}}))
    UpdateVpcEndpointRequest.type = Types::UpdateVpcEndpointRequest
    UpdateVpcEndpointResponse.add_member(:vpc_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpoint, location_name: 'VpcEndpoint', traits: {"smithy.api#required" => {}}))
    UpdateVpcEndpointResponse.type = Types::UpdateVpcEndpointResponse
    UpgradeDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    UpgradeDomainRequest.add_member(:target_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionString, location_name: 'TargetVersion', traits: {"smithy.api#required" => {}}))
    UpgradeDomainRequest.add_member(:perform_check_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'PerformCheckOnly'))
    UpgradeDomainRequest.add_member(:advanced_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: 'AdvancedOptions'))
    UpgradeDomainRequest.type = Types::UpgradeDomainRequest
    UpgradeDomainResponse.add_member(:upgrade_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UpgradeId'))
    UpgradeDomainResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName'))
    UpgradeDomainResponse.add_member(:target_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionString, location_name: 'TargetVersion'))
    UpgradeDomainResponse.add_member(:perform_check_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'PerformCheckOnly'))
    UpgradeDomainResponse.add_member(:advanced_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: 'AdvancedOptions'))
    UpgradeDomainResponse.add_member(:change_progress_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressDetails, location_name: 'ChangeProgressDetails'))
    UpgradeDomainResponse.type = Types::UpgradeDomainResponse
    UpgradeHistory.add_member(:upgrade_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeName, location_name: 'UpgradeName'))
    UpgradeHistory.add_member(:start_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTimestamp, location_name: 'StartTimestamp'))
    UpgradeHistory.add_member(:upgrade_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeStatus, location_name: 'UpgradeStatus'))
    UpgradeHistory.add_member(:steps_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeStepsList, location_name: 'StepsList'))
    UpgradeHistory.type = Types::UpgradeHistory
    UpgradeHistoryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeHistory)
    UpgradeStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    UpgradeStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    UpgradeStatus.add_member(:succeeded_with_issues, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED_WITH_ISSUES', traits: {"smithy.api#enumValue" => "SUCCEEDED_WITH_ISSUES"}))
    UpgradeStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    UpgradeStep.add_member(:pre_upgrade_check, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRE_UPGRADE_CHECK', traits: {"smithy.api#enumValue" => "PRE_UPGRADE_CHECK"}))
    UpgradeStep.add_member(:snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNAPSHOT', traits: {"smithy.api#enumValue" => "SNAPSHOT"}))
    UpgradeStep.add_member(:upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPGRADE', traits: {"smithy.api#enumValue" => "UPGRADE"}))
    UpgradeStepItem.add_member(:upgrade_step, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeStep, location_name: 'UpgradeStep'))
    UpgradeStepItem.add_member(:upgrade_step_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeStatus, location_name: 'UpgradeStepStatus'))
    UpgradeStepItem.add_member(:issues, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Issues, location_name: 'Issues'))
    UpgradeStepItem.add_member(:progress_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'ProgressPercent'))
    UpgradeStepItem.type = Types::UpgradeStepItem
    UpgradeStepsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeStepItem)
    VPCDerivedInfo.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VPCId'))
    VPCDerivedInfo.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'SubnetIds'))
    VPCDerivedInfo.add_member(:availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'AvailabilityZones'))
    VPCDerivedInfo.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'SecurityGroupIds'))
    VPCDerivedInfo.type = Types::VPCDerivedInfo
    VPCDerivedInfoStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCDerivedInfo, location_name: 'Options', traits: {"smithy.api#required" => {}}))
    VPCDerivedInfoStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    VPCDerivedInfoStatus.type = Types::VPCDerivedInfoStatus
    VPCOptions.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'SubnetIds'))
    VPCOptions.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'SecurityGroupIds'))
    VPCOptions.type = Types::VPCOptions
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ValidationException.type = Types::ValidationException
    ValidationFailure.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    ValidationFailure.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ValidationFailure.type = Types::ValidationFailure
    ValidationFailures.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationFailure)
    ValueStringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    VersionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionString)
    VersionStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionString, location_name: 'Options', traits: {"smithy.api#required" => {}}))
    VersionStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    VersionStatus.type = Types::VersionStatus
    VolumeType.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'standard', traits: {"smithy.api#enumValue" => "standard"}))
    VolumeType.add_member(:gp2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'gp2', traits: {"smithy.api#enumValue" => "gp2"}))
    VolumeType.add_member(:io1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'io1', traits: {"smithy.api#enumValue" => "io1"}))
    VolumeType.add_member(:gp3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'gp3', traits: {"smithy.api#enumValue" => "gp3"}))
    VpcEndpoint.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'VpcEndpointId'))
    VpcEndpoint.add_member(:vpc_endpoint_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccount, location_name: 'VpcEndpointOwner'))
    VpcEndpoint.add_member(:domain_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainArn, location_name: 'DomainArn'))
    VpcEndpoint.add_member(:vpc_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCDerivedInfo, location_name: 'VpcOptions'))
    VpcEndpoint.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointStatus, location_name: 'Status'))
    VpcEndpoint.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'Endpoint'))
    VpcEndpoint.type = Types::VpcEndpoint
    VpcEndpointError.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'VpcEndpointId'))
    VpcEndpointError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointErrorCode, location_name: 'ErrorCode'))
    VpcEndpointError.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage'))
    VpcEndpointError.type = Types::VpcEndpointError
    VpcEndpointErrorCode.add_member(:endpoint_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENDPOINT_NOT_FOUND', traits: {"smithy.api#enumValue" => "ENDPOINT_NOT_FOUND"}))
    VpcEndpointErrorCode.add_member(:server_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVER_ERROR', traits: {"smithy.api#enumValue" => "SERVER_ERROR"}))
    VpcEndpointErrorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointError)
    VpcEndpointIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId)
    VpcEndpointStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    VpcEndpointStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    VpcEndpointStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    VpcEndpointStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    VpcEndpointStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    VpcEndpointStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    VpcEndpointStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    VpcEndpointSummary.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'VpcEndpointId'))
    VpcEndpointSummary.add_member(:vpc_endpoint_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcEndpointOwner'))
    VpcEndpointSummary.add_member(:domain_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainArn, location_name: 'DomainArn'))
    VpcEndpointSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointStatus, location_name: 'Status'))
    VpcEndpointSummary.type = Types::VpcEndpointSummary
    VpcEndpointSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointSummary)
    VpcEndpoints.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpoint)
    WindowStartTime.add_member(:hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTimeHours, location_name: 'Hours', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    WindowStartTime.add_member(:minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTimeMinutes, location_name: 'Minutes', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    WindowStartTime.type = Types::WindowStartTime
    ZoneAwarenessConfig.add_member(:availability_zone_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: 'AvailabilityZoneCount'))
    ZoneAwarenessConfig.type = Types::ZoneAwarenessConfig
    ZoneStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "Active"}))
    ZoneStatus.add_member(:stand_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'StandBy', traits: {"smithy.api#enumValue" => "StandBy"}))
    ZoneStatus.add_member(:not_available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotAvailable', traits: {"smithy.api#enumValue" => "NotAvailable"}))

    AmazonOpenSearchService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.opensearch#AmazonOpenSearchService"
      service.name = "AmazonOpenSearchService"
      service.version = "2021-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "OpenSearch", "arnNamespace" => "es", "cloudFormationName" => "OpenSearch", "cloudTrailEventSource" => "opensearch.amazonaws.com", "endpointPrefix" => "es"}, "aws.auth#sigv4" => {"name" => "es"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon OpenSearch Service", "smithy.api#xmlNamespace" => {"uri" => "http://es.amazonaws.com/doc/2021-01-01/"}}
      service.add_operation(:accept_inbound_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#AcceptInboundConnection"
        operation.name = "AcceptInboundConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptInboundConnectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptInboundConnectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2021-01-01/opensearch/cc/inboundConnection/{ConnectionId}/accept", "code" => 200}}
      end)
      service.add_operation(:add_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#AddDataSource"
        operation.name = "AddDataSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddDataSourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddDataSourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/dataSource", "code" => 200}}
      end)
      service.add_operation(:add_direct_query_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#AddDirectQueryDataSource"
        operation.name = "AddDirectQueryDataSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddDirectQueryDataSourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddDirectQueryDataSourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/directQueryDataSource", "code" => 200}}
      end)
      service.add_operation(:add_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#AddTags"
        operation.name = "AddTags"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/tags", "code" => 200}}
      end)
      service.add_operation(:associate_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#AssociatePackage"
        operation.name = "AssociatePackage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatePackageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatePackageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/packages/associate/{PackageID}/{DomainName}", "code" => 200}}
      end)
      service.add_operation(:associate_packages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#AssociatePackages"
        operation.name = "AssociatePackages"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatePackagesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatePackagesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/packages/associateMultiple", "code" => 200}}
      end)
      service.add_operation(:authorize_vpc_endpoint_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#AuthorizeVpcEndpointAccess"
        operation.name = "AuthorizeVpcEndpointAccess"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizeVpcEndpointAccessRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizeVpcEndpointAccessResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/authorizeVpcEndpointAccess", "code" => 200}}
      end)
      service.add_operation(:cancel_domain_config_change, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#CancelDomainConfigChange"
        operation.name = "CancelDomainConfigChange"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelDomainConfigChangeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelDomainConfigChangeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/config/cancel", "code" => 200}}
      end)
      service.add_operation(:cancel_service_software_update, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#CancelServiceSoftwareUpdate"
        operation.name = "CancelServiceSoftwareUpdate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelServiceSoftwareUpdateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelServiceSoftwareUpdateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/serviceSoftwareUpdate/cancel", "code" => 200}}
      end)
      service.add_operation(:create_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/application", "code" => 200}}
      end)
      service.add_operation(:create_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#CreateDomain"
        operation.name = "CreateDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDomainRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDomainResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTypeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/domain", "code" => 200}}
      end)
      service.add_operation(:create_outbound_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#CreateOutboundConnection"
        operation.name = "CreateOutboundConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOutboundConnectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOutboundConnectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/cc/outboundConnection", "code" => 200}}
      end)
      service.add_operation(:create_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#CreatePackage"
        operation.name = "CreatePackage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePackageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePackageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTypeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/packages", "code" => 200}}
      end)
      service.add_operation(:create_vpc_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#CreateVpcEndpoint"
        operation.name = "CreateVpcEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVpcEndpointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVpcEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/vpcEndpoints", "code" => 200}}
      end)
      service.add_operation(:delete_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2021-01-01/opensearch/application/{id}", "code" => 200}}
      end)
      service.add_operation(:delete_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DeleteDataSource"
        operation.name = "DeleteDataSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataSourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataSourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/dataSource/{Name}", "code" => 200}}
      end)
      service.add_operation(:delete_direct_query_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DeleteDirectQueryDataSource"
        operation.name = "DeleteDirectQueryDataSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDirectQueryDataSourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2021-01-01/opensearch/directQueryDataSource/{DataSourceName}", "code" => 200}}
      end)
      service.add_operation(:delete_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DeleteDomain"
        operation.name = "DeleteDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDomainRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDomainResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2021-01-01/opensearch/domain/{DomainName}", "code" => 200}}
      end)
      service.add_operation(:delete_inbound_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DeleteInboundConnection"
        operation.name = "DeleteInboundConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInboundConnectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInboundConnectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2021-01-01/opensearch/cc/inboundConnection/{ConnectionId}", "code" => 200}}
      end)
      service.add_operation(:delete_outbound_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DeleteOutboundConnection"
        operation.name = "DeleteOutboundConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOutboundConnectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOutboundConnectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2021-01-01/opensearch/cc/outboundConnection/{ConnectionId}", "code" => 200}}
      end)
      service.add_operation(:delete_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DeletePackage"
        operation.name = "DeletePackage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePackageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePackageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2021-01-01/packages/{PackageID}", "code" => 200}}
      end)
      service.add_operation(:delete_vpc_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DeleteVpcEndpoint"
        operation.name = "DeleteVpcEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVpcEndpointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVpcEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2021-01-01/opensearch/vpcEndpoints/{VpcEndpointId}", "code" => 200}}
      end)
      service.add_operation(:describe_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribeDomain"
        operation.name = "DescribeDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/domain/{DomainName}", "code" => 200}}
      end)
      service.add_operation(:describe_domain_auto_tunes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribeDomainAutoTunes"
        operation.name = "DescribeDomainAutoTunes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainAutoTunesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainAutoTunesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/autoTunes", "code" => 200}}
        operation[:paginator] = Paginators::DescribeDomainAutoTunes.new
      end)
      service.add_operation(:describe_domain_change_progress, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribeDomainChangeProgress"
        operation.name = "DescribeDomainChangeProgress"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainChangeProgressRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainChangeProgressResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/progress", "code" => 200}}
      end)
      service.add_operation(:describe_domain_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribeDomainConfig"
        operation.name = "DescribeDomainConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/config", "code" => 200}}
      end)
      service.add_operation(:describe_domain_health, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribeDomainHealth"
        operation.name = "DescribeDomainHealth"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainHealthRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainHealthResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/health", "code" => 200}}
      end)
      service.add_operation(:describe_domain_nodes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribeDomainNodes"
        operation.name = "DescribeDomainNodes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainNodesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainNodesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/nodes", "code" => 200}}
      end)
      service.add_operation(:describe_domains, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribeDomains"
        operation.name = "DescribeDomains"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/domain-info", "code" => 200}}
      end)
      service.add_operation(:describe_dry_run_progress, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribeDryRunProgress"
        operation.name = "DescribeDryRunProgress"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDryRunProgressRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDryRunProgressResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/dryRun", "code" => 200}}
      end)
      service.add_operation(:describe_inbound_connections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribeInboundConnections"
        operation.name = "DescribeInboundConnections"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInboundConnectionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInboundConnectionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/cc/inboundConnection/search", "code" => 200}}
        operation[:paginator] = Paginators::DescribeInboundConnections.new
      end)
      service.add_operation(:describe_instance_type_limits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribeInstanceTypeLimits"
        operation.name = "DescribeInstanceTypeLimits"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInstanceTypeLimitsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInstanceTypeLimitsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTypeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/instanceTypeLimits/{EngineVersion}/{InstanceType}", "code" => 200}}
      end)
      service.add_operation(:describe_outbound_connections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribeOutboundConnections"
        operation.name = "DescribeOutboundConnections"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOutboundConnectionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOutboundConnectionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/cc/outboundConnection/search", "code" => 200}}
        operation[:paginator] = Paginators::DescribeOutboundConnections.new
      end)
      service.add_operation(:describe_packages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribePackages"
        operation.name = "DescribePackages"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackagesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackagesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/packages/describe", "code" => 200}}
        operation[:paginator] = Paginators::DescribePackages.new
      end)
      service.add_operation(:describe_reserved_instance_offerings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribeReservedInstanceOfferings"
        operation.name = "DescribeReservedInstanceOfferings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReservedInstanceOfferingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReservedInstanceOfferingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/reservedInstanceOfferings", "code" => 200}}
        operation[:paginator] = Paginators::DescribeReservedInstanceOfferings.new
      end)
      service.add_operation(:describe_reserved_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribeReservedInstances"
        operation.name = "DescribeReservedInstances"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReservedInstancesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReservedInstancesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/reservedInstances", "code" => 200}}
        operation[:paginator] = Paginators::DescribeReservedInstances.new
      end)
      service.add_operation(:describe_vpc_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DescribeVpcEndpoints"
        operation.name = "DescribeVpcEndpoints"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVpcEndpointsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVpcEndpointsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/vpcEndpoints/describe", "code" => 200}}
      end)
      service.add_operation(:dissociate_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DissociatePackage"
        operation.name = "DissociatePackage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DissociatePackageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DissociatePackageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/packages/dissociate/{PackageID}/{DomainName}", "code" => 200}}
      end)
      service.add_operation(:dissociate_packages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#DissociatePackages"
        operation.name = "DissociatePackages"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DissociatePackagesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DissociatePackagesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/packages/dissociateMultiple", "code" => 200}}
      end)
      service.add_operation(:get_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#GetApplication"
        operation.name = "GetApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/application/{id}", "code" => 200}}
      end)
      service.add_operation(:get_compatible_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#GetCompatibleVersions"
        operation.name = "GetCompatibleVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCompatibleVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCompatibleVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/compatibleVersions", "code" => 200}}
      end)
      service.add_operation(:get_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#GetDataSource"
        operation.name = "GetDataSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataSourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataSourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/dataSource/{Name}", "code" => 200}}
      end)
      service.add_operation(:get_direct_query_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#GetDirectQueryDataSource"
        operation.name = "GetDirectQueryDataSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDirectQueryDataSourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDirectQueryDataSourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/directQueryDataSource/{DataSourceName}", "code" => 200}}
      end)
      service.add_operation(:get_domain_maintenance_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#GetDomainMaintenanceStatus"
        operation.name = "GetDomainMaintenanceStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainMaintenanceStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainMaintenanceStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/domainMaintenance", "code" => 200}}
      end)
      service.add_operation(:get_package_version_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#GetPackageVersionHistory"
        operation.name = "GetPackageVersionHistory"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPackageVersionHistoryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPackageVersionHistoryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/packages/{PackageID}/history", "code" => 200}}
        operation[:paginator] = Paginators::GetPackageVersionHistory.new
      end)
      service.add_operation(:get_upgrade_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#GetUpgradeHistory"
        operation.name = "GetUpgradeHistory"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUpgradeHistoryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUpgradeHistoryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/upgradeDomain/{DomainName}/history", "code" => 200}}
        operation[:paginator] = Paginators::GetUpgradeHistory.new
      end)
      service.add_operation(:get_upgrade_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#GetUpgradeStatus"
        operation.name = "GetUpgradeStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUpgradeStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUpgradeStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/upgradeDomain/{DomainName}/status", "code" => 200}}
      end)
      service.add_operation(:list_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#ListApplications"
        operation.name = "ListApplications"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/list-applications", "code" => 200}}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_data_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#ListDataSources"
        operation.name = "ListDataSources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataSourcesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataSourcesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/dataSource", "code" => 200}}
      end)
      service.add_operation(:list_direct_query_data_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#ListDirectQueryDataSources"
        operation.name = "ListDirectQueryDataSources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDirectQueryDataSourcesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDirectQueryDataSourcesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/directQueryDataSource", "code" => 200}}
      end)
      service.add_operation(:list_domain_maintenances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#ListDomainMaintenances"
        operation.name = "ListDomainMaintenances"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainMaintenancesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainMaintenancesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/domainMaintenances", "code" => 200}}
        operation[:paginator] = Paginators::ListDomainMaintenances.new
      end)
      service.add_operation(:list_domain_names, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#ListDomainNames"
        operation.name = "ListDomainNames"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainNamesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainNamesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/domain", "code" => 200}}
      end)
      service.add_operation(:list_domains_for_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#ListDomainsForPackage"
        operation.name = "ListDomainsForPackage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainsForPackageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainsForPackageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/packages/{PackageID}/domains", "code" => 200}}
        operation[:paginator] = Paginators::ListDomainsForPackage.new
      end)
      service.add_operation(:list_instance_type_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#ListInstanceTypeDetails"
        operation.name = "ListInstanceTypeDetails"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInstanceTypeDetailsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInstanceTypeDetailsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/instanceTypeDetails/{EngineVersion}", "code" => 200}}
        operation[:paginator] = Paginators::ListInstanceTypeDetails.new
      end)
      service.add_operation(:list_packages_for_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#ListPackagesForDomain"
        operation.name = "ListPackagesForDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPackagesForDomainRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPackagesForDomainResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/domain/{DomainName}/packages", "code" => 200}}
        operation[:paginator] = Paginators::ListPackagesForDomain.new
      end)
      service.add_operation(:list_scheduled_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#ListScheduledActions"
        operation.name = "ListScheduledActions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListScheduledActionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListScheduledActionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/scheduledActions", "code" => 200}}
        operation[:paginator] = Paginators::ListScheduledActions.new
      end)
      service.add_operation(:list_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#ListTags"
        operation.name = "ListTags"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/tags", "code" => 200}}
      end)
      service.add_operation(:list_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#ListVersions"
        operation.name = "ListVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/versions", "code" => 200}}
        operation[:paginator] = Paginators::ListVersions.new
      end)
      service.add_operation(:list_vpc_endpoint_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#ListVpcEndpointAccess"
        operation.name = "ListVpcEndpointAccess"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcEndpointAccessRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcEndpointAccessResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/listVpcEndpointAccess", "code" => 200}}
      end)
      service.add_operation(:list_vpc_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#ListVpcEndpoints"
        operation.name = "ListVpcEndpoints"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcEndpointsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcEndpointsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/vpcEndpoints", "code" => 200}}
      end)
      service.add_operation(:list_vpc_endpoints_for_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#ListVpcEndpointsForDomain"
        operation.name = "ListVpcEndpointsForDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcEndpointsForDomainRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcEndpointsForDomainResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/vpcEndpoints", "code" => 200}}
      end)
      service.add_operation(:purchase_reserved_instance_offering, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#PurchaseReservedInstanceOffering"
        operation.name = "PurchaseReservedInstanceOffering"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseReservedInstanceOfferingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseReservedInstanceOfferingResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/purchaseReservedInstanceOffering", "code" => 200}}
      end)
      service.add_operation(:reject_inbound_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#RejectInboundConnection"
        operation.name = "RejectInboundConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RejectInboundConnectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RejectInboundConnectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2021-01-01/opensearch/cc/inboundConnection/{ConnectionId}/reject", "code" => 200}}
      end)
      service.add_operation(:remove_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#RemoveTags"
        operation.name = "RemoveTags"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTagsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/tags-removal", "code" => 200}}
      end)
      service.add_operation(:revoke_vpc_endpoint_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#RevokeVpcEndpointAccess"
        operation.name = "RevokeVpcEndpointAccess"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeVpcEndpointAccessRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeVpcEndpointAccessResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/revokeVpcEndpointAccess", "code" => 200}}
      end)
      service.add_operation(:start_domain_maintenance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#StartDomainMaintenance"
        operation.name = "StartDomainMaintenance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartDomainMaintenanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartDomainMaintenanceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/domainMaintenance", "code" => 200}}
      end)
      service.add_operation(:start_service_software_update, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#StartServiceSoftwareUpdate"
        operation.name = "StartServiceSoftwareUpdate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartServiceSoftwareUpdateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartServiceSoftwareUpdateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/serviceSoftwareUpdate/start", "code" => 200}}
      end)
      service.add_operation(:update_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2021-01-01/opensearch/application/{id}", "code" => 200}}
      end)
      service.add_operation(:update_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#UpdateDataSource"
        operation.name = "UpdateDataSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataSourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataSourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/dataSource/{Name}", "code" => 200}}
      end)
      service.add_operation(:update_direct_query_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#UpdateDirectQueryDataSource"
        operation.name = "UpdateDirectQueryDataSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDirectQueryDataSourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDirectQueryDataSourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2021-01-01/opensearch/directQueryDataSource/{DataSourceName}", "code" => 200}}
      end)
      service.add_operation(:update_domain_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#UpdateDomainConfig"
        operation.name = "UpdateDomainConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDomainConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDomainConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTypeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/config", "code" => 200}}
      end)
      service.add_operation(:update_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#UpdatePackage"
        operation.name = "UpdatePackage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePackageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePackageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/packages/update", "code" => 200}}
      end)
      service.add_operation(:update_package_scope, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#UpdatePackageScope"
        operation.name = "UpdatePackageScope"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePackageScopeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePackageScopeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/packages/updateScope", "code" => 200}}
      end)
      service.add_operation(:update_scheduled_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#UpdateScheduledAction"
        operation.name = "UpdateScheduledAction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateScheduledActionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateScheduledActionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotNotAvailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2021-01-01/opensearch/domain/{DomainName}/scheduledAction/update", "code" => 200}}
      end)
      service.add_operation(:update_vpc_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#UpdateVpcEndpoint"
        operation.name = "UpdateVpcEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVpcEndpointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVpcEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/vpcEndpoints/update", "code" => 200}}
      end)
      service.add_operation(:upgrade_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearch#UpgradeDomain"
        operation.name = "UpgradeDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeDomainRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeDomainResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-01-01/opensearch/upgradeDomain", "code" => 200}}
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
