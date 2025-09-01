# frozen_string_literal: true

# This is generated code!

module Aws::SMS
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AmiId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#AmiId', name: 'AmiId')
    AppDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#AppDescription', name: 'AppDescription')
    AppId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#AppId', name: 'AppId')
    AppIdWithValidation = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#AppIdWithValidation', name: 'AppIdWithValidation', traits: {"smithy.api#pattern" => "^app-[0-9a-f]{17}$"})
    AppIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#AppIds', name: 'AppIds')
    AppLaunchConfigurationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#AppLaunchConfigurationStatus', name: 'AppLaunchConfigurationStatus')
    AppLaunchStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#AppLaunchStatus', name: 'AppLaunchStatus')
    AppLaunchStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#AppLaunchStatusMessage', name: 'AppLaunchStatusMessage')
    AppName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#AppName', name: 'AppName')
    AppReplicationConfigurationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#AppReplicationConfigurationStatus', name: 'AppReplicationConfigurationStatus')
    AppReplicationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#AppReplicationStatus', name: 'AppReplicationStatus')
    AppReplicationStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#AppReplicationStatusMessage', name: 'AppReplicationStatusMessage')
    AppStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#AppStatus', name: 'AppStatus')
    AppStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#AppStatusMessage', name: 'AppStatusMessage')
    AppSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#AppSummary', name: 'AppSummary')
    AppValidationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#AppValidationConfiguration', name: 'AppValidationConfiguration')
    AppValidationConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#AppValidationConfigurations', name: 'AppValidationConfigurations')
    AppValidationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#AppValidationOutput', name: 'AppValidationOutput')
    AppValidationStrategy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#AppValidationStrategy', name: 'AppValidationStrategy')
    Apps = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#Apps', name: 'Apps')
    AssociatePublicIpAddress = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.sms#AssociatePublicIpAddress', name: 'AssociatePublicIpAddress')
    AutoLaunch = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.sms#AutoLaunch', name: 'AutoLaunch')
    BucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#BucketName', name: 'BucketName')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ClientToken', name: 'ClientToken')
    Command = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#Command', name: 'Command', traits: {"smithy.api#length" => {"min" => 1, "max" => 64000}})
    Connector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#Connector', name: 'Connector')
    ConnectorCapability = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#ConnectorCapability', name: 'ConnectorCapability')
    ConnectorCapabilityList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#ConnectorCapabilityList', name: 'ConnectorCapabilityList')
    ConnectorId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ConnectorId', name: 'ConnectorId')
    ConnectorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#ConnectorList', name: 'ConnectorList')
    ConnectorStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#ConnectorStatus', name: 'ConnectorStatus')
    ConnectorVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ConnectorVersion', name: 'ConnectorVersion')
    CreateAppRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#CreateAppRequest', name: 'CreateAppRequest')
    CreateAppResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#CreateAppResponse', name: 'CreateAppResponse')
    CreateReplicationJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#CreateReplicationJobRequest', name: 'CreateReplicationJobRequest')
    CreateReplicationJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#CreateReplicationJobResponse', name: 'CreateReplicationJobResponse')
    DeleteAppLaunchConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DeleteAppLaunchConfigurationRequest', name: 'DeleteAppLaunchConfigurationRequest')
    DeleteAppLaunchConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DeleteAppLaunchConfigurationResponse', name: 'DeleteAppLaunchConfigurationResponse')
    DeleteAppReplicationConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DeleteAppReplicationConfigurationRequest', name: 'DeleteAppReplicationConfigurationRequest')
    DeleteAppReplicationConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DeleteAppReplicationConfigurationResponse', name: 'DeleteAppReplicationConfigurationResponse')
    DeleteAppRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DeleteAppRequest', name: 'DeleteAppRequest')
    DeleteAppResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DeleteAppResponse', name: 'DeleteAppResponse')
    DeleteAppValidationConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DeleteAppValidationConfigurationRequest', name: 'DeleteAppValidationConfigurationRequest')
    DeleteAppValidationConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DeleteAppValidationConfigurationResponse', name: 'DeleteAppValidationConfigurationResponse')
    DeleteReplicationJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DeleteReplicationJobRequest', name: 'DeleteReplicationJobRequest')
    DeleteReplicationJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DeleteReplicationJobResponse', name: 'DeleteReplicationJobResponse')
    DeleteServerCatalogRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DeleteServerCatalogRequest', name: 'DeleteServerCatalogRequest')
    DeleteServerCatalogResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DeleteServerCatalogResponse', name: 'DeleteServerCatalogResponse')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#Description', name: 'Description')
    DisassociateConnectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DisassociateConnectorRequest', name: 'DisassociateConnectorRequest')
    DisassociateConnectorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DisassociateConnectorResponse', name: 'DisassociateConnectorResponse')
    DryRunOperationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DryRunOperationException', name: 'DryRunOperationException', traits: {"aws.protocols#awsQueryError" => {"code" => "DryRunOperationException", "httpResponseCode" => 412}, "smithy.api#error" => "client", "smithy.api#httpError" => 412})
    EC2KeyName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#EC2KeyName', name: 'EC2KeyName')
    Encrypted = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.sms#Encrypted', name: 'Encrypted')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ErrorMessage', name: 'ErrorMessage')
    ExecutionTimeoutSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sms#ExecutionTimeoutSeconds', name: 'ExecutionTimeoutSeconds', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 60, "max" => 28800}})
    ForceStopAppReplication = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.sms#ForceStopAppReplication', name: 'ForceStopAppReplication')
    ForceTerminateApp = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.sms#ForceTerminateApp', name: 'ForceTerminateApp')
    Frequency = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sms#Frequency', name: 'Frequency')
    GenerateChangeSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GenerateChangeSetRequest', name: 'GenerateChangeSetRequest')
    GenerateChangeSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GenerateChangeSetResponse', name: 'GenerateChangeSetResponse')
    GenerateTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GenerateTemplateRequest', name: 'GenerateTemplateRequest')
    GenerateTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GenerateTemplateResponse', name: 'GenerateTemplateResponse')
    GetAppLaunchConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetAppLaunchConfigurationRequest', name: 'GetAppLaunchConfigurationRequest')
    GetAppLaunchConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetAppLaunchConfigurationResponse', name: 'GetAppLaunchConfigurationResponse')
    GetAppReplicationConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetAppReplicationConfigurationRequest', name: 'GetAppReplicationConfigurationRequest')
    GetAppReplicationConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetAppReplicationConfigurationResponse', name: 'GetAppReplicationConfigurationResponse')
    GetAppRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetAppRequest', name: 'GetAppRequest')
    GetAppResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetAppResponse', name: 'GetAppResponse')
    GetAppValidationConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetAppValidationConfigurationRequest', name: 'GetAppValidationConfigurationRequest')
    GetAppValidationConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetAppValidationConfigurationResponse', name: 'GetAppValidationConfigurationResponse')
    GetAppValidationOutputRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetAppValidationOutputRequest', name: 'GetAppValidationOutputRequest')
    GetAppValidationOutputResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetAppValidationOutputResponse', name: 'GetAppValidationOutputResponse')
    GetConnectorsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetConnectorsRequest', name: 'GetConnectorsRequest')
    GetConnectorsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetConnectorsResponse', name: 'GetConnectorsResponse')
    GetReplicationJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetReplicationJobsRequest', name: 'GetReplicationJobsRequest')
    GetReplicationJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetReplicationJobsResponse', name: 'GetReplicationJobsResponse')
    GetReplicationRunsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetReplicationRunsRequest', name: 'GetReplicationRunsRequest')
    GetReplicationRunsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetReplicationRunsResponse', name: 'GetReplicationRunsResponse')
    GetServersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetServersRequest', name: 'GetServersRequest')
    GetServersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetServersResponse', name: 'GetServersResponse')
    ImportAppCatalogRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ImportAppCatalogRequest', name: 'ImportAppCatalogRequest')
    ImportAppCatalogResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ImportAppCatalogResponse', name: 'ImportAppCatalogResponse')
    ImportServerCatalogRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ImportServerCatalogRequest', name: 'ImportServerCatalogRequest')
    ImportServerCatalogResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ImportServerCatalogResponse', name: 'ImportServerCatalogResponse')
    ImportedAppId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ImportedAppId', name: 'ImportedAppId')
    InstanceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#InstanceId', name: 'InstanceId', traits: {"smithy.api#pattern" => "^(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)$"})
    InstanceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#InstanceType', name: 'InstanceType')
    InternalError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#InternalError', name: 'InternalError', traits: {"aws.protocols#awsQueryError" => {"code" => "InternalError", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidParameterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#InvalidParameterException', name: 'InvalidParameterException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameter", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IpAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#IpAddress', name: 'IpAddress')
    KmsKeyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#KmsKeyId', name: 'KmsKeyId')
    LaunchAppRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#LaunchAppRequest', name: 'LaunchAppRequest')
    LaunchAppResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#LaunchAppResponse', name: 'LaunchAppResponse')
    LaunchDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#LaunchDetails', name: 'LaunchDetails')
    LaunchOrder = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sms#LaunchOrder', name: 'LaunchOrder')
    LicenseType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#LicenseType', name: 'LicenseType')
    ListAppsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ListAppsRequest', name: 'ListAppsRequest')
    ListAppsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ListAppsResponse', name: 'ListAppsResponse')
    LogicalId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#LogicalId', name: 'LogicalId')
    MacAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#MacAddress', name: 'MacAddress')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sms#MaxResults', name: 'MaxResults')
    MissingRequiredParameterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#MissingRequiredParameterException', name: 'MissingRequiredParameterException', traits: {"aws.protocols#awsQueryError" => {"code" => "MissingRequiredParameter", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#NextToken', name: 'NextToken')
    NoConnectorsAvailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#NoConnectorsAvailableException', name: 'NoConnectorsAvailableException', traits: {"aws.protocols#awsQueryError" => {"code" => "NoConnectorsAvailable", "httpResponseCode" => 430}, "smithy.api#error" => "client", "smithy.api#httpError" => 430})
    NonEmptyStringWithMaxLen255 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#NonEmptyStringWithMaxLen255', name: 'NonEmptyStringWithMaxLen255', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\S]+$"})
    NotificationContext = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#NotificationContext', name: 'NotificationContext')
    NotifyAppValidationOutputRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#NotifyAppValidationOutputRequest', name: 'NotifyAppValidationOutputRequest')
    NotifyAppValidationOutputResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#NotifyAppValidationOutputResponse', name: 'NotifyAppValidationOutputResponse')
    NumberOfRecentAmisToKeep = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sms#NumberOfRecentAmisToKeep', name: 'NumberOfRecentAmisToKeep')
    OperationNotPermittedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#OperationNotPermittedException', name: 'OperationNotPermittedException', traits: {"aws.protocols#awsQueryError" => {"code" => "OperationNotPermitted", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    OutputFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#OutputFormat', name: 'OutputFormat')
    PutAppLaunchConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#PutAppLaunchConfigurationRequest', name: 'PutAppLaunchConfigurationRequest')
    PutAppLaunchConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#PutAppLaunchConfigurationResponse', name: 'PutAppLaunchConfigurationResponse')
    PutAppReplicationConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#PutAppReplicationConfigurationRequest', name: 'PutAppReplicationConfigurationRequest')
    PutAppReplicationConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#PutAppReplicationConfigurationResponse', name: 'PutAppReplicationConfigurationResponse')
    PutAppValidationConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#PutAppValidationConfigurationRequest', name: 'PutAppValidationConfigurationRequest')
    PutAppValidationConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#PutAppValidationConfigurationResponse', name: 'PutAppValidationConfigurationResponse')
    ReplicationJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ReplicationJob', name: 'ReplicationJob')
    ReplicationJobAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ReplicationJobAlreadyExistsException', name: 'ReplicationJobAlreadyExistsException', traits: {"aws.protocols#awsQueryError" => {"code" => "ReplicationJobAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ReplicationJobId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ReplicationJobId', name: 'ReplicationJobId')
    ReplicationJobList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#ReplicationJobList', name: 'ReplicationJobList')
    ReplicationJobNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ReplicationJobNotFoundException', name: 'ReplicationJobNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "ReplicationJobNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReplicationJobState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#ReplicationJobState', name: 'ReplicationJobState')
    ReplicationJobStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ReplicationJobStatusMessage', name: 'ReplicationJobStatusMessage')
    ReplicationJobTerminated = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.sms#ReplicationJobTerminated', name: 'ReplicationJobTerminated')
    ReplicationRun = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ReplicationRun', name: 'ReplicationRun')
    ReplicationRunId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ReplicationRunId', name: 'ReplicationRunId')
    ReplicationRunLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ReplicationRunLimitExceededException', name: 'ReplicationRunLimitExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "ReplicationRunLimitExceeded", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ReplicationRunList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#ReplicationRunList', name: 'ReplicationRunList')
    ReplicationRunStage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ReplicationRunStage', name: 'ReplicationRunStage')
    ReplicationRunStageDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ReplicationRunStageDetails', name: 'ReplicationRunStageDetails')
    ReplicationRunStageProgress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ReplicationRunStageProgress', name: 'ReplicationRunStageProgress')
    ReplicationRunState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#ReplicationRunState', name: 'ReplicationRunState')
    ReplicationRunStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ReplicationRunStatusMessage', name: 'ReplicationRunStatusMessage')
    ReplicationRunType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#ReplicationRunType', name: 'ReplicationRunType')
    RoleName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#RoleName', name: 'RoleName')
    RunOnce = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.sms#RunOnce', name: 'RunOnce')
    S3BucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#S3BucketName', name: 'S3BucketName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}})
    S3KeyName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#S3KeyName', name: 'S3KeyName', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    S3Location = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#S3Location', name: 'S3Location')
    SSMOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#SSMOutput', name: 'SSMOutput')
    SSMValidationParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#SSMValidationParameters', name: 'SSMValidationParameters')
    ScriptType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#ScriptType', name: 'ScriptType')
    SecurityGroup = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#SecurityGroup', name: 'SecurityGroup')
    Server = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#Server', name: 'Server')
    ServerCannotBeReplicatedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ServerCannotBeReplicatedException', name: 'ServerCannotBeReplicatedException', traits: {"aws.protocols#awsQueryError" => {"code" => "ServerCannotBeReplicated", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ServerCatalogStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#ServerCatalogStatus', name: 'ServerCatalogStatus')
    ServerGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ServerGroup', name: 'ServerGroup')
    ServerGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ServerGroupId', name: 'ServerGroupId')
    ServerGroupLaunchConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ServerGroupLaunchConfiguration', name: 'ServerGroupLaunchConfiguration')
    ServerGroupLaunchConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#ServerGroupLaunchConfigurations', name: 'ServerGroupLaunchConfigurations')
    ServerGroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ServerGroupName', name: 'ServerGroupName')
    ServerGroupReplicationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ServerGroupReplicationConfiguration', name: 'ServerGroupReplicationConfiguration')
    ServerGroupReplicationConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#ServerGroupReplicationConfigurations', name: 'ServerGroupReplicationConfigurations')
    ServerGroupValidationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ServerGroupValidationConfiguration', name: 'ServerGroupValidationConfiguration')
    ServerGroupValidationConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#ServerGroupValidationConfigurations', name: 'ServerGroupValidationConfigurations')
    ServerGroups = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#ServerGroups', name: 'ServerGroups')
    ServerId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ServerId', name: 'ServerId')
    ServerLaunchConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ServerLaunchConfiguration', name: 'ServerLaunchConfiguration')
    ServerLaunchConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#ServerLaunchConfigurations', name: 'ServerLaunchConfigurations')
    ServerList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#ServerList', name: 'ServerList')
    ServerReplicationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ServerReplicationConfiguration', name: 'ServerReplicationConfiguration')
    ServerReplicationConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#ServerReplicationConfigurations', name: 'ServerReplicationConfigurations')
    ServerReplicationParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ServerReplicationParameters', name: 'ServerReplicationParameters')
    ServerType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#ServerType', name: 'ServerType')
    ServerValidationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ServerValidationConfiguration', name: 'ServerValidationConfiguration')
    ServerValidationConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#ServerValidationConfigurations', name: 'ServerValidationConfigurations')
    ServerValidationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ServerValidationOutput', name: 'ServerValidationOutput')
    ServerValidationStrategy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#ServerValidationStrategy', name: 'ServerValidationStrategy')
    Source = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#Source', name: 'Source')
    StackId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#StackId', name: 'StackId')
    StackName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#StackName', name: 'StackName')
    StartAppReplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#StartAppReplicationRequest', name: 'StartAppReplicationRequest')
    StartAppReplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#StartAppReplicationResponse', name: 'StartAppReplicationResponse')
    StartOnDemandAppReplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#StartOnDemandAppReplicationRequest', name: 'StartOnDemandAppReplicationRequest')
    StartOnDemandAppReplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#StartOnDemandAppReplicationResponse', name: 'StartOnDemandAppReplicationResponse')
    StartOnDemandReplicationRunRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#StartOnDemandReplicationRunRequest', name: 'StartOnDemandReplicationRunRequest')
    StartOnDemandReplicationRunResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#StartOnDemandReplicationRunResponse', name: 'StartOnDemandReplicationRunResponse')
    StopAppReplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#StopAppReplicationRequest', name: 'StopAppReplicationRequest')
    StopAppReplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#StopAppReplicationResponse', name: 'StopAppReplicationResponse')
    Subnet = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#Subnet', name: 'Subnet')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#TagKey', name: 'TagKey')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#TagValue', name: 'TagValue')
    Tags = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#Tags', name: 'Tags')
    TemporarilyUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#TemporarilyUnavailableException', name: 'TemporarilyUnavailableException', traits: {"aws.protocols#awsQueryError" => {"code" => "TemporarilyUnavailable", "httpResponseCode" => 503}, "smithy.api#error" => "server", "smithy.api#httpError" => 503})
    TerminateAppRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#TerminateAppRequest', name: 'TerminateAppRequest')
    TerminateAppResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#TerminateAppResponse', name: 'TerminateAppResponse')
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.sms#Timestamp', name: 'Timestamp')
    TotalServerGroups = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sms#TotalServerGroups', name: 'TotalServerGroups')
    TotalServers = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sms#TotalServers', name: 'TotalServers')
    UnauthorizedOperationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#UnauthorizedOperationException', name: 'UnauthorizedOperationException', traits: {"aws.protocols#awsQueryError" => {"code" => "UnauthorizedOperation", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    UpdateAppRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#UpdateAppRequest', name: 'UpdateAppRequest')
    UpdateAppResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#UpdateAppResponse', name: 'UpdateAppResponse')
    UpdateReplicationJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#UpdateReplicationJobRequest', name: 'UpdateReplicationJobRequest')
    UpdateReplicationJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#UpdateReplicationJobResponse', name: 'UpdateReplicationJobResponse')
    UserData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#UserData', name: 'UserData')
    UserDataValidationParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#UserDataValidationParameters', name: 'UserDataValidationParameters')
    VPC = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#VPC', name: 'VPC')
    ValidationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ValidationId', name: 'ValidationId', traits: {"smithy.api#pattern" => "^val-[0-9a-f]{17}$"})
    ValidationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ValidationOutput', name: 'ValidationOutput')
    ValidationOutputList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#ValidationOutputList', name: 'ValidationOutputList')
    ValidationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#ValidationStatus', name: 'ValidationStatus')
    ValidationStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ValidationStatusMessage', name: 'ValidationStatusMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 2500}})
    VmId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#VmId', name: 'VmId')
    VmManagerId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#VmManagerId', name: 'VmManagerId')
    VmManagerName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#VmManagerName', name: 'VmManagerName')
    VmManagerType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#VmManagerType', name: 'VmManagerType')
    VmName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#VmName', name: 'VmName')
    VmPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#VmPath', name: 'VmPath')
    VmServer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#VmServer', name: 'VmServer')
    VmServerAddress = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#VmServerAddress', name: 'VmServerAddress')
    VmServerAddressList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#VmServerAddressList', name: 'VmServerAddressList')

    AppIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AppId)
    AppLaunchConfigurationStatus.add_member(:not_configured, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotConfigured', traits: {"smithy.api#enumValue" => "NOT_CONFIGURED"}))
    AppLaunchConfigurationStatus.add_member(:configured, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Configured', traits: {"smithy.api#enumValue" => "CONFIGURED"}))
    AppLaunchStatus.add_member(:ready_for_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReadyForConfiguration', traits: {"smithy.api#enumValue" => "READY_FOR_CONFIGURATION"}))
    AppLaunchStatus.add_member(:configuration_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ConfigurationInProgress', traits: {"smithy.api#enumValue" => "CONFIGURATION_IN_PROGRESS"}))
    AppLaunchStatus.add_member(:configuration_invalid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ConfigurationInvalid', traits: {"smithy.api#enumValue" => "CONFIGURATION_INVALID"}))
    AppLaunchStatus.add_member(:ready_for_launch, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReadyForLaunch', traits: {"smithy.api#enumValue" => "READY_FOR_LAUNCH"}))
    AppLaunchStatus.add_member(:validation_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ValidationInProgress', traits: {"smithy.api#enumValue" => "VALIDATION_IN_PROGRESS"}))
    AppLaunchStatus.add_member(:launch_pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LaunchPending', traits: {"smithy.api#enumValue" => "LAUNCH_PENDING"}))
    AppLaunchStatus.add_member(:launch_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LaunchInProgress', traits: {"smithy.api#enumValue" => "LAUNCH_IN_PROGRESS"}))
    AppLaunchStatus.add_member(:launched, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Launched', traits: {"smithy.api#enumValue" => "LAUNCHED"}))
    AppLaunchStatus.add_member(:partially_launched, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PartiallyLaunched', traits: {"smithy.api#enumValue" => "PARTIALLY_LAUNCHED"}))
    AppLaunchStatus.add_member(:delta_launch_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DeltaLaunchInProgress', traits: {"smithy.api#enumValue" => "DELTA_LAUNCH_IN_PROGRESS"}))
    AppLaunchStatus.add_member(:delta_launch_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DeltaLaunchFailed', traits: {"smithy.api#enumValue" => "DELTA_LAUNCH_FAILED"}))
    AppLaunchStatus.add_member(:launch_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LaunchFailed', traits: {"smithy.api#enumValue" => "LAUNCH_FAILED"}))
    AppLaunchStatus.add_member(:terminate_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TerminateInProgress', traits: {"smithy.api#enumValue" => "TERMINATE_IN_PROGRESS"}))
    AppLaunchStatus.add_member(:terminate_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TerminateFailed', traits: {"smithy.api#enumValue" => "TERMINATE_FAILED"}))
    AppLaunchStatus.add_member(:terminated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Terminated', traits: {"smithy.api#enumValue" => "TERMINATED"}))
    AppReplicationConfigurationStatus.add_member(:not_configured, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotConfigured', traits: {"smithy.api#enumValue" => "NOT_CONFIGURED"}))
    AppReplicationConfigurationStatus.add_member(:configured, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Configured', traits: {"smithy.api#enumValue" => "CONFIGURED"}))
    AppReplicationStatus.add_member(:ready_for_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReadyForConfiguration', traits: {"smithy.api#enumValue" => "READY_FOR_CONFIGURATION"}))
    AppReplicationStatus.add_member(:configuration_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ConfigurationInProgress', traits: {"smithy.api#enumValue" => "CONFIGURATION_IN_PROGRESS"}))
    AppReplicationStatus.add_member(:configuration_invalid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ConfigurationInvalid', traits: {"smithy.api#enumValue" => "CONFIGURATION_INVALID"}))
    AppReplicationStatus.add_member(:ready_for_replication, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReadyForReplication', traits: {"smithy.api#enumValue" => "READY_FOR_REPLICATION"}))
    AppReplicationStatus.add_member(:validation_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ValidationInProgress', traits: {"smithy.api#enumValue" => "VALIDATION_IN_PROGRESS"}))
    AppReplicationStatus.add_member(:replication_pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReplicationPending', traits: {"smithy.api#enumValue" => "REPLICATION_PENDING"}))
    AppReplicationStatus.add_member(:replication_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReplicationInProgress', traits: {"smithy.api#enumValue" => "REPLICATION_IN_PROGRESS"}))
    AppReplicationStatus.add_member(:replicated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Replicated', traits: {"smithy.api#enumValue" => "REPLICATED"}))
    AppReplicationStatus.add_member(:partially_replicated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PartiallyReplicated', traits: {"smithy.api#enumValue" => "PARTIALLY_REPLICATED"}))
    AppReplicationStatus.add_member(:delta_replication_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DeltaReplicationInProgress', traits: {"smithy.api#enumValue" => "DELTA_REPLICATION_IN_PROGRESS"}))
    AppReplicationStatus.add_member(:delta_replicated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DeltaReplicated', traits: {"smithy.api#enumValue" => "DELTA_REPLICATED"}))
    AppReplicationStatus.add_member(:delta_replication_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DeltaReplicationFailed', traits: {"smithy.api#enumValue" => "DELTA_REPLICATION_FAILED"}))
    AppReplicationStatus.add_member(:replication_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReplicationFailed', traits: {"smithy.api#enumValue" => "REPLICATION_FAILED"}))
    AppReplicationStatus.add_member(:replication_stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReplicationStopping', traits: {"smithy.api#enumValue" => "REPLICATION_STOPPING"}))
    AppReplicationStatus.add_member(:replication_stop_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReplicationStopFailed', traits: {"smithy.api#enumValue" => "REPLICATION_STOP_FAILED"}))
    AppReplicationStatus.add_member(:replication_stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReplicationStopped', traits: {"smithy.api#enumValue" => "REPLICATION_STOPPED"}))
    AppStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Creating', traits: {"smithy.api#enumValue" => "CREATING"}))
    AppStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AppStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Updating', traits: {"smithy.api#enumValue" => "UPDATING"}))
    AppStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deleting', traits: {"smithy.api#enumValue" => "DELETING"}))
    AppStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deleted', traits: {"smithy.api#enumValue" => "DELETED"}))
    AppStatus.add_member(:delete_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    AppSummary.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID of the application.</p>"}))
    AppSummary.add_member(:imported_app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportedAppId, location_name: 'importedAppId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>"}))
    AppSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AppName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the application.</p>"}))
    AppSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: AppDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the application.</p>"}))
    AppSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AppStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Status of the application.</p>"}))
    AppSummary.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: AppStatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>A message related to the status of the application</p>"}))
    AppSummary.add_member(:replication_configuration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AppReplicationConfigurationStatus, location_name: 'replicationConfigurationStatus', traits: {"smithy.api#documentation" => "<p>Status of the replication configuration.</p>"}))
    AppSummary.add_member(:replication_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AppReplicationStatus, location_name: 'replicationStatus', traits: {"smithy.api#documentation" => "<p>The replication status of the application.</p>"}))
    AppSummary.add_member(:replication_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: AppReplicationStatusMessage, location_name: 'replicationStatusMessage', traits: {"smithy.api#documentation" => "<p>A message related to the replication status of the application.</p>"}))
    AppSummary.add_member(:latest_replication_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'latestReplicationTime', traits: {"smithy.api#documentation" => "<p>The timestamp of the application's most recent successful replication.</p>"}))
    AppSummary.add_member(:launch_configuration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AppLaunchConfigurationStatus, location_name: 'launchConfigurationStatus', traits: {"smithy.api#documentation" => "<p>Status of the launch configuration.</p>"}))
    AppSummary.add_member(:launch_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AppLaunchStatus, location_name: 'launchStatus', traits: {"smithy.api#documentation" => "<p>The launch status of the application.</p>"}))
    AppSummary.add_member(:launch_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: AppLaunchStatusMessage, location_name: 'launchStatusMessage', traits: {"smithy.api#documentation" => "<p>A message related to the launch status of the application.</p>"}))
    AppSummary.add_member(:launch_details, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchDetails, location_name: 'launchDetails', traits: {"smithy.api#documentation" => "<p>Details about the latest launch of the application.</p>"}))
    AppSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The creation time of the application.</p>"}))
    AppSummary.add_member(:last_modified, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModified', traits: {"smithy.api#documentation" => "<p>The last modified time of the application.</p>"}))
    AppSummary.add_member(:role_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleName, location_name: 'roleName', traits: {"smithy.api#documentation" => "<p>The name of the service role in the customer's account used by Server Migration Service.</p>"}))
    AppSummary.add_member(:total_server_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: TotalServerGroups, location_name: 'totalServerGroups', traits: {"smithy.api#documentation" => "<p>The number of server groups present in the application.</p>"}))
    AppSummary.add_member(:total_servers, Smithy::Schema::Shapes::ShapeRef.new(shape: TotalServers, location_name: 'totalServers', traits: {"smithy.api#documentation" => "<p>The number of servers present in the application.</p>"}))
    AppSummary.type = Types::AppSummary
    AppValidationConfiguration.add_member(:validation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationId, location_name: 'validationId', traits: {"smithy.api#documentation" => "<p>The ID of the validation.</p>"}))
    AppValidationConfiguration.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyStringWithMaxLen255, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the configuration.</p>"}))
    AppValidationConfiguration.add_member(:app_validation_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: AppValidationStrategy, location_name: 'appValidationStrategy', traits: {"smithy.api#documentation" => "<p>The validation strategy.</p>"}))
    AppValidationConfiguration.add_member(:ssm_validation_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SSMValidationParameters, location_name: 'ssmValidationParameters', traits: {"smithy.api#documentation" => "<p>The validation parameters.</p>"}))
    AppValidationConfiguration.type = Types::AppValidationConfiguration
    AppValidationConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AppValidationConfiguration)
    AppValidationOutput.add_member(:ssm_output, Smithy::Schema::Shapes::ShapeRef.new(shape: SSMOutput, location_name: 'ssmOutput', traits: {"smithy.api#documentation" => "<p>Output from using SSM to validate the application.</p>"}))
    AppValidationOutput.type = Types::AppValidationOutput
    AppValidationStrategy.add_member(:ssm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSM', traits: {"smithy.api#enumValue" => "SSM"}))
    Apps.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AppSummary)
    Connector.add_member(:connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorId, location_name: 'connectorId', traits: {"smithy.api#documentation" => "<p>The ID of the connector.</p>"}))
    Connector.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The connector version.</p>"}))
    Connector.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the connector.</p>"}))
    Connector.add_member(:capability_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorCapabilityList, location_name: 'capabilityList', traits: {"smithy.api#documentation" => "<p>The capabilities of the connector.</p>"}))
    Connector.add_member(:vm_manager_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VmManagerName, location_name: 'vmManagerName', traits: {"smithy.api#documentation" => "<p>The name of the VM manager.</p>"}))
    Connector.add_member(:vm_manager_type, Smithy::Schema::Shapes::ShapeRef.new(shape: VmManagerType, location_name: 'vmManagerType', traits: {"smithy.api#documentation" => "<p>The VM management product.</p>"}))
    Connector.add_member(:vm_manager_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VmManagerId, location_name: 'vmManagerId', traits: {"smithy.api#documentation" => "<p>The ID of the VM manager.</p>"}))
    Connector.add_member(:ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'ipAddress', traits: {"smithy.api#documentation" => "<p>The IP address of the connector.</p>"}))
    Connector.add_member(:mac_address, Smithy::Schema::Shapes::ShapeRef.new(shape: MacAddress, location_name: 'macAddress', traits: {"smithy.api#documentation" => "<p>The MAC address of the connector.</p>"}))
    Connector.add_member(:associated_on, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'associatedOn', traits: {"smithy.api#documentation" => "<p>The time the connector was associated.</p>"}))
    Connector.type = Types::Connector
    ConnectorCapability.add_member(:v_sphere, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'vSphere', traits: {"smithy.api#enumValue" => "VSPHERE"}))
    ConnectorCapability.add_member(:scvmm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'scvmm', traits: {"smithy.api#enumValue" => "SCVMM"}))
    ConnectorCapability.add_member(:hyper_v_manager, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'hyperVManager', traits: {"smithy.api#enumValue" => "HYPERV-MANAGER"}))
    ConnectorCapability.add_member(:snapshot_batching, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'snapshotBatching', traits: {"smithy.api#enumValue" => "SNAPSHOT_BATCHING"}))
    ConnectorCapability.add_member(:sms_optimized, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'smsOptimized', traits: {"smithy.api#enumValue" => "SMS_OPTIMIZED"}))
    ConnectorCapabilityList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorCapability, traits: {"smithy.api#xmlName" => "item"})
    ConnectorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Connector, traits: {"smithy.api#xmlName" => "item"})
    ConnectorStatus.add_member(:healthy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Healthy', traits: {"smithy.api#enumValue" => "HEALTHY"}))
    ConnectorStatus.add_member(:unhealthy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Unhealthy', traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    CreateAppRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AppName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the new application.</p>"}))
    CreateAppRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: AppDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the new application</p>"}))
    CreateAppRequest.add_member(:role_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleName, location_name: 'roleName', traits: {"smithy.api#documentation" => "<p>The name of the service role in the customer's account to be used by Server Migration Service.</p>"}))
    CreateAppRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of\n            application creation.</p>"}))
    CreateAppRequest.add_member(:server_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroups, location_name: 'serverGroups', traits: {"smithy.api#documentation" => "<p>The server groups to include in the application.</p>"}))
    CreateAppRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to be associated with the application.</p>"}))
    CreateAppRequest.type = Types::CreateAppRequest
    CreateAppResponse.add_member(:app_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: AppSummary, location_name: 'appSummary', traits: {"smithy.api#documentation" => "<p>A summary description of the application.</p>"}))
    CreateAppResponse.add_member(:server_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroups, location_name: 'serverGroups', traits: {"smithy.api#documentation" => "<p>The server groups included in the application.</p>"}))
    CreateAppResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the application.</p>"}))
    CreateAppResponse.type = Types::CreateAppResponse
    CreateReplicationJobRequest.add_member(:server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'serverId', traits: {"smithy.api#documentation" => "<p>The ID of the server.</p>", "smithy.api#required" => {}}))
    CreateReplicationJobRequest.add_member(:seed_replication_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'seedReplicationTime', traits: {"smithy.api#documentation" => "<p>The seed replication time.</p>", "smithy.api#required" => {}}))
    CreateReplicationJobRequest.add_member(:frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: Frequency, location_name: 'frequency', traits: {"smithy.api#documentation" => "<p>The time between consecutive replication runs, in hours.</p>"}))
    CreateReplicationJobRequest.add_member(:run_once, Smithy::Schema::Shapes::ShapeRef.new(shape: RunOnce, location_name: 'runOnce', traits: {"smithy.api#documentation" => "<p>Indicates whether to run the replication job one time.</p>"}))
    CreateReplicationJobRequest.add_member(:license_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseType, location_name: 'licenseType', traits: {"smithy.api#documentation" => "<p>The license type to be used for the AMI created by a successful replication\n            run.</p>"}))
    CreateReplicationJobRequest.add_member(:role_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleName, location_name: 'roleName', traits: {"smithy.api#documentation" => "<p>The name of the IAM role to be used by the Server Migration Service.</p>"}))
    CreateReplicationJobRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the replication job.</p>"}))
    CreateReplicationJobRequest.add_member(:number_of_recent_amis_to_keep, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfRecentAmisToKeep, location_name: 'numberOfRecentAmisToKeep', traits: {"smithy.api#documentation" => "<p>The maximum number of SMS-created AMIs to retain. The oldest is deleted after the\n            maximum number is reached and a new AMI is created.</p>"}))
    CreateReplicationJobRequest.add_member(:encrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Encrypted, location_name: 'encrypted', traits: {"smithy.api#documentation" => "<p>Indicates whether the replication job produces encrypted AMIs.</p>"}))
    CreateReplicationJobRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the KMS key for replication jobs that produce encrypted AMIs. \n            This value can be any of the following:</p>\n         <ul>\n            <li>\n               <p>KMS key ID</p>\n            </li>\n            <li>\n               <p>KMS key alias</p>\n            </li>\n            <li>\n               <p>ARN referring to the KMS key ID</p>\n            </li>\n            <li>\n               <p>ARN referring to the KMS key alias</p>\n            </li>\n         </ul>\n         <p> If encrypted is <i>true</i> but a KMS key ID is not specified, the\n            customer's default KMS key for Amazon EBS is used. </p>"}))
    CreateReplicationJobRequest.type = Types::CreateReplicationJobRequest
    CreateReplicationJobResponse.add_member(:replication_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobId, location_name: 'replicationJobId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the replication job.</p>"}))
    CreateReplicationJobResponse.type = Types::CreateReplicationJobResponse
    DeleteAppLaunchConfigurationRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>"}))
    DeleteAppLaunchConfigurationRequest.type = Types::DeleteAppLaunchConfigurationRequest
    DeleteAppLaunchConfigurationResponse.type = Types::DeleteAppLaunchConfigurationResponse
    DeleteAppReplicationConfigurationRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>"}))
    DeleteAppReplicationConfigurationRequest.type = Types::DeleteAppReplicationConfigurationRequest
    DeleteAppReplicationConfigurationResponse.type = Types::DeleteAppReplicationConfigurationResponse
    DeleteAppRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>"}))
    DeleteAppRequest.add_member(:force_stop_app_replication, Smithy::Schema::Shapes::ShapeRef.new(shape: ForceStopAppReplication, location_name: 'forceStopAppReplication', traits: {"smithy.api#documentation" => "<p>Indicates whether to stop all replication jobs corresponding to the servers\n            in the application while deleting the application.</p>"}))
    DeleteAppRequest.add_member(:force_terminate_app, Smithy::Schema::Shapes::ShapeRef.new(shape: ForceTerminateApp, location_name: 'forceTerminateApp', traits: {"smithy.api#documentation" => "<p>Indicates whether to terminate the stack corresponding to the\n            application while deleting the application.</p>"}))
    DeleteAppRequest.type = Types::DeleteAppRequest
    DeleteAppResponse.type = Types::DeleteAppResponse
    DeleteAppValidationConfigurationRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppIdWithValidation, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>", "smithy.api#required" => {}}))
    DeleteAppValidationConfigurationRequest.type = Types::DeleteAppValidationConfigurationRequest
    DeleteAppValidationConfigurationResponse.type = Types::DeleteAppValidationConfigurationResponse
    DeleteReplicationJobRequest.add_member(:replication_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobId, location_name: 'replicationJobId', traits: {"smithy.api#documentation" => "<p>The ID of the replication job.</p>", "smithy.api#required" => {}}))
    DeleteReplicationJobRequest.type = Types::DeleteReplicationJobRequest
    DeleteReplicationJobResponse.type = Types::DeleteReplicationJobResponse
    DeleteServerCatalogRequest.type = Types::DeleteServerCatalogRequest
    DeleteServerCatalogResponse.type = Types::DeleteServerCatalogResponse
    DisassociateConnectorRequest.add_member(:connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorId, location_name: 'connectorId', traits: {"smithy.api#documentation" => "<p>The ID of the connector.</p>", "smithy.api#required" => {}}))
    DisassociateConnectorRequest.type = Types::DisassociateConnectorRequest
    DisassociateConnectorResponse.type = Types::DisassociateConnectorResponse
    DryRunOperationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    DryRunOperationException.type = Types::DryRunOperationException
    GenerateChangeSetRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The ID of the application associated with the change set.</p>"}))
    GenerateChangeSetRequest.add_member(:changeset_format, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputFormat, location_name: 'changesetFormat', traits: {"smithy.api#documentation" => "<p>The format for the change set.</p>"}))
    GenerateChangeSetRequest.type = Types::GenerateChangeSetRequest
    GenerateChangeSetResponse.add_member(:s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 's3Location', traits: {"smithy.api#documentation" => "<p>The location of the Amazon S3 object.</p>"}))
    GenerateChangeSetResponse.type = Types::GenerateChangeSetResponse
    GenerateTemplateRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The ID of the application associated with the CloudFormation template.</p>"}))
    GenerateTemplateRequest.add_member(:template_format, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputFormat, location_name: 'templateFormat', traits: {"smithy.api#documentation" => "<p>The format for generating the CloudFormation template.</p>"}))
    GenerateTemplateRequest.type = Types::GenerateTemplateRequest
    GenerateTemplateResponse.add_member(:s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 's3Location', traits: {"smithy.api#documentation" => "<p>The location of the Amazon S3 object.</p>"}))
    GenerateTemplateResponse.type = Types::GenerateTemplateResponse
    GetAppLaunchConfigurationRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>"}))
    GetAppLaunchConfigurationRequest.type = Types::GetAppLaunchConfigurationRequest
    GetAppLaunchConfigurationResponse.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>"}))
    GetAppLaunchConfigurationResponse.add_member(:role_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleName, location_name: 'roleName', traits: {"smithy.api#documentation" => "<p>The name of the service role in the customer's account that CloudFormation uses to launch the\n            application.</p>"}))
    GetAppLaunchConfigurationResponse.add_member(:auto_launch, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoLaunch, location_name: 'autoLaunch', traits: {"smithy.api#documentation" => "<p>Indicates whether the application is configured to launch automatically after replication is complete.</p>"}))
    GetAppLaunchConfigurationResponse.add_member(:server_group_launch_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroupLaunchConfigurations, location_name: 'serverGroupLaunchConfigurations', traits: {"smithy.api#documentation" => "<p>The launch configurations for server groups in this application.</p>"}))
    GetAppLaunchConfigurationResponse.type = Types::GetAppLaunchConfigurationResponse
    GetAppReplicationConfigurationRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>"}))
    GetAppReplicationConfigurationRequest.type = Types::GetAppReplicationConfigurationRequest
    GetAppReplicationConfigurationResponse.add_member(:server_group_replication_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroupReplicationConfigurations, location_name: 'serverGroupReplicationConfigurations', traits: {"smithy.api#documentation" => "<p>The replication configurations associated with server groups in this application.</p>"}))
    GetAppReplicationConfigurationResponse.type = Types::GetAppReplicationConfigurationResponse
    GetAppRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>"}))
    GetAppRequest.type = Types::GetAppRequest
    GetAppResponse.add_member(:app_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: AppSummary, location_name: 'appSummary', traits: {"smithy.api#documentation" => "<p>Information about the application.</p>"}))
    GetAppResponse.add_member(:server_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroups, location_name: 'serverGroups', traits: {"smithy.api#documentation" => "<p>The server groups that belong to the application.</p>"}))
    GetAppResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the application.</p>"}))
    GetAppResponse.type = Types::GetAppResponse
    GetAppValidationConfigurationRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppIdWithValidation, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>", "smithy.api#required" => {}}))
    GetAppValidationConfigurationRequest.type = Types::GetAppValidationConfigurationRequest
    GetAppValidationConfigurationResponse.add_member(:app_validation_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: AppValidationConfigurations, location_name: 'appValidationConfigurations', traits: {"smithy.api#documentation" => "<p>The configuration for application validation.</p>"}))
    GetAppValidationConfigurationResponse.add_member(:server_group_validation_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroupValidationConfigurations, location_name: 'serverGroupValidationConfigurations', traits: {"smithy.api#documentation" => "<p>The configuration for instance validation.</p>"}))
    GetAppValidationConfigurationResponse.type = Types::GetAppValidationConfigurationResponse
    GetAppValidationOutputRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppIdWithValidation, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>", "smithy.api#required" => {}}))
    GetAppValidationOutputRequest.type = Types::GetAppValidationOutputRequest
    GetAppValidationOutputResponse.add_member(:validation_output_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationOutputList, location_name: 'validationOutputList', traits: {"smithy.api#documentation" => "<p>The validation output.</p>"}))
    GetAppValidationOutputResponse.type = Types::GetAppValidationOutputResponse
    GetConnectorsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results.</p>"}))
    GetConnectorsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call. The default value is 50.\n            To retrieve the remaining results, make another call with the returned\n                <code>NextToken</code> value.</p>"}))
    GetConnectorsRequest.type = Types::GetConnectorsRequest
    GetConnectorsResponse.add_member(:connector_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorList, location_name: 'connectorList', traits: {"smithy.api#documentation" => "<p>Information about the registered connectors.</p>"}))
    GetConnectorsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token required to retrieve the next set of results. This value is null when\n            there are no more results to return.</p>"}))
    GetConnectorsResponse.type = Types::GetConnectorsResponse
    GetReplicationJobsRequest.add_member(:replication_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobId, location_name: 'replicationJobId', traits: {"smithy.api#documentation" => "<p>The ID of the replication job.</p>"}))
    GetReplicationJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results.</p>"}))
    GetReplicationJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call. The default value is 50.\n            To retrieve the remaining results, make another call with the returned\n                <code>NextToken</code> value.</p>"}))
    GetReplicationJobsRequest.type = Types::GetReplicationJobsRequest
    GetReplicationJobsResponse.add_member(:replication_job_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobList, location_name: 'replicationJobList', traits: {"smithy.api#documentation" => "<p>Information about the replication jobs.</p>"}))
    GetReplicationJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token required to retrieve the next set of results. This value is null when\n            there are no more results to return.</p>"}))
    GetReplicationJobsResponse.type = Types::GetReplicationJobsResponse
    GetReplicationRunsRequest.add_member(:replication_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobId, location_name: 'replicationJobId', traits: {"smithy.api#documentation" => "<p>The ID of the replication job.</p>", "smithy.api#required" => {}}))
    GetReplicationRunsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results.</p>"}))
    GetReplicationRunsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call. The default value is 50.\n            To retrieve the remaining results, make another call with the returned\n                <code>NextToken</code> value.</p>"}))
    GetReplicationRunsRequest.type = Types::GetReplicationRunsRequest
    GetReplicationRunsResponse.add_member(:replication_job, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJob, location_name: 'replicationJob', traits: {"smithy.api#documentation" => "<p>Information about the replication job.</p>"}))
    GetReplicationRunsResponse.add_member(:replication_run_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRunList, location_name: 'replicationRunList', traits: {"smithy.api#documentation" => "<p>Information about the replication runs.</p>"}))
    GetReplicationRunsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token required to retrieve the next set of results. This value is null when\n            there are no more results to return.</p>"}))
    GetReplicationRunsResponse.type = Types::GetReplicationRunsResponse
    GetServersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results.</p>"}))
    GetServersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call. The default value is 50.\n            To retrieve the remaining results, make another call with the returned\n                <code>NextToken</code> value.</p>"}))
    GetServersRequest.add_member(:vm_server_address_list, Smithy::Schema::Shapes::ShapeRef.new(shape: VmServerAddressList, location_name: 'vmServerAddressList', traits: {"smithy.api#documentation" => "<p>The server addresses.</p>"}))
    GetServersRequest.type = Types::GetServersRequest
    GetServersResponse.add_member(:last_modified_on, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModifiedOn', traits: {"smithy.api#documentation" => "<p>The time when the server was last modified.</p>"}))
    GetServersResponse.add_member(:server_catalog_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerCatalogStatus, location_name: 'serverCatalogStatus', traits: {"smithy.api#documentation" => "<p>The status of the server catalog.</p>"}))
    GetServersResponse.add_member(:server_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerList, location_name: 'serverList', traits: {"smithy.api#documentation" => "<p>Information about the servers.</p>"}))
    GetServersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token required to retrieve the next set of results. This value is null when\n            there are no more results to return.</p>"}))
    GetServersResponse.type = Types::GetServersResponse
    ImportAppCatalogRequest.add_member(:role_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleName, location_name: 'roleName', traits: {"smithy.api#documentation" => "<p>The name of the service role. If you omit this parameter, we create a service-linked role\n            for Migration Hub in your account. Otherwise, the role that you provide must have the <a href=\"https://docs.aws.amazon.com/migrationhub/latest/ug/new-customer-setup.html#sms-managed\">policy\n                and trust policy</a> described in the <i>Migration Hub User Guide</i>.</p>"}))
    ImportAppCatalogRequest.type = Types::ImportAppCatalogRequest
    ImportAppCatalogResponse.type = Types::ImportAppCatalogResponse
    ImportServerCatalogRequest.type = Types::ImportServerCatalogRequest
    ImportServerCatalogResponse.type = Types::ImportServerCatalogResponse
    InternalError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InternalError.type = Types::InternalError
    InvalidParameterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidParameterException.type = Types::InvalidParameterException
    LaunchAppRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>"}))
    LaunchAppRequest.type = Types::LaunchAppRequest
    LaunchAppResponse.type = Types::LaunchAppResponse
    LaunchDetails.add_member(:latest_launch_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'latestLaunchTime', traits: {"smithy.api#documentation" => "<p>The latest time that this application was launched successfully.</p>"}))
    LaunchDetails.add_member(:stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StackName, location_name: 'stackName', traits: {"smithy.api#documentation" => "<p>The name of the latest stack launched for this application.</p>"}))
    LaunchDetails.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StackId, location_name: 'stackId', traits: {"smithy.api#documentation" => "<p>The ID of the latest stack launched for this application.</p>"}))
    LaunchDetails.type = Types::LaunchDetails
    LicenseType.add_member(:aws, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS', traits: {"smithy.api#enumValue" => "AWS"}))
    LicenseType.add_member(:byol, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BYOL', traits: {"smithy.api#enumValue" => "BYOL"}))
    ListAppsRequest.add_member(:app_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AppIds, location_name: 'appIds', traits: {"smithy.api#documentation" => "<p>The unique application IDs.</p>"}))
    ListAppsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results.</p>"}))
    ListAppsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call. The default value is 100. To\n            retrieve the remaining results, make another call with the returned\n                <code>NextToken</code> value. </p>"}))
    ListAppsRequest.type = Types::ListAppsRequest
    ListAppsResponse.add_member(:apps, Smithy::Schema::Shapes::ShapeRef.new(shape: Apps, location_name: 'apps', traits: {"smithy.api#documentation" => "<p>The application summaries.</p>"}))
    ListAppsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token required to retrieve the next set of results. This value is null when there\n            are no more results to return.</p>"}))
    ListAppsResponse.type = Types::ListAppsResponse
    MissingRequiredParameterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    MissingRequiredParameterException.type = Types::MissingRequiredParameterException
    NoConnectorsAvailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    NoConnectorsAvailableException.type = Types::NoConnectorsAvailableException
    NotificationContext.add_member(:validation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationId, location_name: 'validationId', traits: {"smithy.api#documentation" => "<p>The ID of the validation.</p>"}))
    NotificationContext.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the validation.</p>"}))
    NotificationContext.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationStatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The status message.</p>"}))
    NotificationContext.type = Types::NotificationContext
    NotifyAppValidationOutputRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppIdWithValidation, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>", "smithy.api#required" => {}}))
    NotifyAppValidationOutputRequest.add_member(:notification_context, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationContext, location_name: 'notificationContext', traits: {"smithy.api#documentation" => "<p>The notification information.</p>"}))
    NotifyAppValidationOutputRequest.type = Types::NotifyAppValidationOutputRequest
    NotifyAppValidationOutputResponse.type = Types::NotifyAppValidationOutputResponse
    OperationNotPermittedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    OperationNotPermittedException.type = Types::OperationNotPermittedException
    OutputFormat.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    OutputFormat.add_member(:yaml, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'YAML', traits: {"smithy.api#enumValue" => "YAML"}))
    PutAppLaunchConfigurationRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>"}))
    PutAppLaunchConfigurationRequest.add_member(:role_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleName, location_name: 'roleName', traits: {"smithy.api#documentation" => "<p>The name of service role in the customer's account that CloudFormation uses to launch the\n            application.</p>"}))
    PutAppLaunchConfigurationRequest.add_member(:auto_launch, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoLaunch, location_name: 'autoLaunch', traits: {"smithy.api#documentation" => "<p>Indicates whether the application is configured to launch automatically after replication is complete.</p>"}))
    PutAppLaunchConfigurationRequest.add_member(:server_group_launch_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroupLaunchConfigurations, location_name: 'serverGroupLaunchConfigurations', traits: {"smithy.api#documentation" => "<p>Information about the launch configurations for server groups in the application.</p>"}))
    PutAppLaunchConfigurationRequest.type = Types::PutAppLaunchConfigurationRequest
    PutAppLaunchConfigurationResponse.type = Types::PutAppLaunchConfigurationResponse
    PutAppReplicationConfigurationRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>"}))
    PutAppReplicationConfigurationRequest.add_member(:server_group_replication_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroupReplicationConfigurations, location_name: 'serverGroupReplicationConfigurations', traits: {"smithy.api#documentation" => "<p>Information about the replication configurations for server groups in the application.</p>"}))
    PutAppReplicationConfigurationRequest.type = Types::PutAppReplicationConfigurationRequest
    PutAppReplicationConfigurationResponse.type = Types::PutAppReplicationConfigurationResponse
    PutAppValidationConfigurationRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppIdWithValidation, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>", "smithy.api#required" => {}}))
    PutAppValidationConfigurationRequest.add_member(:app_validation_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: AppValidationConfigurations, location_name: 'appValidationConfigurations', traits: {"smithy.api#documentation" => "<p>The configuration for application validation.</p>"}))
    PutAppValidationConfigurationRequest.add_member(:server_group_validation_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroupValidationConfigurations, location_name: 'serverGroupValidationConfigurations', traits: {"smithy.api#documentation" => "<p>The configuration for instance validation.</p>"}))
    PutAppValidationConfigurationRequest.type = Types::PutAppValidationConfigurationRequest
    PutAppValidationConfigurationResponse.type = Types::PutAppValidationConfigurationResponse
    ReplicationJob.add_member(:replication_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobId, location_name: 'replicationJobId', traits: {"smithy.api#documentation" => "<p>The ID of the replication job.</p>"}))
    ReplicationJob.add_member(:server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'serverId', traits: {"smithy.api#documentation" => "<p>The ID of the server.</p>"}))
    ReplicationJob.add_member(:server_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerType, location_name: 'serverType', traits: {"smithy.api#documentation" => "<p>The type of server.</p>"}))
    ReplicationJob.add_member(:vm_server, Smithy::Schema::Shapes::ShapeRef.new(shape: VmServer, location_name: 'vmServer', traits: {"smithy.api#documentation" => "<p>Information about the VM server.</p>"}))
    ReplicationJob.add_member(:seed_replication_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'seedReplicationTime', traits: {"smithy.api#documentation" => "<p>The seed replication time.</p>"}))
    ReplicationJob.add_member(:frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: Frequency, location_name: 'frequency', traits: {"smithy.api#documentation" => "<p>The time between consecutive replication runs, in hours.</p>"}))
    ReplicationJob.add_member(:run_once, Smithy::Schema::Shapes::ShapeRef.new(shape: RunOnce, location_name: 'runOnce', traits: {"smithy.api#documentation" => "<p>Indicates whether to run the replication job one time.</p>"}))
    ReplicationJob.add_member(:next_replication_run_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'nextReplicationRunStartTime', traits: {"smithy.api#documentation" => "<p>The start time of the next replication run.</p>"}))
    ReplicationJob.add_member(:license_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseType, location_name: 'licenseType', traits: {"smithy.api#documentation" => "<p>The license type to be used for the AMI created by a successful replication\n            run.</p>"}))
    ReplicationJob.add_member(:role_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleName, location_name: 'roleName', traits: {"smithy.api#documentation" => "<p>The name of the IAM role to be used by Server Migration Service.</p>"}))
    ReplicationJob.add_member(:latest_ami_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AmiId, location_name: 'latestAmiId', traits: {"smithy.api#documentation" => "<p>The ID of the latest Amazon Machine Image (AMI).</p>"}))
    ReplicationJob.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of the replication job.</p>"}))
    ReplicationJob.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobStatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The description of the current status of the replication job.</p>"}))
    ReplicationJob.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the replication job.</p>"}))
    ReplicationJob.add_member(:number_of_recent_amis_to_keep, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfRecentAmisToKeep, location_name: 'numberOfRecentAmisToKeep', traits: {"smithy.api#documentation" => "<p>The number of recent AMIs to keep in the customer's account for a replication job. By\n            default, the value is set to zero, meaning that all AMIs are kept.</p>"}))
    ReplicationJob.add_member(:encrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Encrypted, location_name: 'encrypted', traits: {"smithy.api#documentation" => "<p>Indicates whether the replication job should produce encrypted AMIs.</p>"}))
    ReplicationJob.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the KMS key for replication jobs that produce encrypted AMIs. \n            This value can be any of the following: </p>\n         <ul>\n            <li>\n               <p>KMS key ID</p>\n            </li>\n            <li>\n               <p>KMS key alias</p>\n            </li>\n            <li>\n               <p>ARN referring to the KMS key ID</p>\n            </li>\n            <li>\n               <p>ARN referring to the KMS key alias</p>\n            </li>\n         </ul>\n         <p>If encrypted is enabled but a KMS key ID is not specified, the\n            customer's default KMS key for Amazon EBS is used.</p>"}))
    ReplicationJob.add_member(:replication_run_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRunList, location_name: 'replicationRunList', traits: {"smithy.api#documentation" => "<p>Information about the replication runs.</p>"}))
    ReplicationJob.type = Types::ReplicationJob
    ReplicationJobAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ReplicationJobAlreadyExistsException.type = Types::ReplicationJobAlreadyExistsException
    ReplicationJobList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJob, traits: {"smithy.api#xmlName" => "item"})
    ReplicationJobNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ReplicationJobNotFoundException.type = Types::ReplicationJobNotFoundException
    ReplicationJobState.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pending', traits: {"smithy.api#enumValue" => "PENDING"}))
    ReplicationJobState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ReplicationJobState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "FAILED"}))
    ReplicationJobState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deleting', traits: {"smithy.api#enumValue" => "DELETING"}))
    ReplicationJobState.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deleted', traits: {"smithy.api#enumValue" => "DELETED"}))
    ReplicationJobState.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Completed', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ReplicationJobState.add_member(:paused_on_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PausedOnFailure', traits: {"smithy.api#enumValue" => "PAUSED_ON_FAILURE"}))
    ReplicationJobState.add_member(:failing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failing', traits: {"smithy.api#enumValue" => "FAILING"}))
    ReplicationRun.add_member(:replication_run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRunId, location_name: 'replicationRunId', traits: {"smithy.api#documentation" => "<p>The ID of the replication run.</p>"}))
    ReplicationRun.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRunState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of the replication run.</p>"}))
    ReplicationRun.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRunType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of replication run.</p>"}))
    ReplicationRun.add_member(:stage_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRunStageDetails, location_name: 'stageDetails', traits: {"smithy.api#documentation" => "<p>Details about the current stage of the replication run.</p>"}))
    ReplicationRun.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRunStatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The description of the current status of the replication job.</p>"}))
    ReplicationRun.add_member(:ami_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AmiId, location_name: 'amiId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Machine Image (AMI) from the replication\n            run.</p>"}))
    ReplicationRun.add_member(:scheduled_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'scheduledStartTime', traits: {"smithy.api#documentation" => "<p>The start time of the next replication run.</p>"}))
    ReplicationRun.add_member(:completed_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'completedTime', traits: {"smithy.api#documentation" => "<p>The completion time of the last replication run.</p>"}))
    ReplicationRun.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the replication run.</p>"}))
    ReplicationRun.add_member(:encrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Encrypted, location_name: 'encrypted', traits: {"smithy.api#documentation" => "<p>Indicates whether the replication run should produce an encrypted AMI.</p>"}))
    ReplicationRun.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the KMS key for replication jobs that produce encrypted AMIs. \n            This value can be any of the following:</p>\n         <ul>\n            <li>\n               <p>KMS key ID</p>\n            </li>\n            <li>\n               <p>KMS key alias</p>\n            </li>\n            <li>\n               <p>ARN referring to the KMS key ID</p>\n            </li>\n            <li>\n               <p>ARN referring to the KMS key alias</p>\n            </li>\n         </ul>\n         <p> If encrypted is <i>true</i> but a KMS key ID is not specified, the\n            customer's default KMS key for Amazon EBS is used. </p>"}))
    ReplicationRun.type = Types::ReplicationRun
    ReplicationRunLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ReplicationRunLimitExceededException.type = Types::ReplicationRunLimitExceededException
    ReplicationRunList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRun, traits: {"smithy.api#xmlName" => "item"})
    ReplicationRunStageDetails.add_member(:stage, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRunStage, location_name: 'stage', traits: {"smithy.api#documentation" => "<p>The current stage of a replication run.</p>"}))
    ReplicationRunStageDetails.add_member(:stage_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRunStageProgress, location_name: 'stageProgress', traits: {"smithy.api#documentation" => "<p>The progress of the current stage of a replication run.</p>"}))
    ReplicationRunStageDetails.type = Types::ReplicationRunStageDetails
    ReplicationRunState.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pending', traits: {"smithy.api#enumValue" => "PENDING"}))
    ReplicationRunState.add_member(:missed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Missed', traits: {"smithy.api#enumValue" => "MISSED"}))
    ReplicationRunState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ReplicationRunState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "FAILED"}))
    ReplicationRunState.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Completed', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ReplicationRunState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deleting', traits: {"smithy.api#enumValue" => "DELETING"}))
    ReplicationRunState.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deleted', traits: {"smithy.api#enumValue" => "DELETED"}))
    ReplicationRunType.add_member(:on_demand, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OnDemand', traits: {"smithy.api#enumValue" => "ON_DEMAND"}))
    ReplicationRunType.add_member(:automatic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Automatic', traits: {"smithy.api#enumValue" => "AUTOMATIC"}))
    S3Location.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket name.</p>"}))
    S3Location.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyName, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket key.</p>"}))
    S3Location.type = Types::S3Location
    SSMOutput.add_member(:s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 's3Location'))
    SSMOutput.type = Types::SSMOutput
    SSMValidationParameters.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The location of the validation script.</p>"}))
    SSMValidationParameters.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The ID of the instance. The instance must have the following tag: UserForSMSApplicationValidation=true.</p>"}))
    SSMValidationParameters.add_member(:script_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ScriptType, location_name: 'scriptType', traits: {"smithy.api#documentation" => "<p>The type of validation script.</p>"}))
    SSMValidationParameters.add_member(:command, Smithy::Schema::Shapes::ShapeRef.new(shape: Command, location_name: 'command', traits: {"smithy.api#documentation" => "<p>The command to run the validation script.</p>"}))
    SSMValidationParameters.add_member(:execution_timeout_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionTimeoutSeconds, location_name: 'executionTimeoutSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The timeout interval, in seconds.</p>"}))
    SSMValidationParameters.add_member(:output_s3_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: 'outputS3BucketName', traits: {"smithy.api#documentation" => "<p>The name of the S3 bucket for output.</p>"}))
    SSMValidationParameters.type = Types::SSMValidationParameters
    ScriptType.add_member(:shell_script, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHELL_SCRIPT', traits: {"smithy.api#enumValue" => "SHELL_SCRIPT"}))
    ScriptType.add_member(:powershell_script, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POWERSHELL_SCRIPT', traits: {"smithy.api#enumValue" => "POWERSHELL_SCRIPT"}))
    Server.add_member(:server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'serverId', traits: {"smithy.api#documentation" => "<p>The ID of the server.</p>"}))
    Server.add_member(:server_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerType, location_name: 'serverType', traits: {"smithy.api#documentation" => "<p>The type of server.</p>"}))
    Server.add_member(:vm_server, Smithy::Schema::Shapes::ShapeRef.new(shape: VmServer, location_name: 'vmServer', traits: {"smithy.api#documentation" => "<p>Information about the VM server.</p>"}))
    Server.add_member(:replication_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobId, location_name: 'replicationJobId', traits: {"smithy.api#documentation" => "<p>The ID of the replication job.</p>"}))
    Server.add_member(:replication_job_terminated, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobTerminated, location_name: 'replicationJobTerminated', traits: {"smithy.api#documentation" => "<p>Indicates whether the replication job is deleted or failed.</p>"}))
    Server.type = Types::Server
    ServerCannotBeReplicatedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ServerCannotBeReplicatedException.type = Types::ServerCannotBeReplicatedException
    ServerCatalogStatus.add_member(:not_imported, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotImported', traits: {"smithy.api#enumValue" => "NOT_IMPORTED"}))
    ServerCatalogStatus.add_member(:importing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Importing', traits: {"smithy.api#enumValue" => "IMPORTING"}))
    ServerCatalogStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Available', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ServerCatalogStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deleted', traits: {"smithy.api#enumValue" => "DELETED"}))
    ServerCatalogStatus.add_member(:expired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Expired', traits: {"smithy.api#enumValue" => "EXPIRED"}))
    ServerGroup.add_member(:server_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroupId, location_name: 'serverGroupId', traits: {"smithy.api#documentation" => "<p>The ID of a server group.</p>"}))
    ServerGroup.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroupName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of a server group.</p>"}))
    ServerGroup.add_member(:server_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerList, location_name: 'serverList', traits: {"smithy.api#documentation" => "<p>The servers that belong to a server group.</p>"}))
    ServerGroup.type = Types::ServerGroup
    ServerGroupLaunchConfiguration.add_member(:server_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroupId, location_name: 'serverGroupId', traits: {"smithy.api#documentation" => "<p>The ID of the server group with which the launch configuration is\n            associated.</p>"}))
    ServerGroupLaunchConfiguration.add_member(:launch_order, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchOrder, location_name: 'launchOrder', traits: {"smithy.api#documentation" => "<p>The launch order of servers in the server group.</p>"}))
    ServerGroupLaunchConfiguration.add_member(:server_launch_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerLaunchConfigurations, location_name: 'serverLaunchConfigurations', traits: {"smithy.api#documentation" => "<p>The launch configuration for servers in the server group.</p>"}))
    ServerGroupLaunchConfiguration.type = Types::ServerGroupLaunchConfiguration
    ServerGroupLaunchConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroupLaunchConfiguration)
    ServerGroupReplicationConfiguration.add_member(:server_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroupId, location_name: 'serverGroupId', traits: {"smithy.api#documentation" => "<p>The ID of the server group with which this replication configuration is\n            associated.</p>"}))
    ServerGroupReplicationConfiguration.add_member(:server_replication_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerReplicationConfigurations, location_name: 'serverReplicationConfigurations', traits: {"smithy.api#documentation" => "<p>The replication configuration for servers in the server group.</p>"}))
    ServerGroupReplicationConfiguration.type = Types::ServerGroupReplicationConfiguration
    ServerGroupReplicationConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroupReplicationConfiguration)
    ServerGroupValidationConfiguration.add_member(:server_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroupId, location_name: 'serverGroupId', traits: {"smithy.api#documentation" => "<p>The ID of the server group.</p>"}))
    ServerGroupValidationConfiguration.add_member(:server_validation_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerValidationConfigurations, location_name: 'serverValidationConfigurations', traits: {"smithy.api#documentation" => "<p>The validation configuration.</p>"}))
    ServerGroupValidationConfiguration.type = Types::ServerGroupValidationConfiguration
    ServerGroupValidationConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroupValidationConfiguration)
    ServerGroups.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroup)
    ServerLaunchConfiguration.add_member(:server, Smithy::Schema::Shapes::ShapeRef.new(shape: Server, location_name: 'server', traits: {"smithy.api#documentation" => "<p>The ID of the server with which the launch configuration is associated.</p>"}))
    ServerLaunchConfiguration.add_member(:logical_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LogicalId, location_name: 'logicalId', traits: {"smithy.api#documentation" => "<p>The logical ID of the server in the CloudFormation template.</p>"}))
    ServerLaunchConfiguration.add_member(:vpc, Smithy::Schema::Shapes::ShapeRef.new(shape: VPC, location_name: 'vpc', traits: {"smithy.api#documentation" => "<p>The ID of the VPC into which the server should be launched.</p>"}))
    ServerLaunchConfiguration.add_member(:subnet, Smithy::Schema::Shapes::ShapeRef.new(shape: Subnet, location_name: 'subnet', traits: {"smithy.api#documentation" => "<p>The ID of the subnet the server should be launched into.</p>"}))
    ServerLaunchConfiguration.add_member(:security_group, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroup, location_name: 'securityGroup', traits: {"smithy.api#documentation" => "<p>The ID of the security group that applies to the launched server.</p>"}))
    ServerLaunchConfiguration.add_member(:ec2_key_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2KeyName, location_name: 'ec2KeyName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon EC2 SSH key to be used for connecting to the launched server.</p>"}))
    ServerLaunchConfiguration.add_member(:user_data, Smithy::Schema::Shapes::ShapeRef.new(shape: UserData, location_name: 'userData', traits: {"smithy.api#documentation" => "<p>Location of the user-data script to be executed when launching the server.</p>"}))
    ServerLaunchConfiguration.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'instanceType', traits: {"smithy.api#documentation" => "<p>The instance type to use when launching the server.</p>"}))
    ServerLaunchConfiguration.add_member(:associate_public_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatePublicIpAddress, location_name: 'associatePublicIpAddress', traits: {"smithy.api#documentation" => "<p>Indicates whether a publicly accessible IP address is created when launching the server.</p>"}))
    ServerLaunchConfiguration.add_member(:iam_instance_profile_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleName, location_name: 'iamInstanceProfileName', traits: {"smithy.api#documentation" => "<p>The name of the IAM instance profile.</p>"}))
    ServerLaunchConfiguration.add_member(:configure_script, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'configureScript'))
    ServerLaunchConfiguration.add_member(:configure_script_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ScriptType, location_name: 'configureScriptType', traits: {"smithy.api#documentation" => "<p>The type of configuration script.</p>"}))
    ServerLaunchConfiguration.type = Types::ServerLaunchConfiguration
    ServerLaunchConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServerLaunchConfiguration)
    ServerList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Server, traits: {"smithy.api#xmlName" => "item"})
    ServerReplicationConfiguration.add_member(:server, Smithy::Schema::Shapes::ShapeRef.new(shape: Server, location_name: 'server', traits: {"smithy.api#documentation" => "<p>The ID of the server with which this replication configuration is\n            associated.</p>"}))
    ServerReplicationConfiguration.add_member(:server_replication_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerReplicationParameters, location_name: 'serverReplicationParameters', traits: {"smithy.api#documentation" => "<p>The parameters for replicating the server.</p>"}))
    ServerReplicationConfiguration.type = Types::ServerReplicationConfiguration
    ServerReplicationConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServerReplicationConfiguration)
    ServerReplicationParameters.add_member(:seed_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'seedTime', traits: {"smithy.api#documentation" => "<p>The seed time for creating a replication job for the server.</p>"}))
    ServerReplicationParameters.add_member(:frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: Frequency, location_name: 'frequency', traits: {"smithy.api#documentation" => "<p>The frequency of creating replication jobs for the server.</p>"}))
    ServerReplicationParameters.add_member(:run_once, Smithy::Schema::Shapes::ShapeRef.new(shape: RunOnce, location_name: 'runOnce', traits: {"smithy.api#documentation" => "<p>Indicates whether to run the replication job one time.</p>"}))
    ServerReplicationParameters.add_member(:license_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseType, location_name: 'licenseType', traits: {"smithy.api#documentation" => "<p>The license type for creating a replication job for the server.</p>"}))
    ServerReplicationParameters.add_member(:number_of_recent_amis_to_keep, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfRecentAmisToKeep, location_name: 'numberOfRecentAmisToKeep', traits: {"smithy.api#documentation" => "<p>The number of recent AMIs to keep when creating a replication job for this server.</p>"}))
    ServerReplicationParameters.add_member(:encrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Encrypted, location_name: 'encrypted', traits: {"smithy.api#documentation" => "<p>Indicates whether the replication job produces encrypted AMIs.</p>"}))
    ServerReplicationParameters.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the KMS key for replication jobs that produce encrypted AMIs. \n            This value can be any of the following:</p>\n         <ul>\n            <li>\n               <p>KMS key ID</p>\n            </li>\n            <li>\n               <p>KMS key alias</p>\n            </li>\n            <li>\n               <p>ARN referring to the KMS key ID</p>\n            </li>\n            <li>\n               <p>ARN referring to the KMS key alias</p>\n            </li>\n         </ul>\n         <p>If encrypted is enabled but a KMS key ID is not specified, the\n            customer's default KMS key for Amazon EBS is used.</p>"}))
    ServerReplicationParameters.type = Types::ServerReplicationParameters
    ServerType.add_member(:virtual_machine, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VirtualMachine', traits: {"smithy.api#enumValue" => "VIRTUAL_MACHINE"}))
    ServerValidationConfiguration.add_member(:server, Smithy::Schema::Shapes::ShapeRef.new(shape: Server, location_name: 'server'))
    ServerValidationConfiguration.add_member(:validation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationId, location_name: 'validationId', traits: {"smithy.api#documentation" => "<p>The ID of the validation.</p>"}))
    ServerValidationConfiguration.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyStringWithMaxLen255, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the configuration.</p>"}))
    ServerValidationConfiguration.add_member(:server_validation_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerValidationStrategy, location_name: 'serverValidationStrategy', traits: {"smithy.api#documentation" => "<p>The validation strategy.</p>"}))
    ServerValidationConfiguration.add_member(:user_data_validation_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: UserDataValidationParameters, location_name: 'userDataValidationParameters', traits: {"smithy.api#documentation" => "<p>The validation parameters.</p>"}))
    ServerValidationConfiguration.type = Types::ServerValidationConfiguration
    ServerValidationConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServerValidationConfiguration)
    ServerValidationOutput.add_member(:server, Smithy::Schema::Shapes::ShapeRef.new(shape: Server, location_name: 'server'))
    ServerValidationOutput.type = Types::ServerValidationOutput
    ServerValidationStrategy.add_member(:userdata, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USERDATA', traits: {"smithy.api#enumValue" => "USERDATA"}))
    Source.add_member(:s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 's3Location'))
    Source.type = Types::Source
    StartAppReplicationRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>"}))
    StartAppReplicationRequest.type = Types::StartAppReplicationRequest
    StartAppReplicationResponse.type = Types::StartAppReplicationResponse
    StartOnDemandAppReplicationRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>", "smithy.api#required" => {}}))
    StartOnDemandAppReplicationRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the replication run.</p>"}))
    StartOnDemandAppReplicationRequest.type = Types::StartOnDemandAppReplicationRequest
    StartOnDemandAppReplicationResponse.type = Types::StartOnDemandAppReplicationResponse
    StartOnDemandReplicationRunRequest.add_member(:replication_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobId, location_name: 'replicationJobId', traits: {"smithy.api#documentation" => "<p>The ID of the replication job.</p>", "smithy.api#required" => {}}))
    StartOnDemandReplicationRunRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the replication run.</p>"}))
    StartOnDemandReplicationRunRequest.type = Types::StartOnDemandReplicationRunRequest
    StartOnDemandReplicationRunResponse.add_member(:replication_run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRunId, location_name: 'replicationRunId', traits: {"smithy.api#documentation" => "<p>The ID of the replication run.</p>"}))
    StartOnDemandReplicationRunResponse.type = Types::StartOnDemandReplicationRunResponse
    StopAppReplicationRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>"}))
    StopAppReplicationRequest.type = Types::StopAppReplicationRequest
    StopAppReplicationResponse.type = Types::StopAppReplicationResponse
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The tag key.</p>"}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The tag value.</p>"}))
    Tag.type = Types::Tag
    Tags.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TemporarilyUnavailableException.type = Types::TemporarilyUnavailableException
    TerminateAppRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>"}))
    TerminateAppRequest.type = Types::TerminateAppRequest
    TerminateAppResponse.type = Types::TerminateAppResponse
    UnauthorizedOperationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    UnauthorizedOperationException.type = Types::UnauthorizedOperationException
    UpdateAppRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>"}))
    UpdateAppRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AppName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The new name of the application.</p>"}))
    UpdateAppRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: AppDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The new description of the application.</p>"}))
    UpdateAppRequest.add_member(:role_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleName, location_name: 'roleName', traits: {"smithy.api#documentation" => "<p>The name of the service role in the customer's account used by Server Migration Service.</p>"}))
    UpdateAppRequest.add_member(:server_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroups, location_name: 'serverGroups', traits: {"smithy.api#documentation" => "<p>The server groups in the application to update.</p>"}))
    UpdateAppRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to associate with the application.</p>"}))
    UpdateAppRequest.type = Types::UpdateAppRequest
    UpdateAppResponse.add_member(:app_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: AppSummary, location_name: 'appSummary', traits: {"smithy.api#documentation" => "<p>A summary description of the application.</p>"}))
    UpdateAppResponse.add_member(:server_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroups, location_name: 'serverGroups', traits: {"smithy.api#documentation" => "<p>The updated server groups in the application.</p>"}))
    UpdateAppResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the application.</p>"}))
    UpdateAppResponse.type = Types::UpdateAppResponse
    UpdateReplicationJobRequest.add_member(:replication_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobId, location_name: 'replicationJobId', traits: {"smithy.api#documentation" => "<p>The ID of the replication job.</p>", "smithy.api#required" => {}}))
    UpdateReplicationJobRequest.add_member(:frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: Frequency, location_name: 'frequency', traits: {"smithy.api#documentation" => "<p>The time between consecutive replication runs, in hours.</p>"}))
    UpdateReplicationJobRequest.add_member(:next_replication_run_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'nextReplicationRunStartTime', traits: {"smithy.api#documentation" => "<p>The start time of the next replication run.</p>"}))
    UpdateReplicationJobRequest.add_member(:license_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseType, location_name: 'licenseType', traits: {"smithy.api#documentation" => "<p>The license type to be used for the AMI created by a successful replication\n            run.</p>"}))
    UpdateReplicationJobRequest.add_member(:role_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleName, location_name: 'roleName', traits: {"smithy.api#documentation" => "<p>The name of the IAM role to be used by Server Migration Service.</p>"}))
    UpdateReplicationJobRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the replication job.</p>"}))
    UpdateReplicationJobRequest.add_member(:number_of_recent_amis_to_keep, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfRecentAmisToKeep, location_name: 'numberOfRecentAmisToKeep', traits: {"smithy.api#documentation" => "<p>The maximum number of SMS-created AMIs to retain. The oldest is deleted after the\n            maximum number is reached and a new AMI is created.</p>"}))
    UpdateReplicationJobRequest.add_member(:encrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Encrypted, location_name: 'encrypted', traits: {"smithy.api#documentation" => "<p>When true, the replication job produces encrypted AMIs. For more information,\n                <code>KmsKeyId</code>.</p>"}))
    UpdateReplicationJobRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the KMS key for replication jobs that produce encrypted AMIs. \n            This value can be any of the following:</p>\n         <ul>\n            <li>\n               <p>KMS key ID</p>\n            </li>\n            <li>\n               <p>KMS key alias</p>\n            </li>\n            <li>\n               <p>ARN referring to the KMS key ID</p>\n            </li>\n            <li>\n               <p>ARN referring to the KMS key alias</p>\n            </li>\n         </ul>\n         <p>If encrypted is enabled but a KMS key ID is not specified, the\n            customer's default KMS key for Amazon EBS is used.</p>"}))
    UpdateReplicationJobRequest.type = Types::UpdateReplicationJobRequest
    UpdateReplicationJobResponse.type = Types::UpdateReplicationJobResponse
    UserData.add_member(:s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 's3Location', traits: {"smithy.api#documentation" => "<p>Amazon S3 location of the user-data script.</p>"}))
    UserData.type = Types::UserData
    UserDataValidationParameters.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The location of the validation script.</p>"}))
    UserDataValidationParameters.add_member(:script_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ScriptType, location_name: 'scriptType', traits: {"smithy.api#documentation" => "<p>The type of validation script.</p>"}))
    UserDataValidationParameters.type = Types::UserDataValidationParameters
    ValidationOutput.add_member(:validation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationId, location_name: 'validationId', traits: {"smithy.api#documentation" => "<p>The ID of the validation.</p>"}))
    ValidationOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyStringWithMaxLen255, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the validation.</p>"}))
    ValidationOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the validation.</p>"}))
    ValidationOutput.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationStatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The status message.</p>"}))
    ValidationOutput.add_member(:latest_validation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'latestValidationTime', traits: {"smithy.api#documentation" => "<p>The latest time that the validation was performed.</p>"}))
    ValidationOutput.add_member(:app_validation_output, Smithy::Schema::Shapes::ShapeRef.new(shape: AppValidationOutput, location_name: 'appValidationOutput', traits: {"smithy.api#documentation" => "<p>The output from validating an application.</p>"}))
    ValidationOutput.add_member(:server_validation_output, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerValidationOutput, location_name: 'serverValidationOutput', traits: {"smithy.api#documentation" => "<p>The output from validation an instance.</p>"}))
    ValidationOutput.type = Types::ValidationOutput
    ValidationOutputList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationOutput)
    ValidationStatus.add_member(:ready_for_validation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReadyForValidation', traits: {"smithy.api#enumValue" => "READY_FOR_VALIDATION"}))
    ValidationStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pending', traits: {"smithy.api#enumValue" => "PENDING"}))
    ValidationStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InProgress', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ValidationStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Succeeded', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ValidationStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "FAILED"}))
    VmManagerType.add_member(:v_sphere, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'vSphere', traits: {"smithy.api#enumValue" => "VSPHERE"}))
    VmManagerType.add_member(:scvmm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'scvmm', traits: {"smithy.api#enumValue" => "SCVMM"}))
    VmManagerType.add_member(:hyper_v_manager, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'hyperVManager', traits: {"smithy.api#enumValue" => "HYPERV-MANAGER"}))
    VmServer.add_member(:vm_server_address, Smithy::Schema::Shapes::ShapeRef.new(shape: VmServerAddress, location_name: 'vmServerAddress', traits: {"smithy.api#documentation" => "<p>The VM server location.</p>"}))
    VmServer.add_member(:vm_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VmName, location_name: 'vmName', traits: {"smithy.api#documentation" => "<p>The name of the VM.</p>"}))
    VmServer.add_member(:vm_manager_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VmManagerName, location_name: 'vmManagerName', traits: {"smithy.api#documentation" => "<p>The name of the VM manager.</p>"}))
    VmServer.add_member(:vm_manager_type, Smithy::Schema::Shapes::ShapeRef.new(shape: VmManagerType, location_name: 'vmManagerType', traits: {"smithy.api#documentation" => "<p>The type of VM management product.</p>"}))
    VmServer.add_member(:vm_path, Smithy::Schema::Shapes::ShapeRef.new(shape: VmPath, location_name: 'vmPath', traits: {"smithy.api#documentation" => "<p>The VM folder path in the vCenter Server virtual machine inventory tree.</p>"}))
    VmServer.type = Types::VmServer
    VmServerAddress.add_member(:vm_manager_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VmManagerId, location_name: 'vmManagerId', traits: {"smithy.api#documentation" => "<p>The ID of the VM manager.</p>"}))
    VmServerAddress.add_member(:vm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VmId, location_name: 'vmId', traits: {"smithy.api#documentation" => "<p>The ID of the VM.</p>"}))
    VmServerAddress.type = Types::VmServerAddress
    VmServerAddressList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VmServerAddress)

    AWSServerMigrationServiceV20161024 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.sms#AWSServerMigrationService_V2016_10_24"
      service.name = "AWSServerMigrationServiceV20161024"
      service.version = "2016-10-24"
      service.traits = {"aws.api#service" => {"sdkId" => "SMS", "arnNamespace" => "sms", "cloudFormationName" => "SMS", "cloudTrailEventSource" => "sms.amazonaws.com", "endpointPrefix" => "sms"}, "aws.auth#sigv4" => {"name" => "sms"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#deprecated" => {"message" => "AWS Server Migration Service is Deprecated."}, "smithy.api#title" => "AWS Server Migration Service", "smithy.api#xmlNamespace" => {"uri" => "http://ec2.amazon.com/servermigration/2016-10-24/"}}
      service.add_operation(:create_app, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#CreateApp"
        operation.name = "CreateApp"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:create_replication_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#CreateReplicationJob"
        operation.name = "CreateReplicationJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReplicationJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReplicationJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoConnectorsAvailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerCannotBeReplicatedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TemporarilyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_app, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#DeleteApp"
        operation.name = "DeleteApp"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_app_launch_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#DeleteAppLaunchConfiguration"
        operation.name = "DeleteAppLaunchConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppLaunchConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppLaunchConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_app_replication_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#DeleteAppReplicationConfiguration"
        operation.name = "DeleteAppReplicationConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppReplicationConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppReplicationConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_app_validation_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#DeleteAppValidationConfiguration"
        operation.name = "DeleteAppValidationConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppValidationConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppValidationConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_replication_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#DeleteReplicationJob"
        operation.name = "DeleteReplicationJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReplicationJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReplicationJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_server_catalog, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#DeleteServerCatalog"
        operation.name = "DeleteServerCatalog"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServerCatalogRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServerCatalogResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_connector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#DisassociateConnector"
        operation.name = "DisassociateConnector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateConnectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateConnectorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:generate_change_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#GenerateChangeSet"
        operation.name = "GenerateChangeSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateChangeSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateChangeSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:generate_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#GenerateTemplate"
        operation.name = "GenerateTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:get_app, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#GetApp"
        operation.name = "GetApp"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:get_app_launch_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#GetAppLaunchConfiguration"
        operation.name = "GetAppLaunchConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppLaunchConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppLaunchConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:get_app_replication_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#GetAppReplicationConfiguration"
        operation.name = "GetAppReplicationConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppReplicationConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppReplicationConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:get_app_validation_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#GetAppValidationConfiguration"
        operation.name = "GetAppValidationConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppValidationConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppValidationConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:get_app_validation_output, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#GetAppValidationOutput"
        operation.name = "GetAppValidationOutput"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppValidationOutputRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppValidationOutputResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:get_connectors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#GetConnectors"
        operation.name = "GetConnectors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectorsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectorsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetConnectors.new
      end)
      service.add_operation(:get_replication_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#GetReplicationJobs"
        operation.name = "GetReplicationJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReplicationJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReplicationJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetReplicationJobs.new
      end)
      service.add_operation(:get_replication_runs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#GetReplicationRuns"
        operation.name = "GetReplicationRuns"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReplicationRunsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReplicationRunsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetReplicationRuns.new
      end)
      service.add_operation(:get_servers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#GetServers"
        operation.name = "GetServers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetServers.new
      end)
      service.add_operation(:import_app_catalog, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#ImportAppCatalog"
        operation.name = "ImportAppCatalog"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportAppCatalogRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportAppCatalogResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:import_server_catalog, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#ImportServerCatalog"
        operation.name = "ImportServerCatalog"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportServerCatalogRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportServerCatalogResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoConnectorsAvailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:launch_app, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#LaunchApp"
        operation.name = "LaunchApp"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchAppRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchAppResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:list_apps, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#ListApps"
        operation.name = "ListApps"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:notify_app_validation_output, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#NotifyAppValidationOutput"
        operation.name = "NotifyAppValidationOutput"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyAppValidationOutputRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyAppValidationOutputResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:put_app_launch_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#PutAppLaunchConfiguration"
        operation.name = "PutAppLaunchConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAppLaunchConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAppLaunchConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:put_app_replication_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#PutAppReplicationConfiguration"
        operation.name = "PutAppReplicationConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAppReplicationConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAppReplicationConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:put_app_validation_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#PutAppValidationConfiguration"
        operation.name = "PutAppValidationConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAppValidationConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAppValidationConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:start_app_replication, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#StartAppReplication"
        operation.name = "StartAppReplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartAppReplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartAppReplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:start_on_demand_app_replication, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#StartOnDemandAppReplication"
        operation.name = "StartOnDemandAppReplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartOnDemandAppReplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartOnDemandAppReplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:start_on_demand_replication_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#StartOnDemandReplicationRun"
        operation.name = "StartOnDemandReplicationRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartOnDemandReplicationRunRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartOnDemandReplicationRunResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRunLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:stop_app_replication, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#StopAppReplication"
        operation.name = "StopAppReplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopAppReplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopAppReplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:terminate_app, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#TerminateApp"
        operation.name = "TerminateApp"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateAppRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateAppResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:update_app, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#UpdateApp"
        operation.name = "UpdateApp"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAppRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAppResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:update_replication_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#UpdateReplicationJob"
        operation.name = "UpdateReplicationJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReplicationJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReplicationJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerCannotBeReplicatedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TemporarilyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
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
