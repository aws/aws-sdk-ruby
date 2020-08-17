# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SMS
  # @api private
  module ClientApi

    include Seahorse::Model

    AmiId = Shapes::StringShape.new(name: 'AmiId')
    AppDescription = Shapes::StringShape.new(name: 'AppDescription')
    AppId = Shapes::StringShape.new(name: 'AppId')
    AppIdWithValidation = Shapes::StringShape.new(name: 'AppIdWithValidation')
    AppIds = Shapes::ListShape.new(name: 'AppIds')
    AppLaunchConfigurationStatus = Shapes::StringShape.new(name: 'AppLaunchConfigurationStatus')
    AppLaunchStatus = Shapes::StringShape.new(name: 'AppLaunchStatus')
    AppLaunchStatusMessage = Shapes::StringShape.new(name: 'AppLaunchStatusMessage')
    AppName = Shapes::StringShape.new(name: 'AppName')
    AppReplicationConfigurationStatus = Shapes::StringShape.new(name: 'AppReplicationConfigurationStatus')
    AppReplicationStatus = Shapes::StringShape.new(name: 'AppReplicationStatus')
    AppReplicationStatusMessage = Shapes::StringShape.new(name: 'AppReplicationStatusMessage')
    AppStatus = Shapes::StringShape.new(name: 'AppStatus')
    AppStatusMessage = Shapes::StringShape.new(name: 'AppStatusMessage')
    AppSummary = Shapes::StructureShape.new(name: 'AppSummary')
    AppValidationConfiguration = Shapes::StructureShape.new(name: 'AppValidationConfiguration')
    AppValidationConfigurations = Shapes::ListShape.new(name: 'AppValidationConfigurations')
    AppValidationOutput = Shapes::StructureShape.new(name: 'AppValidationOutput')
    AppValidationStrategy = Shapes::StringShape.new(name: 'AppValidationStrategy')
    Apps = Shapes::ListShape.new(name: 'Apps')
    AssociatePublicIpAddress = Shapes::BooleanShape.new(name: 'AssociatePublicIpAddress')
    AutoLaunch = Shapes::BooleanShape.new(name: 'AutoLaunch')
    BucketName = Shapes::StringShape.new(name: 'BucketName')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    Command = Shapes::StringShape.new(name: 'Command')
    Connector = Shapes::StructureShape.new(name: 'Connector')
    ConnectorCapability = Shapes::StringShape.new(name: 'ConnectorCapability')
    ConnectorCapabilityList = Shapes::ListShape.new(name: 'ConnectorCapabilityList')
    ConnectorId = Shapes::StringShape.new(name: 'ConnectorId')
    ConnectorList = Shapes::ListShape.new(name: 'ConnectorList')
    ConnectorStatus = Shapes::StringShape.new(name: 'ConnectorStatus')
    ConnectorVersion = Shapes::StringShape.new(name: 'ConnectorVersion')
    CreateAppRequest = Shapes::StructureShape.new(name: 'CreateAppRequest')
    CreateAppResponse = Shapes::StructureShape.new(name: 'CreateAppResponse')
    CreateReplicationJobRequest = Shapes::StructureShape.new(name: 'CreateReplicationJobRequest')
    CreateReplicationJobResponse = Shapes::StructureShape.new(name: 'CreateReplicationJobResponse')
    DeleteAppLaunchConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteAppLaunchConfigurationRequest')
    DeleteAppLaunchConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteAppLaunchConfigurationResponse')
    DeleteAppReplicationConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteAppReplicationConfigurationRequest')
    DeleteAppReplicationConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteAppReplicationConfigurationResponse')
    DeleteAppRequest = Shapes::StructureShape.new(name: 'DeleteAppRequest')
    DeleteAppResponse = Shapes::StructureShape.new(name: 'DeleteAppResponse')
    DeleteAppValidationConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteAppValidationConfigurationRequest')
    DeleteAppValidationConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteAppValidationConfigurationResponse')
    DeleteReplicationJobRequest = Shapes::StructureShape.new(name: 'DeleteReplicationJobRequest')
    DeleteReplicationJobResponse = Shapes::StructureShape.new(name: 'DeleteReplicationJobResponse')
    DeleteServerCatalogRequest = Shapes::StructureShape.new(name: 'DeleteServerCatalogRequest')
    DeleteServerCatalogResponse = Shapes::StructureShape.new(name: 'DeleteServerCatalogResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DisassociateConnectorRequest = Shapes::StructureShape.new(name: 'DisassociateConnectorRequest')
    DisassociateConnectorResponse = Shapes::StructureShape.new(name: 'DisassociateConnectorResponse')
    DryRunOperationException = Shapes::StructureShape.new(name: 'DryRunOperationException')
    EC2KeyName = Shapes::StringShape.new(name: 'EC2KeyName')
    Encrypted = Shapes::BooleanShape.new(name: 'Encrypted')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExecutionTimeoutSeconds = Shapes::IntegerShape.new(name: 'ExecutionTimeoutSeconds')
    ForceStopAppReplication = Shapes::BooleanShape.new(name: 'ForceStopAppReplication')
    ForceTerminateApp = Shapes::BooleanShape.new(name: 'ForceTerminateApp')
    Frequency = Shapes::IntegerShape.new(name: 'Frequency')
    GenerateChangeSetRequest = Shapes::StructureShape.new(name: 'GenerateChangeSetRequest')
    GenerateChangeSetResponse = Shapes::StructureShape.new(name: 'GenerateChangeSetResponse')
    GenerateTemplateRequest = Shapes::StructureShape.new(name: 'GenerateTemplateRequest')
    GenerateTemplateResponse = Shapes::StructureShape.new(name: 'GenerateTemplateResponse')
    GetAppLaunchConfigurationRequest = Shapes::StructureShape.new(name: 'GetAppLaunchConfigurationRequest')
    GetAppLaunchConfigurationResponse = Shapes::StructureShape.new(name: 'GetAppLaunchConfigurationResponse')
    GetAppReplicationConfigurationRequest = Shapes::StructureShape.new(name: 'GetAppReplicationConfigurationRequest')
    GetAppReplicationConfigurationResponse = Shapes::StructureShape.new(name: 'GetAppReplicationConfigurationResponse')
    GetAppRequest = Shapes::StructureShape.new(name: 'GetAppRequest')
    GetAppResponse = Shapes::StructureShape.new(name: 'GetAppResponse')
    GetAppValidationConfigurationRequest = Shapes::StructureShape.new(name: 'GetAppValidationConfigurationRequest')
    GetAppValidationConfigurationResponse = Shapes::StructureShape.new(name: 'GetAppValidationConfigurationResponse')
    GetAppValidationOutputRequest = Shapes::StructureShape.new(name: 'GetAppValidationOutputRequest')
    GetAppValidationOutputResponse = Shapes::StructureShape.new(name: 'GetAppValidationOutputResponse')
    GetConnectorsRequest = Shapes::StructureShape.new(name: 'GetConnectorsRequest')
    GetConnectorsResponse = Shapes::StructureShape.new(name: 'GetConnectorsResponse')
    GetReplicationJobsRequest = Shapes::StructureShape.new(name: 'GetReplicationJobsRequest')
    GetReplicationJobsResponse = Shapes::StructureShape.new(name: 'GetReplicationJobsResponse')
    GetReplicationRunsRequest = Shapes::StructureShape.new(name: 'GetReplicationRunsRequest')
    GetReplicationRunsResponse = Shapes::StructureShape.new(name: 'GetReplicationRunsResponse')
    GetServersRequest = Shapes::StructureShape.new(name: 'GetServersRequest')
    GetServersResponse = Shapes::StructureShape.new(name: 'GetServersResponse')
    ImportAppCatalogRequest = Shapes::StructureShape.new(name: 'ImportAppCatalogRequest')
    ImportAppCatalogResponse = Shapes::StructureShape.new(name: 'ImportAppCatalogResponse')
    ImportServerCatalogRequest = Shapes::StructureShape.new(name: 'ImportServerCatalogRequest')
    ImportServerCatalogResponse = Shapes::StructureShape.new(name: 'ImportServerCatalogResponse')
    ImportedAppId = Shapes::StringShape.new(name: 'ImportedAppId')
    InstanceId = Shapes::StringShape.new(name: 'InstanceId')
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    InternalError = Shapes::StructureShape.new(name: 'InternalError')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    IpAddress = Shapes::StringShape.new(name: 'IpAddress')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    LaunchAppRequest = Shapes::StructureShape.new(name: 'LaunchAppRequest')
    LaunchAppResponse = Shapes::StructureShape.new(name: 'LaunchAppResponse')
    LaunchDetails = Shapes::StructureShape.new(name: 'LaunchDetails')
    LaunchOrder = Shapes::IntegerShape.new(name: 'LaunchOrder')
    LicenseType = Shapes::StringShape.new(name: 'LicenseType')
    ListAppsRequest = Shapes::StructureShape.new(name: 'ListAppsRequest')
    ListAppsResponse = Shapes::StructureShape.new(name: 'ListAppsResponse')
    LogicalId = Shapes::StringShape.new(name: 'LogicalId')
    MacAddress = Shapes::StringShape.new(name: 'MacAddress')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MissingRequiredParameterException = Shapes::StructureShape.new(name: 'MissingRequiredParameterException')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NoConnectorsAvailableException = Shapes::StructureShape.new(name: 'NoConnectorsAvailableException')
    NonEmptyStringWithMaxLen255 = Shapes::StringShape.new(name: 'NonEmptyStringWithMaxLen255')
    NotificationContext = Shapes::StructureShape.new(name: 'NotificationContext')
    NotifyAppValidationOutputRequest = Shapes::StructureShape.new(name: 'NotifyAppValidationOutputRequest')
    NotifyAppValidationOutputResponse = Shapes::StructureShape.new(name: 'NotifyAppValidationOutputResponse')
    NumberOfRecentAmisToKeep = Shapes::IntegerShape.new(name: 'NumberOfRecentAmisToKeep')
    OperationNotPermittedException = Shapes::StructureShape.new(name: 'OperationNotPermittedException')
    OutputFormat = Shapes::StringShape.new(name: 'OutputFormat')
    PutAppLaunchConfigurationRequest = Shapes::StructureShape.new(name: 'PutAppLaunchConfigurationRequest')
    PutAppLaunchConfigurationResponse = Shapes::StructureShape.new(name: 'PutAppLaunchConfigurationResponse')
    PutAppReplicationConfigurationRequest = Shapes::StructureShape.new(name: 'PutAppReplicationConfigurationRequest')
    PutAppReplicationConfigurationResponse = Shapes::StructureShape.new(name: 'PutAppReplicationConfigurationResponse')
    PutAppValidationConfigurationRequest = Shapes::StructureShape.new(name: 'PutAppValidationConfigurationRequest')
    PutAppValidationConfigurationResponse = Shapes::StructureShape.new(name: 'PutAppValidationConfigurationResponse')
    ReplicationJob = Shapes::StructureShape.new(name: 'ReplicationJob')
    ReplicationJobAlreadyExistsException = Shapes::StructureShape.new(name: 'ReplicationJobAlreadyExistsException')
    ReplicationJobId = Shapes::StringShape.new(name: 'ReplicationJobId')
    ReplicationJobList = Shapes::ListShape.new(name: 'ReplicationJobList')
    ReplicationJobNotFoundException = Shapes::StructureShape.new(name: 'ReplicationJobNotFoundException')
    ReplicationJobState = Shapes::StringShape.new(name: 'ReplicationJobState')
    ReplicationJobStatusMessage = Shapes::StringShape.new(name: 'ReplicationJobStatusMessage')
    ReplicationJobTerminated = Shapes::BooleanShape.new(name: 'ReplicationJobTerminated')
    ReplicationRun = Shapes::StructureShape.new(name: 'ReplicationRun')
    ReplicationRunId = Shapes::StringShape.new(name: 'ReplicationRunId')
    ReplicationRunLimitExceededException = Shapes::StructureShape.new(name: 'ReplicationRunLimitExceededException')
    ReplicationRunList = Shapes::ListShape.new(name: 'ReplicationRunList')
    ReplicationRunStage = Shapes::StringShape.new(name: 'ReplicationRunStage')
    ReplicationRunStageDetails = Shapes::StructureShape.new(name: 'ReplicationRunStageDetails')
    ReplicationRunStageProgress = Shapes::StringShape.new(name: 'ReplicationRunStageProgress')
    ReplicationRunState = Shapes::StringShape.new(name: 'ReplicationRunState')
    ReplicationRunStatusMessage = Shapes::StringShape.new(name: 'ReplicationRunStatusMessage')
    ReplicationRunType = Shapes::StringShape.new(name: 'ReplicationRunType')
    RoleName = Shapes::StringShape.new(name: 'RoleName')
    RunOnce = Shapes::BooleanShape.new(name: 'RunOnce')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3KeyName = Shapes::StringShape.new(name: 'S3KeyName')
    S3Location = Shapes::StructureShape.new(name: 'S3Location')
    SSMOutput = Shapes::StructureShape.new(name: 'SSMOutput')
    SSMValidationParameters = Shapes::StructureShape.new(name: 'SSMValidationParameters')
    ScriptType = Shapes::StringShape.new(name: 'ScriptType')
    SecurityGroup = Shapes::StringShape.new(name: 'SecurityGroup')
    Server = Shapes::StructureShape.new(name: 'Server')
    ServerCannotBeReplicatedException = Shapes::StructureShape.new(name: 'ServerCannotBeReplicatedException')
    ServerCatalogStatus = Shapes::StringShape.new(name: 'ServerCatalogStatus')
    ServerGroup = Shapes::StructureShape.new(name: 'ServerGroup')
    ServerGroupId = Shapes::StringShape.new(name: 'ServerGroupId')
    ServerGroupLaunchConfiguration = Shapes::StructureShape.new(name: 'ServerGroupLaunchConfiguration')
    ServerGroupLaunchConfigurations = Shapes::ListShape.new(name: 'ServerGroupLaunchConfigurations')
    ServerGroupName = Shapes::StringShape.new(name: 'ServerGroupName')
    ServerGroupReplicationConfiguration = Shapes::StructureShape.new(name: 'ServerGroupReplicationConfiguration')
    ServerGroupReplicationConfigurations = Shapes::ListShape.new(name: 'ServerGroupReplicationConfigurations')
    ServerGroupValidationConfiguration = Shapes::StructureShape.new(name: 'ServerGroupValidationConfiguration')
    ServerGroupValidationConfigurations = Shapes::ListShape.new(name: 'ServerGroupValidationConfigurations')
    ServerGroups = Shapes::ListShape.new(name: 'ServerGroups')
    ServerId = Shapes::StringShape.new(name: 'ServerId')
    ServerLaunchConfiguration = Shapes::StructureShape.new(name: 'ServerLaunchConfiguration')
    ServerLaunchConfigurations = Shapes::ListShape.new(name: 'ServerLaunchConfigurations')
    ServerList = Shapes::ListShape.new(name: 'ServerList')
    ServerReplicationConfiguration = Shapes::StructureShape.new(name: 'ServerReplicationConfiguration')
    ServerReplicationConfigurations = Shapes::ListShape.new(name: 'ServerReplicationConfigurations')
    ServerReplicationParameters = Shapes::StructureShape.new(name: 'ServerReplicationParameters')
    ServerType = Shapes::StringShape.new(name: 'ServerType')
    ServerValidationConfiguration = Shapes::StructureShape.new(name: 'ServerValidationConfiguration')
    ServerValidationConfigurations = Shapes::ListShape.new(name: 'ServerValidationConfigurations')
    ServerValidationOutput = Shapes::StructureShape.new(name: 'ServerValidationOutput')
    ServerValidationStrategy = Shapes::StringShape.new(name: 'ServerValidationStrategy')
    Source = Shapes::StructureShape.new(name: 'Source')
    StackId = Shapes::StringShape.new(name: 'StackId')
    StackName = Shapes::StringShape.new(name: 'StackName')
    StartAppReplicationRequest = Shapes::StructureShape.new(name: 'StartAppReplicationRequest')
    StartAppReplicationResponse = Shapes::StructureShape.new(name: 'StartAppReplicationResponse')
    StartOnDemandAppReplicationRequest = Shapes::StructureShape.new(name: 'StartOnDemandAppReplicationRequest')
    StartOnDemandAppReplicationResponse = Shapes::StructureShape.new(name: 'StartOnDemandAppReplicationResponse')
    StartOnDemandReplicationRunRequest = Shapes::StructureShape.new(name: 'StartOnDemandReplicationRunRequest')
    StartOnDemandReplicationRunResponse = Shapes::StructureShape.new(name: 'StartOnDemandReplicationRunResponse')
    StopAppReplicationRequest = Shapes::StructureShape.new(name: 'StopAppReplicationRequest')
    StopAppReplicationResponse = Shapes::StructureShape.new(name: 'StopAppReplicationResponse')
    Subnet = Shapes::StringShape.new(name: 'Subnet')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    TemporarilyUnavailableException = Shapes::StructureShape.new(name: 'TemporarilyUnavailableException')
    TerminateAppRequest = Shapes::StructureShape.new(name: 'TerminateAppRequest')
    TerminateAppResponse = Shapes::StructureShape.new(name: 'TerminateAppResponse')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TotalServerGroups = Shapes::IntegerShape.new(name: 'TotalServerGroups')
    TotalServers = Shapes::IntegerShape.new(name: 'TotalServers')
    UnauthorizedOperationException = Shapes::StructureShape.new(name: 'UnauthorizedOperationException')
    UpdateAppRequest = Shapes::StructureShape.new(name: 'UpdateAppRequest')
    UpdateAppResponse = Shapes::StructureShape.new(name: 'UpdateAppResponse')
    UpdateReplicationJobRequest = Shapes::StructureShape.new(name: 'UpdateReplicationJobRequest')
    UpdateReplicationJobResponse = Shapes::StructureShape.new(name: 'UpdateReplicationJobResponse')
    UserData = Shapes::StructureShape.new(name: 'UserData')
    UserDataValidationParameters = Shapes::StructureShape.new(name: 'UserDataValidationParameters')
    VPC = Shapes::StringShape.new(name: 'VPC')
    ValidationId = Shapes::StringShape.new(name: 'ValidationId')
    ValidationOutput = Shapes::StructureShape.new(name: 'ValidationOutput')
    ValidationOutputList = Shapes::ListShape.new(name: 'ValidationOutputList')
    ValidationStatus = Shapes::StringShape.new(name: 'ValidationStatus')
    ValidationStatusMessage = Shapes::StringShape.new(name: 'ValidationStatusMessage')
    VmId = Shapes::StringShape.new(name: 'VmId')
    VmManagerId = Shapes::StringShape.new(name: 'VmManagerId')
    VmManagerName = Shapes::StringShape.new(name: 'VmManagerName')
    VmManagerType = Shapes::StringShape.new(name: 'VmManagerType')
    VmName = Shapes::StringShape.new(name: 'VmName')
    VmPath = Shapes::StringShape.new(name: 'VmPath')
    VmServer = Shapes::StructureShape.new(name: 'VmServer')
    VmServerAddress = Shapes::StructureShape.new(name: 'VmServerAddress')
    VmServerAddressList = Shapes::ListShape.new(name: 'VmServerAddressList')

    AppIds.member = Shapes::ShapeRef.new(shape: AppId)

    AppSummary.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, location_name: "appId"))
    AppSummary.add_member(:imported_app_id, Shapes::ShapeRef.new(shape: ImportedAppId, location_name: "importedAppId"))
    AppSummary.add_member(:name, Shapes::ShapeRef.new(shape: AppName, location_name: "name"))
    AppSummary.add_member(:description, Shapes::ShapeRef.new(shape: AppDescription, location_name: "description"))
    AppSummary.add_member(:status, Shapes::ShapeRef.new(shape: AppStatus, location_name: "status"))
    AppSummary.add_member(:status_message, Shapes::ShapeRef.new(shape: AppStatusMessage, location_name: "statusMessage"))
    AppSummary.add_member(:replication_configuration_status, Shapes::ShapeRef.new(shape: AppReplicationConfigurationStatus, location_name: "replicationConfigurationStatus"))
    AppSummary.add_member(:replication_status, Shapes::ShapeRef.new(shape: AppReplicationStatus, location_name: "replicationStatus"))
    AppSummary.add_member(:replication_status_message, Shapes::ShapeRef.new(shape: AppReplicationStatusMessage, location_name: "replicationStatusMessage"))
    AppSummary.add_member(:latest_replication_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "latestReplicationTime"))
    AppSummary.add_member(:launch_configuration_status, Shapes::ShapeRef.new(shape: AppLaunchConfigurationStatus, location_name: "launchConfigurationStatus"))
    AppSummary.add_member(:launch_status, Shapes::ShapeRef.new(shape: AppLaunchStatus, location_name: "launchStatus"))
    AppSummary.add_member(:launch_status_message, Shapes::ShapeRef.new(shape: AppLaunchStatusMessage, location_name: "launchStatusMessage"))
    AppSummary.add_member(:launch_details, Shapes::ShapeRef.new(shape: LaunchDetails, location_name: "launchDetails"))
    AppSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    AppSummary.add_member(:last_modified, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModified"))
    AppSummary.add_member(:role_name, Shapes::ShapeRef.new(shape: RoleName, location_name: "roleName"))
    AppSummary.add_member(:total_server_groups, Shapes::ShapeRef.new(shape: TotalServerGroups, location_name: "totalServerGroups"))
    AppSummary.add_member(:total_servers, Shapes::ShapeRef.new(shape: TotalServers, location_name: "totalServers"))
    AppSummary.struct_class = Types::AppSummary

    AppValidationConfiguration.add_member(:validation_id, Shapes::ShapeRef.new(shape: ValidationId, location_name: "validationId"))
    AppValidationConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyStringWithMaxLen255, location_name: "name"))
    AppValidationConfiguration.add_member(:app_validation_strategy, Shapes::ShapeRef.new(shape: AppValidationStrategy, location_name: "appValidationStrategy"))
    AppValidationConfiguration.add_member(:ssm_validation_parameters, Shapes::ShapeRef.new(shape: SSMValidationParameters, location_name: "ssmValidationParameters"))
    AppValidationConfiguration.struct_class = Types::AppValidationConfiguration

    AppValidationConfigurations.member = Shapes::ShapeRef.new(shape: AppValidationConfiguration)

    AppValidationOutput.add_member(:ssm_output, Shapes::ShapeRef.new(shape: SSMOutput, location_name: "ssmOutput"))
    AppValidationOutput.struct_class = Types::AppValidationOutput

    Apps.member = Shapes::ShapeRef.new(shape: AppSummary)

    Connector.add_member(:connector_id, Shapes::ShapeRef.new(shape: ConnectorId, location_name: "connectorId"))
    Connector.add_member(:version, Shapes::ShapeRef.new(shape: ConnectorVersion, location_name: "version"))
    Connector.add_member(:status, Shapes::ShapeRef.new(shape: ConnectorStatus, location_name: "status"))
    Connector.add_member(:capability_list, Shapes::ShapeRef.new(shape: ConnectorCapabilityList, location_name: "capabilityList"))
    Connector.add_member(:vm_manager_name, Shapes::ShapeRef.new(shape: VmManagerName, location_name: "vmManagerName"))
    Connector.add_member(:vm_manager_type, Shapes::ShapeRef.new(shape: VmManagerType, location_name: "vmManagerType"))
    Connector.add_member(:vm_manager_id, Shapes::ShapeRef.new(shape: VmManagerId, location_name: "vmManagerId"))
    Connector.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "ipAddress"))
    Connector.add_member(:mac_address, Shapes::ShapeRef.new(shape: MacAddress, location_name: "macAddress"))
    Connector.add_member(:associated_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "associatedOn"))
    Connector.struct_class = Types::Connector

    ConnectorCapabilityList.member = Shapes::ShapeRef.new(shape: ConnectorCapability)

    ConnectorList.member = Shapes::ShapeRef.new(shape: Connector)

    CreateAppRequest.add_member(:name, Shapes::ShapeRef.new(shape: AppName, location_name: "name"))
    CreateAppRequest.add_member(:description, Shapes::ShapeRef.new(shape: AppDescription, location_name: "description"))
    CreateAppRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: RoleName, location_name: "roleName"))
    CreateAppRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    CreateAppRequest.add_member(:server_groups, Shapes::ShapeRef.new(shape: ServerGroups, location_name: "serverGroups"))
    CreateAppRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateAppRequest.struct_class = Types::CreateAppRequest

    CreateAppResponse.add_member(:app_summary, Shapes::ShapeRef.new(shape: AppSummary, location_name: "appSummary"))
    CreateAppResponse.add_member(:server_groups, Shapes::ShapeRef.new(shape: ServerGroups, location_name: "serverGroups"))
    CreateAppResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateAppResponse.struct_class = Types::CreateAppResponse

    CreateReplicationJobRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "serverId"))
    CreateReplicationJobRequest.add_member(:seed_replication_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "seedReplicationTime"))
    CreateReplicationJobRequest.add_member(:frequency, Shapes::ShapeRef.new(shape: Frequency, location_name: "frequency"))
    CreateReplicationJobRequest.add_member(:run_once, Shapes::ShapeRef.new(shape: RunOnce, location_name: "runOnce"))
    CreateReplicationJobRequest.add_member(:license_type, Shapes::ShapeRef.new(shape: LicenseType, location_name: "licenseType"))
    CreateReplicationJobRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: RoleName, location_name: "roleName"))
    CreateReplicationJobRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateReplicationJobRequest.add_member(:number_of_recent_amis_to_keep, Shapes::ShapeRef.new(shape: NumberOfRecentAmisToKeep, location_name: "numberOfRecentAmisToKeep"))
    CreateReplicationJobRequest.add_member(:encrypted, Shapes::ShapeRef.new(shape: Encrypted, location_name: "encrypted"))
    CreateReplicationJobRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    CreateReplicationJobRequest.struct_class = Types::CreateReplicationJobRequest

    CreateReplicationJobResponse.add_member(:replication_job_id, Shapes::ShapeRef.new(shape: ReplicationJobId, location_name: "replicationJobId"))
    CreateReplicationJobResponse.struct_class = Types::CreateReplicationJobResponse

    DeleteAppLaunchConfigurationRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, location_name: "appId"))
    DeleteAppLaunchConfigurationRequest.struct_class = Types::DeleteAppLaunchConfigurationRequest

    DeleteAppLaunchConfigurationResponse.struct_class = Types::DeleteAppLaunchConfigurationResponse

    DeleteAppReplicationConfigurationRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, location_name: "appId"))
    DeleteAppReplicationConfigurationRequest.struct_class = Types::DeleteAppReplicationConfigurationRequest

    DeleteAppReplicationConfigurationResponse.struct_class = Types::DeleteAppReplicationConfigurationResponse

    DeleteAppRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, location_name: "appId"))
    DeleteAppRequest.add_member(:force_stop_app_replication, Shapes::ShapeRef.new(shape: ForceStopAppReplication, location_name: "forceStopAppReplication"))
    DeleteAppRequest.add_member(:force_terminate_app, Shapes::ShapeRef.new(shape: ForceTerminateApp, location_name: "forceTerminateApp"))
    DeleteAppRequest.struct_class = Types::DeleteAppRequest

    DeleteAppResponse.struct_class = Types::DeleteAppResponse

    DeleteAppValidationConfigurationRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppIdWithValidation, required: true, location_name: "appId"))
    DeleteAppValidationConfigurationRequest.struct_class = Types::DeleteAppValidationConfigurationRequest

    DeleteAppValidationConfigurationResponse.struct_class = Types::DeleteAppValidationConfigurationResponse

    DeleteReplicationJobRequest.add_member(:replication_job_id, Shapes::ShapeRef.new(shape: ReplicationJobId, required: true, location_name: "replicationJobId"))
    DeleteReplicationJobRequest.struct_class = Types::DeleteReplicationJobRequest

    DeleteReplicationJobResponse.struct_class = Types::DeleteReplicationJobResponse

    DeleteServerCatalogRequest.struct_class = Types::DeleteServerCatalogRequest

    DeleteServerCatalogResponse.struct_class = Types::DeleteServerCatalogResponse

    DisassociateConnectorRequest.add_member(:connector_id, Shapes::ShapeRef.new(shape: ConnectorId, required: true, location_name: "connectorId"))
    DisassociateConnectorRequest.struct_class = Types::DisassociateConnectorRequest

    DisassociateConnectorResponse.struct_class = Types::DisassociateConnectorResponse

    DryRunOperationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    DryRunOperationException.struct_class = Types::DryRunOperationException

    GenerateChangeSetRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, location_name: "appId"))
    GenerateChangeSetRequest.add_member(:changeset_format, Shapes::ShapeRef.new(shape: OutputFormat, location_name: "changesetFormat"))
    GenerateChangeSetRequest.struct_class = Types::GenerateChangeSetRequest

    GenerateChangeSetResponse.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "s3Location"))
    GenerateChangeSetResponse.struct_class = Types::GenerateChangeSetResponse

    GenerateTemplateRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, location_name: "appId"))
    GenerateTemplateRequest.add_member(:template_format, Shapes::ShapeRef.new(shape: OutputFormat, location_name: "templateFormat"))
    GenerateTemplateRequest.struct_class = Types::GenerateTemplateRequest

    GenerateTemplateResponse.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "s3Location"))
    GenerateTemplateResponse.struct_class = Types::GenerateTemplateResponse

    GetAppLaunchConfigurationRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, location_name: "appId"))
    GetAppLaunchConfigurationRequest.struct_class = Types::GetAppLaunchConfigurationRequest

    GetAppLaunchConfigurationResponse.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, location_name: "appId"))
    GetAppLaunchConfigurationResponse.add_member(:role_name, Shapes::ShapeRef.new(shape: RoleName, location_name: "roleName"))
    GetAppLaunchConfigurationResponse.add_member(:auto_launch, Shapes::ShapeRef.new(shape: AutoLaunch, location_name: "autoLaunch"))
    GetAppLaunchConfigurationResponse.add_member(:server_group_launch_configurations, Shapes::ShapeRef.new(shape: ServerGroupLaunchConfigurations, location_name: "serverGroupLaunchConfigurations"))
    GetAppLaunchConfigurationResponse.struct_class = Types::GetAppLaunchConfigurationResponse

    GetAppReplicationConfigurationRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, location_name: "appId"))
    GetAppReplicationConfigurationRequest.struct_class = Types::GetAppReplicationConfigurationRequest

    GetAppReplicationConfigurationResponse.add_member(:server_group_replication_configurations, Shapes::ShapeRef.new(shape: ServerGroupReplicationConfigurations, location_name: "serverGroupReplicationConfigurations"))
    GetAppReplicationConfigurationResponse.struct_class = Types::GetAppReplicationConfigurationResponse

    GetAppRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, location_name: "appId"))
    GetAppRequest.struct_class = Types::GetAppRequest

    GetAppResponse.add_member(:app_summary, Shapes::ShapeRef.new(shape: AppSummary, location_name: "appSummary"))
    GetAppResponse.add_member(:server_groups, Shapes::ShapeRef.new(shape: ServerGroups, location_name: "serverGroups"))
    GetAppResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetAppResponse.struct_class = Types::GetAppResponse

    GetAppValidationConfigurationRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppIdWithValidation, required: true, location_name: "appId"))
    GetAppValidationConfigurationRequest.struct_class = Types::GetAppValidationConfigurationRequest

    GetAppValidationConfigurationResponse.add_member(:app_validation_configurations, Shapes::ShapeRef.new(shape: AppValidationConfigurations, location_name: "appValidationConfigurations"))
    GetAppValidationConfigurationResponse.add_member(:server_group_validation_configurations, Shapes::ShapeRef.new(shape: ServerGroupValidationConfigurations, location_name: "serverGroupValidationConfigurations"))
    GetAppValidationConfigurationResponse.struct_class = Types::GetAppValidationConfigurationResponse

    GetAppValidationOutputRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppIdWithValidation, required: true, location_name: "appId"))
    GetAppValidationOutputRequest.struct_class = Types::GetAppValidationOutputRequest

    GetAppValidationOutputResponse.add_member(:validation_output_list, Shapes::ShapeRef.new(shape: ValidationOutputList, location_name: "validationOutputList"))
    GetAppValidationOutputResponse.struct_class = Types::GetAppValidationOutputResponse

    GetConnectorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetConnectorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetConnectorsRequest.struct_class = Types::GetConnectorsRequest

    GetConnectorsResponse.add_member(:connector_list, Shapes::ShapeRef.new(shape: ConnectorList, location_name: "connectorList"))
    GetConnectorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetConnectorsResponse.struct_class = Types::GetConnectorsResponse

    GetReplicationJobsRequest.add_member(:replication_job_id, Shapes::ShapeRef.new(shape: ReplicationJobId, location_name: "replicationJobId"))
    GetReplicationJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetReplicationJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetReplicationJobsRequest.struct_class = Types::GetReplicationJobsRequest

    GetReplicationJobsResponse.add_member(:replication_job_list, Shapes::ShapeRef.new(shape: ReplicationJobList, location_name: "replicationJobList"))
    GetReplicationJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetReplicationJobsResponse.struct_class = Types::GetReplicationJobsResponse

    GetReplicationRunsRequest.add_member(:replication_job_id, Shapes::ShapeRef.new(shape: ReplicationJobId, required: true, location_name: "replicationJobId"))
    GetReplicationRunsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetReplicationRunsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetReplicationRunsRequest.struct_class = Types::GetReplicationRunsRequest

    GetReplicationRunsResponse.add_member(:replication_job, Shapes::ShapeRef.new(shape: ReplicationJob, location_name: "replicationJob"))
    GetReplicationRunsResponse.add_member(:replication_run_list, Shapes::ShapeRef.new(shape: ReplicationRunList, location_name: "replicationRunList"))
    GetReplicationRunsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetReplicationRunsResponse.struct_class = Types::GetReplicationRunsResponse

    GetServersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetServersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetServersRequest.add_member(:vm_server_address_list, Shapes::ShapeRef.new(shape: VmServerAddressList, location_name: "vmServerAddressList"))
    GetServersRequest.struct_class = Types::GetServersRequest

    GetServersResponse.add_member(:last_modified_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedOn"))
    GetServersResponse.add_member(:server_catalog_status, Shapes::ShapeRef.new(shape: ServerCatalogStatus, location_name: "serverCatalogStatus"))
    GetServersResponse.add_member(:server_list, Shapes::ShapeRef.new(shape: ServerList, location_name: "serverList"))
    GetServersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetServersResponse.struct_class = Types::GetServersResponse

    ImportAppCatalogRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: RoleName, location_name: "roleName"))
    ImportAppCatalogRequest.struct_class = Types::ImportAppCatalogRequest

    ImportAppCatalogResponse.struct_class = Types::ImportAppCatalogResponse

    ImportServerCatalogRequest.struct_class = Types::ImportServerCatalogRequest

    ImportServerCatalogResponse.struct_class = Types::ImportServerCatalogResponse

    InternalError.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InternalError.struct_class = Types::InternalError

    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    LaunchAppRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, location_name: "appId"))
    LaunchAppRequest.struct_class = Types::LaunchAppRequest

    LaunchAppResponse.struct_class = Types::LaunchAppResponse

    LaunchDetails.add_member(:latest_launch_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "latestLaunchTime"))
    LaunchDetails.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, location_name: "stackName"))
    LaunchDetails.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, location_name: "stackId"))
    LaunchDetails.struct_class = Types::LaunchDetails

    ListAppsRequest.add_member(:app_ids, Shapes::ShapeRef.new(shape: AppIds, location_name: "appIds"))
    ListAppsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAppsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListAppsRequest.struct_class = Types::ListAppsRequest

    ListAppsResponse.add_member(:apps, Shapes::ShapeRef.new(shape: Apps, location_name: "apps"))
    ListAppsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAppsResponse.struct_class = Types::ListAppsResponse

    MissingRequiredParameterException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    MissingRequiredParameterException.struct_class = Types::MissingRequiredParameterException

    NoConnectorsAvailableException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    NoConnectorsAvailableException.struct_class = Types::NoConnectorsAvailableException

    NotificationContext.add_member(:validation_id, Shapes::ShapeRef.new(shape: ValidationId, location_name: "validationId"))
    NotificationContext.add_member(:status, Shapes::ShapeRef.new(shape: ValidationStatus, location_name: "status"))
    NotificationContext.add_member(:status_message, Shapes::ShapeRef.new(shape: ValidationStatusMessage, location_name: "statusMessage"))
    NotificationContext.struct_class = Types::NotificationContext

    NotifyAppValidationOutputRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppIdWithValidation, required: true, location_name: "appId"))
    NotifyAppValidationOutputRequest.add_member(:notification_context, Shapes::ShapeRef.new(shape: NotificationContext, location_name: "notificationContext"))
    NotifyAppValidationOutputRequest.struct_class = Types::NotifyAppValidationOutputRequest

    NotifyAppValidationOutputResponse.struct_class = Types::NotifyAppValidationOutputResponse

    OperationNotPermittedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    OperationNotPermittedException.struct_class = Types::OperationNotPermittedException

    PutAppLaunchConfigurationRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, location_name: "appId"))
    PutAppLaunchConfigurationRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: RoleName, location_name: "roleName"))
    PutAppLaunchConfigurationRequest.add_member(:auto_launch, Shapes::ShapeRef.new(shape: AutoLaunch, location_name: "autoLaunch"))
    PutAppLaunchConfigurationRequest.add_member(:server_group_launch_configurations, Shapes::ShapeRef.new(shape: ServerGroupLaunchConfigurations, location_name: "serverGroupLaunchConfigurations"))
    PutAppLaunchConfigurationRequest.struct_class = Types::PutAppLaunchConfigurationRequest

    PutAppLaunchConfigurationResponse.struct_class = Types::PutAppLaunchConfigurationResponse

    PutAppReplicationConfigurationRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, location_name: "appId"))
    PutAppReplicationConfigurationRequest.add_member(:server_group_replication_configurations, Shapes::ShapeRef.new(shape: ServerGroupReplicationConfigurations, location_name: "serverGroupReplicationConfigurations"))
    PutAppReplicationConfigurationRequest.struct_class = Types::PutAppReplicationConfigurationRequest

    PutAppReplicationConfigurationResponse.struct_class = Types::PutAppReplicationConfigurationResponse

    PutAppValidationConfigurationRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppIdWithValidation, required: true, location_name: "appId"))
    PutAppValidationConfigurationRequest.add_member(:app_validation_configurations, Shapes::ShapeRef.new(shape: AppValidationConfigurations, location_name: "appValidationConfigurations"))
    PutAppValidationConfigurationRequest.add_member(:server_group_validation_configurations, Shapes::ShapeRef.new(shape: ServerGroupValidationConfigurations, location_name: "serverGroupValidationConfigurations"))
    PutAppValidationConfigurationRequest.struct_class = Types::PutAppValidationConfigurationRequest

    PutAppValidationConfigurationResponse.struct_class = Types::PutAppValidationConfigurationResponse

    ReplicationJob.add_member(:replication_job_id, Shapes::ShapeRef.new(shape: ReplicationJobId, location_name: "replicationJobId"))
    ReplicationJob.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, location_name: "serverId"))
    ReplicationJob.add_member(:server_type, Shapes::ShapeRef.new(shape: ServerType, location_name: "serverType"))
    ReplicationJob.add_member(:vm_server, Shapes::ShapeRef.new(shape: VmServer, location_name: "vmServer"))
    ReplicationJob.add_member(:seed_replication_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "seedReplicationTime"))
    ReplicationJob.add_member(:frequency, Shapes::ShapeRef.new(shape: Frequency, location_name: "frequency"))
    ReplicationJob.add_member(:run_once, Shapes::ShapeRef.new(shape: RunOnce, location_name: "runOnce"))
    ReplicationJob.add_member(:next_replication_run_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "nextReplicationRunStartTime"))
    ReplicationJob.add_member(:license_type, Shapes::ShapeRef.new(shape: LicenseType, location_name: "licenseType"))
    ReplicationJob.add_member(:role_name, Shapes::ShapeRef.new(shape: RoleName, location_name: "roleName"))
    ReplicationJob.add_member(:latest_ami_id, Shapes::ShapeRef.new(shape: AmiId, location_name: "latestAmiId"))
    ReplicationJob.add_member(:state, Shapes::ShapeRef.new(shape: ReplicationJobState, location_name: "state"))
    ReplicationJob.add_member(:status_message, Shapes::ShapeRef.new(shape: ReplicationJobStatusMessage, location_name: "statusMessage"))
    ReplicationJob.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ReplicationJob.add_member(:number_of_recent_amis_to_keep, Shapes::ShapeRef.new(shape: NumberOfRecentAmisToKeep, location_name: "numberOfRecentAmisToKeep"))
    ReplicationJob.add_member(:encrypted, Shapes::ShapeRef.new(shape: Encrypted, location_name: "encrypted"))
    ReplicationJob.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    ReplicationJob.add_member(:replication_run_list, Shapes::ShapeRef.new(shape: ReplicationRunList, location_name: "replicationRunList"))
    ReplicationJob.struct_class = Types::ReplicationJob

    ReplicationJobAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ReplicationJobAlreadyExistsException.struct_class = Types::ReplicationJobAlreadyExistsException

    ReplicationJobList.member = Shapes::ShapeRef.new(shape: ReplicationJob)

    ReplicationJobNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ReplicationJobNotFoundException.struct_class = Types::ReplicationJobNotFoundException

    ReplicationRun.add_member(:replication_run_id, Shapes::ShapeRef.new(shape: ReplicationRunId, location_name: "replicationRunId"))
    ReplicationRun.add_member(:state, Shapes::ShapeRef.new(shape: ReplicationRunState, location_name: "state"))
    ReplicationRun.add_member(:type, Shapes::ShapeRef.new(shape: ReplicationRunType, location_name: "type"))
    ReplicationRun.add_member(:stage_details, Shapes::ShapeRef.new(shape: ReplicationRunStageDetails, location_name: "stageDetails"))
    ReplicationRun.add_member(:status_message, Shapes::ShapeRef.new(shape: ReplicationRunStatusMessage, location_name: "statusMessage"))
    ReplicationRun.add_member(:ami_id, Shapes::ShapeRef.new(shape: AmiId, location_name: "amiId"))
    ReplicationRun.add_member(:scheduled_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "scheduledStartTime"))
    ReplicationRun.add_member(:completed_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "completedTime"))
    ReplicationRun.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ReplicationRun.add_member(:encrypted, Shapes::ShapeRef.new(shape: Encrypted, location_name: "encrypted"))
    ReplicationRun.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    ReplicationRun.struct_class = Types::ReplicationRun

    ReplicationRunLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ReplicationRunLimitExceededException.struct_class = Types::ReplicationRunLimitExceededException

    ReplicationRunList.member = Shapes::ShapeRef.new(shape: ReplicationRun)

    ReplicationRunStageDetails.add_member(:stage, Shapes::ShapeRef.new(shape: ReplicationRunStage, location_name: "stage"))
    ReplicationRunStageDetails.add_member(:stage_progress, Shapes::ShapeRef.new(shape: ReplicationRunStageProgress, location_name: "stageProgress"))
    ReplicationRunStageDetails.struct_class = Types::ReplicationRunStageDetails

    S3Location.add_member(:bucket, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "bucket"))
    S3Location.add_member(:key, Shapes::ShapeRef.new(shape: S3KeyName, location_name: "key"))
    S3Location.struct_class = Types::S3Location

    SSMOutput.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "s3Location"))
    SSMOutput.struct_class = Types::SSMOutput

    SSMValidationParameters.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    SSMValidationParameters.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "instanceId"))
    SSMValidationParameters.add_member(:script_type, Shapes::ShapeRef.new(shape: ScriptType, location_name: "scriptType"))
    SSMValidationParameters.add_member(:command, Shapes::ShapeRef.new(shape: Command, location_name: "command"))
    SSMValidationParameters.add_member(:execution_timeout_seconds, Shapes::ShapeRef.new(shape: ExecutionTimeoutSeconds, location_name: "executionTimeoutSeconds"))
    SSMValidationParameters.add_member(:output_s3_bucket_name, Shapes::ShapeRef.new(shape: BucketName, location_name: "outputS3BucketName"))
    SSMValidationParameters.struct_class = Types::SSMValidationParameters

    Server.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, location_name: "serverId"))
    Server.add_member(:server_type, Shapes::ShapeRef.new(shape: ServerType, location_name: "serverType"))
    Server.add_member(:vm_server, Shapes::ShapeRef.new(shape: VmServer, location_name: "vmServer"))
    Server.add_member(:replication_job_id, Shapes::ShapeRef.new(shape: ReplicationJobId, location_name: "replicationJobId"))
    Server.add_member(:replication_job_terminated, Shapes::ShapeRef.new(shape: ReplicationJobTerminated, location_name: "replicationJobTerminated"))
    Server.struct_class = Types::Server

    ServerCannotBeReplicatedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ServerCannotBeReplicatedException.struct_class = Types::ServerCannotBeReplicatedException

    ServerGroup.add_member(:server_group_id, Shapes::ShapeRef.new(shape: ServerGroupId, location_name: "serverGroupId"))
    ServerGroup.add_member(:name, Shapes::ShapeRef.new(shape: ServerGroupName, location_name: "name"))
    ServerGroup.add_member(:server_list, Shapes::ShapeRef.new(shape: ServerList, location_name: "serverList"))
    ServerGroup.struct_class = Types::ServerGroup

    ServerGroupLaunchConfiguration.add_member(:server_group_id, Shapes::ShapeRef.new(shape: ServerGroupId, location_name: "serverGroupId"))
    ServerGroupLaunchConfiguration.add_member(:launch_order, Shapes::ShapeRef.new(shape: LaunchOrder, location_name: "launchOrder"))
    ServerGroupLaunchConfiguration.add_member(:server_launch_configurations, Shapes::ShapeRef.new(shape: ServerLaunchConfigurations, location_name: "serverLaunchConfigurations"))
    ServerGroupLaunchConfiguration.struct_class = Types::ServerGroupLaunchConfiguration

    ServerGroupLaunchConfigurations.member = Shapes::ShapeRef.new(shape: ServerGroupLaunchConfiguration)

    ServerGroupReplicationConfiguration.add_member(:server_group_id, Shapes::ShapeRef.new(shape: ServerGroupId, location_name: "serverGroupId"))
    ServerGroupReplicationConfiguration.add_member(:server_replication_configurations, Shapes::ShapeRef.new(shape: ServerReplicationConfigurations, location_name: "serverReplicationConfigurations"))
    ServerGroupReplicationConfiguration.struct_class = Types::ServerGroupReplicationConfiguration

    ServerGroupReplicationConfigurations.member = Shapes::ShapeRef.new(shape: ServerGroupReplicationConfiguration)

    ServerGroupValidationConfiguration.add_member(:server_group_id, Shapes::ShapeRef.new(shape: ServerGroupId, location_name: "serverGroupId"))
    ServerGroupValidationConfiguration.add_member(:server_validation_configurations, Shapes::ShapeRef.new(shape: ServerValidationConfigurations, location_name: "serverValidationConfigurations"))
    ServerGroupValidationConfiguration.struct_class = Types::ServerGroupValidationConfiguration

    ServerGroupValidationConfigurations.member = Shapes::ShapeRef.new(shape: ServerGroupValidationConfiguration)

    ServerGroups.member = Shapes::ShapeRef.new(shape: ServerGroup)

    ServerLaunchConfiguration.add_member(:server, Shapes::ShapeRef.new(shape: Server, location_name: "server"))
    ServerLaunchConfiguration.add_member(:logical_id, Shapes::ShapeRef.new(shape: LogicalId, location_name: "logicalId"))
    ServerLaunchConfiguration.add_member(:vpc, Shapes::ShapeRef.new(shape: VPC, location_name: "vpc"))
    ServerLaunchConfiguration.add_member(:subnet, Shapes::ShapeRef.new(shape: Subnet, location_name: "subnet"))
    ServerLaunchConfiguration.add_member(:security_group, Shapes::ShapeRef.new(shape: SecurityGroup, location_name: "securityGroup"))
    ServerLaunchConfiguration.add_member(:ec2_key_name, Shapes::ShapeRef.new(shape: EC2KeyName, location_name: "ec2KeyName"))
    ServerLaunchConfiguration.add_member(:user_data, Shapes::ShapeRef.new(shape: UserData, location_name: "userData"))
    ServerLaunchConfiguration.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "instanceType"))
    ServerLaunchConfiguration.add_member(:associate_public_ip_address, Shapes::ShapeRef.new(shape: AssociatePublicIpAddress, location_name: "associatePublicIpAddress"))
    ServerLaunchConfiguration.add_member(:iam_instance_profile_name, Shapes::ShapeRef.new(shape: RoleName, location_name: "iamInstanceProfileName"))
    ServerLaunchConfiguration.add_member(:configure_script, Shapes::ShapeRef.new(shape: S3Location, location_name: "configureScript"))
    ServerLaunchConfiguration.add_member(:configure_script_type, Shapes::ShapeRef.new(shape: ScriptType, location_name: "configureScriptType"))
    ServerLaunchConfiguration.struct_class = Types::ServerLaunchConfiguration

    ServerLaunchConfigurations.member = Shapes::ShapeRef.new(shape: ServerLaunchConfiguration)

    ServerList.member = Shapes::ShapeRef.new(shape: Server)

    ServerReplicationConfiguration.add_member(:server, Shapes::ShapeRef.new(shape: Server, location_name: "server"))
    ServerReplicationConfiguration.add_member(:server_replication_parameters, Shapes::ShapeRef.new(shape: ServerReplicationParameters, location_name: "serverReplicationParameters"))
    ServerReplicationConfiguration.struct_class = Types::ServerReplicationConfiguration

    ServerReplicationConfigurations.member = Shapes::ShapeRef.new(shape: ServerReplicationConfiguration)

    ServerReplicationParameters.add_member(:seed_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "seedTime"))
    ServerReplicationParameters.add_member(:frequency, Shapes::ShapeRef.new(shape: Frequency, location_name: "frequency"))
    ServerReplicationParameters.add_member(:run_once, Shapes::ShapeRef.new(shape: RunOnce, location_name: "runOnce"))
    ServerReplicationParameters.add_member(:license_type, Shapes::ShapeRef.new(shape: LicenseType, location_name: "licenseType"))
    ServerReplicationParameters.add_member(:number_of_recent_amis_to_keep, Shapes::ShapeRef.new(shape: NumberOfRecentAmisToKeep, location_name: "numberOfRecentAmisToKeep"))
    ServerReplicationParameters.add_member(:encrypted, Shapes::ShapeRef.new(shape: Encrypted, location_name: "encrypted"))
    ServerReplicationParameters.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    ServerReplicationParameters.struct_class = Types::ServerReplicationParameters

    ServerValidationConfiguration.add_member(:server, Shapes::ShapeRef.new(shape: Server, location_name: "server"))
    ServerValidationConfiguration.add_member(:validation_id, Shapes::ShapeRef.new(shape: ValidationId, location_name: "validationId"))
    ServerValidationConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyStringWithMaxLen255, location_name: "name"))
    ServerValidationConfiguration.add_member(:server_validation_strategy, Shapes::ShapeRef.new(shape: ServerValidationStrategy, location_name: "serverValidationStrategy"))
    ServerValidationConfiguration.add_member(:user_data_validation_parameters, Shapes::ShapeRef.new(shape: UserDataValidationParameters, location_name: "userDataValidationParameters"))
    ServerValidationConfiguration.struct_class = Types::ServerValidationConfiguration

    ServerValidationConfigurations.member = Shapes::ShapeRef.new(shape: ServerValidationConfiguration)

    ServerValidationOutput.add_member(:server, Shapes::ShapeRef.new(shape: Server, location_name: "server"))
    ServerValidationOutput.struct_class = Types::ServerValidationOutput

    Source.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "s3Location"))
    Source.struct_class = Types::Source

    StartAppReplicationRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, location_name: "appId"))
    StartAppReplicationRequest.struct_class = Types::StartAppReplicationRequest

    StartAppReplicationResponse.struct_class = Types::StartAppReplicationResponse

    StartOnDemandAppReplicationRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location_name: "appId"))
    StartOnDemandAppReplicationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    StartOnDemandAppReplicationRequest.struct_class = Types::StartOnDemandAppReplicationRequest

    StartOnDemandAppReplicationResponse.struct_class = Types::StartOnDemandAppReplicationResponse

    StartOnDemandReplicationRunRequest.add_member(:replication_job_id, Shapes::ShapeRef.new(shape: ReplicationJobId, required: true, location_name: "replicationJobId"))
    StartOnDemandReplicationRunRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    StartOnDemandReplicationRunRequest.struct_class = Types::StartOnDemandReplicationRunRequest

    StartOnDemandReplicationRunResponse.add_member(:replication_run_id, Shapes::ShapeRef.new(shape: ReplicationRunId, location_name: "replicationRunId"))
    StartOnDemandReplicationRunResponse.struct_class = Types::StartOnDemandReplicationRunResponse

    StopAppReplicationRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, location_name: "appId"))
    StopAppReplicationRequest.struct_class = Types::StopAppReplicationRequest

    StopAppReplicationResponse.struct_class = Types::StopAppReplicationResponse

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "value"))
    Tag.struct_class = Types::Tag

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    TemporarilyUnavailableException.struct_class = Types::TemporarilyUnavailableException

    TerminateAppRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, location_name: "appId"))
    TerminateAppRequest.struct_class = Types::TerminateAppRequest

    TerminateAppResponse.struct_class = Types::TerminateAppResponse

    UnauthorizedOperationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    UnauthorizedOperationException.struct_class = Types::UnauthorizedOperationException

    UpdateAppRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, location_name: "appId"))
    UpdateAppRequest.add_member(:name, Shapes::ShapeRef.new(shape: AppName, location_name: "name"))
    UpdateAppRequest.add_member(:description, Shapes::ShapeRef.new(shape: AppDescription, location_name: "description"))
    UpdateAppRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: RoleName, location_name: "roleName"))
    UpdateAppRequest.add_member(:server_groups, Shapes::ShapeRef.new(shape: ServerGroups, location_name: "serverGroups"))
    UpdateAppRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    UpdateAppRequest.struct_class = Types::UpdateAppRequest

    UpdateAppResponse.add_member(:app_summary, Shapes::ShapeRef.new(shape: AppSummary, location_name: "appSummary"))
    UpdateAppResponse.add_member(:server_groups, Shapes::ShapeRef.new(shape: ServerGroups, location_name: "serverGroups"))
    UpdateAppResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    UpdateAppResponse.struct_class = Types::UpdateAppResponse

    UpdateReplicationJobRequest.add_member(:replication_job_id, Shapes::ShapeRef.new(shape: ReplicationJobId, required: true, location_name: "replicationJobId"))
    UpdateReplicationJobRequest.add_member(:frequency, Shapes::ShapeRef.new(shape: Frequency, location_name: "frequency"))
    UpdateReplicationJobRequest.add_member(:next_replication_run_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "nextReplicationRunStartTime"))
    UpdateReplicationJobRequest.add_member(:license_type, Shapes::ShapeRef.new(shape: LicenseType, location_name: "licenseType"))
    UpdateReplicationJobRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: RoleName, location_name: "roleName"))
    UpdateReplicationJobRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateReplicationJobRequest.add_member(:number_of_recent_amis_to_keep, Shapes::ShapeRef.new(shape: NumberOfRecentAmisToKeep, location_name: "numberOfRecentAmisToKeep"))
    UpdateReplicationJobRequest.add_member(:encrypted, Shapes::ShapeRef.new(shape: Encrypted, location_name: "encrypted"))
    UpdateReplicationJobRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    UpdateReplicationJobRequest.struct_class = Types::UpdateReplicationJobRequest

    UpdateReplicationJobResponse.struct_class = Types::UpdateReplicationJobResponse

    UserData.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "s3Location"))
    UserData.struct_class = Types::UserData

    UserDataValidationParameters.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    UserDataValidationParameters.add_member(:script_type, Shapes::ShapeRef.new(shape: ScriptType, location_name: "scriptType"))
    UserDataValidationParameters.struct_class = Types::UserDataValidationParameters

    ValidationOutput.add_member(:validation_id, Shapes::ShapeRef.new(shape: ValidationId, location_name: "validationId"))
    ValidationOutput.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyStringWithMaxLen255, location_name: "name"))
    ValidationOutput.add_member(:status, Shapes::ShapeRef.new(shape: ValidationStatus, location_name: "status"))
    ValidationOutput.add_member(:status_message, Shapes::ShapeRef.new(shape: ValidationStatusMessage, location_name: "statusMessage"))
    ValidationOutput.add_member(:latest_validation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "latestValidationTime"))
    ValidationOutput.add_member(:app_validation_output, Shapes::ShapeRef.new(shape: AppValidationOutput, location_name: "appValidationOutput"))
    ValidationOutput.add_member(:server_validation_output, Shapes::ShapeRef.new(shape: ServerValidationOutput, location_name: "serverValidationOutput"))
    ValidationOutput.struct_class = Types::ValidationOutput

    ValidationOutputList.member = Shapes::ShapeRef.new(shape: ValidationOutput)

    VmServer.add_member(:vm_server_address, Shapes::ShapeRef.new(shape: VmServerAddress, location_name: "vmServerAddress"))
    VmServer.add_member(:vm_name, Shapes::ShapeRef.new(shape: VmName, location_name: "vmName"))
    VmServer.add_member(:vm_manager_name, Shapes::ShapeRef.new(shape: VmManagerName, location_name: "vmManagerName"))
    VmServer.add_member(:vm_manager_type, Shapes::ShapeRef.new(shape: VmManagerType, location_name: "vmManagerType"))
    VmServer.add_member(:vm_path, Shapes::ShapeRef.new(shape: VmPath, location_name: "vmPath"))
    VmServer.struct_class = Types::VmServer

    VmServerAddress.add_member(:vm_manager_id, Shapes::ShapeRef.new(shape: VmManagerId, location_name: "vmManagerId"))
    VmServerAddress.add_member(:vm_id, Shapes::ShapeRef.new(shape: VmId, location_name: "vmId"))
    VmServerAddress.struct_class = Types::VmServerAddress

    VmServerAddressList.member = Shapes::ShapeRef.new(shape: VmServerAddress)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-10-24"

      api.metadata = {
        "apiVersion" => "2016-10-24",
        "endpointPrefix" => "sms",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "SMS",
        "serviceFullName" => "AWS Server Migration Service",
        "serviceId" => "SMS",
        "signatureVersion" => "v4",
        "targetPrefix" => "AWSServerMigrationService_V2016_10_24",
        "uid" => "sms-2016-10-24",
      }

      api.add_operation(:create_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApp"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAppRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAppResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:create_replication_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateReplicationJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateReplicationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateReplicationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ServerCannotBeReplicatedException)
        o.errors << Shapes::ShapeRef.new(shape: ReplicationJobAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: NoConnectorsAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
        o.errors << Shapes::ShapeRef.new(shape: TemporarilyUnavailableException)
      end)

      api.add_operation(:delete_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApp"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAppRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAppResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:delete_app_launch_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAppLaunchConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAppLaunchConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAppLaunchConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:delete_app_replication_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAppReplicationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAppReplicationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAppReplicationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:delete_app_validation_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAppValidationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAppValidationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAppValidationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:delete_replication_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteReplicationJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteReplicationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteReplicationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ReplicationJobNotFoundException)
      end)

      api.add_operation(:delete_server_catalog, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteServerCatalog"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteServerCatalogRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteServerCatalogResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
      end)

      api.add_operation(:disassociate_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateConnector"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:generate_change_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GenerateChangeSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GenerateChangeSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GenerateChangeSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:generate_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GenerateTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GenerateTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: GenerateTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:get_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApp"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAppRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAppResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:get_app_launch_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAppLaunchConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAppLaunchConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAppLaunchConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:get_app_replication_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAppReplicationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAppReplicationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAppReplicationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:get_app_validation_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAppValidationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAppValidationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAppValidationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:get_app_validation_output, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAppValidationOutput"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAppValidationOutputRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAppValidationOutputResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:get_connectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConnectors"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetConnectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConnectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_replication_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReplicationJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetReplicationJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReplicationJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_replication_runs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReplicationRuns"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetReplicationRunsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReplicationRunsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_servers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetServersRequest)
        o.output = Shapes::ShapeRef.new(shape: GetServersResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:import_app_catalog, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportAppCatalog"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ImportAppCatalogRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportAppCatalogResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:import_server_catalog, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportServerCatalog"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ImportServerCatalogRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportServerCatalogResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NoConnectorsAvailableException)
      end)

      api.add_operation(:launch_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "LaunchApp"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: LaunchAppRequest)
        o.output = Shapes::ShapeRef.new(shape: LaunchAppResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:list_apps, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApps"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAppsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAppsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:notify_app_validation_output, Seahorse::Model::Operation.new.tap do |o|
        o.name = "NotifyAppValidationOutput"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: NotifyAppValidationOutputRequest)
        o.output = Shapes::ShapeRef.new(shape: NotifyAppValidationOutputResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:put_app_launch_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAppLaunchConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutAppLaunchConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAppLaunchConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:put_app_replication_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAppReplicationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutAppReplicationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAppReplicationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:put_app_validation_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAppValidationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutAppValidationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAppValidationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:start_app_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartAppReplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartAppReplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartAppReplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:start_on_demand_app_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartOnDemandAppReplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartOnDemandAppReplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartOnDemandAppReplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:start_on_demand_replication_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartOnDemandReplicationRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartOnDemandReplicationRunRequest)
        o.output = Shapes::ShapeRef.new(shape: StartOnDemandReplicationRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ReplicationRunLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DryRunOperationException)
      end)

      api.add_operation(:stop_app_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopAppReplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopAppReplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: StopAppReplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:terminate_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TerminateApp"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TerminateAppRequest)
        o.output = Shapes::ShapeRef.new(shape: TerminateAppResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:update_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApp"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAppRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAppResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:update_replication_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateReplicationJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateReplicationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateReplicationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ServerCannotBeReplicatedException)
        o.errors << Shapes::ShapeRef.new(shape: ReplicationJobNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
        o.errors << Shapes::ShapeRef.new(shape: TemporarilyUnavailableException)
      end)
    end

  end
end
