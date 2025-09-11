# frozen_string_literal: true

# This is generated code!

module Aws::SMS
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AmiId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#AmiId', name: 'AmiId')
    AppDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#AppDescription', name: 'AppDescription')
    AppId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#AppId', name: 'AppId')
    AppIdWithValidation = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#AppIdWithValidation', name: 'AppIdWithValidation', traits: {"smithy.api#pattern" => "^app-[0-9a-f]{17}$"})
    AppIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#AppIds', name: 'AppIds')
    AppLaunchConfigurationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#AppLaunchConfigurationStatus', name: 'AppLaunchConfigurationStatus')
    AppLaunchStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#AppLaunchStatus', name: 'AppLaunchStatus')
    AppLaunchStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#AppLaunchStatusMessage', name: 'AppLaunchStatusMessage')
    AppName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#AppName', name: 'AppName')
    AppReplicationConfigurationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#AppReplicationConfigurationStatus', name: 'AppReplicationConfigurationStatus')
    AppReplicationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#AppReplicationStatus', name: 'AppReplicationStatus')
    AppReplicationStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#AppReplicationStatusMessage', name: 'AppReplicationStatusMessage')
    AppStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#AppStatus', name: 'AppStatus')
    AppStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#AppStatusMessage', name: 'AppStatusMessage')
    AppSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#AppSummary', name: 'AppSummary')
    AppValidationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#AppValidationConfiguration', name: 'AppValidationConfiguration')
    AppValidationConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#AppValidationConfigurations', name: 'AppValidationConfigurations')
    AppValidationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#AppValidationOutput', name: 'AppValidationOutput')
    AppValidationStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#AppValidationStrategy', name: 'AppValidationStrategy')
    Apps = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#Apps', name: 'Apps')
    AssociatePublicIpAddress = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.sms#AssociatePublicIpAddress', name: 'AssociatePublicIpAddress')
    AutoLaunch = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.sms#AutoLaunch', name: 'AutoLaunch')
    BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#BucketName', name: 'BucketName')
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ClientToken', name: 'ClientToken')
    Command = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#Command', name: 'Command', traits: {"smithy.api#length" => {"min" => 1, "max" => 64000}})
    Connector = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#Connector', name: 'Connector')
    ConnectorCapability = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#ConnectorCapability', name: 'ConnectorCapability')
    ConnectorCapabilityList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#ConnectorCapabilityList', name: 'ConnectorCapabilityList')
    ConnectorId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ConnectorId', name: 'ConnectorId')
    ConnectorList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#ConnectorList', name: 'ConnectorList')
    ConnectorStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#ConnectorStatus', name: 'ConnectorStatus')
    ConnectorVersion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ConnectorVersion', name: 'ConnectorVersion')
    CreateAppRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#CreateAppRequest', name: 'CreateAppRequest')
    CreateAppResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#CreateAppResponse', name: 'CreateAppResponse')
    CreateReplicationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#CreateReplicationJobRequest', name: 'CreateReplicationJobRequest')
    CreateReplicationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#CreateReplicationJobResponse', name: 'CreateReplicationJobResponse')
    DeleteAppLaunchConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DeleteAppLaunchConfigurationRequest', name: 'DeleteAppLaunchConfigurationRequest')
    DeleteAppLaunchConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DeleteAppLaunchConfigurationResponse', name: 'DeleteAppLaunchConfigurationResponse')
    DeleteAppReplicationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DeleteAppReplicationConfigurationRequest', name: 'DeleteAppReplicationConfigurationRequest')
    DeleteAppReplicationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DeleteAppReplicationConfigurationResponse', name: 'DeleteAppReplicationConfigurationResponse')
    DeleteAppRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DeleteAppRequest', name: 'DeleteAppRequest')
    DeleteAppResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DeleteAppResponse', name: 'DeleteAppResponse')
    DeleteAppValidationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DeleteAppValidationConfigurationRequest', name: 'DeleteAppValidationConfigurationRequest')
    DeleteAppValidationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DeleteAppValidationConfigurationResponse', name: 'DeleteAppValidationConfigurationResponse')
    DeleteReplicationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DeleteReplicationJobRequest', name: 'DeleteReplicationJobRequest')
    DeleteReplicationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DeleteReplicationJobResponse', name: 'DeleteReplicationJobResponse')
    DeleteServerCatalogRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DeleteServerCatalogRequest', name: 'DeleteServerCatalogRequest')
    DeleteServerCatalogResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DeleteServerCatalogResponse', name: 'DeleteServerCatalogResponse')
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#Description', name: 'Description')
    DisassociateConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DisassociateConnectorRequest', name: 'DisassociateConnectorRequest')
    DisassociateConnectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DisassociateConnectorResponse', name: 'DisassociateConnectorResponse')
    DryRunOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#DryRunOperationException', name: 'DryRunOperationException', traits: {"aws.protocols#awsQueryError" => {"code" => "DryRunOperationException", "httpResponseCode" => 412}, "smithy.api#error" => "client", "smithy.api#httpError" => 412})
    EC2KeyName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#EC2KeyName', name: 'EC2KeyName')
    Encrypted = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.sms#Encrypted', name: 'Encrypted')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ErrorMessage', name: 'ErrorMessage')
    ExecutionTimeoutSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sms#ExecutionTimeoutSeconds', name: 'ExecutionTimeoutSeconds', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 60, "max" => 28800}})
    ForceStopAppReplication = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.sms#ForceStopAppReplication', name: 'ForceStopAppReplication')
    ForceTerminateApp = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.sms#ForceTerminateApp', name: 'ForceTerminateApp')
    Frequency = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sms#Frequency', name: 'Frequency')
    GenerateChangeSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GenerateChangeSetRequest', name: 'GenerateChangeSetRequest')
    GenerateChangeSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GenerateChangeSetResponse', name: 'GenerateChangeSetResponse')
    GenerateTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GenerateTemplateRequest', name: 'GenerateTemplateRequest')
    GenerateTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GenerateTemplateResponse', name: 'GenerateTemplateResponse')
    GetAppLaunchConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetAppLaunchConfigurationRequest', name: 'GetAppLaunchConfigurationRequest')
    GetAppLaunchConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetAppLaunchConfigurationResponse', name: 'GetAppLaunchConfigurationResponse')
    GetAppReplicationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetAppReplicationConfigurationRequest', name: 'GetAppReplicationConfigurationRequest')
    GetAppReplicationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetAppReplicationConfigurationResponse', name: 'GetAppReplicationConfigurationResponse')
    GetAppRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetAppRequest', name: 'GetAppRequest')
    GetAppResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetAppResponse', name: 'GetAppResponse')
    GetAppValidationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetAppValidationConfigurationRequest', name: 'GetAppValidationConfigurationRequest')
    GetAppValidationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetAppValidationConfigurationResponse', name: 'GetAppValidationConfigurationResponse')
    GetAppValidationOutputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetAppValidationOutputRequest', name: 'GetAppValidationOutputRequest')
    GetAppValidationOutputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetAppValidationOutputResponse', name: 'GetAppValidationOutputResponse')
    GetConnectorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetConnectorsRequest', name: 'GetConnectorsRequest')
    GetConnectorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetConnectorsResponse', name: 'GetConnectorsResponse')
    GetReplicationJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetReplicationJobsRequest', name: 'GetReplicationJobsRequest')
    GetReplicationJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetReplicationJobsResponse', name: 'GetReplicationJobsResponse')
    GetReplicationRunsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetReplicationRunsRequest', name: 'GetReplicationRunsRequest')
    GetReplicationRunsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetReplicationRunsResponse', name: 'GetReplicationRunsResponse')
    GetServersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetServersRequest', name: 'GetServersRequest')
    GetServersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#GetServersResponse', name: 'GetServersResponse')
    ImportAppCatalogRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ImportAppCatalogRequest', name: 'ImportAppCatalogRequest')
    ImportAppCatalogResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ImportAppCatalogResponse', name: 'ImportAppCatalogResponse')
    ImportServerCatalogRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ImportServerCatalogRequest', name: 'ImportServerCatalogRequest')
    ImportServerCatalogResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ImportServerCatalogResponse', name: 'ImportServerCatalogResponse')
    ImportedAppId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ImportedAppId', name: 'ImportedAppId')
    InstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#InstanceId', name: 'InstanceId', traits: {"smithy.api#pattern" => "^(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)$"})
    InstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#InstanceType', name: 'InstanceType')
    InternalError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#InternalError', name: 'InternalError', traits: {"aws.protocols#awsQueryError" => {"code" => "InternalError", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#InvalidParameterException', name: 'InvalidParameterException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameter", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IpAddress = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#IpAddress', name: 'IpAddress')
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#KmsKeyId', name: 'KmsKeyId')
    LaunchAppRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#LaunchAppRequest', name: 'LaunchAppRequest')
    LaunchAppResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#LaunchAppResponse', name: 'LaunchAppResponse')
    LaunchDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#LaunchDetails', name: 'LaunchDetails')
    LaunchOrder = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sms#LaunchOrder', name: 'LaunchOrder')
    LicenseType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#LicenseType', name: 'LicenseType')
    ListAppsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ListAppsRequest', name: 'ListAppsRequest')
    ListAppsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ListAppsResponse', name: 'ListAppsResponse')
    LogicalId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#LogicalId', name: 'LogicalId')
    MacAddress = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#MacAddress', name: 'MacAddress')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sms#MaxResults', name: 'MaxResults')
    MissingRequiredParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#MissingRequiredParameterException', name: 'MissingRequiredParameterException', traits: {"aws.protocols#awsQueryError" => {"code" => "MissingRequiredParameter", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#NextToken', name: 'NextToken')
    NoConnectorsAvailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#NoConnectorsAvailableException', name: 'NoConnectorsAvailableException', traits: {"aws.protocols#awsQueryError" => {"code" => "NoConnectorsAvailable", "httpResponseCode" => 430}, "smithy.api#error" => "client", "smithy.api#httpError" => 430})
    NonEmptyStringWithMaxLen255 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#NonEmptyStringWithMaxLen255', name: 'NonEmptyStringWithMaxLen255', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\S]+$"})
    NotificationContext = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#NotificationContext', name: 'NotificationContext')
    NotifyAppValidationOutputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#NotifyAppValidationOutputRequest', name: 'NotifyAppValidationOutputRequest')
    NotifyAppValidationOutputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#NotifyAppValidationOutputResponse', name: 'NotifyAppValidationOutputResponse')
    NumberOfRecentAmisToKeep = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sms#NumberOfRecentAmisToKeep', name: 'NumberOfRecentAmisToKeep')
    OperationNotPermittedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#OperationNotPermittedException', name: 'OperationNotPermittedException', traits: {"aws.protocols#awsQueryError" => {"code" => "OperationNotPermitted", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    OutputFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#OutputFormat', name: 'OutputFormat')
    PutAppLaunchConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#PutAppLaunchConfigurationRequest', name: 'PutAppLaunchConfigurationRequest')
    PutAppLaunchConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#PutAppLaunchConfigurationResponse', name: 'PutAppLaunchConfigurationResponse')
    PutAppReplicationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#PutAppReplicationConfigurationRequest', name: 'PutAppReplicationConfigurationRequest')
    PutAppReplicationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#PutAppReplicationConfigurationResponse', name: 'PutAppReplicationConfigurationResponse')
    PutAppValidationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#PutAppValidationConfigurationRequest', name: 'PutAppValidationConfigurationRequest')
    PutAppValidationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#PutAppValidationConfigurationResponse', name: 'PutAppValidationConfigurationResponse')
    ReplicationJob = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ReplicationJob', name: 'ReplicationJob')
    ReplicationJobAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ReplicationJobAlreadyExistsException', name: 'ReplicationJobAlreadyExistsException', traits: {"aws.protocols#awsQueryError" => {"code" => "ReplicationJobAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ReplicationJobId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ReplicationJobId', name: 'ReplicationJobId')
    ReplicationJobList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#ReplicationJobList', name: 'ReplicationJobList')
    ReplicationJobNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ReplicationJobNotFoundException', name: 'ReplicationJobNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "ReplicationJobNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReplicationJobState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#ReplicationJobState', name: 'ReplicationJobState')
    ReplicationJobStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ReplicationJobStatusMessage', name: 'ReplicationJobStatusMessage')
    ReplicationJobTerminated = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.sms#ReplicationJobTerminated', name: 'ReplicationJobTerminated')
    ReplicationRun = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ReplicationRun', name: 'ReplicationRun')
    ReplicationRunId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ReplicationRunId', name: 'ReplicationRunId')
    ReplicationRunLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ReplicationRunLimitExceededException', name: 'ReplicationRunLimitExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "ReplicationRunLimitExceeded", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ReplicationRunList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#ReplicationRunList', name: 'ReplicationRunList')
    ReplicationRunStage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ReplicationRunStage', name: 'ReplicationRunStage')
    ReplicationRunStageDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ReplicationRunStageDetails', name: 'ReplicationRunStageDetails')
    ReplicationRunStageProgress = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ReplicationRunStageProgress', name: 'ReplicationRunStageProgress')
    ReplicationRunState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#ReplicationRunState', name: 'ReplicationRunState')
    ReplicationRunStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ReplicationRunStatusMessage', name: 'ReplicationRunStatusMessage')
    ReplicationRunType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#ReplicationRunType', name: 'ReplicationRunType')
    RoleName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#RoleName', name: 'RoleName')
    RunOnce = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.sms#RunOnce', name: 'RunOnce')
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#S3BucketName', name: 'S3BucketName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}})
    S3KeyName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#S3KeyName', name: 'S3KeyName', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    S3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#S3Location', name: 'S3Location')
    SSMOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#SSMOutput', name: 'SSMOutput')
    SSMValidationParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#SSMValidationParameters', name: 'SSMValidationParameters')
    ScriptType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#ScriptType', name: 'ScriptType')
    SecurityGroup = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#SecurityGroup', name: 'SecurityGroup')
    Server = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#Server', name: 'Server')
    ServerCannotBeReplicatedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ServerCannotBeReplicatedException', name: 'ServerCannotBeReplicatedException', traits: {"aws.protocols#awsQueryError" => {"code" => "ServerCannotBeReplicated", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ServerCatalogStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#ServerCatalogStatus', name: 'ServerCatalogStatus')
    ServerGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ServerGroup', name: 'ServerGroup')
    ServerGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ServerGroupId', name: 'ServerGroupId')
    ServerGroupLaunchConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ServerGroupLaunchConfiguration', name: 'ServerGroupLaunchConfiguration')
    ServerGroupLaunchConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#ServerGroupLaunchConfigurations', name: 'ServerGroupLaunchConfigurations')
    ServerGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ServerGroupName', name: 'ServerGroupName')
    ServerGroupReplicationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ServerGroupReplicationConfiguration', name: 'ServerGroupReplicationConfiguration')
    ServerGroupReplicationConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#ServerGroupReplicationConfigurations', name: 'ServerGroupReplicationConfigurations')
    ServerGroupValidationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ServerGroupValidationConfiguration', name: 'ServerGroupValidationConfiguration')
    ServerGroupValidationConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#ServerGroupValidationConfigurations', name: 'ServerGroupValidationConfigurations')
    ServerGroups = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#ServerGroups', name: 'ServerGroups')
    ServerId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ServerId', name: 'ServerId')
    ServerLaunchConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ServerLaunchConfiguration', name: 'ServerLaunchConfiguration')
    ServerLaunchConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#ServerLaunchConfigurations', name: 'ServerLaunchConfigurations')
    ServerList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#ServerList', name: 'ServerList')
    ServerReplicationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ServerReplicationConfiguration', name: 'ServerReplicationConfiguration')
    ServerReplicationConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#ServerReplicationConfigurations', name: 'ServerReplicationConfigurations')
    ServerReplicationParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ServerReplicationParameters', name: 'ServerReplicationParameters')
    ServerType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#ServerType', name: 'ServerType')
    ServerValidationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ServerValidationConfiguration', name: 'ServerValidationConfiguration')
    ServerValidationConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#ServerValidationConfigurations', name: 'ServerValidationConfigurations')
    ServerValidationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ServerValidationOutput', name: 'ServerValidationOutput')
    ServerValidationStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#ServerValidationStrategy', name: 'ServerValidationStrategy')
    Source = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#Source', name: 'Source')
    StackId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#StackId', name: 'StackId')
    StackName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#StackName', name: 'StackName')
    StartAppReplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#StartAppReplicationRequest', name: 'StartAppReplicationRequest')
    StartAppReplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#StartAppReplicationResponse', name: 'StartAppReplicationResponse')
    StartOnDemandAppReplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#StartOnDemandAppReplicationRequest', name: 'StartOnDemandAppReplicationRequest')
    StartOnDemandAppReplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#StartOnDemandAppReplicationResponse', name: 'StartOnDemandAppReplicationResponse')
    StartOnDemandReplicationRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#StartOnDemandReplicationRunRequest', name: 'StartOnDemandReplicationRunRequest')
    StartOnDemandReplicationRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#StartOnDemandReplicationRunResponse', name: 'StartOnDemandReplicationRunResponse')
    StopAppReplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#StopAppReplicationRequest', name: 'StopAppReplicationRequest')
    StopAppReplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#StopAppReplicationResponse', name: 'StopAppReplicationResponse')
    Subnet = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#Subnet', name: 'Subnet')
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#TagKey', name: 'TagKey')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#TagValue', name: 'TagValue')
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#Tags', name: 'Tags')
    TemporarilyUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#TemporarilyUnavailableException', name: 'TemporarilyUnavailableException', traits: {"aws.protocols#awsQueryError" => {"code" => "TemporarilyUnavailable", "httpResponseCode" => 503}, "smithy.api#error" => "server", "smithy.api#httpError" => 503})
    TerminateAppRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#TerminateAppRequest', name: 'TerminateAppRequest')
    TerminateAppResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#TerminateAppResponse', name: 'TerminateAppResponse')
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.sms#Timestamp', name: 'Timestamp')
    TotalServerGroups = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sms#TotalServerGroups', name: 'TotalServerGroups')
    TotalServers = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sms#TotalServers', name: 'TotalServers')
    UnauthorizedOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#UnauthorizedOperationException', name: 'UnauthorizedOperationException', traits: {"aws.protocols#awsQueryError" => {"code" => "UnauthorizedOperation", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    UpdateAppRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#UpdateAppRequest', name: 'UpdateAppRequest')
    UpdateAppResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#UpdateAppResponse', name: 'UpdateAppResponse')
    UpdateReplicationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#UpdateReplicationJobRequest', name: 'UpdateReplicationJobRequest')
    UpdateReplicationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#UpdateReplicationJobResponse', name: 'UpdateReplicationJobResponse')
    UserData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#UserData', name: 'UserData')
    UserDataValidationParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#UserDataValidationParameters', name: 'UserDataValidationParameters')
    VPC = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#VPC', name: 'VPC')
    ValidationId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ValidationId', name: 'ValidationId', traits: {"smithy.api#pattern" => "^val-[0-9a-f]{17}$"})
    ValidationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#ValidationOutput', name: 'ValidationOutput')
    ValidationOutputList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#ValidationOutputList', name: 'ValidationOutputList')
    ValidationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#ValidationStatus', name: 'ValidationStatus')
    ValidationStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#ValidationStatusMessage', name: 'ValidationStatusMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 2500}})
    VmId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#VmId', name: 'VmId')
    VmManagerId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#VmManagerId', name: 'VmManagerId')
    VmManagerName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#VmManagerName', name: 'VmManagerName')
    VmManagerType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sms#VmManagerType', name: 'VmManagerType')
    VmName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#VmName', name: 'VmName')
    VmPath = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sms#VmPath', name: 'VmPath')
    VmServer = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#VmServer', name: 'VmServer')
    VmServerAddress = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sms#VmServerAddress', name: 'VmServerAddress')
    VmServerAddressList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sms#VmServerAddressList', name: 'VmServerAddressList')

    AppIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppId)
    AppLaunchConfigurationStatus.add_member(:not_configured, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotConfigured', traits: {"smithy.api#enumValue" => "NOT_CONFIGURED"}))
    AppLaunchConfigurationStatus.add_member(:configured, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Configured', traits: {"smithy.api#enumValue" => "CONFIGURED"}))
    AppLaunchStatus.add_member(:ready_for_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReadyForConfiguration', traits: {"smithy.api#enumValue" => "READY_FOR_CONFIGURATION"}))
    AppLaunchStatus.add_member(:configuration_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ConfigurationInProgress', traits: {"smithy.api#enumValue" => "CONFIGURATION_IN_PROGRESS"}))
    AppLaunchStatus.add_member(:configuration_invalid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ConfigurationInvalid', traits: {"smithy.api#enumValue" => "CONFIGURATION_INVALID"}))
    AppLaunchStatus.add_member(:ready_for_launch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReadyForLaunch', traits: {"smithy.api#enumValue" => "READY_FOR_LAUNCH"}))
    AppLaunchStatus.add_member(:validation_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ValidationInProgress', traits: {"smithy.api#enumValue" => "VALIDATION_IN_PROGRESS"}))
    AppLaunchStatus.add_member(:launch_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LaunchPending', traits: {"smithy.api#enumValue" => "LAUNCH_PENDING"}))
    AppLaunchStatus.add_member(:launch_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LaunchInProgress', traits: {"smithy.api#enumValue" => "LAUNCH_IN_PROGRESS"}))
    AppLaunchStatus.add_member(:launched, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Launched', traits: {"smithy.api#enumValue" => "LAUNCHED"}))
    AppLaunchStatus.add_member(:partially_launched, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PartiallyLaunched', traits: {"smithy.api#enumValue" => "PARTIALLY_LAUNCHED"}))
    AppLaunchStatus.add_member(:delta_launch_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DeltaLaunchInProgress', traits: {"smithy.api#enumValue" => "DELTA_LAUNCH_IN_PROGRESS"}))
    AppLaunchStatus.add_member(:delta_launch_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DeltaLaunchFailed', traits: {"smithy.api#enumValue" => "DELTA_LAUNCH_FAILED"}))
    AppLaunchStatus.add_member(:launch_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LaunchFailed', traits: {"smithy.api#enumValue" => "LAUNCH_FAILED"}))
    AppLaunchStatus.add_member(:terminate_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TerminateInProgress', traits: {"smithy.api#enumValue" => "TERMINATE_IN_PROGRESS"}))
    AppLaunchStatus.add_member(:terminate_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TerminateFailed', traits: {"smithy.api#enumValue" => "TERMINATE_FAILED"}))
    AppLaunchStatus.add_member(:terminated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Terminated', traits: {"smithy.api#enumValue" => "TERMINATED"}))
    AppReplicationConfigurationStatus.add_member(:not_configured, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotConfigured', traits: {"smithy.api#enumValue" => "NOT_CONFIGURED"}))
    AppReplicationConfigurationStatus.add_member(:configured, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Configured', traits: {"smithy.api#enumValue" => "CONFIGURED"}))
    AppReplicationStatus.add_member(:ready_for_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReadyForConfiguration', traits: {"smithy.api#enumValue" => "READY_FOR_CONFIGURATION"}))
    AppReplicationStatus.add_member(:configuration_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ConfigurationInProgress', traits: {"smithy.api#enumValue" => "CONFIGURATION_IN_PROGRESS"}))
    AppReplicationStatus.add_member(:configuration_invalid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ConfigurationInvalid', traits: {"smithy.api#enumValue" => "CONFIGURATION_INVALID"}))
    AppReplicationStatus.add_member(:ready_for_replication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReadyForReplication', traits: {"smithy.api#enumValue" => "READY_FOR_REPLICATION"}))
    AppReplicationStatus.add_member(:validation_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ValidationInProgress', traits: {"smithy.api#enumValue" => "VALIDATION_IN_PROGRESS"}))
    AppReplicationStatus.add_member(:replication_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReplicationPending', traits: {"smithy.api#enumValue" => "REPLICATION_PENDING"}))
    AppReplicationStatus.add_member(:replication_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReplicationInProgress', traits: {"smithy.api#enumValue" => "REPLICATION_IN_PROGRESS"}))
    AppReplicationStatus.add_member(:replicated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Replicated', traits: {"smithy.api#enumValue" => "REPLICATED"}))
    AppReplicationStatus.add_member(:partially_replicated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PartiallyReplicated', traits: {"smithy.api#enumValue" => "PARTIALLY_REPLICATED"}))
    AppReplicationStatus.add_member(:delta_replication_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DeltaReplicationInProgress', traits: {"smithy.api#enumValue" => "DELTA_REPLICATION_IN_PROGRESS"}))
    AppReplicationStatus.add_member(:delta_replicated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DeltaReplicated', traits: {"smithy.api#enumValue" => "DELTA_REPLICATED"}))
    AppReplicationStatus.add_member(:delta_replication_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DeltaReplicationFailed', traits: {"smithy.api#enumValue" => "DELTA_REPLICATION_FAILED"}))
    AppReplicationStatus.add_member(:replication_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReplicationFailed', traits: {"smithy.api#enumValue" => "REPLICATION_FAILED"}))
    AppReplicationStatus.add_member(:replication_stopping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReplicationStopping', traits: {"smithy.api#enumValue" => "REPLICATION_STOPPING"}))
    AppReplicationStatus.add_member(:replication_stop_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReplicationStopFailed', traits: {"smithy.api#enumValue" => "REPLICATION_STOP_FAILED"}))
    AppReplicationStatus.add_member(:replication_stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReplicationStopped', traits: {"smithy.api#enumValue" => "REPLICATION_STOPPED"}))
    AppStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Creating', traits: {"smithy.api#enumValue" => "CREATING"}))
    AppStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AppStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Updating', traits: {"smithy.api#enumValue" => "UPDATING"}))
    AppStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deleting', traits: {"smithy.api#enumValue" => "DELETING"}))
    AppStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deleted', traits: {"smithy.api#enumValue" => "DELETED"}))
    AppStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    AppSummary.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId'))
    AppSummary.add_member(:imported_app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportedAppId, location_name: 'importedAppId'))
    AppSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppName, location_name: 'name'))
    AppSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppDescription, location_name: 'description'))
    AppSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppStatus, location_name: 'status'))
    AppSummary.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppStatusMessage, location_name: 'statusMessage'))
    AppSummary.add_member(:replication_configuration_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppReplicationConfigurationStatus, location_name: 'replicationConfigurationStatus'))
    AppSummary.add_member(:replication_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppReplicationStatus, location_name: 'replicationStatus'))
    AppSummary.add_member(:replication_status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppReplicationStatusMessage, location_name: 'replicationStatusMessage'))
    AppSummary.add_member(:latest_replication_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'latestReplicationTime'))
    AppSummary.add_member(:launch_configuration_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppLaunchConfigurationStatus, location_name: 'launchConfigurationStatus'))
    AppSummary.add_member(:launch_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppLaunchStatus, location_name: 'launchStatus'))
    AppSummary.add_member(:launch_status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppLaunchStatusMessage, location_name: 'launchStatusMessage'))
    AppSummary.add_member(:launch_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchDetails, location_name: 'launchDetails'))
    AppSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime'))
    AppSummary.add_member(:last_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModified'))
    AppSummary.add_member(:role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleName, location_name: 'roleName'))
    AppSummary.add_member(:total_server_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TotalServerGroups, location_name: 'totalServerGroups'))
    AppSummary.add_member(:total_servers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TotalServers, location_name: 'totalServers'))
    AppSummary.type = Types::AppSummary
    AppValidationConfiguration.add_member(:validation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationId, location_name: 'validationId'))
    AppValidationConfiguration.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyStringWithMaxLen255, location_name: 'name'))
    AppValidationConfiguration.add_member(:app_validation_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppValidationStrategy, location_name: 'appValidationStrategy'))
    AppValidationConfiguration.add_member(:ssm_validation_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSMValidationParameters, location_name: 'ssmValidationParameters'))
    AppValidationConfiguration.type = Types::AppValidationConfiguration
    AppValidationConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppValidationConfiguration)
    AppValidationOutput.add_member(:ssm_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSMOutput, location_name: 'ssmOutput'))
    AppValidationOutput.type = Types::AppValidationOutput
    AppValidationStrategy.add_member(:ssm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSM', traits: {"smithy.api#enumValue" => "SSM"}))
    Apps.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppSummary)
    Connector.add_member(:connector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorId, location_name: 'connectorId'))
    Connector.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorVersion, location_name: 'version'))
    Connector.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorStatus, location_name: 'status'))
    Connector.add_member(:capability_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorCapabilityList, location_name: 'capabilityList'))
    Connector.add_member(:vm_manager_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VmManagerName, location_name: 'vmManagerName'))
    Connector.add_member(:vm_manager_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VmManagerType, location_name: 'vmManagerType'))
    Connector.add_member(:vm_manager_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VmManagerId, location_name: 'vmManagerId'))
    Connector.add_member(:ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'ipAddress'))
    Connector.add_member(:mac_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacAddress, location_name: 'macAddress'))
    Connector.add_member(:associated_on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'associatedOn'))
    Connector.type = Types::Connector
    ConnectorCapability.add_member(:v_sphere, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'vSphere', traits: {"smithy.api#enumValue" => "VSPHERE"}))
    ConnectorCapability.add_member(:scvmm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'scvmm', traits: {"smithy.api#enumValue" => "SCVMM"}))
    ConnectorCapability.add_member(:hyper_v_manager, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'hyperVManager', traits: {"smithy.api#enumValue" => "HYPERV-MANAGER"}))
    ConnectorCapability.add_member(:snapshot_batching, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'snapshotBatching', traits: {"smithy.api#enumValue" => "SNAPSHOT_BATCHING"}))
    ConnectorCapability.add_member(:sms_optimized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'smsOptimized', traits: {"smithy.api#enumValue" => "SMS_OPTIMIZED"}))
    ConnectorCapabilityList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorCapability, traits: {"smithy.api#xmlName" => "item"})
    ConnectorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Connector, traits: {"smithy.api#xmlName" => "item"})
    ConnectorStatus.add_member(:healthy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Healthy', traits: {"smithy.api#enumValue" => "HEALTHY"}))
    ConnectorStatus.add_member(:unhealthy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Unhealthy', traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    CreateAppRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppName, location_name: 'name'))
    CreateAppRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppDescription, location_name: 'description'))
    CreateAppRequest.add_member(:role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleName, location_name: 'roleName'))
    CreateAppRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken'))
    CreateAppRequest.add_member(:server_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroups, location_name: 'serverGroups'))
    CreateAppRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    CreateAppRequest.type = Types::CreateAppRequest
    CreateAppResponse.add_member(:app_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppSummary, location_name: 'appSummary'))
    CreateAppResponse.add_member(:server_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroups, location_name: 'serverGroups'))
    CreateAppResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    CreateAppResponse.type = Types::CreateAppResponse
    CreateReplicationJobRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'serverId', traits: {"smithy.api#required" => {}}))
    CreateReplicationJobRequest.add_member(:seed_replication_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'seedReplicationTime', traits: {"smithy.api#required" => {}}))
    CreateReplicationJobRequest.add_member(:frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Frequency, location_name: 'frequency'))
    CreateReplicationJobRequest.add_member(:run_once, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RunOnce, location_name: 'runOnce'))
    CreateReplicationJobRequest.add_member(:license_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseType, location_name: 'licenseType'))
    CreateReplicationJobRequest.add_member(:role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleName, location_name: 'roleName'))
    CreateReplicationJobRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateReplicationJobRequest.add_member(:number_of_recent_amis_to_keep, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfRecentAmisToKeep, location_name: 'numberOfRecentAmisToKeep'))
    CreateReplicationJobRequest.add_member(:encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Encrypted, location_name: 'encrypted'))
    CreateReplicationJobRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'kmsKeyId'))
    CreateReplicationJobRequest.type = Types::CreateReplicationJobRequest
    CreateReplicationJobResponse.add_member(:replication_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobId, location_name: 'replicationJobId'))
    CreateReplicationJobResponse.type = Types::CreateReplicationJobResponse
    DeleteAppLaunchConfigurationRequest.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId'))
    DeleteAppLaunchConfigurationRequest.type = Types::DeleteAppLaunchConfigurationRequest
    DeleteAppLaunchConfigurationResponse.type = Types::DeleteAppLaunchConfigurationResponse
    DeleteAppReplicationConfigurationRequest.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId'))
    DeleteAppReplicationConfigurationRequest.type = Types::DeleteAppReplicationConfigurationRequest
    DeleteAppReplicationConfigurationResponse.type = Types::DeleteAppReplicationConfigurationResponse
    DeleteAppRequest.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId'))
    DeleteAppRequest.add_member(:force_stop_app_replication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForceStopAppReplication, location_name: 'forceStopAppReplication'))
    DeleteAppRequest.add_member(:force_terminate_app, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForceTerminateApp, location_name: 'forceTerminateApp'))
    DeleteAppRequest.type = Types::DeleteAppRequest
    DeleteAppResponse.type = Types::DeleteAppResponse
    DeleteAppValidationConfigurationRequest.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppIdWithValidation, location_name: 'appId', traits: {"smithy.api#required" => {}}))
    DeleteAppValidationConfigurationRequest.type = Types::DeleteAppValidationConfigurationRequest
    DeleteAppValidationConfigurationResponse.type = Types::DeleteAppValidationConfigurationResponse
    DeleteReplicationJobRequest.add_member(:replication_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobId, location_name: 'replicationJobId', traits: {"smithy.api#required" => {}}))
    DeleteReplicationJobRequest.type = Types::DeleteReplicationJobRequest
    DeleteReplicationJobResponse.type = Types::DeleteReplicationJobResponse
    DeleteServerCatalogRequest.type = Types::DeleteServerCatalogRequest
    DeleteServerCatalogResponse.type = Types::DeleteServerCatalogResponse
    DisassociateConnectorRequest.add_member(:connector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorId, location_name: 'connectorId', traits: {"smithy.api#required" => {}}))
    DisassociateConnectorRequest.type = Types::DisassociateConnectorRequest
    DisassociateConnectorResponse.type = Types::DisassociateConnectorResponse
    DryRunOperationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    DryRunOperationException.type = Types::DryRunOperationException
    GenerateChangeSetRequest.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId'))
    GenerateChangeSetRequest.add_member(:changeset_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputFormat, location_name: 'changesetFormat'))
    GenerateChangeSetRequest.type = Types::GenerateChangeSetRequest
    GenerateChangeSetResponse.add_member(:s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 's3Location'))
    GenerateChangeSetResponse.type = Types::GenerateChangeSetResponse
    GenerateTemplateRequest.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId'))
    GenerateTemplateRequest.add_member(:template_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputFormat, location_name: 'templateFormat'))
    GenerateTemplateRequest.type = Types::GenerateTemplateRequest
    GenerateTemplateResponse.add_member(:s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 's3Location'))
    GenerateTemplateResponse.type = Types::GenerateTemplateResponse
    GetAppLaunchConfigurationRequest.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId'))
    GetAppLaunchConfigurationRequest.type = Types::GetAppLaunchConfigurationRequest
    GetAppLaunchConfigurationResponse.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId'))
    GetAppLaunchConfigurationResponse.add_member(:role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleName, location_name: 'roleName'))
    GetAppLaunchConfigurationResponse.add_member(:auto_launch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoLaunch, location_name: 'autoLaunch'))
    GetAppLaunchConfigurationResponse.add_member(:server_group_launch_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroupLaunchConfigurations, location_name: 'serverGroupLaunchConfigurations'))
    GetAppLaunchConfigurationResponse.type = Types::GetAppLaunchConfigurationResponse
    GetAppReplicationConfigurationRequest.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId'))
    GetAppReplicationConfigurationRequest.type = Types::GetAppReplicationConfigurationRequest
    GetAppReplicationConfigurationResponse.add_member(:server_group_replication_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroupReplicationConfigurations, location_name: 'serverGroupReplicationConfigurations'))
    GetAppReplicationConfigurationResponse.type = Types::GetAppReplicationConfigurationResponse
    GetAppRequest.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId'))
    GetAppRequest.type = Types::GetAppRequest
    GetAppResponse.add_member(:app_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppSummary, location_name: 'appSummary'))
    GetAppResponse.add_member(:server_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroups, location_name: 'serverGroups'))
    GetAppResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    GetAppResponse.type = Types::GetAppResponse
    GetAppValidationConfigurationRequest.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppIdWithValidation, location_name: 'appId', traits: {"smithy.api#required" => {}}))
    GetAppValidationConfigurationRequest.type = Types::GetAppValidationConfigurationRequest
    GetAppValidationConfigurationResponse.add_member(:app_validation_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppValidationConfigurations, location_name: 'appValidationConfigurations'))
    GetAppValidationConfigurationResponse.add_member(:server_group_validation_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroupValidationConfigurations, location_name: 'serverGroupValidationConfigurations'))
    GetAppValidationConfigurationResponse.type = Types::GetAppValidationConfigurationResponse
    GetAppValidationOutputRequest.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppIdWithValidation, location_name: 'appId', traits: {"smithy.api#required" => {}}))
    GetAppValidationOutputRequest.type = Types::GetAppValidationOutputRequest
    GetAppValidationOutputResponse.add_member(:validation_output_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationOutputList, location_name: 'validationOutputList'))
    GetAppValidationOutputResponse.type = Types::GetAppValidationOutputResponse
    GetConnectorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    GetConnectorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    GetConnectorsRequest.type = Types::GetConnectorsRequest
    GetConnectorsResponse.add_member(:connector_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorList, location_name: 'connectorList'))
    GetConnectorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    GetConnectorsResponse.type = Types::GetConnectorsResponse
    GetReplicationJobsRequest.add_member(:replication_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobId, location_name: 'replicationJobId'))
    GetReplicationJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    GetReplicationJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    GetReplicationJobsRequest.type = Types::GetReplicationJobsRequest
    GetReplicationJobsResponse.add_member(:replication_job_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobList, location_name: 'replicationJobList'))
    GetReplicationJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    GetReplicationJobsResponse.type = Types::GetReplicationJobsResponse
    GetReplicationRunsRequest.add_member(:replication_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobId, location_name: 'replicationJobId', traits: {"smithy.api#required" => {}}))
    GetReplicationRunsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    GetReplicationRunsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    GetReplicationRunsRequest.type = Types::GetReplicationRunsRequest
    GetReplicationRunsResponse.add_member(:replication_job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJob, location_name: 'replicationJob'))
    GetReplicationRunsResponse.add_member(:replication_run_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRunList, location_name: 'replicationRunList'))
    GetReplicationRunsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    GetReplicationRunsResponse.type = Types::GetReplicationRunsResponse
    GetServersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    GetServersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    GetServersRequest.add_member(:vm_server_address_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VmServerAddressList, location_name: 'vmServerAddressList'))
    GetServersRequest.type = Types::GetServersRequest
    GetServersResponse.add_member(:last_modified_on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModifiedOn'))
    GetServersResponse.add_member(:server_catalog_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerCatalogStatus, location_name: 'serverCatalogStatus'))
    GetServersResponse.add_member(:server_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerList, location_name: 'serverList'))
    GetServersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    GetServersResponse.type = Types::GetServersResponse
    ImportAppCatalogRequest.add_member(:role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleName, location_name: 'roleName'))
    ImportAppCatalogRequest.type = Types::ImportAppCatalogRequest
    ImportAppCatalogResponse.type = Types::ImportAppCatalogResponse
    ImportServerCatalogRequest.type = Types::ImportServerCatalogRequest
    ImportServerCatalogResponse.type = Types::ImportServerCatalogResponse
    InternalError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InternalError.type = Types::InternalError
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidParameterException.type = Types::InvalidParameterException
    LaunchAppRequest.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId'))
    LaunchAppRequest.type = Types::LaunchAppRequest
    LaunchAppResponse.type = Types::LaunchAppResponse
    LaunchDetails.add_member(:latest_launch_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'latestLaunchTime'))
    LaunchDetails.add_member(:stack_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StackName, location_name: 'stackName'))
    LaunchDetails.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StackId, location_name: 'stackId'))
    LaunchDetails.type = Types::LaunchDetails
    LicenseType.add_member(:aws, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS', traits: {"smithy.api#enumValue" => "AWS"}))
    LicenseType.add_member(:byol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BYOL', traits: {"smithy.api#enumValue" => "BYOL"}))
    ListAppsRequest.add_member(:app_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppIds, location_name: 'appIds'))
    ListAppsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListAppsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListAppsRequest.type = Types::ListAppsRequest
    ListAppsResponse.add_member(:apps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Apps, location_name: 'apps'))
    ListAppsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListAppsResponse.type = Types::ListAppsResponse
    MissingRequiredParameterException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    MissingRequiredParameterException.type = Types::MissingRequiredParameterException
    NoConnectorsAvailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    NoConnectorsAvailableException.type = Types::NoConnectorsAvailableException
    NotificationContext.add_member(:validation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationId, location_name: 'validationId'))
    NotificationContext.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationStatus, location_name: 'status'))
    NotificationContext.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationStatusMessage, location_name: 'statusMessage'))
    NotificationContext.type = Types::NotificationContext
    NotifyAppValidationOutputRequest.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppIdWithValidation, location_name: 'appId', traits: {"smithy.api#required" => {}}))
    NotifyAppValidationOutputRequest.add_member(:notification_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationContext, location_name: 'notificationContext'))
    NotifyAppValidationOutputRequest.type = Types::NotifyAppValidationOutputRequest
    NotifyAppValidationOutputResponse.type = Types::NotifyAppValidationOutputResponse
    OperationNotPermittedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    OperationNotPermittedException.type = Types::OperationNotPermittedException
    OutputFormat.add_member(:json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    OutputFormat.add_member(:yaml, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'YAML', traits: {"smithy.api#enumValue" => "YAML"}))
    PutAppLaunchConfigurationRequest.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId'))
    PutAppLaunchConfigurationRequest.add_member(:role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleName, location_name: 'roleName'))
    PutAppLaunchConfigurationRequest.add_member(:auto_launch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoLaunch, location_name: 'autoLaunch'))
    PutAppLaunchConfigurationRequest.add_member(:server_group_launch_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroupLaunchConfigurations, location_name: 'serverGroupLaunchConfigurations'))
    PutAppLaunchConfigurationRequest.type = Types::PutAppLaunchConfigurationRequest
    PutAppLaunchConfigurationResponse.type = Types::PutAppLaunchConfigurationResponse
    PutAppReplicationConfigurationRequest.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId'))
    PutAppReplicationConfigurationRequest.add_member(:server_group_replication_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroupReplicationConfigurations, location_name: 'serverGroupReplicationConfigurations'))
    PutAppReplicationConfigurationRequest.type = Types::PutAppReplicationConfigurationRequest
    PutAppReplicationConfigurationResponse.type = Types::PutAppReplicationConfigurationResponse
    PutAppValidationConfigurationRequest.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppIdWithValidation, location_name: 'appId', traits: {"smithy.api#required" => {}}))
    PutAppValidationConfigurationRequest.add_member(:app_validation_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppValidationConfigurations, location_name: 'appValidationConfigurations'))
    PutAppValidationConfigurationRequest.add_member(:server_group_validation_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroupValidationConfigurations, location_name: 'serverGroupValidationConfigurations'))
    PutAppValidationConfigurationRequest.type = Types::PutAppValidationConfigurationRequest
    PutAppValidationConfigurationResponse.type = Types::PutAppValidationConfigurationResponse
    ReplicationJob.add_member(:replication_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobId, location_name: 'replicationJobId'))
    ReplicationJob.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'serverId'))
    ReplicationJob.add_member(:server_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerType, location_name: 'serverType'))
    ReplicationJob.add_member(:vm_server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VmServer, location_name: 'vmServer'))
    ReplicationJob.add_member(:seed_replication_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'seedReplicationTime'))
    ReplicationJob.add_member(:frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Frequency, location_name: 'frequency'))
    ReplicationJob.add_member(:run_once, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RunOnce, location_name: 'runOnce'))
    ReplicationJob.add_member(:next_replication_run_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'nextReplicationRunStartTime'))
    ReplicationJob.add_member(:license_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseType, location_name: 'licenseType'))
    ReplicationJob.add_member(:role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleName, location_name: 'roleName'))
    ReplicationJob.add_member(:latest_ami_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmiId, location_name: 'latestAmiId'))
    ReplicationJob.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobState, location_name: 'state'))
    ReplicationJob.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobStatusMessage, location_name: 'statusMessage'))
    ReplicationJob.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    ReplicationJob.add_member(:number_of_recent_amis_to_keep, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfRecentAmisToKeep, location_name: 'numberOfRecentAmisToKeep'))
    ReplicationJob.add_member(:encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Encrypted, location_name: 'encrypted'))
    ReplicationJob.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'kmsKeyId'))
    ReplicationJob.add_member(:replication_run_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRunList, location_name: 'replicationRunList'))
    ReplicationJob.type = Types::ReplicationJob
    ReplicationJobAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ReplicationJobAlreadyExistsException.type = Types::ReplicationJobAlreadyExistsException
    ReplicationJobList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJob, traits: {"smithy.api#xmlName" => "item"})
    ReplicationJobNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ReplicationJobNotFoundException.type = Types::ReplicationJobNotFoundException
    ReplicationJobState.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pending', traits: {"smithy.api#enumValue" => "PENDING"}))
    ReplicationJobState.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ReplicationJobState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "FAILED"}))
    ReplicationJobState.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deleting', traits: {"smithy.api#enumValue" => "DELETING"}))
    ReplicationJobState.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deleted', traits: {"smithy.api#enumValue" => "DELETED"}))
    ReplicationJobState.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Completed', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ReplicationJobState.add_member(:paused_on_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PausedOnFailure', traits: {"smithy.api#enumValue" => "PAUSED_ON_FAILURE"}))
    ReplicationJobState.add_member(:failing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failing', traits: {"smithy.api#enumValue" => "FAILING"}))
    ReplicationRun.add_member(:replication_run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRunId, location_name: 'replicationRunId'))
    ReplicationRun.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRunState, location_name: 'state'))
    ReplicationRun.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRunType, location_name: 'type'))
    ReplicationRun.add_member(:stage_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRunStageDetails, location_name: 'stageDetails'))
    ReplicationRun.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRunStatusMessage, location_name: 'statusMessage'))
    ReplicationRun.add_member(:ami_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmiId, location_name: 'amiId'))
    ReplicationRun.add_member(:scheduled_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'scheduledStartTime'))
    ReplicationRun.add_member(:completed_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'completedTime'))
    ReplicationRun.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    ReplicationRun.add_member(:encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Encrypted, location_name: 'encrypted'))
    ReplicationRun.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'kmsKeyId'))
    ReplicationRun.type = Types::ReplicationRun
    ReplicationRunLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ReplicationRunLimitExceededException.type = Types::ReplicationRunLimitExceededException
    ReplicationRunList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRun, traits: {"smithy.api#xmlName" => "item"})
    ReplicationRunStageDetails.add_member(:stage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRunStage, location_name: 'stage'))
    ReplicationRunStageDetails.add_member(:stage_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRunStageProgress, location_name: 'stageProgress'))
    ReplicationRunStageDetails.type = Types::ReplicationRunStageDetails
    ReplicationRunState.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pending', traits: {"smithy.api#enumValue" => "PENDING"}))
    ReplicationRunState.add_member(:missed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Missed', traits: {"smithy.api#enumValue" => "MISSED"}))
    ReplicationRunState.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ReplicationRunState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "FAILED"}))
    ReplicationRunState.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Completed', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ReplicationRunState.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deleting', traits: {"smithy.api#enumValue" => "DELETING"}))
    ReplicationRunState.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deleted', traits: {"smithy.api#enumValue" => "DELETED"}))
    ReplicationRunType.add_member(:on_demand, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OnDemand', traits: {"smithy.api#enumValue" => "ON_DEMAND"}))
    ReplicationRunType.add_member(:automatic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Automatic', traits: {"smithy.api#enumValue" => "AUTOMATIC"}))
    S3Location.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'bucket'))
    S3Location.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyName, location_name: 'key'))
    S3Location.type = Types::S3Location
    SSMOutput.add_member(:s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 's3Location'))
    SSMOutput.type = Types::SSMOutput
    SSMValidationParameters.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source'))
    SSMValidationParameters.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId'))
    SSMValidationParameters.add_member(:script_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScriptType, location_name: 'scriptType'))
    SSMValidationParameters.add_member(:command, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Command, location_name: 'command'))
    SSMValidationParameters.add_member(:execution_timeout_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionTimeoutSeconds, location_name: 'executionTimeoutSeconds', traits: {"smithy.api#default" => 0}))
    SSMValidationParameters.add_member(:output_s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: 'outputS3BucketName'))
    SSMValidationParameters.type = Types::SSMValidationParameters
    ScriptType.add_member(:shell_script, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHELL_SCRIPT', traits: {"smithy.api#enumValue" => "SHELL_SCRIPT"}))
    ScriptType.add_member(:powershell_script, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POWERSHELL_SCRIPT', traits: {"smithy.api#enumValue" => "POWERSHELL_SCRIPT"}))
    Server.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'serverId'))
    Server.add_member(:server_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerType, location_name: 'serverType'))
    Server.add_member(:vm_server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VmServer, location_name: 'vmServer'))
    Server.add_member(:replication_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobId, location_name: 'replicationJobId'))
    Server.add_member(:replication_job_terminated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobTerminated, location_name: 'replicationJobTerminated'))
    Server.type = Types::Server
    ServerCannotBeReplicatedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ServerCannotBeReplicatedException.type = Types::ServerCannotBeReplicatedException
    ServerCatalogStatus.add_member(:not_imported, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotImported', traits: {"smithy.api#enumValue" => "NOT_IMPORTED"}))
    ServerCatalogStatus.add_member(:importing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Importing', traits: {"smithy.api#enumValue" => "IMPORTING"}))
    ServerCatalogStatus.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Available', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ServerCatalogStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deleted', traits: {"smithy.api#enumValue" => "DELETED"}))
    ServerCatalogStatus.add_member(:expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Expired', traits: {"smithy.api#enumValue" => "EXPIRED"}))
    ServerGroup.add_member(:server_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroupId, location_name: 'serverGroupId'))
    ServerGroup.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroupName, location_name: 'name'))
    ServerGroup.add_member(:server_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerList, location_name: 'serverList'))
    ServerGroup.type = Types::ServerGroup
    ServerGroupLaunchConfiguration.add_member(:server_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroupId, location_name: 'serverGroupId'))
    ServerGroupLaunchConfiguration.add_member(:launch_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchOrder, location_name: 'launchOrder'))
    ServerGroupLaunchConfiguration.add_member(:server_launch_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerLaunchConfigurations, location_name: 'serverLaunchConfigurations'))
    ServerGroupLaunchConfiguration.type = Types::ServerGroupLaunchConfiguration
    ServerGroupLaunchConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroupLaunchConfiguration)
    ServerGroupReplicationConfiguration.add_member(:server_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroupId, location_name: 'serverGroupId'))
    ServerGroupReplicationConfiguration.add_member(:server_replication_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerReplicationConfigurations, location_name: 'serverReplicationConfigurations'))
    ServerGroupReplicationConfiguration.type = Types::ServerGroupReplicationConfiguration
    ServerGroupReplicationConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroupReplicationConfiguration)
    ServerGroupValidationConfiguration.add_member(:server_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroupId, location_name: 'serverGroupId'))
    ServerGroupValidationConfiguration.add_member(:server_validation_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerValidationConfigurations, location_name: 'serverValidationConfigurations'))
    ServerGroupValidationConfiguration.type = Types::ServerGroupValidationConfiguration
    ServerGroupValidationConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroupValidationConfiguration)
    ServerGroups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroup)
    ServerLaunchConfiguration.add_member(:server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Server, location_name: 'server'))
    ServerLaunchConfiguration.add_member(:logical_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogicalId, location_name: 'logicalId'))
    ServerLaunchConfiguration.add_member(:vpc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPC, location_name: 'vpc'))
    ServerLaunchConfiguration.add_member(:subnet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subnet, location_name: 'subnet'))
    ServerLaunchConfiguration.add_member(:security_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroup, location_name: 'securityGroup'))
    ServerLaunchConfiguration.add_member(:ec2_key_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2KeyName, location_name: 'ec2KeyName'))
    ServerLaunchConfiguration.add_member(:user_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserData, location_name: 'userData'))
    ServerLaunchConfiguration.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'instanceType'))
    ServerLaunchConfiguration.add_member(:associate_public_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatePublicIpAddress, location_name: 'associatePublicIpAddress'))
    ServerLaunchConfiguration.add_member(:iam_instance_profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleName, location_name: 'iamInstanceProfileName'))
    ServerLaunchConfiguration.add_member(:configure_script, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'configureScript'))
    ServerLaunchConfiguration.add_member(:configure_script_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScriptType, location_name: 'configureScriptType'))
    ServerLaunchConfiguration.type = Types::ServerLaunchConfiguration
    ServerLaunchConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerLaunchConfiguration)
    ServerList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Server, traits: {"smithy.api#xmlName" => "item"})
    ServerReplicationConfiguration.add_member(:server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Server, location_name: 'server'))
    ServerReplicationConfiguration.add_member(:server_replication_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerReplicationParameters, location_name: 'serverReplicationParameters'))
    ServerReplicationConfiguration.type = Types::ServerReplicationConfiguration
    ServerReplicationConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerReplicationConfiguration)
    ServerReplicationParameters.add_member(:seed_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'seedTime'))
    ServerReplicationParameters.add_member(:frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Frequency, location_name: 'frequency'))
    ServerReplicationParameters.add_member(:run_once, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RunOnce, location_name: 'runOnce'))
    ServerReplicationParameters.add_member(:license_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseType, location_name: 'licenseType'))
    ServerReplicationParameters.add_member(:number_of_recent_amis_to_keep, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfRecentAmisToKeep, location_name: 'numberOfRecentAmisToKeep'))
    ServerReplicationParameters.add_member(:encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Encrypted, location_name: 'encrypted'))
    ServerReplicationParameters.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'kmsKeyId'))
    ServerReplicationParameters.type = Types::ServerReplicationParameters
    ServerType.add_member(:virtual_machine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VirtualMachine', traits: {"smithy.api#enumValue" => "VIRTUAL_MACHINE"}))
    ServerValidationConfiguration.add_member(:server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Server, location_name: 'server'))
    ServerValidationConfiguration.add_member(:validation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationId, location_name: 'validationId'))
    ServerValidationConfiguration.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyStringWithMaxLen255, location_name: 'name'))
    ServerValidationConfiguration.add_member(:server_validation_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerValidationStrategy, location_name: 'serverValidationStrategy'))
    ServerValidationConfiguration.add_member(:user_data_validation_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserDataValidationParameters, location_name: 'userDataValidationParameters'))
    ServerValidationConfiguration.type = Types::ServerValidationConfiguration
    ServerValidationConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerValidationConfiguration)
    ServerValidationOutput.add_member(:server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Server, location_name: 'server'))
    ServerValidationOutput.type = Types::ServerValidationOutput
    ServerValidationStrategy.add_member(:userdata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USERDATA', traits: {"smithy.api#enumValue" => "USERDATA"}))
    Source.add_member(:s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 's3Location'))
    Source.type = Types::Source
    StartAppReplicationRequest.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId'))
    StartAppReplicationRequest.type = Types::StartAppReplicationRequest
    StartAppReplicationResponse.type = Types::StartAppReplicationResponse
    StartOnDemandAppReplicationRequest.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#required" => {}}))
    StartOnDemandAppReplicationRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    StartOnDemandAppReplicationRequest.type = Types::StartOnDemandAppReplicationRequest
    StartOnDemandAppReplicationResponse.type = Types::StartOnDemandAppReplicationResponse
    StartOnDemandReplicationRunRequest.add_member(:replication_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobId, location_name: 'replicationJobId', traits: {"smithy.api#required" => {}}))
    StartOnDemandReplicationRunRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    StartOnDemandReplicationRunRequest.type = Types::StartOnDemandReplicationRunRequest
    StartOnDemandReplicationRunResponse.add_member(:replication_run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRunId, location_name: 'replicationRunId'))
    StartOnDemandReplicationRunResponse.type = Types::StartOnDemandReplicationRunResponse
    StopAppReplicationRequest.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId'))
    StopAppReplicationRequest.type = Types::StopAppReplicationRequest
    StopAppReplicationResponse.type = Types::StopAppReplicationResponse
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key'))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value'))
    Tag.type = Types::Tag
    Tags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TemporarilyUnavailableException.type = Types::TemporarilyUnavailableException
    TerminateAppRequest.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId'))
    TerminateAppRequest.type = Types::TerminateAppRequest
    TerminateAppResponse.type = Types::TerminateAppResponse
    UnauthorizedOperationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    UnauthorizedOperationException.type = Types::UnauthorizedOperationException
    UpdateAppRequest.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId'))
    UpdateAppRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppName, location_name: 'name'))
    UpdateAppRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppDescription, location_name: 'description'))
    UpdateAppRequest.add_member(:role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleName, location_name: 'roleName'))
    UpdateAppRequest.add_member(:server_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroups, location_name: 'serverGroups'))
    UpdateAppRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    UpdateAppRequest.type = Types::UpdateAppRequest
    UpdateAppResponse.add_member(:app_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppSummary, location_name: 'appSummary'))
    UpdateAppResponse.add_member(:server_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerGroups, location_name: 'serverGroups'))
    UpdateAppResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    UpdateAppResponse.type = Types::UpdateAppResponse
    UpdateReplicationJobRequest.add_member(:replication_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobId, location_name: 'replicationJobId', traits: {"smithy.api#required" => {}}))
    UpdateReplicationJobRequest.add_member(:frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Frequency, location_name: 'frequency'))
    UpdateReplicationJobRequest.add_member(:next_replication_run_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'nextReplicationRunStartTime'))
    UpdateReplicationJobRequest.add_member(:license_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseType, location_name: 'licenseType'))
    UpdateReplicationJobRequest.add_member(:role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleName, location_name: 'roleName'))
    UpdateReplicationJobRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateReplicationJobRequest.add_member(:number_of_recent_amis_to_keep, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfRecentAmisToKeep, location_name: 'numberOfRecentAmisToKeep'))
    UpdateReplicationJobRequest.add_member(:encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Encrypted, location_name: 'encrypted'))
    UpdateReplicationJobRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'kmsKeyId'))
    UpdateReplicationJobRequest.type = Types::UpdateReplicationJobRequest
    UpdateReplicationJobResponse.type = Types::UpdateReplicationJobResponse
    UserData.add_member(:s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 's3Location'))
    UserData.type = Types::UserData
    UserDataValidationParameters.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source'))
    UserDataValidationParameters.add_member(:script_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScriptType, location_name: 'scriptType'))
    UserDataValidationParameters.type = Types::UserDataValidationParameters
    ValidationOutput.add_member(:validation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationId, location_name: 'validationId'))
    ValidationOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyStringWithMaxLen255, location_name: 'name'))
    ValidationOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationStatus, location_name: 'status'))
    ValidationOutput.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationStatusMessage, location_name: 'statusMessage'))
    ValidationOutput.add_member(:latest_validation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'latestValidationTime'))
    ValidationOutput.add_member(:app_validation_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppValidationOutput, location_name: 'appValidationOutput'))
    ValidationOutput.add_member(:server_validation_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerValidationOutput, location_name: 'serverValidationOutput'))
    ValidationOutput.type = Types::ValidationOutput
    ValidationOutputList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationOutput)
    ValidationStatus.add_member(:ready_for_validation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReadyForValidation', traits: {"smithy.api#enumValue" => "READY_FOR_VALIDATION"}))
    ValidationStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pending', traits: {"smithy.api#enumValue" => "PENDING"}))
    ValidationStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InProgress', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ValidationStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Succeeded', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ValidationStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "FAILED"}))
    VmManagerType.add_member(:v_sphere, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'vSphere', traits: {"smithy.api#enumValue" => "VSPHERE"}))
    VmManagerType.add_member(:scvmm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'scvmm', traits: {"smithy.api#enumValue" => "SCVMM"}))
    VmManagerType.add_member(:hyper_v_manager, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'hyperVManager', traits: {"smithy.api#enumValue" => "HYPERV-MANAGER"}))
    VmServer.add_member(:vm_server_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VmServerAddress, location_name: 'vmServerAddress'))
    VmServer.add_member(:vm_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VmName, location_name: 'vmName'))
    VmServer.add_member(:vm_manager_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VmManagerName, location_name: 'vmManagerName'))
    VmServer.add_member(:vm_manager_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VmManagerType, location_name: 'vmManagerType'))
    VmServer.add_member(:vm_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VmPath, location_name: 'vmPath'))
    VmServer.type = Types::VmServer
    VmServerAddress.add_member(:vm_manager_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VmManagerId, location_name: 'vmManagerId'))
    VmServerAddress.add_member(:vm_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VmId, location_name: 'vmId'))
    VmServerAddress.type = Types::VmServerAddress
    VmServerAddressList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VmServerAddress)

    AWSServerMigrationServiceV20161024 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.sms#AWSServerMigrationService_V2016_10_24"
      service.name = "AWSServerMigrationServiceV20161024"
      service.version = "2016-10-24"
      service.traits = {"aws.api#service" => {"sdkId" => "SMS", "arnNamespace" => "sms", "cloudFormationName" => "SMS", "cloudTrailEventSource" => "sms.amazonaws.com", "endpointPrefix" => "sms"}, "aws.auth#sigv4" => {"name" => "sms"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#deprecated" => {"message" => "AWS Server Migration Service is Deprecated."}, "smithy.api#title" => "AWS Server Migration Service", "smithy.api#xmlNamespace" => {"uri" => "http://ec2.amazon.com/servermigration/2016-10-24/"}}
      service.add_operation(:create_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#CreateApp"
        operation.name = "CreateApp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:create_replication_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#CreateReplicationJob"
        operation.name = "CreateReplicationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReplicationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReplicationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoConnectorsAvailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerCannotBeReplicatedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemporarilyUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#DeleteApp"
        operation.name = "DeleteApp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_app_launch_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#DeleteAppLaunchConfiguration"
        operation.name = "DeleteAppLaunchConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppLaunchConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppLaunchConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_app_replication_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#DeleteAppReplicationConfiguration"
        operation.name = "DeleteAppReplicationConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppReplicationConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppReplicationConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_app_validation_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#DeleteAppValidationConfiguration"
        operation.name = "DeleteAppValidationConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppValidationConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppValidationConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_replication_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#DeleteReplicationJob"
        operation.name = "DeleteReplicationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReplicationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReplicationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_server_catalog, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#DeleteServerCatalog"
        operation.name = "DeleteServerCatalog"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServerCatalogRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServerCatalogResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#DisassociateConnector"
        operation.name = "DisassociateConnector"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateConnectorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateConnectorResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:generate_change_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#GenerateChangeSet"
        operation.name = "GenerateChangeSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateChangeSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateChangeSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:generate_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#GenerateTemplate"
        operation.name = "GenerateTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:get_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#GetApp"
        operation.name = "GetApp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:get_app_launch_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#GetAppLaunchConfiguration"
        operation.name = "GetAppLaunchConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppLaunchConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppLaunchConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:get_app_replication_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#GetAppReplicationConfiguration"
        operation.name = "GetAppReplicationConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppReplicationConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppReplicationConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:get_app_validation_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#GetAppValidationConfiguration"
        operation.name = "GetAppValidationConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppValidationConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppValidationConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:get_app_validation_output, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#GetAppValidationOutput"
        operation.name = "GetAppValidationOutput"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppValidationOutputRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppValidationOutputResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:get_connectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#GetConnectors"
        operation.name = "GetConnectors"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectorsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectorsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetConnectors.new
      end)
      service.add_operation(:get_replication_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#GetReplicationJobs"
        operation.name = "GetReplicationJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetReplicationJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetReplicationJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetReplicationJobs.new
      end)
      service.add_operation(:get_replication_runs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#GetReplicationRuns"
        operation.name = "GetReplicationRuns"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetReplicationRunsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetReplicationRunsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetReplicationRuns.new
      end)
      service.add_operation(:get_servers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#GetServers"
        operation.name = "GetServers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetServersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetServersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetServers.new
      end)
      service.add_operation(:import_app_catalog, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#ImportAppCatalog"
        operation.name = "ImportAppCatalog"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportAppCatalogRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportAppCatalogResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:import_server_catalog, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#ImportServerCatalog"
        operation.name = "ImportServerCatalog"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportServerCatalogRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportServerCatalogResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoConnectorsAvailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:launch_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#LaunchApp"
        operation.name = "LaunchApp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchAppRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchAppResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:list_apps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#ListApps"
        operation.name = "ListApps"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:notify_app_validation_output, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#NotifyAppValidationOutput"
        operation.name = "NotifyAppValidationOutput"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyAppValidationOutputRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyAppValidationOutputResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:put_app_launch_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#PutAppLaunchConfiguration"
        operation.name = "PutAppLaunchConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAppLaunchConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAppLaunchConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:put_app_replication_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#PutAppReplicationConfiguration"
        operation.name = "PutAppReplicationConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAppReplicationConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAppReplicationConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:put_app_validation_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#PutAppValidationConfiguration"
        operation.name = "PutAppValidationConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAppValidationConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAppValidationConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:start_app_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#StartAppReplication"
        operation.name = "StartAppReplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartAppReplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartAppReplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:start_on_demand_app_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#StartOnDemandAppReplication"
        operation.name = "StartOnDemandAppReplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartOnDemandAppReplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartOnDemandAppReplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:start_on_demand_replication_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#StartOnDemandReplicationRun"
        operation.name = "StartOnDemandReplicationRun"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartOnDemandReplicationRunRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartOnDemandReplicationRunResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRunLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:stop_app_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#StopAppReplication"
        operation.name = "StopAppReplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopAppReplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopAppReplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:terminate_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#TerminateApp"
        operation.name = "TerminateApp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateAppRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateAppResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:update_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#UpdateApp"
        operation.name = "UpdateApp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAppRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAppResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:update_replication_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sms#UpdateReplicationJob"
        operation.name = "UpdateReplicationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReplicationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReplicationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationJobNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerCannotBeReplicatedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemporarilyUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.traits = {}
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
